; ModuleID = 'src/link.bc'
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
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s FILE1 FILE2\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Call the link function to create a link named FILE2 to an existing FILE1.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"cannot create link %s to %s\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !0
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.46 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), align 8, !dbg !48
@file_name = internal global i8* null, align 8, !dbg !53
@ignore_EPIPE = internal global i8 0, align 1, !dbg !58
@.str.53 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.54 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.55 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.56 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !61
@stderr = external global %struct._IO_FILE*, align 8
@.str.57 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !90
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !67
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !86
@.str.1.63 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.64 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.65 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !88
@.str.4.58 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.59 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.60 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external global i32, align 4
@.str.70 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.71, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.72, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !95
@optind = external global i32, align 4
@.str.1.75 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.71 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.72 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !112
@.str.80 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.81 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !119
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
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.87, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.93, i32 0, i32 0), i8* null], align 8, !dbg !130
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !145
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !163
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !178
@nslots = internal global i32 1, align 4, !dbg !185
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !165
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !187
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !151
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.95 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.96 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.97 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !170
@.str.106 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.107 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.108 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.109 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.110 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.111 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.112 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.113 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.114 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.115 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.116 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.117 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.118 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.119 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.120 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.121 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.122 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.127 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.128 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.129 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.130 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.131 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.132 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.133 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !193
@exit_failure = dso_local global i32 1, align 4, !dbg !201
@.str.146 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.144 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.145 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.167 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !207
@.str.178 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.179 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

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
  br label %22, !dbg !309

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !311
  %14 = load i8*, i8** @program_name, align 8, !dbg !313
  %15 = load i8*, i8** @program_name, align 8, !dbg !314
  %16 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14, i8* noundef %15), !dbg !315
  %17 = call i8* @gettext(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !316
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !316
  %19 = call i32 @fputs_unlocked(i8* noundef %17, %struct._IO_FILE* noundef %18), !dbg !316
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !317
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !317
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !318
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !318
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !319
  br label %22

22:                                               ; preds = %12, %11
  %23 = load i32, i32* %2, align 4, !dbg !320
  call void @exit(i32 noundef %23) #19, !dbg !321
  unreachable, !dbg !321
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !322, metadata !DIExpression()), !dbg !323
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !324, metadata !DIExpression()), !dbg !325
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !326
  %15 = icmp eq i32 %14, -1, !dbg !328
  br i1 %15, label %16, label %30, !dbg !329

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !330, metadata !DIExpression()), !dbg !332
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #18, !dbg !333
  store i8* %17, i8** %5, align 8, !dbg !332
  %18 = load i8*, i8** %5, align 8, !dbg !334
  %19 = icmp ne i8* %18, null, !dbg !334
  br i1 %19, label %20, label %27, !dbg !335

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !336
  %22 = load i8, i8* %21, align 1, !dbg !337
  %23 = icmp ne i8 %22, 0, !dbg !337
  br i1 %23, label %24, label %27, !dbg !338

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !339
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)), !dbg !340
  br label %27, !dbg !338

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !338
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !341
  br label %30, !dbg !342

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !343
  %32 = icmp ne i32 %31, 0, !dbg !343
  br i1 %32, label %33, label %37, !dbg !345

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !346
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !346
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !346
  br label %274, !dbg !348

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !349, metadata !DIExpression()), !dbg !350
  store i8 1, i8* %6, align 1, !dbg !350
  call void @llvm.dbg.declare(metadata i8** %7, metadata !351, metadata !DIExpression()), !dbg !352
  %38 = load i8*, i8** %4, align 8, !dbg !353
  %39 = load i8*, i8** %4, align 8, !dbg !354
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #20, !dbg !355
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !356
  store i8* %41, i8** %7, align 8, !dbg !352
  call void @llvm.dbg.declare(metadata i8** %8, metadata !357, metadata !DIExpression()), !dbg !358
  %42 = load i8*, i8** %4, align 8, !dbg !359
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !360
  store i8* %43, i8** %8, align 8, !dbg !358
  %44 = load i8*, i8** %8, align 8, !dbg !361
  %45 = icmp ne i8* %44, null, !dbg !361
  br i1 %45, label %48, label %46, !dbg !363

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !364
  store i8* %47, i8** %8, align 8, !dbg !366
  store i8 0, i8* %6, align 1, !dbg !367
  br label %89, !dbg !368

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !369
  %50 = load i8*, i8** %7, align 8, !dbg !371
  %51 = icmp ne i8* %49, %50, !dbg !372
  br i1 %51, label %52, label %88, !dbg !373

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !374, metadata !DIExpression()), !dbg !376
  %53 = load i8*, i8** %7, align 8, !dbg !377
  store i8* %53, i8** %9, align 8, !dbg !376
  call void @llvm.dbg.declare(metadata i64* %10, metadata !378, metadata !DIExpression()), !dbg !379
  store i64 0, i64* %10, align 8, !dbg !379
  br label %54, !dbg !380

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !381
  %56 = load i8*, i8** %8, align 8, !dbg !382
  %57 = icmp ult i8* %55, %56, !dbg !383
  br i1 %57, label %58, label %61, !dbg !384

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !385
  %60 = icmp ult i64 %59, 2, !dbg !386
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !387
  br i1 %62, label %63, label %82, !dbg !380

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !388
  %65 = load i16*, i16** %64, align 8, !dbg !388
  %66 = load i8*, i8** %9, align 8, !dbg !388
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !388
  store i8* %67, i8** %9, align 8, !dbg !388
  %68 = load i8, i8* %66, align 1, !dbg !388
  %69 = zext i8 %68 to i32, !dbg !388
  %70 = sext i32 %69 to i64, !dbg !388
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !388
  %72 = load i16, i16* %71, align 2, !dbg !388
  %73 = zext i16 %72 to i32, !dbg !388
  %74 = and i32 %73, 8192, !dbg !388
  %75 = icmp ne i32 %74, 0, !dbg !389
  %76 = xor i1 %75, true, !dbg !389
  %77 = xor i1 %76, true, !dbg !390
  %78 = zext i1 %77 to i32, !dbg !390
  %79 = sext i32 %78 to i64, !dbg !390
  %80 = load i64, i64* %10, align 8, !dbg !391
  %81 = add i64 %80, %79, !dbg !391
  store i64 %81, i64* %10, align 8, !dbg !391
  br label %54, !dbg !380, !llvm.loop !392

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !394
  %84 = icmp eq i64 %83, 2, !dbg !396
  br i1 %84, label %85, label %87, !dbg !397

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !398
  store i8* %86, i8** %8, align 8, !dbg !400
  store i8 0, i8* %6, align 1, !dbg !401
  br label %87, !dbg !402

87:                                               ; preds = %85, %82
  br label %88, !dbg !403

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !404, metadata !DIExpression()), !dbg !405
  %90 = load i8*, i8** %8, align 8, !dbg !406
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #20, !dbg !407
  store i64 %91, i64* %11, align 8, !dbg !405
  call void @llvm.dbg.declare(metadata i8** %12, metadata !408, metadata !DIExpression()), !dbg !409
  %92 = load i8*, i8** %8, align 8, !dbg !410
  %93 = load i64, i64* %11, align 8, !dbg !411
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !412
  store i8* %94, i8** %12, align 8, !dbg !409
  br label %95, !dbg !413

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !414
  %97 = load i8, i8* %96, align 1, !dbg !415
  %98 = zext i8 %97 to i32, !dbg !415
  %99 = icmp ne i32 %98, 0, !dbg !415
  br i1 %99, label %100, label %105, !dbg !416

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !417
  %102 = load i8, i8* %101, align 1, !dbg !418
  %103 = zext i8 %102 to i32, !dbg !418
  %104 = icmp ne i32 %103, 10, !dbg !419
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !420
  br i1 %106, label %107, label %164, !dbg !413

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !421
  %109 = load i8, i8* %108, align 1, !dbg !424
  %110 = zext i8 %109 to i32, !dbg !424
  %111 = icmp eq i32 %110, 45, !dbg !425
  br i1 %111, label %112, label %119, !dbg !426

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !427
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !428
  %115 = load i8, i8* %114, align 1, !dbg !429
  %116 = zext i8 %115 to i32, !dbg !429
  %117 = icmp eq i32 %116, 45, !dbg !430
  br i1 %117, label %118, label %119, !dbg !431

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !432
  br label %119, !dbg !433

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !434
  %121 = load i16*, i16** %120, align 8, !dbg !434
  %122 = load i8*, i8** %12, align 8, !dbg !434
  %123 = load i8, i8* %122, align 1, !dbg !434
  %124 = zext i8 %123 to i32, !dbg !434
  %125 = sext i32 %124 to i64, !dbg !434
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !434
  %127 = load i16, i16* %126, align 2, !dbg !434
  %128 = zext i16 %127 to i32, !dbg !434
  %129 = and i32 %128, 8192, !dbg !434
  %130 = icmp ne i32 %129, 0, !dbg !434
  br i1 %130, label %131, label %161, !dbg !436

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !437
  %133 = load i8, i8* %132, align 1, !dbg !440
  %134 = zext i8 %133 to i32, !dbg !440
  %135 = icmp eq i32 %134, 9, !dbg !441
  br i1 %135, label %149, label %136, !dbg !442

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !443
  %138 = load i16*, i16** %137, align 8, !dbg !443
  %139 = load i8*, i8** %12, align 8, !dbg !443
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !443
  %141 = load i8, i8* %140, align 1, !dbg !443
  %142 = zext i8 %141 to i32, !dbg !443
  %143 = sext i32 %142 to i64, !dbg !443
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !443
  %145 = load i16, i16* %144, align 2, !dbg !443
  %146 = zext i16 %145 to i32, !dbg !443
  %147 = and i32 %146, 8192, !dbg !443
  %148 = icmp ne i32 %147, 0, !dbg !443
  br i1 %148, label %149, label %150, !dbg !444

149:                                              ; preds = %136, %131
  br label %164, !dbg !445

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !446
  %152 = trunc i8 %151 to i1, !dbg !446
  br i1 %152, label %160, label %153, !dbg !448

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !449
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !450
  %156 = load i8, i8* %155, align 1, !dbg !451
  %157 = zext i8 %156 to i32, !dbg !451
  %158 = icmp ne i32 %157, 45, !dbg !452
  br i1 %158, label %159, label %160, !dbg !453

159:                                              ; preds = %153
  br label %164, !dbg !454

160:                                              ; preds = %153, %150
  br label %161, !dbg !455

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !456
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !456
  store i8* %163, i8** %12, align 8, !dbg !456
  br label %95, !dbg !413, !llvm.loop !457

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !459
  %166 = load i8*, i8** %7, align 8, !dbg !459
  %167 = load i8*, i8** %4, align 8, !dbg !459
  %168 = ptrtoint i8* %166 to i64, !dbg !459
  %169 = ptrtoint i8* %167 to i64, !dbg !459
  %170 = sub i64 %168, %169, !dbg !459
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !459
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !459
  call void @llvm.dbg.declare(metadata i8** %13, metadata !460, metadata !DIExpression()), !dbg !461
  %173 = load i8*, i8** %3, align 8, !dbg !462
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)), !dbg !463
  br i1 %174, label %175, label %176, !dbg !463

175:                                              ; preds = %164
  br label %232, !dbg !463

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !464
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)), !dbg !465
  br i1 %178, label %179, label %180, !dbg !465

179:                                              ; preds = %176
  br label %230, !dbg !465

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !466
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)), !dbg !467
  br i1 %182, label %183, label %184, !dbg !467

183:                                              ; preds = %180
  br label %228, !dbg !467

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !468
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0)), !dbg !469
  br i1 %186, label %187, label %188, !dbg !469

187:                                              ; preds = %184
  br label %226, !dbg !469

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !470
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0)), !dbg !471
  br i1 %190, label %191, label %192, !dbg !471

191:                                              ; preds = %188
  br label %224, !dbg !471

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !472
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)), !dbg !473
  br i1 %194, label %195, label %196, !dbg !473

195:                                              ; preds = %192
  br label %222, !dbg !473

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !474
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)), !dbg !475
  br i1 %198, label %199, label %200, !dbg !475

199:                                              ; preds = %196
  br label %220, !dbg !475

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !476
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)), !dbg !477
  br i1 %202, label %203, label %204, !dbg !477

203:                                              ; preds = %200
  br label %218, !dbg !477

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !478
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)), !dbg !479
  br i1 %206, label %207, label %208, !dbg !479

207:                                              ; preds = %204
  br label %216, !dbg !479

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !480
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)), !dbg !481
  br i1 %210, label %211, label %212, !dbg !481

211:                                              ; preds = %208
  br label %214, !dbg !481

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !482
  br label %214, !dbg !481

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !481
  br label %216, !dbg !479

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !479
  br label %218, !dbg !477

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !477
  br label %220, !dbg !475

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !475
  br label %222, !dbg !473

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !473
  br label %224, !dbg !471

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !471
  br label %226, !dbg !469

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !469
  br label %228, !dbg !467

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !467
  br label %230, !dbg !465

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !465
  br label %232, !dbg !463

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !463
  store i8* %233, i8** %13, align 8, !dbg !461
  %234 = load i8*, i8** %8, align 8, !dbg !483
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i64 noundef 6) #20, !dbg !483
  %236 = icmp eq i32 %235, 0, !dbg !483
  br i1 %236, label %241, label %237, !dbg !485

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !486
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i64 noundef 9) #20, !dbg !486
  %240 = icmp eq i32 %239, 0, !dbg !486
  br i1 %240, label %241, label %248, !dbg !487

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !488
  %243 = load i8*, i8** %13, align 8, !dbg !490
  %244 = load i64, i64* %11, align 8, !dbg !491
  %245 = trunc i64 %244 to i32, !dbg !492
  %246 = load i8*, i8** %8, align 8, !dbg !493
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !494
  br label %254, !dbg !495

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !496
  %250 = load i64, i64* %11, align 8, !dbg !498
  %251 = trunc i64 %250 to i32, !dbg !499
  %252 = load i8*, i8** %8, align 8, !dbg !500
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !501
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !502
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !502
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !503
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !503
  %259 = load i8*, i8** %7, align 8, !dbg !504
  %260 = load i8*, i8** %12, align 8, !dbg !504
  %261 = load i8*, i8** %7, align 8, !dbg !504
  %262 = ptrtoint i8* %260 to i64, !dbg !504
  %263 = ptrtoint i8* %261 to i64, !dbg !504
  %264 = sub i64 %262, %263, !dbg !504
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !504
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !504
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !505
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !505
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !506
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !506
  %271 = load i8*, i8** %12, align 8, !dbg !507
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !507
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !507
  br label %274, !dbg !508

274:                                              ; preds = %254, %33
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !509 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !512, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !514, metadata !DIExpression()), !dbg !523
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !523
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !523
  call void @llvm.dbg.declare(metadata i8** %4, metadata !524, metadata !DIExpression()), !dbg !525
  %9 = load i8*, i8** %2, align 8, !dbg !526
  store i8* %9, i8** %4, align 8, !dbg !525
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !527, metadata !DIExpression()), !dbg !529
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !530
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !529
  br label %11, !dbg !531

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !532
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !533
  %14 = load i8*, i8** %13, align 8, !dbg !533
  %15 = icmp ne i8* %14, null, !dbg !532
  br i1 %15, label %16, label %23, !dbg !534

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !535
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !536
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !537
  %20 = load i8*, i8** %19, align 8, !dbg !537
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !538
  %22 = xor i1 %21, true, !dbg !539
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !540
  br i1 %24, label %25, label %28, !dbg !531

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !541
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !541
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !541
  br label %11, !dbg !531, !llvm.loop !542

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !543
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !545
  %31 = load i8*, i8** %30, align 8, !dbg !545
  %32 = icmp ne i8* %31, null, !dbg !543
  br i1 %32, label %33, label %37, !dbg !546

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !547
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !548
  %36 = load i8*, i8** %35, align 8, !dbg !548
  store i8* %36, i8** %4, align 8, !dbg !549
  br label %37, !dbg !550

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !551
  call void @llvm.dbg.declare(metadata i8** %6, metadata !552, metadata !DIExpression()), !dbg !553
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !554
  store i8* %38, i8** %6, align 8, !dbg !553
  %39 = load i8*, i8** %6, align 8, !dbg !555
  %40 = icmp ne i8* %39, null, !dbg !555
  br i1 %40, label %41, label %49, !dbg !557

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !558
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i64 noundef 3) #20, !dbg !558
  %44 = icmp ne i32 %43, 0, !dbg !558
  br i1 %44, label %45, label %49, !dbg !559

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.46, i64 0, i64 0)) #18, !dbg !560
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !560
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !560
  br label %49, !dbg !562

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !563, metadata !DIExpression()), !dbg !564
  %50 = load i8*, i8** %2, align 8, !dbg !565
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)), !dbg !566
  br i1 %51, label %52, label %53, !dbg !566

52:                                               ; preds = %49
  br label %55, !dbg !566

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !567
  br label %55, !dbg !566

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !566
  store i8* %56, i8** %7, align 8, !dbg !564
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0)) #18, !dbg !568
  %58 = load i8*, i8** %7, align 8, !dbg !569
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef %58), !dbg !570
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0)) #18, !dbg !571
  %61 = load i8*, i8** %4, align 8, !dbg !572
  %62 = load i8*, i8** %4, align 8, !dbg !573
  %63 = load i8*, i8** %2, align 8, !dbg !574
  %64 = icmp eq i8* %62, %63, !dbg !575
  %65 = zext i1 %64 to i64, !dbg !573
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !573
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !576
  ret void, !dbg !577
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !578 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !582, metadata !DIExpression()), !dbg !583
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !584, metadata !DIExpression()), !dbg !585
  %6 = load i8**, i8*** %5, align 8, !dbg !586
  %7 = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !586
  %8 = load i8*, i8** %7, align 8, !dbg !586
  call void @set_program_name(i8* noundef %8), !dbg !587
  %9 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !588
  %10 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !589
  %11 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !590
  %12 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !591
  %13 = load i32, i32* %4, align 4, !dbg !592
  %14 = load i8**, i8*** %5, align 8, !dbg !593
  %15 = load i8*, i8** @Version, align 8, !dbg !594
  %16 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0)), !dbg !595
  call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %13, i8** noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %15, i1 noundef true, void (i32)* noundef @usage, i8* noundef %16, i8* noundef null), !dbg !596
  %17 = load i32, i32* %4, align 4, !dbg !597
  %18 = load i32, i32* @optind, align 4, !dbg !599
  %19 = add nsw i32 %18, 2, !dbg !600
  %20 = icmp slt i32 %17, %19, !dbg !601
  br i1 %20, label %21, label %37, !dbg !602

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4, !dbg !603
  %23 = load i32, i32* @optind, align 4, !dbg !606
  %24 = add nsw i32 %23, 1, !dbg !607
  %25 = icmp slt i32 %22, %24, !dbg !608
  br i1 %25, label %26, label %28, !dbg !609

26:                                               ; preds = %21
  %27 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !610
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %27), !dbg !610
  br label %36, !dbg !610

28:                                               ; preds = %21
  %29 = call i8* @gettext(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !611
  %30 = load i8**, i8*** %5, align 8, !dbg !611
  %31 = load i32, i32* @optind, align 4, !dbg !611
  %32 = sext i32 %31 to i64, !dbg !611
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32, !dbg !611
  %34 = load i8*, i8** %33, align 8, !dbg !611
  %35 = call i8* @quote(i8* noundef %34), !dbg !611
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %29, i8* noundef %35), !dbg !611
  br label %36

36:                                               ; preds = %28, %26
  call void @usage(i32 noundef 1) #22, !dbg !612
  unreachable, !dbg !612

37:                                               ; preds = %2
  %38 = load i32, i32* @optind, align 4, !dbg !613
  %39 = add nsw i32 %38, 2, !dbg !615
  %40 = load i32, i32* %4, align 4, !dbg !616
  %41 = icmp slt i32 %39, %40, !dbg !617
  br i1 %41, label %42, label %51, !dbg !618

42:                                               ; preds = %37
  %43 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !619
  %44 = load i8**, i8*** %5, align 8, !dbg !619
  %45 = load i32, i32* @optind, align 4, !dbg !619
  %46 = add nsw i32 %45, 2, !dbg !619
  %47 = sext i32 %46 to i64, !dbg !619
  %48 = getelementptr inbounds i8*, i8** %44, i64 %47, !dbg !619
  %49 = load i8*, i8** %48, align 8, !dbg !619
  %50 = call i8* @quote(i8* noundef %49), !dbg !619
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %43, i8* noundef %50), !dbg !619
  call void @usage(i32 noundef 1) #22, !dbg !621
  unreachable, !dbg !621

51:                                               ; preds = %37
  %52 = load i8**, i8*** %5, align 8, !dbg !622
  %53 = load i32, i32* @optind, align 4, !dbg !624
  %54 = sext i32 %53 to i64, !dbg !622
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54, !dbg !622
  %56 = load i8*, i8** %55, align 8, !dbg !622
  %57 = load i8**, i8*** %5, align 8, !dbg !625
  %58 = load i32, i32* @optind, align 4, !dbg !626
  %59 = add nsw i32 %58, 1, !dbg !627
  %60 = sext i32 %59 to i64, !dbg !625
  %61 = getelementptr inbounds i8*, i8** %57, i64 %60, !dbg !625
  %62 = load i8*, i8** %61, align 8, !dbg !625
  %63 = call i32 @link(i8* noundef %56, i8* noundef %62) #18, !dbg !628
  %64 = icmp ne i32 %63, 0, !dbg !629
  br i1 %64, label %65, label %82, !dbg !630

65:                                               ; preds = %51
  %66 = call i32* @__errno_location() #21, !dbg !631
  %67 = load i32, i32* %66, align 4, !dbg !631
  %68 = call i8* @gettext(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0)) #18, !dbg !631
  %69 = load i8**, i8*** %5, align 8, !dbg !631
  %70 = load i32, i32* @optind, align 4, !dbg !631
  %71 = add nsw i32 %70, 1, !dbg !631
  %72 = sext i32 %71 to i64, !dbg !631
  %73 = getelementptr inbounds i8*, i8** %69, i64 %72, !dbg !631
  %74 = load i8*, i8** %73, align 8, !dbg !631
  %75 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 4, i8* noundef %74), !dbg !631
  %76 = load i8**, i8*** %5, align 8, !dbg !631
  %77 = load i32, i32* @optind, align 4, !dbg !631
  %78 = sext i32 %77 to i64, !dbg !631
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78, !dbg !631
  %80 = load i8*, i8** %79, align 8, !dbg !631
  %81 = call i8* @quotearg_n_style(i32 noundef 1, i32 noundef 4, i8* noundef %80), !dbg !631
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %67, i8* noundef %68, i8* noundef %75, i8* noundef %81), !dbg !631
  unreachable, !dbg !631

82:                                               ; preds = %51
  ret i32 0, !dbg !632
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @link(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !633 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !634, metadata !DIExpression()), !dbg !635
  %3 = load i8*, i8** %2, align 8, !dbg !636
  store i8* %3, i8** @file_name, align 8, !dbg !637
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !639 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !642, metadata !DIExpression()), !dbg !643
  %4 = load i8, i8* %2, align 1, !dbg !644
  %5 = trunc i8 %4 to i1, !dbg !644
  %6 = zext i1 %5 to i8, !dbg !645
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !645
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !647 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !648
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !650
  %4 = icmp ne i32 %3, 0, !dbg !651
  br i1 %4, label %5, label %28, !dbg !652

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !653
  %7 = trunc i8 %6 to i1, !dbg !653
  br i1 %7, label %8, label %12, !dbg !654

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !655
  %10 = load i32, i32* %9, align 4, !dbg !655
  %11 = icmp eq i32 %10, 32, !dbg !656
  br i1 %11, label %28, label %12, !dbg !657

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !658, metadata !DIExpression()), !dbg !660
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.54, i64 0, i64 0)) #18, !dbg !661
  store i8* %13, i8** %1, align 8, !dbg !660
  %14 = load i8*, i8** @file_name, align 8, !dbg !662
  %15 = icmp ne i8* %14, null, !dbg !662
  br i1 %15, label %16, label %22, !dbg !664

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !665
  %18 = load i32, i32* %17, align 4, !dbg !665
  %19 = load i8*, i8** @file_name, align 8, !dbg !665
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !665
  %21 = load i8*, i8** %1, align 8, !dbg !665
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.55, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !665
  br label %26, !dbg !665

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !666
  %24 = load i32, i32* %23, align 4, !dbg !666
  %25 = load i8*, i8** %1, align 8, !dbg !666
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.56, i64 0, i64 0), i8* noundef %25), !dbg !666
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !667
  call void @_exit(i32 noundef %27) #22, !dbg !668
  unreachable, !dbg !668

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !669
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !671
  %31 = icmp ne i32 %30, 0, !dbg !672
  br i1 %31, label %32, label %34, !dbg !673

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !674
  call void @_exit(i32 noundef %33) #22, !dbg !675
  unreachable, !dbg !675

34:                                               ; preds = %28
  ret void, !dbg !676
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !677 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !680, metadata !DIExpression()), !dbg !681
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !682, metadata !DIExpression()), !dbg !681
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !683, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !684, metadata !DIExpression()), !dbg !681
  call void @flush_stdout(), !dbg !685
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !686
  %10 = icmp ne void ()* %9, null, !dbg !686
  br i1 %10, label %11, label %13, !dbg !688

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !689
  call void %12(), !dbg !690
  br label %17, !dbg !690

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !691
  %15 = call i8* @getprogname() #20, !dbg !693
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i8* noundef %15), !dbg !694
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !695
  %19 = load i32, i32* %6, align 4, !dbg !695
  %20 = load i8*, i8** %7, align 8, !dbg !695
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !695
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !695
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !695
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !695
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !697 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !698, metadata !DIExpression()), !dbg !699
  store i32 1, i32* %1, align 4, !dbg !700
  %2 = load i32, i32* %1, align 4, !dbg !701
  %3 = icmp sle i32 0, %2, !dbg !703
  br i1 %3, label %4, label %11, !dbg !704

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !705
  %6 = call i32 @is_open(i32 noundef %5), !dbg !706
  %7 = icmp ne i32 %6, 0, !dbg !706
  br i1 %7, label %8, label %11, !dbg !707

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !708
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !708
  br label %11, !dbg !708

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !709
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !710 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !711, metadata !DIExpression()), !dbg !712
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !713, metadata !DIExpression()), !dbg !712
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !714, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !715, metadata !DIExpression()), !dbg !712
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !716
  %10 = load i8*, i8** %7, align 8, !dbg !717
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !718
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !718
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !718
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !718
  %14 = load i32, i32* @error_message_count, align 4, !dbg !719
  %15 = add i32 %14, 1, !dbg !719
  store i32 %15, i32* @error_message_count, align 4, !dbg !719
  %16 = load i32, i32* %6, align 4, !dbg !720
  %17 = icmp ne i32 %16, 0, !dbg !720
  br i1 %17, label %18, label %20, !dbg !722

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !723
  call void @print_errno_message(i32 noundef %19), !dbg !724
  br label %20, !dbg !724

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !725
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !725
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !726
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !726
  %25 = load i32, i32* %5, align 4, !dbg !727
  %26 = icmp ne i32 %25, 0, !dbg !727
  br i1 %26, label %27, label %29, !dbg !729

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !730
  call void @exit(i32 noundef %28) #19, !dbg !731
  unreachable, !dbg !731

29:                                               ; preds = %20
  ret void, !dbg !732
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !733 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.declare(metadata i8** %3, metadata !736, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !738, metadata !DIExpression()), !dbg !742
  %5 = load i32, i32* %2, align 4, !dbg !743
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !744
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !745
  store i8* %7, i8** %3, align 8, !dbg !746
  %8 = load i8*, i8** %3, align 8, !dbg !747
  %9 = icmp ne i8* %8, null, !dbg !747
  br i1 %9, label %12, label %10, !dbg !749

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.59, i64 0, i64 0)) #18, !dbg !750
  store i8* %11, i8** %3, align 8, !dbg !751
  br label %12, !dbg !752

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !753
  %14 = load i8*, i8** %3, align 8, !dbg !754
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.60, i64 0, i64 0), i8* noundef %14), !dbg !755
  ret void, !dbg !756
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !757 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !760, metadata !DIExpression()), !dbg !761
  %3 = load i32, i32* %2, align 4, !dbg !762
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !763
  %5 = icmp sle i32 0, %4, !dbg !764
  %6 = zext i1 %5 to i32, !dbg !764
  ret i32 %6, !dbg !765
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !766 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !769, metadata !DIExpression()), !dbg !770
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !771, metadata !DIExpression()), !dbg !772
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !773, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !775, metadata !DIExpression()), !dbg !776
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !777
  call void @llvm.va_start(i8* %9), !dbg !777
  %10 = load i32, i32* %4, align 4, !dbg !778
  %11 = load i32, i32* %5, align 4, !dbg !778
  %12 = load i8*, i8** %6, align 8, !dbg !778
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !778
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !778
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !778
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !778
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !779
  call void @llvm.va_end(i8* %15), !dbg !779
  ret void, !dbg !780
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !69 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !781, metadata !DIExpression()), !dbg !782
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !783, metadata !DIExpression()), !dbg !782
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !784, metadata !DIExpression()), !dbg !782
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !785, metadata !DIExpression()), !dbg !782
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !786, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !787, metadata !DIExpression()), !dbg !782
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !788
  %14 = icmp ne i32 %13, 0, !dbg !788
  br i1 %14, label %15, label %38, !dbg !790

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !791
  %17 = load i32, i32* %10, align 4, !dbg !794
  %18 = icmp eq i32 %16, %17, !dbg !795
  br i1 %18, label %19, label %35, !dbg !796

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !797
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !798
  %22 = icmp eq i8* %20, %21, !dbg !799
  br i1 %22, label %34, label %23, !dbg !800

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !801
  %25 = icmp ne i8* %24, null, !dbg !802
  br i1 %25, label %26, label %35, !dbg !803

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !804
  %28 = icmp ne i8* %27, null, !dbg !805
  br i1 %28, label %29, label %35, !dbg !806

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !807
  %31 = load i8*, i8** %9, align 8, !dbg !808
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !809
  %33 = icmp eq i32 %32, 0, !dbg !810
  br i1 %33, label %34, label %35, !dbg !811

34:                                               ; preds = %29, %19
  br label %61, !dbg !812

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !813
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !814
  %37 = load i32, i32* %10, align 4, !dbg !815
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !816
  br label %38, !dbg !817

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !818
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !819
  %40 = icmp ne void ()* %39, null, !dbg !819
  br i1 %40, label %41, label %43, !dbg !821

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !822
  call void %42(), !dbg !823
  br label %47, !dbg !823

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !824
  %45 = call i8* @getprogname() #20, !dbg !826
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.63, i64 0, i64 0), i8* noundef %45), !dbg !827
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !828
  %49 = load i8*, i8** %9, align 8, !dbg !829
  %50 = icmp ne i8* %49, null, !dbg !830
  %51 = zext i1 %50 to i64, !dbg !829
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.64, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.65, i64 0, i64 0), !dbg !829
  %53 = load i8*, i8** %9, align 8, !dbg !831
  %54 = load i32, i32* %10, align 4, !dbg !832
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !833
  %56 = load i32, i32* %7, align 4, !dbg !834
  %57 = load i32, i32* %8, align 4, !dbg !834
  %58 = load i8*, i8** %11, align 8, !dbg !834
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !834
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !834
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !834
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !834
  br label %61, !dbg !835

61:                                               ; preds = %47, %34
  ret void, !dbg !835
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !836 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !839, metadata !DIExpression()), !dbg !840
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !841, metadata !DIExpression()), !dbg !842
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !843, metadata !DIExpression()), !dbg !844
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !845, metadata !DIExpression()), !dbg !846
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !847, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !849, metadata !DIExpression()), !dbg !850
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !851
  call void @llvm.va_start(i8* %13), !dbg !851
  %14 = load i32, i32* %6, align 4, !dbg !852
  %15 = load i32, i32* %7, align 4, !dbg !852
  %16 = load i8*, i8** %8, align 8, !dbg !852
  %17 = load i32, i32* %9, align 4, !dbg !852
  %18 = load i8*, i8** %10, align 8, !dbg !852
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !852
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !852
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !852
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !852
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !853
  call void @llvm.va_end(i8* %21), !dbg !853
  ret void, !dbg !854
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !855 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !858
  ret i8* %1, !dbg !859
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* noundef %5, ...) #4 !dbg !860 {
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !864, metadata !DIExpression()), !dbg !865
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !866, metadata !DIExpression()), !dbg !867
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !868, metadata !DIExpression()), !dbg !869
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !870, metadata !DIExpression()), !dbg !871
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !872, metadata !DIExpression()), !dbg !873
  store void (i32)* %5, void (i32)** %12, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %12, metadata !874, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.declare(metadata i32* %13, metadata !876, metadata !DIExpression()), !dbg !877
  %17 = load i32, i32* @opterr, align 4, !dbg !878
  store i32 %17, i32* %13, align 4, !dbg !877
  store i32 0, i32* @opterr, align 4, !dbg !879
  %18 = load i32, i32* %7, align 4, !dbg !880
  %19 = icmp eq i32 %18, 2, !dbg !882
  br i1 %19, label %20, label %41, !dbg !883

20:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %14, metadata !884, metadata !DIExpression()), !dbg !886
  %21 = load i32, i32* %7, align 4, !dbg !887
  %22 = load i8**, i8*** %8, align 8, !dbg !888
  %23 = call i32 @getopt_long(i32 noundef %21, i8** noundef %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !889
  store i32 %23, i32* %14, align 4, !dbg !886
  %24 = load i32, i32* %14, align 4, !dbg !890
  %25 = icmp ne i32 %24, -1, !dbg !892
  br i1 %25, label %26, label %40, !dbg !893

26:                                               ; preds = %20
  %27 = load i32, i32* %14, align 4, !dbg !894
  switch i32 %27, label %38 [
    i32 104, label %28
    i32 118, label %30
  ], !dbg !896

28:                                               ; preds = %26
  %29 = load void (i32)*, void (i32)** %12, align 8, !dbg !897
  call void %29(i32 noundef 0), !dbg !899
  br label %39, !dbg !900

30:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %15, metadata !901, metadata !DIExpression()), !dbg !914
  %31 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !915
  call void @llvm.va_start(i8* %31), !dbg !915
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !916
  %33 = load i8*, i8** %9, align 8, !dbg !917
  %34 = load i8*, i8** %10, align 8, !dbg !918
  %35 = load i8*, i8** %11, align 8, !dbg !919
  %36 = bitcast %"struct.std::__va_list"* %16 to i8*, !dbg !920
  %37 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 32, i1 false), !dbg !920
  call void @version_etc_va(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef %34, i8* noundef %35, %"struct.std::__va_list"* noundef %16), !dbg !920
  call void @exit(i32 noundef 0) #19, !dbg !921
  unreachable, !dbg !921

38:                                               ; preds = %26
  br label %39, !dbg !922

39:                                               ; preds = %38, %28
  br label %40, !dbg !923

40:                                               ; preds = %39, %20
  br label %41, !dbg !924

41:                                               ; preds = %40, %6
  %42 = load i32, i32* %13, align 4, !dbg !925
  store i32 %42, i32* @opterr, align 4, !dbg !926
  store i32 0, i32* @optind, align 4, !dbg !927
  ret void, !dbg !928
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* noundef %6, ...) #4 !dbg !929 {
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
  call void @llvm.dbg.declare(metadata i32* %8, metadata !932, metadata !DIExpression()), !dbg !933
  store i8** %1, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !934, metadata !DIExpression()), !dbg !935
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !936, metadata !DIExpression()), !dbg !937
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !938, metadata !DIExpression()), !dbg !939
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !940, metadata !DIExpression()), !dbg !941
  %20 = zext i1 %5 to i8
  store i8 %20, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !942, metadata !DIExpression()), !dbg !943
  store void (i32)* %6, void (i32)** %14, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %14, metadata !944, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.declare(metadata i32* %15, metadata !946, metadata !DIExpression()), !dbg !947
  %21 = load i32, i32* @opterr, align 4, !dbg !948
  store i32 %21, i32* %15, align 4, !dbg !947
  store i32 1, i32* @opterr, align 4, !dbg !949
  call void @llvm.dbg.declare(metadata i8** %16, metadata !950, metadata !DIExpression()), !dbg !951
  %22 = load i8, i8* %13, align 1, !dbg !952
  %23 = trunc i8 %22 to i1, !dbg !952
  %24 = zext i1 %23 to i64, !dbg !952
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.75, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), !dbg !952
  store i8* %25, i8** %16, align 8, !dbg !951
  call void @llvm.dbg.declare(metadata i32* %17, metadata !953, metadata !DIExpression()), !dbg !954
  %26 = load i32, i32* %8, align 4, !dbg !955
  %27 = load i8**, i8*** %9, align 8, !dbg !956
  %28 = load i8*, i8** %16, align 8, !dbg !957
  %29 = call i32 @getopt_long(i32 noundef %26, i8** noundef %27, i8* noundef %28, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !958
  store i32 %29, i32* %17, align 4, !dbg !954
  %30 = load i32, i32* %17, align 4, !dbg !959
  %31 = icmp ne i32 %30, -1, !dbg !961
  br i1 %31, label %32, label %48, !dbg !962

32:                                               ; preds = %7
  %33 = load i32, i32* %17, align 4, !dbg !963
  switch i32 %33, label %44 [
    i32 104, label %34
    i32 118, label %36
  ], !dbg !965

34:                                               ; preds = %32
  %35 = load void (i32)*, void (i32)** %14, align 8, !dbg !966
  call void %35(i32 noundef 0), !dbg !968
  br label %47, !dbg !969

36:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %18, metadata !970, metadata !DIExpression()), !dbg !972
  %37 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !973
  call void @llvm.va_start(i8* %37), !dbg !973
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !974
  %39 = load i8*, i8** %10, align 8, !dbg !975
  %40 = load i8*, i8** %11, align 8, !dbg !976
  %41 = load i8*, i8** %12, align 8, !dbg !977
  %42 = bitcast %"struct.std::__va_list"* %19 to i8*, !dbg !978
  %43 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !978
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false), !dbg !978
  call void @version_etc_va(%struct._IO_FILE* noundef %38, i8* noundef %39, i8* noundef %40, i8* noundef %41, %"struct.std::__va_list"* noundef %19), !dbg !978
  call void @exit(i32 noundef 0) #19, !dbg !979
  unreachable, !dbg !979

44:                                               ; preds = %32
  %45 = load void (i32)*, void (i32)** %14, align 8, !dbg !980
  %46 = load volatile i32, i32* @exit_failure, align 4, !dbg !981
  call void %45(i32 noundef %46), !dbg !982
  br label %47, !dbg !983

47:                                               ; preds = %44, %34
  br label %48, !dbg !984

48:                                               ; preds = %47, %7
  %49 = load i32, i32* %15, align 4, !dbg !985
  store i32 %49, i32* @opterr, align 4, !dbg !986
  ret void, !dbg !987
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !988 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !989, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.declare(metadata i8** %3, metadata !991, metadata !DIExpression()), !dbg !992
  %5 = load i8*, i8** %2, align 8, !dbg !993
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !994
  store i8* %6, i8** %3, align 8, !dbg !992
  call void @llvm.dbg.declare(metadata i8** %4, metadata !995, metadata !DIExpression()), !dbg !996
  %7 = load i8*, i8** %3, align 8, !dbg !997
  %8 = icmp ne i8* %7, null, !dbg !997
  br i1 %8, label %9, label %12, !dbg !997

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !998
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !999
  br label %14, !dbg !997

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1000
  br label %14, !dbg !997

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !997
  store i8* %15, i8** %4, align 8, !dbg !996
  %16 = load i8*, i8** %4, align 8, !dbg !1001
  %17 = load i8*, i8** %2, align 8, !dbg !1003
  %18 = ptrtoint i8* %16 to i64, !dbg !1004
  %19 = ptrtoint i8* %17 to i64, !dbg !1004
  %20 = sub i64 %18, %19, !dbg !1004
  %21 = icmp sle i64 7, %20, !dbg !1005
  br i1 %21, label %22, label %36, !dbg !1006

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1007
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1008
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i64 noundef 7), !dbg !1009
  br i1 %25, label %26, label %36, !dbg !1010

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1011
  store i8* %27, i8** %2, align 8, !dbg !1013
  %28 = load i8*, i8** %4, align 8, !dbg !1014
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.81, i64 0, i64 0), i64 noundef 3) #20, !dbg !1016
  %30 = icmp eq i32 %29, 0, !dbg !1017
  br i1 %30, label %31, label %35, !dbg !1018

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1019
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1019
  store i8* %33, i8** %4, align 8, !dbg !1019
  %34 = load i8*, i8** %4, align 8, !dbg !1021
  store i8* %34, i8** %2, align 8, !dbg !1022
  br label %35, !dbg !1023

35:                                               ; preds = %31, %26
  br label %36, !dbg !1024

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1025
  store i8* %37, i8** @program_name, align 8, !dbg !1026
  %38 = load i8*, i8** %2, align 8, !dbg !1027
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1028
  %39 = load i8*, i8** %4, align 8, !dbg !1029
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1030
  ret void, !dbg !1031
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !121 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1032, metadata !DIExpression()), !dbg !1033
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1034, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1036, metadata !DIExpression()), !dbg !1037
  %9 = load i8*, i8** %4, align 8, !dbg !1038
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1039
  store i8* %10, i8** %6, align 8, !dbg !1037
  %11 = load i8*, i8** %6, align 8, !dbg !1040
  %12 = load i8*, i8** %4, align 8, !dbg !1042
  %13 = icmp ne i8* %11, %12, !dbg !1043
  br i1 %13, label %14, label %16, !dbg !1044

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1045
  store i8* %15, i8** %3, align 8, !dbg !1046
  br label %26, !dbg !1046

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1047, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1054, metadata !DIExpression()), !dbg !1065
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1066
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1067
  %18 = icmp eq i64 %17, 2, !dbg !1069
  br i1 %18, label %19, label %24, !dbg !1070

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1071
  %21 = icmp eq i32 %20, 2047, !dbg !1072
  br i1 %21, label %22, label %24, !dbg !1073

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1074
  store i8* %23, i8** %3, align 8, !dbg !1075
  br label %26, !dbg !1075

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1076
  store i8* %25, i8** %3, align 8, !dbg !1077
  br label %26, !dbg !1077

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1078
  ret i8* %27, !dbg !1078
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1079 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1083, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1085, metadata !DIExpression()), !dbg !1086
  %5 = call i32* @__errno_location() #21, !dbg !1087
  %6 = load i32, i32* %5, align 4, !dbg !1087
  store i32 %6, i32* %3, align 4, !dbg !1086
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1088, metadata !DIExpression()), !dbg !1089
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1090
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1090
  br i1 %8, label %9, label %11, !dbg !1090

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1091
  br label %12, !dbg !1090

11:                                               ; preds = %1
  br label %12, !dbg !1090

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1090
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1090
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1092
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1092
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1089
  %17 = load i32, i32* %3, align 4, !dbg !1093
  %18 = call i32* @__errno_location() #21, !dbg !1094
  store i32 %17, i32* %18, align 4, !dbg !1095
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1096
  ret %struct.quoting_options* %19, !dbg !1097
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1098 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1103, metadata !DIExpression()), !dbg !1104
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1105
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1105
  br i1 %4, label %5, label %7, !dbg !1105

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1106
  br label %8, !dbg !1105

7:                                                ; preds = %1
  br label %8, !dbg !1105

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1105
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1107
  %11 = load i32, i32* %10, align 8, !dbg !1107
  ret i32 %11, !dbg !1108
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1109 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1112, metadata !DIExpression()), !dbg !1113
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1114, metadata !DIExpression()), !dbg !1115
  %5 = load i32, i32* %4, align 4, !dbg !1116
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1117
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1117
  br i1 %7, label %8, label %10, !dbg !1117

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1118
  br label %11, !dbg !1117

10:                                               ; preds = %2
  br label %11, !dbg !1117

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1117
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1119
  store i32 %5, i32* %13, align 8, !dbg !1120
  ret void, !dbg !1121
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1122 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1125, metadata !DIExpression()), !dbg !1126
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1127, metadata !DIExpression()), !dbg !1128
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1129, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1131, metadata !DIExpression()), !dbg !1132
  %11 = load i8, i8* %5, align 1, !dbg !1133
  store i8 %11, i8* %7, align 1, !dbg !1132
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1134, metadata !DIExpression()), !dbg !1136
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1137
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1137
  br i1 %13, label %14, label %16, !dbg !1137

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1138
  br label %17, !dbg !1137

16:                                               ; preds = %3
  br label %17, !dbg !1137

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1137
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1139
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1140
  %21 = load i8, i8* %7, align 1, !dbg !1141
  %22 = zext i8 %21 to i64, !dbg !1141
  %23 = udiv i64 %22, 32, !dbg !1142
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1143
  store i32* %24, i32** %8, align 8, !dbg !1136
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1144, metadata !DIExpression()), !dbg !1145
  %25 = load i8, i8* %7, align 1, !dbg !1146
  %26 = zext i8 %25 to i64, !dbg !1146
  %27 = urem i64 %26, 32, !dbg !1147
  %28 = trunc i64 %27 to i32, !dbg !1146
  store i32 %28, i32* %9, align 4, !dbg !1145
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1148, metadata !DIExpression()), !dbg !1149
  %29 = load i32*, i32** %8, align 8, !dbg !1150
  %30 = load i32, i32* %29, align 4, !dbg !1151
  %31 = load i32, i32* %9, align 4, !dbg !1152
  %32 = lshr i32 %30, %31, !dbg !1153
  %33 = and i32 %32, 1, !dbg !1154
  store i32 %33, i32* %10, align 4, !dbg !1149
  %34 = load i32, i32* %6, align 4, !dbg !1155
  %35 = and i32 %34, 1, !dbg !1156
  %36 = load i32, i32* %10, align 4, !dbg !1157
  %37 = xor i32 %35, %36, !dbg !1158
  %38 = load i32, i32* %9, align 4, !dbg !1159
  %39 = shl i32 %37, %38, !dbg !1160
  %40 = load i32*, i32** %8, align 8, !dbg !1161
  %41 = load i32, i32* %40, align 4, !dbg !1162
  %42 = xor i32 %41, %39, !dbg !1162
  store i32 %42, i32* %40, align 4, !dbg !1162
  %43 = load i32, i32* %10, align 4, !dbg !1163
  ret i32 %43, !dbg !1164
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1165 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1168, metadata !DIExpression()), !dbg !1169
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1170, metadata !DIExpression()), !dbg !1171
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1172
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1172
  br i1 %7, label %9, label %8, !dbg !1174

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1175
  br label %9, !dbg !1176

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1177, metadata !DIExpression()), !dbg !1178
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1179
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1180
  %12 = load i32, i32* %11, align 4, !dbg !1180
  store i32 %12, i32* %5, align 4, !dbg !1178
  %13 = load i32, i32* %4, align 4, !dbg !1181
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1182
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1183
  store i32 %13, i32* %15, align 4, !dbg !1184
  %16 = load i32, i32* %5, align 4, !dbg !1185
  ret i32 %16, !dbg !1186
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1187 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1190, metadata !DIExpression()), !dbg !1191
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1192, metadata !DIExpression()), !dbg !1193
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1194, metadata !DIExpression()), !dbg !1195
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1196
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1196
  br i1 %8, label %10, label %9, !dbg !1198

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1199
  br label %10, !dbg !1200

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1201
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1202
  store i32 10, i32* %12, align 8, !dbg !1203
  %13 = load i8*, i8** %5, align 8, !dbg !1204
  %14 = icmp ne i8* %13, null, !dbg !1204
  br i1 %14, label %15, label %18, !dbg !1206

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1207
  %17 = icmp ne i8* %16, null, !dbg !1207
  br i1 %17, label %19, label %18, !dbg !1208

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1209
  unreachable, !dbg !1209

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1210
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1211
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1212
  store i8* %20, i8** %22, align 8, !dbg !1213
  %23 = load i8*, i8** %6, align 8, !dbg !1214
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1215
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1216
  store i8* %23, i8** %25, align 8, !dbg !1217
  ret void, !dbg !1218
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1219 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1222, metadata !DIExpression()), !dbg !1223
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1224, metadata !DIExpression()), !dbg !1225
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1226, metadata !DIExpression()), !dbg !1227
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1228, metadata !DIExpression()), !dbg !1229
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1230, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1232, metadata !DIExpression()), !dbg !1233
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1234
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1234
  br i1 %15, label %16, label %18, !dbg !1234

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1235
  br label %19, !dbg !1234

18:                                               ; preds = %5
  br label %19, !dbg !1234

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1234
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1233
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1236, metadata !DIExpression()), !dbg !1237
  %21 = call i32* @__errno_location() #21, !dbg !1238
  %22 = load i32, i32* %21, align 4, !dbg !1238
  store i32 %22, i32* %12, align 4, !dbg !1237
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1239, metadata !DIExpression()), !dbg !1240
  %23 = load i8*, i8** %6, align 8, !dbg !1241
  %24 = load i64, i64* %7, align 8, !dbg !1242
  %25 = load i8*, i8** %8, align 8, !dbg !1243
  %26 = load i64, i64* %9, align 8, !dbg !1244
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1245
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1246
  %29 = load i32, i32* %28, align 8, !dbg !1246
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1247
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1248
  %32 = load i32, i32* %31, align 4, !dbg !1248
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1249
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1250
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1249
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1251
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1252
  %38 = load i8*, i8** %37, align 8, !dbg !1252
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1253
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1254
  %41 = load i8*, i8** %40, align 8, !dbg !1254
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1255
  store i64 %42, i64* %13, align 8, !dbg !1240
  %43 = load i32, i32* %12, align 4, !dbg !1256
  %44 = call i32* @__errno_location() #21, !dbg !1257
  store i32 %43, i32* %44, align 4, !dbg !1258
  %45 = load i64, i64* %13, align 8, !dbg !1259
  ret i64 %45, !dbg !1260
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1261 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1266, metadata !DIExpression()), !dbg !1267
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1268, metadata !DIExpression()), !dbg !1269
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1270, metadata !DIExpression()), !dbg !1271
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1272, metadata !DIExpression()), !dbg !1273
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1274, metadata !DIExpression()), !dbg !1275
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1276, metadata !DIExpression()), !dbg !1277
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1278, metadata !DIExpression()), !dbg !1279
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1280, metadata !DIExpression()), !dbg !1281
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1282, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1284, metadata !DIExpression()), !dbg !1285
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1286
  %45 = icmp eq i64 %44, 1, !dbg !1287
  %46 = zext i1 %45 to i8, !dbg !1285
  store i8 %46, i8* %20, align 1, !dbg !1285
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1288, metadata !DIExpression()), !dbg !1289
  store i64 0, i64* %21, align 8, !dbg !1289
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1290, metadata !DIExpression()), !dbg !1291
  store i64 0, i64* %22, align 8, !dbg !1291
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1292, metadata !DIExpression()), !dbg !1293
  store i8* null, i8** %23, align 8, !dbg !1293
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1294, metadata !DIExpression()), !dbg !1295
  store i64 0, i64* %24, align 8, !dbg !1295
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1296, metadata !DIExpression()), !dbg !1297
  store i8 0, i8* %25, align 1, !dbg !1297
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1298, metadata !DIExpression()), !dbg !1299
  %47 = load i32, i32* %16, align 4, !dbg !1300
  %48 = and i32 %47, 2, !dbg !1301
  %49 = icmp ne i32 %48, 0, !dbg !1302
  %50 = zext i1 %49 to i8, !dbg !1299
  store i8 %50, i8* %26, align 1, !dbg !1299
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1303, metadata !DIExpression()), !dbg !1304
  store i8 0, i8* %27, align 1, !dbg !1304
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1305, metadata !DIExpression()), !dbg !1306
  store i8 1, i8* %28, align 1, !dbg !1306
  br label %51, !dbg !1307

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1308), !dbg !1309
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1310, metadata !DIExpression()), !dbg !1311
  store i8 0, i8* %29, align 1, !dbg !1311
  %52 = load i32, i32* %15, align 4, !dbg !1312
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
  ], !dbg !1313

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1314
  store i8 1, i8* %26, align 1, !dbg !1316
  br label %54, !dbg !1317

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1318
  %56 = trunc i8 %55 to i1, !dbg !1318
  br i1 %56, label %70, label %57, !dbg !1320

57:                                               ; preds = %54
  br label %58, !dbg !1321

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1322
  %60 = load i64, i64* %12, align 8, !dbg !1322
  %61 = icmp ult i64 %59, %60, !dbg !1322
  br i1 %61, label %62, label %66, !dbg !1325

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1322
  %64 = load i64, i64* %21, align 8, !dbg !1322
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1322
  store i8 34, i8* %65, align 1, !dbg !1322
  br label %66, !dbg !1322

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1325
  %68 = add i64 %67, 1, !dbg !1325
  store i64 %68, i64* %21, align 8, !dbg !1325
  br label %69, !dbg !1325

69:                                               ; preds = %66
  br label %70, !dbg !1325

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1326
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8** %23, align 8, !dbg !1327
  store i64 1, i64* %24, align 8, !dbg !1328
  br label %138, !dbg !1329

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1330
  store i8 0, i8* %26, align 1, !dbg !1331
  br label %138, !dbg !1332

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1333
  %74 = icmp ne i32 %73, 10, !dbg !1336
  br i1 %74, label %75, label %80, !dbg !1337

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1338
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.95, i64 0, i64 0), i32 noundef %76), !dbg !1340
  store i8* %77, i8** %18, align 8, !dbg !1341
  %78 = load i32, i32* %15, align 4, !dbg !1342
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), i32 noundef %78), !dbg !1343
  store i8* %79, i8** %19, align 8, !dbg !1344
  br label %80, !dbg !1345

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1346
  %82 = trunc i8 %81 to i1, !dbg !1346
  br i1 %82, label %108, label %83, !dbg !1348

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1349, metadata !DIExpression()), !dbg !1351
  %84 = load i8*, i8** %18, align 8, !dbg !1352
  store i8* %84, i8** %30, align 8, !dbg !1351
  br label %85, !dbg !1353

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1354
  %87 = load i8, i8* %86, align 1, !dbg !1356
  %88 = icmp ne i8 %87, 0, !dbg !1357
  br i1 %88, label %89, label %107, !dbg !1357

89:                                               ; preds = %85
  br label %90, !dbg !1358

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1359
  %92 = load i64, i64* %12, align 8, !dbg !1359
  %93 = icmp ult i64 %91, %92, !dbg !1359
  br i1 %93, label %94, label %100, !dbg !1362

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1359
  %96 = load i8, i8* %95, align 1, !dbg !1359
  %97 = load i8*, i8** %11, align 8, !dbg !1359
  %98 = load i64, i64* %21, align 8, !dbg !1359
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1359
  store i8 %96, i8* %99, align 1, !dbg !1359
  br label %100, !dbg !1359

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1362
  %102 = add i64 %101, 1, !dbg !1362
  store i64 %102, i64* %21, align 8, !dbg !1362
  br label %103, !dbg !1362

103:                                              ; preds = %100
  br label %104, !dbg !1362

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1363
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1363
  store i8* %106, i8** %30, align 8, !dbg !1363
  br label %85, !dbg !1364, !llvm.loop !1365

107:                                              ; preds = %85
  br label %108, !dbg !1366

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1367
  %109 = load i8*, i8** %19, align 8, !dbg !1368
  store i8* %109, i8** %23, align 8, !dbg !1369
  %110 = load i8*, i8** %23, align 8, !dbg !1370
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1371
  store i64 %111, i64* %24, align 8, !dbg !1372
  br label %138, !dbg !1373

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1374
  br label %113, !dbg !1375

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1376
  br label %114, !dbg !1377

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1378
  %116 = trunc i8 %115 to i1, !dbg !1378
  br i1 %116, label %118, label %117, !dbg !1380

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1381
  br label %118, !dbg !1382

118:                                              ; preds = %117, %114
  br label %119, !dbg !1378

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1383
  %120 = load i8, i8* %26, align 1, !dbg !1384
  %121 = trunc i8 %120 to i1, !dbg !1384
  br i1 %121, label %135, label %122, !dbg !1386

122:                                              ; preds = %119
  br label %123, !dbg !1387

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1388
  %125 = load i64, i64* %12, align 8, !dbg !1388
  %126 = icmp ult i64 %124, %125, !dbg !1388
  br i1 %126, label %127, label %131, !dbg !1391

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1388
  %129 = load i64, i64* %21, align 8, !dbg !1388
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1388
  store i8 39, i8* %130, align 1, !dbg !1388
  br label %131, !dbg !1388

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1391
  %133 = add i64 %132, 1, !dbg !1391
  store i64 %133, i64* %21, align 8, !dbg !1391
  br label %134, !dbg !1391

134:                                              ; preds = %131
  br label %135, !dbg !1391

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), i8** %23, align 8, !dbg !1392
  store i64 1, i64* %24, align 8, !dbg !1393
  br label %138, !dbg !1394

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1395
  br label %138, !dbg !1396

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1397
  unreachable, !dbg !1397

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1398, metadata !DIExpression()), !dbg !1400
  store i64 0, i64* %31, align 8, !dbg !1400
  br label %139, !dbg !1401

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1402
  %141 = icmp eq i64 %140, -1, !dbg !1404
  br i1 %141, label %142, label %150, !dbg !1402

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1405
  %144 = load i64, i64* %31, align 8, !dbg !1406
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1405
  %146 = load i8, i8* %145, align 1, !dbg !1405
  %147 = zext i8 %146 to i32, !dbg !1405
  %148 = icmp eq i32 %147, 0, !dbg !1407
  %149 = zext i1 %148 to i32, !dbg !1407
  br label %155, !dbg !1402

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1408
  %152 = load i64, i64* %14, align 8, !dbg !1409
  %153 = icmp eq i64 %151, %152, !dbg !1410
  %154 = zext i1 %153 to i32, !dbg !1410
  br label %155, !dbg !1402

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1402
  %157 = icmp ne i32 %156, 0, !dbg !1411
  %158 = xor i1 %157, true, !dbg !1411
  br i1 %158, label %159, label %996, !dbg !1412

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1413, metadata !DIExpression()), !dbg !1415
  store i8 0, i8* %32, align 1, !dbg !1415
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1416, metadata !DIExpression()), !dbg !1417
  store i8 0, i8* %33, align 1, !dbg !1417
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1418, metadata !DIExpression()), !dbg !1419
  store i8 0, i8* %34, align 1, !dbg !1419
  %160 = load i8, i8* %25, align 1, !dbg !1420
  %161 = trunc i8 %160 to i1, !dbg !1420
  br i1 %161, label %162, label %197, !dbg !1422

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1423
  %164 = icmp ne i32 %163, 2, !dbg !1424
  br i1 %164, label %165, label %197, !dbg !1425

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1426
  %167 = icmp ne i64 %166, 0, !dbg !1426
  br i1 %167, label %168, label %197, !dbg !1427

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1428
  %170 = load i64, i64* %24, align 8, !dbg !1429
  %171 = add i64 %169, %170, !dbg !1430
  %172 = load i64, i64* %14, align 8, !dbg !1431
  %173 = icmp eq i64 %172, -1, !dbg !1432
  br i1 %173, label %174, label %180, !dbg !1433

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1434
  %176 = icmp ult i64 1, %175, !dbg !1435
  br i1 %176, label %177, label %180, !dbg !1431

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1436
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1437
  store i64 %179, i64* %14, align 8, !dbg !1438
  br label %182, !dbg !1431

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1439
  br label %182, !dbg !1431

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1431
  %184 = icmp ule i64 %171, %183, !dbg !1440
  br i1 %184, label %185, label %197, !dbg !1441

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1442
  %187 = load i64, i64* %31, align 8, !dbg !1443
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1444
  %189 = load i8*, i8** %23, align 8, !dbg !1445
  %190 = load i64, i64* %24, align 8, !dbg !1446
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1447
  br i1 %191, label %192, label %197, !dbg !1448

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1449
  %194 = trunc i8 %193 to i1, !dbg !1449
  br i1 %194, label %195, label %196, !dbg !1452

195:                                              ; preds = %192
  br label %1078, !dbg !1453

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1454
  br label %197, !dbg !1455

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1456, metadata !DIExpression()), !dbg !1457
  %198 = load i8*, i8** %13, align 8, !dbg !1458
  %199 = load i64, i64* %31, align 8, !dbg !1459
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1458
  %201 = load i8, i8* %200, align 1, !dbg !1458
  store i8 %201, i8* %35, align 1, !dbg !1457
  %202 = load i8, i8* %35, align 1, !dbg !1460
  %203 = zext i8 %202 to i32, !dbg !1460
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
  ], !dbg !1461

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1462
  %206 = trunc i8 %205 to i1, !dbg !1462
  br i1 %206, label %207, label %318, !dbg !1465

207:                                              ; preds = %204
  br label %208, !dbg !1466

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1468
  %210 = trunc i8 %209 to i1, !dbg !1468
  br i1 %210, label %211, label %212, !dbg !1471

211:                                              ; preds = %208
  br label %1078, !dbg !1468

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1471
  %213 = load i32, i32* %15, align 4, !dbg !1472
  %214 = icmp eq i32 %213, 2, !dbg !1472
  br i1 %214, label %215, label %255, !dbg !1472

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1472
  %217 = trunc i8 %216 to i1, !dbg !1472
  br i1 %217, label %255, label %218, !dbg !1471

218:                                              ; preds = %215
  br label %219, !dbg !1474

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1476
  %221 = load i64, i64* %12, align 8, !dbg !1476
  %222 = icmp ult i64 %220, %221, !dbg !1476
  br i1 %222, label %223, label %227, !dbg !1479

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1476
  %225 = load i64, i64* %21, align 8, !dbg !1476
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1476
  store i8 39, i8* %226, align 1, !dbg !1476
  br label %227, !dbg !1476

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1479
  %229 = add i64 %228, 1, !dbg !1479
  store i64 %229, i64* %21, align 8, !dbg !1479
  br label %230, !dbg !1479

230:                                              ; preds = %227
  br label %231, !dbg !1474

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1480
  %233 = load i64, i64* %12, align 8, !dbg !1480
  %234 = icmp ult i64 %232, %233, !dbg !1480
  br i1 %234, label %235, label %239, !dbg !1483

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1480
  %237 = load i64, i64* %21, align 8, !dbg !1480
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1480
  store i8 36, i8* %238, align 1, !dbg !1480
  br label %239, !dbg !1480

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1483
  %241 = add i64 %240, 1, !dbg !1483
  store i64 %241, i64* %21, align 8, !dbg !1483
  br label %242, !dbg !1483

242:                                              ; preds = %239
  br label %243, !dbg !1474

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1484
  %245 = load i64, i64* %12, align 8, !dbg !1484
  %246 = icmp ult i64 %244, %245, !dbg !1484
  br i1 %246, label %247, label %251, !dbg !1487

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1484
  %249 = load i64, i64* %21, align 8, !dbg !1484
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1484
  store i8 39, i8* %250, align 1, !dbg !1484
  br label %251, !dbg !1484

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1487
  %253 = add i64 %252, 1, !dbg !1487
  store i64 %253, i64* %21, align 8, !dbg !1487
  br label %254, !dbg !1487

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1474
  br label %255, !dbg !1474

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1471

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1488
  %258 = load i64, i64* %12, align 8, !dbg !1488
  %259 = icmp ult i64 %257, %258, !dbg !1488
  br i1 %259, label %260, label %264, !dbg !1491

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1488
  %262 = load i64, i64* %21, align 8, !dbg !1488
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1488
  store i8 92, i8* %263, align 1, !dbg !1488
  br label %264, !dbg !1488

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1491
  %266 = add i64 %265, 1, !dbg !1491
  store i64 %266, i64* %21, align 8, !dbg !1491
  br label %267, !dbg !1491

267:                                              ; preds = %264
  br label %268, !dbg !1471

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1492
  %270 = icmp ne i32 %269, 2, !dbg !1494
  br i1 %270, label %271, label %317, !dbg !1495

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1496
  %273 = add i64 %272, 1, !dbg !1497
  %274 = load i64, i64* %14, align 8, !dbg !1498
  %275 = icmp ult i64 %273, %274, !dbg !1499
  br i1 %275, label %276, label %317, !dbg !1500

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1501
  %278 = load i64, i64* %31, align 8, !dbg !1502
  %279 = add i64 %278, 1, !dbg !1503
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1501
  %281 = load i8, i8* %280, align 1, !dbg !1501
  %282 = zext i8 %281 to i32, !dbg !1501
  %283 = icmp sle i32 48, %282, !dbg !1504
  br i1 %283, label %284, label %317, !dbg !1505

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1506
  %286 = load i64, i64* %31, align 8, !dbg !1507
  %287 = add i64 %286, 1, !dbg !1508
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1506
  %289 = load i8, i8* %288, align 1, !dbg !1506
  %290 = zext i8 %289 to i32, !dbg !1506
  %291 = icmp sle i32 %290, 57, !dbg !1509
  br i1 %291, label %292, label %317, !dbg !1510

292:                                              ; preds = %284
  br label %293, !dbg !1511

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1513
  %295 = load i64, i64* %12, align 8, !dbg !1513
  %296 = icmp ult i64 %294, %295, !dbg !1513
  br i1 %296, label %297, label %301, !dbg !1516

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1513
  %299 = load i64, i64* %21, align 8, !dbg !1513
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1513
  store i8 48, i8* %300, align 1, !dbg !1513
  br label %301, !dbg !1513

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1516
  %303 = add i64 %302, 1, !dbg !1516
  store i64 %303, i64* %21, align 8, !dbg !1516
  br label %304, !dbg !1516

304:                                              ; preds = %301
  br label %305, !dbg !1517

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1518
  %307 = load i64, i64* %12, align 8, !dbg !1518
  %308 = icmp ult i64 %306, %307, !dbg !1518
  br i1 %308, label %309, label %313, !dbg !1521

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1518
  %311 = load i64, i64* %21, align 8, !dbg !1518
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1518
  store i8 48, i8* %312, align 1, !dbg !1518
  br label %313, !dbg !1518

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1521
  %315 = add i64 %314, 1, !dbg !1521
  store i64 %315, i64* %21, align 8, !dbg !1521
  br label %316, !dbg !1521

316:                                              ; preds = %313
  br label %317, !dbg !1522

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1523
  br label %324, !dbg !1524

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1525
  %320 = and i32 %319, 1, !dbg !1527
  %321 = icmp ne i32 %320, 0, !dbg !1527
  br i1 %321, label %322, label %323, !dbg !1528

322:                                              ; preds = %318
  br label %993, !dbg !1529

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1530

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1531
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1532

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1533
  %329 = trunc i8 %328 to i1, !dbg !1533
  br i1 %329, label %330, label %331, !dbg !1536

330:                                              ; preds = %327
  br label %1078, !dbg !1537

331:                                              ; preds = %327
  br label %418, !dbg !1538

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1539
  %334 = and i32 %333, 4, !dbg !1541
  %335 = icmp ne i32 %334, 0, !dbg !1541
  br i1 %335, label %336, label %417, !dbg !1542

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1543
  %338 = add i64 %337, 2, !dbg !1544
  %339 = load i64, i64* %14, align 8, !dbg !1545
  %340 = icmp ult i64 %338, %339, !dbg !1546
  br i1 %340, label %341, label %417, !dbg !1547

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1548
  %343 = load i64, i64* %31, align 8, !dbg !1549
  %344 = add i64 %343, 1, !dbg !1550
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1548
  %346 = load i8, i8* %345, align 1, !dbg !1548
  %347 = zext i8 %346 to i32, !dbg !1548
  %348 = icmp eq i32 %347, 63, !dbg !1551
  br i1 %348, label %349, label %417, !dbg !1552

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1553
  %351 = load i64, i64* %31, align 8, !dbg !1554
  %352 = add i64 %351, 2, !dbg !1555
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1553
  %354 = load i8, i8* %353, align 1, !dbg !1553
  %355 = zext i8 %354 to i32, !dbg !1553
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
  ], !dbg !1556

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1557
  %358 = trunc i8 %357 to i1, !dbg !1557
  br i1 %358, label %359, label %360, !dbg !1560

359:                                              ; preds = %356
  br label %1078, !dbg !1561

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1562
  %362 = load i64, i64* %31, align 8, !dbg !1563
  %363 = add i64 %362, 2, !dbg !1564
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1562
  %365 = load i8, i8* %364, align 1, !dbg !1562
  store i8 %365, i8* %35, align 1, !dbg !1565
  %366 = load i64, i64* %31, align 8, !dbg !1566
  %367 = add i64 %366, 2, !dbg !1566
  store i64 %367, i64* %31, align 8, !dbg !1566
  br label %368, !dbg !1567

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1568
  %370 = load i64, i64* %12, align 8, !dbg !1568
  %371 = icmp ult i64 %369, %370, !dbg !1568
  br i1 %371, label %372, label %376, !dbg !1571

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1568
  %374 = load i64, i64* %21, align 8, !dbg !1568
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1568
  store i8 63, i8* %375, align 1, !dbg !1568
  br label %376, !dbg !1568

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1571
  %378 = add i64 %377, 1, !dbg !1571
  store i64 %378, i64* %21, align 8, !dbg !1571
  br label %379, !dbg !1571

379:                                              ; preds = %376
  br label %380, !dbg !1572

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1573
  %382 = load i64, i64* %12, align 8, !dbg !1573
  %383 = icmp ult i64 %381, %382, !dbg !1573
  br i1 %383, label %384, label %388, !dbg !1576

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1573
  %386 = load i64, i64* %21, align 8, !dbg !1573
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1573
  store i8 34, i8* %387, align 1, !dbg !1573
  br label %388, !dbg !1573

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1576
  %390 = add i64 %389, 1, !dbg !1576
  store i64 %390, i64* %21, align 8, !dbg !1576
  br label %391, !dbg !1576

391:                                              ; preds = %388
  br label %392, !dbg !1577

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1578
  %394 = load i64, i64* %12, align 8, !dbg !1578
  %395 = icmp ult i64 %393, %394, !dbg !1578
  br i1 %395, label %396, label %400, !dbg !1581

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1578
  %398 = load i64, i64* %21, align 8, !dbg !1578
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1578
  store i8 34, i8* %399, align 1, !dbg !1578
  br label %400, !dbg !1578

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1581
  %402 = add i64 %401, 1, !dbg !1581
  store i64 %402, i64* %21, align 8, !dbg !1581
  br label %403, !dbg !1581

403:                                              ; preds = %400
  br label %404, !dbg !1582

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1583
  %406 = load i64, i64* %12, align 8, !dbg !1583
  %407 = icmp ult i64 %405, %406, !dbg !1583
  br i1 %407, label %408, label %412, !dbg !1586

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1583
  %410 = load i64, i64* %21, align 8, !dbg !1583
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1583
  store i8 63, i8* %411, align 1, !dbg !1583
  br label %412, !dbg !1583

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1586
  %414 = add i64 %413, 1, !dbg !1586
  store i64 %414, i64* %21, align 8, !dbg !1586
  br label %415, !dbg !1586

415:                                              ; preds = %412
  br label %416, !dbg !1587

416:                                              ; preds = %349, %415
  br label %417, !dbg !1588

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1589

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1590

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1591
  br label %454, !dbg !1593

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1594
  br label %454, !dbg !1595

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1596
  br label %454, !dbg !1597

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1598
  br label %446, !dbg !1599

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1600
  br label %446, !dbg !1601

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1602
  br label %446, !dbg !1603

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1604
  br label %454, !dbg !1605

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1606
  store i8 %427, i8* %36, align 1, !dbg !1607
  %428 = load i32, i32* %15, align 4, !dbg !1608
  %429 = icmp eq i32 %428, 2, !dbg !1610
  br i1 %429, label %430, label %435, !dbg !1611

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1612
  %432 = trunc i8 %431 to i1, !dbg !1612
  br i1 %432, label %433, label %434, !dbg !1615

433:                                              ; preds = %430
  br label %1078, !dbg !1616

434:                                              ; preds = %430
  br label %942, !dbg !1617

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1618
  %437 = trunc i8 %436 to i1, !dbg !1618
  br i1 %437, label %438, label %445, !dbg !1620

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1621
  %440 = trunc i8 %439 to i1, !dbg !1621
  br i1 %440, label %441, label %445, !dbg !1622

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1623
  %443 = icmp ne i64 %442, 0, !dbg !1623
  br i1 %443, label %444, label %445, !dbg !1624

444:                                              ; preds = %441
  br label %942, !dbg !1625

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1623

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1626), !dbg !1627
  %447 = load i32, i32* %15, align 4, !dbg !1628
  %448 = icmp eq i32 %447, 2, !dbg !1630
  br i1 %448, label %449, label %453, !dbg !1631

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1632
  %451 = trunc i8 %450 to i1, !dbg !1632
  br i1 %451, label %452, label %453, !dbg !1633

452:                                              ; preds = %449
  br label %1078, !dbg !1634

453:                                              ; preds = %449, %446
  br label %454, !dbg !1632

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1635), !dbg !1636
  %455 = load i8, i8* %25, align 1, !dbg !1637
  %456 = trunc i8 %455 to i1, !dbg !1637
  br i1 %456, label %457, label %459, !dbg !1639

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1640
  store i8 %458, i8* %35, align 1, !dbg !1642
  br label %880, !dbg !1643

459:                                              ; preds = %454
  br label %849, !dbg !1644

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1645
  %462 = icmp eq i64 %461, -1, !dbg !1647
  br i1 %462, label %463, label %469, !dbg !1648

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1649
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1649
  %466 = load i8, i8* %465, align 1, !dbg !1649
  %467 = zext i8 %466 to i32, !dbg !1649
  %468 = icmp eq i32 %467, 0, !dbg !1650
  br i1 %468, label %473, label %472, !dbg !1645

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1651
  %471 = icmp eq i64 %470, 1, !dbg !1652
  br i1 %471, label %473, label %472, !dbg !1648

472:                                              ; preds = %469, %463
  br label %849, !dbg !1653

473:                                              ; preds = %469, %463
  br label %474, !dbg !1654

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1655
  %476 = icmp ne i64 %475, 0, !dbg !1657
  br i1 %476, label %477, label %478, !dbg !1658

477:                                              ; preds = %474
  br label %849, !dbg !1659

478:                                              ; preds = %474
  br label %479, !dbg !1660

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1661
  br label %480, !dbg !1662

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1663
  %482 = icmp eq i32 %481, 2, !dbg !1665
  br i1 %482, label %483, label %487, !dbg !1666

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1667
  %485 = trunc i8 %484 to i1, !dbg !1667
  br i1 %485, label %486, label %487, !dbg !1668

486:                                              ; preds = %483
  br label %1078, !dbg !1669

487:                                              ; preds = %483, %480
  br label %849, !dbg !1670

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1671
  store i8 1, i8* %34, align 1, !dbg !1672
  %489 = load i32, i32* %15, align 4, !dbg !1673
  %490 = icmp eq i32 %489, 2, !dbg !1675
  br i1 %490, label %491, label %540, !dbg !1676

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1677
  %493 = trunc i8 %492 to i1, !dbg !1677
  br i1 %493, label %494, label %495, !dbg !1680

494:                                              ; preds = %491
  br label %1078, !dbg !1681

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1682
  %497 = icmp ne i64 %496, 0, !dbg !1682
  br i1 %497, label %498, label %503, !dbg !1684

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1685
  %500 = icmp ne i64 %499, 0, !dbg !1685
  br i1 %500, label %503, label %501, !dbg !1686

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1687
  store i64 %502, i64* %22, align 8, !dbg !1689
  store i64 0, i64* %12, align 8, !dbg !1690
  br label %503, !dbg !1691

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1692

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1693
  %506 = load i64, i64* %12, align 8, !dbg !1693
  %507 = icmp ult i64 %505, %506, !dbg !1693
  br i1 %507, label %508, label %512, !dbg !1696

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1693
  %510 = load i64, i64* %21, align 8, !dbg !1693
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1693
  store i8 39, i8* %511, align 1, !dbg !1693
  br label %512, !dbg !1693

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1696
  %514 = add i64 %513, 1, !dbg !1696
  store i64 %514, i64* %21, align 8, !dbg !1696
  br label %515, !dbg !1696

515:                                              ; preds = %512
  br label %516, !dbg !1697

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1698
  %518 = load i64, i64* %12, align 8, !dbg !1698
  %519 = icmp ult i64 %517, %518, !dbg !1698
  br i1 %519, label %520, label %524, !dbg !1701

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1698
  %522 = load i64, i64* %21, align 8, !dbg !1698
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1698
  store i8 92, i8* %523, align 1, !dbg !1698
  br label %524, !dbg !1698

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1701
  %526 = add i64 %525, 1, !dbg !1701
  store i64 %526, i64* %21, align 8, !dbg !1701
  br label %527, !dbg !1701

527:                                              ; preds = %524
  br label %528, !dbg !1702

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1703
  %530 = load i64, i64* %12, align 8, !dbg !1703
  %531 = icmp ult i64 %529, %530, !dbg !1703
  br i1 %531, label %532, label %536, !dbg !1706

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1703
  %534 = load i64, i64* %21, align 8, !dbg !1703
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1703
  store i8 39, i8* %535, align 1, !dbg !1703
  br label %536, !dbg !1703

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1706
  %538 = add i64 %537, 1, !dbg !1706
  store i64 %538, i64* %21, align 8, !dbg !1706
  br label %539, !dbg !1706

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1707
  br label %540, !dbg !1708

540:                                              ; preds = %539, %488
  br label %849, !dbg !1709

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1710
  br label %849, !dbg !1711

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1712, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1715, metadata !DIExpression()), !dbg !1716
  %543 = load i8, i8* %20, align 1, !dbg !1717
  %544 = trunc i8 %543 to i1, !dbg !1717
  br i1 %544, label %545, label %557, !dbg !1719

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1720
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1722
  %547 = load i16*, i16** %546, align 8, !dbg !1722
  %548 = load i8, i8* %35, align 1, !dbg !1722
  %549 = zext i8 %548 to i32, !dbg !1722
  %550 = sext i32 %549 to i64, !dbg !1722
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1722
  %552 = load i16, i16* %551, align 2, !dbg !1722
  %553 = zext i16 %552 to i32, !dbg !1722
  %554 = and i32 %553, 16384, !dbg !1722
  %555 = icmp ne i32 %554, 0, !dbg !1723
  %556 = zext i1 %555 to i8, !dbg !1724
  store i8 %556, i8* %38, align 1, !dbg !1724
  br label %648, !dbg !1725

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1726, metadata !DIExpression()), !dbg !1738
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1739
  store i64 0, i64* %37, align 8, !dbg !1740
  store i8 1, i8* %38, align 1, !dbg !1741
  %558 = load i64, i64* %14, align 8, !dbg !1742
  %559 = icmp eq i64 %558, -1, !dbg !1744
  br i1 %559, label %560, label %563, !dbg !1745

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1746
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !1747
  store i64 %562, i64* %14, align 8, !dbg !1748
  br label %563, !dbg !1749

563:                                              ; preds = %560, %557
  br label %564, !dbg !1750

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1751, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1756, metadata !DIExpression()), !dbg !1757
  %565 = load i8*, i8** %13, align 8, !dbg !1758
  %566 = load i64, i64* %31, align 8, !dbg !1759
  %567 = load i64, i64* %37, align 8, !dbg !1760
  %568 = add i64 %566, %567, !dbg !1761
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !1758
  %570 = load i64, i64* %14, align 8, !dbg !1762
  %571 = load i64, i64* %31, align 8, !dbg !1763
  %572 = load i64, i64* %37, align 8, !dbg !1764
  %573 = add i64 %571, %572, !dbg !1765
  %574 = sub i64 %570, %573, !dbg !1766
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !1767
  store i64 %575, i64* %41, align 8, !dbg !1757
  %576 = load i64, i64* %41, align 8, !dbg !1768
  %577 = icmp eq i64 %576, 0, !dbg !1770
  br i1 %577, label %578, label %579, !dbg !1771

578:                                              ; preds = %564
  br label %647, !dbg !1772

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !1773
  %581 = icmp eq i64 %580, -1, !dbg !1775
  br i1 %581, label %582, label %583, !dbg !1776

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !1777
  br label %647, !dbg !1779

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !1780
  %585 = icmp eq i64 %584, -2, !dbg !1782
  br i1 %585, label %586, label %608, !dbg !1783

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !1784
  br label %587, !dbg !1786

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !1787
  %589 = load i64, i64* %37, align 8, !dbg !1788
  %590 = add i64 %588, %589, !dbg !1789
  %591 = load i64, i64* %14, align 8, !dbg !1790
  %592 = icmp ult i64 %590, %591, !dbg !1791
  br i1 %592, label %593, label %602, !dbg !1792

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !1793
  %595 = load i64, i64* %31, align 8, !dbg !1794
  %596 = load i64, i64* %37, align 8, !dbg !1795
  %597 = add i64 %595, %596, !dbg !1796
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !1793
  %599 = load i8, i8* %598, align 1, !dbg !1793
  %600 = zext i8 %599 to i32, !dbg !1793
  %601 = icmp ne i32 %600, 0, !dbg !1792
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !1797
  br i1 %603, label %604, label %607, !dbg !1786

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !1798
  %606 = add i64 %605, 1, !dbg !1798
  store i64 %606, i64* %37, align 8, !dbg !1798
  br label %587, !dbg !1786, !llvm.loop !1799

607:                                              ; preds = %602
  br label %647, !dbg !1800

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !1801
  %610 = trunc i8 %609 to i1, !dbg !1801
  br i1 %610, label %611, label %635, !dbg !1804

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !1805
  %613 = icmp eq i32 %612, 2, !dbg !1806
  br i1 %613, label %614, label %635, !dbg !1807

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !1808, metadata !DIExpression()), !dbg !1811
  store i64 1, i64* %42, align 8, !dbg !1811
  br label %615, !dbg !1812

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !1813
  %617 = load i64, i64* %41, align 8, !dbg !1815
  %618 = icmp ult i64 %616, %617, !dbg !1816
  br i1 %618, label %619, label %634, !dbg !1817

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !1818
  %621 = load i64, i64* %31, align 8, !dbg !1819
  %622 = load i64, i64* %37, align 8, !dbg !1820
  %623 = add i64 %621, %622, !dbg !1821
  %624 = load i64, i64* %42, align 8, !dbg !1822
  %625 = add i64 %623, %624, !dbg !1823
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !1818
  %627 = load i8, i8* %626, align 1, !dbg !1818
  %628 = zext i8 %627 to i32, !dbg !1818
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !1824

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !1825

630:                                              ; preds = %619
  br label %631, !dbg !1827

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !1828
  %633 = add i64 %632, 1, !dbg !1828
  store i64 %633, i64* %42, align 8, !dbg !1828
  br label %615, !dbg !1829, !llvm.loop !1830

634:                                              ; preds = %615
  br label %635, !dbg !1832

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !1833
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !1835
  %638 = icmp ne i32 %637, 0, !dbg !1835
  br i1 %638, label %640, label %639, !dbg !1836

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !1837
  br label %640, !dbg !1838

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !1839
  %642 = load i64, i64* %37, align 8, !dbg !1840
  %643 = add i64 %642, %641, !dbg !1840
  store i64 %643, i64* %37, align 8, !dbg !1840
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !1841

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !1842
  %650 = trunc i8 %649 to i1, !dbg !1842
  %651 = zext i1 %650 to i8, !dbg !1843
  store i8 %651, i8* %34, align 1, !dbg !1843
  %652 = load i64, i64* %37, align 8, !dbg !1844
  %653 = icmp ult i64 1, %652, !dbg !1846
  br i1 %653, label %660, label %654, !dbg !1847

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !1848
  %656 = trunc i8 %655 to i1, !dbg !1848
  br i1 %656, label %657, label %848, !dbg !1849

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !1850
  %659 = trunc i8 %658 to i1, !dbg !1850
  br i1 %659, label %848, label %660, !dbg !1851

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !1852, metadata !DIExpression()), !dbg !1854
  %661 = load i64, i64* %31, align 8, !dbg !1855
  %662 = load i64, i64* %37, align 8, !dbg !1856
  %663 = add i64 %661, %662, !dbg !1857
  store i64 %663, i64* %43, align 8, !dbg !1854
  br label %664, !dbg !1858

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !1859
  %666 = trunc i8 %665 to i1, !dbg !1859
  br i1 %666, label %667, label %772, !dbg !1864

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !1865
  %669 = trunc i8 %668 to i1, !dbg !1865
  br i1 %669, label %772, label %670, !dbg !1866

670:                                              ; preds = %667
  br label %671, !dbg !1867

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !1869
  %673 = trunc i8 %672 to i1, !dbg !1869
  br i1 %673, label %674, label %675, !dbg !1872

674:                                              ; preds = %671
  br label %1078, !dbg !1869

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !1872
  %676 = load i32, i32* %15, align 4, !dbg !1873
  %677 = icmp eq i32 %676, 2, !dbg !1873
  br i1 %677, label %678, label %718, !dbg !1873

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !1873
  %680 = trunc i8 %679 to i1, !dbg !1873
  br i1 %680, label %718, label %681, !dbg !1872

681:                                              ; preds = %678
  br label %682, !dbg !1875

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !1877
  %684 = load i64, i64* %12, align 8, !dbg !1877
  %685 = icmp ult i64 %683, %684, !dbg !1877
  br i1 %685, label %686, label %690, !dbg !1880

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !1877
  %688 = load i64, i64* %21, align 8, !dbg !1877
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !1877
  store i8 39, i8* %689, align 1, !dbg !1877
  br label %690, !dbg !1877

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !1880
  %692 = add i64 %691, 1, !dbg !1880
  store i64 %692, i64* %21, align 8, !dbg !1880
  br label %693, !dbg !1880

693:                                              ; preds = %690
  br label %694, !dbg !1875

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !1881
  %696 = load i64, i64* %12, align 8, !dbg !1881
  %697 = icmp ult i64 %695, %696, !dbg !1881
  br i1 %697, label %698, label %702, !dbg !1884

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !1881
  %700 = load i64, i64* %21, align 8, !dbg !1881
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !1881
  store i8 36, i8* %701, align 1, !dbg !1881
  br label %702, !dbg !1881

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !1884
  %704 = add i64 %703, 1, !dbg !1884
  store i64 %704, i64* %21, align 8, !dbg !1884
  br label %705, !dbg !1884

705:                                              ; preds = %702
  br label %706, !dbg !1875

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !1885
  %708 = load i64, i64* %12, align 8, !dbg !1885
  %709 = icmp ult i64 %707, %708, !dbg !1885
  br i1 %709, label %710, label %714, !dbg !1888

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !1885
  %712 = load i64, i64* %21, align 8, !dbg !1885
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !1885
  store i8 39, i8* %713, align 1, !dbg !1885
  br label %714, !dbg !1885

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !1888
  %716 = add i64 %715, 1, !dbg !1888
  store i64 %716, i64* %21, align 8, !dbg !1888
  br label %717, !dbg !1888

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !1875
  br label %718, !dbg !1875

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !1872

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !1889
  %721 = load i64, i64* %12, align 8, !dbg !1889
  %722 = icmp ult i64 %720, %721, !dbg !1889
  br i1 %722, label %723, label %727, !dbg !1892

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !1889
  %725 = load i64, i64* %21, align 8, !dbg !1889
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !1889
  store i8 92, i8* %726, align 1, !dbg !1889
  br label %727, !dbg !1889

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !1892
  %729 = add i64 %728, 1, !dbg !1892
  store i64 %729, i64* %21, align 8, !dbg !1892
  br label %730, !dbg !1892

730:                                              ; preds = %727
  br label %731, !dbg !1872

731:                                              ; preds = %730
  br label %732, !dbg !1893

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !1894
  %734 = load i64, i64* %12, align 8, !dbg !1894
  %735 = icmp ult i64 %733, %734, !dbg !1894
  br i1 %735, label %736, label %745, !dbg !1897

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !1894
  %738 = zext i8 %737 to i32, !dbg !1894
  %739 = ashr i32 %738, 6, !dbg !1894
  %740 = add nsw i32 48, %739, !dbg !1894
  %741 = trunc i32 %740 to i8, !dbg !1894
  %742 = load i8*, i8** %11, align 8, !dbg !1894
  %743 = load i64, i64* %21, align 8, !dbg !1894
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !1894
  store i8 %741, i8* %744, align 1, !dbg !1894
  br label %745, !dbg !1894

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !1897
  %747 = add i64 %746, 1, !dbg !1897
  store i64 %747, i64* %21, align 8, !dbg !1897
  br label %748, !dbg !1897

748:                                              ; preds = %745
  br label %749, !dbg !1898

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !1899
  %751 = load i64, i64* %12, align 8, !dbg !1899
  %752 = icmp ult i64 %750, %751, !dbg !1899
  br i1 %752, label %753, label %763, !dbg !1902

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !1899
  %755 = zext i8 %754 to i32, !dbg !1899
  %756 = ashr i32 %755, 3, !dbg !1899
  %757 = and i32 %756, 7, !dbg !1899
  %758 = add nsw i32 48, %757, !dbg !1899
  %759 = trunc i32 %758 to i8, !dbg !1899
  %760 = load i8*, i8** %11, align 8, !dbg !1899
  %761 = load i64, i64* %21, align 8, !dbg !1899
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !1899
  store i8 %759, i8* %762, align 1, !dbg !1899
  br label %763, !dbg !1899

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !1902
  %765 = add i64 %764, 1, !dbg !1902
  store i64 %765, i64* %21, align 8, !dbg !1902
  br label %766, !dbg !1902

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !1903
  %768 = zext i8 %767 to i32, !dbg !1903
  %769 = and i32 %768, 7, !dbg !1904
  %770 = add nsw i32 48, %769, !dbg !1905
  %771 = trunc i32 %770 to i8, !dbg !1906
  store i8 %771, i8* %35, align 1, !dbg !1907
  br label %789, !dbg !1908

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !1909
  %774 = trunc i8 %773 to i1, !dbg !1909
  br i1 %774, label %775, label %788, !dbg !1911

775:                                              ; preds = %772
  br label %776, !dbg !1912

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !1914
  %778 = load i64, i64* %12, align 8, !dbg !1914
  %779 = icmp ult i64 %777, %778, !dbg !1914
  br i1 %779, label %780, label %784, !dbg !1917

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !1914
  %782 = load i64, i64* %21, align 8, !dbg !1914
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !1914
  store i8 92, i8* %783, align 1, !dbg !1914
  br label %784, !dbg !1914

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !1917
  %786 = add i64 %785, 1, !dbg !1917
  store i64 %786, i64* %21, align 8, !dbg !1917
  br label %787, !dbg !1917

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !1918
  br label %788, !dbg !1919

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !1920
  %791 = load i64, i64* %31, align 8, !dbg !1922
  %792 = add i64 %791, 1, !dbg !1923
  %793 = icmp ule i64 %790, %792, !dbg !1924
  br i1 %793, label %794, label %795, !dbg !1925

794:                                              ; preds = %789
  br label %847, !dbg !1926

795:                                              ; preds = %789
  br label %796, !dbg !1927

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !1928
  %798 = trunc i8 %797 to i1, !dbg !1928
  br i1 %798, label %799, label %827, !dbg !1928

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !1928
  %801 = trunc i8 %800 to i1, !dbg !1928
  br i1 %801, label %827, label %802, !dbg !1931

802:                                              ; preds = %799
  br label %803, !dbg !1932

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !1934
  %805 = load i64, i64* %12, align 8, !dbg !1934
  %806 = icmp ult i64 %804, %805, !dbg !1934
  br i1 %806, label %807, label %811, !dbg !1937

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !1934
  %809 = load i64, i64* %21, align 8, !dbg !1934
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !1934
  store i8 39, i8* %810, align 1, !dbg !1934
  br label %811, !dbg !1934

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !1937
  %813 = add i64 %812, 1, !dbg !1937
  store i64 %813, i64* %21, align 8, !dbg !1937
  br label %814, !dbg !1937

814:                                              ; preds = %811
  br label %815, !dbg !1932

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !1938
  %817 = load i64, i64* %12, align 8, !dbg !1938
  %818 = icmp ult i64 %816, %817, !dbg !1938
  br i1 %818, label %819, label %823, !dbg !1941

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !1938
  %821 = load i64, i64* %21, align 8, !dbg !1938
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !1938
  store i8 39, i8* %822, align 1, !dbg !1938
  br label %823, !dbg !1938

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !1941
  %825 = add i64 %824, 1, !dbg !1941
  store i64 %825, i64* %21, align 8, !dbg !1941
  br label %826, !dbg !1941

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !1932
  br label %827, !dbg !1932

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !1931

828:                                              ; preds = %827
  br label %829, !dbg !1942

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !1943
  %831 = load i64, i64* %12, align 8, !dbg !1943
  %832 = icmp ult i64 %830, %831, !dbg !1943
  br i1 %832, label %833, label %838, !dbg !1946

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !1943
  %835 = load i8*, i8** %11, align 8, !dbg !1943
  %836 = load i64, i64* %21, align 8, !dbg !1943
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !1943
  store i8 %834, i8* %837, align 1, !dbg !1943
  br label %838, !dbg !1943

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !1946
  %840 = add i64 %839, 1, !dbg !1946
  store i64 %840, i64* %21, align 8, !dbg !1946
  br label %841, !dbg !1946

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !1947
  %843 = load i64, i64* %31, align 8, !dbg !1948
  %844 = add i64 %843, 1, !dbg !1948
  store i64 %844, i64* %31, align 8, !dbg !1948
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !1947
  %846 = load i8, i8* %845, align 1, !dbg !1947
  store i8 %846, i8* %35, align 1, !dbg !1949
  br label %664, !dbg !1950, !llvm.loop !1951

847:                                              ; preds = %794
  br label %942, !dbg !1954

848:                                              ; preds = %657, %654
  br label %849, !dbg !1955

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !1956
  %851 = trunc i8 %850 to i1, !dbg !1956
  br i1 %851, label %852, label %855, !dbg !1958

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !1959
  %854 = icmp ne i32 %853, 2, !dbg !1960
  br i1 %854, label %858, label %855, !dbg !1961

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !1962
  %857 = trunc i8 %856 to i1, !dbg !1962
  br i1 %857, label %858, label %875, !dbg !1963

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !1964
  %860 = icmp ne i32* %859, null, !dbg !1964
  br i1 %860, label %861, label %875, !dbg !1965

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !1966
  %863 = load i8, i8* %35, align 1, !dbg !1967
  %864 = zext i8 %863 to i64, !dbg !1967
  %865 = udiv i64 %864, 32, !dbg !1968
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !1966
  %867 = load i32, i32* %866, align 4, !dbg !1966
  %868 = load i8, i8* %35, align 1, !dbg !1969
  %869 = zext i8 %868 to i64, !dbg !1969
  %870 = urem i64 %869, 32, !dbg !1970
  %871 = trunc i64 %870 to i32, !dbg !1971
  %872 = lshr i32 %867, %871, !dbg !1971
  %873 = and i32 %872, 1, !dbg !1972
  %874 = icmp ne i32 %873, 0, !dbg !1972
  br i1 %874, label %879, label %875, !dbg !1973

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !1974
  %877 = trunc i8 %876 to i1, !dbg !1974
  br i1 %877, label %879, label %878, !dbg !1975

878:                                              ; preds = %875
  br label %942, !dbg !1976

879:                                              ; preds = %875, %861
  br label %880, !dbg !1974

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !1977), !dbg !1978
  br label %881, !dbg !1979

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !1980
  %883 = trunc i8 %882 to i1, !dbg !1980
  br i1 %883, label %884, label %885, !dbg !1983

884:                                              ; preds = %881
  br label %1078, !dbg !1980

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !1983
  %886 = load i32, i32* %15, align 4, !dbg !1984
  %887 = icmp eq i32 %886, 2, !dbg !1984
  br i1 %887, label %888, label %928, !dbg !1984

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !1984
  %890 = trunc i8 %889 to i1, !dbg !1984
  br i1 %890, label %928, label %891, !dbg !1983

891:                                              ; preds = %888
  br label %892, !dbg !1986

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !1988
  %894 = load i64, i64* %12, align 8, !dbg !1988
  %895 = icmp ult i64 %893, %894, !dbg !1988
  br i1 %895, label %896, label %900, !dbg !1991

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !1988
  %898 = load i64, i64* %21, align 8, !dbg !1988
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !1988
  store i8 39, i8* %899, align 1, !dbg !1988
  br label %900, !dbg !1988

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !1991
  %902 = add i64 %901, 1, !dbg !1991
  store i64 %902, i64* %21, align 8, !dbg !1991
  br label %903, !dbg !1991

903:                                              ; preds = %900
  br label %904, !dbg !1986

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !1992
  %906 = load i64, i64* %12, align 8, !dbg !1992
  %907 = icmp ult i64 %905, %906, !dbg !1992
  br i1 %907, label %908, label %912, !dbg !1995

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !1992
  %910 = load i64, i64* %21, align 8, !dbg !1992
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !1992
  store i8 36, i8* %911, align 1, !dbg !1992
  br label %912, !dbg !1992

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !1995
  %914 = add i64 %913, 1, !dbg !1995
  store i64 %914, i64* %21, align 8, !dbg !1995
  br label %915, !dbg !1995

915:                                              ; preds = %912
  br label %916, !dbg !1986

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !1996
  %918 = load i64, i64* %12, align 8, !dbg !1996
  %919 = icmp ult i64 %917, %918, !dbg !1996
  br i1 %919, label %920, label %924, !dbg !1999

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !1996
  %922 = load i64, i64* %21, align 8, !dbg !1996
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !1996
  store i8 39, i8* %923, align 1, !dbg !1996
  br label %924, !dbg !1996

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !1999
  %926 = add i64 %925, 1, !dbg !1999
  store i64 %926, i64* %21, align 8, !dbg !1999
  br label %927, !dbg !1999

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !1986
  br label %928, !dbg !1986

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !1983

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2000
  %931 = load i64, i64* %12, align 8, !dbg !2000
  %932 = icmp ult i64 %930, %931, !dbg !2000
  br i1 %932, label %933, label %937, !dbg !2003

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2000
  %935 = load i64, i64* %21, align 8, !dbg !2000
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2000
  store i8 92, i8* %936, align 1, !dbg !2000
  br label %937, !dbg !2000

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2003
  %939 = add i64 %938, 1, !dbg !2003
  store i64 %939, i64* %21, align 8, !dbg !2003
  br label %940, !dbg !2003

940:                                              ; preds = %937
  br label %941, !dbg !1983

941:                                              ; preds = %940
  br label %942, !dbg !1983

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2004), !dbg !2005
  br label %943, !dbg !2006

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2007
  %945 = trunc i8 %944 to i1, !dbg !2007
  br i1 %945, label %946, label %974, !dbg !2007

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2007
  %948 = trunc i8 %947 to i1, !dbg !2007
  br i1 %948, label %974, label %949, !dbg !2010

949:                                              ; preds = %946
  br label %950, !dbg !2011

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2013
  %952 = load i64, i64* %12, align 8, !dbg !2013
  %953 = icmp ult i64 %951, %952, !dbg !2013
  br i1 %953, label %954, label %958, !dbg !2016

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2013
  %956 = load i64, i64* %21, align 8, !dbg !2013
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2013
  store i8 39, i8* %957, align 1, !dbg !2013
  br label %958, !dbg !2013

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2016
  %960 = add i64 %959, 1, !dbg !2016
  store i64 %960, i64* %21, align 8, !dbg !2016
  br label %961, !dbg !2016

961:                                              ; preds = %958
  br label %962, !dbg !2011

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2017
  %964 = load i64, i64* %12, align 8, !dbg !2017
  %965 = icmp ult i64 %963, %964, !dbg !2017
  br i1 %965, label %966, label %970, !dbg !2020

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2017
  %968 = load i64, i64* %21, align 8, !dbg !2017
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2017
  store i8 39, i8* %969, align 1, !dbg !2017
  br label %970, !dbg !2017

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2020
  %972 = add i64 %971, 1, !dbg !2020
  store i64 %972, i64* %21, align 8, !dbg !2020
  br label %973, !dbg !2020

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2011
  br label %974, !dbg !2011

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2010

975:                                              ; preds = %974
  br label %976, !dbg !2021

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2022
  %978 = load i64, i64* %12, align 8, !dbg !2022
  %979 = icmp ult i64 %977, %978, !dbg !2022
  br i1 %979, label %980, label %985, !dbg !2025

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2022
  %982 = load i8*, i8** %11, align 8, !dbg !2022
  %983 = load i64, i64* %21, align 8, !dbg !2022
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2022
  store i8 %981, i8* %984, align 1, !dbg !2022
  br label %985, !dbg !2022

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2025
  %987 = add i64 %986, 1, !dbg !2025
  store i64 %987, i64* %21, align 8, !dbg !2025
  br label %988, !dbg !2025

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2026
  %990 = trunc i8 %989 to i1, !dbg !2026
  br i1 %990, label %992, label %991, !dbg !2028

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2029
  br label %992, !dbg !2030

992:                                              ; preds = %991, %988
  br label %993, !dbg !2031

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2032
  %995 = add i64 %994, 1, !dbg !2032
  store i64 %995, i64* %31, align 8, !dbg !2032
  br label %139, !dbg !2033, !llvm.loop !2034

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2036
  %998 = icmp eq i64 %997, 0, !dbg !2038
  br i1 %998, label %999, label %1006, !dbg !2039

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2040
  %1001 = icmp eq i32 %1000, 2, !dbg !2041
  br i1 %1001, label %1002, label %1006, !dbg !2042

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2043
  %1004 = trunc i8 %1003 to i1, !dbg !2043
  br i1 %1004, label %1005, label %1006, !dbg !2044

1005:                                             ; preds = %1002
  br label %1078, !dbg !2045

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2046
  %1008 = icmp eq i32 %1007, 2, !dbg !2048
  br i1 %1008, label %1009, label %1038, !dbg !2049

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2050
  %1011 = trunc i8 %1010 to i1, !dbg !2050
  br i1 %1011, label %1038, label %1012, !dbg !2051

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2052
  %1014 = trunc i8 %1013 to i1, !dbg !2052
  br i1 %1014, label %1015, label %1038, !dbg !2053

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2054
  %1017 = trunc i8 %1016 to i1, !dbg !2054
  br i1 %1017, label %1018, label %1028, !dbg !2057

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2058
  %1020 = load i64, i64* %22, align 8, !dbg !2059
  %1021 = load i8*, i8** %13, align 8, !dbg !2060
  %1022 = load i64, i64* %14, align 8, !dbg !2061
  %1023 = load i32, i32* %16, align 4, !dbg !2062
  %1024 = load i32*, i32** %17, align 8, !dbg !2063
  %1025 = load i8*, i8** %18, align 8, !dbg !2064
  %1026 = load i8*, i8** %19, align 8, !dbg !2065
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2066
  store i64 %1027, i64* %10, align 8, !dbg !2067
  br label %1096, !dbg !2067

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2068
  %1030 = icmp ne i64 %1029, 0, !dbg !2068
  br i1 %1030, label %1036, label %1031, !dbg !2070

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2071
  %1033 = icmp ne i64 %1032, 0, !dbg !2071
  br i1 %1033, label %1034, label %1036, !dbg !2072

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2073
  store i64 %1035, i64* %12, align 8, !dbg !2075
  store i64 0, i64* %21, align 8, !dbg !2076
  br label %51, !dbg !2077

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2078

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2079
  %1040 = icmp ne i8* %1039, null, !dbg !2079
  br i1 %1040, label %1041, label %1068, !dbg !2081

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2082
  %1043 = trunc i8 %1042 to i1, !dbg !2082
  br i1 %1043, label %1068, label %1044, !dbg !2083

1044:                                             ; preds = %1041
  br label %1045, !dbg !2084

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2085
  %1047 = load i8, i8* %1046, align 1, !dbg !2088
  %1048 = icmp ne i8 %1047, 0, !dbg !2089
  br i1 %1048, label %1049, label %1067, !dbg !2089

1049:                                             ; preds = %1045
  br label %1050, !dbg !2090

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2091
  %1052 = load i64, i64* %12, align 8, !dbg !2091
  %1053 = icmp ult i64 %1051, %1052, !dbg !2091
  br i1 %1053, label %1054, label %1060, !dbg !2094

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2091
  %1056 = load i8, i8* %1055, align 1, !dbg !2091
  %1057 = load i8*, i8** %11, align 8, !dbg !2091
  %1058 = load i64, i64* %21, align 8, !dbg !2091
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2091
  store i8 %1056, i8* %1059, align 1, !dbg !2091
  br label %1060, !dbg !2091

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2094
  %1062 = add i64 %1061, 1, !dbg !2094
  store i64 %1062, i64* %21, align 8, !dbg !2094
  br label %1063, !dbg !2094

1063:                                             ; preds = %1060
  br label %1064, !dbg !2094

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2095
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2095
  store i8* %1066, i8** %23, align 8, !dbg !2095
  br label %1045, !dbg !2096, !llvm.loop !2097

1067:                                             ; preds = %1045
  br label %1068, !dbg !2098

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2099
  %1070 = load i64, i64* %12, align 8, !dbg !2101
  %1071 = icmp ult i64 %1069, %1070, !dbg !2102
  br i1 %1071, label %1072, label %1076, !dbg !2103

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2104
  %1074 = load i64, i64* %21, align 8, !dbg !2105
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2104
  store i8 0, i8* %1075, align 1, !dbg !2106
  br label %1076, !dbg !2104

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2107
  store i64 %1077, i64* %10, align 8, !dbg !2108
  br label %1096, !dbg !2108

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2109), !dbg !2110
  %1079 = load i32, i32* %15, align 4, !dbg !2111
  %1080 = icmp eq i32 %1079, 2, !dbg !2113
  br i1 %1080, label %1081, label %1085, !dbg !2114

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2115
  %1083 = trunc i8 %1082 to i1, !dbg !2115
  br i1 %1083, label %1084, label %1085, !dbg !2116

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2117
  br label %1085, !dbg !2118

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2119
  %1087 = load i64, i64* %12, align 8, !dbg !2120
  %1088 = load i8*, i8** %13, align 8, !dbg !2121
  %1089 = load i64, i64* %14, align 8, !dbg !2122
  %1090 = load i32, i32* %15, align 4, !dbg !2123
  %1091 = load i32, i32* %16, align 4, !dbg !2124
  %1092 = and i32 %1091, -3, !dbg !2125
  %1093 = load i8*, i8** %18, align 8, !dbg !2126
  %1094 = load i8*, i8** %19, align 8, !dbg !2127
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2128
  store i64 %1095, i64* %10, align 8, !dbg !2129
  br label %1096, !dbg !2129

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2130
  ret i64 %1097, !dbg !2130
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2131, metadata !DIExpression()), !dbg !2132
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2133, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2135, metadata !DIExpression()), !dbg !2136
  %9 = load i8*, i8** %4, align 8, !dbg !2137
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.97, i64 0, i64 0), i8* noundef %9) #18, !dbg !2137
  store i8* %10, i8** %6, align 8, !dbg !2136
  %11 = load i8*, i8** %6, align 8, !dbg !2138
  %12 = load i8*, i8** %4, align 8, !dbg !2140
  %13 = icmp ne i8* %11, %12, !dbg !2141
  br i1 %13, label %14, label %16, !dbg !2142

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2143
  store i8* %15, i8** %3, align 8, !dbg !2144
  br label %37, !dbg !2144

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2145, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2147, metadata !DIExpression()), !dbg !2148
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2149
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2150
  %18 = icmp eq i64 %17, 3, !dbg !2152
  br i1 %18, label %19, label %32, !dbg !2153

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2154
  %21 = icmp eq i32 %20, 8216, !dbg !2155
  br i1 %21, label %22, label %32, !dbg !2156

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2157
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2157
  %25 = load i8, i8* %24, align 1, !dbg !2157
  %26 = zext i8 %25 to i32, !dbg !2157
  %27 = icmp eq i32 %26, 39, !dbg !2158
  %28 = zext i1 %27 to i32, !dbg !2158
  %29 = sext i32 %28 to i64, !dbg !2159
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2159
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2159
  store i8* %31, i8** %3, align 8, !dbg !2160
  br label %37, !dbg !2160

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2161
  %34 = icmp eq i32 %33, 9, !dbg !2162
  %35 = zext i1 %34 to i64, !dbg !2161
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), !dbg !2161
  store i8* %36, i8** %3, align 8, !dbg !2163
  br label %37, !dbg !2163

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2164
  ret i8* %38, !dbg !2164
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2165 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2168, metadata !DIExpression()), !dbg !2169
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2170, metadata !DIExpression()), !dbg !2171
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2172, metadata !DIExpression()), !dbg !2173
  %7 = load i8*, i8** %4, align 8, !dbg !2174
  %8 = load i64, i64* %5, align 8, !dbg !2175
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2176
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2177
  ret i8* %10, !dbg !2178
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2179 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2182, metadata !DIExpression()), !dbg !2183
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2184, metadata !DIExpression()), !dbg !2185
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2186, metadata !DIExpression()), !dbg !2187
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2188, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2190, metadata !DIExpression()), !dbg !2191
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2192
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2192
  br i1 %15, label %16, label %18, !dbg !2192

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2193
  br label %19, !dbg !2192

18:                                               ; preds = %4
  br label %19, !dbg !2192

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2192
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2191
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2194, metadata !DIExpression()), !dbg !2195
  %21 = call i32* @__errno_location() #21, !dbg !2196
  %22 = load i32, i32* %21, align 4, !dbg !2196
  store i32 %22, i32* %10, align 4, !dbg !2195
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2197, metadata !DIExpression()), !dbg !2198
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2199
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2200
  %25 = load i32, i32* %24, align 4, !dbg !2200
  %26 = load i64*, i64** %7, align 8, !dbg !2201
  %27 = icmp ne i64* %26, null, !dbg !2201
  %28 = zext i1 %27 to i64, !dbg !2201
  %29 = select i1 %27, i32 0, i32 1, !dbg !2201
  %30 = or i32 %25, %29, !dbg !2202
  store i32 %30, i32* %11, align 4, !dbg !2198
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2203, metadata !DIExpression()), !dbg !2204
  %31 = load i8*, i8** %5, align 8, !dbg !2205
  %32 = load i64, i64* %6, align 8, !dbg !2206
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2207
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2208
  %35 = load i32, i32* %34, align 8, !dbg !2208
  %36 = load i32, i32* %11, align 4, !dbg !2209
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2210
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2211
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2210
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2212
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2213
  %42 = load i8*, i8** %41, align 8, !dbg !2213
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2214
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2215
  %45 = load i8*, i8** %44, align 8, !dbg !2215
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2216
  %47 = add i64 %46, 1, !dbg !2217
  store i64 %47, i64* %12, align 8, !dbg !2204
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2218, metadata !DIExpression()), !dbg !2219
  %48 = load i64, i64* %12, align 8, !dbg !2220
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2221
  store i8* %49, i8** %13, align 8, !dbg !2219
  %50 = load i8*, i8** %13, align 8, !dbg !2222
  %51 = load i64, i64* %12, align 8, !dbg !2223
  %52 = load i8*, i8** %5, align 8, !dbg !2224
  %53 = load i64, i64* %6, align 8, !dbg !2225
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2226
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2227
  %56 = load i32, i32* %55, align 8, !dbg !2227
  %57 = load i32, i32* %11, align 4, !dbg !2228
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2229
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2230
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2229
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2231
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2232
  %63 = load i8*, i8** %62, align 8, !dbg !2232
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2233
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2234
  %66 = load i8*, i8** %65, align 8, !dbg !2234
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2235
  %68 = load i32, i32* %10, align 4, !dbg !2236
  %69 = call i32* @__errno_location() #21, !dbg !2237
  store i32 %68, i32* %69, align 4, !dbg !2238
  %70 = load i64*, i64** %7, align 8, !dbg !2239
  %71 = icmp ne i64* %70, null, !dbg !2239
  br i1 %71, label %72, label %76, !dbg !2241

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2242
  %74 = sub i64 %73, 1, !dbg !2243
  %75 = load i64*, i64** %7, align 8, !dbg !2244
  store i64 %74, i64* %75, align 8, !dbg !2245
  br label %76, !dbg !2246

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2247
  ret i8* %77, !dbg !2248
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2249 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2250, metadata !DIExpression()), !dbg !2251
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2252
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2251
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2253, metadata !DIExpression()), !dbg !2255
  store i32 1, i32* %2, align 4, !dbg !2255
  br label %4, !dbg !2256

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2257
  %6 = load i32, i32* @nslots, align 4, !dbg !2259
  %7 = icmp slt i32 %5, %6, !dbg !2260
  br i1 %7, label %8, label %18, !dbg !2261

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2262
  %10 = load i32, i32* %2, align 4, !dbg !2263
  %11 = sext i32 %10 to i64, !dbg !2262
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2262
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2264
  %14 = load i8*, i8** %13, align 8, !dbg !2264
  call void @free(i8* noundef %14) #18, !dbg !2265
  br label %15, !dbg !2265

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2266
  %17 = add nsw i32 %16, 1, !dbg !2266
  store i32 %17, i32* %2, align 4, !dbg !2266
  br label %4, !dbg !2267, !llvm.loop !2268

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2270
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2270
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2272
  %22 = load i8*, i8** %21, align 8, !dbg !2272
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2273
  br i1 %23, label %24, label %29, !dbg !2274

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2275
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2275
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2277
  %28 = load i8*, i8** %27, align 8, !dbg !2277
  call void @free(i8* noundef %28) #18, !dbg !2278
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2279
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2280
  br label %29, !dbg !2281

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2282
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2284
  br i1 %31, label %32, label %35, !dbg !2285

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2286
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2286
  call void @free(i8* noundef %34) #18, !dbg !2288
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2289
  br label %35, !dbg !2290

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2291
  ret void, !dbg !2292
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2293 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2296, metadata !DIExpression()), !dbg !2297
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2298, metadata !DIExpression()), !dbg !2299
  %5 = load i32, i32* %3, align 4, !dbg !2300
  %6 = load i8*, i8** %4, align 8, !dbg !2301
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2302
  ret i8* %7, !dbg !2303
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2304 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2307, metadata !DIExpression()), !dbg !2308
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2309, metadata !DIExpression()), !dbg !2310
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2311, metadata !DIExpression()), !dbg !2312
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2313, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2315, metadata !DIExpression()), !dbg !2316
  %18 = call i32* @__errno_location() #21, !dbg !2317
  %19 = load i32, i32* %18, align 4, !dbg !2317
  store i32 %19, i32* %9, align 4, !dbg !2316
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2318, metadata !DIExpression()), !dbg !2319
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2320
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2319
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2321, metadata !DIExpression()), !dbg !2322
  store i32 2147483647, i32* %11, align 4, !dbg !2322
  %21 = load i32, i32* %5, align 4, !dbg !2323
  %22 = icmp sle i32 0, %21, !dbg !2325
  br i1 %22, label %23, label %27, !dbg !2326

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2327
  %25 = load i32, i32* %11, align 4, !dbg !2328
  %26 = icmp slt i32 %24, %25, !dbg !2329
  br i1 %26, label %28, label %27, !dbg !2330

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2331
  unreachable, !dbg !2331

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2332
  %30 = load i32, i32* %5, align 4, !dbg !2334
  %31 = icmp sle i32 %29, %30, !dbg !2335
  br i1 %31, label %32, label %73, !dbg !2336

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2337, metadata !DIExpression()), !dbg !2339
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2340
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2341
  %35 = zext i1 %34 to i8, !dbg !2339
  store i8 %35, i8* %12, align 1, !dbg !2339
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2342, metadata !DIExpression()), !dbg !2343
  %36 = load i32, i32* @nslots, align 4, !dbg !2344
  %37 = sext i32 %36 to i64, !dbg !2344
  store i64 %37, i64* %13, align 8, !dbg !2343
  %38 = load i8, i8* %12, align 1, !dbg !2345
  %39 = trunc i8 %38 to i1, !dbg !2345
  br i1 %39, label %40, label %41, !dbg !2345

40:                                               ; preds = %32
  br label %43, !dbg !2345

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2346
  br label %43, !dbg !2345

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2345
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2345
  %46 = load i32, i32* %5, align 4, !dbg !2347
  %47 = load i32, i32* @nslots, align 4, !dbg !2348
  %48 = sub nsw i32 %46, %47, !dbg !2349
  %49 = add nsw i32 %48, 1, !dbg !2350
  %50 = sext i32 %49 to i64, !dbg !2347
  %51 = load i32, i32* %11, align 4, !dbg !2351
  %52 = sext i32 %51 to i64, !dbg !2351
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2352
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2352
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2353
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2354
  %55 = load i8, i8* %12, align 1, !dbg !2355
  %56 = trunc i8 %55 to i1, !dbg !2355
  br i1 %56, label %57, label %60, !dbg !2357

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2358
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2359
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2359
  br label %60, !dbg !2360

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2361
  %62 = load i32, i32* @nslots, align 4, !dbg !2362
  %63 = sext i32 %62 to i64, !dbg !2363
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2363
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2364
  %66 = load i64, i64* %13, align 8, !dbg !2365
  %67 = load i32, i32* @nslots, align 4, !dbg !2366
  %68 = sext i32 %67 to i64, !dbg !2366
  %69 = sub nsw i64 %66, %68, !dbg !2367
  %70 = mul i64 %69, 16, !dbg !2368
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2364
  %71 = load i64, i64* %13, align 8, !dbg !2369
  %72 = trunc i64 %71 to i32, !dbg !2369
  store i32 %72, i32* @nslots, align 4, !dbg !2370
  br label %73, !dbg !2371

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2372, metadata !DIExpression()), !dbg !2374
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2375
  %75 = load i32, i32* %5, align 4, !dbg !2376
  %76 = sext i32 %75 to i64, !dbg !2375
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2375
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2377
  %79 = load i64, i64* %78, align 8, !dbg !2377
  store i64 %79, i64* %14, align 8, !dbg !2374
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2378, metadata !DIExpression()), !dbg !2379
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2380
  %81 = load i32, i32* %5, align 4, !dbg !2381
  %82 = sext i32 %81 to i64, !dbg !2380
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2380
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2382
  %85 = load i8*, i8** %84, align 8, !dbg !2382
  store i8* %85, i8** %15, align 8, !dbg !2379
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2383, metadata !DIExpression()), !dbg !2384
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2385
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2386
  %88 = load i32, i32* %87, align 4, !dbg !2386
  %89 = or i32 %88, 1, !dbg !2387
  store i32 %89, i32* %16, align 4, !dbg !2384
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2388, metadata !DIExpression()), !dbg !2389
  %90 = load i8*, i8** %15, align 8, !dbg !2390
  %91 = load i64, i64* %14, align 8, !dbg !2391
  %92 = load i8*, i8** %6, align 8, !dbg !2392
  %93 = load i64, i64* %7, align 8, !dbg !2393
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2394
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2395
  %96 = load i32, i32* %95, align 8, !dbg !2395
  %97 = load i32, i32* %16, align 4, !dbg !2396
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2397
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2398
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2397
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2399
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2400
  %103 = load i8*, i8** %102, align 8, !dbg !2400
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2401
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2402
  %106 = load i8*, i8** %105, align 8, !dbg !2402
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2403
  store i64 %107, i64* %17, align 8, !dbg !2389
  %108 = load i64, i64* %14, align 8, !dbg !2404
  %109 = load i64, i64* %17, align 8, !dbg !2406
  %110 = icmp ule i64 %108, %109, !dbg !2407
  br i1 %110, label %111, label %149, !dbg !2408

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2409
  %113 = add i64 %112, 1, !dbg !2411
  store i64 %113, i64* %14, align 8, !dbg !2412
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2413
  %115 = load i32, i32* %5, align 4, !dbg !2414
  %116 = sext i32 %115 to i64, !dbg !2413
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2413
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2415
  store i64 %113, i64* %118, align 8, !dbg !2416
  %119 = load i8*, i8** %15, align 8, !dbg !2417
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2419
  br i1 %120, label %121, label %123, !dbg !2420

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2421
  call void @free(i8* noundef %122) #18, !dbg !2422
  br label %123, !dbg !2422

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2423
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2424
  store i8* %125, i8** %15, align 8, !dbg !2425
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2426
  %127 = load i32, i32* %5, align 4, !dbg !2427
  %128 = sext i32 %127 to i64, !dbg !2426
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2426
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2428
  store i8* %125, i8** %130, align 8, !dbg !2429
  %131 = load i8*, i8** %15, align 8, !dbg !2430
  %132 = load i64, i64* %14, align 8, !dbg !2431
  %133 = load i8*, i8** %6, align 8, !dbg !2432
  %134 = load i64, i64* %7, align 8, !dbg !2433
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2434
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2435
  %137 = load i32, i32* %136, align 8, !dbg !2435
  %138 = load i32, i32* %16, align 4, !dbg !2436
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2437
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2438
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2437
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2439
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2440
  %144 = load i8*, i8** %143, align 8, !dbg !2440
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2441
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2442
  %147 = load i8*, i8** %146, align 8, !dbg !2442
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2443
  br label %149, !dbg !2444

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2445
  %151 = call i32* @__errno_location() #21, !dbg !2446
  store i32 %150, i32* %151, align 4, !dbg !2447
  %152 = load i8*, i8** %15, align 8, !dbg !2448
  ret i8* %152, !dbg !2449
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2450 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2453, metadata !DIExpression()), !dbg !2454
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2455, metadata !DIExpression()), !dbg !2456
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2457, metadata !DIExpression()), !dbg !2458
  %7 = load i32, i32* %4, align 4, !dbg !2459
  %8 = load i8*, i8** %5, align 8, !dbg !2460
  %9 = load i64, i64* %6, align 8, !dbg !2461
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2462
  ret i8* %10, !dbg !2463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2464 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2467, metadata !DIExpression()), !dbg !2468
  %3 = load i8*, i8** %2, align 8, !dbg !2469
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2470
  ret i8* %4, !dbg !2471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2472 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2475, metadata !DIExpression()), !dbg !2476
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2477, metadata !DIExpression()), !dbg !2478
  %5 = load i8*, i8** %3, align 8, !dbg !2479
  %6 = load i64, i64* %4, align 8, !dbg !2480
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2481
  ret i8* %7, !dbg !2482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2483 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2486, metadata !DIExpression()), !dbg !2487
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2488, metadata !DIExpression()), !dbg !2489
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2490, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2492, metadata !DIExpression()), !dbg !2493
  %8 = load i32, i32* %5, align 4, !dbg !2494
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2495
  %9 = load i32, i32* %4, align 4, !dbg !2496
  %10 = load i8*, i8** %6, align 8, !dbg !2497
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2498
  ret i8* %11, !dbg !2499
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2500 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2503, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2505, metadata !DIExpression()), !dbg !2506
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2506
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2506
  %5 = load i32, i32* %3, align 4, !dbg !2507
  %6 = icmp eq i32 %5, 10, !dbg !2509
  br i1 %6, label %7, label %8, !dbg !2510

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2511
  unreachable, !dbg !2511

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2512
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2513
  store i32 %9, i32* %10, align 8, !dbg !2514
  ret void, !dbg !2515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2516 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2519, metadata !DIExpression()), !dbg !2520
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2521, metadata !DIExpression()), !dbg !2522
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2523, metadata !DIExpression()), !dbg !2524
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2525, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2527, metadata !DIExpression()), !dbg !2528
  %10 = load i32, i32* %6, align 4, !dbg !2529
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2530
  %11 = load i32, i32* %5, align 4, !dbg !2531
  %12 = load i8*, i8** %7, align 8, !dbg !2532
  %13 = load i64, i64* %8, align 8, !dbg !2533
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2534
  ret i8* %14, !dbg !2535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2536 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2539, metadata !DIExpression()), !dbg !2540
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2541, metadata !DIExpression()), !dbg !2542
  %5 = load i32, i32* %3, align 4, !dbg !2543
  %6 = load i8*, i8** %4, align 8, !dbg !2544
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2545
  ret i8* %7, !dbg !2546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2547 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2550, metadata !DIExpression()), !dbg !2551
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2552, metadata !DIExpression()), !dbg !2553
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2554, metadata !DIExpression()), !dbg !2555
  %7 = load i32, i32* %4, align 4, !dbg !2556
  %8 = load i8*, i8** %5, align 8, !dbg !2557
  %9 = load i64, i64* %6, align 8, !dbg !2558
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2559
  ret i8* %10, !dbg !2560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2561 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2564, metadata !DIExpression()), !dbg !2565
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2566, metadata !DIExpression()), !dbg !2567
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2568, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2570, metadata !DIExpression()), !dbg !2571
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2572
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2572
  %9 = load i8, i8* %6, align 1, !dbg !2573
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2574
  %11 = load i8*, i8** %4, align 8, !dbg !2575
  %12 = load i64, i64* %5, align 8, !dbg !2576
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2577
  ret i8* %13, !dbg !2578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2579 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2582, metadata !DIExpression()), !dbg !2583
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2584, metadata !DIExpression()), !dbg !2585
  %5 = load i8*, i8** %3, align 8, !dbg !2586
  %6 = load i8, i8* %4, align 1, !dbg !2587
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2588
  ret i8* %7, !dbg !2589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2590 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2591, metadata !DIExpression()), !dbg !2592
  %3 = load i8*, i8** %2, align 8, !dbg !2593
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2594
  ret i8* %4, !dbg !2595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2596 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2597, metadata !DIExpression()), !dbg !2598
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2599, metadata !DIExpression()), !dbg !2600
  %5 = load i8*, i8** %3, align 8, !dbg !2601
  %6 = load i64, i64* %4, align 8, !dbg !2602
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2603
  ret i8* %7, !dbg !2604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2605 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2606, metadata !DIExpression()), !dbg !2607
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2608, metadata !DIExpression()), !dbg !2609
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2610, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2612, metadata !DIExpression()), !dbg !2613
  %9 = load i32, i32* %5, align 4, !dbg !2614
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2615
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2615
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2615
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2616
  %13 = load i32, i32* %4, align 4, !dbg !2617
  %14 = load i8*, i8** %6, align 8, !dbg !2618
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2619
  ret i8* %15, !dbg !2620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2621 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2624, metadata !DIExpression()), !dbg !2625
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2626, metadata !DIExpression()), !dbg !2627
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2628, metadata !DIExpression()), !dbg !2629
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2630, metadata !DIExpression()), !dbg !2631
  %9 = load i32, i32* %5, align 4, !dbg !2632
  %10 = load i8*, i8** %6, align 8, !dbg !2633
  %11 = load i8*, i8** %7, align 8, !dbg !2634
  %12 = load i8*, i8** %8, align 8, !dbg !2635
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2636
  ret i8* %13, !dbg !2637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2638 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2641, metadata !DIExpression()), !dbg !2642
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2643, metadata !DIExpression()), !dbg !2644
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2645, metadata !DIExpression()), !dbg !2646
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2647, metadata !DIExpression()), !dbg !2648
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2649, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2651, metadata !DIExpression()), !dbg !2652
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2653
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2653
  %13 = load i8*, i8** %7, align 8, !dbg !2654
  %14 = load i8*, i8** %8, align 8, !dbg !2655
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2656
  %15 = load i32, i32* %6, align 4, !dbg !2657
  %16 = load i8*, i8** %9, align 8, !dbg !2658
  %17 = load i64, i64* %10, align 8, !dbg !2659
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2660
  ret i8* %18, !dbg !2661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2662 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2665, metadata !DIExpression()), !dbg !2666
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2667, metadata !DIExpression()), !dbg !2668
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2669, metadata !DIExpression()), !dbg !2670
  %7 = load i8*, i8** %4, align 8, !dbg !2671
  %8 = load i8*, i8** %5, align 8, !dbg !2672
  %9 = load i8*, i8** %6, align 8, !dbg !2673
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2674
  ret i8* %10, !dbg !2675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2676 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2679, metadata !DIExpression()), !dbg !2680
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2681, metadata !DIExpression()), !dbg !2682
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2683, metadata !DIExpression()), !dbg !2684
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2685, metadata !DIExpression()), !dbg !2686
  %9 = load i8*, i8** %5, align 8, !dbg !2687
  %10 = load i8*, i8** %6, align 8, !dbg !2688
  %11 = load i8*, i8** %7, align 8, !dbg !2689
  %12 = load i64, i64* %8, align 8, !dbg !2690
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2691
  ret i8* %13, !dbg !2692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2693 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2696, metadata !DIExpression()), !dbg !2697
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2698, metadata !DIExpression()), !dbg !2699
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2700, metadata !DIExpression()), !dbg !2701
  %7 = load i32, i32* %4, align 4, !dbg !2702
  %8 = load i8*, i8** %5, align 8, !dbg !2703
  %9 = load i64, i64* %6, align 8, !dbg !2704
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2705
  ret i8* %10, !dbg !2706
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2707 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2710, metadata !DIExpression()), !dbg !2711
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2712, metadata !DIExpression()), !dbg !2713
  %5 = load i8*, i8** %3, align 8, !dbg !2714
  %6 = load i64, i64* %4, align 8, !dbg !2715
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2716
  ret i8* %7, !dbg !2717
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2718 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2721, metadata !DIExpression()), !dbg !2722
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2723, metadata !DIExpression()), !dbg !2724
  %5 = load i32, i32* %3, align 4, !dbg !2725
  %6 = load i8*, i8** %4, align 8, !dbg !2726
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2727
  ret i8* %7, !dbg !2728
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !2729 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2732, metadata !DIExpression()), !dbg !2733
  %3 = load i8*, i8** %2, align 8, !dbg !2734
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !2735
  ret i8* %4, !dbg !2736
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !2737 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2741, metadata !DIExpression()), !dbg !2742
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2743, metadata !DIExpression()), !dbg !2744
  %5 = load i8*, i8** %3, align 8, !dbg !2745
  %6 = load i8*, i8** %4, align 8, !dbg !2746
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !2747
  %8 = icmp ne i32 %7, 0, !dbg !2748
  %9 = xor i1 %8, true, !dbg !2748
  ret i1 %9, !dbg !2749
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !2750 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !2807, metadata !DIExpression()), !dbg !2808
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2809, metadata !DIExpression()), !dbg !2810
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2811, metadata !DIExpression()), !dbg !2812
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2813, metadata !DIExpression()), !dbg !2814
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2815, metadata !DIExpression()), !dbg !2816
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2817, metadata !DIExpression()), !dbg !2818
  %13 = load i8*, i8** %8, align 8, !dbg !2819
  %14 = icmp ne i8* %13, null, !dbg !2819
  br i1 %14, label %15, label %21, !dbg !2821

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2822
  %17 = load i8*, i8** %8, align 8, !dbg !2823
  %18 = load i8*, i8** %9, align 8, !dbg !2824
  %19 = load i8*, i8** %10, align 8, !dbg !2825
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !2826
  br label %26, !dbg !2826

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2827
  %23 = load i8*, i8** %9, align 8, !dbg !2828
  %24 = load i8*, i8** %10, align 8, !dbg !2829
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.107, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !2830
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2831
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.109, i64 0, i64 0)) #18, !dbg !2832
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !2833
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2834
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.110, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !2834
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2835
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.111, i64 0, i64 0)) #18, !dbg !2836
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.112, i64 0, i64 0)), !dbg !2837
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2838
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.110, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !2838
  %37 = load i64, i64* %12, align 8, !dbg !2839
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
  ], !dbg !2840

38:                                               ; preds = %26
  br label %241, !dbg !2841

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2843
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.113, i64 0, i64 0)) #18, !dbg !2844
  %42 = load i8**, i8*** %11, align 8, !dbg !2845
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !2845
  %44 = load i8*, i8** %43, align 8, !dbg !2845
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !2846
  br label %241, !dbg !2847

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2848
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.114, i64 0, i64 0)) #18, !dbg !2849
  %49 = load i8**, i8*** %11, align 8, !dbg !2850
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !2850
  %51 = load i8*, i8** %50, align 8, !dbg !2850
  %52 = load i8**, i8*** %11, align 8, !dbg !2851
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !2851
  %54 = load i8*, i8** %53, align 8, !dbg !2851
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !2852
  br label %241, !dbg !2853

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2854
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.115, i64 0, i64 0)) #18, !dbg !2855
  %59 = load i8**, i8*** %11, align 8, !dbg !2856
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !2856
  %61 = load i8*, i8** %60, align 8, !dbg !2856
  %62 = load i8**, i8*** %11, align 8, !dbg !2857
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !2857
  %64 = load i8*, i8** %63, align 8, !dbg !2857
  %65 = load i8**, i8*** %11, align 8, !dbg !2858
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !2858
  %67 = load i8*, i8** %66, align 8, !dbg !2858
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !2859
  br label %241, !dbg !2860

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2861
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.116, i64 0, i64 0)) #18, !dbg !2862
  %72 = load i8**, i8*** %11, align 8, !dbg !2863
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !2863
  %74 = load i8*, i8** %73, align 8, !dbg !2863
  %75 = load i8**, i8*** %11, align 8, !dbg !2864
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !2864
  %77 = load i8*, i8** %76, align 8, !dbg !2864
  %78 = load i8**, i8*** %11, align 8, !dbg !2865
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !2865
  %80 = load i8*, i8** %79, align 8, !dbg !2865
  %81 = load i8**, i8*** %11, align 8, !dbg !2866
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !2866
  %83 = load i8*, i8** %82, align 8, !dbg !2866
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !2867
  br label %241, !dbg !2868

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2869
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.117, i64 0, i64 0)) #18, !dbg !2870
  %88 = load i8**, i8*** %11, align 8, !dbg !2871
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !2871
  %90 = load i8*, i8** %89, align 8, !dbg !2871
  %91 = load i8**, i8*** %11, align 8, !dbg !2872
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !2872
  %93 = load i8*, i8** %92, align 8, !dbg !2872
  %94 = load i8**, i8*** %11, align 8, !dbg !2873
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !2873
  %96 = load i8*, i8** %95, align 8, !dbg !2873
  %97 = load i8**, i8*** %11, align 8, !dbg !2874
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !2874
  %99 = load i8*, i8** %98, align 8, !dbg !2874
  %100 = load i8**, i8*** %11, align 8, !dbg !2875
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !2875
  %102 = load i8*, i8** %101, align 8, !dbg !2875
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !2876
  br label %241, !dbg !2877

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2878
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.118, i64 0, i64 0)) #18, !dbg !2879
  %107 = load i8**, i8*** %11, align 8, !dbg !2880
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !2880
  %109 = load i8*, i8** %108, align 8, !dbg !2880
  %110 = load i8**, i8*** %11, align 8, !dbg !2881
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !2881
  %112 = load i8*, i8** %111, align 8, !dbg !2881
  %113 = load i8**, i8*** %11, align 8, !dbg !2882
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !2882
  %115 = load i8*, i8** %114, align 8, !dbg !2882
  %116 = load i8**, i8*** %11, align 8, !dbg !2883
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !2883
  %118 = load i8*, i8** %117, align 8, !dbg !2883
  %119 = load i8**, i8*** %11, align 8, !dbg !2884
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !2884
  %121 = load i8*, i8** %120, align 8, !dbg !2884
  %122 = load i8**, i8*** %11, align 8, !dbg !2885
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !2885
  %124 = load i8*, i8** %123, align 8, !dbg !2885
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !2886
  br label %241, !dbg !2887

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2888
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.119, i64 0, i64 0)) #18, !dbg !2889
  %129 = load i8**, i8*** %11, align 8, !dbg !2890
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !2890
  %131 = load i8*, i8** %130, align 8, !dbg !2890
  %132 = load i8**, i8*** %11, align 8, !dbg !2891
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !2891
  %134 = load i8*, i8** %133, align 8, !dbg !2891
  %135 = load i8**, i8*** %11, align 8, !dbg !2892
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !2892
  %137 = load i8*, i8** %136, align 8, !dbg !2892
  %138 = load i8**, i8*** %11, align 8, !dbg !2893
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !2893
  %140 = load i8*, i8** %139, align 8, !dbg !2893
  %141 = load i8**, i8*** %11, align 8, !dbg !2894
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !2894
  %143 = load i8*, i8** %142, align 8, !dbg !2894
  %144 = load i8**, i8*** %11, align 8, !dbg !2895
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !2895
  %146 = load i8*, i8** %145, align 8, !dbg !2895
  %147 = load i8**, i8*** %11, align 8, !dbg !2896
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !2896
  %149 = load i8*, i8** %148, align 8, !dbg !2896
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !2897
  br label %241, !dbg !2898

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2899
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.120, i64 0, i64 0)) #18, !dbg !2900
  %154 = load i8**, i8*** %11, align 8, !dbg !2901
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !2901
  %156 = load i8*, i8** %155, align 8, !dbg !2901
  %157 = load i8**, i8*** %11, align 8, !dbg !2902
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !2902
  %159 = load i8*, i8** %158, align 8, !dbg !2902
  %160 = load i8**, i8*** %11, align 8, !dbg !2903
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !2903
  %162 = load i8*, i8** %161, align 8, !dbg !2903
  %163 = load i8**, i8*** %11, align 8, !dbg !2904
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !2904
  %165 = load i8*, i8** %164, align 8, !dbg !2904
  %166 = load i8**, i8*** %11, align 8, !dbg !2905
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !2905
  %168 = load i8*, i8** %167, align 8, !dbg !2905
  %169 = load i8**, i8*** %11, align 8, !dbg !2906
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !2906
  %171 = load i8*, i8** %170, align 8, !dbg !2906
  %172 = load i8**, i8*** %11, align 8, !dbg !2907
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !2907
  %174 = load i8*, i8** %173, align 8, !dbg !2907
  %175 = load i8**, i8*** %11, align 8, !dbg !2908
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !2908
  %177 = load i8*, i8** %176, align 8, !dbg !2908
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !2909
  br label %241, !dbg !2910

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2911
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.121, i64 0, i64 0)) #18, !dbg !2912
  %182 = load i8**, i8*** %11, align 8, !dbg !2913
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !2913
  %184 = load i8*, i8** %183, align 8, !dbg !2913
  %185 = load i8**, i8*** %11, align 8, !dbg !2914
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !2914
  %187 = load i8*, i8** %186, align 8, !dbg !2914
  %188 = load i8**, i8*** %11, align 8, !dbg !2915
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !2915
  %190 = load i8*, i8** %189, align 8, !dbg !2915
  %191 = load i8**, i8*** %11, align 8, !dbg !2916
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !2916
  %193 = load i8*, i8** %192, align 8, !dbg !2916
  %194 = load i8**, i8*** %11, align 8, !dbg !2917
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !2917
  %196 = load i8*, i8** %195, align 8, !dbg !2917
  %197 = load i8**, i8*** %11, align 8, !dbg !2918
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !2918
  %199 = load i8*, i8** %198, align 8, !dbg !2918
  %200 = load i8**, i8*** %11, align 8, !dbg !2919
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !2919
  %202 = load i8*, i8** %201, align 8, !dbg !2919
  %203 = load i8**, i8*** %11, align 8, !dbg !2920
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !2920
  %205 = load i8*, i8** %204, align 8, !dbg !2920
  %206 = load i8**, i8*** %11, align 8, !dbg !2921
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !2921
  %208 = load i8*, i8** %207, align 8, !dbg !2921
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !2922
  br label %241, !dbg !2923

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2924
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.122, i64 0, i64 0)) #18, !dbg !2925
  %213 = load i8**, i8*** %11, align 8, !dbg !2926
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !2926
  %215 = load i8*, i8** %214, align 8, !dbg !2926
  %216 = load i8**, i8*** %11, align 8, !dbg !2927
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !2927
  %218 = load i8*, i8** %217, align 8, !dbg !2927
  %219 = load i8**, i8*** %11, align 8, !dbg !2928
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !2928
  %221 = load i8*, i8** %220, align 8, !dbg !2928
  %222 = load i8**, i8*** %11, align 8, !dbg !2929
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !2929
  %224 = load i8*, i8** %223, align 8, !dbg !2929
  %225 = load i8**, i8*** %11, align 8, !dbg !2930
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !2930
  %227 = load i8*, i8** %226, align 8, !dbg !2930
  %228 = load i8**, i8*** %11, align 8, !dbg !2931
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !2931
  %230 = load i8*, i8** %229, align 8, !dbg !2931
  %231 = load i8**, i8*** %11, align 8, !dbg !2932
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !2932
  %233 = load i8*, i8** %232, align 8, !dbg !2932
  %234 = load i8**, i8*** %11, align 8, !dbg !2933
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !2933
  %236 = load i8*, i8** %235, align 8, !dbg !2933
  %237 = load i8**, i8*** %11, align 8, !dbg !2934
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !2934
  %239 = load i8*, i8** %238, align 8, !dbg !2934
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !2935
  br label %241, !dbg !2936

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !2937
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !2938 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2941, metadata !DIExpression()), !dbg !2942
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2943, metadata !DIExpression()), !dbg !2944
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2945, metadata !DIExpression()), !dbg !2946
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2947, metadata !DIExpression()), !dbg !2948
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !2949, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2951, metadata !DIExpression()), !dbg !2952
  store i64 0, i64* %11, align 8, !dbg !2953
  br label %12, !dbg !2955

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !2956
  %14 = load i64, i64* %11, align 8, !dbg !2958
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !2956
  %16 = load i8*, i8** %15, align 8, !dbg !2956
  %17 = icmp ne i8* %16, null, !dbg !2959
  br i1 %17, label %18, label %22, !dbg !2959

18:                                               ; preds = %12
  br label %19, !dbg !2959

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !2960
  %21 = add i64 %20, 1, !dbg !2960
  store i64 %21, i64* %11, align 8, !dbg !2960
  br label %12, !dbg !2961, !llvm.loop !2962

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2964
  %24 = load i8*, i8** %7, align 8, !dbg !2965
  %25 = load i8*, i8** %8, align 8, !dbg !2966
  %26 = load i8*, i8** %9, align 8, !dbg !2967
  %27 = load i8**, i8*** %10, align 8, !dbg !2968
  %28 = load i64, i64* %11, align 8, !dbg !2969
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !2970
  ret void, !dbg !2971
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !2972 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2986, metadata !DIExpression()), !dbg !2987
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2988, metadata !DIExpression()), !dbg !2989
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2990, metadata !DIExpression()), !dbg !2991
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2992, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2994, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2996, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !2998, metadata !DIExpression()), !dbg !3000
  store i64 0, i64* %10, align 8, !dbg !3001
  br label %12, !dbg !3003

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3004
  %14 = icmp ult i64 %13, 10, !dbg !3006
  br i1 %14, label %15, label %38, !dbg !3007

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3008
  %17 = load i32, i32* %16, align 8, !dbg !3008
  %18 = icmp sge i32 %17, 0, !dbg !3008
  br i1 %18, label %27, label %19, !dbg !3008

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3008
  store i32 %20, i32* %16, align 8, !dbg !3008
  %21 = icmp sle i32 %20, 0, !dbg !3008
  br i1 %21, label %22, label %27, !dbg !3008

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3008
  %24 = load i8*, i8** %23, align 8, !dbg !3008
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3008
  %26 = bitcast i8* %25 to i8**, !dbg !3008
  br label %32, !dbg !3008

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3008
  %29 = load i8*, i8** %28, align 8, !dbg !3008
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3008
  store i8* %30, i8** %28, align 8, !dbg !3008
  %31 = bitcast i8* %29 to i8**, !dbg !3008
  br label %32, !dbg !3008

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3008
  %34 = load i8*, i8** %33, align 8, !dbg !3008
  %35 = load i64, i64* %10, align 8, !dbg !3009
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3010
  store i8* %34, i8** %36, align 8, !dbg !3011
  %37 = icmp ne i8* %34, null, !dbg !3012
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3013
  br i1 %39, label %40, label %44, !dbg !3014

40:                                               ; preds = %38
  br label %41, !dbg !3014

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3015
  %43 = add i64 %42, 1, !dbg !3015
  store i64 %43, i64* %10, align 8, !dbg !3015
  br label %12, !dbg !3016, !llvm.loop !3017

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3019
  %46 = load i8*, i8** %7, align 8, !dbg !3020
  %47 = load i8*, i8** %8, align 8, !dbg !3021
  %48 = load i8*, i8** %9, align 8, !dbg !3022
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3023
  %50 = load i64, i64* %10, align 8, !dbg !3024
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3025
  ret void, !dbg !3026
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3027 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3030, metadata !DIExpression()), !dbg !3031
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3032, metadata !DIExpression()), !dbg !3033
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3034, metadata !DIExpression()), !dbg !3035
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3036, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3038, metadata !DIExpression()), !dbg !3039
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3040
  call void @llvm.va_start(i8* %11), !dbg !3040
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3041
  %13 = load i8*, i8** %6, align 8, !dbg !3042
  %14 = load i8*, i8** %7, align 8, !dbg !3043
  %15 = load i8*, i8** %8, align 8, !dbg !3044
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3045
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3045
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3045
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3046
  call void @llvm.va_end(i8* %18), !dbg !3046
  ret void, !dbg !3047
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3048 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3049
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.110, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3049
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.127, i64 0, i64 0)) #18, !dbg !3050
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.128, i64 0, i64 0)), !dbg !3051
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.129, i64 0, i64 0)) #18, !dbg !3052
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.131, i64 0, i64 0)), !dbg !3053
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.132, i64 0, i64 0)) #18, !dbg !3054
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.133, i64 0, i64 0)), !dbg !3055
  ret void, !dbg !3056
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3057 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3061, metadata !DIExpression()), !dbg !3062
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3063, metadata !DIExpression()), !dbg !3064
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3065, metadata !DIExpression()), !dbg !3066
  %7 = load i8*, i8** %4, align 8, !dbg !3067
  %8 = load i64, i64* %5, align 8, !dbg !3068
  %9 = load i64, i64* %6, align 8, !dbg !3069
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !3070
  ret i8* %10, !dbg !3071
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3072 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3073, metadata !DIExpression()), !dbg !3074
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3075, metadata !DIExpression()), !dbg !3076
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3077, metadata !DIExpression()), !dbg !3078
  %7 = load i8*, i8** %4, align 8, !dbg !3079
  %8 = load i64, i64* %5, align 8, !dbg !3080
  %9 = load i64, i64* %6, align 8, !dbg !3081
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3082
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3083
  ret i8* %11, !dbg !3084
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3085 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3088, metadata !DIExpression()), !dbg !3089
  %3 = load i8*, i8** %2, align 8, !dbg !3090
  %4 = icmp ne i8* %3, null, !dbg !3090
  br i1 %4, label %6, label %5, !dbg !3092

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3093
  unreachable, !dbg !3093

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3094
  ret i8* %7, !dbg !3095
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3096 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3099, metadata !DIExpression()), !dbg !3100
  %3 = load i64, i64* %2, align 8, !dbg !3101
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3102
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3103
  ret i8* %5, !dbg !3104
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3105 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3108, metadata !DIExpression()), !dbg !3109
  %3 = load i64, i64* %2, align 8, !dbg !3110
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3111
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3112
  ret i8* %5, !dbg !3113
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3114 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3117, metadata !DIExpression()), !dbg !3118
  %3 = load i64, i64* %2, align 8, !dbg !3119
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !3119
  ret i8* %4, !dbg !3120
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3121 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3124, metadata !DIExpression()), !dbg !3125
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3126, metadata !DIExpression()), !dbg !3127
  %5 = load i8*, i8** %3, align 8, !dbg !3128
  %6 = load i64, i64* %4, align 8, !dbg !3129
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3130
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3131
  ret i8* %8, !dbg !3132
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3133 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3136, metadata !DIExpression()), !dbg !3137
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3138, metadata !DIExpression()), !dbg !3139
  %5 = load i8*, i8** %3, align 8, !dbg !3140
  %6 = load i64, i64* %4, align 8, !dbg !3141
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3142
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3143
  ret i8* %8, !dbg !3144
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3145 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3148, metadata !DIExpression()), !dbg !3149
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3150, metadata !DIExpression()), !dbg !3151
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3152, metadata !DIExpression()), !dbg !3153
  %7 = load i8*, i8** %4, align 8, !dbg !3154
  %8 = load i64, i64* %5, align 8, !dbg !3155
  %9 = load i64, i64* %6, align 8, !dbg !3156
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3157
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3158
  ret i8* %11, !dbg !3159
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3160 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3163, metadata !DIExpression()), !dbg !3164
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3165, metadata !DIExpression()), !dbg !3166
  %5 = load i64, i64* %3, align 8, !dbg !3167
  %6 = load i64, i64* %4, align 8, !dbg !3168
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3169
  ret i8* %7, !dbg !3170
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3171 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3174, metadata !DIExpression()), !dbg !3175
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3176, metadata !DIExpression()), !dbg !3177
  %5 = load i64, i64* %3, align 8, !dbg !3178
  %6 = load i64, i64* %4, align 8, !dbg !3179
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3180
  ret i8* %7, !dbg !3181
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3182 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3185, metadata !DIExpression()), !dbg !3186
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3187, metadata !DIExpression()), !dbg !3188
  %5 = load i8*, i8** %3, align 8, !dbg !3189
  %6 = load i64*, i64** %4, align 8, !dbg !3190
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3191
  ret i8* %7, !dbg !3192
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !242 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3193, metadata !DIExpression()), !dbg !3194
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3195, metadata !DIExpression()), !dbg !3196
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3197, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3199, metadata !DIExpression()), !dbg !3200
  %8 = load i64*, i64** %5, align 8, !dbg !3201
  %9 = load i64, i64* %8, align 8, !dbg !3202
  store i64 %9, i64* %7, align 8, !dbg !3200
  %10 = load i8*, i8** %4, align 8, !dbg !3203
  %11 = icmp ne i8* %10, null, !dbg !3203
  br i1 %11, label %26, label %12, !dbg !3205

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3206
  %14 = icmp ne i64 %13, 0, !dbg !3206
  br i1 %14, label %25, label %15, !dbg !3209

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3210
  %17 = udiv i64 128, %16, !dbg !3212
  store i64 %17, i64* %7, align 8, !dbg !3213
  %18 = load i64, i64* %7, align 8, !dbg !3214
  %19 = icmp ne i64 %18, 0, !dbg !3215
  %20 = xor i1 %19, true, !dbg !3215
  %21 = zext i1 %20 to i32, !dbg !3215
  %22 = sext i32 %21 to i64, !dbg !3215
  %23 = load i64, i64* %7, align 8, !dbg !3216
  %24 = add i64 %23, %22, !dbg !3216
  store i64 %24, i64* %7, align 8, !dbg !3216
  br label %25, !dbg !3217

25:                                               ; preds = %15, %12
  br label %36, !dbg !3218

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3219
  %28 = load i64, i64* %7, align 8, !dbg !3219
  %29 = lshr i64 %28, 1, !dbg !3219
  %30 = add i64 %29, 1, !dbg !3219
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3219
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3219
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3219
  store i64 %33, i64* %7, align 8, !dbg !3219
  br i1 %32, label %34, label %35, !dbg !3222

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3223
  unreachable, !dbg !3223

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3224
  %38 = load i64, i64* %7, align 8, !dbg !3225
  %39 = load i64, i64* %6, align 8, !dbg !3226
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3227
  store i8* %40, i8** %4, align 8, !dbg !3228
  %41 = load i64, i64* %7, align 8, !dbg !3229
  %42 = load i64*, i64** %5, align 8, !dbg !3230
  store i64 %41, i64* %42, align 8, !dbg !3231
  %43 = load i8*, i8** %4, align 8, !dbg !3232
  ret i8* %43, !dbg !3233
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3234, metadata !DIExpression()), !dbg !3235
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3236, metadata !DIExpression()), !dbg !3237
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3238, metadata !DIExpression()), !dbg !3239
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3240, metadata !DIExpression()), !dbg !3241
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3244, metadata !DIExpression()), !dbg !3245
  %15 = load i64*, i64** %7, align 8, !dbg !3246
  %16 = load i64, i64* %15, align 8, !dbg !3247
  store i64 %16, i64* %11, align 8, !dbg !3245
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3248, metadata !DIExpression()), !dbg !3249
  %17 = load i64, i64* %11, align 8, !dbg !3250
  %18 = load i64, i64* %11, align 8, !dbg !3250
  %19 = ashr i64 %18, 1, !dbg !3250
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3250
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3250
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3250
  store i64 %22, i64* %12, align 8, !dbg !3250
  br i1 %21, label %23, label %24, !dbg !3252

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3253
  br label %24, !dbg !3254

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3255
  %26 = icmp sle i64 0, %25, !dbg !3257
  br i1 %26, label %27, label %33, !dbg !3258

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3259
  %29 = load i64, i64* %12, align 8, !dbg !3260
  %30 = icmp slt i64 %28, %29, !dbg !3261
  br i1 %30, label %31, label %33, !dbg !3262

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3263
  store i64 %32, i64* %12, align 8, !dbg !3264
  br label %33, !dbg !3265

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3266, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3268, metadata !DIExpression()), !dbg !3269
  %34 = load i64, i64* %10, align 8, !dbg !3270
  %35 = icmp slt i64 %34, 0, !dbg !3270
  br i1 %35, label %36, label %82, !dbg !3270

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3270
  %38 = icmp slt i64 %37, 0, !dbg !3270
  br i1 %38, label %39, label %62, !dbg !3270

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3270

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3270
  %42 = load i64, i64* %10, align 8, !dbg !3270
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3270
  %44 = icmp slt i64 %41, %43, !dbg !3270
  br i1 %44, label %111, label %115, !dbg !3270

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3270

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3270
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3270
  br i1 %48, label %52, label %53, !dbg !3270

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3270
  %51 = icmp slt i64 0, %50, !dbg !3270
  br i1 %51, label %52, label %53, !dbg !3270

52:                                               ; preds = %49, %46
  br label %57, !dbg !3270

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3270
  %55 = sub nsw i64 0, %54, !dbg !3270
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3270
  br label %57, !dbg !3270

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3270
  %59 = load i64, i64* %12, align 8, !dbg !3270
  %60 = sub nsw i64 -1, %59, !dbg !3270
  %61 = icmp sle i64 %58, %60, !dbg !3270
  br i1 %61, label %111, label %115, !dbg !3270

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3270
  %64 = icmp eq i64 %63, -1, !dbg !3270
  br i1 %64, label %65, label %77, !dbg !3270

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3270

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3270
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3270
  %69 = icmp slt i64 0, %68, !dbg !3270
  br i1 %69, label %111, label %115, !dbg !3270

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3270
  %72 = icmp slt i64 0, %71, !dbg !3270
  br i1 %72, label %73, label %115, !dbg !3270

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3270
  %75 = sub nsw i64 %74, 1, !dbg !3270
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3270
  br i1 %76, label %111, label %115, !dbg !3270

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3270
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3270
  %80 = load i64, i64* %12, align 8, !dbg !3270
  %81 = icmp slt i64 %79, %80, !dbg !3270
  br i1 %81, label %111, label %115, !dbg !3270

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3270
  %84 = icmp eq i64 %83, 0, !dbg !3270
  br i1 %84, label %85, label %86, !dbg !3270

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3270

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3270
  %88 = icmp slt i64 %87, 0, !dbg !3270
  br i1 %88, label %89, label %106, !dbg !3270

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3270
  %91 = icmp eq i64 %90, -1, !dbg !3270
  br i1 %91, label %92, label %101, !dbg !3270

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3270

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3270
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3270
  %96 = icmp slt i64 0, %95, !dbg !3270
  br i1 %96, label %111, label %115, !dbg !3270

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3270
  %99 = sub nsw i64 %98, 1, !dbg !3270
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3270
  br i1 %100, label %111, label %115, !dbg !3270

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3270
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3270
  %104 = load i64, i64* %10, align 8, !dbg !3270
  %105 = icmp slt i64 %103, %104, !dbg !3270
  br i1 %105, label %111, label %115, !dbg !3270

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3270
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3270
  %109 = load i64, i64* %12, align 8, !dbg !3270
  %110 = icmp slt i64 %108, %109, !dbg !3270
  br i1 %110, label %111, label %115, !dbg !3270

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3270
  %113 = load i64, i64* %10, align 8, !dbg !3270
  %114 = mul i64 %112, %113, !dbg !3270
  store i64 %114, i64* %13, align 8, !dbg !3270
  br label %119, !dbg !3270

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3270
  %117 = load i64, i64* %10, align 8, !dbg !3270
  %118 = mul i64 %116, %117, !dbg !3270
  store i64 %118, i64* %13, align 8, !dbg !3270
  br label %119, !dbg !3270

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3270
  %121 = icmp ne i32 %120, 0, !dbg !3270
  br i1 %121, label %122, label %123, !dbg !3270

122:                                              ; preds = %119
  br label %129, !dbg !3270

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3271
  %125 = icmp slt i64 %124, 128, !dbg !3272
  %126 = zext i1 %125 to i64, !dbg !3271
  %127 = select i1 %125, i32 128, i32 0, !dbg !3271
  %128 = sext i32 %127 to i64, !dbg !3271
  br label %129, !dbg !3270

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3270
  store i64 %130, i64* %14, align 8, !dbg !3269
  %131 = load i64, i64* %14, align 8, !dbg !3273
  %132 = icmp ne i64 %131, 0, !dbg !3273
  br i1 %132, label %133, label %142, !dbg !3275

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3276
  %135 = load i64, i64* %10, align 8, !dbg !3278
  %136 = sdiv i64 %134, %135, !dbg !3279
  store i64 %136, i64* %12, align 8, !dbg !3280
  %137 = load i64, i64* %14, align 8, !dbg !3281
  %138 = load i64, i64* %14, align 8, !dbg !3282
  %139 = load i64, i64* %10, align 8, !dbg !3283
  %140 = srem i64 %138, %139, !dbg !3284
  %141 = sub nsw i64 %137, %140, !dbg !3285
  store i64 %141, i64* %13, align 8, !dbg !3286
  br label %142, !dbg !3287

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3288
  %144 = icmp ne i8* %143, null, !dbg !3288
  br i1 %144, label %147, label %145, !dbg !3290

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3291
  store i64 0, i64* %146, align 8, !dbg !3292
  br label %147, !dbg !3293

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3294
  %149 = load i64, i64* %11, align 8, !dbg !3296
  %150 = sub nsw i64 %148, %149, !dbg !3297
  %151 = load i64, i64* %8, align 8, !dbg !3298
  %152 = icmp slt i64 %150, %151, !dbg !3299
  br i1 %152, label %153, label %256, !dbg !3300

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3301
  %155 = load i64, i64* %8, align 8, !dbg !3301
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3301
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3301
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3301
  store i64 %158, i64* %12, align 8, !dbg !3301
  br i1 %157, label %255, label %159, !dbg !3302

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3303
  %161 = icmp sle i64 0, %160, !dbg !3304
  br i1 %161, label %162, label %166, !dbg !3305

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3306
  %164 = load i64, i64* %12, align 8, !dbg !3307
  %165 = icmp slt i64 %163, %164, !dbg !3308
  br i1 %165, label %255, label %166, !dbg !3309

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3310
  %168 = icmp slt i64 %167, 0, !dbg !3310
  br i1 %168, label %169, label %215, !dbg !3310

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3310
  %171 = icmp slt i64 %170, 0, !dbg !3310
  br i1 %171, label %172, label %195, !dbg !3310

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3310

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3310
  %175 = load i64, i64* %10, align 8, !dbg !3310
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3310
  %177 = icmp slt i64 %174, %176, !dbg !3310
  br i1 %177, label %244, label %248, !dbg !3310

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3310

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3310
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3310
  br i1 %181, label %185, label %186, !dbg !3310

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3310
  %184 = icmp slt i64 0, %183, !dbg !3310
  br i1 %184, label %185, label %186, !dbg !3310

185:                                              ; preds = %182, %179
  br label %190, !dbg !3310

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3310
  %188 = sub nsw i64 0, %187, !dbg !3310
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3310
  br label %190, !dbg !3310

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3310
  %192 = load i64, i64* %12, align 8, !dbg !3310
  %193 = sub nsw i64 -1, %192, !dbg !3310
  %194 = icmp sle i64 %191, %193, !dbg !3310
  br i1 %194, label %244, label %248, !dbg !3310

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3310
  %197 = icmp eq i64 %196, -1, !dbg !3310
  br i1 %197, label %198, label %210, !dbg !3310

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3310

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3310
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3310
  %202 = icmp slt i64 0, %201, !dbg !3310
  br i1 %202, label %244, label %248, !dbg !3310

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3310
  %205 = icmp slt i64 0, %204, !dbg !3310
  br i1 %205, label %206, label %248, !dbg !3310

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3310
  %208 = sub nsw i64 %207, 1, !dbg !3310
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3310
  br i1 %209, label %244, label %248, !dbg !3310

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3310
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3310
  %213 = load i64, i64* %12, align 8, !dbg !3310
  %214 = icmp slt i64 %212, %213, !dbg !3310
  br i1 %214, label %244, label %248, !dbg !3310

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3310
  %217 = icmp eq i64 %216, 0, !dbg !3310
  br i1 %217, label %218, label %219, !dbg !3310

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3310

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3310
  %221 = icmp slt i64 %220, 0, !dbg !3310
  br i1 %221, label %222, label %239, !dbg !3310

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3310
  %224 = icmp eq i64 %223, -1, !dbg !3310
  br i1 %224, label %225, label %234, !dbg !3310

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3310

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3310
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3310
  %229 = icmp slt i64 0, %228, !dbg !3310
  br i1 %229, label %244, label %248, !dbg !3310

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3310
  %232 = sub nsw i64 %231, 1, !dbg !3310
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3310
  br i1 %233, label %244, label %248, !dbg !3310

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3310
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3310
  %237 = load i64, i64* %10, align 8, !dbg !3310
  %238 = icmp slt i64 %236, %237, !dbg !3310
  br i1 %238, label %244, label %248, !dbg !3310

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3310
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3310
  %242 = load i64, i64* %12, align 8, !dbg !3310
  %243 = icmp slt i64 %241, %242, !dbg !3310
  br i1 %243, label %244, label %248, !dbg !3310

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3310
  %246 = load i64, i64* %10, align 8, !dbg !3310
  %247 = mul i64 %245, %246, !dbg !3310
  store i64 %247, i64* %13, align 8, !dbg !3310
  br label %252, !dbg !3310

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3310
  %250 = load i64, i64* %10, align 8, !dbg !3310
  %251 = mul i64 %249, %250, !dbg !3310
  store i64 %251, i64* %13, align 8, !dbg !3310
  br label %252, !dbg !3310

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3310
  %254 = icmp ne i32 %253, 0, !dbg !3310
  br i1 %254, label %255, label %256, !dbg !3311

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3312
  unreachable, !dbg !3312

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3313
  %258 = load i64, i64* %13, align 8, !dbg !3314
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !3315
  store i8* %259, i8** %6, align 8, !dbg !3316
  %260 = load i64, i64* %12, align 8, !dbg !3317
  %261 = load i64*, i64** %7, align 8, !dbg !3318
  store i64 %260, i64* %261, align 8, !dbg !3319
  %262 = load i8*, i8** %6, align 8, !dbg !3320
  ret i8* %262, !dbg !3321
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3322 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3323, metadata !DIExpression()), !dbg !3324
  %3 = load i64, i64* %2, align 8, !dbg !3325
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3326
  ret i8* %4, !dbg !3327
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3328 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3329, metadata !DIExpression()), !dbg !3330
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3331, metadata !DIExpression()), !dbg !3332
  %5 = load i64, i64* %3, align 8, !dbg !3333
  %6 = load i64, i64* %4, align 8, !dbg !3334
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3335
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3336
  ret i8* %8, !dbg !3337
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3338 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3339, metadata !DIExpression()), !dbg !3340
  %3 = load i64, i64* %2, align 8, !dbg !3341
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3342
  ret i8* %4, !dbg !3343
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3344 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3345, metadata !DIExpression()), !dbg !3346
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3347, metadata !DIExpression()), !dbg !3348
  %5 = load i64, i64* %3, align 8, !dbg !3349
  %6 = load i64, i64* %4, align 8, !dbg !3350
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3351
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3352
  ret i8* %8, !dbg !3353
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3354 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3359, metadata !DIExpression()), !dbg !3360
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3361, metadata !DIExpression()), !dbg !3362
  %5 = load i64, i64* %4, align 8, !dbg !3363
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !3364
  %7 = load i8*, i8** %3, align 8, !dbg !3365
  %8 = load i64, i64* %4, align 8, !dbg !3366
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3367
  ret i8* %6, !dbg !3368
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3369 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3372, metadata !DIExpression()), !dbg !3373
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3374, metadata !DIExpression()), !dbg !3375
  %5 = load i64, i64* %4, align 8, !dbg !3376
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !3377
  %7 = load i8*, i8** %3, align 8, !dbg !3378
  %8 = load i64, i64* %4, align 8, !dbg !3379
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3380
  ret i8* %6, !dbg !3381
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3382 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3385, metadata !DIExpression()), !dbg !3386
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3387, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3389, metadata !DIExpression()), !dbg !3390
  %6 = load i64, i64* %4, align 8, !dbg !3391
  %7 = add nsw i64 %6, 1, !dbg !3392
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !3393
  store i8* %8, i8** %5, align 8, !dbg !3390
  %9 = load i8*, i8** %5, align 8, !dbg !3394
  %10 = load i64, i64* %4, align 8, !dbg !3395
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3394
  store i8 0, i8* %11, align 1, !dbg !3396
  %12 = load i8*, i8** %5, align 8, !dbg !3397
  %13 = load i8*, i8** %3, align 8, !dbg !3398
  %14 = load i64, i64* %4, align 8, !dbg !3399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3400
  ret i8* %12, !dbg !3401
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3402 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3403, metadata !DIExpression()), !dbg !3404
  %3 = load i8*, i8** %2, align 8, !dbg !3405
  %4 = load i8*, i8** %2, align 8, !dbg !3406
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3407
  %6 = add i64 %5, 1, !dbg !3408
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !3409
  ret i8* %7, !dbg !3410
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3411 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3412, metadata !DIExpression()), !dbg !3415
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3415
  store i32 %2, i32* %1, align 4, !dbg !3415
  %3 = load i32, i32* %1, align 4, !dbg !3415
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.144, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.145, i64 0, i64 0)) #18, !dbg !3415
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i64 0, i64 0), i8* noundef %4), !dbg !3415
  %5 = load i32, i32* %1, align 4, !dbg !3415
  %6 = icmp ne i32 %5, 0, !dbg !3415
  br i1 %6, label %7, label %9, !dbg !3415

7:                                                ; preds = %0
  unreachable, !dbg !3415

8:                                                ; No predecessors!
  br label %10, !dbg !3415

9:                                                ; preds = %0
  br label %10, !dbg !3415

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3416
  unreachable, !dbg !3416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3417 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3423, metadata !DIExpression()), !dbg !3424
  %3 = load i32, i32* %2, align 4, !dbg !3425
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3426
  ret i32 %4, !dbg !3427
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3428 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3467, metadata !DIExpression()), !dbg !3469
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3470
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3471
  %9 = icmp ne i64 %8, 0, !dbg !3472
  %10 = zext i1 %9 to i8, !dbg !3469
  store i8 %10, i8* %4, align 1, !dbg !3469
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3473, metadata !DIExpression()), !dbg !3474
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3475
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3475
  %13 = icmp ne i32 %12, 0, !dbg !3476
  %14 = zext i1 %13 to i8, !dbg !3474
  store i8 %14, i8* %5, align 1, !dbg !3474
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3477, metadata !DIExpression()), !dbg !3478
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3479
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3480
  %17 = icmp ne i32 %16, 0, !dbg !3481
  %18 = zext i1 %17 to i8, !dbg !3478
  store i8 %18, i8* %6, align 1, !dbg !3478
  %19 = load i8, i8* %5, align 1, !dbg !3482
  %20 = trunc i8 %19 to i1, !dbg !3482
  br i1 %20, label %31, label %21, !dbg !3484

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3485
  %23 = trunc i8 %22 to i1, !dbg !3485
  br i1 %23, label %24, label %37, !dbg !3486

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3487
  %26 = trunc i8 %25 to i1, !dbg !3487
  br i1 %26, label %31, label %27, !dbg !3488

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3489
  %29 = load i32, i32* %28, align 4, !dbg !3489
  %30 = icmp ne i32 %29, 9, !dbg !3490
  br i1 %30, label %31, label %37, !dbg !3491

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3492
  %33 = trunc i8 %32 to i1, !dbg !3492
  br i1 %33, label %36, label %34, !dbg !3495

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3496
  store i32 0, i32* %35, align 4, !dbg !3497
  br label %36, !dbg !3496

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3498
  br label %38, !dbg !3498

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3499
  br label %38, !dbg !3499

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3500
  ret i32 %39, !dbg !3500
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3501 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3538, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3540, metadata !DIExpression()), !dbg !3541
  store i32 0, i32* %4, align 4, !dbg !3541
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3542, metadata !DIExpression()), !dbg !3543
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3544
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !3545
  store i32 %8, i32* %5, align 4, !dbg !3543
  %9 = load i32, i32* %5, align 4, !dbg !3546
  %10 = icmp slt i32 %9, 0, !dbg !3548
  br i1 %10, label %11, label %14, !dbg !3549

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3550
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3551
  store i32 %13, i32* %2, align 4, !dbg !3552
  br label %40, !dbg !3552

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3553
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !3553
  %17 = icmp ne i32 %16, 0, !dbg !3553
  br i1 %17, label %18, label %23, !dbg !3555

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3556
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !3557
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !3558
  %22 = icmp ne i64 %21, -1, !dbg !3559
  br i1 %22, label %23, label %30, !dbg !3560

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3561
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !3562
  %26 = icmp ne i32 %25, 0, !dbg !3562
  br i1 %26, label %27, label %30, !dbg !3563

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !3564
  %29 = load i32, i32* %28, align 4, !dbg !3564
  store i32 %29, i32* %4, align 4, !dbg !3565
  br label %30, !dbg !3566

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3567, metadata !DIExpression()), !dbg !3568
  store i32 0, i32* %6, align 4, !dbg !3568
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3569
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !3570
  store i32 %32, i32* %6, align 4, !dbg !3571
  %33 = load i32, i32* %4, align 4, !dbg !3572
  %34 = icmp ne i32 %33, 0, !dbg !3574
  br i1 %34, label %35, label %38, !dbg !3575

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3576
  %37 = call i32* @__errno_location() #21, !dbg !3578
  store i32 %36, i32* %37, align 4, !dbg !3579
  store i32 -1, i32* %6, align 4, !dbg !3580
  br label %38, !dbg !3581

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3582
  store i32 %39, i32* %2, align 4, !dbg !3583
  br label %40, !dbg !3583

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3584
  ret i32 %41, !dbg !3584
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !3585 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3622, metadata !DIExpression()), !dbg !3623
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3624
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3626
  br i1 %5, label %10, label %6, !dbg !3627

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3628
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !3628
  %9 = icmp ne i32 %8, 0, !dbg !3628
  br i1 %9, label %13, label %10, !dbg !3629

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3630
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !3631
  store i32 %12, i32* %2, align 4, !dbg !3632
  br label %17, !dbg !3632

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3633
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !3634
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3635
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !3636
  store i32 %16, i32* %2, align 4, !dbg !3637
  br label %17, !dbg !3637

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3638
  ret i32 %18, !dbg !3638
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !3639 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3642, metadata !DIExpression()), !dbg !3643
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3644
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !3646
  %5 = load i32, i32* %4, align 8, !dbg !3646
  %6 = and i32 %5, 256, !dbg !3647
  %7 = icmp ne i32 %6, 0, !dbg !3647
  br i1 %7, label %8, label %11, !dbg !3648

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3649
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !3650
  br label %11, !dbg !3650

11:                                               ; preds = %8, %1
  ret void, !dbg !3651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !3652 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3690, metadata !DIExpression()), !dbg !3691
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3692, metadata !DIExpression()), !dbg !3693
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3694, metadata !DIExpression()), !dbg !3695
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3696
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !3698
  %11 = load i8*, i8** %10, align 8, !dbg !3698
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3699
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !3700
  %14 = load i8*, i8** %13, align 8, !dbg !3700
  %15 = icmp eq i8* %11, %14, !dbg !3701
  br i1 %15, label %16, label %46, !dbg !3702

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3703
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !3704
  %19 = load i8*, i8** %18, align 8, !dbg !3704
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3705
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !3706
  %22 = load i8*, i8** %21, align 8, !dbg !3706
  %23 = icmp eq i8* %19, %22, !dbg !3707
  br i1 %23, label %24, label %46, !dbg !3708

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3709
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !3710
  %27 = load i8*, i8** %26, align 8, !dbg !3710
  %28 = icmp eq i8* %27, null, !dbg !3711
  br i1 %28, label %29, label %46, !dbg !3712

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3713, metadata !DIExpression()), !dbg !3715
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3716
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !3717
  %32 = load i64, i64* %6, align 8, !dbg !3718
  %33 = load i32, i32* %7, align 4, !dbg !3719
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !3720
  store i64 %34, i64* %8, align 8, !dbg !3715
  %35 = load i64, i64* %8, align 8, !dbg !3721
  %36 = icmp eq i64 %35, -1, !dbg !3723
  br i1 %36, label %37, label %38, !dbg !3724

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3725
  br label %51, !dbg !3725

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3727
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !3728
  %41 = load i32, i32* %40, align 8, !dbg !3729
  %42 = and i32 %41, -17, !dbg !3729
  store i32 %42, i32* %40, align 8, !dbg !3729
  %43 = load i64, i64* %8, align 8, !dbg !3730
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3731
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !3732
  store i64 %43, i64* %45, align 8, !dbg !3733
  store i32 0, i32* %4, align 4, !dbg !3734
  br label %51, !dbg !3734

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3735
  %48 = load i64, i64* %6, align 8, !dbg !3736
  %49 = load i32, i32* %7, align 4, !dbg !3737
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !3738
  store i32 %50, i32* %4, align 4, !dbg !3739
  br label %51, !dbg !3739

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !3740
  ret i32 %52, !dbg !3740
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !3741 {
  %1 = call i32* @__errno_location() #21, !dbg !3744
  store i32 12, i32* %1, align 4, !dbg !3745
  ret i8* null, !dbg !3746
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !3747 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3748, metadata !DIExpression()), !dbg !3749
  %3 = load i64, i64* %2, align 8, !dbg !3750
  %4 = icmp ule i64 %3, -1, !dbg !3751
  br i1 %4, label %5, label %8, !dbg !3750

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !3752
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !3753
  br label %10, !dbg !3750

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !3754
  br label %10, !dbg !3750

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !3750
  ret i8* %11, !dbg !3755
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3756 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3757, metadata !DIExpression()), !dbg !3758
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3759, metadata !DIExpression()), !dbg !3760
  %5 = load i64, i64* %4, align 8, !dbg !3761
  %6 = icmp ule i64 %5, -1, !dbg !3762
  br i1 %6, label %7, label %11, !dbg !3761

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !3763
  %9 = load i64, i64* %4, align 8, !dbg !3764
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !3765
  br label %13, !dbg !3761

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3766
  br label %13, !dbg !3761

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !3761
  ret i8* %14, !dbg !3767
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !3768 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3769, metadata !DIExpression()), !dbg !3770
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3771, metadata !DIExpression()), !dbg !3772
  %6 = load i64, i64* %4, align 8, !dbg !3773
  %7 = icmp ult i64 -1, %6, !dbg !3775
  br i1 %7, label %8, label %14, !dbg !3776

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !3777
  %10 = icmp ne i64 %9, 0, !dbg !3780
  br i1 %10, label %11, label %13, !dbg !3781

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3782
  store i8* %12, i8** %3, align 8, !dbg !3783
  br label %27, !dbg !3783

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !3784
  br label %14, !dbg !3785

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !3786
  %16 = icmp ult i64 -1, %15, !dbg !3788
  br i1 %16, label %17, label %23, !dbg !3789

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !3790
  %19 = icmp ne i64 %18, 0, !dbg !3793
  br i1 %19, label %20, label %22, !dbg !3794

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !3795
  store i8* %21, i8** %3, align 8, !dbg !3796
  br label %27, !dbg !3796

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !3797
  br label %23, !dbg !3798

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !3799
  %25 = load i64, i64* %5, align 8, !dbg !3800
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !3801
  store i8* %26, i8** %3, align 8, !dbg !3802
  br label %27, !dbg !3802

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !3803
  ret i8* %28, !dbg !3803
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3804 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3805, metadata !DIExpression()), !dbg !3806
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3807, metadata !DIExpression()), !dbg !3808
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3809, metadata !DIExpression()), !dbg !3810
  %7 = load i64, i64* %5, align 8, !dbg !3811
  %8 = icmp ule i64 %7, -1, !dbg !3812
  br i1 %8, label %9, label %17, !dbg !3813

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !3814
  %11 = icmp ule i64 %10, -1, !dbg !3815
  br i1 %11, label %12, label %17, !dbg !3811

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !3816
  %14 = load i64, i64* %5, align 8, !dbg !3817
  %15 = load i64, i64* %6, align 8, !dbg !3818
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !3819
  br label %19, !dbg !3811

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !3820
  br label %19, !dbg !3811

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !3811
  ret i8* %20, !dbg !3821
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !3822 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3827, metadata !DIExpression()), !dbg !3828
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3829, metadata !DIExpression()), !dbg !3830
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3831, metadata !DIExpression()), !dbg !3832
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !3833, metadata !DIExpression()), !dbg !3834
  %11 = load i8*, i8** %7, align 8, !dbg !3835
  %12 = icmp eq i8* %11, null, !dbg !3837
  br i1 %12, label %13, label %14, !dbg !3838

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !3839
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.167, i64 0, i64 0), i8** %7, align 8, !dbg !3841
  store i64 1, i64* %8, align 8, !dbg !3842
  br label %14, !dbg !3843

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3844
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !3846
  br i1 %16, label %17, label %18, !dbg !3847

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !3848
  br label %18, !dbg !3849

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3850, metadata !DIExpression()), !dbg !3851
  %19 = load i32*, i32** %6, align 8, !dbg !3852
  %20 = load i8*, i8** %7, align 8, !dbg !3853
  %21 = load i64, i64* %8, align 8, !dbg !3854
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3855
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !3856
  store i64 %23, i64* %10, align 8, !dbg !3851
  %24 = load i64, i64* %10, align 8, !dbg !3857
  %25 = icmp ult i64 %24, -3, !dbg !3859
  br i1 %25, label %26, label %32, !dbg !3860

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3861
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !3862
  %29 = icmp ne i32 %28, 0, !dbg !3862
  br i1 %29, label %32, label %30, !dbg !3863

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3864
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !3865
  br label %32, !dbg !3865

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !3866
  %34 = icmp eq i64 %33, -3, !dbg !3868
  br i1 %34, label %35, label %36, !dbg !3869

35:                                               ; preds = %32
  call void @abort() #19, !dbg !3870
  unreachable, !dbg !3870

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !3871
  %38 = icmp ule i64 -2, %37, !dbg !3873
  br i1 %38, label %39, label %53, !dbg !3874

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !3875
  %41 = icmp ne i64 %40, 0, !dbg !3876
  br i1 %41, label %42, label %53, !dbg !3877

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !3878
  br i1 %43, label %53, label %44, !dbg !3879

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !3880
  %46 = icmp ne i32* %45, null, !dbg !3883
  br i1 %46, label %47, label %52, !dbg !3884

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !3885
  %49 = load i8, i8* %48, align 1, !dbg !3886
  %50 = zext i8 %49 to i32, !dbg !3887
  %51 = load i32*, i32** %6, align 8, !dbg !3888
  store i32 %50, i32* %51, align 4, !dbg !3889
  br label %52, !dbg !3890

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !3891
  br label %55, !dbg !3891

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !3892
  store i64 %54, i64* %5, align 8, !dbg !3893
  br label %55, !dbg !3893

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !3894
  ret i64 %56, !dbg !3894
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !3895 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !3910, metadata !DIExpression()), !dbg !3911
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !3912
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !3913
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !3913
  ret void, !dbg !3914
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3915 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3918, metadata !DIExpression()), !dbg !3919
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3920, metadata !DIExpression()), !dbg !3921
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3922, metadata !DIExpression()), !dbg !3923
  %7 = load i8*, i8** %4, align 8, !dbg !3924
  %8 = load i8*, i8** %5, align 8, !dbg !3925
  %9 = load i64, i64* %6, align 8, !dbg !3926
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !3927
  %11 = icmp ne i32 %10, 0, !dbg !3928
  %12 = xor i1 %11, true, !dbg !3928
  ret i1 %12, !dbg !3929
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3930 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3932, metadata !DIExpression()), !dbg !3933
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3934, metadata !DIExpression()), !dbg !3935
  %5 = load i8*, i8** %3, align 8, !dbg !3936
  %6 = load i64, i64* %4, align 8, !dbg !3937
  %7 = icmp ne i64 %6, 0, !dbg !3937
  br i1 %7, label %8, label %10, !dbg !3937

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !3938
  br label %11, !dbg !3937

10:                                               ; preds = %2
  br label %11, !dbg !3937

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !3937
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !3939
  ret i8* %13, !dbg !3940
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3941 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3942, metadata !DIExpression()), !dbg !3943
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3944, metadata !DIExpression()), !dbg !3945
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3946, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3948, metadata !DIExpression()), !dbg !3949
  %9 = load i64, i64* %7, align 8, !dbg !3950
  %10 = icmp ult i64 %9, 0, !dbg !3950
  br i1 %10, label %11, label %60, !dbg !3950

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !3950
  %13 = icmp ult i64 %12, 0, !dbg !3950
  br i1 %13, label %14, label %37, !dbg !3950

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !3950

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !3950
  %17 = load i64, i64* %7, align 8, !dbg !3950
  %18 = udiv i64 -1, %17, !dbg !3950
  %19 = icmp ult i64 %16, %18, !dbg !3950
  br i1 %19, label %92, label %96, !dbg !3950

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !3950

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !3950
  %23 = icmp ult i64 %22, 1, !dbg !3950
  br i1 %23, label %27, label %28, !dbg !3950

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !3950
  %26 = icmp ult i64 0, %25, !dbg !3950
  br i1 %26, label %27, label %28, !dbg !3950

27:                                               ; preds = %24, %21
  br label %32, !dbg !3950

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !3950
  %30 = sub i64 0, %29, !dbg !3950
  %31 = udiv i64 -1, %30, !dbg !3950
  br label %32, !dbg !3950

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !3950
  %34 = load i64, i64* %6, align 8, !dbg !3950
  %35 = sub i64 -1, %34, !dbg !3950
  %36 = icmp ule i64 %33, %35, !dbg !3950
  br i1 %36, label %92, label %96, !dbg !3950

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !3950

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !3950

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !3950

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !3950
  %42 = icmp eq i64 %41, -1, !dbg !3950
  br i1 %42, label %43, label %55, !dbg !3950

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !3950

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !3950
  %46 = add i64 %45, 0, !dbg !3950
  %47 = icmp ult i64 0, %46, !dbg !3950
  br i1 %47, label %92, label %96, !dbg !3950

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !3950
  %50 = icmp ult i64 0, %49, !dbg !3950
  br i1 %50, label %51, label %96, !dbg !3950

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !3950
  %53 = sub i64 %52, 1, !dbg !3950
  %54 = icmp ult i64 -1, %53, !dbg !3950
  br i1 %54, label %92, label %96, !dbg !3950

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !3950
  %57 = udiv i64 0, %56, !dbg !3950
  %58 = load i64, i64* %6, align 8, !dbg !3950
  %59 = icmp ult i64 %57, %58, !dbg !3950
  br i1 %59, label %92, label %96, !dbg !3950

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !3950
  %62 = icmp eq i64 %61, 0, !dbg !3950
  br i1 %62, label %63, label %64, !dbg !3950

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !3950

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !3950
  %66 = icmp ult i64 %65, 0, !dbg !3950
  br i1 %66, label %67, label %87, !dbg !3950

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !3950

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !3950

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !3950

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !3950
  %72 = icmp eq i64 %71, -1, !dbg !3950
  br i1 %72, label %73, label %82, !dbg !3950

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !3950

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !3950
  %76 = add i64 %75, 0, !dbg !3950
  %77 = icmp ult i64 0, %76, !dbg !3950
  br i1 %77, label %92, label %96, !dbg !3950

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !3950
  %80 = sub i64 %79, 1, !dbg !3950
  %81 = icmp ult i64 -1, %80, !dbg !3950
  br i1 %81, label %92, label %96, !dbg !3950

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !3950
  %84 = udiv i64 0, %83, !dbg !3950
  %85 = load i64, i64* %7, align 8, !dbg !3950
  %86 = icmp ult i64 %84, %85, !dbg !3950
  br i1 %86, label %92, label %96, !dbg !3950

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !3950
  %89 = udiv i64 -1, %88, !dbg !3950
  %90 = load i64, i64* %6, align 8, !dbg !3950
  %91 = icmp ult i64 %89, %90, !dbg !3950
  br i1 %91, label %92, label %96, !dbg !3950

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !3950
  %94 = load i64, i64* %7, align 8, !dbg !3950
  %95 = mul i64 %93, %94, !dbg !3950
  store i64 %95, i64* %8, align 8, !dbg !3950
  br label %100, !dbg !3950

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !3950
  %98 = load i64, i64* %7, align 8, !dbg !3950
  %99 = mul i64 %97, %98, !dbg !3950
  store i64 %99, i64* %8, align 8, !dbg !3950
  br label %100, !dbg !3950

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !3950
  %102 = icmp ne i32 %101, 0, !dbg !3950
  br i1 %102, label %103, label %105, !dbg !3952

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !3953
  store i32 12, i32* %104, align 4, !dbg !3955
  store i8* null, i8** %4, align 8, !dbg !3956
  br label %109, !dbg !3956

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !3957
  %107 = load i64, i64* %8, align 8, !dbg !3958
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !3959
  store i8* %108, i8** %4, align 8, !dbg !3960
  br label %109, !dbg !3960

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !3961
  ret i8* %110, !dbg !3961
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !3962 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3965, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !3967, metadata !DIExpression()), !dbg !3971
  %5 = load i32, i32* %3, align 4, !dbg !3972
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3974
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !3975
  %8 = icmp ne i32 %7, 0, !dbg !3975
  br i1 %8, label %9, label %10, !dbg !3976

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3977
  br label %18, !dbg !3977

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3978
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i64 0, i64 0)), !dbg !3980
  br i1 %12, label %17, label %13, !dbg !3981

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3982
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.179, i64 0, i64 0)), !dbg !3983
  br i1 %15, label %17, label %16, !dbg !3984

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !3985
  br label %18, !dbg !3985

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !3986
  br label %18, !dbg !3986

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !3987
  ret i1 %19, !dbg !3987
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !3988 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3991, metadata !DIExpression()), !dbg !3992
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3993, metadata !DIExpression()), !dbg !3994
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3995, metadata !DIExpression()), !dbg !3996
  %7 = load i32, i32* %4, align 4, !dbg !3997
  %8 = load i8*, i8** %5, align 8, !dbg !3998
  %9 = load i64, i64* %6, align 8, !dbg !3999
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4000
  ret i32 %10, !dbg !4001
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4002 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4005, metadata !DIExpression()), !dbg !4006
  %3 = load i32, i32* %2, align 4, !dbg !4007
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4008
  ret i8* %4, !dbg !4009
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4010 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4011, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4013, metadata !DIExpression()), !dbg !4014
  %4 = load i32, i32* %2, align 4, !dbg !4015
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4016
  store i8* %5, i8** %3, align 8, !dbg !4014
  %6 = load i8*, i8** %3, align 8, !dbg !4017
  ret i8* %6, !dbg !4018
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4019 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4020, metadata !DIExpression()), !dbg !4021
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4022, metadata !DIExpression()), !dbg !4023
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4026, metadata !DIExpression()), !dbg !4027
  %10 = load i32, i32* %5, align 4, !dbg !4028
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4029
  store i8* %11, i8** %8, align 8, !dbg !4027
  %12 = load i8*, i8** %8, align 8, !dbg !4030
  %13 = icmp eq i8* %12, null, !dbg !4032
  br i1 %13, label %14, label %21, !dbg !4033

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4034
  %16 = icmp ugt i64 %15, 0, !dbg !4037
  br i1 %16, label %17, label %20, !dbg !4038

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4039
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4039
  store i8 0, i8* %19, align 1, !dbg !4040
  br label %20, !dbg !4039

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4041
  br label %45, !dbg !4041

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4042, metadata !DIExpression()), !dbg !4044
  %22 = load i8*, i8** %8, align 8, !dbg !4045
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4046
  store i64 %23, i64* %9, align 8, !dbg !4044
  %24 = load i64, i64* %9, align 8, !dbg !4047
  %25 = load i64, i64* %7, align 8, !dbg !4049
  %26 = icmp ult i64 %24, %25, !dbg !4050
  br i1 %26, label %27, label %32, !dbg !4051

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4052
  %29 = load i8*, i8** %8, align 8, !dbg !4054
  %30 = load i64, i64* %9, align 8, !dbg !4055
  %31 = add i64 %30, 1, !dbg !4056
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4057
  store i32 0, i32* %4, align 4, !dbg !4058
  br label %45, !dbg !4058

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4059
  %34 = icmp ugt i64 %33, 0, !dbg !4062
  br i1 %34, label %35, label %44, !dbg !4063

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4064
  %37 = load i8*, i8** %8, align 8, !dbg !4066
  %38 = load i64, i64* %7, align 8, !dbg !4067
  %39 = sub i64 %38, 1, !dbg !4068
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4069
  %40 = load i8*, i8** %6, align 8, !dbg !4070
  %41 = load i64, i64* %7, align 8, !dbg !4071
  %42 = sub i64 %41, 1, !dbg !4072
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4070
  store i8 0, i8* %43, align 1, !dbg !4073
  br label %44, !dbg !4074

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4075
  br label %45, !dbg !4075

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4076
  ret i32 %46, !dbg !4076
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

!llvm.dbg.cu = !{!9, !50, !55, !63, !203, !228, !97, !114, !125, !132, !230, !232, !195, !238, !258, !260, !262, !264, !266, !268, !270, !209, !272, !274, !276, !278, !281, !283, !285}
!llvm.ident = !{!287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287}
!llvm.module.flags = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !44, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !47)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !42, globals: !46, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/link.c", directory: "/src", checksumkind: CSK_MD5, checksum: "355a8a3740f0720795f10b09973f5dbc")
!11 = !{!12, !27}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !13, line: 42, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!17 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!18 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!19 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!20 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!21 = !DIEnumerator(name: "c_quoting_style", value: 5)
!22 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!23 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!24 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!25 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!26 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 46, baseType: !14, size: 32, elements: !29)
!28 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!30 = !DIEnumerator(name: "_ISupper", value: 256)
!31 = !DIEnumerator(name: "_ISlower", value: 512)
!32 = !DIEnumerator(name: "_ISalpha", value: 1024)
!33 = !DIEnumerator(name: "_ISdigit", value: 2048)
!34 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!35 = !DIEnumerator(name: "_ISspace", value: 8192)
!36 = !DIEnumerator(name: "_ISprint", value: 16384)
!37 = !DIEnumerator(name: "_ISgraph", value: 32768)
!38 = !DIEnumerator(name: "_ISblank", value: 1)
!39 = !DIEnumerator(name: "_IScntrl", value: 2)
!40 = !DIEnumerator(name: "_ISpunct", value: 4)
!41 = !DIEnumerator(name: "_ISalnum", value: 8)
!42 = !{!6, !43, !44, !45}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !{!0}
!47 = !{}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "Version", scope: !50, file: !51, line: 3, type: !6, isLocal: false, isDefinition: true)
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !52, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!52 = !{!48}
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "file_name", scope: !55, file: !56, line: 45, type: !6, isLocal: true, isDefinition: true)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !57, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!57 = !{!53, !58}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !55, file: !56, line: 55, type: !60, isLocal: true, isDefinition: true)
!60 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !63, file: !64, line: 66, type: !92, isLocal: false, isDefinition: true)
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !65, globals: !66, splitDebugInlining: false, nameTableKind: None)
!64 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!65 = !{!43}
!66 = !{!67, !86, !61, !88, !90}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "old_file_name", scope: !69, file: !64, line: 304, type: !6, isLocal: true, isDefinition: true)
!69 = distinct !DISubprogram(name: "verror_at_line", scope: !64, file: !64, line: 298, type: !70, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !47)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !44, !44, !6, !14, !6, !72}
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !73, line: 52, baseType: !74)
!73 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !75, line: 32, baseType: !76)
!75 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !77, baseType: !78)
!77 = !DIFile(filename: "lib/error.c", directory: "/src")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !79, size: 256, elements: !80)
!79 = !DINamespace(name: "std", scope: null)
!80 = !{!81, !82, !83, !84, !85}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !78, file: !77, baseType: !43, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !78, file: !77, baseType: !43, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !78, file: !77, baseType: !43, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !78, file: !77, baseType: !44, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !78, file: !77, baseType: !44, size: 32, offset: 224)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "old_line_number", scope: !69, file: !64, line: 305, type: !14, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "error_message_count", scope: !63, file: !64, line: 69, type: !14, isLocal: false, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !63, file: !64, line: 295, type: !44, isLocal: false, isDefinition: true)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{null}
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "long_options", scope: !97, file: !98, line: 34, type: !100, isLocal: true, isDefinition: true)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !99, splitDebugInlining: false, nameTableKind: None)
!98 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!99 = !{!95}
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 768, elements: !110)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !103, line: 50, size: 256, elements: !104)
!103 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!104 = !{!105, !106, !107, !109}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !103, line: 52, baseType: !6, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !102, file: !103, line: 55, baseType: !44, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !102, file: !103, line: 56, baseType: !108, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !102, file: !103, line: 57, baseType: !44, size: 32, offset: 192)
!110 = !{!111}
!111 = !DISubrange(count: 3)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "program_name", scope: !114, file: !115, line: 31, type: !6, isLocal: false, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !116, globals: !118, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!116 = !{!117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!118 = !{!112}
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "utf07FF", scope: !121, file: !122, line: 46, type: !127, isLocal: true, isDefinition: true)
!121 = distinct !DISubprogram(name: "proper_name_lite", scope: !122, file: !122, line: 38, type: !123, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !47)
!122 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!123 = !DISubroutineType(types: !124)
!124 = !{!6, !6, !6}
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !126, splitDebugInlining: false, nameTableKind: None)
!126 = !{!119}
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 2)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !132, file: !133, line: 76, type: !189, isLocal: false, isDefinition: true)
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !134, retainedTypes: !140, globals: !144, splitDebugInlining: false, nameTableKind: None)
!133 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!134 = !{!12, !135, !27}
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !13, line: 254, baseType: !14, size: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!138 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!139 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!140 = !{!44, !45, !141}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !142, line: 46, baseType: !143)
!142 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!143 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!144 = !{!130, !145, !151, !163, !165, !170, !178, !185, !187}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !132, file: !133, line: 92, type: !147, isLocal: false, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 320, elements: !149)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!149 = !{!150}
!150 = !DISubrange(count: 10)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !132, file: !133, line: 1040, type: !153, isLocal: false, isDefinition: true)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !133, line: 56, size: 448, elements: !154)
!154 = !{!155, !156, !157, !161, !162}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !153, file: !133, line: 59, baseType: !12, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !133, line: 62, baseType: !44, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !153, file: !133, line: 66, baseType: !158, size: 256, offset: 64)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !153, file: !133, line: 69, baseType: !6, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !153, file: !133, line: 72, baseType: !6, size: 64, offset: 384)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !132, file: !133, line: 107, type: !153, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "slot0", scope: !132, file: !133, line: 831, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 256)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "quote", scope: !172, file: !133, line: 228, type: !175, isLocal: true, isDefinition: true)
!172 = distinct !DISubprogram(name: "gettext_quote", scope: !133, file: !133, line: 197, type: !173, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !47)
!173 = !DISubroutineType(types: !174)
!174 = !{!6, !6, !12}
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !176)
!176 = !{!129, !177}
!177 = !DISubrange(count: 4)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "slotvec", scope: !132, file: !133, line: 834, type: !180, isLocal: true, isDefinition: true)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !133, line: 823, size: 128, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !181, file: !133, line: 825, baseType: !141, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !181, file: !133, line: 826, baseType: !117, size: 64, offset: 64)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "nslots", scope: !132, file: !133, line: 832, type: !44, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "slotvec0", scope: !132, file: !133, line: 833, type: !181, isLocal: true, isDefinition: true)
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
!206 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "internal_state", scope: !209, file: !210, line: 97, type: !214, isLocal: true, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !211, globals: !213, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!211 = !{!43, !141, !212}
!212 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!213 = !{!207}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !216)
!215 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !218)
!217 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !218, file: !217, line: 15, baseType: !44, size: 32)
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
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !234, retainedTypes: !65, splitDebugInlining: false, nameTableKind: None)
!233 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!234 = !{!235}
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !233, line: 40, baseType: !14, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !240, retainedTypes: !257, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!240 = !{!241, !248}
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !242, file: !239, line: 188, baseType: !14, size: 32, elements: !246)
!242 = distinct !DISubprogram(name: "x2nrealloc", scope: !239, file: !239, line: 176, type: !243, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!243 = !DISubroutineType(types: !244)
!244 = !{!43, !43, !245, !141}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!246 = !{!247}
!247 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !249, file: !239, line: 228, baseType: !14, size: 32, elements: !246)
!249 = distinct !DISubprogram(name: "xpalloc", scope: !239, file: !239, line: 223, type: !250, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!250 = !DISubroutineType(types: !251)
!251 = !{!43, !43, !252, !253, !255, !253}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !254, line: 130, baseType: !255)
!254 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !142, line: 35, baseType: !256)
!256 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!257 = !{!117, !43, !60, !256, !143}
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!259 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!261 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!263 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !65, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !65, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !65, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!275 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !280, splitDebugInlining: false, nameTableKind: None)
!279 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!280 = !{!60, !143, !43}
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!282 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !65, splitDebugInlining: false, nameTableKind: None)
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
!299 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 37, type: !300, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !47)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !44}
!302 = !DILocalVariable(name: "status", arg: 1, scope: !299, file: !10, line: 37, type: !44)
!303 = !DILocation(line: 37, column: 12, scope: !299)
!304 = !DILocation(line: 39, column: 7, scope: !305)
!305 = distinct !DILexicalBlock(scope: !299, file: !10, line: 39, column: 7)
!306 = !DILocation(line: 39, column: 14, scope: !305)
!307 = !DILocation(line: 39, column: 7, scope: !299)
!308 = !DILocation(line: 40, column: 5, scope: !305)
!309 = !DILocation(line: 40, column: 5, scope: !310)
!310 = distinct !DILexicalBlock(scope: !305, file: !10, line: 40, column: 5)
!311 = !DILocation(line: 43, column: 15, scope: !312)
!312 = distinct !DILexicalBlock(scope: !305, file: !10, line: 42, column: 5)
!313 = !DILocation(line: 45, column: 23, scope: !312)
!314 = !DILocation(line: 45, column: 37, scope: !312)
!315 = !DILocation(line: 43, column: 7, scope: !312)
!316 = !DILocation(line: 46, column: 7, scope: !312)
!317 = !DILocation(line: 49, column: 7, scope: !312)
!318 = !DILocation(line: 50, column: 7, scope: !312)
!319 = !DILocation(line: 51, column: 7, scope: !312)
!320 = !DILocation(line: 53, column: 9, scope: !299)
!321 = !DILocation(line: 53, column: 3, scope: !299)
!322 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!323 = !DILocation(line: 573, column: 34, scope: !2)
!324 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!325 = !DILocation(line: 573, column: 55, scope: !2)
!326 = !DILocation(line: 581, column: 7, scope: !327)
!327 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!328 = !DILocation(line: 581, column: 19, scope: !327)
!329 = !DILocation(line: 581, column: 7, scope: !2)
!330 = !DILocalVariable(name: "term", scope: !331, file: !3, line: 585, type: !6)
!331 = distinct !DILexicalBlock(scope: !327, file: !3, line: 582, column: 5)
!332 = !DILocation(line: 585, column: 19, scope: !331)
!333 = !DILocation(line: 585, column: 26, scope: !331)
!334 = !DILocation(line: 586, column: 23, scope: !331)
!335 = !DILocation(line: 586, column: 28, scope: !331)
!336 = !DILocation(line: 586, column: 33, scope: !331)
!337 = !DILocation(line: 586, column: 32, scope: !331)
!338 = !DILocation(line: 586, column: 38, scope: !331)
!339 = !DILocation(line: 586, column: 48, scope: !331)
!340 = !DILocation(line: 586, column: 41, scope: !331)
!341 = !DILocation(line: 586, column: 19, scope: !331)
!342 = !DILocation(line: 587, column: 5, scope: !331)
!343 = !DILocation(line: 588, column: 7, scope: !344)
!344 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!345 = !DILocation(line: 588, column: 7, scope: !2)
!346 = !DILocation(line: 590, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !3, line: 589, column: 5)
!348 = !DILocation(line: 591, column: 7, scope: !347)
!349 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !60)
!350 = !DILocation(line: 594, column: 8, scope: !2)
!351 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!352 = !DILocation(line: 595, column: 15, scope: !2)
!353 = !DILocation(line: 595, column: 28, scope: !2)
!354 = !DILocation(line: 595, column: 45, scope: !2)
!355 = !DILocation(line: 595, column: 37, scope: !2)
!356 = !DILocation(line: 595, column: 35, scope: !2)
!357 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!358 = !DILocation(line: 596, column: 15, scope: !2)
!359 = !DILocation(line: 596, column: 37, scope: !2)
!360 = !DILocation(line: 596, column: 29, scope: !2)
!361 = !DILocation(line: 597, column: 8, scope: !362)
!362 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!363 = !DILocation(line: 597, column: 7, scope: !2)
!364 = !DILocation(line: 599, column: 21, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !3, line: 598, column: 5)
!366 = !DILocation(line: 599, column: 19, scope: !365)
!367 = !DILocation(line: 602, column: 20, scope: !365)
!368 = !DILocation(line: 603, column: 5, scope: !365)
!369 = !DILocation(line: 604, column: 12, scope: !370)
!370 = distinct !DILexicalBlock(scope: !362, file: !3, line: 604, column: 12)
!371 = !DILocation(line: 604, column: 27, scope: !370)
!372 = !DILocation(line: 604, column: 24, scope: !370)
!373 = !DILocation(line: 604, column: 12, scope: !362)
!374 = !DILocalVariable(name: "s", scope: !375, file: !3, line: 608, type: !6)
!375 = distinct !DILexicalBlock(scope: !370, file: !3, line: 605, column: 5)
!376 = !DILocation(line: 608, column: 19, scope: !375)
!377 = !DILocation(line: 608, column: 23, scope: !375)
!378 = !DILocalVariable(name: "spaces", scope: !375, file: !3, line: 609, type: !141)
!379 = !DILocation(line: 609, column: 14, scope: !375)
!380 = !DILocation(line: 610, column: 7, scope: !375)
!381 = !DILocation(line: 610, column: 14, scope: !375)
!382 = !DILocation(line: 610, column: 18, scope: !375)
!383 = !DILocation(line: 610, column: 16, scope: !375)
!384 = !DILocation(line: 610, column: 30, scope: !375)
!385 = !DILocation(line: 610, column: 33, scope: !375)
!386 = !DILocation(line: 610, column: 40, scope: !375)
!387 = !DILocation(line: 0, scope: !375)
!388 = !DILocation(line: 611, column: 21, scope: !375)
!389 = !DILocation(line: 611, column: 20, scope: !375)
!390 = !DILocation(line: 611, column: 19, scope: !375)
!391 = !DILocation(line: 611, column: 16, scope: !375)
!392 = distinct !{!392, !380, !388, !393}
!393 = !{!"llvm.loop.mustprogress"}
!394 = !DILocation(line: 612, column: 11, scope: !395)
!395 = distinct !DILexicalBlock(scope: !375, file: !3, line: 612, column: 11)
!396 = !DILocation(line: 612, column: 18, scope: !395)
!397 = !DILocation(line: 612, column: 11, scope: !375)
!398 = !DILocation(line: 615, column: 25, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !3, line: 613, column: 9)
!400 = !DILocation(line: 615, column: 23, scope: !399)
!401 = !DILocation(line: 616, column: 24, scope: !399)
!402 = !DILocation(line: 617, column: 9, scope: !399)
!403 = !DILocation(line: 618, column: 5, scope: !375)
!404 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !141)
!405 = !DILocation(line: 620, column: 10, scope: !2)
!406 = !DILocation(line: 620, column: 32, scope: !2)
!407 = !DILocation(line: 620, column: 23, scope: !2)
!408 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!409 = !DILocation(line: 625, column: 15, scope: !2)
!410 = !DILocation(line: 625, column: 27, scope: !2)
!411 = !DILocation(line: 625, column: 41, scope: !2)
!412 = !DILocation(line: 625, column: 39, scope: !2)
!413 = !DILocation(line: 626, column: 3, scope: !2)
!414 = !DILocation(line: 626, column: 11, scope: !2)
!415 = !DILocation(line: 626, column: 10, scope: !2)
!416 = !DILocation(line: 626, column: 21, scope: !2)
!417 = !DILocation(line: 626, column: 25, scope: !2)
!418 = !DILocation(line: 626, column: 24, scope: !2)
!419 = !DILocation(line: 626, column: 35, scope: !2)
!420 = !DILocation(line: 0, scope: !2)
!421 = !DILocation(line: 628, column: 12, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !3, line: 628, column: 11)
!423 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!424 = !DILocation(line: 628, column: 11, scope: !422)
!425 = !DILocation(line: 628, column: 22, scope: !422)
!426 = !DILocation(line: 628, column: 29, scope: !422)
!427 = !DILocation(line: 628, column: 34, scope: !422)
!428 = !DILocation(line: 628, column: 44, scope: !422)
!429 = !DILocation(line: 628, column: 32, scope: !422)
!430 = !DILocation(line: 628, column: 49, scope: !422)
!431 = !DILocation(line: 628, column: 11, scope: !423)
!432 = !DILocation(line: 629, column: 22, scope: !422)
!433 = !DILocation(line: 629, column: 9, scope: !422)
!434 = !DILocation(line: 630, column: 11, scope: !435)
!435 = distinct !DILexicalBlock(scope: !423, file: !3, line: 630, column: 11)
!436 = !DILocation(line: 630, column: 11, scope: !423)
!437 = !DILocation(line: 632, column: 16, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !3, line: 632, column: 15)
!439 = distinct !DILexicalBlock(scope: !435, file: !3, line: 631, column: 9)
!440 = !DILocation(line: 632, column: 15, scope: !438)
!441 = !DILocation(line: 632, column: 26, scope: !438)
!442 = !DILocation(line: 632, column: 34, scope: !438)
!443 = !DILocation(line: 632, column: 37, scope: !438)
!444 = !DILocation(line: 632, column: 15, scope: !439)
!445 = !DILocation(line: 633, column: 13, scope: !438)
!446 = !DILocation(line: 636, column: 16, scope: !447)
!447 = distinct !DILexicalBlock(scope: !439, file: !3, line: 636, column: 15)
!448 = !DILocation(line: 636, column: 29, scope: !447)
!449 = !DILocation(line: 636, column: 34, scope: !447)
!450 = !DILocation(line: 636, column: 44, scope: !447)
!451 = !DILocation(line: 636, column: 32, scope: !447)
!452 = !DILocation(line: 636, column: 49, scope: !447)
!453 = !DILocation(line: 636, column: 15, scope: !439)
!454 = !DILocation(line: 637, column: 13, scope: !447)
!455 = !DILocation(line: 638, column: 9, scope: !439)
!456 = !DILocation(line: 640, column: 16, scope: !423)
!457 = distinct !{!457, !413, !458, !393}
!458 = !DILocation(line: 641, column: 5, scope: !2)
!459 = !DILocation(line: 644, column: 3, scope: !2)
!460 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!461 = !DILocation(line: 648, column: 15, scope: !2)
!462 = !DILocation(line: 648, column: 38, scope: !2)
!463 = !DILocation(line: 648, column: 31, scope: !2)
!464 = !DILocation(line: 649, column: 38, scope: !2)
!465 = !DILocation(line: 649, column: 31, scope: !2)
!466 = !DILocation(line: 650, column: 38, scope: !2)
!467 = !DILocation(line: 650, column: 31, scope: !2)
!468 = !DILocation(line: 651, column: 38, scope: !2)
!469 = !DILocation(line: 651, column: 31, scope: !2)
!470 = !DILocation(line: 652, column: 38, scope: !2)
!471 = !DILocation(line: 652, column: 31, scope: !2)
!472 = !DILocation(line: 653, column: 38, scope: !2)
!473 = !DILocation(line: 653, column: 31, scope: !2)
!474 = !DILocation(line: 654, column: 38, scope: !2)
!475 = !DILocation(line: 654, column: 31, scope: !2)
!476 = !DILocation(line: 655, column: 38, scope: !2)
!477 = !DILocation(line: 655, column: 31, scope: !2)
!478 = !DILocation(line: 656, column: 38, scope: !2)
!479 = !DILocation(line: 656, column: 31, scope: !2)
!480 = !DILocation(line: 657, column: 38, scope: !2)
!481 = !DILocation(line: 657, column: 31, scope: !2)
!482 = !DILocation(line: 658, column: 31, scope: !2)
!483 = !DILocation(line: 663, column: 7, scope: !484)
!484 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!485 = !DILocation(line: 664, column: 7, scope: !484)
!486 = !DILocation(line: 664, column: 10, scope: !484)
!487 = !DILocation(line: 663, column: 7, scope: !2)
!488 = !DILocation(line: 670, column: 15, scope: !489)
!489 = distinct !DILexicalBlock(scope: !484, file: !3, line: 665, column: 5)
!490 = !DILocation(line: 670, column: 28, scope: !489)
!491 = !DILocation(line: 670, column: 47, scope: !489)
!492 = !DILocation(line: 670, column: 41, scope: !489)
!493 = !DILocation(line: 670, column: 59, scope: !489)
!494 = !DILocation(line: 669, column: 7, scope: !489)
!495 = !DILocation(line: 671, column: 5, scope: !489)
!496 = !DILocation(line: 676, column: 48, scope: !497)
!497 = distinct !DILexicalBlock(scope: !484, file: !3, line: 673, column: 5)
!498 = !DILocation(line: 677, column: 21, scope: !497)
!499 = !DILocation(line: 677, column: 15, scope: !497)
!500 = !DILocation(line: 677, column: 33, scope: !497)
!501 = !DILocation(line: 676, column: 7, scope: !497)
!502 = !DILocation(line: 679, column: 3, scope: !2)
!503 = !DILocation(line: 683, column: 3, scope: !2)
!504 = !DILocation(line: 686, column: 3, scope: !2)
!505 = !DILocation(line: 688, column: 3, scope: !2)
!506 = !DILocation(line: 691, column: 3, scope: !2)
!507 = !DILocation(line: 695, column: 3, scope: !2)
!508 = !DILocation(line: 696, column: 1, scope: !2)
!509 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !510, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !47)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !6}
!512 = !DILocalVariable(name: "program", arg: 1, scope: !509, file: !3, line: 836, type: !6)
!513 = !DILocation(line: 836, column: 34, scope: !509)
!514 = !DILocalVariable(name: "infomap", scope: !509, file: !3, line: 838, type: !515)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 896, elements: !521)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !509, file: !3, line: 838, size: 128, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !517, file: !3, line: 838, baseType: !6, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !517, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!521 = !{!522}
!522 = !DISubrange(count: 7)
!523 = !DILocation(line: 838, column: 67, scope: !509)
!524 = !DILocalVariable(name: "node", scope: !509, file: !3, line: 848, type: !6)
!525 = !DILocation(line: 848, column: 15, scope: !509)
!526 = !DILocation(line: 848, column: 22, scope: !509)
!527 = !DILocalVariable(name: "map_prog", scope: !509, file: !3, line: 849, type: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!529 = !DILocation(line: 849, column: 25, scope: !509)
!530 = !DILocation(line: 849, column: 36, scope: !509)
!531 = !DILocation(line: 851, column: 3, scope: !509)
!532 = !DILocation(line: 851, column: 10, scope: !509)
!533 = !DILocation(line: 851, column: 20, scope: !509)
!534 = !DILocation(line: 851, column: 28, scope: !509)
!535 = !DILocation(line: 851, column: 40, scope: !509)
!536 = !DILocation(line: 851, column: 49, scope: !509)
!537 = !DILocation(line: 851, column: 59, scope: !509)
!538 = !DILocation(line: 851, column: 33, scope: !509)
!539 = !DILocation(line: 851, column: 31, scope: !509)
!540 = !DILocation(line: 0, scope: !509)
!541 = !DILocation(line: 852, column: 13, scope: !509)
!542 = distinct !{!542, !531, !541, !393}
!543 = !DILocation(line: 854, column: 7, scope: !544)
!544 = distinct !DILexicalBlock(scope: !509, file: !3, line: 854, column: 7)
!545 = !DILocation(line: 854, column: 17, scope: !544)
!546 = !DILocation(line: 854, column: 7, scope: !509)
!547 = !DILocation(line: 855, column: 12, scope: !544)
!548 = !DILocation(line: 855, column: 22, scope: !544)
!549 = !DILocation(line: 855, column: 10, scope: !544)
!550 = !DILocation(line: 855, column: 5, scope: !544)
!551 = !DILocation(line: 857, column: 3, scope: !509)
!552 = !DILocalVariable(name: "lc_messages", scope: !509, file: !3, line: 861, type: !6)
!553 = !DILocation(line: 861, column: 15, scope: !509)
!554 = !DILocation(line: 861, column: 29, scope: !509)
!555 = !DILocation(line: 862, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !509, file: !3, line: 862, column: 7)
!557 = !DILocation(line: 862, column: 19, scope: !556)
!558 = !DILocation(line: 862, column: 22, scope: !556)
!559 = !DILocation(line: 862, column: 7, scope: !509)
!560 = !DILocation(line: 868, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !556, file: !3, line: 863, column: 5)
!562 = !DILocation(line: 870, column: 5, scope: !561)
!563 = !DILocalVariable(name: "url_program", scope: !509, file: !3, line: 874, type: !6)
!564 = !DILocation(line: 874, column: 15, scope: !509)
!565 = !DILocation(line: 874, column: 36, scope: !509)
!566 = !DILocation(line: 874, column: 29, scope: !509)
!567 = !DILocation(line: 874, column: 61, scope: !509)
!568 = !DILocation(line: 875, column: 11, scope: !509)
!569 = !DILocation(line: 876, column: 24, scope: !509)
!570 = !DILocation(line: 875, column: 3, scope: !509)
!571 = !DILocation(line: 877, column: 11, scope: !509)
!572 = !DILocation(line: 878, column: 11, scope: !509)
!573 = !DILocation(line: 878, column: 17, scope: !509)
!574 = !DILocation(line: 878, column: 25, scope: !509)
!575 = !DILocation(line: 878, column: 22, scope: !509)
!576 = !DILocation(line: 877, column: 3, scope: !509)
!577 = !DILocation(line: 879, column: 1, scope: !509)
!578 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 57, type: !579, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !47)
!579 = !DISubroutineType(types: !580)
!580 = !{!44, !44, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!582 = !DILocalVariable(name: "argc", arg: 1, scope: !578, file: !10, line: 57, type: !44)
!583 = !DILocation(line: 57, column: 11, scope: !578)
!584 = !DILocalVariable(name: "argv", arg: 2, scope: !578, file: !10, line: 57, type: !581)
!585 = !DILocation(line: 57, column: 24, scope: !578)
!586 = !DILocation(line: 60, column: 21, scope: !578)
!587 = !DILocation(line: 60, column: 3, scope: !578)
!588 = !DILocation(line: 61, column: 3, scope: !578)
!589 = !DILocation(line: 62, column: 3, scope: !578)
!590 = !DILocation(line: 63, column: 3, scope: !578)
!591 = !DILocation(line: 65, column: 3, scope: !578)
!592 = !DILocation(line: 67, column: 36, scope: !578)
!593 = !DILocation(line: 67, column: 42, scope: !578)
!594 = !DILocation(line: 68, column: 36, scope: !578)
!595 = !DILocation(line: 68, column: 58, scope: !578)
!596 = !DILocation(line: 67, column: 3, scope: !578)
!597 = !DILocation(line: 71, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !578, file: !10, line: 71, column: 7)
!599 = !DILocation(line: 71, column: 14, scope: !598)
!600 = !DILocation(line: 71, column: 21, scope: !598)
!601 = !DILocation(line: 71, column: 12, scope: !598)
!602 = !DILocation(line: 71, column: 7, scope: !578)
!603 = !DILocation(line: 73, column: 11, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !10, line: 73, column: 11)
!605 = distinct !DILexicalBlock(scope: !598, file: !10, line: 72, column: 5)
!606 = !DILocation(line: 73, column: 18, scope: !604)
!607 = !DILocation(line: 73, column: 25, scope: !604)
!608 = !DILocation(line: 73, column: 16, scope: !604)
!609 = !DILocation(line: 73, column: 11, scope: !605)
!610 = !DILocation(line: 74, column: 9, scope: !604)
!611 = !DILocation(line: 76, column: 9, scope: !604)
!612 = !DILocation(line: 77, column: 7, scope: !605)
!613 = !DILocation(line: 80, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !578, file: !10, line: 80, column: 7)
!615 = !DILocation(line: 80, column: 14, scope: !614)
!616 = !DILocation(line: 80, column: 20, scope: !614)
!617 = !DILocation(line: 80, column: 18, scope: !614)
!618 = !DILocation(line: 80, column: 7, scope: !578)
!619 = !DILocation(line: 82, column: 7, scope: !620)
!620 = distinct !DILexicalBlock(scope: !614, file: !10, line: 81, column: 5)
!621 = !DILocation(line: 83, column: 7, scope: !620)
!622 = !DILocation(line: 86, column: 13, scope: !623)
!623 = distinct !DILexicalBlock(scope: !578, file: !10, line: 86, column: 7)
!624 = !DILocation(line: 86, column: 18, scope: !623)
!625 = !DILocation(line: 86, column: 27, scope: !623)
!626 = !DILocation(line: 86, column: 32, scope: !623)
!627 = !DILocation(line: 86, column: 39, scope: !623)
!628 = !DILocation(line: 86, column: 7, scope: !623)
!629 = !DILocation(line: 86, column: 45, scope: !623)
!630 = !DILocation(line: 86, column: 7, scope: !578)
!631 = !DILocation(line: 87, column: 5, scope: !623)
!632 = !DILocation(line: 90, column: 3, scope: !578)
!633 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !56, file: !56, line: 50, type: !510, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !47)
!634 = !DILocalVariable(name: "file", arg: 1, scope: !633, file: !56, line: 50, type: !6)
!635 = !DILocation(line: 50, column: 41, scope: !633)
!636 = !DILocation(line: 52, column: 15, scope: !633)
!637 = !DILocation(line: 52, column: 13, scope: !633)
!638 = !DILocation(line: 53, column: 1, scope: !633)
!639 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !56, file: !56, line: 87, type: !640, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !47)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !60}
!642 = !DILocalVariable(name: "ignore", arg: 1, scope: !639, file: !56, line: 87, type: !60)
!643 = !DILocation(line: 87, column: 37, scope: !639)
!644 = !DILocation(line: 89, column: 18, scope: !639)
!645 = !DILocation(line: 89, column: 16, scope: !639)
!646 = !DILocation(line: 90, column: 1, scope: !639)
!647 = distinct !DISubprogram(name: "close_stdout", scope: !56, file: !56, line: 116, type: !93, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !47)
!648 = !DILocation(line: 118, column: 21, scope: !649)
!649 = distinct !DILexicalBlock(scope: !647, file: !56, line: 118, column: 7)
!650 = !DILocation(line: 118, column: 7, scope: !649)
!651 = !DILocation(line: 118, column: 29, scope: !649)
!652 = !DILocation(line: 119, column: 7, scope: !649)
!653 = !DILocation(line: 119, column: 12, scope: !649)
!654 = !DILocation(line: 119, column: 25, scope: !649)
!655 = !DILocation(line: 119, column: 28, scope: !649)
!656 = !DILocation(line: 119, column: 34, scope: !649)
!657 = !DILocation(line: 118, column: 7, scope: !647)
!658 = !DILocalVariable(name: "write_error", scope: !659, file: !56, line: 121, type: !6)
!659 = distinct !DILexicalBlock(scope: !649, file: !56, line: 120, column: 5)
!660 = !DILocation(line: 121, column: 19, scope: !659)
!661 = !DILocation(line: 121, column: 33, scope: !659)
!662 = !DILocation(line: 122, column: 11, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !56, line: 122, column: 11)
!664 = !DILocation(line: 122, column: 11, scope: !659)
!665 = !DILocation(line: 123, column: 9, scope: !663)
!666 = !DILocation(line: 126, column: 9, scope: !663)
!667 = !DILocation(line: 128, column: 14, scope: !659)
!668 = !DILocation(line: 128, column: 7, scope: !659)
!669 = !DILocation(line: 133, column: 42, scope: !670)
!670 = distinct !DILexicalBlock(scope: !647, file: !56, line: 133, column: 7)
!671 = !DILocation(line: 133, column: 28, scope: !670)
!672 = !DILocation(line: 133, column: 50, scope: !670)
!673 = !DILocation(line: 133, column: 7, scope: !647)
!674 = !DILocation(line: 134, column: 12, scope: !670)
!675 = !DILocation(line: 134, column: 5, scope: !670)
!676 = !DILocation(line: 135, column: 1, scope: !647)
!677 = distinct !DISubprogram(name: "verror", scope: !64, file: !64, line: 251, type: !678, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !47)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !44, !44, !6, !72}
!680 = !DILocalVariable(name: "status", arg: 1, scope: !677, file: !64, line: 251, type: !44)
!681 = !DILocation(line: 251, column: 1, scope: !677)
!682 = !DILocalVariable(name: "errnum", arg: 2, scope: !677, file: !64, line: 251, type: !44)
!683 = !DILocalVariable(name: "message", arg: 3, scope: !677, file: !64, line: 251, type: !6)
!684 = !DILocalVariable(name: "args", arg: 4, scope: !677, file: !64, line: 251, type: !72)
!685 = !DILocation(line: 261, column: 3, scope: !677)
!686 = !DILocation(line: 265, column: 7, scope: !687)
!687 = distinct !DILexicalBlock(scope: !677, file: !64, line: 265, column: 7)
!688 = !DILocation(line: 265, column: 7, scope: !677)
!689 = !DILocation(line: 266, column: 7, scope: !687)
!690 = !DILocation(line: 266, column: 5, scope: !687)
!691 = !DILocation(line: 272, column: 16, scope: !692)
!692 = distinct !DILexicalBlock(scope: !687, file: !64, line: 268, column: 5)
!693 = !DILocation(line: 272, column: 32, scope: !692)
!694 = !DILocation(line: 272, column: 7, scope: !692)
!695 = !DILocation(line: 276, column: 3, scope: !677)
!696 = !DILocation(line: 282, column: 1, scope: !677)
!697 = distinct !DISubprogram(name: "flush_stdout", scope: !64, file: !64, line: 163, type: !93, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !47)
!698 = !DILocalVariable(name: "stdout_fd", scope: !697, file: !64, line: 166, type: !44)
!699 = !DILocation(line: 166, column: 7, scope: !697)
!700 = !DILocation(line: 172, column: 13, scope: !697)
!701 = !DILocation(line: 182, column: 12, scope: !702)
!702 = distinct !DILexicalBlock(scope: !697, file: !64, line: 182, column: 7)
!703 = !DILocation(line: 182, column: 9, scope: !702)
!704 = !DILocation(line: 182, column: 22, scope: !702)
!705 = !DILocation(line: 182, column: 34, scope: !702)
!706 = !DILocation(line: 182, column: 25, scope: !702)
!707 = !DILocation(line: 182, column: 7, scope: !697)
!708 = !DILocation(line: 184, column: 5, scope: !702)
!709 = !DILocation(line: 185, column: 1, scope: !697)
!710 = distinct !DISubprogram(name: "error_tail", scope: !64, file: !64, line: 219, type: !678, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !47)
!711 = !DILocalVariable(name: "status", arg: 1, scope: !710, file: !64, line: 219, type: !44)
!712 = !DILocation(line: 219, column: 1, scope: !710)
!713 = !DILocalVariable(name: "errnum", arg: 2, scope: !710, file: !64, line: 219, type: !44)
!714 = !DILocalVariable(name: "message", arg: 3, scope: !710, file: !64, line: 219, type: !6)
!715 = !DILocalVariable(name: "args", arg: 4, scope: !710, file: !64, line: 219, type: !72)
!716 = !DILocation(line: 229, column: 13, scope: !710)
!717 = !DILocation(line: 229, column: 21, scope: !710)
!718 = !DILocation(line: 229, column: 3, scope: !710)
!719 = !DILocation(line: 232, column: 3, scope: !710)
!720 = !DILocation(line: 233, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !710, file: !64, line: 233, column: 7)
!722 = !DILocation(line: 233, column: 7, scope: !710)
!723 = !DILocation(line: 234, column: 26, scope: !721)
!724 = !DILocation(line: 234, column: 5, scope: !721)
!725 = !DILocation(line: 238, column: 3, scope: !710)
!726 = !DILocation(line: 240, column: 3, scope: !710)
!727 = !DILocation(line: 241, column: 7, scope: !728)
!728 = distinct !DILexicalBlock(scope: !710, file: !64, line: 241, column: 7)
!729 = !DILocation(line: 241, column: 7, scope: !710)
!730 = !DILocation(line: 242, column: 11, scope: !728)
!731 = !DILocation(line: 242, column: 5, scope: !728)
!732 = !DILocation(line: 243, column: 1, scope: !710)
!733 = distinct !DISubprogram(name: "print_errno_message", scope: !64, file: !64, line: 188, type: !300, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !47)
!734 = !DILocalVariable(name: "errnum", arg: 1, scope: !733, file: !64, line: 188, type: !44)
!735 = !DILocation(line: 188, column: 26, scope: !733)
!736 = !DILocalVariable(name: "s", scope: !733, file: !64, line: 190, type: !6)
!737 = !DILocation(line: 190, column: 15, scope: !733)
!738 = !DILocalVariable(name: "errbuf", scope: !733, file: !64, line: 193, type: !739)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 1024)
!742 = !DILocation(line: 193, column: 8, scope: !733)
!743 = !DILocation(line: 195, column: 21, scope: !733)
!744 = !DILocation(line: 195, column: 29, scope: !733)
!745 = !DILocation(line: 195, column: 7, scope: !733)
!746 = !DILocation(line: 195, column: 5, scope: !733)
!747 = !DILocation(line: 207, column: 9, scope: !748)
!748 = distinct !DILexicalBlock(scope: !733, file: !64, line: 207, column: 7)
!749 = !DILocation(line: 207, column: 7, scope: !733)
!750 = !DILocation(line: 208, column: 9, scope: !748)
!751 = !DILocation(line: 208, column: 7, scope: !748)
!752 = !DILocation(line: 208, column: 5, scope: !748)
!753 = !DILocation(line: 214, column: 12, scope: !733)
!754 = !DILocation(line: 214, column: 28, scope: !733)
!755 = !DILocation(line: 214, column: 3, scope: !733)
!756 = !DILocation(line: 216, column: 1, scope: !733)
!757 = distinct !DISubprogram(name: "is_open", scope: !64, file: !64, line: 145, type: !758, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !47)
!758 = !DISubroutineType(types: !759)
!759 = !{!44, !44}
!760 = !DILocalVariable(name: "fd", arg: 1, scope: !757, file: !64, line: 145, type: !44)
!761 = !DILocation(line: 145, column: 14, scope: !757)
!762 = !DILocation(line: 157, column: 22, scope: !757)
!763 = !DILocation(line: 157, column: 15, scope: !757)
!764 = !DILocation(line: 157, column: 12, scope: !757)
!765 = !DILocation(line: 157, column: 3, scope: !757)
!766 = distinct !DISubprogram(name: "error", scope: !64, file: !64, line: 285, type: !767, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !47)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !44, !44, !6, null}
!769 = !DILocalVariable(name: "status", arg: 1, scope: !766, file: !64, line: 285, type: !44)
!770 = !DILocation(line: 285, column: 12, scope: !766)
!771 = !DILocalVariable(name: "errnum", arg: 2, scope: !766, file: !64, line: 285, type: !44)
!772 = !DILocation(line: 285, column: 24, scope: !766)
!773 = !DILocalVariable(name: "message", arg: 3, scope: !766, file: !64, line: 285, type: !6)
!774 = !DILocation(line: 285, column: 44, scope: !766)
!775 = !DILocalVariable(name: "ap", scope: !766, file: !64, line: 287, type: !72)
!776 = !DILocation(line: 287, column: 11, scope: !766)
!777 = !DILocation(line: 288, column: 3, scope: !766)
!778 = !DILocation(line: 289, column: 3, scope: !766)
!779 = !DILocation(line: 290, column: 3, scope: !766)
!780 = !DILocation(line: 291, column: 1, scope: !766)
!781 = !DILocalVariable(name: "status", arg: 1, scope: !69, file: !64, line: 298, type: !44)
!782 = !DILocation(line: 298, column: 1, scope: !69)
!783 = !DILocalVariable(name: "errnum", arg: 2, scope: !69, file: !64, line: 298, type: !44)
!784 = !DILocalVariable(name: "file_name", arg: 3, scope: !69, file: !64, line: 298, type: !6)
!785 = !DILocalVariable(name: "line_number", arg: 4, scope: !69, file: !64, line: 298, type: !14)
!786 = !DILocalVariable(name: "message", arg: 5, scope: !69, file: !64, line: 298, type: !6)
!787 = !DILocalVariable(name: "args", arg: 6, scope: !69, file: !64, line: 298, type: !72)
!788 = !DILocation(line: 302, column: 7, scope: !789)
!789 = distinct !DILexicalBlock(scope: !69, file: !64, line: 302, column: 7)
!790 = !DILocation(line: 302, column: 7, scope: !69)
!791 = !DILocation(line: 307, column: 11, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !64, line: 307, column: 11)
!793 = distinct !DILexicalBlock(scope: !789, file: !64, line: 303, column: 5)
!794 = !DILocation(line: 307, column: 30, scope: !792)
!795 = !DILocation(line: 307, column: 27, scope: !792)
!796 = !DILocation(line: 308, column: 11, scope: !792)
!797 = !DILocation(line: 308, column: 15, scope: !792)
!798 = !DILocation(line: 308, column: 28, scope: !792)
!799 = !DILocation(line: 308, column: 25, scope: !792)
!800 = !DILocation(line: 309, column: 15, scope: !792)
!801 = !DILocation(line: 309, column: 19, scope: !792)
!802 = !DILocation(line: 309, column: 33, scope: !792)
!803 = !DILocation(line: 310, column: 19, scope: !792)
!804 = !DILocation(line: 310, column: 22, scope: !792)
!805 = !DILocation(line: 310, column: 32, scope: !792)
!806 = !DILocation(line: 311, column: 19, scope: !792)
!807 = !DILocation(line: 311, column: 30, scope: !792)
!808 = !DILocation(line: 311, column: 45, scope: !792)
!809 = !DILocation(line: 311, column: 22, scope: !792)
!810 = !DILocation(line: 311, column: 56, scope: !792)
!811 = !DILocation(line: 307, column: 11, scope: !793)
!812 = !DILocation(line: 314, column: 9, scope: !792)
!813 = !DILocation(line: 316, column: 23, scope: !793)
!814 = !DILocation(line: 316, column: 21, scope: !793)
!815 = !DILocation(line: 317, column: 25, scope: !793)
!816 = !DILocation(line: 317, column: 23, scope: !793)
!817 = !DILocation(line: 318, column: 5, scope: !793)
!818 = !DILocation(line: 327, column: 3, scope: !69)
!819 = !DILocation(line: 331, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !69, file: !64, line: 331, column: 7)
!821 = !DILocation(line: 331, column: 7, scope: !69)
!822 = !DILocation(line: 332, column: 7, scope: !820)
!823 = !DILocation(line: 332, column: 5, scope: !820)
!824 = !DILocation(line: 338, column: 16, scope: !825)
!825 = distinct !DILexicalBlock(scope: !820, file: !64, line: 334, column: 5)
!826 = !DILocation(line: 338, column: 31, scope: !825)
!827 = !DILocation(line: 338, column: 7, scope: !825)
!828 = !DILocation(line: 346, column: 12, scope: !69)
!829 = !DILocation(line: 346, column: 20, scope: !69)
!830 = !DILocation(line: 346, column: 30, scope: !69)
!831 = !DILocation(line: 347, column: 12, scope: !69)
!832 = !DILocation(line: 347, column: 23, scope: !69)
!833 = !DILocation(line: 346, column: 3, scope: !69)
!834 = !DILocation(line: 350, column: 3, scope: !69)
!835 = !DILocation(line: 356, column: 1, scope: !69)
!836 = distinct !DISubprogram(name: "error_at_line", scope: !64, file: !64, line: 359, type: !837, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !47)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !44, !44, !6, !14, !6, null}
!839 = !DILocalVariable(name: "status", arg: 1, scope: !836, file: !64, line: 359, type: !44)
!840 = !DILocation(line: 359, column: 20, scope: !836)
!841 = !DILocalVariable(name: "errnum", arg: 2, scope: !836, file: !64, line: 359, type: !44)
!842 = !DILocation(line: 359, column: 32, scope: !836)
!843 = !DILocalVariable(name: "file_name", arg: 3, scope: !836, file: !64, line: 359, type: !6)
!844 = !DILocation(line: 359, column: 52, scope: !836)
!845 = !DILocalVariable(name: "line_number", arg: 4, scope: !836, file: !64, line: 360, type: !14)
!846 = !DILocation(line: 360, column: 29, scope: !836)
!847 = !DILocalVariable(name: "message", arg: 5, scope: !836, file: !64, line: 360, type: !6)
!848 = !DILocation(line: 360, column: 54, scope: !836)
!849 = !DILocalVariable(name: "ap", scope: !836, file: !64, line: 362, type: !72)
!850 = !DILocation(line: 362, column: 11, scope: !836)
!851 = !DILocation(line: 363, column: 3, scope: !836)
!852 = !DILocation(line: 364, column: 3, scope: !836)
!853 = !DILocation(line: 366, column: 3, scope: !836)
!854 = !DILocation(line: 367, column: 1, scope: !836)
!855 = distinct !DISubprogram(name: "getprogname", scope: !229, file: !229, line: 54, type: !856, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !228, retainedNodes: !47)
!856 = !DISubroutineType(types: !857)
!857 = !{!6}
!858 = !DILocation(line: 58, column: 10, scope: !855)
!859 = !DILocation(line: 58, column: 3, scope: !855)
!860 = distinct !DISubprogram(name: "parse_long_options", scope: !98, file: !98, line: 45, type: !861, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !97, retainedNodes: !47)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !44, !581, !6, !6, !6, !863, null}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!864 = !DILocalVariable(name: "argc", arg: 1, scope: !860, file: !98, line: 45, type: !44)
!865 = !DILocation(line: 45, column: 25, scope: !860)
!866 = !DILocalVariable(name: "argv", arg: 2, scope: !860, file: !98, line: 46, type: !581)
!867 = !DILocation(line: 46, column: 28, scope: !860)
!868 = !DILocalVariable(name: "command_name", arg: 3, scope: !860, file: !98, line: 47, type: !6)
!869 = !DILocation(line: 47, column: 33, scope: !860)
!870 = !DILocalVariable(name: "package", arg: 4, scope: !860, file: !98, line: 48, type: !6)
!871 = !DILocation(line: 48, column: 33, scope: !860)
!872 = !DILocalVariable(name: "version", arg: 5, scope: !860, file: !98, line: 49, type: !6)
!873 = !DILocation(line: 49, column: 33, scope: !860)
!874 = !DILocalVariable(name: "usage_func", arg: 6, scope: !860, file: !98, line: 50, type: !863)
!875 = !DILocation(line: 50, column: 28, scope: !860)
!876 = !DILocalVariable(name: "saved_opterr", scope: !860, file: !98, line: 53, type: !44)
!877 = !DILocation(line: 53, column: 7, scope: !860)
!878 = !DILocation(line: 53, column: 22, scope: !860)
!879 = !DILocation(line: 56, column: 10, scope: !860)
!880 = !DILocation(line: 58, column: 7, scope: !881)
!881 = distinct !DILexicalBlock(scope: !860, file: !98, line: 58, column: 7)
!882 = !DILocation(line: 58, column: 12, scope: !881)
!883 = !DILocation(line: 58, column: 7, scope: !860)
!884 = !DILocalVariable(name: "c", scope: !885, file: !98, line: 60, type: !44)
!885 = distinct !DILexicalBlock(scope: !881, file: !98, line: 59, column: 5)
!886 = !DILocation(line: 60, column: 11, scope: !885)
!887 = !DILocation(line: 60, column: 28, scope: !885)
!888 = !DILocation(line: 60, column: 34, scope: !885)
!889 = !DILocation(line: 60, column: 15, scope: !885)
!890 = !DILocation(line: 61, column: 11, scope: !891)
!891 = distinct !DILexicalBlock(scope: !885, file: !98, line: 61, column: 11)
!892 = !DILocation(line: 61, column: 13, scope: !891)
!893 = !DILocation(line: 61, column: 11, scope: !885)
!894 = !DILocation(line: 63, column: 19, scope: !895)
!895 = distinct !DILexicalBlock(scope: !891, file: !98, line: 62, column: 9)
!896 = !DILocation(line: 63, column: 11, scope: !895)
!897 = !DILocation(line: 66, column: 17, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !98, line: 64, column: 13)
!899 = !DILocation(line: 66, column: 15, scope: !898)
!900 = !DILocation(line: 67, column: 15, scope: !898)
!901 = !DILocalVariable(name: "authors", scope: !902, file: !98, line: 71, type: !903)
!902 = distinct !DILexicalBlock(scope: !898, file: !98, line: 70, column: 15)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !73, line: 52, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !75, line: 32, baseType: !905)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !906, baseType: !907)
!906 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !79, size: 256, elements: !908)
!908 = !{!909, !910, !911, !912, !913}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !907, file: !906, line: 71, baseType: !43, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !907, file: !906, line: 71, baseType: !43, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !907, file: !906, line: 71, baseType: !43, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !907, file: !906, line: 71, baseType: !44, size: 32, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !907, file: !906, line: 71, baseType: !44, size: 32, offset: 224)
!914 = !DILocation(line: 71, column: 25, scope: !902)
!915 = !DILocation(line: 72, column: 17, scope: !902)
!916 = !DILocation(line: 73, column: 33, scope: !902)
!917 = !DILocation(line: 73, column: 41, scope: !902)
!918 = !DILocation(line: 73, column: 55, scope: !902)
!919 = !DILocation(line: 73, column: 64, scope: !902)
!920 = !DILocation(line: 73, column: 17, scope: !902)
!921 = !DILocation(line: 74, column: 17, scope: !902)
!922 = !DILocation(line: 79, column: 15, scope: !898)
!923 = !DILocation(line: 81, column: 9, scope: !895)
!924 = !DILocation(line: 82, column: 5, scope: !885)
!925 = !DILocation(line: 85, column: 12, scope: !860)
!926 = !DILocation(line: 85, column: 10, scope: !860)
!927 = !DILocation(line: 89, column: 10, scope: !860)
!928 = !DILocation(line: 90, column: 1, scope: !860)
!929 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !98, file: !98, line: 98, type: !930, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !97, retainedNodes: !47)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !44, !581, !6, !6, !6, !60, !863, null}
!932 = !DILocalVariable(name: "argc", arg: 1, scope: !929, file: !98, line: 98, type: !44)
!933 = !DILocation(line: 98, column: 38, scope: !929)
!934 = !DILocalVariable(name: "argv", arg: 2, scope: !929, file: !98, line: 99, type: !581)
!935 = !DILocation(line: 99, column: 41, scope: !929)
!936 = !DILocalVariable(name: "command_name", arg: 3, scope: !929, file: !98, line: 100, type: !6)
!937 = !DILocation(line: 100, column: 46, scope: !929)
!938 = !DILocalVariable(name: "package", arg: 4, scope: !929, file: !98, line: 101, type: !6)
!939 = !DILocation(line: 101, column: 46, scope: !929)
!940 = !DILocalVariable(name: "version", arg: 5, scope: !929, file: !98, line: 102, type: !6)
!941 = !DILocation(line: 102, column: 46, scope: !929)
!942 = !DILocalVariable(name: "scan_all", arg: 6, scope: !929, file: !98, line: 103, type: !60)
!943 = !DILocation(line: 103, column: 39, scope: !929)
!944 = !DILocalVariable(name: "usage_func", arg: 7, scope: !929, file: !98, line: 104, type: !863)
!945 = !DILocation(line: 104, column: 41, scope: !929)
!946 = !DILocalVariable(name: "saved_opterr", scope: !929, file: !98, line: 107, type: !44)
!947 = !DILocation(line: 107, column: 7, scope: !929)
!948 = !DILocation(line: 107, column: 22, scope: !929)
!949 = !DILocation(line: 110, column: 10, scope: !929)
!950 = !DILocalVariable(name: "optstring", scope: !929, file: !98, line: 112, type: !6)
!951 = !DILocation(line: 112, column: 15, scope: !929)
!952 = !DILocation(line: 112, column: 27, scope: !929)
!953 = !DILocalVariable(name: "c", scope: !929, file: !98, line: 114, type: !44)
!954 = !DILocation(line: 114, column: 7, scope: !929)
!955 = !DILocation(line: 114, column: 24, scope: !929)
!956 = !DILocation(line: 114, column: 30, scope: !929)
!957 = !DILocation(line: 114, column: 36, scope: !929)
!958 = !DILocation(line: 114, column: 11, scope: !929)
!959 = !DILocation(line: 115, column: 7, scope: !960)
!960 = distinct !DILexicalBlock(scope: !929, file: !98, line: 115, column: 7)
!961 = !DILocation(line: 115, column: 9, scope: !960)
!962 = !DILocation(line: 115, column: 7, scope: !929)
!963 = !DILocation(line: 117, column: 15, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !98, line: 116, column: 5)
!965 = !DILocation(line: 117, column: 7, scope: !964)
!966 = !DILocation(line: 120, column: 13, scope: !967)
!967 = distinct !DILexicalBlock(scope: !964, file: !98, line: 118, column: 9)
!968 = !DILocation(line: 120, column: 11, scope: !967)
!969 = !DILocation(line: 121, column: 11, scope: !967)
!970 = !DILocalVariable(name: "authors", scope: !971, file: !98, line: 125, type: !903)
!971 = distinct !DILexicalBlock(scope: !967, file: !98, line: 124, column: 11)
!972 = !DILocation(line: 125, column: 21, scope: !971)
!973 = !DILocation(line: 126, column: 13, scope: !971)
!974 = !DILocation(line: 127, column: 29, scope: !971)
!975 = !DILocation(line: 127, column: 37, scope: !971)
!976 = !DILocation(line: 127, column: 51, scope: !971)
!977 = !DILocation(line: 127, column: 60, scope: !971)
!978 = !DILocation(line: 127, column: 13, scope: !971)
!979 = !DILocation(line: 128, column: 13, scope: !971)
!980 = !DILocation(line: 132, column: 13, scope: !967)
!981 = !DILocation(line: 132, column: 26, scope: !967)
!982 = !DILocation(line: 132, column: 11, scope: !967)
!983 = !DILocation(line: 133, column: 11, scope: !967)
!984 = !DILocation(line: 135, column: 5, scope: !964)
!985 = !DILocation(line: 138, column: 12, scope: !929)
!986 = !DILocation(line: 138, column: 10, scope: !929)
!987 = !DILocation(line: 139, column: 1, scope: !929)
!988 = distinct !DISubprogram(name: "set_program_name", scope: !115, file: !115, line: 37, type: !510, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !47)
!989 = !DILocalVariable(name: "argv0", arg: 1, scope: !988, file: !115, line: 37, type: !6)
!990 = !DILocation(line: 37, column: 31, scope: !988)
!991 = !DILocalVariable(name: "slash", scope: !988, file: !115, line: 44, type: !6)
!992 = !DILocation(line: 44, column: 15, scope: !988)
!993 = !DILocation(line: 44, column: 32, scope: !988)
!994 = !DILocation(line: 44, column: 23, scope: !988)
!995 = !DILocalVariable(name: "base", scope: !988, file: !115, line: 45, type: !6)
!996 = !DILocation(line: 45, column: 15, scope: !988)
!997 = !DILocation(line: 45, column: 22, scope: !988)
!998 = !DILocation(line: 45, column: 30, scope: !988)
!999 = !DILocation(line: 45, column: 36, scope: !988)
!1000 = !DILocation(line: 45, column: 42, scope: !988)
!1001 = !DILocation(line: 46, column: 12, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !988, file: !115, line: 46, column: 7)
!1003 = !DILocation(line: 46, column: 19, scope: !1002)
!1004 = !DILocation(line: 46, column: 17, scope: !1002)
!1005 = !DILocation(line: 46, column: 9, scope: !1002)
!1006 = !DILocation(line: 46, column: 25, scope: !1002)
!1007 = !DILocation(line: 46, column: 35, scope: !1002)
!1008 = !DILocation(line: 46, column: 40, scope: !1002)
!1009 = !DILocation(line: 46, column: 28, scope: !1002)
!1010 = !DILocation(line: 46, column: 7, scope: !988)
!1011 = !DILocation(line: 48, column: 15, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1002, file: !115, line: 47, column: 5)
!1013 = !DILocation(line: 48, column: 13, scope: !1012)
!1014 = !DILocation(line: 49, column: 20, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !115, line: 49, column: 11)
!1016 = !DILocation(line: 49, column: 11, scope: !1015)
!1017 = !DILocation(line: 49, column: 36, scope: !1015)
!1018 = !DILocation(line: 49, column: 11, scope: !1012)
!1019 = !DILocation(line: 51, column: 16, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !115, line: 50, column: 9)
!1021 = !DILocation(line: 52, column: 19, scope: !1020)
!1022 = !DILocation(line: 52, column: 17, scope: !1020)
!1023 = !DILocation(line: 53, column: 9, scope: !1020)
!1024 = !DILocation(line: 54, column: 5, scope: !1012)
!1025 = !DILocation(line: 65, column: 18, scope: !988)
!1026 = !DILocation(line: 65, column: 16, scope: !988)
!1027 = !DILocation(line: 71, column: 38, scope: !988)
!1028 = !DILocation(line: 71, column: 27, scope: !988)
!1029 = !DILocation(line: 74, column: 44, scope: !988)
!1030 = !DILocation(line: 74, column: 33, scope: !988)
!1031 = !DILocation(line: 76, column: 1, scope: !988)
!1032 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !121, file: !122, line: 38, type: !6)
!1033 = !DILocation(line: 38, column: 31, scope: !121)
!1034 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !121, file: !122, line: 38, type: !6)
!1035 = !DILocation(line: 38, column: 66, scope: !121)
!1036 = !DILocalVariable(name: "translation", scope: !121, file: !122, line: 40, type: !6)
!1037 = !DILocation(line: 40, column: 15, scope: !121)
!1038 = !DILocation(line: 40, column: 38, scope: !121)
!1039 = !DILocation(line: 40, column: 29, scope: !121)
!1040 = !DILocation(line: 41, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !121, file: !122, line: 41, column: 7)
!1042 = !DILocation(line: 41, column: 22, scope: !1041)
!1043 = !DILocation(line: 41, column: 19, scope: !1041)
!1044 = !DILocation(line: 41, column: 7, scope: !121)
!1045 = !DILocation(line: 42, column: 12, scope: !1041)
!1046 = !DILocation(line: 42, column: 5, scope: !1041)
!1047 = !DILocalVariable(name: "w", scope: !121, file: !122, line: 47, type: !1048)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1049, line: 37, baseType: !1050)
!1049 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1051, line: 57, baseType: !1052)
!1051 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1051, line: 42, baseType: !14)
!1053 = !DILocation(line: 47, column: 12, scope: !121)
!1054 = !DILocalVariable(name: "mbs", scope: !121, file: !122, line: 48, type: !1055)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !1056)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1057, file: !217, line: 15, baseType: !44, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1057, file: !217, line: 20, baseType: !1061, size: 32, offset: 32)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1057, file: !217, line: 16, size: 32, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1061, file: !217, line: 18, baseType: !14, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1061, file: !217, line: 19, baseType: !226, size: 32)
!1065 = !DILocation(line: 48, column: 13, scope: !121)
!1066 = !DILocation(line: 48, column: 18, scope: !121)
!1067 = !DILocation(line: 49, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !121, file: !122, line: 49, column: 7)
!1069 = !DILocation(line: 49, column: 39, scope: !1068)
!1070 = !DILocation(line: 49, column: 44, scope: !1068)
!1071 = !DILocation(line: 49, column: 47, scope: !1068)
!1072 = !DILocation(line: 49, column: 49, scope: !1068)
!1073 = !DILocation(line: 49, column: 7, scope: !121)
!1074 = !DILocation(line: 50, column: 12, scope: !1068)
!1075 = !DILocation(line: 50, column: 5, scope: !1068)
!1076 = !DILocation(line: 53, column: 10, scope: !121)
!1077 = !DILocation(line: 53, column: 3, scope: !121)
!1078 = !DILocation(line: 54, column: 1, scope: !121)
!1079 = distinct !DISubprogram(name: "clone_quoting_options", scope: !133, file: !133, line: 113, type: !1080, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!1082, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!1083 = !DILocalVariable(name: "o", arg: 1, scope: !1079, file: !133, line: 113, type: !1082)
!1084 = !DILocation(line: 113, column: 48, scope: !1079)
!1085 = !DILocalVariable(name: "saved_errno", scope: !1079, file: !133, line: 115, type: !44)
!1086 = !DILocation(line: 115, column: 7, scope: !1079)
!1087 = !DILocation(line: 115, column: 21, scope: !1079)
!1088 = !DILocalVariable(name: "p", scope: !1079, file: !133, line: 116, type: !1082)
!1089 = !DILocation(line: 116, column: 27, scope: !1079)
!1090 = !DILocation(line: 116, column: 40, scope: !1079)
!1091 = !DILocation(line: 116, column: 44, scope: !1079)
!1092 = !DILocation(line: 116, column: 31, scope: !1079)
!1093 = !DILocation(line: 118, column: 11, scope: !1079)
!1094 = !DILocation(line: 118, column: 3, scope: !1079)
!1095 = !DILocation(line: 118, column: 9, scope: !1079)
!1096 = !DILocation(line: 119, column: 10, scope: !1079)
!1097 = !DILocation(line: 119, column: 3, scope: !1079)
!1098 = distinct !DISubprogram(name: "get_quoting_style", scope: !133, file: !133, line: 124, type: !1099, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!12, !1101}
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!1103 = !DILocalVariable(name: "o", arg: 1, scope: !1098, file: !133, line: 124, type: !1101)
!1104 = !DILocation(line: 124, column: 50, scope: !1098)
!1105 = !DILocation(line: 126, column: 11, scope: !1098)
!1106 = !DILocation(line: 126, column: 15, scope: !1098)
!1107 = !DILocation(line: 126, column: 46, scope: !1098)
!1108 = !DILocation(line: 126, column: 3, scope: !1098)
!1109 = distinct !DISubprogram(name: "set_quoting_style", scope: !133, file: !133, line: 132, type: !1110, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !1082, !12}
!1112 = !DILocalVariable(name: "o", arg: 1, scope: !1109, file: !133, line: 132, type: !1082)
!1113 = !DILocation(line: 132, column: 44, scope: !1109)
!1114 = !DILocalVariable(name: "s", arg: 2, scope: !1109, file: !133, line: 132, type: !12)
!1115 = !DILocation(line: 132, column: 66, scope: !1109)
!1116 = !DILocation(line: 134, column: 47, scope: !1109)
!1117 = !DILocation(line: 134, column: 4, scope: !1109)
!1118 = !DILocation(line: 134, column: 8, scope: !1109)
!1119 = !DILocation(line: 134, column: 39, scope: !1109)
!1120 = !DILocation(line: 134, column: 45, scope: !1109)
!1121 = !DILocation(line: 135, column: 1, scope: !1109)
!1122 = distinct !DISubprogram(name: "set_char_quoting", scope: !133, file: !133, line: 143, type: !1123, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!44, !1082, !8, !44}
!1125 = !DILocalVariable(name: "o", arg: 1, scope: !1122, file: !133, line: 143, type: !1082)
!1126 = !DILocation(line: 143, column: 43, scope: !1122)
!1127 = !DILocalVariable(name: "c", arg: 2, scope: !1122, file: !133, line: 143, type: !8)
!1128 = !DILocation(line: 143, column: 51, scope: !1122)
!1129 = !DILocalVariable(name: "i", arg: 3, scope: !1122, file: !133, line: 143, type: !44)
!1130 = !DILocation(line: 143, column: 58, scope: !1122)
!1131 = !DILocalVariable(name: "uc", scope: !1122, file: !133, line: 145, type: !212)
!1132 = !DILocation(line: 145, column: 17, scope: !1122)
!1133 = !DILocation(line: 145, column: 22, scope: !1122)
!1134 = !DILocalVariable(name: "p", scope: !1122, file: !133, line: 146, type: !1135)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1136 = !DILocation(line: 146, column: 17, scope: !1122)
!1137 = !DILocation(line: 147, column: 6, scope: !1122)
!1138 = !DILocation(line: 147, column: 10, scope: !1122)
!1139 = !DILocation(line: 147, column: 41, scope: !1122)
!1140 = !DILocation(line: 147, column: 5, scope: !1122)
!1141 = !DILocation(line: 147, column: 59, scope: !1122)
!1142 = !DILocation(line: 147, column: 62, scope: !1122)
!1143 = !DILocation(line: 147, column: 57, scope: !1122)
!1144 = !DILocalVariable(name: "shift", scope: !1122, file: !133, line: 148, type: !44)
!1145 = !DILocation(line: 148, column: 7, scope: !1122)
!1146 = !DILocation(line: 148, column: 15, scope: !1122)
!1147 = !DILocation(line: 148, column: 18, scope: !1122)
!1148 = !DILocalVariable(name: "r", scope: !1122, file: !133, line: 149, type: !14)
!1149 = !DILocation(line: 149, column: 16, scope: !1122)
!1150 = !DILocation(line: 149, column: 22, scope: !1122)
!1151 = !DILocation(line: 149, column: 21, scope: !1122)
!1152 = !DILocation(line: 149, column: 27, scope: !1122)
!1153 = !DILocation(line: 149, column: 24, scope: !1122)
!1154 = !DILocation(line: 149, column: 34, scope: !1122)
!1155 = !DILocation(line: 150, column: 11, scope: !1122)
!1156 = !DILocation(line: 150, column: 13, scope: !1122)
!1157 = !DILocation(line: 150, column: 21, scope: !1122)
!1158 = !DILocation(line: 150, column: 19, scope: !1122)
!1159 = !DILocation(line: 150, column: 27, scope: !1122)
!1160 = !DILocation(line: 150, column: 24, scope: !1122)
!1161 = !DILocation(line: 150, column: 4, scope: !1122)
!1162 = !DILocation(line: 150, column: 6, scope: !1122)
!1163 = !DILocation(line: 151, column: 10, scope: !1122)
!1164 = !DILocation(line: 151, column: 3, scope: !1122)
!1165 = distinct !DISubprogram(name: "set_quoting_flags", scope: !133, file: !133, line: 159, type: !1166, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!44, !1082, !44}
!1168 = !DILocalVariable(name: "o", arg: 1, scope: !1165, file: !133, line: 159, type: !1082)
!1169 = !DILocation(line: 159, column: 44, scope: !1165)
!1170 = !DILocalVariable(name: "i", arg: 2, scope: !1165, file: !133, line: 159, type: !44)
!1171 = !DILocation(line: 159, column: 51, scope: !1165)
!1172 = !DILocation(line: 161, column: 8, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1165, file: !133, line: 161, column: 7)
!1174 = !DILocation(line: 161, column: 7, scope: !1165)
!1175 = !DILocation(line: 162, column: 7, scope: !1173)
!1176 = !DILocation(line: 162, column: 5, scope: !1173)
!1177 = !DILocalVariable(name: "r", scope: !1165, file: !133, line: 163, type: !44)
!1178 = !DILocation(line: 163, column: 7, scope: !1165)
!1179 = !DILocation(line: 163, column: 11, scope: !1165)
!1180 = !DILocation(line: 163, column: 14, scope: !1165)
!1181 = !DILocation(line: 164, column: 14, scope: !1165)
!1182 = !DILocation(line: 164, column: 3, scope: !1165)
!1183 = !DILocation(line: 164, column: 6, scope: !1165)
!1184 = !DILocation(line: 164, column: 12, scope: !1165)
!1185 = !DILocation(line: 165, column: 10, scope: !1165)
!1186 = !DILocation(line: 165, column: 3, scope: !1165)
!1187 = distinct !DISubprogram(name: "set_custom_quoting", scope: !133, file: !133, line: 169, type: !1188, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !1082, !6, !6}
!1190 = !DILocalVariable(name: "o", arg: 1, scope: !1187, file: !133, line: 169, type: !1082)
!1191 = !DILocation(line: 169, column: 45, scope: !1187)
!1192 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1187, file: !133, line: 170, type: !6)
!1193 = !DILocation(line: 170, column: 33, scope: !1187)
!1194 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1187, file: !133, line: 170, type: !6)
!1195 = !DILocation(line: 170, column: 57, scope: !1187)
!1196 = !DILocation(line: 172, column: 8, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1187, file: !133, line: 172, column: 7)
!1198 = !DILocation(line: 172, column: 7, scope: !1187)
!1199 = !DILocation(line: 173, column: 7, scope: !1197)
!1200 = !DILocation(line: 173, column: 5, scope: !1197)
!1201 = !DILocation(line: 174, column: 3, scope: !1187)
!1202 = !DILocation(line: 174, column: 6, scope: !1187)
!1203 = !DILocation(line: 174, column: 12, scope: !1187)
!1204 = !DILocation(line: 175, column: 8, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1187, file: !133, line: 175, column: 7)
!1206 = !DILocation(line: 175, column: 19, scope: !1205)
!1207 = !DILocation(line: 175, column: 23, scope: !1205)
!1208 = !DILocation(line: 175, column: 7, scope: !1187)
!1209 = !DILocation(line: 176, column: 5, scope: !1205)
!1210 = !DILocation(line: 177, column: 19, scope: !1187)
!1211 = !DILocation(line: 177, column: 3, scope: !1187)
!1212 = !DILocation(line: 177, column: 6, scope: !1187)
!1213 = !DILocation(line: 177, column: 17, scope: !1187)
!1214 = !DILocation(line: 178, column: 20, scope: !1187)
!1215 = !DILocation(line: 178, column: 3, scope: !1187)
!1216 = !DILocation(line: 178, column: 6, scope: !1187)
!1217 = !DILocation(line: 178, column: 18, scope: !1187)
!1218 = !DILocation(line: 179, column: 1, scope: !1187)
!1219 = distinct !DISubprogram(name: "quotearg_buffer", scope: !133, file: !133, line: 774, type: !1220, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!141, !117, !141, !6, !141, !1101}
!1222 = !DILocalVariable(name: "buffer", arg: 1, scope: !1219, file: !133, line: 774, type: !117)
!1223 = !DILocation(line: 774, column: 24, scope: !1219)
!1224 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1219, file: !133, line: 774, type: !141)
!1225 = !DILocation(line: 774, column: 39, scope: !1219)
!1226 = !DILocalVariable(name: "arg", arg: 3, scope: !1219, file: !133, line: 775, type: !6)
!1227 = !DILocation(line: 775, column: 30, scope: !1219)
!1228 = !DILocalVariable(name: "argsize", arg: 4, scope: !1219, file: !133, line: 775, type: !141)
!1229 = !DILocation(line: 775, column: 42, scope: !1219)
!1230 = !DILocalVariable(name: "o", arg: 5, scope: !1219, file: !133, line: 776, type: !1101)
!1231 = !DILocation(line: 776, column: 48, scope: !1219)
!1232 = !DILocalVariable(name: "p", scope: !1219, file: !133, line: 778, type: !1101)
!1233 = !DILocation(line: 778, column: 33, scope: !1219)
!1234 = !DILocation(line: 778, column: 37, scope: !1219)
!1235 = !DILocation(line: 778, column: 41, scope: !1219)
!1236 = !DILocalVariable(name: "saved_errno", scope: !1219, file: !133, line: 779, type: !44)
!1237 = !DILocation(line: 779, column: 7, scope: !1219)
!1238 = !DILocation(line: 779, column: 21, scope: !1219)
!1239 = !DILocalVariable(name: "r", scope: !1219, file: !133, line: 780, type: !141)
!1240 = !DILocation(line: 780, column: 10, scope: !1219)
!1241 = !DILocation(line: 780, column: 40, scope: !1219)
!1242 = !DILocation(line: 780, column: 48, scope: !1219)
!1243 = !DILocation(line: 780, column: 60, scope: !1219)
!1244 = !DILocation(line: 780, column: 65, scope: !1219)
!1245 = !DILocation(line: 781, column: 40, scope: !1219)
!1246 = !DILocation(line: 781, column: 43, scope: !1219)
!1247 = !DILocation(line: 781, column: 50, scope: !1219)
!1248 = !DILocation(line: 781, column: 53, scope: !1219)
!1249 = !DILocation(line: 781, column: 60, scope: !1219)
!1250 = !DILocation(line: 781, column: 63, scope: !1219)
!1251 = !DILocation(line: 782, column: 40, scope: !1219)
!1252 = !DILocation(line: 782, column: 43, scope: !1219)
!1253 = !DILocation(line: 782, column: 55, scope: !1219)
!1254 = !DILocation(line: 782, column: 58, scope: !1219)
!1255 = !DILocation(line: 780, column: 14, scope: !1219)
!1256 = !DILocation(line: 783, column: 11, scope: !1219)
!1257 = !DILocation(line: 783, column: 3, scope: !1219)
!1258 = !DILocation(line: 783, column: 9, scope: !1219)
!1259 = !DILocation(line: 784, column: 10, scope: !1219)
!1260 = !DILocation(line: 784, column: 3, scope: !1219)
!1261 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !133, file: !133, line: 251, type: !1262, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!141, !117, !141, !6, !141, !12, !44, !1264, !6, !6}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1266 = !DILocalVariable(name: "buffer", arg: 1, scope: !1261, file: !133, line: 251, type: !117)
!1267 = !DILocation(line: 251, column: 33, scope: !1261)
!1268 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1261, file: !133, line: 251, type: !141)
!1269 = !DILocation(line: 251, column: 48, scope: !1261)
!1270 = !DILocalVariable(name: "arg", arg: 3, scope: !1261, file: !133, line: 252, type: !6)
!1271 = !DILocation(line: 252, column: 39, scope: !1261)
!1272 = !DILocalVariable(name: "argsize", arg: 4, scope: !1261, file: !133, line: 252, type: !141)
!1273 = !DILocation(line: 252, column: 51, scope: !1261)
!1274 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1261, file: !133, line: 253, type: !12)
!1275 = !DILocation(line: 253, column: 46, scope: !1261)
!1276 = !DILocalVariable(name: "flags", arg: 6, scope: !1261, file: !133, line: 253, type: !44)
!1277 = !DILocation(line: 253, column: 65, scope: !1261)
!1278 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1261, file: !133, line: 254, type: !1264)
!1279 = !DILocation(line: 254, column: 47, scope: !1261)
!1280 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1261, file: !133, line: 255, type: !6)
!1281 = !DILocation(line: 255, column: 39, scope: !1261)
!1282 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1261, file: !133, line: 256, type: !6)
!1283 = !DILocation(line: 256, column: 39, scope: !1261)
!1284 = !DILocalVariable(name: "unibyte_locale", scope: !1261, file: !133, line: 258, type: !60)
!1285 = !DILocation(line: 258, column: 8, scope: !1261)
!1286 = !DILocation(line: 258, column: 25, scope: !1261)
!1287 = !DILocation(line: 258, column: 36, scope: !1261)
!1288 = !DILocalVariable(name: "len", scope: !1261, file: !133, line: 260, type: !141)
!1289 = !DILocation(line: 260, column: 10, scope: !1261)
!1290 = !DILocalVariable(name: "orig_buffersize", scope: !1261, file: !133, line: 261, type: !141)
!1291 = !DILocation(line: 261, column: 10, scope: !1261)
!1292 = !DILocalVariable(name: "quote_string", scope: !1261, file: !133, line: 262, type: !6)
!1293 = !DILocation(line: 262, column: 15, scope: !1261)
!1294 = !DILocalVariable(name: "quote_string_len", scope: !1261, file: !133, line: 263, type: !141)
!1295 = !DILocation(line: 263, column: 10, scope: !1261)
!1296 = !DILocalVariable(name: "backslash_escapes", scope: !1261, file: !133, line: 264, type: !60)
!1297 = !DILocation(line: 264, column: 8, scope: !1261)
!1298 = !DILocalVariable(name: "elide_outer_quotes", scope: !1261, file: !133, line: 265, type: !60)
!1299 = !DILocation(line: 265, column: 8, scope: !1261)
!1300 = !DILocation(line: 265, column: 30, scope: !1261)
!1301 = !DILocation(line: 265, column: 36, scope: !1261)
!1302 = !DILocation(line: 265, column: 61, scope: !1261)
!1303 = !DILocalVariable(name: "encountered_single_quote", scope: !1261, file: !133, line: 266, type: !60)
!1304 = !DILocation(line: 266, column: 8, scope: !1261)
!1305 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1261, file: !133, line: 267, type: !60)
!1306 = !DILocation(line: 267, column: 8, scope: !1261)
!1307 = !DILocation(line: 267, column: 3, scope: !1261)
!1308 = !DILabel(scope: !1261, name: "process_input", file: !133, line: 308)
!1309 = !DILocation(line: 308, column: 2, scope: !1261)
!1310 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1261, file: !133, line: 309, type: !60)
!1311 = !DILocation(line: 309, column: 8, scope: !1261)
!1312 = !DILocation(line: 311, column: 11, scope: !1261)
!1313 = !DILocation(line: 311, column: 3, scope: !1261)
!1314 = !DILocation(line: 314, column: 21, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1261, file: !133, line: 312, column: 5)
!1316 = !DILocation(line: 315, column: 26, scope: !1315)
!1317 = !DILocation(line: 315, column: 7, scope: !1315)
!1318 = !DILocation(line: 318, column: 12, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !133, line: 318, column: 11)
!1320 = !DILocation(line: 318, column: 11, scope: !1315)
!1321 = !DILocation(line: 319, column: 9, scope: !1319)
!1322 = !DILocation(line: 319, column: 9, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !133, line: 319, column: 9)
!1324 = distinct !DILexicalBlock(scope: !1319, file: !133, line: 319, column: 9)
!1325 = !DILocation(line: 319, column: 9, scope: !1324)
!1326 = !DILocation(line: 320, column: 25, scope: !1315)
!1327 = !DILocation(line: 321, column: 20, scope: !1315)
!1328 = !DILocation(line: 322, column: 24, scope: !1315)
!1329 = !DILocation(line: 323, column: 7, scope: !1315)
!1330 = !DILocation(line: 326, column: 25, scope: !1315)
!1331 = !DILocation(line: 327, column: 26, scope: !1315)
!1332 = !DILocation(line: 328, column: 7, scope: !1315)
!1333 = !DILocation(line: 334, column: 13, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !133, line: 334, column: 13)
!1335 = distinct !DILexicalBlock(scope: !1315, file: !133, line: 333, column: 7)
!1336 = !DILocation(line: 334, column: 27, scope: !1334)
!1337 = !DILocation(line: 334, column: 13, scope: !1335)
!1338 = !DILocation(line: 357, column: 50, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1334, file: !133, line: 335, column: 11)
!1340 = !DILocation(line: 357, column: 26, scope: !1339)
!1341 = !DILocation(line: 357, column: 24, scope: !1339)
!1342 = !DILocation(line: 358, column: 51, scope: !1339)
!1343 = !DILocation(line: 358, column: 27, scope: !1339)
!1344 = !DILocation(line: 358, column: 25, scope: !1339)
!1345 = !DILocation(line: 359, column: 11, scope: !1339)
!1346 = !DILocation(line: 360, column: 14, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1335, file: !133, line: 360, column: 13)
!1348 = !DILocation(line: 360, column: 13, scope: !1335)
!1349 = !DILocalVariable(name: "lq", scope: !1350, file: !133, line: 361, type: !6)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !133, line: 361, column: 11)
!1351 = !DILocation(line: 361, column: 28, scope: !1350)
!1352 = !DILocation(line: 361, column: 33, scope: !1350)
!1353 = !DILocation(line: 361, column: 16, scope: !1350)
!1354 = !DILocation(line: 361, column: 46, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1350, file: !133, line: 361, column: 11)
!1356 = !DILocation(line: 361, column: 45, scope: !1355)
!1357 = !DILocation(line: 361, column: 11, scope: !1350)
!1358 = !DILocation(line: 362, column: 13, scope: !1355)
!1359 = !DILocation(line: 362, column: 13, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !133, line: 362, column: 13)
!1361 = distinct !DILexicalBlock(scope: !1355, file: !133, line: 362, column: 13)
!1362 = !DILocation(line: 362, column: 13, scope: !1361)
!1363 = !DILocation(line: 361, column: 52, scope: !1355)
!1364 = !DILocation(line: 361, column: 11, scope: !1355)
!1365 = distinct !{!1365, !1357, !1366, !393}
!1366 = !DILocation(line: 362, column: 13, scope: !1350)
!1367 = !DILocation(line: 363, column: 27, scope: !1335)
!1368 = !DILocation(line: 364, column: 24, scope: !1335)
!1369 = !DILocation(line: 364, column: 22, scope: !1335)
!1370 = !DILocation(line: 365, column: 36, scope: !1335)
!1371 = !DILocation(line: 365, column: 28, scope: !1335)
!1372 = !DILocation(line: 365, column: 26, scope: !1335)
!1373 = !DILocation(line: 367, column: 7, scope: !1315)
!1374 = !DILocation(line: 370, column: 25, scope: !1315)
!1375 = !DILocation(line: 370, column: 7, scope: !1315)
!1376 = !DILocation(line: 373, column: 26, scope: !1315)
!1377 = !DILocation(line: 373, column: 7, scope: !1315)
!1378 = !DILocation(line: 376, column: 12, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1315, file: !133, line: 376, column: 11)
!1380 = !DILocation(line: 376, column: 11, scope: !1315)
!1381 = !DILocation(line: 377, column: 27, scope: !1379)
!1382 = !DILocation(line: 377, column: 9, scope: !1379)
!1383 = !DILocation(line: 380, column: 21, scope: !1315)
!1384 = !DILocation(line: 381, column: 12, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1315, file: !133, line: 381, column: 11)
!1386 = !DILocation(line: 381, column: 11, scope: !1315)
!1387 = !DILocation(line: 382, column: 9, scope: !1385)
!1388 = !DILocation(line: 382, column: 9, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !133, line: 382, column: 9)
!1390 = distinct !DILexicalBlock(scope: !1385, file: !133, line: 382, column: 9)
!1391 = !DILocation(line: 382, column: 9, scope: !1390)
!1392 = !DILocation(line: 383, column: 20, scope: !1315)
!1393 = !DILocation(line: 384, column: 24, scope: !1315)
!1394 = !DILocation(line: 385, column: 7, scope: !1315)
!1395 = !DILocation(line: 388, column: 26, scope: !1315)
!1396 = !DILocation(line: 389, column: 7, scope: !1315)
!1397 = !DILocation(line: 392, column: 7, scope: !1315)
!1398 = !DILocalVariable(name: "i", scope: !1399, file: !133, line: 395, type: !141)
!1399 = distinct !DILexicalBlock(scope: !1261, file: !133, line: 395, column: 3)
!1400 = !DILocation(line: 395, column: 15, scope: !1399)
!1401 = !DILocation(line: 395, column: 8, scope: !1399)
!1402 = !DILocation(line: 395, column: 26, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !133, line: 395, column: 3)
!1404 = !DILocation(line: 395, column: 34, scope: !1403)
!1405 = !DILocation(line: 395, column: 48, scope: !1403)
!1406 = !DILocation(line: 395, column: 52, scope: !1403)
!1407 = !DILocation(line: 395, column: 55, scope: !1403)
!1408 = !DILocation(line: 395, column: 65, scope: !1403)
!1409 = !DILocation(line: 395, column: 70, scope: !1403)
!1410 = !DILocation(line: 395, column: 67, scope: !1403)
!1411 = !DILocation(line: 395, column: 23, scope: !1403)
!1412 = !DILocation(line: 395, column: 3, scope: !1399)
!1413 = !DILocalVariable(name: "is_right_quote", scope: !1414, file: !133, line: 397, type: !60)
!1414 = distinct !DILexicalBlock(scope: !1403, file: !133, line: 396, column: 5)
!1415 = !DILocation(line: 397, column: 12, scope: !1414)
!1416 = !DILocalVariable(name: "escaping", scope: !1414, file: !133, line: 398, type: !60)
!1417 = !DILocation(line: 398, column: 12, scope: !1414)
!1418 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1414, file: !133, line: 399, type: !60)
!1419 = !DILocation(line: 399, column: 12, scope: !1414)
!1420 = !DILocation(line: 401, column: 11, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1414, file: !133, line: 401, column: 11)
!1422 = !DILocation(line: 402, column: 11, scope: !1421)
!1423 = !DILocation(line: 402, column: 14, scope: !1421)
!1424 = !DILocation(line: 402, column: 28, scope: !1421)
!1425 = !DILocation(line: 403, column: 11, scope: !1421)
!1426 = !DILocation(line: 403, column: 14, scope: !1421)
!1427 = !DILocation(line: 404, column: 11, scope: !1421)
!1428 = !DILocation(line: 404, column: 15, scope: !1421)
!1429 = !DILocation(line: 404, column: 19, scope: !1421)
!1430 = !DILocation(line: 404, column: 17, scope: !1421)
!1431 = !DILocation(line: 405, column: 19, scope: !1421)
!1432 = !DILocation(line: 405, column: 27, scope: !1421)
!1433 = !DILocation(line: 405, column: 39, scope: !1421)
!1434 = !DILocation(line: 405, column: 46, scope: !1421)
!1435 = !DILocation(line: 405, column: 44, scope: !1421)
!1436 = !DILocation(line: 409, column: 40, scope: !1421)
!1437 = !DILocation(line: 409, column: 32, scope: !1421)
!1438 = !DILocation(line: 409, column: 30, scope: !1421)
!1439 = !DILocation(line: 409, column: 48, scope: !1421)
!1440 = !DILocation(line: 405, column: 15, scope: !1421)
!1441 = !DILocation(line: 410, column: 11, scope: !1421)
!1442 = !DILocation(line: 410, column: 21, scope: !1421)
!1443 = !DILocation(line: 410, column: 27, scope: !1421)
!1444 = !DILocation(line: 410, column: 25, scope: !1421)
!1445 = !DILocation(line: 410, column: 30, scope: !1421)
!1446 = !DILocation(line: 410, column: 44, scope: !1421)
!1447 = !DILocation(line: 410, column: 14, scope: !1421)
!1448 = !DILocation(line: 401, column: 11, scope: !1414)
!1449 = !DILocation(line: 412, column: 15, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !133, line: 412, column: 15)
!1451 = distinct !DILexicalBlock(scope: !1421, file: !133, line: 411, column: 9)
!1452 = !DILocation(line: 412, column: 15, scope: !1451)
!1453 = !DILocation(line: 413, column: 13, scope: !1450)
!1454 = !DILocation(line: 414, column: 26, scope: !1451)
!1455 = !DILocation(line: 415, column: 9, scope: !1451)
!1456 = !DILocalVariable(name: "c", scope: !1414, file: !133, line: 417, type: !212)
!1457 = !DILocation(line: 417, column: 21, scope: !1414)
!1458 = !DILocation(line: 417, column: 25, scope: !1414)
!1459 = !DILocation(line: 417, column: 29, scope: !1414)
!1460 = !DILocation(line: 418, column: 15, scope: !1414)
!1461 = !DILocation(line: 418, column: 7, scope: !1414)
!1462 = !DILocation(line: 421, column: 15, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !133, line: 421, column: 15)
!1464 = distinct !DILexicalBlock(scope: !1414, file: !133, line: 419, column: 9)
!1465 = !DILocation(line: 421, column: 15, scope: !1464)
!1466 = !DILocation(line: 423, column: 15, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !133, line: 422, column: 13)
!1468 = !DILocation(line: 423, column: 15, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !133, line: 423, column: 15)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !133, line: 423, column: 15)
!1471 = !DILocation(line: 423, column: 15, scope: !1470)
!1472 = !DILocation(line: 423, column: 15, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1470, file: !133, line: 423, column: 15)
!1474 = !DILocation(line: 423, column: 15, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1473, file: !133, line: 423, column: 15)
!1476 = !DILocation(line: 423, column: 15, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !133, line: 423, column: 15)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !133, line: 423, column: 15)
!1479 = !DILocation(line: 423, column: 15, scope: !1478)
!1480 = !DILocation(line: 423, column: 15, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !133, line: 423, column: 15)
!1482 = distinct !DILexicalBlock(scope: !1475, file: !133, line: 423, column: 15)
!1483 = !DILocation(line: 423, column: 15, scope: !1482)
!1484 = !DILocation(line: 423, column: 15, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !133, line: 423, column: 15)
!1486 = distinct !DILexicalBlock(scope: !1475, file: !133, line: 423, column: 15)
!1487 = !DILocation(line: 423, column: 15, scope: !1486)
!1488 = !DILocation(line: 423, column: 15, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !133, line: 423, column: 15)
!1490 = distinct !DILexicalBlock(scope: !1470, file: !133, line: 423, column: 15)
!1491 = !DILocation(line: 423, column: 15, scope: !1490)
!1492 = !DILocation(line: 430, column: 19, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1467, file: !133, line: 430, column: 19)
!1494 = !DILocation(line: 430, column: 33, scope: !1493)
!1495 = !DILocation(line: 431, column: 19, scope: !1493)
!1496 = !DILocation(line: 431, column: 22, scope: !1493)
!1497 = !DILocation(line: 431, column: 24, scope: !1493)
!1498 = !DILocation(line: 431, column: 30, scope: !1493)
!1499 = !DILocation(line: 431, column: 28, scope: !1493)
!1500 = !DILocation(line: 431, column: 38, scope: !1493)
!1501 = !DILocation(line: 431, column: 48, scope: !1493)
!1502 = !DILocation(line: 431, column: 52, scope: !1493)
!1503 = !DILocation(line: 431, column: 54, scope: !1493)
!1504 = !DILocation(line: 431, column: 45, scope: !1493)
!1505 = !DILocation(line: 431, column: 59, scope: !1493)
!1506 = !DILocation(line: 431, column: 62, scope: !1493)
!1507 = !DILocation(line: 431, column: 66, scope: !1493)
!1508 = !DILocation(line: 431, column: 68, scope: !1493)
!1509 = !DILocation(line: 431, column: 73, scope: !1493)
!1510 = !DILocation(line: 430, column: 19, scope: !1467)
!1511 = !DILocation(line: 433, column: 19, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1493, file: !133, line: 432, column: 17)
!1513 = !DILocation(line: 433, column: 19, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !133, line: 433, column: 19)
!1515 = distinct !DILexicalBlock(scope: !1512, file: !133, line: 433, column: 19)
!1516 = !DILocation(line: 433, column: 19, scope: !1515)
!1517 = !DILocation(line: 434, column: 19, scope: !1512)
!1518 = !DILocation(line: 434, column: 19, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !133, line: 434, column: 19)
!1520 = distinct !DILexicalBlock(scope: !1512, file: !133, line: 434, column: 19)
!1521 = !DILocation(line: 434, column: 19, scope: !1520)
!1522 = !DILocation(line: 435, column: 17, scope: !1512)
!1523 = !DILocation(line: 436, column: 17, scope: !1467)
!1524 = !DILocation(line: 441, column: 13, scope: !1467)
!1525 = !DILocation(line: 442, column: 20, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1463, file: !133, line: 442, column: 20)
!1527 = !DILocation(line: 442, column: 26, scope: !1526)
!1528 = !DILocation(line: 442, column: 20, scope: !1463)
!1529 = !DILocation(line: 443, column: 13, scope: !1526)
!1530 = !DILocation(line: 444, column: 11, scope: !1464)
!1531 = !DILocation(line: 447, column: 20, scope: !1464)
!1532 = !DILocation(line: 447, column: 11, scope: !1464)
!1533 = !DILocation(line: 450, column: 19, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !133, line: 450, column: 19)
!1535 = distinct !DILexicalBlock(scope: !1464, file: !133, line: 448, column: 13)
!1536 = !DILocation(line: 450, column: 19, scope: !1535)
!1537 = !DILocation(line: 451, column: 17, scope: !1534)
!1538 = !DILocation(line: 452, column: 15, scope: !1535)
!1539 = !DILocation(line: 455, column: 20, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1535, file: !133, line: 455, column: 19)
!1541 = !DILocation(line: 455, column: 26, scope: !1540)
!1542 = !DILocation(line: 456, column: 19, scope: !1540)
!1543 = !DILocation(line: 456, column: 22, scope: !1540)
!1544 = !DILocation(line: 456, column: 24, scope: !1540)
!1545 = !DILocation(line: 456, column: 30, scope: !1540)
!1546 = !DILocation(line: 456, column: 28, scope: !1540)
!1547 = !DILocation(line: 456, column: 38, scope: !1540)
!1548 = !DILocation(line: 456, column: 41, scope: !1540)
!1549 = !DILocation(line: 456, column: 45, scope: !1540)
!1550 = !DILocation(line: 456, column: 47, scope: !1540)
!1551 = !DILocation(line: 456, column: 52, scope: !1540)
!1552 = !DILocation(line: 455, column: 19, scope: !1535)
!1553 = !DILocation(line: 457, column: 25, scope: !1540)
!1554 = !DILocation(line: 457, column: 29, scope: !1540)
!1555 = !DILocation(line: 457, column: 31, scope: !1540)
!1556 = !DILocation(line: 457, column: 17, scope: !1540)
!1557 = !DILocation(line: 464, column: 25, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !133, line: 464, column: 25)
!1559 = distinct !DILexicalBlock(scope: !1540, file: !133, line: 458, column: 19)
!1560 = !DILocation(line: 464, column: 25, scope: !1559)
!1561 = !DILocation(line: 465, column: 23, scope: !1558)
!1562 = !DILocation(line: 466, column: 25, scope: !1559)
!1563 = !DILocation(line: 466, column: 29, scope: !1559)
!1564 = !DILocation(line: 466, column: 31, scope: !1559)
!1565 = !DILocation(line: 466, column: 23, scope: !1559)
!1566 = !DILocation(line: 467, column: 23, scope: !1559)
!1567 = !DILocation(line: 468, column: 21, scope: !1559)
!1568 = !DILocation(line: 468, column: 21, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !133, line: 468, column: 21)
!1570 = distinct !DILexicalBlock(scope: !1559, file: !133, line: 468, column: 21)
!1571 = !DILocation(line: 468, column: 21, scope: !1570)
!1572 = !DILocation(line: 469, column: 21, scope: !1559)
!1573 = !DILocation(line: 469, column: 21, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !133, line: 469, column: 21)
!1575 = distinct !DILexicalBlock(scope: !1559, file: !133, line: 469, column: 21)
!1576 = !DILocation(line: 469, column: 21, scope: !1575)
!1577 = !DILocation(line: 470, column: 21, scope: !1559)
!1578 = !DILocation(line: 470, column: 21, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !133, line: 470, column: 21)
!1580 = distinct !DILexicalBlock(scope: !1559, file: !133, line: 470, column: 21)
!1581 = !DILocation(line: 470, column: 21, scope: !1580)
!1582 = !DILocation(line: 471, column: 21, scope: !1559)
!1583 = !DILocation(line: 471, column: 21, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !133, line: 471, column: 21)
!1585 = distinct !DILexicalBlock(scope: !1559, file: !133, line: 471, column: 21)
!1586 = !DILocation(line: 471, column: 21, scope: !1585)
!1587 = !DILocation(line: 472, column: 21, scope: !1559)
!1588 = !DILocation(line: 473, column: 19, scope: !1559)
!1589 = !DILocation(line: 474, column: 15, scope: !1535)
!1590 = !DILocation(line: 476, column: 11, scope: !1464)
!1591 = !DILocation(line: 481, column: 26, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1464, file: !133, line: 478, column: 9)
!1593 = !DILocation(line: 481, column: 33, scope: !1592)
!1594 = !DILocation(line: 482, column: 26, scope: !1592)
!1595 = !DILocation(line: 482, column: 33, scope: !1592)
!1596 = !DILocation(line: 483, column: 26, scope: !1592)
!1597 = !DILocation(line: 483, column: 33, scope: !1592)
!1598 = !DILocation(line: 484, column: 26, scope: !1592)
!1599 = !DILocation(line: 484, column: 33, scope: !1592)
!1600 = !DILocation(line: 485, column: 26, scope: !1592)
!1601 = !DILocation(line: 485, column: 33, scope: !1592)
!1602 = !DILocation(line: 486, column: 26, scope: !1592)
!1603 = !DILocation(line: 486, column: 33, scope: !1592)
!1604 = !DILocation(line: 487, column: 26, scope: !1592)
!1605 = !DILocation(line: 487, column: 33, scope: !1592)
!1606 = !DILocation(line: 488, column: 28, scope: !1592)
!1607 = !DILocation(line: 488, column: 26, scope: !1592)
!1608 = !DILocation(line: 490, column: 17, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1592, file: !133, line: 490, column: 17)
!1610 = !DILocation(line: 490, column: 31, scope: !1609)
!1611 = !DILocation(line: 490, column: 17, scope: !1592)
!1612 = !DILocation(line: 492, column: 21, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !133, line: 492, column: 21)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !133, line: 491, column: 15)
!1615 = !DILocation(line: 492, column: 21, scope: !1614)
!1616 = !DILocation(line: 493, column: 19, scope: !1613)
!1617 = !DILocation(line: 494, column: 17, scope: !1614)
!1618 = !DILocation(line: 499, column: 17, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1592, file: !133, line: 499, column: 17)
!1620 = !DILocation(line: 499, column: 35, scope: !1619)
!1621 = !DILocation(line: 499, column: 38, scope: !1619)
!1622 = !DILocation(line: 499, column: 57, scope: !1619)
!1623 = !DILocation(line: 499, column: 60, scope: !1619)
!1624 = !DILocation(line: 499, column: 17, scope: !1592)
!1625 = !DILocation(line: 500, column: 15, scope: !1619)
!1626 = !DILabel(scope: !1592, name: "c_and_shell_escape", file: !133, line: 502)
!1627 = !DILocation(line: 502, column: 11, scope: !1592)
!1628 = !DILocation(line: 503, column: 17, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1592, file: !133, line: 503, column: 17)
!1630 = !DILocation(line: 503, column: 31, scope: !1629)
!1631 = !DILocation(line: 504, column: 17, scope: !1629)
!1632 = !DILocation(line: 504, column: 20, scope: !1629)
!1633 = !DILocation(line: 503, column: 17, scope: !1592)
!1634 = !DILocation(line: 505, column: 15, scope: !1629)
!1635 = !DILabel(scope: !1592, name: "c_escape", file: !133, line: 507)
!1636 = !DILocation(line: 507, column: 11, scope: !1592)
!1637 = !DILocation(line: 508, column: 17, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1592, file: !133, line: 508, column: 17)
!1639 = !DILocation(line: 508, column: 17, scope: !1592)
!1640 = !DILocation(line: 510, column: 21, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1638, file: !133, line: 509, column: 15)
!1642 = !DILocation(line: 510, column: 19, scope: !1641)
!1643 = !DILocation(line: 511, column: 17, scope: !1641)
!1644 = !DILocation(line: 513, column: 13, scope: !1592)
!1645 = !DILocation(line: 517, column: 18, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1464, file: !133, line: 517, column: 15)
!1647 = !DILocation(line: 517, column: 26, scope: !1646)
!1648 = !DILocation(line: 517, column: 15, scope: !1464)
!1649 = !DILocation(line: 517, column: 40, scope: !1646)
!1650 = !DILocation(line: 517, column: 47, scope: !1646)
!1651 = !DILocation(line: 517, column: 57, scope: !1646)
!1652 = !DILocation(line: 517, column: 65, scope: !1646)
!1653 = !DILocation(line: 518, column: 13, scope: !1646)
!1654 = !DILocation(line: 517, column: 69, scope: !1646)
!1655 = !DILocation(line: 521, column: 15, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1464, file: !133, line: 521, column: 15)
!1657 = !DILocation(line: 521, column: 17, scope: !1656)
!1658 = !DILocation(line: 521, column: 15, scope: !1464)
!1659 = !DILocation(line: 522, column: 13, scope: !1656)
!1660 = !DILocation(line: 521, column: 20, scope: !1656)
!1661 = !DILocation(line: 525, column: 36, scope: !1464)
!1662 = !DILocation(line: 525, column: 11, scope: !1464)
!1663 = !DILocation(line: 536, column: 15, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1464, file: !133, line: 536, column: 15)
!1665 = !DILocation(line: 536, column: 29, scope: !1664)
!1666 = !DILocation(line: 537, column: 15, scope: !1664)
!1667 = !DILocation(line: 537, column: 18, scope: !1664)
!1668 = !DILocation(line: 536, column: 15, scope: !1464)
!1669 = !DILocation(line: 538, column: 13, scope: !1664)
!1670 = !DILocation(line: 539, column: 11, scope: !1464)
!1671 = !DILocation(line: 542, column: 36, scope: !1464)
!1672 = !DILocation(line: 543, column: 36, scope: !1464)
!1673 = !DILocation(line: 544, column: 15, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1464, file: !133, line: 544, column: 15)
!1675 = !DILocation(line: 544, column: 29, scope: !1674)
!1676 = !DILocation(line: 544, column: 15, scope: !1464)
!1677 = !DILocation(line: 546, column: 19, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !133, line: 546, column: 19)
!1679 = distinct !DILexicalBlock(scope: !1674, file: !133, line: 545, column: 13)
!1680 = !DILocation(line: 546, column: 19, scope: !1679)
!1681 = !DILocation(line: 547, column: 17, scope: !1678)
!1682 = !DILocation(line: 549, column: 19, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1679, file: !133, line: 549, column: 19)
!1684 = !DILocation(line: 549, column: 30, scope: !1683)
!1685 = !DILocation(line: 549, column: 35, scope: !1683)
!1686 = !DILocation(line: 549, column: 19, scope: !1679)
!1687 = !DILocation(line: 554, column: 37, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1683, file: !133, line: 550, column: 17)
!1689 = !DILocation(line: 554, column: 35, scope: !1688)
!1690 = !DILocation(line: 555, column: 30, scope: !1688)
!1691 = !DILocation(line: 556, column: 17, scope: !1688)
!1692 = !DILocation(line: 558, column: 15, scope: !1679)
!1693 = !DILocation(line: 558, column: 15, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !133, line: 558, column: 15)
!1695 = distinct !DILexicalBlock(scope: !1679, file: !133, line: 558, column: 15)
!1696 = !DILocation(line: 558, column: 15, scope: !1695)
!1697 = !DILocation(line: 559, column: 15, scope: !1679)
!1698 = !DILocation(line: 559, column: 15, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !133, line: 559, column: 15)
!1700 = distinct !DILexicalBlock(scope: !1679, file: !133, line: 559, column: 15)
!1701 = !DILocation(line: 559, column: 15, scope: !1700)
!1702 = !DILocation(line: 560, column: 15, scope: !1679)
!1703 = !DILocation(line: 560, column: 15, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !133, line: 560, column: 15)
!1705 = distinct !DILexicalBlock(scope: !1679, file: !133, line: 560, column: 15)
!1706 = !DILocation(line: 560, column: 15, scope: !1705)
!1707 = !DILocation(line: 561, column: 40, scope: !1679)
!1708 = !DILocation(line: 562, column: 13, scope: !1679)
!1709 = !DILocation(line: 563, column: 11, scope: !1464)
!1710 = !DILocation(line: 587, column: 36, scope: !1464)
!1711 = !DILocation(line: 588, column: 11, scope: !1464)
!1712 = !DILocalVariable(name: "m", scope: !1713, file: !133, line: 598, type: !141)
!1713 = distinct !DILexicalBlock(scope: !1464, file: !133, line: 596, column: 11)
!1714 = !DILocation(line: 598, column: 20, scope: !1713)
!1715 = !DILocalVariable(name: "printable", scope: !1713, file: !133, line: 600, type: !60)
!1716 = !DILocation(line: 600, column: 18, scope: !1713)
!1717 = !DILocation(line: 602, column: 17, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1713, file: !133, line: 602, column: 17)
!1719 = !DILocation(line: 602, column: 17, scope: !1713)
!1720 = !DILocation(line: 604, column: 19, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !133, line: 603, column: 15)
!1722 = !DILocation(line: 605, column: 29, scope: !1721)
!1723 = !DILocation(line: 605, column: 41, scope: !1721)
!1724 = !DILocation(line: 605, column: 27, scope: !1721)
!1725 = !DILocation(line: 606, column: 15, scope: !1721)
!1726 = !DILocalVariable(name: "mbs", scope: !1727, file: !133, line: 609, type: !1728)
!1727 = distinct !DILexicalBlock(scope: !1718, file: !133, line: 608, column: 15)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !1729)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1730, file: !217, line: 15, baseType: !44, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1730, file: !217, line: 20, baseType: !1734, size: 32, offset: 32)
!1734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1730, file: !217, line: 16, size: 32, elements: !1735)
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1734, file: !217, line: 18, baseType: !14, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1734, file: !217, line: 19, baseType: !226, size: 32)
!1738 = !DILocation(line: 609, column: 27, scope: !1727)
!1739 = !DILocation(line: 609, column: 32, scope: !1727)
!1740 = !DILocation(line: 611, column: 19, scope: !1727)
!1741 = !DILocation(line: 612, column: 27, scope: !1727)
!1742 = !DILocation(line: 613, column: 21, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1727, file: !133, line: 613, column: 21)
!1744 = !DILocation(line: 613, column: 29, scope: !1743)
!1745 = !DILocation(line: 613, column: 21, scope: !1727)
!1746 = !DILocation(line: 614, column: 37, scope: !1743)
!1747 = !DILocation(line: 614, column: 29, scope: !1743)
!1748 = !DILocation(line: 614, column: 27, scope: !1743)
!1749 = !DILocation(line: 614, column: 19, scope: !1743)
!1750 = !DILocation(line: 616, column: 17, scope: !1727)
!1751 = !DILocalVariable(name: "w", scope: !1752, file: !133, line: 618, type: !1048)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !133, line: 617, column: 19)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !133, line: 616, column: 17)
!1754 = distinct !DILexicalBlock(scope: !1727, file: !133, line: 616, column: 17)
!1755 = !DILocation(line: 618, column: 30, scope: !1752)
!1756 = !DILocalVariable(name: "bytes", scope: !1752, file: !133, line: 619, type: !141)
!1757 = !DILocation(line: 619, column: 28, scope: !1752)
!1758 = !DILocation(line: 619, column: 51, scope: !1752)
!1759 = !DILocation(line: 619, column: 55, scope: !1752)
!1760 = !DILocation(line: 619, column: 59, scope: !1752)
!1761 = !DILocation(line: 619, column: 57, scope: !1752)
!1762 = !DILocation(line: 620, column: 46, scope: !1752)
!1763 = !DILocation(line: 620, column: 57, scope: !1752)
!1764 = !DILocation(line: 620, column: 61, scope: !1752)
!1765 = !DILocation(line: 620, column: 59, scope: !1752)
!1766 = !DILocation(line: 620, column: 54, scope: !1752)
!1767 = !DILocation(line: 619, column: 36, scope: !1752)
!1768 = !DILocation(line: 621, column: 25, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1752, file: !133, line: 621, column: 25)
!1770 = !DILocation(line: 621, column: 31, scope: !1769)
!1771 = !DILocation(line: 621, column: 25, scope: !1752)
!1772 = !DILocation(line: 622, column: 23, scope: !1769)
!1773 = !DILocation(line: 623, column: 30, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1769, file: !133, line: 623, column: 30)
!1775 = !DILocation(line: 623, column: 36, scope: !1774)
!1776 = !DILocation(line: 623, column: 30, scope: !1769)
!1777 = !DILocation(line: 625, column: 35, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1774, file: !133, line: 624, column: 23)
!1779 = !DILocation(line: 626, column: 25, scope: !1778)
!1780 = !DILocation(line: 628, column: 30, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1774, file: !133, line: 628, column: 30)
!1782 = !DILocation(line: 628, column: 36, scope: !1781)
!1783 = !DILocation(line: 628, column: 30, scope: !1774)
!1784 = !DILocation(line: 630, column: 35, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1781, file: !133, line: 629, column: 23)
!1786 = !DILocation(line: 631, column: 25, scope: !1785)
!1787 = !DILocation(line: 631, column: 32, scope: !1785)
!1788 = !DILocation(line: 631, column: 36, scope: !1785)
!1789 = !DILocation(line: 631, column: 34, scope: !1785)
!1790 = !DILocation(line: 631, column: 40, scope: !1785)
!1791 = !DILocation(line: 631, column: 38, scope: !1785)
!1792 = !DILocation(line: 631, column: 48, scope: !1785)
!1793 = !DILocation(line: 631, column: 51, scope: !1785)
!1794 = !DILocation(line: 631, column: 55, scope: !1785)
!1795 = !DILocation(line: 631, column: 59, scope: !1785)
!1796 = !DILocation(line: 631, column: 57, scope: !1785)
!1797 = !DILocation(line: 0, scope: !1785)
!1798 = !DILocation(line: 632, column: 28, scope: !1785)
!1799 = distinct !{!1799, !1786, !1798, !393}
!1800 = !DILocation(line: 633, column: 25, scope: !1785)
!1801 = !DILocation(line: 645, column: 44, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !133, line: 645, column: 29)
!1803 = distinct !DILexicalBlock(scope: !1781, file: !133, line: 636, column: 23)
!1804 = !DILocation(line: 646, column: 29, scope: !1802)
!1805 = !DILocation(line: 646, column: 32, scope: !1802)
!1806 = !DILocation(line: 646, column: 46, scope: !1802)
!1807 = !DILocation(line: 645, column: 29, scope: !1803)
!1808 = !DILocalVariable(name: "j", scope: !1809, file: !133, line: 648, type: !141)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !133, line: 648, column: 29)
!1810 = distinct !DILexicalBlock(scope: !1802, file: !133, line: 647, column: 27)
!1811 = !DILocation(line: 648, column: 41, scope: !1809)
!1812 = !DILocation(line: 648, column: 34, scope: !1809)
!1813 = !DILocation(line: 648, column: 48, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1809, file: !133, line: 648, column: 29)
!1815 = !DILocation(line: 648, column: 52, scope: !1814)
!1816 = !DILocation(line: 648, column: 50, scope: !1814)
!1817 = !DILocation(line: 648, column: 29, scope: !1809)
!1818 = !DILocation(line: 649, column: 39, scope: !1814)
!1819 = !DILocation(line: 649, column: 43, scope: !1814)
!1820 = !DILocation(line: 649, column: 47, scope: !1814)
!1821 = !DILocation(line: 649, column: 45, scope: !1814)
!1822 = !DILocation(line: 649, column: 51, scope: !1814)
!1823 = !DILocation(line: 649, column: 49, scope: !1814)
!1824 = !DILocation(line: 649, column: 31, scope: !1814)
!1825 = !DILocation(line: 653, column: 35, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1814, file: !133, line: 650, column: 33)
!1827 = !DILocation(line: 654, column: 33, scope: !1826)
!1828 = !DILocation(line: 648, column: 60, scope: !1814)
!1829 = !DILocation(line: 648, column: 29, scope: !1814)
!1830 = distinct !{!1830, !1817, !1831, !393}
!1831 = !DILocation(line: 654, column: 33, scope: !1809)
!1832 = !DILocation(line: 655, column: 27, scope: !1810)
!1833 = !DILocation(line: 657, column: 43, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1803, file: !133, line: 657, column: 29)
!1835 = !DILocation(line: 657, column: 31, scope: !1834)
!1836 = !DILocation(line: 657, column: 29, scope: !1803)
!1837 = !DILocation(line: 658, column: 37, scope: !1834)
!1838 = !DILocation(line: 658, column: 27, scope: !1834)
!1839 = !DILocation(line: 659, column: 30, scope: !1803)
!1840 = !DILocation(line: 659, column: 27, scope: !1803)
!1841 = !DILocation(line: 664, column: 23, scope: !1752)
!1842 = !DILocation(line: 668, column: 40, scope: !1713)
!1843 = !DILocation(line: 668, column: 38, scope: !1713)
!1844 = !DILocation(line: 670, column: 21, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1713, file: !133, line: 670, column: 17)
!1846 = !DILocation(line: 670, column: 19, scope: !1845)
!1847 = !DILocation(line: 670, column: 23, scope: !1845)
!1848 = !DILocation(line: 670, column: 27, scope: !1845)
!1849 = !DILocation(line: 670, column: 45, scope: !1845)
!1850 = !DILocation(line: 670, column: 50, scope: !1845)
!1851 = !DILocation(line: 670, column: 17, scope: !1713)
!1852 = !DILocalVariable(name: "ilim", scope: !1853, file: !133, line: 674, type: !141)
!1853 = distinct !DILexicalBlock(scope: !1845, file: !133, line: 671, column: 15)
!1854 = !DILocation(line: 674, column: 24, scope: !1853)
!1855 = !DILocation(line: 674, column: 31, scope: !1853)
!1856 = !DILocation(line: 674, column: 35, scope: !1853)
!1857 = !DILocation(line: 674, column: 33, scope: !1853)
!1858 = !DILocation(line: 676, column: 17, scope: !1853)
!1859 = !DILocation(line: 678, column: 25, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !133, line: 678, column: 25)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !133, line: 677, column: 19)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !133, line: 676, column: 17)
!1863 = distinct !DILexicalBlock(scope: !1853, file: !133, line: 676, column: 17)
!1864 = !DILocation(line: 678, column: 43, scope: !1860)
!1865 = !DILocation(line: 678, column: 48, scope: !1860)
!1866 = !DILocation(line: 678, column: 25, scope: !1861)
!1867 = !DILocation(line: 680, column: 25, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1860, file: !133, line: 679, column: 23)
!1869 = !DILocation(line: 680, column: 25, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !133, line: 680, column: 25)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !133, line: 680, column: 25)
!1872 = !DILocation(line: 680, column: 25, scope: !1871)
!1873 = !DILocation(line: 680, column: 25, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !133, line: 680, column: 25)
!1875 = !DILocation(line: 680, column: 25, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1874, file: !133, line: 680, column: 25)
!1877 = !DILocation(line: 680, column: 25, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !133, line: 680, column: 25)
!1879 = distinct !DILexicalBlock(scope: !1876, file: !133, line: 680, column: 25)
!1880 = !DILocation(line: 680, column: 25, scope: !1879)
!1881 = !DILocation(line: 680, column: 25, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !133, line: 680, column: 25)
!1883 = distinct !DILexicalBlock(scope: !1876, file: !133, line: 680, column: 25)
!1884 = !DILocation(line: 680, column: 25, scope: !1883)
!1885 = !DILocation(line: 680, column: 25, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !133, line: 680, column: 25)
!1887 = distinct !DILexicalBlock(scope: !1876, file: !133, line: 680, column: 25)
!1888 = !DILocation(line: 680, column: 25, scope: !1887)
!1889 = !DILocation(line: 680, column: 25, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !133, line: 680, column: 25)
!1891 = distinct !DILexicalBlock(scope: !1871, file: !133, line: 680, column: 25)
!1892 = !DILocation(line: 680, column: 25, scope: !1891)
!1893 = !DILocation(line: 681, column: 25, scope: !1868)
!1894 = !DILocation(line: 681, column: 25, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !133, line: 681, column: 25)
!1896 = distinct !DILexicalBlock(scope: !1868, file: !133, line: 681, column: 25)
!1897 = !DILocation(line: 681, column: 25, scope: !1896)
!1898 = !DILocation(line: 682, column: 25, scope: !1868)
!1899 = !DILocation(line: 682, column: 25, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !133, line: 682, column: 25)
!1901 = distinct !DILexicalBlock(scope: !1868, file: !133, line: 682, column: 25)
!1902 = !DILocation(line: 682, column: 25, scope: !1901)
!1903 = !DILocation(line: 683, column: 36, scope: !1868)
!1904 = !DILocation(line: 683, column: 38, scope: !1868)
!1905 = !DILocation(line: 683, column: 33, scope: !1868)
!1906 = !DILocation(line: 683, column: 29, scope: !1868)
!1907 = !DILocation(line: 683, column: 27, scope: !1868)
!1908 = !DILocation(line: 684, column: 23, scope: !1868)
!1909 = !DILocation(line: 685, column: 30, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1860, file: !133, line: 685, column: 30)
!1911 = !DILocation(line: 685, column: 30, scope: !1860)
!1912 = !DILocation(line: 687, column: 25, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1910, file: !133, line: 686, column: 23)
!1914 = !DILocation(line: 687, column: 25, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !133, line: 687, column: 25)
!1916 = distinct !DILexicalBlock(scope: !1913, file: !133, line: 687, column: 25)
!1917 = !DILocation(line: 687, column: 25, scope: !1916)
!1918 = !DILocation(line: 688, column: 40, scope: !1913)
!1919 = !DILocation(line: 689, column: 23, scope: !1913)
!1920 = !DILocation(line: 690, column: 25, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1861, file: !133, line: 690, column: 25)
!1922 = !DILocation(line: 690, column: 33, scope: !1921)
!1923 = !DILocation(line: 690, column: 35, scope: !1921)
!1924 = !DILocation(line: 690, column: 30, scope: !1921)
!1925 = !DILocation(line: 690, column: 25, scope: !1861)
!1926 = !DILocation(line: 691, column: 23, scope: !1921)
!1927 = !DILocation(line: 692, column: 21, scope: !1861)
!1928 = !DILocation(line: 692, column: 21, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !133, line: 692, column: 21)
!1930 = distinct !DILexicalBlock(scope: !1861, file: !133, line: 692, column: 21)
!1931 = !DILocation(line: 692, column: 21, scope: !1930)
!1932 = !DILocation(line: 692, column: 21, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !133, line: 692, column: 21)
!1934 = !DILocation(line: 692, column: 21, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !133, line: 692, column: 21)
!1936 = distinct !DILexicalBlock(scope: !1933, file: !133, line: 692, column: 21)
!1937 = !DILocation(line: 692, column: 21, scope: !1936)
!1938 = !DILocation(line: 692, column: 21, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !133, line: 692, column: 21)
!1940 = distinct !DILexicalBlock(scope: !1933, file: !133, line: 692, column: 21)
!1941 = !DILocation(line: 692, column: 21, scope: !1940)
!1942 = !DILocation(line: 693, column: 21, scope: !1861)
!1943 = !DILocation(line: 693, column: 21, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !133, line: 693, column: 21)
!1945 = distinct !DILexicalBlock(scope: !1861, file: !133, line: 693, column: 21)
!1946 = !DILocation(line: 693, column: 21, scope: !1945)
!1947 = !DILocation(line: 694, column: 25, scope: !1861)
!1948 = !DILocation(line: 694, column: 29, scope: !1861)
!1949 = !DILocation(line: 694, column: 23, scope: !1861)
!1950 = !DILocation(line: 676, column: 17, scope: !1862)
!1951 = distinct !{!1951, !1952, !1953}
!1952 = !DILocation(line: 676, column: 17, scope: !1863)
!1953 = !DILocation(line: 695, column: 19, scope: !1863)
!1954 = !DILocation(line: 697, column: 17, scope: !1853)
!1955 = !DILocation(line: 700, column: 9, scope: !1464)
!1956 = !DILocation(line: 702, column: 16, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1414, file: !133, line: 702, column: 11)
!1958 = !DILocation(line: 702, column: 34, scope: !1957)
!1959 = !DILocation(line: 702, column: 37, scope: !1957)
!1960 = !DILocation(line: 702, column: 51, scope: !1957)
!1961 = !DILocation(line: 703, column: 15, scope: !1957)
!1962 = !DILocation(line: 703, column: 18, scope: !1957)
!1963 = !DILocation(line: 704, column: 14, scope: !1957)
!1964 = !DILocation(line: 704, column: 17, scope: !1957)
!1965 = !DILocation(line: 705, column: 14, scope: !1957)
!1966 = !DILocation(line: 705, column: 17, scope: !1957)
!1967 = !DILocation(line: 705, column: 33, scope: !1957)
!1968 = !DILocation(line: 705, column: 35, scope: !1957)
!1969 = !DILocation(line: 705, column: 51, scope: !1957)
!1970 = !DILocation(line: 705, column: 53, scope: !1957)
!1971 = !DILocation(line: 705, column: 47, scope: !1957)
!1972 = !DILocation(line: 705, column: 65, scope: !1957)
!1973 = !DILocation(line: 706, column: 11, scope: !1957)
!1974 = !DILocation(line: 706, column: 15, scope: !1957)
!1975 = !DILocation(line: 702, column: 11, scope: !1414)
!1976 = !DILocation(line: 707, column: 9, scope: !1957)
!1977 = !DILabel(scope: !1414, name: "store_escape", file: !133, line: 709)
!1978 = !DILocation(line: 709, column: 5, scope: !1414)
!1979 = !DILocation(line: 710, column: 7, scope: !1414)
!1980 = !DILocation(line: 710, column: 7, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !133, line: 710, column: 7)
!1982 = distinct !DILexicalBlock(scope: !1414, file: !133, line: 710, column: 7)
!1983 = !DILocation(line: 710, column: 7, scope: !1982)
!1984 = !DILocation(line: 710, column: 7, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1982, file: !133, line: 710, column: 7)
!1986 = !DILocation(line: 710, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1985, file: !133, line: 710, column: 7)
!1988 = !DILocation(line: 710, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !133, line: 710, column: 7)
!1990 = distinct !DILexicalBlock(scope: !1987, file: !133, line: 710, column: 7)
!1991 = !DILocation(line: 710, column: 7, scope: !1990)
!1992 = !DILocation(line: 710, column: 7, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !133, line: 710, column: 7)
!1994 = distinct !DILexicalBlock(scope: !1987, file: !133, line: 710, column: 7)
!1995 = !DILocation(line: 710, column: 7, scope: !1994)
!1996 = !DILocation(line: 710, column: 7, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !133, line: 710, column: 7)
!1998 = distinct !DILexicalBlock(scope: !1987, file: !133, line: 710, column: 7)
!1999 = !DILocation(line: 710, column: 7, scope: !1998)
!2000 = !DILocation(line: 710, column: 7, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !133, line: 710, column: 7)
!2002 = distinct !DILexicalBlock(scope: !1982, file: !133, line: 710, column: 7)
!2003 = !DILocation(line: 710, column: 7, scope: !2002)
!2004 = !DILabel(scope: !1414, name: "store_c", file: !133, line: 712)
!2005 = !DILocation(line: 712, column: 5, scope: !1414)
!2006 = !DILocation(line: 713, column: 7, scope: !1414)
!2007 = !DILocation(line: 713, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !133, line: 713, column: 7)
!2009 = distinct !DILexicalBlock(scope: !1414, file: !133, line: 713, column: 7)
!2010 = !DILocation(line: 713, column: 7, scope: !2009)
!2011 = !DILocation(line: 713, column: 7, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2008, file: !133, line: 713, column: 7)
!2013 = !DILocation(line: 713, column: 7, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !133, line: 713, column: 7)
!2015 = distinct !DILexicalBlock(scope: !2012, file: !133, line: 713, column: 7)
!2016 = !DILocation(line: 713, column: 7, scope: !2015)
!2017 = !DILocation(line: 713, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !133, line: 713, column: 7)
!2019 = distinct !DILexicalBlock(scope: !2012, file: !133, line: 713, column: 7)
!2020 = !DILocation(line: 713, column: 7, scope: !2019)
!2021 = !DILocation(line: 714, column: 7, scope: !1414)
!2022 = !DILocation(line: 714, column: 7, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !133, line: 714, column: 7)
!2024 = distinct !DILexicalBlock(scope: !1414, file: !133, line: 714, column: 7)
!2025 = !DILocation(line: 714, column: 7, scope: !2024)
!2026 = !DILocation(line: 716, column: 13, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1414, file: !133, line: 716, column: 11)
!2028 = !DILocation(line: 716, column: 11, scope: !1414)
!2029 = !DILocation(line: 717, column: 38, scope: !2027)
!2030 = !DILocation(line: 717, column: 9, scope: !2027)
!2031 = !DILocation(line: 718, column: 5, scope: !1414)
!2032 = !DILocation(line: 395, column: 82, scope: !1403)
!2033 = !DILocation(line: 395, column: 3, scope: !1403)
!2034 = distinct !{!2034, !1412, !2035, !393}
!2035 = !DILocation(line: 718, column: 5, scope: !1399)
!2036 = !DILocation(line: 720, column: 7, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1261, file: !133, line: 720, column: 7)
!2038 = !DILocation(line: 720, column: 11, scope: !2037)
!2039 = !DILocation(line: 720, column: 16, scope: !2037)
!2040 = !DILocation(line: 720, column: 19, scope: !2037)
!2041 = !DILocation(line: 720, column: 33, scope: !2037)
!2042 = !DILocation(line: 721, column: 7, scope: !2037)
!2043 = !DILocation(line: 721, column: 10, scope: !2037)
!2044 = !DILocation(line: 720, column: 7, scope: !1261)
!2045 = !DILocation(line: 722, column: 5, scope: !2037)
!2046 = !DILocation(line: 728, column: 7, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1261, file: !133, line: 728, column: 7)
!2048 = !DILocation(line: 728, column: 21, scope: !2047)
!2049 = !DILocation(line: 728, column: 51, scope: !2047)
!2050 = !DILocation(line: 728, column: 56, scope: !2047)
!2051 = !DILocation(line: 729, column: 7, scope: !2047)
!2052 = !DILocation(line: 729, column: 10, scope: !2047)
!2053 = !DILocation(line: 728, column: 7, scope: !1261)
!2054 = !DILocation(line: 731, column: 11, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !133, line: 731, column: 11)
!2056 = distinct !DILexicalBlock(scope: !2047, file: !133, line: 730, column: 5)
!2057 = !DILocation(line: 731, column: 11, scope: !2056)
!2058 = !DILocation(line: 732, column: 42, scope: !2055)
!2059 = !DILocation(line: 732, column: 50, scope: !2055)
!2060 = !DILocation(line: 732, column: 67, scope: !2055)
!2061 = !DILocation(line: 732, column: 72, scope: !2055)
!2062 = !DILocation(line: 734, column: 42, scope: !2055)
!2063 = !DILocation(line: 734, column: 49, scope: !2055)
!2064 = !DILocation(line: 735, column: 42, scope: !2055)
!2065 = !DILocation(line: 735, column: 54, scope: !2055)
!2066 = !DILocation(line: 732, column: 16, scope: !2055)
!2067 = !DILocation(line: 732, column: 9, scope: !2055)
!2068 = !DILocation(line: 736, column: 18, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2055, file: !133, line: 736, column: 16)
!2070 = !DILocation(line: 736, column: 29, scope: !2069)
!2071 = !DILocation(line: 736, column: 32, scope: !2069)
!2072 = !DILocation(line: 736, column: 16, scope: !2055)
!2073 = !DILocation(line: 739, column: 24, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2069, file: !133, line: 737, column: 9)
!2075 = !DILocation(line: 739, column: 22, scope: !2074)
!2076 = !DILocation(line: 740, column: 15, scope: !2074)
!2077 = !DILocation(line: 741, column: 11, scope: !2074)
!2078 = !DILocation(line: 743, column: 5, scope: !2056)
!2079 = !DILocation(line: 745, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1261, file: !133, line: 745, column: 7)
!2081 = !DILocation(line: 745, column: 20, scope: !2080)
!2082 = !DILocation(line: 745, column: 24, scope: !2080)
!2083 = !DILocation(line: 745, column: 7, scope: !1261)
!2084 = !DILocation(line: 746, column: 5, scope: !2080)
!2085 = !DILocation(line: 746, column: 13, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !133, line: 746, column: 5)
!2087 = distinct !DILexicalBlock(scope: !2080, file: !133, line: 746, column: 5)
!2088 = !DILocation(line: 746, column: 12, scope: !2086)
!2089 = !DILocation(line: 746, column: 5, scope: !2087)
!2090 = !DILocation(line: 747, column: 7, scope: !2086)
!2091 = !DILocation(line: 747, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !133, line: 747, column: 7)
!2093 = distinct !DILexicalBlock(scope: !2086, file: !133, line: 747, column: 7)
!2094 = !DILocation(line: 747, column: 7, scope: !2093)
!2095 = !DILocation(line: 746, column: 39, scope: !2086)
!2096 = !DILocation(line: 746, column: 5, scope: !2086)
!2097 = distinct !{!2097, !2089, !2098, !393}
!2098 = !DILocation(line: 747, column: 7, scope: !2087)
!2099 = !DILocation(line: 749, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1261, file: !133, line: 749, column: 7)
!2101 = !DILocation(line: 749, column: 13, scope: !2100)
!2102 = !DILocation(line: 749, column: 11, scope: !2100)
!2103 = !DILocation(line: 749, column: 7, scope: !1261)
!2104 = !DILocation(line: 750, column: 5, scope: !2100)
!2105 = !DILocation(line: 750, column: 12, scope: !2100)
!2106 = !DILocation(line: 750, column: 17, scope: !2100)
!2107 = !DILocation(line: 751, column: 10, scope: !1261)
!2108 = !DILocation(line: 751, column: 3, scope: !1261)
!2109 = !DILabel(scope: !1261, name: "force_outer_quoting_style", file: !133, line: 753)
!2110 = !DILocation(line: 753, column: 2, scope: !1261)
!2111 = !DILocation(line: 756, column: 7, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !1261, file: !133, line: 756, column: 7)
!2113 = !DILocation(line: 756, column: 21, scope: !2112)
!2114 = !DILocation(line: 756, column: 51, scope: !2112)
!2115 = !DILocation(line: 756, column: 54, scope: !2112)
!2116 = !DILocation(line: 756, column: 7, scope: !1261)
!2117 = !DILocation(line: 757, column: 19, scope: !2112)
!2118 = !DILocation(line: 757, column: 5, scope: !2112)
!2119 = !DILocation(line: 758, column: 36, scope: !1261)
!2120 = !DILocation(line: 758, column: 44, scope: !1261)
!2121 = !DILocation(line: 758, column: 56, scope: !1261)
!2122 = !DILocation(line: 758, column: 61, scope: !1261)
!2123 = !DILocation(line: 759, column: 36, scope: !1261)
!2124 = !DILocation(line: 760, column: 36, scope: !1261)
!2125 = !DILocation(line: 760, column: 42, scope: !1261)
!2126 = !DILocation(line: 761, column: 36, scope: !1261)
!2127 = !DILocation(line: 761, column: 48, scope: !1261)
!2128 = !DILocation(line: 758, column: 10, scope: !1261)
!2129 = !DILocation(line: 758, column: 3, scope: !1261)
!2130 = !DILocation(line: 762, column: 1, scope: !1261)
!2131 = !DILocalVariable(name: "msgid", arg: 1, scope: !172, file: !133, line: 197, type: !6)
!2132 = !DILocation(line: 197, column: 28, scope: !172)
!2133 = !DILocalVariable(name: "s", arg: 2, scope: !172, file: !133, line: 197, type: !12)
!2134 = !DILocation(line: 197, column: 54, scope: !172)
!2135 = !DILocalVariable(name: "translation", scope: !172, file: !133, line: 199, type: !6)
!2136 = !DILocation(line: 199, column: 15, scope: !172)
!2137 = !DILocation(line: 199, column: 29, scope: !172)
!2138 = !DILocation(line: 201, column: 7, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !172, file: !133, line: 201, column: 7)
!2140 = !DILocation(line: 201, column: 22, scope: !2139)
!2141 = !DILocation(line: 201, column: 19, scope: !2139)
!2142 = !DILocation(line: 201, column: 7, scope: !172)
!2143 = !DILocation(line: 202, column: 12, scope: !2139)
!2144 = !DILocation(line: 202, column: 5, scope: !2139)
!2145 = !DILocalVariable(name: "w", scope: !172, file: !133, line: 229, type: !1048)
!2146 = !DILocation(line: 229, column: 12, scope: !172)
!2147 = !DILocalVariable(name: "mbs", scope: !172, file: !133, line: 230, type: !1728)
!2148 = !DILocation(line: 230, column: 13, scope: !172)
!2149 = !DILocation(line: 230, column: 18, scope: !172)
!2150 = !DILocation(line: 231, column: 7, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !172, file: !133, line: 231, column: 7)
!2152 = !DILocation(line: 231, column: 40, scope: !2151)
!2153 = !DILocation(line: 231, column: 45, scope: !2151)
!2154 = !DILocation(line: 231, column: 48, scope: !2151)
!2155 = !DILocation(line: 231, column: 50, scope: !2151)
!2156 = !DILocation(line: 231, column: 7, scope: !172)
!2157 = !DILocation(line: 232, column: 18, scope: !2151)
!2158 = !DILocation(line: 232, column: 27, scope: !2151)
!2159 = !DILocation(line: 232, column: 12, scope: !2151)
!2160 = !DILocation(line: 232, column: 5, scope: !2151)
!2161 = !DILocation(line: 234, column: 11, scope: !172)
!2162 = !DILocation(line: 234, column: 13, scope: !172)
!2163 = !DILocation(line: 234, column: 3, scope: !172)
!2164 = !DILocation(line: 235, column: 1, scope: !172)
!2165 = distinct !DISubprogram(name: "quotearg_alloc", scope: !133, file: !133, line: 788, type: !2166, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!117, !6, !141, !1101}
!2168 = !DILocalVariable(name: "arg", arg: 1, scope: !2165, file: !133, line: 788, type: !6)
!2169 = !DILocation(line: 788, column: 29, scope: !2165)
!2170 = !DILocalVariable(name: "argsize", arg: 2, scope: !2165, file: !133, line: 788, type: !141)
!2171 = !DILocation(line: 788, column: 41, scope: !2165)
!2172 = !DILocalVariable(name: "o", arg: 3, scope: !2165, file: !133, line: 789, type: !1101)
!2173 = !DILocation(line: 789, column: 47, scope: !2165)
!2174 = !DILocation(line: 791, column: 30, scope: !2165)
!2175 = !DILocation(line: 791, column: 35, scope: !2165)
!2176 = !DILocation(line: 791, column: 50, scope: !2165)
!2177 = !DILocation(line: 791, column: 10, scope: !2165)
!2178 = !DILocation(line: 791, column: 3, scope: !2165)
!2179 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !133, file: !133, line: 801, type: !2180, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!117, !6, !141, !245, !1101}
!2182 = !DILocalVariable(name: "arg", arg: 1, scope: !2179, file: !133, line: 801, type: !6)
!2183 = !DILocation(line: 801, column: 33, scope: !2179)
!2184 = !DILocalVariable(name: "argsize", arg: 2, scope: !2179, file: !133, line: 801, type: !141)
!2185 = !DILocation(line: 801, column: 45, scope: !2179)
!2186 = !DILocalVariable(name: "size", arg: 3, scope: !2179, file: !133, line: 801, type: !245)
!2187 = !DILocation(line: 801, column: 62, scope: !2179)
!2188 = !DILocalVariable(name: "o", arg: 4, scope: !2179, file: !133, line: 802, type: !1101)
!2189 = !DILocation(line: 802, column: 51, scope: !2179)
!2190 = !DILocalVariable(name: "p", scope: !2179, file: !133, line: 804, type: !1101)
!2191 = !DILocation(line: 804, column: 33, scope: !2179)
!2192 = !DILocation(line: 804, column: 37, scope: !2179)
!2193 = !DILocation(line: 804, column: 41, scope: !2179)
!2194 = !DILocalVariable(name: "saved_errno", scope: !2179, file: !133, line: 805, type: !44)
!2195 = !DILocation(line: 805, column: 7, scope: !2179)
!2196 = !DILocation(line: 805, column: 21, scope: !2179)
!2197 = !DILocalVariable(name: "flags", scope: !2179, file: !133, line: 807, type: !44)
!2198 = !DILocation(line: 807, column: 7, scope: !2179)
!2199 = !DILocation(line: 807, column: 15, scope: !2179)
!2200 = !DILocation(line: 807, column: 18, scope: !2179)
!2201 = !DILocation(line: 807, column: 27, scope: !2179)
!2202 = !DILocation(line: 807, column: 24, scope: !2179)
!2203 = !DILocalVariable(name: "bufsize", scope: !2179, file: !133, line: 808, type: !141)
!2204 = !DILocation(line: 808, column: 10, scope: !2179)
!2205 = !DILocation(line: 808, column: 55, scope: !2179)
!2206 = !DILocation(line: 808, column: 60, scope: !2179)
!2207 = !DILocation(line: 808, column: 69, scope: !2179)
!2208 = !DILocation(line: 808, column: 72, scope: !2179)
!2209 = !DILocation(line: 809, column: 46, scope: !2179)
!2210 = !DILocation(line: 809, column: 53, scope: !2179)
!2211 = !DILocation(line: 809, column: 56, scope: !2179)
!2212 = !DILocation(line: 810, column: 46, scope: !2179)
!2213 = !DILocation(line: 810, column: 49, scope: !2179)
!2214 = !DILocation(line: 811, column: 46, scope: !2179)
!2215 = !DILocation(line: 811, column: 49, scope: !2179)
!2216 = !DILocation(line: 808, column: 20, scope: !2179)
!2217 = !DILocation(line: 811, column: 62, scope: !2179)
!2218 = !DILocalVariable(name: "buf", scope: !2179, file: !133, line: 812, type: !117)
!2219 = !DILocation(line: 812, column: 9, scope: !2179)
!2220 = !DILocation(line: 812, column: 27, scope: !2179)
!2221 = !DILocation(line: 812, column: 15, scope: !2179)
!2222 = !DILocation(line: 813, column: 29, scope: !2179)
!2223 = !DILocation(line: 813, column: 34, scope: !2179)
!2224 = !DILocation(line: 813, column: 43, scope: !2179)
!2225 = !DILocation(line: 813, column: 48, scope: !2179)
!2226 = !DILocation(line: 813, column: 57, scope: !2179)
!2227 = !DILocation(line: 813, column: 60, scope: !2179)
!2228 = !DILocation(line: 813, column: 67, scope: !2179)
!2229 = !DILocation(line: 814, column: 29, scope: !2179)
!2230 = !DILocation(line: 814, column: 32, scope: !2179)
!2231 = !DILocation(line: 815, column: 29, scope: !2179)
!2232 = !DILocation(line: 815, column: 32, scope: !2179)
!2233 = !DILocation(line: 815, column: 44, scope: !2179)
!2234 = !DILocation(line: 815, column: 47, scope: !2179)
!2235 = !DILocation(line: 813, column: 3, scope: !2179)
!2236 = !DILocation(line: 816, column: 11, scope: !2179)
!2237 = !DILocation(line: 816, column: 3, scope: !2179)
!2238 = !DILocation(line: 816, column: 9, scope: !2179)
!2239 = !DILocation(line: 817, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2179, file: !133, line: 817, column: 7)
!2241 = !DILocation(line: 817, column: 7, scope: !2179)
!2242 = !DILocation(line: 818, column: 13, scope: !2240)
!2243 = !DILocation(line: 818, column: 21, scope: !2240)
!2244 = !DILocation(line: 818, column: 6, scope: !2240)
!2245 = !DILocation(line: 818, column: 11, scope: !2240)
!2246 = !DILocation(line: 818, column: 5, scope: !2240)
!2247 = !DILocation(line: 819, column: 10, scope: !2179)
!2248 = !DILocation(line: 819, column: 3, scope: !2179)
!2249 = distinct !DISubprogram(name: "quotearg_free", scope: !133, file: !133, line: 837, type: !93, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2250 = !DILocalVariable(name: "sv", scope: !2249, file: !133, line: 839, type: !180)
!2251 = !DILocation(line: 839, column: 19, scope: !2249)
!2252 = !DILocation(line: 839, column: 24, scope: !2249)
!2253 = !DILocalVariable(name: "i", scope: !2254, file: !133, line: 840, type: !44)
!2254 = distinct !DILexicalBlock(scope: !2249, file: !133, line: 840, column: 3)
!2255 = !DILocation(line: 840, column: 12, scope: !2254)
!2256 = !DILocation(line: 840, column: 8, scope: !2254)
!2257 = !DILocation(line: 840, column: 19, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !133, line: 840, column: 3)
!2259 = !DILocation(line: 840, column: 23, scope: !2258)
!2260 = !DILocation(line: 840, column: 21, scope: !2258)
!2261 = !DILocation(line: 840, column: 3, scope: !2254)
!2262 = !DILocation(line: 841, column: 11, scope: !2258)
!2263 = !DILocation(line: 841, column: 14, scope: !2258)
!2264 = !DILocation(line: 841, column: 17, scope: !2258)
!2265 = !DILocation(line: 841, column: 5, scope: !2258)
!2266 = !DILocation(line: 840, column: 32, scope: !2258)
!2267 = !DILocation(line: 840, column: 3, scope: !2258)
!2268 = distinct !{!2268, !2261, !2269, !393}
!2269 = !DILocation(line: 841, column: 20, scope: !2254)
!2270 = !DILocation(line: 842, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2249, file: !133, line: 842, column: 7)
!2272 = !DILocation(line: 842, column: 13, scope: !2271)
!2273 = !DILocation(line: 842, column: 17, scope: !2271)
!2274 = !DILocation(line: 842, column: 7, scope: !2249)
!2275 = !DILocation(line: 844, column: 13, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2271, file: !133, line: 843, column: 5)
!2277 = !DILocation(line: 844, column: 19, scope: !2276)
!2278 = !DILocation(line: 844, column: 7, scope: !2276)
!2279 = !DILocation(line: 845, column: 21, scope: !2276)
!2280 = !DILocation(line: 846, column: 20, scope: !2276)
!2281 = !DILocation(line: 847, column: 5, scope: !2276)
!2282 = !DILocation(line: 848, column: 7, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2249, file: !133, line: 848, column: 7)
!2284 = !DILocation(line: 848, column: 10, scope: !2283)
!2285 = !DILocation(line: 848, column: 7, scope: !2249)
!2286 = !DILocation(line: 850, column: 13, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2283, file: !133, line: 849, column: 5)
!2288 = !DILocation(line: 850, column: 7, scope: !2287)
!2289 = !DILocation(line: 851, column: 15, scope: !2287)
!2290 = !DILocation(line: 852, column: 5, scope: !2287)
!2291 = !DILocation(line: 853, column: 10, scope: !2249)
!2292 = !DILocation(line: 854, column: 1, scope: !2249)
!2293 = distinct !DISubprogram(name: "quotearg_n", scope: !133, file: !133, line: 919, type: !2294, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!117, !44, !6}
!2296 = !DILocalVariable(name: "n", arg: 1, scope: !2293, file: !133, line: 919, type: !44)
!2297 = !DILocation(line: 919, column: 17, scope: !2293)
!2298 = !DILocalVariable(name: "arg", arg: 2, scope: !2293, file: !133, line: 919, type: !6)
!2299 = !DILocation(line: 919, column: 32, scope: !2293)
!2300 = !DILocation(line: 921, column: 30, scope: !2293)
!2301 = !DILocation(line: 921, column: 33, scope: !2293)
!2302 = !DILocation(line: 921, column: 10, scope: !2293)
!2303 = !DILocation(line: 921, column: 3, scope: !2293)
!2304 = distinct !DISubprogram(name: "quotearg_n_options", scope: !133, file: !133, line: 866, type: !2305, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!117, !44, !6, !141, !1101}
!2307 = !DILocalVariable(name: "n", arg: 1, scope: !2304, file: !133, line: 866, type: !44)
!2308 = !DILocation(line: 866, column: 25, scope: !2304)
!2309 = !DILocalVariable(name: "arg", arg: 2, scope: !2304, file: !133, line: 866, type: !6)
!2310 = !DILocation(line: 866, column: 40, scope: !2304)
!2311 = !DILocalVariable(name: "argsize", arg: 3, scope: !2304, file: !133, line: 866, type: !141)
!2312 = !DILocation(line: 866, column: 52, scope: !2304)
!2313 = !DILocalVariable(name: "options", arg: 4, scope: !2304, file: !133, line: 867, type: !1101)
!2314 = !DILocation(line: 867, column: 51, scope: !2304)
!2315 = !DILocalVariable(name: "saved_errno", scope: !2304, file: !133, line: 869, type: !44)
!2316 = !DILocation(line: 869, column: 7, scope: !2304)
!2317 = !DILocation(line: 869, column: 21, scope: !2304)
!2318 = !DILocalVariable(name: "sv", scope: !2304, file: !133, line: 871, type: !180)
!2319 = !DILocation(line: 871, column: 19, scope: !2304)
!2320 = !DILocation(line: 871, column: 24, scope: !2304)
!2321 = !DILocalVariable(name: "nslots_max", scope: !2304, file: !133, line: 873, type: !44)
!2322 = !DILocation(line: 873, column: 7, scope: !2304)
!2323 = !DILocation(line: 874, column: 15, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2304, file: !133, line: 874, column: 7)
!2325 = !DILocation(line: 874, column: 12, scope: !2324)
!2326 = !DILocation(line: 874, column: 17, scope: !2324)
!2327 = !DILocation(line: 874, column: 20, scope: !2324)
!2328 = !DILocation(line: 874, column: 24, scope: !2324)
!2329 = !DILocation(line: 874, column: 22, scope: !2324)
!2330 = !DILocation(line: 874, column: 7, scope: !2304)
!2331 = !DILocation(line: 875, column: 5, scope: !2324)
!2332 = !DILocation(line: 877, column: 7, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2304, file: !133, line: 877, column: 7)
!2334 = !DILocation(line: 877, column: 17, scope: !2333)
!2335 = !DILocation(line: 877, column: 14, scope: !2333)
!2336 = !DILocation(line: 877, column: 7, scope: !2304)
!2337 = !DILocalVariable(name: "preallocated", scope: !2338, file: !133, line: 879, type: !60)
!2338 = distinct !DILexicalBlock(scope: !2333, file: !133, line: 878, column: 5)
!2339 = !DILocation(line: 879, column: 12, scope: !2338)
!2340 = !DILocation(line: 879, column: 28, scope: !2338)
!2341 = !DILocation(line: 879, column: 31, scope: !2338)
!2342 = !DILocalVariable(name: "new_nslots", scope: !2338, file: !133, line: 880, type: !253)
!2343 = !DILocation(line: 880, column: 13, scope: !2338)
!2344 = !DILocation(line: 880, column: 26, scope: !2338)
!2345 = !DILocation(line: 882, column: 31, scope: !2338)
!2346 = !DILocation(line: 882, column: 53, scope: !2338)
!2347 = !DILocation(line: 883, column: 31, scope: !2338)
!2348 = !DILocation(line: 883, column: 35, scope: !2338)
!2349 = !DILocation(line: 883, column: 33, scope: !2338)
!2350 = !DILocation(line: 883, column: 42, scope: !2338)
!2351 = !DILocation(line: 883, column: 47, scope: !2338)
!2352 = !DILocation(line: 882, column: 22, scope: !2338)
!2353 = !DILocation(line: 882, column: 20, scope: !2338)
!2354 = !DILocation(line: 882, column: 15, scope: !2338)
!2355 = !DILocation(line: 884, column: 11, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2338, file: !133, line: 884, column: 11)
!2357 = !DILocation(line: 884, column: 11, scope: !2338)
!2358 = !DILocation(line: 885, column: 10, scope: !2356)
!2359 = !DILocation(line: 885, column: 15, scope: !2356)
!2360 = !DILocation(line: 885, column: 9, scope: !2356)
!2361 = !DILocation(line: 886, column: 15, scope: !2338)
!2362 = !DILocation(line: 886, column: 20, scope: !2338)
!2363 = !DILocation(line: 886, column: 18, scope: !2338)
!2364 = !DILocation(line: 886, column: 7, scope: !2338)
!2365 = !DILocation(line: 886, column: 32, scope: !2338)
!2366 = !DILocation(line: 886, column: 45, scope: !2338)
!2367 = !DILocation(line: 886, column: 43, scope: !2338)
!2368 = !DILocation(line: 886, column: 53, scope: !2338)
!2369 = !DILocation(line: 887, column: 16, scope: !2338)
!2370 = !DILocation(line: 887, column: 14, scope: !2338)
!2371 = !DILocation(line: 888, column: 5, scope: !2338)
!2372 = !DILocalVariable(name: "size", scope: !2373, file: !133, line: 891, type: !141)
!2373 = distinct !DILexicalBlock(scope: !2304, file: !133, line: 890, column: 3)
!2374 = !DILocation(line: 891, column: 12, scope: !2373)
!2375 = !DILocation(line: 891, column: 19, scope: !2373)
!2376 = !DILocation(line: 891, column: 22, scope: !2373)
!2377 = !DILocation(line: 891, column: 25, scope: !2373)
!2378 = !DILocalVariable(name: "val", scope: !2373, file: !133, line: 892, type: !117)
!2379 = !DILocation(line: 892, column: 11, scope: !2373)
!2380 = !DILocation(line: 892, column: 17, scope: !2373)
!2381 = !DILocation(line: 892, column: 20, scope: !2373)
!2382 = !DILocation(line: 892, column: 23, scope: !2373)
!2383 = !DILocalVariable(name: "flags", scope: !2373, file: !133, line: 894, type: !44)
!2384 = !DILocation(line: 894, column: 9, scope: !2373)
!2385 = !DILocation(line: 894, column: 17, scope: !2373)
!2386 = !DILocation(line: 894, column: 26, scope: !2373)
!2387 = !DILocation(line: 894, column: 32, scope: !2373)
!2388 = !DILocalVariable(name: "qsize", scope: !2373, file: !133, line: 895, type: !141)
!2389 = !DILocation(line: 895, column: 12, scope: !2373)
!2390 = !DILocation(line: 895, column: 46, scope: !2373)
!2391 = !DILocation(line: 895, column: 51, scope: !2373)
!2392 = !DILocation(line: 895, column: 57, scope: !2373)
!2393 = !DILocation(line: 895, column: 62, scope: !2373)
!2394 = !DILocation(line: 896, column: 46, scope: !2373)
!2395 = !DILocation(line: 896, column: 55, scope: !2373)
!2396 = !DILocation(line: 896, column: 62, scope: !2373)
!2397 = !DILocation(line: 897, column: 46, scope: !2373)
!2398 = !DILocation(line: 897, column: 55, scope: !2373)
!2399 = !DILocation(line: 898, column: 46, scope: !2373)
!2400 = !DILocation(line: 898, column: 55, scope: !2373)
!2401 = !DILocation(line: 899, column: 46, scope: !2373)
!2402 = !DILocation(line: 899, column: 55, scope: !2373)
!2403 = !DILocation(line: 895, column: 20, scope: !2373)
!2404 = !DILocation(line: 901, column: 9, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2373, file: !133, line: 901, column: 9)
!2406 = !DILocation(line: 901, column: 17, scope: !2405)
!2407 = !DILocation(line: 901, column: 14, scope: !2405)
!2408 = !DILocation(line: 901, column: 9, scope: !2373)
!2409 = !DILocation(line: 903, column: 29, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2405, file: !133, line: 902, column: 7)
!2411 = !DILocation(line: 903, column: 35, scope: !2410)
!2412 = !DILocation(line: 903, column: 27, scope: !2410)
!2413 = !DILocation(line: 903, column: 9, scope: !2410)
!2414 = !DILocation(line: 903, column: 12, scope: !2410)
!2415 = !DILocation(line: 903, column: 15, scope: !2410)
!2416 = !DILocation(line: 903, column: 20, scope: !2410)
!2417 = !DILocation(line: 904, column: 13, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2410, file: !133, line: 904, column: 13)
!2419 = !DILocation(line: 904, column: 17, scope: !2418)
!2420 = !DILocation(line: 904, column: 13, scope: !2410)
!2421 = !DILocation(line: 905, column: 17, scope: !2418)
!2422 = !DILocation(line: 905, column: 11, scope: !2418)
!2423 = !DILocation(line: 906, column: 39, scope: !2410)
!2424 = !DILocation(line: 906, column: 27, scope: !2410)
!2425 = !DILocation(line: 906, column: 25, scope: !2410)
!2426 = !DILocation(line: 906, column: 9, scope: !2410)
!2427 = !DILocation(line: 906, column: 12, scope: !2410)
!2428 = !DILocation(line: 906, column: 15, scope: !2410)
!2429 = !DILocation(line: 906, column: 19, scope: !2410)
!2430 = !DILocation(line: 907, column: 35, scope: !2410)
!2431 = !DILocation(line: 907, column: 40, scope: !2410)
!2432 = !DILocation(line: 907, column: 46, scope: !2410)
!2433 = !DILocation(line: 907, column: 51, scope: !2410)
!2434 = !DILocation(line: 907, column: 60, scope: !2410)
!2435 = !DILocation(line: 907, column: 69, scope: !2410)
!2436 = !DILocation(line: 908, column: 35, scope: !2410)
!2437 = !DILocation(line: 908, column: 42, scope: !2410)
!2438 = !DILocation(line: 908, column: 51, scope: !2410)
!2439 = !DILocation(line: 909, column: 35, scope: !2410)
!2440 = !DILocation(line: 909, column: 44, scope: !2410)
!2441 = !DILocation(line: 910, column: 35, scope: !2410)
!2442 = !DILocation(line: 910, column: 44, scope: !2410)
!2443 = !DILocation(line: 907, column: 9, scope: !2410)
!2444 = !DILocation(line: 911, column: 7, scope: !2410)
!2445 = !DILocation(line: 913, column: 13, scope: !2373)
!2446 = !DILocation(line: 913, column: 5, scope: !2373)
!2447 = !DILocation(line: 913, column: 11, scope: !2373)
!2448 = !DILocation(line: 914, column: 12, scope: !2373)
!2449 = !DILocation(line: 914, column: 5, scope: !2373)
!2450 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !133, file: !133, line: 925, type: !2451, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!117, !44, !6, !141}
!2453 = !DILocalVariable(name: "n", arg: 1, scope: !2450, file: !133, line: 925, type: !44)
!2454 = !DILocation(line: 925, column: 21, scope: !2450)
!2455 = !DILocalVariable(name: "arg", arg: 2, scope: !2450, file: !133, line: 925, type: !6)
!2456 = !DILocation(line: 925, column: 36, scope: !2450)
!2457 = !DILocalVariable(name: "argsize", arg: 3, scope: !2450, file: !133, line: 925, type: !141)
!2458 = !DILocation(line: 925, column: 48, scope: !2450)
!2459 = !DILocation(line: 927, column: 30, scope: !2450)
!2460 = !DILocation(line: 927, column: 33, scope: !2450)
!2461 = !DILocation(line: 927, column: 38, scope: !2450)
!2462 = !DILocation(line: 927, column: 10, scope: !2450)
!2463 = !DILocation(line: 927, column: 3, scope: !2450)
!2464 = distinct !DISubprogram(name: "quotearg", scope: !133, file: !133, line: 931, type: !2465, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!117, !6}
!2467 = !DILocalVariable(name: "arg", arg: 1, scope: !2464, file: !133, line: 931, type: !6)
!2468 = !DILocation(line: 931, column: 23, scope: !2464)
!2469 = !DILocation(line: 933, column: 25, scope: !2464)
!2470 = !DILocation(line: 933, column: 10, scope: !2464)
!2471 = !DILocation(line: 933, column: 3, scope: !2464)
!2472 = distinct !DISubprogram(name: "quotearg_mem", scope: !133, file: !133, line: 937, type: !2473, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!117, !6, !141}
!2475 = !DILocalVariable(name: "arg", arg: 1, scope: !2472, file: !133, line: 937, type: !6)
!2476 = !DILocation(line: 937, column: 27, scope: !2472)
!2477 = !DILocalVariable(name: "argsize", arg: 2, scope: !2472, file: !133, line: 937, type: !141)
!2478 = !DILocation(line: 937, column: 39, scope: !2472)
!2479 = !DILocation(line: 939, column: 29, scope: !2472)
!2480 = !DILocation(line: 939, column: 34, scope: !2472)
!2481 = !DILocation(line: 939, column: 10, scope: !2472)
!2482 = !DILocation(line: 939, column: 3, scope: !2472)
!2483 = distinct !DISubprogram(name: "quotearg_n_style", scope: !133, file: !133, line: 943, type: !2484, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!117, !44, !12, !6}
!2486 = !DILocalVariable(name: "n", arg: 1, scope: !2483, file: !133, line: 943, type: !44)
!2487 = !DILocation(line: 943, column: 23, scope: !2483)
!2488 = !DILocalVariable(name: "s", arg: 2, scope: !2483, file: !133, line: 943, type: !12)
!2489 = !DILocation(line: 943, column: 45, scope: !2483)
!2490 = !DILocalVariable(name: "arg", arg: 3, scope: !2483, file: !133, line: 943, type: !6)
!2491 = !DILocation(line: 943, column: 60, scope: !2483)
!2492 = !DILocalVariable(name: "o", scope: !2483, file: !133, line: 945, type: !1102)
!2493 = !DILocation(line: 945, column: 32, scope: !2483)
!2494 = !DILocation(line: 945, column: 64, scope: !2483)
!2495 = !DILocation(line: 945, column: 36, scope: !2483)
!2496 = !DILocation(line: 946, column: 30, scope: !2483)
!2497 = !DILocation(line: 946, column: 33, scope: !2483)
!2498 = !DILocation(line: 946, column: 10, scope: !2483)
!2499 = !DILocation(line: 946, column: 3, scope: !2483)
!2500 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !133, file: !133, line: 183, type: !2501, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!153, !12}
!2503 = !DILocalVariable(name: "style", arg: 1, scope: !2500, file: !133, line: 183, type: !12)
!2504 = !DILocation(line: 183, column: 48, scope: !2500)
!2505 = !DILocalVariable(name: "o", scope: !2500, file: !133, line: 185, type: !153)
!2506 = !DILocation(line: 185, column: 26, scope: !2500)
!2507 = !DILocation(line: 186, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2500, file: !133, line: 186, column: 7)
!2509 = !DILocation(line: 186, column: 13, scope: !2508)
!2510 = !DILocation(line: 186, column: 7, scope: !2500)
!2511 = !DILocation(line: 187, column: 5, scope: !2508)
!2512 = !DILocation(line: 188, column: 13, scope: !2500)
!2513 = !DILocation(line: 188, column: 5, scope: !2500)
!2514 = !DILocation(line: 188, column: 11, scope: !2500)
!2515 = !DILocation(line: 189, column: 3, scope: !2500)
!2516 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !133, file: !133, line: 950, type: !2517, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!117, !44, !12, !6, !141}
!2519 = !DILocalVariable(name: "n", arg: 1, scope: !2516, file: !133, line: 950, type: !44)
!2520 = !DILocation(line: 950, column: 27, scope: !2516)
!2521 = !DILocalVariable(name: "s", arg: 2, scope: !2516, file: !133, line: 950, type: !12)
!2522 = !DILocation(line: 950, column: 49, scope: !2516)
!2523 = !DILocalVariable(name: "arg", arg: 3, scope: !2516, file: !133, line: 951, type: !6)
!2524 = !DILocation(line: 951, column: 35, scope: !2516)
!2525 = !DILocalVariable(name: "argsize", arg: 4, scope: !2516, file: !133, line: 951, type: !141)
!2526 = !DILocation(line: 951, column: 47, scope: !2516)
!2527 = !DILocalVariable(name: "o", scope: !2516, file: !133, line: 953, type: !1102)
!2528 = !DILocation(line: 953, column: 32, scope: !2516)
!2529 = !DILocation(line: 953, column: 64, scope: !2516)
!2530 = !DILocation(line: 953, column: 36, scope: !2516)
!2531 = !DILocation(line: 954, column: 30, scope: !2516)
!2532 = !DILocation(line: 954, column: 33, scope: !2516)
!2533 = !DILocation(line: 954, column: 38, scope: !2516)
!2534 = !DILocation(line: 954, column: 10, scope: !2516)
!2535 = !DILocation(line: 954, column: 3, scope: !2516)
!2536 = distinct !DISubprogram(name: "quotearg_style", scope: !133, file: !133, line: 958, type: !2537, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!117, !12, !6}
!2539 = !DILocalVariable(name: "s", arg: 1, scope: !2536, file: !133, line: 958, type: !12)
!2540 = !DILocation(line: 958, column: 36, scope: !2536)
!2541 = !DILocalVariable(name: "arg", arg: 2, scope: !2536, file: !133, line: 958, type: !6)
!2542 = !DILocation(line: 958, column: 51, scope: !2536)
!2543 = !DILocation(line: 960, column: 31, scope: !2536)
!2544 = !DILocation(line: 960, column: 34, scope: !2536)
!2545 = !DILocation(line: 960, column: 10, scope: !2536)
!2546 = !DILocation(line: 960, column: 3, scope: !2536)
!2547 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !133, file: !133, line: 964, type: !2548, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!117, !12, !6, !141}
!2550 = !DILocalVariable(name: "s", arg: 1, scope: !2547, file: !133, line: 964, type: !12)
!2551 = !DILocation(line: 964, column: 40, scope: !2547)
!2552 = !DILocalVariable(name: "arg", arg: 2, scope: !2547, file: !133, line: 964, type: !6)
!2553 = !DILocation(line: 964, column: 55, scope: !2547)
!2554 = !DILocalVariable(name: "argsize", arg: 3, scope: !2547, file: !133, line: 964, type: !141)
!2555 = !DILocation(line: 964, column: 67, scope: !2547)
!2556 = !DILocation(line: 966, column: 35, scope: !2547)
!2557 = !DILocation(line: 966, column: 38, scope: !2547)
!2558 = !DILocation(line: 966, column: 43, scope: !2547)
!2559 = !DILocation(line: 966, column: 10, scope: !2547)
!2560 = !DILocation(line: 966, column: 3, scope: !2547)
!2561 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !133, file: !133, line: 970, type: !2562, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!117, !6, !141, !8}
!2564 = !DILocalVariable(name: "arg", arg: 1, scope: !2561, file: !133, line: 970, type: !6)
!2565 = !DILocation(line: 970, column: 32, scope: !2561)
!2566 = !DILocalVariable(name: "argsize", arg: 2, scope: !2561, file: !133, line: 970, type: !141)
!2567 = !DILocation(line: 970, column: 44, scope: !2561)
!2568 = !DILocalVariable(name: "ch", arg: 3, scope: !2561, file: !133, line: 970, type: !8)
!2569 = !DILocation(line: 970, column: 58, scope: !2561)
!2570 = !DILocalVariable(name: "options", scope: !2561, file: !133, line: 972, type: !153)
!2571 = !DILocation(line: 972, column: 26, scope: !2561)
!2572 = !DILocation(line: 973, column: 13, scope: !2561)
!2573 = !DILocation(line: 974, column: 31, scope: !2561)
!2574 = !DILocation(line: 974, column: 3, scope: !2561)
!2575 = !DILocation(line: 975, column: 33, scope: !2561)
!2576 = !DILocation(line: 975, column: 38, scope: !2561)
!2577 = !DILocation(line: 975, column: 10, scope: !2561)
!2578 = !DILocation(line: 975, column: 3, scope: !2561)
!2579 = distinct !DISubprogram(name: "quotearg_char", scope: !133, file: !133, line: 979, type: !2580, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!117, !6, !8}
!2582 = !DILocalVariable(name: "arg", arg: 1, scope: !2579, file: !133, line: 979, type: !6)
!2583 = !DILocation(line: 979, column: 28, scope: !2579)
!2584 = !DILocalVariable(name: "ch", arg: 2, scope: !2579, file: !133, line: 979, type: !8)
!2585 = !DILocation(line: 979, column: 38, scope: !2579)
!2586 = !DILocation(line: 981, column: 29, scope: !2579)
!2587 = !DILocation(line: 981, column: 44, scope: !2579)
!2588 = !DILocation(line: 981, column: 10, scope: !2579)
!2589 = !DILocation(line: 981, column: 3, scope: !2579)
!2590 = distinct !DISubprogram(name: "quotearg_colon", scope: !133, file: !133, line: 985, type: !2465, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2591 = !DILocalVariable(name: "arg", arg: 1, scope: !2590, file: !133, line: 985, type: !6)
!2592 = !DILocation(line: 985, column: 29, scope: !2590)
!2593 = !DILocation(line: 987, column: 25, scope: !2590)
!2594 = !DILocation(line: 987, column: 10, scope: !2590)
!2595 = !DILocation(line: 987, column: 3, scope: !2590)
!2596 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !133, file: !133, line: 991, type: !2473, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2597 = !DILocalVariable(name: "arg", arg: 1, scope: !2596, file: !133, line: 991, type: !6)
!2598 = !DILocation(line: 991, column: 33, scope: !2596)
!2599 = !DILocalVariable(name: "argsize", arg: 2, scope: !2596, file: !133, line: 991, type: !141)
!2600 = !DILocation(line: 991, column: 45, scope: !2596)
!2601 = !DILocation(line: 993, column: 29, scope: !2596)
!2602 = !DILocation(line: 993, column: 34, scope: !2596)
!2603 = !DILocation(line: 993, column: 10, scope: !2596)
!2604 = !DILocation(line: 993, column: 3, scope: !2596)
!2605 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !133, file: !133, line: 997, type: !2484, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2606 = !DILocalVariable(name: "n", arg: 1, scope: !2605, file: !133, line: 997, type: !44)
!2607 = !DILocation(line: 997, column: 29, scope: !2605)
!2608 = !DILocalVariable(name: "s", arg: 2, scope: !2605, file: !133, line: 997, type: !12)
!2609 = !DILocation(line: 997, column: 51, scope: !2605)
!2610 = !DILocalVariable(name: "arg", arg: 3, scope: !2605, file: !133, line: 997, type: !6)
!2611 = !DILocation(line: 997, column: 66, scope: !2605)
!2612 = !DILocalVariable(name: "options", scope: !2605, file: !133, line: 999, type: !153)
!2613 = !DILocation(line: 999, column: 26, scope: !2605)
!2614 = !DILocation(line: 1000, column: 41, scope: !2605)
!2615 = !DILocation(line: 1000, column: 13, scope: !2605)
!2616 = !DILocation(line: 1001, column: 3, scope: !2605)
!2617 = !DILocation(line: 1002, column: 30, scope: !2605)
!2618 = !DILocation(line: 1002, column: 33, scope: !2605)
!2619 = !DILocation(line: 1002, column: 10, scope: !2605)
!2620 = !DILocation(line: 1002, column: 3, scope: !2605)
!2621 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !133, file: !133, line: 1006, type: !2622, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!117, !44, !6, !6, !6}
!2624 = !DILocalVariable(name: "n", arg: 1, scope: !2621, file: !133, line: 1006, type: !44)
!2625 = !DILocation(line: 1006, column: 24, scope: !2621)
!2626 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2621, file: !133, line: 1006, type: !6)
!2627 = !DILocation(line: 1006, column: 39, scope: !2621)
!2628 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2621, file: !133, line: 1007, type: !6)
!2629 = !DILocation(line: 1007, column: 32, scope: !2621)
!2630 = !DILocalVariable(name: "arg", arg: 4, scope: !2621, file: !133, line: 1007, type: !6)
!2631 = !DILocation(line: 1007, column: 57, scope: !2621)
!2632 = !DILocation(line: 1009, column: 33, scope: !2621)
!2633 = !DILocation(line: 1009, column: 36, scope: !2621)
!2634 = !DILocation(line: 1009, column: 48, scope: !2621)
!2635 = !DILocation(line: 1009, column: 61, scope: !2621)
!2636 = !DILocation(line: 1009, column: 10, scope: !2621)
!2637 = !DILocation(line: 1009, column: 3, scope: !2621)
!2638 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !133, file: !133, line: 1014, type: !2639, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!117, !44, !6, !6, !6, !141}
!2641 = !DILocalVariable(name: "n", arg: 1, scope: !2638, file: !133, line: 1014, type: !44)
!2642 = !DILocation(line: 1014, column: 28, scope: !2638)
!2643 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2638, file: !133, line: 1014, type: !6)
!2644 = !DILocation(line: 1014, column: 43, scope: !2638)
!2645 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2638, file: !133, line: 1015, type: !6)
!2646 = !DILocation(line: 1015, column: 36, scope: !2638)
!2647 = !DILocalVariable(name: "arg", arg: 4, scope: !2638, file: !133, line: 1016, type: !6)
!2648 = !DILocation(line: 1016, column: 36, scope: !2638)
!2649 = !DILocalVariable(name: "argsize", arg: 5, scope: !2638, file: !133, line: 1016, type: !141)
!2650 = !DILocation(line: 1016, column: 48, scope: !2638)
!2651 = !DILocalVariable(name: "o", scope: !2638, file: !133, line: 1018, type: !153)
!2652 = !DILocation(line: 1018, column: 26, scope: !2638)
!2653 = !DILocation(line: 1018, column: 30, scope: !2638)
!2654 = !DILocation(line: 1019, column: 27, scope: !2638)
!2655 = !DILocation(line: 1019, column: 39, scope: !2638)
!2656 = !DILocation(line: 1019, column: 3, scope: !2638)
!2657 = !DILocation(line: 1020, column: 30, scope: !2638)
!2658 = !DILocation(line: 1020, column: 33, scope: !2638)
!2659 = !DILocation(line: 1020, column: 38, scope: !2638)
!2660 = !DILocation(line: 1020, column: 10, scope: !2638)
!2661 = !DILocation(line: 1020, column: 3, scope: !2638)
!2662 = distinct !DISubprogram(name: "quotearg_custom", scope: !133, file: !133, line: 1024, type: !2663, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!117, !6, !6, !6}
!2665 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2662, file: !133, line: 1024, type: !6)
!2666 = !DILocation(line: 1024, column: 30, scope: !2662)
!2667 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2662, file: !133, line: 1024, type: !6)
!2668 = !DILocation(line: 1024, column: 54, scope: !2662)
!2669 = !DILocalVariable(name: "arg", arg: 3, scope: !2662, file: !133, line: 1025, type: !6)
!2670 = !DILocation(line: 1025, column: 30, scope: !2662)
!2671 = !DILocation(line: 1027, column: 32, scope: !2662)
!2672 = !DILocation(line: 1027, column: 44, scope: !2662)
!2673 = !DILocation(line: 1027, column: 57, scope: !2662)
!2674 = !DILocation(line: 1027, column: 10, scope: !2662)
!2675 = !DILocation(line: 1027, column: 3, scope: !2662)
!2676 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !133, file: !133, line: 1031, type: !2677, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!117, !6, !6, !6, !141}
!2679 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2676, file: !133, line: 1031, type: !6)
!2680 = !DILocation(line: 1031, column: 34, scope: !2676)
!2681 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2676, file: !133, line: 1031, type: !6)
!2682 = !DILocation(line: 1031, column: 58, scope: !2676)
!2683 = !DILocalVariable(name: "arg", arg: 3, scope: !2676, file: !133, line: 1032, type: !6)
!2684 = !DILocation(line: 1032, column: 34, scope: !2676)
!2685 = !DILocalVariable(name: "argsize", arg: 4, scope: !2676, file: !133, line: 1032, type: !141)
!2686 = !DILocation(line: 1032, column: 46, scope: !2676)
!2687 = !DILocation(line: 1034, column: 36, scope: !2676)
!2688 = !DILocation(line: 1034, column: 48, scope: !2676)
!2689 = !DILocation(line: 1034, column: 61, scope: !2676)
!2690 = !DILocation(line: 1035, column: 33, scope: !2676)
!2691 = !DILocation(line: 1034, column: 10, scope: !2676)
!2692 = !DILocation(line: 1034, column: 3, scope: !2676)
!2693 = distinct !DISubprogram(name: "quote_n_mem", scope: !133, file: !133, line: 1049, type: !2694, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!6, !44, !6, !141}
!2696 = !DILocalVariable(name: "n", arg: 1, scope: !2693, file: !133, line: 1049, type: !44)
!2697 = !DILocation(line: 1049, column: 18, scope: !2693)
!2698 = !DILocalVariable(name: "arg", arg: 2, scope: !2693, file: !133, line: 1049, type: !6)
!2699 = !DILocation(line: 1049, column: 33, scope: !2693)
!2700 = !DILocalVariable(name: "argsize", arg: 3, scope: !2693, file: !133, line: 1049, type: !141)
!2701 = !DILocation(line: 1049, column: 45, scope: !2693)
!2702 = !DILocation(line: 1051, column: 30, scope: !2693)
!2703 = !DILocation(line: 1051, column: 33, scope: !2693)
!2704 = !DILocation(line: 1051, column: 38, scope: !2693)
!2705 = !DILocation(line: 1051, column: 10, scope: !2693)
!2706 = !DILocation(line: 1051, column: 3, scope: !2693)
!2707 = distinct !DISubprogram(name: "quote_mem", scope: !133, file: !133, line: 1055, type: !2708, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!6, !6, !141}
!2710 = !DILocalVariable(name: "arg", arg: 1, scope: !2707, file: !133, line: 1055, type: !6)
!2711 = !DILocation(line: 1055, column: 24, scope: !2707)
!2712 = !DILocalVariable(name: "argsize", arg: 2, scope: !2707, file: !133, line: 1055, type: !141)
!2713 = !DILocation(line: 1055, column: 36, scope: !2707)
!2714 = !DILocation(line: 1057, column: 26, scope: !2707)
!2715 = !DILocation(line: 1057, column: 31, scope: !2707)
!2716 = !DILocation(line: 1057, column: 10, scope: !2707)
!2717 = !DILocation(line: 1057, column: 3, scope: !2707)
!2718 = distinct !DISubprogram(name: "quote_n", scope: !133, file: !133, line: 1061, type: !2719, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!6, !44, !6}
!2721 = !DILocalVariable(name: "n", arg: 1, scope: !2718, file: !133, line: 1061, type: !44)
!2722 = !DILocation(line: 1061, column: 14, scope: !2718)
!2723 = !DILocalVariable(name: "arg", arg: 2, scope: !2718, file: !133, line: 1061, type: !6)
!2724 = !DILocation(line: 1061, column: 29, scope: !2718)
!2725 = !DILocation(line: 1063, column: 23, scope: !2718)
!2726 = !DILocation(line: 1063, column: 26, scope: !2718)
!2727 = !DILocation(line: 1063, column: 10, scope: !2718)
!2728 = !DILocation(line: 1063, column: 3, scope: !2718)
!2729 = distinct !DISubprogram(name: "quote", scope: !133, file: !133, line: 1067, type: !2730, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!6, !6}
!2732 = !DILocalVariable(name: "arg", arg: 1, scope: !2729, file: !133, line: 1067, type: !6)
!2733 = !DILocation(line: 1067, column: 20, scope: !2729)
!2734 = !DILocation(line: 1069, column: 22, scope: !2729)
!2735 = !DILocation(line: 1069, column: 10, scope: !2729)
!2736 = !DILocation(line: 1069, column: 3, scope: !2729)
!2737 = distinct !DISubprogram(name: "streq", scope: !2738, file: !2738, line: 1359, type: !2739, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !47)
!2738 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!60, !6, !6}
!2741 = !DILocalVariable(name: "__s1", arg: 1, scope: !2737, file: !2738, line: 1359, type: !6)
!2742 = !DILocation(line: 1359, column: 20, scope: !2737)
!2743 = !DILocalVariable(name: "__s2", arg: 2, scope: !2737, file: !2738, line: 1359, type: !6)
!2744 = !DILocation(line: 1359, column: 38, scope: !2737)
!2745 = !DILocation(line: 1361, column: 19, scope: !2737)
!2746 = !DILocation(line: 1361, column: 25, scope: !2737)
!2747 = !DILocation(line: 1361, column: 11, scope: !2737)
!2748 = !DILocation(line: 1361, column: 10, scope: !2737)
!2749 = !DILocation(line: 1361, column: 3, scope: !2737)
!2750 = distinct !DISubprogram(name: "version_etc_arn", scope: !233, file: !233, line: 61, type: !2751, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !47)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{null, !2753, !6, !6, !6, !2806, !141}
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2755, line: 7, baseType: !2756)
!2755 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2757, line: 49, size: 1728, elements: !2758)
!2757 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2758 = !{!2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2774, !2776, !2777, !2778, !2780, !2781, !2783, !2787, !2790, !2792, !2795, !2798, !2799, !2800, !2801, !2802}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2756, file: !2757, line: 51, baseType: !44, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2756, file: !2757, line: 54, baseType: !117, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2756, file: !2757, line: 55, baseType: !117, size: 64, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2756, file: !2757, line: 56, baseType: !117, size: 64, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2756, file: !2757, line: 57, baseType: !117, size: 64, offset: 256)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2756, file: !2757, line: 58, baseType: !117, size: 64, offset: 320)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2756, file: !2757, line: 59, baseType: !117, size: 64, offset: 384)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2756, file: !2757, line: 60, baseType: !117, size: 64, offset: 448)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2756, file: !2757, line: 61, baseType: !117, size: 64, offset: 512)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2756, file: !2757, line: 64, baseType: !117, size: 64, offset: 576)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2756, file: !2757, line: 65, baseType: !117, size: 64, offset: 640)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2756, file: !2757, line: 66, baseType: !117, size: 64, offset: 704)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2756, file: !2757, line: 68, baseType: !2772, size: 64, offset: 768)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2757, line: 36, flags: DIFlagFwdDecl)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2756, file: !2757, line: 70, baseType: !2775, size: 64, offset: 832)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2756, file: !2757, line: 72, baseType: !44, size: 32, offset: 896)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2756, file: !2757, line: 73, baseType: !44, size: 32, offset: 928)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2756, file: !2757, line: 74, baseType: !2779, size: 64, offset: 960)
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1051, line: 152, baseType: !256)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2756, file: !2757, line: 77, baseType: !45, size: 16, offset: 1024)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2756, file: !2757, line: 78, baseType: !2782, size: 8, offset: 1040)
!2782 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2756, file: !2757, line: 79, baseType: !2784, size: 8, offset: 1048)
!2784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2785)
!2785 = !{!2786}
!2786 = !DISubrange(count: 1)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2756, file: !2757, line: 81, baseType: !2788, size: 64, offset: 1088)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2757, line: 43, baseType: null)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2756, file: !2757, line: 89, baseType: !2791, size: 64, offset: 1152)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1051, line: 153, baseType: !256)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2756, file: !2757, line: 91, baseType: !2793, size: 64, offset: 1216)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2757, line: 37, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2756, file: !2757, line: 92, baseType: !2796, size: 64, offset: 1280)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2757, line: 38, flags: DIFlagFwdDecl)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2756, file: !2757, line: 93, baseType: !2775, size: 64, offset: 1344)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2756, file: !2757, line: 94, baseType: !43, size: 64, offset: 1408)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2756, file: !2757, line: 95, baseType: !141, size: 64, offset: 1472)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2756, file: !2757, line: 96, baseType: !44, size: 32, offset: 1536)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2756, file: !2757, line: 98, baseType: !2803, size: 160, offset: 1568)
!2803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2804)
!2804 = !{!2805}
!2805 = !DISubrange(count: 20)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!2807 = !DILocalVariable(name: "stream", arg: 1, scope: !2750, file: !233, line: 61, type: !2753)
!2808 = !DILocation(line: 61, column: 24, scope: !2750)
!2809 = !DILocalVariable(name: "command_name", arg: 2, scope: !2750, file: !233, line: 62, type: !6)
!2810 = !DILocation(line: 62, column: 30, scope: !2750)
!2811 = !DILocalVariable(name: "package", arg: 3, scope: !2750, file: !233, line: 62, type: !6)
!2812 = !DILocation(line: 62, column: 56, scope: !2750)
!2813 = !DILocalVariable(name: "version", arg: 4, scope: !2750, file: !233, line: 63, type: !6)
!2814 = !DILocation(line: 63, column: 30, scope: !2750)
!2815 = !DILocalVariable(name: "authors", arg: 5, scope: !2750, file: !233, line: 64, type: !2806)
!2816 = !DILocation(line: 64, column: 39, scope: !2750)
!2817 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2750, file: !233, line: 64, type: !141)
!2818 = !DILocation(line: 64, column: 55, scope: !2750)
!2819 = !DILocation(line: 66, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2750, file: !233, line: 66, column: 7)
!2821 = !DILocation(line: 66, column: 7, scope: !2750)
!2822 = !DILocation(line: 67, column: 14, scope: !2820)
!2823 = !DILocation(line: 67, column: 38, scope: !2820)
!2824 = !DILocation(line: 67, column: 52, scope: !2820)
!2825 = !DILocation(line: 67, column: 61, scope: !2820)
!2826 = !DILocation(line: 67, column: 5, scope: !2820)
!2827 = !DILocation(line: 69, column: 14, scope: !2820)
!2828 = !DILocation(line: 69, column: 33, scope: !2820)
!2829 = !DILocation(line: 69, column: 42, scope: !2820)
!2830 = !DILocation(line: 69, column: 5, scope: !2820)
!2831 = !DILocation(line: 83, column: 12, scope: !2750)
!2832 = !DILocation(line: 83, column: 43, scope: !2750)
!2833 = !DILocation(line: 83, column: 3, scope: !2750)
!2834 = !DILocation(line: 85, column: 3, scope: !2750)
!2835 = !DILocation(line: 88, column: 12, scope: !2750)
!2836 = !DILocation(line: 88, column: 20, scope: !2750)
!2837 = !DILocation(line: 88, column: 3, scope: !2750)
!2838 = !DILocation(line: 95, column: 3, scope: !2750)
!2839 = !DILocation(line: 97, column: 11, scope: !2750)
!2840 = !DILocation(line: 97, column: 3, scope: !2750)
!2841 = !DILocation(line: 102, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2750, file: !233, line: 98, column: 5)
!2843 = !DILocation(line: 105, column: 16, scope: !2842)
!2844 = !DILocation(line: 105, column: 24, scope: !2842)
!2845 = !DILocation(line: 105, column: 47, scope: !2842)
!2846 = !DILocation(line: 105, column: 7, scope: !2842)
!2847 = !DILocation(line: 106, column: 7, scope: !2842)
!2848 = !DILocation(line: 109, column: 16, scope: !2842)
!2849 = !DILocation(line: 109, column: 24, scope: !2842)
!2850 = !DILocation(line: 109, column: 54, scope: !2842)
!2851 = !DILocation(line: 109, column: 66, scope: !2842)
!2852 = !DILocation(line: 109, column: 7, scope: !2842)
!2853 = !DILocation(line: 110, column: 7, scope: !2842)
!2854 = !DILocation(line: 113, column: 16, scope: !2842)
!2855 = !DILocation(line: 113, column: 24, scope: !2842)
!2856 = !DILocation(line: 114, column: 16, scope: !2842)
!2857 = !DILocation(line: 114, column: 28, scope: !2842)
!2858 = !DILocation(line: 114, column: 40, scope: !2842)
!2859 = !DILocation(line: 113, column: 7, scope: !2842)
!2860 = !DILocation(line: 115, column: 7, scope: !2842)
!2861 = !DILocation(line: 120, column: 16, scope: !2842)
!2862 = !DILocation(line: 120, column: 24, scope: !2842)
!2863 = !DILocation(line: 121, column: 16, scope: !2842)
!2864 = !DILocation(line: 121, column: 28, scope: !2842)
!2865 = !DILocation(line: 121, column: 40, scope: !2842)
!2866 = !DILocation(line: 121, column: 52, scope: !2842)
!2867 = !DILocation(line: 120, column: 7, scope: !2842)
!2868 = !DILocation(line: 122, column: 7, scope: !2842)
!2869 = !DILocation(line: 127, column: 16, scope: !2842)
!2870 = !DILocation(line: 127, column: 24, scope: !2842)
!2871 = !DILocation(line: 128, column: 16, scope: !2842)
!2872 = !DILocation(line: 128, column: 28, scope: !2842)
!2873 = !DILocation(line: 128, column: 40, scope: !2842)
!2874 = !DILocation(line: 128, column: 52, scope: !2842)
!2875 = !DILocation(line: 128, column: 64, scope: !2842)
!2876 = !DILocation(line: 127, column: 7, scope: !2842)
!2877 = !DILocation(line: 129, column: 7, scope: !2842)
!2878 = !DILocation(line: 134, column: 16, scope: !2842)
!2879 = !DILocation(line: 134, column: 24, scope: !2842)
!2880 = !DILocation(line: 135, column: 16, scope: !2842)
!2881 = !DILocation(line: 135, column: 28, scope: !2842)
!2882 = !DILocation(line: 135, column: 40, scope: !2842)
!2883 = !DILocation(line: 135, column: 52, scope: !2842)
!2884 = !DILocation(line: 135, column: 64, scope: !2842)
!2885 = !DILocation(line: 136, column: 16, scope: !2842)
!2886 = !DILocation(line: 134, column: 7, scope: !2842)
!2887 = !DILocation(line: 137, column: 7, scope: !2842)
!2888 = !DILocation(line: 142, column: 16, scope: !2842)
!2889 = !DILocation(line: 142, column: 24, scope: !2842)
!2890 = !DILocation(line: 143, column: 16, scope: !2842)
!2891 = !DILocation(line: 143, column: 28, scope: !2842)
!2892 = !DILocation(line: 143, column: 40, scope: !2842)
!2893 = !DILocation(line: 143, column: 52, scope: !2842)
!2894 = !DILocation(line: 143, column: 64, scope: !2842)
!2895 = !DILocation(line: 144, column: 16, scope: !2842)
!2896 = !DILocation(line: 144, column: 28, scope: !2842)
!2897 = !DILocation(line: 142, column: 7, scope: !2842)
!2898 = !DILocation(line: 145, column: 7, scope: !2842)
!2899 = !DILocation(line: 150, column: 16, scope: !2842)
!2900 = !DILocation(line: 150, column: 24, scope: !2842)
!2901 = !DILocation(line: 152, column: 17, scope: !2842)
!2902 = !DILocation(line: 152, column: 29, scope: !2842)
!2903 = !DILocation(line: 152, column: 41, scope: !2842)
!2904 = !DILocation(line: 152, column: 53, scope: !2842)
!2905 = !DILocation(line: 152, column: 65, scope: !2842)
!2906 = !DILocation(line: 153, column: 17, scope: !2842)
!2907 = !DILocation(line: 153, column: 29, scope: !2842)
!2908 = !DILocation(line: 153, column: 41, scope: !2842)
!2909 = !DILocation(line: 150, column: 7, scope: !2842)
!2910 = !DILocation(line: 154, column: 7, scope: !2842)
!2911 = !DILocation(line: 159, column: 16, scope: !2842)
!2912 = !DILocation(line: 159, column: 24, scope: !2842)
!2913 = !DILocation(line: 161, column: 16, scope: !2842)
!2914 = !DILocation(line: 161, column: 28, scope: !2842)
!2915 = !DILocation(line: 161, column: 40, scope: !2842)
!2916 = !DILocation(line: 161, column: 52, scope: !2842)
!2917 = !DILocation(line: 161, column: 64, scope: !2842)
!2918 = !DILocation(line: 162, column: 16, scope: !2842)
!2919 = !DILocation(line: 162, column: 28, scope: !2842)
!2920 = !DILocation(line: 162, column: 40, scope: !2842)
!2921 = !DILocation(line: 162, column: 52, scope: !2842)
!2922 = !DILocation(line: 159, column: 7, scope: !2842)
!2923 = !DILocation(line: 163, column: 7, scope: !2842)
!2924 = !DILocation(line: 170, column: 16, scope: !2842)
!2925 = !DILocation(line: 170, column: 24, scope: !2842)
!2926 = !DILocation(line: 172, column: 17, scope: !2842)
!2927 = !DILocation(line: 172, column: 29, scope: !2842)
!2928 = !DILocation(line: 172, column: 41, scope: !2842)
!2929 = !DILocation(line: 172, column: 53, scope: !2842)
!2930 = !DILocation(line: 172, column: 65, scope: !2842)
!2931 = !DILocation(line: 173, column: 17, scope: !2842)
!2932 = !DILocation(line: 173, column: 29, scope: !2842)
!2933 = !DILocation(line: 173, column: 41, scope: !2842)
!2934 = !DILocation(line: 173, column: 53, scope: !2842)
!2935 = !DILocation(line: 170, column: 7, scope: !2842)
!2936 = !DILocation(line: 174, column: 7, scope: !2842)
!2937 = !DILocation(line: 176, column: 1, scope: !2750)
!2938 = distinct !DISubprogram(name: "version_etc_ar", scope: !233, file: !233, line: 183, type: !2939, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !47)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{null, !2753, !6, !6, !6, !2806}
!2941 = !DILocalVariable(name: "stream", arg: 1, scope: !2938, file: !233, line: 183, type: !2753)
!2942 = !DILocation(line: 183, column: 23, scope: !2938)
!2943 = !DILocalVariable(name: "command_name", arg: 2, scope: !2938, file: !233, line: 184, type: !6)
!2944 = !DILocation(line: 184, column: 29, scope: !2938)
!2945 = !DILocalVariable(name: "package", arg: 3, scope: !2938, file: !233, line: 184, type: !6)
!2946 = !DILocation(line: 184, column: 55, scope: !2938)
!2947 = !DILocalVariable(name: "version", arg: 4, scope: !2938, file: !233, line: 185, type: !6)
!2948 = !DILocation(line: 185, column: 29, scope: !2938)
!2949 = !DILocalVariable(name: "authors", arg: 5, scope: !2938, file: !233, line: 185, type: !2806)
!2950 = !DILocation(line: 185, column: 59, scope: !2938)
!2951 = !DILocalVariable(name: "n_authors", scope: !2938, file: !233, line: 187, type: !141)
!2952 = !DILocation(line: 187, column: 10, scope: !2938)
!2953 = !DILocation(line: 189, column: 18, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2938, file: !233, line: 189, column: 3)
!2955 = !DILocation(line: 189, column: 8, scope: !2954)
!2956 = !DILocation(line: 189, column: 23, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2954, file: !233, line: 189, column: 3)
!2958 = !DILocation(line: 189, column: 31, scope: !2957)
!2959 = !DILocation(line: 189, column: 3, scope: !2954)
!2960 = !DILocation(line: 189, column: 52, scope: !2957)
!2961 = !DILocation(line: 189, column: 3, scope: !2957)
!2962 = distinct !{!2962, !2959, !2963, !393}
!2963 = !DILocation(line: 190, column: 5, scope: !2954)
!2964 = !DILocation(line: 191, column: 20, scope: !2938)
!2965 = !DILocation(line: 191, column: 28, scope: !2938)
!2966 = !DILocation(line: 191, column: 42, scope: !2938)
!2967 = !DILocation(line: 191, column: 51, scope: !2938)
!2968 = !DILocation(line: 191, column: 60, scope: !2938)
!2969 = !DILocation(line: 191, column: 69, scope: !2938)
!2970 = !DILocation(line: 191, column: 3, scope: !2938)
!2971 = !DILocation(line: 192, column: 1, scope: !2938)
!2972 = distinct !DISubprogram(name: "version_etc_va", scope: !233, file: !233, line: 199, type: !2973, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !47)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{null, !2753, !6, !6, !6, !2975}
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !73, line: 52, baseType: !2976)
!2976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !75, line: 32, baseType: !2977)
!2977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2978, baseType: !2979)
!2978 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !79, size: 256, elements: !2980)
!2980 = !{!2981, !2982, !2983, !2984, !2985}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2979, file: !2978, line: 192, baseType: !43, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2979, file: !2978, line: 192, baseType: !43, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2979, file: !2978, line: 192, baseType: !43, size: 64, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2979, file: !2978, line: 192, baseType: !44, size: 32, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2979, file: !2978, line: 192, baseType: !44, size: 32, offset: 224)
!2986 = !DILocalVariable(name: "stream", arg: 1, scope: !2972, file: !233, line: 199, type: !2753)
!2987 = !DILocation(line: 199, column: 23, scope: !2972)
!2988 = !DILocalVariable(name: "command_name", arg: 2, scope: !2972, file: !233, line: 200, type: !6)
!2989 = !DILocation(line: 200, column: 29, scope: !2972)
!2990 = !DILocalVariable(name: "package", arg: 3, scope: !2972, file: !233, line: 200, type: !6)
!2991 = !DILocation(line: 200, column: 55, scope: !2972)
!2992 = !DILocalVariable(name: "version", arg: 4, scope: !2972, file: !233, line: 201, type: !6)
!2993 = !DILocation(line: 201, column: 29, scope: !2972)
!2994 = !DILocalVariable(name: "authors", arg: 5, scope: !2972, file: !233, line: 201, type: !2975)
!2995 = !DILocation(line: 201, column: 46, scope: !2972)
!2996 = !DILocalVariable(name: "n_authors", scope: !2972, file: !233, line: 203, type: !141)
!2997 = !DILocation(line: 203, column: 10, scope: !2972)
!2998 = !DILocalVariable(name: "authtab", scope: !2972, file: !233, line: 204, type: !2999)
!2999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !149)
!3000 = !DILocation(line: 204, column: 15, scope: !2972)
!3001 = !DILocation(line: 206, column: 18, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2972, file: !233, line: 206, column: 3)
!3003 = !DILocation(line: 206, column: 8, scope: !3002)
!3004 = !DILocation(line: 207, column: 8, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3002, file: !233, line: 206, column: 3)
!3006 = !DILocation(line: 207, column: 18, scope: !3005)
!3007 = !DILocation(line: 208, column: 10, scope: !3005)
!3008 = !DILocation(line: 208, column: 35, scope: !3005)
!3009 = !DILocation(line: 208, column: 22, scope: !3005)
!3010 = !DILocation(line: 208, column: 14, scope: !3005)
!3011 = !DILocation(line: 208, column: 33, scope: !3005)
!3012 = !DILocation(line: 208, column: 67, scope: !3005)
!3013 = !DILocation(line: 0, scope: !3005)
!3014 = !DILocation(line: 206, column: 3, scope: !3002)
!3015 = !DILocation(line: 209, column: 17, scope: !3005)
!3016 = !DILocation(line: 206, column: 3, scope: !3005)
!3017 = distinct !{!3017, !3014, !3018, !393}
!3018 = !DILocation(line: 210, column: 5, scope: !3002)
!3019 = !DILocation(line: 211, column: 20, scope: !2972)
!3020 = !DILocation(line: 211, column: 28, scope: !2972)
!3021 = !DILocation(line: 211, column: 42, scope: !2972)
!3022 = !DILocation(line: 211, column: 51, scope: !2972)
!3023 = !DILocation(line: 212, column: 20, scope: !2972)
!3024 = !DILocation(line: 212, column: 29, scope: !2972)
!3025 = !DILocation(line: 211, column: 3, scope: !2972)
!3026 = !DILocation(line: 213, column: 1, scope: !2972)
!3027 = distinct !DISubprogram(name: "version_etc", scope: !233, file: !233, line: 230, type: !3028, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !47)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null, !2753, !6, !6, !6, null}
!3030 = !DILocalVariable(name: "stream", arg: 1, scope: !3027, file: !233, line: 230, type: !2753)
!3031 = !DILocation(line: 230, column: 20, scope: !3027)
!3032 = !DILocalVariable(name: "command_name", arg: 2, scope: !3027, file: !233, line: 231, type: !6)
!3033 = !DILocation(line: 231, column: 26, scope: !3027)
!3034 = !DILocalVariable(name: "package", arg: 3, scope: !3027, file: !233, line: 231, type: !6)
!3035 = !DILocation(line: 231, column: 52, scope: !3027)
!3036 = !DILocalVariable(name: "version", arg: 4, scope: !3027, file: !233, line: 232, type: !6)
!3037 = !DILocation(line: 232, column: 26, scope: !3027)
!3038 = !DILocalVariable(name: "authors", scope: !3027, file: !233, line: 234, type: !2975)
!3039 = !DILocation(line: 234, column: 11, scope: !3027)
!3040 = !DILocation(line: 235, column: 3, scope: !3027)
!3041 = !DILocation(line: 236, column: 19, scope: !3027)
!3042 = !DILocation(line: 236, column: 27, scope: !3027)
!3043 = !DILocation(line: 236, column: 41, scope: !3027)
!3044 = !DILocation(line: 236, column: 50, scope: !3027)
!3045 = !DILocation(line: 236, column: 3, scope: !3027)
!3046 = !DILocation(line: 237, column: 3, scope: !3027)
!3047 = !DILocation(line: 238, column: 1, scope: !3027)
!3048 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !233, file: !233, line: 241, type: !93, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !47)
!3049 = !DILocation(line: 243, column: 3, scope: !3048)
!3050 = !DILocation(line: 248, column: 11, scope: !3048)
!3051 = !DILocation(line: 248, column: 3, scope: !3048)
!3052 = !DILocation(line: 254, column: 11, scope: !3048)
!3053 = !DILocation(line: 254, column: 3, scope: !3048)
!3054 = !DILocation(line: 259, column: 11, scope: !3048)
!3055 = !DILocation(line: 259, column: 3, scope: !3048)
!3056 = !DILocation(line: 261, column: 1, scope: !3048)
!3057 = distinct !DISubprogram(name: "xnrealloc", scope: !3058, file: !3058, line: 147, type: !3059, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3058 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!43, !43, !141, !141}
!3061 = !DILocalVariable(name: "p", arg: 1, scope: !3057, file: !3058, line: 147, type: !43)
!3062 = !DILocation(line: 147, column: 18, scope: !3057)
!3063 = !DILocalVariable(name: "n", arg: 2, scope: !3057, file: !3058, line: 147, type: !141)
!3064 = !DILocation(line: 147, column: 28, scope: !3057)
!3065 = !DILocalVariable(name: "s", arg: 3, scope: !3057, file: !3058, line: 147, type: !141)
!3066 = !DILocation(line: 147, column: 38, scope: !3057)
!3067 = !DILocation(line: 149, column: 25, scope: !3057)
!3068 = !DILocation(line: 149, column: 28, scope: !3057)
!3069 = !DILocation(line: 149, column: 31, scope: !3057)
!3070 = !DILocation(line: 149, column: 10, scope: !3057)
!3071 = !DILocation(line: 149, column: 3, scope: !3057)
!3072 = distinct !DISubprogram(name: "xreallocarray", scope: !239, file: !239, line: 83, type: !3059, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3073 = !DILocalVariable(name: "p", arg: 1, scope: !3072, file: !239, line: 83, type: !43)
!3074 = !DILocation(line: 83, column: 22, scope: !3072)
!3075 = !DILocalVariable(name: "n", arg: 2, scope: !3072, file: !239, line: 83, type: !141)
!3076 = !DILocation(line: 83, column: 32, scope: !3072)
!3077 = !DILocalVariable(name: "s", arg: 3, scope: !3072, file: !239, line: 83, type: !141)
!3078 = !DILocation(line: 83, column: 42, scope: !3072)
!3079 = !DILocation(line: 85, column: 39, scope: !3072)
!3080 = !DILocation(line: 85, column: 42, scope: !3072)
!3081 = !DILocation(line: 85, column: 45, scope: !3072)
!3082 = !DILocation(line: 85, column: 25, scope: !3072)
!3083 = !DILocation(line: 85, column: 10, scope: !3072)
!3084 = !DILocation(line: 85, column: 3, scope: !3072)
!3085 = distinct !DISubprogram(name: "check_nonnull", scope: !239, file: !239, line: 37, type: !3086, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!43, !43}
!3088 = !DILocalVariable(name: "p", arg: 1, scope: !3085, file: !239, line: 37, type: !43)
!3089 = !DILocation(line: 37, column: 22, scope: !3085)
!3090 = !DILocation(line: 39, column: 8, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3085, file: !239, line: 39, column: 7)
!3092 = !DILocation(line: 39, column: 7, scope: !3085)
!3093 = !DILocation(line: 40, column: 5, scope: !3091)
!3094 = !DILocation(line: 41, column: 10, scope: !3085)
!3095 = !DILocation(line: 41, column: 3, scope: !3085)
!3096 = distinct !DISubprogram(name: "xmalloc", scope: !239, file: !239, line: 47, type: !3097, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!43, !141}
!3099 = !DILocalVariable(name: "s", arg: 1, scope: !3096, file: !239, line: 47, type: !141)
!3100 = !DILocation(line: 47, column: 17, scope: !3096)
!3101 = !DILocation(line: 49, column: 33, scope: !3096)
!3102 = !DILocation(line: 49, column: 25, scope: !3096)
!3103 = !DILocation(line: 49, column: 10, scope: !3096)
!3104 = !DILocation(line: 49, column: 3, scope: !3096)
!3105 = distinct !DISubprogram(name: "ximalloc", scope: !239, file: !239, line: 53, type: !3106, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!43, !253}
!3108 = !DILocalVariable(name: "s", arg: 1, scope: !3105, file: !239, line: 53, type: !253)
!3109 = !DILocation(line: 53, column: 17, scope: !3105)
!3110 = !DILocation(line: 55, column: 34, scope: !3105)
!3111 = !DILocation(line: 55, column: 25, scope: !3105)
!3112 = !DILocation(line: 55, column: 10, scope: !3105)
!3113 = !DILocation(line: 55, column: 3, scope: !3105)
!3114 = distinct !DISubprogram(name: "xcharalloc", scope: !239, file: !239, line: 59, type: !3115, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!117, !141}
!3117 = !DILocalVariable(name: "n", arg: 1, scope: !3114, file: !239, line: 59, type: !141)
!3118 = !DILocation(line: 59, column: 20, scope: !3114)
!3119 = !DILocation(line: 61, column: 10, scope: !3114)
!3120 = !DILocation(line: 61, column: 3, scope: !3114)
!3121 = distinct !DISubprogram(name: "xrealloc", scope: !239, file: !239, line: 68, type: !3122, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!43, !43, !141}
!3124 = !DILocalVariable(name: "p", arg: 1, scope: !3121, file: !239, line: 68, type: !43)
!3125 = !DILocation(line: 68, column: 17, scope: !3121)
!3126 = !DILocalVariable(name: "s", arg: 2, scope: !3121, file: !239, line: 68, type: !141)
!3127 = !DILocation(line: 68, column: 27, scope: !3121)
!3128 = !DILocation(line: 70, column: 34, scope: !3121)
!3129 = !DILocation(line: 70, column: 37, scope: !3121)
!3130 = !DILocation(line: 70, column: 25, scope: !3121)
!3131 = !DILocation(line: 70, column: 10, scope: !3121)
!3132 = !DILocation(line: 70, column: 3, scope: !3121)
!3133 = distinct !DISubprogram(name: "xirealloc", scope: !239, file: !239, line: 74, type: !3134, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!43, !43, !253}
!3136 = !DILocalVariable(name: "p", arg: 1, scope: !3133, file: !239, line: 74, type: !43)
!3137 = !DILocation(line: 74, column: 18, scope: !3133)
!3138 = !DILocalVariable(name: "s", arg: 2, scope: !3133, file: !239, line: 74, type: !253)
!3139 = !DILocation(line: 74, column: 27, scope: !3133)
!3140 = !DILocation(line: 76, column: 35, scope: !3133)
!3141 = !DILocation(line: 76, column: 38, scope: !3133)
!3142 = !DILocation(line: 76, column: 25, scope: !3133)
!3143 = !DILocation(line: 76, column: 10, scope: !3133)
!3144 = !DILocation(line: 76, column: 3, scope: !3133)
!3145 = distinct !DISubprogram(name: "xireallocarray", scope: !239, file: !239, line: 89, type: !3146, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!43, !43, !253, !253}
!3148 = !DILocalVariable(name: "p", arg: 1, scope: !3145, file: !239, line: 89, type: !43)
!3149 = !DILocation(line: 89, column: 23, scope: !3145)
!3150 = !DILocalVariable(name: "n", arg: 2, scope: !3145, file: !239, line: 89, type: !253)
!3151 = !DILocation(line: 89, column: 32, scope: !3145)
!3152 = !DILocalVariable(name: "s", arg: 3, scope: !3145, file: !239, line: 89, type: !253)
!3153 = !DILocation(line: 89, column: 41, scope: !3145)
!3154 = !DILocation(line: 91, column: 40, scope: !3145)
!3155 = !DILocation(line: 91, column: 43, scope: !3145)
!3156 = !DILocation(line: 91, column: 46, scope: !3145)
!3157 = !DILocation(line: 91, column: 25, scope: !3145)
!3158 = !DILocation(line: 91, column: 10, scope: !3145)
!3159 = !DILocation(line: 91, column: 3, scope: !3145)
!3160 = distinct !DISubprogram(name: "xnmalloc", scope: !239, file: !239, line: 98, type: !3161, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!43, !141, !141}
!3163 = !DILocalVariable(name: "n", arg: 1, scope: !3160, file: !239, line: 98, type: !141)
!3164 = !DILocation(line: 98, column: 18, scope: !3160)
!3165 = !DILocalVariable(name: "s", arg: 2, scope: !3160, file: !239, line: 98, type: !141)
!3166 = !DILocation(line: 98, column: 28, scope: !3160)
!3167 = !DILocation(line: 100, column: 31, scope: !3160)
!3168 = !DILocation(line: 100, column: 34, scope: !3160)
!3169 = !DILocation(line: 100, column: 10, scope: !3160)
!3170 = !DILocation(line: 100, column: 3, scope: !3160)
!3171 = distinct !DISubprogram(name: "xinmalloc", scope: !239, file: !239, line: 104, type: !3172, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!43, !253, !253}
!3174 = !DILocalVariable(name: "n", arg: 1, scope: !3171, file: !239, line: 104, type: !253)
!3175 = !DILocation(line: 104, column: 18, scope: !3171)
!3176 = !DILocalVariable(name: "s", arg: 2, scope: !3171, file: !239, line: 104, type: !253)
!3177 = !DILocation(line: 104, column: 27, scope: !3171)
!3178 = !DILocation(line: 106, column: 32, scope: !3171)
!3179 = !DILocation(line: 106, column: 35, scope: !3171)
!3180 = !DILocation(line: 106, column: 10, scope: !3171)
!3181 = !DILocation(line: 106, column: 3, scope: !3171)
!3182 = distinct !DISubprogram(name: "x2realloc", scope: !239, file: !239, line: 116, type: !3183, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!43, !43, !245}
!3185 = !DILocalVariable(name: "p", arg: 1, scope: !3182, file: !239, line: 116, type: !43)
!3186 = !DILocation(line: 116, column: 18, scope: !3182)
!3187 = !DILocalVariable(name: "ps", arg: 2, scope: !3182, file: !239, line: 116, type: !245)
!3188 = !DILocation(line: 116, column: 29, scope: !3182)
!3189 = !DILocation(line: 118, column: 22, scope: !3182)
!3190 = !DILocation(line: 118, column: 25, scope: !3182)
!3191 = !DILocation(line: 118, column: 10, scope: !3182)
!3192 = !DILocation(line: 118, column: 3, scope: !3182)
!3193 = !DILocalVariable(name: "p", arg: 1, scope: !242, file: !239, line: 176, type: !43)
!3194 = !DILocation(line: 176, column: 19, scope: !242)
!3195 = !DILocalVariable(name: "pn", arg: 2, scope: !242, file: !239, line: 176, type: !245)
!3196 = !DILocation(line: 176, column: 30, scope: !242)
!3197 = !DILocalVariable(name: "s", arg: 3, scope: !242, file: !239, line: 176, type: !141)
!3198 = !DILocation(line: 176, column: 41, scope: !242)
!3199 = !DILocalVariable(name: "n", scope: !242, file: !239, line: 178, type: !141)
!3200 = !DILocation(line: 178, column: 10, scope: !242)
!3201 = !DILocation(line: 178, column: 15, scope: !242)
!3202 = !DILocation(line: 178, column: 14, scope: !242)
!3203 = !DILocation(line: 180, column: 9, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !242, file: !239, line: 180, column: 7)
!3205 = !DILocation(line: 180, column: 7, scope: !242)
!3206 = !DILocation(line: 182, column: 13, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !239, line: 182, column: 11)
!3208 = distinct !DILexicalBlock(scope: !3204, file: !239, line: 181, column: 5)
!3209 = !DILocation(line: 182, column: 11, scope: !3208)
!3210 = !DILocation(line: 190, column: 32, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3207, file: !239, line: 183, column: 9)
!3212 = !DILocation(line: 190, column: 30, scope: !3211)
!3213 = !DILocation(line: 190, column: 13, scope: !3211)
!3214 = !DILocation(line: 191, column: 17, scope: !3211)
!3215 = !DILocation(line: 191, column: 16, scope: !3211)
!3216 = !DILocation(line: 191, column: 13, scope: !3211)
!3217 = !DILocation(line: 192, column: 9, scope: !3211)
!3218 = !DILocation(line: 193, column: 5, scope: !3208)
!3219 = !DILocation(line: 197, column: 11, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !239, line: 197, column: 11)
!3221 = distinct !DILexicalBlock(scope: !3204, file: !239, line: 195, column: 5)
!3222 = !DILocation(line: 197, column: 11, scope: !3221)
!3223 = !DILocation(line: 198, column: 9, scope: !3220)
!3224 = !DILocation(line: 201, column: 22, scope: !242)
!3225 = !DILocation(line: 201, column: 25, scope: !242)
!3226 = !DILocation(line: 201, column: 28, scope: !242)
!3227 = !DILocation(line: 201, column: 7, scope: !242)
!3228 = !DILocation(line: 201, column: 5, scope: !242)
!3229 = !DILocation(line: 202, column: 9, scope: !242)
!3230 = !DILocation(line: 202, column: 4, scope: !242)
!3231 = !DILocation(line: 202, column: 7, scope: !242)
!3232 = !DILocation(line: 203, column: 10, scope: !242)
!3233 = !DILocation(line: 203, column: 3, scope: !242)
!3234 = !DILocalVariable(name: "pa", arg: 1, scope: !249, file: !239, line: 223, type: !43)
!3235 = !DILocation(line: 223, column: 16, scope: !249)
!3236 = !DILocalVariable(name: "pn", arg: 2, scope: !249, file: !239, line: 223, type: !252)
!3237 = !DILocation(line: 223, column: 27, scope: !249)
!3238 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !249, file: !239, line: 223, type: !253)
!3239 = !DILocation(line: 223, column: 37, scope: !249)
!3240 = !DILocalVariable(name: "n_max", arg: 4, scope: !249, file: !239, line: 223, type: !255)
!3241 = !DILocation(line: 223, column: 59, scope: !249)
!3242 = !DILocalVariable(name: "s", arg: 5, scope: !249, file: !239, line: 223, type: !253)
!3243 = !DILocation(line: 223, column: 72, scope: !249)
!3244 = !DILocalVariable(name: "n0", scope: !249, file: !239, line: 230, type: !253)
!3245 = !DILocation(line: 230, column: 9, scope: !249)
!3246 = !DILocation(line: 230, column: 15, scope: !249)
!3247 = !DILocation(line: 230, column: 14, scope: !249)
!3248 = !DILocalVariable(name: "n", scope: !249, file: !239, line: 237, type: !253)
!3249 = !DILocation(line: 237, column: 9, scope: !249)
!3250 = !DILocation(line: 238, column: 7, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !249, file: !239, line: 238, column: 7)
!3252 = !DILocation(line: 238, column: 7, scope: !249)
!3253 = !DILocation(line: 239, column: 7, scope: !3251)
!3254 = !DILocation(line: 239, column: 5, scope: !3251)
!3255 = !DILocation(line: 240, column: 12, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !249, file: !239, line: 240, column: 7)
!3257 = !DILocation(line: 240, column: 9, scope: !3256)
!3258 = !DILocation(line: 240, column: 18, scope: !3256)
!3259 = !DILocation(line: 240, column: 21, scope: !3256)
!3260 = !DILocation(line: 240, column: 29, scope: !3256)
!3261 = !DILocation(line: 240, column: 27, scope: !3256)
!3262 = !DILocation(line: 240, column: 7, scope: !249)
!3263 = !DILocation(line: 241, column: 9, scope: !3256)
!3264 = !DILocation(line: 241, column: 7, scope: !3256)
!3265 = !DILocation(line: 241, column: 5, scope: !3256)
!3266 = !DILocalVariable(name: "nbytes", scope: !249, file: !239, line: 248, type: !253)
!3267 = !DILocation(line: 248, column: 9, scope: !249)
!3268 = !DILocalVariable(name: "adjusted_nbytes", scope: !249, file: !239, line: 252, type: !253)
!3269 = !DILocation(line: 252, column: 9, scope: !249)
!3270 = !DILocation(line: 253, column: 8, scope: !249)
!3271 = !DILocation(line: 255, column: 10, scope: !249)
!3272 = !DILocation(line: 255, column: 17, scope: !249)
!3273 = !DILocation(line: 256, column: 7, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !249, file: !239, line: 256, column: 7)
!3275 = !DILocation(line: 256, column: 7, scope: !249)
!3276 = !DILocation(line: 258, column: 11, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3274, file: !239, line: 257, column: 5)
!3278 = !DILocation(line: 258, column: 29, scope: !3277)
!3279 = !DILocation(line: 258, column: 27, scope: !3277)
!3280 = !DILocation(line: 258, column: 9, scope: !3277)
!3281 = !DILocation(line: 259, column: 16, scope: !3277)
!3282 = !DILocation(line: 259, column: 34, scope: !3277)
!3283 = !DILocation(line: 259, column: 52, scope: !3277)
!3284 = !DILocation(line: 259, column: 50, scope: !3277)
!3285 = !DILocation(line: 259, column: 32, scope: !3277)
!3286 = !DILocation(line: 259, column: 14, scope: !3277)
!3287 = !DILocation(line: 260, column: 5, scope: !3277)
!3288 = !DILocation(line: 262, column: 9, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !249, file: !239, line: 262, column: 7)
!3290 = !DILocation(line: 262, column: 7, scope: !249)
!3291 = !DILocation(line: 263, column: 6, scope: !3289)
!3292 = !DILocation(line: 263, column: 9, scope: !3289)
!3293 = !DILocation(line: 263, column: 5, scope: !3289)
!3294 = !DILocation(line: 264, column: 7, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !249, file: !239, line: 264, column: 7)
!3296 = !DILocation(line: 264, column: 11, scope: !3295)
!3297 = !DILocation(line: 264, column: 9, scope: !3295)
!3298 = !DILocation(line: 264, column: 16, scope: !3295)
!3299 = !DILocation(line: 264, column: 14, scope: !3295)
!3300 = !DILocation(line: 265, column: 7, scope: !3295)
!3301 = !DILocation(line: 265, column: 11, scope: !3295)
!3302 = !DILocation(line: 266, column: 11, scope: !3295)
!3303 = !DILocation(line: 266, column: 20, scope: !3295)
!3304 = !DILocation(line: 266, column: 17, scope: !3295)
!3305 = !DILocation(line: 266, column: 26, scope: !3295)
!3306 = !DILocation(line: 266, column: 29, scope: !3295)
!3307 = !DILocation(line: 266, column: 37, scope: !3295)
!3308 = !DILocation(line: 266, column: 35, scope: !3295)
!3309 = !DILocation(line: 267, column: 11, scope: !3295)
!3310 = !DILocation(line: 267, column: 14, scope: !3295)
!3311 = !DILocation(line: 264, column: 7, scope: !249)
!3312 = !DILocation(line: 268, column: 5, scope: !3295)
!3313 = !DILocation(line: 269, column: 18, scope: !249)
!3314 = !DILocation(line: 269, column: 22, scope: !249)
!3315 = !DILocation(line: 269, column: 8, scope: !249)
!3316 = !DILocation(line: 269, column: 6, scope: !249)
!3317 = !DILocation(line: 270, column: 9, scope: !249)
!3318 = !DILocation(line: 270, column: 4, scope: !249)
!3319 = !DILocation(line: 270, column: 7, scope: !249)
!3320 = !DILocation(line: 271, column: 10, scope: !249)
!3321 = !DILocation(line: 271, column: 3, scope: !249)
!3322 = distinct !DISubprogram(name: "xzalloc", scope: !239, file: !239, line: 279, type: !3097, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3323 = !DILocalVariable(name: "s", arg: 1, scope: !3322, file: !239, line: 279, type: !141)
!3324 = !DILocation(line: 279, column: 17, scope: !3322)
!3325 = !DILocation(line: 281, column: 19, scope: !3322)
!3326 = !DILocation(line: 281, column: 10, scope: !3322)
!3327 = !DILocation(line: 281, column: 3, scope: !3322)
!3328 = distinct !DISubprogram(name: "xcalloc", scope: !239, file: !239, line: 294, type: !3161, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3329 = !DILocalVariable(name: "n", arg: 1, scope: !3328, file: !239, line: 294, type: !141)
!3330 = !DILocation(line: 294, column: 17, scope: !3328)
!3331 = !DILocalVariable(name: "s", arg: 2, scope: !3328, file: !239, line: 294, type: !141)
!3332 = !DILocation(line: 294, column: 27, scope: !3328)
!3333 = !DILocation(line: 296, column: 33, scope: !3328)
!3334 = !DILocation(line: 296, column: 36, scope: !3328)
!3335 = !DILocation(line: 296, column: 25, scope: !3328)
!3336 = !DILocation(line: 296, column: 10, scope: !3328)
!3337 = !DILocation(line: 296, column: 3, scope: !3328)
!3338 = distinct !DISubprogram(name: "xizalloc", scope: !239, file: !239, line: 285, type: !3106, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3339 = !DILocalVariable(name: "s", arg: 1, scope: !3338, file: !239, line: 285, type: !253)
!3340 = !DILocation(line: 285, column: 17, scope: !3338)
!3341 = !DILocation(line: 287, column: 20, scope: !3338)
!3342 = !DILocation(line: 287, column: 10, scope: !3338)
!3343 = !DILocation(line: 287, column: 3, scope: !3338)
!3344 = distinct !DISubprogram(name: "xicalloc", scope: !239, file: !239, line: 300, type: !3172, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3345 = !DILocalVariable(name: "n", arg: 1, scope: !3344, file: !239, line: 300, type: !253)
!3346 = !DILocation(line: 300, column: 17, scope: !3344)
!3347 = !DILocalVariable(name: "s", arg: 2, scope: !3344, file: !239, line: 300, type: !253)
!3348 = !DILocation(line: 300, column: 26, scope: !3344)
!3349 = !DILocation(line: 302, column: 34, scope: !3344)
!3350 = !DILocation(line: 302, column: 37, scope: !3344)
!3351 = !DILocation(line: 302, column: 25, scope: !3344)
!3352 = !DILocation(line: 302, column: 10, scope: !3344)
!3353 = !DILocation(line: 302, column: 3, scope: !3344)
!3354 = distinct !DISubprogram(name: "xmemdup", scope: !239, file: !239, line: 310, type: !3355, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!43, !3357, !141}
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3359 = !DILocalVariable(name: "p", arg: 1, scope: !3354, file: !239, line: 310, type: !3357)
!3360 = !DILocation(line: 310, column: 22, scope: !3354)
!3361 = !DILocalVariable(name: "s", arg: 2, scope: !3354, file: !239, line: 310, type: !141)
!3362 = !DILocation(line: 310, column: 32, scope: !3354)
!3363 = !DILocation(line: 312, column: 27, scope: !3354)
!3364 = !DILocation(line: 312, column: 18, scope: !3354)
!3365 = !DILocation(line: 312, column: 31, scope: !3354)
!3366 = !DILocation(line: 312, column: 34, scope: !3354)
!3367 = !DILocation(line: 312, column: 10, scope: !3354)
!3368 = !DILocation(line: 312, column: 3, scope: !3354)
!3369 = distinct !DISubprogram(name: "ximemdup", scope: !239, file: !239, line: 316, type: !3370, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!43, !3357, !253}
!3372 = !DILocalVariable(name: "p", arg: 1, scope: !3369, file: !239, line: 316, type: !3357)
!3373 = !DILocation(line: 316, column: 23, scope: !3369)
!3374 = !DILocalVariable(name: "s", arg: 2, scope: !3369, file: !239, line: 316, type: !253)
!3375 = !DILocation(line: 316, column: 32, scope: !3369)
!3376 = !DILocation(line: 318, column: 28, scope: !3369)
!3377 = !DILocation(line: 318, column: 18, scope: !3369)
!3378 = !DILocation(line: 318, column: 32, scope: !3369)
!3379 = !DILocation(line: 318, column: 35, scope: !3369)
!3380 = !DILocation(line: 318, column: 10, scope: !3369)
!3381 = !DILocation(line: 318, column: 3, scope: !3369)
!3382 = distinct !DISubprogram(name: "ximemdup0", scope: !239, file: !239, line: 325, type: !3383, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!117, !3357, !253}
!3385 = !DILocalVariable(name: "p", arg: 1, scope: !3382, file: !239, line: 325, type: !3357)
!3386 = !DILocation(line: 325, column: 24, scope: !3382)
!3387 = !DILocalVariable(name: "s", arg: 2, scope: !3382, file: !239, line: 325, type: !253)
!3388 = !DILocation(line: 325, column: 33, scope: !3382)
!3389 = !DILocalVariable(name: "result", scope: !3382, file: !239, line: 327, type: !117)
!3390 = !DILocation(line: 327, column: 9, scope: !3382)
!3391 = !DILocation(line: 327, column: 28, scope: !3382)
!3392 = !DILocation(line: 327, column: 30, scope: !3382)
!3393 = !DILocation(line: 327, column: 18, scope: !3382)
!3394 = !DILocation(line: 328, column: 3, scope: !3382)
!3395 = !DILocation(line: 328, column: 10, scope: !3382)
!3396 = !DILocation(line: 328, column: 13, scope: !3382)
!3397 = !DILocation(line: 329, column: 18, scope: !3382)
!3398 = !DILocation(line: 329, column: 26, scope: !3382)
!3399 = !DILocation(line: 329, column: 29, scope: !3382)
!3400 = !DILocation(line: 329, column: 10, scope: !3382)
!3401 = !DILocation(line: 329, column: 3, scope: !3382)
!3402 = distinct !DISubprogram(name: "xstrdup", scope: !239, file: !239, line: 335, type: !2465, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3403 = !DILocalVariable(name: "string", arg: 1, scope: !3402, file: !239, line: 335, type: !6)
!3404 = !DILocation(line: 335, column: 22, scope: !3402)
!3405 = !DILocation(line: 337, column: 19, scope: !3402)
!3406 = !DILocation(line: 337, column: 35, scope: !3402)
!3407 = !DILocation(line: 337, column: 27, scope: !3402)
!3408 = !DILocation(line: 337, column: 43, scope: !3402)
!3409 = !DILocation(line: 337, column: 10, scope: !3402)
!3410 = !DILocation(line: 337, column: 3, scope: !3402)
!3411 = distinct !DISubprogram(name: "xalloc_die", scope: !259, file: !259, line: 32, type: !93, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !258, retainedNodes: !47)
!3412 = !DILocalVariable(name: "__errstatus", scope: !3413, file: !259, line: 34, type: !3414)
!3413 = distinct !DILexicalBlock(scope: !3411, file: !259, line: 34, column: 3)
!3414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!3415 = !DILocation(line: 34, column: 3, scope: !3413)
!3416 = !DILocation(line: 40, column: 3, scope: !3411)
!3417 = distinct !DISubprogram(name: "c32isprint", scope: !3418, file: !3418, line: 41, type: !3419, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !47)
!3418 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!44, !3421}
!3421 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3422, line: 20, baseType: !14)
!3422 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3423 = !DILocalVariable(name: "wc", arg: 1, scope: !3417, file: !3418, line: 41, type: !3421)
!3424 = !DILocation(line: 41, column: 14, scope: !3417)
!3425 = !DILocation(line: 66, column: 22, scope: !3417)
!3426 = !DILocation(line: 66, column: 10, scope: !3417)
!3427 = !DILocation(line: 66, column: 3, scope: !3417)
!3428 = distinct !DISubprogram(name: "close_stream", scope: !263, file: !263, line: 55, type: !3429, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !47)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!44, !3431}
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2755, line: 7, baseType: !3433)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2757, line: 49, size: 1728, elements: !3434)
!3434 = !{!3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3433, file: !2757, line: 51, baseType: !44, size: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3433, file: !2757, line: 54, baseType: !117, size: 64, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3433, file: !2757, line: 55, baseType: !117, size: 64, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3433, file: !2757, line: 56, baseType: !117, size: 64, offset: 192)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3433, file: !2757, line: 57, baseType: !117, size: 64, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3433, file: !2757, line: 58, baseType: !117, size: 64, offset: 320)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3433, file: !2757, line: 59, baseType: !117, size: 64, offset: 384)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3433, file: !2757, line: 60, baseType: !117, size: 64, offset: 448)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3433, file: !2757, line: 61, baseType: !117, size: 64, offset: 512)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3433, file: !2757, line: 64, baseType: !117, size: 64, offset: 576)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3433, file: !2757, line: 65, baseType: !117, size: 64, offset: 640)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3433, file: !2757, line: 66, baseType: !117, size: 64, offset: 704)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3433, file: !2757, line: 68, baseType: !2772, size: 64, offset: 768)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3433, file: !2757, line: 70, baseType: !3449, size: 64, offset: 832)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3433, file: !2757, line: 72, baseType: !44, size: 32, offset: 896)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3433, file: !2757, line: 73, baseType: !44, size: 32, offset: 928)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3433, file: !2757, line: 74, baseType: !2779, size: 64, offset: 960)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3433, file: !2757, line: 77, baseType: !45, size: 16, offset: 1024)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3433, file: !2757, line: 78, baseType: !2782, size: 8, offset: 1040)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3433, file: !2757, line: 79, baseType: !2784, size: 8, offset: 1048)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3433, file: !2757, line: 81, baseType: !2788, size: 64, offset: 1088)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3433, file: !2757, line: 89, baseType: !2791, size: 64, offset: 1152)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3433, file: !2757, line: 91, baseType: !2793, size: 64, offset: 1216)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3433, file: !2757, line: 92, baseType: !2796, size: 64, offset: 1280)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3433, file: !2757, line: 93, baseType: !3449, size: 64, offset: 1344)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3433, file: !2757, line: 94, baseType: !43, size: 64, offset: 1408)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3433, file: !2757, line: 95, baseType: !141, size: 64, offset: 1472)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3433, file: !2757, line: 96, baseType: !44, size: 32, offset: 1536)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3433, file: !2757, line: 98, baseType: !2803, size: 160, offset: 1568)
!3465 = !DILocalVariable(name: "stream", arg: 1, scope: !3428, file: !263, line: 55, type: !3431)
!3466 = !DILocation(line: 55, column: 21, scope: !3428)
!3467 = !DILocalVariable(name: "some_pending", scope: !3428, file: !263, line: 57, type: !3468)
!3468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!3469 = !DILocation(line: 57, column: 14, scope: !3428)
!3470 = !DILocation(line: 57, column: 42, scope: !3428)
!3471 = !DILocation(line: 57, column: 30, scope: !3428)
!3472 = !DILocation(line: 57, column: 50, scope: !3428)
!3473 = !DILocalVariable(name: "prev_fail", scope: !3428, file: !263, line: 58, type: !3468)
!3474 = !DILocation(line: 58, column: 14, scope: !3428)
!3475 = !DILocation(line: 58, column: 27, scope: !3428)
!3476 = !DILocation(line: 58, column: 43, scope: !3428)
!3477 = !DILocalVariable(name: "fclose_fail", scope: !3428, file: !263, line: 59, type: !3468)
!3478 = !DILocation(line: 59, column: 14, scope: !3428)
!3479 = !DILocation(line: 59, column: 37, scope: !3428)
!3480 = !DILocation(line: 59, column: 29, scope: !3428)
!3481 = !DILocation(line: 59, column: 45, scope: !3428)
!3482 = !DILocation(line: 69, column: 7, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3428, file: !263, line: 69, column: 7)
!3484 = !DILocation(line: 69, column: 17, scope: !3483)
!3485 = !DILocation(line: 69, column: 21, scope: !3483)
!3486 = !DILocation(line: 69, column: 33, scope: !3483)
!3487 = !DILocation(line: 69, column: 37, scope: !3483)
!3488 = !DILocation(line: 69, column: 50, scope: !3483)
!3489 = !DILocation(line: 69, column: 53, scope: !3483)
!3490 = !DILocation(line: 69, column: 59, scope: !3483)
!3491 = !DILocation(line: 69, column: 7, scope: !3428)
!3492 = !DILocation(line: 71, column: 13, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !263, line: 71, column: 11)
!3494 = distinct !DILexicalBlock(scope: !3483, file: !263, line: 70, column: 5)
!3495 = !DILocation(line: 71, column: 11, scope: !3494)
!3496 = !DILocation(line: 72, column: 9, scope: !3493)
!3497 = !DILocation(line: 72, column: 15, scope: !3493)
!3498 = !DILocation(line: 73, column: 7, scope: !3494)
!3499 = !DILocation(line: 76, column: 3, scope: !3428)
!3500 = !DILocation(line: 77, column: 1, scope: !3428)
!3501 = distinct !DISubprogram(name: "rpl_fclose", scope: !265, file: !265, line: 58, type: !3502, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !47)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!44, !3504}
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2755, line: 7, baseType: !3506)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2757, line: 49, size: 1728, elements: !3507)
!3507 = !{!3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3506, file: !2757, line: 51, baseType: !44, size: 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3506, file: !2757, line: 54, baseType: !117, size: 64, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3506, file: !2757, line: 55, baseType: !117, size: 64, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3506, file: !2757, line: 56, baseType: !117, size: 64, offset: 192)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3506, file: !2757, line: 57, baseType: !117, size: 64, offset: 256)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3506, file: !2757, line: 58, baseType: !117, size: 64, offset: 320)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3506, file: !2757, line: 59, baseType: !117, size: 64, offset: 384)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3506, file: !2757, line: 60, baseType: !117, size: 64, offset: 448)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3506, file: !2757, line: 61, baseType: !117, size: 64, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3506, file: !2757, line: 64, baseType: !117, size: 64, offset: 576)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3506, file: !2757, line: 65, baseType: !117, size: 64, offset: 640)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3506, file: !2757, line: 66, baseType: !117, size: 64, offset: 704)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3506, file: !2757, line: 68, baseType: !2772, size: 64, offset: 768)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3506, file: !2757, line: 70, baseType: !3522, size: 64, offset: 832)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3506, file: !2757, line: 72, baseType: !44, size: 32, offset: 896)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3506, file: !2757, line: 73, baseType: !44, size: 32, offset: 928)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3506, file: !2757, line: 74, baseType: !2779, size: 64, offset: 960)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3506, file: !2757, line: 77, baseType: !45, size: 16, offset: 1024)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3506, file: !2757, line: 78, baseType: !2782, size: 8, offset: 1040)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3506, file: !2757, line: 79, baseType: !2784, size: 8, offset: 1048)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3506, file: !2757, line: 81, baseType: !2788, size: 64, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3506, file: !2757, line: 89, baseType: !2791, size: 64, offset: 1152)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3506, file: !2757, line: 91, baseType: !2793, size: 64, offset: 1216)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3506, file: !2757, line: 92, baseType: !2796, size: 64, offset: 1280)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3506, file: !2757, line: 93, baseType: !3522, size: 64, offset: 1344)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3506, file: !2757, line: 94, baseType: !43, size: 64, offset: 1408)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3506, file: !2757, line: 95, baseType: !141, size: 64, offset: 1472)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3506, file: !2757, line: 96, baseType: !44, size: 32, offset: 1536)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3506, file: !2757, line: 98, baseType: !2803, size: 160, offset: 1568)
!3538 = !DILocalVariable(name: "fp", arg: 1, scope: !3501, file: !265, line: 58, type: !3504)
!3539 = !DILocation(line: 58, column: 19, scope: !3501)
!3540 = !DILocalVariable(name: "saved_errno", scope: !3501, file: !265, line: 60, type: !44)
!3541 = !DILocation(line: 60, column: 7, scope: !3501)
!3542 = !DILocalVariable(name: "fd", scope: !3501, file: !265, line: 63, type: !44)
!3543 = !DILocation(line: 63, column: 7, scope: !3501)
!3544 = !DILocation(line: 63, column: 20, scope: !3501)
!3545 = !DILocation(line: 63, column: 12, scope: !3501)
!3546 = !DILocation(line: 64, column: 7, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3501, file: !265, line: 64, column: 7)
!3548 = !DILocation(line: 64, column: 10, scope: !3547)
!3549 = !DILocation(line: 64, column: 7, scope: !3501)
!3550 = !DILocation(line: 65, column: 28, scope: !3547)
!3551 = !DILocation(line: 65, column: 12, scope: !3547)
!3552 = !DILocation(line: 65, column: 5, scope: !3547)
!3553 = !DILocation(line: 70, column: 9, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3501, file: !265, line: 70, column: 7)
!3555 = !DILocation(line: 70, column: 23, scope: !3554)
!3556 = !DILocation(line: 70, column: 41, scope: !3554)
!3557 = !DILocation(line: 70, column: 33, scope: !3554)
!3558 = !DILocation(line: 70, column: 26, scope: !3554)
!3559 = !DILocation(line: 70, column: 59, scope: !3554)
!3560 = !DILocation(line: 71, column: 7, scope: !3554)
!3561 = !DILocation(line: 71, column: 18, scope: !3554)
!3562 = !DILocation(line: 71, column: 10, scope: !3554)
!3563 = !DILocation(line: 70, column: 7, scope: !3501)
!3564 = !DILocation(line: 72, column: 19, scope: !3554)
!3565 = !DILocation(line: 72, column: 17, scope: !3554)
!3566 = !DILocation(line: 72, column: 5, scope: !3554)
!3567 = !DILocalVariable(name: "result", scope: !3501, file: !265, line: 74, type: !44)
!3568 = !DILocation(line: 74, column: 7, scope: !3501)
!3569 = !DILocation(line: 100, column: 28, scope: !3501)
!3570 = !DILocation(line: 100, column: 12, scope: !3501)
!3571 = !DILocation(line: 100, column: 10, scope: !3501)
!3572 = !DILocation(line: 105, column: 7, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3501, file: !265, line: 105, column: 7)
!3574 = !DILocation(line: 105, column: 19, scope: !3573)
!3575 = !DILocation(line: 105, column: 7, scope: !3501)
!3576 = !DILocation(line: 107, column: 15, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3573, file: !265, line: 106, column: 5)
!3578 = !DILocation(line: 107, column: 7, scope: !3577)
!3579 = !DILocation(line: 107, column: 13, scope: !3577)
!3580 = !DILocation(line: 108, column: 14, scope: !3577)
!3581 = !DILocation(line: 109, column: 5, scope: !3577)
!3582 = !DILocation(line: 111, column: 10, scope: !3501)
!3583 = !DILocation(line: 111, column: 3, scope: !3501)
!3584 = !DILocation(line: 112, column: 1, scope: !3501)
!3585 = distinct !DISubprogram(name: "rpl_fflush", scope: !267, file: !267, line: 130, type: !3586, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !47)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!44, !3588}
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2755, line: 7, baseType: !3590)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2757, line: 49, size: 1728, elements: !3591)
!3591 = !{!3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3590, file: !2757, line: 51, baseType: !44, size: 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3590, file: !2757, line: 54, baseType: !117, size: 64, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3590, file: !2757, line: 55, baseType: !117, size: 64, offset: 128)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3590, file: !2757, line: 56, baseType: !117, size: 64, offset: 192)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3590, file: !2757, line: 57, baseType: !117, size: 64, offset: 256)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3590, file: !2757, line: 58, baseType: !117, size: 64, offset: 320)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3590, file: !2757, line: 59, baseType: !117, size: 64, offset: 384)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3590, file: !2757, line: 60, baseType: !117, size: 64, offset: 448)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3590, file: !2757, line: 61, baseType: !117, size: 64, offset: 512)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3590, file: !2757, line: 64, baseType: !117, size: 64, offset: 576)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3590, file: !2757, line: 65, baseType: !117, size: 64, offset: 640)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3590, file: !2757, line: 66, baseType: !117, size: 64, offset: 704)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3590, file: !2757, line: 68, baseType: !2772, size: 64, offset: 768)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3590, file: !2757, line: 70, baseType: !3606, size: 64, offset: 832)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3590, file: !2757, line: 72, baseType: !44, size: 32, offset: 896)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3590, file: !2757, line: 73, baseType: !44, size: 32, offset: 928)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3590, file: !2757, line: 74, baseType: !2779, size: 64, offset: 960)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3590, file: !2757, line: 77, baseType: !45, size: 16, offset: 1024)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3590, file: !2757, line: 78, baseType: !2782, size: 8, offset: 1040)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3590, file: !2757, line: 79, baseType: !2784, size: 8, offset: 1048)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3590, file: !2757, line: 81, baseType: !2788, size: 64, offset: 1088)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3590, file: !2757, line: 89, baseType: !2791, size: 64, offset: 1152)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3590, file: !2757, line: 91, baseType: !2793, size: 64, offset: 1216)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3590, file: !2757, line: 92, baseType: !2796, size: 64, offset: 1280)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3590, file: !2757, line: 93, baseType: !3606, size: 64, offset: 1344)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3590, file: !2757, line: 94, baseType: !43, size: 64, offset: 1408)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3590, file: !2757, line: 95, baseType: !141, size: 64, offset: 1472)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3590, file: !2757, line: 96, baseType: !44, size: 32, offset: 1536)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3590, file: !2757, line: 98, baseType: !2803, size: 160, offset: 1568)
!3622 = !DILocalVariable(name: "stream", arg: 1, scope: !3585, file: !267, line: 130, type: !3588)
!3623 = !DILocation(line: 130, column: 19, scope: !3585)
!3624 = !DILocation(line: 151, column: 7, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3585, file: !267, line: 151, column: 7)
!3626 = !DILocation(line: 151, column: 14, scope: !3625)
!3627 = !DILocation(line: 151, column: 22, scope: !3625)
!3628 = !DILocation(line: 151, column: 27, scope: !3625)
!3629 = !DILocation(line: 151, column: 7, scope: !3585)
!3630 = !DILocation(line: 152, column: 20, scope: !3625)
!3631 = !DILocation(line: 152, column: 12, scope: !3625)
!3632 = !DILocation(line: 152, column: 5, scope: !3625)
!3633 = !DILocation(line: 157, column: 44, scope: !3585)
!3634 = !DILocation(line: 157, column: 3, scope: !3585)
!3635 = !DILocation(line: 159, column: 18, scope: !3585)
!3636 = !DILocation(line: 159, column: 10, scope: !3585)
!3637 = !DILocation(line: 159, column: 3, scope: !3585)
!3638 = !DILocation(line: 236, column: 1, scope: !3585)
!3639 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !267, file: !267, line: 42, type: !3640, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !266, retainedNodes: !47)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !3588}
!3642 = !DILocalVariable(name: "fp", arg: 1, scope: !3639, file: !267, line: 42, type: !3588)
!3643 = !DILocation(line: 42, column: 48, scope: !3639)
!3644 = !DILocation(line: 44, column: 7, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3639, file: !267, line: 44, column: 7)
!3646 = !DILocation(line: 44, column: 12, scope: !3645)
!3647 = !DILocation(line: 44, column: 19, scope: !3645)
!3648 = !DILocation(line: 44, column: 7, scope: !3639)
!3649 = !DILocation(line: 46, column: 13, scope: !3645)
!3650 = !DILocation(line: 46, column: 5, scope: !3645)
!3651 = !DILocation(line: 47, column: 1, scope: !3639)
!3652 = distinct !DISubprogram(name: "rpl_fseeko", scope: !269, file: !269, line: 28, type: !3653, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !47)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!44, !3655, !3689, !44}
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2755, line: 7, baseType: !3657)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2757, line: 49, size: 1728, elements: !3658)
!3658 = !{!3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3657, file: !2757, line: 51, baseType: !44, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3657, file: !2757, line: 54, baseType: !117, size: 64, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3657, file: !2757, line: 55, baseType: !117, size: 64, offset: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3657, file: !2757, line: 56, baseType: !117, size: 64, offset: 192)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3657, file: !2757, line: 57, baseType: !117, size: 64, offset: 256)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3657, file: !2757, line: 58, baseType: !117, size: 64, offset: 320)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3657, file: !2757, line: 59, baseType: !117, size: 64, offset: 384)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3657, file: !2757, line: 60, baseType: !117, size: 64, offset: 448)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3657, file: !2757, line: 61, baseType: !117, size: 64, offset: 512)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3657, file: !2757, line: 64, baseType: !117, size: 64, offset: 576)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3657, file: !2757, line: 65, baseType: !117, size: 64, offset: 640)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3657, file: !2757, line: 66, baseType: !117, size: 64, offset: 704)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3657, file: !2757, line: 68, baseType: !2772, size: 64, offset: 768)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3657, file: !2757, line: 70, baseType: !3673, size: 64, offset: 832)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3657, file: !2757, line: 72, baseType: !44, size: 32, offset: 896)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3657, file: !2757, line: 73, baseType: !44, size: 32, offset: 928)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3657, file: !2757, line: 74, baseType: !2779, size: 64, offset: 960)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3657, file: !2757, line: 77, baseType: !45, size: 16, offset: 1024)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3657, file: !2757, line: 78, baseType: !2782, size: 8, offset: 1040)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3657, file: !2757, line: 79, baseType: !2784, size: 8, offset: 1048)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3657, file: !2757, line: 81, baseType: !2788, size: 64, offset: 1088)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3657, file: !2757, line: 89, baseType: !2791, size: 64, offset: 1152)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3657, file: !2757, line: 91, baseType: !2793, size: 64, offset: 1216)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3657, file: !2757, line: 92, baseType: !2796, size: 64, offset: 1280)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3657, file: !2757, line: 93, baseType: !3673, size: 64, offset: 1344)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3657, file: !2757, line: 94, baseType: !43, size: 64, offset: 1408)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3657, file: !2757, line: 95, baseType: !141, size: 64, offset: 1472)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3657, file: !2757, line: 96, baseType: !44, size: 32, offset: 1536)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3657, file: !2757, line: 98, baseType: !2803, size: 160, offset: 1568)
!3689 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !73, line: 63, baseType: !2779)
!3690 = !DILocalVariable(name: "fp", arg: 1, scope: !3652, file: !269, line: 28, type: !3655)
!3691 = !DILocation(line: 28, column: 15, scope: !3652)
!3692 = !DILocalVariable(name: "offset", arg: 2, scope: !3652, file: !269, line: 28, type: !3689)
!3693 = !DILocation(line: 28, column: 25, scope: !3652)
!3694 = !DILocalVariable(name: "whence", arg: 3, scope: !3652, file: !269, line: 28, type: !44)
!3695 = !DILocation(line: 28, column: 37, scope: !3652)
!3696 = !DILocation(line: 55, column: 7, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3652, file: !269, line: 55, column: 7)
!3698 = !DILocation(line: 55, column: 12, scope: !3697)
!3699 = !DILocation(line: 55, column: 28, scope: !3697)
!3700 = !DILocation(line: 55, column: 33, scope: !3697)
!3701 = !DILocation(line: 55, column: 25, scope: !3697)
!3702 = !DILocation(line: 56, column: 7, scope: !3697)
!3703 = !DILocation(line: 56, column: 10, scope: !3697)
!3704 = !DILocation(line: 56, column: 15, scope: !3697)
!3705 = !DILocation(line: 56, column: 32, scope: !3697)
!3706 = !DILocation(line: 56, column: 37, scope: !3697)
!3707 = !DILocation(line: 56, column: 29, scope: !3697)
!3708 = !DILocation(line: 57, column: 7, scope: !3697)
!3709 = !DILocation(line: 57, column: 10, scope: !3697)
!3710 = !DILocation(line: 57, column: 15, scope: !3697)
!3711 = !DILocation(line: 57, column: 29, scope: !3697)
!3712 = !DILocation(line: 55, column: 7, scope: !3652)
!3713 = !DILocalVariable(name: "pos", scope: !3714, file: !269, line: 123, type: !3689)
!3714 = distinct !DILexicalBlock(scope: !3697, file: !269, line: 119, column: 5)
!3715 = !DILocation(line: 123, column: 13, scope: !3714)
!3716 = !DILocation(line: 123, column: 34, scope: !3714)
!3717 = !DILocation(line: 123, column: 26, scope: !3714)
!3718 = !DILocation(line: 123, column: 39, scope: !3714)
!3719 = !DILocation(line: 123, column: 47, scope: !3714)
!3720 = !DILocation(line: 123, column: 19, scope: !3714)
!3721 = !DILocation(line: 124, column: 11, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3714, file: !269, line: 124, column: 11)
!3723 = !DILocation(line: 124, column: 15, scope: !3722)
!3724 = !DILocation(line: 124, column: 11, scope: !3714)
!3725 = !DILocation(line: 130, column: 11, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3722, file: !269, line: 125, column: 9)
!3727 = !DILocation(line: 135, column: 7, scope: !3714)
!3728 = !DILocation(line: 135, column: 12, scope: !3714)
!3729 = !DILocation(line: 135, column: 19, scope: !3714)
!3730 = !DILocation(line: 136, column: 22, scope: !3714)
!3731 = !DILocation(line: 136, column: 7, scope: !3714)
!3732 = !DILocation(line: 136, column: 12, scope: !3714)
!3733 = !DILocation(line: 136, column: 20, scope: !3714)
!3734 = !DILocation(line: 167, column: 7, scope: !3714)
!3735 = !DILocation(line: 169, column: 18, scope: !3652)
!3736 = !DILocation(line: 169, column: 22, scope: !3652)
!3737 = !DILocation(line: 169, column: 30, scope: !3652)
!3738 = !DILocation(line: 169, column: 10, scope: !3652)
!3739 = !DILocation(line: 169, column: 3, scope: !3652)
!3740 = !DILocation(line: 170, column: 1, scope: !3652)
!3741 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !3742, file: !3742, line: 43, type: !3743, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !47)
!3742 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3743 = !DISubroutineType(types: !65)
!3744 = !DILocation(line: 45, column: 3, scope: !3741)
!3745 = !DILocation(line: 45, column: 9, scope: !3741)
!3746 = !DILocation(line: 46, column: 3, scope: !3741)
!3747 = distinct !DISubprogram(name: "imalloc", scope: !3742, file: !3742, line: 55, type: !3106, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !47)
!3748 = !DILocalVariable(name: "s", arg: 1, scope: !3747, file: !3742, line: 55, type: !253)
!3749 = !DILocation(line: 55, column: 16, scope: !3747)
!3750 = !DILocation(line: 57, column: 10, scope: !3747)
!3751 = !DILocation(line: 57, column: 12, scope: !3747)
!3752 = !DILocation(line: 57, column: 34, scope: !3747)
!3753 = !DILocation(line: 57, column: 26, scope: !3747)
!3754 = !DILocation(line: 57, column: 39, scope: !3747)
!3755 = !DILocation(line: 57, column: 3, scope: !3747)
!3756 = distinct !DISubprogram(name: "irealloc", scope: !3742, file: !3742, line: 66, type: !3134, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !47)
!3757 = !DILocalVariable(name: "p", arg: 1, scope: !3756, file: !3742, line: 66, type: !43)
!3758 = !DILocation(line: 66, column: 17, scope: !3756)
!3759 = !DILocalVariable(name: "s", arg: 2, scope: !3756, file: !3742, line: 66, type: !253)
!3760 = !DILocation(line: 66, column: 26, scope: !3756)
!3761 = !DILocation(line: 68, column: 10, scope: !3756)
!3762 = !DILocation(line: 68, column: 12, scope: !3756)
!3763 = !DILocation(line: 68, column: 35, scope: !3756)
!3764 = !DILocation(line: 68, column: 38, scope: !3756)
!3765 = !DILocation(line: 68, column: 26, scope: !3756)
!3766 = !DILocation(line: 68, column: 43, scope: !3756)
!3767 = !DILocation(line: 68, column: 3, scope: !3756)
!3768 = distinct !DISubprogram(name: "icalloc", scope: !3742, file: !3742, line: 77, type: !3172, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !47)
!3769 = !DILocalVariable(name: "n", arg: 1, scope: !3768, file: !3742, line: 77, type: !253)
!3770 = !DILocation(line: 77, column: 16, scope: !3768)
!3771 = !DILocalVariable(name: "s", arg: 2, scope: !3768, file: !3742, line: 77, type: !253)
!3772 = !DILocation(line: 77, column: 25, scope: !3768)
!3773 = !DILocation(line: 79, column: 18, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3768, file: !3742, line: 79, column: 7)
!3775 = !DILocation(line: 79, column: 16, scope: !3774)
!3776 = !DILocation(line: 79, column: 7, scope: !3768)
!3777 = !DILocation(line: 81, column: 11, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3779, file: !3742, line: 81, column: 11)
!3779 = distinct !DILexicalBlock(scope: !3774, file: !3742, line: 80, column: 5)
!3780 = !DILocation(line: 81, column: 13, scope: !3778)
!3781 = !DILocation(line: 81, column: 11, scope: !3779)
!3782 = !DILocation(line: 82, column: 16, scope: !3778)
!3783 = !DILocation(line: 82, column: 9, scope: !3778)
!3784 = !DILocation(line: 83, column: 9, scope: !3779)
!3785 = !DILocation(line: 84, column: 5, scope: !3779)
!3786 = !DILocation(line: 85, column: 18, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3768, file: !3742, line: 85, column: 7)
!3788 = !DILocation(line: 85, column: 16, scope: !3787)
!3789 = !DILocation(line: 85, column: 7, scope: !3768)
!3790 = !DILocation(line: 87, column: 11, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !3742, line: 87, column: 11)
!3792 = distinct !DILexicalBlock(scope: !3787, file: !3742, line: 86, column: 5)
!3793 = !DILocation(line: 87, column: 13, scope: !3791)
!3794 = !DILocation(line: 87, column: 11, scope: !3792)
!3795 = !DILocation(line: 88, column: 16, scope: !3791)
!3796 = !DILocation(line: 88, column: 9, scope: !3791)
!3797 = !DILocation(line: 89, column: 9, scope: !3792)
!3798 = !DILocation(line: 90, column: 5, scope: !3792)
!3799 = !DILocation(line: 91, column: 18, scope: !3768)
!3800 = !DILocation(line: 91, column: 21, scope: !3768)
!3801 = !DILocation(line: 91, column: 10, scope: !3768)
!3802 = !DILocation(line: 91, column: 3, scope: !3768)
!3803 = !DILocation(line: 92, column: 1, scope: !3768)
!3804 = distinct !DISubprogram(name: "ireallocarray", scope: !3742, file: !3742, line: 98, type: !3146, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !47)
!3805 = !DILocalVariable(name: "p", arg: 1, scope: !3804, file: !3742, line: 98, type: !43)
!3806 = !DILocation(line: 98, column: 22, scope: !3804)
!3807 = !DILocalVariable(name: "n", arg: 2, scope: !3804, file: !3742, line: 98, type: !253)
!3808 = !DILocation(line: 98, column: 31, scope: !3804)
!3809 = !DILocalVariable(name: "s", arg: 3, scope: !3804, file: !3742, line: 98, type: !253)
!3810 = !DILocation(line: 98, column: 40, scope: !3804)
!3811 = !DILocation(line: 100, column: 11, scope: !3804)
!3812 = !DILocation(line: 100, column: 13, scope: !3804)
!3813 = !DILocation(line: 100, column: 25, scope: !3804)
!3814 = !DILocation(line: 100, column: 28, scope: !3804)
!3815 = !DILocation(line: 100, column: 30, scope: !3804)
!3816 = !DILocation(line: 101, column: 27, scope: !3804)
!3817 = !DILocation(line: 101, column: 30, scope: !3804)
!3818 = !DILocation(line: 101, column: 33, scope: !3804)
!3819 = !DILocation(line: 101, column: 13, scope: !3804)
!3820 = !DILocation(line: 102, column: 13, scope: !3804)
!3821 = !DILocation(line: 100, column: 3, scope: !3804)
!3822 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !210, file: !210, line: 100, type: !3823, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !209, retainedNodes: !47)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!141, !3825, !6, !141, !3826}
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!3827 = !DILocalVariable(name: "pwc", arg: 1, scope: !3822, file: !210, line: 100, type: !3825)
!3828 = !DILocation(line: 100, column: 21, scope: !3822)
!3829 = !DILocalVariable(name: "s", arg: 2, scope: !3822, file: !210, line: 100, type: !6)
!3830 = !DILocation(line: 100, column: 38, scope: !3822)
!3831 = !DILocalVariable(name: "n", arg: 3, scope: !3822, file: !210, line: 100, type: !141)
!3832 = !DILocation(line: 100, column: 48, scope: !3822)
!3833 = !DILocalVariable(name: "ps", arg: 4, scope: !3822, file: !210, line: 100, type: !3826)
!3834 = !DILocation(line: 100, column: 62, scope: !3822)
!3835 = !DILocation(line: 105, column: 7, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3822, file: !210, line: 105, column: 7)
!3837 = !DILocation(line: 105, column: 9, scope: !3836)
!3838 = !DILocation(line: 105, column: 7, scope: !3822)
!3839 = !DILocation(line: 107, column: 11, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3836, file: !210, line: 106, column: 5)
!3841 = !DILocation(line: 108, column: 9, scope: !3840)
!3842 = !DILocation(line: 109, column: 9, scope: !3840)
!3843 = !DILocation(line: 110, column: 5, scope: !3840)
!3844 = !DILocation(line: 117, column: 7, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3822, file: !210, line: 117, column: 7)
!3846 = !DILocation(line: 117, column: 10, scope: !3845)
!3847 = !DILocation(line: 117, column: 7, scope: !3822)
!3848 = !DILocation(line: 118, column: 8, scope: !3845)
!3849 = !DILocation(line: 118, column: 5, scope: !3845)
!3850 = !DILocalVariable(name: "ret", scope: !3822, file: !210, line: 130, type: !141)
!3851 = !DILocation(line: 130, column: 10, scope: !3822)
!3852 = !DILocation(line: 130, column: 26, scope: !3822)
!3853 = !DILocation(line: 130, column: 31, scope: !3822)
!3854 = !DILocation(line: 130, column: 34, scope: !3822)
!3855 = !DILocation(line: 130, column: 37, scope: !3822)
!3856 = !DILocation(line: 130, column: 16, scope: !3822)
!3857 = !DILocation(line: 135, column: 7, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3822, file: !210, line: 135, column: 7)
!3859 = !DILocation(line: 135, column: 11, scope: !3858)
!3860 = !DILocation(line: 135, column: 25, scope: !3858)
!3861 = !DILocation(line: 135, column: 39, scope: !3858)
!3862 = !DILocation(line: 135, column: 30, scope: !3858)
!3863 = !DILocation(line: 135, column: 7, scope: !3822)
!3864 = !DILocation(line: 137, column: 14, scope: !3858)
!3865 = !DILocation(line: 137, column: 5, scope: !3858)
!3866 = !DILocation(line: 138, column: 7, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3822, file: !210, line: 138, column: 7)
!3868 = !DILocation(line: 138, column: 11, scope: !3867)
!3869 = !DILocation(line: 138, column: 7, scope: !3822)
!3870 = !DILocation(line: 139, column: 5, scope: !3867)
!3871 = !DILocation(line: 143, column: 22, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3822, file: !210, line: 143, column: 7)
!3873 = !DILocation(line: 143, column: 19, scope: !3872)
!3874 = !DILocation(line: 143, column: 26, scope: !3872)
!3875 = !DILocation(line: 143, column: 29, scope: !3872)
!3876 = !DILocation(line: 143, column: 31, scope: !3872)
!3877 = !DILocation(line: 143, column: 36, scope: !3872)
!3878 = !DILocation(line: 143, column: 41, scope: !3872)
!3879 = !DILocation(line: 143, column: 7, scope: !3822)
!3880 = !DILocation(line: 145, column: 11, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !210, line: 145, column: 11)
!3882 = distinct !DILexicalBlock(scope: !3872, file: !210, line: 144, column: 5)
!3883 = !DILocation(line: 145, column: 15, scope: !3881)
!3884 = !DILocation(line: 145, column: 11, scope: !3882)
!3885 = !DILocation(line: 146, column: 33, scope: !3881)
!3886 = !DILocation(line: 146, column: 32, scope: !3881)
!3887 = !DILocation(line: 146, column: 16, scope: !3881)
!3888 = !DILocation(line: 146, column: 10, scope: !3881)
!3889 = !DILocation(line: 146, column: 14, scope: !3881)
!3890 = !DILocation(line: 146, column: 9, scope: !3881)
!3891 = !DILocation(line: 147, column: 7, scope: !3882)
!3892 = !DILocation(line: 151, column: 10, scope: !3822)
!3893 = !DILocation(line: 151, column: 3, scope: !3822)
!3894 = !DILocation(line: 286, column: 1, scope: !3822)
!3895 = distinct !DISubprogram(name: "mbszero", scope: !3896, file: !3896, line: 1135, type: !3897, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !272, retainedNodes: !47)
!3896 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3897 = !DISubroutineType(types: !3898)
!3898 = !{null, !3899}
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !3901)
!3901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !3902)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !3903)
!3903 = !{!3904, !3905}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3902, file: !217, line: 15, baseType: !44, size: 32)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3902, file: !217, line: 20, baseType: !3906, size: 32, offset: 32)
!3906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3902, file: !217, line: 16, size: 32, elements: !3907)
!3907 = !{!3908, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3906, file: !217, line: 18, baseType: !14, size: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3906, file: !217, line: 19, baseType: !226, size: 32)
!3910 = !DILocalVariable(name: "ps", arg: 1, scope: !3895, file: !3896, line: 1135, type: !3899)
!3911 = !DILocation(line: 1135, column: 21, scope: !3895)
!3912 = !DILocation(line: 1137, column: 11, scope: !3895)
!3913 = !DILocation(line: 1137, column: 3, scope: !3895)
!3914 = !DILocation(line: 1138, column: 1, scope: !3895)
!3915 = distinct !DISubprogram(name: "memeq", scope: !2738, file: !2738, line: 974, type: !3916, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !47)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!60, !3357, !3357, !141}
!3918 = !DILocalVariable(name: "__s1", arg: 1, scope: !3915, file: !2738, line: 974, type: !3357)
!3919 = !DILocation(line: 974, column: 20, scope: !3915)
!3920 = !DILocalVariable(name: "__s2", arg: 2, scope: !3915, file: !2738, line: 974, type: !3357)
!3921 = !DILocation(line: 974, column: 38, scope: !3915)
!3922 = !DILocalVariable(name: "__n", arg: 3, scope: !3915, file: !2738, line: 974, type: !141)
!3923 = !DILocation(line: 974, column: 51, scope: !3915)
!3924 = !DILocation(line: 976, column: 19, scope: !3915)
!3925 = !DILocation(line: 976, column: 25, scope: !3915)
!3926 = !DILocation(line: 976, column: 31, scope: !3915)
!3927 = !DILocation(line: 976, column: 11, scope: !3915)
!3928 = !DILocation(line: 976, column: 10, scope: !3915)
!3929 = !DILocation(line: 976, column: 3, scope: !3915)
!3930 = distinct !DISubprogram(name: "rpl_realloc", scope: !3931, file: !3931, line: 2057, type: !3122, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !47)
!3931 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3932 = !DILocalVariable(name: "ptr", arg: 1, scope: !3930, file: !3931, line: 2057, type: !43)
!3933 = !DILocation(line: 2057, column: 20, scope: !3930)
!3934 = !DILocalVariable(name: "size", arg: 2, scope: !3930, file: !3931, line: 2057, type: !141)
!3935 = !DILocation(line: 2057, column: 32, scope: !3930)
!3936 = !DILocation(line: 2059, column: 19, scope: !3930)
!3937 = !DILocation(line: 2059, column: 24, scope: !3930)
!3938 = !DILocation(line: 2059, column: 31, scope: !3930)
!3939 = !DILocation(line: 2059, column: 10, scope: !3930)
!3940 = !DILocation(line: 2059, column: 3, scope: !3930)
!3941 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !279, file: !279, line: 27, type: !3059, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !278, retainedNodes: !47)
!3942 = !DILocalVariable(name: "ptr", arg: 1, scope: !3941, file: !279, line: 27, type: !43)
!3943 = !DILocation(line: 27, column: 21, scope: !3941)
!3944 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3941, file: !279, line: 27, type: !141)
!3945 = !DILocation(line: 27, column: 33, scope: !3941)
!3946 = !DILocalVariable(name: "size", arg: 3, scope: !3941, file: !279, line: 27, type: !141)
!3947 = !DILocation(line: 27, column: 47, scope: !3941)
!3948 = !DILocalVariable(name: "nbytes", scope: !3941, file: !279, line: 29, type: !141)
!3949 = !DILocation(line: 29, column: 10, scope: !3941)
!3950 = !DILocation(line: 30, column: 7, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3941, file: !279, line: 30, column: 7)
!3952 = !DILocation(line: 30, column: 7, scope: !3941)
!3953 = !DILocation(line: 32, column: 7, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3951, file: !279, line: 31, column: 5)
!3955 = !DILocation(line: 32, column: 13, scope: !3954)
!3956 = !DILocation(line: 33, column: 7, scope: !3954)
!3957 = !DILocation(line: 37, column: 19, scope: !3941)
!3958 = !DILocation(line: 37, column: 24, scope: !3941)
!3959 = !DILocation(line: 37, column: 10, scope: !3941)
!3960 = !DILocation(line: 37, column: 3, scope: !3941)
!3961 = !DILocation(line: 38, column: 1, scope: !3941)
!3962 = distinct !DISubprogram(name: "hard_locale", scope: !282, file: !282, line: 28, type: !3963, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !281, retainedNodes: !47)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!60, !44}
!3965 = !DILocalVariable(name: "category", arg: 1, scope: !3962, file: !282, line: 28, type: !44)
!3966 = !DILocation(line: 28, column: 18, scope: !3962)
!3967 = !DILocalVariable(name: "locale", scope: !3962, file: !282, line: 30, type: !3968)
!3968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3969)
!3969 = !{!3970}
!3970 = !DISubrange(count: 257)
!3971 = !DILocation(line: 30, column: 8, scope: !3962)
!3972 = !DILocation(line: 32, column: 25, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3962, file: !282, line: 32, column: 7)
!3974 = !DILocation(line: 32, column: 35, scope: !3973)
!3975 = !DILocation(line: 32, column: 7, scope: !3973)
!3976 = !DILocation(line: 32, column: 7, scope: !3962)
!3977 = !DILocation(line: 33, column: 5, scope: !3973)
!3978 = !DILocation(line: 35, column: 16, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3962, file: !282, line: 35, column: 7)
!3980 = !DILocation(line: 35, column: 9, scope: !3979)
!3981 = !DILocation(line: 35, column: 29, scope: !3979)
!3982 = !DILocation(line: 35, column: 39, scope: !3979)
!3983 = !DILocation(line: 35, column: 32, scope: !3979)
!3984 = !DILocation(line: 35, column: 7, scope: !3962)
!3985 = !DILocation(line: 36, column: 5, scope: !3979)
!3986 = !DILocation(line: 46, column: 3, scope: !3962)
!3987 = !DILocation(line: 47, column: 1, scope: !3962)
!3988 = distinct !DISubprogram(name: "setlocale_null_r", scope: !284, file: !284, line: 154, type: !3989, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !47)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!44, !44, !117, !141}
!3991 = !DILocalVariable(name: "category", arg: 1, scope: !3988, file: !284, line: 154, type: !44)
!3992 = !DILocation(line: 154, column: 23, scope: !3988)
!3993 = !DILocalVariable(name: "buf", arg: 2, scope: !3988, file: !284, line: 154, type: !117)
!3994 = !DILocation(line: 154, column: 39, scope: !3988)
!3995 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3988, file: !284, line: 154, type: !141)
!3996 = !DILocation(line: 154, column: 51, scope: !3988)
!3997 = !DILocation(line: 159, column: 37, scope: !3988)
!3998 = !DILocation(line: 159, column: 47, scope: !3988)
!3999 = !DILocation(line: 159, column: 52, scope: !3988)
!4000 = !DILocation(line: 159, column: 10, scope: !3988)
!4001 = !DILocation(line: 159, column: 3, scope: !3988)
!4002 = distinct !DISubprogram(name: "setlocale_null", scope: !284, file: !284, line: 186, type: !4003, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !47)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!6, !44}
!4005 = !DILocalVariable(name: "category", arg: 1, scope: !4002, file: !284, line: 186, type: !44)
!4006 = !DILocation(line: 186, column: 21, scope: !4002)
!4007 = !DILocation(line: 189, column: 35, scope: !4002)
!4008 = !DILocation(line: 189, column: 10, scope: !4002)
!4009 = !DILocation(line: 189, column: 3, scope: !4002)
!4010 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !286, file: !286, line: 35, type: !4003, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !285, retainedNodes: !47)
!4011 = !DILocalVariable(name: "category", arg: 1, scope: !4010, file: !286, line: 35, type: !44)
!4012 = !DILocation(line: 35, column: 30, scope: !4010)
!4013 = !DILocalVariable(name: "result", scope: !4010, file: !286, line: 37, type: !6)
!4014 = !DILocation(line: 37, column: 15, scope: !4010)
!4015 = !DILocation(line: 37, column: 35, scope: !4010)
!4016 = !DILocation(line: 37, column: 24, scope: !4010)
!4017 = !DILocation(line: 62, column: 10, scope: !4010)
!4018 = !DILocation(line: 62, column: 3, scope: !4010)
!4019 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !286, file: !286, line: 66, type: !3989, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !285, retainedNodes: !47)
!4020 = !DILocalVariable(name: "category", arg: 1, scope: !4019, file: !286, line: 66, type: !44)
!4021 = !DILocation(line: 66, column: 32, scope: !4019)
!4022 = !DILocalVariable(name: "buf", arg: 2, scope: !4019, file: !286, line: 66, type: !117)
!4023 = !DILocation(line: 66, column: 48, scope: !4019)
!4024 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4019, file: !286, line: 66, type: !141)
!4025 = !DILocation(line: 66, column: 60, scope: !4019)
!4026 = !DILocalVariable(name: "result", scope: !4019, file: !286, line: 111, type: !6)
!4027 = !DILocation(line: 111, column: 15, scope: !4019)
!4028 = !DILocation(line: 111, column: 49, scope: !4019)
!4029 = !DILocation(line: 111, column: 24, scope: !4019)
!4030 = !DILocation(line: 113, column: 7, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4019, file: !286, line: 113, column: 7)
!4032 = !DILocation(line: 113, column: 14, scope: !4031)
!4033 = !DILocation(line: 113, column: 7, scope: !4019)
!4034 = !DILocation(line: 116, column: 11, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4036, file: !286, line: 116, column: 11)
!4036 = distinct !DILexicalBlock(scope: !4031, file: !286, line: 114, column: 5)
!4037 = !DILocation(line: 116, column: 19, scope: !4035)
!4038 = !DILocation(line: 116, column: 11, scope: !4036)
!4039 = !DILocation(line: 120, column: 9, scope: !4035)
!4040 = !DILocation(line: 120, column: 16, scope: !4035)
!4041 = !DILocation(line: 121, column: 7, scope: !4036)
!4042 = !DILocalVariable(name: "length", scope: !4043, file: !286, line: 125, type: !141)
!4043 = distinct !DILexicalBlock(scope: !4031, file: !286, line: 124, column: 5)
!4044 = !DILocation(line: 125, column: 14, scope: !4043)
!4045 = !DILocation(line: 125, column: 31, scope: !4043)
!4046 = !DILocation(line: 125, column: 23, scope: !4043)
!4047 = !DILocation(line: 126, column: 11, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4043, file: !286, line: 126, column: 11)
!4049 = !DILocation(line: 126, column: 20, scope: !4048)
!4050 = !DILocation(line: 126, column: 18, scope: !4048)
!4051 = !DILocation(line: 126, column: 11, scope: !4043)
!4052 = !DILocation(line: 128, column: 19, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4048, file: !286, line: 127, column: 9)
!4054 = !DILocation(line: 128, column: 24, scope: !4053)
!4055 = !DILocation(line: 128, column: 32, scope: !4053)
!4056 = !DILocation(line: 128, column: 39, scope: !4053)
!4057 = !DILocation(line: 128, column: 11, scope: !4053)
!4058 = !DILocation(line: 129, column: 11, scope: !4053)
!4059 = !DILocation(line: 133, column: 15, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4061, file: !286, line: 133, column: 15)
!4061 = distinct !DILexicalBlock(scope: !4048, file: !286, line: 132, column: 9)
!4062 = !DILocation(line: 133, column: 23, scope: !4060)
!4063 = !DILocation(line: 133, column: 15, scope: !4061)
!4064 = !DILocation(line: 138, column: 23, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4060, file: !286, line: 134, column: 13)
!4066 = !DILocation(line: 138, column: 28, scope: !4065)
!4067 = !DILocation(line: 138, column: 36, scope: !4065)
!4068 = !DILocation(line: 138, column: 44, scope: !4065)
!4069 = !DILocation(line: 138, column: 15, scope: !4065)
!4070 = !DILocation(line: 139, column: 15, scope: !4065)
!4071 = !DILocation(line: 139, column: 19, scope: !4065)
!4072 = !DILocation(line: 139, column: 27, scope: !4065)
!4073 = !DILocation(line: 139, column: 32, scope: !4065)
!4074 = !DILocation(line: 140, column: 13, scope: !4065)
!4075 = !DILocation(line: 141, column: 11, scope: !4061)
!4076 = !DILocation(line: 145, column: 1, scope: !4019)
