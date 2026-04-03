; ModuleID = 'src/logname.bc'
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
@.str.1 = private unnamed_addr constant [20 x i8] c"Usage: %s [OPTION]\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Print the user's login name.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"logname\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"no login name\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !0
@.str.13 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.43 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.44 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), align 8, !dbg !34
@file_name = internal global i8* null, align 8, !dbg !39
@ignore_EPIPE = internal global i8 0, align 1, !dbg !44
@.str.51 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.52 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.53 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.54 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !47
@stderr = external global %struct._IO_FILE*, align 8
@.str.55 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !76
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !53
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !72
@.str.1.61 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.62 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.63 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !74
@.str.4.56 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.57 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.58 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external global i32, align 4
@.str.68 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.69, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.70, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !81
@optind = external global i32, align 4
@.str.1.73 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.69 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.70 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !98
@.str.78 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.79 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !105
@.str.82 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.83 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.84 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.85 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.86 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.87 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.88 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.89 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.90 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.91 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.85, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.87, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.91, i32 0, i32 0), i8* null], align 8, !dbg !116
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !145
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !163
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !178
@nslots = internal global i32 1, align 4, !dbg !185
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !165
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !187
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !151
@.str.10.92 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.93 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.95 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !170
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !193
@exit_failure = dso_local global i32 1, align 4, !dbg !201
@.str.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.140 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.163 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !207
@.str.174 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.175 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

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
  br label %21, !dbg !309

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !311
  %14 = load i8*, i8** @program_name, align 8, !dbg !313
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !314
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !315
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !315
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !315
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !316
  call void @oputs_(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !316
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !317
  call void @oputs_(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !317
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !318
  br label %21

21:                                               ; preds = %12, %11
  %22 = load i32, i32* %2, align 4, !dbg !319
  call void @exit(i32 noundef %22) #19, !dbg !320
  unreachable, !dbg !320
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !321, metadata !DIExpression()), !dbg !322
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !323, metadata !DIExpression()), !dbg !324
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !325
  %15 = icmp eq i32 %14, -1, !dbg !327
  br i1 %15, label %16, label %30, !dbg !328

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !329, metadata !DIExpression()), !dbg !331
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !332
  store i8* %17, i8** %5, align 8, !dbg !331
  %18 = load i8*, i8** %5, align 8, !dbg !333
  %19 = icmp ne i8* %18, null, !dbg !333
  br i1 %19, label %20, label %27, !dbg !334

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !335
  %22 = load i8, i8* %21, align 1, !dbg !336
  %23 = icmp ne i8 %22, 0, !dbg !336
  br i1 %23, label %24, label %27, !dbg !337

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !338
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)), !dbg !339
  br label %27, !dbg !337

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !337
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !340
  br label %30, !dbg !341

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !342
  %32 = icmp ne i32 %31, 0, !dbg !342
  br i1 %32, label %33, label %37, !dbg !344

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !345
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !345
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !345
  br label %274, !dbg !347

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !348, metadata !DIExpression()), !dbg !349
  store i8 1, i8* %6, align 1, !dbg !349
  call void @llvm.dbg.declare(metadata i8** %7, metadata !350, metadata !DIExpression()), !dbg !351
  %38 = load i8*, i8** %4, align 8, !dbg !352
  %39 = load i8*, i8** %4, align 8, !dbg !353
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #20, !dbg !354
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !355
  store i8* %41, i8** %7, align 8, !dbg !351
  call void @llvm.dbg.declare(metadata i8** %8, metadata !356, metadata !DIExpression()), !dbg !357
  %42 = load i8*, i8** %4, align 8, !dbg !358
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !359
  store i8* %43, i8** %8, align 8, !dbg !357
  %44 = load i8*, i8** %8, align 8, !dbg !360
  %45 = icmp ne i8* %44, null, !dbg !360
  br i1 %45, label %48, label %46, !dbg !362

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !363
  store i8* %47, i8** %8, align 8, !dbg !365
  store i8 0, i8* %6, align 1, !dbg !366
  br label %89, !dbg !367

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !368
  %50 = load i8*, i8** %7, align 8, !dbg !370
  %51 = icmp ne i8* %49, %50, !dbg !371
  br i1 %51, label %52, label %88, !dbg !372

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !373, metadata !DIExpression()), !dbg !375
  %53 = load i8*, i8** %7, align 8, !dbg !376
  store i8* %53, i8** %9, align 8, !dbg !375
  call void @llvm.dbg.declare(metadata i64* %10, metadata !377, metadata !DIExpression()), !dbg !378
  store i64 0, i64* %10, align 8, !dbg !378
  br label %54, !dbg !379

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !380
  %56 = load i8*, i8** %8, align 8, !dbg !381
  %57 = icmp ult i8* %55, %56, !dbg !382
  br i1 %57, label %58, label %61, !dbg !383

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !384
  %60 = icmp ult i64 %59, 2, !dbg !385
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !386
  br i1 %62, label %63, label %82, !dbg !379

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !387
  %65 = load i16*, i16** %64, align 8, !dbg !387
  %66 = load i8*, i8** %9, align 8, !dbg !387
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !387
  store i8* %67, i8** %9, align 8, !dbg !387
  %68 = load i8, i8* %66, align 1, !dbg !387
  %69 = zext i8 %68 to i32, !dbg !387
  %70 = sext i32 %69 to i64, !dbg !387
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !387
  %72 = load i16, i16* %71, align 2, !dbg !387
  %73 = zext i16 %72 to i32, !dbg !387
  %74 = and i32 %73, 8192, !dbg !387
  %75 = icmp ne i32 %74, 0, !dbg !388
  %76 = xor i1 %75, true, !dbg !388
  %77 = xor i1 %76, true, !dbg !389
  %78 = zext i1 %77 to i32, !dbg !389
  %79 = sext i32 %78 to i64, !dbg !389
  %80 = load i64, i64* %10, align 8, !dbg !390
  %81 = add i64 %80, %79, !dbg !390
  store i64 %81, i64* %10, align 8, !dbg !390
  br label %54, !dbg !379, !llvm.loop !391

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !393
  %84 = icmp eq i64 %83, 2, !dbg !395
  br i1 %84, label %85, label %87, !dbg !396

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !397
  store i8* %86, i8** %8, align 8, !dbg !399
  store i8 0, i8* %6, align 1, !dbg !400
  br label %87, !dbg !401

87:                                               ; preds = %85, %82
  br label %88, !dbg !402

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !403, metadata !DIExpression()), !dbg !404
  %90 = load i8*, i8** %8, align 8, !dbg !405
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #20, !dbg !406
  store i64 %91, i64* %11, align 8, !dbg !404
  call void @llvm.dbg.declare(metadata i8** %12, metadata !407, metadata !DIExpression()), !dbg !408
  %92 = load i8*, i8** %8, align 8, !dbg !409
  %93 = load i64, i64* %11, align 8, !dbg !410
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !411
  store i8* %94, i8** %12, align 8, !dbg !408
  br label %95, !dbg !412

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !413
  %97 = load i8, i8* %96, align 1, !dbg !414
  %98 = zext i8 %97 to i32, !dbg !414
  %99 = icmp ne i32 %98, 0, !dbg !414
  br i1 %99, label %100, label %105, !dbg !415

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !416
  %102 = load i8, i8* %101, align 1, !dbg !417
  %103 = zext i8 %102 to i32, !dbg !417
  %104 = icmp ne i32 %103, 10, !dbg !418
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !419
  br i1 %106, label %107, label %164, !dbg !412

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !420
  %109 = load i8, i8* %108, align 1, !dbg !423
  %110 = zext i8 %109 to i32, !dbg !423
  %111 = icmp eq i32 %110, 45, !dbg !424
  br i1 %111, label %112, label %119, !dbg !425

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !426
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !427
  %115 = load i8, i8* %114, align 1, !dbg !428
  %116 = zext i8 %115 to i32, !dbg !428
  %117 = icmp eq i32 %116, 45, !dbg !429
  br i1 %117, label %118, label %119, !dbg !430

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !431
  br label %119, !dbg !432

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !433
  %121 = load i16*, i16** %120, align 8, !dbg !433
  %122 = load i8*, i8** %12, align 8, !dbg !433
  %123 = load i8, i8* %122, align 1, !dbg !433
  %124 = zext i8 %123 to i32, !dbg !433
  %125 = sext i32 %124 to i64, !dbg !433
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !433
  %127 = load i16, i16* %126, align 2, !dbg !433
  %128 = zext i16 %127 to i32, !dbg !433
  %129 = and i32 %128, 8192, !dbg !433
  %130 = icmp ne i32 %129, 0, !dbg !433
  br i1 %130, label %131, label %161, !dbg !435

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !436
  %133 = load i8, i8* %132, align 1, !dbg !439
  %134 = zext i8 %133 to i32, !dbg !439
  %135 = icmp eq i32 %134, 9, !dbg !440
  br i1 %135, label %149, label %136, !dbg !441

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !442
  %138 = load i16*, i16** %137, align 8, !dbg !442
  %139 = load i8*, i8** %12, align 8, !dbg !442
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !442
  %141 = load i8, i8* %140, align 1, !dbg !442
  %142 = zext i8 %141 to i32, !dbg !442
  %143 = sext i32 %142 to i64, !dbg !442
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !442
  %145 = load i16, i16* %144, align 2, !dbg !442
  %146 = zext i16 %145 to i32, !dbg !442
  %147 = and i32 %146, 8192, !dbg !442
  %148 = icmp ne i32 %147, 0, !dbg !442
  br i1 %148, label %149, label %150, !dbg !443

149:                                              ; preds = %136, %131
  br label %164, !dbg !444

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !445
  %152 = trunc i8 %151 to i1, !dbg !445
  br i1 %152, label %160, label %153, !dbg !447

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !448
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !449
  %156 = load i8, i8* %155, align 1, !dbg !450
  %157 = zext i8 %156 to i32, !dbg !450
  %158 = icmp ne i32 %157, 45, !dbg !451
  br i1 %158, label %159, label %160, !dbg !452

159:                                              ; preds = %153
  br label %164, !dbg !453

160:                                              ; preds = %153, %150
  br label %161, !dbg !454

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !455
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !455
  store i8* %163, i8** %12, align 8, !dbg !455
  br label %95, !dbg !412, !llvm.loop !456

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !458
  %166 = load i8*, i8** %7, align 8, !dbg !458
  %167 = load i8*, i8** %4, align 8, !dbg !458
  %168 = ptrtoint i8* %166 to i64, !dbg !458
  %169 = ptrtoint i8* %167 to i64, !dbg !458
  %170 = sub i64 %168, %169, !dbg !458
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !458
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !458
  call void @llvm.dbg.declare(metadata i8** %13, metadata !459, metadata !DIExpression()), !dbg !460
  %173 = load i8*, i8** %3, align 8, !dbg !461
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)), !dbg !462
  br i1 %174, label %175, label %176, !dbg !462

175:                                              ; preds = %164
  br label %232, !dbg !462

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !463
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)), !dbg !464
  br i1 %178, label %179, label %180, !dbg !464

179:                                              ; preds = %176
  br label %230, !dbg !464

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !465
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)), !dbg !466
  br i1 %182, label %183, label %184, !dbg !466

183:                                              ; preds = %180
  br label %228, !dbg !466

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !467
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)), !dbg !468
  br i1 %186, label %187, label %188, !dbg !468

187:                                              ; preds = %184
  br label %226, !dbg !468

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !469
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0)), !dbg !470
  br i1 %190, label %191, label %192, !dbg !470

191:                                              ; preds = %188
  br label %224, !dbg !470

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !471
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0)), !dbg !472
  br i1 %194, label %195, label %196, !dbg !472

195:                                              ; preds = %192
  br label %222, !dbg !472

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !473
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)), !dbg !474
  br i1 %198, label %199, label %200, !dbg !474

199:                                              ; preds = %196
  br label %220, !dbg !474

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !475
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0)), !dbg !476
  br i1 %202, label %203, label %204, !dbg !476

203:                                              ; preds = %200
  br label %218, !dbg !476

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !477
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)), !dbg !478
  br i1 %206, label %207, label %208, !dbg !478

207:                                              ; preds = %204
  br label %216, !dbg !478

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !479
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)), !dbg !480
  br i1 %210, label %211, label %212, !dbg !480

211:                                              ; preds = %208
  br label %214, !dbg !480

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !481
  br label %214, !dbg !480

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !480
  br label %216, !dbg !478

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !478
  br label %218, !dbg !476

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !476
  br label %220, !dbg !474

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !474
  br label %222, !dbg !472

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !472
  br label %224, !dbg !470

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !470
  br label %226, !dbg !468

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !468
  br label %228, !dbg !466

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !466
  br label %230, !dbg !464

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !464
  br label %232, !dbg !462

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !462
  store i8* %233, i8** %13, align 8, !dbg !460
  %234 = load i8*, i8** %8, align 8, !dbg !482
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i64 noundef 6) #20, !dbg !482
  %236 = icmp eq i32 %235, 0, !dbg !482
  br i1 %236, label %241, label %237, !dbg !484

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !485
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i64 noundef 9) #20, !dbg !485
  %240 = icmp eq i32 %239, 0, !dbg !485
  br i1 %240, label %241, label %248, !dbg !486

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !487
  %243 = load i8*, i8** %13, align 8, !dbg !489
  %244 = load i64, i64* %11, align 8, !dbg !490
  %245 = trunc i64 %244 to i32, !dbg !491
  %246 = load i8*, i8** %8, align 8, !dbg !492
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !493
  br label %254, !dbg !494

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !495
  %250 = load i64, i64* %11, align 8, !dbg !497
  %251 = trunc i64 %250 to i32, !dbg !498
  %252 = load i8*, i8** %8, align 8, !dbg !499
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !500
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !501
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !501
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !502
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !502
  %259 = load i8*, i8** %7, align 8, !dbg !503
  %260 = load i8*, i8** %12, align 8, !dbg !503
  %261 = load i8*, i8** %7, align 8, !dbg !503
  %262 = ptrtoint i8* %260 to i64, !dbg !503
  %263 = ptrtoint i8* %261 to i64, !dbg !503
  %264 = sub i64 %262, %263, !dbg !503
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !503
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !503
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !504
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !504
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !505
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !505
  %271 = load i8*, i8** %12, align 8, !dbg !506
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !506
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !506
  br label %274, !dbg !507

274:                                              ; preds = %254, %33
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !508 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !511, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !513, metadata !DIExpression()), !dbg !522
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !522
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !522
  call void @llvm.dbg.declare(metadata i8** %4, metadata !523, metadata !DIExpression()), !dbg !524
  %9 = load i8*, i8** %2, align 8, !dbg !525
  store i8* %9, i8** %4, align 8, !dbg !524
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !526, metadata !DIExpression()), !dbg !528
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !529
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !528
  br label %11, !dbg !530

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !531
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !532
  %14 = load i8*, i8** %13, align 8, !dbg !532
  %15 = icmp ne i8* %14, null, !dbg !531
  br i1 %15, label %16, label %23, !dbg !533

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !534
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !535
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !536
  %20 = load i8*, i8** %19, align 8, !dbg !536
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !537
  %22 = xor i1 %21, true, !dbg !538
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !539
  br i1 %24, label %25, label %28, !dbg !530

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !540
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !540
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !540
  br label %11, !dbg !530, !llvm.loop !541

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !542
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !544
  %31 = load i8*, i8** %30, align 8, !dbg !544
  %32 = icmp ne i8* %31, null, !dbg !542
  br i1 %32, label %33, label %37, !dbg !545

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !546
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !547
  %36 = load i8*, i8** %35, align 8, !dbg !547
  store i8* %36, i8** %4, align 8, !dbg !548
  br label %37, !dbg !549

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !550
  call void @llvm.dbg.declare(metadata i8** %6, metadata !551, metadata !DIExpression()), !dbg !552
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !553
  store i8* %38, i8** %6, align 8, !dbg !552
  %39 = load i8*, i8** %6, align 8, !dbg !554
  %40 = icmp ne i8* %39, null, !dbg !554
  br i1 %40, label %41, label %49, !dbg !556

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !557
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i64 noundef 3) #20, !dbg !557
  %44 = icmp ne i32 %43, 0, !dbg !557
  br i1 %44, label %45, label %49, !dbg !558

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.44, i64 0, i64 0)) #18, !dbg !559
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !559
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !559
  br label %49, !dbg !561

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !562, metadata !DIExpression()), !dbg !563
  %50 = load i8*, i8** %2, align 8, !dbg !564
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)), !dbg !565
  br i1 %51, label %52, label %53, !dbg !565

52:                                               ; preds = %49
  br label %55, !dbg !565

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !566
  br label %55, !dbg !565

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !565
  store i8* %56, i8** %7, align 8, !dbg !563
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0)) #18, !dbg !567
  %58 = load i8*, i8** %7, align 8, !dbg !568
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef %58), !dbg !569
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0)) #18, !dbg !570
  %61 = load i8*, i8** %4, align 8, !dbg !571
  %62 = load i8*, i8** %4, align 8, !dbg !572
  %63 = load i8*, i8** %2, align 8, !dbg !573
  %64 = icmp eq i8* %62, %63, !dbg !574
  %65 = zext i1 %64 to i64, !dbg !572
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !572
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !575
  ret void, !dbg !576
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !577 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !581, metadata !DIExpression()), !dbg !582
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !583, metadata !DIExpression()), !dbg !584
  %7 = load i8**, i8*** %5, align 8, !dbg !585
  %8 = getelementptr inbounds i8*, i8** %7, i64 0, !dbg !585
  %9 = load i8*, i8** %8, align 8, !dbg !585
  call void @set_program_name(i8* noundef %9), !dbg !586
  %10 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !587
  %11 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !588
  %12 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !589
  %13 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !590
  %14 = load i32, i32* %4, align 4, !dbg !591
  %15 = load i8**, i8*** %5, align 8, !dbg !592
  %16 = load i8*, i8** @Version, align 8, !dbg !593
  %17 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)), !dbg !594
  call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %14, i8** noundef %15, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %16, i1 noundef true, void (i32)* noundef @usage, i8* noundef %17, i8* noundef null), !dbg !595
  %18 = load i32, i32* @optind, align 4, !dbg !596
  %19 = load i32, i32* %4, align 4, !dbg !598
  %20 = icmp slt i32 %18, %19, !dbg !599
  br i1 %20, label %21, label %29, !dbg !600

21:                                               ; preds = %2
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !601
  %23 = load i8**, i8*** %5, align 8, !dbg !601
  %24 = load i32, i32* @optind, align 4, !dbg !601
  %25 = sext i32 %24 to i64, !dbg !601
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25, !dbg !601
  %27 = load i8*, i8** %26, align 8, !dbg !601
  %28 = call i8* @quote(i8* noundef %27), !dbg !601
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %22, i8* noundef %28), !dbg !601
  call void @usage(i32 noundef 1) #22, !dbg !603
  unreachable, !dbg !603

29:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !604, metadata !DIExpression()), !dbg !605
  %30 = call i8* @getlogin(), !dbg !606
  store i8* %30, i8** %6, align 8, !dbg !605
  %31 = load i8*, i8** %6, align 8, !dbg !607
  %32 = icmp ne i8* %31, null, !dbg !607
  br i1 %32, label %35, label %33, !dbg !609

33:                                               ; preds = %29
  %34 = call i8* @gettext(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !610
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %34), !dbg !610
  unreachable, !dbg !610

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8, !dbg !611
  %37 = call i32 @puts(i8* noundef %36), !dbg !612
  ret i32 0, !dbg !613
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

declare i8* @getlogin() #3

declare i32 @puts(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !614 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !615, metadata !DIExpression()), !dbg !616
  %3 = load i8*, i8** %2, align 8, !dbg !617
  store i8* %3, i8** @file_name, align 8, !dbg !618
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !620 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !623, metadata !DIExpression()), !dbg !624
  %4 = load i8, i8* %2, align 1, !dbg !625
  %5 = trunc i8 %4 to i1, !dbg !625
  %6 = zext i1 %5 to i8, !dbg !626
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !626
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !628 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !631
  %4 = icmp ne i32 %3, 0, !dbg !632
  br i1 %4, label %5, label %28, !dbg !633

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !634
  %7 = trunc i8 %6 to i1, !dbg !634
  br i1 %7, label %8, label %12, !dbg !635

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !636
  %10 = load i32, i32* %9, align 4, !dbg !636
  %11 = icmp eq i32 %10, 32, !dbg !637
  br i1 %11, label %28, label %12, !dbg !638

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !639, metadata !DIExpression()), !dbg !641
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.52, i64 0, i64 0)) #18, !dbg !642
  store i8* %13, i8** %1, align 8, !dbg !641
  %14 = load i8*, i8** @file_name, align 8, !dbg !643
  %15 = icmp ne i8* %14, null, !dbg !643
  br i1 %15, label %16, label %22, !dbg !645

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !646
  %18 = load i32, i32* %17, align 4, !dbg !646
  %19 = load i8*, i8** @file_name, align 8, !dbg !646
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !646
  %21 = load i8*, i8** %1, align 8, !dbg !646
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.53, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !646
  br label %26, !dbg !646

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !647
  %24 = load i32, i32* %23, align 4, !dbg !647
  %25 = load i8*, i8** %1, align 8, !dbg !647
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.54, i64 0, i64 0), i8* noundef %25), !dbg !647
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !648
  call void @_exit(i32 noundef %27) #22, !dbg !649
  unreachable, !dbg !649

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !650
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !652
  %31 = icmp ne i32 %30, 0, !dbg !653
  br i1 %31, label %32, label %34, !dbg !654

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !655
  call void @_exit(i32 noundef %33) #22, !dbg !656
  unreachable, !dbg !656

34:                                               ; preds = %28
  ret void, !dbg !657
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !658 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !661, metadata !DIExpression()), !dbg !662
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !663, metadata !DIExpression()), !dbg !662
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !664, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !665, metadata !DIExpression()), !dbg !662
  call void @flush_stdout(), !dbg !666
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !667
  %10 = icmp ne void ()* %9, null, !dbg !667
  br i1 %10, label %11, label %13, !dbg !669

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !670
  call void %12(), !dbg !671
  br label %17, !dbg !671

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !672
  %15 = call i8* @getprogname() #20, !dbg !674
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* noundef %15), !dbg !675
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !676
  %19 = load i32, i32* %6, align 4, !dbg !676
  %20 = load i8*, i8** %7, align 8, !dbg !676
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !676
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !676
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !676
  ret void, !dbg !677
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !678 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !679, metadata !DIExpression()), !dbg !680
  store i32 1, i32* %1, align 4, !dbg !681
  %2 = load i32, i32* %1, align 4, !dbg !682
  %3 = icmp sle i32 0, %2, !dbg !684
  br i1 %3, label %4, label %11, !dbg !685

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !686
  %6 = call i32 @is_open(i32 noundef %5), !dbg !687
  %7 = icmp ne i32 %6, 0, !dbg !687
  br i1 %7, label %8, label %11, !dbg !688

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !689
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !689
  br label %11, !dbg !689

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !690
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !691 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !692, metadata !DIExpression()), !dbg !693
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !694, metadata !DIExpression()), !dbg !693
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !695, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !696, metadata !DIExpression()), !dbg !693
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !697
  %10 = load i8*, i8** %7, align 8, !dbg !698
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !699
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !699
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !699
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !699
  %14 = load i32, i32* @error_message_count, align 4, !dbg !700
  %15 = add i32 %14, 1, !dbg !700
  store i32 %15, i32* @error_message_count, align 4, !dbg !700
  %16 = load i32, i32* %6, align 4, !dbg !701
  %17 = icmp ne i32 %16, 0, !dbg !701
  br i1 %17, label %18, label %20, !dbg !703

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !704
  call void @print_errno_message(i32 noundef %19), !dbg !705
  br label %20, !dbg !705

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !706
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !706
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !707
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !707
  %25 = load i32, i32* %5, align 4, !dbg !708
  %26 = icmp ne i32 %25, 0, !dbg !708
  br i1 %26, label %27, label %29, !dbg !710

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !711
  call void @exit(i32 noundef %28) #19, !dbg !712
  unreachable, !dbg !712

29:                                               ; preds = %20
  ret void, !dbg !713
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !714 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !715, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.declare(metadata i8** %3, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !719, metadata !DIExpression()), !dbg !723
  %5 = load i32, i32* %2, align 4, !dbg !724
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !725
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !726
  store i8* %7, i8** %3, align 8, !dbg !727
  %8 = load i8*, i8** %3, align 8, !dbg !728
  %9 = icmp ne i8* %8, null, !dbg !728
  br i1 %9, label %12, label %10, !dbg !730

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.57, i64 0, i64 0)) #18, !dbg !731
  store i8* %11, i8** %3, align 8, !dbg !732
  br label %12, !dbg !733

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !734
  %14 = load i8*, i8** %3, align 8, !dbg !735
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.58, i64 0, i64 0), i8* noundef %14), !dbg !736
  ret void, !dbg !737
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !738 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !741, metadata !DIExpression()), !dbg !742
  %3 = load i32, i32* %2, align 4, !dbg !743
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !744
  %5 = icmp sle i32 0, %4, !dbg !745
  %6 = zext i1 %5 to i32, !dbg !745
  ret i32 %6, !dbg !746
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !747 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !750, metadata !DIExpression()), !dbg !751
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !752, metadata !DIExpression()), !dbg !753
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !754, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !756, metadata !DIExpression()), !dbg !757
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !758
  call void @llvm.va_start(i8* %9), !dbg !758
  %10 = load i32, i32* %4, align 4, !dbg !759
  %11 = load i32, i32* %5, align 4, !dbg !759
  %12 = load i8*, i8** %6, align 8, !dbg !759
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !759
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !759
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !759
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !759
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !760
  call void @llvm.va_end(i8* %15), !dbg !760
  ret void, !dbg !761
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !762, metadata !DIExpression()), !dbg !763
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !764, metadata !DIExpression()), !dbg !763
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !765, metadata !DIExpression()), !dbg !763
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !766, metadata !DIExpression()), !dbg !763
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !767, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !768, metadata !DIExpression()), !dbg !763
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !769
  %14 = icmp ne i32 %13, 0, !dbg !769
  br i1 %14, label %15, label %38, !dbg !771

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !772
  %17 = load i32, i32* %10, align 4, !dbg !775
  %18 = icmp eq i32 %16, %17, !dbg !776
  br i1 %18, label %19, label %35, !dbg !777

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !778
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !779
  %22 = icmp eq i8* %20, %21, !dbg !780
  br i1 %22, label %34, label %23, !dbg !781

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !782
  %25 = icmp ne i8* %24, null, !dbg !783
  br i1 %25, label %26, label %35, !dbg !784

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !785
  %28 = icmp ne i8* %27, null, !dbg !786
  br i1 %28, label %29, label %35, !dbg !787

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !788
  %31 = load i8*, i8** %9, align 8, !dbg !789
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !790
  %33 = icmp eq i32 %32, 0, !dbg !791
  br i1 %33, label %34, label %35, !dbg !792

34:                                               ; preds = %29, %19
  br label %61, !dbg !793

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !794
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !795
  %37 = load i32, i32* %10, align 4, !dbg !796
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !797
  br label %38, !dbg !798

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !799
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !800
  %40 = icmp ne void ()* %39, null, !dbg !800
  br i1 %40, label %41, label %43, !dbg !802

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !803
  call void %42(), !dbg !804
  br label %47, !dbg !804

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !805
  %45 = call i8* @getprogname() #20, !dbg !807
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.61, i64 0, i64 0), i8* noundef %45), !dbg !808
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !809
  %49 = load i8*, i8** %9, align 8, !dbg !810
  %50 = icmp ne i8* %49, null, !dbg !811
  %51 = zext i1 %50 to i64, !dbg !810
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.63, i64 0, i64 0), !dbg !810
  %53 = load i8*, i8** %9, align 8, !dbg !812
  %54 = load i32, i32* %10, align 4, !dbg !813
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !814
  %56 = load i32, i32* %7, align 4, !dbg !815
  %57 = load i32, i32* %8, align 4, !dbg !815
  %58 = load i8*, i8** %11, align 8, !dbg !815
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !815
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !815
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !815
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !815
  br label %61, !dbg !816

61:                                               ; preds = %47, %34
  ret void, !dbg !816
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !817 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !820, metadata !DIExpression()), !dbg !821
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !822, metadata !DIExpression()), !dbg !823
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !824, metadata !DIExpression()), !dbg !825
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !826, metadata !DIExpression()), !dbg !827
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !828, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !830, metadata !DIExpression()), !dbg !831
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !832
  call void @llvm.va_start(i8* %13), !dbg !832
  %14 = load i32, i32* %6, align 4, !dbg !833
  %15 = load i32, i32* %7, align 4, !dbg !833
  %16 = load i8*, i8** %8, align 8, !dbg !833
  %17 = load i32, i32* %9, align 4, !dbg !833
  %18 = load i8*, i8** %10, align 8, !dbg !833
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !833
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !833
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !833
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !833
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !834
  call void @llvm.va_end(i8* %21), !dbg !834
  ret void, !dbg !835
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !836 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !839
  ret i8* %1, !dbg !840
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* noundef %5, ...) #4 !dbg !841 {
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !845, metadata !DIExpression()), !dbg !846
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !847, metadata !DIExpression()), !dbg !848
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !849, metadata !DIExpression()), !dbg !850
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !851, metadata !DIExpression()), !dbg !852
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !853, metadata !DIExpression()), !dbg !854
  store void (i32)* %5, void (i32)** %12, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %12, metadata !855, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.declare(metadata i32* %13, metadata !857, metadata !DIExpression()), !dbg !858
  %17 = load i32, i32* @opterr, align 4, !dbg !859
  store i32 %17, i32* %13, align 4, !dbg !858
  store i32 0, i32* @opterr, align 4, !dbg !860
  %18 = load i32, i32* %7, align 4, !dbg !861
  %19 = icmp eq i32 %18, 2, !dbg !863
  br i1 %19, label %20, label %41, !dbg !864

20:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %14, metadata !865, metadata !DIExpression()), !dbg !867
  %21 = load i32, i32* %7, align 4, !dbg !868
  %22 = load i8**, i8*** %8, align 8, !dbg !869
  %23 = call i32 @getopt_long(i32 noundef %21, i8** noundef %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !870
  store i32 %23, i32* %14, align 4, !dbg !867
  %24 = load i32, i32* %14, align 4, !dbg !871
  %25 = icmp ne i32 %24, -1, !dbg !873
  br i1 %25, label %26, label %40, !dbg !874

26:                                               ; preds = %20
  %27 = load i32, i32* %14, align 4, !dbg !875
  switch i32 %27, label %38 [
    i32 104, label %28
    i32 118, label %30
  ], !dbg !877

28:                                               ; preds = %26
  %29 = load void (i32)*, void (i32)** %12, align 8, !dbg !878
  call void %29(i32 noundef 0), !dbg !880
  br label %39, !dbg !881

30:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %15, metadata !882, metadata !DIExpression()), !dbg !895
  %31 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !896
  call void @llvm.va_start(i8* %31), !dbg !896
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !897
  %33 = load i8*, i8** %9, align 8, !dbg !898
  %34 = load i8*, i8** %10, align 8, !dbg !899
  %35 = load i8*, i8** %11, align 8, !dbg !900
  %36 = bitcast %"struct.std::__va_list"* %16 to i8*, !dbg !901
  %37 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !901
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 32, i1 false), !dbg !901
  call void @version_etc_va(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef %34, i8* noundef %35, %"struct.std::__va_list"* noundef %16), !dbg !901
  call void @exit(i32 noundef 0) #19, !dbg !902
  unreachable, !dbg !902

38:                                               ; preds = %26
  br label %39, !dbg !903

39:                                               ; preds = %38, %28
  br label %40, !dbg !904

40:                                               ; preds = %39, %20
  br label %41, !dbg !905

41:                                               ; preds = %40, %6
  %42 = load i32, i32* %13, align 4, !dbg !906
  store i32 %42, i32* @opterr, align 4, !dbg !907
  store i32 0, i32* @optind, align 4, !dbg !908
  ret void, !dbg !909
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* noundef %6, ...) #4 !dbg !910 {
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
  call void @llvm.dbg.declare(metadata i32* %8, metadata !913, metadata !DIExpression()), !dbg !914
  store i8** %1, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !915, metadata !DIExpression()), !dbg !916
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !917, metadata !DIExpression()), !dbg !918
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !919, metadata !DIExpression()), !dbg !920
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !921, metadata !DIExpression()), !dbg !922
  %20 = zext i1 %5 to i8
  store i8 %20, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !923, metadata !DIExpression()), !dbg !924
  store void (i32)* %6, void (i32)** %14, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %14, metadata !925, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.declare(metadata i32* %15, metadata !927, metadata !DIExpression()), !dbg !928
  %21 = load i32, i32* @opterr, align 4, !dbg !929
  store i32 %21, i32* %15, align 4, !dbg !928
  store i32 1, i32* @opterr, align 4, !dbg !930
  call void @llvm.dbg.declare(metadata i8** %16, metadata !931, metadata !DIExpression()), !dbg !932
  %22 = load i8, i8* %13, align 1, !dbg !933
  %23 = trunc i8 %22 to i1, !dbg !933
  %24 = zext i1 %23 to i64, !dbg !933
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.73, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), !dbg !933
  store i8* %25, i8** %16, align 8, !dbg !932
  call void @llvm.dbg.declare(metadata i32* %17, metadata !934, metadata !DIExpression()), !dbg !935
  %26 = load i32, i32* %8, align 4, !dbg !936
  %27 = load i8**, i8*** %9, align 8, !dbg !937
  %28 = load i8*, i8** %16, align 8, !dbg !938
  %29 = call i32 @getopt_long(i32 noundef %26, i8** noundef %27, i8* noundef %28, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !939
  store i32 %29, i32* %17, align 4, !dbg !935
  %30 = load i32, i32* %17, align 4, !dbg !940
  %31 = icmp ne i32 %30, -1, !dbg !942
  br i1 %31, label %32, label %48, !dbg !943

32:                                               ; preds = %7
  %33 = load i32, i32* %17, align 4, !dbg !944
  switch i32 %33, label %44 [
    i32 104, label %34
    i32 118, label %36
  ], !dbg !946

34:                                               ; preds = %32
  %35 = load void (i32)*, void (i32)** %14, align 8, !dbg !947
  call void %35(i32 noundef 0), !dbg !949
  br label %47, !dbg !950

36:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %18, metadata !951, metadata !DIExpression()), !dbg !953
  %37 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !954
  call void @llvm.va_start(i8* %37), !dbg !954
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !955
  %39 = load i8*, i8** %10, align 8, !dbg !956
  %40 = load i8*, i8** %11, align 8, !dbg !957
  %41 = load i8*, i8** %12, align 8, !dbg !958
  %42 = bitcast %"struct.std::__va_list"* %19 to i8*, !dbg !959
  %43 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !959
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false), !dbg !959
  call void @version_etc_va(%struct._IO_FILE* noundef %38, i8* noundef %39, i8* noundef %40, i8* noundef %41, %"struct.std::__va_list"* noundef %19), !dbg !959
  call void @exit(i32 noundef 0) #19, !dbg !960
  unreachable, !dbg !960

44:                                               ; preds = %32
  %45 = load void (i32)*, void (i32)** %14, align 8, !dbg !961
  %46 = load volatile i32, i32* @exit_failure, align 4, !dbg !962
  call void %45(i32 noundef %46), !dbg !963
  br label %47, !dbg !964

47:                                               ; preds = %44, %34
  br label %48, !dbg !965

48:                                               ; preds = %47, %7
  %49 = load i32, i32* %15, align 4, !dbg !966
  store i32 %49, i32* @opterr, align 4, !dbg !967
  ret void, !dbg !968
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !969 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !970, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.declare(metadata i8** %3, metadata !972, metadata !DIExpression()), !dbg !973
  %5 = load i8*, i8** %2, align 8, !dbg !974
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !975
  store i8* %6, i8** %3, align 8, !dbg !973
  call void @llvm.dbg.declare(metadata i8** %4, metadata !976, metadata !DIExpression()), !dbg !977
  %7 = load i8*, i8** %3, align 8, !dbg !978
  %8 = icmp ne i8* %7, null, !dbg !978
  br i1 %8, label %9, label %12, !dbg !978

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !979
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !980
  br label %14, !dbg !978

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !981
  br label %14, !dbg !978

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !978
  store i8* %15, i8** %4, align 8, !dbg !977
  %16 = load i8*, i8** %4, align 8, !dbg !982
  %17 = load i8*, i8** %2, align 8, !dbg !984
  %18 = ptrtoint i8* %16 to i64, !dbg !985
  %19 = ptrtoint i8* %17 to i64, !dbg !985
  %20 = sub i64 %18, %19, !dbg !985
  %21 = icmp sle i64 7, %20, !dbg !986
  br i1 %21, label %22, label %36, !dbg !987

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !988
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !989
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i64 0, i64 0), i64 noundef 7), !dbg !990
  br i1 %25, label %26, label %36, !dbg !991

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !992
  store i8* %27, i8** %2, align 8, !dbg !994
  %28 = load i8*, i8** %4, align 8, !dbg !995
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.79, i64 0, i64 0), i64 noundef 3) #20, !dbg !997
  %30 = icmp eq i32 %29, 0, !dbg !998
  br i1 %30, label %31, label %35, !dbg !999

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1000
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1000
  store i8* %33, i8** %4, align 8, !dbg !1000
  %34 = load i8*, i8** %4, align 8, !dbg !1002
  store i8* %34, i8** %2, align 8, !dbg !1003
  br label %35, !dbg !1004

35:                                               ; preds = %31, %26
  br label %36, !dbg !1005

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1006
  store i8* %37, i8** @program_name, align 8, !dbg !1007
  %38 = load i8*, i8** %2, align 8, !dbg !1008
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1009
  %39 = load i8*, i8** %4, align 8, !dbg !1010
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1011
  ret void, !dbg !1012
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1013, metadata !DIExpression()), !dbg !1014
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1015, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1017, metadata !DIExpression()), !dbg !1018
  %9 = load i8*, i8** %4, align 8, !dbg !1019
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1020
  store i8* %10, i8** %6, align 8, !dbg !1018
  %11 = load i8*, i8** %6, align 8, !dbg !1021
  %12 = load i8*, i8** %4, align 8, !dbg !1023
  %13 = icmp ne i8* %11, %12, !dbg !1024
  br i1 %13, label %14, label %16, !dbg !1025

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1026
  store i8* %15, i8** %3, align 8, !dbg !1027
  br label %26, !dbg !1027

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1028, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1035, metadata !DIExpression()), !dbg !1046
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1047
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1048
  %18 = icmp eq i64 %17, 2, !dbg !1050
  br i1 %18, label %19, label %24, !dbg !1051

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1052
  %21 = icmp eq i32 %20, 2047, !dbg !1053
  br i1 %21, label %22, label %24, !dbg !1054

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1055
  store i8* %23, i8** %3, align 8, !dbg !1056
  br label %26, !dbg !1056

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1057
  store i8* %25, i8** %3, align 8, !dbg !1058
  br label %26, !dbg !1058

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1059
  ret i8* %27, !dbg !1059
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1060 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1064, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1066, metadata !DIExpression()), !dbg !1067
  %5 = call i32* @__errno_location() #21, !dbg !1068
  %6 = load i32, i32* %5, align 4, !dbg !1068
  store i32 %6, i32* %3, align 4, !dbg !1067
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1069, metadata !DIExpression()), !dbg !1070
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1071
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1071
  br i1 %8, label %9, label %11, !dbg !1071

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1072
  br label %12, !dbg !1071

11:                                               ; preds = %1
  br label %12, !dbg !1071

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1071
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1071
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1073
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1073
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1070
  %17 = load i32, i32* %3, align 4, !dbg !1074
  %18 = call i32* @__errno_location() #21, !dbg !1075
  store i32 %17, i32* %18, align 4, !dbg !1076
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1077
  ret %struct.quoting_options* %19, !dbg !1078
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1079 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1084, metadata !DIExpression()), !dbg !1085
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1086
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1086
  br i1 %4, label %5, label %7, !dbg !1086

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1087
  br label %8, !dbg !1086

7:                                                ; preds = %1
  br label %8, !dbg !1086

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1086
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1088
  %11 = load i32, i32* %10, align 8, !dbg !1088
  ret i32 %11, !dbg !1089
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1090 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1093, metadata !DIExpression()), !dbg !1094
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1095, metadata !DIExpression()), !dbg !1096
  %5 = load i32, i32* %4, align 4, !dbg !1097
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1098
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1098
  br i1 %7, label %8, label %10, !dbg !1098

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1099
  br label %11, !dbg !1098

10:                                               ; preds = %2
  br label %11, !dbg !1098

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1098
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1100
  store i32 %5, i32* %13, align 8, !dbg !1101
  ret void, !dbg !1102
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1103 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1106, metadata !DIExpression()), !dbg !1107
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1108, metadata !DIExpression()), !dbg !1109
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1110, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1112, metadata !DIExpression()), !dbg !1113
  %11 = load i8, i8* %5, align 1, !dbg !1114
  store i8 %11, i8* %7, align 1, !dbg !1113
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1115, metadata !DIExpression()), !dbg !1117
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1118
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1118
  br i1 %13, label %14, label %16, !dbg !1118

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1119
  br label %17, !dbg !1118

16:                                               ; preds = %3
  br label %17, !dbg !1118

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1118
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1120
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1121
  %21 = load i8, i8* %7, align 1, !dbg !1122
  %22 = zext i8 %21 to i64, !dbg !1122
  %23 = udiv i64 %22, 32, !dbg !1123
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1124
  store i32* %24, i32** %8, align 8, !dbg !1117
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1125, metadata !DIExpression()), !dbg !1126
  %25 = load i8, i8* %7, align 1, !dbg !1127
  %26 = zext i8 %25 to i64, !dbg !1127
  %27 = urem i64 %26, 32, !dbg !1128
  %28 = trunc i64 %27 to i32, !dbg !1127
  store i32 %28, i32* %9, align 4, !dbg !1126
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1129, metadata !DIExpression()), !dbg !1130
  %29 = load i32*, i32** %8, align 8, !dbg !1131
  %30 = load i32, i32* %29, align 4, !dbg !1132
  %31 = load i32, i32* %9, align 4, !dbg !1133
  %32 = lshr i32 %30, %31, !dbg !1134
  %33 = and i32 %32, 1, !dbg !1135
  store i32 %33, i32* %10, align 4, !dbg !1130
  %34 = load i32, i32* %6, align 4, !dbg !1136
  %35 = and i32 %34, 1, !dbg !1137
  %36 = load i32, i32* %10, align 4, !dbg !1138
  %37 = xor i32 %35, %36, !dbg !1139
  %38 = load i32, i32* %9, align 4, !dbg !1140
  %39 = shl i32 %37, %38, !dbg !1141
  %40 = load i32*, i32** %8, align 8, !dbg !1142
  %41 = load i32, i32* %40, align 4, !dbg !1143
  %42 = xor i32 %41, %39, !dbg !1143
  store i32 %42, i32* %40, align 4, !dbg !1143
  %43 = load i32, i32* %10, align 4, !dbg !1144
  ret i32 %43, !dbg !1145
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1146 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1149, metadata !DIExpression()), !dbg !1150
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1151, metadata !DIExpression()), !dbg !1152
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1153
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1153
  br i1 %7, label %9, label %8, !dbg !1155

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1156
  br label %9, !dbg !1157

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1158, metadata !DIExpression()), !dbg !1159
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1160
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1161
  %12 = load i32, i32* %11, align 4, !dbg !1161
  store i32 %12, i32* %5, align 4, !dbg !1159
  %13 = load i32, i32* %4, align 4, !dbg !1162
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1163
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1164
  store i32 %13, i32* %15, align 4, !dbg !1165
  %16 = load i32, i32* %5, align 4, !dbg !1166
  ret i32 %16, !dbg !1167
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1168 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1171, metadata !DIExpression()), !dbg !1172
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1173, metadata !DIExpression()), !dbg !1174
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1175, metadata !DIExpression()), !dbg !1176
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1177
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1177
  br i1 %8, label %10, label %9, !dbg !1179

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1180
  br label %10, !dbg !1181

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1182
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1183
  store i32 10, i32* %12, align 8, !dbg !1184
  %13 = load i8*, i8** %5, align 8, !dbg !1185
  %14 = icmp ne i8* %13, null, !dbg !1185
  br i1 %14, label %15, label %18, !dbg !1187

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1188
  %17 = icmp ne i8* %16, null, !dbg !1188
  br i1 %17, label %19, label %18, !dbg !1189

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1190
  unreachable, !dbg !1190

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1191
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1192
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1193
  store i8* %20, i8** %22, align 8, !dbg !1194
  %23 = load i8*, i8** %6, align 8, !dbg !1195
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1196
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1197
  store i8* %23, i8** %25, align 8, !dbg !1198
  ret void, !dbg !1199
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1200 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1203, metadata !DIExpression()), !dbg !1204
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1205, metadata !DIExpression()), !dbg !1206
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1207, metadata !DIExpression()), !dbg !1208
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1209, metadata !DIExpression()), !dbg !1210
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1211, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1213, metadata !DIExpression()), !dbg !1214
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1215
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1215
  br i1 %15, label %16, label %18, !dbg !1215

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1216
  br label %19, !dbg !1215

18:                                               ; preds = %5
  br label %19, !dbg !1215

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1215
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1214
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1217, metadata !DIExpression()), !dbg !1218
  %21 = call i32* @__errno_location() #21, !dbg !1219
  %22 = load i32, i32* %21, align 4, !dbg !1219
  store i32 %22, i32* %12, align 4, !dbg !1218
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1220, metadata !DIExpression()), !dbg !1221
  %23 = load i8*, i8** %6, align 8, !dbg !1222
  %24 = load i64, i64* %7, align 8, !dbg !1223
  %25 = load i8*, i8** %8, align 8, !dbg !1224
  %26 = load i64, i64* %9, align 8, !dbg !1225
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1226
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1227
  %29 = load i32, i32* %28, align 8, !dbg !1227
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1228
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1229
  %32 = load i32, i32* %31, align 4, !dbg !1229
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1230
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1231
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1230
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1232
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1233
  %38 = load i8*, i8** %37, align 8, !dbg !1233
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1234
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1235
  %41 = load i8*, i8** %40, align 8, !dbg !1235
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1236
  store i64 %42, i64* %13, align 8, !dbg !1221
  %43 = load i32, i32* %12, align 4, !dbg !1237
  %44 = call i32* @__errno_location() #21, !dbg !1238
  store i32 %43, i32* %44, align 4, !dbg !1239
  %45 = load i64, i64* %13, align 8, !dbg !1240
  ret i64 %45, !dbg !1241
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1242 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1247, metadata !DIExpression()), !dbg !1248
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1249, metadata !DIExpression()), !dbg !1250
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1251, metadata !DIExpression()), !dbg !1252
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1253, metadata !DIExpression()), !dbg !1254
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1255, metadata !DIExpression()), !dbg !1256
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1257, metadata !DIExpression()), !dbg !1258
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1259, metadata !DIExpression()), !dbg !1260
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1261, metadata !DIExpression()), !dbg !1262
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1263, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1265, metadata !DIExpression()), !dbg !1266
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1267
  %45 = icmp eq i64 %44, 1, !dbg !1268
  %46 = zext i1 %45 to i8, !dbg !1266
  store i8 %46, i8* %20, align 1, !dbg !1266
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1269, metadata !DIExpression()), !dbg !1270
  store i64 0, i64* %21, align 8, !dbg !1270
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1271, metadata !DIExpression()), !dbg !1272
  store i64 0, i64* %22, align 8, !dbg !1272
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1273, metadata !DIExpression()), !dbg !1274
  store i8* null, i8** %23, align 8, !dbg !1274
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1275, metadata !DIExpression()), !dbg !1276
  store i64 0, i64* %24, align 8, !dbg !1276
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1277, metadata !DIExpression()), !dbg !1278
  store i8 0, i8* %25, align 1, !dbg !1278
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1279, metadata !DIExpression()), !dbg !1280
  %47 = load i32, i32* %16, align 4, !dbg !1281
  %48 = and i32 %47, 2, !dbg !1282
  %49 = icmp ne i32 %48, 0, !dbg !1283
  %50 = zext i1 %49 to i8, !dbg !1280
  store i8 %50, i8* %26, align 1, !dbg !1280
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1284, metadata !DIExpression()), !dbg !1285
  store i8 0, i8* %27, align 1, !dbg !1285
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1286, metadata !DIExpression()), !dbg !1287
  store i8 1, i8* %28, align 1, !dbg !1287
  br label %51, !dbg !1288

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1289), !dbg !1290
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1291, metadata !DIExpression()), !dbg !1292
  store i8 0, i8* %29, align 1, !dbg !1292
  %52 = load i32, i32* %15, align 4, !dbg !1293
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
  ], !dbg !1294

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1295
  store i8 1, i8* %26, align 1, !dbg !1297
  br label %54, !dbg !1298

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1299
  %56 = trunc i8 %55 to i1, !dbg !1299
  br i1 %56, label %70, label %57, !dbg !1301

57:                                               ; preds = %54
  br label %58, !dbg !1302

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1303
  %60 = load i64, i64* %12, align 8, !dbg !1303
  %61 = icmp ult i64 %59, %60, !dbg !1303
  br i1 %61, label %62, label %66, !dbg !1306

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1303
  %64 = load i64, i64* %21, align 8, !dbg !1303
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1303
  store i8 34, i8* %65, align 1, !dbg !1303
  br label %66, !dbg !1303

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1306
  %68 = add i64 %67, 1, !dbg !1306
  store i64 %68, i64* %21, align 8, !dbg !1306
  br label %69, !dbg !1306

69:                                               ; preds = %66
  br label %70, !dbg !1306

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1307
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.92, i64 0, i64 0), i8** %23, align 8, !dbg !1308
  store i64 1, i64* %24, align 8, !dbg !1309
  br label %138, !dbg !1310

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1311
  store i8 0, i8* %26, align 1, !dbg !1312
  br label %138, !dbg !1313

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1314
  %74 = icmp ne i32 %73, 10, !dbg !1317
  br i1 %74, label %75, label %80, !dbg !1318

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1319
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.93, i64 0, i64 0), i32 noundef %76), !dbg !1321
  store i8* %77, i8** %18, align 8, !dbg !1322
  %78 = load i32, i32* %15, align 4, !dbg !1323
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), i32 noundef %78), !dbg !1324
  store i8* %79, i8** %19, align 8, !dbg !1325
  br label %80, !dbg !1326

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1327
  %82 = trunc i8 %81 to i1, !dbg !1327
  br i1 %82, label %108, label %83, !dbg !1329

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1330, metadata !DIExpression()), !dbg !1332
  %84 = load i8*, i8** %18, align 8, !dbg !1333
  store i8* %84, i8** %30, align 8, !dbg !1332
  br label %85, !dbg !1334

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1335
  %87 = load i8, i8* %86, align 1, !dbg !1337
  %88 = icmp ne i8 %87, 0, !dbg !1338
  br i1 %88, label %89, label %107, !dbg !1338

89:                                               ; preds = %85
  br label %90, !dbg !1339

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1340
  %92 = load i64, i64* %12, align 8, !dbg !1340
  %93 = icmp ult i64 %91, %92, !dbg !1340
  br i1 %93, label %94, label %100, !dbg !1343

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1340
  %96 = load i8, i8* %95, align 1, !dbg !1340
  %97 = load i8*, i8** %11, align 8, !dbg !1340
  %98 = load i64, i64* %21, align 8, !dbg !1340
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1340
  store i8 %96, i8* %99, align 1, !dbg !1340
  br label %100, !dbg !1340

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1343
  %102 = add i64 %101, 1, !dbg !1343
  store i64 %102, i64* %21, align 8, !dbg !1343
  br label %103, !dbg !1343

103:                                              ; preds = %100
  br label %104, !dbg !1343

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1344
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1344
  store i8* %106, i8** %30, align 8, !dbg !1344
  br label %85, !dbg !1345, !llvm.loop !1346

107:                                              ; preds = %85
  br label %108, !dbg !1347

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1348
  %109 = load i8*, i8** %19, align 8, !dbg !1349
  store i8* %109, i8** %23, align 8, !dbg !1350
  %110 = load i8*, i8** %23, align 8, !dbg !1351
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1352
  store i64 %111, i64* %24, align 8, !dbg !1353
  br label %138, !dbg !1354

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1355
  br label %113, !dbg !1356

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1357
  br label %114, !dbg !1358

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1359
  %116 = trunc i8 %115 to i1, !dbg !1359
  br i1 %116, label %118, label %117, !dbg !1361

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1362
  br label %118, !dbg !1363

118:                                              ; preds = %117, %114
  br label %119, !dbg !1359

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1364
  %120 = load i8, i8* %26, align 1, !dbg !1365
  %121 = trunc i8 %120 to i1, !dbg !1365
  br i1 %121, label %135, label %122, !dbg !1367

122:                                              ; preds = %119
  br label %123, !dbg !1368

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1369
  %125 = load i64, i64* %12, align 8, !dbg !1369
  %126 = icmp ult i64 %124, %125, !dbg !1369
  br i1 %126, label %127, label %131, !dbg !1372

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1369
  %129 = load i64, i64* %21, align 8, !dbg !1369
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1369
  store i8 39, i8* %130, align 1, !dbg !1369
  br label %131, !dbg !1369

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1372
  %133 = add i64 %132, 1, !dbg !1372
  store i64 %133, i64* %21, align 8, !dbg !1372
  br label %134, !dbg !1372

134:                                              ; preds = %131
  br label %135, !dbg !1372

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), i8** %23, align 8, !dbg !1373
  store i64 1, i64* %24, align 8, !dbg !1374
  br label %138, !dbg !1375

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1376
  br label %138, !dbg !1377

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1378
  unreachable, !dbg !1378

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1379, metadata !DIExpression()), !dbg !1381
  store i64 0, i64* %31, align 8, !dbg !1381
  br label %139, !dbg !1382

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1383
  %141 = icmp eq i64 %140, -1, !dbg !1385
  br i1 %141, label %142, label %150, !dbg !1383

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1386
  %144 = load i64, i64* %31, align 8, !dbg !1387
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1386
  %146 = load i8, i8* %145, align 1, !dbg !1386
  %147 = zext i8 %146 to i32, !dbg !1386
  %148 = icmp eq i32 %147, 0, !dbg !1388
  %149 = zext i1 %148 to i32, !dbg !1388
  br label %155, !dbg !1383

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1389
  %152 = load i64, i64* %14, align 8, !dbg !1390
  %153 = icmp eq i64 %151, %152, !dbg !1391
  %154 = zext i1 %153 to i32, !dbg !1391
  br label %155, !dbg !1383

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1383
  %157 = icmp ne i32 %156, 0, !dbg !1392
  %158 = xor i1 %157, true, !dbg !1392
  br i1 %158, label %159, label %996, !dbg !1393

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1394, metadata !DIExpression()), !dbg !1396
  store i8 0, i8* %32, align 1, !dbg !1396
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1397, metadata !DIExpression()), !dbg !1398
  store i8 0, i8* %33, align 1, !dbg !1398
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1399, metadata !DIExpression()), !dbg !1400
  store i8 0, i8* %34, align 1, !dbg !1400
  %160 = load i8, i8* %25, align 1, !dbg !1401
  %161 = trunc i8 %160 to i1, !dbg !1401
  br i1 %161, label %162, label %197, !dbg !1403

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1404
  %164 = icmp ne i32 %163, 2, !dbg !1405
  br i1 %164, label %165, label %197, !dbg !1406

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1407
  %167 = icmp ne i64 %166, 0, !dbg !1407
  br i1 %167, label %168, label %197, !dbg !1408

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1409
  %170 = load i64, i64* %24, align 8, !dbg !1410
  %171 = add i64 %169, %170, !dbg !1411
  %172 = load i64, i64* %14, align 8, !dbg !1412
  %173 = icmp eq i64 %172, -1, !dbg !1413
  br i1 %173, label %174, label %180, !dbg !1414

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1415
  %176 = icmp ult i64 1, %175, !dbg !1416
  br i1 %176, label %177, label %180, !dbg !1412

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1417
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1418
  store i64 %179, i64* %14, align 8, !dbg !1419
  br label %182, !dbg !1412

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1420
  br label %182, !dbg !1412

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1412
  %184 = icmp ule i64 %171, %183, !dbg !1421
  br i1 %184, label %185, label %197, !dbg !1422

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1423
  %187 = load i64, i64* %31, align 8, !dbg !1424
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1425
  %189 = load i8*, i8** %23, align 8, !dbg !1426
  %190 = load i64, i64* %24, align 8, !dbg !1427
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1428
  br i1 %191, label %192, label %197, !dbg !1429

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1430
  %194 = trunc i8 %193 to i1, !dbg !1430
  br i1 %194, label %195, label %196, !dbg !1433

195:                                              ; preds = %192
  br label %1078, !dbg !1434

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1435
  br label %197, !dbg !1436

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1437, metadata !DIExpression()), !dbg !1438
  %198 = load i8*, i8** %13, align 8, !dbg !1439
  %199 = load i64, i64* %31, align 8, !dbg !1440
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1439
  %201 = load i8, i8* %200, align 1, !dbg !1439
  store i8 %201, i8* %35, align 1, !dbg !1438
  %202 = load i8, i8* %35, align 1, !dbg !1441
  %203 = zext i8 %202 to i32, !dbg !1441
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
  ], !dbg !1442

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1443
  %206 = trunc i8 %205 to i1, !dbg !1443
  br i1 %206, label %207, label %318, !dbg !1446

207:                                              ; preds = %204
  br label %208, !dbg !1447

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1449
  %210 = trunc i8 %209 to i1, !dbg !1449
  br i1 %210, label %211, label %212, !dbg !1452

211:                                              ; preds = %208
  br label %1078, !dbg !1449

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1452
  %213 = load i32, i32* %15, align 4, !dbg !1453
  %214 = icmp eq i32 %213, 2, !dbg !1453
  br i1 %214, label %215, label %255, !dbg !1453

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1453
  %217 = trunc i8 %216 to i1, !dbg !1453
  br i1 %217, label %255, label %218, !dbg !1452

218:                                              ; preds = %215
  br label %219, !dbg !1455

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1457
  %221 = load i64, i64* %12, align 8, !dbg !1457
  %222 = icmp ult i64 %220, %221, !dbg !1457
  br i1 %222, label %223, label %227, !dbg !1460

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1457
  %225 = load i64, i64* %21, align 8, !dbg !1457
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1457
  store i8 39, i8* %226, align 1, !dbg !1457
  br label %227, !dbg !1457

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1460
  %229 = add i64 %228, 1, !dbg !1460
  store i64 %229, i64* %21, align 8, !dbg !1460
  br label %230, !dbg !1460

230:                                              ; preds = %227
  br label %231, !dbg !1455

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1461
  %233 = load i64, i64* %12, align 8, !dbg !1461
  %234 = icmp ult i64 %232, %233, !dbg !1461
  br i1 %234, label %235, label %239, !dbg !1464

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1461
  %237 = load i64, i64* %21, align 8, !dbg !1461
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1461
  store i8 36, i8* %238, align 1, !dbg !1461
  br label %239, !dbg !1461

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1464
  %241 = add i64 %240, 1, !dbg !1464
  store i64 %241, i64* %21, align 8, !dbg !1464
  br label %242, !dbg !1464

242:                                              ; preds = %239
  br label %243, !dbg !1455

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1465
  %245 = load i64, i64* %12, align 8, !dbg !1465
  %246 = icmp ult i64 %244, %245, !dbg !1465
  br i1 %246, label %247, label %251, !dbg !1468

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1465
  %249 = load i64, i64* %21, align 8, !dbg !1465
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1465
  store i8 39, i8* %250, align 1, !dbg !1465
  br label %251, !dbg !1465

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1468
  %253 = add i64 %252, 1, !dbg !1468
  store i64 %253, i64* %21, align 8, !dbg !1468
  br label %254, !dbg !1468

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1455
  br label %255, !dbg !1455

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1452

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1469
  %258 = load i64, i64* %12, align 8, !dbg !1469
  %259 = icmp ult i64 %257, %258, !dbg !1469
  br i1 %259, label %260, label %264, !dbg !1472

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1469
  %262 = load i64, i64* %21, align 8, !dbg !1469
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1469
  store i8 92, i8* %263, align 1, !dbg !1469
  br label %264, !dbg !1469

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1472
  %266 = add i64 %265, 1, !dbg !1472
  store i64 %266, i64* %21, align 8, !dbg !1472
  br label %267, !dbg !1472

267:                                              ; preds = %264
  br label %268, !dbg !1452

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1473
  %270 = icmp ne i32 %269, 2, !dbg !1475
  br i1 %270, label %271, label %317, !dbg !1476

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1477
  %273 = add i64 %272, 1, !dbg !1478
  %274 = load i64, i64* %14, align 8, !dbg !1479
  %275 = icmp ult i64 %273, %274, !dbg !1480
  br i1 %275, label %276, label %317, !dbg !1481

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1482
  %278 = load i64, i64* %31, align 8, !dbg !1483
  %279 = add i64 %278, 1, !dbg !1484
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1482
  %281 = load i8, i8* %280, align 1, !dbg !1482
  %282 = zext i8 %281 to i32, !dbg !1482
  %283 = icmp sle i32 48, %282, !dbg !1485
  br i1 %283, label %284, label %317, !dbg !1486

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1487
  %286 = load i64, i64* %31, align 8, !dbg !1488
  %287 = add i64 %286, 1, !dbg !1489
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1487
  %289 = load i8, i8* %288, align 1, !dbg !1487
  %290 = zext i8 %289 to i32, !dbg !1487
  %291 = icmp sle i32 %290, 57, !dbg !1490
  br i1 %291, label %292, label %317, !dbg !1491

292:                                              ; preds = %284
  br label %293, !dbg !1492

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1494
  %295 = load i64, i64* %12, align 8, !dbg !1494
  %296 = icmp ult i64 %294, %295, !dbg !1494
  br i1 %296, label %297, label %301, !dbg !1497

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1494
  %299 = load i64, i64* %21, align 8, !dbg !1494
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1494
  store i8 48, i8* %300, align 1, !dbg !1494
  br label %301, !dbg !1494

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1497
  %303 = add i64 %302, 1, !dbg !1497
  store i64 %303, i64* %21, align 8, !dbg !1497
  br label %304, !dbg !1497

304:                                              ; preds = %301
  br label %305, !dbg !1498

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1499
  %307 = load i64, i64* %12, align 8, !dbg !1499
  %308 = icmp ult i64 %306, %307, !dbg !1499
  br i1 %308, label %309, label %313, !dbg !1502

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1499
  %311 = load i64, i64* %21, align 8, !dbg !1499
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1499
  store i8 48, i8* %312, align 1, !dbg !1499
  br label %313, !dbg !1499

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1502
  %315 = add i64 %314, 1, !dbg !1502
  store i64 %315, i64* %21, align 8, !dbg !1502
  br label %316, !dbg !1502

316:                                              ; preds = %313
  br label %317, !dbg !1503

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1504
  br label %324, !dbg !1505

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1506
  %320 = and i32 %319, 1, !dbg !1508
  %321 = icmp ne i32 %320, 0, !dbg !1508
  br i1 %321, label %322, label %323, !dbg !1509

322:                                              ; preds = %318
  br label %993, !dbg !1510

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1511

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1512
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1513

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1514
  %329 = trunc i8 %328 to i1, !dbg !1514
  br i1 %329, label %330, label %331, !dbg !1517

330:                                              ; preds = %327
  br label %1078, !dbg !1518

331:                                              ; preds = %327
  br label %418, !dbg !1519

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1520
  %334 = and i32 %333, 4, !dbg !1522
  %335 = icmp ne i32 %334, 0, !dbg !1522
  br i1 %335, label %336, label %417, !dbg !1523

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1524
  %338 = add i64 %337, 2, !dbg !1525
  %339 = load i64, i64* %14, align 8, !dbg !1526
  %340 = icmp ult i64 %338, %339, !dbg !1527
  br i1 %340, label %341, label %417, !dbg !1528

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1529
  %343 = load i64, i64* %31, align 8, !dbg !1530
  %344 = add i64 %343, 1, !dbg !1531
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1529
  %346 = load i8, i8* %345, align 1, !dbg !1529
  %347 = zext i8 %346 to i32, !dbg !1529
  %348 = icmp eq i32 %347, 63, !dbg !1532
  br i1 %348, label %349, label %417, !dbg !1533

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1534
  %351 = load i64, i64* %31, align 8, !dbg !1535
  %352 = add i64 %351, 2, !dbg !1536
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1534
  %354 = load i8, i8* %353, align 1, !dbg !1534
  %355 = zext i8 %354 to i32, !dbg !1534
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
  ], !dbg !1537

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1538
  %358 = trunc i8 %357 to i1, !dbg !1538
  br i1 %358, label %359, label %360, !dbg !1541

359:                                              ; preds = %356
  br label %1078, !dbg !1542

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1543
  %362 = load i64, i64* %31, align 8, !dbg !1544
  %363 = add i64 %362, 2, !dbg !1545
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1543
  %365 = load i8, i8* %364, align 1, !dbg !1543
  store i8 %365, i8* %35, align 1, !dbg !1546
  %366 = load i64, i64* %31, align 8, !dbg !1547
  %367 = add i64 %366, 2, !dbg !1547
  store i64 %367, i64* %31, align 8, !dbg !1547
  br label %368, !dbg !1548

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1549
  %370 = load i64, i64* %12, align 8, !dbg !1549
  %371 = icmp ult i64 %369, %370, !dbg !1549
  br i1 %371, label %372, label %376, !dbg !1552

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1549
  %374 = load i64, i64* %21, align 8, !dbg !1549
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1549
  store i8 63, i8* %375, align 1, !dbg !1549
  br label %376, !dbg !1549

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1552
  %378 = add i64 %377, 1, !dbg !1552
  store i64 %378, i64* %21, align 8, !dbg !1552
  br label %379, !dbg !1552

379:                                              ; preds = %376
  br label %380, !dbg !1553

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1554
  %382 = load i64, i64* %12, align 8, !dbg !1554
  %383 = icmp ult i64 %381, %382, !dbg !1554
  br i1 %383, label %384, label %388, !dbg !1557

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1554
  %386 = load i64, i64* %21, align 8, !dbg !1554
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1554
  store i8 34, i8* %387, align 1, !dbg !1554
  br label %388, !dbg !1554

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1557
  %390 = add i64 %389, 1, !dbg !1557
  store i64 %390, i64* %21, align 8, !dbg !1557
  br label %391, !dbg !1557

391:                                              ; preds = %388
  br label %392, !dbg !1558

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1559
  %394 = load i64, i64* %12, align 8, !dbg !1559
  %395 = icmp ult i64 %393, %394, !dbg !1559
  br i1 %395, label %396, label %400, !dbg !1562

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1559
  %398 = load i64, i64* %21, align 8, !dbg !1559
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1559
  store i8 34, i8* %399, align 1, !dbg !1559
  br label %400, !dbg !1559

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1562
  %402 = add i64 %401, 1, !dbg !1562
  store i64 %402, i64* %21, align 8, !dbg !1562
  br label %403, !dbg !1562

403:                                              ; preds = %400
  br label %404, !dbg !1563

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1564
  %406 = load i64, i64* %12, align 8, !dbg !1564
  %407 = icmp ult i64 %405, %406, !dbg !1564
  br i1 %407, label %408, label %412, !dbg !1567

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1564
  %410 = load i64, i64* %21, align 8, !dbg !1564
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1564
  store i8 63, i8* %411, align 1, !dbg !1564
  br label %412, !dbg !1564

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1567
  %414 = add i64 %413, 1, !dbg !1567
  store i64 %414, i64* %21, align 8, !dbg !1567
  br label %415, !dbg !1567

415:                                              ; preds = %412
  br label %416, !dbg !1568

416:                                              ; preds = %349, %415
  br label %417, !dbg !1569

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1570

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1571

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1572
  br label %454, !dbg !1574

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1575
  br label %454, !dbg !1576

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1577
  br label %454, !dbg !1578

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1579
  br label %446, !dbg !1580

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1581
  br label %446, !dbg !1582

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1583
  br label %446, !dbg !1584

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1585
  br label %454, !dbg !1586

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1587
  store i8 %427, i8* %36, align 1, !dbg !1588
  %428 = load i32, i32* %15, align 4, !dbg !1589
  %429 = icmp eq i32 %428, 2, !dbg !1591
  br i1 %429, label %430, label %435, !dbg !1592

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1593
  %432 = trunc i8 %431 to i1, !dbg !1593
  br i1 %432, label %433, label %434, !dbg !1596

433:                                              ; preds = %430
  br label %1078, !dbg !1597

434:                                              ; preds = %430
  br label %942, !dbg !1598

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1599
  %437 = trunc i8 %436 to i1, !dbg !1599
  br i1 %437, label %438, label %445, !dbg !1601

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1602
  %440 = trunc i8 %439 to i1, !dbg !1602
  br i1 %440, label %441, label %445, !dbg !1603

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1604
  %443 = icmp ne i64 %442, 0, !dbg !1604
  br i1 %443, label %444, label %445, !dbg !1605

444:                                              ; preds = %441
  br label %942, !dbg !1606

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1604

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1607), !dbg !1608
  %447 = load i32, i32* %15, align 4, !dbg !1609
  %448 = icmp eq i32 %447, 2, !dbg !1611
  br i1 %448, label %449, label %453, !dbg !1612

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1613
  %451 = trunc i8 %450 to i1, !dbg !1613
  br i1 %451, label %452, label %453, !dbg !1614

452:                                              ; preds = %449
  br label %1078, !dbg !1615

453:                                              ; preds = %449, %446
  br label %454, !dbg !1613

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1616), !dbg !1617
  %455 = load i8, i8* %25, align 1, !dbg !1618
  %456 = trunc i8 %455 to i1, !dbg !1618
  br i1 %456, label %457, label %459, !dbg !1620

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1621
  store i8 %458, i8* %35, align 1, !dbg !1623
  br label %880, !dbg !1624

459:                                              ; preds = %454
  br label %849, !dbg !1625

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1626
  %462 = icmp eq i64 %461, -1, !dbg !1628
  br i1 %462, label %463, label %469, !dbg !1629

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1630
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1630
  %466 = load i8, i8* %465, align 1, !dbg !1630
  %467 = zext i8 %466 to i32, !dbg !1630
  %468 = icmp eq i32 %467, 0, !dbg !1631
  br i1 %468, label %473, label %472, !dbg !1626

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1632
  %471 = icmp eq i64 %470, 1, !dbg !1633
  br i1 %471, label %473, label %472, !dbg !1629

472:                                              ; preds = %469, %463
  br label %849, !dbg !1634

473:                                              ; preds = %469, %463
  br label %474, !dbg !1635

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1636
  %476 = icmp ne i64 %475, 0, !dbg !1638
  br i1 %476, label %477, label %478, !dbg !1639

477:                                              ; preds = %474
  br label %849, !dbg !1640

478:                                              ; preds = %474
  br label %479, !dbg !1641

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1642
  br label %480, !dbg !1643

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1644
  %482 = icmp eq i32 %481, 2, !dbg !1646
  br i1 %482, label %483, label %487, !dbg !1647

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1648
  %485 = trunc i8 %484 to i1, !dbg !1648
  br i1 %485, label %486, label %487, !dbg !1649

486:                                              ; preds = %483
  br label %1078, !dbg !1650

487:                                              ; preds = %483, %480
  br label %849, !dbg !1651

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1652
  store i8 1, i8* %34, align 1, !dbg !1653
  %489 = load i32, i32* %15, align 4, !dbg !1654
  %490 = icmp eq i32 %489, 2, !dbg !1656
  br i1 %490, label %491, label %540, !dbg !1657

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1658
  %493 = trunc i8 %492 to i1, !dbg !1658
  br i1 %493, label %494, label %495, !dbg !1661

494:                                              ; preds = %491
  br label %1078, !dbg !1662

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1663
  %497 = icmp ne i64 %496, 0, !dbg !1663
  br i1 %497, label %498, label %503, !dbg !1665

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1666
  %500 = icmp ne i64 %499, 0, !dbg !1666
  br i1 %500, label %503, label %501, !dbg !1667

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1668
  store i64 %502, i64* %22, align 8, !dbg !1670
  store i64 0, i64* %12, align 8, !dbg !1671
  br label %503, !dbg !1672

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1673

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1674
  %506 = load i64, i64* %12, align 8, !dbg !1674
  %507 = icmp ult i64 %505, %506, !dbg !1674
  br i1 %507, label %508, label %512, !dbg !1677

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1674
  %510 = load i64, i64* %21, align 8, !dbg !1674
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1674
  store i8 39, i8* %511, align 1, !dbg !1674
  br label %512, !dbg !1674

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1677
  %514 = add i64 %513, 1, !dbg !1677
  store i64 %514, i64* %21, align 8, !dbg !1677
  br label %515, !dbg !1677

515:                                              ; preds = %512
  br label %516, !dbg !1678

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1679
  %518 = load i64, i64* %12, align 8, !dbg !1679
  %519 = icmp ult i64 %517, %518, !dbg !1679
  br i1 %519, label %520, label %524, !dbg !1682

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1679
  %522 = load i64, i64* %21, align 8, !dbg !1679
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1679
  store i8 92, i8* %523, align 1, !dbg !1679
  br label %524, !dbg !1679

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1682
  %526 = add i64 %525, 1, !dbg !1682
  store i64 %526, i64* %21, align 8, !dbg !1682
  br label %527, !dbg !1682

527:                                              ; preds = %524
  br label %528, !dbg !1683

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1684
  %530 = load i64, i64* %12, align 8, !dbg !1684
  %531 = icmp ult i64 %529, %530, !dbg !1684
  br i1 %531, label %532, label %536, !dbg !1687

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1684
  %534 = load i64, i64* %21, align 8, !dbg !1684
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1684
  store i8 39, i8* %535, align 1, !dbg !1684
  br label %536, !dbg !1684

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1687
  %538 = add i64 %537, 1, !dbg !1687
  store i64 %538, i64* %21, align 8, !dbg !1687
  br label %539, !dbg !1687

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1688
  br label %540, !dbg !1689

540:                                              ; preds = %539, %488
  br label %849, !dbg !1690

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1691
  br label %849, !dbg !1692

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1693, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1696, metadata !DIExpression()), !dbg !1697
  %543 = load i8, i8* %20, align 1, !dbg !1698
  %544 = trunc i8 %543 to i1, !dbg !1698
  br i1 %544, label %545, label %557, !dbg !1700

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1701
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1703
  %547 = load i16*, i16** %546, align 8, !dbg !1703
  %548 = load i8, i8* %35, align 1, !dbg !1703
  %549 = zext i8 %548 to i32, !dbg !1703
  %550 = sext i32 %549 to i64, !dbg !1703
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1703
  %552 = load i16, i16* %551, align 2, !dbg !1703
  %553 = zext i16 %552 to i32, !dbg !1703
  %554 = and i32 %553, 16384, !dbg !1703
  %555 = icmp ne i32 %554, 0, !dbg !1704
  %556 = zext i1 %555 to i8, !dbg !1705
  store i8 %556, i8* %38, align 1, !dbg !1705
  br label %648, !dbg !1706

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1707, metadata !DIExpression()), !dbg !1719
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1720
  store i64 0, i64* %37, align 8, !dbg !1721
  store i8 1, i8* %38, align 1, !dbg !1722
  %558 = load i64, i64* %14, align 8, !dbg !1723
  %559 = icmp eq i64 %558, -1, !dbg !1725
  br i1 %559, label %560, label %563, !dbg !1726

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1727
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !1728
  store i64 %562, i64* %14, align 8, !dbg !1729
  br label %563, !dbg !1730

563:                                              ; preds = %560, %557
  br label %564, !dbg !1731

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1732, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1737, metadata !DIExpression()), !dbg !1738
  %565 = load i8*, i8** %13, align 8, !dbg !1739
  %566 = load i64, i64* %31, align 8, !dbg !1740
  %567 = load i64, i64* %37, align 8, !dbg !1741
  %568 = add i64 %566, %567, !dbg !1742
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !1739
  %570 = load i64, i64* %14, align 8, !dbg !1743
  %571 = load i64, i64* %31, align 8, !dbg !1744
  %572 = load i64, i64* %37, align 8, !dbg !1745
  %573 = add i64 %571, %572, !dbg !1746
  %574 = sub i64 %570, %573, !dbg !1747
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !1748
  store i64 %575, i64* %41, align 8, !dbg !1738
  %576 = load i64, i64* %41, align 8, !dbg !1749
  %577 = icmp eq i64 %576, 0, !dbg !1751
  br i1 %577, label %578, label %579, !dbg !1752

578:                                              ; preds = %564
  br label %647, !dbg !1753

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !1754
  %581 = icmp eq i64 %580, -1, !dbg !1756
  br i1 %581, label %582, label %583, !dbg !1757

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !1758
  br label %647, !dbg !1760

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !1761
  %585 = icmp eq i64 %584, -2, !dbg !1763
  br i1 %585, label %586, label %608, !dbg !1764

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !1765
  br label %587, !dbg !1767

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !1768
  %589 = load i64, i64* %37, align 8, !dbg !1769
  %590 = add i64 %588, %589, !dbg !1770
  %591 = load i64, i64* %14, align 8, !dbg !1771
  %592 = icmp ult i64 %590, %591, !dbg !1772
  br i1 %592, label %593, label %602, !dbg !1773

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !1774
  %595 = load i64, i64* %31, align 8, !dbg !1775
  %596 = load i64, i64* %37, align 8, !dbg !1776
  %597 = add i64 %595, %596, !dbg !1777
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !1774
  %599 = load i8, i8* %598, align 1, !dbg !1774
  %600 = zext i8 %599 to i32, !dbg !1774
  %601 = icmp ne i32 %600, 0, !dbg !1773
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !1778
  br i1 %603, label %604, label %607, !dbg !1767

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !1779
  %606 = add i64 %605, 1, !dbg !1779
  store i64 %606, i64* %37, align 8, !dbg !1779
  br label %587, !dbg !1767, !llvm.loop !1780

607:                                              ; preds = %602
  br label %647, !dbg !1781

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !1782
  %610 = trunc i8 %609 to i1, !dbg !1782
  br i1 %610, label %611, label %635, !dbg !1785

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !1786
  %613 = icmp eq i32 %612, 2, !dbg !1787
  br i1 %613, label %614, label %635, !dbg !1788

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !1789, metadata !DIExpression()), !dbg !1792
  store i64 1, i64* %42, align 8, !dbg !1792
  br label %615, !dbg !1793

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !1794
  %617 = load i64, i64* %41, align 8, !dbg !1796
  %618 = icmp ult i64 %616, %617, !dbg !1797
  br i1 %618, label %619, label %634, !dbg !1798

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !1799
  %621 = load i64, i64* %31, align 8, !dbg !1800
  %622 = load i64, i64* %37, align 8, !dbg !1801
  %623 = add i64 %621, %622, !dbg !1802
  %624 = load i64, i64* %42, align 8, !dbg !1803
  %625 = add i64 %623, %624, !dbg !1804
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !1799
  %627 = load i8, i8* %626, align 1, !dbg !1799
  %628 = zext i8 %627 to i32, !dbg !1799
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !1805

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !1806

630:                                              ; preds = %619
  br label %631, !dbg !1808

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !1809
  %633 = add i64 %632, 1, !dbg !1809
  store i64 %633, i64* %42, align 8, !dbg !1809
  br label %615, !dbg !1810, !llvm.loop !1811

634:                                              ; preds = %615
  br label %635, !dbg !1813

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !1814
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !1816
  %638 = icmp ne i32 %637, 0, !dbg !1816
  br i1 %638, label %640, label %639, !dbg !1817

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !1818
  br label %640, !dbg !1819

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !1820
  %642 = load i64, i64* %37, align 8, !dbg !1821
  %643 = add i64 %642, %641, !dbg !1821
  store i64 %643, i64* %37, align 8, !dbg !1821
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !1822

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !1823
  %650 = trunc i8 %649 to i1, !dbg !1823
  %651 = zext i1 %650 to i8, !dbg !1824
  store i8 %651, i8* %34, align 1, !dbg !1824
  %652 = load i64, i64* %37, align 8, !dbg !1825
  %653 = icmp ult i64 1, %652, !dbg !1827
  br i1 %653, label %660, label %654, !dbg !1828

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !1829
  %656 = trunc i8 %655 to i1, !dbg !1829
  br i1 %656, label %657, label %848, !dbg !1830

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !1831
  %659 = trunc i8 %658 to i1, !dbg !1831
  br i1 %659, label %848, label %660, !dbg !1832

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !1833, metadata !DIExpression()), !dbg !1835
  %661 = load i64, i64* %31, align 8, !dbg !1836
  %662 = load i64, i64* %37, align 8, !dbg !1837
  %663 = add i64 %661, %662, !dbg !1838
  store i64 %663, i64* %43, align 8, !dbg !1835
  br label %664, !dbg !1839

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !1840
  %666 = trunc i8 %665 to i1, !dbg !1840
  br i1 %666, label %667, label %772, !dbg !1845

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !1846
  %669 = trunc i8 %668 to i1, !dbg !1846
  br i1 %669, label %772, label %670, !dbg !1847

670:                                              ; preds = %667
  br label %671, !dbg !1848

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !1850
  %673 = trunc i8 %672 to i1, !dbg !1850
  br i1 %673, label %674, label %675, !dbg !1853

674:                                              ; preds = %671
  br label %1078, !dbg !1850

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !1853
  %676 = load i32, i32* %15, align 4, !dbg !1854
  %677 = icmp eq i32 %676, 2, !dbg !1854
  br i1 %677, label %678, label %718, !dbg !1854

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !1854
  %680 = trunc i8 %679 to i1, !dbg !1854
  br i1 %680, label %718, label %681, !dbg !1853

681:                                              ; preds = %678
  br label %682, !dbg !1856

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !1858
  %684 = load i64, i64* %12, align 8, !dbg !1858
  %685 = icmp ult i64 %683, %684, !dbg !1858
  br i1 %685, label %686, label %690, !dbg !1861

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !1858
  %688 = load i64, i64* %21, align 8, !dbg !1858
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !1858
  store i8 39, i8* %689, align 1, !dbg !1858
  br label %690, !dbg !1858

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !1861
  %692 = add i64 %691, 1, !dbg !1861
  store i64 %692, i64* %21, align 8, !dbg !1861
  br label %693, !dbg !1861

693:                                              ; preds = %690
  br label %694, !dbg !1856

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !1862
  %696 = load i64, i64* %12, align 8, !dbg !1862
  %697 = icmp ult i64 %695, %696, !dbg !1862
  br i1 %697, label %698, label %702, !dbg !1865

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !1862
  %700 = load i64, i64* %21, align 8, !dbg !1862
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !1862
  store i8 36, i8* %701, align 1, !dbg !1862
  br label %702, !dbg !1862

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !1865
  %704 = add i64 %703, 1, !dbg !1865
  store i64 %704, i64* %21, align 8, !dbg !1865
  br label %705, !dbg !1865

705:                                              ; preds = %702
  br label %706, !dbg !1856

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !1866
  %708 = load i64, i64* %12, align 8, !dbg !1866
  %709 = icmp ult i64 %707, %708, !dbg !1866
  br i1 %709, label %710, label %714, !dbg !1869

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !1866
  %712 = load i64, i64* %21, align 8, !dbg !1866
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !1866
  store i8 39, i8* %713, align 1, !dbg !1866
  br label %714, !dbg !1866

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !1869
  %716 = add i64 %715, 1, !dbg !1869
  store i64 %716, i64* %21, align 8, !dbg !1869
  br label %717, !dbg !1869

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !1856
  br label %718, !dbg !1856

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !1853

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !1870
  %721 = load i64, i64* %12, align 8, !dbg !1870
  %722 = icmp ult i64 %720, %721, !dbg !1870
  br i1 %722, label %723, label %727, !dbg !1873

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !1870
  %725 = load i64, i64* %21, align 8, !dbg !1870
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !1870
  store i8 92, i8* %726, align 1, !dbg !1870
  br label %727, !dbg !1870

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !1873
  %729 = add i64 %728, 1, !dbg !1873
  store i64 %729, i64* %21, align 8, !dbg !1873
  br label %730, !dbg !1873

730:                                              ; preds = %727
  br label %731, !dbg !1853

731:                                              ; preds = %730
  br label %732, !dbg !1874

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !1875
  %734 = load i64, i64* %12, align 8, !dbg !1875
  %735 = icmp ult i64 %733, %734, !dbg !1875
  br i1 %735, label %736, label %745, !dbg !1878

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !1875
  %738 = zext i8 %737 to i32, !dbg !1875
  %739 = ashr i32 %738, 6, !dbg !1875
  %740 = add nsw i32 48, %739, !dbg !1875
  %741 = trunc i32 %740 to i8, !dbg !1875
  %742 = load i8*, i8** %11, align 8, !dbg !1875
  %743 = load i64, i64* %21, align 8, !dbg !1875
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !1875
  store i8 %741, i8* %744, align 1, !dbg !1875
  br label %745, !dbg !1875

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !1878
  %747 = add i64 %746, 1, !dbg !1878
  store i64 %747, i64* %21, align 8, !dbg !1878
  br label %748, !dbg !1878

748:                                              ; preds = %745
  br label %749, !dbg !1879

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !1880
  %751 = load i64, i64* %12, align 8, !dbg !1880
  %752 = icmp ult i64 %750, %751, !dbg !1880
  br i1 %752, label %753, label %763, !dbg !1883

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !1880
  %755 = zext i8 %754 to i32, !dbg !1880
  %756 = ashr i32 %755, 3, !dbg !1880
  %757 = and i32 %756, 7, !dbg !1880
  %758 = add nsw i32 48, %757, !dbg !1880
  %759 = trunc i32 %758 to i8, !dbg !1880
  %760 = load i8*, i8** %11, align 8, !dbg !1880
  %761 = load i64, i64* %21, align 8, !dbg !1880
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !1880
  store i8 %759, i8* %762, align 1, !dbg !1880
  br label %763, !dbg !1880

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !1883
  %765 = add i64 %764, 1, !dbg !1883
  store i64 %765, i64* %21, align 8, !dbg !1883
  br label %766, !dbg !1883

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !1884
  %768 = zext i8 %767 to i32, !dbg !1884
  %769 = and i32 %768, 7, !dbg !1885
  %770 = add nsw i32 48, %769, !dbg !1886
  %771 = trunc i32 %770 to i8, !dbg !1887
  store i8 %771, i8* %35, align 1, !dbg !1888
  br label %789, !dbg !1889

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !1890
  %774 = trunc i8 %773 to i1, !dbg !1890
  br i1 %774, label %775, label %788, !dbg !1892

775:                                              ; preds = %772
  br label %776, !dbg !1893

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !1895
  %778 = load i64, i64* %12, align 8, !dbg !1895
  %779 = icmp ult i64 %777, %778, !dbg !1895
  br i1 %779, label %780, label %784, !dbg !1898

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !1895
  %782 = load i64, i64* %21, align 8, !dbg !1895
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !1895
  store i8 92, i8* %783, align 1, !dbg !1895
  br label %784, !dbg !1895

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !1898
  %786 = add i64 %785, 1, !dbg !1898
  store i64 %786, i64* %21, align 8, !dbg !1898
  br label %787, !dbg !1898

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !1899
  br label %788, !dbg !1900

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !1901
  %791 = load i64, i64* %31, align 8, !dbg !1903
  %792 = add i64 %791, 1, !dbg !1904
  %793 = icmp ule i64 %790, %792, !dbg !1905
  br i1 %793, label %794, label %795, !dbg !1906

794:                                              ; preds = %789
  br label %847, !dbg !1907

795:                                              ; preds = %789
  br label %796, !dbg !1908

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !1909
  %798 = trunc i8 %797 to i1, !dbg !1909
  br i1 %798, label %799, label %827, !dbg !1909

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !1909
  %801 = trunc i8 %800 to i1, !dbg !1909
  br i1 %801, label %827, label %802, !dbg !1912

802:                                              ; preds = %799
  br label %803, !dbg !1913

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !1915
  %805 = load i64, i64* %12, align 8, !dbg !1915
  %806 = icmp ult i64 %804, %805, !dbg !1915
  br i1 %806, label %807, label %811, !dbg !1918

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !1915
  %809 = load i64, i64* %21, align 8, !dbg !1915
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !1915
  store i8 39, i8* %810, align 1, !dbg !1915
  br label %811, !dbg !1915

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !1918
  %813 = add i64 %812, 1, !dbg !1918
  store i64 %813, i64* %21, align 8, !dbg !1918
  br label %814, !dbg !1918

814:                                              ; preds = %811
  br label %815, !dbg !1913

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !1919
  %817 = load i64, i64* %12, align 8, !dbg !1919
  %818 = icmp ult i64 %816, %817, !dbg !1919
  br i1 %818, label %819, label %823, !dbg !1922

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !1919
  %821 = load i64, i64* %21, align 8, !dbg !1919
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !1919
  store i8 39, i8* %822, align 1, !dbg !1919
  br label %823, !dbg !1919

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !1922
  %825 = add i64 %824, 1, !dbg !1922
  store i64 %825, i64* %21, align 8, !dbg !1922
  br label %826, !dbg !1922

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !1913
  br label %827, !dbg !1913

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !1912

828:                                              ; preds = %827
  br label %829, !dbg !1923

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !1924
  %831 = load i64, i64* %12, align 8, !dbg !1924
  %832 = icmp ult i64 %830, %831, !dbg !1924
  br i1 %832, label %833, label %838, !dbg !1927

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !1924
  %835 = load i8*, i8** %11, align 8, !dbg !1924
  %836 = load i64, i64* %21, align 8, !dbg !1924
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !1924
  store i8 %834, i8* %837, align 1, !dbg !1924
  br label %838, !dbg !1924

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !1927
  %840 = add i64 %839, 1, !dbg !1927
  store i64 %840, i64* %21, align 8, !dbg !1927
  br label %841, !dbg !1927

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !1928
  %843 = load i64, i64* %31, align 8, !dbg !1929
  %844 = add i64 %843, 1, !dbg !1929
  store i64 %844, i64* %31, align 8, !dbg !1929
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !1928
  %846 = load i8, i8* %845, align 1, !dbg !1928
  store i8 %846, i8* %35, align 1, !dbg !1930
  br label %664, !dbg !1931, !llvm.loop !1932

847:                                              ; preds = %794
  br label %942, !dbg !1935

848:                                              ; preds = %657, %654
  br label %849, !dbg !1936

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !1937
  %851 = trunc i8 %850 to i1, !dbg !1937
  br i1 %851, label %852, label %855, !dbg !1939

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !1940
  %854 = icmp ne i32 %853, 2, !dbg !1941
  br i1 %854, label %858, label %855, !dbg !1942

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !1943
  %857 = trunc i8 %856 to i1, !dbg !1943
  br i1 %857, label %858, label %875, !dbg !1944

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !1945
  %860 = icmp ne i32* %859, null, !dbg !1945
  br i1 %860, label %861, label %875, !dbg !1946

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !1947
  %863 = load i8, i8* %35, align 1, !dbg !1948
  %864 = zext i8 %863 to i64, !dbg !1948
  %865 = udiv i64 %864, 32, !dbg !1949
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !1947
  %867 = load i32, i32* %866, align 4, !dbg !1947
  %868 = load i8, i8* %35, align 1, !dbg !1950
  %869 = zext i8 %868 to i64, !dbg !1950
  %870 = urem i64 %869, 32, !dbg !1951
  %871 = trunc i64 %870 to i32, !dbg !1952
  %872 = lshr i32 %867, %871, !dbg !1952
  %873 = and i32 %872, 1, !dbg !1953
  %874 = icmp ne i32 %873, 0, !dbg !1953
  br i1 %874, label %879, label %875, !dbg !1954

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !1955
  %877 = trunc i8 %876 to i1, !dbg !1955
  br i1 %877, label %879, label %878, !dbg !1956

878:                                              ; preds = %875
  br label %942, !dbg !1957

879:                                              ; preds = %875, %861
  br label %880, !dbg !1955

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !1958), !dbg !1959
  br label %881, !dbg !1960

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !1961
  %883 = trunc i8 %882 to i1, !dbg !1961
  br i1 %883, label %884, label %885, !dbg !1964

884:                                              ; preds = %881
  br label %1078, !dbg !1961

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !1964
  %886 = load i32, i32* %15, align 4, !dbg !1965
  %887 = icmp eq i32 %886, 2, !dbg !1965
  br i1 %887, label %888, label %928, !dbg !1965

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !1965
  %890 = trunc i8 %889 to i1, !dbg !1965
  br i1 %890, label %928, label %891, !dbg !1964

891:                                              ; preds = %888
  br label %892, !dbg !1967

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !1969
  %894 = load i64, i64* %12, align 8, !dbg !1969
  %895 = icmp ult i64 %893, %894, !dbg !1969
  br i1 %895, label %896, label %900, !dbg !1972

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !1969
  %898 = load i64, i64* %21, align 8, !dbg !1969
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !1969
  store i8 39, i8* %899, align 1, !dbg !1969
  br label %900, !dbg !1969

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !1972
  %902 = add i64 %901, 1, !dbg !1972
  store i64 %902, i64* %21, align 8, !dbg !1972
  br label %903, !dbg !1972

903:                                              ; preds = %900
  br label %904, !dbg !1967

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !1973
  %906 = load i64, i64* %12, align 8, !dbg !1973
  %907 = icmp ult i64 %905, %906, !dbg !1973
  br i1 %907, label %908, label %912, !dbg !1976

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !1973
  %910 = load i64, i64* %21, align 8, !dbg !1973
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !1973
  store i8 36, i8* %911, align 1, !dbg !1973
  br label %912, !dbg !1973

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !1976
  %914 = add i64 %913, 1, !dbg !1976
  store i64 %914, i64* %21, align 8, !dbg !1976
  br label %915, !dbg !1976

915:                                              ; preds = %912
  br label %916, !dbg !1967

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !1977
  %918 = load i64, i64* %12, align 8, !dbg !1977
  %919 = icmp ult i64 %917, %918, !dbg !1977
  br i1 %919, label %920, label %924, !dbg !1980

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !1977
  %922 = load i64, i64* %21, align 8, !dbg !1977
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !1977
  store i8 39, i8* %923, align 1, !dbg !1977
  br label %924, !dbg !1977

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !1980
  %926 = add i64 %925, 1, !dbg !1980
  store i64 %926, i64* %21, align 8, !dbg !1980
  br label %927, !dbg !1980

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !1967
  br label %928, !dbg !1967

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !1964

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !1981
  %931 = load i64, i64* %12, align 8, !dbg !1981
  %932 = icmp ult i64 %930, %931, !dbg !1981
  br i1 %932, label %933, label %937, !dbg !1984

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !1981
  %935 = load i64, i64* %21, align 8, !dbg !1981
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !1981
  store i8 92, i8* %936, align 1, !dbg !1981
  br label %937, !dbg !1981

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !1984
  %939 = add i64 %938, 1, !dbg !1984
  store i64 %939, i64* %21, align 8, !dbg !1984
  br label %940, !dbg !1984

940:                                              ; preds = %937
  br label %941, !dbg !1964

941:                                              ; preds = %940
  br label %942, !dbg !1964

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !1985), !dbg !1986
  br label %943, !dbg !1987

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !1988
  %945 = trunc i8 %944 to i1, !dbg !1988
  br i1 %945, label %946, label %974, !dbg !1988

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !1988
  %948 = trunc i8 %947 to i1, !dbg !1988
  br i1 %948, label %974, label %949, !dbg !1991

949:                                              ; preds = %946
  br label %950, !dbg !1992

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !1994
  %952 = load i64, i64* %12, align 8, !dbg !1994
  %953 = icmp ult i64 %951, %952, !dbg !1994
  br i1 %953, label %954, label %958, !dbg !1997

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !1994
  %956 = load i64, i64* %21, align 8, !dbg !1994
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !1994
  store i8 39, i8* %957, align 1, !dbg !1994
  br label %958, !dbg !1994

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !1997
  %960 = add i64 %959, 1, !dbg !1997
  store i64 %960, i64* %21, align 8, !dbg !1997
  br label %961, !dbg !1997

961:                                              ; preds = %958
  br label %962, !dbg !1992

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !1998
  %964 = load i64, i64* %12, align 8, !dbg !1998
  %965 = icmp ult i64 %963, %964, !dbg !1998
  br i1 %965, label %966, label %970, !dbg !2001

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !1998
  %968 = load i64, i64* %21, align 8, !dbg !1998
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !1998
  store i8 39, i8* %969, align 1, !dbg !1998
  br label %970, !dbg !1998

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2001
  %972 = add i64 %971, 1, !dbg !2001
  store i64 %972, i64* %21, align 8, !dbg !2001
  br label %973, !dbg !2001

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !1992
  br label %974, !dbg !1992

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !1991

975:                                              ; preds = %974
  br label %976, !dbg !2002

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2003
  %978 = load i64, i64* %12, align 8, !dbg !2003
  %979 = icmp ult i64 %977, %978, !dbg !2003
  br i1 %979, label %980, label %985, !dbg !2006

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2003
  %982 = load i8*, i8** %11, align 8, !dbg !2003
  %983 = load i64, i64* %21, align 8, !dbg !2003
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2003
  store i8 %981, i8* %984, align 1, !dbg !2003
  br label %985, !dbg !2003

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2006
  %987 = add i64 %986, 1, !dbg !2006
  store i64 %987, i64* %21, align 8, !dbg !2006
  br label %988, !dbg !2006

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2007
  %990 = trunc i8 %989 to i1, !dbg !2007
  br i1 %990, label %992, label %991, !dbg !2009

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2010
  br label %992, !dbg !2011

992:                                              ; preds = %991, %988
  br label %993, !dbg !2012

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2013
  %995 = add i64 %994, 1, !dbg !2013
  store i64 %995, i64* %31, align 8, !dbg !2013
  br label %139, !dbg !2014, !llvm.loop !2015

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2017
  %998 = icmp eq i64 %997, 0, !dbg !2019
  br i1 %998, label %999, label %1006, !dbg !2020

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2021
  %1001 = icmp eq i32 %1000, 2, !dbg !2022
  br i1 %1001, label %1002, label %1006, !dbg !2023

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2024
  %1004 = trunc i8 %1003 to i1, !dbg !2024
  br i1 %1004, label %1005, label %1006, !dbg !2025

1005:                                             ; preds = %1002
  br label %1078, !dbg !2026

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2027
  %1008 = icmp eq i32 %1007, 2, !dbg !2029
  br i1 %1008, label %1009, label %1038, !dbg !2030

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2031
  %1011 = trunc i8 %1010 to i1, !dbg !2031
  br i1 %1011, label %1038, label %1012, !dbg !2032

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2033
  %1014 = trunc i8 %1013 to i1, !dbg !2033
  br i1 %1014, label %1015, label %1038, !dbg !2034

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2035
  %1017 = trunc i8 %1016 to i1, !dbg !2035
  br i1 %1017, label %1018, label %1028, !dbg !2038

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2039
  %1020 = load i64, i64* %22, align 8, !dbg !2040
  %1021 = load i8*, i8** %13, align 8, !dbg !2041
  %1022 = load i64, i64* %14, align 8, !dbg !2042
  %1023 = load i32, i32* %16, align 4, !dbg !2043
  %1024 = load i32*, i32** %17, align 8, !dbg !2044
  %1025 = load i8*, i8** %18, align 8, !dbg !2045
  %1026 = load i8*, i8** %19, align 8, !dbg !2046
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2047
  store i64 %1027, i64* %10, align 8, !dbg !2048
  br label %1096, !dbg !2048

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2049
  %1030 = icmp ne i64 %1029, 0, !dbg !2049
  br i1 %1030, label %1036, label %1031, !dbg !2051

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2052
  %1033 = icmp ne i64 %1032, 0, !dbg !2052
  br i1 %1033, label %1034, label %1036, !dbg !2053

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2054
  store i64 %1035, i64* %12, align 8, !dbg !2056
  store i64 0, i64* %21, align 8, !dbg !2057
  br label %51, !dbg !2058

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2059

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2060
  %1040 = icmp ne i8* %1039, null, !dbg !2060
  br i1 %1040, label %1041, label %1068, !dbg !2062

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2063
  %1043 = trunc i8 %1042 to i1, !dbg !2063
  br i1 %1043, label %1068, label %1044, !dbg !2064

1044:                                             ; preds = %1041
  br label %1045, !dbg !2065

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2066
  %1047 = load i8, i8* %1046, align 1, !dbg !2069
  %1048 = icmp ne i8 %1047, 0, !dbg !2070
  br i1 %1048, label %1049, label %1067, !dbg !2070

1049:                                             ; preds = %1045
  br label %1050, !dbg !2071

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2072
  %1052 = load i64, i64* %12, align 8, !dbg !2072
  %1053 = icmp ult i64 %1051, %1052, !dbg !2072
  br i1 %1053, label %1054, label %1060, !dbg !2075

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2072
  %1056 = load i8, i8* %1055, align 1, !dbg !2072
  %1057 = load i8*, i8** %11, align 8, !dbg !2072
  %1058 = load i64, i64* %21, align 8, !dbg !2072
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2072
  store i8 %1056, i8* %1059, align 1, !dbg !2072
  br label %1060, !dbg !2072

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2075
  %1062 = add i64 %1061, 1, !dbg !2075
  store i64 %1062, i64* %21, align 8, !dbg !2075
  br label %1063, !dbg !2075

1063:                                             ; preds = %1060
  br label %1064, !dbg !2075

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2076
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2076
  store i8* %1066, i8** %23, align 8, !dbg !2076
  br label %1045, !dbg !2077, !llvm.loop !2078

1067:                                             ; preds = %1045
  br label %1068, !dbg !2079

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2080
  %1070 = load i64, i64* %12, align 8, !dbg !2082
  %1071 = icmp ult i64 %1069, %1070, !dbg !2083
  br i1 %1071, label %1072, label %1076, !dbg !2084

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2085
  %1074 = load i64, i64* %21, align 8, !dbg !2086
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2085
  store i8 0, i8* %1075, align 1, !dbg !2087
  br label %1076, !dbg !2085

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2088
  store i64 %1077, i64* %10, align 8, !dbg !2089
  br label %1096, !dbg !2089

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2090), !dbg !2091
  %1079 = load i32, i32* %15, align 4, !dbg !2092
  %1080 = icmp eq i32 %1079, 2, !dbg !2094
  br i1 %1080, label %1081, label %1085, !dbg !2095

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2096
  %1083 = trunc i8 %1082 to i1, !dbg !2096
  br i1 %1083, label %1084, label %1085, !dbg !2097

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2098
  br label %1085, !dbg !2099

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2100
  %1087 = load i64, i64* %12, align 8, !dbg !2101
  %1088 = load i8*, i8** %13, align 8, !dbg !2102
  %1089 = load i64, i64* %14, align 8, !dbg !2103
  %1090 = load i32, i32* %15, align 4, !dbg !2104
  %1091 = load i32, i32* %16, align 4, !dbg !2105
  %1092 = and i32 %1091, -3, !dbg !2106
  %1093 = load i8*, i8** %18, align 8, !dbg !2107
  %1094 = load i8*, i8** %19, align 8, !dbg !2108
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2109
  store i64 %1095, i64* %10, align 8, !dbg !2110
  br label %1096, !dbg !2110

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2111
  ret i64 %1097, !dbg !2111
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2112, metadata !DIExpression()), !dbg !2113
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2114, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2116, metadata !DIExpression()), !dbg !2117
  %9 = load i8*, i8** %4, align 8, !dbg !2118
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.95, i64 0, i64 0), i8* noundef %9) #18, !dbg !2118
  store i8* %10, i8** %6, align 8, !dbg !2117
  %11 = load i8*, i8** %6, align 8, !dbg !2119
  %12 = load i8*, i8** %4, align 8, !dbg !2121
  %13 = icmp ne i8* %11, %12, !dbg !2122
  br i1 %13, label %14, label %16, !dbg !2123

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2124
  store i8* %15, i8** %3, align 8, !dbg !2125
  br label %37, !dbg !2125

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2126, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2128, metadata !DIExpression()), !dbg !2129
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2130
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2131
  %18 = icmp eq i64 %17, 3, !dbg !2133
  br i1 %18, label %19, label %32, !dbg !2134

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2135
  %21 = icmp eq i32 %20, 8216, !dbg !2136
  br i1 %21, label %22, label %32, !dbg !2137

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2138
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2138
  %25 = load i8, i8* %24, align 1, !dbg !2138
  %26 = zext i8 %25 to i32, !dbg !2138
  %27 = icmp eq i32 %26, 39, !dbg !2139
  %28 = zext i1 %27 to i32, !dbg !2139
  %29 = sext i32 %28 to i64, !dbg !2140
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2140
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2140
  store i8* %31, i8** %3, align 8, !dbg !2141
  br label %37, !dbg !2141

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2142
  %34 = icmp eq i32 %33, 9, !dbg !2143
  %35 = zext i1 %34 to i64, !dbg !2142
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.92, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), !dbg !2142
  store i8* %36, i8** %3, align 8, !dbg !2144
  br label %37, !dbg !2144

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2145
  ret i8* %38, !dbg !2145
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2146 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2149, metadata !DIExpression()), !dbg !2150
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2151, metadata !DIExpression()), !dbg !2152
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2153, metadata !DIExpression()), !dbg !2154
  %7 = load i8*, i8** %4, align 8, !dbg !2155
  %8 = load i64, i64* %5, align 8, !dbg !2156
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2157
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2158
  ret i8* %10, !dbg !2159
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2160 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2163, metadata !DIExpression()), !dbg !2164
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2165, metadata !DIExpression()), !dbg !2166
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2167, metadata !DIExpression()), !dbg !2168
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2169, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2171, metadata !DIExpression()), !dbg !2172
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2173
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2173
  br i1 %15, label %16, label %18, !dbg !2173

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2174
  br label %19, !dbg !2173

18:                                               ; preds = %4
  br label %19, !dbg !2173

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2173
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2172
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2175, metadata !DIExpression()), !dbg !2176
  %21 = call i32* @__errno_location() #21, !dbg !2177
  %22 = load i32, i32* %21, align 4, !dbg !2177
  store i32 %22, i32* %10, align 4, !dbg !2176
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2178, metadata !DIExpression()), !dbg !2179
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2180
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2181
  %25 = load i32, i32* %24, align 4, !dbg !2181
  %26 = load i64*, i64** %7, align 8, !dbg !2182
  %27 = icmp ne i64* %26, null, !dbg !2182
  %28 = zext i1 %27 to i64, !dbg !2182
  %29 = select i1 %27, i32 0, i32 1, !dbg !2182
  %30 = or i32 %25, %29, !dbg !2183
  store i32 %30, i32* %11, align 4, !dbg !2179
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2184, metadata !DIExpression()), !dbg !2185
  %31 = load i8*, i8** %5, align 8, !dbg !2186
  %32 = load i64, i64* %6, align 8, !dbg !2187
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2188
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2189
  %35 = load i32, i32* %34, align 8, !dbg !2189
  %36 = load i32, i32* %11, align 4, !dbg !2190
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2191
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2192
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2191
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2193
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2194
  %42 = load i8*, i8** %41, align 8, !dbg !2194
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2195
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2196
  %45 = load i8*, i8** %44, align 8, !dbg !2196
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2197
  %47 = add i64 %46, 1, !dbg !2198
  store i64 %47, i64* %12, align 8, !dbg !2185
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2199, metadata !DIExpression()), !dbg !2200
  %48 = load i64, i64* %12, align 8, !dbg !2201
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2202
  store i8* %49, i8** %13, align 8, !dbg !2200
  %50 = load i8*, i8** %13, align 8, !dbg !2203
  %51 = load i64, i64* %12, align 8, !dbg !2204
  %52 = load i8*, i8** %5, align 8, !dbg !2205
  %53 = load i64, i64* %6, align 8, !dbg !2206
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2207
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2208
  %56 = load i32, i32* %55, align 8, !dbg !2208
  %57 = load i32, i32* %11, align 4, !dbg !2209
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2210
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2211
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2210
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2212
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2213
  %63 = load i8*, i8** %62, align 8, !dbg !2213
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2214
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2215
  %66 = load i8*, i8** %65, align 8, !dbg !2215
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2216
  %68 = load i32, i32* %10, align 4, !dbg !2217
  %69 = call i32* @__errno_location() #21, !dbg !2218
  store i32 %68, i32* %69, align 4, !dbg !2219
  %70 = load i64*, i64** %7, align 8, !dbg !2220
  %71 = icmp ne i64* %70, null, !dbg !2220
  br i1 %71, label %72, label %76, !dbg !2222

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2223
  %74 = sub i64 %73, 1, !dbg !2224
  %75 = load i64*, i64** %7, align 8, !dbg !2225
  store i64 %74, i64* %75, align 8, !dbg !2226
  br label %76, !dbg !2227

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2228
  ret i8* %77, !dbg !2229
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2230 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2231, metadata !DIExpression()), !dbg !2232
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2233
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2232
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2234, metadata !DIExpression()), !dbg !2236
  store i32 1, i32* %2, align 4, !dbg !2236
  br label %4, !dbg !2237

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2238
  %6 = load i32, i32* @nslots, align 4, !dbg !2240
  %7 = icmp slt i32 %5, %6, !dbg !2241
  br i1 %7, label %8, label %18, !dbg !2242

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2243
  %10 = load i32, i32* %2, align 4, !dbg !2244
  %11 = sext i32 %10 to i64, !dbg !2243
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2243
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2245
  %14 = load i8*, i8** %13, align 8, !dbg !2245
  call void @free(i8* noundef %14) #18, !dbg !2246
  br label %15, !dbg !2246

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2247
  %17 = add nsw i32 %16, 1, !dbg !2247
  store i32 %17, i32* %2, align 4, !dbg !2247
  br label %4, !dbg !2248, !llvm.loop !2249

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2251
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2251
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2253
  %22 = load i8*, i8** %21, align 8, !dbg !2253
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2254
  br i1 %23, label %24, label %29, !dbg !2255

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2256
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2256
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2258
  %28 = load i8*, i8** %27, align 8, !dbg !2258
  call void @free(i8* noundef %28) #18, !dbg !2259
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2260
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2261
  br label %29, !dbg !2262

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2263
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2265
  br i1 %31, label %32, label %35, !dbg !2266

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2267
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2267
  call void @free(i8* noundef %34) #18, !dbg !2269
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2270
  br label %35, !dbg !2271

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2272
  ret void, !dbg !2273
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2274 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2277, metadata !DIExpression()), !dbg !2278
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2279, metadata !DIExpression()), !dbg !2280
  %5 = load i32, i32* %3, align 4, !dbg !2281
  %6 = load i8*, i8** %4, align 8, !dbg !2282
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2283
  ret i8* %7, !dbg !2284
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2285 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2288, metadata !DIExpression()), !dbg !2289
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2290, metadata !DIExpression()), !dbg !2291
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2292, metadata !DIExpression()), !dbg !2293
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2294, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2296, metadata !DIExpression()), !dbg !2297
  %18 = call i32* @__errno_location() #21, !dbg !2298
  %19 = load i32, i32* %18, align 4, !dbg !2298
  store i32 %19, i32* %9, align 4, !dbg !2297
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2299, metadata !DIExpression()), !dbg !2300
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2301
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2300
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2302, metadata !DIExpression()), !dbg !2303
  store i32 2147483647, i32* %11, align 4, !dbg !2303
  %21 = load i32, i32* %5, align 4, !dbg !2304
  %22 = icmp sle i32 0, %21, !dbg !2306
  br i1 %22, label %23, label %27, !dbg !2307

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2308
  %25 = load i32, i32* %11, align 4, !dbg !2309
  %26 = icmp slt i32 %24, %25, !dbg !2310
  br i1 %26, label %28, label %27, !dbg !2311

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2312
  unreachable, !dbg !2312

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2313
  %30 = load i32, i32* %5, align 4, !dbg !2315
  %31 = icmp sle i32 %29, %30, !dbg !2316
  br i1 %31, label %32, label %73, !dbg !2317

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2318, metadata !DIExpression()), !dbg !2320
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2321
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2322
  %35 = zext i1 %34 to i8, !dbg !2320
  store i8 %35, i8* %12, align 1, !dbg !2320
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2323, metadata !DIExpression()), !dbg !2324
  %36 = load i32, i32* @nslots, align 4, !dbg !2325
  %37 = sext i32 %36 to i64, !dbg !2325
  store i64 %37, i64* %13, align 8, !dbg !2324
  %38 = load i8, i8* %12, align 1, !dbg !2326
  %39 = trunc i8 %38 to i1, !dbg !2326
  br i1 %39, label %40, label %41, !dbg !2326

40:                                               ; preds = %32
  br label %43, !dbg !2326

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2327
  br label %43, !dbg !2326

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2326
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2326
  %46 = load i32, i32* %5, align 4, !dbg !2328
  %47 = load i32, i32* @nslots, align 4, !dbg !2329
  %48 = sub nsw i32 %46, %47, !dbg !2330
  %49 = add nsw i32 %48, 1, !dbg !2331
  %50 = sext i32 %49 to i64, !dbg !2328
  %51 = load i32, i32* %11, align 4, !dbg !2332
  %52 = sext i32 %51 to i64, !dbg !2332
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2333
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2333
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2334
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2335
  %55 = load i8, i8* %12, align 1, !dbg !2336
  %56 = trunc i8 %55 to i1, !dbg !2336
  br i1 %56, label %57, label %60, !dbg !2338

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2339
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2340
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2340
  br label %60, !dbg !2341

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2342
  %62 = load i32, i32* @nslots, align 4, !dbg !2343
  %63 = sext i32 %62 to i64, !dbg !2344
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2344
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2345
  %66 = load i64, i64* %13, align 8, !dbg !2346
  %67 = load i32, i32* @nslots, align 4, !dbg !2347
  %68 = sext i32 %67 to i64, !dbg !2347
  %69 = sub nsw i64 %66, %68, !dbg !2348
  %70 = mul i64 %69, 16, !dbg !2349
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2345
  %71 = load i64, i64* %13, align 8, !dbg !2350
  %72 = trunc i64 %71 to i32, !dbg !2350
  store i32 %72, i32* @nslots, align 4, !dbg !2351
  br label %73, !dbg !2352

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2353, metadata !DIExpression()), !dbg !2355
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2356
  %75 = load i32, i32* %5, align 4, !dbg !2357
  %76 = sext i32 %75 to i64, !dbg !2356
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2356
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2358
  %79 = load i64, i64* %78, align 8, !dbg !2358
  store i64 %79, i64* %14, align 8, !dbg !2355
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2359, metadata !DIExpression()), !dbg !2360
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2361
  %81 = load i32, i32* %5, align 4, !dbg !2362
  %82 = sext i32 %81 to i64, !dbg !2361
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2361
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2363
  %85 = load i8*, i8** %84, align 8, !dbg !2363
  store i8* %85, i8** %15, align 8, !dbg !2360
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2364, metadata !DIExpression()), !dbg !2365
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2366
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2367
  %88 = load i32, i32* %87, align 4, !dbg !2367
  %89 = or i32 %88, 1, !dbg !2368
  store i32 %89, i32* %16, align 4, !dbg !2365
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2369, metadata !DIExpression()), !dbg !2370
  %90 = load i8*, i8** %15, align 8, !dbg !2371
  %91 = load i64, i64* %14, align 8, !dbg !2372
  %92 = load i8*, i8** %6, align 8, !dbg !2373
  %93 = load i64, i64* %7, align 8, !dbg !2374
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2375
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2376
  %96 = load i32, i32* %95, align 8, !dbg !2376
  %97 = load i32, i32* %16, align 4, !dbg !2377
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2378
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2379
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2378
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2380
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2381
  %103 = load i8*, i8** %102, align 8, !dbg !2381
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2382
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2383
  %106 = load i8*, i8** %105, align 8, !dbg !2383
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2384
  store i64 %107, i64* %17, align 8, !dbg !2370
  %108 = load i64, i64* %14, align 8, !dbg !2385
  %109 = load i64, i64* %17, align 8, !dbg !2387
  %110 = icmp ule i64 %108, %109, !dbg !2388
  br i1 %110, label %111, label %149, !dbg !2389

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2390
  %113 = add i64 %112, 1, !dbg !2392
  store i64 %113, i64* %14, align 8, !dbg !2393
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2394
  %115 = load i32, i32* %5, align 4, !dbg !2395
  %116 = sext i32 %115 to i64, !dbg !2394
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2394
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2396
  store i64 %113, i64* %118, align 8, !dbg !2397
  %119 = load i8*, i8** %15, align 8, !dbg !2398
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2400
  br i1 %120, label %121, label %123, !dbg !2401

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2402
  call void @free(i8* noundef %122) #18, !dbg !2403
  br label %123, !dbg !2403

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2404
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2405
  store i8* %125, i8** %15, align 8, !dbg !2406
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2407
  %127 = load i32, i32* %5, align 4, !dbg !2408
  %128 = sext i32 %127 to i64, !dbg !2407
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2407
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2409
  store i8* %125, i8** %130, align 8, !dbg !2410
  %131 = load i8*, i8** %15, align 8, !dbg !2411
  %132 = load i64, i64* %14, align 8, !dbg !2412
  %133 = load i8*, i8** %6, align 8, !dbg !2413
  %134 = load i64, i64* %7, align 8, !dbg !2414
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2415
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2416
  %137 = load i32, i32* %136, align 8, !dbg !2416
  %138 = load i32, i32* %16, align 4, !dbg !2417
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2418
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2419
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2418
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2420
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2421
  %144 = load i8*, i8** %143, align 8, !dbg !2421
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2422
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2423
  %147 = load i8*, i8** %146, align 8, !dbg !2423
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2424
  br label %149, !dbg !2425

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2426
  %151 = call i32* @__errno_location() #21, !dbg !2427
  store i32 %150, i32* %151, align 4, !dbg !2428
  %152 = load i8*, i8** %15, align 8, !dbg !2429
  ret i8* %152, !dbg !2430
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2431 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2434, metadata !DIExpression()), !dbg !2435
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2436, metadata !DIExpression()), !dbg !2437
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2438, metadata !DIExpression()), !dbg !2439
  %7 = load i32, i32* %4, align 4, !dbg !2440
  %8 = load i8*, i8** %5, align 8, !dbg !2441
  %9 = load i64, i64* %6, align 8, !dbg !2442
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2443
  ret i8* %10, !dbg !2444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2445 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2448, metadata !DIExpression()), !dbg !2449
  %3 = load i8*, i8** %2, align 8, !dbg !2450
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2451
  ret i8* %4, !dbg !2452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2453 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2456, metadata !DIExpression()), !dbg !2457
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2458, metadata !DIExpression()), !dbg !2459
  %5 = load i8*, i8** %3, align 8, !dbg !2460
  %6 = load i64, i64* %4, align 8, !dbg !2461
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2462
  ret i8* %7, !dbg !2463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2464 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2467, metadata !DIExpression()), !dbg !2468
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2469, metadata !DIExpression()), !dbg !2470
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2471, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2473, metadata !DIExpression()), !dbg !2474
  %8 = load i32, i32* %5, align 4, !dbg !2475
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2476
  %9 = load i32, i32* %4, align 4, !dbg !2477
  %10 = load i8*, i8** %6, align 8, !dbg !2478
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2479
  ret i8* %11, !dbg !2480
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2481 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2484, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2486, metadata !DIExpression()), !dbg !2487
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2487
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2487
  %5 = load i32, i32* %3, align 4, !dbg !2488
  %6 = icmp eq i32 %5, 10, !dbg !2490
  br i1 %6, label %7, label %8, !dbg !2491

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2492
  unreachable, !dbg !2492

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2493
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2494
  store i32 %9, i32* %10, align 8, !dbg !2495
  ret void, !dbg !2496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2497 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2500, metadata !DIExpression()), !dbg !2501
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2502, metadata !DIExpression()), !dbg !2503
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2504, metadata !DIExpression()), !dbg !2505
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2506, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2508, metadata !DIExpression()), !dbg !2509
  %10 = load i32, i32* %6, align 4, !dbg !2510
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2511
  %11 = load i32, i32* %5, align 4, !dbg !2512
  %12 = load i8*, i8** %7, align 8, !dbg !2513
  %13 = load i64, i64* %8, align 8, !dbg !2514
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2515
  ret i8* %14, !dbg !2516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2517 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2520, metadata !DIExpression()), !dbg !2521
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2522, metadata !DIExpression()), !dbg !2523
  %5 = load i32, i32* %3, align 4, !dbg !2524
  %6 = load i8*, i8** %4, align 8, !dbg !2525
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2526
  ret i8* %7, !dbg !2527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2528 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2531, metadata !DIExpression()), !dbg !2532
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2533, metadata !DIExpression()), !dbg !2534
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2535, metadata !DIExpression()), !dbg !2536
  %7 = load i32, i32* %4, align 4, !dbg !2537
  %8 = load i8*, i8** %5, align 8, !dbg !2538
  %9 = load i64, i64* %6, align 8, !dbg !2539
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2540
  ret i8* %10, !dbg !2541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2542 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2545, metadata !DIExpression()), !dbg !2546
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2547, metadata !DIExpression()), !dbg !2548
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2549, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2551, metadata !DIExpression()), !dbg !2552
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2553
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2553
  %9 = load i8, i8* %6, align 1, !dbg !2554
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2555
  %11 = load i8*, i8** %4, align 8, !dbg !2556
  %12 = load i64, i64* %5, align 8, !dbg !2557
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2558
  ret i8* %13, !dbg !2559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2560 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2563, metadata !DIExpression()), !dbg !2564
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2565, metadata !DIExpression()), !dbg !2566
  %5 = load i8*, i8** %3, align 8, !dbg !2567
  %6 = load i8, i8* %4, align 1, !dbg !2568
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2569
  ret i8* %7, !dbg !2570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2571 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2572, metadata !DIExpression()), !dbg !2573
  %3 = load i8*, i8** %2, align 8, !dbg !2574
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2575
  ret i8* %4, !dbg !2576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2577 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2578, metadata !DIExpression()), !dbg !2579
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2580, metadata !DIExpression()), !dbg !2581
  %5 = load i8*, i8** %3, align 8, !dbg !2582
  %6 = load i64, i64* %4, align 8, !dbg !2583
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2584
  ret i8* %7, !dbg !2585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2586 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2587, metadata !DIExpression()), !dbg !2588
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2589, metadata !DIExpression()), !dbg !2590
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2591, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2593, metadata !DIExpression()), !dbg !2594
  %9 = load i32, i32* %5, align 4, !dbg !2595
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2596
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2596
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2596
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2596
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2597
  %13 = load i32, i32* %4, align 4, !dbg !2598
  %14 = load i8*, i8** %6, align 8, !dbg !2599
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2600
  ret i8* %15, !dbg !2601
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2602 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2605, metadata !DIExpression()), !dbg !2606
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2607, metadata !DIExpression()), !dbg !2608
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2609, metadata !DIExpression()), !dbg !2610
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2611, metadata !DIExpression()), !dbg !2612
  %9 = load i32, i32* %5, align 4, !dbg !2613
  %10 = load i8*, i8** %6, align 8, !dbg !2614
  %11 = load i8*, i8** %7, align 8, !dbg !2615
  %12 = load i8*, i8** %8, align 8, !dbg !2616
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2617
  ret i8* %13, !dbg !2618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2619 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2622, metadata !DIExpression()), !dbg !2623
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2624, metadata !DIExpression()), !dbg !2625
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2626, metadata !DIExpression()), !dbg !2627
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2628, metadata !DIExpression()), !dbg !2629
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2630, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2632, metadata !DIExpression()), !dbg !2633
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2634
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2634
  %13 = load i8*, i8** %7, align 8, !dbg !2635
  %14 = load i8*, i8** %8, align 8, !dbg !2636
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2637
  %15 = load i32, i32* %6, align 4, !dbg !2638
  %16 = load i8*, i8** %9, align 8, !dbg !2639
  %17 = load i64, i64* %10, align 8, !dbg !2640
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2641
  ret i8* %18, !dbg !2642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2643 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2646, metadata !DIExpression()), !dbg !2647
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2648, metadata !DIExpression()), !dbg !2649
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2650, metadata !DIExpression()), !dbg !2651
  %7 = load i8*, i8** %4, align 8, !dbg !2652
  %8 = load i8*, i8** %5, align 8, !dbg !2653
  %9 = load i8*, i8** %6, align 8, !dbg !2654
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2655
  ret i8* %10, !dbg !2656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2657 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2660, metadata !DIExpression()), !dbg !2661
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2662, metadata !DIExpression()), !dbg !2663
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2664, metadata !DIExpression()), !dbg !2665
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2666, metadata !DIExpression()), !dbg !2667
  %9 = load i8*, i8** %5, align 8, !dbg !2668
  %10 = load i8*, i8** %6, align 8, !dbg !2669
  %11 = load i8*, i8** %7, align 8, !dbg !2670
  %12 = load i64, i64* %8, align 8, !dbg !2671
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2672
  ret i8* %13, !dbg !2673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2674 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2677, metadata !DIExpression()), !dbg !2678
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2679, metadata !DIExpression()), !dbg !2680
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2681, metadata !DIExpression()), !dbg !2682
  %7 = load i32, i32* %4, align 4, !dbg !2683
  %8 = load i8*, i8** %5, align 8, !dbg !2684
  %9 = load i64, i64* %6, align 8, !dbg !2685
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2686
  ret i8* %10, !dbg !2687
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2688 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2691, metadata !DIExpression()), !dbg !2692
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2693, metadata !DIExpression()), !dbg !2694
  %5 = load i8*, i8** %3, align 8, !dbg !2695
  %6 = load i64, i64* %4, align 8, !dbg !2696
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2697
  ret i8* %7, !dbg !2698
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2699 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2702, metadata !DIExpression()), !dbg !2703
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2704, metadata !DIExpression()), !dbg !2705
  %5 = load i32, i32* %3, align 4, !dbg !2706
  %6 = load i8*, i8** %4, align 8, !dbg !2707
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2708
  ret i8* %7, !dbg !2709
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !2710 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2713, metadata !DIExpression()), !dbg !2714
  %3 = load i8*, i8** %2, align 8, !dbg !2715
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !2716
  ret i8* %4, !dbg !2717
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !2718 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2722, metadata !DIExpression()), !dbg !2723
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2724, metadata !DIExpression()), !dbg !2725
  %5 = load i8*, i8** %3, align 8, !dbg !2726
  %6 = load i8*, i8** %4, align 8, !dbg !2727
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !2728
  %8 = icmp ne i32 %7, 0, !dbg !2729
  %9 = xor i1 %8, true, !dbg !2729
  ret i1 %9, !dbg !2730
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !2731 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !2788, metadata !DIExpression()), !dbg !2789
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2790, metadata !DIExpression()), !dbg !2791
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2792, metadata !DIExpression()), !dbg !2793
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2794, metadata !DIExpression()), !dbg !2795
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2796, metadata !DIExpression()), !dbg !2797
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2798, metadata !DIExpression()), !dbg !2799
  %13 = load i8*, i8** %8, align 8, !dbg !2800
  %14 = icmp ne i8* %13, null, !dbg !2800
  br i1 %14, label %15, label %21, !dbg !2802

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2803
  %17 = load i8*, i8** %8, align 8, !dbg !2804
  %18 = load i8*, i8** %9, align 8, !dbg !2805
  %19 = load i8*, i8** %10, align 8, !dbg !2806
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !2807
  br label %26, !dbg !2807

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2808
  %23 = load i8*, i8** %9, align 8, !dbg !2809
  %24 = load i8*, i8** %10, align 8, !dbg !2810
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.103, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !2811
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2812
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.105, i64 0, i64 0)) #18, !dbg !2813
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !2814
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2815
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.106, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !2815
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2816
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.107, i64 0, i64 0)) #18, !dbg !2817
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.108, i64 0, i64 0)), !dbg !2818
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2819
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.106, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !2819
  %37 = load i64, i64* %12, align 8, !dbg !2820
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
  ], !dbg !2821

38:                                               ; preds = %26
  br label %241, !dbg !2822

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2824
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.109, i64 0, i64 0)) #18, !dbg !2825
  %42 = load i8**, i8*** %11, align 8, !dbg !2826
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !2826
  %44 = load i8*, i8** %43, align 8, !dbg !2826
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !2827
  br label %241, !dbg !2828

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2829
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.110, i64 0, i64 0)) #18, !dbg !2830
  %49 = load i8**, i8*** %11, align 8, !dbg !2831
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !2831
  %51 = load i8*, i8** %50, align 8, !dbg !2831
  %52 = load i8**, i8*** %11, align 8, !dbg !2832
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !2832
  %54 = load i8*, i8** %53, align 8, !dbg !2832
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !2833
  br label %241, !dbg !2834

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2835
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.111, i64 0, i64 0)) #18, !dbg !2836
  %59 = load i8**, i8*** %11, align 8, !dbg !2837
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !2837
  %61 = load i8*, i8** %60, align 8, !dbg !2837
  %62 = load i8**, i8*** %11, align 8, !dbg !2838
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !2838
  %64 = load i8*, i8** %63, align 8, !dbg !2838
  %65 = load i8**, i8*** %11, align 8, !dbg !2839
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !2839
  %67 = load i8*, i8** %66, align 8, !dbg !2839
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !2840
  br label %241, !dbg !2841

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2842
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.112, i64 0, i64 0)) #18, !dbg !2843
  %72 = load i8**, i8*** %11, align 8, !dbg !2844
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !2844
  %74 = load i8*, i8** %73, align 8, !dbg !2844
  %75 = load i8**, i8*** %11, align 8, !dbg !2845
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !2845
  %77 = load i8*, i8** %76, align 8, !dbg !2845
  %78 = load i8**, i8*** %11, align 8, !dbg !2846
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !2846
  %80 = load i8*, i8** %79, align 8, !dbg !2846
  %81 = load i8**, i8*** %11, align 8, !dbg !2847
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !2847
  %83 = load i8*, i8** %82, align 8, !dbg !2847
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !2848
  br label %241, !dbg !2849

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2850
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.113, i64 0, i64 0)) #18, !dbg !2851
  %88 = load i8**, i8*** %11, align 8, !dbg !2852
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !2852
  %90 = load i8*, i8** %89, align 8, !dbg !2852
  %91 = load i8**, i8*** %11, align 8, !dbg !2853
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !2853
  %93 = load i8*, i8** %92, align 8, !dbg !2853
  %94 = load i8**, i8*** %11, align 8, !dbg !2854
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !2854
  %96 = load i8*, i8** %95, align 8, !dbg !2854
  %97 = load i8**, i8*** %11, align 8, !dbg !2855
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !2855
  %99 = load i8*, i8** %98, align 8, !dbg !2855
  %100 = load i8**, i8*** %11, align 8, !dbg !2856
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !2856
  %102 = load i8*, i8** %101, align 8, !dbg !2856
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !2857
  br label %241, !dbg !2858

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2859
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.114, i64 0, i64 0)) #18, !dbg !2860
  %107 = load i8**, i8*** %11, align 8, !dbg !2861
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !2861
  %109 = load i8*, i8** %108, align 8, !dbg !2861
  %110 = load i8**, i8*** %11, align 8, !dbg !2862
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !2862
  %112 = load i8*, i8** %111, align 8, !dbg !2862
  %113 = load i8**, i8*** %11, align 8, !dbg !2863
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !2863
  %115 = load i8*, i8** %114, align 8, !dbg !2863
  %116 = load i8**, i8*** %11, align 8, !dbg !2864
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !2864
  %118 = load i8*, i8** %117, align 8, !dbg !2864
  %119 = load i8**, i8*** %11, align 8, !dbg !2865
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !2865
  %121 = load i8*, i8** %120, align 8, !dbg !2865
  %122 = load i8**, i8*** %11, align 8, !dbg !2866
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !2866
  %124 = load i8*, i8** %123, align 8, !dbg !2866
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !2867
  br label %241, !dbg !2868

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2869
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.115, i64 0, i64 0)) #18, !dbg !2870
  %129 = load i8**, i8*** %11, align 8, !dbg !2871
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !2871
  %131 = load i8*, i8** %130, align 8, !dbg !2871
  %132 = load i8**, i8*** %11, align 8, !dbg !2872
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !2872
  %134 = load i8*, i8** %133, align 8, !dbg !2872
  %135 = load i8**, i8*** %11, align 8, !dbg !2873
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !2873
  %137 = load i8*, i8** %136, align 8, !dbg !2873
  %138 = load i8**, i8*** %11, align 8, !dbg !2874
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !2874
  %140 = load i8*, i8** %139, align 8, !dbg !2874
  %141 = load i8**, i8*** %11, align 8, !dbg !2875
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !2875
  %143 = load i8*, i8** %142, align 8, !dbg !2875
  %144 = load i8**, i8*** %11, align 8, !dbg !2876
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !2876
  %146 = load i8*, i8** %145, align 8, !dbg !2876
  %147 = load i8**, i8*** %11, align 8, !dbg !2877
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !2877
  %149 = load i8*, i8** %148, align 8, !dbg !2877
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !2878
  br label %241, !dbg !2879

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2880
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.116, i64 0, i64 0)) #18, !dbg !2881
  %154 = load i8**, i8*** %11, align 8, !dbg !2882
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !2882
  %156 = load i8*, i8** %155, align 8, !dbg !2882
  %157 = load i8**, i8*** %11, align 8, !dbg !2883
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !2883
  %159 = load i8*, i8** %158, align 8, !dbg !2883
  %160 = load i8**, i8*** %11, align 8, !dbg !2884
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !2884
  %162 = load i8*, i8** %161, align 8, !dbg !2884
  %163 = load i8**, i8*** %11, align 8, !dbg !2885
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !2885
  %165 = load i8*, i8** %164, align 8, !dbg !2885
  %166 = load i8**, i8*** %11, align 8, !dbg !2886
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !2886
  %168 = load i8*, i8** %167, align 8, !dbg !2886
  %169 = load i8**, i8*** %11, align 8, !dbg !2887
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !2887
  %171 = load i8*, i8** %170, align 8, !dbg !2887
  %172 = load i8**, i8*** %11, align 8, !dbg !2888
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !2888
  %174 = load i8*, i8** %173, align 8, !dbg !2888
  %175 = load i8**, i8*** %11, align 8, !dbg !2889
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !2889
  %177 = load i8*, i8** %176, align 8, !dbg !2889
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !2890
  br label %241, !dbg !2891

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2892
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.117, i64 0, i64 0)) #18, !dbg !2893
  %182 = load i8**, i8*** %11, align 8, !dbg !2894
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !2894
  %184 = load i8*, i8** %183, align 8, !dbg !2894
  %185 = load i8**, i8*** %11, align 8, !dbg !2895
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !2895
  %187 = load i8*, i8** %186, align 8, !dbg !2895
  %188 = load i8**, i8*** %11, align 8, !dbg !2896
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !2896
  %190 = load i8*, i8** %189, align 8, !dbg !2896
  %191 = load i8**, i8*** %11, align 8, !dbg !2897
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !2897
  %193 = load i8*, i8** %192, align 8, !dbg !2897
  %194 = load i8**, i8*** %11, align 8, !dbg !2898
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !2898
  %196 = load i8*, i8** %195, align 8, !dbg !2898
  %197 = load i8**, i8*** %11, align 8, !dbg !2899
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !2899
  %199 = load i8*, i8** %198, align 8, !dbg !2899
  %200 = load i8**, i8*** %11, align 8, !dbg !2900
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !2900
  %202 = load i8*, i8** %201, align 8, !dbg !2900
  %203 = load i8**, i8*** %11, align 8, !dbg !2901
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !2901
  %205 = load i8*, i8** %204, align 8, !dbg !2901
  %206 = load i8**, i8*** %11, align 8, !dbg !2902
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !2902
  %208 = load i8*, i8** %207, align 8, !dbg !2902
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !2903
  br label %241, !dbg !2904

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2905
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.118, i64 0, i64 0)) #18, !dbg !2906
  %213 = load i8**, i8*** %11, align 8, !dbg !2907
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !2907
  %215 = load i8*, i8** %214, align 8, !dbg !2907
  %216 = load i8**, i8*** %11, align 8, !dbg !2908
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !2908
  %218 = load i8*, i8** %217, align 8, !dbg !2908
  %219 = load i8**, i8*** %11, align 8, !dbg !2909
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !2909
  %221 = load i8*, i8** %220, align 8, !dbg !2909
  %222 = load i8**, i8*** %11, align 8, !dbg !2910
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !2910
  %224 = load i8*, i8** %223, align 8, !dbg !2910
  %225 = load i8**, i8*** %11, align 8, !dbg !2911
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !2911
  %227 = load i8*, i8** %226, align 8, !dbg !2911
  %228 = load i8**, i8*** %11, align 8, !dbg !2912
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !2912
  %230 = load i8*, i8** %229, align 8, !dbg !2912
  %231 = load i8**, i8*** %11, align 8, !dbg !2913
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !2913
  %233 = load i8*, i8** %232, align 8, !dbg !2913
  %234 = load i8**, i8*** %11, align 8, !dbg !2914
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !2914
  %236 = load i8*, i8** %235, align 8, !dbg !2914
  %237 = load i8**, i8*** %11, align 8, !dbg !2915
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !2915
  %239 = load i8*, i8** %238, align 8, !dbg !2915
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !2916
  br label %241, !dbg !2917

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !2918
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !2919 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2922, metadata !DIExpression()), !dbg !2923
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2924, metadata !DIExpression()), !dbg !2925
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2926, metadata !DIExpression()), !dbg !2927
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2928, metadata !DIExpression()), !dbg !2929
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !2930, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2932, metadata !DIExpression()), !dbg !2933
  store i64 0, i64* %11, align 8, !dbg !2934
  br label %12, !dbg !2936

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !2937
  %14 = load i64, i64* %11, align 8, !dbg !2939
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !2937
  %16 = load i8*, i8** %15, align 8, !dbg !2937
  %17 = icmp ne i8* %16, null, !dbg !2940
  br i1 %17, label %18, label %22, !dbg !2940

18:                                               ; preds = %12
  br label %19, !dbg !2940

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !2941
  %21 = add i64 %20, 1, !dbg !2941
  store i64 %21, i64* %11, align 8, !dbg !2941
  br label %12, !dbg !2942, !llvm.loop !2943

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2945
  %24 = load i8*, i8** %7, align 8, !dbg !2946
  %25 = load i8*, i8** %8, align 8, !dbg !2947
  %26 = load i8*, i8** %9, align 8, !dbg !2948
  %27 = load i8**, i8*** %10, align 8, !dbg !2949
  %28 = load i64, i64* %11, align 8, !dbg !2950
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !2951
  ret void, !dbg !2952
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !2953 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2967, metadata !DIExpression()), !dbg !2968
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2969, metadata !DIExpression()), !dbg !2970
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2971, metadata !DIExpression()), !dbg !2972
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2973, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2975, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2977, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !2979, metadata !DIExpression()), !dbg !2981
  store i64 0, i64* %10, align 8, !dbg !2982
  br label %12, !dbg !2984

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !2985
  %14 = icmp ult i64 %13, 10, !dbg !2987
  br i1 %14, label %15, label %38, !dbg !2988

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !2989
  %17 = load i32, i32* %16, align 8, !dbg !2989
  %18 = icmp sge i32 %17, 0, !dbg !2989
  br i1 %18, label %27, label %19, !dbg !2989

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !2989
  store i32 %20, i32* %16, align 8, !dbg !2989
  %21 = icmp sle i32 %20, 0, !dbg !2989
  br i1 %21, label %22, label %27, !dbg !2989

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !2989
  %24 = load i8*, i8** %23, align 8, !dbg !2989
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !2989
  %26 = bitcast i8* %25 to i8**, !dbg !2989
  br label %32, !dbg !2989

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !2989
  %29 = load i8*, i8** %28, align 8, !dbg !2989
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !2989
  store i8* %30, i8** %28, align 8, !dbg !2989
  %31 = bitcast i8* %29 to i8**, !dbg !2989
  br label %32, !dbg !2989

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !2989
  %34 = load i8*, i8** %33, align 8, !dbg !2989
  %35 = load i64, i64* %10, align 8, !dbg !2990
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !2991
  store i8* %34, i8** %36, align 8, !dbg !2992
  %37 = icmp ne i8* %34, null, !dbg !2993
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !2994
  br i1 %39, label %40, label %44, !dbg !2995

40:                                               ; preds = %38
  br label %41, !dbg !2995

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !2996
  %43 = add i64 %42, 1, !dbg !2996
  store i64 %43, i64* %10, align 8, !dbg !2996
  br label %12, !dbg !2997, !llvm.loop !2998

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3000
  %46 = load i8*, i8** %7, align 8, !dbg !3001
  %47 = load i8*, i8** %8, align 8, !dbg !3002
  %48 = load i8*, i8** %9, align 8, !dbg !3003
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3004
  %50 = load i64, i64* %10, align 8, !dbg !3005
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3006
  ret void, !dbg !3007
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3008 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3011, metadata !DIExpression()), !dbg !3012
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3013, metadata !DIExpression()), !dbg !3014
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3015, metadata !DIExpression()), !dbg !3016
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3017, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3019, metadata !DIExpression()), !dbg !3020
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3021
  call void @llvm.va_start(i8* %11), !dbg !3021
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3022
  %13 = load i8*, i8** %6, align 8, !dbg !3023
  %14 = load i8*, i8** %7, align 8, !dbg !3024
  %15 = load i8*, i8** %8, align 8, !dbg !3025
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3026
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3026
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3026
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3026
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3027
  call void @llvm.va_end(i8* %18), !dbg !3027
  ret void, !dbg !3028
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3029 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3030
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.106, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3030
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.123, i64 0, i64 0)) #18, !dbg !3031
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.124, i64 0, i64 0)), !dbg !3032
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.125, i64 0, i64 0)) #18, !dbg !3033
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.127, i64 0, i64 0)), !dbg !3034
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.128, i64 0, i64 0)) #18, !dbg !3035
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.129, i64 0, i64 0)), !dbg !3036
  ret void, !dbg !3037
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3038 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3042, metadata !DIExpression()), !dbg !3043
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3044, metadata !DIExpression()), !dbg !3045
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3046, metadata !DIExpression()), !dbg !3047
  %7 = load i8*, i8** %4, align 8, !dbg !3048
  %8 = load i64, i64* %5, align 8, !dbg !3049
  %9 = load i64, i64* %6, align 8, !dbg !3050
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !3051
  ret i8* %10, !dbg !3052
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3053 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3054, metadata !DIExpression()), !dbg !3055
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3056, metadata !DIExpression()), !dbg !3057
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3058, metadata !DIExpression()), !dbg !3059
  %7 = load i8*, i8** %4, align 8, !dbg !3060
  %8 = load i64, i64* %5, align 8, !dbg !3061
  %9 = load i64, i64* %6, align 8, !dbg !3062
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3063
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3064
  ret i8* %11, !dbg !3065
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3066 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3069, metadata !DIExpression()), !dbg !3070
  %3 = load i8*, i8** %2, align 8, !dbg !3071
  %4 = icmp ne i8* %3, null, !dbg !3071
  br i1 %4, label %6, label %5, !dbg !3073

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3074
  unreachable, !dbg !3074

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3075
  ret i8* %7, !dbg !3076
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3077 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3080, metadata !DIExpression()), !dbg !3081
  %3 = load i64, i64* %2, align 8, !dbg !3082
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3083
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3084
  ret i8* %5, !dbg !3085
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3086 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3089, metadata !DIExpression()), !dbg !3090
  %3 = load i64, i64* %2, align 8, !dbg !3091
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3092
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3093
  ret i8* %5, !dbg !3094
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3095 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3098, metadata !DIExpression()), !dbg !3099
  %3 = load i64, i64* %2, align 8, !dbg !3100
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !3100
  ret i8* %4, !dbg !3101
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3102 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3105, metadata !DIExpression()), !dbg !3106
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3107, metadata !DIExpression()), !dbg !3108
  %5 = load i8*, i8** %3, align 8, !dbg !3109
  %6 = load i64, i64* %4, align 8, !dbg !3110
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3111
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3112
  ret i8* %8, !dbg !3113
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3114 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3117, metadata !DIExpression()), !dbg !3118
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3119, metadata !DIExpression()), !dbg !3120
  %5 = load i8*, i8** %3, align 8, !dbg !3121
  %6 = load i64, i64* %4, align 8, !dbg !3122
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3123
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3124
  ret i8* %8, !dbg !3125
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3126 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3129, metadata !DIExpression()), !dbg !3130
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3131, metadata !DIExpression()), !dbg !3132
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3133, metadata !DIExpression()), !dbg !3134
  %7 = load i8*, i8** %4, align 8, !dbg !3135
  %8 = load i64, i64* %5, align 8, !dbg !3136
  %9 = load i64, i64* %6, align 8, !dbg !3137
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3138
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3139
  ret i8* %11, !dbg !3140
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3141 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3144, metadata !DIExpression()), !dbg !3145
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3146, metadata !DIExpression()), !dbg !3147
  %5 = load i64, i64* %3, align 8, !dbg !3148
  %6 = load i64, i64* %4, align 8, !dbg !3149
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3150
  ret i8* %7, !dbg !3151
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3152 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3155, metadata !DIExpression()), !dbg !3156
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3157, metadata !DIExpression()), !dbg !3158
  %5 = load i64, i64* %3, align 8, !dbg !3159
  %6 = load i64, i64* %4, align 8, !dbg !3160
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3161
  ret i8* %7, !dbg !3162
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3163 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3166, metadata !DIExpression()), !dbg !3167
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3168, metadata !DIExpression()), !dbg !3169
  %5 = load i8*, i8** %3, align 8, !dbg !3170
  %6 = load i64*, i64** %4, align 8, !dbg !3171
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3172
  ret i8* %7, !dbg !3173
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !242 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3174, metadata !DIExpression()), !dbg !3175
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3176, metadata !DIExpression()), !dbg !3177
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3178, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3180, metadata !DIExpression()), !dbg !3181
  %8 = load i64*, i64** %5, align 8, !dbg !3182
  %9 = load i64, i64* %8, align 8, !dbg !3183
  store i64 %9, i64* %7, align 8, !dbg !3181
  %10 = load i8*, i8** %4, align 8, !dbg !3184
  %11 = icmp ne i8* %10, null, !dbg !3184
  br i1 %11, label %26, label %12, !dbg !3186

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3187
  %14 = icmp ne i64 %13, 0, !dbg !3187
  br i1 %14, label %25, label %15, !dbg !3190

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3191
  %17 = udiv i64 128, %16, !dbg !3193
  store i64 %17, i64* %7, align 8, !dbg !3194
  %18 = load i64, i64* %7, align 8, !dbg !3195
  %19 = icmp ne i64 %18, 0, !dbg !3196
  %20 = xor i1 %19, true, !dbg !3196
  %21 = zext i1 %20 to i32, !dbg !3196
  %22 = sext i32 %21 to i64, !dbg !3196
  %23 = load i64, i64* %7, align 8, !dbg !3197
  %24 = add i64 %23, %22, !dbg !3197
  store i64 %24, i64* %7, align 8, !dbg !3197
  br label %25, !dbg !3198

25:                                               ; preds = %15, %12
  br label %36, !dbg !3199

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3200
  %28 = load i64, i64* %7, align 8, !dbg !3200
  %29 = lshr i64 %28, 1, !dbg !3200
  %30 = add i64 %29, 1, !dbg !3200
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3200
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3200
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3200
  store i64 %33, i64* %7, align 8, !dbg !3200
  br i1 %32, label %34, label %35, !dbg !3203

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3204
  unreachable, !dbg !3204

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3205
  %38 = load i64, i64* %7, align 8, !dbg !3206
  %39 = load i64, i64* %6, align 8, !dbg !3207
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3208
  store i8* %40, i8** %4, align 8, !dbg !3209
  %41 = load i64, i64* %7, align 8, !dbg !3210
  %42 = load i64*, i64** %5, align 8, !dbg !3211
  store i64 %41, i64* %42, align 8, !dbg !3212
  %43 = load i8*, i8** %4, align 8, !dbg !3213
  ret i8* %43, !dbg !3214
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3215, metadata !DIExpression()), !dbg !3216
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3217, metadata !DIExpression()), !dbg !3218
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3219, metadata !DIExpression()), !dbg !3220
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3221, metadata !DIExpression()), !dbg !3222
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3223, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3225, metadata !DIExpression()), !dbg !3226
  %15 = load i64*, i64** %7, align 8, !dbg !3227
  %16 = load i64, i64* %15, align 8, !dbg !3228
  store i64 %16, i64* %11, align 8, !dbg !3226
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3229, metadata !DIExpression()), !dbg !3230
  %17 = load i64, i64* %11, align 8, !dbg !3231
  %18 = load i64, i64* %11, align 8, !dbg !3231
  %19 = ashr i64 %18, 1, !dbg !3231
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3231
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3231
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3231
  store i64 %22, i64* %12, align 8, !dbg !3231
  br i1 %21, label %23, label %24, !dbg !3233

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3234
  br label %24, !dbg !3235

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3236
  %26 = icmp sle i64 0, %25, !dbg !3238
  br i1 %26, label %27, label %33, !dbg !3239

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3240
  %29 = load i64, i64* %12, align 8, !dbg !3241
  %30 = icmp slt i64 %28, %29, !dbg !3242
  br i1 %30, label %31, label %33, !dbg !3243

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3244
  store i64 %32, i64* %12, align 8, !dbg !3245
  br label %33, !dbg !3246

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3247, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3249, metadata !DIExpression()), !dbg !3250
  %34 = load i64, i64* %10, align 8, !dbg !3251
  %35 = icmp slt i64 %34, 0, !dbg !3251
  br i1 %35, label %36, label %82, !dbg !3251

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3251
  %38 = icmp slt i64 %37, 0, !dbg !3251
  br i1 %38, label %39, label %62, !dbg !3251

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3251

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3251
  %42 = load i64, i64* %10, align 8, !dbg !3251
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3251
  %44 = icmp slt i64 %41, %43, !dbg !3251
  br i1 %44, label %111, label %115, !dbg !3251

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3251

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3251
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3251
  br i1 %48, label %52, label %53, !dbg !3251

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3251
  %51 = icmp slt i64 0, %50, !dbg !3251
  br i1 %51, label %52, label %53, !dbg !3251

52:                                               ; preds = %49, %46
  br label %57, !dbg !3251

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3251
  %55 = sub nsw i64 0, %54, !dbg !3251
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3251
  br label %57, !dbg !3251

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3251
  %59 = load i64, i64* %12, align 8, !dbg !3251
  %60 = sub nsw i64 -1, %59, !dbg !3251
  %61 = icmp sle i64 %58, %60, !dbg !3251
  br i1 %61, label %111, label %115, !dbg !3251

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3251
  %64 = icmp eq i64 %63, -1, !dbg !3251
  br i1 %64, label %65, label %77, !dbg !3251

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3251

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3251
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3251
  %69 = icmp slt i64 0, %68, !dbg !3251
  br i1 %69, label %111, label %115, !dbg !3251

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3251
  %72 = icmp slt i64 0, %71, !dbg !3251
  br i1 %72, label %73, label %115, !dbg !3251

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3251
  %75 = sub nsw i64 %74, 1, !dbg !3251
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3251
  br i1 %76, label %111, label %115, !dbg !3251

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3251
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3251
  %80 = load i64, i64* %12, align 8, !dbg !3251
  %81 = icmp slt i64 %79, %80, !dbg !3251
  br i1 %81, label %111, label %115, !dbg !3251

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3251
  %84 = icmp eq i64 %83, 0, !dbg !3251
  br i1 %84, label %85, label %86, !dbg !3251

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3251

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3251
  %88 = icmp slt i64 %87, 0, !dbg !3251
  br i1 %88, label %89, label %106, !dbg !3251

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3251
  %91 = icmp eq i64 %90, -1, !dbg !3251
  br i1 %91, label %92, label %101, !dbg !3251

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3251

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3251
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3251
  %96 = icmp slt i64 0, %95, !dbg !3251
  br i1 %96, label %111, label %115, !dbg !3251

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3251
  %99 = sub nsw i64 %98, 1, !dbg !3251
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3251
  br i1 %100, label %111, label %115, !dbg !3251

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3251
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3251
  %104 = load i64, i64* %10, align 8, !dbg !3251
  %105 = icmp slt i64 %103, %104, !dbg !3251
  br i1 %105, label %111, label %115, !dbg !3251

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3251
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3251
  %109 = load i64, i64* %12, align 8, !dbg !3251
  %110 = icmp slt i64 %108, %109, !dbg !3251
  br i1 %110, label %111, label %115, !dbg !3251

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3251
  %113 = load i64, i64* %10, align 8, !dbg !3251
  %114 = mul i64 %112, %113, !dbg !3251
  store i64 %114, i64* %13, align 8, !dbg !3251
  br label %119, !dbg !3251

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3251
  %117 = load i64, i64* %10, align 8, !dbg !3251
  %118 = mul i64 %116, %117, !dbg !3251
  store i64 %118, i64* %13, align 8, !dbg !3251
  br label %119, !dbg !3251

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3251
  %121 = icmp ne i32 %120, 0, !dbg !3251
  br i1 %121, label %122, label %123, !dbg !3251

122:                                              ; preds = %119
  br label %129, !dbg !3251

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3252
  %125 = icmp slt i64 %124, 128, !dbg !3253
  %126 = zext i1 %125 to i64, !dbg !3252
  %127 = select i1 %125, i32 128, i32 0, !dbg !3252
  %128 = sext i32 %127 to i64, !dbg !3252
  br label %129, !dbg !3251

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3251
  store i64 %130, i64* %14, align 8, !dbg !3250
  %131 = load i64, i64* %14, align 8, !dbg !3254
  %132 = icmp ne i64 %131, 0, !dbg !3254
  br i1 %132, label %133, label %142, !dbg !3256

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3257
  %135 = load i64, i64* %10, align 8, !dbg !3259
  %136 = sdiv i64 %134, %135, !dbg !3260
  store i64 %136, i64* %12, align 8, !dbg !3261
  %137 = load i64, i64* %14, align 8, !dbg !3262
  %138 = load i64, i64* %14, align 8, !dbg !3263
  %139 = load i64, i64* %10, align 8, !dbg !3264
  %140 = srem i64 %138, %139, !dbg !3265
  %141 = sub nsw i64 %137, %140, !dbg !3266
  store i64 %141, i64* %13, align 8, !dbg !3267
  br label %142, !dbg !3268

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3269
  %144 = icmp ne i8* %143, null, !dbg !3269
  br i1 %144, label %147, label %145, !dbg !3271

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3272
  store i64 0, i64* %146, align 8, !dbg !3273
  br label %147, !dbg !3274

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3275
  %149 = load i64, i64* %11, align 8, !dbg !3277
  %150 = sub nsw i64 %148, %149, !dbg !3278
  %151 = load i64, i64* %8, align 8, !dbg !3279
  %152 = icmp slt i64 %150, %151, !dbg !3280
  br i1 %152, label %153, label %256, !dbg !3281

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3282
  %155 = load i64, i64* %8, align 8, !dbg !3282
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3282
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3282
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3282
  store i64 %158, i64* %12, align 8, !dbg !3282
  br i1 %157, label %255, label %159, !dbg !3283

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3284
  %161 = icmp sle i64 0, %160, !dbg !3285
  br i1 %161, label %162, label %166, !dbg !3286

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3287
  %164 = load i64, i64* %12, align 8, !dbg !3288
  %165 = icmp slt i64 %163, %164, !dbg !3289
  br i1 %165, label %255, label %166, !dbg !3290

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3291
  %168 = icmp slt i64 %167, 0, !dbg !3291
  br i1 %168, label %169, label %215, !dbg !3291

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3291
  %171 = icmp slt i64 %170, 0, !dbg !3291
  br i1 %171, label %172, label %195, !dbg !3291

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3291

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3291
  %175 = load i64, i64* %10, align 8, !dbg !3291
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3291
  %177 = icmp slt i64 %174, %176, !dbg !3291
  br i1 %177, label %244, label %248, !dbg !3291

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3291

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3291
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3291
  br i1 %181, label %185, label %186, !dbg !3291

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3291
  %184 = icmp slt i64 0, %183, !dbg !3291
  br i1 %184, label %185, label %186, !dbg !3291

185:                                              ; preds = %182, %179
  br label %190, !dbg !3291

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3291
  %188 = sub nsw i64 0, %187, !dbg !3291
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3291
  br label %190, !dbg !3291

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3291
  %192 = load i64, i64* %12, align 8, !dbg !3291
  %193 = sub nsw i64 -1, %192, !dbg !3291
  %194 = icmp sle i64 %191, %193, !dbg !3291
  br i1 %194, label %244, label %248, !dbg !3291

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3291
  %197 = icmp eq i64 %196, -1, !dbg !3291
  br i1 %197, label %198, label %210, !dbg !3291

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3291

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3291
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3291
  %202 = icmp slt i64 0, %201, !dbg !3291
  br i1 %202, label %244, label %248, !dbg !3291

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3291
  %205 = icmp slt i64 0, %204, !dbg !3291
  br i1 %205, label %206, label %248, !dbg !3291

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3291
  %208 = sub nsw i64 %207, 1, !dbg !3291
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3291
  br i1 %209, label %244, label %248, !dbg !3291

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3291
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3291
  %213 = load i64, i64* %12, align 8, !dbg !3291
  %214 = icmp slt i64 %212, %213, !dbg !3291
  br i1 %214, label %244, label %248, !dbg !3291

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3291
  %217 = icmp eq i64 %216, 0, !dbg !3291
  br i1 %217, label %218, label %219, !dbg !3291

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3291

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3291
  %221 = icmp slt i64 %220, 0, !dbg !3291
  br i1 %221, label %222, label %239, !dbg !3291

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3291
  %224 = icmp eq i64 %223, -1, !dbg !3291
  br i1 %224, label %225, label %234, !dbg !3291

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3291

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3291
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3291
  %229 = icmp slt i64 0, %228, !dbg !3291
  br i1 %229, label %244, label %248, !dbg !3291

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3291
  %232 = sub nsw i64 %231, 1, !dbg !3291
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3291
  br i1 %233, label %244, label %248, !dbg !3291

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3291
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3291
  %237 = load i64, i64* %10, align 8, !dbg !3291
  %238 = icmp slt i64 %236, %237, !dbg !3291
  br i1 %238, label %244, label %248, !dbg !3291

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3291
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3291
  %242 = load i64, i64* %12, align 8, !dbg !3291
  %243 = icmp slt i64 %241, %242, !dbg !3291
  br i1 %243, label %244, label %248, !dbg !3291

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3291
  %246 = load i64, i64* %10, align 8, !dbg !3291
  %247 = mul i64 %245, %246, !dbg !3291
  store i64 %247, i64* %13, align 8, !dbg !3291
  br label %252, !dbg !3291

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3291
  %250 = load i64, i64* %10, align 8, !dbg !3291
  %251 = mul i64 %249, %250, !dbg !3291
  store i64 %251, i64* %13, align 8, !dbg !3291
  br label %252, !dbg !3291

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3291
  %254 = icmp ne i32 %253, 0, !dbg !3291
  br i1 %254, label %255, label %256, !dbg !3292

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3293
  unreachable, !dbg !3293

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3294
  %258 = load i64, i64* %13, align 8, !dbg !3295
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !3296
  store i8* %259, i8** %6, align 8, !dbg !3297
  %260 = load i64, i64* %12, align 8, !dbg !3298
  %261 = load i64*, i64** %7, align 8, !dbg !3299
  store i64 %260, i64* %261, align 8, !dbg !3300
  %262 = load i8*, i8** %6, align 8, !dbg !3301
  ret i8* %262, !dbg !3302
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3303 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3304, metadata !DIExpression()), !dbg !3305
  %3 = load i64, i64* %2, align 8, !dbg !3306
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3307
  ret i8* %4, !dbg !3308
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3309 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3310, metadata !DIExpression()), !dbg !3311
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3312, metadata !DIExpression()), !dbg !3313
  %5 = load i64, i64* %3, align 8, !dbg !3314
  %6 = load i64, i64* %4, align 8, !dbg !3315
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3316
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3317
  ret i8* %8, !dbg !3318
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3319 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3320, metadata !DIExpression()), !dbg !3321
  %3 = load i64, i64* %2, align 8, !dbg !3322
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3323
  ret i8* %4, !dbg !3324
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3325 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3326, metadata !DIExpression()), !dbg !3327
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3328, metadata !DIExpression()), !dbg !3329
  %5 = load i64, i64* %3, align 8, !dbg !3330
  %6 = load i64, i64* %4, align 8, !dbg !3331
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3332
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3333
  ret i8* %8, !dbg !3334
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3335 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3340, metadata !DIExpression()), !dbg !3341
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3342, metadata !DIExpression()), !dbg !3343
  %5 = load i64, i64* %4, align 8, !dbg !3344
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !3345
  %7 = load i8*, i8** %3, align 8, !dbg !3346
  %8 = load i64, i64* %4, align 8, !dbg !3347
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3348
  ret i8* %6, !dbg !3349
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3350 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3353, metadata !DIExpression()), !dbg !3354
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3355, metadata !DIExpression()), !dbg !3356
  %5 = load i64, i64* %4, align 8, !dbg !3357
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !3358
  %7 = load i8*, i8** %3, align 8, !dbg !3359
  %8 = load i64, i64* %4, align 8, !dbg !3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3361
  ret i8* %6, !dbg !3362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3363 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3366, metadata !DIExpression()), !dbg !3367
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3368, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3370, metadata !DIExpression()), !dbg !3371
  %6 = load i64, i64* %4, align 8, !dbg !3372
  %7 = add nsw i64 %6, 1, !dbg !3373
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !3374
  store i8* %8, i8** %5, align 8, !dbg !3371
  %9 = load i8*, i8** %5, align 8, !dbg !3375
  %10 = load i64, i64* %4, align 8, !dbg !3376
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3375
  store i8 0, i8* %11, align 1, !dbg !3377
  %12 = load i8*, i8** %5, align 8, !dbg !3378
  %13 = load i8*, i8** %3, align 8, !dbg !3379
  %14 = load i64, i64* %4, align 8, !dbg !3380
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3381
  ret i8* %12, !dbg !3382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3383 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3384, metadata !DIExpression()), !dbg !3385
  %3 = load i8*, i8** %2, align 8, !dbg !3386
  %4 = load i8*, i8** %2, align 8, !dbg !3387
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3388
  %6 = add i64 %5, 1, !dbg !3389
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !3390
  ret i8* %7, !dbg !3391
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3392 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3393, metadata !DIExpression()), !dbg !3396
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3396
  store i32 %2, i32* %1, align 4, !dbg !3396
  %3 = load i32, i32* %1, align 4, !dbg !3396
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.140, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.141, i64 0, i64 0)) #18, !dbg !3396
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i64 0, i64 0), i8* noundef %4), !dbg !3396
  %5 = load i32, i32* %1, align 4, !dbg !3396
  %6 = icmp ne i32 %5, 0, !dbg !3396
  br i1 %6, label %7, label %9, !dbg !3396

7:                                                ; preds = %0
  unreachable, !dbg !3396

8:                                                ; No predecessors!
  br label %10, !dbg !3396

9:                                                ; preds = %0
  br label %10, !dbg !3396

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3397
  unreachable, !dbg !3397
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3398 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3404, metadata !DIExpression()), !dbg !3405
  %3 = load i32, i32* %2, align 4, !dbg !3406
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3407
  ret i32 %4, !dbg !3408
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3409 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3446, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3448, metadata !DIExpression()), !dbg !3450
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3451
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3452
  %9 = icmp ne i64 %8, 0, !dbg !3453
  %10 = zext i1 %9 to i8, !dbg !3450
  store i8 %10, i8* %4, align 1, !dbg !3450
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3454, metadata !DIExpression()), !dbg !3455
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3456
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3456
  %13 = icmp ne i32 %12, 0, !dbg !3457
  %14 = zext i1 %13 to i8, !dbg !3455
  store i8 %14, i8* %5, align 1, !dbg !3455
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3458, metadata !DIExpression()), !dbg !3459
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3460
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3461
  %17 = icmp ne i32 %16, 0, !dbg !3462
  %18 = zext i1 %17 to i8, !dbg !3459
  store i8 %18, i8* %6, align 1, !dbg !3459
  %19 = load i8, i8* %5, align 1, !dbg !3463
  %20 = trunc i8 %19 to i1, !dbg !3463
  br i1 %20, label %31, label %21, !dbg !3465

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3466
  %23 = trunc i8 %22 to i1, !dbg !3466
  br i1 %23, label %24, label %37, !dbg !3467

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3468
  %26 = trunc i8 %25 to i1, !dbg !3468
  br i1 %26, label %31, label %27, !dbg !3469

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3470
  %29 = load i32, i32* %28, align 4, !dbg !3470
  %30 = icmp ne i32 %29, 9, !dbg !3471
  br i1 %30, label %31, label %37, !dbg !3472

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3473
  %33 = trunc i8 %32 to i1, !dbg !3473
  br i1 %33, label %36, label %34, !dbg !3476

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3477
  store i32 0, i32* %35, align 4, !dbg !3478
  br label %36, !dbg !3477

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3479
  br label %38, !dbg !3479

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3480
  br label %38, !dbg !3480

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3481
  ret i32 %39, !dbg !3481
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3482 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3519, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3521, metadata !DIExpression()), !dbg !3522
  store i32 0, i32* %4, align 4, !dbg !3522
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3523, metadata !DIExpression()), !dbg !3524
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3525
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !3526
  store i32 %8, i32* %5, align 4, !dbg !3524
  %9 = load i32, i32* %5, align 4, !dbg !3527
  %10 = icmp slt i32 %9, 0, !dbg !3529
  br i1 %10, label %11, label %14, !dbg !3530

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3531
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3532
  store i32 %13, i32* %2, align 4, !dbg !3533
  br label %40, !dbg !3533

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3534
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !3534
  %17 = icmp ne i32 %16, 0, !dbg !3534
  br i1 %17, label %18, label %23, !dbg !3536

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3537
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !3538
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !3539
  %22 = icmp ne i64 %21, -1, !dbg !3540
  br i1 %22, label %23, label %30, !dbg !3541

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3542
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !3543
  %26 = icmp ne i32 %25, 0, !dbg !3543
  br i1 %26, label %27, label %30, !dbg !3544

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !3545
  %29 = load i32, i32* %28, align 4, !dbg !3545
  store i32 %29, i32* %4, align 4, !dbg !3546
  br label %30, !dbg !3547

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3548, metadata !DIExpression()), !dbg !3549
  store i32 0, i32* %6, align 4, !dbg !3549
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3550
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !3551
  store i32 %32, i32* %6, align 4, !dbg !3552
  %33 = load i32, i32* %4, align 4, !dbg !3553
  %34 = icmp ne i32 %33, 0, !dbg !3555
  br i1 %34, label %35, label %38, !dbg !3556

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3557
  %37 = call i32* @__errno_location() #21, !dbg !3559
  store i32 %36, i32* %37, align 4, !dbg !3560
  store i32 -1, i32* %6, align 4, !dbg !3561
  br label %38, !dbg !3562

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3563
  store i32 %39, i32* %2, align 4, !dbg !3564
  br label %40, !dbg !3564

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3565
  ret i32 %41, !dbg !3565
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !3566 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3603, metadata !DIExpression()), !dbg !3604
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3605
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3607
  br i1 %5, label %10, label %6, !dbg !3608

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3609
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !3609
  %9 = icmp ne i32 %8, 0, !dbg !3609
  br i1 %9, label %13, label %10, !dbg !3610

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3611
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !3612
  store i32 %12, i32* %2, align 4, !dbg !3613
  br label %17, !dbg !3613

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3614
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !3615
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3616
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !3617
  store i32 %16, i32* %2, align 4, !dbg !3618
  br label %17, !dbg !3618

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3619
  ret i32 %18, !dbg !3619
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !3620 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3623, metadata !DIExpression()), !dbg !3624
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3625
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !3627
  %5 = load i32, i32* %4, align 8, !dbg !3627
  %6 = and i32 %5, 256, !dbg !3628
  %7 = icmp ne i32 %6, 0, !dbg !3628
  br i1 %7, label %8, label %11, !dbg !3629

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3630
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !3631
  br label %11, !dbg !3631

11:                                               ; preds = %8, %1
  ret void, !dbg !3632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !3633 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3671, metadata !DIExpression()), !dbg !3672
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3673, metadata !DIExpression()), !dbg !3674
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3675, metadata !DIExpression()), !dbg !3676
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3677
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !3679
  %11 = load i8*, i8** %10, align 8, !dbg !3679
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3680
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !3681
  %14 = load i8*, i8** %13, align 8, !dbg !3681
  %15 = icmp eq i8* %11, %14, !dbg !3682
  br i1 %15, label %16, label %46, !dbg !3683

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3684
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !3685
  %19 = load i8*, i8** %18, align 8, !dbg !3685
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3686
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !3687
  %22 = load i8*, i8** %21, align 8, !dbg !3687
  %23 = icmp eq i8* %19, %22, !dbg !3688
  br i1 %23, label %24, label %46, !dbg !3689

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3690
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !3691
  %27 = load i8*, i8** %26, align 8, !dbg !3691
  %28 = icmp eq i8* %27, null, !dbg !3692
  br i1 %28, label %29, label %46, !dbg !3693

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3694, metadata !DIExpression()), !dbg !3696
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3697
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !3698
  %32 = load i64, i64* %6, align 8, !dbg !3699
  %33 = load i32, i32* %7, align 4, !dbg !3700
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !3701
  store i64 %34, i64* %8, align 8, !dbg !3696
  %35 = load i64, i64* %8, align 8, !dbg !3702
  %36 = icmp eq i64 %35, -1, !dbg !3704
  br i1 %36, label %37, label %38, !dbg !3705

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3706
  br label %51, !dbg !3706

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3708
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !3709
  %41 = load i32, i32* %40, align 8, !dbg !3710
  %42 = and i32 %41, -17, !dbg !3710
  store i32 %42, i32* %40, align 8, !dbg !3710
  %43 = load i64, i64* %8, align 8, !dbg !3711
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3712
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !3713
  store i64 %43, i64* %45, align 8, !dbg !3714
  store i32 0, i32* %4, align 4, !dbg !3715
  br label %51, !dbg !3715

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3716
  %48 = load i64, i64* %6, align 8, !dbg !3717
  %49 = load i32, i32* %7, align 4, !dbg !3718
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !3719
  store i32 %50, i32* %4, align 4, !dbg !3720
  br label %51, !dbg !3720

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !3721
  ret i32 %52, !dbg !3721
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !3722 {
  %1 = call i32* @__errno_location() #21, !dbg !3725
  store i32 12, i32* %1, align 4, !dbg !3726
  ret i8* null, !dbg !3727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !3728 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3729, metadata !DIExpression()), !dbg !3730
  %3 = load i64, i64* %2, align 8, !dbg !3731
  %4 = icmp ule i64 %3, -1, !dbg !3732
  br i1 %4, label %5, label %8, !dbg !3731

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !3733
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !3734
  br label %10, !dbg !3731

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !3735
  br label %10, !dbg !3731

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !3731
  ret i8* %11, !dbg !3736
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3737 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3738, metadata !DIExpression()), !dbg !3739
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3740, metadata !DIExpression()), !dbg !3741
  %5 = load i64, i64* %4, align 8, !dbg !3742
  %6 = icmp ule i64 %5, -1, !dbg !3743
  br i1 %6, label %7, label %11, !dbg !3742

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !3744
  %9 = load i64, i64* %4, align 8, !dbg !3745
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !3746
  br label %13, !dbg !3742

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3747
  br label %13, !dbg !3742

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !3742
  ret i8* %14, !dbg !3748
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !3749 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3750, metadata !DIExpression()), !dbg !3751
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3752, metadata !DIExpression()), !dbg !3753
  %6 = load i64, i64* %4, align 8, !dbg !3754
  %7 = icmp ult i64 -1, %6, !dbg !3756
  br i1 %7, label %8, label %14, !dbg !3757

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !3758
  %10 = icmp ne i64 %9, 0, !dbg !3761
  br i1 %10, label %11, label %13, !dbg !3762

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3763
  store i8* %12, i8** %3, align 8, !dbg !3764
  br label %27, !dbg !3764

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !3765
  br label %14, !dbg !3766

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !3767
  %16 = icmp ult i64 -1, %15, !dbg !3769
  br i1 %16, label %17, label %23, !dbg !3770

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !3771
  %19 = icmp ne i64 %18, 0, !dbg !3774
  br i1 %19, label %20, label %22, !dbg !3775

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !3776
  store i8* %21, i8** %3, align 8, !dbg !3777
  br label %27, !dbg !3777

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !3778
  br label %23, !dbg !3779

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !3780
  %25 = load i64, i64* %5, align 8, !dbg !3781
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !3782
  store i8* %26, i8** %3, align 8, !dbg !3783
  br label %27, !dbg !3783

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !3784
  ret i8* %28, !dbg !3784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3785 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3786, metadata !DIExpression()), !dbg !3787
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3788, metadata !DIExpression()), !dbg !3789
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3790, metadata !DIExpression()), !dbg !3791
  %7 = load i64, i64* %5, align 8, !dbg !3792
  %8 = icmp ule i64 %7, -1, !dbg !3793
  br i1 %8, label %9, label %17, !dbg !3794

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !3795
  %11 = icmp ule i64 %10, -1, !dbg !3796
  br i1 %11, label %12, label %17, !dbg !3792

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !3797
  %14 = load i64, i64* %5, align 8, !dbg !3798
  %15 = load i64, i64* %6, align 8, !dbg !3799
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !3800
  br label %19, !dbg !3792

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !3801
  br label %19, !dbg !3792

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !3792
  ret i8* %20, !dbg !3802
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !3803 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3808, metadata !DIExpression()), !dbg !3809
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3810, metadata !DIExpression()), !dbg !3811
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3812, metadata !DIExpression()), !dbg !3813
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !3814, metadata !DIExpression()), !dbg !3815
  %11 = load i8*, i8** %7, align 8, !dbg !3816
  %12 = icmp eq i8* %11, null, !dbg !3818
  br i1 %12, label %13, label %14, !dbg !3819

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !3820
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.163, i64 0, i64 0), i8** %7, align 8, !dbg !3822
  store i64 1, i64* %8, align 8, !dbg !3823
  br label %14, !dbg !3824

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3825
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !3827
  br i1 %16, label %17, label %18, !dbg !3828

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !3829
  br label %18, !dbg !3830

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3831, metadata !DIExpression()), !dbg !3832
  %19 = load i32*, i32** %6, align 8, !dbg !3833
  %20 = load i8*, i8** %7, align 8, !dbg !3834
  %21 = load i64, i64* %8, align 8, !dbg !3835
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3836
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !3837
  store i64 %23, i64* %10, align 8, !dbg !3832
  %24 = load i64, i64* %10, align 8, !dbg !3838
  %25 = icmp ult i64 %24, -3, !dbg !3840
  br i1 %25, label %26, label %32, !dbg !3841

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3842
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !3843
  %29 = icmp ne i32 %28, 0, !dbg !3843
  br i1 %29, label %32, label %30, !dbg !3844

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3845
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !3846
  br label %32, !dbg !3846

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !3847
  %34 = icmp eq i64 %33, -3, !dbg !3849
  br i1 %34, label %35, label %36, !dbg !3850

35:                                               ; preds = %32
  call void @abort() #19, !dbg !3851
  unreachable, !dbg !3851

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !3852
  %38 = icmp ule i64 -2, %37, !dbg !3854
  br i1 %38, label %39, label %53, !dbg !3855

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !3856
  %41 = icmp ne i64 %40, 0, !dbg !3857
  br i1 %41, label %42, label %53, !dbg !3858

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !3859
  br i1 %43, label %53, label %44, !dbg !3860

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !3861
  %46 = icmp ne i32* %45, null, !dbg !3864
  br i1 %46, label %47, label %52, !dbg !3865

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !3866
  %49 = load i8, i8* %48, align 1, !dbg !3867
  %50 = zext i8 %49 to i32, !dbg !3868
  %51 = load i32*, i32** %6, align 8, !dbg !3869
  store i32 %50, i32* %51, align 4, !dbg !3870
  br label %52, !dbg !3871

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !3872
  br label %55, !dbg !3872

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !3873
  store i64 %54, i64* %5, align 8, !dbg !3874
  br label %55, !dbg !3874

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !3875
  ret i64 %56, !dbg !3875
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !3876 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !3891, metadata !DIExpression()), !dbg !3892
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !3893
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !3894
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !3894
  ret void, !dbg !3895
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3896 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3899, metadata !DIExpression()), !dbg !3900
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3901, metadata !DIExpression()), !dbg !3902
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3903, metadata !DIExpression()), !dbg !3904
  %7 = load i8*, i8** %4, align 8, !dbg !3905
  %8 = load i8*, i8** %5, align 8, !dbg !3906
  %9 = load i64, i64* %6, align 8, !dbg !3907
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !3908
  %11 = icmp ne i32 %10, 0, !dbg !3909
  %12 = xor i1 %11, true, !dbg !3909
  ret i1 %12, !dbg !3910
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3911 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3913, metadata !DIExpression()), !dbg !3914
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3915, metadata !DIExpression()), !dbg !3916
  %5 = load i8*, i8** %3, align 8, !dbg !3917
  %6 = load i64, i64* %4, align 8, !dbg !3918
  %7 = icmp ne i64 %6, 0, !dbg !3918
  br i1 %7, label %8, label %10, !dbg !3918

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !3919
  br label %11, !dbg !3918

10:                                               ; preds = %2
  br label %11, !dbg !3918

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !3918
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !3920
  ret i8* %13, !dbg !3921
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3922 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3923, metadata !DIExpression()), !dbg !3924
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3925, metadata !DIExpression()), !dbg !3926
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3927, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3929, metadata !DIExpression()), !dbg !3930
  %9 = load i64, i64* %7, align 8, !dbg !3931
  %10 = icmp ult i64 %9, 0, !dbg !3931
  br i1 %10, label %11, label %60, !dbg !3931

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !3931
  %13 = icmp ult i64 %12, 0, !dbg !3931
  br i1 %13, label %14, label %37, !dbg !3931

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !3931

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !3931
  %17 = load i64, i64* %7, align 8, !dbg !3931
  %18 = udiv i64 -1, %17, !dbg !3931
  %19 = icmp ult i64 %16, %18, !dbg !3931
  br i1 %19, label %92, label %96, !dbg !3931

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !3931

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !3931
  %23 = icmp ult i64 %22, 1, !dbg !3931
  br i1 %23, label %27, label %28, !dbg !3931

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !3931
  %26 = icmp ult i64 0, %25, !dbg !3931
  br i1 %26, label %27, label %28, !dbg !3931

27:                                               ; preds = %24, %21
  br label %32, !dbg !3931

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !3931
  %30 = sub i64 0, %29, !dbg !3931
  %31 = udiv i64 -1, %30, !dbg !3931
  br label %32, !dbg !3931

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !3931
  %34 = load i64, i64* %6, align 8, !dbg !3931
  %35 = sub i64 -1, %34, !dbg !3931
  %36 = icmp ule i64 %33, %35, !dbg !3931
  br i1 %36, label %92, label %96, !dbg !3931

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !3931

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !3931

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !3931

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !3931
  %42 = icmp eq i64 %41, -1, !dbg !3931
  br i1 %42, label %43, label %55, !dbg !3931

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !3931

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !3931
  %46 = add i64 %45, 0, !dbg !3931
  %47 = icmp ult i64 0, %46, !dbg !3931
  br i1 %47, label %92, label %96, !dbg !3931

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !3931
  %50 = icmp ult i64 0, %49, !dbg !3931
  br i1 %50, label %51, label %96, !dbg !3931

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !3931
  %53 = sub i64 %52, 1, !dbg !3931
  %54 = icmp ult i64 -1, %53, !dbg !3931
  br i1 %54, label %92, label %96, !dbg !3931

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !3931
  %57 = udiv i64 0, %56, !dbg !3931
  %58 = load i64, i64* %6, align 8, !dbg !3931
  %59 = icmp ult i64 %57, %58, !dbg !3931
  br i1 %59, label %92, label %96, !dbg !3931

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !3931
  %62 = icmp eq i64 %61, 0, !dbg !3931
  br i1 %62, label %63, label %64, !dbg !3931

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !3931

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !3931
  %66 = icmp ult i64 %65, 0, !dbg !3931
  br i1 %66, label %67, label %87, !dbg !3931

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !3931

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !3931

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !3931

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !3931
  %72 = icmp eq i64 %71, -1, !dbg !3931
  br i1 %72, label %73, label %82, !dbg !3931

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !3931

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !3931
  %76 = add i64 %75, 0, !dbg !3931
  %77 = icmp ult i64 0, %76, !dbg !3931
  br i1 %77, label %92, label %96, !dbg !3931

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !3931
  %80 = sub i64 %79, 1, !dbg !3931
  %81 = icmp ult i64 -1, %80, !dbg !3931
  br i1 %81, label %92, label %96, !dbg !3931

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !3931
  %84 = udiv i64 0, %83, !dbg !3931
  %85 = load i64, i64* %7, align 8, !dbg !3931
  %86 = icmp ult i64 %84, %85, !dbg !3931
  br i1 %86, label %92, label %96, !dbg !3931

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !3931
  %89 = udiv i64 -1, %88, !dbg !3931
  %90 = load i64, i64* %6, align 8, !dbg !3931
  %91 = icmp ult i64 %89, %90, !dbg !3931
  br i1 %91, label %92, label %96, !dbg !3931

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !3931
  %94 = load i64, i64* %7, align 8, !dbg !3931
  %95 = mul i64 %93, %94, !dbg !3931
  store i64 %95, i64* %8, align 8, !dbg !3931
  br label %100, !dbg !3931

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !3931
  %98 = load i64, i64* %7, align 8, !dbg !3931
  %99 = mul i64 %97, %98, !dbg !3931
  store i64 %99, i64* %8, align 8, !dbg !3931
  br label %100, !dbg !3931

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !3931
  %102 = icmp ne i32 %101, 0, !dbg !3931
  br i1 %102, label %103, label %105, !dbg !3933

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !3934
  store i32 12, i32* %104, align 4, !dbg !3936
  store i8* null, i8** %4, align 8, !dbg !3937
  br label %109, !dbg !3937

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !3938
  %107 = load i64, i64* %8, align 8, !dbg !3939
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !3940
  store i8* %108, i8** %4, align 8, !dbg !3941
  br label %109, !dbg !3941

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !3942
  ret i8* %110, !dbg !3942
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !3943 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3946, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !3948, metadata !DIExpression()), !dbg !3952
  %5 = load i32, i32* %3, align 4, !dbg !3953
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3955
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !3956
  %8 = icmp ne i32 %7, 0, !dbg !3956
  br i1 %8, label %9, label %10, !dbg !3957

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3958
  br label %18, !dbg !3958

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3959
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.174, i64 0, i64 0)), !dbg !3961
  br i1 %12, label %17, label %13, !dbg !3962

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3963
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.175, i64 0, i64 0)), !dbg !3964
  br i1 %15, label %17, label %16, !dbg !3965

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !3966
  br label %18, !dbg !3966

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !3967
  br label %18, !dbg !3967

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !3968
  ret i1 %19, !dbg !3968
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !3969 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3972, metadata !DIExpression()), !dbg !3973
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3974, metadata !DIExpression()), !dbg !3975
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3976, metadata !DIExpression()), !dbg !3977
  %7 = load i32, i32* %4, align 4, !dbg !3978
  %8 = load i8*, i8** %5, align 8, !dbg !3979
  %9 = load i64, i64* %6, align 8, !dbg !3980
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3981
  ret i32 %10, !dbg !3982
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !3983 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3986, metadata !DIExpression()), !dbg !3987
  %3 = load i32, i32* %2, align 4, !dbg !3988
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !3989
  ret i8* %4, !dbg !3990
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !3991 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3992, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3994, metadata !DIExpression()), !dbg !3995
  %4 = load i32, i32* %2, align 4, !dbg !3996
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !3997
  store i8* %5, i8** %3, align 8, !dbg !3995
  %6 = load i8*, i8** %3, align 8, !dbg !3998
  ret i8* %6, !dbg !3999
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4000 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4001, metadata !DIExpression()), !dbg !4002
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4003, metadata !DIExpression()), !dbg !4004
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4005, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4007, metadata !DIExpression()), !dbg !4008
  %10 = load i32, i32* %5, align 4, !dbg !4009
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4010
  store i8* %11, i8** %8, align 8, !dbg !4008
  %12 = load i8*, i8** %8, align 8, !dbg !4011
  %13 = icmp eq i8* %12, null, !dbg !4013
  br i1 %13, label %14, label %21, !dbg !4014

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4015
  %16 = icmp ugt i64 %15, 0, !dbg !4018
  br i1 %16, label %17, label %20, !dbg !4019

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4020
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4020
  store i8 0, i8* %19, align 1, !dbg !4021
  br label %20, !dbg !4020

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4022
  br label %45, !dbg !4022

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4023, metadata !DIExpression()), !dbg !4025
  %22 = load i8*, i8** %8, align 8, !dbg !4026
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4027
  store i64 %23, i64* %9, align 8, !dbg !4025
  %24 = load i64, i64* %9, align 8, !dbg !4028
  %25 = load i64, i64* %7, align 8, !dbg !4030
  %26 = icmp ult i64 %24, %25, !dbg !4031
  br i1 %26, label %27, label %32, !dbg !4032

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4033
  %29 = load i8*, i8** %8, align 8, !dbg !4035
  %30 = load i64, i64* %9, align 8, !dbg !4036
  %31 = add i64 %30, 1, !dbg !4037
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4038
  store i32 0, i32* %4, align 4, !dbg !4039
  br label %45, !dbg !4039

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4040
  %34 = icmp ugt i64 %33, 0, !dbg !4043
  br i1 %34, label %35, label %44, !dbg !4044

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4045
  %37 = load i8*, i8** %8, align 8, !dbg !4047
  %38 = load i64, i64* %7, align 8, !dbg !4048
  %39 = sub i64 %38, 1, !dbg !4049
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4050
  %40 = load i8*, i8** %6, align 8, !dbg !4051
  %41 = load i64, i64* %7, align 8, !dbg !4052
  %42 = sub i64 %41, 1, !dbg !4053
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4051
  store i8 0, i8* %43, align 1, !dbg !4054
  br label %44, !dbg !4055

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4056
  br label %45, !dbg !4056

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4057
  ret i32 %46, !dbg !4057
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
!10 = !DIFile(filename: "src/logname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "be0652542a48a595035eed51530c903c")
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
!299 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 31, type: !300, scopeLine: 32, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !33)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !30}
!302 = !DILocalVariable(name: "status", arg: 1, scope: !299, file: !10, line: 31, type: !30)
!303 = !DILocation(line: 31, column: 12, scope: !299)
!304 = !DILocation(line: 33, column: 7, scope: !305)
!305 = distinct !DILexicalBlock(scope: !299, file: !10, line: 33, column: 7)
!306 = !DILocation(line: 33, column: 14, scope: !305)
!307 = !DILocation(line: 33, column: 7, scope: !299)
!308 = !DILocation(line: 34, column: 5, scope: !305)
!309 = !DILocation(line: 34, column: 5, scope: !310)
!310 = distinct !DILexicalBlock(scope: !305, file: !10, line: 34, column: 5)
!311 = !DILocation(line: 37, column: 15, scope: !312)
!312 = distinct !DILexicalBlock(scope: !305, file: !10, line: 36, column: 5)
!313 = !DILocation(line: 37, column: 42, scope: !312)
!314 = !DILocation(line: 37, column: 7, scope: !312)
!315 = !DILocation(line: 38, column: 7, scope: !312)
!316 = !DILocation(line: 42, column: 7, scope: !312)
!317 = !DILocation(line: 43, column: 7, scope: !312)
!318 = !DILocation(line: 44, column: 7, scope: !312)
!319 = !DILocation(line: 46, column: 9, scope: !299)
!320 = !DILocation(line: 46, column: 3, scope: !299)
!321 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!322 = !DILocation(line: 573, column: 34, scope: !2)
!323 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!324 = !DILocation(line: 573, column: 55, scope: !2)
!325 = !DILocation(line: 581, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!327 = !DILocation(line: 581, column: 19, scope: !326)
!328 = !DILocation(line: 581, column: 7, scope: !2)
!329 = !DILocalVariable(name: "term", scope: !330, file: !3, line: 585, type: !6)
!330 = distinct !DILexicalBlock(scope: !326, file: !3, line: 582, column: 5)
!331 = !DILocation(line: 585, column: 19, scope: !330)
!332 = !DILocation(line: 585, column: 26, scope: !330)
!333 = !DILocation(line: 586, column: 23, scope: !330)
!334 = !DILocation(line: 586, column: 28, scope: !330)
!335 = !DILocation(line: 586, column: 33, scope: !330)
!336 = !DILocation(line: 586, column: 32, scope: !330)
!337 = !DILocation(line: 586, column: 38, scope: !330)
!338 = !DILocation(line: 586, column: 48, scope: !330)
!339 = !DILocation(line: 586, column: 41, scope: !330)
!340 = !DILocation(line: 586, column: 19, scope: !330)
!341 = !DILocation(line: 587, column: 5, scope: !330)
!342 = !DILocation(line: 588, column: 7, scope: !343)
!343 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!344 = !DILocation(line: 588, column: 7, scope: !2)
!345 = !DILocation(line: 590, column: 7, scope: !346)
!346 = distinct !DILexicalBlock(scope: !343, file: !3, line: 589, column: 5)
!347 = !DILocation(line: 591, column: 7, scope: !346)
!348 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !46)
!349 = !DILocation(line: 594, column: 8, scope: !2)
!350 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!351 = !DILocation(line: 595, column: 15, scope: !2)
!352 = !DILocation(line: 595, column: 28, scope: !2)
!353 = !DILocation(line: 595, column: 45, scope: !2)
!354 = !DILocation(line: 595, column: 37, scope: !2)
!355 = !DILocation(line: 595, column: 35, scope: !2)
!356 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!357 = !DILocation(line: 596, column: 15, scope: !2)
!358 = !DILocation(line: 596, column: 37, scope: !2)
!359 = !DILocation(line: 596, column: 29, scope: !2)
!360 = !DILocation(line: 597, column: 8, scope: !361)
!361 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!362 = !DILocation(line: 597, column: 7, scope: !2)
!363 = !DILocation(line: 599, column: 21, scope: !364)
!364 = distinct !DILexicalBlock(scope: !361, file: !3, line: 598, column: 5)
!365 = !DILocation(line: 599, column: 19, scope: !364)
!366 = !DILocation(line: 602, column: 20, scope: !364)
!367 = !DILocation(line: 603, column: 5, scope: !364)
!368 = !DILocation(line: 604, column: 12, scope: !369)
!369 = distinct !DILexicalBlock(scope: !361, file: !3, line: 604, column: 12)
!370 = !DILocation(line: 604, column: 27, scope: !369)
!371 = !DILocation(line: 604, column: 24, scope: !369)
!372 = !DILocation(line: 604, column: 12, scope: !361)
!373 = !DILocalVariable(name: "s", scope: !374, file: !3, line: 608, type: !6)
!374 = distinct !DILexicalBlock(scope: !369, file: !3, line: 605, column: 5)
!375 = !DILocation(line: 608, column: 19, scope: !374)
!376 = !DILocation(line: 608, column: 23, scope: !374)
!377 = !DILocalVariable(name: "spaces", scope: !374, file: !3, line: 609, type: !141)
!378 = !DILocation(line: 609, column: 14, scope: !374)
!379 = !DILocation(line: 610, column: 7, scope: !374)
!380 = !DILocation(line: 610, column: 14, scope: !374)
!381 = !DILocation(line: 610, column: 18, scope: !374)
!382 = !DILocation(line: 610, column: 16, scope: !374)
!383 = !DILocation(line: 610, column: 30, scope: !374)
!384 = !DILocation(line: 610, column: 33, scope: !374)
!385 = !DILocation(line: 610, column: 40, scope: !374)
!386 = !DILocation(line: 0, scope: !374)
!387 = !DILocation(line: 611, column: 21, scope: !374)
!388 = !DILocation(line: 611, column: 20, scope: !374)
!389 = !DILocation(line: 611, column: 19, scope: !374)
!390 = !DILocation(line: 611, column: 16, scope: !374)
!391 = distinct !{!391, !379, !387, !392}
!392 = !{!"llvm.loop.mustprogress"}
!393 = !DILocation(line: 612, column: 11, scope: !394)
!394 = distinct !DILexicalBlock(scope: !374, file: !3, line: 612, column: 11)
!395 = !DILocation(line: 612, column: 18, scope: !394)
!396 = !DILocation(line: 612, column: 11, scope: !374)
!397 = !DILocation(line: 615, column: 25, scope: !398)
!398 = distinct !DILexicalBlock(scope: !394, file: !3, line: 613, column: 9)
!399 = !DILocation(line: 615, column: 23, scope: !398)
!400 = !DILocation(line: 616, column: 24, scope: !398)
!401 = !DILocation(line: 617, column: 9, scope: !398)
!402 = !DILocation(line: 618, column: 5, scope: !374)
!403 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !141)
!404 = !DILocation(line: 620, column: 10, scope: !2)
!405 = !DILocation(line: 620, column: 32, scope: !2)
!406 = !DILocation(line: 620, column: 23, scope: !2)
!407 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!408 = !DILocation(line: 625, column: 15, scope: !2)
!409 = !DILocation(line: 625, column: 27, scope: !2)
!410 = !DILocation(line: 625, column: 41, scope: !2)
!411 = !DILocation(line: 625, column: 39, scope: !2)
!412 = !DILocation(line: 626, column: 3, scope: !2)
!413 = !DILocation(line: 626, column: 11, scope: !2)
!414 = !DILocation(line: 626, column: 10, scope: !2)
!415 = !DILocation(line: 626, column: 21, scope: !2)
!416 = !DILocation(line: 626, column: 25, scope: !2)
!417 = !DILocation(line: 626, column: 24, scope: !2)
!418 = !DILocation(line: 626, column: 35, scope: !2)
!419 = !DILocation(line: 0, scope: !2)
!420 = !DILocation(line: 628, column: 12, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !3, line: 628, column: 11)
!422 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!423 = !DILocation(line: 628, column: 11, scope: !421)
!424 = !DILocation(line: 628, column: 22, scope: !421)
!425 = !DILocation(line: 628, column: 29, scope: !421)
!426 = !DILocation(line: 628, column: 34, scope: !421)
!427 = !DILocation(line: 628, column: 44, scope: !421)
!428 = !DILocation(line: 628, column: 32, scope: !421)
!429 = !DILocation(line: 628, column: 49, scope: !421)
!430 = !DILocation(line: 628, column: 11, scope: !422)
!431 = !DILocation(line: 629, column: 22, scope: !421)
!432 = !DILocation(line: 629, column: 9, scope: !421)
!433 = !DILocation(line: 630, column: 11, scope: !434)
!434 = distinct !DILexicalBlock(scope: !422, file: !3, line: 630, column: 11)
!435 = !DILocation(line: 630, column: 11, scope: !422)
!436 = !DILocation(line: 632, column: 16, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 632, column: 15)
!438 = distinct !DILexicalBlock(scope: !434, file: !3, line: 631, column: 9)
!439 = !DILocation(line: 632, column: 15, scope: !437)
!440 = !DILocation(line: 632, column: 26, scope: !437)
!441 = !DILocation(line: 632, column: 34, scope: !437)
!442 = !DILocation(line: 632, column: 37, scope: !437)
!443 = !DILocation(line: 632, column: 15, scope: !438)
!444 = !DILocation(line: 633, column: 13, scope: !437)
!445 = !DILocation(line: 636, column: 16, scope: !446)
!446 = distinct !DILexicalBlock(scope: !438, file: !3, line: 636, column: 15)
!447 = !DILocation(line: 636, column: 29, scope: !446)
!448 = !DILocation(line: 636, column: 34, scope: !446)
!449 = !DILocation(line: 636, column: 44, scope: !446)
!450 = !DILocation(line: 636, column: 32, scope: !446)
!451 = !DILocation(line: 636, column: 49, scope: !446)
!452 = !DILocation(line: 636, column: 15, scope: !438)
!453 = !DILocation(line: 637, column: 13, scope: !446)
!454 = !DILocation(line: 638, column: 9, scope: !438)
!455 = !DILocation(line: 640, column: 16, scope: !422)
!456 = distinct !{!456, !412, !457, !392}
!457 = !DILocation(line: 641, column: 5, scope: !2)
!458 = !DILocation(line: 644, column: 3, scope: !2)
!459 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!460 = !DILocation(line: 648, column: 15, scope: !2)
!461 = !DILocation(line: 648, column: 38, scope: !2)
!462 = !DILocation(line: 648, column: 31, scope: !2)
!463 = !DILocation(line: 649, column: 38, scope: !2)
!464 = !DILocation(line: 649, column: 31, scope: !2)
!465 = !DILocation(line: 650, column: 38, scope: !2)
!466 = !DILocation(line: 650, column: 31, scope: !2)
!467 = !DILocation(line: 651, column: 38, scope: !2)
!468 = !DILocation(line: 651, column: 31, scope: !2)
!469 = !DILocation(line: 652, column: 38, scope: !2)
!470 = !DILocation(line: 652, column: 31, scope: !2)
!471 = !DILocation(line: 653, column: 38, scope: !2)
!472 = !DILocation(line: 653, column: 31, scope: !2)
!473 = !DILocation(line: 654, column: 38, scope: !2)
!474 = !DILocation(line: 654, column: 31, scope: !2)
!475 = !DILocation(line: 655, column: 38, scope: !2)
!476 = !DILocation(line: 655, column: 31, scope: !2)
!477 = !DILocation(line: 656, column: 38, scope: !2)
!478 = !DILocation(line: 656, column: 31, scope: !2)
!479 = !DILocation(line: 657, column: 38, scope: !2)
!480 = !DILocation(line: 657, column: 31, scope: !2)
!481 = !DILocation(line: 658, column: 31, scope: !2)
!482 = !DILocation(line: 663, column: 7, scope: !483)
!483 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!484 = !DILocation(line: 664, column: 7, scope: !483)
!485 = !DILocation(line: 664, column: 10, scope: !483)
!486 = !DILocation(line: 663, column: 7, scope: !2)
!487 = !DILocation(line: 670, column: 15, scope: !488)
!488 = distinct !DILexicalBlock(scope: !483, file: !3, line: 665, column: 5)
!489 = !DILocation(line: 670, column: 28, scope: !488)
!490 = !DILocation(line: 670, column: 47, scope: !488)
!491 = !DILocation(line: 670, column: 41, scope: !488)
!492 = !DILocation(line: 670, column: 59, scope: !488)
!493 = !DILocation(line: 669, column: 7, scope: !488)
!494 = !DILocation(line: 671, column: 5, scope: !488)
!495 = !DILocation(line: 676, column: 48, scope: !496)
!496 = distinct !DILexicalBlock(scope: !483, file: !3, line: 673, column: 5)
!497 = !DILocation(line: 677, column: 21, scope: !496)
!498 = !DILocation(line: 677, column: 15, scope: !496)
!499 = !DILocation(line: 677, column: 33, scope: !496)
!500 = !DILocation(line: 676, column: 7, scope: !496)
!501 = !DILocation(line: 679, column: 3, scope: !2)
!502 = !DILocation(line: 683, column: 3, scope: !2)
!503 = !DILocation(line: 686, column: 3, scope: !2)
!504 = !DILocation(line: 688, column: 3, scope: !2)
!505 = !DILocation(line: 691, column: 3, scope: !2)
!506 = !DILocation(line: 695, column: 3, scope: !2)
!507 = !DILocation(line: 696, column: 1, scope: !2)
!508 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !509, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !33)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !6}
!511 = !DILocalVariable(name: "program", arg: 1, scope: !508, file: !3, line: 836, type: !6)
!512 = !DILocation(line: 836, column: 34, scope: !508)
!513 = !DILocalVariable(name: "infomap", scope: !508, file: !3, line: 838, type: !514)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 896, elements: !520)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !508, file: !3, line: 838, size: 128, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !516, file: !3, line: 838, baseType: !6, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !516, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!520 = !{!521}
!521 = !DISubrange(count: 7)
!522 = !DILocation(line: 838, column: 67, scope: !508)
!523 = !DILocalVariable(name: "node", scope: !508, file: !3, line: 848, type: !6)
!524 = !DILocation(line: 848, column: 15, scope: !508)
!525 = !DILocation(line: 848, column: 22, scope: !508)
!526 = !DILocalVariable(name: "map_prog", scope: !508, file: !3, line: 849, type: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!528 = !DILocation(line: 849, column: 25, scope: !508)
!529 = !DILocation(line: 849, column: 36, scope: !508)
!530 = !DILocation(line: 851, column: 3, scope: !508)
!531 = !DILocation(line: 851, column: 10, scope: !508)
!532 = !DILocation(line: 851, column: 20, scope: !508)
!533 = !DILocation(line: 851, column: 28, scope: !508)
!534 = !DILocation(line: 851, column: 40, scope: !508)
!535 = !DILocation(line: 851, column: 49, scope: !508)
!536 = !DILocation(line: 851, column: 59, scope: !508)
!537 = !DILocation(line: 851, column: 33, scope: !508)
!538 = !DILocation(line: 851, column: 31, scope: !508)
!539 = !DILocation(line: 0, scope: !508)
!540 = !DILocation(line: 852, column: 13, scope: !508)
!541 = distinct !{!541, !530, !540, !392}
!542 = !DILocation(line: 854, column: 7, scope: !543)
!543 = distinct !DILexicalBlock(scope: !508, file: !3, line: 854, column: 7)
!544 = !DILocation(line: 854, column: 17, scope: !543)
!545 = !DILocation(line: 854, column: 7, scope: !508)
!546 = !DILocation(line: 855, column: 12, scope: !543)
!547 = !DILocation(line: 855, column: 22, scope: !543)
!548 = !DILocation(line: 855, column: 10, scope: !543)
!549 = !DILocation(line: 855, column: 5, scope: !543)
!550 = !DILocation(line: 857, column: 3, scope: !508)
!551 = !DILocalVariable(name: "lc_messages", scope: !508, file: !3, line: 861, type: !6)
!552 = !DILocation(line: 861, column: 15, scope: !508)
!553 = !DILocation(line: 861, column: 29, scope: !508)
!554 = !DILocation(line: 862, column: 7, scope: !555)
!555 = distinct !DILexicalBlock(scope: !508, file: !3, line: 862, column: 7)
!556 = !DILocation(line: 862, column: 19, scope: !555)
!557 = !DILocation(line: 862, column: 22, scope: !555)
!558 = !DILocation(line: 862, column: 7, scope: !508)
!559 = !DILocation(line: 868, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !555, file: !3, line: 863, column: 5)
!561 = !DILocation(line: 870, column: 5, scope: !560)
!562 = !DILocalVariable(name: "url_program", scope: !508, file: !3, line: 874, type: !6)
!563 = !DILocation(line: 874, column: 15, scope: !508)
!564 = !DILocation(line: 874, column: 36, scope: !508)
!565 = !DILocation(line: 874, column: 29, scope: !508)
!566 = !DILocation(line: 874, column: 61, scope: !508)
!567 = !DILocation(line: 875, column: 11, scope: !508)
!568 = !DILocation(line: 876, column: 24, scope: !508)
!569 = !DILocation(line: 875, column: 3, scope: !508)
!570 = !DILocation(line: 877, column: 11, scope: !508)
!571 = !DILocation(line: 878, column: 11, scope: !508)
!572 = !DILocation(line: 878, column: 17, scope: !508)
!573 = !DILocation(line: 878, column: 25, scope: !508)
!574 = !DILocation(line: 878, column: 22, scope: !508)
!575 = !DILocation(line: 877, column: 3, scope: !508)
!576 = !DILocation(line: 879, column: 1, scope: !508)
!577 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 50, type: !578, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !33)
!578 = !DISubroutineType(types: !579)
!579 = !{!30, !30, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!581 = !DILocalVariable(name: "argc", arg: 1, scope: !577, file: !10, line: 50, type: !30)
!582 = !DILocation(line: 50, column: 11, scope: !577)
!583 = !DILocalVariable(name: "argv", arg: 2, scope: !577, file: !10, line: 50, type: !580)
!584 = !DILocation(line: 50, column: 24, scope: !577)
!585 = !DILocation(line: 53, column: 21, scope: !577)
!586 = !DILocation(line: 53, column: 3, scope: !577)
!587 = !DILocation(line: 54, column: 3, scope: !577)
!588 = !DILocation(line: 55, column: 3, scope: !577)
!589 = !DILocation(line: 56, column: 3, scope: !577)
!590 = !DILocation(line: 58, column: 3, scope: !577)
!591 = !DILocation(line: 60, column: 36, scope: !577)
!592 = !DILocation(line: 60, column: 42, scope: !577)
!593 = !DILocation(line: 61, column: 36, scope: !577)
!594 = !DILocation(line: 61, column: 58, scope: !577)
!595 = !DILocation(line: 60, column: 3, scope: !577)
!596 = !DILocation(line: 64, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !577, file: !10, line: 64, column: 7)
!598 = !DILocation(line: 64, column: 16, scope: !597)
!599 = !DILocation(line: 64, column: 14, scope: !597)
!600 = !DILocation(line: 64, column: 7, scope: !577)
!601 = !DILocation(line: 66, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !597, file: !10, line: 65, column: 5)
!603 = !DILocation(line: 67, column: 7, scope: !602)
!604 = !DILocalVariable(name: "cp", scope: !577, file: !10, line: 72, type: !6)
!605 = !DILocation(line: 72, column: 15, scope: !577)
!606 = !DILocation(line: 72, column: 20, scope: !577)
!607 = !DILocation(line: 73, column: 9, scope: !608)
!608 = distinct !DILexicalBlock(scope: !577, file: !10, line: 73, column: 7)
!609 = !DILocation(line: 73, column: 7, scope: !577)
!610 = !DILocation(line: 74, column: 5, scope: !608)
!611 = !DILocation(line: 76, column: 9, scope: !577)
!612 = !DILocation(line: 76, column: 3, scope: !577)
!613 = !DILocation(line: 77, column: 3, scope: !577)
!614 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !42, file: !42, line: 50, type: !509, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !33)
!615 = !DILocalVariable(name: "file", arg: 1, scope: !614, file: !42, line: 50, type: !6)
!616 = !DILocation(line: 50, column: 41, scope: !614)
!617 = !DILocation(line: 52, column: 15, scope: !614)
!618 = !DILocation(line: 52, column: 13, scope: !614)
!619 = !DILocation(line: 53, column: 1, scope: !614)
!620 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !42, file: !42, line: 87, type: !621, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !33)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !46}
!623 = !DILocalVariable(name: "ignore", arg: 1, scope: !620, file: !42, line: 87, type: !46)
!624 = !DILocation(line: 87, column: 37, scope: !620)
!625 = !DILocation(line: 89, column: 18, scope: !620)
!626 = !DILocation(line: 89, column: 16, scope: !620)
!627 = !DILocation(line: 90, column: 1, scope: !620)
!628 = distinct !DISubprogram(name: "close_stdout", scope: !42, file: !42, line: 116, type: !79, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !33)
!629 = !DILocation(line: 118, column: 21, scope: !630)
!630 = distinct !DILexicalBlock(scope: !628, file: !42, line: 118, column: 7)
!631 = !DILocation(line: 118, column: 7, scope: !630)
!632 = !DILocation(line: 118, column: 29, scope: !630)
!633 = !DILocation(line: 119, column: 7, scope: !630)
!634 = !DILocation(line: 119, column: 12, scope: !630)
!635 = !DILocation(line: 119, column: 25, scope: !630)
!636 = !DILocation(line: 119, column: 28, scope: !630)
!637 = !DILocation(line: 119, column: 34, scope: !630)
!638 = !DILocation(line: 118, column: 7, scope: !628)
!639 = !DILocalVariable(name: "write_error", scope: !640, file: !42, line: 121, type: !6)
!640 = distinct !DILexicalBlock(scope: !630, file: !42, line: 120, column: 5)
!641 = !DILocation(line: 121, column: 19, scope: !640)
!642 = !DILocation(line: 121, column: 33, scope: !640)
!643 = !DILocation(line: 122, column: 11, scope: !644)
!644 = distinct !DILexicalBlock(scope: !640, file: !42, line: 122, column: 11)
!645 = !DILocation(line: 122, column: 11, scope: !640)
!646 = !DILocation(line: 123, column: 9, scope: !644)
!647 = !DILocation(line: 126, column: 9, scope: !644)
!648 = !DILocation(line: 128, column: 14, scope: !640)
!649 = !DILocation(line: 128, column: 7, scope: !640)
!650 = !DILocation(line: 133, column: 42, scope: !651)
!651 = distinct !DILexicalBlock(scope: !628, file: !42, line: 133, column: 7)
!652 = !DILocation(line: 133, column: 28, scope: !651)
!653 = !DILocation(line: 133, column: 50, scope: !651)
!654 = !DILocation(line: 133, column: 7, scope: !628)
!655 = !DILocation(line: 134, column: 12, scope: !651)
!656 = !DILocation(line: 134, column: 5, scope: !651)
!657 = !DILocation(line: 135, column: 1, scope: !628)
!658 = distinct !DISubprogram(name: "verror", scope: !50, file: !50, line: 251, type: !659, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !33)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !30, !30, !6, !58}
!661 = !DILocalVariable(name: "status", arg: 1, scope: !658, file: !50, line: 251, type: !30)
!662 = !DILocation(line: 251, column: 1, scope: !658)
!663 = !DILocalVariable(name: "errnum", arg: 2, scope: !658, file: !50, line: 251, type: !30)
!664 = !DILocalVariable(name: "message", arg: 3, scope: !658, file: !50, line: 251, type: !6)
!665 = !DILocalVariable(name: "args", arg: 4, scope: !658, file: !50, line: 251, type: !58)
!666 = !DILocation(line: 261, column: 3, scope: !658)
!667 = !DILocation(line: 265, column: 7, scope: !668)
!668 = distinct !DILexicalBlock(scope: !658, file: !50, line: 265, column: 7)
!669 = !DILocation(line: 265, column: 7, scope: !658)
!670 = !DILocation(line: 266, column: 7, scope: !668)
!671 = !DILocation(line: 266, column: 5, scope: !668)
!672 = !DILocation(line: 272, column: 16, scope: !673)
!673 = distinct !DILexicalBlock(scope: !668, file: !50, line: 268, column: 5)
!674 = !DILocation(line: 272, column: 32, scope: !673)
!675 = !DILocation(line: 272, column: 7, scope: !673)
!676 = !DILocation(line: 276, column: 3, scope: !658)
!677 = !DILocation(line: 282, column: 1, scope: !658)
!678 = distinct !DISubprogram(name: "flush_stdout", scope: !50, file: !50, line: 163, type: !79, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !49, retainedNodes: !33)
!679 = !DILocalVariable(name: "stdout_fd", scope: !678, file: !50, line: 166, type: !30)
!680 = !DILocation(line: 166, column: 7, scope: !678)
!681 = !DILocation(line: 172, column: 13, scope: !678)
!682 = !DILocation(line: 182, column: 12, scope: !683)
!683 = distinct !DILexicalBlock(scope: !678, file: !50, line: 182, column: 7)
!684 = !DILocation(line: 182, column: 9, scope: !683)
!685 = !DILocation(line: 182, column: 22, scope: !683)
!686 = !DILocation(line: 182, column: 34, scope: !683)
!687 = !DILocation(line: 182, column: 25, scope: !683)
!688 = !DILocation(line: 182, column: 7, scope: !678)
!689 = !DILocation(line: 184, column: 5, scope: !683)
!690 = !DILocation(line: 185, column: 1, scope: !678)
!691 = distinct !DISubprogram(name: "error_tail", scope: !50, file: !50, line: 219, type: !659, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !49, retainedNodes: !33)
!692 = !DILocalVariable(name: "status", arg: 1, scope: !691, file: !50, line: 219, type: !30)
!693 = !DILocation(line: 219, column: 1, scope: !691)
!694 = !DILocalVariable(name: "errnum", arg: 2, scope: !691, file: !50, line: 219, type: !30)
!695 = !DILocalVariable(name: "message", arg: 3, scope: !691, file: !50, line: 219, type: !6)
!696 = !DILocalVariable(name: "args", arg: 4, scope: !691, file: !50, line: 219, type: !58)
!697 = !DILocation(line: 229, column: 13, scope: !691)
!698 = !DILocation(line: 229, column: 21, scope: !691)
!699 = !DILocation(line: 229, column: 3, scope: !691)
!700 = !DILocation(line: 232, column: 3, scope: !691)
!701 = !DILocation(line: 233, column: 7, scope: !702)
!702 = distinct !DILexicalBlock(scope: !691, file: !50, line: 233, column: 7)
!703 = !DILocation(line: 233, column: 7, scope: !691)
!704 = !DILocation(line: 234, column: 26, scope: !702)
!705 = !DILocation(line: 234, column: 5, scope: !702)
!706 = !DILocation(line: 238, column: 3, scope: !691)
!707 = !DILocation(line: 240, column: 3, scope: !691)
!708 = !DILocation(line: 241, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !691, file: !50, line: 241, column: 7)
!710 = !DILocation(line: 241, column: 7, scope: !691)
!711 = !DILocation(line: 242, column: 11, scope: !709)
!712 = !DILocation(line: 242, column: 5, scope: !709)
!713 = !DILocation(line: 243, column: 1, scope: !691)
!714 = distinct !DISubprogram(name: "print_errno_message", scope: !50, file: !50, line: 188, type: !300, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !49, retainedNodes: !33)
!715 = !DILocalVariable(name: "errnum", arg: 1, scope: !714, file: !50, line: 188, type: !30)
!716 = !DILocation(line: 188, column: 26, scope: !714)
!717 = !DILocalVariable(name: "s", scope: !714, file: !50, line: 190, type: !6)
!718 = !DILocation(line: 190, column: 15, scope: !714)
!719 = !DILocalVariable(name: "errbuf", scope: !714, file: !50, line: 193, type: !720)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 1024)
!723 = !DILocation(line: 193, column: 8, scope: !714)
!724 = !DILocation(line: 195, column: 21, scope: !714)
!725 = !DILocation(line: 195, column: 29, scope: !714)
!726 = !DILocation(line: 195, column: 7, scope: !714)
!727 = !DILocation(line: 195, column: 5, scope: !714)
!728 = !DILocation(line: 207, column: 9, scope: !729)
!729 = distinct !DILexicalBlock(scope: !714, file: !50, line: 207, column: 7)
!730 = !DILocation(line: 207, column: 7, scope: !714)
!731 = !DILocation(line: 208, column: 9, scope: !729)
!732 = !DILocation(line: 208, column: 7, scope: !729)
!733 = !DILocation(line: 208, column: 5, scope: !729)
!734 = !DILocation(line: 214, column: 12, scope: !714)
!735 = !DILocation(line: 214, column: 28, scope: !714)
!736 = !DILocation(line: 214, column: 3, scope: !714)
!737 = !DILocation(line: 216, column: 1, scope: !714)
!738 = distinct !DISubprogram(name: "is_open", scope: !50, file: !50, line: 145, type: !739, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !49, retainedNodes: !33)
!739 = !DISubroutineType(types: !740)
!740 = !{!30, !30}
!741 = !DILocalVariable(name: "fd", arg: 1, scope: !738, file: !50, line: 145, type: !30)
!742 = !DILocation(line: 145, column: 14, scope: !738)
!743 = !DILocation(line: 157, column: 22, scope: !738)
!744 = !DILocation(line: 157, column: 15, scope: !738)
!745 = !DILocation(line: 157, column: 12, scope: !738)
!746 = !DILocation(line: 157, column: 3, scope: !738)
!747 = distinct !DISubprogram(name: "error", scope: !50, file: !50, line: 285, type: !748, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !33)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !30, !30, !6, null}
!750 = !DILocalVariable(name: "status", arg: 1, scope: !747, file: !50, line: 285, type: !30)
!751 = !DILocation(line: 285, column: 12, scope: !747)
!752 = !DILocalVariable(name: "errnum", arg: 2, scope: !747, file: !50, line: 285, type: !30)
!753 = !DILocation(line: 285, column: 24, scope: !747)
!754 = !DILocalVariable(name: "message", arg: 3, scope: !747, file: !50, line: 285, type: !6)
!755 = !DILocation(line: 285, column: 44, scope: !747)
!756 = !DILocalVariable(name: "ap", scope: !747, file: !50, line: 287, type: !58)
!757 = !DILocation(line: 287, column: 11, scope: !747)
!758 = !DILocation(line: 288, column: 3, scope: !747)
!759 = !DILocation(line: 289, column: 3, scope: !747)
!760 = !DILocation(line: 290, column: 3, scope: !747)
!761 = !DILocation(line: 291, column: 1, scope: !747)
!762 = !DILocalVariable(name: "status", arg: 1, scope: !55, file: !50, line: 298, type: !30)
!763 = !DILocation(line: 298, column: 1, scope: !55)
!764 = !DILocalVariable(name: "errnum", arg: 2, scope: !55, file: !50, line: 298, type: !30)
!765 = !DILocalVariable(name: "file_name", arg: 3, scope: !55, file: !50, line: 298, type: !6)
!766 = !DILocalVariable(name: "line_number", arg: 4, scope: !55, file: !50, line: 298, type: !14)
!767 = !DILocalVariable(name: "message", arg: 5, scope: !55, file: !50, line: 298, type: !6)
!768 = !DILocalVariable(name: "args", arg: 6, scope: !55, file: !50, line: 298, type: !58)
!769 = !DILocation(line: 302, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !55, file: !50, line: 302, column: 7)
!771 = !DILocation(line: 302, column: 7, scope: !55)
!772 = !DILocation(line: 307, column: 11, scope: !773)
!773 = distinct !DILexicalBlock(scope: !774, file: !50, line: 307, column: 11)
!774 = distinct !DILexicalBlock(scope: !770, file: !50, line: 303, column: 5)
!775 = !DILocation(line: 307, column: 30, scope: !773)
!776 = !DILocation(line: 307, column: 27, scope: !773)
!777 = !DILocation(line: 308, column: 11, scope: !773)
!778 = !DILocation(line: 308, column: 15, scope: !773)
!779 = !DILocation(line: 308, column: 28, scope: !773)
!780 = !DILocation(line: 308, column: 25, scope: !773)
!781 = !DILocation(line: 309, column: 15, scope: !773)
!782 = !DILocation(line: 309, column: 19, scope: !773)
!783 = !DILocation(line: 309, column: 33, scope: !773)
!784 = !DILocation(line: 310, column: 19, scope: !773)
!785 = !DILocation(line: 310, column: 22, scope: !773)
!786 = !DILocation(line: 310, column: 32, scope: !773)
!787 = !DILocation(line: 311, column: 19, scope: !773)
!788 = !DILocation(line: 311, column: 30, scope: !773)
!789 = !DILocation(line: 311, column: 45, scope: !773)
!790 = !DILocation(line: 311, column: 22, scope: !773)
!791 = !DILocation(line: 311, column: 56, scope: !773)
!792 = !DILocation(line: 307, column: 11, scope: !774)
!793 = !DILocation(line: 314, column: 9, scope: !773)
!794 = !DILocation(line: 316, column: 23, scope: !774)
!795 = !DILocation(line: 316, column: 21, scope: !774)
!796 = !DILocation(line: 317, column: 25, scope: !774)
!797 = !DILocation(line: 317, column: 23, scope: !774)
!798 = !DILocation(line: 318, column: 5, scope: !774)
!799 = !DILocation(line: 327, column: 3, scope: !55)
!800 = !DILocation(line: 331, column: 7, scope: !801)
!801 = distinct !DILexicalBlock(scope: !55, file: !50, line: 331, column: 7)
!802 = !DILocation(line: 331, column: 7, scope: !55)
!803 = !DILocation(line: 332, column: 7, scope: !801)
!804 = !DILocation(line: 332, column: 5, scope: !801)
!805 = !DILocation(line: 338, column: 16, scope: !806)
!806 = distinct !DILexicalBlock(scope: !801, file: !50, line: 334, column: 5)
!807 = !DILocation(line: 338, column: 31, scope: !806)
!808 = !DILocation(line: 338, column: 7, scope: !806)
!809 = !DILocation(line: 346, column: 12, scope: !55)
!810 = !DILocation(line: 346, column: 20, scope: !55)
!811 = !DILocation(line: 346, column: 30, scope: !55)
!812 = !DILocation(line: 347, column: 12, scope: !55)
!813 = !DILocation(line: 347, column: 23, scope: !55)
!814 = !DILocation(line: 346, column: 3, scope: !55)
!815 = !DILocation(line: 350, column: 3, scope: !55)
!816 = !DILocation(line: 356, column: 1, scope: !55)
!817 = distinct !DISubprogram(name: "error_at_line", scope: !50, file: !50, line: 359, type: !818, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !33)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !30, !30, !6, !14, !6, null}
!820 = !DILocalVariable(name: "status", arg: 1, scope: !817, file: !50, line: 359, type: !30)
!821 = !DILocation(line: 359, column: 20, scope: !817)
!822 = !DILocalVariable(name: "errnum", arg: 2, scope: !817, file: !50, line: 359, type: !30)
!823 = !DILocation(line: 359, column: 32, scope: !817)
!824 = !DILocalVariable(name: "file_name", arg: 3, scope: !817, file: !50, line: 359, type: !6)
!825 = !DILocation(line: 359, column: 52, scope: !817)
!826 = !DILocalVariable(name: "line_number", arg: 4, scope: !817, file: !50, line: 360, type: !14)
!827 = !DILocation(line: 360, column: 29, scope: !817)
!828 = !DILocalVariable(name: "message", arg: 5, scope: !817, file: !50, line: 360, type: !6)
!829 = !DILocation(line: 360, column: 54, scope: !817)
!830 = !DILocalVariable(name: "ap", scope: !817, file: !50, line: 362, type: !58)
!831 = !DILocation(line: 362, column: 11, scope: !817)
!832 = !DILocation(line: 363, column: 3, scope: !817)
!833 = !DILocation(line: 364, column: 3, scope: !817)
!834 = !DILocation(line: 366, column: 3, scope: !817)
!835 = !DILocation(line: 367, column: 1, scope: !817)
!836 = distinct !DISubprogram(name: "getprogname", scope: !229, file: !229, line: 54, type: !837, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !228, retainedNodes: !33)
!837 = !DISubroutineType(types: !838)
!838 = !{!6}
!839 = !DILocation(line: 58, column: 10, scope: !836)
!840 = !DILocation(line: 58, column: 3, scope: !836)
!841 = distinct !DISubprogram(name: "parse_long_options", scope: !84, file: !84, line: 45, type: !842, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !33)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !30, !580, !6, !6, !6, !844, null}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!845 = !DILocalVariable(name: "argc", arg: 1, scope: !841, file: !84, line: 45, type: !30)
!846 = !DILocation(line: 45, column: 25, scope: !841)
!847 = !DILocalVariable(name: "argv", arg: 2, scope: !841, file: !84, line: 46, type: !580)
!848 = !DILocation(line: 46, column: 28, scope: !841)
!849 = !DILocalVariable(name: "command_name", arg: 3, scope: !841, file: !84, line: 47, type: !6)
!850 = !DILocation(line: 47, column: 33, scope: !841)
!851 = !DILocalVariable(name: "package", arg: 4, scope: !841, file: !84, line: 48, type: !6)
!852 = !DILocation(line: 48, column: 33, scope: !841)
!853 = !DILocalVariable(name: "version", arg: 5, scope: !841, file: !84, line: 49, type: !6)
!854 = !DILocation(line: 49, column: 33, scope: !841)
!855 = !DILocalVariable(name: "usage_func", arg: 6, scope: !841, file: !84, line: 50, type: !844)
!856 = !DILocation(line: 50, column: 28, scope: !841)
!857 = !DILocalVariable(name: "saved_opterr", scope: !841, file: !84, line: 53, type: !30)
!858 = !DILocation(line: 53, column: 7, scope: !841)
!859 = !DILocation(line: 53, column: 22, scope: !841)
!860 = !DILocation(line: 56, column: 10, scope: !841)
!861 = !DILocation(line: 58, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !841, file: !84, line: 58, column: 7)
!863 = !DILocation(line: 58, column: 12, scope: !862)
!864 = !DILocation(line: 58, column: 7, scope: !841)
!865 = !DILocalVariable(name: "c", scope: !866, file: !84, line: 60, type: !30)
!866 = distinct !DILexicalBlock(scope: !862, file: !84, line: 59, column: 5)
!867 = !DILocation(line: 60, column: 11, scope: !866)
!868 = !DILocation(line: 60, column: 28, scope: !866)
!869 = !DILocation(line: 60, column: 34, scope: !866)
!870 = !DILocation(line: 60, column: 15, scope: !866)
!871 = !DILocation(line: 61, column: 11, scope: !872)
!872 = distinct !DILexicalBlock(scope: !866, file: !84, line: 61, column: 11)
!873 = !DILocation(line: 61, column: 13, scope: !872)
!874 = !DILocation(line: 61, column: 11, scope: !866)
!875 = !DILocation(line: 63, column: 19, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !84, line: 62, column: 9)
!877 = !DILocation(line: 63, column: 11, scope: !876)
!878 = !DILocation(line: 66, column: 17, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !84, line: 64, column: 13)
!880 = !DILocation(line: 66, column: 15, scope: !879)
!881 = !DILocation(line: 67, column: 15, scope: !879)
!882 = !DILocalVariable(name: "authors", scope: !883, file: !84, line: 71, type: !884)
!883 = distinct !DILexicalBlock(scope: !879, file: !84, line: 70, column: 15)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !59, line: 52, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !61, line: 32, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !887, baseType: !888)
!887 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !65, size: 256, elements: !889)
!889 = !{!890, !891, !892, !893, !894}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !888, file: !887, line: 71, baseType: !29, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !888, file: !887, line: 71, baseType: !29, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !888, file: !887, line: 71, baseType: !29, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !888, file: !887, line: 71, baseType: !30, size: 32, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !888, file: !887, line: 71, baseType: !30, size: 32, offset: 224)
!895 = !DILocation(line: 71, column: 25, scope: !883)
!896 = !DILocation(line: 72, column: 17, scope: !883)
!897 = !DILocation(line: 73, column: 33, scope: !883)
!898 = !DILocation(line: 73, column: 41, scope: !883)
!899 = !DILocation(line: 73, column: 55, scope: !883)
!900 = !DILocation(line: 73, column: 64, scope: !883)
!901 = !DILocation(line: 73, column: 17, scope: !883)
!902 = !DILocation(line: 74, column: 17, scope: !883)
!903 = !DILocation(line: 79, column: 15, scope: !879)
!904 = !DILocation(line: 81, column: 9, scope: !876)
!905 = !DILocation(line: 82, column: 5, scope: !866)
!906 = !DILocation(line: 85, column: 12, scope: !841)
!907 = !DILocation(line: 85, column: 10, scope: !841)
!908 = !DILocation(line: 89, column: 10, scope: !841)
!909 = !DILocation(line: 90, column: 1, scope: !841)
!910 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !84, file: !84, line: 98, type: !911, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !33)
!911 = !DISubroutineType(types: !912)
!912 = !{null, !30, !580, !6, !6, !6, !46, !844, null}
!913 = !DILocalVariable(name: "argc", arg: 1, scope: !910, file: !84, line: 98, type: !30)
!914 = !DILocation(line: 98, column: 38, scope: !910)
!915 = !DILocalVariable(name: "argv", arg: 2, scope: !910, file: !84, line: 99, type: !580)
!916 = !DILocation(line: 99, column: 41, scope: !910)
!917 = !DILocalVariable(name: "command_name", arg: 3, scope: !910, file: !84, line: 100, type: !6)
!918 = !DILocation(line: 100, column: 46, scope: !910)
!919 = !DILocalVariable(name: "package", arg: 4, scope: !910, file: !84, line: 101, type: !6)
!920 = !DILocation(line: 101, column: 46, scope: !910)
!921 = !DILocalVariable(name: "version", arg: 5, scope: !910, file: !84, line: 102, type: !6)
!922 = !DILocation(line: 102, column: 46, scope: !910)
!923 = !DILocalVariable(name: "scan_all", arg: 6, scope: !910, file: !84, line: 103, type: !46)
!924 = !DILocation(line: 103, column: 39, scope: !910)
!925 = !DILocalVariable(name: "usage_func", arg: 7, scope: !910, file: !84, line: 104, type: !844)
!926 = !DILocation(line: 104, column: 41, scope: !910)
!927 = !DILocalVariable(name: "saved_opterr", scope: !910, file: !84, line: 107, type: !30)
!928 = !DILocation(line: 107, column: 7, scope: !910)
!929 = !DILocation(line: 107, column: 22, scope: !910)
!930 = !DILocation(line: 110, column: 10, scope: !910)
!931 = !DILocalVariable(name: "optstring", scope: !910, file: !84, line: 112, type: !6)
!932 = !DILocation(line: 112, column: 15, scope: !910)
!933 = !DILocation(line: 112, column: 27, scope: !910)
!934 = !DILocalVariable(name: "c", scope: !910, file: !84, line: 114, type: !30)
!935 = !DILocation(line: 114, column: 7, scope: !910)
!936 = !DILocation(line: 114, column: 24, scope: !910)
!937 = !DILocation(line: 114, column: 30, scope: !910)
!938 = !DILocation(line: 114, column: 36, scope: !910)
!939 = !DILocation(line: 114, column: 11, scope: !910)
!940 = !DILocation(line: 115, column: 7, scope: !941)
!941 = distinct !DILexicalBlock(scope: !910, file: !84, line: 115, column: 7)
!942 = !DILocation(line: 115, column: 9, scope: !941)
!943 = !DILocation(line: 115, column: 7, scope: !910)
!944 = !DILocation(line: 117, column: 15, scope: !945)
!945 = distinct !DILexicalBlock(scope: !941, file: !84, line: 116, column: 5)
!946 = !DILocation(line: 117, column: 7, scope: !945)
!947 = !DILocation(line: 120, column: 13, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !84, line: 118, column: 9)
!949 = !DILocation(line: 120, column: 11, scope: !948)
!950 = !DILocation(line: 121, column: 11, scope: !948)
!951 = !DILocalVariable(name: "authors", scope: !952, file: !84, line: 125, type: !884)
!952 = distinct !DILexicalBlock(scope: !948, file: !84, line: 124, column: 11)
!953 = !DILocation(line: 125, column: 21, scope: !952)
!954 = !DILocation(line: 126, column: 13, scope: !952)
!955 = !DILocation(line: 127, column: 29, scope: !952)
!956 = !DILocation(line: 127, column: 37, scope: !952)
!957 = !DILocation(line: 127, column: 51, scope: !952)
!958 = !DILocation(line: 127, column: 60, scope: !952)
!959 = !DILocation(line: 127, column: 13, scope: !952)
!960 = !DILocation(line: 128, column: 13, scope: !952)
!961 = !DILocation(line: 132, column: 13, scope: !948)
!962 = !DILocation(line: 132, column: 26, scope: !948)
!963 = !DILocation(line: 132, column: 11, scope: !948)
!964 = !DILocation(line: 133, column: 11, scope: !948)
!965 = !DILocation(line: 135, column: 5, scope: !945)
!966 = !DILocation(line: 138, column: 12, scope: !910)
!967 = !DILocation(line: 138, column: 10, scope: !910)
!968 = !DILocation(line: 139, column: 1, scope: !910)
!969 = distinct !DISubprogram(name: "set_program_name", scope: !101, file: !101, line: 37, type: !509, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !33)
!970 = !DILocalVariable(name: "argv0", arg: 1, scope: !969, file: !101, line: 37, type: !6)
!971 = !DILocation(line: 37, column: 31, scope: !969)
!972 = !DILocalVariable(name: "slash", scope: !969, file: !101, line: 44, type: !6)
!973 = !DILocation(line: 44, column: 15, scope: !969)
!974 = !DILocation(line: 44, column: 32, scope: !969)
!975 = !DILocation(line: 44, column: 23, scope: !969)
!976 = !DILocalVariable(name: "base", scope: !969, file: !101, line: 45, type: !6)
!977 = !DILocation(line: 45, column: 15, scope: !969)
!978 = !DILocation(line: 45, column: 22, scope: !969)
!979 = !DILocation(line: 45, column: 30, scope: !969)
!980 = !DILocation(line: 45, column: 36, scope: !969)
!981 = !DILocation(line: 45, column: 42, scope: !969)
!982 = !DILocation(line: 46, column: 12, scope: !983)
!983 = distinct !DILexicalBlock(scope: !969, file: !101, line: 46, column: 7)
!984 = !DILocation(line: 46, column: 19, scope: !983)
!985 = !DILocation(line: 46, column: 17, scope: !983)
!986 = !DILocation(line: 46, column: 9, scope: !983)
!987 = !DILocation(line: 46, column: 25, scope: !983)
!988 = !DILocation(line: 46, column: 35, scope: !983)
!989 = !DILocation(line: 46, column: 40, scope: !983)
!990 = !DILocation(line: 46, column: 28, scope: !983)
!991 = !DILocation(line: 46, column: 7, scope: !969)
!992 = !DILocation(line: 48, column: 15, scope: !993)
!993 = distinct !DILexicalBlock(scope: !983, file: !101, line: 47, column: 5)
!994 = !DILocation(line: 48, column: 13, scope: !993)
!995 = !DILocation(line: 49, column: 20, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !101, line: 49, column: 11)
!997 = !DILocation(line: 49, column: 11, scope: !996)
!998 = !DILocation(line: 49, column: 36, scope: !996)
!999 = !DILocation(line: 49, column: 11, scope: !993)
!1000 = !DILocation(line: 51, column: 16, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !996, file: !101, line: 50, column: 9)
!1002 = !DILocation(line: 52, column: 19, scope: !1001)
!1003 = !DILocation(line: 52, column: 17, scope: !1001)
!1004 = !DILocation(line: 53, column: 9, scope: !1001)
!1005 = !DILocation(line: 54, column: 5, scope: !993)
!1006 = !DILocation(line: 65, column: 18, scope: !969)
!1007 = !DILocation(line: 65, column: 16, scope: !969)
!1008 = !DILocation(line: 71, column: 38, scope: !969)
!1009 = !DILocation(line: 71, column: 27, scope: !969)
!1010 = !DILocation(line: 74, column: 44, scope: !969)
!1011 = !DILocation(line: 74, column: 33, scope: !969)
!1012 = !DILocation(line: 76, column: 1, scope: !969)
!1013 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !107, file: !108, line: 38, type: !6)
!1014 = !DILocation(line: 38, column: 31, scope: !107)
!1015 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !107, file: !108, line: 38, type: !6)
!1016 = !DILocation(line: 38, column: 66, scope: !107)
!1017 = !DILocalVariable(name: "translation", scope: !107, file: !108, line: 40, type: !6)
!1018 = !DILocation(line: 40, column: 15, scope: !107)
!1019 = !DILocation(line: 40, column: 38, scope: !107)
!1020 = !DILocation(line: 40, column: 29, scope: !107)
!1021 = !DILocation(line: 41, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !107, file: !108, line: 41, column: 7)
!1023 = !DILocation(line: 41, column: 22, scope: !1022)
!1024 = !DILocation(line: 41, column: 19, scope: !1022)
!1025 = !DILocation(line: 41, column: 7, scope: !107)
!1026 = !DILocation(line: 42, column: 12, scope: !1022)
!1027 = !DILocation(line: 42, column: 5, scope: !1022)
!1028 = !DILocalVariable(name: "w", scope: !107, file: !108, line: 47, type: !1029)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1030, line: 37, baseType: !1031)
!1030 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1032, line: 57, baseType: !1033)
!1032 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1032, line: 42, baseType: !14)
!1034 = !DILocation(line: 47, column: 12, scope: !107)
!1035 = !DILocalVariable(name: "mbs", scope: !107, file: !108, line: 48, type: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !1038)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1038, file: !217, line: 15, baseType: !30, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1038, file: !217, line: 20, baseType: !1042, size: 32, offset: 32)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !217, line: 16, size: 32, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1042, file: !217, line: 18, baseType: !14, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1042, file: !217, line: 19, baseType: !226, size: 32)
!1046 = !DILocation(line: 48, column: 13, scope: !107)
!1047 = !DILocation(line: 48, column: 18, scope: !107)
!1048 = !DILocation(line: 49, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !107, file: !108, line: 49, column: 7)
!1050 = !DILocation(line: 49, column: 39, scope: !1049)
!1051 = !DILocation(line: 49, column: 44, scope: !1049)
!1052 = !DILocation(line: 49, column: 47, scope: !1049)
!1053 = !DILocation(line: 49, column: 49, scope: !1049)
!1054 = !DILocation(line: 49, column: 7, scope: !107)
!1055 = !DILocation(line: 50, column: 12, scope: !1049)
!1056 = !DILocation(line: 50, column: 5, scope: !1049)
!1057 = !DILocation(line: 53, column: 10, scope: !107)
!1058 = !DILocation(line: 53, column: 3, scope: !107)
!1059 = !DILocation(line: 54, column: 1, scope: !107)
!1060 = distinct !DISubprogram(name: "clone_quoting_options", scope: !119, file: !119, line: 113, type: !1061, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!1063, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!1064 = !DILocalVariable(name: "o", arg: 1, scope: !1060, file: !119, line: 113, type: !1063)
!1065 = !DILocation(line: 113, column: 48, scope: !1060)
!1066 = !DILocalVariable(name: "saved_errno", scope: !1060, file: !119, line: 115, type: !30)
!1067 = !DILocation(line: 115, column: 7, scope: !1060)
!1068 = !DILocation(line: 115, column: 21, scope: !1060)
!1069 = !DILocalVariable(name: "p", scope: !1060, file: !119, line: 116, type: !1063)
!1070 = !DILocation(line: 116, column: 27, scope: !1060)
!1071 = !DILocation(line: 116, column: 40, scope: !1060)
!1072 = !DILocation(line: 116, column: 44, scope: !1060)
!1073 = !DILocation(line: 116, column: 31, scope: !1060)
!1074 = !DILocation(line: 118, column: 11, scope: !1060)
!1075 = !DILocation(line: 118, column: 3, scope: !1060)
!1076 = !DILocation(line: 118, column: 9, scope: !1060)
!1077 = !DILocation(line: 119, column: 10, scope: !1060)
!1078 = !DILocation(line: 119, column: 3, scope: !1060)
!1079 = distinct !DISubprogram(name: "get_quoting_style", scope: !119, file: !119, line: 124, type: !1080, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!121, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!1084 = !DILocalVariable(name: "o", arg: 1, scope: !1079, file: !119, line: 124, type: !1082)
!1085 = !DILocation(line: 124, column: 50, scope: !1079)
!1086 = !DILocation(line: 126, column: 11, scope: !1079)
!1087 = !DILocation(line: 126, column: 15, scope: !1079)
!1088 = !DILocation(line: 126, column: 46, scope: !1079)
!1089 = !DILocation(line: 126, column: 3, scope: !1079)
!1090 = distinct !DISubprogram(name: "set_quoting_style", scope: !119, file: !119, line: 132, type: !1091, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{null, !1063, !121}
!1093 = !DILocalVariable(name: "o", arg: 1, scope: !1090, file: !119, line: 132, type: !1063)
!1094 = !DILocation(line: 132, column: 44, scope: !1090)
!1095 = !DILocalVariable(name: "s", arg: 2, scope: !1090, file: !119, line: 132, type: !121)
!1096 = !DILocation(line: 132, column: 66, scope: !1090)
!1097 = !DILocation(line: 134, column: 47, scope: !1090)
!1098 = !DILocation(line: 134, column: 4, scope: !1090)
!1099 = !DILocation(line: 134, column: 8, scope: !1090)
!1100 = !DILocation(line: 134, column: 39, scope: !1090)
!1101 = !DILocation(line: 134, column: 45, scope: !1090)
!1102 = !DILocation(line: 135, column: 1, scope: !1090)
!1103 = distinct !DISubprogram(name: "set_char_quoting", scope: !119, file: !119, line: 143, type: !1104, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!30, !1063, !8, !30}
!1106 = !DILocalVariable(name: "o", arg: 1, scope: !1103, file: !119, line: 143, type: !1063)
!1107 = !DILocation(line: 143, column: 43, scope: !1103)
!1108 = !DILocalVariable(name: "c", arg: 2, scope: !1103, file: !119, line: 143, type: !8)
!1109 = !DILocation(line: 143, column: 51, scope: !1103)
!1110 = !DILocalVariable(name: "i", arg: 3, scope: !1103, file: !119, line: 143, type: !30)
!1111 = !DILocation(line: 143, column: 58, scope: !1103)
!1112 = !DILocalVariable(name: "uc", scope: !1103, file: !119, line: 145, type: !212)
!1113 = !DILocation(line: 145, column: 17, scope: !1103)
!1114 = !DILocation(line: 145, column: 22, scope: !1103)
!1115 = !DILocalVariable(name: "p", scope: !1103, file: !119, line: 146, type: !1116)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1117 = !DILocation(line: 146, column: 17, scope: !1103)
!1118 = !DILocation(line: 147, column: 6, scope: !1103)
!1119 = !DILocation(line: 147, column: 10, scope: !1103)
!1120 = !DILocation(line: 147, column: 41, scope: !1103)
!1121 = !DILocation(line: 147, column: 5, scope: !1103)
!1122 = !DILocation(line: 147, column: 59, scope: !1103)
!1123 = !DILocation(line: 147, column: 62, scope: !1103)
!1124 = !DILocation(line: 147, column: 57, scope: !1103)
!1125 = !DILocalVariable(name: "shift", scope: !1103, file: !119, line: 148, type: !30)
!1126 = !DILocation(line: 148, column: 7, scope: !1103)
!1127 = !DILocation(line: 148, column: 15, scope: !1103)
!1128 = !DILocation(line: 148, column: 18, scope: !1103)
!1129 = !DILocalVariable(name: "r", scope: !1103, file: !119, line: 149, type: !14)
!1130 = !DILocation(line: 149, column: 16, scope: !1103)
!1131 = !DILocation(line: 149, column: 22, scope: !1103)
!1132 = !DILocation(line: 149, column: 21, scope: !1103)
!1133 = !DILocation(line: 149, column: 27, scope: !1103)
!1134 = !DILocation(line: 149, column: 24, scope: !1103)
!1135 = !DILocation(line: 149, column: 34, scope: !1103)
!1136 = !DILocation(line: 150, column: 11, scope: !1103)
!1137 = !DILocation(line: 150, column: 13, scope: !1103)
!1138 = !DILocation(line: 150, column: 21, scope: !1103)
!1139 = !DILocation(line: 150, column: 19, scope: !1103)
!1140 = !DILocation(line: 150, column: 27, scope: !1103)
!1141 = !DILocation(line: 150, column: 24, scope: !1103)
!1142 = !DILocation(line: 150, column: 4, scope: !1103)
!1143 = !DILocation(line: 150, column: 6, scope: !1103)
!1144 = !DILocation(line: 151, column: 10, scope: !1103)
!1145 = !DILocation(line: 151, column: 3, scope: !1103)
!1146 = distinct !DISubprogram(name: "set_quoting_flags", scope: !119, file: !119, line: 159, type: !1147, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!30, !1063, !30}
!1149 = !DILocalVariable(name: "o", arg: 1, scope: !1146, file: !119, line: 159, type: !1063)
!1150 = !DILocation(line: 159, column: 44, scope: !1146)
!1151 = !DILocalVariable(name: "i", arg: 2, scope: !1146, file: !119, line: 159, type: !30)
!1152 = !DILocation(line: 159, column: 51, scope: !1146)
!1153 = !DILocation(line: 161, column: 8, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1146, file: !119, line: 161, column: 7)
!1155 = !DILocation(line: 161, column: 7, scope: !1146)
!1156 = !DILocation(line: 162, column: 7, scope: !1154)
!1157 = !DILocation(line: 162, column: 5, scope: !1154)
!1158 = !DILocalVariable(name: "r", scope: !1146, file: !119, line: 163, type: !30)
!1159 = !DILocation(line: 163, column: 7, scope: !1146)
!1160 = !DILocation(line: 163, column: 11, scope: !1146)
!1161 = !DILocation(line: 163, column: 14, scope: !1146)
!1162 = !DILocation(line: 164, column: 14, scope: !1146)
!1163 = !DILocation(line: 164, column: 3, scope: !1146)
!1164 = !DILocation(line: 164, column: 6, scope: !1146)
!1165 = !DILocation(line: 164, column: 12, scope: !1146)
!1166 = !DILocation(line: 165, column: 10, scope: !1146)
!1167 = !DILocation(line: 165, column: 3, scope: !1146)
!1168 = distinct !DISubprogram(name: "set_custom_quoting", scope: !119, file: !119, line: 169, type: !1169, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !1063, !6, !6}
!1171 = !DILocalVariable(name: "o", arg: 1, scope: !1168, file: !119, line: 169, type: !1063)
!1172 = !DILocation(line: 169, column: 45, scope: !1168)
!1173 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1168, file: !119, line: 170, type: !6)
!1174 = !DILocation(line: 170, column: 33, scope: !1168)
!1175 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1168, file: !119, line: 170, type: !6)
!1176 = !DILocation(line: 170, column: 57, scope: !1168)
!1177 = !DILocation(line: 172, column: 8, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1168, file: !119, line: 172, column: 7)
!1179 = !DILocation(line: 172, column: 7, scope: !1168)
!1180 = !DILocation(line: 173, column: 7, scope: !1178)
!1181 = !DILocation(line: 173, column: 5, scope: !1178)
!1182 = !DILocation(line: 174, column: 3, scope: !1168)
!1183 = !DILocation(line: 174, column: 6, scope: !1168)
!1184 = !DILocation(line: 174, column: 12, scope: !1168)
!1185 = !DILocation(line: 175, column: 8, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1168, file: !119, line: 175, column: 7)
!1187 = !DILocation(line: 175, column: 19, scope: !1186)
!1188 = !DILocation(line: 175, column: 23, scope: !1186)
!1189 = !DILocation(line: 175, column: 7, scope: !1168)
!1190 = !DILocation(line: 176, column: 5, scope: !1186)
!1191 = !DILocation(line: 177, column: 19, scope: !1168)
!1192 = !DILocation(line: 177, column: 3, scope: !1168)
!1193 = !DILocation(line: 177, column: 6, scope: !1168)
!1194 = !DILocation(line: 177, column: 17, scope: !1168)
!1195 = !DILocation(line: 178, column: 20, scope: !1168)
!1196 = !DILocation(line: 178, column: 3, scope: !1168)
!1197 = !DILocation(line: 178, column: 6, scope: !1168)
!1198 = !DILocation(line: 178, column: 18, scope: !1168)
!1199 = !DILocation(line: 179, column: 1, scope: !1168)
!1200 = distinct !DISubprogram(name: "quotearg_buffer", scope: !119, file: !119, line: 774, type: !1201, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!141, !103, !141, !6, !141, !1082}
!1203 = !DILocalVariable(name: "buffer", arg: 1, scope: !1200, file: !119, line: 774, type: !103)
!1204 = !DILocation(line: 774, column: 24, scope: !1200)
!1205 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1200, file: !119, line: 774, type: !141)
!1206 = !DILocation(line: 774, column: 39, scope: !1200)
!1207 = !DILocalVariable(name: "arg", arg: 3, scope: !1200, file: !119, line: 775, type: !6)
!1208 = !DILocation(line: 775, column: 30, scope: !1200)
!1209 = !DILocalVariable(name: "argsize", arg: 4, scope: !1200, file: !119, line: 775, type: !141)
!1210 = !DILocation(line: 775, column: 42, scope: !1200)
!1211 = !DILocalVariable(name: "o", arg: 5, scope: !1200, file: !119, line: 776, type: !1082)
!1212 = !DILocation(line: 776, column: 48, scope: !1200)
!1213 = !DILocalVariable(name: "p", scope: !1200, file: !119, line: 778, type: !1082)
!1214 = !DILocation(line: 778, column: 33, scope: !1200)
!1215 = !DILocation(line: 778, column: 37, scope: !1200)
!1216 = !DILocation(line: 778, column: 41, scope: !1200)
!1217 = !DILocalVariable(name: "saved_errno", scope: !1200, file: !119, line: 779, type: !30)
!1218 = !DILocation(line: 779, column: 7, scope: !1200)
!1219 = !DILocation(line: 779, column: 21, scope: !1200)
!1220 = !DILocalVariable(name: "r", scope: !1200, file: !119, line: 780, type: !141)
!1221 = !DILocation(line: 780, column: 10, scope: !1200)
!1222 = !DILocation(line: 780, column: 40, scope: !1200)
!1223 = !DILocation(line: 780, column: 48, scope: !1200)
!1224 = !DILocation(line: 780, column: 60, scope: !1200)
!1225 = !DILocation(line: 780, column: 65, scope: !1200)
!1226 = !DILocation(line: 781, column: 40, scope: !1200)
!1227 = !DILocation(line: 781, column: 43, scope: !1200)
!1228 = !DILocation(line: 781, column: 50, scope: !1200)
!1229 = !DILocation(line: 781, column: 53, scope: !1200)
!1230 = !DILocation(line: 781, column: 60, scope: !1200)
!1231 = !DILocation(line: 781, column: 63, scope: !1200)
!1232 = !DILocation(line: 782, column: 40, scope: !1200)
!1233 = !DILocation(line: 782, column: 43, scope: !1200)
!1234 = !DILocation(line: 782, column: 55, scope: !1200)
!1235 = !DILocation(line: 782, column: 58, scope: !1200)
!1236 = !DILocation(line: 780, column: 14, scope: !1200)
!1237 = !DILocation(line: 783, column: 11, scope: !1200)
!1238 = !DILocation(line: 783, column: 3, scope: !1200)
!1239 = !DILocation(line: 783, column: 9, scope: !1200)
!1240 = !DILocation(line: 784, column: 10, scope: !1200)
!1241 = !DILocation(line: 784, column: 3, scope: !1200)
!1242 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !119, file: !119, line: 251, type: !1243, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!141, !103, !141, !6, !141, !121, !30, !1245, !6, !6}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1247 = !DILocalVariable(name: "buffer", arg: 1, scope: !1242, file: !119, line: 251, type: !103)
!1248 = !DILocation(line: 251, column: 33, scope: !1242)
!1249 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1242, file: !119, line: 251, type: !141)
!1250 = !DILocation(line: 251, column: 48, scope: !1242)
!1251 = !DILocalVariable(name: "arg", arg: 3, scope: !1242, file: !119, line: 252, type: !6)
!1252 = !DILocation(line: 252, column: 39, scope: !1242)
!1253 = !DILocalVariable(name: "argsize", arg: 4, scope: !1242, file: !119, line: 252, type: !141)
!1254 = !DILocation(line: 252, column: 51, scope: !1242)
!1255 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1242, file: !119, line: 253, type: !121)
!1256 = !DILocation(line: 253, column: 46, scope: !1242)
!1257 = !DILocalVariable(name: "flags", arg: 6, scope: !1242, file: !119, line: 253, type: !30)
!1258 = !DILocation(line: 253, column: 65, scope: !1242)
!1259 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1242, file: !119, line: 254, type: !1245)
!1260 = !DILocation(line: 254, column: 47, scope: !1242)
!1261 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1242, file: !119, line: 255, type: !6)
!1262 = !DILocation(line: 255, column: 39, scope: !1242)
!1263 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1242, file: !119, line: 256, type: !6)
!1264 = !DILocation(line: 256, column: 39, scope: !1242)
!1265 = !DILocalVariable(name: "unibyte_locale", scope: !1242, file: !119, line: 258, type: !46)
!1266 = !DILocation(line: 258, column: 8, scope: !1242)
!1267 = !DILocation(line: 258, column: 25, scope: !1242)
!1268 = !DILocation(line: 258, column: 36, scope: !1242)
!1269 = !DILocalVariable(name: "len", scope: !1242, file: !119, line: 260, type: !141)
!1270 = !DILocation(line: 260, column: 10, scope: !1242)
!1271 = !DILocalVariable(name: "orig_buffersize", scope: !1242, file: !119, line: 261, type: !141)
!1272 = !DILocation(line: 261, column: 10, scope: !1242)
!1273 = !DILocalVariable(name: "quote_string", scope: !1242, file: !119, line: 262, type: !6)
!1274 = !DILocation(line: 262, column: 15, scope: !1242)
!1275 = !DILocalVariable(name: "quote_string_len", scope: !1242, file: !119, line: 263, type: !141)
!1276 = !DILocation(line: 263, column: 10, scope: !1242)
!1277 = !DILocalVariable(name: "backslash_escapes", scope: !1242, file: !119, line: 264, type: !46)
!1278 = !DILocation(line: 264, column: 8, scope: !1242)
!1279 = !DILocalVariable(name: "elide_outer_quotes", scope: !1242, file: !119, line: 265, type: !46)
!1280 = !DILocation(line: 265, column: 8, scope: !1242)
!1281 = !DILocation(line: 265, column: 30, scope: !1242)
!1282 = !DILocation(line: 265, column: 36, scope: !1242)
!1283 = !DILocation(line: 265, column: 61, scope: !1242)
!1284 = !DILocalVariable(name: "encountered_single_quote", scope: !1242, file: !119, line: 266, type: !46)
!1285 = !DILocation(line: 266, column: 8, scope: !1242)
!1286 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1242, file: !119, line: 267, type: !46)
!1287 = !DILocation(line: 267, column: 8, scope: !1242)
!1288 = !DILocation(line: 267, column: 3, scope: !1242)
!1289 = !DILabel(scope: !1242, name: "process_input", file: !119, line: 308)
!1290 = !DILocation(line: 308, column: 2, scope: !1242)
!1291 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1242, file: !119, line: 309, type: !46)
!1292 = !DILocation(line: 309, column: 8, scope: !1242)
!1293 = !DILocation(line: 311, column: 11, scope: !1242)
!1294 = !DILocation(line: 311, column: 3, scope: !1242)
!1295 = !DILocation(line: 314, column: 21, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1242, file: !119, line: 312, column: 5)
!1297 = !DILocation(line: 315, column: 26, scope: !1296)
!1298 = !DILocation(line: 315, column: 7, scope: !1296)
!1299 = !DILocation(line: 318, column: 12, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1296, file: !119, line: 318, column: 11)
!1301 = !DILocation(line: 318, column: 11, scope: !1296)
!1302 = !DILocation(line: 319, column: 9, scope: !1300)
!1303 = !DILocation(line: 319, column: 9, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !119, line: 319, column: 9)
!1305 = distinct !DILexicalBlock(scope: !1300, file: !119, line: 319, column: 9)
!1306 = !DILocation(line: 319, column: 9, scope: !1305)
!1307 = !DILocation(line: 320, column: 25, scope: !1296)
!1308 = !DILocation(line: 321, column: 20, scope: !1296)
!1309 = !DILocation(line: 322, column: 24, scope: !1296)
!1310 = !DILocation(line: 323, column: 7, scope: !1296)
!1311 = !DILocation(line: 326, column: 25, scope: !1296)
!1312 = !DILocation(line: 327, column: 26, scope: !1296)
!1313 = !DILocation(line: 328, column: 7, scope: !1296)
!1314 = !DILocation(line: 334, column: 13, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !119, line: 334, column: 13)
!1316 = distinct !DILexicalBlock(scope: !1296, file: !119, line: 333, column: 7)
!1317 = !DILocation(line: 334, column: 27, scope: !1315)
!1318 = !DILocation(line: 334, column: 13, scope: !1316)
!1319 = !DILocation(line: 357, column: 50, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1315, file: !119, line: 335, column: 11)
!1321 = !DILocation(line: 357, column: 26, scope: !1320)
!1322 = !DILocation(line: 357, column: 24, scope: !1320)
!1323 = !DILocation(line: 358, column: 51, scope: !1320)
!1324 = !DILocation(line: 358, column: 27, scope: !1320)
!1325 = !DILocation(line: 358, column: 25, scope: !1320)
!1326 = !DILocation(line: 359, column: 11, scope: !1320)
!1327 = !DILocation(line: 360, column: 14, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1316, file: !119, line: 360, column: 13)
!1329 = !DILocation(line: 360, column: 13, scope: !1316)
!1330 = !DILocalVariable(name: "lq", scope: !1331, file: !119, line: 361, type: !6)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !119, line: 361, column: 11)
!1332 = !DILocation(line: 361, column: 28, scope: !1331)
!1333 = !DILocation(line: 361, column: 33, scope: !1331)
!1334 = !DILocation(line: 361, column: 16, scope: !1331)
!1335 = !DILocation(line: 361, column: 46, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !119, line: 361, column: 11)
!1337 = !DILocation(line: 361, column: 45, scope: !1336)
!1338 = !DILocation(line: 361, column: 11, scope: !1331)
!1339 = !DILocation(line: 362, column: 13, scope: !1336)
!1340 = !DILocation(line: 362, column: 13, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !119, line: 362, column: 13)
!1342 = distinct !DILexicalBlock(scope: !1336, file: !119, line: 362, column: 13)
!1343 = !DILocation(line: 362, column: 13, scope: !1342)
!1344 = !DILocation(line: 361, column: 52, scope: !1336)
!1345 = !DILocation(line: 361, column: 11, scope: !1336)
!1346 = distinct !{!1346, !1338, !1347, !392}
!1347 = !DILocation(line: 362, column: 13, scope: !1331)
!1348 = !DILocation(line: 363, column: 27, scope: !1316)
!1349 = !DILocation(line: 364, column: 24, scope: !1316)
!1350 = !DILocation(line: 364, column: 22, scope: !1316)
!1351 = !DILocation(line: 365, column: 36, scope: !1316)
!1352 = !DILocation(line: 365, column: 28, scope: !1316)
!1353 = !DILocation(line: 365, column: 26, scope: !1316)
!1354 = !DILocation(line: 367, column: 7, scope: !1296)
!1355 = !DILocation(line: 370, column: 25, scope: !1296)
!1356 = !DILocation(line: 370, column: 7, scope: !1296)
!1357 = !DILocation(line: 373, column: 26, scope: !1296)
!1358 = !DILocation(line: 373, column: 7, scope: !1296)
!1359 = !DILocation(line: 376, column: 12, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1296, file: !119, line: 376, column: 11)
!1361 = !DILocation(line: 376, column: 11, scope: !1296)
!1362 = !DILocation(line: 377, column: 27, scope: !1360)
!1363 = !DILocation(line: 377, column: 9, scope: !1360)
!1364 = !DILocation(line: 380, column: 21, scope: !1296)
!1365 = !DILocation(line: 381, column: 12, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1296, file: !119, line: 381, column: 11)
!1367 = !DILocation(line: 381, column: 11, scope: !1296)
!1368 = !DILocation(line: 382, column: 9, scope: !1366)
!1369 = !DILocation(line: 382, column: 9, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !119, line: 382, column: 9)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !119, line: 382, column: 9)
!1372 = !DILocation(line: 382, column: 9, scope: !1371)
!1373 = !DILocation(line: 383, column: 20, scope: !1296)
!1374 = !DILocation(line: 384, column: 24, scope: !1296)
!1375 = !DILocation(line: 385, column: 7, scope: !1296)
!1376 = !DILocation(line: 388, column: 26, scope: !1296)
!1377 = !DILocation(line: 389, column: 7, scope: !1296)
!1378 = !DILocation(line: 392, column: 7, scope: !1296)
!1379 = !DILocalVariable(name: "i", scope: !1380, file: !119, line: 395, type: !141)
!1380 = distinct !DILexicalBlock(scope: !1242, file: !119, line: 395, column: 3)
!1381 = !DILocation(line: 395, column: 15, scope: !1380)
!1382 = !DILocation(line: 395, column: 8, scope: !1380)
!1383 = !DILocation(line: 395, column: 26, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1380, file: !119, line: 395, column: 3)
!1385 = !DILocation(line: 395, column: 34, scope: !1384)
!1386 = !DILocation(line: 395, column: 48, scope: !1384)
!1387 = !DILocation(line: 395, column: 52, scope: !1384)
!1388 = !DILocation(line: 395, column: 55, scope: !1384)
!1389 = !DILocation(line: 395, column: 65, scope: !1384)
!1390 = !DILocation(line: 395, column: 70, scope: !1384)
!1391 = !DILocation(line: 395, column: 67, scope: !1384)
!1392 = !DILocation(line: 395, column: 23, scope: !1384)
!1393 = !DILocation(line: 395, column: 3, scope: !1380)
!1394 = !DILocalVariable(name: "is_right_quote", scope: !1395, file: !119, line: 397, type: !46)
!1395 = distinct !DILexicalBlock(scope: !1384, file: !119, line: 396, column: 5)
!1396 = !DILocation(line: 397, column: 12, scope: !1395)
!1397 = !DILocalVariable(name: "escaping", scope: !1395, file: !119, line: 398, type: !46)
!1398 = !DILocation(line: 398, column: 12, scope: !1395)
!1399 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1395, file: !119, line: 399, type: !46)
!1400 = !DILocation(line: 399, column: 12, scope: !1395)
!1401 = !DILocation(line: 401, column: 11, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1395, file: !119, line: 401, column: 11)
!1403 = !DILocation(line: 402, column: 11, scope: !1402)
!1404 = !DILocation(line: 402, column: 14, scope: !1402)
!1405 = !DILocation(line: 402, column: 28, scope: !1402)
!1406 = !DILocation(line: 403, column: 11, scope: !1402)
!1407 = !DILocation(line: 403, column: 14, scope: !1402)
!1408 = !DILocation(line: 404, column: 11, scope: !1402)
!1409 = !DILocation(line: 404, column: 15, scope: !1402)
!1410 = !DILocation(line: 404, column: 19, scope: !1402)
!1411 = !DILocation(line: 404, column: 17, scope: !1402)
!1412 = !DILocation(line: 405, column: 19, scope: !1402)
!1413 = !DILocation(line: 405, column: 27, scope: !1402)
!1414 = !DILocation(line: 405, column: 39, scope: !1402)
!1415 = !DILocation(line: 405, column: 46, scope: !1402)
!1416 = !DILocation(line: 405, column: 44, scope: !1402)
!1417 = !DILocation(line: 409, column: 40, scope: !1402)
!1418 = !DILocation(line: 409, column: 32, scope: !1402)
!1419 = !DILocation(line: 409, column: 30, scope: !1402)
!1420 = !DILocation(line: 409, column: 48, scope: !1402)
!1421 = !DILocation(line: 405, column: 15, scope: !1402)
!1422 = !DILocation(line: 410, column: 11, scope: !1402)
!1423 = !DILocation(line: 410, column: 21, scope: !1402)
!1424 = !DILocation(line: 410, column: 27, scope: !1402)
!1425 = !DILocation(line: 410, column: 25, scope: !1402)
!1426 = !DILocation(line: 410, column: 30, scope: !1402)
!1427 = !DILocation(line: 410, column: 44, scope: !1402)
!1428 = !DILocation(line: 410, column: 14, scope: !1402)
!1429 = !DILocation(line: 401, column: 11, scope: !1395)
!1430 = !DILocation(line: 412, column: 15, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !119, line: 412, column: 15)
!1432 = distinct !DILexicalBlock(scope: !1402, file: !119, line: 411, column: 9)
!1433 = !DILocation(line: 412, column: 15, scope: !1432)
!1434 = !DILocation(line: 413, column: 13, scope: !1431)
!1435 = !DILocation(line: 414, column: 26, scope: !1432)
!1436 = !DILocation(line: 415, column: 9, scope: !1432)
!1437 = !DILocalVariable(name: "c", scope: !1395, file: !119, line: 417, type: !212)
!1438 = !DILocation(line: 417, column: 21, scope: !1395)
!1439 = !DILocation(line: 417, column: 25, scope: !1395)
!1440 = !DILocation(line: 417, column: 29, scope: !1395)
!1441 = !DILocation(line: 418, column: 15, scope: !1395)
!1442 = !DILocation(line: 418, column: 7, scope: !1395)
!1443 = !DILocation(line: 421, column: 15, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !119, line: 421, column: 15)
!1445 = distinct !DILexicalBlock(scope: !1395, file: !119, line: 419, column: 9)
!1446 = !DILocation(line: 421, column: 15, scope: !1445)
!1447 = !DILocation(line: 423, column: 15, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !119, line: 422, column: 13)
!1449 = !DILocation(line: 423, column: 15, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !119, line: 423, column: 15)
!1451 = distinct !DILexicalBlock(scope: !1448, file: !119, line: 423, column: 15)
!1452 = !DILocation(line: 423, column: 15, scope: !1451)
!1453 = !DILocation(line: 423, column: 15, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1451, file: !119, line: 423, column: 15)
!1455 = !DILocation(line: 423, column: 15, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1454, file: !119, line: 423, column: 15)
!1457 = !DILocation(line: 423, column: 15, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !119, line: 423, column: 15)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !119, line: 423, column: 15)
!1460 = !DILocation(line: 423, column: 15, scope: !1459)
!1461 = !DILocation(line: 423, column: 15, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !119, line: 423, column: 15)
!1463 = distinct !DILexicalBlock(scope: !1456, file: !119, line: 423, column: 15)
!1464 = !DILocation(line: 423, column: 15, scope: !1463)
!1465 = !DILocation(line: 423, column: 15, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !119, line: 423, column: 15)
!1467 = distinct !DILexicalBlock(scope: !1456, file: !119, line: 423, column: 15)
!1468 = !DILocation(line: 423, column: 15, scope: !1467)
!1469 = !DILocation(line: 423, column: 15, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !119, line: 423, column: 15)
!1471 = distinct !DILexicalBlock(scope: !1451, file: !119, line: 423, column: 15)
!1472 = !DILocation(line: 423, column: 15, scope: !1471)
!1473 = !DILocation(line: 430, column: 19, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1448, file: !119, line: 430, column: 19)
!1475 = !DILocation(line: 430, column: 33, scope: !1474)
!1476 = !DILocation(line: 431, column: 19, scope: !1474)
!1477 = !DILocation(line: 431, column: 22, scope: !1474)
!1478 = !DILocation(line: 431, column: 24, scope: !1474)
!1479 = !DILocation(line: 431, column: 30, scope: !1474)
!1480 = !DILocation(line: 431, column: 28, scope: !1474)
!1481 = !DILocation(line: 431, column: 38, scope: !1474)
!1482 = !DILocation(line: 431, column: 48, scope: !1474)
!1483 = !DILocation(line: 431, column: 52, scope: !1474)
!1484 = !DILocation(line: 431, column: 54, scope: !1474)
!1485 = !DILocation(line: 431, column: 45, scope: !1474)
!1486 = !DILocation(line: 431, column: 59, scope: !1474)
!1487 = !DILocation(line: 431, column: 62, scope: !1474)
!1488 = !DILocation(line: 431, column: 66, scope: !1474)
!1489 = !DILocation(line: 431, column: 68, scope: !1474)
!1490 = !DILocation(line: 431, column: 73, scope: !1474)
!1491 = !DILocation(line: 430, column: 19, scope: !1448)
!1492 = !DILocation(line: 433, column: 19, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1474, file: !119, line: 432, column: 17)
!1494 = !DILocation(line: 433, column: 19, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !119, line: 433, column: 19)
!1496 = distinct !DILexicalBlock(scope: !1493, file: !119, line: 433, column: 19)
!1497 = !DILocation(line: 433, column: 19, scope: !1496)
!1498 = !DILocation(line: 434, column: 19, scope: !1493)
!1499 = !DILocation(line: 434, column: 19, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !119, line: 434, column: 19)
!1501 = distinct !DILexicalBlock(scope: !1493, file: !119, line: 434, column: 19)
!1502 = !DILocation(line: 434, column: 19, scope: !1501)
!1503 = !DILocation(line: 435, column: 17, scope: !1493)
!1504 = !DILocation(line: 436, column: 17, scope: !1448)
!1505 = !DILocation(line: 441, column: 13, scope: !1448)
!1506 = !DILocation(line: 442, column: 20, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1444, file: !119, line: 442, column: 20)
!1508 = !DILocation(line: 442, column: 26, scope: !1507)
!1509 = !DILocation(line: 442, column: 20, scope: !1444)
!1510 = !DILocation(line: 443, column: 13, scope: !1507)
!1511 = !DILocation(line: 444, column: 11, scope: !1445)
!1512 = !DILocation(line: 447, column: 20, scope: !1445)
!1513 = !DILocation(line: 447, column: 11, scope: !1445)
!1514 = !DILocation(line: 450, column: 19, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !119, line: 450, column: 19)
!1516 = distinct !DILexicalBlock(scope: !1445, file: !119, line: 448, column: 13)
!1517 = !DILocation(line: 450, column: 19, scope: !1516)
!1518 = !DILocation(line: 451, column: 17, scope: !1515)
!1519 = !DILocation(line: 452, column: 15, scope: !1516)
!1520 = !DILocation(line: 455, column: 20, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !119, line: 455, column: 19)
!1522 = !DILocation(line: 455, column: 26, scope: !1521)
!1523 = !DILocation(line: 456, column: 19, scope: !1521)
!1524 = !DILocation(line: 456, column: 22, scope: !1521)
!1525 = !DILocation(line: 456, column: 24, scope: !1521)
!1526 = !DILocation(line: 456, column: 30, scope: !1521)
!1527 = !DILocation(line: 456, column: 28, scope: !1521)
!1528 = !DILocation(line: 456, column: 38, scope: !1521)
!1529 = !DILocation(line: 456, column: 41, scope: !1521)
!1530 = !DILocation(line: 456, column: 45, scope: !1521)
!1531 = !DILocation(line: 456, column: 47, scope: !1521)
!1532 = !DILocation(line: 456, column: 52, scope: !1521)
!1533 = !DILocation(line: 455, column: 19, scope: !1516)
!1534 = !DILocation(line: 457, column: 25, scope: !1521)
!1535 = !DILocation(line: 457, column: 29, scope: !1521)
!1536 = !DILocation(line: 457, column: 31, scope: !1521)
!1537 = !DILocation(line: 457, column: 17, scope: !1521)
!1538 = !DILocation(line: 464, column: 25, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !119, line: 464, column: 25)
!1540 = distinct !DILexicalBlock(scope: !1521, file: !119, line: 458, column: 19)
!1541 = !DILocation(line: 464, column: 25, scope: !1540)
!1542 = !DILocation(line: 465, column: 23, scope: !1539)
!1543 = !DILocation(line: 466, column: 25, scope: !1540)
!1544 = !DILocation(line: 466, column: 29, scope: !1540)
!1545 = !DILocation(line: 466, column: 31, scope: !1540)
!1546 = !DILocation(line: 466, column: 23, scope: !1540)
!1547 = !DILocation(line: 467, column: 23, scope: !1540)
!1548 = !DILocation(line: 468, column: 21, scope: !1540)
!1549 = !DILocation(line: 468, column: 21, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !119, line: 468, column: 21)
!1551 = distinct !DILexicalBlock(scope: !1540, file: !119, line: 468, column: 21)
!1552 = !DILocation(line: 468, column: 21, scope: !1551)
!1553 = !DILocation(line: 469, column: 21, scope: !1540)
!1554 = !DILocation(line: 469, column: 21, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !119, line: 469, column: 21)
!1556 = distinct !DILexicalBlock(scope: !1540, file: !119, line: 469, column: 21)
!1557 = !DILocation(line: 469, column: 21, scope: !1556)
!1558 = !DILocation(line: 470, column: 21, scope: !1540)
!1559 = !DILocation(line: 470, column: 21, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !119, line: 470, column: 21)
!1561 = distinct !DILexicalBlock(scope: !1540, file: !119, line: 470, column: 21)
!1562 = !DILocation(line: 470, column: 21, scope: !1561)
!1563 = !DILocation(line: 471, column: 21, scope: !1540)
!1564 = !DILocation(line: 471, column: 21, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !119, line: 471, column: 21)
!1566 = distinct !DILexicalBlock(scope: !1540, file: !119, line: 471, column: 21)
!1567 = !DILocation(line: 471, column: 21, scope: !1566)
!1568 = !DILocation(line: 472, column: 21, scope: !1540)
!1569 = !DILocation(line: 473, column: 19, scope: !1540)
!1570 = !DILocation(line: 474, column: 15, scope: !1516)
!1571 = !DILocation(line: 476, column: 11, scope: !1445)
!1572 = !DILocation(line: 481, column: 26, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1445, file: !119, line: 478, column: 9)
!1574 = !DILocation(line: 481, column: 33, scope: !1573)
!1575 = !DILocation(line: 482, column: 26, scope: !1573)
!1576 = !DILocation(line: 482, column: 33, scope: !1573)
!1577 = !DILocation(line: 483, column: 26, scope: !1573)
!1578 = !DILocation(line: 483, column: 33, scope: !1573)
!1579 = !DILocation(line: 484, column: 26, scope: !1573)
!1580 = !DILocation(line: 484, column: 33, scope: !1573)
!1581 = !DILocation(line: 485, column: 26, scope: !1573)
!1582 = !DILocation(line: 485, column: 33, scope: !1573)
!1583 = !DILocation(line: 486, column: 26, scope: !1573)
!1584 = !DILocation(line: 486, column: 33, scope: !1573)
!1585 = !DILocation(line: 487, column: 26, scope: !1573)
!1586 = !DILocation(line: 487, column: 33, scope: !1573)
!1587 = !DILocation(line: 488, column: 28, scope: !1573)
!1588 = !DILocation(line: 488, column: 26, scope: !1573)
!1589 = !DILocation(line: 490, column: 17, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1573, file: !119, line: 490, column: 17)
!1591 = !DILocation(line: 490, column: 31, scope: !1590)
!1592 = !DILocation(line: 490, column: 17, scope: !1573)
!1593 = !DILocation(line: 492, column: 21, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !119, line: 492, column: 21)
!1595 = distinct !DILexicalBlock(scope: !1590, file: !119, line: 491, column: 15)
!1596 = !DILocation(line: 492, column: 21, scope: !1595)
!1597 = !DILocation(line: 493, column: 19, scope: !1594)
!1598 = !DILocation(line: 494, column: 17, scope: !1595)
!1599 = !DILocation(line: 499, column: 17, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1573, file: !119, line: 499, column: 17)
!1601 = !DILocation(line: 499, column: 35, scope: !1600)
!1602 = !DILocation(line: 499, column: 38, scope: !1600)
!1603 = !DILocation(line: 499, column: 57, scope: !1600)
!1604 = !DILocation(line: 499, column: 60, scope: !1600)
!1605 = !DILocation(line: 499, column: 17, scope: !1573)
!1606 = !DILocation(line: 500, column: 15, scope: !1600)
!1607 = !DILabel(scope: !1573, name: "c_and_shell_escape", file: !119, line: 502)
!1608 = !DILocation(line: 502, column: 11, scope: !1573)
!1609 = !DILocation(line: 503, column: 17, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1573, file: !119, line: 503, column: 17)
!1611 = !DILocation(line: 503, column: 31, scope: !1610)
!1612 = !DILocation(line: 504, column: 17, scope: !1610)
!1613 = !DILocation(line: 504, column: 20, scope: !1610)
!1614 = !DILocation(line: 503, column: 17, scope: !1573)
!1615 = !DILocation(line: 505, column: 15, scope: !1610)
!1616 = !DILabel(scope: !1573, name: "c_escape", file: !119, line: 507)
!1617 = !DILocation(line: 507, column: 11, scope: !1573)
!1618 = !DILocation(line: 508, column: 17, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1573, file: !119, line: 508, column: 17)
!1620 = !DILocation(line: 508, column: 17, scope: !1573)
!1621 = !DILocation(line: 510, column: 21, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1619, file: !119, line: 509, column: 15)
!1623 = !DILocation(line: 510, column: 19, scope: !1622)
!1624 = !DILocation(line: 511, column: 17, scope: !1622)
!1625 = !DILocation(line: 513, column: 13, scope: !1573)
!1626 = !DILocation(line: 517, column: 18, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1445, file: !119, line: 517, column: 15)
!1628 = !DILocation(line: 517, column: 26, scope: !1627)
!1629 = !DILocation(line: 517, column: 15, scope: !1445)
!1630 = !DILocation(line: 517, column: 40, scope: !1627)
!1631 = !DILocation(line: 517, column: 47, scope: !1627)
!1632 = !DILocation(line: 517, column: 57, scope: !1627)
!1633 = !DILocation(line: 517, column: 65, scope: !1627)
!1634 = !DILocation(line: 518, column: 13, scope: !1627)
!1635 = !DILocation(line: 517, column: 69, scope: !1627)
!1636 = !DILocation(line: 521, column: 15, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1445, file: !119, line: 521, column: 15)
!1638 = !DILocation(line: 521, column: 17, scope: !1637)
!1639 = !DILocation(line: 521, column: 15, scope: !1445)
!1640 = !DILocation(line: 522, column: 13, scope: !1637)
!1641 = !DILocation(line: 521, column: 20, scope: !1637)
!1642 = !DILocation(line: 525, column: 36, scope: !1445)
!1643 = !DILocation(line: 525, column: 11, scope: !1445)
!1644 = !DILocation(line: 536, column: 15, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1445, file: !119, line: 536, column: 15)
!1646 = !DILocation(line: 536, column: 29, scope: !1645)
!1647 = !DILocation(line: 537, column: 15, scope: !1645)
!1648 = !DILocation(line: 537, column: 18, scope: !1645)
!1649 = !DILocation(line: 536, column: 15, scope: !1445)
!1650 = !DILocation(line: 538, column: 13, scope: !1645)
!1651 = !DILocation(line: 539, column: 11, scope: !1445)
!1652 = !DILocation(line: 542, column: 36, scope: !1445)
!1653 = !DILocation(line: 543, column: 36, scope: !1445)
!1654 = !DILocation(line: 544, column: 15, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1445, file: !119, line: 544, column: 15)
!1656 = !DILocation(line: 544, column: 29, scope: !1655)
!1657 = !DILocation(line: 544, column: 15, scope: !1445)
!1658 = !DILocation(line: 546, column: 19, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !119, line: 546, column: 19)
!1660 = distinct !DILexicalBlock(scope: !1655, file: !119, line: 545, column: 13)
!1661 = !DILocation(line: 546, column: 19, scope: !1660)
!1662 = !DILocation(line: 547, column: 17, scope: !1659)
!1663 = !DILocation(line: 549, column: 19, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1660, file: !119, line: 549, column: 19)
!1665 = !DILocation(line: 549, column: 30, scope: !1664)
!1666 = !DILocation(line: 549, column: 35, scope: !1664)
!1667 = !DILocation(line: 549, column: 19, scope: !1660)
!1668 = !DILocation(line: 554, column: 37, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !119, line: 550, column: 17)
!1670 = !DILocation(line: 554, column: 35, scope: !1669)
!1671 = !DILocation(line: 555, column: 30, scope: !1669)
!1672 = !DILocation(line: 556, column: 17, scope: !1669)
!1673 = !DILocation(line: 558, column: 15, scope: !1660)
!1674 = !DILocation(line: 558, column: 15, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !119, line: 558, column: 15)
!1676 = distinct !DILexicalBlock(scope: !1660, file: !119, line: 558, column: 15)
!1677 = !DILocation(line: 558, column: 15, scope: !1676)
!1678 = !DILocation(line: 559, column: 15, scope: !1660)
!1679 = !DILocation(line: 559, column: 15, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !119, line: 559, column: 15)
!1681 = distinct !DILexicalBlock(scope: !1660, file: !119, line: 559, column: 15)
!1682 = !DILocation(line: 559, column: 15, scope: !1681)
!1683 = !DILocation(line: 560, column: 15, scope: !1660)
!1684 = !DILocation(line: 560, column: 15, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !119, line: 560, column: 15)
!1686 = distinct !DILexicalBlock(scope: !1660, file: !119, line: 560, column: 15)
!1687 = !DILocation(line: 560, column: 15, scope: !1686)
!1688 = !DILocation(line: 561, column: 40, scope: !1660)
!1689 = !DILocation(line: 562, column: 13, scope: !1660)
!1690 = !DILocation(line: 563, column: 11, scope: !1445)
!1691 = !DILocation(line: 587, column: 36, scope: !1445)
!1692 = !DILocation(line: 588, column: 11, scope: !1445)
!1693 = !DILocalVariable(name: "m", scope: !1694, file: !119, line: 598, type: !141)
!1694 = distinct !DILexicalBlock(scope: !1445, file: !119, line: 596, column: 11)
!1695 = !DILocation(line: 598, column: 20, scope: !1694)
!1696 = !DILocalVariable(name: "printable", scope: !1694, file: !119, line: 600, type: !46)
!1697 = !DILocation(line: 600, column: 18, scope: !1694)
!1698 = !DILocation(line: 602, column: 17, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1694, file: !119, line: 602, column: 17)
!1700 = !DILocation(line: 602, column: 17, scope: !1694)
!1701 = !DILocation(line: 604, column: 19, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1699, file: !119, line: 603, column: 15)
!1703 = !DILocation(line: 605, column: 29, scope: !1702)
!1704 = !DILocation(line: 605, column: 41, scope: !1702)
!1705 = !DILocation(line: 605, column: 27, scope: !1702)
!1706 = !DILocation(line: 606, column: 15, scope: !1702)
!1707 = !DILocalVariable(name: "mbs", scope: !1708, file: !119, line: 609, type: !1709)
!1708 = distinct !DILexicalBlock(scope: !1699, file: !119, line: 608, column: 15)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !1710)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !1711)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !1712)
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1711, file: !217, line: 15, baseType: !30, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1711, file: !217, line: 20, baseType: !1715, size: 32, offset: 32)
!1715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1711, file: !217, line: 16, size: 32, elements: !1716)
!1716 = !{!1717, !1718}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1715, file: !217, line: 18, baseType: !14, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1715, file: !217, line: 19, baseType: !226, size: 32)
!1719 = !DILocation(line: 609, column: 27, scope: !1708)
!1720 = !DILocation(line: 609, column: 32, scope: !1708)
!1721 = !DILocation(line: 611, column: 19, scope: !1708)
!1722 = !DILocation(line: 612, column: 27, scope: !1708)
!1723 = !DILocation(line: 613, column: 21, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1708, file: !119, line: 613, column: 21)
!1725 = !DILocation(line: 613, column: 29, scope: !1724)
!1726 = !DILocation(line: 613, column: 21, scope: !1708)
!1727 = !DILocation(line: 614, column: 37, scope: !1724)
!1728 = !DILocation(line: 614, column: 29, scope: !1724)
!1729 = !DILocation(line: 614, column: 27, scope: !1724)
!1730 = !DILocation(line: 614, column: 19, scope: !1724)
!1731 = !DILocation(line: 616, column: 17, scope: !1708)
!1732 = !DILocalVariable(name: "w", scope: !1733, file: !119, line: 618, type: !1029)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !119, line: 617, column: 19)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !119, line: 616, column: 17)
!1735 = distinct !DILexicalBlock(scope: !1708, file: !119, line: 616, column: 17)
!1736 = !DILocation(line: 618, column: 30, scope: !1733)
!1737 = !DILocalVariable(name: "bytes", scope: !1733, file: !119, line: 619, type: !141)
!1738 = !DILocation(line: 619, column: 28, scope: !1733)
!1739 = !DILocation(line: 619, column: 51, scope: !1733)
!1740 = !DILocation(line: 619, column: 55, scope: !1733)
!1741 = !DILocation(line: 619, column: 59, scope: !1733)
!1742 = !DILocation(line: 619, column: 57, scope: !1733)
!1743 = !DILocation(line: 620, column: 46, scope: !1733)
!1744 = !DILocation(line: 620, column: 57, scope: !1733)
!1745 = !DILocation(line: 620, column: 61, scope: !1733)
!1746 = !DILocation(line: 620, column: 59, scope: !1733)
!1747 = !DILocation(line: 620, column: 54, scope: !1733)
!1748 = !DILocation(line: 619, column: 36, scope: !1733)
!1749 = !DILocation(line: 621, column: 25, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1733, file: !119, line: 621, column: 25)
!1751 = !DILocation(line: 621, column: 31, scope: !1750)
!1752 = !DILocation(line: 621, column: 25, scope: !1733)
!1753 = !DILocation(line: 622, column: 23, scope: !1750)
!1754 = !DILocation(line: 623, column: 30, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1750, file: !119, line: 623, column: 30)
!1756 = !DILocation(line: 623, column: 36, scope: !1755)
!1757 = !DILocation(line: 623, column: 30, scope: !1750)
!1758 = !DILocation(line: 625, column: 35, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1755, file: !119, line: 624, column: 23)
!1760 = !DILocation(line: 626, column: 25, scope: !1759)
!1761 = !DILocation(line: 628, column: 30, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1755, file: !119, line: 628, column: 30)
!1763 = !DILocation(line: 628, column: 36, scope: !1762)
!1764 = !DILocation(line: 628, column: 30, scope: !1755)
!1765 = !DILocation(line: 630, column: 35, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !119, line: 629, column: 23)
!1767 = !DILocation(line: 631, column: 25, scope: !1766)
!1768 = !DILocation(line: 631, column: 32, scope: !1766)
!1769 = !DILocation(line: 631, column: 36, scope: !1766)
!1770 = !DILocation(line: 631, column: 34, scope: !1766)
!1771 = !DILocation(line: 631, column: 40, scope: !1766)
!1772 = !DILocation(line: 631, column: 38, scope: !1766)
!1773 = !DILocation(line: 631, column: 48, scope: !1766)
!1774 = !DILocation(line: 631, column: 51, scope: !1766)
!1775 = !DILocation(line: 631, column: 55, scope: !1766)
!1776 = !DILocation(line: 631, column: 59, scope: !1766)
!1777 = !DILocation(line: 631, column: 57, scope: !1766)
!1778 = !DILocation(line: 0, scope: !1766)
!1779 = !DILocation(line: 632, column: 28, scope: !1766)
!1780 = distinct !{!1780, !1767, !1779, !392}
!1781 = !DILocation(line: 633, column: 25, scope: !1766)
!1782 = !DILocation(line: 645, column: 44, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !119, line: 645, column: 29)
!1784 = distinct !DILexicalBlock(scope: !1762, file: !119, line: 636, column: 23)
!1785 = !DILocation(line: 646, column: 29, scope: !1783)
!1786 = !DILocation(line: 646, column: 32, scope: !1783)
!1787 = !DILocation(line: 646, column: 46, scope: !1783)
!1788 = !DILocation(line: 645, column: 29, scope: !1784)
!1789 = !DILocalVariable(name: "j", scope: !1790, file: !119, line: 648, type: !141)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !119, line: 648, column: 29)
!1791 = distinct !DILexicalBlock(scope: !1783, file: !119, line: 647, column: 27)
!1792 = !DILocation(line: 648, column: 41, scope: !1790)
!1793 = !DILocation(line: 648, column: 34, scope: !1790)
!1794 = !DILocation(line: 648, column: 48, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1790, file: !119, line: 648, column: 29)
!1796 = !DILocation(line: 648, column: 52, scope: !1795)
!1797 = !DILocation(line: 648, column: 50, scope: !1795)
!1798 = !DILocation(line: 648, column: 29, scope: !1790)
!1799 = !DILocation(line: 649, column: 39, scope: !1795)
!1800 = !DILocation(line: 649, column: 43, scope: !1795)
!1801 = !DILocation(line: 649, column: 47, scope: !1795)
!1802 = !DILocation(line: 649, column: 45, scope: !1795)
!1803 = !DILocation(line: 649, column: 51, scope: !1795)
!1804 = !DILocation(line: 649, column: 49, scope: !1795)
!1805 = !DILocation(line: 649, column: 31, scope: !1795)
!1806 = !DILocation(line: 653, column: 35, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1795, file: !119, line: 650, column: 33)
!1808 = !DILocation(line: 654, column: 33, scope: !1807)
!1809 = !DILocation(line: 648, column: 60, scope: !1795)
!1810 = !DILocation(line: 648, column: 29, scope: !1795)
!1811 = distinct !{!1811, !1798, !1812, !392}
!1812 = !DILocation(line: 654, column: 33, scope: !1790)
!1813 = !DILocation(line: 655, column: 27, scope: !1791)
!1814 = !DILocation(line: 657, column: 43, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1784, file: !119, line: 657, column: 29)
!1816 = !DILocation(line: 657, column: 31, scope: !1815)
!1817 = !DILocation(line: 657, column: 29, scope: !1784)
!1818 = !DILocation(line: 658, column: 37, scope: !1815)
!1819 = !DILocation(line: 658, column: 27, scope: !1815)
!1820 = !DILocation(line: 659, column: 30, scope: !1784)
!1821 = !DILocation(line: 659, column: 27, scope: !1784)
!1822 = !DILocation(line: 664, column: 23, scope: !1733)
!1823 = !DILocation(line: 668, column: 40, scope: !1694)
!1824 = !DILocation(line: 668, column: 38, scope: !1694)
!1825 = !DILocation(line: 670, column: 21, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1694, file: !119, line: 670, column: 17)
!1827 = !DILocation(line: 670, column: 19, scope: !1826)
!1828 = !DILocation(line: 670, column: 23, scope: !1826)
!1829 = !DILocation(line: 670, column: 27, scope: !1826)
!1830 = !DILocation(line: 670, column: 45, scope: !1826)
!1831 = !DILocation(line: 670, column: 50, scope: !1826)
!1832 = !DILocation(line: 670, column: 17, scope: !1694)
!1833 = !DILocalVariable(name: "ilim", scope: !1834, file: !119, line: 674, type: !141)
!1834 = distinct !DILexicalBlock(scope: !1826, file: !119, line: 671, column: 15)
!1835 = !DILocation(line: 674, column: 24, scope: !1834)
!1836 = !DILocation(line: 674, column: 31, scope: !1834)
!1837 = !DILocation(line: 674, column: 35, scope: !1834)
!1838 = !DILocation(line: 674, column: 33, scope: !1834)
!1839 = !DILocation(line: 676, column: 17, scope: !1834)
!1840 = !DILocation(line: 678, column: 25, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !119, line: 678, column: 25)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !119, line: 677, column: 19)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !119, line: 676, column: 17)
!1844 = distinct !DILexicalBlock(scope: !1834, file: !119, line: 676, column: 17)
!1845 = !DILocation(line: 678, column: 43, scope: !1841)
!1846 = !DILocation(line: 678, column: 48, scope: !1841)
!1847 = !DILocation(line: 678, column: 25, scope: !1842)
!1848 = !DILocation(line: 680, column: 25, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1841, file: !119, line: 679, column: 23)
!1850 = !DILocation(line: 680, column: 25, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !119, line: 680, column: 25)
!1852 = distinct !DILexicalBlock(scope: !1849, file: !119, line: 680, column: 25)
!1853 = !DILocation(line: 680, column: 25, scope: !1852)
!1854 = !DILocation(line: 680, column: 25, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1852, file: !119, line: 680, column: 25)
!1856 = !DILocation(line: 680, column: 25, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1855, file: !119, line: 680, column: 25)
!1858 = !DILocation(line: 680, column: 25, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !119, line: 680, column: 25)
!1860 = distinct !DILexicalBlock(scope: !1857, file: !119, line: 680, column: 25)
!1861 = !DILocation(line: 680, column: 25, scope: !1860)
!1862 = !DILocation(line: 680, column: 25, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !119, line: 680, column: 25)
!1864 = distinct !DILexicalBlock(scope: !1857, file: !119, line: 680, column: 25)
!1865 = !DILocation(line: 680, column: 25, scope: !1864)
!1866 = !DILocation(line: 680, column: 25, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !119, line: 680, column: 25)
!1868 = distinct !DILexicalBlock(scope: !1857, file: !119, line: 680, column: 25)
!1869 = !DILocation(line: 680, column: 25, scope: !1868)
!1870 = !DILocation(line: 680, column: 25, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !119, line: 680, column: 25)
!1872 = distinct !DILexicalBlock(scope: !1852, file: !119, line: 680, column: 25)
!1873 = !DILocation(line: 680, column: 25, scope: !1872)
!1874 = !DILocation(line: 681, column: 25, scope: !1849)
!1875 = !DILocation(line: 681, column: 25, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !119, line: 681, column: 25)
!1877 = distinct !DILexicalBlock(scope: !1849, file: !119, line: 681, column: 25)
!1878 = !DILocation(line: 681, column: 25, scope: !1877)
!1879 = !DILocation(line: 682, column: 25, scope: !1849)
!1880 = !DILocation(line: 682, column: 25, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !119, line: 682, column: 25)
!1882 = distinct !DILexicalBlock(scope: !1849, file: !119, line: 682, column: 25)
!1883 = !DILocation(line: 682, column: 25, scope: !1882)
!1884 = !DILocation(line: 683, column: 36, scope: !1849)
!1885 = !DILocation(line: 683, column: 38, scope: !1849)
!1886 = !DILocation(line: 683, column: 33, scope: !1849)
!1887 = !DILocation(line: 683, column: 29, scope: !1849)
!1888 = !DILocation(line: 683, column: 27, scope: !1849)
!1889 = !DILocation(line: 684, column: 23, scope: !1849)
!1890 = !DILocation(line: 685, column: 30, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1841, file: !119, line: 685, column: 30)
!1892 = !DILocation(line: 685, column: 30, scope: !1841)
!1893 = !DILocation(line: 687, column: 25, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1891, file: !119, line: 686, column: 23)
!1895 = !DILocation(line: 687, column: 25, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !119, line: 687, column: 25)
!1897 = distinct !DILexicalBlock(scope: !1894, file: !119, line: 687, column: 25)
!1898 = !DILocation(line: 687, column: 25, scope: !1897)
!1899 = !DILocation(line: 688, column: 40, scope: !1894)
!1900 = !DILocation(line: 689, column: 23, scope: !1894)
!1901 = !DILocation(line: 690, column: 25, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1842, file: !119, line: 690, column: 25)
!1903 = !DILocation(line: 690, column: 33, scope: !1902)
!1904 = !DILocation(line: 690, column: 35, scope: !1902)
!1905 = !DILocation(line: 690, column: 30, scope: !1902)
!1906 = !DILocation(line: 690, column: 25, scope: !1842)
!1907 = !DILocation(line: 691, column: 23, scope: !1902)
!1908 = !DILocation(line: 692, column: 21, scope: !1842)
!1909 = !DILocation(line: 692, column: 21, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !119, line: 692, column: 21)
!1911 = distinct !DILexicalBlock(scope: !1842, file: !119, line: 692, column: 21)
!1912 = !DILocation(line: 692, column: 21, scope: !1911)
!1913 = !DILocation(line: 692, column: 21, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !119, line: 692, column: 21)
!1915 = !DILocation(line: 692, column: 21, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !119, line: 692, column: 21)
!1917 = distinct !DILexicalBlock(scope: !1914, file: !119, line: 692, column: 21)
!1918 = !DILocation(line: 692, column: 21, scope: !1917)
!1919 = !DILocation(line: 692, column: 21, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !119, line: 692, column: 21)
!1921 = distinct !DILexicalBlock(scope: !1914, file: !119, line: 692, column: 21)
!1922 = !DILocation(line: 692, column: 21, scope: !1921)
!1923 = !DILocation(line: 693, column: 21, scope: !1842)
!1924 = !DILocation(line: 693, column: 21, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !119, line: 693, column: 21)
!1926 = distinct !DILexicalBlock(scope: !1842, file: !119, line: 693, column: 21)
!1927 = !DILocation(line: 693, column: 21, scope: !1926)
!1928 = !DILocation(line: 694, column: 25, scope: !1842)
!1929 = !DILocation(line: 694, column: 29, scope: !1842)
!1930 = !DILocation(line: 694, column: 23, scope: !1842)
!1931 = !DILocation(line: 676, column: 17, scope: !1843)
!1932 = distinct !{!1932, !1933, !1934}
!1933 = !DILocation(line: 676, column: 17, scope: !1844)
!1934 = !DILocation(line: 695, column: 19, scope: !1844)
!1935 = !DILocation(line: 697, column: 17, scope: !1834)
!1936 = !DILocation(line: 700, column: 9, scope: !1445)
!1937 = !DILocation(line: 702, column: 16, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1395, file: !119, line: 702, column: 11)
!1939 = !DILocation(line: 702, column: 34, scope: !1938)
!1940 = !DILocation(line: 702, column: 37, scope: !1938)
!1941 = !DILocation(line: 702, column: 51, scope: !1938)
!1942 = !DILocation(line: 703, column: 15, scope: !1938)
!1943 = !DILocation(line: 703, column: 18, scope: !1938)
!1944 = !DILocation(line: 704, column: 14, scope: !1938)
!1945 = !DILocation(line: 704, column: 17, scope: !1938)
!1946 = !DILocation(line: 705, column: 14, scope: !1938)
!1947 = !DILocation(line: 705, column: 17, scope: !1938)
!1948 = !DILocation(line: 705, column: 33, scope: !1938)
!1949 = !DILocation(line: 705, column: 35, scope: !1938)
!1950 = !DILocation(line: 705, column: 51, scope: !1938)
!1951 = !DILocation(line: 705, column: 53, scope: !1938)
!1952 = !DILocation(line: 705, column: 47, scope: !1938)
!1953 = !DILocation(line: 705, column: 65, scope: !1938)
!1954 = !DILocation(line: 706, column: 11, scope: !1938)
!1955 = !DILocation(line: 706, column: 15, scope: !1938)
!1956 = !DILocation(line: 702, column: 11, scope: !1395)
!1957 = !DILocation(line: 707, column: 9, scope: !1938)
!1958 = !DILabel(scope: !1395, name: "store_escape", file: !119, line: 709)
!1959 = !DILocation(line: 709, column: 5, scope: !1395)
!1960 = !DILocation(line: 710, column: 7, scope: !1395)
!1961 = !DILocation(line: 710, column: 7, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !119, line: 710, column: 7)
!1963 = distinct !DILexicalBlock(scope: !1395, file: !119, line: 710, column: 7)
!1964 = !DILocation(line: 710, column: 7, scope: !1963)
!1965 = !DILocation(line: 710, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1963, file: !119, line: 710, column: 7)
!1967 = !DILocation(line: 710, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1966, file: !119, line: 710, column: 7)
!1969 = !DILocation(line: 710, column: 7, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !119, line: 710, column: 7)
!1971 = distinct !DILexicalBlock(scope: !1968, file: !119, line: 710, column: 7)
!1972 = !DILocation(line: 710, column: 7, scope: !1971)
!1973 = !DILocation(line: 710, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !119, line: 710, column: 7)
!1975 = distinct !DILexicalBlock(scope: !1968, file: !119, line: 710, column: 7)
!1976 = !DILocation(line: 710, column: 7, scope: !1975)
!1977 = !DILocation(line: 710, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !119, line: 710, column: 7)
!1979 = distinct !DILexicalBlock(scope: !1968, file: !119, line: 710, column: 7)
!1980 = !DILocation(line: 710, column: 7, scope: !1979)
!1981 = !DILocation(line: 710, column: 7, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !119, line: 710, column: 7)
!1983 = distinct !DILexicalBlock(scope: !1963, file: !119, line: 710, column: 7)
!1984 = !DILocation(line: 710, column: 7, scope: !1983)
!1985 = !DILabel(scope: !1395, name: "store_c", file: !119, line: 712)
!1986 = !DILocation(line: 712, column: 5, scope: !1395)
!1987 = !DILocation(line: 713, column: 7, scope: !1395)
!1988 = !DILocation(line: 713, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !119, line: 713, column: 7)
!1990 = distinct !DILexicalBlock(scope: !1395, file: !119, line: 713, column: 7)
!1991 = !DILocation(line: 713, column: 7, scope: !1990)
!1992 = !DILocation(line: 713, column: 7, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !119, line: 713, column: 7)
!1994 = !DILocation(line: 713, column: 7, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !119, line: 713, column: 7)
!1996 = distinct !DILexicalBlock(scope: !1993, file: !119, line: 713, column: 7)
!1997 = !DILocation(line: 713, column: 7, scope: !1996)
!1998 = !DILocation(line: 713, column: 7, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !119, line: 713, column: 7)
!2000 = distinct !DILexicalBlock(scope: !1993, file: !119, line: 713, column: 7)
!2001 = !DILocation(line: 713, column: 7, scope: !2000)
!2002 = !DILocation(line: 714, column: 7, scope: !1395)
!2003 = !DILocation(line: 714, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !119, line: 714, column: 7)
!2005 = distinct !DILexicalBlock(scope: !1395, file: !119, line: 714, column: 7)
!2006 = !DILocation(line: 714, column: 7, scope: !2005)
!2007 = !DILocation(line: 716, column: 13, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1395, file: !119, line: 716, column: 11)
!2009 = !DILocation(line: 716, column: 11, scope: !1395)
!2010 = !DILocation(line: 717, column: 38, scope: !2008)
!2011 = !DILocation(line: 717, column: 9, scope: !2008)
!2012 = !DILocation(line: 718, column: 5, scope: !1395)
!2013 = !DILocation(line: 395, column: 82, scope: !1384)
!2014 = !DILocation(line: 395, column: 3, scope: !1384)
!2015 = distinct !{!2015, !1393, !2016, !392}
!2016 = !DILocation(line: 718, column: 5, scope: !1380)
!2017 = !DILocation(line: 720, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1242, file: !119, line: 720, column: 7)
!2019 = !DILocation(line: 720, column: 11, scope: !2018)
!2020 = !DILocation(line: 720, column: 16, scope: !2018)
!2021 = !DILocation(line: 720, column: 19, scope: !2018)
!2022 = !DILocation(line: 720, column: 33, scope: !2018)
!2023 = !DILocation(line: 721, column: 7, scope: !2018)
!2024 = !DILocation(line: 721, column: 10, scope: !2018)
!2025 = !DILocation(line: 720, column: 7, scope: !1242)
!2026 = !DILocation(line: 722, column: 5, scope: !2018)
!2027 = !DILocation(line: 728, column: 7, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1242, file: !119, line: 728, column: 7)
!2029 = !DILocation(line: 728, column: 21, scope: !2028)
!2030 = !DILocation(line: 728, column: 51, scope: !2028)
!2031 = !DILocation(line: 728, column: 56, scope: !2028)
!2032 = !DILocation(line: 729, column: 7, scope: !2028)
!2033 = !DILocation(line: 729, column: 10, scope: !2028)
!2034 = !DILocation(line: 728, column: 7, scope: !1242)
!2035 = !DILocation(line: 731, column: 11, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !119, line: 731, column: 11)
!2037 = distinct !DILexicalBlock(scope: !2028, file: !119, line: 730, column: 5)
!2038 = !DILocation(line: 731, column: 11, scope: !2037)
!2039 = !DILocation(line: 732, column: 42, scope: !2036)
!2040 = !DILocation(line: 732, column: 50, scope: !2036)
!2041 = !DILocation(line: 732, column: 67, scope: !2036)
!2042 = !DILocation(line: 732, column: 72, scope: !2036)
!2043 = !DILocation(line: 734, column: 42, scope: !2036)
!2044 = !DILocation(line: 734, column: 49, scope: !2036)
!2045 = !DILocation(line: 735, column: 42, scope: !2036)
!2046 = !DILocation(line: 735, column: 54, scope: !2036)
!2047 = !DILocation(line: 732, column: 16, scope: !2036)
!2048 = !DILocation(line: 732, column: 9, scope: !2036)
!2049 = !DILocation(line: 736, column: 18, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2036, file: !119, line: 736, column: 16)
!2051 = !DILocation(line: 736, column: 29, scope: !2050)
!2052 = !DILocation(line: 736, column: 32, scope: !2050)
!2053 = !DILocation(line: 736, column: 16, scope: !2036)
!2054 = !DILocation(line: 739, column: 24, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2050, file: !119, line: 737, column: 9)
!2056 = !DILocation(line: 739, column: 22, scope: !2055)
!2057 = !DILocation(line: 740, column: 15, scope: !2055)
!2058 = !DILocation(line: 741, column: 11, scope: !2055)
!2059 = !DILocation(line: 743, column: 5, scope: !2037)
!2060 = !DILocation(line: 745, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1242, file: !119, line: 745, column: 7)
!2062 = !DILocation(line: 745, column: 20, scope: !2061)
!2063 = !DILocation(line: 745, column: 24, scope: !2061)
!2064 = !DILocation(line: 745, column: 7, scope: !1242)
!2065 = !DILocation(line: 746, column: 5, scope: !2061)
!2066 = !DILocation(line: 746, column: 13, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !119, line: 746, column: 5)
!2068 = distinct !DILexicalBlock(scope: !2061, file: !119, line: 746, column: 5)
!2069 = !DILocation(line: 746, column: 12, scope: !2067)
!2070 = !DILocation(line: 746, column: 5, scope: !2068)
!2071 = !DILocation(line: 747, column: 7, scope: !2067)
!2072 = !DILocation(line: 747, column: 7, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !119, line: 747, column: 7)
!2074 = distinct !DILexicalBlock(scope: !2067, file: !119, line: 747, column: 7)
!2075 = !DILocation(line: 747, column: 7, scope: !2074)
!2076 = !DILocation(line: 746, column: 39, scope: !2067)
!2077 = !DILocation(line: 746, column: 5, scope: !2067)
!2078 = distinct !{!2078, !2070, !2079, !392}
!2079 = !DILocation(line: 747, column: 7, scope: !2068)
!2080 = !DILocation(line: 749, column: 7, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !1242, file: !119, line: 749, column: 7)
!2082 = !DILocation(line: 749, column: 13, scope: !2081)
!2083 = !DILocation(line: 749, column: 11, scope: !2081)
!2084 = !DILocation(line: 749, column: 7, scope: !1242)
!2085 = !DILocation(line: 750, column: 5, scope: !2081)
!2086 = !DILocation(line: 750, column: 12, scope: !2081)
!2087 = !DILocation(line: 750, column: 17, scope: !2081)
!2088 = !DILocation(line: 751, column: 10, scope: !1242)
!2089 = !DILocation(line: 751, column: 3, scope: !1242)
!2090 = !DILabel(scope: !1242, name: "force_outer_quoting_style", file: !119, line: 753)
!2091 = !DILocation(line: 753, column: 2, scope: !1242)
!2092 = !DILocation(line: 756, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !1242, file: !119, line: 756, column: 7)
!2094 = !DILocation(line: 756, column: 21, scope: !2093)
!2095 = !DILocation(line: 756, column: 51, scope: !2093)
!2096 = !DILocation(line: 756, column: 54, scope: !2093)
!2097 = !DILocation(line: 756, column: 7, scope: !1242)
!2098 = !DILocation(line: 757, column: 19, scope: !2093)
!2099 = !DILocation(line: 757, column: 5, scope: !2093)
!2100 = !DILocation(line: 758, column: 36, scope: !1242)
!2101 = !DILocation(line: 758, column: 44, scope: !1242)
!2102 = !DILocation(line: 758, column: 56, scope: !1242)
!2103 = !DILocation(line: 758, column: 61, scope: !1242)
!2104 = !DILocation(line: 759, column: 36, scope: !1242)
!2105 = !DILocation(line: 760, column: 36, scope: !1242)
!2106 = !DILocation(line: 760, column: 42, scope: !1242)
!2107 = !DILocation(line: 761, column: 36, scope: !1242)
!2108 = !DILocation(line: 761, column: 48, scope: !1242)
!2109 = !DILocation(line: 758, column: 10, scope: !1242)
!2110 = !DILocation(line: 758, column: 3, scope: !1242)
!2111 = !DILocation(line: 762, column: 1, scope: !1242)
!2112 = !DILocalVariable(name: "msgid", arg: 1, scope: !172, file: !119, line: 197, type: !6)
!2113 = !DILocation(line: 197, column: 28, scope: !172)
!2114 = !DILocalVariable(name: "s", arg: 2, scope: !172, file: !119, line: 197, type: !121)
!2115 = !DILocation(line: 197, column: 54, scope: !172)
!2116 = !DILocalVariable(name: "translation", scope: !172, file: !119, line: 199, type: !6)
!2117 = !DILocation(line: 199, column: 15, scope: !172)
!2118 = !DILocation(line: 199, column: 29, scope: !172)
!2119 = !DILocation(line: 201, column: 7, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !172, file: !119, line: 201, column: 7)
!2121 = !DILocation(line: 201, column: 22, scope: !2120)
!2122 = !DILocation(line: 201, column: 19, scope: !2120)
!2123 = !DILocation(line: 201, column: 7, scope: !172)
!2124 = !DILocation(line: 202, column: 12, scope: !2120)
!2125 = !DILocation(line: 202, column: 5, scope: !2120)
!2126 = !DILocalVariable(name: "w", scope: !172, file: !119, line: 229, type: !1029)
!2127 = !DILocation(line: 229, column: 12, scope: !172)
!2128 = !DILocalVariable(name: "mbs", scope: !172, file: !119, line: 230, type: !1709)
!2129 = !DILocation(line: 230, column: 13, scope: !172)
!2130 = !DILocation(line: 230, column: 18, scope: !172)
!2131 = !DILocation(line: 231, column: 7, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !172, file: !119, line: 231, column: 7)
!2133 = !DILocation(line: 231, column: 40, scope: !2132)
!2134 = !DILocation(line: 231, column: 45, scope: !2132)
!2135 = !DILocation(line: 231, column: 48, scope: !2132)
!2136 = !DILocation(line: 231, column: 50, scope: !2132)
!2137 = !DILocation(line: 231, column: 7, scope: !172)
!2138 = !DILocation(line: 232, column: 18, scope: !2132)
!2139 = !DILocation(line: 232, column: 27, scope: !2132)
!2140 = !DILocation(line: 232, column: 12, scope: !2132)
!2141 = !DILocation(line: 232, column: 5, scope: !2132)
!2142 = !DILocation(line: 234, column: 11, scope: !172)
!2143 = !DILocation(line: 234, column: 13, scope: !172)
!2144 = !DILocation(line: 234, column: 3, scope: !172)
!2145 = !DILocation(line: 235, column: 1, scope: !172)
!2146 = distinct !DISubprogram(name: "quotearg_alloc", scope: !119, file: !119, line: 788, type: !2147, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!103, !6, !141, !1082}
!2149 = !DILocalVariable(name: "arg", arg: 1, scope: !2146, file: !119, line: 788, type: !6)
!2150 = !DILocation(line: 788, column: 29, scope: !2146)
!2151 = !DILocalVariable(name: "argsize", arg: 2, scope: !2146, file: !119, line: 788, type: !141)
!2152 = !DILocation(line: 788, column: 41, scope: !2146)
!2153 = !DILocalVariable(name: "o", arg: 3, scope: !2146, file: !119, line: 789, type: !1082)
!2154 = !DILocation(line: 789, column: 47, scope: !2146)
!2155 = !DILocation(line: 791, column: 30, scope: !2146)
!2156 = !DILocation(line: 791, column: 35, scope: !2146)
!2157 = !DILocation(line: 791, column: 50, scope: !2146)
!2158 = !DILocation(line: 791, column: 10, scope: !2146)
!2159 = !DILocation(line: 791, column: 3, scope: !2146)
!2160 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !119, file: !119, line: 801, type: !2161, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!103, !6, !141, !245, !1082}
!2163 = !DILocalVariable(name: "arg", arg: 1, scope: !2160, file: !119, line: 801, type: !6)
!2164 = !DILocation(line: 801, column: 33, scope: !2160)
!2165 = !DILocalVariable(name: "argsize", arg: 2, scope: !2160, file: !119, line: 801, type: !141)
!2166 = !DILocation(line: 801, column: 45, scope: !2160)
!2167 = !DILocalVariable(name: "size", arg: 3, scope: !2160, file: !119, line: 801, type: !245)
!2168 = !DILocation(line: 801, column: 62, scope: !2160)
!2169 = !DILocalVariable(name: "o", arg: 4, scope: !2160, file: !119, line: 802, type: !1082)
!2170 = !DILocation(line: 802, column: 51, scope: !2160)
!2171 = !DILocalVariable(name: "p", scope: !2160, file: !119, line: 804, type: !1082)
!2172 = !DILocation(line: 804, column: 33, scope: !2160)
!2173 = !DILocation(line: 804, column: 37, scope: !2160)
!2174 = !DILocation(line: 804, column: 41, scope: !2160)
!2175 = !DILocalVariable(name: "saved_errno", scope: !2160, file: !119, line: 805, type: !30)
!2176 = !DILocation(line: 805, column: 7, scope: !2160)
!2177 = !DILocation(line: 805, column: 21, scope: !2160)
!2178 = !DILocalVariable(name: "flags", scope: !2160, file: !119, line: 807, type: !30)
!2179 = !DILocation(line: 807, column: 7, scope: !2160)
!2180 = !DILocation(line: 807, column: 15, scope: !2160)
!2181 = !DILocation(line: 807, column: 18, scope: !2160)
!2182 = !DILocation(line: 807, column: 27, scope: !2160)
!2183 = !DILocation(line: 807, column: 24, scope: !2160)
!2184 = !DILocalVariable(name: "bufsize", scope: !2160, file: !119, line: 808, type: !141)
!2185 = !DILocation(line: 808, column: 10, scope: !2160)
!2186 = !DILocation(line: 808, column: 55, scope: !2160)
!2187 = !DILocation(line: 808, column: 60, scope: !2160)
!2188 = !DILocation(line: 808, column: 69, scope: !2160)
!2189 = !DILocation(line: 808, column: 72, scope: !2160)
!2190 = !DILocation(line: 809, column: 46, scope: !2160)
!2191 = !DILocation(line: 809, column: 53, scope: !2160)
!2192 = !DILocation(line: 809, column: 56, scope: !2160)
!2193 = !DILocation(line: 810, column: 46, scope: !2160)
!2194 = !DILocation(line: 810, column: 49, scope: !2160)
!2195 = !DILocation(line: 811, column: 46, scope: !2160)
!2196 = !DILocation(line: 811, column: 49, scope: !2160)
!2197 = !DILocation(line: 808, column: 20, scope: !2160)
!2198 = !DILocation(line: 811, column: 62, scope: !2160)
!2199 = !DILocalVariable(name: "buf", scope: !2160, file: !119, line: 812, type: !103)
!2200 = !DILocation(line: 812, column: 9, scope: !2160)
!2201 = !DILocation(line: 812, column: 27, scope: !2160)
!2202 = !DILocation(line: 812, column: 15, scope: !2160)
!2203 = !DILocation(line: 813, column: 29, scope: !2160)
!2204 = !DILocation(line: 813, column: 34, scope: !2160)
!2205 = !DILocation(line: 813, column: 43, scope: !2160)
!2206 = !DILocation(line: 813, column: 48, scope: !2160)
!2207 = !DILocation(line: 813, column: 57, scope: !2160)
!2208 = !DILocation(line: 813, column: 60, scope: !2160)
!2209 = !DILocation(line: 813, column: 67, scope: !2160)
!2210 = !DILocation(line: 814, column: 29, scope: !2160)
!2211 = !DILocation(line: 814, column: 32, scope: !2160)
!2212 = !DILocation(line: 815, column: 29, scope: !2160)
!2213 = !DILocation(line: 815, column: 32, scope: !2160)
!2214 = !DILocation(line: 815, column: 44, scope: !2160)
!2215 = !DILocation(line: 815, column: 47, scope: !2160)
!2216 = !DILocation(line: 813, column: 3, scope: !2160)
!2217 = !DILocation(line: 816, column: 11, scope: !2160)
!2218 = !DILocation(line: 816, column: 3, scope: !2160)
!2219 = !DILocation(line: 816, column: 9, scope: !2160)
!2220 = !DILocation(line: 817, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2160, file: !119, line: 817, column: 7)
!2222 = !DILocation(line: 817, column: 7, scope: !2160)
!2223 = !DILocation(line: 818, column: 13, scope: !2221)
!2224 = !DILocation(line: 818, column: 21, scope: !2221)
!2225 = !DILocation(line: 818, column: 6, scope: !2221)
!2226 = !DILocation(line: 818, column: 11, scope: !2221)
!2227 = !DILocation(line: 818, column: 5, scope: !2221)
!2228 = !DILocation(line: 819, column: 10, scope: !2160)
!2229 = !DILocation(line: 819, column: 3, scope: !2160)
!2230 = distinct !DISubprogram(name: "quotearg_free", scope: !119, file: !119, line: 837, type: !79, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2231 = !DILocalVariable(name: "sv", scope: !2230, file: !119, line: 839, type: !180)
!2232 = !DILocation(line: 839, column: 19, scope: !2230)
!2233 = !DILocation(line: 839, column: 24, scope: !2230)
!2234 = !DILocalVariable(name: "i", scope: !2235, file: !119, line: 840, type: !30)
!2235 = distinct !DILexicalBlock(scope: !2230, file: !119, line: 840, column: 3)
!2236 = !DILocation(line: 840, column: 12, scope: !2235)
!2237 = !DILocation(line: 840, column: 8, scope: !2235)
!2238 = !DILocation(line: 840, column: 19, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2235, file: !119, line: 840, column: 3)
!2240 = !DILocation(line: 840, column: 23, scope: !2239)
!2241 = !DILocation(line: 840, column: 21, scope: !2239)
!2242 = !DILocation(line: 840, column: 3, scope: !2235)
!2243 = !DILocation(line: 841, column: 11, scope: !2239)
!2244 = !DILocation(line: 841, column: 14, scope: !2239)
!2245 = !DILocation(line: 841, column: 17, scope: !2239)
!2246 = !DILocation(line: 841, column: 5, scope: !2239)
!2247 = !DILocation(line: 840, column: 32, scope: !2239)
!2248 = !DILocation(line: 840, column: 3, scope: !2239)
!2249 = distinct !{!2249, !2242, !2250, !392}
!2250 = !DILocation(line: 841, column: 20, scope: !2235)
!2251 = !DILocation(line: 842, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2230, file: !119, line: 842, column: 7)
!2253 = !DILocation(line: 842, column: 13, scope: !2252)
!2254 = !DILocation(line: 842, column: 17, scope: !2252)
!2255 = !DILocation(line: 842, column: 7, scope: !2230)
!2256 = !DILocation(line: 844, column: 13, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2252, file: !119, line: 843, column: 5)
!2258 = !DILocation(line: 844, column: 19, scope: !2257)
!2259 = !DILocation(line: 844, column: 7, scope: !2257)
!2260 = !DILocation(line: 845, column: 21, scope: !2257)
!2261 = !DILocation(line: 846, column: 20, scope: !2257)
!2262 = !DILocation(line: 847, column: 5, scope: !2257)
!2263 = !DILocation(line: 848, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2230, file: !119, line: 848, column: 7)
!2265 = !DILocation(line: 848, column: 10, scope: !2264)
!2266 = !DILocation(line: 848, column: 7, scope: !2230)
!2267 = !DILocation(line: 850, column: 13, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2264, file: !119, line: 849, column: 5)
!2269 = !DILocation(line: 850, column: 7, scope: !2268)
!2270 = !DILocation(line: 851, column: 15, scope: !2268)
!2271 = !DILocation(line: 852, column: 5, scope: !2268)
!2272 = !DILocation(line: 853, column: 10, scope: !2230)
!2273 = !DILocation(line: 854, column: 1, scope: !2230)
!2274 = distinct !DISubprogram(name: "quotearg_n", scope: !119, file: !119, line: 919, type: !2275, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!103, !30, !6}
!2277 = !DILocalVariable(name: "n", arg: 1, scope: !2274, file: !119, line: 919, type: !30)
!2278 = !DILocation(line: 919, column: 17, scope: !2274)
!2279 = !DILocalVariable(name: "arg", arg: 2, scope: !2274, file: !119, line: 919, type: !6)
!2280 = !DILocation(line: 919, column: 32, scope: !2274)
!2281 = !DILocation(line: 921, column: 30, scope: !2274)
!2282 = !DILocation(line: 921, column: 33, scope: !2274)
!2283 = !DILocation(line: 921, column: 10, scope: !2274)
!2284 = !DILocation(line: 921, column: 3, scope: !2274)
!2285 = distinct !DISubprogram(name: "quotearg_n_options", scope: !119, file: !119, line: 866, type: !2286, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!103, !30, !6, !141, !1082}
!2288 = !DILocalVariable(name: "n", arg: 1, scope: !2285, file: !119, line: 866, type: !30)
!2289 = !DILocation(line: 866, column: 25, scope: !2285)
!2290 = !DILocalVariable(name: "arg", arg: 2, scope: !2285, file: !119, line: 866, type: !6)
!2291 = !DILocation(line: 866, column: 40, scope: !2285)
!2292 = !DILocalVariable(name: "argsize", arg: 3, scope: !2285, file: !119, line: 866, type: !141)
!2293 = !DILocation(line: 866, column: 52, scope: !2285)
!2294 = !DILocalVariable(name: "options", arg: 4, scope: !2285, file: !119, line: 867, type: !1082)
!2295 = !DILocation(line: 867, column: 51, scope: !2285)
!2296 = !DILocalVariable(name: "saved_errno", scope: !2285, file: !119, line: 869, type: !30)
!2297 = !DILocation(line: 869, column: 7, scope: !2285)
!2298 = !DILocation(line: 869, column: 21, scope: !2285)
!2299 = !DILocalVariable(name: "sv", scope: !2285, file: !119, line: 871, type: !180)
!2300 = !DILocation(line: 871, column: 19, scope: !2285)
!2301 = !DILocation(line: 871, column: 24, scope: !2285)
!2302 = !DILocalVariable(name: "nslots_max", scope: !2285, file: !119, line: 873, type: !30)
!2303 = !DILocation(line: 873, column: 7, scope: !2285)
!2304 = !DILocation(line: 874, column: 15, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2285, file: !119, line: 874, column: 7)
!2306 = !DILocation(line: 874, column: 12, scope: !2305)
!2307 = !DILocation(line: 874, column: 17, scope: !2305)
!2308 = !DILocation(line: 874, column: 20, scope: !2305)
!2309 = !DILocation(line: 874, column: 24, scope: !2305)
!2310 = !DILocation(line: 874, column: 22, scope: !2305)
!2311 = !DILocation(line: 874, column: 7, scope: !2285)
!2312 = !DILocation(line: 875, column: 5, scope: !2305)
!2313 = !DILocation(line: 877, column: 7, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2285, file: !119, line: 877, column: 7)
!2315 = !DILocation(line: 877, column: 17, scope: !2314)
!2316 = !DILocation(line: 877, column: 14, scope: !2314)
!2317 = !DILocation(line: 877, column: 7, scope: !2285)
!2318 = !DILocalVariable(name: "preallocated", scope: !2319, file: !119, line: 879, type: !46)
!2319 = distinct !DILexicalBlock(scope: !2314, file: !119, line: 878, column: 5)
!2320 = !DILocation(line: 879, column: 12, scope: !2319)
!2321 = !DILocation(line: 879, column: 28, scope: !2319)
!2322 = !DILocation(line: 879, column: 31, scope: !2319)
!2323 = !DILocalVariable(name: "new_nslots", scope: !2319, file: !119, line: 880, type: !253)
!2324 = !DILocation(line: 880, column: 13, scope: !2319)
!2325 = !DILocation(line: 880, column: 26, scope: !2319)
!2326 = !DILocation(line: 882, column: 31, scope: !2319)
!2327 = !DILocation(line: 882, column: 53, scope: !2319)
!2328 = !DILocation(line: 883, column: 31, scope: !2319)
!2329 = !DILocation(line: 883, column: 35, scope: !2319)
!2330 = !DILocation(line: 883, column: 33, scope: !2319)
!2331 = !DILocation(line: 883, column: 42, scope: !2319)
!2332 = !DILocation(line: 883, column: 47, scope: !2319)
!2333 = !DILocation(line: 882, column: 22, scope: !2319)
!2334 = !DILocation(line: 882, column: 20, scope: !2319)
!2335 = !DILocation(line: 882, column: 15, scope: !2319)
!2336 = !DILocation(line: 884, column: 11, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2319, file: !119, line: 884, column: 11)
!2338 = !DILocation(line: 884, column: 11, scope: !2319)
!2339 = !DILocation(line: 885, column: 10, scope: !2337)
!2340 = !DILocation(line: 885, column: 15, scope: !2337)
!2341 = !DILocation(line: 885, column: 9, scope: !2337)
!2342 = !DILocation(line: 886, column: 15, scope: !2319)
!2343 = !DILocation(line: 886, column: 20, scope: !2319)
!2344 = !DILocation(line: 886, column: 18, scope: !2319)
!2345 = !DILocation(line: 886, column: 7, scope: !2319)
!2346 = !DILocation(line: 886, column: 32, scope: !2319)
!2347 = !DILocation(line: 886, column: 45, scope: !2319)
!2348 = !DILocation(line: 886, column: 43, scope: !2319)
!2349 = !DILocation(line: 886, column: 53, scope: !2319)
!2350 = !DILocation(line: 887, column: 16, scope: !2319)
!2351 = !DILocation(line: 887, column: 14, scope: !2319)
!2352 = !DILocation(line: 888, column: 5, scope: !2319)
!2353 = !DILocalVariable(name: "size", scope: !2354, file: !119, line: 891, type: !141)
!2354 = distinct !DILexicalBlock(scope: !2285, file: !119, line: 890, column: 3)
!2355 = !DILocation(line: 891, column: 12, scope: !2354)
!2356 = !DILocation(line: 891, column: 19, scope: !2354)
!2357 = !DILocation(line: 891, column: 22, scope: !2354)
!2358 = !DILocation(line: 891, column: 25, scope: !2354)
!2359 = !DILocalVariable(name: "val", scope: !2354, file: !119, line: 892, type: !103)
!2360 = !DILocation(line: 892, column: 11, scope: !2354)
!2361 = !DILocation(line: 892, column: 17, scope: !2354)
!2362 = !DILocation(line: 892, column: 20, scope: !2354)
!2363 = !DILocation(line: 892, column: 23, scope: !2354)
!2364 = !DILocalVariable(name: "flags", scope: !2354, file: !119, line: 894, type: !30)
!2365 = !DILocation(line: 894, column: 9, scope: !2354)
!2366 = !DILocation(line: 894, column: 17, scope: !2354)
!2367 = !DILocation(line: 894, column: 26, scope: !2354)
!2368 = !DILocation(line: 894, column: 32, scope: !2354)
!2369 = !DILocalVariable(name: "qsize", scope: !2354, file: !119, line: 895, type: !141)
!2370 = !DILocation(line: 895, column: 12, scope: !2354)
!2371 = !DILocation(line: 895, column: 46, scope: !2354)
!2372 = !DILocation(line: 895, column: 51, scope: !2354)
!2373 = !DILocation(line: 895, column: 57, scope: !2354)
!2374 = !DILocation(line: 895, column: 62, scope: !2354)
!2375 = !DILocation(line: 896, column: 46, scope: !2354)
!2376 = !DILocation(line: 896, column: 55, scope: !2354)
!2377 = !DILocation(line: 896, column: 62, scope: !2354)
!2378 = !DILocation(line: 897, column: 46, scope: !2354)
!2379 = !DILocation(line: 897, column: 55, scope: !2354)
!2380 = !DILocation(line: 898, column: 46, scope: !2354)
!2381 = !DILocation(line: 898, column: 55, scope: !2354)
!2382 = !DILocation(line: 899, column: 46, scope: !2354)
!2383 = !DILocation(line: 899, column: 55, scope: !2354)
!2384 = !DILocation(line: 895, column: 20, scope: !2354)
!2385 = !DILocation(line: 901, column: 9, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2354, file: !119, line: 901, column: 9)
!2387 = !DILocation(line: 901, column: 17, scope: !2386)
!2388 = !DILocation(line: 901, column: 14, scope: !2386)
!2389 = !DILocation(line: 901, column: 9, scope: !2354)
!2390 = !DILocation(line: 903, column: 29, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2386, file: !119, line: 902, column: 7)
!2392 = !DILocation(line: 903, column: 35, scope: !2391)
!2393 = !DILocation(line: 903, column: 27, scope: !2391)
!2394 = !DILocation(line: 903, column: 9, scope: !2391)
!2395 = !DILocation(line: 903, column: 12, scope: !2391)
!2396 = !DILocation(line: 903, column: 15, scope: !2391)
!2397 = !DILocation(line: 903, column: 20, scope: !2391)
!2398 = !DILocation(line: 904, column: 13, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2391, file: !119, line: 904, column: 13)
!2400 = !DILocation(line: 904, column: 17, scope: !2399)
!2401 = !DILocation(line: 904, column: 13, scope: !2391)
!2402 = !DILocation(line: 905, column: 17, scope: !2399)
!2403 = !DILocation(line: 905, column: 11, scope: !2399)
!2404 = !DILocation(line: 906, column: 39, scope: !2391)
!2405 = !DILocation(line: 906, column: 27, scope: !2391)
!2406 = !DILocation(line: 906, column: 25, scope: !2391)
!2407 = !DILocation(line: 906, column: 9, scope: !2391)
!2408 = !DILocation(line: 906, column: 12, scope: !2391)
!2409 = !DILocation(line: 906, column: 15, scope: !2391)
!2410 = !DILocation(line: 906, column: 19, scope: !2391)
!2411 = !DILocation(line: 907, column: 35, scope: !2391)
!2412 = !DILocation(line: 907, column: 40, scope: !2391)
!2413 = !DILocation(line: 907, column: 46, scope: !2391)
!2414 = !DILocation(line: 907, column: 51, scope: !2391)
!2415 = !DILocation(line: 907, column: 60, scope: !2391)
!2416 = !DILocation(line: 907, column: 69, scope: !2391)
!2417 = !DILocation(line: 908, column: 35, scope: !2391)
!2418 = !DILocation(line: 908, column: 42, scope: !2391)
!2419 = !DILocation(line: 908, column: 51, scope: !2391)
!2420 = !DILocation(line: 909, column: 35, scope: !2391)
!2421 = !DILocation(line: 909, column: 44, scope: !2391)
!2422 = !DILocation(line: 910, column: 35, scope: !2391)
!2423 = !DILocation(line: 910, column: 44, scope: !2391)
!2424 = !DILocation(line: 907, column: 9, scope: !2391)
!2425 = !DILocation(line: 911, column: 7, scope: !2391)
!2426 = !DILocation(line: 913, column: 13, scope: !2354)
!2427 = !DILocation(line: 913, column: 5, scope: !2354)
!2428 = !DILocation(line: 913, column: 11, scope: !2354)
!2429 = !DILocation(line: 914, column: 12, scope: !2354)
!2430 = !DILocation(line: 914, column: 5, scope: !2354)
!2431 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !119, file: !119, line: 925, type: !2432, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!103, !30, !6, !141}
!2434 = !DILocalVariable(name: "n", arg: 1, scope: !2431, file: !119, line: 925, type: !30)
!2435 = !DILocation(line: 925, column: 21, scope: !2431)
!2436 = !DILocalVariable(name: "arg", arg: 2, scope: !2431, file: !119, line: 925, type: !6)
!2437 = !DILocation(line: 925, column: 36, scope: !2431)
!2438 = !DILocalVariable(name: "argsize", arg: 3, scope: !2431, file: !119, line: 925, type: !141)
!2439 = !DILocation(line: 925, column: 48, scope: !2431)
!2440 = !DILocation(line: 927, column: 30, scope: !2431)
!2441 = !DILocation(line: 927, column: 33, scope: !2431)
!2442 = !DILocation(line: 927, column: 38, scope: !2431)
!2443 = !DILocation(line: 927, column: 10, scope: !2431)
!2444 = !DILocation(line: 927, column: 3, scope: !2431)
!2445 = distinct !DISubprogram(name: "quotearg", scope: !119, file: !119, line: 931, type: !2446, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!103, !6}
!2448 = !DILocalVariable(name: "arg", arg: 1, scope: !2445, file: !119, line: 931, type: !6)
!2449 = !DILocation(line: 931, column: 23, scope: !2445)
!2450 = !DILocation(line: 933, column: 25, scope: !2445)
!2451 = !DILocation(line: 933, column: 10, scope: !2445)
!2452 = !DILocation(line: 933, column: 3, scope: !2445)
!2453 = distinct !DISubprogram(name: "quotearg_mem", scope: !119, file: !119, line: 937, type: !2454, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!103, !6, !141}
!2456 = !DILocalVariable(name: "arg", arg: 1, scope: !2453, file: !119, line: 937, type: !6)
!2457 = !DILocation(line: 937, column: 27, scope: !2453)
!2458 = !DILocalVariable(name: "argsize", arg: 2, scope: !2453, file: !119, line: 937, type: !141)
!2459 = !DILocation(line: 937, column: 39, scope: !2453)
!2460 = !DILocation(line: 939, column: 29, scope: !2453)
!2461 = !DILocation(line: 939, column: 34, scope: !2453)
!2462 = !DILocation(line: 939, column: 10, scope: !2453)
!2463 = !DILocation(line: 939, column: 3, scope: !2453)
!2464 = distinct !DISubprogram(name: "quotearg_n_style", scope: !119, file: !119, line: 943, type: !2465, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!103, !30, !121, !6}
!2467 = !DILocalVariable(name: "n", arg: 1, scope: !2464, file: !119, line: 943, type: !30)
!2468 = !DILocation(line: 943, column: 23, scope: !2464)
!2469 = !DILocalVariable(name: "s", arg: 2, scope: !2464, file: !119, line: 943, type: !121)
!2470 = !DILocation(line: 943, column: 45, scope: !2464)
!2471 = !DILocalVariable(name: "arg", arg: 3, scope: !2464, file: !119, line: 943, type: !6)
!2472 = !DILocation(line: 943, column: 60, scope: !2464)
!2473 = !DILocalVariable(name: "o", scope: !2464, file: !119, line: 945, type: !1083)
!2474 = !DILocation(line: 945, column: 32, scope: !2464)
!2475 = !DILocation(line: 945, column: 64, scope: !2464)
!2476 = !DILocation(line: 945, column: 36, scope: !2464)
!2477 = !DILocation(line: 946, column: 30, scope: !2464)
!2478 = !DILocation(line: 946, column: 33, scope: !2464)
!2479 = !DILocation(line: 946, column: 10, scope: !2464)
!2480 = !DILocation(line: 946, column: 3, scope: !2464)
!2481 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !119, file: !119, line: 183, type: !2482, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!153, !121}
!2484 = !DILocalVariable(name: "style", arg: 1, scope: !2481, file: !119, line: 183, type: !121)
!2485 = !DILocation(line: 183, column: 48, scope: !2481)
!2486 = !DILocalVariable(name: "o", scope: !2481, file: !119, line: 185, type: !153)
!2487 = !DILocation(line: 185, column: 26, scope: !2481)
!2488 = !DILocation(line: 186, column: 7, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2481, file: !119, line: 186, column: 7)
!2490 = !DILocation(line: 186, column: 13, scope: !2489)
!2491 = !DILocation(line: 186, column: 7, scope: !2481)
!2492 = !DILocation(line: 187, column: 5, scope: !2489)
!2493 = !DILocation(line: 188, column: 13, scope: !2481)
!2494 = !DILocation(line: 188, column: 5, scope: !2481)
!2495 = !DILocation(line: 188, column: 11, scope: !2481)
!2496 = !DILocation(line: 189, column: 3, scope: !2481)
!2497 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !119, file: !119, line: 950, type: !2498, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!103, !30, !121, !6, !141}
!2500 = !DILocalVariable(name: "n", arg: 1, scope: !2497, file: !119, line: 950, type: !30)
!2501 = !DILocation(line: 950, column: 27, scope: !2497)
!2502 = !DILocalVariable(name: "s", arg: 2, scope: !2497, file: !119, line: 950, type: !121)
!2503 = !DILocation(line: 950, column: 49, scope: !2497)
!2504 = !DILocalVariable(name: "arg", arg: 3, scope: !2497, file: !119, line: 951, type: !6)
!2505 = !DILocation(line: 951, column: 35, scope: !2497)
!2506 = !DILocalVariable(name: "argsize", arg: 4, scope: !2497, file: !119, line: 951, type: !141)
!2507 = !DILocation(line: 951, column: 47, scope: !2497)
!2508 = !DILocalVariable(name: "o", scope: !2497, file: !119, line: 953, type: !1083)
!2509 = !DILocation(line: 953, column: 32, scope: !2497)
!2510 = !DILocation(line: 953, column: 64, scope: !2497)
!2511 = !DILocation(line: 953, column: 36, scope: !2497)
!2512 = !DILocation(line: 954, column: 30, scope: !2497)
!2513 = !DILocation(line: 954, column: 33, scope: !2497)
!2514 = !DILocation(line: 954, column: 38, scope: !2497)
!2515 = !DILocation(line: 954, column: 10, scope: !2497)
!2516 = !DILocation(line: 954, column: 3, scope: !2497)
!2517 = distinct !DISubprogram(name: "quotearg_style", scope: !119, file: !119, line: 958, type: !2518, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!103, !121, !6}
!2520 = !DILocalVariable(name: "s", arg: 1, scope: !2517, file: !119, line: 958, type: !121)
!2521 = !DILocation(line: 958, column: 36, scope: !2517)
!2522 = !DILocalVariable(name: "arg", arg: 2, scope: !2517, file: !119, line: 958, type: !6)
!2523 = !DILocation(line: 958, column: 51, scope: !2517)
!2524 = !DILocation(line: 960, column: 31, scope: !2517)
!2525 = !DILocation(line: 960, column: 34, scope: !2517)
!2526 = !DILocation(line: 960, column: 10, scope: !2517)
!2527 = !DILocation(line: 960, column: 3, scope: !2517)
!2528 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !119, file: !119, line: 964, type: !2529, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!103, !121, !6, !141}
!2531 = !DILocalVariable(name: "s", arg: 1, scope: !2528, file: !119, line: 964, type: !121)
!2532 = !DILocation(line: 964, column: 40, scope: !2528)
!2533 = !DILocalVariable(name: "arg", arg: 2, scope: !2528, file: !119, line: 964, type: !6)
!2534 = !DILocation(line: 964, column: 55, scope: !2528)
!2535 = !DILocalVariable(name: "argsize", arg: 3, scope: !2528, file: !119, line: 964, type: !141)
!2536 = !DILocation(line: 964, column: 67, scope: !2528)
!2537 = !DILocation(line: 966, column: 35, scope: !2528)
!2538 = !DILocation(line: 966, column: 38, scope: !2528)
!2539 = !DILocation(line: 966, column: 43, scope: !2528)
!2540 = !DILocation(line: 966, column: 10, scope: !2528)
!2541 = !DILocation(line: 966, column: 3, scope: !2528)
!2542 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !119, file: !119, line: 970, type: !2543, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!103, !6, !141, !8}
!2545 = !DILocalVariable(name: "arg", arg: 1, scope: !2542, file: !119, line: 970, type: !6)
!2546 = !DILocation(line: 970, column: 32, scope: !2542)
!2547 = !DILocalVariable(name: "argsize", arg: 2, scope: !2542, file: !119, line: 970, type: !141)
!2548 = !DILocation(line: 970, column: 44, scope: !2542)
!2549 = !DILocalVariable(name: "ch", arg: 3, scope: !2542, file: !119, line: 970, type: !8)
!2550 = !DILocation(line: 970, column: 58, scope: !2542)
!2551 = !DILocalVariable(name: "options", scope: !2542, file: !119, line: 972, type: !153)
!2552 = !DILocation(line: 972, column: 26, scope: !2542)
!2553 = !DILocation(line: 973, column: 13, scope: !2542)
!2554 = !DILocation(line: 974, column: 31, scope: !2542)
!2555 = !DILocation(line: 974, column: 3, scope: !2542)
!2556 = !DILocation(line: 975, column: 33, scope: !2542)
!2557 = !DILocation(line: 975, column: 38, scope: !2542)
!2558 = !DILocation(line: 975, column: 10, scope: !2542)
!2559 = !DILocation(line: 975, column: 3, scope: !2542)
!2560 = distinct !DISubprogram(name: "quotearg_char", scope: !119, file: !119, line: 979, type: !2561, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!103, !6, !8}
!2563 = !DILocalVariable(name: "arg", arg: 1, scope: !2560, file: !119, line: 979, type: !6)
!2564 = !DILocation(line: 979, column: 28, scope: !2560)
!2565 = !DILocalVariable(name: "ch", arg: 2, scope: !2560, file: !119, line: 979, type: !8)
!2566 = !DILocation(line: 979, column: 38, scope: !2560)
!2567 = !DILocation(line: 981, column: 29, scope: !2560)
!2568 = !DILocation(line: 981, column: 44, scope: !2560)
!2569 = !DILocation(line: 981, column: 10, scope: !2560)
!2570 = !DILocation(line: 981, column: 3, scope: !2560)
!2571 = distinct !DISubprogram(name: "quotearg_colon", scope: !119, file: !119, line: 985, type: !2446, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2572 = !DILocalVariable(name: "arg", arg: 1, scope: !2571, file: !119, line: 985, type: !6)
!2573 = !DILocation(line: 985, column: 29, scope: !2571)
!2574 = !DILocation(line: 987, column: 25, scope: !2571)
!2575 = !DILocation(line: 987, column: 10, scope: !2571)
!2576 = !DILocation(line: 987, column: 3, scope: !2571)
!2577 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !119, file: !119, line: 991, type: !2454, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2578 = !DILocalVariable(name: "arg", arg: 1, scope: !2577, file: !119, line: 991, type: !6)
!2579 = !DILocation(line: 991, column: 33, scope: !2577)
!2580 = !DILocalVariable(name: "argsize", arg: 2, scope: !2577, file: !119, line: 991, type: !141)
!2581 = !DILocation(line: 991, column: 45, scope: !2577)
!2582 = !DILocation(line: 993, column: 29, scope: !2577)
!2583 = !DILocation(line: 993, column: 34, scope: !2577)
!2584 = !DILocation(line: 993, column: 10, scope: !2577)
!2585 = !DILocation(line: 993, column: 3, scope: !2577)
!2586 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !119, file: !119, line: 997, type: !2465, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2587 = !DILocalVariable(name: "n", arg: 1, scope: !2586, file: !119, line: 997, type: !30)
!2588 = !DILocation(line: 997, column: 29, scope: !2586)
!2589 = !DILocalVariable(name: "s", arg: 2, scope: !2586, file: !119, line: 997, type: !121)
!2590 = !DILocation(line: 997, column: 51, scope: !2586)
!2591 = !DILocalVariable(name: "arg", arg: 3, scope: !2586, file: !119, line: 997, type: !6)
!2592 = !DILocation(line: 997, column: 66, scope: !2586)
!2593 = !DILocalVariable(name: "options", scope: !2586, file: !119, line: 999, type: !153)
!2594 = !DILocation(line: 999, column: 26, scope: !2586)
!2595 = !DILocation(line: 1000, column: 41, scope: !2586)
!2596 = !DILocation(line: 1000, column: 13, scope: !2586)
!2597 = !DILocation(line: 1001, column: 3, scope: !2586)
!2598 = !DILocation(line: 1002, column: 30, scope: !2586)
!2599 = !DILocation(line: 1002, column: 33, scope: !2586)
!2600 = !DILocation(line: 1002, column: 10, scope: !2586)
!2601 = !DILocation(line: 1002, column: 3, scope: !2586)
!2602 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !119, file: !119, line: 1006, type: !2603, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!103, !30, !6, !6, !6}
!2605 = !DILocalVariable(name: "n", arg: 1, scope: !2602, file: !119, line: 1006, type: !30)
!2606 = !DILocation(line: 1006, column: 24, scope: !2602)
!2607 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2602, file: !119, line: 1006, type: !6)
!2608 = !DILocation(line: 1006, column: 39, scope: !2602)
!2609 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2602, file: !119, line: 1007, type: !6)
!2610 = !DILocation(line: 1007, column: 32, scope: !2602)
!2611 = !DILocalVariable(name: "arg", arg: 4, scope: !2602, file: !119, line: 1007, type: !6)
!2612 = !DILocation(line: 1007, column: 57, scope: !2602)
!2613 = !DILocation(line: 1009, column: 33, scope: !2602)
!2614 = !DILocation(line: 1009, column: 36, scope: !2602)
!2615 = !DILocation(line: 1009, column: 48, scope: !2602)
!2616 = !DILocation(line: 1009, column: 61, scope: !2602)
!2617 = !DILocation(line: 1009, column: 10, scope: !2602)
!2618 = !DILocation(line: 1009, column: 3, scope: !2602)
!2619 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !119, file: !119, line: 1014, type: !2620, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!103, !30, !6, !6, !6, !141}
!2622 = !DILocalVariable(name: "n", arg: 1, scope: !2619, file: !119, line: 1014, type: !30)
!2623 = !DILocation(line: 1014, column: 28, scope: !2619)
!2624 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2619, file: !119, line: 1014, type: !6)
!2625 = !DILocation(line: 1014, column: 43, scope: !2619)
!2626 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2619, file: !119, line: 1015, type: !6)
!2627 = !DILocation(line: 1015, column: 36, scope: !2619)
!2628 = !DILocalVariable(name: "arg", arg: 4, scope: !2619, file: !119, line: 1016, type: !6)
!2629 = !DILocation(line: 1016, column: 36, scope: !2619)
!2630 = !DILocalVariable(name: "argsize", arg: 5, scope: !2619, file: !119, line: 1016, type: !141)
!2631 = !DILocation(line: 1016, column: 48, scope: !2619)
!2632 = !DILocalVariable(name: "o", scope: !2619, file: !119, line: 1018, type: !153)
!2633 = !DILocation(line: 1018, column: 26, scope: !2619)
!2634 = !DILocation(line: 1018, column: 30, scope: !2619)
!2635 = !DILocation(line: 1019, column: 27, scope: !2619)
!2636 = !DILocation(line: 1019, column: 39, scope: !2619)
!2637 = !DILocation(line: 1019, column: 3, scope: !2619)
!2638 = !DILocation(line: 1020, column: 30, scope: !2619)
!2639 = !DILocation(line: 1020, column: 33, scope: !2619)
!2640 = !DILocation(line: 1020, column: 38, scope: !2619)
!2641 = !DILocation(line: 1020, column: 10, scope: !2619)
!2642 = !DILocation(line: 1020, column: 3, scope: !2619)
!2643 = distinct !DISubprogram(name: "quotearg_custom", scope: !119, file: !119, line: 1024, type: !2644, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!103, !6, !6, !6}
!2646 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2643, file: !119, line: 1024, type: !6)
!2647 = !DILocation(line: 1024, column: 30, scope: !2643)
!2648 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2643, file: !119, line: 1024, type: !6)
!2649 = !DILocation(line: 1024, column: 54, scope: !2643)
!2650 = !DILocalVariable(name: "arg", arg: 3, scope: !2643, file: !119, line: 1025, type: !6)
!2651 = !DILocation(line: 1025, column: 30, scope: !2643)
!2652 = !DILocation(line: 1027, column: 32, scope: !2643)
!2653 = !DILocation(line: 1027, column: 44, scope: !2643)
!2654 = !DILocation(line: 1027, column: 57, scope: !2643)
!2655 = !DILocation(line: 1027, column: 10, scope: !2643)
!2656 = !DILocation(line: 1027, column: 3, scope: !2643)
!2657 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !119, file: !119, line: 1031, type: !2658, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!103, !6, !6, !6, !141}
!2660 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2657, file: !119, line: 1031, type: !6)
!2661 = !DILocation(line: 1031, column: 34, scope: !2657)
!2662 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2657, file: !119, line: 1031, type: !6)
!2663 = !DILocation(line: 1031, column: 58, scope: !2657)
!2664 = !DILocalVariable(name: "arg", arg: 3, scope: !2657, file: !119, line: 1032, type: !6)
!2665 = !DILocation(line: 1032, column: 34, scope: !2657)
!2666 = !DILocalVariable(name: "argsize", arg: 4, scope: !2657, file: !119, line: 1032, type: !141)
!2667 = !DILocation(line: 1032, column: 46, scope: !2657)
!2668 = !DILocation(line: 1034, column: 36, scope: !2657)
!2669 = !DILocation(line: 1034, column: 48, scope: !2657)
!2670 = !DILocation(line: 1034, column: 61, scope: !2657)
!2671 = !DILocation(line: 1035, column: 33, scope: !2657)
!2672 = !DILocation(line: 1034, column: 10, scope: !2657)
!2673 = !DILocation(line: 1034, column: 3, scope: !2657)
!2674 = distinct !DISubprogram(name: "quote_n_mem", scope: !119, file: !119, line: 1049, type: !2675, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!6, !30, !6, !141}
!2677 = !DILocalVariable(name: "n", arg: 1, scope: !2674, file: !119, line: 1049, type: !30)
!2678 = !DILocation(line: 1049, column: 18, scope: !2674)
!2679 = !DILocalVariable(name: "arg", arg: 2, scope: !2674, file: !119, line: 1049, type: !6)
!2680 = !DILocation(line: 1049, column: 33, scope: !2674)
!2681 = !DILocalVariable(name: "argsize", arg: 3, scope: !2674, file: !119, line: 1049, type: !141)
!2682 = !DILocation(line: 1049, column: 45, scope: !2674)
!2683 = !DILocation(line: 1051, column: 30, scope: !2674)
!2684 = !DILocation(line: 1051, column: 33, scope: !2674)
!2685 = !DILocation(line: 1051, column: 38, scope: !2674)
!2686 = !DILocation(line: 1051, column: 10, scope: !2674)
!2687 = !DILocation(line: 1051, column: 3, scope: !2674)
!2688 = distinct !DISubprogram(name: "quote_mem", scope: !119, file: !119, line: 1055, type: !2689, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!6, !6, !141}
!2691 = !DILocalVariable(name: "arg", arg: 1, scope: !2688, file: !119, line: 1055, type: !6)
!2692 = !DILocation(line: 1055, column: 24, scope: !2688)
!2693 = !DILocalVariable(name: "argsize", arg: 2, scope: !2688, file: !119, line: 1055, type: !141)
!2694 = !DILocation(line: 1055, column: 36, scope: !2688)
!2695 = !DILocation(line: 1057, column: 26, scope: !2688)
!2696 = !DILocation(line: 1057, column: 31, scope: !2688)
!2697 = !DILocation(line: 1057, column: 10, scope: !2688)
!2698 = !DILocation(line: 1057, column: 3, scope: !2688)
!2699 = distinct !DISubprogram(name: "quote_n", scope: !119, file: !119, line: 1061, type: !2700, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!6, !30, !6}
!2702 = !DILocalVariable(name: "n", arg: 1, scope: !2699, file: !119, line: 1061, type: !30)
!2703 = !DILocation(line: 1061, column: 14, scope: !2699)
!2704 = !DILocalVariable(name: "arg", arg: 2, scope: !2699, file: !119, line: 1061, type: !6)
!2705 = !DILocation(line: 1061, column: 29, scope: !2699)
!2706 = !DILocation(line: 1063, column: 23, scope: !2699)
!2707 = !DILocation(line: 1063, column: 26, scope: !2699)
!2708 = !DILocation(line: 1063, column: 10, scope: !2699)
!2709 = !DILocation(line: 1063, column: 3, scope: !2699)
!2710 = distinct !DISubprogram(name: "quote", scope: !119, file: !119, line: 1067, type: !2711, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!6, !6}
!2713 = !DILocalVariable(name: "arg", arg: 1, scope: !2710, file: !119, line: 1067, type: !6)
!2714 = !DILocation(line: 1067, column: 20, scope: !2710)
!2715 = !DILocation(line: 1069, column: 22, scope: !2710)
!2716 = !DILocation(line: 1069, column: 10, scope: !2710)
!2717 = !DILocation(line: 1069, column: 3, scope: !2710)
!2718 = distinct !DISubprogram(name: "streq", scope: !2719, file: !2719, line: 1359, type: !2720, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !33)
!2719 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!46, !6, !6}
!2722 = !DILocalVariable(name: "__s1", arg: 1, scope: !2718, file: !2719, line: 1359, type: !6)
!2723 = !DILocation(line: 1359, column: 20, scope: !2718)
!2724 = !DILocalVariable(name: "__s2", arg: 2, scope: !2718, file: !2719, line: 1359, type: !6)
!2725 = !DILocation(line: 1359, column: 38, scope: !2718)
!2726 = !DILocation(line: 1361, column: 19, scope: !2718)
!2727 = !DILocation(line: 1361, column: 25, scope: !2718)
!2728 = !DILocation(line: 1361, column: 11, scope: !2718)
!2729 = !DILocation(line: 1361, column: 10, scope: !2718)
!2730 = !DILocation(line: 1361, column: 3, scope: !2718)
!2731 = distinct !DISubprogram(name: "version_etc_arn", scope: !233, file: !233, line: 61, type: !2732, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !33)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{null, !2734, !6, !6, !6, !2787, !141}
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2736, line: 7, baseType: !2737)
!2736 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2738, line: 49, size: 1728, elements: !2739)
!2738 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2739 = !{!2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2755, !2757, !2758, !2759, !2761, !2762, !2764, !2768, !2771, !2773, !2776, !2779, !2780, !2781, !2782, !2783}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2737, file: !2738, line: 51, baseType: !30, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2737, file: !2738, line: 54, baseType: !103, size: 64, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2737, file: !2738, line: 55, baseType: !103, size: 64, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2737, file: !2738, line: 56, baseType: !103, size: 64, offset: 192)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2737, file: !2738, line: 57, baseType: !103, size: 64, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2737, file: !2738, line: 58, baseType: !103, size: 64, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2737, file: !2738, line: 59, baseType: !103, size: 64, offset: 384)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2737, file: !2738, line: 60, baseType: !103, size: 64, offset: 448)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2737, file: !2738, line: 61, baseType: !103, size: 64, offset: 512)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2737, file: !2738, line: 64, baseType: !103, size: 64, offset: 576)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2737, file: !2738, line: 65, baseType: !103, size: 64, offset: 640)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2737, file: !2738, line: 66, baseType: !103, size: 64, offset: 704)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2737, file: !2738, line: 68, baseType: !2753, size: 64, offset: 768)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2738, line: 36, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2737, file: !2738, line: 70, baseType: !2756, size: 64, offset: 832)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2737, file: !2738, line: 72, baseType: !30, size: 32, offset: 896)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2737, file: !2738, line: 73, baseType: !30, size: 32, offset: 928)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2737, file: !2738, line: 74, baseType: !2760, size: 64, offset: 960)
!2760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1032, line: 152, baseType: !256)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2737, file: !2738, line: 77, baseType: !31, size: 16, offset: 1024)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2737, file: !2738, line: 78, baseType: !2763, size: 8, offset: 1040)
!2763 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2737, file: !2738, line: 79, baseType: !2765, size: 8, offset: 1048)
!2765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2766)
!2766 = !{!2767}
!2767 = !DISubrange(count: 1)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2737, file: !2738, line: 81, baseType: !2769, size: 64, offset: 1088)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2738, line: 43, baseType: null)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2737, file: !2738, line: 89, baseType: !2772, size: 64, offset: 1152)
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1032, line: 153, baseType: !256)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2737, file: !2738, line: 91, baseType: !2774, size: 64, offset: 1216)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2738, line: 37, flags: DIFlagFwdDecl)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2737, file: !2738, line: 92, baseType: !2777, size: 64, offset: 1280)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2738, line: 38, flags: DIFlagFwdDecl)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2737, file: !2738, line: 93, baseType: !2756, size: 64, offset: 1344)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2737, file: !2738, line: 94, baseType: !29, size: 64, offset: 1408)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2737, file: !2738, line: 95, baseType: !141, size: 64, offset: 1472)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2737, file: !2738, line: 96, baseType: !30, size: 32, offset: 1536)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2737, file: !2738, line: 98, baseType: !2784, size: 160, offset: 1568)
!2784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2785)
!2785 = !{!2786}
!2786 = !DISubrange(count: 20)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!2788 = !DILocalVariable(name: "stream", arg: 1, scope: !2731, file: !233, line: 61, type: !2734)
!2789 = !DILocation(line: 61, column: 24, scope: !2731)
!2790 = !DILocalVariable(name: "command_name", arg: 2, scope: !2731, file: !233, line: 62, type: !6)
!2791 = !DILocation(line: 62, column: 30, scope: !2731)
!2792 = !DILocalVariable(name: "package", arg: 3, scope: !2731, file: !233, line: 62, type: !6)
!2793 = !DILocation(line: 62, column: 56, scope: !2731)
!2794 = !DILocalVariable(name: "version", arg: 4, scope: !2731, file: !233, line: 63, type: !6)
!2795 = !DILocation(line: 63, column: 30, scope: !2731)
!2796 = !DILocalVariable(name: "authors", arg: 5, scope: !2731, file: !233, line: 64, type: !2787)
!2797 = !DILocation(line: 64, column: 39, scope: !2731)
!2798 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2731, file: !233, line: 64, type: !141)
!2799 = !DILocation(line: 64, column: 55, scope: !2731)
!2800 = !DILocation(line: 66, column: 7, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2731, file: !233, line: 66, column: 7)
!2802 = !DILocation(line: 66, column: 7, scope: !2731)
!2803 = !DILocation(line: 67, column: 14, scope: !2801)
!2804 = !DILocation(line: 67, column: 38, scope: !2801)
!2805 = !DILocation(line: 67, column: 52, scope: !2801)
!2806 = !DILocation(line: 67, column: 61, scope: !2801)
!2807 = !DILocation(line: 67, column: 5, scope: !2801)
!2808 = !DILocation(line: 69, column: 14, scope: !2801)
!2809 = !DILocation(line: 69, column: 33, scope: !2801)
!2810 = !DILocation(line: 69, column: 42, scope: !2801)
!2811 = !DILocation(line: 69, column: 5, scope: !2801)
!2812 = !DILocation(line: 83, column: 12, scope: !2731)
!2813 = !DILocation(line: 83, column: 43, scope: !2731)
!2814 = !DILocation(line: 83, column: 3, scope: !2731)
!2815 = !DILocation(line: 85, column: 3, scope: !2731)
!2816 = !DILocation(line: 88, column: 12, scope: !2731)
!2817 = !DILocation(line: 88, column: 20, scope: !2731)
!2818 = !DILocation(line: 88, column: 3, scope: !2731)
!2819 = !DILocation(line: 95, column: 3, scope: !2731)
!2820 = !DILocation(line: 97, column: 11, scope: !2731)
!2821 = !DILocation(line: 97, column: 3, scope: !2731)
!2822 = !DILocation(line: 102, column: 7, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2731, file: !233, line: 98, column: 5)
!2824 = !DILocation(line: 105, column: 16, scope: !2823)
!2825 = !DILocation(line: 105, column: 24, scope: !2823)
!2826 = !DILocation(line: 105, column: 47, scope: !2823)
!2827 = !DILocation(line: 105, column: 7, scope: !2823)
!2828 = !DILocation(line: 106, column: 7, scope: !2823)
!2829 = !DILocation(line: 109, column: 16, scope: !2823)
!2830 = !DILocation(line: 109, column: 24, scope: !2823)
!2831 = !DILocation(line: 109, column: 54, scope: !2823)
!2832 = !DILocation(line: 109, column: 66, scope: !2823)
!2833 = !DILocation(line: 109, column: 7, scope: !2823)
!2834 = !DILocation(line: 110, column: 7, scope: !2823)
!2835 = !DILocation(line: 113, column: 16, scope: !2823)
!2836 = !DILocation(line: 113, column: 24, scope: !2823)
!2837 = !DILocation(line: 114, column: 16, scope: !2823)
!2838 = !DILocation(line: 114, column: 28, scope: !2823)
!2839 = !DILocation(line: 114, column: 40, scope: !2823)
!2840 = !DILocation(line: 113, column: 7, scope: !2823)
!2841 = !DILocation(line: 115, column: 7, scope: !2823)
!2842 = !DILocation(line: 120, column: 16, scope: !2823)
!2843 = !DILocation(line: 120, column: 24, scope: !2823)
!2844 = !DILocation(line: 121, column: 16, scope: !2823)
!2845 = !DILocation(line: 121, column: 28, scope: !2823)
!2846 = !DILocation(line: 121, column: 40, scope: !2823)
!2847 = !DILocation(line: 121, column: 52, scope: !2823)
!2848 = !DILocation(line: 120, column: 7, scope: !2823)
!2849 = !DILocation(line: 122, column: 7, scope: !2823)
!2850 = !DILocation(line: 127, column: 16, scope: !2823)
!2851 = !DILocation(line: 127, column: 24, scope: !2823)
!2852 = !DILocation(line: 128, column: 16, scope: !2823)
!2853 = !DILocation(line: 128, column: 28, scope: !2823)
!2854 = !DILocation(line: 128, column: 40, scope: !2823)
!2855 = !DILocation(line: 128, column: 52, scope: !2823)
!2856 = !DILocation(line: 128, column: 64, scope: !2823)
!2857 = !DILocation(line: 127, column: 7, scope: !2823)
!2858 = !DILocation(line: 129, column: 7, scope: !2823)
!2859 = !DILocation(line: 134, column: 16, scope: !2823)
!2860 = !DILocation(line: 134, column: 24, scope: !2823)
!2861 = !DILocation(line: 135, column: 16, scope: !2823)
!2862 = !DILocation(line: 135, column: 28, scope: !2823)
!2863 = !DILocation(line: 135, column: 40, scope: !2823)
!2864 = !DILocation(line: 135, column: 52, scope: !2823)
!2865 = !DILocation(line: 135, column: 64, scope: !2823)
!2866 = !DILocation(line: 136, column: 16, scope: !2823)
!2867 = !DILocation(line: 134, column: 7, scope: !2823)
!2868 = !DILocation(line: 137, column: 7, scope: !2823)
!2869 = !DILocation(line: 142, column: 16, scope: !2823)
!2870 = !DILocation(line: 142, column: 24, scope: !2823)
!2871 = !DILocation(line: 143, column: 16, scope: !2823)
!2872 = !DILocation(line: 143, column: 28, scope: !2823)
!2873 = !DILocation(line: 143, column: 40, scope: !2823)
!2874 = !DILocation(line: 143, column: 52, scope: !2823)
!2875 = !DILocation(line: 143, column: 64, scope: !2823)
!2876 = !DILocation(line: 144, column: 16, scope: !2823)
!2877 = !DILocation(line: 144, column: 28, scope: !2823)
!2878 = !DILocation(line: 142, column: 7, scope: !2823)
!2879 = !DILocation(line: 145, column: 7, scope: !2823)
!2880 = !DILocation(line: 150, column: 16, scope: !2823)
!2881 = !DILocation(line: 150, column: 24, scope: !2823)
!2882 = !DILocation(line: 152, column: 17, scope: !2823)
!2883 = !DILocation(line: 152, column: 29, scope: !2823)
!2884 = !DILocation(line: 152, column: 41, scope: !2823)
!2885 = !DILocation(line: 152, column: 53, scope: !2823)
!2886 = !DILocation(line: 152, column: 65, scope: !2823)
!2887 = !DILocation(line: 153, column: 17, scope: !2823)
!2888 = !DILocation(line: 153, column: 29, scope: !2823)
!2889 = !DILocation(line: 153, column: 41, scope: !2823)
!2890 = !DILocation(line: 150, column: 7, scope: !2823)
!2891 = !DILocation(line: 154, column: 7, scope: !2823)
!2892 = !DILocation(line: 159, column: 16, scope: !2823)
!2893 = !DILocation(line: 159, column: 24, scope: !2823)
!2894 = !DILocation(line: 161, column: 16, scope: !2823)
!2895 = !DILocation(line: 161, column: 28, scope: !2823)
!2896 = !DILocation(line: 161, column: 40, scope: !2823)
!2897 = !DILocation(line: 161, column: 52, scope: !2823)
!2898 = !DILocation(line: 161, column: 64, scope: !2823)
!2899 = !DILocation(line: 162, column: 16, scope: !2823)
!2900 = !DILocation(line: 162, column: 28, scope: !2823)
!2901 = !DILocation(line: 162, column: 40, scope: !2823)
!2902 = !DILocation(line: 162, column: 52, scope: !2823)
!2903 = !DILocation(line: 159, column: 7, scope: !2823)
!2904 = !DILocation(line: 163, column: 7, scope: !2823)
!2905 = !DILocation(line: 170, column: 16, scope: !2823)
!2906 = !DILocation(line: 170, column: 24, scope: !2823)
!2907 = !DILocation(line: 172, column: 17, scope: !2823)
!2908 = !DILocation(line: 172, column: 29, scope: !2823)
!2909 = !DILocation(line: 172, column: 41, scope: !2823)
!2910 = !DILocation(line: 172, column: 53, scope: !2823)
!2911 = !DILocation(line: 172, column: 65, scope: !2823)
!2912 = !DILocation(line: 173, column: 17, scope: !2823)
!2913 = !DILocation(line: 173, column: 29, scope: !2823)
!2914 = !DILocation(line: 173, column: 41, scope: !2823)
!2915 = !DILocation(line: 173, column: 53, scope: !2823)
!2916 = !DILocation(line: 170, column: 7, scope: !2823)
!2917 = !DILocation(line: 174, column: 7, scope: !2823)
!2918 = !DILocation(line: 176, column: 1, scope: !2731)
!2919 = distinct !DISubprogram(name: "version_etc_ar", scope: !233, file: !233, line: 183, type: !2920, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !33)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{null, !2734, !6, !6, !6, !2787}
!2922 = !DILocalVariable(name: "stream", arg: 1, scope: !2919, file: !233, line: 183, type: !2734)
!2923 = !DILocation(line: 183, column: 23, scope: !2919)
!2924 = !DILocalVariable(name: "command_name", arg: 2, scope: !2919, file: !233, line: 184, type: !6)
!2925 = !DILocation(line: 184, column: 29, scope: !2919)
!2926 = !DILocalVariable(name: "package", arg: 3, scope: !2919, file: !233, line: 184, type: !6)
!2927 = !DILocation(line: 184, column: 55, scope: !2919)
!2928 = !DILocalVariable(name: "version", arg: 4, scope: !2919, file: !233, line: 185, type: !6)
!2929 = !DILocation(line: 185, column: 29, scope: !2919)
!2930 = !DILocalVariable(name: "authors", arg: 5, scope: !2919, file: !233, line: 185, type: !2787)
!2931 = !DILocation(line: 185, column: 59, scope: !2919)
!2932 = !DILocalVariable(name: "n_authors", scope: !2919, file: !233, line: 187, type: !141)
!2933 = !DILocation(line: 187, column: 10, scope: !2919)
!2934 = !DILocation(line: 189, column: 18, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2919, file: !233, line: 189, column: 3)
!2936 = !DILocation(line: 189, column: 8, scope: !2935)
!2937 = !DILocation(line: 189, column: 23, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2935, file: !233, line: 189, column: 3)
!2939 = !DILocation(line: 189, column: 31, scope: !2938)
!2940 = !DILocation(line: 189, column: 3, scope: !2935)
!2941 = !DILocation(line: 189, column: 52, scope: !2938)
!2942 = !DILocation(line: 189, column: 3, scope: !2938)
!2943 = distinct !{!2943, !2940, !2944, !392}
!2944 = !DILocation(line: 190, column: 5, scope: !2935)
!2945 = !DILocation(line: 191, column: 20, scope: !2919)
!2946 = !DILocation(line: 191, column: 28, scope: !2919)
!2947 = !DILocation(line: 191, column: 42, scope: !2919)
!2948 = !DILocation(line: 191, column: 51, scope: !2919)
!2949 = !DILocation(line: 191, column: 60, scope: !2919)
!2950 = !DILocation(line: 191, column: 69, scope: !2919)
!2951 = !DILocation(line: 191, column: 3, scope: !2919)
!2952 = !DILocation(line: 192, column: 1, scope: !2919)
!2953 = distinct !DISubprogram(name: "version_etc_va", scope: !233, file: !233, line: 199, type: !2954, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !33)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{null, !2734, !6, !6, !6, !2956}
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !59, line: 52, baseType: !2957)
!2957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !61, line: 32, baseType: !2958)
!2958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2959, baseType: !2960)
!2959 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !65, size: 256, elements: !2961)
!2961 = !{!2962, !2963, !2964, !2965, !2966}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2960, file: !2959, line: 192, baseType: !29, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2960, file: !2959, line: 192, baseType: !29, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2960, file: !2959, line: 192, baseType: !29, size: 64, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2960, file: !2959, line: 192, baseType: !30, size: 32, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2960, file: !2959, line: 192, baseType: !30, size: 32, offset: 224)
!2967 = !DILocalVariable(name: "stream", arg: 1, scope: !2953, file: !233, line: 199, type: !2734)
!2968 = !DILocation(line: 199, column: 23, scope: !2953)
!2969 = !DILocalVariable(name: "command_name", arg: 2, scope: !2953, file: !233, line: 200, type: !6)
!2970 = !DILocation(line: 200, column: 29, scope: !2953)
!2971 = !DILocalVariable(name: "package", arg: 3, scope: !2953, file: !233, line: 200, type: !6)
!2972 = !DILocation(line: 200, column: 55, scope: !2953)
!2973 = !DILocalVariable(name: "version", arg: 4, scope: !2953, file: !233, line: 201, type: !6)
!2974 = !DILocation(line: 201, column: 29, scope: !2953)
!2975 = !DILocalVariable(name: "authors", arg: 5, scope: !2953, file: !233, line: 201, type: !2956)
!2976 = !DILocation(line: 201, column: 46, scope: !2953)
!2977 = !DILocalVariable(name: "n_authors", scope: !2953, file: !233, line: 203, type: !141)
!2978 = !DILocation(line: 203, column: 10, scope: !2953)
!2979 = !DILocalVariable(name: "authtab", scope: !2953, file: !233, line: 204, type: !2980)
!2980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !149)
!2981 = !DILocation(line: 204, column: 15, scope: !2953)
!2982 = !DILocation(line: 206, column: 18, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2953, file: !233, line: 206, column: 3)
!2984 = !DILocation(line: 206, column: 8, scope: !2983)
!2985 = !DILocation(line: 207, column: 8, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2983, file: !233, line: 206, column: 3)
!2987 = !DILocation(line: 207, column: 18, scope: !2986)
!2988 = !DILocation(line: 208, column: 10, scope: !2986)
!2989 = !DILocation(line: 208, column: 35, scope: !2986)
!2990 = !DILocation(line: 208, column: 22, scope: !2986)
!2991 = !DILocation(line: 208, column: 14, scope: !2986)
!2992 = !DILocation(line: 208, column: 33, scope: !2986)
!2993 = !DILocation(line: 208, column: 67, scope: !2986)
!2994 = !DILocation(line: 0, scope: !2986)
!2995 = !DILocation(line: 206, column: 3, scope: !2983)
!2996 = !DILocation(line: 209, column: 17, scope: !2986)
!2997 = !DILocation(line: 206, column: 3, scope: !2986)
!2998 = distinct !{!2998, !2995, !2999, !392}
!2999 = !DILocation(line: 210, column: 5, scope: !2983)
!3000 = !DILocation(line: 211, column: 20, scope: !2953)
!3001 = !DILocation(line: 211, column: 28, scope: !2953)
!3002 = !DILocation(line: 211, column: 42, scope: !2953)
!3003 = !DILocation(line: 211, column: 51, scope: !2953)
!3004 = !DILocation(line: 212, column: 20, scope: !2953)
!3005 = !DILocation(line: 212, column: 29, scope: !2953)
!3006 = !DILocation(line: 211, column: 3, scope: !2953)
!3007 = !DILocation(line: 213, column: 1, scope: !2953)
!3008 = distinct !DISubprogram(name: "version_etc", scope: !233, file: !233, line: 230, type: !3009, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !33)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !2734, !6, !6, !6, null}
!3011 = !DILocalVariable(name: "stream", arg: 1, scope: !3008, file: !233, line: 230, type: !2734)
!3012 = !DILocation(line: 230, column: 20, scope: !3008)
!3013 = !DILocalVariable(name: "command_name", arg: 2, scope: !3008, file: !233, line: 231, type: !6)
!3014 = !DILocation(line: 231, column: 26, scope: !3008)
!3015 = !DILocalVariable(name: "package", arg: 3, scope: !3008, file: !233, line: 231, type: !6)
!3016 = !DILocation(line: 231, column: 52, scope: !3008)
!3017 = !DILocalVariable(name: "version", arg: 4, scope: !3008, file: !233, line: 232, type: !6)
!3018 = !DILocation(line: 232, column: 26, scope: !3008)
!3019 = !DILocalVariable(name: "authors", scope: !3008, file: !233, line: 234, type: !2956)
!3020 = !DILocation(line: 234, column: 11, scope: !3008)
!3021 = !DILocation(line: 235, column: 3, scope: !3008)
!3022 = !DILocation(line: 236, column: 19, scope: !3008)
!3023 = !DILocation(line: 236, column: 27, scope: !3008)
!3024 = !DILocation(line: 236, column: 41, scope: !3008)
!3025 = !DILocation(line: 236, column: 50, scope: !3008)
!3026 = !DILocation(line: 236, column: 3, scope: !3008)
!3027 = !DILocation(line: 237, column: 3, scope: !3008)
!3028 = !DILocation(line: 238, column: 1, scope: !3008)
!3029 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !233, file: !233, line: 241, type: !79, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !33)
!3030 = !DILocation(line: 243, column: 3, scope: !3029)
!3031 = !DILocation(line: 248, column: 11, scope: !3029)
!3032 = !DILocation(line: 248, column: 3, scope: !3029)
!3033 = !DILocation(line: 254, column: 11, scope: !3029)
!3034 = !DILocation(line: 254, column: 3, scope: !3029)
!3035 = !DILocation(line: 259, column: 11, scope: !3029)
!3036 = !DILocation(line: 259, column: 3, scope: !3029)
!3037 = !DILocation(line: 261, column: 1, scope: !3029)
!3038 = distinct !DISubprogram(name: "xnrealloc", scope: !3039, file: !3039, line: 147, type: !3040, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3039 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!29, !29, !141, !141}
!3042 = !DILocalVariable(name: "p", arg: 1, scope: !3038, file: !3039, line: 147, type: !29)
!3043 = !DILocation(line: 147, column: 18, scope: !3038)
!3044 = !DILocalVariable(name: "n", arg: 2, scope: !3038, file: !3039, line: 147, type: !141)
!3045 = !DILocation(line: 147, column: 28, scope: !3038)
!3046 = !DILocalVariable(name: "s", arg: 3, scope: !3038, file: !3039, line: 147, type: !141)
!3047 = !DILocation(line: 147, column: 38, scope: !3038)
!3048 = !DILocation(line: 149, column: 25, scope: !3038)
!3049 = !DILocation(line: 149, column: 28, scope: !3038)
!3050 = !DILocation(line: 149, column: 31, scope: !3038)
!3051 = !DILocation(line: 149, column: 10, scope: !3038)
!3052 = !DILocation(line: 149, column: 3, scope: !3038)
!3053 = distinct !DISubprogram(name: "xreallocarray", scope: !239, file: !239, line: 83, type: !3040, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3054 = !DILocalVariable(name: "p", arg: 1, scope: !3053, file: !239, line: 83, type: !29)
!3055 = !DILocation(line: 83, column: 22, scope: !3053)
!3056 = !DILocalVariable(name: "n", arg: 2, scope: !3053, file: !239, line: 83, type: !141)
!3057 = !DILocation(line: 83, column: 32, scope: !3053)
!3058 = !DILocalVariable(name: "s", arg: 3, scope: !3053, file: !239, line: 83, type: !141)
!3059 = !DILocation(line: 83, column: 42, scope: !3053)
!3060 = !DILocation(line: 85, column: 39, scope: !3053)
!3061 = !DILocation(line: 85, column: 42, scope: !3053)
!3062 = !DILocation(line: 85, column: 45, scope: !3053)
!3063 = !DILocation(line: 85, column: 25, scope: !3053)
!3064 = !DILocation(line: 85, column: 10, scope: !3053)
!3065 = !DILocation(line: 85, column: 3, scope: !3053)
!3066 = distinct !DISubprogram(name: "check_nonnull", scope: !239, file: !239, line: 37, type: !3067, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!29, !29}
!3069 = !DILocalVariable(name: "p", arg: 1, scope: !3066, file: !239, line: 37, type: !29)
!3070 = !DILocation(line: 37, column: 22, scope: !3066)
!3071 = !DILocation(line: 39, column: 8, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3066, file: !239, line: 39, column: 7)
!3073 = !DILocation(line: 39, column: 7, scope: !3066)
!3074 = !DILocation(line: 40, column: 5, scope: !3072)
!3075 = !DILocation(line: 41, column: 10, scope: !3066)
!3076 = !DILocation(line: 41, column: 3, scope: !3066)
!3077 = distinct !DISubprogram(name: "xmalloc", scope: !239, file: !239, line: 47, type: !3078, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!29, !141}
!3080 = !DILocalVariable(name: "s", arg: 1, scope: !3077, file: !239, line: 47, type: !141)
!3081 = !DILocation(line: 47, column: 17, scope: !3077)
!3082 = !DILocation(line: 49, column: 33, scope: !3077)
!3083 = !DILocation(line: 49, column: 25, scope: !3077)
!3084 = !DILocation(line: 49, column: 10, scope: !3077)
!3085 = !DILocation(line: 49, column: 3, scope: !3077)
!3086 = distinct !DISubprogram(name: "ximalloc", scope: !239, file: !239, line: 53, type: !3087, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!29, !253}
!3089 = !DILocalVariable(name: "s", arg: 1, scope: !3086, file: !239, line: 53, type: !253)
!3090 = !DILocation(line: 53, column: 17, scope: !3086)
!3091 = !DILocation(line: 55, column: 34, scope: !3086)
!3092 = !DILocation(line: 55, column: 25, scope: !3086)
!3093 = !DILocation(line: 55, column: 10, scope: !3086)
!3094 = !DILocation(line: 55, column: 3, scope: !3086)
!3095 = distinct !DISubprogram(name: "xcharalloc", scope: !239, file: !239, line: 59, type: !3096, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!103, !141}
!3098 = !DILocalVariable(name: "n", arg: 1, scope: !3095, file: !239, line: 59, type: !141)
!3099 = !DILocation(line: 59, column: 20, scope: !3095)
!3100 = !DILocation(line: 61, column: 10, scope: !3095)
!3101 = !DILocation(line: 61, column: 3, scope: !3095)
!3102 = distinct !DISubprogram(name: "xrealloc", scope: !239, file: !239, line: 68, type: !3103, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!29, !29, !141}
!3105 = !DILocalVariable(name: "p", arg: 1, scope: !3102, file: !239, line: 68, type: !29)
!3106 = !DILocation(line: 68, column: 17, scope: !3102)
!3107 = !DILocalVariable(name: "s", arg: 2, scope: !3102, file: !239, line: 68, type: !141)
!3108 = !DILocation(line: 68, column: 27, scope: !3102)
!3109 = !DILocation(line: 70, column: 34, scope: !3102)
!3110 = !DILocation(line: 70, column: 37, scope: !3102)
!3111 = !DILocation(line: 70, column: 25, scope: !3102)
!3112 = !DILocation(line: 70, column: 10, scope: !3102)
!3113 = !DILocation(line: 70, column: 3, scope: !3102)
!3114 = distinct !DISubprogram(name: "xirealloc", scope: !239, file: !239, line: 74, type: !3115, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!29, !29, !253}
!3117 = !DILocalVariable(name: "p", arg: 1, scope: !3114, file: !239, line: 74, type: !29)
!3118 = !DILocation(line: 74, column: 18, scope: !3114)
!3119 = !DILocalVariable(name: "s", arg: 2, scope: !3114, file: !239, line: 74, type: !253)
!3120 = !DILocation(line: 74, column: 27, scope: !3114)
!3121 = !DILocation(line: 76, column: 35, scope: !3114)
!3122 = !DILocation(line: 76, column: 38, scope: !3114)
!3123 = !DILocation(line: 76, column: 25, scope: !3114)
!3124 = !DILocation(line: 76, column: 10, scope: !3114)
!3125 = !DILocation(line: 76, column: 3, scope: !3114)
!3126 = distinct !DISubprogram(name: "xireallocarray", scope: !239, file: !239, line: 89, type: !3127, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!29, !29, !253, !253}
!3129 = !DILocalVariable(name: "p", arg: 1, scope: !3126, file: !239, line: 89, type: !29)
!3130 = !DILocation(line: 89, column: 23, scope: !3126)
!3131 = !DILocalVariable(name: "n", arg: 2, scope: !3126, file: !239, line: 89, type: !253)
!3132 = !DILocation(line: 89, column: 32, scope: !3126)
!3133 = !DILocalVariable(name: "s", arg: 3, scope: !3126, file: !239, line: 89, type: !253)
!3134 = !DILocation(line: 89, column: 41, scope: !3126)
!3135 = !DILocation(line: 91, column: 40, scope: !3126)
!3136 = !DILocation(line: 91, column: 43, scope: !3126)
!3137 = !DILocation(line: 91, column: 46, scope: !3126)
!3138 = !DILocation(line: 91, column: 25, scope: !3126)
!3139 = !DILocation(line: 91, column: 10, scope: !3126)
!3140 = !DILocation(line: 91, column: 3, scope: !3126)
!3141 = distinct !DISubprogram(name: "xnmalloc", scope: !239, file: !239, line: 98, type: !3142, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!29, !141, !141}
!3144 = !DILocalVariable(name: "n", arg: 1, scope: !3141, file: !239, line: 98, type: !141)
!3145 = !DILocation(line: 98, column: 18, scope: !3141)
!3146 = !DILocalVariable(name: "s", arg: 2, scope: !3141, file: !239, line: 98, type: !141)
!3147 = !DILocation(line: 98, column: 28, scope: !3141)
!3148 = !DILocation(line: 100, column: 31, scope: !3141)
!3149 = !DILocation(line: 100, column: 34, scope: !3141)
!3150 = !DILocation(line: 100, column: 10, scope: !3141)
!3151 = !DILocation(line: 100, column: 3, scope: !3141)
!3152 = distinct !DISubprogram(name: "xinmalloc", scope: !239, file: !239, line: 104, type: !3153, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!29, !253, !253}
!3155 = !DILocalVariable(name: "n", arg: 1, scope: !3152, file: !239, line: 104, type: !253)
!3156 = !DILocation(line: 104, column: 18, scope: !3152)
!3157 = !DILocalVariable(name: "s", arg: 2, scope: !3152, file: !239, line: 104, type: !253)
!3158 = !DILocation(line: 104, column: 27, scope: !3152)
!3159 = !DILocation(line: 106, column: 32, scope: !3152)
!3160 = !DILocation(line: 106, column: 35, scope: !3152)
!3161 = !DILocation(line: 106, column: 10, scope: !3152)
!3162 = !DILocation(line: 106, column: 3, scope: !3152)
!3163 = distinct !DISubprogram(name: "x2realloc", scope: !239, file: !239, line: 116, type: !3164, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!29, !29, !245}
!3166 = !DILocalVariable(name: "p", arg: 1, scope: !3163, file: !239, line: 116, type: !29)
!3167 = !DILocation(line: 116, column: 18, scope: !3163)
!3168 = !DILocalVariable(name: "ps", arg: 2, scope: !3163, file: !239, line: 116, type: !245)
!3169 = !DILocation(line: 116, column: 29, scope: !3163)
!3170 = !DILocation(line: 118, column: 22, scope: !3163)
!3171 = !DILocation(line: 118, column: 25, scope: !3163)
!3172 = !DILocation(line: 118, column: 10, scope: !3163)
!3173 = !DILocation(line: 118, column: 3, scope: !3163)
!3174 = !DILocalVariable(name: "p", arg: 1, scope: !242, file: !239, line: 176, type: !29)
!3175 = !DILocation(line: 176, column: 19, scope: !242)
!3176 = !DILocalVariable(name: "pn", arg: 2, scope: !242, file: !239, line: 176, type: !245)
!3177 = !DILocation(line: 176, column: 30, scope: !242)
!3178 = !DILocalVariable(name: "s", arg: 3, scope: !242, file: !239, line: 176, type: !141)
!3179 = !DILocation(line: 176, column: 41, scope: !242)
!3180 = !DILocalVariable(name: "n", scope: !242, file: !239, line: 178, type: !141)
!3181 = !DILocation(line: 178, column: 10, scope: !242)
!3182 = !DILocation(line: 178, column: 15, scope: !242)
!3183 = !DILocation(line: 178, column: 14, scope: !242)
!3184 = !DILocation(line: 180, column: 9, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !242, file: !239, line: 180, column: 7)
!3186 = !DILocation(line: 180, column: 7, scope: !242)
!3187 = !DILocation(line: 182, column: 13, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !239, line: 182, column: 11)
!3189 = distinct !DILexicalBlock(scope: !3185, file: !239, line: 181, column: 5)
!3190 = !DILocation(line: 182, column: 11, scope: !3189)
!3191 = !DILocation(line: 190, column: 32, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3188, file: !239, line: 183, column: 9)
!3193 = !DILocation(line: 190, column: 30, scope: !3192)
!3194 = !DILocation(line: 190, column: 13, scope: !3192)
!3195 = !DILocation(line: 191, column: 17, scope: !3192)
!3196 = !DILocation(line: 191, column: 16, scope: !3192)
!3197 = !DILocation(line: 191, column: 13, scope: !3192)
!3198 = !DILocation(line: 192, column: 9, scope: !3192)
!3199 = !DILocation(line: 193, column: 5, scope: !3189)
!3200 = !DILocation(line: 197, column: 11, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !239, line: 197, column: 11)
!3202 = distinct !DILexicalBlock(scope: !3185, file: !239, line: 195, column: 5)
!3203 = !DILocation(line: 197, column: 11, scope: !3202)
!3204 = !DILocation(line: 198, column: 9, scope: !3201)
!3205 = !DILocation(line: 201, column: 22, scope: !242)
!3206 = !DILocation(line: 201, column: 25, scope: !242)
!3207 = !DILocation(line: 201, column: 28, scope: !242)
!3208 = !DILocation(line: 201, column: 7, scope: !242)
!3209 = !DILocation(line: 201, column: 5, scope: !242)
!3210 = !DILocation(line: 202, column: 9, scope: !242)
!3211 = !DILocation(line: 202, column: 4, scope: !242)
!3212 = !DILocation(line: 202, column: 7, scope: !242)
!3213 = !DILocation(line: 203, column: 10, scope: !242)
!3214 = !DILocation(line: 203, column: 3, scope: !242)
!3215 = !DILocalVariable(name: "pa", arg: 1, scope: !249, file: !239, line: 223, type: !29)
!3216 = !DILocation(line: 223, column: 16, scope: !249)
!3217 = !DILocalVariable(name: "pn", arg: 2, scope: !249, file: !239, line: 223, type: !252)
!3218 = !DILocation(line: 223, column: 27, scope: !249)
!3219 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !249, file: !239, line: 223, type: !253)
!3220 = !DILocation(line: 223, column: 37, scope: !249)
!3221 = !DILocalVariable(name: "n_max", arg: 4, scope: !249, file: !239, line: 223, type: !255)
!3222 = !DILocation(line: 223, column: 59, scope: !249)
!3223 = !DILocalVariable(name: "s", arg: 5, scope: !249, file: !239, line: 223, type: !253)
!3224 = !DILocation(line: 223, column: 72, scope: !249)
!3225 = !DILocalVariable(name: "n0", scope: !249, file: !239, line: 230, type: !253)
!3226 = !DILocation(line: 230, column: 9, scope: !249)
!3227 = !DILocation(line: 230, column: 15, scope: !249)
!3228 = !DILocation(line: 230, column: 14, scope: !249)
!3229 = !DILocalVariable(name: "n", scope: !249, file: !239, line: 237, type: !253)
!3230 = !DILocation(line: 237, column: 9, scope: !249)
!3231 = !DILocation(line: 238, column: 7, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !249, file: !239, line: 238, column: 7)
!3233 = !DILocation(line: 238, column: 7, scope: !249)
!3234 = !DILocation(line: 239, column: 7, scope: !3232)
!3235 = !DILocation(line: 239, column: 5, scope: !3232)
!3236 = !DILocation(line: 240, column: 12, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !249, file: !239, line: 240, column: 7)
!3238 = !DILocation(line: 240, column: 9, scope: !3237)
!3239 = !DILocation(line: 240, column: 18, scope: !3237)
!3240 = !DILocation(line: 240, column: 21, scope: !3237)
!3241 = !DILocation(line: 240, column: 29, scope: !3237)
!3242 = !DILocation(line: 240, column: 27, scope: !3237)
!3243 = !DILocation(line: 240, column: 7, scope: !249)
!3244 = !DILocation(line: 241, column: 9, scope: !3237)
!3245 = !DILocation(line: 241, column: 7, scope: !3237)
!3246 = !DILocation(line: 241, column: 5, scope: !3237)
!3247 = !DILocalVariable(name: "nbytes", scope: !249, file: !239, line: 248, type: !253)
!3248 = !DILocation(line: 248, column: 9, scope: !249)
!3249 = !DILocalVariable(name: "adjusted_nbytes", scope: !249, file: !239, line: 252, type: !253)
!3250 = !DILocation(line: 252, column: 9, scope: !249)
!3251 = !DILocation(line: 253, column: 8, scope: !249)
!3252 = !DILocation(line: 255, column: 10, scope: !249)
!3253 = !DILocation(line: 255, column: 17, scope: !249)
!3254 = !DILocation(line: 256, column: 7, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !249, file: !239, line: 256, column: 7)
!3256 = !DILocation(line: 256, column: 7, scope: !249)
!3257 = !DILocation(line: 258, column: 11, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3255, file: !239, line: 257, column: 5)
!3259 = !DILocation(line: 258, column: 29, scope: !3258)
!3260 = !DILocation(line: 258, column: 27, scope: !3258)
!3261 = !DILocation(line: 258, column: 9, scope: !3258)
!3262 = !DILocation(line: 259, column: 16, scope: !3258)
!3263 = !DILocation(line: 259, column: 34, scope: !3258)
!3264 = !DILocation(line: 259, column: 52, scope: !3258)
!3265 = !DILocation(line: 259, column: 50, scope: !3258)
!3266 = !DILocation(line: 259, column: 32, scope: !3258)
!3267 = !DILocation(line: 259, column: 14, scope: !3258)
!3268 = !DILocation(line: 260, column: 5, scope: !3258)
!3269 = !DILocation(line: 262, column: 9, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !249, file: !239, line: 262, column: 7)
!3271 = !DILocation(line: 262, column: 7, scope: !249)
!3272 = !DILocation(line: 263, column: 6, scope: !3270)
!3273 = !DILocation(line: 263, column: 9, scope: !3270)
!3274 = !DILocation(line: 263, column: 5, scope: !3270)
!3275 = !DILocation(line: 264, column: 7, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !249, file: !239, line: 264, column: 7)
!3277 = !DILocation(line: 264, column: 11, scope: !3276)
!3278 = !DILocation(line: 264, column: 9, scope: !3276)
!3279 = !DILocation(line: 264, column: 16, scope: !3276)
!3280 = !DILocation(line: 264, column: 14, scope: !3276)
!3281 = !DILocation(line: 265, column: 7, scope: !3276)
!3282 = !DILocation(line: 265, column: 11, scope: !3276)
!3283 = !DILocation(line: 266, column: 11, scope: !3276)
!3284 = !DILocation(line: 266, column: 20, scope: !3276)
!3285 = !DILocation(line: 266, column: 17, scope: !3276)
!3286 = !DILocation(line: 266, column: 26, scope: !3276)
!3287 = !DILocation(line: 266, column: 29, scope: !3276)
!3288 = !DILocation(line: 266, column: 37, scope: !3276)
!3289 = !DILocation(line: 266, column: 35, scope: !3276)
!3290 = !DILocation(line: 267, column: 11, scope: !3276)
!3291 = !DILocation(line: 267, column: 14, scope: !3276)
!3292 = !DILocation(line: 264, column: 7, scope: !249)
!3293 = !DILocation(line: 268, column: 5, scope: !3276)
!3294 = !DILocation(line: 269, column: 18, scope: !249)
!3295 = !DILocation(line: 269, column: 22, scope: !249)
!3296 = !DILocation(line: 269, column: 8, scope: !249)
!3297 = !DILocation(line: 269, column: 6, scope: !249)
!3298 = !DILocation(line: 270, column: 9, scope: !249)
!3299 = !DILocation(line: 270, column: 4, scope: !249)
!3300 = !DILocation(line: 270, column: 7, scope: !249)
!3301 = !DILocation(line: 271, column: 10, scope: !249)
!3302 = !DILocation(line: 271, column: 3, scope: !249)
!3303 = distinct !DISubprogram(name: "xzalloc", scope: !239, file: !239, line: 279, type: !3078, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3304 = !DILocalVariable(name: "s", arg: 1, scope: !3303, file: !239, line: 279, type: !141)
!3305 = !DILocation(line: 279, column: 17, scope: !3303)
!3306 = !DILocation(line: 281, column: 19, scope: !3303)
!3307 = !DILocation(line: 281, column: 10, scope: !3303)
!3308 = !DILocation(line: 281, column: 3, scope: !3303)
!3309 = distinct !DISubprogram(name: "xcalloc", scope: !239, file: !239, line: 294, type: !3142, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3310 = !DILocalVariable(name: "n", arg: 1, scope: !3309, file: !239, line: 294, type: !141)
!3311 = !DILocation(line: 294, column: 17, scope: !3309)
!3312 = !DILocalVariable(name: "s", arg: 2, scope: !3309, file: !239, line: 294, type: !141)
!3313 = !DILocation(line: 294, column: 27, scope: !3309)
!3314 = !DILocation(line: 296, column: 33, scope: !3309)
!3315 = !DILocation(line: 296, column: 36, scope: !3309)
!3316 = !DILocation(line: 296, column: 25, scope: !3309)
!3317 = !DILocation(line: 296, column: 10, scope: !3309)
!3318 = !DILocation(line: 296, column: 3, scope: !3309)
!3319 = distinct !DISubprogram(name: "xizalloc", scope: !239, file: !239, line: 285, type: !3087, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3320 = !DILocalVariable(name: "s", arg: 1, scope: !3319, file: !239, line: 285, type: !253)
!3321 = !DILocation(line: 285, column: 17, scope: !3319)
!3322 = !DILocation(line: 287, column: 20, scope: !3319)
!3323 = !DILocation(line: 287, column: 10, scope: !3319)
!3324 = !DILocation(line: 287, column: 3, scope: !3319)
!3325 = distinct !DISubprogram(name: "xicalloc", scope: !239, file: !239, line: 300, type: !3153, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3326 = !DILocalVariable(name: "n", arg: 1, scope: !3325, file: !239, line: 300, type: !253)
!3327 = !DILocation(line: 300, column: 17, scope: !3325)
!3328 = !DILocalVariable(name: "s", arg: 2, scope: !3325, file: !239, line: 300, type: !253)
!3329 = !DILocation(line: 300, column: 26, scope: !3325)
!3330 = !DILocation(line: 302, column: 34, scope: !3325)
!3331 = !DILocation(line: 302, column: 37, scope: !3325)
!3332 = !DILocation(line: 302, column: 25, scope: !3325)
!3333 = !DILocation(line: 302, column: 10, scope: !3325)
!3334 = !DILocation(line: 302, column: 3, scope: !3325)
!3335 = distinct !DISubprogram(name: "xmemdup", scope: !239, file: !239, line: 310, type: !3336, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!29, !3338, !141}
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3340 = !DILocalVariable(name: "p", arg: 1, scope: !3335, file: !239, line: 310, type: !3338)
!3341 = !DILocation(line: 310, column: 22, scope: !3335)
!3342 = !DILocalVariable(name: "s", arg: 2, scope: !3335, file: !239, line: 310, type: !141)
!3343 = !DILocation(line: 310, column: 32, scope: !3335)
!3344 = !DILocation(line: 312, column: 27, scope: !3335)
!3345 = !DILocation(line: 312, column: 18, scope: !3335)
!3346 = !DILocation(line: 312, column: 31, scope: !3335)
!3347 = !DILocation(line: 312, column: 34, scope: !3335)
!3348 = !DILocation(line: 312, column: 10, scope: !3335)
!3349 = !DILocation(line: 312, column: 3, scope: !3335)
!3350 = distinct !DISubprogram(name: "ximemdup", scope: !239, file: !239, line: 316, type: !3351, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!29, !3338, !253}
!3353 = !DILocalVariable(name: "p", arg: 1, scope: !3350, file: !239, line: 316, type: !3338)
!3354 = !DILocation(line: 316, column: 23, scope: !3350)
!3355 = !DILocalVariable(name: "s", arg: 2, scope: !3350, file: !239, line: 316, type: !253)
!3356 = !DILocation(line: 316, column: 32, scope: !3350)
!3357 = !DILocation(line: 318, column: 28, scope: !3350)
!3358 = !DILocation(line: 318, column: 18, scope: !3350)
!3359 = !DILocation(line: 318, column: 32, scope: !3350)
!3360 = !DILocation(line: 318, column: 35, scope: !3350)
!3361 = !DILocation(line: 318, column: 10, scope: !3350)
!3362 = !DILocation(line: 318, column: 3, scope: !3350)
!3363 = distinct !DISubprogram(name: "ximemdup0", scope: !239, file: !239, line: 325, type: !3364, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!103, !3338, !253}
!3366 = !DILocalVariable(name: "p", arg: 1, scope: !3363, file: !239, line: 325, type: !3338)
!3367 = !DILocation(line: 325, column: 24, scope: !3363)
!3368 = !DILocalVariable(name: "s", arg: 2, scope: !3363, file: !239, line: 325, type: !253)
!3369 = !DILocation(line: 325, column: 33, scope: !3363)
!3370 = !DILocalVariable(name: "result", scope: !3363, file: !239, line: 327, type: !103)
!3371 = !DILocation(line: 327, column: 9, scope: !3363)
!3372 = !DILocation(line: 327, column: 28, scope: !3363)
!3373 = !DILocation(line: 327, column: 30, scope: !3363)
!3374 = !DILocation(line: 327, column: 18, scope: !3363)
!3375 = !DILocation(line: 328, column: 3, scope: !3363)
!3376 = !DILocation(line: 328, column: 10, scope: !3363)
!3377 = !DILocation(line: 328, column: 13, scope: !3363)
!3378 = !DILocation(line: 329, column: 18, scope: !3363)
!3379 = !DILocation(line: 329, column: 26, scope: !3363)
!3380 = !DILocation(line: 329, column: 29, scope: !3363)
!3381 = !DILocation(line: 329, column: 10, scope: !3363)
!3382 = !DILocation(line: 329, column: 3, scope: !3363)
!3383 = distinct !DISubprogram(name: "xstrdup", scope: !239, file: !239, line: 335, type: !2446, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3384 = !DILocalVariable(name: "string", arg: 1, scope: !3383, file: !239, line: 335, type: !6)
!3385 = !DILocation(line: 335, column: 22, scope: !3383)
!3386 = !DILocation(line: 337, column: 19, scope: !3383)
!3387 = !DILocation(line: 337, column: 35, scope: !3383)
!3388 = !DILocation(line: 337, column: 27, scope: !3383)
!3389 = !DILocation(line: 337, column: 43, scope: !3383)
!3390 = !DILocation(line: 337, column: 10, scope: !3383)
!3391 = !DILocation(line: 337, column: 3, scope: !3383)
!3392 = distinct !DISubprogram(name: "xalloc_die", scope: !259, file: !259, line: 32, type: !79, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !258, retainedNodes: !33)
!3393 = !DILocalVariable(name: "__errstatus", scope: !3394, file: !259, line: 34, type: !3395)
!3394 = distinct !DILexicalBlock(scope: !3392, file: !259, line: 34, column: 3)
!3395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!3396 = !DILocation(line: 34, column: 3, scope: !3394)
!3397 = !DILocation(line: 40, column: 3, scope: !3392)
!3398 = distinct !DISubprogram(name: "c32isprint", scope: !3399, file: !3399, line: 41, type: !3400, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !33)
!3399 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!30, !3402}
!3402 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3403, line: 20, baseType: !14)
!3403 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3404 = !DILocalVariable(name: "wc", arg: 1, scope: !3398, file: !3399, line: 41, type: !3402)
!3405 = !DILocation(line: 41, column: 14, scope: !3398)
!3406 = !DILocation(line: 66, column: 22, scope: !3398)
!3407 = !DILocation(line: 66, column: 10, scope: !3398)
!3408 = !DILocation(line: 66, column: 3, scope: !3398)
!3409 = distinct !DISubprogram(name: "close_stream", scope: !263, file: !263, line: 55, type: !3410, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !33)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!30, !3412}
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2736, line: 7, baseType: !3414)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2738, line: 49, size: 1728, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3414, file: !2738, line: 51, baseType: !30, size: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3414, file: !2738, line: 54, baseType: !103, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3414, file: !2738, line: 55, baseType: !103, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3414, file: !2738, line: 56, baseType: !103, size: 64, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3414, file: !2738, line: 57, baseType: !103, size: 64, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3414, file: !2738, line: 58, baseType: !103, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3414, file: !2738, line: 59, baseType: !103, size: 64, offset: 384)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3414, file: !2738, line: 60, baseType: !103, size: 64, offset: 448)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3414, file: !2738, line: 61, baseType: !103, size: 64, offset: 512)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3414, file: !2738, line: 64, baseType: !103, size: 64, offset: 576)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3414, file: !2738, line: 65, baseType: !103, size: 64, offset: 640)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3414, file: !2738, line: 66, baseType: !103, size: 64, offset: 704)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3414, file: !2738, line: 68, baseType: !2753, size: 64, offset: 768)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3414, file: !2738, line: 70, baseType: !3430, size: 64, offset: 832)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3414, file: !2738, line: 72, baseType: !30, size: 32, offset: 896)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3414, file: !2738, line: 73, baseType: !30, size: 32, offset: 928)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3414, file: !2738, line: 74, baseType: !2760, size: 64, offset: 960)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3414, file: !2738, line: 77, baseType: !31, size: 16, offset: 1024)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3414, file: !2738, line: 78, baseType: !2763, size: 8, offset: 1040)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3414, file: !2738, line: 79, baseType: !2765, size: 8, offset: 1048)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3414, file: !2738, line: 81, baseType: !2769, size: 64, offset: 1088)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3414, file: !2738, line: 89, baseType: !2772, size: 64, offset: 1152)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3414, file: !2738, line: 91, baseType: !2774, size: 64, offset: 1216)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3414, file: !2738, line: 92, baseType: !2777, size: 64, offset: 1280)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3414, file: !2738, line: 93, baseType: !3430, size: 64, offset: 1344)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3414, file: !2738, line: 94, baseType: !29, size: 64, offset: 1408)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3414, file: !2738, line: 95, baseType: !141, size: 64, offset: 1472)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3414, file: !2738, line: 96, baseType: !30, size: 32, offset: 1536)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3414, file: !2738, line: 98, baseType: !2784, size: 160, offset: 1568)
!3446 = !DILocalVariable(name: "stream", arg: 1, scope: !3409, file: !263, line: 55, type: !3412)
!3447 = !DILocation(line: 55, column: 21, scope: !3409)
!3448 = !DILocalVariable(name: "some_pending", scope: !3409, file: !263, line: 57, type: !3449)
!3449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!3450 = !DILocation(line: 57, column: 14, scope: !3409)
!3451 = !DILocation(line: 57, column: 42, scope: !3409)
!3452 = !DILocation(line: 57, column: 30, scope: !3409)
!3453 = !DILocation(line: 57, column: 50, scope: !3409)
!3454 = !DILocalVariable(name: "prev_fail", scope: !3409, file: !263, line: 58, type: !3449)
!3455 = !DILocation(line: 58, column: 14, scope: !3409)
!3456 = !DILocation(line: 58, column: 27, scope: !3409)
!3457 = !DILocation(line: 58, column: 43, scope: !3409)
!3458 = !DILocalVariable(name: "fclose_fail", scope: !3409, file: !263, line: 59, type: !3449)
!3459 = !DILocation(line: 59, column: 14, scope: !3409)
!3460 = !DILocation(line: 59, column: 37, scope: !3409)
!3461 = !DILocation(line: 59, column: 29, scope: !3409)
!3462 = !DILocation(line: 59, column: 45, scope: !3409)
!3463 = !DILocation(line: 69, column: 7, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3409, file: !263, line: 69, column: 7)
!3465 = !DILocation(line: 69, column: 17, scope: !3464)
!3466 = !DILocation(line: 69, column: 21, scope: !3464)
!3467 = !DILocation(line: 69, column: 33, scope: !3464)
!3468 = !DILocation(line: 69, column: 37, scope: !3464)
!3469 = !DILocation(line: 69, column: 50, scope: !3464)
!3470 = !DILocation(line: 69, column: 53, scope: !3464)
!3471 = !DILocation(line: 69, column: 59, scope: !3464)
!3472 = !DILocation(line: 69, column: 7, scope: !3409)
!3473 = !DILocation(line: 71, column: 13, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !263, line: 71, column: 11)
!3475 = distinct !DILexicalBlock(scope: !3464, file: !263, line: 70, column: 5)
!3476 = !DILocation(line: 71, column: 11, scope: !3475)
!3477 = !DILocation(line: 72, column: 9, scope: !3474)
!3478 = !DILocation(line: 72, column: 15, scope: !3474)
!3479 = !DILocation(line: 73, column: 7, scope: !3475)
!3480 = !DILocation(line: 76, column: 3, scope: !3409)
!3481 = !DILocation(line: 77, column: 1, scope: !3409)
!3482 = distinct !DISubprogram(name: "rpl_fclose", scope: !265, file: !265, line: 58, type: !3483, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !33)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!30, !3485}
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2736, line: 7, baseType: !3487)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2738, line: 49, size: 1728, elements: !3488)
!3488 = !{!3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3487, file: !2738, line: 51, baseType: !30, size: 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3487, file: !2738, line: 54, baseType: !103, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3487, file: !2738, line: 55, baseType: !103, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3487, file: !2738, line: 56, baseType: !103, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3487, file: !2738, line: 57, baseType: !103, size: 64, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3487, file: !2738, line: 58, baseType: !103, size: 64, offset: 320)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3487, file: !2738, line: 59, baseType: !103, size: 64, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3487, file: !2738, line: 60, baseType: !103, size: 64, offset: 448)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3487, file: !2738, line: 61, baseType: !103, size: 64, offset: 512)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3487, file: !2738, line: 64, baseType: !103, size: 64, offset: 576)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3487, file: !2738, line: 65, baseType: !103, size: 64, offset: 640)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3487, file: !2738, line: 66, baseType: !103, size: 64, offset: 704)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3487, file: !2738, line: 68, baseType: !2753, size: 64, offset: 768)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3487, file: !2738, line: 70, baseType: !3503, size: 64, offset: 832)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3487, file: !2738, line: 72, baseType: !30, size: 32, offset: 896)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3487, file: !2738, line: 73, baseType: !30, size: 32, offset: 928)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3487, file: !2738, line: 74, baseType: !2760, size: 64, offset: 960)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3487, file: !2738, line: 77, baseType: !31, size: 16, offset: 1024)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3487, file: !2738, line: 78, baseType: !2763, size: 8, offset: 1040)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3487, file: !2738, line: 79, baseType: !2765, size: 8, offset: 1048)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3487, file: !2738, line: 81, baseType: !2769, size: 64, offset: 1088)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3487, file: !2738, line: 89, baseType: !2772, size: 64, offset: 1152)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3487, file: !2738, line: 91, baseType: !2774, size: 64, offset: 1216)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3487, file: !2738, line: 92, baseType: !2777, size: 64, offset: 1280)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3487, file: !2738, line: 93, baseType: !3503, size: 64, offset: 1344)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3487, file: !2738, line: 94, baseType: !29, size: 64, offset: 1408)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3487, file: !2738, line: 95, baseType: !141, size: 64, offset: 1472)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3487, file: !2738, line: 96, baseType: !30, size: 32, offset: 1536)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3487, file: !2738, line: 98, baseType: !2784, size: 160, offset: 1568)
!3519 = !DILocalVariable(name: "fp", arg: 1, scope: !3482, file: !265, line: 58, type: !3485)
!3520 = !DILocation(line: 58, column: 19, scope: !3482)
!3521 = !DILocalVariable(name: "saved_errno", scope: !3482, file: !265, line: 60, type: !30)
!3522 = !DILocation(line: 60, column: 7, scope: !3482)
!3523 = !DILocalVariable(name: "fd", scope: !3482, file: !265, line: 63, type: !30)
!3524 = !DILocation(line: 63, column: 7, scope: !3482)
!3525 = !DILocation(line: 63, column: 20, scope: !3482)
!3526 = !DILocation(line: 63, column: 12, scope: !3482)
!3527 = !DILocation(line: 64, column: 7, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3482, file: !265, line: 64, column: 7)
!3529 = !DILocation(line: 64, column: 10, scope: !3528)
!3530 = !DILocation(line: 64, column: 7, scope: !3482)
!3531 = !DILocation(line: 65, column: 28, scope: !3528)
!3532 = !DILocation(line: 65, column: 12, scope: !3528)
!3533 = !DILocation(line: 65, column: 5, scope: !3528)
!3534 = !DILocation(line: 70, column: 9, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3482, file: !265, line: 70, column: 7)
!3536 = !DILocation(line: 70, column: 23, scope: !3535)
!3537 = !DILocation(line: 70, column: 41, scope: !3535)
!3538 = !DILocation(line: 70, column: 33, scope: !3535)
!3539 = !DILocation(line: 70, column: 26, scope: !3535)
!3540 = !DILocation(line: 70, column: 59, scope: !3535)
!3541 = !DILocation(line: 71, column: 7, scope: !3535)
!3542 = !DILocation(line: 71, column: 18, scope: !3535)
!3543 = !DILocation(line: 71, column: 10, scope: !3535)
!3544 = !DILocation(line: 70, column: 7, scope: !3482)
!3545 = !DILocation(line: 72, column: 19, scope: !3535)
!3546 = !DILocation(line: 72, column: 17, scope: !3535)
!3547 = !DILocation(line: 72, column: 5, scope: !3535)
!3548 = !DILocalVariable(name: "result", scope: !3482, file: !265, line: 74, type: !30)
!3549 = !DILocation(line: 74, column: 7, scope: !3482)
!3550 = !DILocation(line: 100, column: 28, scope: !3482)
!3551 = !DILocation(line: 100, column: 12, scope: !3482)
!3552 = !DILocation(line: 100, column: 10, scope: !3482)
!3553 = !DILocation(line: 105, column: 7, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3482, file: !265, line: 105, column: 7)
!3555 = !DILocation(line: 105, column: 19, scope: !3554)
!3556 = !DILocation(line: 105, column: 7, scope: !3482)
!3557 = !DILocation(line: 107, column: 15, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3554, file: !265, line: 106, column: 5)
!3559 = !DILocation(line: 107, column: 7, scope: !3558)
!3560 = !DILocation(line: 107, column: 13, scope: !3558)
!3561 = !DILocation(line: 108, column: 14, scope: !3558)
!3562 = !DILocation(line: 109, column: 5, scope: !3558)
!3563 = !DILocation(line: 111, column: 10, scope: !3482)
!3564 = !DILocation(line: 111, column: 3, scope: !3482)
!3565 = !DILocation(line: 112, column: 1, scope: !3482)
!3566 = distinct !DISubprogram(name: "rpl_fflush", scope: !267, file: !267, line: 130, type: !3567, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !33)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!30, !3569}
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2736, line: 7, baseType: !3571)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2738, line: 49, size: 1728, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3571, file: !2738, line: 51, baseType: !30, size: 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3571, file: !2738, line: 54, baseType: !103, size: 64, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3571, file: !2738, line: 55, baseType: !103, size: 64, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3571, file: !2738, line: 56, baseType: !103, size: 64, offset: 192)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3571, file: !2738, line: 57, baseType: !103, size: 64, offset: 256)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3571, file: !2738, line: 58, baseType: !103, size: 64, offset: 320)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3571, file: !2738, line: 59, baseType: !103, size: 64, offset: 384)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3571, file: !2738, line: 60, baseType: !103, size: 64, offset: 448)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3571, file: !2738, line: 61, baseType: !103, size: 64, offset: 512)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3571, file: !2738, line: 64, baseType: !103, size: 64, offset: 576)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3571, file: !2738, line: 65, baseType: !103, size: 64, offset: 640)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3571, file: !2738, line: 66, baseType: !103, size: 64, offset: 704)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3571, file: !2738, line: 68, baseType: !2753, size: 64, offset: 768)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3571, file: !2738, line: 70, baseType: !3587, size: 64, offset: 832)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3571, file: !2738, line: 72, baseType: !30, size: 32, offset: 896)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3571, file: !2738, line: 73, baseType: !30, size: 32, offset: 928)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3571, file: !2738, line: 74, baseType: !2760, size: 64, offset: 960)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3571, file: !2738, line: 77, baseType: !31, size: 16, offset: 1024)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3571, file: !2738, line: 78, baseType: !2763, size: 8, offset: 1040)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3571, file: !2738, line: 79, baseType: !2765, size: 8, offset: 1048)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3571, file: !2738, line: 81, baseType: !2769, size: 64, offset: 1088)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3571, file: !2738, line: 89, baseType: !2772, size: 64, offset: 1152)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3571, file: !2738, line: 91, baseType: !2774, size: 64, offset: 1216)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3571, file: !2738, line: 92, baseType: !2777, size: 64, offset: 1280)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3571, file: !2738, line: 93, baseType: !3587, size: 64, offset: 1344)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3571, file: !2738, line: 94, baseType: !29, size: 64, offset: 1408)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3571, file: !2738, line: 95, baseType: !141, size: 64, offset: 1472)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3571, file: !2738, line: 96, baseType: !30, size: 32, offset: 1536)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3571, file: !2738, line: 98, baseType: !2784, size: 160, offset: 1568)
!3603 = !DILocalVariable(name: "stream", arg: 1, scope: !3566, file: !267, line: 130, type: !3569)
!3604 = !DILocation(line: 130, column: 19, scope: !3566)
!3605 = !DILocation(line: 151, column: 7, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3566, file: !267, line: 151, column: 7)
!3607 = !DILocation(line: 151, column: 14, scope: !3606)
!3608 = !DILocation(line: 151, column: 22, scope: !3606)
!3609 = !DILocation(line: 151, column: 27, scope: !3606)
!3610 = !DILocation(line: 151, column: 7, scope: !3566)
!3611 = !DILocation(line: 152, column: 20, scope: !3606)
!3612 = !DILocation(line: 152, column: 12, scope: !3606)
!3613 = !DILocation(line: 152, column: 5, scope: !3606)
!3614 = !DILocation(line: 157, column: 44, scope: !3566)
!3615 = !DILocation(line: 157, column: 3, scope: !3566)
!3616 = !DILocation(line: 159, column: 18, scope: !3566)
!3617 = !DILocation(line: 159, column: 10, scope: !3566)
!3618 = !DILocation(line: 159, column: 3, scope: !3566)
!3619 = !DILocation(line: 236, column: 1, scope: !3566)
!3620 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !267, file: !267, line: 42, type: !3621, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !266, retainedNodes: !33)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{null, !3569}
!3623 = !DILocalVariable(name: "fp", arg: 1, scope: !3620, file: !267, line: 42, type: !3569)
!3624 = !DILocation(line: 42, column: 48, scope: !3620)
!3625 = !DILocation(line: 44, column: 7, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3620, file: !267, line: 44, column: 7)
!3627 = !DILocation(line: 44, column: 12, scope: !3626)
!3628 = !DILocation(line: 44, column: 19, scope: !3626)
!3629 = !DILocation(line: 44, column: 7, scope: !3620)
!3630 = !DILocation(line: 46, column: 13, scope: !3626)
!3631 = !DILocation(line: 46, column: 5, scope: !3626)
!3632 = !DILocation(line: 47, column: 1, scope: !3620)
!3633 = distinct !DISubprogram(name: "rpl_fseeko", scope: !269, file: !269, line: 28, type: !3634, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !33)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!30, !3636, !3670, !30}
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2736, line: 7, baseType: !3638)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2738, line: 49, size: 1728, elements: !3639)
!3639 = !{!3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3638, file: !2738, line: 51, baseType: !30, size: 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3638, file: !2738, line: 54, baseType: !103, size: 64, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3638, file: !2738, line: 55, baseType: !103, size: 64, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3638, file: !2738, line: 56, baseType: !103, size: 64, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3638, file: !2738, line: 57, baseType: !103, size: 64, offset: 256)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3638, file: !2738, line: 58, baseType: !103, size: 64, offset: 320)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3638, file: !2738, line: 59, baseType: !103, size: 64, offset: 384)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3638, file: !2738, line: 60, baseType: !103, size: 64, offset: 448)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3638, file: !2738, line: 61, baseType: !103, size: 64, offset: 512)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3638, file: !2738, line: 64, baseType: !103, size: 64, offset: 576)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3638, file: !2738, line: 65, baseType: !103, size: 64, offset: 640)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3638, file: !2738, line: 66, baseType: !103, size: 64, offset: 704)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3638, file: !2738, line: 68, baseType: !2753, size: 64, offset: 768)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3638, file: !2738, line: 70, baseType: !3654, size: 64, offset: 832)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3638, file: !2738, line: 72, baseType: !30, size: 32, offset: 896)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3638, file: !2738, line: 73, baseType: !30, size: 32, offset: 928)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3638, file: !2738, line: 74, baseType: !2760, size: 64, offset: 960)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3638, file: !2738, line: 77, baseType: !31, size: 16, offset: 1024)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3638, file: !2738, line: 78, baseType: !2763, size: 8, offset: 1040)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3638, file: !2738, line: 79, baseType: !2765, size: 8, offset: 1048)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3638, file: !2738, line: 81, baseType: !2769, size: 64, offset: 1088)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3638, file: !2738, line: 89, baseType: !2772, size: 64, offset: 1152)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3638, file: !2738, line: 91, baseType: !2774, size: 64, offset: 1216)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3638, file: !2738, line: 92, baseType: !2777, size: 64, offset: 1280)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3638, file: !2738, line: 93, baseType: !3654, size: 64, offset: 1344)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3638, file: !2738, line: 94, baseType: !29, size: 64, offset: 1408)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3638, file: !2738, line: 95, baseType: !141, size: 64, offset: 1472)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3638, file: !2738, line: 96, baseType: !30, size: 32, offset: 1536)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3638, file: !2738, line: 98, baseType: !2784, size: 160, offset: 1568)
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !59, line: 63, baseType: !2760)
!3671 = !DILocalVariable(name: "fp", arg: 1, scope: !3633, file: !269, line: 28, type: !3636)
!3672 = !DILocation(line: 28, column: 15, scope: !3633)
!3673 = !DILocalVariable(name: "offset", arg: 2, scope: !3633, file: !269, line: 28, type: !3670)
!3674 = !DILocation(line: 28, column: 25, scope: !3633)
!3675 = !DILocalVariable(name: "whence", arg: 3, scope: !3633, file: !269, line: 28, type: !30)
!3676 = !DILocation(line: 28, column: 37, scope: !3633)
!3677 = !DILocation(line: 55, column: 7, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3633, file: !269, line: 55, column: 7)
!3679 = !DILocation(line: 55, column: 12, scope: !3678)
!3680 = !DILocation(line: 55, column: 28, scope: !3678)
!3681 = !DILocation(line: 55, column: 33, scope: !3678)
!3682 = !DILocation(line: 55, column: 25, scope: !3678)
!3683 = !DILocation(line: 56, column: 7, scope: !3678)
!3684 = !DILocation(line: 56, column: 10, scope: !3678)
!3685 = !DILocation(line: 56, column: 15, scope: !3678)
!3686 = !DILocation(line: 56, column: 32, scope: !3678)
!3687 = !DILocation(line: 56, column: 37, scope: !3678)
!3688 = !DILocation(line: 56, column: 29, scope: !3678)
!3689 = !DILocation(line: 57, column: 7, scope: !3678)
!3690 = !DILocation(line: 57, column: 10, scope: !3678)
!3691 = !DILocation(line: 57, column: 15, scope: !3678)
!3692 = !DILocation(line: 57, column: 29, scope: !3678)
!3693 = !DILocation(line: 55, column: 7, scope: !3633)
!3694 = !DILocalVariable(name: "pos", scope: !3695, file: !269, line: 123, type: !3670)
!3695 = distinct !DILexicalBlock(scope: !3678, file: !269, line: 119, column: 5)
!3696 = !DILocation(line: 123, column: 13, scope: !3695)
!3697 = !DILocation(line: 123, column: 34, scope: !3695)
!3698 = !DILocation(line: 123, column: 26, scope: !3695)
!3699 = !DILocation(line: 123, column: 39, scope: !3695)
!3700 = !DILocation(line: 123, column: 47, scope: !3695)
!3701 = !DILocation(line: 123, column: 19, scope: !3695)
!3702 = !DILocation(line: 124, column: 11, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3695, file: !269, line: 124, column: 11)
!3704 = !DILocation(line: 124, column: 15, scope: !3703)
!3705 = !DILocation(line: 124, column: 11, scope: !3695)
!3706 = !DILocation(line: 130, column: 11, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3703, file: !269, line: 125, column: 9)
!3708 = !DILocation(line: 135, column: 7, scope: !3695)
!3709 = !DILocation(line: 135, column: 12, scope: !3695)
!3710 = !DILocation(line: 135, column: 19, scope: !3695)
!3711 = !DILocation(line: 136, column: 22, scope: !3695)
!3712 = !DILocation(line: 136, column: 7, scope: !3695)
!3713 = !DILocation(line: 136, column: 12, scope: !3695)
!3714 = !DILocation(line: 136, column: 20, scope: !3695)
!3715 = !DILocation(line: 167, column: 7, scope: !3695)
!3716 = !DILocation(line: 169, column: 18, scope: !3633)
!3717 = !DILocation(line: 169, column: 22, scope: !3633)
!3718 = !DILocation(line: 169, column: 30, scope: !3633)
!3719 = !DILocation(line: 169, column: 10, scope: !3633)
!3720 = !DILocation(line: 169, column: 3, scope: !3633)
!3721 = !DILocation(line: 170, column: 1, scope: !3633)
!3722 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !3723, file: !3723, line: 43, type: !3724, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !33)
!3723 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3724 = !DISubroutineType(types: !51)
!3725 = !DILocation(line: 45, column: 3, scope: !3722)
!3726 = !DILocation(line: 45, column: 9, scope: !3722)
!3727 = !DILocation(line: 46, column: 3, scope: !3722)
!3728 = distinct !DISubprogram(name: "imalloc", scope: !3723, file: !3723, line: 55, type: !3087, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !33)
!3729 = !DILocalVariable(name: "s", arg: 1, scope: !3728, file: !3723, line: 55, type: !253)
!3730 = !DILocation(line: 55, column: 16, scope: !3728)
!3731 = !DILocation(line: 57, column: 10, scope: !3728)
!3732 = !DILocation(line: 57, column: 12, scope: !3728)
!3733 = !DILocation(line: 57, column: 34, scope: !3728)
!3734 = !DILocation(line: 57, column: 26, scope: !3728)
!3735 = !DILocation(line: 57, column: 39, scope: !3728)
!3736 = !DILocation(line: 57, column: 3, scope: !3728)
!3737 = distinct !DISubprogram(name: "irealloc", scope: !3723, file: !3723, line: 66, type: !3115, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !33)
!3738 = !DILocalVariable(name: "p", arg: 1, scope: !3737, file: !3723, line: 66, type: !29)
!3739 = !DILocation(line: 66, column: 17, scope: !3737)
!3740 = !DILocalVariable(name: "s", arg: 2, scope: !3737, file: !3723, line: 66, type: !253)
!3741 = !DILocation(line: 66, column: 26, scope: !3737)
!3742 = !DILocation(line: 68, column: 10, scope: !3737)
!3743 = !DILocation(line: 68, column: 12, scope: !3737)
!3744 = !DILocation(line: 68, column: 35, scope: !3737)
!3745 = !DILocation(line: 68, column: 38, scope: !3737)
!3746 = !DILocation(line: 68, column: 26, scope: !3737)
!3747 = !DILocation(line: 68, column: 43, scope: !3737)
!3748 = !DILocation(line: 68, column: 3, scope: !3737)
!3749 = distinct !DISubprogram(name: "icalloc", scope: !3723, file: !3723, line: 77, type: !3153, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !33)
!3750 = !DILocalVariable(name: "n", arg: 1, scope: !3749, file: !3723, line: 77, type: !253)
!3751 = !DILocation(line: 77, column: 16, scope: !3749)
!3752 = !DILocalVariable(name: "s", arg: 2, scope: !3749, file: !3723, line: 77, type: !253)
!3753 = !DILocation(line: 77, column: 25, scope: !3749)
!3754 = !DILocation(line: 79, column: 18, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3749, file: !3723, line: 79, column: 7)
!3756 = !DILocation(line: 79, column: 16, scope: !3755)
!3757 = !DILocation(line: 79, column: 7, scope: !3749)
!3758 = !DILocation(line: 81, column: 11, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !3723, line: 81, column: 11)
!3760 = distinct !DILexicalBlock(scope: !3755, file: !3723, line: 80, column: 5)
!3761 = !DILocation(line: 81, column: 13, scope: !3759)
!3762 = !DILocation(line: 81, column: 11, scope: !3760)
!3763 = !DILocation(line: 82, column: 16, scope: !3759)
!3764 = !DILocation(line: 82, column: 9, scope: !3759)
!3765 = !DILocation(line: 83, column: 9, scope: !3760)
!3766 = !DILocation(line: 84, column: 5, scope: !3760)
!3767 = !DILocation(line: 85, column: 18, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3749, file: !3723, line: 85, column: 7)
!3769 = !DILocation(line: 85, column: 16, scope: !3768)
!3770 = !DILocation(line: 85, column: 7, scope: !3749)
!3771 = !DILocation(line: 87, column: 11, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3773, file: !3723, line: 87, column: 11)
!3773 = distinct !DILexicalBlock(scope: !3768, file: !3723, line: 86, column: 5)
!3774 = !DILocation(line: 87, column: 13, scope: !3772)
!3775 = !DILocation(line: 87, column: 11, scope: !3773)
!3776 = !DILocation(line: 88, column: 16, scope: !3772)
!3777 = !DILocation(line: 88, column: 9, scope: !3772)
!3778 = !DILocation(line: 89, column: 9, scope: !3773)
!3779 = !DILocation(line: 90, column: 5, scope: !3773)
!3780 = !DILocation(line: 91, column: 18, scope: !3749)
!3781 = !DILocation(line: 91, column: 21, scope: !3749)
!3782 = !DILocation(line: 91, column: 10, scope: !3749)
!3783 = !DILocation(line: 91, column: 3, scope: !3749)
!3784 = !DILocation(line: 92, column: 1, scope: !3749)
!3785 = distinct !DISubprogram(name: "ireallocarray", scope: !3723, file: !3723, line: 98, type: !3127, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !33)
!3786 = !DILocalVariable(name: "p", arg: 1, scope: !3785, file: !3723, line: 98, type: !29)
!3787 = !DILocation(line: 98, column: 22, scope: !3785)
!3788 = !DILocalVariable(name: "n", arg: 2, scope: !3785, file: !3723, line: 98, type: !253)
!3789 = !DILocation(line: 98, column: 31, scope: !3785)
!3790 = !DILocalVariable(name: "s", arg: 3, scope: !3785, file: !3723, line: 98, type: !253)
!3791 = !DILocation(line: 98, column: 40, scope: !3785)
!3792 = !DILocation(line: 100, column: 11, scope: !3785)
!3793 = !DILocation(line: 100, column: 13, scope: !3785)
!3794 = !DILocation(line: 100, column: 25, scope: !3785)
!3795 = !DILocation(line: 100, column: 28, scope: !3785)
!3796 = !DILocation(line: 100, column: 30, scope: !3785)
!3797 = !DILocation(line: 101, column: 27, scope: !3785)
!3798 = !DILocation(line: 101, column: 30, scope: !3785)
!3799 = !DILocation(line: 101, column: 33, scope: !3785)
!3800 = !DILocation(line: 101, column: 13, scope: !3785)
!3801 = !DILocation(line: 102, column: 13, scope: !3785)
!3802 = !DILocation(line: 100, column: 3, scope: !3785)
!3803 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !210, file: !210, line: 100, type: !3804, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !209, retainedNodes: !33)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!141, !3806, !6, !141, !3807}
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!3808 = !DILocalVariable(name: "pwc", arg: 1, scope: !3803, file: !210, line: 100, type: !3806)
!3809 = !DILocation(line: 100, column: 21, scope: !3803)
!3810 = !DILocalVariable(name: "s", arg: 2, scope: !3803, file: !210, line: 100, type: !6)
!3811 = !DILocation(line: 100, column: 38, scope: !3803)
!3812 = !DILocalVariable(name: "n", arg: 3, scope: !3803, file: !210, line: 100, type: !141)
!3813 = !DILocation(line: 100, column: 48, scope: !3803)
!3814 = !DILocalVariable(name: "ps", arg: 4, scope: !3803, file: !210, line: 100, type: !3807)
!3815 = !DILocation(line: 100, column: 62, scope: !3803)
!3816 = !DILocation(line: 105, column: 7, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3803, file: !210, line: 105, column: 7)
!3818 = !DILocation(line: 105, column: 9, scope: !3817)
!3819 = !DILocation(line: 105, column: 7, scope: !3803)
!3820 = !DILocation(line: 107, column: 11, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3817, file: !210, line: 106, column: 5)
!3822 = !DILocation(line: 108, column: 9, scope: !3821)
!3823 = !DILocation(line: 109, column: 9, scope: !3821)
!3824 = !DILocation(line: 110, column: 5, scope: !3821)
!3825 = !DILocation(line: 117, column: 7, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3803, file: !210, line: 117, column: 7)
!3827 = !DILocation(line: 117, column: 10, scope: !3826)
!3828 = !DILocation(line: 117, column: 7, scope: !3803)
!3829 = !DILocation(line: 118, column: 8, scope: !3826)
!3830 = !DILocation(line: 118, column: 5, scope: !3826)
!3831 = !DILocalVariable(name: "ret", scope: !3803, file: !210, line: 130, type: !141)
!3832 = !DILocation(line: 130, column: 10, scope: !3803)
!3833 = !DILocation(line: 130, column: 26, scope: !3803)
!3834 = !DILocation(line: 130, column: 31, scope: !3803)
!3835 = !DILocation(line: 130, column: 34, scope: !3803)
!3836 = !DILocation(line: 130, column: 37, scope: !3803)
!3837 = !DILocation(line: 130, column: 16, scope: !3803)
!3838 = !DILocation(line: 135, column: 7, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3803, file: !210, line: 135, column: 7)
!3840 = !DILocation(line: 135, column: 11, scope: !3839)
!3841 = !DILocation(line: 135, column: 25, scope: !3839)
!3842 = !DILocation(line: 135, column: 39, scope: !3839)
!3843 = !DILocation(line: 135, column: 30, scope: !3839)
!3844 = !DILocation(line: 135, column: 7, scope: !3803)
!3845 = !DILocation(line: 137, column: 14, scope: !3839)
!3846 = !DILocation(line: 137, column: 5, scope: !3839)
!3847 = !DILocation(line: 138, column: 7, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3803, file: !210, line: 138, column: 7)
!3849 = !DILocation(line: 138, column: 11, scope: !3848)
!3850 = !DILocation(line: 138, column: 7, scope: !3803)
!3851 = !DILocation(line: 139, column: 5, scope: !3848)
!3852 = !DILocation(line: 143, column: 22, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3803, file: !210, line: 143, column: 7)
!3854 = !DILocation(line: 143, column: 19, scope: !3853)
!3855 = !DILocation(line: 143, column: 26, scope: !3853)
!3856 = !DILocation(line: 143, column: 29, scope: !3853)
!3857 = !DILocation(line: 143, column: 31, scope: !3853)
!3858 = !DILocation(line: 143, column: 36, scope: !3853)
!3859 = !DILocation(line: 143, column: 41, scope: !3853)
!3860 = !DILocation(line: 143, column: 7, scope: !3803)
!3861 = !DILocation(line: 145, column: 11, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !210, line: 145, column: 11)
!3863 = distinct !DILexicalBlock(scope: !3853, file: !210, line: 144, column: 5)
!3864 = !DILocation(line: 145, column: 15, scope: !3862)
!3865 = !DILocation(line: 145, column: 11, scope: !3863)
!3866 = !DILocation(line: 146, column: 33, scope: !3862)
!3867 = !DILocation(line: 146, column: 32, scope: !3862)
!3868 = !DILocation(line: 146, column: 16, scope: !3862)
!3869 = !DILocation(line: 146, column: 10, scope: !3862)
!3870 = !DILocation(line: 146, column: 14, scope: !3862)
!3871 = !DILocation(line: 146, column: 9, scope: !3862)
!3872 = !DILocation(line: 147, column: 7, scope: !3863)
!3873 = !DILocation(line: 151, column: 10, scope: !3803)
!3874 = !DILocation(line: 151, column: 3, scope: !3803)
!3875 = !DILocation(line: 286, column: 1, scope: !3803)
!3876 = distinct !DISubprogram(name: "mbszero", scope: !3877, file: !3877, line: 1135, type: !3878, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !272, retainedNodes: !33)
!3877 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3878 = !DISubroutineType(types: !3879)
!3879 = !{null, !3880}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !3882)
!3882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !3883)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !3884)
!3884 = !{!3885, !3886}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3883, file: !217, line: 15, baseType: !30, size: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3883, file: !217, line: 20, baseType: !3887, size: 32, offset: 32)
!3887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3883, file: !217, line: 16, size: 32, elements: !3888)
!3888 = !{!3889, !3890}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3887, file: !217, line: 18, baseType: !14, size: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3887, file: !217, line: 19, baseType: !226, size: 32)
!3891 = !DILocalVariable(name: "ps", arg: 1, scope: !3876, file: !3877, line: 1135, type: !3880)
!3892 = !DILocation(line: 1135, column: 21, scope: !3876)
!3893 = !DILocation(line: 1137, column: 11, scope: !3876)
!3894 = !DILocation(line: 1137, column: 3, scope: !3876)
!3895 = !DILocation(line: 1138, column: 1, scope: !3876)
!3896 = distinct !DISubprogram(name: "memeq", scope: !2719, file: !2719, line: 974, type: !3897, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !33)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!46, !3338, !3338, !141}
!3899 = !DILocalVariable(name: "__s1", arg: 1, scope: !3896, file: !2719, line: 974, type: !3338)
!3900 = !DILocation(line: 974, column: 20, scope: !3896)
!3901 = !DILocalVariable(name: "__s2", arg: 2, scope: !3896, file: !2719, line: 974, type: !3338)
!3902 = !DILocation(line: 974, column: 38, scope: !3896)
!3903 = !DILocalVariable(name: "__n", arg: 3, scope: !3896, file: !2719, line: 974, type: !141)
!3904 = !DILocation(line: 974, column: 51, scope: !3896)
!3905 = !DILocation(line: 976, column: 19, scope: !3896)
!3906 = !DILocation(line: 976, column: 25, scope: !3896)
!3907 = !DILocation(line: 976, column: 31, scope: !3896)
!3908 = !DILocation(line: 976, column: 11, scope: !3896)
!3909 = !DILocation(line: 976, column: 10, scope: !3896)
!3910 = !DILocation(line: 976, column: 3, scope: !3896)
!3911 = distinct !DISubprogram(name: "rpl_realloc", scope: !3912, file: !3912, line: 2057, type: !3103, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !33)
!3912 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3913 = !DILocalVariable(name: "ptr", arg: 1, scope: !3911, file: !3912, line: 2057, type: !29)
!3914 = !DILocation(line: 2057, column: 20, scope: !3911)
!3915 = !DILocalVariable(name: "size", arg: 2, scope: !3911, file: !3912, line: 2057, type: !141)
!3916 = !DILocation(line: 2057, column: 32, scope: !3911)
!3917 = !DILocation(line: 2059, column: 19, scope: !3911)
!3918 = !DILocation(line: 2059, column: 24, scope: !3911)
!3919 = !DILocation(line: 2059, column: 31, scope: !3911)
!3920 = !DILocation(line: 2059, column: 10, scope: !3911)
!3921 = !DILocation(line: 2059, column: 3, scope: !3911)
!3922 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !279, file: !279, line: 27, type: !3040, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !278, retainedNodes: !33)
!3923 = !DILocalVariable(name: "ptr", arg: 1, scope: !3922, file: !279, line: 27, type: !29)
!3924 = !DILocation(line: 27, column: 21, scope: !3922)
!3925 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3922, file: !279, line: 27, type: !141)
!3926 = !DILocation(line: 27, column: 33, scope: !3922)
!3927 = !DILocalVariable(name: "size", arg: 3, scope: !3922, file: !279, line: 27, type: !141)
!3928 = !DILocation(line: 27, column: 47, scope: !3922)
!3929 = !DILocalVariable(name: "nbytes", scope: !3922, file: !279, line: 29, type: !141)
!3930 = !DILocation(line: 29, column: 10, scope: !3922)
!3931 = !DILocation(line: 30, column: 7, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3922, file: !279, line: 30, column: 7)
!3933 = !DILocation(line: 30, column: 7, scope: !3922)
!3934 = !DILocation(line: 32, column: 7, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3932, file: !279, line: 31, column: 5)
!3936 = !DILocation(line: 32, column: 13, scope: !3935)
!3937 = !DILocation(line: 33, column: 7, scope: !3935)
!3938 = !DILocation(line: 37, column: 19, scope: !3922)
!3939 = !DILocation(line: 37, column: 24, scope: !3922)
!3940 = !DILocation(line: 37, column: 10, scope: !3922)
!3941 = !DILocation(line: 37, column: 3, scope: !3922)
!3942 = !DILocation(line: 38, column: 1, scope: !3922)
!3943 = distinct !DISubprogram(name: "hard_locale", scope: !282, file: !282, line: 28, type: !3944, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !281, retainedNodes: !33)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!46, !30}
!3946 = !DILocalVariable(name: "category", arg: 1, scope: !3943, file: !282, line: 28, type: !30)
!3947 = !DILocation(line: 28, column: 18, scope: !3943)
!3948 = !DILocalVariable(name: "locale", scope: !3943, file: !282, line: 30, type: !3949)
!3949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3950)
!3950 = !{!3951}
!3951 = !DISubrange(count: 257)
!3952 = !DILocation(line: 30, column: 8, scope: !3943)
!3953 = !DILocation(line: 32, column: 25, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3943, file: !282, line: 32, column: 7)
!3955 = !DILocation(line: 32, column: 35, scope: !3954)
!3956 = !DILocation(line: 32, column: 7, scope: !3954)
!3957 = !DILocation(line: 32, column: 7, scope: !3943)
!3958 = !DILocation(line: 33, column: 5, scope: !3954)
!3959 = !DILocation(line: 35, column: 16, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3943, file: !282, line: 35, column: 7)
!3961 = !DILocation(line: 35, column: 9, scope: !3960)
!3962 = !DILocation(line: 35, column: 29, scope: !3960)
!3963 = !DILocation(line: 35, column: 39, scope: !3960)
!3964 = !DILocation(line: 35, column: 32, scope: !3960)
!3965 = !DILocation(line: 35, column: 7, scope: !3943)
!3966 = !DILocation(line: 36, column: 5, scope: !3960)
!3967 = !DILocation(line: 46, column: 3, scope: !3943)
!3968 = !DILocation(line: 47, column: 1, scope: !3943)
!3969 = distinct !DISubprogram(name: "setlocale_null_r", scope: !284, file: !284, line: 154, type: !3970, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !33)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!30, !30, !103, !141}
!3972 = !DILocalVariable(name: "category", arg: 1, scope: !3969, file: !284, line: 154, type: !30)
!3973 = !DILocation(line: 154, column: 23, scope: !3969)
!3974 = !DILocalVariable(name: "buf", arg: 2, scope: !3969, file: !284, line: 154, type: !103)
!3975 = !DILocation(line: 154, column: 39, scope: !3969)
!3976 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3969, file: !284, line: 154, type: !141)
!3977 = !DILocation(line: 154, column: 51, scope: !3969)
!3978 = !DILocation(line: 159, column: 37, scope: !3969)
!3979 = !DILocation(line: 159, column: 47, scope: !3969)
!3980 = !DILocation(line: 159, column: 52, scope: !3969)
!3981 = !DILocation(line: 159, column: 10, scope: !3969)
!3982 = !DILocation(line: 159, column: 3, scope: !3969)
!3983 = distinct !DISubprogram(name: "setlocale_null", scope: !284, file: !284, line: 186, type: !3984, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !33)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!6, !30}
!3986 = !DILocalVariable(name: "category", arg: 1, scope: !3983, file: !284, line: 186, type: !30)
!3987 = !DILocation(line: 186, column: 21, scope: !3983)
!3988 = !DILocation(line: 189, column: 35, scope: !3983)
!3989 = !DILocation(line: 189, column: 10, scope: !3983)
!3990 = !DILocation(line: 189, column: 3, scope: !3983)
!3991 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !286, file: !286, line: 35, type: !3984, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !285, retainedNodes: !33)
!3992 = !DILocalVariable(name: "category", arg: 1, scope: !3991, file: !286, line: 35, type: !30)
!3993 = !DILocation(line: 35, column: 30, scope: !3991)
!3994 = !DILocalVariable(name: "result", scope: !3991, file: !286, line: 37, type: !6)
!3995 = !DILocation(line: 37, column: 15, scope: !3991)
!3996 = !DILocation(line: 37, column: 35, scope: !3991)
!3997 = !DILocation(line: 37, column: 24, scope: !3991)
!3998 = !DILocation(line: 62, column: 10, scope: !3991)
!3999 = !DILocation(line: 62, column: 3, scope: !3991)
!4000 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !286, file: !286, line: 66, type: !3970, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !285, retainedNodes: !33)
!4001 = !DILocalVariable(name: "category", arg: 1, scope: !4000, file: !286, line: 66, type: !30)
!4002 = !DILocation(line: 66, column: 32, scope: !4000)
!4003 = !DILocalVariable(name: "buf", arg: 2, scope: !4000, file: !286, line: 66, type: !103)
!4004 = !DILocation(line: 66, column: 48, scope: !4000)
!4005 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4000, file: !286, line: 66, type: !141)
!4006 = !DILocation(line: 66, column: 60, scope: !4000)
!4007 = !DILocalVariable(name: "result", scope: !4000, file: !286, line: 111, type: !6)
!4008 = !DILocation(line: 111, column: 15, scope: !4000)
!4009 = !DILocation(line: 111, column: 49, scope: !4000)
!4010 = !DILocation(line: 111, column: 24, scope: !4000)
!4011 = !DILocation(line: 113, column: 7, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4000, file: !286, line: 113, column: 7)
!4013 = !DILocation(line: 113, column: 14, scope: !4012)
!4014 = !DILocation(line: 113, column: 7, scope: !4000)
!4015 = !DILocation(line: 116, column: 11, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !286, line: 116, column: 11)
!4017 = distinct !DILexicalBlock(scope: !4012, file: !286, line: 114, column: 5)
!4018 = !DILocation(line: 116, column: 19, scope: !4016)
!4019 = !DILocation(line: 116, column: 11, scope: !4017)
!4020 = !DILocation(line: 120, column: 9, scope: !4016)
!4021 = !DILocation(line: 120, column: 16, scope: !4016)
!4022 = !DILocation(line: 121, column: 7, scope: !4017)
!4023 = !DILocalVariable(name: "length", scope: !4024, file: !286, line: 125, type: !141)
!4024 = distinct !DILexicalBlock(scope: !4012, file: !286, line: 124, column: 5)
!4025 = !DILocation(line: 125, column: 14, scope: !4024)
!4026 = !DILocation(line: 125, column: 31, scope: !4024)
!4027 = !DILocation(line: 125, column: 23, scope: !4024)
!4028 = !DILocation(line: 126, column: 11, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4024, file: !286, line: 126, column: 11)
!4030 = !DILocation(line: 126, column: 20, scope: !4029)
!4031 = !DILocation(line: 126, column: 18, scope: !4029)
!4032 = !DILocation(line: 126, column: 11, scope: !4024)
!4033 = !DILocation(line: 128, column: 19, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4029, file: !286, line: 127, column: 9)
!4035 = !DILocation(line: 128, column: 24, scope: !4034)
!4036 = !DILocation(line: 128, column: 32, scope: !4034)
!4037 = !DILocation(line: 128, column: 39, scope: !4034)
!4038 = !DILocation(line: 128, column: 11, scope: !4034)
!4039 = !DILocation(line: 129, column: 11, scope: !4034)
!4040 = !DILocation(line: 133, column: 15, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !286, line: 133, column: 15)
!4042 = distinct !DILexicalBlock(scope: !4029, file: !286, line: 132, column: 9)
!4043 = !DILocation(line: 133, column: 23, scope: !4041)
!4044 = !DILocation(line: 133, column: 15, scope: !4042)
!4045 = !DILocation(line: 138, column: 23, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4041, file: !286, line: 134, column: 13)
!4047 = !DILocation(line: 138, column: 28, scope: !4046)
!4048 = !DILocation(line: 138, column: 36, scope: !4046)
!4049 = !DILocation(line: 138, column: 44, scope: !4046)
!4050 = !DILocation(line: 138, column: 15, scope: !4046)
!4051 = !DILocation(line: 139, column: 15, scope: !4046)
!4052 = !DILocation(line: 139, column: 19, scope: !4046)
!4053 = !DILocation(line: 139, column: 27, scope: !4046)
!4054 = !DILocation(line: 139, column: 32, scope: !4046)
!4055 = !DILocation(line: 140, column: 13, scope: !4046)
!4056 = !DILocation(line: 141, column: 11, scope: !4042)
!4057 = !DILocation(line: 145, column: 1, scope: !4000)
