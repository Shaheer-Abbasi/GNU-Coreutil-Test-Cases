; ModuleID = 'src/true.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

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

@.str = private unnamed_addr constant [61 x i8] c"Usage: %s [ignored command line arguments]\0A  or:  %s OPTION\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating success.\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
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
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.42 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.43 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), align 8, !dbg !35
@file_name = internal global i8* null, align 8, !dbg !40
@ignore_EPIPE = internal global i8 0, align 1, !dbg !45
@.str.50 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.51 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.52 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !48
@stderr = external global %struct._IO_FILE*, align 8
@.str.54 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !77
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !54
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !73
@.str.1.60 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.61 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.62 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !75
@.str.4.55 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.56 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.57 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !82
@.str.71 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.72 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !88
@.str.75 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.76 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.77 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.78 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.79 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.80 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.81 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.82 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.83 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.84 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.78, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.84, i32 0, i32 0), i8* null], align 8, !dbg !99
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !128
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !146
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !161
@nslots = internal global i32 1, align 4, !dbg !168
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !148
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !170
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !134
@.str.10.85 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.87 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.88 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !153
@.str.93 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.94 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.95 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.96 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.97 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.98 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.99 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.100 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.101 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.102 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.103 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.104 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.105 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.106 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.107 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.108 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.109 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.114 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.115 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.116 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.117 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.118 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.119 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.120 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !176
@exit_failure = dso_local global i32 1, align 4, !dbg !184
@.str.133 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.131 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.132 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.154 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !190
@.str.165 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.166 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !282 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !285, metadata !DIExpression()), !dbg !286
  %3 = call i8* @gettext(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0)) #18, !dbg !287
  %4 = load i8*, i8** @program_name, align 8, !dbg !288
  %5 = load i8*, i8** @program_name, align 8, !dbg !289
  %6 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef %4, i8* noundef %5), !dbg !290
  %7 = call i8* @gettext(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !291
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %7), !dbg !292
  %9 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !293
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %9), !dbg !293
  %10 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !294
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %10), !dbg !294
  %11 = call i8* @gettext(i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !295
  %12 = call i32 (i8*, ...) @printf(i8* noundef %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !296
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !297
  %13 = load i32, i32* %2, align 4, !dbg !298
  call void @exit(i32 noundef %13) #19, !dbg !299
  unreachable, !dbg !299
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !300, metadata !DIExpression()), !dbg !301
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !302, metadata !DIExpression()), !dbg !303
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !304
  %15 = icmp eq i32 %14, -1, !dbg !306
  br i1 %15, label %16, label %30, !dbg !307

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !308, metadata !DIExpression()), !dbg !310
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #18, !dbg !311
  store i8* %17, i8** %5, align 8, !dbg !310
  %18 = load i8*, i8** %5, align 8, !dbg !312
  %19 = icmp ne i8* %18, null, !dbg !312
  br i1 %19, label %20, label %27, !dbg !313

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !314
  %22 = load i8, i8* %21, align 1, !dbg !315
  %23 = icmp ne i8 %22, 0, !dbg !315
  br i1 %23, label %24, label %27, !dbg !316

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !317
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)), !dbg !318
  br label %27, !dbg !316

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !316
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !319
  br label %30, !dbg !320

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !321
  %32 = icmp ne i32 %31, 0, !dbg !321
  br i1 %32, label %33, label %37, !dbg !323

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !324
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !324
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !324
  br label %274, !dbg !326

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !327, metadata !DIExpression()), !dbg !328
  store i8 1, i8* %6, align 1, !dbg !328
  call void @llvm.dbg.declare(metadata i8** %7, metadata !329, metadata !DIExpression()), !dbg !330
  %38 = load i8*, i8** %4, align 8, !dbg !331
  %39 = load i8*, i8** %4, align 8, !dbg !332
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #20, !dbg !333
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !334
  store i8* %41, i8** %7, align 8, !dbg !330
  call void @llvm.dbg.declare(metadata i8** %8, metadata !335, metadata !DIExpression()), !dbg !336
  %42 = load i8*, i8** %4, align 8, !dbg !337
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !338
  store i8* %43, i8** %8, align 8, !dbg !336
  %44 = load i8*, i8** %8, align 8, !dbg !339
  %45 = icmp ne i8* %44, null, !dbg !339
  br i1 %45, label %48, label %46, !dbg !341

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !342
  store i8* %47, i8** %8, align 8, !dbg !344
  store i8 0, i8* %6, align 1, !dbg !345
  br label %89, !dbg !346

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !347
  %50 = load i8*, i8** %7, align 8, !dbg !349
  %51 = icmp ne i8* %49, %50, !dbg !350
  br i1 %51, label %52, label %88, !dbg !351

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !352, metadata !DIExpression()), !dbg !354
  %53 = load i8*, i8** %7, align 8, !dbg !355
  store i8* %53, i8** %9, align 8, !dbg !354
  call void @llvm.dbg.declare(metadata i64* %10, metadata !356, metadata !DIExpression()), !dbg !357
  store i64 0, i64* %10, align 8, !dbg !357
  br label %54, !dbg !358

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !359
  %56 = load i8*, i8** %8, align 8, !dbg !360
  %57 = icmp ult i8* %55, %56, !dbg !361
  br i1 %57, label %58, label %61, !dbg !362

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !363
  %60 = icmp ult i64 %59, 2, !dbg !364
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !365
  br i1 %62, label %63, label %82, !dbg !358

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !366
  %65 = load i16*, i16** %64, align 8, !dbg !366
  %66 = load i8*, i8** %9, align 8, !dbg !366
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !366
  store i8* %67, i8** %9, align 8, !dbg !366
  %68 = load i8, i8* %66, align 1, !dbg !366
  %69 = zext i8 %68 to i32, !dbg !366
  %70 = sext i32 %69 to i64, !dbg !366
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !366
  %72 = load i16, i16* %71, align 2, !dbg !366
  %73 = zext i16 %72 to i32, !dbg !366
  %74 = and i32 %73, 8192, !dbg !366
  %75 = icmp ne i32 %74, 0, !dbg !367
  %76 = xor i1 %75, true, !dbg !367
  %77 = xor i1 %76, true, !dbg !368
  %78 = zext i1 %77 to i32, !dbg !368
  %79 = sext i32 %78 to i64, !dbg !368
  %80 = load i64, i64* %10, align 8, !dbg !369
  %81 = add i64 %80, %79, !dbg !369
  store i64 %81, i64* %10, align 8, !dbg !369
  br label %54, !dbg !358, !llvm.loop !370

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !372
  %84 = icmp eq i64 %83, 2, !dbg !374
  br i1 %84, label %85, label %87, !dbg !375

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !376
  store i8* %86, i8** %8, align 8, !dbg !378
  store i8 0, i8* %6, align 1, !dbg !379
  br label %87, !dbg !380

87:                                               ; preds = %85, %82
  br label %88, !dbg !381

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !382, metadata !DIExpression()), !dbg !383
  %90 = load i8*, i8** %8, align 8, !dbg !384
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)) #20, !dbg !385
  store i64 %91, i64* %11, align 8, !dbg !383
  call void @llvm.dbg.declare(metadata i8** %12, metadata !386, metadata !DIExpression()), !dbg !387
  %92 = load i8*, i8** %8, align 8, !dbg !388
  %93 = load i64, i64* %11, align 8, !dbg !389
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !390
  store i8* %94, i8** %12, align 8, !dbg !387
  br label %95, !dbg !391

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !392
  %97 = load i8, i8* %96, align 1, !dbg !393
  %98 = zext i8 %97 to i32, !dbg !393
  %99 = icmp ne i32 %98, 0, !dbg !393
  br i1 %99, label %100, label %105, !dbg !394

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !395
  %102 = load i8, i8* %101, align 1, !dbg !396
  %103 = zext i8 %102 to i32, !dbg !396
  %104 = icmp ne i32 %103, 10, !dbg !397
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !398
  br i1 %106, label %107, label %164, !dbg !391

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !399
  %109 = load i8, i8* %108, align 1, !dbg !402
  %110 = zext i8 %109 to i32, !dbg !402
  %111 = icmp eq i32 %110, 45, !dbg !403
  br i1 %111, label %112, label %119, !dbg !404

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !405
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !406
  %115 = load i8, i8* %114, align 1, !dbg !407
  %116 = zext i8 %115 to i32, !dbg !407
  %117 = icmp eq i32 %116, 45, !dbg !408
  br i1 %117, label %118, label %119, !dbg !409

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !410
  br label %119, !dbg !411

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !412
  %121 = load i16*, i16** %120, align 8, !dbg !412
  %122 = load i8*, i8** %12, align 8, !dbg !412
  %123 = load i8, i8* %122, align 1, !dbg !412
  %124 = zext i8 %123 to i32, !dbg !412
  %125 = sext i32 %124 to i64, !dbg !412
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !412
  %127 = load i16, i16* %126, align 2, !dbg !412
  %128 = zext i16 %127 to i32, !dbg !412
  %129 = and i32 %128, 8192, !dbg !412
  %130 = icmp ne i32 %129, 0, !dbg !412
  br i1 %130, label %131, label %161, !dbg !414

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !415
  %133 = load i8, i8* %132, align 1, !dbg !418
  %134 = zext i8 %133 to i32, !dbg !418
  %135 = icmp eq i32 %134, 9, !dbg !419
  br i1 %135, label %149, label %136, !dbg !420

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !421
  %138 = load i16*, i16** %137, align 8, !dbg !421
  %139 = load i8*, i8** %12, align 8, !dbg !421
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !421
  %141 = load i8, i8* %140, align 1, !dbg !421
  %142 = zext i8 %141 to i32, !dbg !421
  %143 = sext i32 %142 to i64, !dbg !421
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !421
  %145 = load i16, i16* %144, align 2, !dbg !421
  %146 = zext i16 %145 to i32, !dbg !421
  %147 = and i32 %146, 8192, !dbg !421
  %148 = icmp ne i32 %147, 0, !dbg !421
  br i1 %148, label %149, label %150, !dbg !422

149:                                              ; preds = %136, %131
  br label %164, !dbg !423

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !424
  %152 = trunc i8 %151 to i1, !dbg !424
  br i1 %152, label %160, label %153, !dbg !426

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !427
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !428
  %156 = load i8, i8* %155, align 1, !dbg !429
  %157 = zext i8 %156 to i32, !dbg !429
  %158 = icmp ne i32 %157, 45, !dbg !430
  br i1 %158, label %159, label %160, !dbg !431

159:                                              ; preds = %153
  br label %164, !dbg !432

160:                                              ; preds = %153, %150
  br label %161, !dbg !433

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !434
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !434
  store i8* %163, i8** %12, align 8, !dbg !434
  br label %95, !dbg !391, !llvm.loop !435

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !437
  %166 = load i8*, i8** %7, align 8, !dbg !437
  %167 = load i8*, i8** %4, align 8, !dbg !437
  %168 = ptrtoint i8* %166 to i64, !dbg !437
  %169 = ptrtoint i8* %167 to i64, !dbg !437
  %170 = sub i64 %168, %169, !dbg !437
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !437
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !437
  call void @llvm.dbg.declare(metadata i8** %13, metadata !438, metadata !DIExpression()), !dbg !439
  %173 = load i8*, i8** %3, align 8, !dbg !440
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)), !dbg !441
  br i1 %174, label %175, label %176, !dbg !441

175:                                              ; preds = %164
  br label %232, !dbg !441

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !442
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)), !dbg !443
  br i1 %178, label %179, label %180, !dbg !443

179:                                              ; preds = %176
  br label %230, !dbg !443

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !444
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)), !dbg !445
  br i1 %182, label %183, label %184, !dbg !445

183:                                              ; preds = %180
  br label %228, !dbg !445

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !446
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0)), !dbg !447
  br i1 %186, label %187, label %188, !dbg !447

187:                                              ; preds = %184
  br label %226, !dbg !447

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !448
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0)), !dbg !449
  br i1 %190, label %191, label %192, !dbg !449

191:                                              ; preds = %188
  br label %224, !dbg !449

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !450
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0)), !dbg !451
  br i1 %194, label %195, label %196, !dbg !451

195:                                              ; preds = %192
  br label %222, !dbg !451

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !452
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0)), !dbg !453
  br i1 %198, label %199, label %200, !dbg !453

199:                                              ; preds = %196
  br label %220, !dbg !453

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !454
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)), !dbg !455
  br i1 %202, label %203, label %204, !dbg !455

203:                                              ; preds = %200
  br label %218, !dbg !455

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !456
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)), !dbg !457
  br i1 %206, label %207, label %208, !dbg !457

207:                                              ; preds = %204
  br label %216, !dbg !457

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !458
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)), !dbg !459
  br i1 %210, label %211, label %212, !dbg !459

211:                                              ; preds = %208
  br label %214, !dbg !459

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !460
  br label %214, !dbg !459

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !459
  br label %216, !dbg !457

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !457
  br label %218, !dbg !455

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !455
  br label %220, !dbg !453

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !453
  br label %222, !dbg !451

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !451
  br label %224, !dbg !449

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !449
  br label %226, !dbg !447

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !447
  br label %228, !dbg !445

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !445
  br label %230, !dbg !443

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !443
  br label %232, !dbg !441

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !441
  store i8* %233, i8** %13, align 8, !dbg !439
  %234 = load i8*, i8** %8, align 8, !dbg !461
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 noundef 6) #20, !dbg !461
  %236 = icmp eq i32 %235, 0, !dbg !461
  br i1 %236, label %241, label %237, !dbg !463

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !464
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i64 noundef 9) #20, !dbg !464
  %240 = icmp eq i32 %239, 0, !dbg !464
  br i1 %240, label %241, label %248, !dbg !465

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !466
  %243 = load i8*, i8** %13, align 8, !dbg !468
  %244 = load i64, i64* %11, align 8, !dbg !469
  %245 = trunc i64 %244 to i32, !dbg !470
  %246 = load i8*, i8** %8, align 8, !dbg !471
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !472
  br label %254, !dbg !473

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !474
  %250 = load i64, i64* %11, align 8, !dbg !476
  %251 = trunc i64 %250 to i32, !dbg !477
  %252 = load i8*, i8** %8, align 8, !dbg !478
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.34, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !479
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !480
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !480
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !481
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !481
  %259 = load i8*, i8** %7, align 8, !dbg !482
  %260 = load i8*, i8** %12, align 8, !dbg !482
  %261 = load i8*, i8** %7, align 8, !dbg !482
  %262 = ptrtoint i8* %260 to i64, !dbg !482
  %263 = ptrtoint i8* %261 to i64, !dbg !482
  %264 = sub i64 %262, %263, !dbg !482
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !482
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !482
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !483
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !483
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !484
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !484
  %271 = load i8*, i8** %12, align 8, !dbg !485
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !485
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !485
  br label %274, !dbg !486

274:                                              ; preds = %254, %33
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !487 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !490, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !492, metadata !DIExpression()), !dbg !501
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !501
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !501
  call void @llvm.dbg.declare(metadata i8** %4, metadata !502, metadata !DIExpression()), !dbg !503
  %9 = load i8*, i8** %2, align 8, !dbg !504
  store i8* %9, i8** %4, align 8, !dbg !503
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !505, metadata !DIExpression()), !dbg !507
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !508
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !507
  br label %11, !dbg !509

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !510
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !511
  %14 = load i8*, i8** %13, align 8, !dbg !511
  %15 = icmp ne i8* %14, null, !dbg !510
  br i1 %15, label %16, label %23, !dbg !512

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !513
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !514
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !515
  %20 = load i8*, i8** %19, align 8, !dbg !515
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !516
  %22 = xor i1 %21, true, !dbg !517
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !518
  br i1 %24, label %25, label %28, !dbg !509

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !519
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !519
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !519
  br label %11, !dbg !509, !llvm.loop !520

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !521
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !523
  %31 = load i8*, i8** %30, align 8, !dbg !523
  %32 = icmp ne i8* %31, null, !dbg !521
  br i1 %32, label %33, label %37, !dbg !524

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !525
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !526
  %36 = load i8*, i8** %35, align 8, !dbg !526
  store i8* %36, i8** %4, align 8, !dbg !527
  br label %37, !dbg !528

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !529
  call void @llvm.dbg.declare(metadata i8** %6, metadata !530, metadata !DIExpression()), !dbg !531
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !532
  store i8* %38, i8** %6, align 8, !dbg !531
  %39 = load i8*, i8** %6, align 8, !dbg !533
  %40 = icmp ne i8* %39, null, !dbg !533
  br i1 %40, label %41, label %49, !dbg !535

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !536
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i64 noundef 3) #20, !dbg !536
  %44 = icmp ne i32 %43, 0, !dbg !536
  br i1 %44, label %45, label %49, !dbg !537

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.43, i64 0, i64 0)) #18, !dbg !538
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !538
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !538
  br label %49, !dbg !540

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !541, metadata !DIExpression()), !dbg !542
  %50 = load i8*, i8** %2, align 8, !dbg !543
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)), !dbg !544
  br i1 %51, label %52, label %53, !dbg !544

52:                                               ; preds = %49
  br label %55, !dbg !544

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !545
  br label %55, !dbg !544

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !544
  store i8* %56, i8** %7, align 8, !dbg !542
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0)) #18, !dbg !546
  %58 = load i8*, i8** %7, align 8, !dbg !547
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* noundef %58), !dbg !548
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0)) #18, !dbg !549
  %61 = load i8*, i8** %4, align 8, !dbg !550
  %62 = load i8*, i8** %4, align 8, !dbg !551
  %63 = load i8*, i8** %2, align 8, !dbg !552
  %64 = icmp eq i8* %62, %63, !dbg !553
  %65 = zext i1 %64 to i64, !dbg !551
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !551
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !554
  ret void, !dbg !555
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !556 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !560, metadata !DIExpression()), !dbg !561
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !562, metadata !DIExpression()), !dbg !563
  %6 = load i32, i32* %4, align 4, !dbg !564
  %7 = icmp eq i32 %6, 2, !dbg !566
  br i1 %7, label %8, label %31, !dbg !567

8:                                                ; preds = %2
  %9 = load i8**, i8*** %5, align 8, !dbg !568
  %10 = getelementptr inbounds i8*, i8** %9, i64 0, !dbg !568
  %11 = load i8*, i8** %10, align 8, !dbg !568
  call void @set_program_name(i8* noundef %11), !dbg !570
  %12 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !571
  %13 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !572
  %14 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !573
  %15 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !574
  %16 = load i8**, i8*** %5, align 8, !dbg !575
  %17 = getelementptr inbounds i8*, i8** %16, i64 1, !dbg !575
  %18 = load i8*, i8** %17, align 8, !dbg !575
  %19 = call i1 @streq(i8* noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)), !dbg !577
  br i1 %19, label %20, label %21, !dbg !578

20:                                               ; preds = %8
  call void @usage(i32 noundef 0) #22, !dbg !579
  unreachable, !dbg !579

21:                                               ; preds = %8
  %22 = load i8**, i8*** %5, align 8, !dbg !580
  %23 = getelementptr inbounds i8*, i8** %22, i64 1, !dbg !580
  %24 = load i8*, i8** %23, align 8, !dbg !580
  %25 = call i1 @streq(i8* noundef %24, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)), !dbg !582
  br i1 %25, label %26, label %30, !dbg !583

26:                                               ; preds = %21
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !584
  %28 = load i8*, i8** @Version, align 8, !dbg !585
  %29 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)), !dbg !586
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %28, i8* noundef %29, i8* noundef null), !dbg !587
  br label %30, !dbg !587

30:                                               ; preds = %26, %21
  br label %31, !dbg !588

31:                                               ; preds = %30, %2
  ret i32 0, !dbg !589
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !590 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !591, metadata !DIExpression()), !dbg !592
  %3 = load i8*, i8** %2, align 8, !dbg !593
  store i8* %3, i8** @file_name, align 8, !dbg !594
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !596 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !599, metadata !DIExpression()), !dbg !600
  %4 = load i8, i8* %2, align 1, !dbg !601
  %5 = trunc i8 %4 to i1, !dbg !601
  %6 = zext i1 %5 to i8, !dbg !602
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !602
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !604 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !605
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !607
  %4 = icmp ne i32 %3, 0, !dbg !608
  br i1 %4, label %5, label %28, !dbg !609

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !610
  %7 = trunc i8 %6 to i1, !dbg !610
  br i1 %7, label %8, label %12, !dbg !611

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !612
  %10 = load i32, i32* %9, align 4, !dbg !612
  %11 = icmp eq i32 %10, 32, !dbg !613
  br i1 %11, label %28, label %12, !dbg !614

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !615, metadata !DIExpression()), !dbg !617
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.51, i64 0, i64 0)) #18, !dbg !618
  store i8* %13, i8** %1, align 8, !dbg !617
  %14 = load i8*, i8** @file_name, align 8, !dbg !619
  %15 = icmp ne i8* %14, null, !dbg !619
  br i1 %15, label %16, label %22, !dbg !621

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !622
  %18 = load i32, i32* %17, align 4, !dbg !622
  %19 = load i8*, i8** @file_name, align 8, !dbg !622
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !622
  %21 = load i8*, i8** %1, align 8, !dbg !622
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.52, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !622
  br label %26, !dbg !622

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !623
  %24 = load i32, i32* %23, align 4, !dbg !623
  %25 = load i8*, i8** %1, align 8, !dbg !623
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.53, i64 0, i64 0), i8* noundef %25), !dbg !623
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !624
  call void @_exit(i32 noundef %27) #22, !dbg !625
  unreachable, !dbg !625

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !626
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !628
  %31 = icmp ne i32 %30, 0, !dbg !629
  br i1 %31, label %32, label %34, !dbg !630

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !631
  call void @_exit(i32 noundef %33) #22, !dbg !632
  unreachable, !dbg !632

34:                                               ; preds = %28
  ret void, !dbg !633
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !634 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !637, metadata !DIExpression()), !dbg !638
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !639, metadata !DIExpression()), !dbg !638
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !640, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !641, metadata !DIExpression()), !dbg !638
  call void @flush_stdout(), !dbg !642
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !643
  %10 = icmp ne void ()* %9, null, !dbg !643
  br i1 %10, label %11, label %13, !dbg !645

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !646
  call void %12(), !dbg !647
  br label %17, !dbg !647

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !648
  %15 = call i8* @getprogname() #20, !dbg !650
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* noundef %15), !dbg !651
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !652
  %19 = load i32, i32* %6, align 4, !dbg !652
  %20 = load i8*, i8** %7, align 8, !dbg !652
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !652
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !652
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !652
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !652
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !654 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !655, metadata !DIExpression()), !dbg !656
  store i32 1, i32* %1, align 4, !dbg !657
  %2 = load i32, i32* %1, align 4, !dbg !658
  %3 = icmp sle i32 0, %2, !dbg !660
  br i1 %3, label %4, label %11, !dbg !661

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !662
  %6 = call i32 @is_open(i32 noundef %5), !dbg !663
  %7 = icmp ne i32 %6, 0, !dbg !663
  br i1 %7, label %8, label %11, !dbg !664

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !665
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !665
  br label %11, !dbg !665

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !666
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !667 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !668, metadata !DIExpression()), !dbg !669
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !670, metadata !DIExpression()), !dbg !669
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !671, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !672, metadata !DIExpression()), !dbg !669
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !673
  %10 = load i8*, i8** %7, align 8, !dbg !674
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !675
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !675
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !675
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !675
  %14 = load i32, i32* @error_message_count, align 4, !dbg !676
  %15 = add i32 %14, 1, !dbg !676
  store i32 %15, i32* @error_message_count, align 4, !dbg !676
  %16 = load i32, i32* %6, align 4, !dbg !677
  %17 = icmp ne i32 %16, 0, !dbg !677
  br i1 %17, label %18, label %20, !dbg !679

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !680
  call void @print_errno_message(i32 noundef %19), !dbg !681
  br label %20, !dbg !681

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !682
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !682
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !683
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !683
  %25 = load i32, i32* %5, align 4, !dbg !684
  %26 = icmp ne i32 %25, 0, !dbg !684
  br i1 %26, label %27, label %29, !dbg !686

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !687
  call void @exit(i32 noundef %28) #19, !dbg !688
  unreachable, !dbg !688

29:                                               ; preds = %20
  ret void, !dbg !689
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !690 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !691, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.declare(metadata i8** %3, metadata !693, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !695, metadata !DIExpression()), !dbg !699
  %5 = load i32, i32* %2, align 4, !dbg !700
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !701
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !702
  store i8* %7, i8** %3, align 8, !dbg !703
  %8 = load i8*, i8** %3, align 8, !dbg !704
  %9 = icmp ne i8* %8, null, !dbg !704
  br i1 %9, label %12, label %10, !dbg !706

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.56, i64 0, i64 0)) #18, !dbg !707
  store i8* %11, i8** %3, align 8, !dbg !708
  br label %12, !dbg !709

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !710
  %14 = load i8*, i8** %3, align 8, !dbg !711
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.57, i64 0, i64 0), i8* noundef %14), !dbg !712
  ret void, !dbg !713
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !714 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !717, metadata !DIExpression()), !dbg !718
  %3 = load i32, i32* %2, align 4, !dbg !719
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !720
  %5 = icmp sle i32 0, %4, !dbg !721
  %6 = zext i1 %5 to i32, !dbg !721
  ret i32 %6, !dbg !722
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !723 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !726, metadata !DIExpression()), !dbg !727
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !728, metadata !DIExpression()), !dbg !729
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !730, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !732, metadata !DIExpression()), !dbg !733
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !734
  call void @llvm.va_start(i8* %9), !dbg !734
  %10 = load i32, i32* %4, align 4, !dbg !735
  %11 = load i32, i32* %5, align 4, !dbg !735
  %12 = load i8*, i8** %6, align 8, !dbg !735
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !735
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !735
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !735
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !735
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !736
  call void @llvm.va_end(i8* %15), !dbg !736
  ret void, !dbg !737
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !56 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !738, metadata !DIExpression()), !dbg !739
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !740, metadata !DIExpression()), !dbg !739
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !741, metadata !DIExpression()), !dbg !739
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !742, metadata !DIExpression()), !dbg !739
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !743, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !744, metadata !DIExpression()), !dbg !739
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !745
  %14 = icmp ne i32 %13, 0, !dbg !745
  br i1 %14, label %15, label %38, !dbg !747

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !748
  %17 = load i32, i32* %10, align 4, !dbg !751
  %18 = icmp eq i32 %16, %17, !dbg !752
  br i1 %18, label %19, label %35, !dbg !753

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !754
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !755
  %22 = icmp eq i8* %20, %21, !dbg !756
  br i1 %22, label %34, label %23, !dbg !757

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !758
  %25 = icmp ne i8* %24, null, !dbg !759
  br i1 %25, label %26, label %35, !dbg !760

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !761
  %28 = icmp ne i8* %27, null, !dbg !762
  br i1 %28, label %29, label %35, !dbg !763

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !764
  %31 = load i8*, i8** %9, align 8, !dbg !765
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !766
  %33 = icmp eq i32 %32, 0, !dbg !767
  br i1 %33, label %34, label %35, !dbg !768

34:                                               ; preds = %29, %19
  br label %61, !dbg !769

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !770
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !771
  %37 = load i32, i32* %10, align 4, !dbg !772
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !773
  br label %38, !dbg !774

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !775
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !776
  %40 = icmp ne void ()* %39, null, !dbg !776
  br i1 %40, label %41, label %43, !dbg !778

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !779
  call void %42(), !dbg !780
  br label %47, !dbg !780

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !781
  %45 = call i8* @getprogname() #20, !dbg !783
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.60, i64 0, i64 0), i8* noundef %45), !dbg !784
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !785
  %49 = load i8*, i8** %9, align 8, !dbg !786
  %50 = icmp ne i8* %49, null, !dbg !787
  %51 = zext i1 %50 to i64, !dbg !786
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.62, i64 0, i64 0), !dbg !786
  %53 = load i8*, i8** %9, align 8, !dbg !788
  %54 = load i32, i32* %10, align 4, !dbg !789
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !790
  %56 = load i32, i32* %7, align 4, !dbg !791
  %57 = load i32, i32* %8, align 4, !dbg !791
  %58 = load i8*, i8** %11, align 8, !dbg !791
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !791
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !791
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !791
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !791
  br label %61, !dbg !792

61:                                               ; preds = %47, %34
  ret void, !dbg !792
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !793 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !796, metadata !DIExpression()), !dbg !797
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !798, metadata !DIExpression()), !dbg !799
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !800, metadata !DIExpression()), !dbg !801
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !802, metadata !DIExpression()), !dbg !803
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !804, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !806, metadata !DIExpression()), !dbg !807
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !808
  call void @llvm.va_start(i8* %13), !dbg !808
  %14 = load i32, i32* %6, align 4, !dbg !809
  %15 = load i32, i32* %7, align 4, !dbg !809
  %16 = load i8*, i8** %8, align 8, !dbg !809
  %17 = load i32, i32* %9, align 4, !dbg !809
  %18 = load i8*, i8** %10, align 8, !dbg !809
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !809
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !809
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !809
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !809
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !810
  call void @llvm.va_end(i8* %21), !dbg !810
  ret void, !dbg !811
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !812 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !815
  ret i8* %1, !dbg !816
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !817 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata i8** %3, metadata !820, metadata !DIExpression()), !dbg !821
  %5 = load i8*, i8** %2, align 8, !dbg !822
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !823
  store i8* %6, i8** %3, align 8, !dbg !821
  call void @llvm.dbg.declare(metadata i8** %4, metadata !824, metadata !DIExpression()), !dbg !825
  %7 = load i8*, i8** %3, align 8, !dbg !826
  %8 = icmp ne i8* %7, null, !dbg !826
  br i1 %8, label %9, label %12, !dbg !826

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !827
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !828
  br label %14, !dbg !826

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !829
  br label %14, !dbg !826

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !826
  store i8* %15, i8** %4, align 8, !dbg !825
  %16 = load i8*, i8** %4, align 8, !dbg !830
  %17 = load i8*, i8** %2, align 8, !dbg !832
  %18 = ptrtoint i8* %16 to i64, !dbg !833
  %19 = ptrtoint i8* %17 to i64, !dbg !833
  %20 = sub i64 %18, %19, !dbg !833
  %21 = icmp sle i64 7, %20, !dbg !834
  br i1 %21, label %22, label %36, !dbg !835

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !836
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !837
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i64 0, i64 0), i64 noundef 7), !dbg !838
  br i1 %25, label %26, label %36, !dbg !839

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !840
  store i8* %27, i8** %2, align 8, !dbg !842
  %28 = load i8*, i8** %4, align 8, !dbg !843
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.72, i64 0, i64 0), i64 noundef 3) #20, !dbg !845
  %30 = icmp eq i32 %29, 0, !dbg !846
  br i1 %30, label %31, label %35, !dbg !847

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !848
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !848
  store i8* %33, i8** %4, align 8, !dbg !848
  %34 = load i8*, i8** %4, align 8, !dbg !850
  store i8* %34, i8** %2, align 8, !dbg !851
  br label %35, !dbg !852

35:                                               ; preds = %31, %26
  br label %36, !dbg !853

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !854
  store i8* %37, i8** @program_name, align 8, !dbg !855
  %38 = load i8*, i8** %2, align 8, !dbg !856
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !857
  %39 = load i8*, i8** %4, align 8, !dbg !858
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !859
  ret void, !dbg !860
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !90 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !861, metadata !DIExpression()), !dbg !862
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !863, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.declare(metadata i8** %6, metadata !865, metadata !DIExpression()), !dbg !866
  %9 = load i8*, i8** %4, align 8, !dbg !867
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !868
  store i8* %10, i8** %6, align 8, !dbg !866
  %11 = load i8*, i8** %6, align 8, !dbg !869
  %12 = load i8*, i8** %4, align 8, !dbg !871
  %13 = icmp ne i8* %11, %12, !dbg !872
  br i1 %13, label %14, label %16, !dbg !873

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !874
  store i8* %15, i8** %3, align 8, !dbg !875
  br label %26, !dbg !875

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !876, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !883, metadata !DIExpression()), !dbg !894
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !895
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !896
  %18 = icmp eq i64 %17, 2, !dbg !898
  br i1 %18, label %19, label %24, !dbg !899

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !900
  %21 = icmp eq i32 %20, 2047, !dbg !901
  br i1 %21, label %22, label %24, !dbg !902

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !903
  store i8* %23, i8** %3, align 8, !dbg !904
  br label %26, !dbg !904

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !905
  store i8* %25, i8** %3, align 8, !dbg !906
  br label %26, !dbg !906

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !907
  ret i8* %27, !dbg !907
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !908 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !912, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.declare(metadata i32* %3, metadata !914, metadata !DIExpression()), !dbg !915
  %5 = call i32* @__errno_location() #21, !dbg !916
  %6 = load i32, i32* %5, align 4, !dbg !916
  store i32 %6, i32* %3, align 4, !dbg !915
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !917, metadata !DIExpression()), !dbg !918
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !919
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !919
  br i1 %8, label %9, label %11, !dbg !919

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !920
  br label %12, !dbg !919

11:                                               ; preds = %1
  br label %12, !dbg !919

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !919
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !919
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !921
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !921
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !918
  %17 = load i32, i32* %3, align 4, !dbg !922
  %18 = call i32* @__errno_location() #21, !dbg !923
  store i32 %17, i32* %18, align 4, !dbg !924
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !925
  ret %struct.quoting_options* %19, !dbg !926
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !927 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !932, metadata !DIExpression()), !dbg !933
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !934
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !934
  br i1 %4, label %5, label %7, !dbg !934

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !935
  br label %8, !dbg !934

7:                                                ; preds = %1
  br label %8, !dbg !934

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !934
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !936
  %11 = load i32, i32* %10, align 8, !dbg !936
  ret i32 %11, !dbg !937
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !938 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !941, metadata !DIExpression()), !dbg !942
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !943, metadata !DIExpression()), !dbg !944
  %5 = load i32, i32* %4, align 4, !dbg !945
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !946
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !946
  br i1 %7, label %8, label %10, !dbg !946

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !947
  br label %11, !dbg !946

10:                                               ; preds = %2
  br label %11, !dbg !946

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !946
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !948
  store i32 %5, i32* %13, align 8, !dbg !949
  ret void, !dbg !950
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !951 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !954, metadata !DIExpression()), !dbg !955
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !956, metadata !DIExpression()), !dbg !957
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !958, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata i8* %7, metadata !960, metadata !DIExpression()), !dbg !961
  %11 = load i8, i8* %5, align 1, !dbg !962
  store i8 %11, i8* %7, align 1, !dbg !961
  call void @llvm.dbg.declare(metadata i32** %8, metadata !963, metadata !DIExpression()), !dbg !965
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !966
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !966
  br i1 %13, label %14, label %16, !dbg !966

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !967
  br label %17, !dbg !966

16:                                               ; preds = %3
  br label %17, !dbg !966

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !966
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !968
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !969
  %21 = load i8, i8* %7, align 1, !dbg !970
  %22 = zext i8 %21 to i64, !dbg !970
  %23 = udiv i64 %22, 32, !dbg !971
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !972
  store i32* %24, i32** %8, align 8, !dbg !965
  call void @llvm.dbg.declare(metadata i32* %9, metadata !973, metadata !DIExpression()), !dbg !974
  %25 = load i8, i8* %7, align 1, !dbg !975
  %26 = zext i8 %25 to i64, !dbg !975
  %27 = urem i64 %26, 32, !dbg !976
  %28 = trunc i64 %27 to i32, !dbg !975
  store i32 %28, i32* %9, align 4, !dbg !974
  call void @llvm.dbg.declare(metadata i32* %10, metadata !977, metadata !DIExpression()), !dbg !978
  %29 = load i32*, i32** %8, align 8, !dbg !979
  %30 = load i32, i32* %29, align 4, !dbg !980
  %31 = load i32, i32* %9, align 4, !dbg !981
  %32 = lshr i32 %30, %31, !dbg !982
  %33 = and i32 %32, 1, !dbg !983
  store i32 %33, i32* %10, align 4, !dbg !978
  %34 = load i32, i32* %6, align 4, !dbg !984
  %35 = and i32 %34, 1, !dbg !985
  %36 = load i32, i32* %10, align 4, !dbg !986
  %37 = xor i32 %35, %36, !dbg !987
  %38 = load i32, i32* %9, align 4, !dbg !988
  %39 = shl i32 %37, %38, !dbg !989
  %40 = load i32*, i32** %8, align 8, !dbg !990
  %41 = load i32, i32* %40, align 4, !dbg !991
  %42 = xor i32 %41, %39, !dbg !991
  store i32 %42, i32* %40, align 4, !dbg !991
  %43 = load i32, i32* %10, align 4, !dbg !992
  ret i32 %43, !dbg !993
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !994 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !997, metadata !DIExpression()), !dbg !998
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !999, metadata !DIExpression()), !dbg !1000
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1001
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1001
  br i1 %7, label %9, label %8, !dbg !1003

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1004
  br label %9, !dbg !1005

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1006, metadata !DIExpression()), !dbg !1007
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1008
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1009
  %12 = load i32, i32* %11, align 4, !dbg !1009
  store i32 %12, i32* %5, align 4, !dbg !1007
  %13 = load i32, i32* %4, align 4, !dbg !1010
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1011
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1012
  store i32 %13, i32* %15, align 4, !dbg !1013
  %16 = load i32, i32* %5, align 4, !dbg !1014
  ret i32 %16, !dbg !1015
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1016 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1019, metadata !DIExpression()), !dbg !1020
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1021, metadata !DIExpression()), !dbg !1022
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1023, metadata !DIExpression()), !dbg !1024
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1025
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1025
  br i1 %8, label %10, label %9, !dbg !1027

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1028
  br label %10, !dbg !1029

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1030
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1031
  store i32 10, i32* %12, align 8, !dbg !1032
  %13 = load i8*, i8** %5, align 8, !dbg !1033
  %14 = icmp ne i8* %13, null, !dbg !1033
  br i1 %14, label %15, label %18, !dbg !1035

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1036
  %17 = icmp ne i8* %16, null, !dbg !1036
  br i1 %17, label %19, label %18, !dbg !1037

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1038
  unreachable, !dbg !1038

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1039
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1040
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1041
  store i8* %20, i8** %22, align 8, !dbg !1042
  %23 = load i8*, i8** %6, align 8, !dbg !1043
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1044
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1045
  store i8* %23, i8** %25, align 8, !dbg !1046
  ret void, !dbg !1047
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1048 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1051, metadata !DIExpression()), !dbg !1052
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1053, metadata !DIExpression()), !dbg !1054
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1055, metadata !DIExpression()), !dbg !1056
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1057, metadata !DIExpression()), !dbg !1058
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1059, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1061, metadata !DIExpression()), !dbg !1062
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1063
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1063
  br i1 %15, label %16, label %18, !dbg !1063

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1064
  br label %19, !dbg !1063

18:                                               ; preds = %5
  br label %19, !dbg !1063

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1063
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1062
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1065, metadata !DIExpression()), !dbg !1066
  %21 = call i32* @__errno_location() #21, !dbg !1067
  %22 = load i32, i32* %21, align 4, !dbg !1067
  store i32 %22, i32* %12, align 4, !dbg !1066
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1068, metadata !DIExpression()), !dbg !1069
  %23 = load i8*, i8** %6, align 8, !dbg !1070
  %24 = load i64, i64* %7, align 8, !dbg !1071
  %25 = load i8*, i8** %8, align 8, !dbg !1072
  %26 = load i64, i64* %9, align 8, !dbg !1073
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1074
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1075
  %29 = load i32, i32* %28, align 8, !dbg !1075
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1076
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1077
  %32 = load i32, i32* %31, align 4, !dbg !1077
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1078
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1079
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1078
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1080
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1081
  %38 = load i8*, i8** %37, align 8, !dbg !1081
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1082
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1083
  %41 = load i8*, i8** %40, align 8, !dbg !1083
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1084
  store i64 %42, i64* %13, align 8, !dbg !1069
  %43 = load i32, i32* %12, align 4, !dbg !1085
  %44 = call i32* @__errno_location() #21, !dbg !1086
  store i32 %43, i32* %44, align 4, !dbg !1087
  %45 = load i64, i64* %13, align 8, !dbg !1088
  ret i64 %45, !dbg !1089
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1090 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1095, metadata !DIExpression()), !dbg !1096
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1097, metadata !DIExpression()), !dbg !1098
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1099, metadata !DIExpression()), !dbg !1100
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1101, metadata !DIExpression()), !dbg !1102
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1103, metadata !DIExpression()), !dbg !1104
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1105, metadata !DIExpression()), !dbg !1106
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1107, metadata !DIExpression()), !dbg !1108
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1109, metadata !DIExpression()), !dbg !1110
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1111, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1113, metadata !DIExpression()), !dbg !1114
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1115
  %45 = icmp eq i64 %44, 1, !dbg !1116
  %46 = zext i1 %45 to i8, !dbg !1114
  store i8 %46, i8* %20, align 1, !dbg !1114
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1117, metadata !DIExpression()), !dbg !1118
  store i64 0, i64* %21, align 8, !dbg !1118
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1119, metadata !DIExpression()), !dbg !1120
  store i64 0, i64* %22, align 8, !dbg !1120
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1121, metadata !DIExpression()), !dbg !1122
  store i8* null, i8** %23, align 8, !dbg !1122
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1123, metadata !DIExpression()), !dbg !1124
  store i64 0, i64* %24, align 8, !dbg !1124
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1125, metadata !DIExpression()), !dbg !1126
  store i8 0, i8* %25, align 1, !dbg !1126
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1127, metadata !DIExpression()), !dbg !1128
  %47 = load i32, i32* %16, align 4, !dbg !1129
  %48 = and i32 %47, 2, !dbg !1130
  %49 = icmp ne i32 %48, 0, !dbg !1131
  %50 = zext i1 %49 to i8, !dbg !1128
  store i8 %50, i8* %26, align 1, !dbg !1128
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1132, metadata !DIExpression()), !dbg !1133
  store i8 0, i8* %27, align 1, !dbg !1133
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1134, metadata !DIExpression()), !dbg !1135
  store i8 1, i8* %28, align 1, !dbg !1135
  br label %51, !dbg !1136

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1137), !dbg !1138
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1139, metadata !DIExpression()), !dbg !1140
  store i8 0, i8* %29, align 1, !dbg !1140
  %52 = load i32, i32* %15, align 4, !dbg !1141
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
  ], !dbg !1142

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1143
  store i8 1, i8* %26, align 1, !dbg !1145
  br label %54, !dbg !1146

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1147
  %56 = trunc i8 %55 to i1, !dbg !1147
  br i1 %56, label %70, label %57, !dbg !1149

57:                                               ; preds = %54
  br label %58, !dbg !1150

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1151
  %60 = load i64, i64* %12, align 8, !dbg !1151
  %61 = icmp ult i64 %59, %60, !dbg !1151
  br i1 %61, label %62, label %66, !dbg !1154

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1151
  %64 = load i64, i64* %21, align 8, !dbg !1151
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1151
  store i8 34, i8* %65, align 1, !dbg !1151
  br label %66, !dbg !1151

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1154
  %68 = add i64 %67, 1, !dbg !1154
  store i64 %68, i64* %21, align 8, !dbg !1154
  br label %69, !dbg !1154

69:                                               ; preds = %66
  br label %70, !dbg !1154

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1155
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.85, i64 0, i64 0), i8** %23, align 8, !dbg !1156
  store i64 1, i64* %24, align 8, !dbg !1157
  br label %138, !dbg !1158

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1159
  store i8 0, i8* %26, align 1, !dbg !1160
  br label %138, !dbg !1161

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1162
  %74 = icmp ne i32 %73, 10, !dbg !1165
  br i1 %74, label %75, label %80, !dbg !1166

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1167
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.86, i64 0, i64 0), i32 noundef %76), !dbg !1169
  store i8* %77, i8** %18, align 8, !dbg !1170
  %78 = load i32, i32* %15, align 4, !dbg !1171
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), i32 noundef %78), !dbg !1172
  store i8* %79, i8** %19, align 8, !dbg !1173
  br label %80, !dbg !1174

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1175
  %82 = trunc i8 %81 to i1, !dbg !1175
  br i1 %82, label %108, label %83, !dbg !1177

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1178, metadata !DIExpression()), !dbg !1180
  %84 = load i8*, i8** %18, align 8, !dbg !1181
  store i8* %84, i8** %30, align 8, !dbg !1180
  br label %85, !dbg !1182

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1183
  %87 = load i8, i8* %86, align 1, !dbg !1185
  %88 = icmp ne i8 %87, 0, !dbg !1186
  br i1 %88, label %89, label %107, !dbg !1186

89:                                               ; preds = %85
  br label %90, !dbg !1187

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1188
  %92 = load i64, i64* %12, align 8, !dbg !1188
  %93 = icmp ult i64 %91, %92, !dbg !1188
  br i1 %93, label %94, label %100, !dbg !1191

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1188
  %96 = load i8, i8* %95, align 1, !dbg !1188
  %97 = load i8*, i8** %11, align 8, !dbg !1188
  %98 = load i64, i64* %21, align 8, !dbg !1188
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1188
  store i8 %96, i8* %99, align 1, !dbg !1188
  br label %100, !dbg !1188

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1191
  %102 = add i64 %101, 1, !dbg !1191
  store i64 %102, i64* %21, align 8, !dbg !1191
  br label %103, !dbg !1191

103:                                              ; preds = %100
  br label %104, !dbg !1191

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1192
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1192
  store i8* %106, i8** %30, align 8, !dbg !1192
  br label %85, !dbg !1193, !llvm.loop !1194

107:                                              ; preds = %85
  br label %108, !dbg !1195

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1196
  %109 = load i8*, i8** %19, align 8, !dbg !1197
  store i8* %109, i8** %23, align 8, !dbg !1198
  %110 = load i8*, i8** %23, align 8, !dbg !1199
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1200
  store i64 %111, i64* %24, align 8, !dbg !1201
  br label %138, !dbg !1202

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1203
  br label %113, !dbg !1204

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1205
  br label %114, !dbg !1206

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1207
  %116 = trunc i8 %115 to i1, !dbg !1207
  br i1 %116, label %118, label %117, !dbg !1209

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1210
  br label %118, !dbg !1211

118:                                              ; preds = %117, %114
  br label %119, !dbg !1207

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1212
  %120 = load i8, i8* %26, align 1, !dbg !1213
  %121 = trunc i8 %120 to i1, !dbg !1213
  br i1 %121, label %135, label %122, !dbg !1215

122:                                              ; preds = %119
  br label %123, !dbg !1216

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1217
  %125 = load i64, i64* %12, align 8, !dbg !1217
  %126 = icmp ult i64 %124, %125, !dbg !1217
  br i1 %126, label %127, label %131, !dbg !1220

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1217
  %129 = load i64, i64* %21, align 8, !dbg !1217
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1217
  store i8 39, i8* %130, align 1, !dbg !1217
  br label %131, !dbg !1217

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1220
  %133 = add i64 %132, 1, !dbg !1220
  store i64 %133, i64* %21, align 8, !dbg !1220
  br label %134, !dbg !1220

134:                                              ; preds = %131
  br label %135, !dbg !1220

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), i8** %23, align 8, !dbg !1221
  store i64 1, i64* %24, align 8, !dbg !1222
  br label %138, !dbg !1223

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1224
  br label %138, !dbg !1225

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1226
  unreachable, !dbg !1226

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1227, metadata !DIExpression()), !dbg !1229
  store i64 0, i64* %31, align 8, !dbg !1229
  br label %139, !dbg !1230

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1231
  %141 = icmp eq i64 %140, -1, !dbg !1233
  br i1 %141, label %142, label %150, !dbg !1231

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1234
  %144 = load i64, i64* %31, align 8, !dbg !1235
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1234
  %146 = load i8, i8* %145, align 1, !dbg !1234
  %147 = zext i8 %146 to i32, !dbg !1234
  %148 = icmp eq i32 %147, 0, !dbg !1236
  %149 = zext i1 %148 to i32, !dbg !1236
  br label %155, !dbg !1231

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1237
  %152 = load i64, i64* %14, align 8, !dbg !1238
  %153 = icmp eq i64 %151, %152, !dbg !1239
  %154 = zext i1 %153 to i32, !dbg !1239
  br label %155, !dbg !1231

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1231
  %157 = icmp ne i32 %156, 0, !dbg !1240
  %158 = xor i1 %157, true, !dbg !1240
  br i1 %158, label %159, label %996, !dbg !1241

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1242, metadata !DIExpression()), !dbg !1244
  store i8 0, i8* %32, align 1, !dbg !1244
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1245, metadata !DIExpression()), !dbg !1246
  store i8 0, i8* %33, align 1, !dbg !1246
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1247, metadata !DIExpression()), !dbg !1248
  store i8 0, i8* %34, align 1, !dbg !1248
  %160 = load i8, i8* %25, align 1, !dbg !1249
  %161 = trunc i8 %160 to i1, !dbg !1249
  br i1 %161, label %162, label %197, !dbg !1251

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1252
  %164 = icmp ne i32 %163, 2, !dbg !1253
  br i1 %164, label %165, label %197, !dbg !1254

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1255
  %167 = icmp ne i64 %166, 0, !dbg !1255
  br i1 %167, label %168, label %197, !dbg !1256

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1257
  %170 = load i64, i64* %24, align 8, !dbg !1258
  %171 = add i64 %169, %170, !dbg !1259
  %172 = load i64, i64* %14, align 8, !dbg !1260
  %173 = icmp eq i64 %172, -1, !dbg !1261
  br i1 %173, label %174, label %180, !dbg !1262

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1263
  %176 = icmp ult i64 1, %175, !dbg !1264
  br i1 %176, label %177, label %180, !dbg !1260

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1265
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1266
  store i64 %179, i64* %14, align 8, !dbg !1267
  br label %182, !dbg !1260

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1268
  br label %182, !dbg !1260

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1260
  %184 = icmp ule i64 %171, %183, !dbg !1269
  br i1 %184, label %185, label %197, !dbg !1270

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1271
  %187 = load i64, i64* %31, align 8, !dbg !1272
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1273
  %189 = load i8*, i8** %23, align 8, !dbg !1274
  %190 = load i64, i64* %24, align 8, !dbg !1275
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1276
  br i1 %191, label %192, label %197, !dbg !1277

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1278
  %194 = trunc i8 %193 to i1, !dbg !1278
  br i1 %194, label %195, label %196, !dbg !1281

195:                                              ; preds = %192
  br label %1078, !dbg !1282

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1283
  br label %197, !dbg !1284

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1285, metadata !DIExpression()), !dbg !1286
  %198 = load i8*, i8** %13, align 8, !dbg !1287
  %199 = load i64, i64* %31, align 8, !dbg !1288
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1287
  %201 = load i8, i8* %200, align 1, !dbg !1287
  store i8 %201, i8* %35, align 1, !dbg !1286
  %202 = load i8, i8* %35, align 1, !dbg !1289
  %203 = zext i8 %202 to i32, !dbg !1289
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
  ], !dbg !1290

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1291
  %206 = trunc i8 %205 to i1, !dbg !1291
  br i1 %206, label %207, label %318, !dbg !1294

207:                                              ; preds = %204
  br label %208, !dbg !1295

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1297
  %210 = trunc i8 %209 to i1, !dbg !1297
  br i1 %210, label %211, label %212, !dbg !1300

211:                                              ; preds = %208
  br label %1078, !dbg !1297

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1300
  %213 = load i32, i32* %15, align 4, !dbg !1301
  %214 = icmp eq i32 %213, 2, !dbg !1301
  br i1 %214, label %215, label %255, !dbg !1301

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1301
  %217 = trunc i8 %216 to i1, !dbg !1301
  br i1 %217, label %255, label %218, !dbg !1300

218:                                              ; preds = %215
  br label %219, !dbg !1303

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1305
  %221 = load i64, i64* %12, align 8, !dbg !1305
  %222 = icmp ult i64 %220, %221, !dbg !1305
  br i1 %222, label %223, label %227, !dbg !1308

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1305
  %225 = load i64, i64* %21, align 8, !dbg !1305
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1305
  store i8 39, i8* %226, align 1, !dbg !1305
  br label %227, !dbg !1305

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1308
  %229 = add i64 %228, 1, !dbg !1308
  store i64 %229, i64* %21, align 8, !dbg !1308
  br label %230, !dbg !1308

230:                                              ; preds = %227
  br label %231, !dbg !1303

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1309
  %233 = load i64, i64* %12, align 8, !dbg !1309
  %234 = icmp ult i64 %232, %233, !dbg !1309
  br i1 %234, label %235, label %239, !dbg !1312

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1309
  %237 = load i64, i64* %21, align 8, !dbg !1309
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1309
  store i8 36, i8* %238, align 1, !dbg !1309
  br label %239, !dbg !1309

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1312
  %241 = add i64 %240, 1, !dbg !1312
  store i64 %241, i64* %21, align 8, !dbg !1312
  br label %242, !dbg !1312

242:                                              ; preds = %239
  br label %243, !dbg !1303

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1313
  %245 = load i64, i64* %12, align 8, !dbg !1313
  %246 = icmp ult i64 %244, %245, !dbg !1313
  br i1 %246, label %247, label %251, !dbg !1316

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1313
  %249 = load i64, i64* %21, align 8, !dbg !1313
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1313
  store i8 39, i8* %250, align 1, !dbg !1313
  br label %251, !dbg !1313

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1316
  %253 = add i64 %252, 1, !dbg !1316
  store i64 %253, i64* %21, align 8, !dbg !1316
  br label %254, !dbg !1316

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1303
  br label %255, !dbg !1303

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1300

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1317
  %258 = load i64, i64* %12, align 8, !dbg !1317
  %259 = icmp ult i64 %257, %258, !dbg !1317
  br i1 %259, label %260, label %264, !dbg !1320

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1317
  %262 = load i64, i64* %21, align 8, !dbg !1317
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1317
  store i8 92, i8* %263, align 1, !dbg !1317
  br label %264, !dbg !1317

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1320
  %266 = add i64 %265, 1, !dbg !1320
  store i64 %266, i64* %21, align 8, !dbg !1320
  br label %267, !dbg !1320

267:                                              ; preds = %264
  br label %268, !dbg !1300

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1321
  %270 = icmp ne i32 %269, 2, !dbg !1323
  br i1 %270, label %271, label %317, !dbg !1324

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1325
  %273 = add i64 %272, 1, !dbg !1326
  %274 = load i64, i64* %14, align 8, !dbg !1327
  %275 = icmp ult i64 %273, %274, !dbg !1328
  br i1 %275, label %276, label %317, !dbg !1329

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1330
  %278 = load i64, i64* %31, align 8, !dbg !1331
  %279 = add i64 %278, 1, !dbg !1332
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1330
  %281 = load i8, i8* %280, align 1, !dbg !1330
  %282 = zext i8 %281 to i32, !dbg !1330
  %283 = icmp sle i32 48, %282, !dbg !1333
  br i1 %283, label %284, label %317, !dbg !1334

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1335
  %286 = load i64, i64* %31, align 8, !dbg !1336
  %287 = add i64 %286, 1, !dbg !1337
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1335
  %289 = load i8, i8* %288, align 1, !dbg !1335
  %290 = zext i8 %289 to i32, !dbg !1335
  %291 = icmp sle i32 %290, 57, !dbg !1338
  br i1 %291, label %292, label %317, !dbg !1339

292:                                              ; preds = %284
  br label %293, !dbg !1340

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1342
  %295 = load i64, i64* %12, align 8, !dbg !1342
  %296 = icmp ult i64 %294, %295, !dbg !1342
  br i1 %296, label %297, label %301, !dbg !1345

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1342
  %299 = load i64, i64* %21, align 8, !dbg !1342
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1342
  store i8 48, i8* %300, align 1, !dbg !1342
  br label %301, !dbg !1342

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1345
  %303 = add i64 %302, 1, !dbg !1345
  store i64 %303, i64* %21, align 8, !dbg !1345
  br label %304, !dbg !1345

304:                                              ; preds = %301
  br label %305, !dbg !1346

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1347
  %307 = load i64, i64* %12, align 8, !dbg !1347
  %308 = icmp ult i64 %306, %307, !dbg !1347
  br i1 %308, label %309, label %313, !dbg !1350

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1347
  %311 = load i64, i64* %21, align 8, !dbg !1347
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1347
  store i8 48, i8* %312, align 1, !dbg !1347
  br label %313, !dbg !1347

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1350
  %315 = add i64 %314, 1, !dbg !1350
  store i64 %315, i64* %21, align 8, !dbg !1350
  br label %316, !dbg !1350

316:                                              ; preds = %313
  br label %317, !dbg !1351

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1352
  br label %324, !dbg !1353

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1354
  %320 = and i32 %319, 1, !dbg !1356
  %321 = icmp ne i32 %320, 0, !dbg !1356
  br i1 %321, label %322, label %323, !dbg !1357

322:                                              ; preds = %318
  br label %993, !dbg !1358

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1359

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1360
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1361

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1362
  %329 = trunc i8 %328 to i1, !dbg !1362
  br i1 %329, label %330, label %331, !dbg !1365

330:                                              ; preds = %327
  br label %1078, !dbg !1366

331:                                              ; preds = %327
  br label %418, !dbg !1367

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1368
  %334 = and i32 %333, 4, !dbg !1370
  %335 = icmp ne i32 %334, 0, !dbg !1370
  br i1 %335, label %336, label %417, !dbg !1371

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1372
  %338 = add i64 %337, 2, !dbg !1373
  %339 = load i64, i64* %14, align 8, !dbg !1374
  %340 = icmp ult i64 %338, %339, !dbg !1375
  br i1 %340, label %341, label %417, !dbg !1376

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1377
  %343 = load i64, i64* %31, align 8, !dbg !1378
  %344 = add i64 %343, 1, !dbg !1379
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1377
  %346 = load i8, i8* %345, align 1, !dbg !1377
  %347 = zext i8 %346 to i32, !dbg !1377
  %348 = icmp eq i32 %347, 63, !dbg !1380
  br i1 %348, label %349, label %417, !dbg !1381

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1382
  %351 = load i64, i64* %31, align 8, !dbg !1383
  %352 = add i64 %351, 2, !dbg !1384
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1382
  %354 = load i8, i8* %353, align 1, !dbg !1382
  %355 = zext i8 %354 to i32, !dbg !1382
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
  ], !dbg !1385

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1386
  %358 = trunc i8 %357 to i1, !dbg !1386
  br i1 %358, label %359, label %360, !dbg !1389

359:                                              ; preds = %356
  br label %1078, !dbg !1390

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1391
  %362 = load i64, i64* %31, align 8, !dbg !1392
  %363 = add i64 %362, 2, !dbg !1393
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1391
  %365 = load i8, i8* %364, align 1, !dbg !1391
  store i8 %365, i8* %35, align 1, !dbg !1394
  %366 = load i64, i64* %31, align 8, !dbg !1395
  %367 = add i64 %366, 2, !dbg !1395
  store i64 %367, i64* %31, align 8, !dbg !1395
  br label %368, !dbg !1396

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1397
  %370 = load i64, i64* %12, align 8, !dbg !1397
  %371 = icmp ult i64 %369, %370, !dbg !1397
  br i1 %371, label %372, label %376, !dbg !1400

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1397
  %374 = load i64, i64* %21, align 8, !dbg !1397
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1397
  store i8 63, i8* %375, align 1, !dbg !1397
  br label %376, !dbg !1397

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1400
  %378 = add i64 %377, 1, !dbg !1400
  store i64 %378, i64* %21, align 8, !dbg !1400
  br label %379, !dbg !1400

379:                                              ; preds = %376
  br label %380, !dbg !1401

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1402
  %382 = load i64, i64* %12, align 8, !dbg !1402
  %383 = icmp ult i64 %381, %382, !dbg !1402
  br i1 %383, label %384, label %388, !dbg !1405

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1402
  %386 = load i64, i64* %21, align 8, !dbg !1402
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1402
  store i8 34, i8* %387, align 1, !dbg !1402
  br label %388, !dbg !1402

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1405
  %390 = add i64 %389, 1, !dbg !1405
  store i64 %390, i64* %21, align 8, !dbg !1405
  br label %391, !dbg !1405

391:                                              ; preds = %388
  br label %392, !dbg !1406

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1407
  %394 = load i64, i64* %12, align 8, !dbg !1407
  %395 = icmp ult i64 %393, %394, !dbg !1407
  br i1 %395, label %396, label %400, !dbg !1410

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1407
  %398 = load i64, i64* %21, align 8, !dbg !1407
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1407
  store i8 34, i8* %399, align 1, !dbg !1407
  br label %400, !dbg !1407

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1410
  %402 = add i64 %401, 1, !dbg !1410
  store i64 %402, i64* %21, align 8, !dbg !1410
  br label %403, !dbg !1410

403:                                              ; preds = %400
  br label %404, !dbg !1411

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1412
  %406 = load i64, i64* %12, align 8, !dbg !1412
  %407 = icmp ult i64 %405, %406, !dbg !1412
  br i1 %407, label %408, label %412, !dbg !1415

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1412
  %410 = load i64, i64* %21, align 8, !dbg !1412
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1412
  store i8 63, i8* %411, align 1, !dbg !1412
  br label %412, !dbg !1412

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1415
  %414 = add i64 %413, 1, !dbg !1415
  store i64 %414, i64* %21, align 8, !dbg !1415
  br label %415, !dbg !1415

415:                                              ; preds = %412
  br label %416, !dbg !1416

416:                                              ; preds = %349, %415
  br label %417, !dbg !1417

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1418

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1419

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1420
  br label %454, !dbg !1422

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1423
  br label %454, !dbg !1424

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1425
  br label %454, !dbg !1426

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1427
  br label %446, !dbg !1428

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1429
  br label %446, !dbg !1430

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1431
  br label %446, !dbg !1432

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1433
  br label %454, !dbg !1434

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1435
  store i8 %427, i8* %36, align 1, !dbg !1436
  %428 = load i32, i32* %15, align 4, !dbg !1437
  %429 = icmp eq i32 %428, 2, !dbg !1439
  br i1 %429, label %430, label %435, !dbg !1440

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1441
  %432 = trunc i8 %431 to i1, !dbg !1441
  br i1 %432, label %433, label %434, !dbg !1444

433:                                              ; preds = %430
  br label %1078, !dbg !1445

434:                                              ; preds = %430
  br label %942, !dbg !1446

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1447
  %437 = trunc i8 %436 to i1, !dbg !1447
  br i1 %437, label %438, label %445, !dbg !1449

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1450
  %440 = trunc i8 %439 to i1, !dbg !1450
  br i1 %440, label %441, label %445, !dbg !1451

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1452
  %443 = icmp ne i64 %442, 0, !dbg !1452
  br i1 %443, label %444, label %445, !dbg !1453

444:                                              ; preds = %441
  br label %942, !dbg !1454

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1452

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1455), !dbg !1456
  %447 = load i32, i32* %15, align 4, !dbg !1457
  %448 = icmp eq i32 %447, 2, !dbg !1459
  br i1 %448, label %449, label %453, !dbg !1460

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1461
  %451 = trunc i8 %450 to i1, !dbg !1461
  br i1 %451, label %452, label %453, !dbg !1462

452:                                              ; preds = %449
  br label %1078, !dbg !1463

453:                                              ; preds = %449, %446
  br label %454, !dbg !1461

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1464), !dbg !1465
  %455 = load i8, i8* %25, align 1, !dbg !1466
  %456 = trunc i8 %455 to i1, !dbg !1466
  br i1 %456, label %457, label %459, !dbg !1468

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1469
  store i8 %458, i8* %35, align 1, !dbg !1471
  br label %880, !dbg !1472

459:                                              ; preds = %454
  br label %849, !dbg !1473

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1474
  %462 = icmp eq i64 %461, -1, !dbg !1476
  br i1 %462, label %463, label %469, !dbg !1477

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1478
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1478
  %466 = load i8, i8* %465, align 1, !dbg !1478
  %467 = zext i8 %466 to i32, !dbg !1478
  %468 = icmp eq i32 %467, 0, !dbg !1479
  br i1 %468, label %473, label %472, !dbg !1474

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1480
  %471 = icmp eq i64 %470, 1, !dbg !1481
  br i1 %471, label %473, label %472, !dbg !1477

472:                                              ; preds = %469, %463
  br label %849, !dbg !1482

473:                                              ; preds = %469, %463
  br label %474, !dbg !1483

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1484
  %476 = icmp ne i64 %475, 0, !dbg !1486
  br i1 %476, label %477, label %478, !dbg !1487

477:                                              ; preds = %474
  br label %849, !dbg !1488

478:                                              ; preds = %474
  br label %479, !dbg !1489

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1490
  br label %480, !dbg !1491

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1492
  %482 = icmp eq i32 %481, 2, !dbg !1494
  br i1 %482, label %483, label %487, !dbg !1495

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1496
  %485 = trunc i8 %484 to i1, !dbg !1496
  br i1 %485, label %486, label %487, !dbg !1497

486:                                              ; preds = %483
  br label %1078, !dbg !1498

487:                                              ; preds = %483, %480
  br label %849, !dbg !1499

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1500
  store i8 1, i8* %34, align 1, !dbg !1501
  %489 = load i32, i32* %15, align 4, !dbg !1502
  %490 = icmp eq i32 %489, 2, !dbg !1504
  br i1 %490, label %491, label %540, !dbg !1505

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1506
  %493 = trunc i8 %492 to i1, !dbg !1506
  br i1 %493, label %494, label %495, !dbg !1509

494:                                              ; preds = %491
  br label %1078, !dbg !1510

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1511
  %497 = icmp ne i64 %496, 0, !dbg !1511
  br i1 %497, label %498, label %503, !dbg !1513

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1514
  %500 = icmp ne i64 %499, 0, !dbg !1514
  br i1 %500, label %503, label %501, !dbg !1515

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1516
  store i64 %502, i64* %22, align 8, !dbg !1518
  store i64 0, i64* %12, align 8, !dbg !1519
  br label %503, !dbg !1520

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1521

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1522
  %506 = load i64, i64* %12, align 8, !dbg !1522
  %507 = icmp ult i64 %505, %506, !dbg !1522
  br i1 %507, label %508, label %512, !dbg !1525

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1522
  %510 = load i64, i64* %21, align 8, !dbg !1522
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1522
  store i8 39, i8* %511, align 1, !dbg !1522
  br label %512, !dbg !1522

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1525
  %514 = add i64 %513, 1, !dbg !1525
  store i64 %514, i64* %21, align 8, !dbg !1525
  br label %515, !dbg !1525

515:                                              ; preds = %512
  br label %516, !dbg !1526

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1527
  %518 = load i64, i64* %12, align 8, !dbg !1527
  %519 = icmp ult i64 %517, %518, !dbg !1527
  br i1 %519, label %520, label %524, !dbg !1530

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1527
  %522 = load i64, i64* %21, align 8, !dbg !1527
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1527
  store i8 92, i8* %523, align 1, !dbg !1527
  br label %524, !dbg !1527

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1530
  %526 = add i64 %525, 1, !dbg !1530
  store i64 %526, i64* %21, align 8, !dbg !1530
  br label %527, !dbg !1530

527:                                              ; preds = %524
  br label %528, !dbg !1531

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1532
  %530 = load i64, i64* %12, align 8, !dbg !1532
  %531 = icmp ult i64 %529, %530, !dbg !1532
  br i1 %531, label %532, label %536, !dbg !1535

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1532
  %534 = load i64, i64* %21, align 8, !dbg !1532
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1532
  store i8 39, i8* %535, align 1, !dbg !1532
  br label %536, !dbg !1532

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1535
  %538 = add i64 %537, 1, !dbg !1535
  store i64 %538, i64* %21, align 8, !dbg !1535
  br label %539, !dbg !1535

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1536
  br label %540, !dbg !1537

540:                                              ; preds = %539, %488
  br label %849, !dbg !1538

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1539
  br label %849, !dbg !1540

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1541, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1544, metadata !DIExpression()), !dbg !1545
  %543 = load i8, i8* %20, align 1, !dbg !1546
  %544 = trunc i8 %543 to i1, !dbg !1546
  br i1 %544, label %545, label %557, !dbg !1548

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1549
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1551
  %547 = load i16*, i16** %546, align 8, !dbg !1551
  %548 = load i8, i8* %35, align 1, !dbg !1551
  %549 = zext i8 %548 to i32, !dbg !1551
  %550 = sext i32 %549 to i64, !dbg !1551
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1551
  %552 = load i16, i16* %551, align 2, !dbg !1551
  %553 = zext i16 %552 to i32, !dbg !1551
  %554 = and i32 %553, 16384, !dbg !1551
  %555 = icmp ne i32 %554, 0, !dbg !1552
  %556 = zext i1 %555 to i8, !dbg !1553
  store i8 %556, i8* %38, align 1, !dbg !1553
  br label %648, !dbg !1554

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1555, metadata !DIExpression()), !dbg !1567
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1568
  store i64 0, i64* %37, align 8, !dbg !1569
  store i8 1, i8* %38, align 1, !dbg !1570
  %558 = load i64, i64* %14, align 8, !dbg !1571
  %559 = icmp eq i64 %558, -1, !dbg !1573
  br i1 %559, label %560, label %563, !dbg !1574

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1575
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !1576
  store i64 %562, i64* %14, align 8, !dbg !1577
  br label %563, !dbg !1578

563:                                              ; preds = %560, %557
  br label %564, !dbg !1579

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1580, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1585, metadata !DIExpression()), !dbg !1586
  %565 = load i8*, i8** %13, align 8, !dbg !1587
  %566 = load i64, i64* %31, align 8, !dbg !1588
  %567 = load i64, i64* %37, align 8, !dbg !1589
  %568 = add i64 %566, %567, !dbg !1590
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !1587
  %570 = load i64, i64* %14, align 8, !dbg !1591
  %571 = load i64, i64* %31, align 8, !dbg !1592
  %572 = load i64, i64* %37, align 8, !dbg !1593
  %573 = add i64 %571, %572, !dbg !1594
  %574 = sub i64 %570, %573, !dbg !1595
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !1596
  store i64 %575, i64* %41, align 8, !dbg !1586
  %576 = load i64, i64* %41, align 8, !dbg !1597
  %577 = icmp eq i64 %576, 0, !dbg !1599
  br i1 %577, label %578, label %579, !dbg !1600

578:                                              ; preds = %564
  br label %647, !dbg !1601

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !1602
  %581 = icmp eq i64 %580, -1, !dbg !1604
  br i1 %581, label %582, label %583, !dbg !1605

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !1606
  br label %647, !dbg !1608

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !1609
  %585 = icmp eq i64 %584, -2, !dbg !1611
  br i1 %585, label %586, label %608, !dbg !1612

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !1613
  br label %587, !dbg !1615

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !1616
  %589 = load i64, i64* %37, align 8, !dbg !1617
  %590 = add i64 %588, %589, !dbg !1618
  %591 = load i64, i64* %14, align 8, !dbg !1619
  %592 = icmp ult i64 %590, %591, !dbg !1620
  br i1 %592, label %593, label %602, !dbg !1621

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !1622
  %595 = load i64, i64* %31, align 8, !dbg !1623
  %596 = load i64, i64* %37, align 8, !dbg !1624
  %597 = add i64 %595, %596, !dbg !1625
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !1622
  %599 = load i8, i8* %598, align 1, !dbg !1622
  %600 = zext i8 %599 to i32, !dbg !1622
  %601 = icmp ne i32 %600, 0, !dbg !1621
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !1626
  br i1 %603, label %604, label %607, !dbg !1615

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !1627
  %606 = add i64 %605, 1, !dbg !1627
  store i64 %606, i64* %37, align 8, !dbg !1627
  br label %587, !dbg !1615, !llvm.loop !1628

607:                                              ; preds = %602
  br label %647, !dbg !1629

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !1630
  %610 = trunc i8 %609 to i1, !dbg !1630
  br i1 %610, label %611, label %635, !dbg !1633

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !1634
  %613 = icmp eq i32 %612, 2, !dbg !1635
  br i1 %613, label %614, label %635, !dbg !1636

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !1637, metadata !DIExpression()), !dbg !1640
  store i64 1, i64* %42, align 8, !dbg !1640
  br label %615, !dbg !1641

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !1642
  %617 = load i64, i64* %41, align 8, !dbg !1644
  %618 = icmp ult i64 %616, %617, !dbg !1645
  br i1 %618, label %619, label %634, !dbg !1646

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !1647
  %621 = load i64, i64* %31, align 8, !dbg !1648
  %622 = load i64, i64* %37, align 8, !dbg !1649
  %623 = add i64 %621, %622, !dbg !1650
  %624 = load i64, i64* %42, align 8, !dbg !1651
  %625 = add i64 %623, %624, !dbg !1652
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !1647
  %627 = load i8, i8* %626, align 1, !dbg !1647
  %628 = zext i8 %627 to i32, !dbg !1647
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !1653

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !1654

630:                                              ; preds = %619
  br label %631, !dbg !1656

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !1657
  %633 = add i64 %632, 1, !dbg !1657
  store i64 %633, i64* %42, align 8, !dbg !1657
  br label %615, !dbg !1658, !llvm.loop !1659

634:                                              ; preds = %615
  br label %635, !dbg !1661

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !1662
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !1664
  %638 = icmp ne i32 %637, 0, !dbg !1664
  br i1 %638, label %640, label %639, !dbg !1665

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !1666
  br label %640, !dbg !1667

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !1668
  %642 = load i64, i64* %37, align 8, !dbg !1669
  %643 = add i64 %642, %641, !dbg !1669
  store i64 %643, i64* %37, align 8, !dbg !1669
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !1670

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !1671
  %650 = trunc i8 %649 to i1, !dbg !1671
  %651 = zext i1 %650 to i8, !dbg !1672
  store i8 %651, i8* %34, align 1, !dbg !1672
  %652 = load i64, i64* %37, align 8, !dbg !1673
  %653 = icmp ult i64 1, %652, !dbg !1675
  br i1 %653, label %660, label %654, !dbg !1676

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !1677
  %656 = trunc i8 %655 to i1, !dbg !1677
  br i1 %656, label %657, label %848, !dbg !1678

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !1679
  %659 = trunc i8 %658 to i1, !dbg !1679
  br i1 %659, label %848, label %660, !dbg !1680

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !1681, metadata !DIExpression()), !dbg !1683
  %661 = load i64, i64* %31, align 8, !dbg !1684
  %662 = load i64, i64* %37, align 8, !dbg !1685
  %663 = add i64 %661, %662, !dbg !1686
  store i64 %663, i64* %43, align 8, !dbg !1683
  br label %664, !dbg !1687

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !1688
  %666 = trunc i8 %665 to i1, !dbg !1688
  br i1 %666, label %667, label %772, !dbg !1693

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !1694
  %669 = trunc i8 %668 to i1, !dbg !1694
  br i1 %669, label %772, label %670, !dbg !1695

670:                                              ; preds = %667
  br label %671, !dbg !1696

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !1698
  %673 = trunc i8 %672 to i1, !dbg !1698
  br i1 %673, label %674, label %675, !dbg !1701

674:                                              ; preds = %671
  br label %1078, !dbg !1698

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !1701
  %676 = load i32, i32* %15, align 4, !dbg !1702
  %677 = icmp eq i32 %676, 2, !dbg !1702
  br i1 %677, label %678, label %718, !dbg !1702

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !1702
  %680 = trunc i8 %679 to i1, !dbg !1702
  br i1 %680, label %718, label %681, !dbg !1701

681:                                              ; preds = %678
  br label %682, !dbg !1704

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !1706
  %684 = load i64, i64* %12, align 8, !dbg !1706
  %685 = icmp ult i64 %683, %684, !dbg !1706
  br i1 %685, label %686, label %690, !dbg !1709

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !1706
  %688 = load i64, i64* %21, align 8, !dbg !1706
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !1706
  store i8 39, i8* %689, align 1, !dbg !1706
  br label %690, !dbg !1706

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !1709
  %692 = add i64 %691, 1, !dbg !1709
  store i64 %692, i64* %21, align 8, !dbg !1709
  br label %693, !dbg !1709

693:                                              ; preds = %690
  br label %694, !dbg !1704

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !1710
  %696 = load i64, i64* %12, align 8, !dbg !1710
  %697 = icmp ult i64 %695, %696, !dbg !1710
  br i1 %697, label %698, label %702, !dbg !1713

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !1710
  %700 = load i64, i64* %21, align 8, !dbg !1710
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !1710
  store i8 36, i8* %701, align 1, !dbg !1710
  br label %702, !dbg !1710

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !1713
  %704 = add i64 %703, 1, !dbg !1713
  store i64 %704, i64* %21, align 8, !dbg !1713
  br label %705, !dbg !1713

705:                                              ; preds = %702
  br label %706, !dbg !1704

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !1714
  %708 = load i64, i64* %12, align 8, !dbg !1714
  %709 = icmp ult i64 %707, %708, !dbg !1714
  br i1 %709, label %710, label %714, !dbg !1717

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !1714
  %712 = load i64, i64* %21, align 8, !dbg !1714
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !1714
  store i8 39, i8* %713, align 1, !dbg !1714
  br label %714, !dbg !1714

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !1717
  %716 = add i64 %715, 1, !dbg !1717
  store i64 %716, i64* %21, align 8, !dbg !1717
  br label %717, !dbg !1717

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !1704
  br label %718, !dbg !1704

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !1701

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !1718
  %721 = load i64, i64* %12, align 8, !dbg !1718
  %722 = icmp ult i64 %720, %721, !dbg !1718
  br i1 %722, label %723, label %727, !dbg !1721

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !1718
  %725 = load i64, i64* %21, align 8, !dbg !1718
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !1718
  store i8 92, i8* %726, align 1, !dbg !1718
  br label %727, !dbg !1718

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !1721
  %729 = add i64 %728, 1, !dbg !1721
  store i64 %729, i64* %21, align 8, !dbg !1721
  br label %730, !dbg !1721

730:                                              ; preds = %727
  br label %731, !dbg !1701

731:                                              ; preds = %730
  br label %732, !dbg !1722

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !1723
  %734 = load i64, i64* %12, align 8, !dbg !1723
  %735 = icmp ult i64 %733, %734, !dbg !1723
  br i1 %735, label %736, label %745, !dbg !1726

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !1723
  %738 = zext i8 %737 to i32, !dbg !1723
  %739 = ashr i32 %738, 6, !dbg !1723
  %740 = add nsw i32 48, %739, !dbg !1723
  %741 = trunc i32 %740 to i8, !dbg !1723
  %742 = load i8*, i8** %11, align 8, !dbg !1723
  %743 = load i64, i64* %21, align 8, !dbg !1723
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !1723
  store i8 %741, i8* %744, align 1, !dbg !1723
  br label %745, !dbg !1723

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !1726
  %747 = add i64 %746, 1, !dbg !1726
  store i64 %747, i64* %21, align 8, !dbg !1726
  br label %748, !dbg !1726

748:                                              ; preds = %745
  br label %749, !dbg !1727

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !1728
  %751 = load i64, i64* %12, align 8, !dbg !1728
  %752 = icmp ult i64 %750, %751, !dbg !1728
  br i1 %752, label %753, label %763, !dbg !1731

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !1728
  %755 = zext i8 %754 to i32, !dbg !1728
  %756 = ashr i32 %755, 3, !dbg !1728
  %757 = and i32 %756, 7, !dbg !1728
  %758 = add nsw i32 48, %757, !dbg !1728
  %759 = trunc i32 %758 to i8, !dbg !1728
  %760 = load i8*, i8** %11, align 8, !dbg !1728
  %761 = load i64, i64* %21, align 8, !dbg !1728
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !1728
  store i8 %759, i8* %762, align 1, !dbg !1728
  br label %763, !dbg !1728

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !1731
  %765 = add i64 %764, 1, !dbg !1731
  store i64 %765, i64* %21, align 8, !dbg !1731
  br label %766, !dbg !1731

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !1732
  %768 = zext i8 %767 to i32, !dbg !1732
  %769 = and i32 %768, 7, !dbg !1733
  %770 = add nsw i32 48, %769, !dbg !1734
  %771 = trunc i32 %770 to i8, !dbg !1735
  store i8 %771, i8* %35, align 1, !dbg !1736
  br label %789, !dbg !1737

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !1738
  %774 = trunc i8 %773 to i1, !dbg !1738
  br i1 %774, label %775, label %788, !dbg !1740

775:                                              ; preds = %772
  br label %776, !dbg !1741

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !1743
  %778 = load i64, i64* %12, align 8, !dbg !1743
  %779 = icmp ult i64 %777, %778, !dbg !1743
  br i1 %779, label %780, label %784, !dbg !1746

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !1743
  %782 = load i64, i64* %21, align 8, !dbg !1743
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !1743
  store i8 92, i8* %783, align 1, !dbg !1743
  br label %784, !dbg !1743

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !1746
  %786 = add i64 %785, 1, !dbg !1746
  store i64 %786, i64* %21, align 8, !dbg !1746
  br label %787, !dbg !1746

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !1747
  br label %788, !dbg !1748

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !1749
  %791 = load i64, i64* %31, align 8, !dbg !1751
  %792 = add i64 %791, 1, !dbg !1752
  %793 = icmp ule i64 %790, %792, !dbg !1753
  br i1 %793, label %794, label %795, !dbg !1754

794:                                              ; preds = %789
  br label %847, !dbg !1755

795:                                              ; preds = %789
  br label %796, !dbg !1756

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !1757
  %798 = trunc i8 %797 to i1, !dbg !1757
  br i1 %798, label %799, label %827, !dbg !1757

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !1757
  %801 = trunc i8 %800 to i1, !dbg !1757
  br i1 %801, label %827, label %802, !dbg !1760

802:                                              ; preds = %799
  br label %803, !dbg !1761

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !1763
  %805 = load i64, i64* %12, align 8, !dbg !1763
  %806 = icmp ult i64 %804, %805, !dbg !1763
  br i1 %806, label %807, label %811, !dbg !1766

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !1763
  %809 = load i64, i64* %21, align 8, !dbg !1763
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !1763
  store i8 39, i8* %810, align 1, !dbg !1763
  br label %811, !dbg !1763

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !1766
  %813 = add i64 %812, 1, !dbg !1766
  store i64 %813, i64* %21, align 8, !dbg !1766
  br label %814, !dbg !1766

814:                                              ; preds = %811
  br label %815, !dbg !1761

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !1767
  %817 = load i64, i64* %12, align 8, !dbg !1767
  %818 = icmp ult i64 %816, %817, !dbg !1767
  br i1 %818, label %819, label %823, !dbg !1770

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !1767
  %821 = load i64, i64* %21, align 8, !dbg !1767
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !1767
  store i8 39, i8* %822, align 1, !dbg !1767
  br label %823, !dbg !1767

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !1770
  %825 = add i64 %824, 1, !dbg !1770
  store i64 %825, i64* %21, align 8, !dbg !1770
  br label %826, !dbg !1770

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !1761
  br label %827, !dbg !1761

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !1760

828:                                              ; preds = %827
  br label %829, !dbg !1771

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !1772
  %831 = load i64, i64* %12, align 8, !dbg !1772
  %832 = icmp ult i64 %830, %831, !dbg !1772
  br i1 %832, label %833, label %838, !dbg !1775

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !1772
  %835 = load i8*, i8** %11, align 8, !dbg !1772
  %836 = load i64, i64* %21, align 8, !dbg !1772
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !1772
  store i8 %834, i8* %837, align 1, !dbg !1772
  br label %838, !dbg !1772

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !1775
  %840 = add i64 %839, 1, !dbg !1775
  store i64 %840, i64* %21, align 8, !dbg !1775
  br label %841, !dbg !1775

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !1776
  %843 = load i64, i64* %31, align 8, !dbg !1777
  %844 = add i64 %843, 1, !dbg !1777
  store i64 %844, i64* %31, align 8, !dbg !1777
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !1776
  %846 = load i8, i8* %845, align 1, !dbg !1776
  store i8 %846, i8* %35, align 1, !dbg !1778
  br label %664, !dbg !1779, !llvm.loop !1780

847:                                              ; preds = %794
  br label %942, !dbg !1783

848:                                              ; preds = %657, %654
  br label %849, !dbg !1784

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !1785
  %851 = trunc i8 %850 to i1, !dbg !1785
  br i1 %851, label %852, label %855, !dbg !1787

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !1788
  %854 = icmp ne i32 %853, 2, !dbg !1789
  br i1 %854, label %858, label %855, !dbg !1790

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !1791
  %857 = trunc i8 %856 to i1, !dbg !1791
  br i1 %857, label %858, label %875, !dbg !1792

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !1793
  %860 = icmp ne i32* %859, null, !dbg !1793
  br i1 %860, label %861, label %875, !dbg !1794

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !1795
  %863 = load i8, i8* %35, align 1, !dbg !1796
  %864 = zext i8 %863 to i64, !dbg !1796
  %865 = udiv i64 %864, 32, !dbg !1797
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !1795
  %867 = load i32, i32* %866, align 4, !dbg !1795
  %868 = load i8, i8* %35, align 1, !dbg !1798
  %869 = zext i8 %868 to i64, !dbg !1798
  %870 = urem i64 %869, 32, !dbg !1799
  %871 = trunc i64 %870 to i32, !dbg !1800
  %872 = lshr i32 %867, %871, !dbg !1800
  %873 = and i32 %872, 1, !dbg !1801
  %874 = icmp ne i32 %873, 0, !dbg !1801
  br i1 %874, label %879, label %875, !dbg !1802

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !1803
  %877 = trunc i8 %876 to i1, !dbg !1803
  br i1 %877, label %879, label %878, !dbg !1804

878:                                              ; preds = %875
  br label %942, !dbg !1805

879:                                              ; preds = %875, %861
  br label %880, !dbg !1803

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !1806), !dbg !1807
  br label %881, !dbg !1808

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !1809
  %883 = trunc i8 %882 to i1, !dbg !1809
  br i1 %883, label %884, label %885, !dbg !1812

884:                                              ; preds = %881
  br label %1078, !dbg !1809

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !1812
  %886 = load i32, i32* %15, align 4, !dbg !1813
  %887 = icmp eq i32 %886, 2, !dbg !1813
  br i1 %887, label %888, label %928, !dbg !1813

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !1813
  %890 = trunc i8 %889 to i1, !dbg !1813
  br i1 %890, label %928, label %891, !dbg !1812

891:                                              ; preds = %888
  br label %892, !dbg !1815

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !1817
  %894 = load i64, i64* %12, align 8, !dbg !1817
  %895 = icmp ult i64 %893, %894, !dbg !1817
  br i1 %895, label %896, label %900, !dbg !1820

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !1817
  %898 = load i64, i64* %21, align 8, !dbg !1817
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !1817
  store i8 39, i8* %899, align 1, !dbg !1817
  br label %900, !dbg !1817

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !1820
  %902 = add i64 %901, 1, !dbg !1820
  store i64 %902, i64* %21, align 8, !dbg !1820
  br label %903, !dbg !1820

903:                                              ; preds = %900
  br label %904, !dbg !1815

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !1821
  %906 = load i64, i64* %12, align 8, !dbg !1821
  %907 = icmp ult i64 %905, %906, !dbg !1821
  br i1 %907, label %908, label %912, !dbg !1824

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !1821
  %910 = load i64, i64* %21, align 8, !dbg !1821
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !1821
  store i8 36, i8* %911, align 1, !dbg !1821
  br label %912, !dbg !1821

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !1824
  %914 = add i64 %913, 1, !dbg !1824
  store i64 %914, i64* %21, align 8, !dbg !1824
  br label %915, !dbg !1824

915:                                              ; preds = %912
  br label %916, !dbg !1815

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !1825
  %918 = load i64, i64* %12, align 8, !dbg !1825
  %919 = icmp ult i64 %917, %918, !dbg !1825
  br i1 %919, label %920, label %924, !dbg !1828

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !1825
  %922 = load i64, i64* %21, align 8, !dbg !1825
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !1825
  store i8 39, i8* %923, align 1, !dbg !1825
  br label %924, !dbg !1825

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !1828
  %926 = add i64 %925, 1, !dbg !1828
  store i64 %926, i64* %21, align 8, !dbg !1828
  br label %927, !dbg !1828

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !1815
  br label %928, !dbg !1815

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !1812

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !1829
  %931 = load i64, i64* %12, align 8, !dbg !1829
  %932 = icmp ult i64 %930, %931, !dbg !1829
  br i1 %932, label %933, label %937, !dbg !1832

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !1829
  %935 = load i64, i64* %21, align 8, !dbg !1829
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !1829
  store i8 92, i8* %936, align 1, !dbg !1829
  br label %937, !dbg !1829

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !1832
  %939 = add i64 %938, 1, !dbg !1832
  store i64 %939, i64* %21, align 8, !dbg !1832
  br label %940, !dbg !1832

940:                                              ; preds = %937
  br label %941, !dbg !1812

941:                                              ; preds = %940
  br label %942, !dbg !1812

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !1833), !dbg !1834
  br label %943, !dbg !1835

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !1836
  %945 = trunc i8 %944 to i1, !dbg !1836
  br i1 %945, label %946, label %974, !dbg !1836

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !1836
  %948 = trunc i8 %947 to i1, !dbg !1836
  br i1 %948, label %974, label %949, !dbg !1839

949:                                              ; preds = %946
  br label %950, !dbg !1840

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !1842
  %952 = load i64, i64* %12, align 8, !dbg !1842
  %953 = icmp ult i64 %951, %952, !dbg !1842
  br i1 %953, label %954, label %958, !dbg !1845

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !1842
  %956 = load i64, i64* %21, align 8, !dbg !1842
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !1842
  store i8 39, i8* %957, align 1, !dbg !1842
  br label %958, !dbg !1842

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !1845
  %960 = add i64 %959, 1, !dbg !1845
  store i64 %960, i64* %21, align 8, !dbg !1845
  br label %961, !dbg !1845

961:                                              ; preds = %958
  br label %962, !dbg !1840

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !1846
  %964 = load i64, i64* %12, align 8, !dbg !1846
  %965 = icmp ult i64 %963, %964, !dbg !1846
  br i1 %965, label %966, label %970, !dbg !1849

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !1846
  %968 = load i64, i64* %21, align 8, !dbg !1846
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !1846
  store i8 39, i8* %969, align 1, !dbg !1846
  br label %970, !dbg !1846

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !1849
  %972 = add i64 %971, 1, !dbg !1849
  store i64 %972, i64* %21, align 8, !dbg !1849
  br label %973, !dbg !1849

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !1840
  br label %974, !dbg !1840

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !1839

975:                                              ; preds = %974
  br label %976, !dbg !1850

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !1851
  %978 = load i64, i64* %12, align 8, !dbg !1851
  %979 = icmp ult i64 %977, %978, !dbg !1851
  br i1 %979, label %980, label %985, !dbg !1854

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !1851
  %982 = load i8*, i8** %11, align 8, !dbg !1851
  %983 = load i64, i64* %21, align 8, !dbg !1851
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !1851
  store i8 %981, i8* %984, align 1, !dbg !1851
  br label %985, !dbg !1851

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !1854
  %987 = add i64 %986, 1, !dbg !1854
  store i64 %987, i64* %21, align 8, !dbg !1854
  br label %988, !dbg !1854

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !1855
  %990 = trunc i8 %989 to i1, !dbg !1855
  br i1 %990, label %992, label %991, !dbg !1857

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !1858
  br label %992, !dbg !1859

992:                                              ; preds = %991, %988
  br label %993, !dbg !1860

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !1861
  %995 = add i64 %994, 1, !dbg !1861
  store i64 %995, i64* %31, align 8, !dbg !1861
  br label %139, !dbg !1862, !llvm.loop !1863

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !1865
  %998 = icmp eq i64 %997, 0, !dbg !1867
  br i1 %998, label %999, label %1006, !dbg !1868

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !1869
  %1001 = icmp eq i32 %1000, 2, !dbg !1870
  br i1 %1001, label %1002, label %1006, !dbg !1871

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !1872
  %1004 = trunc i8 %1003 to i1, !dbg !1872
  br i1 %1004, label %1005, label %1006, !dbg !1873

1005:                                             ; preds = %1002
  br label %1078, !dbg !1874

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !1875
  %1008 = icmp eq i32 %1007, 2, !dbg !1877
  br i1 %1008, label %1009, label %1038, !dbg !1878

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !1879
  %1011 = trunc i8 %1010 to i1, !dbg !1879
  br i1 %1011, label %1038, label %1012, !dbg !1880

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !1881
  %1014 = trunc i8 %1013 to i1, !dbg !1881
  br i1 %1014, label %1015, label %1038, !dbg !1882

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !1883
  %1017 = trunc i8 %1016 to i1, !dbg !1883
  br i1 %1017, label %1018, label %1028, !dbg !1886

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !1887
  %1020 = load i64, i64* %22, align 8, !dbg !1888
  %1021 = load i8*, i8** %13, align 8, !dbg !1889
  %1022 = load i64, i64* %14, align 8, !dbg !1890
  %1023 = load i32, i32* %16, align 4, !dbg !1891
  %1024 = load i32*, i32** %17, align 8, !dbg !1892
  %1025 = load i8*, i8** %18, align 8, !dbg !1893
  %1026 = load i8*, i8** %19, align 8, !dbg !1894
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !1895
  store i64 %1027, i64* %10, align 8, !dbg !1896
  br label %1096, !dbg !1896

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !1897
  %1030 = icmp ne i64 %1029, 0, !dbg !1897
  br i1 %1030, label %1036, label %1031, !dbg !1899

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !1900
  %1033 = icmp ne i64 %1032, 0, !dbg !1900
  br i1 %1033, label %1034, label %1036, !dbg !1901

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !1902
  store i64 %1035, i64* %12, align 8, !dbg !1904
  store i64 0, i64* %21, align 8, !dbg !1905
  br label %51, !dbg !1906

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !1907

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !1908
  %1040 = icmp ne i8* %1039, null, !dbg !1908
  br i1 %1040, label %1041, label %1068, !dbg !1910

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !1911
  %1043 = trunc i8 %1042 to i1, !dbg !1911
  br i1 %1043, label %1068, label %1044, !dbg !1912

1044:                                             ; preds = %1041
  br label %1045, !dbg !1913

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !1914
  %1047 = load i8, i8* %1046, align 1, !dbg !1917
  %1048 = icmp ne i8 %1047, 0, !dbg !1918
  br i1 %1048, label %1049, label %1067, !dbg !1918

1049:                                             ; preds = %1045
  br label %1050, !dbg !1919

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !1920
  %1052 = load i64, i64* %12, align 8, !dbg !1920
  %1053 = icmp ult i64 %1051, %1052, !dbg !1920
  br i1 %1053, label %1054, label %1060, !dbg !1923

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !1920
  %1056 = load i8, i8* %1055, align 1, !dbg !1920
  %1057 = load i8*, i8** %11, align 8, !dbg !1920
  %1058 = load i64, i64* %21, align 8, !dbg !1920
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !1920
  store i8 %1056, i8* %1059, align 1, !dbg !1920
  br label %1060, !dbg !1920

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !1923
  %1062 = add i64 %1061, 1, !dbg !1923
  store i64 %1062, i64* %21, align 8, !dbg !1923
  br label %1063, !dbg !1923

1063:                                             ; preds = %1060
  br label %1064, !dbg !1923

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !1924
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !1924
  store i8* %1066, i8** %23, align 8, !dbg !1924
  br label %1045, !dbg !1925, !llvm.loop !1926

1067:                                             ; preds = %1045
  br label %1068, !dbg !1927

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !1928
  %1070 = load i64, i64* %12, align 8, !dbg !1930
  %1071 = icmp ult i64 %1069, %1070, !dbg !1931
  br i1 %1071, label %1072, label %1076, !dbg !1932

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !1933
  %1074 = load i64, i64* %21, align 8, !dbg !1934
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !1933
  store i8 0, i8* %1075, align 1, !dbg !1935
  br label %1076, !dbg !1933

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !1936
  store i64 %1077, i64* %10, align 8, !dbg !1937
  br label %1096, !dbg !1937

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !1938), !dbg !1939
  %1079 = load i32, i32* %15, align 4, !dbg !1940
  %1080 = icmp eq i32 %1079, 2, !dbg !1942
  br i1 %1080, label %1081, label %1085, !dbg !1943

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !1944
  %1083 = trunc i8 %1082 to i1, !dbg !1944
  br i1 %1083, label %1084, label %1085, !dbg !1945

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !1946
  br label %1085, !dbg !1947

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !1948
  %1087 = load i64, i64* %12, align 8, !dbg !1949
  %1088 = load i8*, i8** %13, align 8, !dbg !1950
  %1089 = load i64, i64* %14, align 8, !dbg !1951
  %1090 = load i32, i32* %15, align 4, !dbg !1952
  %1091 = load i32, i32* %16, align 4, !dbg !1953
  %1092 = and i32 %1091, -3, !dbg !1954
  %1093 = load i8*, i8** %18, align 8, !dbg !1955
  %1094 = load i8*, i8** %19, align 8, !dbg !1956
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !1957
  store i64 %1095, i64* %10, align 8, !dbg !1958
  br label %1096, !dbg !1958

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !1959
  ret i64 %1097, !dbg !1959
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !155 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1960, metadata !DIExpression()), !dbg !1961
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1962, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1964, metadata !DIExpression()), !dbg !1965
  %9 = load i8*, i8** %4, align 8, !dbg !1966
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.88, i64 0, i64 0), i8* noundef %9) #18, !dbg !1966
  store i8* %10, i8** %6, align 8, !dbg !1965
  %11 = load i8*, i8** %6, align 8, !dbg !1967
  %12 = load i8*, i8** %4, align 8, !dbg !1969
  %13 = icmp ne i8* %11, %12, !dbg !1970
  br i1 %13, label %14, label %16, !dbg !1971

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1972
  store i8* %15, i8** %3, align 8, !dbg !1973
  br label %37, !dbg !1973

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1974, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1976, metadata !DIExpression()), !dbg !1977
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1978
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !1979
  %18 = icmp eq i64 %17, 3, !dbg !1981
  br i1 %18, label %19, label %32, !dbg !1982

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1983
  %21 = icmp eq i32 %20, 8216, !dbg !1984
  br i1 %21, label %22, label %32, !dbg !1985

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !1986
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !1986
  %25 = load i8, i8* %24, align 1, !dbg !1986
  %26 = zext i8 %25 to i32, !dbg !1986
  %27 = icmp eq i32 %26, 39, !dbg !1987
  %28 = zext i1 %27 to i32, !dbg !1987
  %29 = sext i32 %28 to i64, !dbg !1988
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !1988
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !1988
  store i8* %31, i8** %3, align 8, !dbg !1989
  br label %37, !dbg !1989

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !1990
  %34 = icmp eq i32 %33, 9, !dbg !1991
  %35 = zext i1 %34 to i64, !dbg !1990
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.85, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), !dbg !1990
  store i8* %36, i8** %3, align 8, !dbg !1992
  br label %37, !dbg !1992

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !1993
  ret i8* %38, !dbg !1993
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !1994 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1997, metadata !DIExpression()), !dbg !1998
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1999, metadata !DIExpression()), !dbg !2000
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2001, metadata !DIExpression()), !dbg !2002
  %7 = load i8*, i8** %4, align 8, !dbg !2003
  %8 = load i64, i64* %5, align 8, !dbg !2004
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2005
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2006
  ret i8* %10, !dbg !2007
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2008 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2011, metadata !DIExpression()), !dbg !2012
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2013, metadata !DIExpression()), !dbg !2014
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2015, metadata !DIExpression()), !dbg !2016
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2017, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2019, metadata !DIExpression()), !dbg !2020
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2021
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2021
  br i1 %15, label %16, label %18, !dbg !2021

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2022
  br label %19, !dbg !2021

18:                                               ; preds = %4
  br label %19, !dbg !2021

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2021
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2020
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2023, metadata !DIExpression()), !dbg !2024
  %21 = call i32* @__errno_location() #21, !dbg !2025
  %22 = load i32, i32* %21, align 4, !dbg !2025
  store i32 %22, i32* %10, align 4, !dbg !2024
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2026, metadata !DIExpression()), !dbg !2027
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2028
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2029
  %25 = load i32, i32* %24, align 4, !dbg !2029
  %26 = load i64*, i64** %7, align 8, !dbg !2030
  %27 = icmp ne i64* %26, null, !dbg !2030
  %28 = zext i1 %27 to i64, !dbg !2030
  %29 = select i1 %27, i32 0, i32 1, !dbg !2030
  %30 = or i32 %25, %29, !dbg !2031
  store i32 %30, i32* %11, align 4, !dbg !2027
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2032, metadata !DIExpression()), !dbg !2033
  %31 = load i8*, i8** %5, align 8, !dbg !2034
  %32 = load i64, i64* %6, align 8, !dbg !2035
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2036
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2037
  %35 = load i32, i32* %34, align 8, !dbg !2037
  %36 = load i32, i32* %11, align 4, !dbg !2038
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2039
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2040
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2039
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2041
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2042
  %42 = load i8*, i8** %41, align 8, !dbg !2042
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2043
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2044
  %45 = load i8*, i8** %44, align 8, !dbg !2044
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2045
  %47 = add i64 %46, 1, !dbg !2046
  store i64 %47, i64* %12, align 8, !dbg !2033
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2047, metadata !DIExpression()), !dbg !2048
  %48 = load i64, i64* %12, align 8, !dbg !2049
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2050
  store i8* %49, i8** %13, align 8, !dbg !2048
  %50 = load i8*, i8** %13, align 8, !dbg !2051
  %51 = load i64, i64* %12, align 8, !dbg !2052
  %52 = load i8*, i8** %5, align 8, !dbg !2053
  %53 = load i64, i64* %6, align 8, !dbg !2054
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2055
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2056
  %56 = load i32, i32* %55, align 8, !dbg !2056
  %57 = load i32, i32* %11, align 4, !dbg !2057
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2058
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2059
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2058
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2060
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2061
  %63 = load i8*, i8** %62, align 8, !dbg !2061
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2062
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2063
  %66 = load i8*, i8** %65, align 8, !dbg !2063
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2064
  %68 = load i32, i32* %10, align 4, !dbg !2065
  %69 = call i32* @__errno_location() #21, !dbg !2066
  store i32 %68, i32* %69, align 4, !dbg !2067
  %70 = load i64*, i64** %7, align 8, !dbg !2068
  %71 = icmp ne i64* %70, null, !dbg !2068
  br i1 %71, label %72, label %76, !dbg !2070

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2071
  %74 = sub i64 %73, 1, !dbg !2072
  %75 = load i64*, i64** %7, align 8, !dbg !2073
  store i64 %74, i64* %75, align 8, !dbg !2074
  br label %76, !dbg !2075

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2076
  ret i8* %77, !dbg !2077
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2078 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2079, metadata !DIExpression()), !dbg !2080
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2081
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2080
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2082, metadata !DIExpression()), !dbg !2084
  store i32 1, i32* %2, align 4, !dbg !2084
  br label %4, !dbg !2085

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2086
  %6 = load i32, i32* @nslots, align 4, !dbg !2088
  %7 = icmp slt i32 %5, %6, !dbg !2089
  br i1 %7, label %8, label %18, !dbg !2090

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2091
  %10 = load i32, i32* %2, align 4, !dbg !2092
  %11 = sext i32 %10 to i64, !dbg !2091
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2091
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2093
  %14 = load i8*, i8** %13, align 8, !dbg !2093
  call void @free(i8* noundef %14) #18, !dbg !2094
  br label %15, !dbg !2094

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2095
  %17 = add nsw i32 %16, 1, !dbg !2095
  store i32 %17, i32* %2, align 4, !dbg !2095
  br label %4, !dbg !2096, !llvm.loop !2097

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2099
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2099
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2101
  %22 = load i8*, i8** %21, align 8, !dbg !2101
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2102
  br i1 %23, label %24, label %29, !dbg !2103

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2104
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2104
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2106
  %28 = load i8*, i8** %27, align 8, !dbg !2106
  call void @free(i8* noundef %28) #18, !dbg !2107
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2108
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2109
  br label %29, !dbg !2110

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2111
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2113
  br i1 %31, label %32, label %35, !dbg !2114

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2115
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2115
  call void @free(i8* noundef %34) #18, !dbg !2117
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2118
  br label %35, !dbg !2119

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2120
  ret void, !dbg !2121
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2122 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2125, metadata !DIExpression()), !dbg !2126
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2127, metadata !DIExpression()), !dbg !2128
  %5 = load i32, i32* %3, align 4, !dbg !2129
  %6 = load i8*, i8** %4, align 8, !dbg !2130
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2131
  ret i8* %7, !dbg !2132
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2133 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2136, metadata !DIExpression()), !dbg !2137
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2138, metadata !DIExpression()), !dbg !2139
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2140, metadata !DIExpression()), !dbg !2141
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2142, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2144, metadata !DIExpression()), !dbg !2145
  %18 = call i32* @__errno_location() #21, !dbg !2146
  %19 = load i32, i32* %18, align 4, !dbg !2146
  store i32 %19, i32* %9, align 4, !dbg !2145
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2147, metadata !DIExpression()), !dbg !2148
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2149
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2148
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2150, metadata !DIExpression()), !dbg !2151
  store i32 2147483647, i32* %11, align 4, !dbg !2151
  %21 = load i32, i32* %5, align 4, !dbg !2152
  %22 = icmp sle i32 0, %21, !dbg !2154
  br i1 %22, label %23, label %27, !dbg !2155

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2156
  %25 = load i32, i32* %11, align 4, !dbg !2157
  %26 = icmp slt i32 %24, %25, !dbg !2158
  br i1 %26, label %28, label %27, !dbg !2159

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2160
  unreachable, !dbg !2160

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2161
  %30 = load i32, i32* %5, align 4, !dbg !2163
  %31 = icmp sle i32 %29, %30, !dbg !2164
  br i1 %31, label %32, label %73, !dbg !2165

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2166, metadata !DIExpression()), !dbg !2168
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2169
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2170
  %35 = zext i1 %34 to i8, !dbg !2168
  store i8 %35, i8* %12, align 1, !dbg !2168
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2171, metadata !DIExpression()), !dbg !2172
  %36 = load i32, i32* @nslots, align 4, !dbg !2173
  %37 = sext i32 %36 to i64, !dbg !2173
  store i64 %37, i64* %13, align 8, !dbg !2172
  %38 = load i8, i8* %12, align 1, !dbg !2174
  %39 = trunc i8 %38 to i1, !dbg !2174
  br i1 %39, label %40, label %41, !dbg !2174

40:                                               ; preds = %32
  br label %43, !dbg !2174

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2175
  br label %43, !dbg !2174

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2174
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2174
  %46 = load i32, i32* %5, align 4, !dbg !2176
  %47 = load i32, i32* @nslots, align 4, !dbg !2177
  %48 = sub nsw i32 %46, %47, !dbg !2178
  %49 = add nsw i32 %48, 1, !dbg !2179
  %50 = sext i32 %49 to i64, !dbg !2176
  %51 = load i32, i32* %11, align 4, !dbg !2180
  %52 = sext i32 %51 to i64, !dbg !2180
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2181
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2181
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2182
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2183
  %55 = load i8, i8* %12, align 1, !dbg !2184
  %56 = trunc i8 %55 to i1, !dbg !2184
  br i1 %56, label %57, label %60, !dbg !2186

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2187
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2188
  br label %60, !dbg !2189

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2190
  %62 = load i32, i32* @nslots, align 4, !dbg !2191
  %63 = sext i32 %62 to i64, !dbg !2192
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2192
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2193
  %66 = load i64, i64* %13, align 8, !dbg !2194
  %67 = load i32, i32* @nslots, align 4, !dbg !2195
  %68 = sext i32 %67 to i64, !dbg !2195
  %69 = sub nsw i64 %66, %68, !dbg !2196
  %70 = mul i64 %69, 16, !dbg !2197
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2193
  %71 = load i64, i64* %13, align 8, !dbg !2198
  %72 = trunc i64 %71 to i32, !dbg !2198
  store i32 %72, i32* @nslots, align 4, !dbg !2199
  br label %73, !dbg !2200

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2201, metadata !DIExpression()), !dbg !2203
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2204
  %75 = load i32, i32* %5, align 4, !dbg !2205
  %76 = sext i32 %75 to i64, !dbg !2204
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2204
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2206
  %79 = load i64, i64* %78, align 8, !dbg !2206
  store i64 %79, i64* %14, align 8, !dbg !2203
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2207, metadata !DIExpression()), !dbg !2208
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2209
  %81 = load i32, i32* %5, align 4, !dbg !2210
  %82 = sext i32 %81 to i64, !dbg !2209
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2209
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2211
  %85 = load i8*, i8** %84, align 8, !dbg !2211
  store i8* %85, i8** %15, align 8, !dbg !2208
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2212, metadata !DIExpression()), !dbg !2213
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2214
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2215
  %88 = load i32, i32* %87, align 4, !dbg !2215
  %89 = or i32 %88, 1, !dbg !2216
  store i32 %89, i32* %16, align 4, !dbg !2213
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2217, metadata !DIExpression()), !dbg !2218
  %90 = load i8*, i8** %15, align 8, !dbg !2219
  %91 = load i64, i64* %14, align 8, !dbg !2220
  %92 = load i8*, i8** %6, align 8, !dbg !2221
  %93 = load i64, i64* %7, align 8, !dbg !2222
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2223
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2224
  %96 = load i32, i32* %95, align 8, !dbg !2224
  %97 = load i32, i32* %16, align 4, !dbg !2225
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2226
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2227
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2226
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2228
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2229
  %103 = load i8*, i8** %102, align 8, !dbg !2229
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2230
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2231
  %106 = load i8*, i8** %105, align 8, !dbg !2231
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2232
  store i64 %107, i64* %17, align 8, !dbg !2218
  %108 = load i64, i64* %14, align 8, !dbg !2233
  %109 = load i64, i64* %17, align 8, !dbg !2235
  %110 = icmp ule i64 %108, %109, !dbg !2236
  br i1 %110, label %111, label %149, !dbg !2237

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2238
  %113 = add i64 %112, 1, !dbg !2240
  store i64 %113, i64* %14, align 8, !dbg !2241
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2242
  %115 = load i32, i32* %5, align 4, !dbg !2243
  %116 = sext i32 %115 to i64, !dbg !2242
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2242
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2244
  store i64 %113, i64* %118, align 8, !dbg !2245
  %119 = load i8*, i8** %15, align 8, !dbg !2246
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2248
  br i1 %120, label %121, label %123, !dbg !2249

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2250
  call void @free(i8* noundef %122) #18, !dbg !2251
  br label %123, !dbg !2251

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2252
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2253
  store i8* %125, i8** %15, align 8, !dbg !2254
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2255
  %127 = load i32, i32* %5, align 4, !dbg !2256
  %128 = sext i32 %127 to i64, !dbg !2255
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2255
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2257
  store i8* %125, i8** %130, align 8, !dbg !2258
  %131 = load i8*, i8** %15, align 8, !dbg !2259
  %132 = load i64, i64* %14, align 8, !dbg !2260
  %133 = load i8*, i8** %6, align 8, !dbg !2261
  %134 = load i64, i64* %7, align 8, !dbg !2262
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2263
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2264
  %137 = load i32, i32* %136, align 8, !dbg !2264
  %138 = load i32, i32* %16, align 4, !dbg !2265
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2266
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2267
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2266
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2268
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2269
  %144 = load i8*, i8** %143, align 8, !dbg !2269
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2270
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2271
  %147 = load i8*, i8** %146, align 8, !dbg !2271
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2272
  br label %149, !dbg !2273

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2274
  %151 = call i32* @__errno_location() #21, !dbg !2275
  store i32 %150, i32* %151, align 4, !dbg !2276
  %152 = load i8*, i8** %15, align 8, !dbg !2277
  ret i8* %152, !dbg !2278
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2279 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2282, metadata !DIExpression()), !dbg !2283
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2284, metadata !DIExpression()), !dbg !2285
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2286, metadata !DIExpression()), !dbg !2287
  %7 = load i32, i32* %4, align 4, !dbg !2288
  %8 = load i8*, i8** %5, align 8, !dbg !2289
  %9 = load i64, i64* %6, align 8, !dbg !2290
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2291
  ret i8* %10, !dbg !2292
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2293 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2296, metadata !DIExpression()), !dbg !2297
  %3 = load i8*, i8** %2, align 8, !dbg !2298
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2299
  ret i8* %4, !dbg !2300
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2301 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2304, metadata !DIExpression()), !dbg !2305
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2306, metadata !DIExpression()), !dbg !2307
  %5 = load i8*, i8** %3, align 8, !dbg !2308
  %6 = load i64, i64* %4, align 8, !dbg !2309
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2310
  ret i8* %7, !dbg !2311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2312 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2315, metadata !DIExpression()), !dbg !2316
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2317, metadata !DIExpression()), !dbg !2318
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2319, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2321, metadata !DIExpression()), !dbg !2322
  %8 = load i32, i32* %5, align 4, !dbg !2323
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2324
  %9 = load i32, i32* %4, align 4, !dbg !2325
  %10 = load i8*, i8** %6, align 8, !dbg !2326
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2327
  ret i8* %11, !dbg !2328
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2329 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2332, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2334, metadata !DIExpression()), !dbg !2335
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2335
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2335
  %5 = load i32, i32* %3, align 4, !dbg !2336
  %6 = icmp eq i32 %5, 10, !dbg !2338
  br i1 %6, label %7, label %8, !dbg !2339

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2340
  unreachable, !dbg !2340

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2341
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2342
  store i32 %9, i32* %10, align 8, !dbg !2343
  ret void, !dbg !2344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2345 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2348, metadata !DIExpression()), !dbg !2349
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2350, metadata !DIExpression()), !dbg !2351
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2352, metadata !DIExpression()), !dbg !2353
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2354, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2356, metadata !DIExpression()), !dbg !2357
  %10 = load i32, i32* %6, align 4, !dbg !2358
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2359
  %11 = load i32, i32* %5, align 4, !dbg !2360
  %12 = load i8*, i8** %7, align 8, !dbg !2361
  %13 = load i64, i64* %8, align 8, !dbg !2362
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2363
  ret i8* %14, !dbg !2364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2365 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2368, metadata !DIExpression()), !dbg !2369
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2370, metadata !DIExpression()), !dbg !2371
  %5 = load i32, i32* %3, align 4, !dbg !2372
  %6 = load i8*, i8** %4, align 8, !dbg !2373
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2374
  ret i8* %7, !dbg !2375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2376 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2379, metadata !DIExpression()), !dbg !2380
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2381, metadata !DIExpression()), !dbg !2382
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2383, metadata !DIExpression()), !dbg !2384
  %7 = load i32, i32* %4, align 4, !dbg !2385
  %8 = load i8*, i8** %5, align 8, !dbg !2386
  %9 = load i64, i64* %6, align 8, !dbg !2387
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2388
  ret i8* %10, !dbg !2389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2390 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2393, metadata !DIExpression()), !dbg !2394
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2395, metadata !DIExpression()), !dbg !2396
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2397, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2399, metadata !DIExpression()), !dbg !2400
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2401
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2401
  %9 = load i8, i8* %6, align 1, !dbg !2402
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2403
  %11 = load i8*, i8** %4, align 8, !dbg !2404
  %12 = load i64, i64* %5, align 8, !dbg !2405
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2406
  ret i8* %13, !dbg !2407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2408 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2411, metadata !DIExpression()), !dbg !2412
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2413, metadata !DIExpression()), !dbg !2414
  %5 = load i8*, i8** %3, align 8, !dbg !2415
  %6 = load i8, i8* %4, align 1, !dbg !2416
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2417
  ret i8* %7, !dbg !2418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2419 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2420, metadata !DIExpression()), !dbg !2421
  %3 = load i8*, i8** %2, align 8, !dbg !2422
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2423
  ret i8* %4, !dbg !2424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2425 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2426, metadata !DIExpression()), !dbg !2427
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2428, metadata !DIExpression()), !dbg !2429
  %5 = load i8*, i8** %3, align 8, !dbg !2430
  %6 = load i64, i64* %4, align 8, !dbg !2431
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2432
  ret i8* %7, !dbg !2433
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2434 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2435, metadata !DIExpression()), !dbg !2436
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2437, metadata !DIExpression()), !dbg !2438
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2439, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2441, metadata !DIExpression()), !dbg !2442
  %9 = load i32, i32* %5, align 4, !dbg !2443
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2444
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2444
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2444
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2444
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2445
  %13 = load i32, i32* %4, align 4, !dbg !2446
  %14 = load i8*, i8** %6, align 8, !dbg !2447
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2448
  ret i8* %15, !dbg !2449
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2450 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2453, metadata !DIExpression()), !dbg !2454
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2455, metadata !DIExpression()), !dbg !2456
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2457, metadata !DIExpression()), !dbg !2458
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2459, metadata !DIExpression()), !dbg !2460
  %9 = load i32, i32* %5, align 4, !dbg !2461
  %10 = load i8*, i8** %6, align 8, !dbg !2462
  %11 = load i8*, i8** %7, align 8, !dbg !2463
  %12 = load i8*, i8** %8, align 8, !dbg !2464
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2465
  ret i8* %13, !dbg !2466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2467 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2470, metadata !DIExpression()), !dbg !2471
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2472, metadata !DIExpression()), !dbg !2473
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2474, metadata !DIExpression()), !dbg !2475
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2476, metadata !DIExpression()), !dbg !2477
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2478, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2480, metadata !DIExpression()), !dbg !2481
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2482
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2482
  %13 = load i8*, i8** %7, align 8, !dbg !2483
  %14 = load i8*, i8** %8, align 8, !dbg !2484
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2485
  %15 = load i32, i32* %6, align 4, !dbg !2486
  %16 = load i8*, i8** %9, align 8, !dbg !2487
  %17 = load i64, i64* %10, align 8, !dbg !2488
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2489
  ret i8* %18, !dbg !2490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2491 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2494, metadata !DIExpression()), !dbg !2495
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2496, metadata !DIExpression()), !dbg !2497
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2498, metadata !DIExpression()), !dbg !2499
  %7 = load i8*, i8** %4, align 8, !dbg !2500
  %8 = load i8*, i8** %5, align 8, !dbg !2501
  %9 = load i8*, i8** %6, align 8, !dbg !2502
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2503
  ret i8* %10, !dbg !2504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2505 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2508, metadata !DIExpression()), !dbg !2509
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2510, metadata !DIExpression()), !dbg !2511
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2512, metadata !DIExpression()), !dbg !2513
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2514, metadata !DIExpression()), !dbg !2515
  %9 = load i8*, i8** %5, align 8, !dbg !2516
  %10 = load i8*, i8** %6, align 8, !dbg !2517
  %11 = load i8*, i8** %7, align 8, !dbg !2518
  %12 = load i64, i64* %8, align 8, !dbg !2519
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2520
  ret i8* %13, !dbg !2521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2522 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2525, metadata !DIExpression()), !dbg !2526
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2527, metadata !DIExpression()), !dbg !2528
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2529, metadata !DIExpression()), !dbg !2530
  %7 = load i32, i32* %4, align 4, !dbg !2531
  %8 = load i8*, i8** %5, align 8, !dbg !2532
  %9 = load i64, i64* %6, align 8, !dbg !2533
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2534
  ret i8* %10, !dbg !2535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2536 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2539, metadata !DIExpression()), !dbg !2540
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2541, metadata !DIExpression()), !dbg !2542
  %5 = load i8*, i8** %3, align 8, !dbg !2543
  %6 = load i64, i64* %4, align 8, !dbg !2544
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2545
  ret i8* %7, !dbg !2546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2547 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2550, metadata !DIExpression()), !dbg !2551
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2552, metadata !DIExpression()), !dbg !2553
  %5 = load i32, i32* %3, align 4, !dbg !2554
  %6 = load i8*, i8** %4, align 8, !dbg !2555
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2556
  ret i8* %7, !dbg !2557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !2558 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2561, metadata !DIExpression()), !dbg !2562
  %3 = load i8*, i8** %2, align 8, !dbg !2563
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !2564
  ret i8* %4, !dbg !2565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !2566 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2570, metadata !DIExpression()), !dbg !2571
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2572, metadata !DIExpression()), !dbg !2573
  %5 = load i8*, i8** %3, align 8, !dbg !2574
  %6 = load i8*, i8** %4, align 8, !dbg !2575
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !2576
  %8 = icmp ne i32 %7, 0, !dbg !2577
  %9 = xor i1 %8, true, !dbg !2577
  ret i1 %9, !dbg !2578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !2579 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !2636, metadata !DIExpression()), !dbg !2637
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2638, metadata !DIExpression()), !dbg !2639
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2640, metadata !DIExpression()), !dbg !2641
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2642, metadata !DIExpression()), !dbg !2643
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2644, metadata !DIExpression()), !dbg !2645
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2646, metadata !DIExpression()), !dbg !2647
  %13 = load i8*, i8** %8, align 8, !dbg !2648
  %14 = icmp ne i8* %13, null, !dbg !2648
  br i1 %14, label %15, label %21, !dbg !2650

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2651
  %17 = load i8*, i8** %8, align 8, !dbg !2652
  %18 = load i8*, i8** %9, align 8, !dbg !2653
  %19 = load i8*, i8** %10, align 8, !dbg !2654
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !2655
  br label %26, !dbg !2655

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2656
  %23 = load i8*, i8** %9, align 8, !dbg !2657
  %24 = load i8*, i8** %10, align 8, !dbg !2658
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.94, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !2659
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2660
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.96, i64 0, i64 0)) #18, !dbg !2661
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !2662
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2663
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.97, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !2663
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2664
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.98, i64 0, i64 0)) #18, !dbg !2665
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.99, i64 0, i64 0)), !dbg !2666
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2667
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.97, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !2667
  %37 = load i64, i64* %12, align 8, !dbg !2668
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
  ], !dbg !2669

38:                                               ; preds = %26
  br label %241, !dbg !2670

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2672
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.100, i64 0, i64 0)) #18, !dbg !2673
  %42 = load i8**, i8*** %11, align 8, !dbg !2674
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !2674
  %44 = load i8*, i8** %43, align 8, !dbg !2674
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !2675
  br label %241, !dbg !2676

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2677
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.101, i64 0, i64 0)) #18, !dbg !2678
  %49 = load i8**, i8*** %11, align 8, !dbg !2679
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !2679
  %51 = load i8*, i8** %50, align 8, !dbg !2679
  %52 = load i8**, i8*** %11, align 8, !dbg !2680
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !2680
  %54 = load i8*, i8** %53, align 8, !dbg !2680
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !2681
  br label %241, !dbg !2682

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2683
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.102, i64 0, i64 0)) #18, !dbg !2684
  %59 = load i8**, i8*** %11, align 8, !dbg !2685
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !2685
  %61 = load i8*, i8** %60, align 8, !dbg !2685
  %62 = load i8**, i8*** %11, align 8, !dbg !2686
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !2686
  %64 = load i8*, i8** %63, align 8, !dbg !2686
  %65 = load i8**, i8*** %11, align 8, !dbg !2687
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !2687
  %67 = load i8*, i8** %66, align 8, !dbg !2687
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !2688
  br label %241, !dbg !2689

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2690
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.103, i64 0, i64 0)) #18, !dbg !2691
  %72 = load i8**, i8*** %11, align 8, !dbg !2692
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !2692
  %74 = load i8*, i8** %73, align 8, !dbg !2692
  %75 = load i8**, i8*** %11, align 8, !dbg !2693
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !2693
  %77 = load i8*, i8** %76, align 8, !dbg !2693
  %78 = load i8**, i8*** %11, align 8, !dbg !2694
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !2694
  %80 = load i8*, i8** %79, align 8, !dbg !2694
  %81 = load i8**, i8*** %11, align 8, !dbg !2695
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !2695
  %83 = load i8*, i8** %82, align 8, !dbg !2695
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !2696
  br label %241, !dbg !2697

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2698
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.104, i64 0, i64 0)) #18, !dbg !2699
  %88 = load i8**, i8*** %11, align 8, !dbg !2700
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !2700
  %90 = load i8*, i8** %89, align 8, !dbg !2700
  %91 = load i8**, i8*** %11, align 8, !dbg !2701
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !2701
  %93 = load i8*, i8** %92, align 8, !dbg !2701
  %94 = load i8**, i8*** %11, align 8, !dbg !2702
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !2702
  %96 = load i8*, i8** %95, align 8, !dbg !2702
  %97 = load i8**, i8*** %11, align 8, !dbg !2703
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !2703
  %99 = load i8*, i8** %98, align 8, !dbg !2703
  %100 = load i8**, i8*** %11, align 8, !dbg !2704
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !2704
  %102 = load i8*, i8** %101, align 8, !dbg !2704
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !2705
  br label %241, !dbg !2706

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2707
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.105, i64 0, i64 0)) #18, !dbg !2708
  %107 = load i8**, i8*** %11, align 8, !dbg !2709
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !2709
  %109 = load i8*, i8** %108, align 8, !dbg !2709
  %110 = load i8**, i8*** %11, align 8, !dbg !2710
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !2710
  %112 = load i8*, i8** %111, align 8, !dbg !2710
  %113 = load i8**, i8*** %11, align 8, !dbg !2711
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !2711
  %115 = load i8*, i8** %114, align 8, !dbg !2711
  %116 = load i8**, i8*** %11, align 8, !dbg !2712
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !2712
  %118 = load i8*, i8** %117, align 8, !dbg !2712
  %119 = load i8**, i8*** %11, align 8, !dbg !2713
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !2713
  %121 = load i8*, i8** %120, align 8, !dbg !2713
  %122 = load i8**, i8*** %11, align 8, !dbg !2714
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !2714
  %124 = load i8*, i8** %123, align 8, !dbg !2714
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !2715
  br label %241, !dbg !2716

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2717
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.106, i64 0, i64 0)) #18, !dbg !2718
  %129 = load i8**, i8*** %11, align 8, !dbg !2719
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !2719
  %131 = load i8*, i8** %130, align 8, !dbg !2719
  %132 = load i8**, i8*** %11, align 8, !dbg !2720
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !2720
  %134 = load i8*, i8** %133, align 8, !dbg !2720
  %135 = load i8**, i8*** %11, align 8, !dbg !2721
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !2721
  %137 = load i8*, i8** %136, align 8, !dbg !2721
  %138 = load i8**, i8*** %11, align 8, !dbg !2722
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !2722
  %140 = load i8*, i8** %139, align 8, !dbg !2722
  %141 = load i8**, i8*** %11, align 8, !dbg !2723
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !2723
  %143 = load i8*, i8** %142, align 8, !dbg !2723
  %144 = load i8**, i8*** %11, align 8, !dbg !2724
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !2724
  %146 = load i8*, i8** %145, align 8, !dbg !2724
  %147 = load i8**, i8*** %11, align 8, !dbg !2725
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !2725
  %149 = load i8*, i8** %148, align 8, !dbg !2725
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !2726
  br label %241, !dbg !2727

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2728
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.107, i64 0, i64 0)) #18, !dbg !2729
  %154 = load i8**, i8*** %11, align 8, !dbg !2730
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !2730
  %156 = load i8*, i8** %155, align 8, !dbg !2730
  %157 = load i8**, i8*** %11, align 8, !dbg !2731
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !2731
  %159 = load i8*, i8** %158, align 8, !dbg !2731
  %160 = load i8**, i8*** %11, align 8, !dbg !2732
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !2732
  %162 = load i8*, i8** %161, align 8, !dbg !2732
  %163 = load i8**, i8*** %11, align 8, !dbg !2733
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !2733
  %165 = load i8*, i8** %164, align 8, !dbg !2733
  %166 = load i8**, i8*** %11, align 8, !dbg !2734
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !2734
  %168 = load i8*, i8** %167, align 8, !dbg !2734
  %169 = load i8**, i8*** %11, align 8, !dbg !2735
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !2735
  %171 = load i8*, i8** %170, align 8, !dbg !2735
  %172 = load i8**, i8*** %11, align 8, !dbg !2736
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !2736
  %174 = load i8*, i8** %173, align 8, !dbg !2736
  %175 = load i8**, i8*** %11, align 8, !dbg !2737
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !2737
  %177 = load i8*, i8** %176, align 8, !dbg !2737
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !2738
  br label %241, !dbg !2739

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2740
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.108, i64 0, i64 0)) #18, !dbg !2741
  %182 = load i8**, i8*** %11, align 8, !dbg !2742
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !2742
  %184 = load i8*, i8** %183, align 8, !dbg !2742
  %185 = load i8**, i8*** %11, align 8, !dbg !2743
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !2743
  %187 = load i8*, i8** %186, align 8, !dbg !2743
  %188 = load i8**, i8*** %11, align 8, !dbg !2744
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !2744
  %190 = load i8*, i8** %189, align 8, !dbg !2744
  %191 = load i8**, i8*** %11, align 8, !dbg !2745
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !2745
  %193 = load i8*, i8** %192, align 8, !dbg !2745
  %194 = load i8**, i8*** %11, align 8, !dbg !2746
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !2746
  %196 = load i8*, i8** %195, align 8, !dbg !2746
  %197 = load i8**, i8*** %11, align 8, !dbg !2747
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !2747
  %199 = load i8*, i8** %198, align 8, !dbg !2747
  %200 = load i8**, i8*** %11, align 8, !dbg !2748
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !2748
  %202 = load i8*, i8** %201, align 8, !dbg !2748
  %203 = load i8**, i8*** %11, align 8, !dbg !2749
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !2749
  %205 = load i8*, i8** %204, align 8, !dbg !2749
  %206 = load i8**, i8*** %11, align 8, !dbg !2750
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !2750
  %208 = load i8*, i8** %207, align 8, !dbg !2750
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !2751
  br label %241, !dbg !2752

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2753
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.109, i64 0, i64 0)) #18, !dbg !2754
  %213 = load i8**, i8*** %11, align 8, !dbg !2755
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !2755
  %215 = load i8*, i8** %214, align 8, !dbg !2755
  %216 = load i8**, i8*** %11, align 8, !dbg !2756
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !2756
  %218 = load i8*, i8** %217, align 8, !dbg !2756
  %219 = load i8**, i8*** %11, align 8, !dbg !2757
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !2757
  %221 = load i8*, i8** %220, align 8, !dbg !2757
  %222 = load i8**, i8*** %11, align 8, !dbg !2758
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !2758
  %224 = load i8*, i8** %223, align 8, !dbg !2758
  %225 = load i8**, i8*** %11, align 8, !dbg !2759
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !2759
  %227 = load i8*, i8** %226, align 8, !dbg !2759
  %228 = load i8**, i8*** %11, align 8, !dbg !2760
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !2760
  %230 = load i8*, i8** %229, align 8, !dbg !2760
  %231 = load i8**, i8*** %11, align 8, !dbg !2761
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !2761
  %233 = load i8*, i8** %232, align 8, !dbg !2761
  %234 = load i8**, i8*** %11, align 8, !dbg !2762
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !2762
  %236 = load i8*, i8** %235, align 8, !dbg !2762
  %237 = load i8**, i8*** %11, align 8, !dbg !2763
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !2763
  %239 = load i8*, i8** %238, align 8, !dbg !2763
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !2764
  br label %241, !dbg !2765

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !2766
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !2767 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2770, metadata !DIExpression()), !dbg !2771
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2772, metadata !DIExpression()), !dbg !2773
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2774, metadata !DIExpression()), !dbg !2775
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2776, metadata !DIExpression()), !dbg !2777
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !2778, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2780, metadata !DIExpression()), !dbg !2781
  store i64 0, i64* %11, align 8, !dbg !2782
  br label %12, !dbg !2784

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !2785
  %14 = load i64, i64* %11, align 8, !dbg !2787
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !2785
  %16 = load i8*, i8** %15, align 8, !dbg !2785
  %17 = icmp ne i8* %16, null, !dbg !2788
  br i1 %17, label %18, label %22, !dbg !2788

18:                                               ; preds = %12
  br label %19, !dbg !2788

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !2789
  %21 = add i64 %20, 1, !dbg !2789
  store i64 %21, i64* %11, align 8, !dbg !2789
  br label %12, !dbg !2790, !llvm.loop !2791

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2793
  %24 = load i8*, i8** %7, align 8, !dbg !2794
  %25 = load i8*, i8** %8, align 8, !dbg !2795
  %26 = load i8*, i8** %9, align 8, !dbg !2796
  %27 = load i8**, i8*** %10, align 8, !dbg !2797
  %28 = load i64, i64* %11, align 8, !dbg !2798
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !2799
  ret void, !dbg !2800
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !2801 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2815, metadata !DIExpression()), !dbg !2816
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2817, metadata !DIExpression()), !dbg !2818
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2819, metadata !DIExpression()), !dbg !2820
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2821, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2823, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2825, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !2827, metadata !DIExpression()), !dbg !2829
  store i64 0, i64* %10, align 8, !dbg !2830
  br label %12, !dbg !2832

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !2833
  %14 = icmp ult i64 %13, 10, !dbg !2835
  br i1 %14, label %15, label %38, !dbg !2836

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !2837
  %17 = load i32, i32* %16, align 8, !dbg !2837
  %18 = icmp sge i32 %17, 0, !dbg !2837
  br i1 %18, label %27, label %19, !dbg !2837

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !2837
  store i32 %20, i32* %16, align 8, !dbg !2837
  %21 = icmp sle i32 %20, 0, !dbg !2837
  br i1 %21, label %22, label %27, !dbg !2837

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !2837
  %24 = load i8*, i8** %23, align 8, !dbg !2837
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !2837
  %26 = bitcast i8* %25 to i8**, !dbg !2837
  br label %32, !dbg !2837

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !2837
  %29 = load i8*, i8** %28, align 8, !dbg !2837
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !2837
  store i8* %30, i8** %28, align 8, !dbg !2837
  %31 = bitcast i8* %29 to i8**, !dbg !2837
  br label %32, !dbg !2837

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !2837
  %34 = load i8*, i8** %33, align 8, !dbg !2837
  %35 = load i64, i64* %10, align 8, !dbg !2838
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !2839
  store i8* %34, i8** %36, align 8, !dbg !2840
  %37 = icmp ne i8* %34, null, !dbg !2841
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !2842
  br i1 %39, label %40, label %44, !dbg !2843

40:                                               ; preds = %38
  br label %41, !dbg !2843

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !2844
  %43 = add i64 %42, 1, !dbg !2844
  store i64 %43, i64* %10, align 8, !dbg !2844
  br label %12, !dbg !2845, !llvm.loop !2846

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2848
  %46 = load i8*, i8** %7, align 8, !dbg !2849
  %47 = load i8*, i8** %8, align 8, !dbg !2850
  %48 = load i8*, i8** %9, align 8, !dbg !2851
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !2852
  %50 = load i64, i64* %10, align 8, !dbg !2853
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !2854
  ret void, !dbg !2855
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !2856 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !2859, metadata !DIExpression()), !dbg !2860
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2861, metadata !DIExpression()), !dbg !2862
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2863, metadata !DIExpression()), !dbg !2864
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2865, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !2867, metadata !DIExpression()), !dbg !2868
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !2869
  call void @llvm.va_start(i8* %11), !dbg !2869
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2870
  %13 = load i8*, i8** %6, align 8, !dbg !2871
  %14 = load i8*, i8** %7, align 8, !dbg !2872
  %15 = load i8*, i8** %8, align 8, !dbg !2873
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !2874
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !2874
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !2874
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !2874
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !2875
  call void @llvm.va_end(i8* %18), !dbg !2875
  ret void, !dbg !2876
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !2877 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2878
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.97, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2878
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.114, i64 0, i64 0)) #18, !dbg !2879
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.115, i64 0, i64 0)), !dbg !2880
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.116, i64 0, i64 0)) #18, !dbg !2881
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.117, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.118, i64 0, i64 0)), !dbg !2882
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.119, i64 0, i64 0)) #18, !dbg !2883
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.120, i64 0, i64 0)), !dbg !2884
  ret void, !dbg !2885
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !2886 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2890, metadata !DIExpression()), !dbg !2891
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2892, metadata !DIExpression()), !dbg !2893
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2894, metadata !DIExpression()), !dbg !2895
  %7 = load i8*, i8** %4, align 8, !dbg !2896
  %8 = load i64, i64* %5, align 8, !dbg !2897
  %9 = load i64, i64* %6, align 8, !dbg !2898
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !2899
  ret i8* %10, !dbg !2900
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !2901 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2902, metadata !DIExpression()), !dbg !2903
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2904, metadata !DIExpression()), !dbg !2905
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2906, metadata !DIExpression()), !dbg !2907
  %7 = load i8*, i8** %4, align 8, !dbg !2908
  %8 = load i64, i64* %5, align 8, !dbg !2909
  %9 = load i64, i64* %6, align 8, !dbg !2910
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !2911
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !2912
  ret i8* %11, !dbg !2913
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !2914 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2917, metadata !DIExpression()), !dbg !2918
  %3 = load i8*, i8** %2, align 8, !dbg !2919
  %4 = icmp ne i8* %3, null, !dbg !2919
  br i1 %4, label %6, label %5, !dbg !2921

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !2922
  unreachable, !dbg !2922

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !2923
  ret i8* %7, !dbg !2924
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !2925 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2928, metadata !DIExpression()), !dbg !2929
  %3 = load i64, i64* %2, align 8, !dbg !2930
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !2931
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !2932
  ret i8* %5, !dbg !2933
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !2934 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2937, metadata !DIExpression()), !dbg !2938
  %3 = load i64, i64* %2, align 8, !dbg !2939
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !2940
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !2941
  ret i8* %5, !dbg !2942
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !2943 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2946, metadata !DIExpression()), !dbg !2947
  %3 = load i64, i64* %2, align 8, !dbg !2948
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !2948
  ret i8* %4, !dbg !2949
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !2950 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2953, metadata !DIExpression()), !dbg !2954
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2955, metadata !DIExpression()), !dbg !2956
  %5 = load i8*, i8** %3, align 8, !dbg !2957
  %6 = load i64, i64* %4, align 8, !dbg !2958
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !2959
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !2960
  ret i8* %8, !dbg !2961
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !2962 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2965, metadata !DIExpression()), !dbg !2966
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2967, metadata !DIExpression()), !dbg !2968
  %5 = load i8*, i8** %3, align 8, !dbg !2969
  %6 = load i64, i64* %4, align 8, !dbg !2970
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !2971
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !2972
  ret i8* %8, !dbg !2973
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !2974 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2977, metadata !DIExpression()), !dbg !2978
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2979, metadata !DIExpression()), !dbg !2980
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2981, metadata !DIExpression()), !dbg !2982
  %7 = load i8*, i8** %4, align 8, !dbg !2983
  %8 = load i64, i64* %5, align 8, !dbg !2984
  %9 = load i64, i64* %6, align 8, !dbg !2985
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !2986
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !2987
  ret i8* %11, !dbg !2988
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !2989 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2992, metadata !DIExpression()), !dbg !2993
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2994, metadata !DIExpression()), !dbg !2995
  %5 = load i64, i64* %3, align 8, !dbg !2996
  %6 = load i64, i64* %4, align 8, !dbg !2997
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !2998
  ret i8* %7, !dbg !2999
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3000 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3003, metadata !DIExpression()), !dbg !3004
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3005, metadata !DIExpression()), !dbg !3006
  %5 = load i64, i64* %3, align 8, !dbg !3007
  %6 = load i64, i64* %4, align 8, !dbg !3008
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3009
  ret i8* %7, !dbg !3010
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3011 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3014, metadata !DIExpression()), !dbg !3015
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3016, metadata !DIExpression()), !dbg !3017
  %5 = load i8*, i8** %3, align 8, !dbg !3018
  %6 = load i64*, i64** %4, align 8, !dbg !3019
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3020
  ret i8* %7, !dbg !3021
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !225 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3022, metadata !DIExpression()), !dbg !3023
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3024, metadata !DIExpression()), !dbg !3025
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3026, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3028, metadata !DIExpression()), !dbg !3029
  %8 = load i64*, i64** %5, align 8, !dbg !3030
  %9 = load i64, i64* %8, align 8, !dbg !3031
  store i64 %9, i64* %7, align 8, !dbg !3029
  %10 = load i8*, i8** %4, align 8, !dbg !3032
  %11 = icmp ne i8* %10, null, !dbg !3032
  br i1 %11, label %26, label %12, !dbg !3034

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3035
  %14 = icmp ne i64 %13, 0, !dbg !3035
  br i1 %14, label %25, label %15, !dbg !3038

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3039
  %17 = udiv i64 128, %16, !dbg !3041
  store i64 %17, i64* %7, align 8, !dbg !3042
  %18 = load i64, i64* %7, align 8, !dbg !3043
  %19 = icmp ne i64 %18, 0, !dbg !3044
  %20 = xor i1 %19, true, !dbg !3044
  %21 = zext i1 %20 to i32, !dbg !3044
  %22 = sext i32 %21 to i64, !dbg !3044
  %23 = load i64, i64* %7, align 8, !dbg !3045
  %24 = add i64 %23, %22, !dbg !3045
  store i64 %24, i64* %7, align 8, !dbg !3045
  br label %25, !dbg !3046

25:                                               ; preds = %15, %12
  br label %36, !dbg !3047

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3048
  %28 = load i64, i64* %7, align 8, !dbg !3048
  %29 = lshr i64 %28, 1, !dbg !3048
  %30 = add i64 %29, 1, !dbg !3048
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3048
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3048
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3048
  store i64 %33, i64* %7, align 8, !dbg !3048
  br i1 %32, label %34, label %35, !dbg !3051

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3052
  unreachable, !dbg !3052

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3053
  %38 = load i64, i64* %7, align 8, !dbg !3054
  %39 = load i64, i64* %6, align 8, !dbg !3055
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3056
  store i8* %40, i8** %4, align 8, !dbg !3057
  %41 = load i64, i64* %7, align 8, !dbg !3058
  %42 = load i64*, i64** %5, align 8, !dbg !3059
  store i64 %41, i64* %42, align 8, !dbg !3060
  %43 = load i8*, i8** %4, align 8, !dbg !3061
  ret i8* %43, !dbg !3062
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !232 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3063, metadata !DIExpression()), !dbg !3064
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3065, metadata !DIExpression()), !dbg !3066
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3067, metadata !DIExpression()), !dbg !3068
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3069, metadata !DIExpression()), !dbg !3070
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3071, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3073, metadata !DIExpression()), !dbg !3074
  %15 = load i64*, i64** %7, align 8, !dbg !3075
  %16 = load i64, i64* %15, align 8, !dbg !3076
  store i64 %16, i64* %11, align 8, !dbg !3074
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3077, metadata !DIExpression()), !dbg !3078
  %17 = load i64, i64* %11, align 8, !dbg !3079
  %18 = load i64, i64* %11, align 8, !dbg !3079
  %19 = ashr i64 %18, 1, !dbg !3079
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3079
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3079
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3079
  store i64 %22, i64* %12, align 8, !dbg !3079
  br i1 %21, label %23, label %24, !dbg !3081

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3082
  br label %24, !dbg !3083

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3084
  %26 = icmp sle i64 0, %25, !dbg !3086
  br i1 %26, label %27, label %33, !dbg !3087

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3088
  %29 = load i64, i64* %12, align 8, !dbg !3089
  %30 = icmp slt i64 %28, %29, !dbg !3090
  br i1 %30, label %31, label %33, !dbg !3091

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3092
  store i64 %32, i64* %12, align 8, !dbg !3093
  br label %33, !dbg !3094

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3097, metadata !DIExpression()), !dbg !3098
  %34 = load i64, i64* %10, align 8, !dbg !3099
  %35 = icmp slt i64 %34, 0, !dbg !3099
  br i1 %35, label %36, label %82, !dbg !3099

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3099
  %38 = icmp slt i64 %37, 0, !dbg !3099
  br i1 %38, label %39, label %62, !dbg !3099

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3099

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3099
  %42 = load i64, i64* %10, align 8, !dbg !3099
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3099
  %44 = icmp slt i64 %41, %43, !dbg !3099
  br i1 %44, label %111, label %115, !dbg !3099

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3099

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3099
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3099
  br i1 %48, label %52, label %53, !dbg !3099

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3099
  %51 = icmp slt i64 0, %50, !dbg !3099
  br i1 %51, label %52, label %53, !dbg !3099

52:                                               ; preds = %49, %46
  br label %57, !dbg !3099

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3099
  %55 = sub nsw i64 0, %54, !dbg !3099
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3099
  br label %57, !dbg !3099

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3099
  %59 = load i64, i64* %12, align 8, !dbg !3099
  %60 = sub nsw i64 -1, %59, !dbg !3099
  %61 = icmp sle i64 %58, %60, !dbg !3099
  br i1 %61, label %111, label %115, !dbg !3099

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3099
  %64 = icmp eq i64 %63, -1, !dbg !3099
  br i1 %64, label %65, label %77, !dbg !3099

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3099

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3099
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3099
  %69 = icmp slt i64 0, %68, !dbg !3099
  br i1 %69, label %111, label %115, !dbg !3099

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3099
  %72 = icmp slt i64 0, %71, !dbg !3099
  br i1 %72, label %73, label %115, !dbg !3099

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3099
  %75 = sub nsw i64 %74, 1, !dbg !3099
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3099
  br i1 %76, label %111, label %115, !dbg !3099

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3099
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3099
  %80 = load i64, i64* %12, align 8, !dbg !3099
  %81 = icmp slt i64 %79, %80, !dbg !3099
  br i1 %81, label %111, label %115, !dbg !3099

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3099
  %84 = icmp eq i64 %83, 0, !dbg !3099
  br i1 %84, label %85, label %86, !dbg !3099

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3099

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3099
  %88 = icmp slt i64 %87, 0, !dbg !3099
  br i1 %88, label %89, label %106, !dbg !3099

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3099
  %91 = icmp eq i64 %90, -1, !dbg !3099
  br i1 %91, label %92, label %101, !dbg !3099

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3099

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3099
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3099
  %96 = icmp slt i64 0, %95, !dbg !3099
  br i1 %96, label %111, label %115, !dbg !3099

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3099
  %99 = sub nsw i64 %98, 1, !dbg !3099
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3099
  br i1 %100, label %111, label %115, !dbg !3099

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3099
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3099
  %104 = load i64, i64* %10, align 8, !dbg !3099
  %105 = icmp slt i64 %103, %104, !dbg !3099
  br i1 %105, label %111, label %115, !dbg !3099

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3099
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3099
  %109 = load i64, i64* %12, align 8, !dbg !3099
  %110 = icmp slt i64 %108, %109, !dbg !3099
  br i1 %110, label %111, label %115, !dbg !3099

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3099
  %113 = load i64, i64* %10, align 8, !dbg !3099
  %114 = mul i64 %112, %113, !dbg !3099
  store i64 %114, i64* %13, align 8, !dbg !3099
  br label %119, !dbg !3099

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3099
  %117 = load i64, i64* %10, align 8, !dbg !3099
  %118 = mul i64 %116, %117, !dbg !3099
  store i64 %118, i64* %13, align 8, !dbg !3099
  br label %119, !dbg !3099

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3099
  %121 = icmp ne i32 %120, 0, !dbg !3099
  br i1 %121, label %122, label %123, !dbg !3099

122:                                              ; preds = %119
  br label %129, !dbg !3099

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3100
  %125 = icmp slt i64 %124, 128, !dbg !3101
  %126 = zext i1 %125 to i64, !dbg !3100
  %127 = select i1 %125, i32 128, i32 0, !dbg !3100
  %128 = sext i32 %127 to i64, !dbg !3100
  br label %129, !dbg !3099

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3099
  store i64 %130, i64* %14, align 8, !dbg !3098
  %131 = load i64, i64* %14, align 8, !dbg !3102
  %132 = icmp ne i64 %131, 0, !dbg !3102
  br i1 %132, label %133, label %142, !dbg !3104

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3105
  %135 = load i64, i64* %10, align 8, !dbg !3107
  %136 = sdiv i64 %134, %135, !dbg !3108
  store i64 %136, i64* %12, align 8, !dbg !3109
  %137 = load i64, i64* %14, align 8, !dbg !3110
  %138 = load i64, i64* %14, align 8, !dbg !3111
  %139 = load i64, i64* %10, align 8, !dbg !3112
  %140 = srem i64 %138, %139, !dbg !3113
  %141 = sub nsw i64 %137, %140, !dbg !3114
  store i64 %141, i64* %13, align 8, !dbg !3115
  br label %142, !dbg !3116

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3117
  %144 = icmp ne i8* %143, null, !dbg !3117
  br i1 %144, label %147, label %145, !dbg !3119

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3120
  store i64 0, i64* %146, align 8, !dbg !3121
  br label %147, !dbg !3122

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3123
  %149 = load i64, i64* %11, align 8, !dbg !3125
  %150 = sub nsw i64 %148, %149, !dbg !3126
  %151 = load i64, i64* %8, align 8, !dbg !3127
  %152 = icmp slt i64 %150, %151, !dbg !3128
  br i1 %152, label %153, label %256, !dbg !3129

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3130
  %155 = load i64, i64* %8, align 8, !dbg !3130
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3130
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3130
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3130
  store i64 %158, i64* %12, align 8, !dbg !3130
  br i1 %157, label %255, label %159, !dbg !3131

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3132
  %161 = icmp sle i64 0, %160, !dbg !3133
  br i1 %161, label %162, label %166, !dbg !3134

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3135
  %164 = load i64, i64* %12, align 8, !dbg !3136
  %165 = icmp slt i64 %163, %164, !dbg !3137
  br i1 %165, label %255, label %166, !dbg !3138

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3139
  %168 = icmp slt i64 %167, 0, !dbg !3139
  br i1 %168, label %169, label %215, !dbg !3139

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3139
  %171 = icmp slt i64 %170, 0, !dbg !3139
  br i1 %171, label %172, label %195, !dbg !3139

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3139

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3139
  %175 = load i64, i64* %10, align 8, !dbg !3139
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3139
  %177 = icmp slt i64 %174, %176, !dbg !3139
  br i1 %177, label %244, label %248, !dbg !3139

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3139

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3139
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3139
  br i1 %181, label %185, label %186, !dbg !3139

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3139
  %184 = icmp slt i64 0, %183, !dbg !3139
  br i1 %184, label %185, label %186, !dbg !3139

185:                                              ; preds = %182, %179
  br label %190, !dbg !3139

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3139
  %188 = sub nsw i64 0, %187, !dbg !3139
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3139
  br label %190, !dbg !3139

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3139
  %192 = load i64, i64* %12, align 8, !dbg !3139
  %193 = sub nsw i64 -1, %192, !dbg !3139
  %194 = icmp sle i64 %191, %193, !dbg !3139
  br i1 %194, label %244, label %248, !dbg !3139

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3139
  %197 = icmp eq i64 %196, -1, !dbg !3139
  br i1 %197, label %198, label %210, !dbg !3139

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3139

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3139
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3139
  %202 = icmp slt i64 0, %201, !dbg !3139
  br i1 %202, label %244, label %248, !dbg !3139

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3139
  %205 = icmp slt i64 0, %204, !dbg !3139
  br i1 %205, label %206, label %248, !dbg !3139

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3139
  %208 = sub nsw i64 %207, 1, !dbg !3139
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3139
  br i1 %209, label %244, label %248, !dbg !3139

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3139
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3139
  %213 = load i64, i64* %12, align 8, !dbg !3139
  %214 = icmp slt i64 %212, %213, !dbg !3139
  br i1 %214, label %244, label %248, !dbg !3139

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3139
  %217 = icmp eq i64 %216, 0, !dbg !3139
  br i1 %217, label %218, label %219, !dbg !3139

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3139

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3139
  %221 = icmp slt i64 %220, 0, !dbg !3139
  br i1 %221, label %222, label %239, !dbg !3139

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3139
  %224 = icmp eq i64 %223, -1, !dbg !3139
  br i1 %224, label %225, label %234, !dbg !3139

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3139

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3139
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3139
  %229 = icmp slt i64 0, %228, !dbg !3139
  br i1 %229, label %244, label %248, !dbg !3139

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3139
  %232 = sub nsw i64 %231, 1, !dbg !3139
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3139
  br i1 %233, label %244, label %248, !dbg !3139

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3139
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3139
  %237 = load i64, i64* %10, align 8, !dbg !3139
  %238 = icmp slt i64 %236, %237, !dbg !3139
  br i1 %238, label %244, label %248, !dbg !3139

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3139
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3139
  %242 = load i64, i64* %12, align 8, !dbg !3139
  %243 = icmp slt i64 %241, %242, !dbg !3139
  br i1 %243, label %244, label %248, !dbg !3139

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3139
  %246 = load i64, i64* %10, align 8, !dbg !3139
  %247 = mul i64 %245, %246, !dbg !3139
  store i64 %247, i64* %13, align 8, !dbg !3139
  br label %252, !dbg !3139

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3139
  %250 = load i64, i64* %10, align 8, !dbg !3139
  %251 = mul i64 %249, %250, !dbg !3139
  store i64 %251, i64* %13, align 8, !dbg !3139
  br label %252, !dbg !3139

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3139
  %254 = icmp ne i32 %253, 0, !dbg !3139
  br i1 %254, label %255, label %256, !dbg !3140

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3141
  unreachable, !dbg !3141

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3142
  %258 = load i64, i64* %13, align 8, !dbg !3143
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !3144
  store i8* %259, i8** %6, align 8, !dbg !3145
  %260 = load i64, i64* %12, align 8, !dbg !3146
  %261 = load i64*, i64** %7, align 8, !dbg !3147
  store i64 %260, i64* %261, align 8, !dbg !3148
  %262 = load i8*, i8** %6, align 8, !dbg !3149
  ret i8* %262, !dbg !3150
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3151 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3152, metadata !DIExpression()), !dbg !3153
  %3 = load i64, i64* %2, align 8, !dbg !3154
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3155
  ret i8* %4, !dbg !3156
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3157 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3158, metadata !DIExpression()), !dbg !3159
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3160, metadata !DIExpression()), !dbg !3161
  %5 = load i64, i64* %3, align 8, !dbg !3162
  %6 = load i64, i64* %4, align 8, !dbg !3163
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3164
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3165
  ret i8* %8, !dbg !3166
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3167 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3168, metadata !DIExpression()), !dbg !3169
  %3 = load i64, i64* %2, align 8, !dbg !3170
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3171
  ret i8* %4, !dbg !3172
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3173 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3174, metadata !DIExpression()), !dbg !3175
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3176, metadata !DIExpression()), !dbg !3177
  %5 = load i64, i64* %3, align 8, !dbg !3178
  %6 = load i64, i64* %4, align 8, !dbg !3179
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3180
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3181
  ret i8* %8, !dbg !3182
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3183 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3188, metadata !DIExpression()), !dbg !3189
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3190, metadata !DIExpression()), !dbg !3191
  %5 = load i64, i64* %4, align 8, !dbg !3192
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !3193
  %7 = load i8*, i8** %3, align 8, !dbg !3194
  %8 = load i64, i64* %4, align 8, !dbg !3195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3196
  ret i8* %6, !dbg !3197
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3198 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3201, metadata !DIExpression()), !dbg !3202
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3203, metadata !DIExpression()), !dbg !3204
  %5 = load i64, i64* %4, align 8, !dbg !3205
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !3206
  %7 = load i8*, i8** %3, align 8, !dbg !3207
  %8 = load i64, i64* %4, align 8, !dbg !3208
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3209
  ret i8* %6, !dbg !3210
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3211 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3214, metadata !DIExpression()), !dbg !3215
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3216, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3218, metadata !DIExpression()), !dbg !3219
  %6 = load i64, i64* %4, align 8, !dbg !3220
  %7 = add nsw i64 %6, 1, !dbg !3221
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !3222
  store i8* %8, i8** %5, align 8, !dbg !3219
  %9 = load i8*, i8** %5, align 8, !dbg !3223
  %10 = load i64, i64* %4, align 8, !dbg !3224
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3223
  store i8 0, i8* %11, align 1, !dbg !3225
  %12 = load i8*, i8** %5, align 8, !dbg !3226
  %13 = load i8*, i8** %3, align 8, !dbg !3227
  %14 = load i64, i64* %4, align 8, !dbg !3228
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3229
  ret i8* %12, !dbg !3230
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3231 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3232, metadata !DIExpression()), !dbg !3233
  %3 = load i8*, i8** %2, align 8, !dbg !3234
  %4 = load i8*, i8** %2, align 8, !dbg !3235
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3236
  %6 = add i64 %5, 1, !dbg !3237
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !3238
  ret i8* %7, !dbg !3239
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3240 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3241, metadata !DIExpression()), !dbg !3244
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3244
  store i32 %2, i32* %1, align 4, !dbg !3244
  %3 = load i32, i32* %1, align 4, !dbg !3244
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.132, i64 0, i64 0)) #18, !dbg !3244
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i64 0, i64 0), i8* noundef %4), !dbg !3244
  %5 = load i32, i32* %1, align 4, !dbg !3244
  %6 = icmp ne i32 %5, 0, !dbg !3244
  br i1 %6, label %7, label %9, !dbg !3244

7:                                                ; preds = %0
  unreachable, !dbg !3244

8:                                                ; No predecessors!
  br label %10, !dbg !3244

9:                                                ; preds = %0
  br label %10, !dbg !3244

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3245
  unreachable, !dbg !3245
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3246 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3252, metadata !DIExpression()), !dbg !3253
  %3 = load i32, i32* %2, align 4, !dbg !3254
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3255
  ret i32 %4, !dbg !3256
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3257 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3294, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3296, metadata !DIExpression()), !dbg !3298
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3299
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3300
  %9 = icmp ne i64 %8, 0, !dbg !3301
  %10 = zext i1 %9 to i8, !dbg !3298
  store i8 %10, i8* %4, align 1, !dbg !3298
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3302, metadata !DIExpression()), !dbg !3303
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3304
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3304
  %13 = icmp ne i32 %12, 0, !dbg !3305
  %14 = zext i1 %13 to i8, !dbg !3303
  store i8 %14, i8* %5, align 1, !dbg !3303
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3306, metadata !DIExpression()), !dbg !3307
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3308
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3309
  %17 = icmp ne i32 %16, 0, !dbg !3310
  %18 = zext i1 %17 to i8, !dbg !3307
  store i8 %18, i8* %6, align 1, !dbg !3307
  %19 = load i8, i8* %5, align 1, !dbg !3311
  %20 = trunc i8 %19 to i1, !dbg !3311
  br i1 %20, label %31, label %21, !dbg !3313

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3314
  %23 = trunc i8 %22 to i1, !dbg !3314
  br i1 %23, label %24, label %37, !dbg !3315

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3316
  %26 = trunc i8 %25 to i1, !dbg !3316
  br i1 %26, label %31, label %27, !dbg !3317

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3318
  %29 = load i32, i32* %28, align 4, !dbg !3318
  %30 = icmp ne i32 %29, 9, !dbg !3319
  br i1 %30, label %31, label %37, !dbg !3320

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3321
  %33 = trunc i8 %32 to i1, !dbg !3321
  br i1 %33, label %36, label %34, !dbg !3324

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3325
  store i32 0, i32* %35, align 4, !dbg !3326
  br label %36, !dbg !3325

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3327
  br label %38, !dbg !3327

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3328
  br label %38, !dbg !3328

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3329
  ret i32 %39, !dbg !3329
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3330 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3367, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3369, metadata !DIExpression()), !dbg !3370
  store i32 0, i32* %4, align 4, !dbg !3370
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3371, metadata !DIExpression()), !dbg !3372
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3373
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !3374
  store i32 %8, i32* %5, align 4, !dbg !3372
  %9 = load i32, i32* %5, align 4, !dbg !3375
  %10 = icmp slt i32 %9, 0, !dbg !3377
  br i1 %10, label %11, label %14, !dbg !3378

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3379
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3380
  store i32 %13, i32* %2, align 4, !dbg !3381
  br label %40, !dbg !3381

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3382
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !3382
  %17 = icmp ne i32 %16, 0, !dbg !3382
  br i1 %17, label %18, label %23, !dbg !3384

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3385
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !3386
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !3387
  %22 = icmp ne i64 %21, -1, !dbg !3388
  br i1 %22, label %23, label %30, !dbg !3389

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3390
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !3391
  %26 = icmp ne i32 %25, 0, !dbg !3391
  br i1 %26, label %27, label %30, !dbg !3392

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !3393
  %29 = load i32, i32* %28, align 4, !dbg !3393
  store i32 %29, i32* %4, align 4, !dbg !3394
  br label %30, !dbg !3395

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3396, metadata !DIExpression()), !dbg !3397
  store i32 0, i32* %6, align 4, !dbg !3397
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3398
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !3399
  store i32 %32, i32* %6, align 4, !dbg !3400
  %33 = load i32, i32* %4, align 4, !dbg !3401
  %34 = icmp ne i32 %33, 0, !dbg !3403
  br i1 %34, label %35, label %38, !dbg !3404

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3405
  %37 = call i32* @__errno_location() #21, !dbg !3407
  store i32 %36, i32* %37, align 4, !dbg !3408
  store i32 -1, i32* %6, align 4, !dbg !3409
  br label %38, !dbg !3410

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3411
  store i32 %39, i32* %2, align 4, !dbg !3412
  br label %40, !dbg !3412

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3413
  ret i32 %41, !dbg !3413
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !3414 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3451, metadata !DIExpression()), !dbg !3452
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3453
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3455
  br i1 %5, label %10, label %6, !dbg !3456

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3457
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !3457
  %9 = icmp ne i32 %8, 0, !dbg !3457
  br i1 %9, label %13, label %10, !dbg !3458

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3459
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !3460
  store i32 %12, i32* %2, align 4, !dbg !3461
  br label %17, !dbg !3461

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3462
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !3463
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3464
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !3465
  store i32 %16, i32* %2, align 4, !dbg !3466
  br label %17, !dbg !3466

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3467
  ret i32 %18, !dbg !3467
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !3468 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3471, metadata !DIExpression()), !dbg !3472
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3473
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !3475
  %5 = load i32, i32* %4, align 8, !dbg !3475
  %6 = and i32 %5, 256, !dbg !3476
  %7 = icmp ne i32 %6, 0, !dbg !3476
  br i1 %7, label %8, label %11, !dbg !3477

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3478
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !3479
  br label %11, !dbg !3479

11:                                               ; preds = %8, %1
  ret void, !dbg !3480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !3481 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3519, metadata !DIExpression()), !dbg !3520
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3521, metadata !DIExpression()), !dbg !3522
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3523, metadata !DIExpression()), !dbg !3524
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3525
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !3527
  %11 = load i8*, i8** %10, align 8, !dbg !3527
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3528
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !3529
  %14 = load i8*, i8** %13, align 8, !dbg !3529
  %15 = icmp eq i8* %11, %14, !dbg !3530
  br i1 %15, label %16, label %46, !dbg !3531

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3532
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !3533
  %19 = load i8*, i8** %18, align 8, !dbg !3533
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3534
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !3535
  %22 = load i8*, i8** %21, align 8, !dbg !3535
  %23 = icmp eq i8* %19, %22, !dbg !3536
  br i1 %23, label %24, label %46, !dbg !3537

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3538
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !3539
  %27 = load i8*, i8** %26, align 8, !dbg !3539
  %28 = icmp eq i8* %27, null, !dbg !3540
  br i1 %28, label %29, label %46, !dbg !3541

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3542, metadata !DIExpression()), !dbg !3544
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3545
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !3546
  %32 = load i64, i64* %6, align 8, !dbg !3547
  %33 = load i32, i32* %7, align 4, !dbg !3548
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !3549
  store i64 %34, i64* %8, align 8, !dbg !3544
  %35 = load i64, i64* %8, align 8, !dbg !3550
  %36 = icmp eq i64 %35, -1, !dbg !3552
  br i1 %36, label %37, label %38, !dbg !3553

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3554
  br label %51, !dbg !3554

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3556
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !3557
  %41 = load i32, i32* %40, align 8, !dbg !3558
  %42 = and i32 %41, -17, !dbg !3558
  store i32 %42, i32* %40, align 8, !dbg !3558
  %43 = load i64, i64* %8, align 8, !dbg !3559
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3560
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !3561
  store i64 %43, i64* %45, align 8, !dbg !3562
  store i32 0, i32* %4, align 4, !dbg !3563
  br label %51, !dbg !3563

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3564
  %48 = load i64, i64* %6, align 8, !dbg !3565
  %49 = load i32, i32* %7, align 4, !dbg !3566
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !3567
  store i32 %50, i32* %4, align 4, !dbg !3568
  br label %51, !dbg !3568

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !3569
  ret i32 %52, !dbg !3569
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !3570 {
  %1 = call i32* @__errno_location() #21, !dbg !3573
  store i32 12, i32* %1, align 4, !dbg !3574
  ret i8* null, !dbg !3575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !3576 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3577, metadata !DIExpression()), !dbg !3578
  %3 = load i64, i64* %2, align 8, !dbg !3579
  %4 = icmp ule i64 %3, -1, !dbg !3580
  br i1 %4, label %5, label %8, !dbg !3579

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !3581
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !3582
  br label %10, !dbg !3579

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !3583
  br label %10, !dbg !3579

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !3579
  ret i8* %11, !dbg !3584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3585 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3586, metadata !DIExpression()), !dbg !3587
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3588, metadata !DIExpression()), !dbg !3589
  %5 = load i64, i64* %4, align 8, !dbg !3590
  %6 = icmp ule i64 %5, -1, !dbg !3591
  br i1 %6, label %7, label %11, !dbg !3590

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !3592
  %9 = load i64, i64* %4, align 8, !dbg !3593
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !3594
  br label %13, !dbg !3590

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3595
  br label %13, !dbg !3590

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !3590
  ret i8* %14, !dbg !3596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !3597 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3598, metadata !DIExpression()), !dbg !3599
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3600, metadata !DIExpression()), !dbg !3601
  %6 = load i64, i64* %4, align 8, !dbg !3602
  %7 = icmp ult i64 -1, %6, !dbg !3604
  br i1 %7, label %8, label %14, !dbg !3605

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !3606
  %10 = icmp ne i64 %9, 0, !dbg !3609
  br i1 %10, label %11, label %13, !dbg !3610

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3611
  store i8* %12, i8** %3, align 8, !dbg !3612
  br label %27, !dbg !3612

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !3613
  br label %14, !dbg !3614

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !3615
  %16 = icmp ult i64 -1, %15, !dbg !3617
  br i1 %16, label %17, label %23, !dbg !3618

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !3619
  %19 = icmp ne i64 %18, 0, !dbg !3622
  br i1 %19, label %20, label %22, !dbg !3623

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !3624
  store i8* %21, i8** %3, align 8, !dbg !3625
  br label %27, !dbg !3625

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !3626
  br label %23, !dbg !3627

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !3628
  %25 = load i64, i64* %5, align 8, !dbg !3629
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !3630
  store i8* %26, i8** %3, align 8, !dbg !3631
  br label %27, !dbg !3631

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !3632
  ret i8* %28, !dbg !3632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3633 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3634, metadata !DIExpression()), !dbg !3635
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3636, metadata !DIExpression()), !dbg !3637
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3638, metadata !DIExpression()), !dbg !3639
  %7 = load i64, i64* %5, align 8, !dbg !3640
  %8 = icmp ule i64 %7, -1, !dbg !3641
  br i1 %8, label %9, label %17, !dbg !3642

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !3643
  %11 = icmp ule i64 %10, -1, !dbg !3644
  br i1 %11, label %12, label %17, !dbg !3640

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !3645
  %14 = load i64, i64* %5, align 8, !dbg !3646
  %15 = load i64, i64* %6, align 8, !dbg !3647
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !3648
  br label %19, !dbg !3640

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !3649
  br label %19, !dbg !3640

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !3640
  ret i8* %20, !dbg !3650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !3651 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3656, metadata !DIExpression()), !dbg !3657
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3658, metadata !DIExpression()), !dbg !3659
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3660, metadata !DIExpression()), !dbg !3661
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !3662, metadata !DIExpression()), !dbg !3663
  %11 = load i8*, i8** %7, align 8, !dbg !3664
  %12 = icmp eq i8* %11, null, !dbg !3666
  br i1 %12, label %13, label %14, !dbg !3667

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !3668
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), i8** %7, align 8, !dbg !3670
  store i64 1, i64* %8, align 8, !dbg !3671
  br label %14, !dbg !3672

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3673
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !3675
  br i1 %16, label %17, label %18, !dbg !3676

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !3677
  br label %18, !dbg !3678

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3679, metadata !DIExpression()), !dbg !3680
  %19 = load i32*, i32** %6, align 8, !dbg !3681
  %20 = load i8*, i8** %7, align 8, !dbg !3682
  %21 = load i64, i64* %8, align 8, !dbg !3683
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3684
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !3685
  store i64 %23, i64* %10, align 8, !dbg !3680
  %24 = load i64, i64* %10, align 8, !dbg !3686
  %25 = icmp ult i64 %24, -3, !dbg !3688
  br i1 %25, label %26, label %32, !dbg !3689

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3690
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !3691
  %29 = icmp ne i32 %28, 0, !dbg !3691
  br i1 %29, label %32, label %30, !dbg !3692

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3693
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !3694
  br label %32, !dbg !3694

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !3695
  %34 = icmp eq i64 %33, -3, !dbg !3697
  br i1 %34, label %35, label %36, !dbg !3698

35:                                               ; preds = %32
  call void @abort() #19, !dbg !3699
  unreachable, !dbg !3699

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !3700
  %38 = icmp ule i64 -2, %37, !dbg !3702
  br i1 %38, label %39, label %53, !dbg !3703

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !3704
  %41 = icmp ne i64 %40, 0, !dbg !3705
  br i1 %41, label %42, label %53, !dbg !3706

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !3707
  br i1 %43, label %53, label %44, !dbg !3708

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !3709
  %46 = icmp ne i32* %45, null, !dbg !3712
  br i1 %46, label %47, label %52, !dbg !3713

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !3714
  %49 = load i8, i8* %48, align 1, !dbg !3715
  %50 = zext i8 %49 to i32, !dbg !3716
  %51 = load i32*, i32** %6, align 8, !dbg !3717
  store i32 %50, i32* %51, align 4, !dbg !3718
  br label %52, !dbg !3719

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !3720
  br label %55, !dbg !3720

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !3721
  store i64 %54, i64* %5, align 8, !dbg !3722
  br label %55, !dbg !3722

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !3723
  ret i64 %56, !dbg !3723
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !3724 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !3739, metadata !DIExpression()), !dbg !3740
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !3741
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !3742
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !3742
  ret void, !dbg !3743
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3744 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3747, metadata !DIExpression()), !dbg !3748
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3749, metadata !DIExpression()), !dbg !3750
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3751, metadata !DIExpression()), !dbg !3752
  %7 = load i8*, i8** %4, align 8, !dbg !3753
  %8 = load i8*, i8** %5, align 8, !dbg !3754
  %9 = load i64, i64* %6, align 8, !dbg !3755
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !3756
  %11 = icmp ne i32 %10, 0, !dbg !3757
  %12 = xor i1 %11, true, !dbg !3757
  ret i1 %12, !dbg !3758
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3759 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3761, metadata !DIExpression()), !dbg !3762
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3763, metadata !DIExpression()), !dbg !3764
  %5 = load i8*, i8** %3, align 8, !dbg !3765
  %6 = load i64, i64* %4, align 8, !dbg !3766
  %7 = icmp ne i64 %6, 0, !dbg !3766
  br i1 %7, label %8, label %10, !dbg !3766

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !3767
  br label %11, !dbg !3766

10:                                               ; preds = %2
  br label %11, !dbg !3766

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !3766
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !3768
  ret i8* %13, !dbg !3769
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3770 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3771, metadata !DIExpression()), !dbg !3772
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3773, metadata !DIExpression()), !dbg !3774
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3775, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3777, metadata !DIExpression()), !dbg !3778
  %9 = load i64, i64* %7, align 8, !dbg !3779
  %10 = icmp ult i64 %9, 0, !dbg !3779
  br i1 %10, label %11, label %60, !dbg !3779

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !3779
  %13 = icmp ult i64 %12, 0, !dbg !3779
  br i1 %13, label %14, label %37, !dbg !3779

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !3779

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !3779
  %17 = load i64, i64* %7, align 8, !dbg !3779
  %18 = udiv i64 -1, %17, !dbg !3779
  %19 = icmp ult i64 %16, %18, !dbg !3779
  br i1 %19, label %92, label %96, !dbg !3779

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !3779

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !3779
  %23 = icmp ult i64 %22, 1, !dbg !3779
  br i1 %23, label %27, label %28, !dbg !3779

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !3779
  %26 = icmp ult i64 0, %25, !dbg !3779
  br i1 %26, label %27, label %28, !dbg !3779

27:                                               ; preds = %24, %21
  br label %32, !dbg !3779

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !3779
  %30 = sub i64 0, %29, !dbg !3779
  %31 = udiv i64 -1, %30, !dbg !3779
  br label %32, !dbg !3779

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !3779
  %34 = load i64, i64* %6, align 8, !dbg !3779
  %35 = sub i64 -1, %34, !dbg !3779
  %36 = icmp ule i64 %33, %35, !dbg !3779
  br i1 %36, label %92, label %96, !dbg !3779

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !3779

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !3779

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !3779

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !3779
  %42 = icmp eq i64 %41, -1, !dbg !3779
  br i1 %42, label %43, label %55, !dbg !3779

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !3779

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !3779
  %46 = add i64 %45, 0, !dbg !3779
  %47 = icmp ult i64 0, %46, !dbg !3779
  br i1 %47, label %92, label %96, !dbg !3779

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !3779
  %50 = icmp ult i64 0, %49, !dbg !3779
  br i1 %50, label %51, label %96, !dbg !3779

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !3779
  %53 = sub i64 %52, 1, !dbg !3779
  %54 = icmp ult i64 -1, %53, !dbg !3779
  br i1 %54, label %92, label %96, !dbg !3779

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !3779
  %57 = udiv i64 0, %56, !dbg !3779
  %58 = load i64, i64* %6, align 8, !dbg !3779
  %59 = icmp ult i64 %57, %58, !dbg !3779
  br i1 %59, label %92, label %96, !dbg !3779

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !3779
  %62 = icmp eq i64 %61, 0, !dbg !3779
  br i1 %62, label %63, label %64, !dbg !3779

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !3779

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !3779
  %66 = icmp ult i64 %65, 0, !dbg !3779
  br i1 %66, label %67, label %87, !dbg !3779

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !3779

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !3779

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !3779

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !3779
  %72 = icmp eq i64 %71, -1, !dbg !3779
  br i1 %72, label %73, label %82, !dbg !3779

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !3779

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !3779
  %76 = add i64 %75, 0, !dbg !3779
  %77 = icmp ult i64 0, %76, !dbg !3779
  br i1 %77, label %92, label %96, !dbg !3779

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !3779
  %80 = sub i64 %79, 1, !dbg !3779
  %81 = icmp ult i64 -1, %80, !dbg !3779
  br i1 %81, label %92, label %96, !dbg !3779

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !3779
  %84 = udiv i64 0, %83, !dbg !3779
  %85 = load i64, i64* %7, align 8, !dbg !3779
  %86 = icmp ult i64 %84, %85, !dbg !3779
  br i1 %86, label %92, label %96, !dbg !3779

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !3779
  %89 = udiv i64 -1, %88, !dbg !3779
  %90 = load i64, i64* %6, align 8, !dbg !3779
  %91 = icmp ult i64 %89, %90, !dbg !3779
  br i1 %91, label %92, label %96, !dbg !3779

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !3779
  %94 = load i64, i64* %7, align 8, !dbg !3779
  %95 = mul i64 %93, %94, !dbg !3779
  store i64 %95, i64* %8, align 8, !dbg !3779
  br label %100, !dbg !3779

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !3779
  %98 = load i64, i64* %7, align 8, !dbg !3779
  %99 = mul i64 %97, %98, !dbg !3779
  store i64 %99, i64* %8, align 8, !dbg !3779
  br label %100, !dbg !3779

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !3779
  %102 = icmp ne i32 %101, 0, !dbg !3779
  br i1 %102, label %103, label %105, !dbg !3781

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !3782
  store i32 12, i32* %104, align 4, !dbg !3784
  store i8* null, i8** %4, align 8, !dbg !3785
  br label %109, !dbg !3785

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !3786
  %107 = load i64, i64* %8, align 8, !dbg !3787
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !3788
  store i8* %108, i8** %4, align 8, !dbg !3789
  br label %109, !dbg !3789

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !3790
  ret i8* %110, !dbg !3790
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !3791 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3794, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !3796, metadata !DIExpression()), !dbg !3800
  %5 = load i32, i32* %3, align 4, !dbg !3801
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3803
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !3804
  %8 = icmp ne i32 %7, 0, !dbg !3804
  br i1 %8, label %9, label %10, !dbg !3805

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3806
  br label %18, !dbg !3806

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3807
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.165, i64 0, i64 0)), !dbg !3809
  br i1 %12, label %17, label %13, !dbg !3810

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3811
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.166, i64 0, i64 0)), !dbg !3812
  br i1 %15, label %17, label %16, !dbg !3813

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !3814
  br label %18, !dbg !3814

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !3815
  br label %18, !dbg !3815

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !3816
  ret i1 %19, !dbg !3816
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !3817 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3820, metadata !DIExpression()), !dbg !3821
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3822, metadata !DIExpression()), !dbg !3823
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3824, metadata !DIExpression()), !dbg !3825
  %7 = load i32, i32* %4, align 4, !dbg !3826
  %8 = load i8*, i8** %5, align 8, !dbg !3827
  %9 = load i64, i64* %6, align 8, !dbg !3828
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3829
  ret i32 %10, !dbg !3830
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !3831 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3834, metadata !DIExpression()), !dbg !3835
  %3 = load i32, i32* %2, align 4, !dbg !3836
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !3837
  ret i8* %4, !dbg !3838
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !3839 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3840, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3842, metadata !DIExpression()), !dbg !3843
  %4 = load i32, i32* %2, align 4, !dbg !3844
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !3845
  store i8* %5, i8** %3, align 8, !dbg !3843
  %6 = load i8*, i8** %3, align 8, !dbg !3846
  ret i8* %6, !dbg !3847
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !3848 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3849, metadata !DIExpression()), !dbg !3850
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3851, metadata !DIExpression()), !dbg !3852
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3853, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3855, metadata !DIExpression()), !dbg !3856
  %10 = load i32, i32* %5, align 4, !dbg !3857
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !3858
  store i8* %11, i8** %8, align 8, !dbg !3856
  %12 = load i8*, i8** %8, align 8, !dbg !3859
  %13 = icmp eq i8* %12, null, !dbg !3861
  br i1 %13, label %14, label %21, !dbg !3862

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !3863
  %16 = icmp ugt i64 %15, 0, !dbg !3866
  br i1 %16, label %17, label %20, !dbg !3867

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !3868
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !3868
  store i8 0, i8* %19, align 1, !dbg !3869
  br label %20, !dbg !3868

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !3870
  br label %45, !dbg !3870

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3871, metadata !DIExpression()), !dbg !3873
  %22 = load i8*, i8** %8, align 8, !dbg !3874
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !3875
  store i64 %23, i64* %9, align 8, !dbg !3873
  %24 = load i64, i64* %9, align 8, !dbg !3876
  %25 = load i64, i64* %7, align 8, !dbg !3878
  %26 = icmp ult i64 %24, %25, !dbg !3879
  br i1 %26, label %27, label %32, !dbg !3880

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !3881
  %29 = load i8*, i8** %8, align 8, !dbg !3883
  %30 = load i64, i64* %9, align 8, !dbg !3884
  %31 = add i64 %30, 1, !dbg !3885
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !3886
  store i32 0, i32* %4, align 4, !dbg !3887
  br label %45, !dbg !3887

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !3888
  %34 = icmp ugt i64 %33, 0, !dbg !3891
  br i1 %34, label %35, label %44, !dbg !3892

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !3893
  %37 = load i8*, i8** %8, align 8, !dbg !3895
  %38 = load i64, i64* %7, align 8, !dbg !3896
  %39 = sub i64 %38, 1, !dbg !3897
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !3898
  %40 = load i8*, i8** %6, align 8, !dbg !3899
  %41 = load i64, i64* %7, align 8, !dbg !3900
  %42 = sub i64 %41, 1, !dbg !3901
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !3899
  store i8 0, i8* %43, align 1, !dbg !3902
  br label %44, !dbg !3903

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !3904
  br label %45, !dbg !3904

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !3905
  ret i32 %46, !dbg !3905
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

!llvm.dbg.cu = !{!9, !37, !42, !50, !186, !211, !84, !94, !101, !213, !215, !178, !221, !241, !243, !245, !247, !249, !251, !253, !192, !255, !257, !259, !261, !264, !266, !268}
!llvm.ident = !{!270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270, !270}
!llvm.module.flags = !{!271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !31, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !34)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !28, globals: !33, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/true.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ce7e4fa94fdaa872b3d469aaea1081c9")
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
!28 = !{!29, !30, !31, !32}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !{!0}
!34 = !{}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "Version", scope: !37, file: !38, line: 3, type: !6, isLocal: false, isDefinition: true)
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !39, splitDebugInlining: false, nameTableKind: None)
!38 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!39 = !{!35}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "file_name", scope: !42, file: !43, line: 45, type: !6, isLocal: true, isDefinition: true)
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !44, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!44 = !{!40, !45}
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !42, file: !43, line: 55, type: !47, isLocal: true, isDefinition: true)
!47 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !50, file: !51, line: 66, type: !79, isLocal: false, isDefinition: true)
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !52, globals: !53, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!52 = !{!30}
!53 = !{!54, !73, !48, !75, !77}
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "old_file_name", scope: !56, file: !51, line: 304, type: !6, isLocal: true, isDefinition: true)
!56 = distinct !DISubprogram(name: "verror_at_line", scope: !51, file: !51, line: 298, type: !57, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !34)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !31, !31, !6, !14, !6, !59}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !60, line: 52, baseType: !61)
!60 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !62, line: 32, baseType: !63)
!62 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !64, baseType: !65)
!64 = !DIFile(filename: "lib/error.c", directory: "/src")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !66, size: 256, elements: !67)
!66 = !DINamespace(name: "std", scope: null)
!67 = !{!68, !69, !70, !71, !72}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !65, file: !64, baseType: !30, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !65, file: !64, baseType: !30, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !65, file: !64, baseType: !30, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !65, file: !64, baseType: !31, size: 32, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !65, file: !64, baseType: !31, size: 32, offset: 224)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "old_line_number", scope: !56, file: !51, line: 305, type: !14, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "error_message_count", scope: !50, file: !51, line: 69, type: !14, isLocal: false, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !50, file: !51, line: 295, type: !31, isLocal: false, isDefinition: true)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null}
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "program_name", scope: !84, file: !85, line: 31, type: !6, isLocal: false, isDefinition: true)
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !86, globals: !87, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!86 = !{!29}
!87 = !{!82}
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "utf07FF", scope: !90, file: !91, line: 46, type: !96, isLocal: true, isDefinition: true)
!90 = distinct !DISubprogram(name: "proper_name_lite", scope: !91, file: !91, line: 38, type: !92, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !34)
!91 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!92 = !DISubroutineType(types: !93)
!93 = !{!6, !6, !6}
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !95, splitDebugInlining: false, nameTableKind: None)
!95 = !{!88}
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 2)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !101, file: !102, line: 76, type: !172, isLocal: false, isDefinition: true)
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !103, retainedTypes: !123, globals: !127, splitDebugInlining: false, nameTableKind: None)
!102 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!103 = !{!104, !118, !12}
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !105, line: 42, baseType: !14, size: 32, elements: !106)
!105 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!107 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!108 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!109 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!110 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!111 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!112 = !DIEnumerator(name: "c_quoting_style", value: 5)
!113 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!114 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!115 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!116 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!117 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !105, line: 254, baseType: !14, size: 32, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!121 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!122 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!123 = !{!31, !32, !124}
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 46, baseType: !126)
!125 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!126 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!127 = !{!99, !128, !134, !146, !148, !153, !161, !168, !170}
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !101, file: !102, line: 92, type: !130, isLocal: false, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 320, elements: !132)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!132 = !{!133}
!133 = !DISubrange(count: 10)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !101, file: !102, line: 1040, type: !136, isLocal: false, isDefinition: true)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !102, line: 56, size: 448, elements: !137)
!137 = !{!138, !139, !140, !144, !145}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !136, file: !102, line: 59, baseType: !104, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !102, line: 62, baseType: !31, size: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !136, file: !102, line: 66, baseType: !141, size: 256, offset: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 8)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !136, file: !102, line: 69, baseType: !6, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !136, file: !102, line: 72, baseType: !6, size: 64, offset: 384)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !101, file: !102, line: 107, type: !136, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "slot0", scope: !101, file: !102, line: 831, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 256)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "quote", scope: !155, file: !102, line: 228, type: !158, isLocal: true, isDefinition: true)
!155 = distinct !DISubprogram(name: "gettext_quote", scope: !102, file: !102, line: 197, type: !156, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !101, retainedNodes: !34)
!156 = !DISubroutineType(types: !157)
!157 = !{!6, !6, !104}
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !159)
!159 = !{!98, !160}
!160 = !DISubrange(count: 4)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "slotvec", scope: !101, file: !102, line: 834, type: !163, isLocal: true, isDefinition: true)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !102, line: 823, size: 128, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !164, file: !102, line: 825, baseType: !124, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !164, file: !102, line: 826, baseType: !29, size: 64, offset: 64)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "nslots", scope: !101, file: !102, line: 832, type: !31, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "slotvec0", scope: !101, file: !102, line: 833, type: !164, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 704, elements: !174)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!174 = !{!175}
!175 = !DISubrange(count: 11)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !178, file: !179, line: 26, type: !181, isLocal: false, isDefinition: true)
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !180, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!180 = !{!176}
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 47)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "exit_failure", scope: !186, file: !187, line: 24, type: !189, isLocal: false, isDefinition: true)
!186 = distinct !DICompileUnit(language: DW_LANG_C99, file: !187, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !188, splitDebugInlining: false, nameTableKind: None)
!187 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!188 = !{!184}
!189 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "internal_state", scope: !192, file: !193, line: 97, type: !197, isLocal: true, isDefinition: true)
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !194, globals: !196, splitDebugInlining: false, nameTableKind: None)
!193 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!194 = !{!30, !124, !195}
!195 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!196 = !{!190}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !198, line: 6, baseType: !199)
!198 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !200, line: 21, baseType: !201)
!200 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !200, line: 13, size: 64, elements: !202)
!202 = !{!203, !204}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !201, file: !200, line: 15, baseType: !31, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !201, file: !200, line: 20, baseType: !205, size: 32, offset: 32)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !201, file: !200, line: 16, size: 32, elements: !206)
!206 = !{!207, !208}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !205, file: !200, line: 18, baseType: !14, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !205, file: !200, line: 19, baseType: !209, size: 32)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !210)
!210 = !{!160}
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !217, retainedTypes: !52, splitDebugInlining: false, nameTableKind: None)
!216 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!217 = !{!218}
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !216, line: 40, baseType: !14, size: 32, elements: !219)
!219 = !{!220}
!220 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !240, splitDebugInlining: false, nameTableKind: None)
!222 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!223 = !{!224, !231}
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !225, file: !222, line: 188, baseType: !14, size: 32, elements: !229)
!225 = distinct !DISubprogram(name: "x2nrealloc", scope: !222, file: !222, line: 176, type: !226, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!226 = !DISubroutineType(types: !227)
!227 = !{!30, !30, !228, !124}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!229 = !{!230}
!230 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !232, file: !222, line: 228, baseType: !14, size: 32, elements: !229)
!232 = distinct !DISubprogram(name: "xpalloc", scope: !222, file: !222, line: 223, type: !233, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!233 = !DISubroutineType(types: !234)
!234 = !{!30, !30, !235, !236, !238, !236}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !237, line: 130, baseType: !238)
!237 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !125, line: 35, baseType: !239)
!239 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!240 = !{!29, !30, !47, !239, !126}
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!242 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!244 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !246, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!246 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !52, splitDebugInlining: false, nameTableKind: None)
!250 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !52, splitDebugInlining: false, nameTableKind: None)
!252 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !52, splitDebugInlining: false, nameTableKind: None)
!254 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !263, splitDebugInlining: false, nameTableKind: None)
!262 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!263 = !{!47, !126, !30}
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !52, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!270 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!271 = !{i32 7, !"Dwarf Version", i32 5}
!272 = !{i32 2, !"Debug Info Version", i32 3}
!273 = !{i32 1, !"wchar_size", i32 4}
!274 = !{i32 1, !"branch-target-enforcement", i32 0}
!275 = !{i32 1, !"sign-return-address", i32 0}
!276 = !{i32 1, !"sign-return-address-all", i32 0}
!277 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!278 = !{i32 7, !"PIC Level", i32 2}
!279 = !{i32 7, !"PIE Level", i32 2}
!280 = !{i32 7, !"uwtable", i32 1}
!281 = !{i32 7, !"frame-pointer", i32 1}
!282 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 36, type: !283, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !34)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !31}
!285 = !DILocalVariable(name: "status", arg: 1, scope: !282, file: !10, line: 36, type: !31)
!286 = !DILocation(line: 36, column: 12, scope: !282)
!287 = !DILocation(line: 38, column: 11, scope: !282)
!288 = !DILocation(line: 42, column: 11, scope: !282)
!289 = !DILocation(line: 42, column: 25, scope: !282)
!290 = !DILocation(line: 38, column: 3, scope: !282)
!291 = !DILocation(line: 44, column: 11, scope: !282)
!292 = !DILocation(line: 43, column: 3, scope: !282)
!293 = !DILocation(line: 47, column: 3, scope: !282)
!294 = !DILocation(line: 48, column: 3, scope: !282)
!295 = !DILocation(line: 49, column: 11, scope: !282)
!296 = !DILocation(line: 49, column: 3, scope: !282)
!297 = !DILocation(line: 50, column: 3, scope: !282)
!298 = !DILocation(line: 51, column: 9, scope: !282)
!299 = !DILocation(line: 51, column: 3, scope: !282)
!300 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!301 = !DILocation(line: 573, column: 34, scope: !2)
!302 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!303 = !DILocation(line: 573, column: 55, scope: !2)
!304 = !DILocation(line: 581, column: 7, scope: !305)
!305 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!306 = !DILocation(line: 581, column: 19, scope: !305)
!307 = !DILocation(line: 581, column: 7, scope: !2)
!308 = !DILocalVariable(name: "term", scope: !309, file: !3, line: 585, type: !6)
!309 = distinct !DILexicalBlock(scope: !305, file: !3, line: 582, column: 5)
!310 = !DILocation(line: 585, column: 19, scope: !309)
!311 = !DILocation(line: 585, column: 26, scope: !309)
!312 = !DILocation(line: 586, column: 23, scope: !309)
!313 = !DILocation(line: 586, column: 28, scope: !309)
!314 = !DILocation(line: 586, column: 33, scope: !309)
!315 = !DILocation(line: 586, column: 32, scope: !309)
!316 = !DILocation(line: 586, column: 38, scope: !309)
!317 = !DILocation(line: 586, column: 48, scope: !309)
!318 = !DILocation(line: 586, column: 41, scope: !309)
!319 = !DILocation(line: 586, column: 19, scope: !309)
!320 = !DILocation(line: 587, column: 5, scope: !309)
!321 = !DILocation(line: 588, column: 7, scope: !322)
!322 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!323 = !DILocation(line: 588, column: 7, scope: !2)
!324 = !DILocation(line: 590, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !3, line: 589, column: 5)
!326 = !DILocation(line: 591, column: 7, scope: !325)
!327 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !47)
!328 = !DILocation(line: 594, column: 8, scope: !2)
!329 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!330 = !DILocation(line: 595, column: 15, scope: !2)
!331 = !DILocation(line: 595, column: 28, scope: !2)
!332 = !DILocation(line: 595, column: 45, scope: !2)
!333 = !DILocation(line: 595, column: 37, scope: !2)
!334 = !DILocation(line: 595, column: 35, scope: !2)
!335 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!336 = !DILocation(line: 596, column: 15, scope: !2)
!337 = !DILocation(line: 596, column: 37, scope: !2)
!338 = !DILocation(line: 596, column: 29, scope: !2)
!339 = !DILocation(line: 597, column: 8, scope: !340)
!340 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!341 = !DILocation(line: 597, column: 7, scope: !2)
!342 = !DILocation(line: 599, column: 21, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !3, line: 598, column: 5)
!344 = !DILocation(line: 599, column: 19, scope: !343)
!345 = !DILocation(line: 602, column: 20, scope: !343)
!346 = !DILocation(line: 603, column: 5, scope: !343)
!347 = !DILocation(line: 604, column: 12, scope: !348)
!348 = distinct !DILexicalBlock(scope: !340, file: !3, line: 604, column: 12)
!349 = !DILocation(line: 604, column: 27, scope: !348)
!350 = !DILocation(line: 604, column: 24, scope: !348)
!351 = !DILocation(line: 604, column: 12, scope: !340)
!352 = !DILocalVariable(name: "s", scope: !353, file: !3, line: 608, type: !6)
!353 = distinct !DILexicalBlock(scope: !348, file: !3, line: 605, column: 5)
!354 = !DILocation(line: 608, column: 19, scope: !353)
!355 = !DILocation(line: 608, column: 23, scope: !353)
!356 = !DILocalVariable(name: "spaces", scope: !353, file: !3, line: 609, type: !124)
!357 = !DILocation(line: 609, column: 14, scope: !353)
!358 = !DILocation(line: 610, column: 7, scope: !353)
!359 = !DILocation(line: 610, column: 14, scope: !353)
!360 = !DILocation(line: 610, column: 18, scope: !353)
!361 = !DILocation(line: 610, column: 16, scope: !353)
!362 = !DILocation(line: 610, column: 30, scope: !353)
!363 = !DILocation(line: 610, column: 33, scope: !353)
!364 = !DILocation(line: 610, column: 40, scope: !353)
!365 = !DILocation(line: 0, scope: !353)
!366 = !DILocation(line: 611, column: 21, scope: !353)
!367 = !DILocation(line: 611, column: 20, scope: !353)
!368 = !DILocation(line: 611, column: 19, scope: !353)
!369 = !DILocation(line: 611, column: 16, scope: !353)
!370 = distinct !{!370, !358, !366, !371}
!371 = !{!"llvm.loop.mustprogress"}
!372 = !DILocation(line: 612, column: 11, scope: !373)
!373 = distinct !DILexicalBlock(scope: !353, file: !3, line: 612, column: 11)
!374 = !DILocation(line: 612, column: 18, scope: !373)
!375 = !DILocation(line: 612, column: 11, scope: !353)
!376 = !DILocation(line: 615, column: 25, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !3, line: 613, column: 9)
!378 = !DILocation(line: 615, column: 23, scope: !377)
!379 = !DILocation(line: 616, column: 24, scope: !377)
!380 = !DILocation(line: 617, column: 9, scope: !377)
!381 = !DILocation(line: 618, column: 5, scope: !353)
!382 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !124)
!383 = !DILocation(line: 620, column: 10, scope: !2)
!384 = !DILocation(line: 620, column: 32, scope: !2)
!385 = !DILocation(line: 620, column: 23, scope: !2)
!386 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!387 = !DILocation(line: 625, column: 15, scope: !2)
!388 = !DILocation(line: 625, column: 27, scope: !2)
!389 = !DILocation(line: 625, column: 41, scope: !2)
!390 = !DILocation(line: 625, column: 39, scope: !2)
!391 = !DILocation(line: 626, column: 3, scope: !2)
!392 = !DILocation(line: 626, column: 11, scope: !2)
!393 = !DILocation(line: 626, column: 10, scope: !2)
!394 = !DILocation(line: 626, column: 21, scope: !2)
!395 = !DILocation(line: 626, column: 25, scope: !2)
!396 = !DILocation(line: 626, column: 24, scope: !2)
!397 = !DILocation(line: 626, column: 35, scope: !2)
!398 = !DILocation(line: 0, scope: !2)
!399 = !DILocation(line: 628, column: 12, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !3, line: 628, column: 11)
!401 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!402 = !DILocation(line: 628, column: 11, scope: !400)
!403 = !DILocation(line: 628, column: 22, scope: !400)
!404 = !DILocation(line: 628, column: 29, scope: !400)
!405 = !DILocation(line: 628, column: 34, scope: !400)
!406 = !DILocation(line: 628, column: 44, scope: !400)
!407 = !DILocation(line: 628, column: 32, scope: !400)
!408 = !DILocation(line: 628, column: 49, scope: !400)
!409 = !DILocation(line: 628, column: 11, scope: !401)
!410 = !DILocation(line: 629, column: 22, scope: !400)
!411 = !DILocation(line: 629, column: 9, scope: !400)
!412 = !DILocation(line: 630, column: 11, scope: !413)
!413 = distinct !DILexicalBlock(scope: !401, file: !3, line: 630, column: 11)
!414 = !DILocation(line: 630, column: 11, scope: !401)
!415 = !DILocation(line: 632, column: 16, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 632, column: 15)
!417 = distinct !DILexicalBlock(scope: !413, file: !3, line: 631, column: 9)
!418 = !DILocation(line: 632, column: 15, scope: !416)
!419 = !DILocation(line: 632, column: 26, scope: !416)
!420 = !DILocation(line: 632, column: 34, scope: !416)
!421 = !DILocation(line: 632, column: 37, scope: !416)
!422 = !DILocation(line: 632, column: 15, scope: !417)
!423 = !DILocation(line: 633, column: 13, scope: !416)
!424 = !DILocation(line: 636, column: 16, scope: !425)
!425 = distinct !DILexicalBlock(scope: !417, file: !3, line: 636, column: 15)
!426 = !DILocation(line: 636, column: 29, scope: !425)
!427 = !DILocation(line: 636, column: 34, scope: !425)
!428 = !DILocation(line: 636, column: 44, scope: !425)
!429 = !DILocation(line: 636, column: 32, scope: !425)
!430 = !DILocation(line: 636, column: 49, scope: !425)
!431 = !DILocation(line: 636, column: 15, scope: !417)
!432 = !DILocation(line: 637, column: 13, scope: !425)
!433 = !DILocation(line: 638, column: 9, scope: !417)
!434 = !DILocation(line: 640, column: 16, scope: !401)
!435 = distinct !{!435, !391, !436, !371}
!436 = !DILocation(line: 641, column: 5, scope: !2)
!437 = !DILocation(line: 644, column: 3, scope: !2)
!438 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!439 = !DILocation(line: 648, column: 15, scope: !2)
!440 = !DILocation(line: 648, column: 38, scope: !2)
!441 = !DILocation(line: 648, column: 31, scope: !2)
!442 = !DILocation(line: 649, column: 38, scope: !2)
!443 = !DILocation(line: 649, column: 31, scope: !2)
!444 = !DILocation(line: 650, column: 38, scope: !2)
!445 = !DILocation(line: 650, column: 31, scope: !2)
!446 = !DILocation(line: 651, column: 38, scope: !2)
!447 = !DILocation(line: 651, column: 31, scope: !2)
!448 = !DILocation(line: 652, column: 38, scope: !2)
!449 = !DILocation(line: 652, column: 31, scope: !2)
!450 = !DILocation(line: 653, column: 38, scope: !2)
!451 = !DILocation(line: 653, column: 31, scope: !2)
!452 = !DILocation(line: 654, column: 38, scope: !2)
!453 = !DILocation(line: 654, column: 31, scope: !2)
!454 = !DILocation(line: 655, column: 38, scope: !2)
!455 = !DILocation(line: 655, column: 31, scope: !2)
!456 = !DILocation(line: 656, column: 38, scope: !2)
!457 = !DILocation(line: 656, column: 31, scope: !2)
!458 = !DILocation(line: 657, column: 38, scope: !2)
!459 = !DILocation(line: 657, column: 31, scope: !2)
!460 = !DILocation(line: 658, column: 31, scope: !2)
!461 = !DILocation(line: 663, column: 7, scope: !462)
!462 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!463 = !DILocation(line: 664, column: 7, scope: !462)
!464 = !DILocation(line: 664, column: 10, scope: !462)
!465 = !DILocation(line: 663, column: 7, scope: !2)
!466 = !DILocation(line: 670, column: 15, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !3, line: 665, column: 5)
!468 = !DILocation(line: 670, column: 28, scope: !467)
!469 = !DILocation(line: 670, column: 47, scope: !467)
!470 = !DILocation(line: 670, column: 41, scope: !467)
!471 = !DILocation(line: 670, column: 59, scope: !467)
!472 = !DILocation(line: 669, column: 7, scope: !467)
!473 = !DILocation(line: 671, column: 5, scope: !467)
!474 = !DILocation(line: 676, column: 48, scope: !475)
!475 = distinct !DILexicalBlock(scope: !462, file: !3, line: 673, column: 5)
!476 = !DILocation(line: 677, column: 21, scope: !475)
!477 = !DILocation(line: 677, column: 15, scope: !475)
!478 = !DILocation(line: 677, column: 33, scope: !475)
!479 = !DILocation(line: 676, column: 7, scope: !475)
!480 = !DILocation(line: 679, column: 3, scope: !2)
!481 = !DILocation(line: 683, column: 3, scope: !2)
!482 = !DILocation(line: 686, column: 3, scope: !2)
!483 = !DILocation(line: 688, column: 3, scope: !2)
!484 = !DILocation(line: 691, column: 3, scope: !2)
!485 = !DILocation(line: 695, column: 3, scope: !2)
!486 = !DILocation(line: 696, column: 1, scope: !2)
!487 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !488, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !34)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !6}
!490 = !DILocalVariable(name: "program", arg: 1, scope: !487, file: !3, line: 836, type: !6)
!491 = !DILocation(line: 836, column: 34, scope: !487)
!492 = !DILocalVariable(name: "infomap", scope: !487, file: !3, line: 838, type: !493)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 896, elements: !499)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !487, file: !3, line: 838, size: 128, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !495, file: !3, line: 838, baseType: !6, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !495, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!499 = !{!500}
!500 = !DISubrange(count: 7)
!501 = !DILocation(line: 838, column: 67, scope: !487)
!502 = !DILocalVariable(name: "node", scope: !487, file: !3, line: 848, type: !6)
!503 = !DILocation(line: 848, column: 15, scope: !487)
!504 = !DILocation(line: 848, column: 22, scope: !487)
!505 = !DILocalVariable(name: "map_prog", scope: !487, file: !3, line: 849, type: !506)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!507 = !DILocation(line: 849, column: 25, scope: !487)
!508 = !DILocation(line: 849, column: 36, scope: !487)
!509 = !DILocation(line: 851, column: 3, scope: !487)
!510 = !DILocation(line: 851, column: 10, scope: !487)
!511 = !DILocation(line: 851, column: 20, scope: !487)
!512 = !DILocation(line: 851, column: 28, scope: !487)
!513 = !DILocation(line: 851, column: 40, scope: !487)
!514 = !DILocation(line: 851, column: 49, scope: !487)
!515 = !DILocation(line: 851, column: 59, scope: !487)
!516 = !DILocation(line: 851, column: 33, scope: !487)
!517 = !DILocation(line: 851, column: 31, scope: !487)
!518 = !DILocation(line: 0, scope: !487)
!519 = !DILocation(line: 852, column: 13, scope: !487)
!520 = distinct !{!520, !509, !519, !371}
!521 = !DILocation(line: 854, column: 7, scope: !522)
!522 = distinct !DILexicalBlock(scope: !487, file: !3, line: 854, column: 7)
!523 = !DILocation(line: 854, column: 17, scope: !522)
!524 = !DILocation(line: 854, column: 7, scope: !487)
!525 = !DILocation(line: 855, column: 12, scope: !522)
!526 = !DILocation(line: 855, column: 22, scope: !522)
!527 = !DILocation(line: 855, column: 10, scope: !522)
!528 = !DILocation(line: 855, column: 5, scope: !522)
!529 = !DILocation(line: 857, column: 3, scope: !487)
!530 = !DILocalVariable(name: "lc_messages", scope: !487, file: !3, line: 861, type: !6)
!531 = !DILocation(line: 861, column: 15, scope: !487)
!532 = !DILocation(line: 861, column: 29, scope: !487)
!533 = !DILocation(line: 862, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !487, file: !3, line: 862, column: 7)
!535 = !DILocation(line: 862, column: 19, scope: !534)
!536 = !DILocation(line: 862, column: 22, scope: !534)
!537 = !DILocation(line: 862, column: 7, scope: !487)
!538 = !DILocation(line: 868, column: 7, scope: !539)
!539 = distinct !DILexicalBlock(scope: !534, file: !3, line: 863, column: 5)
!540 = !DILocation(line: 870, column: 5, scope: !539)
!541 = !DILocalVariable(name: "url_program", scope: !487, file: !3, line: 874, type: !6)
!542 = !DILocation(line: 874, column: 15, scope: !487)
!543 = !DILocation(line: 874, column: 36, scope: !487)
!544 = !DILocation(line: 874, column: 29, scope: !487)
!545 = !DILocation(line: 874, column: 61, scope: !487)
!546 = !DILocation(line: 875, column: 11, scope: !487)
!547 = !DILocation(line: 876, column: 24, scope: !487)
!548 = !DILocation(line: 875, column: 3, scope: !487)
!549 = !DILocation(line: 877, column: 11, scope: !487)
!550 = !DILocation(line: 878, column: 11, scope: !487)
!551 = !DILocation(line: 878, column: 17, scope: !487)
!552 = !DILocation(line: 878, column: 25, scope: !487)
!553 = !DILocation(line: 878, column: 22, scope: !487)
!554 = !DILocation(line: 877, column: 3, scope: !487)
!555 = !DILocation(line: 879, column: 1, scope: !487)
!556 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 55, type: !557, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !34)
!557 = !DISubroutineType(types: !558)
!558 = !{!31, !31, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!560 = !DILocalVariable(name: "argc", arg: 1, scope: !556, file: !10, line: 55, type: !31)
!561 = !DILocation(line: 55, column: 11, scope: !556)
!562 = !DILocalVariable(name: "argv", arg: 2, scope: !556, file: !10, line: 55, type: !559)
!563 = !DILocation(line: 55, column: 24, scope: !556)
!564 = !DILocation(line: 59, column: 7, scope: !565)
!565 = distinct !DILexicalBlock(scope: !556, file: !10, line: 59, column: 7)
!566 = !DILocation(line: 59, column: 12, scope: !565)
!567 = !DILocation(line: 59, column: 7, scope: !556)
!568 = !DILocation(line: 62, column: 25, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !10, line: 60, column: 5)
!570 = !DILocation(line: 62, column: 7, scope: !569)
!571 = !DILocation(line: 63, column: 7, scope: !569)
!572 = !DILocation(line: 64, column: 7, scope: !569)
!573 = !DILocation(line: 65, column: 7, scope: !569)
!574 = !DILocation(line: 69, column: 7, scope: !569)
!575 = !DILocation(line: 71, column: 18, scope: !576)
!576 = distinct !DILexicalBlock(scope: !569, file: !10, line: 71, column: 11)
!577 = !DILocation(line: 71, column: 11, scope: !576)
!578 = !DILocation(line: 71, column: 11, scope: !569)
!579 = !DILocation(line: 72, column: 9, scope: !576)
!580 = !DILocation(line: 74, column: 18, scope: !581)
!581 = distinct !DILexicalBlock(scope: !569, file: !10, line: 74, column: 11)
!582 = !DILocation(line: 74, column: 11, scope: !581)
!583 = !DILocation(line: 74, column: 11, scope: !569)
!584 = !DILocation(line: 75, column: 22, scope: !581)
!585 = !DILocation(line: 75, column: 58, scope: !581)
!586 = !DILocation(line: 75, column: 67, scope: !581)
!587 = !DILocation(line: 75, column: 9, scope: !581)
!588 = !DILocation(line: 77, column: 5, scope: !569)
!589 = !DILocation(line: 79, column: 3, scope: !556)
!590 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !43, file: !43, line: 50, type: !488, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !34)
!591 = !DILocalVariable(name: "file", arg: 1, scope: !590, file: !43, line: 50, type: !6)
!592 = !DILocation(line: 50, column: 41, scope: !590)
!593 = !DILocation(line: 52, column: 15, scope: !590)
!594 = !DILocation(line: 52, column: 13, scope: !590)
!595 = !DILocation(line: 53, column: 1, scope: !590)
!596 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !43, file: !43, line: 87, type: !597, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !34)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !47}
!599 = !DILocalVariable(name: "ignore", arg: 1, scope: !596, file: !43, line: 87, type: !47)
!600 = !DILocation(line: 87, column: 37, scope: !596)
!601 = !DILocation(line: 89, column: 18, scope: !596)
!602 = !DILocation(line: 89, column: 16, scope: !596)
!603 = !DILocation(line: 90, column: 1, scope: !596)
!604 = distinct !DISubprogram(name: "close_stdout", scope: !43, file: !43, line: 116, type: !80, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !34)
!605 = !DILocation(line: 118, column: 21, scope: !606)
!606 = distinct !DILexicalBlock(scope: !604, file: !43, line: 118, column: 7)
!607 = !DILocation(line: 118, column: 7, scope: !606)
!608 = !DILocation(line: 118, column: 29, scope: !606)
!609 = !DILocation(line: 119, column: 7, scope: !606)
!610 = !DILocation(line: 119, column: 12, scope: !606)
!611 = !DILocation(line: 119, column: 25, scope: !606)
!612 = !DILocation(line: 119, column: 28, scope: !606)
!613 = !DILocation(line: 119, column: 34, scope: !606)
!614 = !DILocation(line: 118, column: 7, scope: !604)
!615 = !DILocalVariable(name: "write_error", scope: !616, file: !43, line: 121, type: !6)
!616 = distinct !DILexicalBlock(scope: !606, file: !43, line: 120, column: 5)
!617 = !DILocation(line: 121, column: 19, scope: !616)
!618 = !DILocation(line: 121, column: 33, scope: !616)
!619 = !DILocation(line: 122, column: 11, scope: !620)
!620 = distinct !DILexicalBlock(scope: !616, file: !43, line: 122, column: 11)
!621 = !DILocation(line: 122, column: 11, scope: !616)
!622 = !DILocation(line: 123, column: 9, scope: !620)
!623 = !DILocation(line: 126, column: 9, scope: !620)
!624 = !DILocation(line: 128, column: 14, scope: !616)
!625 = !DILocation(line: 128, column: 7, scope: !616)
!626 = !DILocation(line: 133, column: 42, scope: !627)
!627 = distinct !DILexicalBlock(scope: !604, file: !43, line: 133, column: 7)
!628 = !DILocation(line: 133, column: 28, scope: !627)
!629 = !DILocation(line: 133, column: 50, scope: !627)
!630 = !DILocation(line: 133, column: 7, scope: !604)
!631 = !DILocation(line: 134, column: 12, scope: !627)
!632 = !DILocation(line: 134, column: 5, scope: !627)
!633 = !DILocation(line: 135, column: 1, scope: !604)
!634 = distinct !DISubprogram(name: "verror", scope: !51, file: !51, line: 251, type: !635, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !34)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !31, !31, !6, !59}
!637 = !DILocalVariable(name: "status", arg: 1, scope: !634, file: !51, line: 251, type: !31)
!638 = !DILocation(line: 251, column: 1, scope: !634)
!639 = !DILocalVariable(name: "errnum", arg: 2, scope: !634, file: !51, line: 251, type: !31)
!640 = !DILocalVariable(name: "message", arg: 3, scope: !634, file: !51, line: 251, type: !6)
!641 = !DILocalVariable(name: "args", arg: 4, scope: !634, file: !51, line: 251, type: !59)
!642 = !DILocation(line: 261, column: 3, scope: !634)
!643 = !DILocation(line: 265, column: 7, scope: !644)
!644 = distinct !DILexicalBlock(scope: !634, file: !51, line: 265, column: 7)
!645 = !DILocation(line: 265, column: 7, scope: !634)
!646 = !DILocation(line: 266, column: 7, scope: !644)
!647 = !DILocation(line: 266, column: 5, scope: !644)
!648 = !DILocation(line: 272, column: 16, scope: !649)
!649 = distinct !DILexicalBlock(scope: !644, file: !51, line: 268, column: 5)
!650 = !DILocation(line: 272, column: 32, scope: !649)
!651 = !DILocation(line: 272, column: 7, scope: !649)
!652 = !DILocation(line: 276, column: 3, scope: !634)
!653 = !DILocation(line: 282, column: 1, scope: !634)
!654 = distinct !DISubprogram(name: "flush_stdout", scope: !51, file: !51, line: 163, type: !80, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !34)
!655 = !DILocalVariable(name: "stdout_fd", scope: !654, file: !51, line: 166, type: !31)
!656 = !DILocation(line: 166, column: 7, scope: !654)
!657 = !DILocation(line: 172, column: 13, scope: !654)
!658 = !DILocation(line: 182, column: 12, scope: !659)
!659 = distinct !DILexicalBlock(scope: !654, file: !51, line: 182, column: 7)
!660 = !DILocation(line: 182, column: 9, scope: !659)
!661 = !DILocation(line: 182, column: 22, scope: !659)
!662 = !DILocation(line: 182, column: 34, scope: !659)
!663 = !DILocation(line: 182, column: 25, scope: !659)
!664 = !DILocation(line: 182, column: 7, scope: !654)
!665 = !DILocation(line: 184, column: 5, scope: !659)
!666 = !DILocation(line: 185, column: 1, scope: !654)
!667 = distinct !DISubprogram(name: "error_tail", scope: !51, file: !51, line: 219, type: !635, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !34)
!668 = !DILocalVariable(name: "status", arg: 1, scope: !667, file: !51, line: 219, type: !31)
!669 = !DILocation(line: 219, column: 1, scope: !667)
!670 = !DILocalVariable(name: "errnum", arg: 2, scope: !667, file: !51, line: 219, type: !31)
!671 = !DILocalVariable(name: "message", arg: 3, scope: !667, file: !51, line: 219, type: !6)
!672 = !DILocalVariable(name: "args", arg: 4, scope: !667, file: !51, line: 219, type: !59)
!673 = !DILocation(line: 229, column: 13, scope: !667)
!674 = !DILocation(line: 229, column: 21, scope: !667)
!675 = !DILocation(line: 229, column: 3, scope: !667)
!676 = !DILocation(line: 232, column: 3, scope: !667)
!677 = !DILocation(line: 233, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !667, file: !51, line: 233, column: 7)
!679 = !DILocation(line: 233, column: 7, scope: !667)
!680 = !DILocation(line: 234, column: 26, scope: !678)
!681 = !DILocation(line: 234, column: 5, scope: !678)
!682 = !DILocation(line: 238, column: 3, scope: !667)
!683 = !DILocation(line: 240, column: 3, scope: !667)
!684 = !DILocation(line: 241, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !667, file: !51, line: 241, column: 7)
!686 = !DILocation(line: 241, column: 7, scope: !667)
!687 = !DILocation(line: 242, column: 11, scope: !685)
!688 = !DILocation(line: 242, column: 5, scope: !685)
!689 = !DILocation(line: 243, column: 1, scope: !667)
!690 = distinct !DISubprogram(name: "print_errno_message", scope: !51, file: !51, line: 188, type: !283, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !34)
!691 = !DILocalVariable(name: "errnum", arg: 1, scope: !690, file: !51, line: 188, type: !31)
!692 = !DILocation(line: 188, column: 26, scope: !690)
!693 = !DILocalVariable(name: "s", scope: !690, file: !51, line: 190, type: !6)
!694 = !DILocation(line: 190, column: 15, scope: !690)
!695 = !DILocalVariable(name: "errbuf", scope: !690, file: !51, line: 193, type: !696)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 1024)
!699 = !DILocation(line: 193, column: 8, scope: !690)
!700 = !DILocation(line: 195, column: 21, scope: !690)
!701 = !DILocation(line: 195, column: 29, scope: !690)
!702 = !DILocation(line: 195, column: 7, scope: !690)
!703 = !DILocation(line: 195, column: 5, scope: !690)
!704 = !DILocation(line: 207, column: 9, scope: !705)
!705 = distinct !DILexicalBlock(scope: !690, file: !51, line: 207, column: 7)
!706 = !DILocation(line: 207, column: 7, scope: !690)
!707 = !DILocation(line: 208, column: 9, scope: !705)
!708 = !DILocation(line: 208, column: 7, scope: !705)
!709 = !DILocation(line: 208, column: 5, scope: !705)
!710 = !DILocation(line: 214, column: 12, scope: !690)
!711 = !DILocation(line: 214, column: 28, scope: !690)
!712 = !DILocation(line: 214, column: 3, scope: !690)
!713 = !DILocation(line: 216, column: 1, scope: !690)
!714 = distinct !DISubprogram(name: "is_open", scope: !51, file: !51, line: 145, type: !715, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !34)
!715 = !DISubroutineType(types: !716)
!716 = !{!31, !31}
!717 = !DILocalVariable(name: "fd", arg: 1, scope: !714, file: !51, line: 145, type: !31)
!718 = !DILocation(line: 145, column: 14, scope: !714)
!719 = !DILocation(line: 157, column: 22, scope: !714)
!720 = !DILocation(line: 157, column: 15, scope: !714)
!721 = !DILocation(line: 157, column: 12, scope: !714)
!722 = !DILocation(line: 157, column: 3, scope: !714)
!723 = distinct !DISubprogram(name: "error", scope: !51, file: !51, line: 285, type: !724, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !34)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !31, !31, !6, null}
!726 = !DILocalVariable(name: "status", arg: 1, scope: !723, file: !51, line: 285, type: !31)
!727 = !DILocation(line: 285, column: 12, scope: !723)
!728 = !DILocalVariable(name: "errnum", arg: 2, scope: !723, file: !51, line: 285, type: !31)
!729 = !DILocation(line: 285, column: 24, scope: !723)
!730 = !DILocalVariable(name: "message", arg: 3, scope: !723, file: !51, line: 285, type: !6)
!731 = !DILocation(line: 285, column: 44, scope: !723)
!732 = !DILocalVariable(name: "ap", scope: !723, file: !51, line: 287, type: !59)
!733 = !DILocation(line: 287, column: 11, scope: !723)
!734 = !DILocation(line: 288, column: 3, scope: !723)
!735 = !DILocation(line: 289, column: 3, scope: !723)
!736 = !DILocation(line: 290, column: 3, scope: !723)
!737 = !DILocation(line: 291, column: 1, scope: !723)
!738 = !DILocalVariable(name: "status", arg: 1, scope: !56, file: !51, line: 298, type: !31)
!739 = !DILocation(line: 298, column: 1, scope: !56)
!740 = !DILocalVariable(name: "errnum", arg: 2, scope: !56, file: !51, line: 298, type: !31)
!741 = !DILocalVariable(name: "file_name", arg: 3, scope: !56, file: !51, line: 298, type: !6)
!742 = !DILocalVariable(name: "line_number", arg: 4, scope: !56, file: !51, line: 298, type: !14)
!743 = !DILocalVariable(name: "message", arg: 5, scope: !56, file: !51, line: 298, type: !6)
!744 = !DILocalVariable(name: "args", arg: 6, scope: !56, file: !51, line: 298, type: !59)
!745 = !DILocation(line: 302, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !56, file: !51, line: 302, column: 7)
!747 = !DILocation(line: 302, column: 7, scope: !56)
!748 = !DILocation(line: 307, column: 11, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !51, line: 307, column: 11)
!750 = distinct !DILexicalBlock(scope: !746, file: !51, line: 303, column: 5)
!751 = !DILocation(line: 307, column: 30, scope: !749)
!752 = !DILocation(line: 307, column: 27, scope: !749)
!753 = !DILocation(line: 308, column: 11, scope: !749)
!754 = !DILocation(line: 308, column: 15, scope: !749)
!755 = !DILocation(line: 308, column: 28, scope: !749)
!756 = !DILocation(line: 308, column: 25, scope: !749)
!757 = !DILocation(line: 309, column: 15, scope: !749)
!758 = !DILocation(line: 309, column: 19, scope: !749)
!759 = !DILocation(line: 309, column: 33, scope: !749)
!760 = !DILocation(line: 310, column: 19, scope: !749)
!761 = !DILocation(line: 310, column: 22, scope: !749)
!762 = !DILocation(line: 310, column: 32, scope: !749)
!763 = !DILocation(line: 311, column: 19, scope: !749)
!764 = !DILocation(line: 311, column: 30, scope: !749)
!765 = !DILocation(line: 311, column: 45, scope: !749)
!766 = !DILocation(line: 311, column: 22, scope: !749)
!767 = !DILocation(line: 311, column: 56, scope: !749)
!768 = !DILocation(line: 307, column: 11, scope: !750)
!769 = !DILocation(line: 314, column: 9, scope: !749)
!770 = !DILocation(line: 316, column: 23, scope: !750)
!771 = !DILocation(line: 316, column: 21, scope: !750)
!772 = !DILocation(line: 317, column: 25, scope: !750)
!773 = !DILocation(line: 317, column: 23, scope: !750)
!774 = !DILocation(line: 318, column: 5, scope: !750)
!775 = !DILocation(line: 327, column: 3, scope: !56)
!776 = !DILocation(line: 331, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !56, file: !51, line: 331, column: 7)
!778 = !DILocation(line: 331, column: 7, scope: !56)
!779 = !DILocation(line: 332, column: 7, scope: !777)
!780 = !DILocation(line: 332, column: 5, scope: !777)
!781 = !DILocation(line: 338, column: 16, scope: !782)
!782 = distinct !DILexicalBlock(scope: !777, file: !51, line: 334, column: 5)
!783 = !DILocation(line: 338, column: 31, scope: !782)
!784 = !DILocation(line: 338, column: 7, scope: !782)
!785 = !DILocation(line: 346, column: 12, scope: !56)
!786 = !DILocation(line: 346, column: 20, scope: !56)
!787 = !DILocation(line: 346, column: 30, scope: !56)
!788 = !DILocation(line: 347, column: 12, scope: !56)
!789 = !DILocation(line: 347, column: 23, scope: !56)
!790 = !DILocation(line: 346, column: 3, scope: !56)
!791 = !DILocation(line: 350, column: 3, scope: !56)
!792 = !DILocation(line: 356, column: 1, scope: !56)
!793 = distinct !DISubprogram(name: "error_at_line", scope: !51, file: !51, line: 359, type: !794, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !34)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !31, !31, !6, !14, !6, null}
!796 = !DILocalVariable(name: "status", arg: 1, scope: !793, file: !51, line: 359, type: !31)
!797 = !DILocation(line: 359, column: 20, scope: !793)
!798 = !DILocalVariable(name: "errnum", arg: 2, scope: !793, file: !51, line: 359, type: !31)
!799 = !DILocation(line: 359, column: 32, scope: !793)
!800 = !DILocalVariable(name: "file_name", arg: 3, scope: !793, file: !51, line: 359, type: !6)
!801 = !DILocation(line: 359, column: 52, scope: !793)
!802 = !DILocalVariable(name: "line_number", arg: 4, scope: !793, file: !51, line: 360, type: !14)
!803 = !DILocation(line: 360, column: 29, scope: !793)
!804 = !DILocalVariable(name: "message", arg: 5, scope: !793, file: !51, line: 360, type: !6)
!805 = !DILocation(line: 360, column: 54, scope: !793)
!806 = !DILocalVariable(name: "ap", scope: !793, file: !51, line: 362, type: !59)
!807 = !DILocation(line: 362, column: 11, scope: !793)
!808 = !DILocation(line: 363, column: 3, scope: !793)
!809 = !DILocation(line: 364, column: 3, scope: !793)
!810 = !DILocation(line: 366, column: 3, scope: !793)
!811 = !DILocation(line: 367, column: 1, scope: !793)
!812 = distinct !DISubprogram(name: "getprogname", scope: !212, file: !212, line: 54, type: !813, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !211, retainedNodes: !34)
!813 = !DISubroutineType(types: !814)
!814 = !{!6}
!815 = !DILocation(line: 58, column: 10, scope: !812)
!816 = !DILocation(line: 58, column: 3, scope: !812)
!817 = distinct !DISubprogram(name: "set_program_name", scope: !85, file: !85, line: 37, type: !488, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !34)
!818 = !DILocalVariable(name: "argv0", arg: 1, scope: !817, file: !85, line: 37, type: !6)
!819 = !DILocation(line: 37, column: 31, scope: !817)
!820 = !DILocalVariable(name: "slash", scope: !817, file: !85, line: 44, type: !6)
!821 = !DILocation(line: 44, column: 15, scope: !817)
!822 = !DILocation(line: 44, column: 32, scope: !817)
!823 = !DILocation(line: 44, column: 23, scope: !817)
!824 = !DILocalVariable(name: "base", scope: !817, file: !85, line: 45, type: !6)
!825 = !DILocation(line: 45, column: 15, scope: !817)
!826 = !DILocation(line: 45, column: 22, scope: !817)
!827 = !DILocation(line: 45, column: 30, scope: !817)
!828 = !DILocation(line: 45, column: 36, scope: !817)
!829 = !DILocation(line: 45, column: 42, scope: !817)
!830 = !DILocation(line: 46, column: 12, scope: !831)
!831 = distinct !DILexicalBlock(scope: !817, file: !85, line: 46, column: 7)
!832 = !DILocation(line: 46, column: 19, scope: !831)
!833 = !DILocation(line: 46, column: 17, scope: !831)
!834 = !DILocation(line: 46, column: 9, scope: !831)
!835 = !DILocation(line: 46, column: 25, scope: !831)
!836 = !DILocation(line: 46, column: 35, scope: !831)
!837 = !DILocation(line: 46, column: 40, scope: !831)
!838 = !DILocation(line: 46, column: 28, scope: !831)
!839 = !DILocation(line: 46, column: 7, scope: !817)
!840 = !DILocation(line: 48, column: 15, scope: !841)
!841 = distinct !DILexicalBlock(scope: !831, file: !85, line: 47, column: 5)
!842 = !DILocation(line: 48, column: 13, scope: !841)
!843 = !DILocation(line: 49, column: 20, scope: !844)
!844 = distinct !DILexicalBlock(scope: !841, file: !85, line: 49, column: 11)
!845 = !DILocation(line: 49, column: 11, scope: !844)
!846 = !DILocation(line: 49, column: 36, scope: !844)
!847 = !DILocation(line: 49, column: 11, scope: !841)
!848 = !DILocation(line: 51, column: 16, scope: !849)
!849 = distinct !DILexicalBlock(scope: !844, file: !85, line: 50, column: 9)
!850 = !DILocation(line: 52, column: 19, scope: !849)
!851 = !DILocation(line: 52, column: 17, scope: !849)
!852 = !DILocation(line: 53, column: 9, scope: !849)
!853 = !DILocation(line: 54, column: 5, scope: !841)
!854 = !DILocation(line: 65, column: 18, scope: !817)
!855 = !DILocation(line: 65, column: 16, scope: !817)
!856 = !DILocation(line: 71, column: 38, scope: !817)
!857 = !DILocation(line: 71, column: 27, scope: !817)
!858 = !DILocation(line: 74, column: 44, scope: !817)
!859 = !DILocation(line: 74, column: 33, scope: !817)
!860 = !DILocation(line: 76, column: 1, scope: !817)
!861 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !90, file: !91, line: 38, type: !6)
!862 = !DILocation(line: 38, column: 31, scope: !90)
!863 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !90, file: !91, line: 38, type: !6)
!864 = !DILocation(line: 38, column: 66, scope: !90)
!865 = !DILocalVariable(name: "translation", scope: !90, file: !91, line: 40, type: !6)
!866 = !DILocation(line: 40, column: 15, scope: !90)
!867 = !DILocation(line: 40, column: 38, scope: !90)
!868 = !DILocation(line: 40, column: 29, scope: !90)
!869 = !DILocation(line: 41, column: 7, scope: !870)
!870 = distinct !DILexicalBlock(scope: !90, file: !91, line: 41, column: 7)
!871 = !DILocation(line: 41, column: 22, scope: !870)
!872 = !DILocation(line: 41, column: 19, scope: !870)
!873 = !DILocation(line: 41, column: 7, scope: !90)
!874 = !DILocation(line: 42, column: 12, scope: !870)
!875 = !DILocation(line: 42, column: 5, scope: !870)
!876 = !DILocalVariable(name: "w", scope: !90, file: !91, line: 47, type: !877)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !878, line: 37, baseType: !879)
!878 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !880, line: 57, baseType: !881)
!880 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !880, line: 42, baseType: !14)
!882 = !DILocation(line: 47, column: 12, scope: !90)
!883 = !DILocalVariable(name: "mbs", scope: !90, file: !91, line: 48, type: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !198, line: 6, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !200, line: 21, baseType: !886)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !200, line: 13, size: 64, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !886, file: !200, line: 15, baseType: !31, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !886, file: !200, line: 20, baseType: !890, size: 32, offset: 32)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !200, line: 16, size: 32, elements: !891)
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !890, file: !200, line: 18, baseType: !14, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !890, file: !200, line: 19, baseType: !209, size: 32)
!894 = !DILocation(line: 48, column: 13, scope: !90)
!895 = !DILocation(line: 48, column: 18, scope: !90)
!896 = !DILocation(line: 49, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !90, file: !91, line: 49, column: 7)
!898 = !DILocation(line: 49, column: 39, scope: !897)
!899 = !DILocation(line: 49, column: 44, scope: !897)
!900 = !DILocation(line: 49, column: 47, scope: !897)
!901 = !DILocation(line: 49, column: 49, scope: !897)
!902 = !DILocation(line: 49, column: 7, scope: !90)
!903 = !DILocation(line: 50, column: 12, scope: !897)
!904 = !DILocation(line: 50, column: 5, scope: !897)
!905 = !DILocation(line: 53, column: 10, scope: !90)
!906 = !DILocation(line: 53, column: 3, scope: !90)
!907 = !DILocation(line: 54, column: 1, scope: !90)
!908 = distinct !DISubprogram(name: "clone_quoting_options", scope: !102, file: !102, line: 113, type: !909, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!909 = !DISubroutineType(types: !910)
!910 = !{!911, !911}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!912 = !DILocalVariable(name: "o", arg: 1, scope: !908, file: !102, line: 113, type: !911)
!913 = !DILocation(line: 113, column: 48, scope: !908)
!914 = !DILocalVariable(name: "saved_errno", scope: !908, file: !102, line: 115, type: !31)
!915 = !DILocation(line: 115, column: 7, scope: !908)
!916 = !DILocation(line: 115, column: 21, scope: !908)
!917 = !DILocalVariable(name: "p", scope: !908, file: !102, line: 116, type: !911)
!918 = !DILocation(line: 116, column: 27, scope: !908)
!919 = !DILocation(line: 116, column: 40, scope: !908)
!920 = !DILocation(line: 116, column: 44, scope: !908)
!921 = !DILocation(line: 116, column: 31, scope: !908)
!922 = !DILocation(line: 118, column: 11, scope: !908)
!923 = !DILocation(line: 118, column: 3, scope: !908)
!924 = !DILocation(line: 118, column: 9, scope: !908)
!925 = !DILocation(line: 119, column: 10, scope: !908)
!926 = !DILocation(line: 119, column: 3, scope: !908)
!927 = distinct !DISubprogram(name: "get_quoting_style", scope: !102, file: !102, line: 124, type: !928, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!928 = !DISubroutineType(types: !929)
!929 = !{!104, !930}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!932 = !DILocalVariable(name: "o", arg: 1, scope: !927, file: !102, line: 124, type: !930)
!933 = !DILocation(line: 124, column: 50, scope: !927)
!934 = !DILocation(line: 126, column: 11, scope: !927)
!935 = !DILocation(line: 126, column: 15, scope: !927)
!936 = !DILocation(line: 126, column: 46, scope: !927)
!937 = !DILocation(line: 126, column: 3, scope: !927)
!938 = distinct !DISubprogram(name: "set_quoting_style", scope: !102, file: !102, line: 132, type: !939, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!939 = !DISubroutineType(types: !940)
!940 = !{null, !911, !104}
!941 = !DILocalVariable(name: "o", arg: 1, scope: !938, file: !102, line: 132, type: !911)
!942 = !DILocation(line: 132, column: 44, scope: !938)
!943 = !DILocalVariable(name: "s", arg: 2, scope: !938, file: !102, line: 132, type: !104)
!944 = !DILocation(line: 132, column: 66, scope: !938)
!945 = !DILocation(line: 134, column: 47, scope: !938)
!946 = !DILocation(line: 134, column: 4, scope: !938)
!947 = !DILocation(line: 134, column: 8, scope: !938)
!948 = !DILocation(line: 134, column: 39, scope: !938)
!949 = !DILocation(line: 134, column: 45, scope: !938)
!950 = !DILocation(line: 135, column: 1, scope: !938)
!951 = distinct !DISubprogram(name: "set_char_quoting", scope: !102, file: !102, line: 143, type: !952, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!952 = !DISubroutineType(types: !953)
!953 = !{!31, !911, !8, !31}
!954 = !DILocalVariable(name: "o", arg: 1, scope: !951, file: !102, line: 143, type: !911)
!955 = !DILocation(line: 143, column: 43, scope: !951)
!956 = !DILocalVariable(name: "c", arg: 2, scope: !951, file: !102, line: 143, type: !8)
!957 = !DILocation(line: 143, column: 51, scope: !951)
!958 = !DILocalVariable(name: "i", arg: 3, scope: !951, file: !102, line: 143, type: !31)
!959 = !DILocation(line: 143, column: 58, scope: !951)
!960 = !DILocalVariable(name: "uc", scope: !951, file: !102, line: 145, type: !195)
!961 = !DILocation(line: 145, column: 17, scope: !951)
!962 = !DILocation(line: 145, column: 22, scope: !951)
!963 = !DILocalVariable(name: "p", scope: !951, file: !102, line: 146, type: !964)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!965 = !DILocation(line: 146, column: 17, scope: !951)
!966 = !DILocation(line: 147, column: 6, scope: !951)
!967 = !DILocation(line: 147, column: 10, scope: !951)
!968 = !DILocation(line: 147, column: 41, scope: !951)
!969 = !DILocation(line: 147, column: 5, scope: !951)
!970 = !DILocation(line: 147, column: 59, scope: !951)
!971 = !DILocation(line: 147, column: 62, scope: !951)
!972 = !DILocation(line: 147, column: 57, scope: !951)
!973 = !DILocalVariable(name: "shift", scope: !951, file: !102, line: 148, type: !31)
!974 = !DILocation(line: 148, column: 7, scope: !951)
!975 = !DILocation(line: 148, column: 15, scope: !951)
!976 = !DILocation(line: 148, column: 18, scope: !951)
!977 = !DILocalVariable(name: "r", scope: !951, file: !102, line: 149, type: !14)
!978 = !DILocation(line: 149, column: 16, scope: !951)
!979 = !DILocation(line: 149, column: 22, scope: !951)
!980 = !DILocation(line: 149, column: 21, scope: !951)
!981 = !DILocation(line: 149, column: 27, scope: !951)
!982 = !DILocation(line: 149, column: 24, scope: !951)
!983 = !DILocation(line: 149, column: 34, scope: !951)
!984 = !DILocation(line: 150, column: 11, scope: !951)
!985 = !DILocation(line: 150, column: 13, scope: !951)
!986 = !DILocation(line: 150, column: 21, scope: !951)
!987 = !DILocation(line: 150, column: 19, scope: !951)
!988 = !DILocation(line: 150, column: 27, scope: !951)
!989 = !DILocation(line: 150, column: 24, scope: !951)
!990 = !DILocation(line: 150, column: 4, scope: !951)
!991 = !DILocation(line: 150, column: 6, scope: !951)
!992 = !DILocation(line: 151, column: 10, scope: !951)
!993 = !DILocation(line: 151, column: 3, scope: !951)
!994 = distinct !DISubprogram(name: "set_quoting_flags", scope: !102, file: !102, line: 159, type: !995, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!995 = !DISubroutineType(types: !996)
!996 = !{!31, !911, !31}
!997 = !DILocalVariable(name: "o", arg: 1, scope: !994, file: !102, line: 159, type: !911)
!998 = !DILocation(line: 159, column: 44, scope: !994)
!999 = !DILocalVariable(name: "i", arg: 2, scope: !994, file: !102, line: 159, type: !31)
!1000 = !DILocation(line: 159, column: 51, scope: !994)
!1001 = !DILocation(line: 161, column: 8, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !994, file: !102, line: 161, column: 7)
!1003 = !DILocation(line: 161, column: 7, scope: !994)
!1004 = !DILocation(line: 162, column: 7, scope: !1002)
!1005 = !DILocation(line: 162, column: 5, scope: !1002)
!1006 = !DILocalVariable(name: "r", scope: !994, file: !102, line: 163, type: !31)
!1007 = !DILocation(line: 163, column: 7, scope: !994)
!1008 = !DILocation(line: 163, column: 11, scope: !994)
!1009 = !DILocation(line: 163, column: 14, scope: !994)
!1010 = !DILocation(line: 164, column: 14, scope: !994)
!1011 = !DILocation(line: 164, column: 3, scope: !994)
!1012 = !DILocation(line: 164, column: 6, scope: !994)
!1013 = !DILocation(line: 164, column: 12, scope: !994)
!1014 = !DILocation(line: 165, column: 10, scope: !994)
!1015 = !DILocation(line: 165, column: 3, scope: !994)
!1016 = distinct !DISubprogram(name: "set_custom_quoting", scope: !102, file: !102, line: 169, type: !1017, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !911, !6, !6}
!1019 = !DILocalVariable(name: "o", arg: 1, scope: !1016, file: !102, line: 169, type: !911)
!1020 = !DILocation(line: 169, column: 45, scope: !1016)
!1021 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1016, file: !102, line: 170, type: !6)
!1022 = !DILocation(line: 170, column: 33, scope: !1016)
!1023 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1016, file: !102, line: 170, type: !6)
!1024 = !DILocation(line: 170, column: 57, scope: !1016)
!1025 = !DILocation(line: 172, column: 8, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1016, file: !102, line: 172, column: 7)
!1027 = !DILocation(line: 172, column: 7, scope: !1016)
!1028 = !DILocation(line: 173, column: 7, scope: !1026)
!1029 = !DILocation(line: 173, column: 5, scope: !1026)
!1030 = !DILocation(line: 174, column: 3, scope: !1016)
!1031 = !DILocation(line: 174, column: 6, scope: !1016)
!1032 = !DILocation(line: 174, column: 12, scope: !1016)
!1033 = !DILocation(line: 175, column: 8, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1016, file: !102, line: 175, column: 7)
!1035 = !DILocation(line: 175, column: 19, scope: !1034)
!1036 = !DILocation(line: 175, column: 23, scope: !1034)
!1037 = !DILocation(line: 175, column: 7, scope: !1016)
!1038 = !DILocation(line: 176, column: 5, scope: !1034)
!1039 = !DILocation(line: 177, column: 19, scope: !1016)
!1040 = !DILocation(line: 177, column: 3, scope: !1016)
!1041 = !DILocation(line: 177, column: 6, scope: !1016)
!1042 = !DILocation(line: 177, column: 17, scope: !1016)
!1043 = !DILocation(line: 178, column: 20, scope: !1016)
!1044 = !DILocation(line: 178, column: 3, scope: !1016)
!1045 = !DILocation(line: 178, column: 6, scope: !1016)
!1046 = !DILocation(line: 178, column: 18, scope: !1016)
!1047 = !DILocation(line: 179, column: 1, scope: !1016)
!1048 = distinct !DISubprogram(name: "quotearg_buffer", scope: !102, file: !102, line: 774, type: !1049, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!124, !29, !124, !6, !124, !930}
!1051 = !DILocalVariable(name: "buffer", arg: 1, scope: !1048, file: !102, line: 774, type: !29)
!1052 = !DILocation(line: 774, column: 24, scope: !1048)
!1053 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1048, file: !102, line: 774, type: !124)
!1054 = !DILocation(line: 774, column: 39, scope: !1048)
!1055 = !DILocalVariable(name: "arg", arg: 3, scope: !1048, file: !102, line: 775, type: !6)
!1056 = !DILocation(line: 775, column: 30, scope: !1048)
!1057 = !DILocalVariable(name: "argsize", arg: 4, scope: !1048, file: !102, line: 775, type: !124)
!1058 = !DILocation(line: 775, column: 42, scope: !1048)
!1059 = !DILocalVariable(name: "o", arg: 5, scope: !1048, file: !102, line: 776, type: !930)
!1060 = !DILocation(line: 776, column: 48, scope: !1048)
!1061 = !DILocalVariable(name: "p", scope: !1048, file: !102, line: 778, type: !930)
!1062 = !DILocation(line: 778, column: 33, scope: !1048)
!1063 = !DILocation(line: 778, column: 37, scope: !1048)
!1064 = !DILocation(line: 778, column: 41, scope: !1048)
!1065 = !DILocalVariable(name: "saved_errno", scope: !1048, file: !102, line: 779, type: !31)
!1066 = !DILocation(line: 779, column: 7, scope: !1048)
!1067 = !DILocation(line: 779, column: 21, scope: !1048)
!1068 = !DILocalVariable(name: "r", scope: !1048, file: !102, line: 780, type: !124)
!1069 = !DILocation(line: 780, column: 10, scope: !1048)
!1070 = !DILocation(line: 780, column: 40, scope: !1048)
!1071 = !DILocation(line: 780, column: 48, scope: !1048)
!1072 = !DILocation(line: 780, column: 60, scope: !1048)
!1073 = !DILocation(line: 780, column: 65, scope: !1048)
!1074 = !DILocation(line: 781, column: 40, scope: !1048)
!1075 = !DILocation(line: 781, column: 43, scope: !1048)
!1076 = !DILocation(line: 781, column: 50, scope: !1048)
!1077 = !DILocation(line: 781, column: 53, scope: !1048)
!1078 = !DILocation(line: 781, column: 60, scope: !1048)
!1079 = !DILocation(line: 781, column: 63, scope: !1048)
!1080 = !DILocation(line: 782, column: 40, scope: !1048)
!1081 = !DILocation(line: 782, column: 43, scope: !1048)
!1082 = !DILocation(line: 782, column: 55, scope: !1048)
!1083 = !DILocation(line: 782, column: 58, scope: !1048)
!1084 = !DILocation(line: 780, column: 14, scope: !1048)
!1085 = !DILocation(line: 783, column: 11, scope: !1048)
!1086 = !DILocation(line: 783, column: 3, scope: !1048)
!1087 = !DILocation(line: 783, column: 9, scope: !1048)
!1088 = !DILocation(line: 784, column: 10, scope: !1048)
!1089 = !DILocation(line: 784, column: 3, scope: !1048)
!1090 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !102, file: !102, line: 251, type: !1091, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !101, retainedNodes: !34)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!124, !29, !124, !6, !124, !104, !31, !1093, !6, !6}
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1095 = !DILocalVariable(name: "buffer", arg: 1, scope: !1090, file: !102, line: 251, type: !29)
!1096 = !DILocation(line: 251, column: 33, scope: !1090)
!1097 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1090, file: !102, line: 251, type: !124)
!1098 = !DILocation(line: 251, column: 48, scope: !1090)
!1099 = !DILocalVariable(name: "arg", arg: 3, scope: !1090, file: !102, line: 252, type: !6)
!1100 = !DILocation(line: 252, column: 39, scope: !1090)
!1101 = !DILocalVariable(name: "argsize", arg: 4, scope: !1090, file: !102, line: 252, type: !124)
!1102 = !DILocation(line: 252, column: 51, scope: !1090)
!1103 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1090, file: !102, line: 253, type: !104)
!1104 = !DILocation(line: 253, column: 46, scope: !1090)
!1105 = !DILocalVariable(name: "flags", arg: 6, scope: !1090, file: !102, line: 253, type: !31)
!1106 = !DILocation(line: 253, column: 65, scope: !1090)
!1107 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1090, file: !102, line: 254, type: !1093)
!1108 = !DILocation(line: 254, column: 47, scope: !1090)
!1109 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1090, file: !102, line: 255, type: !6)
!1110 = !DILocation(line: 255, column: 39, scope: !1090)
!1111 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1090, file: !102, line: 256, type: !6)
!1112 = !DILocation(line: 256, column: 39, scope: !1090)
!1113 = !DILocalVariable(name: "unibyte_locale", scope: !1090, file: !102, line: 258, type: !47)
!1114 = !DILocation(line: 258, column: 8, scope: !1090)
!1115 = !DILocation(line: 258, column: 25, scope: !1090)
!1116 = !DILocation(line: 258, column: 36, scope: !1090)
!1117 = !DILocalVariable(name: "len", scope: !1090, file: !102, line: 260, type: !124)
!1118 = !DILocation(line: 260, column: 10, scope: !1090)
!1119 = !DILocalVariable(name: "orig_buffersize", scope: !1090, file: !102, line: 261, type: !124)
!1120 = !DILocation(line: 261, column: 10, scope: !1090)
!1121 = !DILocalVariable(name: "quote_string", scope: !1090, file: !102, line: 262, type: !6)
!1122 = !DILocation(line: 262, column: 15, scope: !1090)
!1123 = !DILocalVariable(name: "quote_string_len", scope: !1090, file: !102, line: 263, type: !124)
!1124 = !DILocation(line: 263, column: 10, scope: !1090)
!1125 = !DILocalVariable(name: "backslash_escapes", scope: !1090, file: !102, line: 264, type: !47)
!1126 = !DILocation(line: 264, column: 8, scope: !1090)
!1127 = !DILocalVariable(name: "elide_outer_quotes", scope: !1090, file: !102, line: 265, type: !47)
!1128 = !DILocation(line: 265, column: 8, scope: !1090)
!1129 = !DILocation(line: 265, column: 30, scope: !1090)
!1130 = !DILocation(line: 265, column: 36, scope: !1090)
!1131 = !DILocation(line: 265, column: 61, scope: !1090)
!1132 = !DILocalVariable(name: "encountered_single_quote", scope: !1090, file: !102, line: 266, type: !47)
!1133 = !DILocation(line: 266, column: 8, scope: !1090)
!1134 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1090, file: !102, line: 267, type: !47)
!1135 = !DILocation(line: 267, column: 8, scope: !1090)
!1136 = !DILocation(line: 267, column: 3, scope: !1090)
!1137 = !DILabel(scope: !1090, name: "process_input", file: !102, line: 308)
!1138 = !DILocation(line: 308, column: 2, scope: !1090)
!1139 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1090, file: !102, line: 309, type: !47)
!1140 = !DILocation(line: 309, column: 8, scope: !1090)
!1141 = !DILocation(line: 311, column: 11, scope: !1090)
!1142 = !DILocation(line: 311, column: 3, scope: !1090)
!1143 = !DILocation(line: 314, column: 21, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1090, file: !102, line: 312, column: 5)
!1145 = !DILocation(line: 315, column: 26, scope: !1144)
!1146 = !DILocation(line: 315, column: 7, scope: !1144)
!1147 = !DILocation(line: 318, column: 12, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !102, line: 318, column: 11)
!1149 = !DILocation(line: 318, column: 11, scope: !1144)
!1150 = !DILocation(line: 319, column: 9, scope: !1148)
!1151 = !DILocation(line: 319, column: 9, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !102, line: 319, column: 9)
!1153 = distinct !DILexicalBlock(scope: !1148, file: !102, line: 319, column: 9)
!1154 = !DILocation(line: 319, column: 9, scope: !1153)
!1155 = !DILocation(line: 320, column: 25, scope: !1144)
!1156 = !DILocation(line: 321, column: 20, scope: !1144)
!1157 = !DILocation(line: 322, column: 24, scope: !1144)
!1158 = !DILocation(line: 323, column: 7, scope: !1144)
!1159 = !DILocation(line: 326, column: 25, scope: !1144)
!1160 = !DILocation(line: 327, column: 26, scope: !1144)
!1161 = !DILocation(line: 328, column: 7, scope: !1144)
!1162 = !DILocation(line: 334, column: 13, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !102, line: 334, column: 13)
!1164 = distinct !DILexicalBlock(scope: !1144, file: !102, line: 333, column: 7)
!1165 = !DILocation(line: 334, column: 27, scope: !1163)
!1166 = !DILocation(line: 334, column: 13, scope: !1164)
!1167 = !DILocation(line: 357, column: 50, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1163, file: !102, line: 335, column: 11)
!1169 = !DILocation(line: 357, column: 26, scope: !1168)
!1170 = !DILocation(line: 357, column: 24, scope: !1168)
!1171 = !DILocation(line: 358, column: 51, scope: !1168)
!1172 = !DILocation(line: 358, column: 27, scope: !1168)
!1173 = !DILocation(line: 358, column: 25, scope: !1168)
!1174 = !DILocation(line: 359, column: 11, scope: !1168)
!1175 = !DILocation(line: 360, column: 14, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1164, file: !102, line: 360, column: 13)
!1177 = !DILocation(line: 360, column: 13, scope: !1164)
!1178 = !DILocalVariable(name: "lq", scope: !1179, file: !102, line: 361, type: !6)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !102, line: 361, column: 11)
!1180 = !DILocation(line: 361, column: 28, scope: !1179)
!1181 = !DILocation(line: 361, column: 33, scope: !1179)
!1182 = !DILocation(line: 361, column: 16, scope: !1179)
!1183 = !DILocation(line: 361, column: 46, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !102, line: 361, column: 11)
!1185 = !DILocation(line: 361, column: 45, scope: !1184)
!1186 = !DILocation(line: 361, column: 11, scope: !1179)
!1187 = !DILocation(line: 362, column: 13, scope: !1184)
!1188 = !DILocation(line: 362, column: 13, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !102, line: 362, column: 13)
!1190 = distinct !DILexicalBlock(scope: !1184, file: !102, line: 362, column: 13)
!1191 = !DILocation(line: 362, column: 13, scope: !1190)
!1192 = !DILocation(line: 361, column: 52, scope: !1184)
!1193 = !DILocation(line: 361, column: 11, scope: !1184)
!1194 = distinct !{!1194, !1186, !1195, !371}
!1195 = !DILocation(line: 362, column: 13, scope: !1179)
!1196 = !DILocation(line: 363, column: 27, scope: !1164)
!1197 = !DILocation(line: 364, column: 24, scope: !1164)
!1198 = !DILocation(line: 364, column: 22, scope: !1164)
!1199 = !DILocation(line: 365, column: 36, scope: !1164)
!1200 = !DILocation(line: 365, column: 28, scope: !1164)
!1201 = !DILocation(line: 365, column: 26, scope: !1164)
!1202 = !DILocation(line: 367, column: 7, scope: !1144)
!1203 = !DILocation(line: 370, column: 25, scope: !1144)
!1204 = !DILocation(line: 370, column: 7, scope: !1144)
!1205 = !DILocation(line: 373, column: 26, scope: !1144)
!1206 = !DILocation(line: 373, column: 7, scope: !1144)
!1207 = !DILocation(line: 376, column: 12, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1144, file: !102, line: 376, column: 11)
!1209 = !DILocation(line: 376, column: 11, scope: !1144)
!1210 = !DILocation(line: 377, column: 27, scope: !1208)
!1211 = !DILocation(line: 377, column: 9, scope: !1208)
!1212 = !DILocation(line: 380, column: 21, scope: !1144)
!1213 = !DILocation(line: 381, column: 12, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1144, file: !102, line: 381, column: 11)
!1215 = !DILocation(line: 381, column: 11, scope: !1144)
!1216 = !DILocation(line: 382, column: 9, scope: !1214)
!1217 = !DILocation(line: 382, column: 9, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !102, line: 382, column: 9)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !102, line: 382, column: 9)
!1220 = !DILocation(line: 382, column: 9, scope: !1219)
!1221 = !DILocation(line: 383, column: 20, scope: !1144)
!1222 = !DILocation(line: 384, column: 24, scope: !1144)
!1223 = !DILocation(line: 385, column: 7, scope: !1144)
!1224 = !DILocation(line: 388, column: 26, scope: !1144)
!1225 = !DILocation(line: 389, column: 7, scope: !1144)
!1226 = !DILocation(line: 392, column: 7, scope: !1144)
!1227 = !DILocalVariable(name: "i", scope: !1228, file: !102, line: 395, type: !124)
!1228 = distinct !DILexicalBlock(scope: !1090, file: !102, line: 395, column: 3)
!1229 = !DILocation(line: 395, column: 15, scope: !1228)
!1230 = !DILocation(line: 395, column: 8, scope: !1228)
!1231 = !DILocation(line: 395, column: 26, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !102, line: 395, column: 3)
!1233 = !DILocation(line: 395, column: 34, scope: !1232)
!1234 = !DILocation(line: 395, column: 48, scope: !1232)
!1235 = !DILocation(line: 395, column: 52, scope: !1232)
!1236 = !DILocation(line: 395, column: 55, scope: !1232)
!1237 = !DILocation(line: 395, column: 65, scope: !1232)
!1238 = !DILocation(line: 395, column: 70, scope: !1232)
!1239 = !DILocation(line: 395, column: 67, scope: !1232)
!1240 = !DILocation(line: 395, column: 23, scope: !1232)
!1241 = !DILocation(line: 395, column: 3, scope: !1228)
!1242 = !DILocalVariable(name: "is_right_quote", scope: !1243, file: !102, line: 397, type: !47)
!1243 = distinct !DILexicalBlock(scope: !1232, file: !102, line: 396, column: 5)
!1244 = !DILocation(line: 397, column: 12, scope: !1243)
!1245 = !DILocalVariable(name: "escaping", scope: !1243, file: !102, line: 398, type: !47)
!1246 = !DILocation(line: 398, column: 12, scope: !1243)
!1247 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1243, file: !102, line: 399, type: !47)
!1248 = !DILocation(line: 399, column: 12, scope: !1243)
!1249 = !DILocation(line: 401, column: 11, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1243, file: !102, line: 401, column: 11)
!1251 = !DILocation(line: 402, column: 11, scope: !1250)
!1252 = !DILocation(line: 402, column: 14, scope: !1250)
!1253 = !DILocation(line: 402, column: 28, scope: !1250)
!1254 = !DILocation(line: 403, column: 11, scope: !1250)
!1255 = !DILocation(line: 403, column: 14, scope: !1250)
!1256 = !DILocation(line: 404, column: 11, scope: !1250)
!1257 = !DILocation(line: 404, column: 15, scope: !1250)
!1258 = !DILocation(line: 404, column: 19, scope: !1250)
!1259 = !DILocation(line: 404, column: 17, scope: !1250)
!1260 = !DILocation(line: 405, column: 19, scope: !1250)
!1261 = !DILocation(line: 405, column: 27, scope: !1250)
!1262 = !DILocation(line: 405, column: 39, scope: !1250)
!1263 = !DILocation(line: 405, column: 46, scope: !1250)
!1264 = !DILocation(line: 405, column: 44, scope: !1250)
!1265 = !DILocation(line: 409, column: 40, scope: !1250)
!1266 = !DILocation(line: 409, column: 32, scope: !1250)
!1267 = !DILocation(line: 409, column: 30, scope: !1250)
!1268 = !DILocation(line: 409, column: 48, scope: !1250)
!1269 = !DILocation(line: 405, column: 15, scope: !1250)
!1270 = !DILocation(line: 410, column: 11, scope: !1250)
!1271 = !DILocation(line: 410, column: 21, scope: !1250)
!1272 = !DILocation(line: 410, column: 27, scope: !1250)
!1273 = !DILocation(line: 410, column: 25, scope: !1250)
!1274 = !DILocation(line: 410, column: 30, scope: !1250)
!1275 = !DILocation(line: 410, column: 44, scope: !1250)
!1276 = !DILocation(line: 410, column: 14, scope: !1250)
!1277 = !DILocation(line: 401, column: 11, scope: !1243)
!1278 = !DILocation(line: 412, column: 15, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !102, line: 412, column: 15)
!1280 = distinct !DILexicalBlock(scope: !1250, file: !102, line: 411, column: 9)
!1281 = !DILocation(line: 412, column: 15, scope: !1280)
!1282 = !DILocation(line: 413, column: 13, scope: !1279)
!1283 = !DILocation(line: 414, column: 26, scope: !1280)
!1284 = !DILocation(line: 415, column: 9, scope: !1280)
!1285 = !DILocalVariable(name: "c", scope: !1243, file: !102, line: 417, type: !195)
!1286 = !DILocation(line: 417, column: 21, scope: !1243)
!1287 = !DILocation(line: 417, column: 25, scope: !1243)
!1288 = !DILocation(line: 417, column: 29, scope: !1243)
!1289 = !DILocation(line: 418, column: 15, scope: !1243)
!1290 = !DILocation(line: 418, column: 7, scope: !1243)
!1291 = !DILocation(line: 421, column: 15, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !102, line: 421, column: 15)
!1293 = distinct !DILexicalBlock(scope: !1243, file: !102, line: 419, column: 9)
!1294 = !DILocation(line: 421, column: 15, scope: !1293)
!1295 = !DILocation(line: 423, column: 15, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !102, line: 422, column: 13)
!1297 = !DILocation(line: 423, column: 15, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !102, line: 423, column: 15)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !102, line: 423, column: 15)
!1300 = !DILocation(line: 423, column: 15, scope: !1299)
!1301 = !DILocation(line: 423, column: 15, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1299, file: !102, line: 423, column: 15)
!1303 = !DILocation(line: 423, column: 15, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1302, file: !102, line: 423, column: 15)
!1305 = !DILocation(line: 423, column: 15, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !102, line: 423, column: 15)
!1307 = distinct !DILexicalBlock(scope: !1304, file: !102, line: 423, column: 15)
!1308 = !DILocation(line: 423, column: 15, scope: !1307)
!1309 = !DILocation(line: 423, column: 15, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !102, line: 423, column: 15)
!1311 = distinct !DILexicalBlock(scope: !1304, file: !102, line: 423, column: 15)
!1312 = !DILocation(line: 423, column: 15, scope: !1311)
!1313 = !DILocation(line: 423, column: 15, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !102, line: 423, column: 15)
!1315 = distinct !DILexicalBlock(scope: !1304, file: !102, line: 423, column: 15)
!1316 = !DILocation(line: 423, column: 15, scope: !1315)
!1317 = !DILocation(line: 423, column: 15, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !102, line: 423, column: 15)
!1319 = distinct !DILexicalBlock(scope: !1299, file: !102, line: 423, column: 15)
!1320 = !DILocation(line: 423, column: 15, scope: !1319)
!1321 = !DILocation(line: 430, column: 19, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1296, file: !102, line: 430, column: 19)
!1323 = !DILocation(line: 430, column: 33, scope: !1322)
!1324 = !DILocation(line: 431, column: 19, scope: !1322)
!1325 = !DILocation(line: 431, column: 22, scope: !1322)
!1326 = !DILocation(line: 431, column: 24, scope: !1322)
!1327 = !DILocation(line: 431, column: 30, scope: !1322)
!1328 = !DILocation(line: 431, column: 28, scope: !1322)
!1329 = !DILocation(line: 431, column: 38, scope: !1322)
!1330 = !DILocation(line: 431, column: 48, scope: !1322)
!1331 = !DILocation(line: 431, column: 52, scope: !1322)
!1332 = !DILocation(line: 431, column: 54, scope: !1322)
!1333 = !DILocation(line: 431, column: 45, scope: !1322)
!1334 = !DILocation(line: 431, column: 59, scope: !1322)
!1335 = !DILocation(line: 431, column: 62, scope: !1322)
!1336 = !DILocation(line: 431, column: 66, scope: !1322)
!1337 = !DILocation(line: 431, column: 68, scope: !1322)
!1338 = !DILocation(line: 431, column: 73, scope: !1322)
!1339 = !DILocation(line: 430, column: 19, scope: !1296)
!1340 = !DILocation(line: 433, column: 19, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1322, file: !102, line: 432, column: 17)
!1342 = !DILocation(line: 433, column: 19, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !102, line: 433, column: 19)
!1344 = distinct !DILexicalBlock(scope: !1341, file: !102, line: 433, column: 19)
!1345 = !DILocation(line: 433, column: 19, scope: !1344)
!1346 = !DILocation(line: 434, column: 19, scope: !1341)
!1347 = !DILocation(line: 434, column: 19, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !102, line: 434, column: 19)
!1349 = distinct !DILexicalBlock(scope: !1341, file: !102, line: 434, column: 19)
!1350 = !DILocation(line: 434, column: 19, scope: !1349)
!1351 = !DILocation(line: 435, column: 17, scope: !1341)
!1352 = !DILocation(line: 436, column: 17, scope: !1296)
!1353 = !DILocation(line: 441, column: 13, scope: !1296)
!1354 = !DILocation(line: 442, column: 20, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1292, file: !102, line: 442, column: 20)
!1356 = !DILocation(line: 442, column: 26, scope: !1355)
!1357 = !DILocation(line: 442, column: 20, scope: !1292)
!1358 = !DILocation(line: 443, column: 13, scope: !1355)
!1359 = !DILocation(line: 444, column: 11, scope: !1293)
!1360 = !DILocation(line: 447, column: 20, scope: !1293)
!1361 = !DILocation(line: 447, column: 11, scope: !1293)
!1362 = !DILocation(line: 450, column: 19, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !102, line: 450, column: 19)
!1364 = distinct !DILexicalBlock(scope: !1293, file: !102, line: 448, column: 13)
!1365 = !DILocation(line: 450, column: 19, scope: !1364)
!1366 = !DILocation(line: 451, column: 17, scope: !1363)
!1367 = !DILocation(line: 452, column: 15, scope: !1364)
!1368 = !DILocation(line: 455, column: 20, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !102, line: 455, column: 19)
!1370 = !DILocation(line: 455, column: 26, scope: !1369)
!1371 = !DILocation(line: 456, column: 19, scope: !1369)
!1372 = !DILocation(line: 456, column: 22, scope: !1369)
!1373 = !DILocation(line: 456, column: 24, scope: !1369)
!1374 = !DILocation(line: 456, column: 30, scope: !1369)
!1375 = !DILocation(line: 456, column: 28, scope: !1369)
!1376 = !DILocation(line: 456, column: 38, scope: !1369)
!1377 = !DILocation(line: 456, column: 41, scope: !1369)
!1378 = !DILocation(line: 456, column: 45, scope: !1369)
!1379 = !DILocation(line: 456, column: 47, scope: !1369)
!1380 = !DILocation(line: 456, column: 52, scope: !1369)
!1381 = !DILocation(line: 455, column: 19, scope: !1364)
!1382 = !DILocation(line: 457, column: 25, scope: !1369)
!1383 = !DILocation(line: 457, column: 29, scope: !1369)
!1384 = !DILocation(line: 457, column: 31, scope: !1369)
!1385 = !DILocation(line: 457, column: 17, scope: !1369)
!1386 = !DILocation(line: 464, column: 25, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !102, line: 464, column: 25)
!1388 = distinct !DILexicalBlock(scope: !1369, file: !102, line: 458, column: 19)
!1389 = !DILocation(line: 464, column: 25, scope: !1388)
!1390 = !DILocation(line: 465, column: 23, scope: !1387)
!1391 = !DILocation(line: 466, column: 25, scope: !1388)
!1392 = !DILocation(line: 466, column: 29, scope: !1388)
!1393 = !DILocation(line: 466, column: 31, scope: !1388)
!1394 = !DILocation(line: 466, column: 23, scope: !1388)
!1395 = !DILocation(line: 467, column: 23, scope: !1388)
!1396 = !DILocation(line: 468, column: 21, scope: !1388)
!1397 = !DILocation(line: 468, column: 21, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !102, line: 468, column: 21)
!1399 = distinct !DILexicalBlock(scope: !1388, file: !102, line: 468, column: 21)
!1400 = !DILocation(line: 468, column: 21, scope: !1399)
!1401 = !DILocation(line: 469, column: 21, scope: !1388)
!1402 = !DILocation(line: 469, column: 21, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !102, line: 469, column: 21)
!1404 = distinct !DILexicalBlock(scope: !1388, file: !102, line: 469, column: 21)
!1405 = !DILocation(line: 469, column: 21, scope: !1404)
!1406 = !DILocation(line: 470, column: 21, scope: !1388)
!1407 = !DILocation(line: 470, column: 21, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !102, line: 470, column: 21)
!1409 = distinct !DILexicalBlock(scope: !1388, file: !102, line: 470, column: 21)
!1410 = !DILocation(line: 470, column: 21, scope: !1409)
!1411 = !DILocation(line: 471, column: 21, scope: !1388)
!1412 = !DILocation(line: 471, column: 21, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !102, line: 471, column: 21)
!1414 = distinct !DILexicalBlock(scope: !1388, file: !102, line: 471, column: 21)
!1415 = !DILocation(line: 471, column: 21, scope: !1414)
!1416 = !DILocation(line: 472, column: 21, scope: !1388)
!1417 = !DILocation(line: 473, column: 19, scope: !1388)
!1418 = !DILocation(line: 474, column: 15, scope: !1364)
!1419 = !DILocation(line: 476, column: 11, scope: !1293)
!1420 = !DILocation(line: 481, column: 26, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1293, file: !102, line: 478, column: 9)
!1422 = !DILocation(line: 481, column: 33, scope: !1421)
!1423 = !DILocation(line: 482, column: 26, scope: !1421)
!1424 = !DILocation(line: 482, column: 33, scope: !1421)
!1425 = !DILocation(line: 483, column: 26, scope: !1421)
!1426 = !DILocation(line: 483, column: 33, scope: !1421)
!1427 = !DILocation(line: 484, column: 26, scope: !1421)
!1428 = !DILocation(line: 484, column: 33, scope: !1421)
!1429 = !DILocation(line: 485, column: 26, scope: !1421)
!1430 = !DILocation(line: 485, column: 33, scope: !1421)
!1431 = !DILocation(line: 486, column: 26, scope: !1421)
!1432 = !DILocation(line: 486, column: 33, scope: !1421)
!1433 = !DILocation(line: 487, column: 26, scope: !1421)
!1434 = !DILocation(line: 487, column: 33, scope: !1421)
!1435 = !DILocation(line: 488, column: 28, scope: !1421)
!1436 = !DILocation(line: 488, column: 26, scope: !1421)
!1437 = !DILocation(line: 490, column: 17, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1421, file: !102, line: 490, column: 17)
!1439 = !DILocation(line: 490, column: 31, scope: !1438)
!1440 = !DILocation(line: 490, column: 17, scope: !1421)
!1441 = !DILocation(line: 492, column: 21, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !102, line: 492, column: 21)
!1443 = distinct !DILexicalBlock(scope: !1438, file: !102, line: 491, column: 15)
!1444 = !DILocation(line: 492, column: 21, scope: !1443)
!1445 = !DILocation(line: 493, column: 19, scope: !1442)
!1446 = !DILocation(line: 494, column: 17, scope: !1443)
!1447 = !DILocation(line: 499, column: 17, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1421, file: !102, line: 499, column: 17)
!1449 = !DILocation(line: 499, column: 35, scope: !1448)
!1450 = !DILocation(line: 499, column: 38, scope: !1448)
!1451 = !DILocation(line: 499, column: 57, scope: !1448)
!1452 = !DILocation(line: 499, column: 60, scope: !1448)
!1453 = !DILocation(line: 499, column: 17, scope: !1421)
!1454 = !DILocation(line: 500, column: 15, scope: !1448)
!1455 = !DILabel(scope: !1421, name: "c_and_shell_escape", file: !102, line: 502)
!1456 = !DILocation(line: 502, column: 11, scope: !1421)
!1457 = !DILocation(line: 503, column: 17, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1421, file: !102, line: 503, column: 17)
!1459 = !DILocation(line: 503, column: 31, scope: !1458)
!1460 = !DILocation(line: 504, column: 17, scope: !1458)
!1461 = !DILocation(line: 504, column: 20, scope: !1458)
!1462 = !DILocation(line: 503, column: 17, scope: !1421)
!1463 = !DILocation(line: 505, column: 15, scope: !1458)
!1464 = !DILabel(scope: !1421, name: "c_escape", file: !102, line: 507)
!1465 = !DILocation(line: 507, column: 11, scope: !1421)
!1466 = !DILocation(line: 508, column: 17, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1421, file: !102, line: 508, column: 17)
!1468 = !DILocation(line: 508, column: 17, scope: !1421)
!1469 = !DILocation(line: 510, column: 21, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !102, line: 509, column: 15)
!1471 = !DILocation(line: 510, column: 19, scope: !1470)
!1472 = !DILocation(line: 511, column: 17, scope: !1470)
!1473 = !DILocation(line: 513, column: 13, scope: !1421)
!1474 = !DILocation(line: 517, column: 18, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1293, file: !102, line: 517, column: 15)
!1476 = !DILocation(line: 517, column: 26, scope: !1475)
!1477 = !DILocation(line: 517, column: 15, scope: !1293)
!1478 = !DILocation(line: 517, column: 40, scope: !1475)
!1479 = !DILocation(line: 517, column: 47, scope: !1475)
!1480 = !DILocation(line: 517, column: 57, scope: !1475)
!1481 = !DILocation(line: 517, column: 65, scope: !1475)
!1482 = !DILocation(line: 518, column: 13, scope: !1475)
!1483 = !DILocation(line: 517, column: 69, scope: !1475)
!1484 = !DILocation(line: 521, column: 15, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1293, file: !102, line: 521, column: 15)
!1486 = !DILocation(line: 521, column: 17, scope: !1485)
!1487 = !DILocation(line: 521, column: 15, scope: !1293)
!1488 = !DILocation(line: 522, column: 13, scope: !1485)
!1489 = !DILocation(line: 521, column: 20, scope: !1485)
!1490 = !DILocation(line: 525, column: 36, scope: !1293)
!1491 = !DILocation(line: 525, column: 11, scope: !1293)
!1492 = !DILocation(line: 536, column: 15, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1293, file: !102, line: 536, column: 15)
!1494 = !DILocation(line: 536, column: 29, scope: !1493)
!1495 = !DILocation(line: 537, column: 15, scope: !1493)
!1496 = !DILocation(line: 537, column: 18, scope: !1493)
!1497 = !DILocation(line: 536, column: 15, scope: !1293)
!1498 = !DILocation(line: 538, column: 13, scope: !1493)
!1499 = !DILocation(line: 539, column: 11, scope: !1293)
!1500 = !DILocation(line: 542, column: 36, scope: !1293)
!1501 = !DILocation(line: 543, column: 36, scope: !1293)
!1502 = !DILocation(line: 544, column: 15, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1293, file: !102, line: 544, column: 15)
!1504 = !DILocation(line: 544, column: 29, scope: !1503)
!1505 = !DILocation(line: 544, column: 15, scope: !1293)
!1506 = !DILocation(line: 546, column: 19, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !102, line: 546, column: 19)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !102, line: 545, column: 13)
!1509 = !DILocation(line: 546, column: 19, scope: !1508)
!1510 = !DILocation(line: 547, column: 17, scope: !1507)
!1511 = !DILocation(line: 549, column: 19, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !102, line: 549, column: 19)
!1513 = !DILocation(line: 549, column: 30, scope: !1512)
!1514 = !DILocation(line: 549, column: 35, scope: !1512)
!1515 = !DILocation(line: 549, column: 19, scope: !1508)
!1516 = !DILocation(line: 554, column: 37, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1512, file: !102, line: 550, column: 17)
!1518 = !DILocation(line: 554, column: 35, scope: !1517)
!1519 = !DILocation(line: 555, column: 30, scope: !1517)
!1520 = !DILocation(line: 556, column: 17, scope: !1517)
!1521 = !DILocation(line: 558, column: 15, scope: !1508)
!1522 = !DILocation(line: 558, column: 15, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !102, line: 558, column: 15)
!1524 = distinct !DILexicalBlock(scope: !1508, file: !102, line: 558, column: 15)
!1525 = !DILocation(line: 558, column: 15, scope: !1524)
!1526 = !DILocation(line: 559, column: 15, scope: !1508)
!1527 = !DILocation(line: 559, column: 15, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !102, line: 559, column: 15)
!1529 = distinct !DILexicalBlock(scope: !1508, file: !102, line: 559, column: 15)
!1530 = !DILocation(line: 559, column: 15, scope: !1529)
!1531 = !DILocation(line: 560, column: 15, scope: !1508)
!1532 = !DILocation(line: 560, column: 15, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !102, line: 560, column: 15)
!1534 = distinct !DILexicalBlock(scope: !1508, file: !102, line: 560, column: 15)
!1535 = !DILocation(line: 560, column: 15, scope: !1534)
!1536 = !DILocation(line: 561, column: 40, scope: !1508)
!1537 = !DILocation(line: 562, column: 13, scope: !1508)
!1538 = !DILocation(line: 563, column: 11, scope: !1293)
!1539 = !DILocation(line: 587, column: 36, scope: !1293)
!1540 = !DILocation(line: 588, column: 11, scope: !1293)
!1541 = !DILocalVariable(name: "m", scope: !1542, file: !102, line: 598, type: !124)
!1542 = distinct !DILexicalBlock(scope: !1293, file: !102, line: 596, column: 11)
!1543 = !DILocation(line: 598, column: 20, scope: !1542)
!1544 = !DILocalVariable(name: "printable", scope: !1542, file: !102, line: 600, type: !47)
!1545 = !DILocation(line: 600, column: 18, scope: !1542)
!1546 = !DILocation(line: 602, column: 17, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !102, line: 602, column: 17)
!1548 = !DILocation(line: 602, column: 17, scope: !1542)
!1549 = !DILocation(line: 604, column: 19, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1547, file: !102, line: 603, column: 15)
!1551 = !DILocation(line: 605, column: 29, scope: !1550)
!1552 = !DILocation(line: 605, column: 41, scope: !1550)
!1553 = !DILocation(line: 605, column: 27, scope: !1550)
!1554 = !DILocation(line: 606, column: 15, scope: !1550)
!1555 = !DILocalVariable(name: "mbs", scope: !1556, file: !102, line: 609, type: !1557)
!1556 = distinct !DILexicalBlock(scope: !1547, file: !102, line: 608, column: 15)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !198, line: 6, baseType: !1558)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !200, line: 21, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !200, line: 13, size: 64, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1559, file: !200, line: 15, baseType: !31, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1559, file: !200, line: 20, baseType: !1563, size: 32, offset: 32)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !200, line: 16, size: 32, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1563, file: !200, line: 18, baseType: !14, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1563, file: !200, line: 19, baseType: !209, size: 32)
!1567 = !DILocation(line: 609, column: 27, scope: !1556)
!1568 = !DILocation(line: 609, column: 32, scope: !1556)
!1569 = !DILocation(line: 611, column: 19, scope: !1556)
!1570 = !DILocation(line: 612, column: 27, scope: !1556)
!1571 = !DILocation(line: 613, column: 21, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1556, file: !102, line: 613, column: 21)
!1573 = !DILocation(line: 613, column: 29, scope: !1572)
!1574 = !DILocation(line: 613, column: 21, scope: !1556)
!1575 = !DILocation(line: 614, column: 37, scope: !1572)
!1576 = !DILocation(line: 614, column: 29, scope: !1572)
!1577 = !DILocation(line: 614, column: 27, scope: !1572)
!1578 = !DILocation(line: 614, column: 19, scope: !1572)
!1579 = !DILocation(line: 616, column: 17, scope: !1556)
!1580 = !DILocalVariable(name: "w", scope: !1581, file: !102, line: 618, type: !877)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !102, line: 617, column: 19)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !102, line: 616, column: 17)
!1583 = distinct !DILexicalBlock(scope: !1556, file: !102, line: 616, column: 17)
!1584 = !DILocation(line: 618, column: 30, scope: !1581)
!1585 = !DILocalVariable(name: "bytes", scope: !1581, file: !102, line: 619, type: !124)
!1586 = !DILocation(line: 619, column: 28, scope: !1581)
!1587 = !DILocation(line: 619, column: 51, scope: !1581)
!1588 = !DILocation(line: 619, column: 55, scope: !1581)
!1589 = !DILocation(line: 619, column: 59, scope: !1581)
!1590 = !DILocation(line: 619, column: 57, scope: !1581)
!1591 = !DILocation(line: 620, column: 46, scope: !1581)
!1592 = !DILocation(line: 620, column: 57, scope: !1581)
!1593 = !DILocation(line: 620, column: 61, scope: !1581)
!1594 = !DILocation(line: 620, column: 59, scope: !1581)
!1595 = !DILocation(line: 620, column: 54, scope: !1581)
!1596 = !DILocation(line: 619, column: 36, scope: !1581)
!1597 = !DILocation(line: 621, column: 25, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1581, file: !102, line: 621, column: 25)
!1599 = !DILocation(line: 621, column: 31, scope: !1598)
!1600 = !DILocation(line: 621, column: 25, scope: !1581)
!1601 = !DILocation(line: 622, column: 23, scope: !1598)
!1602 = !DILocation(line: 623, column: 30, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !102, line: 623, column: 30)
!1604 = !DILocation(line: 623, column: 36, scope: !1603)
!1605 = !DILocation(line: 623, column: 30, scope: !1598)
!1606 = !DILocation(line: 625, column: 35, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1603, file: !102, line: 624, column: 23)
!1608 = !DILocation(line: 626, column: 25, scope: !1607)
!1609 = !DILocation(line: 628, column: 30, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1603, file: !102, line: 628, column: 30)
!1611 = !DILocation(line: 628, column: 36, scope: !1610)
!1612 = !DILocation(line: 628, column: 30, scope: !1603)
!1613 = !DILocation(line: 630, column: 35, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1610, file: !102, line: 629, column: 23)
!1615 = !DILocation(line: 631, column: 25, scope: !1614)
!1616 = !DILocation(line: 631, column: 32, scope: !1614)
!1617 = !DILocation(line: 631, column: 36, scope: !1614)
!1618 = !DILocation(line: 631, column: 34, scope: !1614)
!1619 = !DILocation(line: 631, column: 40, scope: !1614)
!1620 = !DILocation(line: 631, column: 38, scope: !1614)
!1621 = !DILocation(line: 631, column: 48, scope: !1614)
!1622 = !DILocation(line: 631, column: 51, scope: !1614)
!1623 = !DILocation(line: 631, column: 55, scope: !1614)
!1624 = !DILocation(line: 631, column: 59, scope: !1614)
!1625 = !DILocation(line: 631, column: 57, scope: !1614)
!1626 = !DILocation(line: 0, scope: !1614)
!1627 = !DILocation(line: 632, column: 28, scope: !1614)
!1628 = distinct !{!1628, !1615, !1627, !371}
!1629 = !DILocation(line: 633, column: 25, scope: !1614)
!1630 = !DILocation(line: 645, column: 44, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !102, line: 645, column: 29)
!1632 = distinct !DILexicalBlock(scope: !1610, file: !102, line: 636, column: 23)
!1633 = !DILocation(line: 646, column: 29, scope: !1631)
!1634 = !DILocation(line: 646, column: 32, scope: !1631)
!1635 = !DILocation(line: 646, column: 46, scope: !1631)
!1636 = !DILocation(line: 645, column: 29, scope: !1632)
!1637 = !DILocalVariable(name: "j", scope: !1638, file: !102, line: 648, type: !124)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !102, line: 648, column: 29)
!1639 = distinct !DILexicalBlock(scope: !1631, file: !102, line: 647, column: 27)
!1640 = !DILocation(line: 648, column: 41, scope: !1638)
!1641 = !DILocation(line: 648, column: 34, scope: !1638)
!1642 = !DILocation(line: 648, column: 48, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !102, line: 648, column: 29)
!1644 = !DILocation(line: 648, column: 52, scope: !1643)
!1645 = !DILocation(line: 648, column: 50, scope: !1643)
!1646 = !DILocation(line: 648, column: 29, scope: !1638)
!1647 = !DILocation(line: 649, column: 39, scope: !1643)
!1648 = !DILocation(line: 649, column: 43, scope: !1643)
!1649 = !DILocation(line: 649, column: 47, scope: !1643)
!1650 = !DILocation(line: 649, column: 45, scope: !1643)
!1651 = !DILocation(line: 649, column: 51, scope: !1643)
!1652 = !DILocation(line: 649, column: 49, scope: !1643)
!1653 = !DILocation(line: 649, column: 31, scope: !1643)
!1654 = !DILocation(line: 653, column: 35, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1643, file: !102, line: 650, column: 33)
!1656 = !DILocation(line: 654, column: 33, scope: !1655)
!1657 = !DILocation(line: 648, column: 60, scope: !1643)
!1658 = !DILocation(line: 648, column: 29, scope: !1643)
!1659 = distinct !{!1659, !1646, !1660, !371}
!1660 = !DILocation(line: 654, column: 33, scope: !1638)
!1661 = !DILocation(line: 655, column: 27, scope: !1639)
!1662 = !DILocation(line: 657, column: 43, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1632, file: !102, line: 657, column: 29)
!1664 = !DILocation(line: 657, column: 31, scope: !1663)
!1665 = !DILocation(line: 657, column: 29, scope: !1632)
!1666 = !DILocation(line: 658, column: 37, scope: !1663)
!1667 = !DILocation(line: 658, column: 27, scope: !1663)
!1668 = !DILocation(line: 659, column: 30, scope: !1632)
!1669 = !DILocation(line: 659, column: 27, scope: !1632)
!1670 = !DILocation(line: 664, column: 23, scope: !1581)
!1671 = !DILocation(line: 668, column: 40, scope: !1542)
!1672 = !DILocation(line: 668, column: 38, scope: !1542)
!1673 = !DILocation(line: 670, column: 21, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1542, file: !102, line: 670, column: 17)
!1675 = !DILocation(line: 670, column: 19, scope: !1674)
!1676 = !DILocation(line: 670, column: 23, scope: !1674)
!1677 = !DILocation(line: 670, column: 27, scope: !1674)
!1678 = !DILocation(line: 670, column: 45, scope: !1674)
!1679 = !DILocation(line: 670, column: 50, scope: !1674)
!1680 = !DILocation(line: 670, column: 17, scope: !1542)
!1681 = !DILocalVariable(name: "ilim", scope: !1682, file: !102, line: 674, type: !124)
!1682 = distinct !DILexicalBlock(scope: !1674, file: !102, line: 671, column: 15)
!1683 = !DILocation(line: 674, column: 24, scope: !1682)
!1684 = !DILocation(line: 674, column: 31, scope: !1682)
!1685 = !DILocation(line: 674, column: 35, scope: !1682)
!1686 = !DILocation(line: 674, column: 33, scope: !1682)
!1687 = !DILocation(line: 676, column: 17, scope: !1682)
!1688 = !DILocation(line: 678, column: 25, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !102, line: 678, column: 25)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !102, line: 677, column: 19)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !102, line: 676, column: 17)
!1692 = distinct !DILexicalBlock(scope: !1682, file: !102, line: 676, column: 17)
!1693 = !DILocation(line: 678, column: 43, scope: !1689)
!1694 = !DILocation(line: 678, column: 48, scope: !1689)
!1695 = !DILocation(line: 678, column: 25, scope: !1690)
!1696 = !DILocation(line: 680, column: 25, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1689, file: !102, line: 679, column: 23)
!1698 = !DILocation(line: 680, column: 25, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !102, line: 680, column: 25)
!1700 = distinct !DILexicalBlock(scope: !1697, file: !102, line: 680, column: 25)
!1701 = !DILocation(line: 680, column: 25, scope: !1700)
!1702 = !DILocation(line: 680, column: 25, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1700, file: !102, line: 680, column: 25)
!1704 = !DILocation(line: 680, column: 25, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1703, file: !102, line: 680, column: 25)
!1706 = !DILocation(line: 680, column: 25, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !102, line: 680, column: 25)
!1708 = distinct !DILexicalBlock(scope: !1705, file: !102, line: 680, column: 25)
!1709 = !DILocation(line: 680, column: 25, scope: !1708)
!1710 = !DILocation(line: 680, column: 25, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !102, line: 680, column: 25)
!1712 = distinct !DILexicalBlock(scope: !1705, file: !102, line: 680, column: 25)
!1713 = !DILocation(line: 680, column: 25, scope: !1712)
!1714 = !DILocation(line: 680, column: 25, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !102, line: 680, column: 25)
!1716 = distinct !DILexicalBlock(scope: !1705, file: !102, line: 680, column: 25)
!1717 = !DILocation(line: 680, column: 25, scope: !1716)
!1718 = !DILocation(line: 680, column: 25, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !102, line: 680, column: 25)
!1720 = distinct !DILexicalBlock(scope: !1700, file: !102, line: 680, column: 25)
!1721 = !DILocation(line: 680, column: 25, scope: !1720)
!1722 = !DILocation(line: 681, column: 25, scope: !1697)
!1723 = !DILocation(line: 681, column: 25, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !102, line: 681, column: 25)
!1725 = distinct !DILexicalBlock(scope: !1697, file: !102, line: 681, column: 25)
!1726 = !DILocation(line: 681, column: 25, scope: !1725)
!1727 = !DILocation(line: 682, column: 25, scope: !1697)
!1728 = !DILocation(line: 682, column: 25, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !102, line: 682, column: 25)
!1730 = distinct !DILexicalBlock(scope: !1697, file: !102, line: 682, column: 25)
!1731 = !DILocation(line: 682, column: 25, scope: !1730)
!1732 = !DILocation(line: 683, column: 36, scope: !1697)
!1733 = !DILocation(line: 683, column: 38, scope: !1697)
!1734 = !DILocation(line: 683, column: 33, scope: !1697)
!1735 = !DILocation(line: 683, column: 29, scope: !1697)
!1736 = !DILocation(line: 683, column: 27, scope: !1697)
!1737 = !DILocation(line: 684, column: 23, scope: !1697)
!1738 = !DILocation(line: 685, column: 30, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1689, file: !102, line: 685, column: 30)
!1740 = !DILocation(line: 685, column: 30, scope: !1689)
!1741 = !DILocation(line: 687, column: 25, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1739, file: !102, line: 686, column: 23)
!1743 = !DILocation(line: 687, column: 25, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !102, line: 687, column: 25)
!1745 = distinct !DILexicalBlock(scope: !1742, file: !102, line: 687, column: 25)
!1746 = !DILocation(line: 687, column: 25, scope: !1745)
!1747 = !DILocation(line: 688, column: 40, scope: !1742)
!1748 = !DILocation(line: 689, column: 23, scope: !1742)
!1749 = !DILocation(line: 690, column: 25, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1690, file: !102, line: 690, column: 25)
!1751 = !DILocation(line: 690, column: 33, scope: !1750)
!1752 = !DILocation(line: 690, column: 35, scope: !1750)
!1753 = !DILocation(line: 690, column: 30, scope: !1750)
!1754 = !DILocation(line: 690, column: 25, scope: !1690)
!1755 = !DILocation(line: 691, column: 23, scope: !1750)
!1756 = !DILocation(line: 692, column: 21, scope: !1690)
!1757 = !DILocation(line: 692, column: 21, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !102, line: 692, column: 21)
!1759 = distinct !DILexicalBlock(scope: !1690, file: !102, line: 692, column: 21)
!1760 = !DILocation(line: 692, column: 21, scope: !1759)
!1761 = !DILocation(line: 692, column: 21, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1758, file: !102, line: 692, column: 21)
!1763 = !DILocation(line: 692, column: 21, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !102, line: 692, column: 21)
!1765 = distinct !DILexicalBlock(scope: !1762, file: !102, line: 692, column: 21)
!1766 = !DILocation(line: 692, column: 21, scope: !1765)
!1767 = !DILocation(line: 692, column: 21, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !102, line: 692, column: 21)
!1769 = distinct !DILexicalBlock(scope: !1762, file: !102, line: 692, column: 21)
!1770 = !DILocation(line: 692, column: 21, scope: !1769)
!1771 = !DILocation(line: 693, column: 21, scope: !1690)
!1772 = !DILocation(line: 693, column: 21, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !102, line: 693, column: 21)
!1774 = distinct !DILexicalBlock(scope: !1690, file: !102, line: 693, column: 21)
!1775 = !DILocation(line: 693, column: 21, scope: !1774)
!1776 = !DILocation(line: 694, column: 25, scope: !1690)
!1777 = !DILocation(line: 694, column: 29, scope: !1690)
!1778 = !DILocation(line: 694, column: 23, scope: !1690)
!1779 = !DILocation(line: 676, column: 17, scope: !1691)
!1780 = distinct !{!1780, !1781, !1782}
!1781 = !DILocation(line: 676, column: 17, scope: !1692)
!1782 = !DILocation(line: 695, column: 19, scope: !1692)
!1783 = !DILocation(line: 697, column: 17, scope: !1682)
!1784 = !DILocation(line: 700, column: 9, scope: !1293)
!1785 = !DILocation(line: 702, column: 16, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1243, file: !102, line: 702, column: 11)
!1787 = !DILocation(line: 702, column: 34, scope: !1786)
!1788 = !DILocation(line: 702, column: 37, scope: !1786)
!1789 = !DILocation(line: 702, column: 51, scope: !1786)
!1790 = !DILocation(line: 703, column: 15, scope: !1786)
!1791 = !DILocation(line: 703, column: 18, scope: !1786)
!1792 = !DILocation(line: 704, column: 14, scope: !1786)
!1793 = !DILocation(line: 704, column: 17, scope: !1786)
!1794 = !DILocation(line: 705, column: 14, scope: !1786)
!1795 = !DILocation(line: 705, column: 17, scope: !1786)
!1796 = !DILocation(line: 705, column: 33, scope: !1786)
!1797 = !DILocation(line: 705, column: 35, scope: !1786)
!1798 = !DILocation(line: 705, column: 51, scope: !1786)
!1799 = !DILocation(line: 705, column: 53, scope: !1786)
!1800 = !DILocation(line: 705, column: 47, scope: !1786)
!1801 = !DILocation(line: 705, column: 65, scope: !1786)
!1802 = !DILocation(line: 706, column: 11, scope: !1786)
!1803 = !DILocation(line: 706, column: 15, scope: !1786)
!1804 = !DILocation(line: 702, column: 11, scope: !1243)
!1805 = !DILocation(line: 707, column: 9, scope: !1786)
!1806 = !DILabel(scope: !1243, name: "store_escape", file: !102, line: 709)
!1807 = !DILocation(line: 709, column: 5, scope: !1243)
!1808 = !DILocation(line: 710, column: 7, scope: !1243)
!1809 = !DILocation(line: 710, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !102, line: 710, column: 7)
!1811 = distinct !DILexicalBlock(scope: !1243, file: !102, line: 710, column: 7)
!1812 = !DILocation(line: 710, column: 7, scope: !1811)
!1813 = !DILocation(line: 710, column: 7, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1811, file: !102, line: 710, column: 7)
!1815 = !DILocation(line: 710, column: 7, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1814, file: !102, line: 710, column: 7)
!1817 = !DILocation(line: 710, column: 7, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !102, line: 710, column: 7)
!1819 = distinct !DILexicalBlock(scope: !1816, file: !102, line: 710, column: 7)
!1820 = !DILocation(line: 710, column: 7, scope: !1819)
!1821 = !DILocation(line: 710, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !102, line: 710, column: 7)
!1823 = distinct !DILexicalBlock(scope: !1816, file: !102, line: 710, column: 7)
!1824 = !DILocation(line: 710, column: 7, scope: !1823)
!1825 = !DILocation(line: 710, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !102, line: 710, column: 7)
!1827 = distinct !DILexicalBlock(scope: !1816, file: !102, line: 710, column: 7)
!1828 = !DILocation(line: 710, column: 7, scope: !1827)
!1829 = !DILocation(line: 710, column: 7, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !102, line: 710, column: 7)
!1831 = distinct !DILexicalBlock(scope: !1811, file: !102, line: 710, column: 7)
!1832 = !DILocation(line: 710, column: 7, scope: !1831)
!1833 = !DILabel(scope: !1243, name: "store_c", file: !102, line: 712)
!1834 = !DILocation(line: 712, column: 5, scope: !1243)
!1835 = !DILocation(line: 713, column: 7, scope: !1243)
!1836 = !DILocation(line: 713, column: 7, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !102, line: 713, column: 7)
!1838 = distinct !DILexicalBlock(scope: !1243, file: !102, line: 713, column: 7)
!1839 = !DILocation(line: 713, column: 7, scope: !1838)
!1840 = !DILocation(line: 713, column: 7, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1837, file: !102, line: 713, column: 7)
!1842 = !DILocation(line: 713, column: 7, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !102, line: 713, column: 7)
!1844 = distinct !DILexicalBlock(scope: !1841, file: !102, line: 713, column: 7)
!1845 = !DILocation(line: 713, column: 7, scope: !1844)
!1846 = !DILocation(line: 713, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !102, line: 713, column: 7)
!1848 = distinct !DILexicalBlock(scope: !1841, file: !102, line: 713, column: 7)
!1849 = !DILocation(line: 713, column: 7, scope: !1848)
!1850 = !DILocation(line: 714, column: 7, scope: !1243)
!1851 = !DILocation(line: 714, column: 7, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !102, line: 714, column: 7)
!1853 = distinct !DILexicalBlock(scope: !1243, file: !102, line: 714, column: 7)
!1854 = !DILocation(line: 714, column: 7, scope: !1853)
!1855 = !DILocation(line: 716, column: 13, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1243, file: !102, line: 716, column: 11)
!1857 = !DILocation(line: 716, column: 11, scope: !1243)
!1858 = !DILocation(line: 717, column: 38, scope: !1856)
!1859 = !DILocation(line: 717, column: 9, scope: !1856)
!1860 = !DILocation(line: 718, column: 5, scope: !1243)
!1861 = !DILocation(line: 395, column: 82, scope: !1232)
!1862 = !DILocation(line: 395, column: 3, scope: !1232)
!1863 = distinct !{!1863, !1241, !1864, !371}
!1864 = !DILocation(line: 718, column: 5, scope: !1228)
!1865 = !DILocation(line: 720, column: 7, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1090, file: !102, line: 720, column: 7)
!1867 = !DILocation(line: 720, column: 11, scope: !1866)
!1868 = !DILocation(line: 720, column: 16, scope: !1866)
!1869 = !DILocation(line: 720, column: 19, scope: !1866)
!1870 = !DILocation(line: 720, column: 33, scope: !1866)
!1871 = !DILocation(line: 721, column: 7, scope: !1866)
!1872 = !DILocation(line: 721, column: 10, scope: !1866)
!1873 = !DILocation(line: 720, column: 7, scope: !1090)
!1874 = !DILocation(line: 722, column: 5, scope: !1866)
!1875 = !DILocation(line: 728, column: 7, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1090, file: !102, line: 728, column: 7)
!1877 = !DILocation(line: 728, column: 21, scope: !1876)
!1878 = !DILocation(line: 728, column: 51, scope: !1876)
!1879 = !DILocation(line: 728, column: 56, scope: !1876)
!1880 = !DILocation(line: 729, column: 7, scope: !1876)
!1881 = !DILocation(line: 729, column: 10, scope: !1876)
!1882 = !DILocation(line: 728, column: 7, scope: !1090)
!1883 = !DILocation(line: 731, column: 11, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !102, line: 731, column: 11)
!1885 = distinct !DILexicalBlock(scope: !1876, file: !102, line: 730, column: 5)
!1886 = !DILocation(line: 731, column: 11, scope: !1885)
!1887 = !DILocation(line: 732, column: 42, scope: !1884)
!1888 = !DILocation(line: 732, column: 50, scope: !1884)
!1889 = !DILocation(line: 732, column: 67, scope: !1884)
!1890 = !DILocation(line: 732, column: 72, scope: !1884)
!1891 = !DILocation(line: 734, column: 42, scope: !1884)
!1892 = !DILocation(line: 734, column: 49, scope: !1884)
!1893 = !DILocation(line: 735, column: 42, scope: !1884)
!1894 = !DILocation(line: 735, column: 54, scope: !1884)
!1895 = !DILocation(line: 732, column: 16, scope: !1884)
!1896 = !DILocation(line: 732, column: 9, scope: !1884)
!1897 = !DILocation(line: 736, column: 18, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1884, file: !102, line: 736, column: 16)
!1899 = !DILocation(line: 736, column: 29, scope: !1898)
!1900 = !DILocation(line: 736, column: 32, scope: !1898)
!1901 = !DILocation(line: 736, column: 16, scope: !1884)
!1902 = !DILocation(line: 739, column: 24, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1898, file: !102, line: 737, column: 9)
!1904 = !DILocation(line: 739, column: 22, scope: !1903)
!1905 = !DILocation(line: 740, column: 15, scope: !1903)
!1906 = !DILocation(line: 741, column: 11, scope: !1903)
!1907 = !DILocation(line: 743, column: 5, scope: !1885)
!1908 = !DILocation(line: 745, column: 7, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1090, file: !102, line: 745, column: 7)
!1910 = !DILocation(line: 745, column: 20, scope: !1909)
!1911 = !DILocation(line: 745, column: 24, scope: !1909)
!1912 = !DILocation(line: 745, column: 7, scope: !1090)
!1913 = !DILocation(line: 746, column: 5, scope: !1909)
!1914 = !DILocation(line: 746, column: 13, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !102, line: 746, column: 5)
!1916 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 746, column: 5)
!1917 = !DILocation(line: 746, column: 12, scope: !1915)
!1918 = !DILocation(line: 746, column: 5, scope: !1916)
!1919 = !DILocation(line: 747, column: 7, scope: !1915)
!1920 = !DILocation(line: 747, column: 7, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !102, line: 747, column: 7)
!1922 = distinct !DILexicalBlock(scope: !1915, file: !102, line: 747, column: 7)
!1923 = !DILocation(line: 747, column: 7, scope: !1922)
!1924 = !DILocation(line: 746, column: 39, scope: !1915)
!1925 = !DILocation(line: 746, column: 5, scope: !1915)
!1926 = distinct !{!1926, !1918, !1927, !371}
!1927 = !DILocation(line: 747, column: 7, scope: !1916)
!1928 = !DILocation(line: 749, column: 7, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1090, file: !102, line: 749, column: 7)
!1930 = !DILocation(line: 749, column: 13, scope: !1929)
!1931 = !DILocation(line: 749, column: 11, scope: !1929)
!1932 = !DILocation(line: 749, column: 7, scope: !1090)
!1933 = !DILocation(line: 750, column: 5, scope: !1929)
!1934 = !DILocation(line: 750, column: 12, scope: !1929)
!1935 = !DILocation(line: 750, column: 17, scope: !1929)
!1936 = !DILocation(line: 751, column: 10, scope: !1090)
!1937 = !DILocation(line: 751, column: 3, scope: !1090)
!1938 = !DILabel(scope: !1090, name: "force_outer_quoting_style", file: !102, line: 753)
!1939 = !DILocation(line: 753, column: 2, scope: !1090)
!1940 = !DILocation(line: 756, column: 7, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1090, file: !102, line: 756, column: 7)
!1942 = !DILocation(line: 756, column: 21, scope: !1941)
!1943 = !DILocation(line: 756, column: 51, scope: !1941)
!1944 = !DILocation(line: 756, column: 54, scope: !1941)
!1945 = !DILocation(line: 756, column: 7, scope: !1090)
!1946 = !DILocation(line: 757, column: 19, scope: !1941)
!1947 = !DILocation(line: 757, column: 5, scope: !1941)
!1948 = !DILocation(line: 758, column: 36, scope: !1090)
!1949 = !DILocation(line: 758, column: 44, scope: !1090)
!1950 = !DILocation(line: 758, column: 56, scope: !1090)
!1951 = !DILocation(line: 758, column: 61, scope: !1090)
!1952 = !DILocation(line: 759, column: 36, scope: !1090)
!1953 = !DILocation(line: 760, column: 36, scope: !1090)
!1954 = !DILocation(line: 760, column: 42, scope: !1090)
!1955 = !DILocation(line: 761, column: 36, scope: !1090)
!1956 = !DILocation(line: 761, column: 48, scope: !1090)
!1957 = !DILocation(line: 758, column: 10, scope: !1090)
!1958 = !DILocation(line: 758, column: 3, scope: !1090)
!1959 = !DILocation(line: 762, column: 1, scope: !1090)
!1960 = !DILocalVariable(name: "msgid", arg: 1, scope: !155, file: !102, line: 197, type: !6)
!1961 = !DILocation(line: 197, column: 28, scope: !155)
!1962 = !DILocalVariable(name: "s", arg: 2, scope: !155, file: !102, line: 197, type: !104)
!1963 = !DILocation(line: 197, column: 54, scope: !155)
!1964 = !DILocalVariable(name: "translation", scope: !155, file: !102, line: 199, type: !6)
!1965 = !DILocation(line: 199, column: 15, scope: !155)
!1966 = !DILocation(line: 199, column: 29, scope: !155)
!1967 = !DILocation(line: 201, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !155, file: !102, line: 201, column: 7)
!1969 = !DILocation(line: 201, column: 22, scope: !1968)
!1970 = !DILocation(line: 201, column: 19, scope: !1968)
!1971 = !DILocation(line: 201, column: 7, scope: !155)
!1972 = !DILocation(line: 202, column: 12, scope: !1968)
!1973 = !DILocation(line: 202, column: 5, scope: !1968)
!1974 = !DILocalVariable(name: "w", scope: !155, file: !102, line: 229, type: !877)
!1975 = !DILocation(line: 229, column: 12, scope: !155)
!1976 = !DILocalVariable(name: "mbs", scope: !155, file: !102, line: 230, type: !1557)
!1977 = !DILocation(line: 230, column: 13, scope: !155)
!1978 = !DILocation(line: 230, column: 18, scope: !155)
!1979 = !DILocation(line: 231, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !155, file: !102, line: 231, column: 7)
!1981 = !DILocation(line: 231, column: 40, scope: !1980)
!1982 = !DILocation(line: 231, column: 45, scope: !1980)
!1983 = !DILocation(line: 231, column: 48, scope: !1980)
!1984 = !DILocation(line: 231, column: 50, scope: !1980)
!1985 = !DILocation(line: 231, column: 7, scope: !155)
!1986 = !DILocation(line: 232, column: 18, scope: !1980)
!1987 = !DILocation(line: 232, column: 27, scope: !1980)
!1988 = !DILocation(line: 232, column: 12, scope: !1980)
!1989 = !DILocation(line: 232, column: 5, scope: !1980)
!1990 = !DILocation(line: 234, column: 11, scope: !155)
!1991 = !DILocation(line: 234, column: 13, scope: !155)
!1992 = !DILocation(line: 234, column: 3, scope: !155)
!1993 = !DILocation(line: 235, column: 1, scope: !155)
!1994 = distinct !DISubprogram(name: "quotearg_alloc", scope: !102, file: !102, line: 788, type: !1995, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!29, !6, !124, !930}
!1997 = !DILocalVariable(name: "arg", arg: 1, scope: !1994, file: !102, line: 788, type: !6)
!1998 = !DILocation(line: 788, column: 29, scope: !1994)
!1999 = !DILocalVariable(name: "argsize", arg: 2, scope: !1994, file: !102, line: 788, type: !124)
!2000 = !DILocation(line: 788, column: 41, scope: !1994)
!2001 = !DILocalVariable(name: "o", arg: 3, scope: !1994, file: !102, line: 789, type: !930)
!2002 = !DILocation(line: 789, column: 47, scope: !1994)
!2003 = !DILocation(line: 791, column: 30, scope: !1994)
!2004 = !DILocation(line: 791, column: 35, scope: !1994)
!2005 = !DILocation(line: 791, column: 50, scope: !1994)
!2006 = !DILocation(line: 791, column: 10, scope: !1994)
!2007 = !DILocation(line: 791, column: 3, scope: !1994)
!2008 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !102, file: !102, line: 801, type: !2009, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!29, !6, !124, !228, !930}
!2011 = !DILocalVariable(name: "arg", arg: 1, scope: !2008, file: !102, line: 801, type: !6)
!2012 = !DILocation(line: 801, column: 33, scope: !2008)
!2013 = !DILocalVariable(name: "argsize", arg: 2, scope: !2008, file: !102, line: 801, type: !124)
!2014 = !DILocation(line: 801, column: 45, scope: !2008)
!2015 = !DILocalVariable(name: "size", arg: 3, scope: !2008, file: !102, line: 801, type: !228)
!2016 = !DILocation(line: 801, column: 62, scope: !2008)
!2017 = !DILocalVariable(name: "o", arg: 4, scope: !2008, file: !102, line: 802, type: !930)
!2018 = !DILocation(line: 802, column: 51, scope: !2008)
!2019 = !DILocalVariable(name: "p", scope: !2008, file: !102, line: 804, type: !930)
!2020 = !DILocation(line: 804, column: 33, scope: !2008)
!2021 = !DILocation(line: 804, column: 37, scope: !2008)
!2022 = !DILocation(line: 804, column: 41, scope: !2008)
!2023 = !DILocalVariable(name: "saved_errno", scope: !2008, file: !102, line: 805, type: !31)
!2024 = !DILocation(line: 805, column: 7, scope: !2008)
!2025 = !DILocation(line: 805, column: 21, scope: !2008)
!2026 = !DILocalVariable(name: "flags", scope: !2008, file: !102, line: 807, type: !31)
!2027 = !DILocation(line: 807, column: 7, scope: !2008)
!2028 = !DILocation(line: 807, column: 15, scope: !2008)
!2029 = !DILocation(line: 807, column: 18, scope: !2008)
!2030 = !DILocation(line: 807, column: 27, scope: !2008)
!2031 = !DILocation(line: 807, column: 24, scope: !2008)
!2032 = !DILocalVariable(name: "bufsize", scope: !2008, file: !102, line: 808, type: !124)
!2033 = !DILocation(line: 808, column: 10, scope: !2008)
!2034 = !DILocation(line: 808, column: 55, scope: !2008)
!2035 = !DILocation(line: 808, column: 60, scope: !2008)
!2036 = !DILocation(line: 808, column: 69, scope: !2008)
!2037 = !DILocation(line: 808, column: 72, scope: !2008)
!2038 = !DILocation(line: 809, column: 46, scope: !2008)
!2039 = !DILocation(line: 809, column: 53, scope: !2008)
!2040 = !DILocation(line: 809, column: 56, scope: !2008)
!2041 = !DILocation(line: 810, column: 46, scope: !2008)
!2042 = !DILocation(line: 810, column: 49, scope: !2008)
!2043 = !DILocation(line: 811, column: 46, scope: !2008)
!2044 = !DILocation(line: 811, column: 49, scope: !2008)
!2045 = !DILocation(line: 808, column: 20, scope: !2008)
!2046 = !DILocation(line: 811, column: 62, scope: !2008)
!2047 = !DILocalVariable(name: "buf", scope: !2008, file: !102, line: 812, type: !29)
!2048 = !DILocation(line: 812, column: 9, scope: !2008)
!2049 = !DILocation(line: 812, column: 27, scope: !2008)
!2050 = !DILocation(line: 812, column: 15, scope: !2008)
!2051 = !DILocation(line: 813, column: 29, scope: !2008)
!2052 = !DILocation(line: 813, column: 34, scope: !2008)
!2053 = !DILocation(line: 813, column: 43, scope: !2008)
!2054 = !DILocation(line: 813, column: 48, scope: !2008)
!2055 = !DILocation(line: 813, column: 57, scope: !2008)
!2056 = !DILocation(line: 813, column: 60, scope: !2008)
!2057 = !DILocation(line: 813, column: 67, scope: !2008)
!2058 = !DILocation(line: 814, column: 29, scope: !2008)
!2059 = !DILocation(line: 814, column: 32, scope: !2008)
!2060 = !DILocation(line: 815, column: 29, scope: !2008)
!2061 = !DILocation(line: 815, column: 32, scope: !2008)
!2062 = !DILocation(line: 815, column: 44, scope: !2008)
!2063 = !DILocation(line: 815, column: 47, scope: !2008)
!2064 = !DILocation(line: 813, column: 3, scope: !2008)
!2065 = !DILocation(line: 816, column: 11, scope: !2008)
!2066 = !DILocation(line: 816, column: 3, scope: !2008)
!2067 = !DILocation(line: 816, column: 9, scope: !2008)
!2068 = !DILocation(line: 817, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2008, file: !102, line: 817, column: 7)
!2070 = !DILocation(line: 817, column: 7, scope: !2008)
!2071 = !DILocation(line: 818, column: 13, scope: !2069)
!2072 = !DILocation(line: 818, column: 21, scope: !2069)
!2073 = !DILocation(line: 818, column: 6, scope: !2069)
!2074 = !DILocation(line: 818, column: 11, scope: !2069)
!2075 = !DILocation(line: 818, column: 5, scope: !2069)
!2076 = !DILocation(line: 819, column: 10, scope: !2008)
!2077 = !DILocation(line: 819, column: 3, scope: !2008)
!2078 = distinct !DISubprogram(name: "quotearg_free", scope: !102, file: !102, line: 837, type: !80, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2079 = !DILocalVariable(name: "sv", scope: !2078, file: !102, line: 839, type: !163)
!2080 = !DILocation(line: 839, column: 19, scope: !2078)
!2081 = !DILocation(line: 839, column: 24, scope: !2078)
!2082 = !DILocalVariable(name: "i", scope: !2083, file: !102, line: 840, type: !31)
!2083 = distinct !DILexicalBlock(scope: !2078, file: !102, line: 840, column: 3)
!2084 = !DILocation(line: 840, column: 12, scope: !2083)
!2085 = !DILocation(line: 840, column: 8, scope: !2083)
!2086 = !DILocation(line: 840, column: 19, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2083, file: !102, line: 840, column: 3)
!2088 = !DILocation(line: 840, column: 23, scope: !2087)
!2089 = !DILocation(line: 840, column: 21, scope: !2087)
!2090 = !DILocation(line: 840, column: 3, scope: !2083)
!2091 = !DILocation(line: 841, column: 11, scope: !2087)
!2092 = !DILocation(line: 841, column: 14, scope: !2087)
!2093 = !DILocation(line: 841, column: 17, scope: !2087)
!2094 = !DILocation(line: 841, column: 5, scope: !2087)
!2095 = !DILocation(line: 840, column: 32, scope: !2087)
!2096 = !DILocation(line: 840, column: 3, scope: !2087)
!2097 = distinct !{!2097, !2090, !2098, !371}
!2098 = !DILocation(line: 841, column: 20, scope: !2083)
!2099 = !DILocation(line: 842, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2078, file: !102, line: 842, column: 7)
!2101 = !DILocation(line: 842, column: 13, scope: !2100)
!2102 = !DILocation(line: 842, column: 17, scope: !2100)
!2103 = !DILocation(line: 842, column: 7, scope: !2078)
!2104 = !DILocation(line: 844, column: 13, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !102, line: 843, column: 5)
!2106 = !DILocation(line: 844, column: 19, scope: !2105)
!2107 = !DILocation(line: 844, column: 7, scope: !2105)
!2108 = !DILocation(line: 845, column: 21, scope: !2105)
!2109 = !DILocation(line: 846, column: 20, scope: !2105)
!2110 = !DILocation(line: 847, column: 5, scope: !2105)
!2111 = !DILocation(line: 848, column: 7, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2078, file: !102, line: 848, column: 7)
!2113 = !DILocation(line: 848, column: 10, scope: !2112)
!2114 = !DILocation(line: 848, column: 7, scope: !2078)
!2115 = !DILocation(line: 850, column: 13, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2112, file: !102, line: 849, column: 5)
!2117 = !DILocation(line: 850, column: 7, scope: !2116)
!2118 = !DILocation(line: 851, column: 15, scope: !2116)
!2119 = !DILocation(line: 852, column: 5, scope: !2116)
!2120 = !DILocation(line: 853, column: 10, scope: !2078)
!2121 = !DILocation(line: 854, column: 1, scope: !2078)
!2122 = distinct !DISubprogram(name: "quotearg_n", scope: !102, file: !102, line: 919, type: !2123, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!29, !31, !6}
!2125 = !DILocalVariable(name: "n", arg: 1, scope: !2122, file: !102, line: 919, type: !31)
!2126 = !DILocation(line: 919, column: 17, scope: !2122)
!2127 = !DILocalVariable(name: "arg", arg: 2, scope: !2122, file: !102, line: 919, type: !6)
!2128 = !DILocation(line: 919, column: 32, scope: !2122)
!2129 = !DILocation(line: 921, column: 30, scope: !2122)
!2130 = !DILocation(line: 921, column: 33, scope: !2122)
!2131 = !DILocation(line: 921, column: 10, scope: !2122)
!2132 = !DILocation(line: 921, column: 3, scope: !2122)
!2133 = distinct !DISubprogram(name: "quotearg_n_options", scope: !102, file: !102, line: 866, type: !2134, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!29, !31, !6, !124, !930}
!2136 = !DILocalVariable(name: "n", arg: 1, scope: !2133, file: !102, line: 866, type: !31)
!2137 = !DILocation(line: 866, column: 25, scope: !2133)
!2138 = !DILocalVariable(name: "arg", arg: 2, scope: !2133, file: !102, line: 866, type: !6)
!2139 = !DILocation(line: 866, column: 40, scope: !2133)
!2140 = !DILocalVariable(name: "argsize", arg: 3, scope: !2133, file: !102, line: 866, type: !124)
!2141 = !DILocation(line: 866, column: 52, scope: !2133)
!2142 = !DILocalVariable(name: "options", arg: 4, scope: !2133, file: !102, line: 867, type: !930)
!2143 = !DILocation(line: 867, column: 51, scope: !2133)
!2144 = !DILocalVariable(name: "saved_errno", scope: !2133, file: !102, line: 869, type: !31)
!2145 = !DILocation(line: 869, column: 7, scope: !2133)
!2146 = !DILocation(line: 869, column: 21, scope: !2133)
!2147 = !DILocalVariable(name: "sv", scope: !2133, file: !102, line: 871, type: !163)
!2148 = !DILocation(line: 871, column: 19, scope: !2133)
!2149 = !DILocation(line: 871, column: 24, scope: !2133)
!2150 = !DILocalVariable(name: "nslots_max", scope: !2133, file: !102, line: 873, type: !31)
!2151 = !DILocation(line: 873, column: 7, scope: !2133)
!2152 = !DILocation(line: 874, column: 15, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2133, file: !102, line: 874, column: 7)
!2154 = !DILocation(line: 874, column: 12, scope: !2153)
!2155 = !DILocation(line: 874, column: 17, scope: !2153)
!2156 = !DILocation(line: 874, column: 20, scope: !2153)
!2157 = !DILocation(line: 874, column: 24, scope: !2153)
!2158 = !DILocation(line: 874, column: 22, scope: !2153)
!2159 = !DILocation(line: 874, column: 7, scope: !2133)
!2160 = !DILocation(line: 875, column: 5, scope: !2153)
!2161 = !DILocation(line: 877, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2133, file: !102, line: 877, column: 7)
!2163 = !DILocation(line: 877, column: 17, scope: !2162)
!2164 = !DILocation(line: 877, column: 14, scope: !2162)
!2165 = !DILocation(line: 877, column: 7, scope: !2133)
!2166 = !DILocalVariable(name: "preallocated", scope: !2167, file: !102, line: 879, type: !47)
!2167 = distinct !DILexicalBlock(scope: !2162, file: !102, line: 878, column: 5)
!2168 = !DILocation(line: 879, column: 12, scope: !2167)
!2169 = !DILocation(line: 879, column: 28, scope: !2167)
!2170 = !DILocation(line: 879, column: 31, scope: !2167)
!2171 = !DILocalVariable(name: "new_nslots", scope: !2167, file: !102, line: 880, type: !236)
!2172 = !DILocation(line: 880, column: 13, scope: !2167)
!2173 = !DILocation(line: 880, column: 26, scope: !2167)
!2174 = !DILocation(line: 882, column: 31, scope: !2167)
!2175 = !DILocation(line: 882, column: 53, scope: !2167)
!2176 = !DILocation(line: 883, column: 31, scope: !2167)
!2177 = !DILocation(line: 883, column: 35, scope: !2167)
!2178 = !DILocation(line: 883, column: 33, scope: !2167)
!2179 = !DILocation(line: 883, column: 42, scope: !2167)
!2180 = !DILocation(line: 883, column: 47, scope: !2167)
!2181 = !DILocation(line: 882, column: 22, scope: !2167)
!2182 = !DILocation(line: 882, column: 20, scope: !2167)
!2183 = !DILocation(line: 882, column: 15, scope: !2167)
!2184 = !DILocation(line: 884, column: 11, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2167, file: !102, line: 884, column: 11)
!2186 = !DILocation(line: 884, column: 11, scope: !2167)
!2187 = !DILocation(line: 885, column: 10, scope: !2185)
!2188 = !DILocation(line: 885, column: 15, scope: !2185)
!2189 = !DILocation(line: 885, column: 9, scope: !2185)
!2190 = !DILocation(line: 886, column: 15, scope: !2167)
!2191 = !DILocation(line: 886, column: 20, scope: !2167)
!2192 = !DILocation(line: 886, column: 18, scope: !2167)
!2193 = !DILocation(line: 886, column: 7, scope: !2167)
!2194 = !DILocation(line: 886, column: 32, scope: !2167)
!2195 = !DILocation(line: 886, column: 45, scope: !2167)
!2196 = !DILocation(line: 886, column: 43, scope: !2167)
!2197 = !DILocation(line: 886, column: 53, scope: !2167)
!2198 = !DILocation(line: 887, column: 16, scope: !2167)
!2199 = !DILocation(line: 887, column: 14, scope: !2167)
!2200 = !DILocation(line: 888, column: 5, scope: !2167)
!2201 = !DILocalVariable(name: "size", scope: !2202, file: !102, line: 891, type: !124)
!2202 = distinct !DILexicalBlock(scope: !2133, file: !102, line: 890, column: 3)
!2203 = !DILocation(line: 891, column: 12, scope: !2202)
!2204 = !DILocation(line: 891, column: 19, scope: !2202)
!2205 = !DILocation(line: 891, column: 22, scope: !2202)
!2206 = !DILocation(line: 891, column: 25, scope: !2202)
!2207 = !DILocalVariable(name: "val", scope: !2202, file: !102, line: 892, type: !29)
!2208 = !DILocation(line: 892, column: 11, scope: !2202)
!2209 = !DILocation(line: 892, column: 17, scope: !2202)
!2210 = !DILocation(line: 892, column: 20, scope: !2202)
!2211 = !DILocation(line: 892, column: 23, scope: !2202)
!2212 = !DILocalVariable(name: "flags", scope: !2202, file: !102, line: 894, type: !31)
!2213 = !DILocation(line: 894, column: 9, scope: !2202)
!2214 = !DILocation(line: 894, column: 17, scope: !2202)
!2215 = !DILocation(line: 894, column: 26, scope: !2202)
!2216 = !DILocation(line: 894, column: 32, scope: !2202)
!2217 = !DILocalVariable(name: "qsize", scope: !2202, file: !102, line: 895, type: !124)
!2218 = !DILocation(line: 895, column: 12, scope: !2202)
!2219 = !DILocation(line: 895, column: 46, scope: !2202)
!2220 = !DILocation(line: 895, column: 51, scope: !2202)
!2221 = !DILocation(line: 895, column: 57, scope: !2202)
!2222 = !DILocation(line: 895, column: 62, scope: !2202)
!2223 = !DILocation(line: 896, column: 46, scope: !2202)
!2224 = !DILocation(line: 896, column: 55, scope: !2202)
!2225 = !DILocation(line: 896, column: 62, scope: !2202)
!2226 = !DILocation(line: 897, column: 46, scope: !2202)
!2227 = !DILocation(line: 897, column: 55, scope: !2202)
!2228 = !DILocation(line: 898, column: 46, scope: !2202)
!2229 = !DILocation(line: 898, column: 55, scope: !2202)
!2230 = !DILocation(line: 899, column: 46, scope: !2202)
!2231 = !DILocation(line: 899, column: 55, scope: !2202)
!2232 = !DILocation(line: 895, column: 20, scope: !2202)
!2233 = !DILocation(line: 901, column: 9, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2202, file: !102, line: 901, column: 9)
!2235 = !DILocation(line: 901, column: 17, scope: !2234)
!2236 = !DILocation(line: 901, column: 14, scope: !2234)
!2237 = !DILocation(line: 901, column: 9, scope: !2202)
!2238 = !DILocation(line: 903, column: 29, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2234, file: !102, line: 902, column: 7)
!2240 = !DILocation(line: 903, column: 35, scope: !2239)
!2241 = !DILocation(line: 903, column: 27, scope: !2239)
!2242 = !DILocation(line: 903, column: 9, scope: !2239)
!2243 = !DILocation(line: 903, column: 12, scope: !2239)
!2244 = !DILocation(line: 903, column: 15, scope: !2239)
!2245 = !DILocation(line: 903, column: 20, scope: !2239)
!2246 = !DILocation(line: 904, column: 13, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2239, file: !102, line: 904, column: 13)
!2248 = !DILocation(line: 904, column: 17, scope: !2247)
!2249 = !DILocation(line: 904, column: 13, scope: !2239)
!2250 = !DILocation(line: 905, column: 17, scope: !2247)
!2251 = !DILocation(line: 905, column: 11, scope: !2247)
!2252 = !DILocation(line: 906, column: 39, scope: !2239)
!2253 = !DILocation(line: 906, column: 27, scope: !2239)
!2254 = !DILocation(line: 906, column: 25, scope: !2239)
!2255 = !DILocation(line: 906, column: 9, scope: !2239)
!2256 = !DILocation(line: 906, column: 12, scope: !2239)
!2257 = !DILocation(line: 906, column: 15, scope: !2239)
!2258 = !DILocation(line: 906, column: 19, scope: !2239)
!2259 = !DILocation(line: 907, column: 35, scope: !2239)
!2260 = !DILocation(line: 907, column: 40, scope: !2239)
!2261 = !DILocation(line: 907, column: 46, scope: !2239)
!2262 = !DILocation(line: 907, column: 51, scope: !2239)
!2263 = !DILocation(line: 907, column: 60, scope: !2239)
!2264 = !DILocation(line: 907, column: 69, scope: !2239)
!2265 = !DILocation(line: 908, column: 35, scope: !2239)
!2266 = !DILocation(line: 908, column: 42, scope: !2239)
!2267 = !DILocation(line: 908, column: 51, scope: !2239)
!2268 = !DILocation(line: 909, column: 35, scope: !2239)
!2269 = !DILocation(line: 909, column: 44, scope: !2239)
!2270 = !DILocation(line: 910, column: 35, scope: !2239)
!2271 = !DILocation(line: 910, column: 44, scope: !2239)
!2272 = !DILocation(line: 907, column: 9, scope: !2239)
!2273 = !DILocation(line: 911, column: 7, scope: !2239)
!2274 = !DILocation(line: 913, column: 13, scope: !2202)
!2275 = !DILocation(line: 913, column: 5, scope: !2202)
!2276 = !DILocation(line: 913, column: 11, scope: !2202)
!2277 = !DILocation(line: 914, column: 12, scope: !2202)
!2278 = !DILocation(line: 914, column: 5, scope: !2202)
!2279 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !102, file: !102, line: 925, type: !2280, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!29, !31, !6, !124}
!2282 = !DILocalVariable(name: "n", arg: 1, scope: !2279, file: !102, line: 925, type: !31)
!2283 = !DILocation(line: 925, column: 21, scope: !2279)
!2284 = !DILocalVariable(name: "arg", arg: 2, scope: !2279, file: !102, line: 925, type: !6)
!2285 = !DILocation(line: 925, column: 36, scope: !2279)
!2286 = !DILocalVariable(name: "argsize", arg: 3, scope: !2279, file: !102, line: 925, type: !124)
!2287 = !DILocation(line: 925, column: 48, scope: !2279)
!2288 = !DILocation(line: 927, column: 30, scope: !2279)
!2289 = !DILocation(line: 927, column: 33, scope: !2279)
!2290 = !DILocation(line: 927, column: 38, scope: !2279)
!2291 = !DILocation(line: 927, column: 10, scope: !2279)
!2292 = !DILocation(line: 927, column: 3, scope: !2279)
!2293 = distinct !DISubprogram(name: "quotearg", scope: !102, file: !102, line: 931, type: !2294, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!29, !6}
!2296 = !DILocalVariable(name: "arg", arg: 1, scope: !2293, file: !102, line: 931, type: !6)
!2297 = !DILocation(line: 931, column: 23, scope: !2293)
!2298 = !DILocation(line: 933, column: 25, scope: !2293)
!2299 = !DILocation(line: 933, column: 10, scope: !2293)
!2300 = !DILocation(line: 933, column: 3, scope: !2293)
!2301 = distinct !DISubprogram(name: "quotearg_mem", scope: !102, file: !102, line: 937, type: !2302, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!29, !6, !124}
!2304 = !DILocalVariable(name: "arg", arg: 1, scope: !2301, file: !102, line: 937, type: !6)
!2305 = !DILocation(line: 937, column: 27, scope: !2301)
!2306 = !DILocalVariable(name: "argsize", arg: 2, scope: !2301, file: !102, line: 937, type: !124)
!2307 = !DILocation(line: 937, column: 39, scope: !2301)
!2308 = !DILocation(line: 939, column: 29, scope: !2301)
!2309 = !DILocation(line: 939, column: 34, scope: !2301)
!2310 = !DILocation(line: 939, column: 10, scope: !2301)
!2311 = !DILocation(line: 939, column: 3, scope: !2301)
!2312 = distinct !DISubprogram(name: "quotearg_n_style", scope: !102, file: !102, line: 943, type: !2313, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!29, !31, !104, !6}
!2315 = !DILocalVariable(name: "n", arg: 1, scope: !2312, file: !102, line: 943, type: !31)
!2316 = !DILocation(line: 943, column: 23, scope: !2312)
!2317 = !DILocalVariable(name: "s", arg: 2, scope: !2312, file: !102, line: 943, type: !104)
!2318 = !DILocation(line: 943, column: 45, scope: !2312)
!2319 = !DILocalVariable(name: "arg", arg: 3, scope: !2312, file: !102, line: 943, type: !6)
!2320 = !DILocation(line: 943, column: 60, scope: !2312)
!2321 = !DILocalVariable(name: "o", scope: !2312, file: !102, line: 945, type: !931)
!2322 = !DILocation(line: 945, column: 32, scope: !2312)
!2323 = !DILocation(line: 945, column: 64, scope: !2312)
!2324 = !DILocation(line: 945, column: 36, scope: !2312)
!2325 = !DILocation(line: 946, column: 30, scope: !2312)
!2326 = !DILocation(line: 946, column: 33, scope: !2312)
!2327 = !DILocation(line: 946, column: 10, scope: !2312)
!2328 = !DILocation(line: 946, column: 3, scope: !2312)
!2329 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !102, file: !102, line: 183, type: !2330, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!136, !104}
!2332 = !DILocalVariable(name: "style", arg: 1, scope: !2329, file: !102, line: 183, type: !104)
!2333 = !DILocation(line: 183, column: 48, scope: !2329)
!2334 = !DILocalVariable(name: "o", scope: !2329, file: !102, line: 185, type: !136)
!2335 = !DILocation(line: 185, column: 26, scope: !2329)
!2336 = !DILocation(line: 186, column: 7, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2329, file: !102, line: 186, column: 7)
!2338 = !DILocation(line: 186, column: 13, scope: !2337)
!2339 = !DILocation(line: 186, column: 7, scope: !2329)
!2340 = !DILocation(line: 187, column: 5, scope: !2337)
!2341 = !DILocation(line: 188, column: 13, scope: !2329)
!2342 = !DILocation(line: 188, column: 5, scope: !2329)
!2343 = !DILocation(line: 188, column: 11, scope: !2329)
!2344 = !DILocation(line: 189, column: 3, scope: !2329)
!2345 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !102, file: !102, line: 950, type: !2346, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!29, !31, !104, !6, !124}
!2348 = !DILocalVariable(name: "n", arg: 1, scope: !2345, file: !102, line: 950, type: !31)
!2349 = !DILocation(line: 950, column: 27, scope: !2345)
!2350 = !DILocalVariable(name: "s", arg: 2, scope: !2345, file: !102, line: 950, type: !104)
!2351 = !DILocation(line: 950, column: 49, scope: !2345)
!2352 = !DILocalVariable(name: "arg", arg: 3, scope: !2345, file: !102, line: 951, type: !6)
!2353 = !DILocation(line: 951, column: 35, scope: !2345)
!2354 = !DILocalVariable(name: "argsize", arg: 4, scope: !2345, file: !102, line: 951, type: !124)
!2355 = !DILocation(line: 951, column: 47, scope: !2345)
!2356 = !DILocalVariable(name: "o", scope: !2345, file: !102, line: 953, type: !931)
!2357 = !DILocation(line: 953, column: 32, scope: !2345)
!2358 = !DILocation(line: 953, column: 64, scope: !2345)
!2359 = !DILocation(line: 953, column: 36, scope: !2345)
!2360 = !DILocation(line: 954, column: 30, scope: !2345)
!2361 = !DILocation(line: 954, column: 33, scope: !2345)
!2362 = !DILocation(line: 954, column: 38, scope: !2345)
!2363 = !DILocation(line: 954, column: 10, scope: !2345)
!2364 = !DILocation(line: 954, column: 3, scope: !2345)
!2365 = distinct !DISubprogram(name: "quotearg_style", scope: !102, file: !102, line: 958, type: !2366, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!29, !104, !6}
!2368 = !DILocalVariable(name: "s", arg: 1, scope: !2365, file: !102, line: 958, type: !104)
!2369 = !DILocation(line: 958, column: 36, scope: !2365)
!2370 = !DILocalVariable(name: "arg", arg: 2, scope: !2365, file: !102, line: 958, type: !6)
!2371 = !DILocation(line: 958, column: 51, scope: !2365)
!2372 = !DILocation(line: 960, column: 31, scope: !2365)
!2373 = !DILocation(line: 960, column: 34, scope: !2365)
!2374 = !DILocation(line: 960, column: 10, scope: !2365)
!2375 = !DILocation(line: 960, column: 3, scope: !2365)
!2376 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !102, file: !102, line: 964, type: !2377, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!29, !104, !6, !124}
!2379 = !DILocalVariable(name: "s", arg: 1, scope: !2376, file: !102, line: 964, type: !104)
!2380 = !DILocation(line: 964, column: 40, scope: !2376)
!2381 = !DILocalVariable(name: "arg", arg: 2, scope: !2376, file: !102, line: 964, type: !6)
!2382 = !DILocation(line: 964, column: 55, scope: !2376)
!2383 = !DILocalVariable(name: "argsize", arg: 3, scope: !2376, file: !102, line: 964, type: !124)
!2384 = !DILocation(line: 964, column: 67, scope: !2376)
!2385 = !DILocation(line: 966, column: 35, scope: !2376)
!2386 = !DILocation(line: 966, column: 38, scope: !2376)
!2387 = !DILocation(line: 966, column: 43, scope: !2376)
!2388 = !DILocation(line: 966, column: 10, scope: !2376)
!2389 = !DILocation(line: 966, column: 3, scope: !2376)
!2390 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !102, file: !102, line: 970, type: !2391, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!29, !6, !124, !8}
!2393 = !DILocalVariable(name: "arg", arg: 1, scope: !2390, file: !102, line: 970, type: !6)
!2394 = !DILocation(line: 970, column: 32, scope: !2390)
!2395 = !DILocalVariable(name: "argsize", arg: 2, scope: !2390, file: !102, line: 970, type: !124)
!2396 = !DILocation(line: 970, column: 44, scope: !2390)
!2397 = !DILocalVariable(name: "ch", arg: 3, scope: !2390, file: !102, line: 970, type: !8)
!2398 = !DILocation(line: 970, column: 58, scope: !2390)
!2399 = !DILocalVariable(name: "options", scope: !2390, file: !102, line: 972, type: !136)
!2400 = !DILocation(line: 972, column: 26, scope: !2390)
!2401 = !DILocation(line: 973, column: 13, scope: !2390)
!2402 = !DILocation(line: 974, column: 31, scope: !2390)
!2403 = !DILocation(line: 974, column: 3, scope: !2390)
!2404 = !DILocation(line: 975, column: 33, scope: !2390)
!2405 = !DILocation(line: 975, column: 38, scope: !2390)
!2406 = !DILocation(line: 975, column: 10, scope: !2390)
!2407 = !DILocation(line: 975, column: 3, scope: !2390)
!2408 = distinct !DISubprogram(name: "quotearg_char", scope: !102, file: !102, line: 979, type: !2409, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!29, !6, !8}
!2411 = !DILocalVariable(name: "arg", arg: 1, scope: !2408, file: !102, line: 979, type: !6)
!2412 = !DILocation(line: 979, column: 28, scope: !2408)
!2413 = !DILocalVariable(name: "ch", arg: 2, scope: !2408, file: !102, line: 979, type: !8)
!2414 = !DILocation(line: 979, column: 38, scope: !2408)
!2415 = !DILocation(line: 981, column: 29, scope: !2408)
!2416 = !DILocation(line: 981, column: 44, scope: !2408)
!2417 = !DILocation(line: 981, column: 10, scope: !2408)
!2418 = !DILocation(line: 981, column: 3, scope: !2408)
!2419 = distinct !DISubprogram(name: "quotearg_colon", scope: !102, file: !102, line: 985, type: !2294, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2420 = !DILocalVariable(name: "arg", arg: 1, scope: !2419, file: !102, line: 985, type: !6)
!2421 = !DILocation(line: 985, column: 29, scope: !2419)
!2422 = !DILocation(line: 987, column: 25, scope: !2419)
!2423 = !DILocation(line: 987, column: 10, scope: !2419)
!2424 = !DILocation(line: 987, column: 3, scope: !2419)
!2425 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !102, file: !102, line: 991, type: !2302, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2426 = !DILocalVariable(name: "arg", arg: 1, scope: !2425, file: !102, line: 991, type: !6)
!2427 = !DILocation(line: 991, column: 33, scope: !2425)
!2428 = !DILocalVariable(name: "argsize", arg: 2, scope: !2425, file: !102, line: 991, type: !124)
!2429 = !DILocation(line: 991, column: 45, scope: !2425)
!2430 = !DILocation(line: 993, column: 29, scope: !2425)
!2431 = !DILocation(line: 993, column: 34, scope: !2425)
!2432 = !DILocation(line: 993, column: 10, scope: !2425)
!2433 = !DILocation(line: 993, column: 3, scope: !2425)
!2434 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !102, file: !102, line: 997, type: !2313, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2435 = !DILocalVariable(name: "n", arg: 1, scope: !2434, file: !102, line: 997, type: !31)
!2436 = !DILocation(line: 997, column: 29, scope: !2434)
!2437 = !DILocalVariable(name: "s", arg: 2, scope: !2434, file: !102, line: 997, type: !104)
!2438 = !DILocation(line: 997, column: 51, scope: !2434)
!2439 = !DILocalVariable(name: "arg", arg: 3, scope: !2434, file: !102, line: 997, type: !6)
!2440 = !DILocation(line: 997, column: 66, scope: !2434)
!2441 = !DILocalVariable(name: "options", scope: !2434, file: !102, line: 999, type: !136)
!2442 = !DILocation(line: 999, column: 26, scope: !2434)
!2443 = !DILocation(line: 1000, column: 41, scope: !2434)
!2444 = !DILocation(line: 1000, column: 13, scope: !2434)
!2445 = !DILocation(line: 1001, column: 3, scope: !2434)
!2446 = !DILocation(line: 1002, column: 30, scope: !2434)
!2447 = !DILocation(line: 1002, column: 33, scope: !2434)
!2448 = !DILocation(line: 1002, column: 10, scope: !2434)
!2449 = !DILocation(line: 1002, column: 3, scope: !2434)
!2450 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !102, file: !102, line: 1006, type: !2451, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!29, !31, !6, !6, !6}
!2453 = !DILocalVariable(name: "n", arg: 1, scope: !2450, file: !102, line: 1006, type: !31)
!2454 = !DILocation(line: 1006, column: 24, scope: !2450)
!2455 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2450, file: !102, line: 1006, type: !6)
!2456 = !DILocation(line: 1006, column: 39, scope: !2450)
!2457 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2450, file: !102, line: 1007, type: !6)
!2458 = !DILocation(line: 1007, column: 32, scope: !2450)
!2459 = !DILocalVariable(name: "arg", arg: 4, scope: !2450, file: !102, line: 1007, type: !6)
!2460 = !DILocation(line: 1007, column: 57, scope: !2450)
!2461 = !DILocation(line: 1009, column: 33, scope: !2450)
!2462 = !DILocation(line: 1009, column: 36, scope: !2450)
!2463 = !DILocation(line: 1009, column: 48, scope: !2450)
!2464 = !DILocation(line: 1009, column: 61, scope: !2450)
!2465 = !DILocation(line: 1009, column: 10, scope: !2450)
!2466 = !DILocation(line: 1009, column: 3, scope: !2450)
!2467 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !102, file: !102, line: 1014, type: !2468, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!29, !31, !6, !6, !6, !124}
!2470 = !DILocalVariable(name: "n", arg: 1, scope: !2467, file: !102, line: 1014, type: !31)
!2471 = !DILocation(line: 1014, column: 28, scope: !2467)
!2472 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2467, file: !102, line: 1014, type: !6)
!2473 = !DILocation(line: 1014, column: 43, scope: !2467)
!2474 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2467, file: !102, line: 1015, type: !6)
!2475 = !DILocation(line: 1015, column: 36, scope: !2467)
!2476 = !DILocalVariable(name: "arg", arg: 4, scope: !2467, file: !102, line: 1016, type: !6)
!2477 = !DILocation(line: 1016, column: 36, scope: !2467)
!2478 = !DILocalVariable(name: "argsize", arg: 5, scope: !2467, file: !102, line: 1016, type: !124)
!2479 = !DILocation(line: 1016, column: 48, scope: !2467)
!2480 = !DILocalVariable(name: "o", scope: !2467, file: !102, line: 1018, type: !136)
!2481 = !DILocation(line: 1018, column: 26, scope: !2467)
!2482 = !DILocation(line: 1018, column: 30, scope: !2467)
!2483 = !DILocation(line: 1019, column: 27, scope: !2467)
!2484 = !DILocation(line: 1019, column: 39, scope: !2467)
!2485 = !DILocation(line: 1019, column: 3, scope: !2467)
!2486 = !DILocation(line: 1020, column: 30, scope: !2467)
!2487 = !DILocation(line: 1020, column: 33, scope: !2467)
!2488 = !DILocation(line: 1020, column: 38, scope: !2467)
!2489 = !DILocation(line: 1020, column: 10, scope: !2467)
!2490 = !DILocation(line: 1020, column: 3, scope: !2467)
!2491 = distinct !DISubprogram(name: "quotearg_custom", scope: !102, file: !102, line: 1024, type: !2492, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!29, !6, !6, !6}
!2494 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2491, file: !102, line: 1024, type: !6)
!2495 = !DILocation(line: 1024, column: 30, scope: !2491)
!2496 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2491, file: !102, line: 1024, type: !6)
!2497 = !DILocation(line: 1024, column: 54, scope: !2491)
!2498 = !DILocalVariable(name: "arg", arg: 3, scope: !2491, file: !102, line: 1025, type: !6)
!2499 = !DILocation(line: 1025, column: 30, scope: !2491)
!2500 = !DILocation(line: 1027, column: 32, scope: !2491)
!2501 = !DILocation(line: 1027, column: 44, scope: !2491)
!2502 = !DILocation(line: 1027, column: 57, scope: !2491)
!2503 = !DILocation(line: 1027, column: 10, scope: !2491)
!2504 = !DILocation(line: 1027, column: 3, scope: !2491)
!2505 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !102, file: !102, line: 1031, type: !2506, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!29, !6, !6, !6, !124}
!2508 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2505, file: !102, line: 1031, type: !6)
!2509 = !DILocation(line: 1031, column: 34, scope: !2505)
!2510 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2505, file: !102, line: 1031, type: !6)
!2511 = !DILocation(line: 1031, column: 58, scope: !2505)
!2512 = !DILocalVariable(name: "arg", arg: 3, scope: !2505, file: !102, line: 1032, type: !6)
!2513 = !DILocation(line: 1032, column: 34, scope: !2505)
!2514 = !DILocalVariable(name: "argsize", arg: 4, scope: !2505, file: !102, line: 1032, type: !124)
!2515 = !DILocation(line: 1032, column: 46, scope: !2505)
!2516 = !DILocation(line: 1034, column: 36, scope: !2505)
!2517 = !DILocation(line: 1034, column: 48, scope: !2505)
!2518 = !DILocation(line: 1034, column: 61, scope: !2505)
!2519 = !DILocation(line: 1035, column: 33, scope: !2505)
!2520 = !DILocation(line: 1034, column: 10, scope: !2505)
!2521 = !DILocation(line: 1034, column: 3, scope: !2505)
!2522 = distinct !DISubprogram(name: "quote_n_mem", scope: !102, file: !102, line: 1049, type: !2523, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!6, !31, !6, !124}
!2525 = !DILocalVariable(name: "n", arg: 1, scope: !2522, file: !102, line: 1049, type: !31)
!2526 = !DILocation(line: 1049, column: 18, scope: !2522)
!2527 = !DILocalVariable(name: "arg", arg: 2, scope: !2522, file: !102, line: 1049, type: !6)
!2528 = !DILocation(line: 1049, column: 33, scope: !2522)
!2529 = !DILocalVariable(name: "argsize", arg: 3, scope: !2522, file: !102, line: 1049, type: !124)
!2530 = !DILocation(line: 1049, column: 45, scope: !2522)
!2531 = !DILocation(line: 1051, column: 30, scope: !2522)
!2532 = !DILocation(line: 1051, column: 33, scope: !2522)
!2533 = !DILocation(line: 1051, column: 38, scope: !2522)
!2534 = !DILocation(line: 1051, column: 10, scope: !2522)
!2535 = !DILocation(line: 1051, column: 3, scope: !2522)
!2536 = distinct !DISubprogram(name: "quote_mem", scope: !102, file: !102, line: 1055, type: !2537, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!6, !6, !124}
!2539 = !DILocalVariable(name: "arg", arg: 1, scope: !2536, file: !102, line: 1055, type: !6)
!2540 = !DILocation(line: 1055, column: 24, scope: !2536)
!2541 = !DILocalVariable(name: "argsize", arg: 2, scope: !2536, file: !102, line: 1055, type: !124)
!2542 = !DILocation(line: 1055, column: 36, scope: !2536)
!2543 = !DILocation(line: 1057, column: 26, scope: !2536)
!2544 = !DILocation(line: 1057, column: 31, scope: !2536)
!2545 = !DILocation(line: 1057, column: 10, scope: !2536)
!2546 = !DILocation(line: 1057, column: 3, scope: !2536)
!2547 = distinct !DISubprogram(name: "quote_n", scope: !102, file: !102, line: 1061, type: !2548, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!6, !31, !6}
!2550 = !DILocalVariable(name: "n", arg: 1, scope: !2547, file: !102, line: 1061, type: !31)
!2551 = !DILocation(line: 1061, column: 14, scope: !2547)
!2552 = !DILocalVariable(name: "arg", arg: 2, scope: !2547, file: !102, line: 1061, type: !6)
!2553 = !DILocation(line: 1061, column: 29, scope: !2547)
!2554 = !DILocation(line: 1063, column: 23, scope: !2547)
!2555 = !DILocation(line: 1063, column: 26, scope: !2547)
!2556 = !DILocation(line: 1063, column: 10, scope: !2547)
!2557 = !DILocation(line: 1063, column: 3, scope: !2547)
!2558 = distinct !DISubprogram(name: "quote", scope: !102, file: !102, line: 1067, type: !2559, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !34)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!6, !6}
!2561 = !DILocalVariable(name: "arg", arg: 1, scope: !2558, file: !102, line: 1067, type: !6)
!2562 = !DILocation(line: 1067, column: 20, scope: !2558)
!2563 = !DILocation(line: 1069, column: 22, scope: !2558)
!2564 = !DILocation(line: 1069, column: 10, scope: !2558)
!2565 = !DILocation(line: 1069, column: 3, scope: !2558)
!2566 = distinct !DISubprogram(name: "streq", scope: !2567, file: !2567, line: 1359, type: !2568, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !34)
!2567 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!47, !6, !6}
!2570 = !DILocalVariable(name: "__s1", arg: 1, scope: !2566, file: !2567, line: 1359, type: !6)
!2571 = !DILocation(line: 1359, column: 20, scope: !2566)
!2572 = !DILocalVariable(name: "__s2", arg: 2, scope: !2566, file: !2567, line: 1359, type: !6)
!2573 = !DILocation(line: 1359, column: 38, scope: !2566)
!2574 = !DILocation(line: 1361, column: 19, scope: !2566)
!2575 = !DILocation(line: 1361, column: 25, scope: !2566)
!2576 = !DILocation(line: 1361, column: 11, scope: !2566)
!2577 = !DILocation(line: 1361, column: 10, scope: !2566)
!2578 = !DILocation(line: 1361, column: 3, scope: !2566)
!2579 = distinct !DISubprogram(name: "version_etc_arn", scope: !216, file: !216, line: 61, type: !2580, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !34)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{null, !2582, !6, !6, !6, !2635, !124}
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2584, line: 7, baseType: !2585)
!2584 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2586, line: 49, size: 1728, elements: !2587)
!2586 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2603, !2605, !2606, !2607, !2609, !2610, !2612, !2616, !2619, !2621, !2624, !2627, !2628, !2629, !2630, !2631}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2585, file: !2586, line: 51, baseType: !31, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2585, file: !2586, line: 54, baseType: !29, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2585, file: !2586, line: 55, baseType: !29, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2585, file: !2586, line: 56, baseType: !29, size: 64, offset: 192)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2585, file: !2586, line: 57, baseType: !29, size: 64, offset: 256)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2585, file: !2586, line: 58, baseType: !29, size: 64, offset: 320)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2585, file: !2586, line: 59, baseType: !29, size: 64, offset: 384)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2585, file: !2586, line: 60, baseType: !29, size: 64, offset: 448)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2585, file: !2586, line: 61, baseType: !29, size: 64, offset: 512)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2585, file: !2586, line: 64, baseType: !29, size: 64, offset: 576)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2585, file: !2586, line: 65, baseType: !29, size: 64, offset: 640)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2585, file: !2586, line: 66, baseType: !29, size: 64, offset: 704)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2585, file: !2586, line: 68, baseType: !2601, size: 64, offset: 768)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2586, line: 36, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2585, file: !2586, line: 70, baseType: !2604, size: 64, offset: 832)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2585, file: !2586, line: 72, baseType: !31, size: 32, offset: 896)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2585, file: !2586, line: 73, baseType: !31, size: 32, offset: 928)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2585, file: !2586, line: 74, baseType: !2608, size: 64, offset: 960)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !880, line: 152, baseType: !239)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2585, file: !2586, line: 77, baseType: !32, size: 16, offset: 1024)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2585, file: !2586, line: 78, baseType: !2611, size: 8, offset: 1040)
!2611 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2585, file: !2586, line: 79, baseType: !2613, size: 8, offset: 1048)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2614)
!2614 = !{!2615}
!2615 = !DISubrange(count: 1)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2585, file: !2586, line: 81, baseType: !2617, size: 64, offset: 1088)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2586, line: 43, baseType: null)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2585, file: !2586, line: 89, baseType: !2620, size: 64, offset: 1152)
!2620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !880, line: 153, baseType: !239)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2585, file: !2586, line: 91, baseType: !2622, size: 64, offset: 1216)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2586, line: 37, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2585, file: !2586, line: 92, baseType: !2625, size: 64, offset: 1280)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2586, line: 38, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2585, file: !2586, line: 93, baseType: !2604, size: 64, offset: 1344)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2585, file: !2586, line: 94, baseType: !30, size: 64, offset: 1408)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2585, file: !2586, line: 95, baseType: !124, size: 64, offset: 1472)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2585, file: !2586, line: 96, baseType: !31, size: 32, offset: 1536)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2585, file: !2586, line: 98, baseType: !2632, size: 160, offset: 1568)
!2632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2633)
!2633 = !{!2634}
!2634 = !DISubrange(count: 20)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!2636 = !DILocalVariable(name: "stream", arg: 1, scope: !2579, file: !216, line: 61, type: !2582)
!2637 = !DILocation(line: 61, column: 24, scope: !2579)
!2638 = !DILocalVariable(name: "command_name", arg: 2, scope: !2579, file: !216, line: 62, type: !6)
!2639 = !DILocation(line: 62, column: 30, scope: !2579)
!2640 = !DILocalVariable(name: "package", arg: 3, scope: !2579, file: !216, line: 62, type: !6)
!2641 = !DILocation(line: 62, column: 56, scope: !2579)
!2642 = !DILocalVariable(name: "version", arg: 4, scope: !2579, file: !216, line: 63, type: !6)
!2643 = !DILocation(line: 63, column: 30, scope: !2579)
!2644 = !DILocalVariable(name: "authors", arg: 5, scope: !2579, file: !216, line: 64, type: !2635)
!2645 = !DILocation(line: 64, column: 39, scope: !2579)
!2646 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2579, file: !216, line: 64, type: !124)
!2647 = !DILocation(line: 64, column: 55, scope: !2579)
!2648 = !DILocation(line: 66, column: 7, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2579, file: !216, line: 66, column: 7)
!2650 = !DILocation(line: 66, column: 7, scope: !2579)
!2651 = !DILocation(line: 67, column: 14, scope: !2649)
!2652 = !DILocation(line: 67, column: 38, scope: !2649)
!2653 = !DILocation(line: 67, column: 52, scope: !2649)
!2654 = !DILocation(line: 67, column: 61, scope: !2649)
!2655 = !DILocation(line: 67, column: 5, scope: !2649)
!2656 = !DILocation(line: 69, column: 14, scope: !2649)
!2657 = !DILocation(line: 69, column: 33, scope: !2649)
!2658 = !DILocation(line: 69, column: 42, scope: !2649)
!2659 = !DILocation(line: 69, column: 5, scope: !2649)
!2660 = !DILocation(line: 83, column: 12, scope: !2579)
!2661 = !DILocation(line: 83, column: 43, scope: !2579)
!2662 = !DILocation(line: 83, column: 3, scope: !2579)
!2663 = !DILocation(line: 85, column: 3, scope: !2579)
!2664 = !DILocation(line: 88, column: 12, scope: !2579)
!2665 = !DILocation(line: 88, column: 20, scope: !2579)
!2666 = !DILocation(line: 88, column: 3, scope: !2579)
!2667 = !DILocation(line: 95, column: 3, scope: !2579)
!2668 = !DILocation(line: 97, column: 11, scope: !2579)
!2669 = !DILocation(line: 97, column: 3, scope: !2579)
!2670 = !DILocation(line: 102, column: 7, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2579, file: !216, line: 98, column: 5)
!2672 = !DILocation(line: 105, column: 16, scope: !2671)
!2673 = !DILocation(line: 105, column: 24, scope: !2671)
!2674 = !DILocation(line: 105, column: 47, scope: !2671)
!2675 = !DILocation(line: 105, column: 7, scope: !2671)
!2676 = !DILocation(line: 106, column: 7, scope: !2671)
!2677 = !DILocation(line: 109, column: 16, scope: !2671)
!2678 = !DILocation(line: 109, column: 24, scope: !2671)
!2679 = !DILocation(line: 109, column: 54, scope: !2671)
!2680 = !DILocation(line: 109, column: 66, scope: !2671)
!2681 = !DILocation(line: 109, column: 7, scope: !2671)
!2682 = !DILocation(line: 110, column: 7, scope: !2671)
!2683 = !DILocation(line: 113, column: 16, scope: !2671)
!2684 = !DILocation(line: 113, column: 24, scope: !2671)
!2685 = !DILocation(line: 114, column: 16, scope: !2671)
!2686 = !DILocation(line: 114, column: 28, scope: !2671)
!2687 = !DILocation(line: 114, column: 40, scope: !2671)
!2688 = !DILocation(line: 113, column: 7, scope: !2671)
!2689 = !DILocation(line: 115, column: 7, scope: !2671)
!2690 = !DILocation(line: 120, column: 16, scope: !2671)
!2691 = !DILocation(line: 120, column: 24, scope: !2671)
!2692 = !DILocation(line: 121, column: 16, scope: !2671)
!2693 = !DILocation(line: 121, column: 28, scope: !2671)
!2694 = !DILocation(line: 121, column: 40, scope: !2671)
!2695 = !DILocation(line: 121, column: 52, scope: !2671)
!2696 = !DILocation(line: 120, column: 7, scope: !2671)
!2697 = !DILocation(line: 122, column: 7, scope: !2671)
!2698 = !DILocation(line: 127, column: 16, scope: !2671)
!2699 = !DILocation(line: 127, column: 24, scope: !2671)
!2700 = !DILocation(line: 128, column: 16, scope: !2671)
!2701 = !DILocation(line: 128, column: 28, scope: !2671)
!2702 = !DILocation(line: 128, column: 40, scope: !2671)
!2703 = !DILocation(line: 128, column: 52, scope: !2671)
!2704 = !DILocation(line: 128, column: 64, scope: !2671)
!2705 = !DILocation(line: 127, column: 7, scope: !2671)
!2706 = !DILocation(line: 129, column: 7, scope: !2671)
!2707 = !DILocation(line: 134, column: 16, scope: !2671)
!2708 = !DILocation(line: 134, column: 24, scope: !2671)
!2709 = !DILocation(line: 135, column: 16, scope: !2671)
!2710 = !DILocation(line: 135, column: 28, scope: !2671)
!2711 = !DILocation(line: 135, column: 40, scope: !2671)
!2712 = !DILocation(line: 135, column: 52, scope: !2671)
!2713 = !DILocation(line: 135, column: 64, scope: !2671)
!2714 = !DILocation(line: 136, column: 16, scope: !2671)
!2715 = !DILocation(line: 134, column: 7, scope: !2671)
!2716 = !DILocation(line: 137, column: 7, scope: !2671)
!2717 = !DILocation(line: 142, column: 16, scope: !2671)
!2718 = !DILocation(line: 142, column: 24, scope: !2671)
!2719 = !DILocation(line: 143, column: 16, scope: !2671)
!2720 = !DILocation(line: 143, column: 28, scope: !2671)
!2721 = !DILocation(line: 143, column: 40, scope: !2671)
!2722 = !DILocation(line: 143, column: 52, scope: !2671)
!2723 = !DILocation(line: 143, column: 64, scope: !2671)
!2724 = !DILocation(line: 144, column: 16, scope: !2671)
!2725 = !DILocation(line: 144, column: 28, scope: !2671)
!2726 = !DILocation(line: 142, column: 7, scope: !2671)
!2727 = !DILocation(line: 145, column: 7, scope: !2671)
!2728 = !DILocation(line: 150, column: 16, scope: !2671)
!2729 = !DILocation(line: 150, column: 24, scope: !2671)
!2730 = !DILocation(line: 152, column: 17, scope: !2671)
!2731 = !DILocation(line: 152, column: 29, scope: !2671)
!2732 = !DILocation(line: 152, column: 41, scope: !2671)
!2733 = !DILocation(line: 152, column: 53, scope: !2671)
!2734 = !DILocation(line: 152, column: 65, scope: !2671)
!2735 = !DILocation(line: 153, column: 17, scope: !2671)
!2736 = !DILocation(line: 153, column: 29, scope: !2671)
!2737 = !DILocation(line: 153, column: 41, scope: !2671)
!2738 = !DILocation(line: 150, column: 7, scope: !2671)
!2739 = !DILocation(line: 154, column: 7, scope: !2671)
!2740 = !DILocation(line: 159, column: 16, scope: !2671)
!2741 = !DILocation(line: 159, column: 24, scope: !2671)
!2742 = !DILocation(line: 161, column: 16, scope: !2671)
!2743 = !DILocation(line: 161, column: 28, scope: !2671)
!2744 = !DILocation(line: 161, column: 40, scope: !2671)
!2745 = !DILocation(line: 161, column: 52, scope: !2671)
!2746 = !DILocation(line: 161, column: 64, scope: !2671)
!2747 = !DILocation(line: 162, column: 16, scope: !2671)
!2748 = !DILocation(line: 162, column: 28, scope: !2671)
!2749 = !DILocation(line: 162, column: 40, scope: !2671)
!2750 = !DILocation(line: 162, column: 52, scope: !2671)
!2751 = !DILocation(line: 159, column: 7, scope: !2671)
!2752 = !DILocation(line: 163, column: 7, scope: !2671)
!2753 = !DILocation(line: 170, column: 16, scope: !2671)
!2754 = !DILocation(line: 170, column: 24, scope: !2671)
!2755 = !DILocation(line: 172, column: 17, scope: !2671)
!2756 = !DILocation(line: 172, column: 29, scope: !2671)
!2757 = !DILocation(line: 172, column: 41, scope: !2671)
!2758 = !DILocation(line: 172, column: 53, scope: !2671)
!2759 = !DILocation(line: 172, column: 65, scope: !2671)
!2760 = !DILocation(line: 173, column: 17, scope: !2671)
!2761 = !DILocation(line: 173, column: 29, scope: !2671)
!2762 = !DILocation(line: 173, column: 41, scope: !2671)
!2763 = !DILocation(line: 173, column: 53, scope: !2671)
!2764 = !DILocation(line: 170, column: 7, scope: !2671)
!2765 = !DILocation(line: 174, column: 7, scope: !2671)
!2766 = !DILocation(line: 176, column: 1, scope: !2579)
!2767 = distinct !DISubprogram(name: "version_etc_ar", scope: !216, file: !216, line: 183, type: !2768, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !34)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{null, !2582, !6, !6, !6, !2635}
!2770 = !DILocalVariable(name: "stream", arg: 1, scope: !2767, file: !216, line: 183, type: !2582)
!2771 = !DILocation(line: 183, column: 23, scope: !2767)
!2772 = !DILocalVariable(name: "command_name", arg: 2, scope: !2767, file: !216, line: 184, type: !6)
!2773 = !DILocation(line: 184, column: 29, scope: !2767)
!2774 = !DILocalVariable(name: "package", arg: 3, scope: !2767, file: !216, line: 184, type: !6)
!2775 = !DILocation(line: 184, column: 55, scope: !2767)
!2776 = !DILocalVariable(name: "version", arg: 4, scope: !2767, file: !216, line: 185, type: !6)
!2777 = !DILocation(line: 185, column: 29, scope: !2767)
!2778 = !DILocalVariable(name: "authors", arg: 5, scope: !2767, file: !216, line: 185, type: !2635)
!2779 = !DILocation(line: 185, column: 59, scope: !2767)
!2780 = !DILocalVariable(name: "n_authors", scope: !2767, file: !216, line: 187, type: !124)
!2781 = !DILocation(line: 187, column: 10, scope: !2767)
!2782 = !DILocation(line: 189, column: 18, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2767, file: !216, line: 189, column: 3)
!2784 = !DILocation(line: 189, column: 8, scope: !2783)
!2785 = !DILocation(line: 189, column: 23, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2783, file: !216, line: 189, column: 3)
!2787 = !DILocation(line: 189, column: 31, scope: !2786)
!2788 = !DILocation(line: 189, column: 3, scope: !2783)
!2789 = !DILocation(line: 189, column: 52, scope: !2786)
!2790 = !DILocation(line: 189, column: 3, scope: !2786)
!2791 = distinct !{!2791, !2788, !2792, !371}
!2792 = !DILocation(line: 190, column: 5, scope: !2783)
!2793 = !DILocation(line: 191, column: 20, scope: !2767)
!2794 = !DILocation(line: 191, column: 28, scope: !2767)
!2795 = !DILocation(line: 191, column: 42, scope: !2767)
!2796 = !DILocation(line: 191, column: 51, scope: !2767)
!2797 = !DILocation(line: 191, column: 60, scope: !2767)
!2798 = !DILocation(line: 191, column: 69, scope: !2767)
!2799 = !DILocation(line: 191, column: 3, scope: !2767)
!2800 = !DILocation(line: 192, column: 1, scope: !2767)
!2801 = distinct !DISubprogram(name: "version_etc_va", scope: !216, file: !216, line: 199, type: !2802, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !34)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{null, !2582, !6, !6, !6, !2804}
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !60, line: 52, baseType: !2805)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !62, line: 32, baseType: !2806)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2807, baseType: !2808)
!2807 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !66, size: 256, elements: !2809)
!2809 = !{!2810, !2811, !2812, !2813, !2814}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2808, file: !2807, line: 192, baseType: !30, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2808, file: !2807, line: 192, baseType: !30, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2808, file: !2807, line: 192, baseType: !30, size: 64, offset: 128)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2808, file: !2807, line: 192, baseType: !31, size: 32, offset: 192)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2808, file: !2807, line: 192, baseType: !31, size: 32, offset: 224)
!2815 = !DILocalVariable(name: "stream", arg: 1, scope: !2801, file: !216, line: 199, type: !2582)
!2816 = !DILocation(line: 199, column: 23, scope: !2801)
!2817 = !DILocalVariable(name: "command_name", arg: 2, scope: !2801, file: !216, line: 200, type: !6)
!2818 = !DILocation(line: 200, column: 29, scope: !2801)
!2819 = !DILocalVariable(name: "package", arg: 3, scope: !2801, file: !216, line: 200, type: !6)
!2820 = !DILocation(line: 200, column: 55, scope: !2801)
!2821 = !DILocalVariable(name: "version", arg: 4, scope: !2801, file: !216, line: 201, type: !6)
!2822 = !DILocation(line: 201, column: 29, scope: !2801)
!2823 = !DILocalVariable(name: "authors", arg: 5, scope: !2801, file: !216, line: 201, type: !2804)
!2824 = !DILocation(line: 201, column: 46, scope: !2801)
!2825 = !DILocalVariable(name: "n_authors", scope: !2801, file: !216, line: 203, type: !124)
!2826 = !DILocation(line: 203, column: 10, scope: !2801)
!2827 = !DILocalVariable(name: "authtab", scope: !2801, file: !216, line: 204, type: !2828)
!2828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !132)
!2829 = !DILocation(line: 204, column: 15, scope: !2801)
!2830 = !DILocation(line: 206, column: 18, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2801, file: !216, line: 206, column: 3)
!2832 = !DILocation(line: 206, column: 8, scope: !2831)
!2833 = !DILocation(line: 207, column: 8, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2831, file: !216, line: 206, column: 3)
!2835 = !DILocation(line: 207, column: 18, scope: !2834)
!2836 = !DILocation(line: 208, column: 10, scope: !2834)
!2837 = !DILocation(line: 208, column: 35, scope: !2834)
!2838 = !DILocation(line: 208, column: 22, scope: !2834)
!2839 = !DILocation(line: 208, column: 14, scope: !2834)
!2840 = !DILocation(line: 208, column: 33, scope: !2834)
!2841 = !DILocation(line: 208, column: 67, scope: !2834)
!2842 = !DILocation(line: 0, scope: !2834)
!2843 = !DILocation(line: 206, column: 3, scope: !2831)
!2844 = !DILocation(line: 209, column: 17, scope: !2834)
!2845 = !DILocation(line: 206, column: 3, scope: !2834)
!2846 = distinct !{!2846, !2843, !2847, !371}
!2847 = !DILocation(line: 210, column: 5, scope: !2831)
!2848 = !DILocation(line: 211, column: 20, scope: !2801)
!2849 = !DILocation(line: 211, column: 28, scope: !2801)
!2850 = !DILocation(line: 211, column: 42, scope: !2801)
!2851 = !DILocation(line: 211, column: 51, scope: !2801)
!2852 = !DILocation(line: 212, column: 20, scope: !2801)
!2853 = !DILocation(line: 212, column: 29, scope: !2801)
!2854 = !DILocation(line: 211, column: 3, scope: !2801)
!2855 = !DILocation(line: 213, column: 1, scope: !2801)
!2856 = distinct !DISubprogram(name: "version_etc", scope: !216, file: !216, line: 230, type: !2857, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !34)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{null, !2582, !6, !6, !6, null}
!2859 = !DILocalVariable(name: "stream", arg: 1, scope: !2856, file: !216, line: 230, type: !2582)
!2860 = !DILocation(line: 230, column: 20, scope: !2856)
!2861 = !DILocalVariable(name: "command_name", arg: 2, scope: !2856, file: !216, line: 231, type: !6)
!2862 = !DILocation(line: 231, column: 26, scope: !2856)
!2863 = !DILocalVariable(name: "package", arg: 3, scope: !2856, file: !216, line: 231, type: !6)
!2864 = !DILocation(line: 231, column: 52, scope: !2856)
!2865 = !DILocalVariable(name: "version", arg: 4, scope: !2856, file: !216, line: 232, type: !6)
!2866 = !DILocation(line: 232, column: 26, scope: !2856)
!2867 = !DILocalVariable(name: "authors", scope: !2856, file: !216, line: 234, type: !2804)
!2868 = !DILocation(line: 234, column: 11, scope: !2856)
!2869 = !DILocation(line: 235, column: 3, scope: !2856)
!2870 = !DILocation(line: 236, column: 19, scope: !2856)
!2871 = !DILocation(line: 236, column: 27, scope: !2856)
!2872 = !DILocation(line: 236, column: 41, scope: !2856)
!2873 = !DILocation(line: 236, column: 50, scope: !2856)
!2874 = !DILocation(line: 236, column: 3, scope: !2856)
!2875 = !DILocation(line: 237, column: 3, scope: !2856)
!2876 = !DILocation(line: 238, column: 1, scope: !2856)
!2877 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !216, file: !216, line: 241, type: !80, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !34)
!2878 = !DILocation(line: 243, column: 3, scope: !2877)
!2879 = !DILocation(line: 248, column: 11, scope: !2877)
!2880 = !DILocation(line: 248, column: 3, scope: !2877)
!2881 = !DILocation(line: 254, column: 11, scope: !2877)
!2882 = !DILocation(line: 254, column: 3, scope: !2877)
!2883 = !DILocation(line: 259, column: 11, scope: !2877)
!2884 = !DILocation(line: 259, column: 3, scope: !2877)
!2885 = !DILocation(line: 261, column: 1, scope: !2877)
!2886 = distinct !DISubprogram(name: "xnrealloc", scope: !2887, file: !2887, line: 147, type: !2888, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!2887 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!30, !30, !124, !124}
!2890 = !DILocalVariable(name: "p", arg: 1, scope: !2886, file: !2887, line: 147, type: !30)
!2891 = !DILocation(line: 147, column: 18, scope: !2886)
!2892 = !DILocalVariable(name: "n", arg: 2, scope: !2886, file: !2887, line: 147, type: !124)
!2893 = !DILocation(line: 147, column: 28, scope: !2886)
!2894 = !DILocalVariable(name: "s", arg: 3, scope: !2886, file: !2887, line: 147, type: !124)
!2895 = !DILocation(line: 147, column: 38, scope: !2886)
!2896 = !DILocation(line: 149, column: 25, scope: !2886)
!2897 = !DILocation(line: 149, column: 28, scope: !2886)
!2898 = !DILocation(line: 149, column: 31, scope: !2886)
!2899 = !DILocation(line: 149, column: 10, scope: !2886)
!2900 = !DILocation(line: 149, column: 3, scope: !2886)
!2901 = distinct !DISubprogram(name: "xreallocarray", scope: !222, file: !222, line: 83, type: !2888, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!2902 = !DILocalVariable(name: "p", arg: 1, scope: !2901, file: !222, line: 83, type: !30)
!2903 = !DILocation(line: 83, column: 22, scope: !2901)
!2904 = !DILocalVariable(name: "n", arg: 2, scope: !2901, file: !222, line: 83, type: !124)
!2905 = !DILocation(line: 83, column: 32, scope: !2901)
!2906 = !DILocalVariable(name: "s", arg: 3, scope: !2901, file: !222, line: 83, type: !124)
!2907 = !DILocation(line: 83, column: 42, scope: !2901)
!2908 = !DILocation(line: 85, column: 39, scope: !2901)
!2909 = !DILocation(line: 85, column: 42, scope: !2901)
!2910 = !DILocation(line: 85, column: 45, scope: !2901)
!2911 = !DILocation(line: 85, column: 25, scope: !2901)
!2912 = !DILocation(line: 85, column: 10, scope: !2901)
!2913 = !DILocation(line: 85, column: 3, scope: !2901)
!2914 = distinct !DISubprogram(name: "check_nonnull", scope: !222, file: !222, line: 37, type: !2915, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !221, retainedNodes: !34)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!30, !30}
!2917 = !DILocalVariable(name: "p", arg: 1, scope: !2914, file: !222, line: 37, type: !30)
!2918 = !DILocation(line: 37, column: 22, scope: !2914)
!2919 = !DILocation(line: 39, column: 8, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2914, file: !222, line: 39, column: 7)
!2921 = !DILocation(line: 39, column: 7, scope: !2914)
!2922 = !DILocation(line: 40, column: 5, scope: !2920)
!2923 = !DILocation(line: 41, column: 10, scope: !2914)
!2924 = !DILocation(line: 41, column: 3, scope: !2914)
!2925 = distinct !DISubprogram(name: "xmalloc", scope: !222, file: !222, line: 47, type: !2926, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!30, !124}
!2928 = !DILocalVariable(name: "s", arg: 1, scope: !2925, file: !222, line: 47, type: !124)
!2929 = !DILocation(line: 47, column: 17, scope: !2925)
!2930 = !DILocation(line: 49, column: 33, scope: !2925)
!2931 = !DILocation(line: 49, column: 25, scope: !2925)
!2932 = !DILocation(line: 49, column: 10, scope: !2925)
!2933 = !DILocation(line: 49, column: 3, scope: !2925)
!2934 = distinct !DISubprogram(name: "ximalloc", scope: !222, file: !222, line: 53, type: !2935, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!30, !236}
!2937 = !DILocalVariable(name: "s", arg: 1, scope: !2934, file: !222, line: 53, type: !236)
!2938 = !DILocation(line: 53, column: 17, scope: !2934)
!2939 = !DILocation(line: 55, column: 34, scope: !2934)
!2940 = !DILocation(line: 55, column: 25, scope: !2934)
!2941 = !DILocation(line: 55, column: 10, scope: !2934)
!2942 = !DILocation(line: 55, column: 3, scope: !2934)
!2943 = distinct !DISubprogram(name: "xcharalloc", scope: !222, file: !222, line: 59, type: !2944, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!29, !124}
!2946 = !DILocalVariable(name: "n", arg: 1, scope: !2943, file: !222, line: 59, type: !124)
!2947 = !DILocation(line: 59, column: 20, scope: !2943)
!2948 = !DILocation(line: 61, column: 10, scope: !2943)
!2949 = !DILocation(line: 61, column: 3, scope: !2943)
!2950 = distinct !DISubprogram(name: "xrealloc", scope: !222, file: !222, line: 68, type: !2951, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!30, !30, !124}
!2953 = !DILocalVariable(name: "p", arg: 1, scope: !2950, file: !222, line: 68, type: !30)
!2954 = !DILocation(line: 68, column: 17, scope: !2950)
!2955 = !DILocalVariable(name: "s", arg: 2, scope: !2950, file: !222, line: 68, type: !124)
!2956 = !DILocation(line: 68, column: 27, scope: !2950)
!2957 = !DILocation(line: 70, column: 34, scope: !2950)
!2958 = !DILocation(line: 70, column: 37, scope: !2950)
!2959 = !DILocation(line: 70, column: 25, scope: !2950)
!2960 = !DILocation(line: 70, column: 10, scope: !2950)
!2961 = !DILocation(line: 70, column: 3, scope: !2950)
!2962 = distinct !DISubprogram(name: "xirealloc", scope: !222, file: !222, line: 74, type: !2963, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!30, !30, !236}
!2965 = !DILocalVariable(name: "p", arg: 1, scope: !2962, file: !222, line: 74, type: !30)
!2966 = !DILocation(line: 74, column: 18, scope: !2962)
!2967 = !DILocalVariable(name: "s", arg: 2, scope: !2962, file: !222, line: 74, type: !236)
!2968 = !DILocation(line: 74, column: 27, scope: !2962)
!2969 = !DILocation(line: 76, column: 35, scope: !2962)
!2970 = !DILocation(line: 76, column: 38, scope: !2962)
!2971 = !DILocation(line: 76, column: 25, scope: !2962)
!2972 = !DILocation(line: 76, column: 10, scope: !2962)
!2973 = !DILocation(line: 76, column: 3, scope: !2962)
!2974 = distinct !DISubprogram(name: "xireallocarray", scope: !222, file: !222, line: 89, type: !2975, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!30, !30, !236, !236}
!2977 = !DILocalVariable(name: "p", arg: 1, scope: !2974, file: !222, line: 89, type: !30)
!2978 = !DILocation(line: 89, column: 23, scope: !2974)
!2979 = !DILocalVariable(name: "n", arg: 2, scope: !2974, file: !222, line: 89, type: !236)
!2980 = !DILocation(line: 89, column: 32, scope: !2974)
!2981 = !DILocalVariable(name: "s", arg: 3, scope: !2974, file: !222, line: 89, type: !236)
!2982 = !DILocation(line: 89, column: 41, scope: !2974)
!2983 = !DILocation(line: 91, column: 40, scope: !2974)
!2984 = !DILocation(line: 91, column: 43, scope: !2974)
!2985 = !DILocation(line: 91, column: 46, scope: !2974)
!2986 = !DILocation(line: 91, column: 25, scope: !2974)
!2987 = !DILocation(line: 91, column: 10, scope: !2974)
!2988 = !DILocation(line: 91, column: 3, scope: !2974)
!2989 = distinct !DISubprogram(name: "xnmalloc", scope: !222, file: !222, line: 98, type: !2990, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!30, !124, !124}
!2992 = !DILocalVariable(name: "n", arg: 1, scope: !2989, file: !222, line: 98, type: !124)
!2993 = !DILocation(line: 98, column: 18, scope: !2989)
!2994 = !DILocalVariable(name: "s", arg: 2, scope: !2989, file: !222, line: 98, type: !124)
!2995 = !DILocation(line: 98, column: 28, scope: !2989)
!2996 = !DILocation(line: 100, column: 31, scope: !2989)
!2997 = !DILocation(line: 100, column: 34, scope: !2989)
!2998 = !DILocation(line: 100, column: 10, scope: !2989)
!2999 = !DILocation(line: 100, column: 3, scope: !2989)
!3000 = distinct !DISubprogram(name: "xinmalloc", scope: !222, file: !222, line: 104, type: !3001, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!30, !236, !236}
!3003 = !DILocalVariable(name: "n", arg: 1, scope: !3000, file: !222, line: 104, type: !236)
!3004 = !DILocation(line: 104, column: 18, scope: !3000)
!3005 = !DILocalVariable(name: "s", arg: 2, scope: !3000, file: !222, line: 104, type: !236)
!3006 = !DILocation(line: 104, column: 27, scope: !3000)
!3007 = !DILocation(line: 106, column: 32, scope: !3000)
!3008 = !DILocation(line: 106, column: 35, scope: !3000)
!3009 = !DILocation(line: 106, column: 10, scope: !3000)
!3010 = !DILocation(line: 106, column: 3, scope: !3000)
!3011 = distinct !DISubprogram(name: "x2realloc", scope: !222, file: !222, line: 116, type: !3012, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!30, !30, !228}
!3014 = !DILocalVariable(name: "p", arg: 1, scope: !3011, file: !222, line: 116, type: !30)
!3015 = !DILocation(line: 116, column: 18, scope: !3011)
!3016 = !DILocalVariable(name: "ps", arg: 2, scope: !3011, file: !222, line: 116, type: !228)
!3017 = !DILocation(line: 116, column: 29, scope: !3011)
!3018 = !DILocation(line: 118, column: 22, scope: !3011)
!3019 = !DILocation(line: 118, column: 25, scope: !3011)
!3020 = !DILocation(line: 118, column: 10, scope: !3011)
!3021 = !DILocation(line: 118, column: 3, scope: !3011)
!3022 = !DILocalVariable(name: "p", arg: 1, scope: !225, file: !222, line: 176, type: !30)
!3023 = !DILocation(line: 176, column: 19, scope: !225)
!3024 = !DILocalVariable(name: "pn", arg: 2, scope: !225, file: !222, line: 176, type: !228)
!3025 = !DILocation(line: 176, column: 30, scope: !225)
!3026 = !DILocalVariable(name: "s", arg: 3, scope: !225, file: !222, line: 176, type: !124)
!3027 = !DILocation(line: 176, column: 41, scope: !225)
!3028 = !DILocalVariable(name: "n", scope: !225, file: !222, line: 178, type: !124)
!3029 = !DILocation(line: 178, column: 10, scope: !225)
!3030 = !DILocation(line: 178, column: 15, scope: !225)
!3031 = !DILocation(line: 178, column: 14, scope: !225)
!3032 = !DILocation(line: 180, column: 9, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !225, file: !222, line: 180, column: 7)
!3034 = !DILocation(line: 180, column: 7, scope: !225)
!3035 = !DILocation(line: 182, column: 13, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !222, line: 182, column: 11)
!3037 = distinct !DILexicalBlock(scope: !3033, file: !222, line: 181, column: 5)
!3038 = !DILocation(line: 182, column: 11, scope: !3037)
!3039 = !DILocation(line: 190, column: 32, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3036, file: !222, line: 183, column: 9)
!3041 = !DILocation(line: 190, column: 30, scope: !3040)
!3042 = !DILocation(line: 190, column: 13, scope: !3040)
!3043 = !DILocation(line: 191, column: 17, scope: !3040)
!3044 = !DILocation(line: 191, column: 16, scope: !3040)
!3045 = !DILocation(line: 191, column: 13, scope: !3040)
!3046 = !DILocation(line: 192, column: 9, scope: !3040)
!3047 = !DILocation(line: 193, column: 5, scope: !3037)
!3048 = !DILocation(line: 197, column: 11, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !222, line: 197, column: 11)
!3050 = distinct !DILexicalBlock(scope: !3033, file: !222, line: 195, column: 5)
!3051 = !DILocation(line: 197, column: 11, scope: !3050)
!3052 = !DILocation(line: 198, column: 9, scope: !3049)
!3053 = !DILocation(line: 201, column: 22, scope: !225)
!3054 = !DILocation(line: 201, column: 25, scope: !225)
!3055 = !DILocation(line: 201, column: 28, scope: !225)
!3056 = !DILocation(line: 201, column: 7, scope: !225)
!3057 = !DILocation(line: 201, column: 5, scope: !225)
!3058 = !DILocation(line: 202, column: 9, scope: !225)
!3059 = !DILocation(line: 202, column: 4, scope: !225)
!3060 = !DILocation(line: 202, column: 7, scope: !225)
!3061 = !DILocation(line: 203, column: 10, scope: !225)
!3062 = !DILocation(line: 203, column: 3, scope: !225)
!3063 = !DILocalVariable(name: "pa", arg: 1, scope: !232, file: !222, line: 223, type: !30)
!3064 = !DILocation(line: 223, column: 16, scope: !232)
!3065 = !DILocalVariable(name: "pn", arg: 2, scope: !232, file: !222, line: 223, type: !235)
!3066 = !DILocation(line: 223, column: 27, scope: !232)
!3067 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !232, file: !222, line: 223, type: !236)
!3068 = !DILocation(line: 223, column: 37, scope: !232)
!3069 = !DILocalVariable(name: "n_max", arg: 4, scope: !232, file: !222, line: 223, type: !238)
!3070 = !DILocation(line: 223, column: 59, scope: !232)
!3071 = !DILocalVariable(name: "s", arg: 5, scope: !232, file: !222, line: 223, type: !236)
!3072 = !DILocation(line: 223, column: 72, scope: !232)
!3073 = !DILocalVariable(name: "n0", scope: !232, file: !222, line: 230, type: !236)
!3074 = !DILocation(line: 230, column: 9, scope: !232)
!3075 = !DILocation(line: 230, column: 15, scope: !232)
!3076 = !DILocation(line: 230, column: 14, scope: !232)
!3077 = !DILocalVariable(name: "n", scope: !232, file: !222, line: 237, type: !236)
!3078 = !DILocation(line: 237, column: 9, scope: !232)
!3079 = !DILocation(line: 238, column: 7, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !232, file: !222, line: 238, column: 7)
!3081 = !DILocation(line: 238, column: 7, scope: !232)
!3082 = !DILocation(line: 239, column: 7, scope: !3080)
!3083 = !DILocation(line: 239, column: 5, scope: !3080)
!3084 = !DILocation(line: 240, column: 12, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !232, file: !222, line: 240, column: 7)
!3086 = !DILocation(line: 240, column: 9, scope: !3085)
!3087 = !DILocation(line: 240, column: 18, scope: !3085)
!3088 = !DILocation(line: 240, column: 21, scope: !3085)
!3089 = !DILocation(line: 240, column: 29, scope: !3085)
!3090 = !DILocation(line: 240, column: 27, scope: !3085)
!3091 = !DILocation(line: 240, column: 7, scope: !232)
!3092 = !DILocation(line: 241, column: 9, scope: !3085)
!3093 = !DILocation(line: 241, column: 7, scope: !3085)
!3094 = !DILocation(line: 241, column: 5, scope: !3085)
!3095 = !DILocalVariable(name: "nbytes", scope: !232, file: !222, line: 248, type: !236)
!3096 = !DILocation(line: 248, column: 9, scope: !232)
!3097 = !DILocalVariable(name: "adjusted_nbytes", scope: !232, file: !222, line: 252, type: !236)
!3098 = !DILocation(line: 252, column: 9, scope: !232)
!3099 = !DILocation(line: 253, column: 8, scope: !232)
!3100 = !DILocation(line: 255, column: 10, scope: !232)
!3101 = !DILocation(line: 255, column: 17, scope: !232)
!3102 = !DILocation(line: 256, column: 7, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !232, file: !222, line: 256, column: 7)
!3104 = !DILocation(line: 256, column: 7, scope: !232)
!3105 = !DILocation(line: 258, column: 11, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3103, file: !222, line: 257, column: 5)
!3107 = !DILocation(line: 258, column: 29, scope: !3106)
!3108 = !DILocation(line: 258, column: 27, scope: !3106)
!3109 = !DILocation(line: 258, column: 9, scope: !3106)
!3110 = !DILocation(line: 259, column: 16, scope: !3106)
!3111 = !DILocation(line: 259, column: 34, scope: !3106)
!3112 = !DILocation(line: 259, column: 52, scope: !3106)
!3113 = !DILocation(line: 259, column: 50, scope: !3106)
!3114 = !DILocation(line: 259, column: 32, scope: !3106)
!3115 = !DILocation(line: 259, column: 14, scope: !3106)
!3116 = !DILocation(line: 260, column: 5, scope: !3106)
!3117 = !DILocation(line: 262, column: 9, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !232, file: !222, line: 262, column: 7)
!3119 = !DILocation(line: 262, column: 7, scope: !232)
!3120 = !DILocation(line: 263, column: 6, scope: !3118)
!3121 = !DILocation(line: 263, column: 9, scope: !3118)
!3122 = !DILocation(line: 263, column: 5, scope: !3118)
!3123 = !DILocation(line: 264, column: 7, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !232, file: !222, line: 264, column: 7)
!3125 = !DILocation(line: 264, column: 11, scope: !3124)
!3126 = !DILocation(line: 264, column: 9, scope: !3124)
!3127 = !DILocation(line: 264, column: 16, scope: !3124)
!3128 = !DILocation(line: 264, column: 14, scope: !3124)
!3129 = !DILocation(line: 265, column: 7, scope: !3124)
!3130 = !DILocation(line: 265, column: 11, scope: !3124)
!3131 = !DILocation(line: 266, column: 11, scope: !3124)
!3132 = !DILocation(line: 266, column: 20, scope: !3124)
!3133 = !DILocation(line: 266, column: 17, scope: !3124)
!3134 = !DILocation(line: 266, column: 26, scope: !3124)
!3135 = !DILocation(line: 266, column: 29, scope: !3124)
!3136 = !DILocation(line: 266, column: 37, scope: !3124)
!3137 = !DILocation(line: 266, column: 35, scope: !3124)
!3138 = !DILocation(line: 267, column: 11, scope: !3124)
!3139 = !DILocation(line: 267, column: 14, scope: !3124)
!3140 = !DILocation(line: 264, column: 7, scope: !232)
!3141 = !DILocation(line: 268, column: 5, scope: !3124)
!3142 = !DILocation(line: 269, column: 18, scope: !232)
!3143 = !DILocation(line: 269, column: 22, scope: !232)
!3144 = !DILocation(line: 269, column: 8, scope: !232)
!3145 = !DILocation(line: 269, column: 6, scope: !232)
!3146 = !DILocation(line: 270, column: 9, scope: !232)
!3147 = !DILocation(line: 270, column: 4, scope: !232)
!3148 = !DILocation(line: 270, column: 7, scope: !232)
!3149 = !DILocation(line: 271, column: 10, scope: !232)
!3150 = !DILocation(line: 271, column: 3, scope: !232)
!3151 = distinct !DISubprogram(name: "xzalloc", scope: !222, file: !222, line: 279, type: !2926, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!3152 = !DILocalVariable(name: "s", arg: 1, scope: !3151, file: !222, line: 279, type: !124)
!3153 = !DILocation(line: 279, column: 17, scope: !3151)
!3154 = !DILocation(line: 281, column: 19, scope: !3151)
!3155 = !DILocation(line: 281, column: 10, scope: !3151)
!3156 = !DILocation(line: 281, column: 3, scope: !3151)
!3157 = distinct !DISubprogram(name: "xcalloc", scope: !222, file: !222, line: 294, type: !2990, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!3158 = !DILocalVariable(name: "n", arg: 1, scope: !3157, file: !222, line: 294, type: !124)
!3159 = !DILocation(line: 294, column: 17, scope: !3157)
!3160 = !DILocalVariable(name: "s", arg: 2, scope: !3157, file: !222, line: 294, type: !124)
!3161 = !DILocation(line: 294, column: 27, scope: !3157)
!3162 = !DILocation(line: 296, column: 33, scope: !3157)
!3163 = !DILocation(line: 296, column: 36, scope: !3157)
!3164 = !DILocation(line: 296, column: 25, scope: !3157)
!3165 = !DILocation(line: 296, column: 10, scope: !3157)
!3166 = !DILocation(line: 296, column: 3, scope: !3157)
!3167 = distinct !DISubprogram(name: "xizalloc", scope: !222, file: !222, line: 285, type: !2935, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!3168 = !DILocalVariable(name: "s", arg: 1, scope: !3167, file: !222, line: 285, type: !236)
!3169 = !DILocation(line: 285, column: 17, scope: !3167)
!3170 = !DILocation(line: 287, column: 20, scope: !3167)
!3171 = !DILocation(line: 287, column: 10, scope: !3167)
!3172 = !DILocation(line: 287, column: 3, scope: !3167)
!3173 = distinct !DISubprogram(name: "xicalloc", scope: !222, file: !222, line: 300, type: !3001, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!3174 = !DILocalVariable(name: "n", arg: 1, scope: !3173, file: !222, line: 300, type: !236)
!3175 = !DILocation(line: 300, column: 17, scope: !3173)
!3176 = !DILocalVariable(name: "s", arg: 2, scope: !3173, file: !222, line: 300, type: !236)
!3177 = !DILocation(line: 300, column: 26, scope: !3173)
!3178 = !DILocation(line: 302, column: 34, scope: !3173)
!3179 = !DILocation(line: 302, column: 37, scope: !3173)
!3180 = !DILocation(line: 302, column: 25, scope: !3173)
!3181 = !DILocation(line: 302, column: 10, scope: !3173)
!3182 = !DILocation(line: 302, column: 3, scope: !3173)
!3183 = distinct !DISubprogram(name: "xmemdup", scope: !222, file: !222, line: 310, type: !3184, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!30, !3186, !124}
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3188 = !DILocalVariable(name: "p", arg: 1, scope: !3183, file: !222, line: 310, type: !3186)
!3189 = !DILocation(line: 310, column: 22, scope: !3183)
!3190 = !DILocalVariable(name: "s", arg: 2, scope: !3183, file: !222, line: 310, type: !124)
!3191 = !DILocation(line: 310, column: 32, scope: !3183)
!3192 = !DILocation(line: 312, column: 27, scope: !3183)
!3193 = !DILocation(line: 312, column: 18, scope: !3183)
!3194 = !DILocation(line: 312, column: 31, scope: !3183)
!3195 = !DILocation(line: 312, column: 34, scope: !3183)
!3196 = !DILocation(line: 312, column: 10, scope: !3183)
!3197 = !DILocation(line: 312, column: 3, scope: !3183)
!3198 = distinct !DISubprogram(name: "ximemdup", scope: !222, file: !222, line: 316, type: !3199, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!30, !3186, !236}
!3201 = !DILocalVariable(name: "p", arg: 1, scope: !3198, file: !222, line: 316, type: !3186)
!3202 = !DILocation(line: 316, column: 23, scope: !3198)
!3203 = !DILocalVariable(name: "s", arg: 2, scope: !3198, file: !222, line: 316, type: !236)
!3204 = !DILocation(line: 316, column: 32, scope: !3198)
!3205 = !DILocation(line: 318, column: 28, scope: !3198)
!3206 = !DILocation(line: 318, column: 18, scope: !3198)
!3207 = !DILocation(line: 318, column: 32, scope: !3198)
!3208 = !DILocation(line: 318, column: 35, scope: !3198)
!3209 = !DILocation(line: 318, column: 10, scope: !3198)
!3210 = !DILocation(line: 318, column: 3, scope: !3198)
!3211 = distinct !DISubprogram(name: "ximemdup0", scope: !222, file: !222, line: 325, type: !3212, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!29, !3186, !236}
!3214 = !DILocalVariable(name: "p", arg: 1, scope: !3211, file: !222, line: 325, type: !3186)
!3215 = !DILocation(line: 325, column: 24, scope: !3211)
!3216 = !DILocalVariable(name: "s", arg: 2, scope: !3211, file: !222, line: 325, type: !236)
!3217 = !DILocation(line: 325, column: 33, scope: !3211)
!3218 = !DILocalVariable(name: "result", scope: !3211, file: !222, line: 327, type: !29)
!3219 = !DILocation(line: 327, column: 9, scope: !3211)
!3220 = !DILocation(line: 327, column: 28, scope: !3211)
!3221 = !DILocation(line: 327, column: 30, scope: !3211)
!3222 = !DILocation(line: 327, column: 18, scope: !3211)
!3223 = !DILocation(line: 328, column: 3, scope: !3211)
!3224 = !DILocation(line: 328, column: 10, scope: !3211)
!3225 = !DILocation(line: 328, column: 13, scope: !3211)
!3226 = !DILocation(line: 329, column: 18, scope: !3211)
!3227 = !DILocation(line: 329, column: 26, scope: !3211)
!3228 = !DILocation(line: 329, column: 29, scope: !3211)
!3229 = !DILocation(line: 329, column: 10, scope: !3211)
!3230 = !DILocation(line: 329, column: 3, scope: !3211)
!3231 = distinct !DISubprogram(name: "xstrdup", scope: !222, file: !222, line: 335, type: !2294, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !221, retainedNodes: !34)
!3232 = !DILocalVariable(name: "string", arg: 1, scope: !3231, file: !222, line: 335, type: !6)
!3233 = !DILocation(line: 335, column: 22, scope: !3231)
!3234 = !DILocation(line: 337, column: 19, scope: !3231)
!3235 = !DILocation(line: 337, column: 35, scope: !3231)
!3236 = !DILocation(line: 337, column: 27, scope: !3231)
!3237 = !DILocation(line: 337, column: 43, scope: !3231)
!3238 = !DILocation(line: 337, column: 10, scope: !3231)
!3239 = !DILocation(line: 337, column: 3, scope: !3231)
!3240 = distinct !DISubprogram(name: "xalloc_die", scope: !242, file: !242, line: 32, type: !80, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3241 = !DILocalVariable(name: "__errstatus", scope: !3242, file: !242, line: 34, type: !3243)
!3242 = distinct !DILexicalBlock(scope: !3240, file: !242, line: 34, column: 3)
!3243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!3244 = !DILocation(line: 34, column: 3, scope: !3242)
!3245 = !DILocation(line: 40, column: 3, scope: !3240)
!3246 = distinct !DISubprogram(name: "c32isprint", scope: !3247, file: !3247, line: 41, type: !3248, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !34)
!3247 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!31, !3250}
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3251, line: 20, baseType: !14)
!3251 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3252 = !DILocalVariable(name: "wc", arg: 1, scope: !3246, file: !3247, line: 41, type: !3250)
!3253 = !DILocation(line: 41, column: 14, scope: !3246)
!3254 = !DILocation(line: 66, column: 22, scope: !3246)
!3255 = !DILocation(line: 66, column: 10, scope: !3246)
!3256 = !DILocation(line: 66, column: 3, scope: !3246)
!3257 = distinct !DISubprogram(name: "close_stream", scope: !246, file: !246, line: 55, type: !3258, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !245, retainedNodes: !34)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!31, !3260}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2584, line: 7, baseType: !3262)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2586, line: 49, size: 1728, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3262, file: !2586, line: 51, baseType: !31, size: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3262, file: !2586, line: 54, baseType: !29, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3262, file: !2586, line: 55, baseType: !29, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3262, file: !2586, line: 56, baseType: !29, size: 64, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3262, file: !2586, line: 57, baseType: !29, size: 64, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3262, file: !2586, line: 58, baseType: !29, size: 64, offset: 320)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3262, file: !2586, line: 59, baseType: !29, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3262, file: !2586, line: 60, baseType: !29, size: 64, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3262, file: !2586, line: 61, baseType: !29, size: 64, offset: 512)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3262, file: !2586, line: 64, baseType: !29, size: 64, offset: 576)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3262, file: !2586, line: 65, baseType: !29, size: 64, offset: 640)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3262, file: !2586, line: 66, baseType: !29, size: 64, offset: 704)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3262, file: !2586, line: 68, baseType: !2601, size: 64, offset: 768)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3262, file: !2586, line: 70, baseType: !3278, size: 64, offset: 832)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3262, file: !2586, line: 72, baseType: !31, size: 32, offset: 896)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3262, file: !2586, line: 73, baseType: !31, size: 32, offset: 928)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3262, file: !2586, line: 74, baseType: !2608, size: 64, offset: 960)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3262, file: !2586, line: 77, baseType: !32, size: 16, offset: 1024)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3262, file: !2586, line: 78, baseType: !2611, size: 8, offset: 1040)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3262, file: !2586, line: 79, baseType: !2613, size: 8, offset: 1048)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3262, file: !2586, line: 81, baseType: !2617, size: 64, offset: 1088)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3262, file: !2586, line: 89, baseType: !2620, size: 64, offset: 1152)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3262, file: !2586, line: 91, baseType: !2622, size: 64, offset: 1216)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3262, file: !2586, line: 92, baseType: !2625, size: 64, offset: 1280)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3262, file: !2586, line: 93, baseType: !3278, size: 64, offset: 1344)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3262, file: !2586, line: 94, baseType: !30, size: 64, offset: 1408)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3262, file: !2586, line: 95, baseType: !124, size: 64, offset: 1472)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3262, file: !2586, line: 96, baseType: !31, size: 32, offset: 1536)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3262, file: !2586, line: 98, baseType: !2632, size: 160, offset: 1568)
!3294 = !DILocalVariable(name: "stream", arg: 1, scope: !3257, file: !246, line: 55, type: !3260)
!3295 = !DILocation(line: 55, column: 21, scope: !3257)
!3296 = !DILocalVariable(name: "some_pending", scope: !3257, file: !246, line: 57, type: !3297)
!3297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!3298 = !DILocation(line: 57, column: 14, scope: !3257)
!3299 = !DILocation(line: 57, column: 42, scope: !3257)
!3300 = !DILocation(line: 57, column: 30, scope: !3257)
!3301 = !DILocation(line: 57, column: 50, scope: !3257)
!3302 = !DILocalVariable(name: "prev_fail", scope: !3257, file: !246, line: 58, type: !3297)
!3303 = !DILocation(line: 58, column: 14, scope: !3257)
!3304 = !DILocation(line: 58, column: 27, scope: !3257)
!3305 = !DILocation(line: 58, column: 43, scope: !3257)
!3306 = !DILocalVariable(name: "fclose_fail", scope: !3257, file: !246, line: 59, type: !3297)
!3307 = !DILocation(line: 59, column: 14, scope: !3257)
!3308 = !DILocation(line: 59, column: 37, scope: !3257)
!3309 = !DILocation(line: 59, column: 29, scope: !3257)
!3310 = !DILocation(line: 59, column: 45, scope: !3257)
!3311 = !DILocation(line: 69, column: 7, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3257, file: !246, line: 69, column: 7)
!3313 = !DILocation(line: 69, column: 17, scope: !3312)
!3314 = !DILocation(line: 69, column: 21, scope: !3312)
!3315 = !DILocation(line: 69, column: 33, scope: !3312)
!3316 = !DILocation(line: 69, column: 37, scope: !3312)
!3317 = !DILocation(line: 69, column: 50, scope: !3312)
!3318 = !DILocation(line: 69, column: 53, scope: !3312)
!3319 = !DILocation(line: 69, column: 59, scope: !3312)
!3320 = !DILocation(line: 69, column: 7, scope: !3257)
!3321 = !DILocation(line: 71, column: 13, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !246, line: 71, column: 11)
!3323 = distinct !DILexicalBlock(scope: !3312, file: !246, line: 70, column: 5)
!3324 = !DILocation(line: 71, column: 11, scope: !3323)
!3325 = !DILocation(line: 72, column: 9, scope: !3322)
!3326 = !DILocation(line: 72, column: 15, scope: !3322)
!3327 = !DILocation(line: 73, column: 7, scope: !3323)
!3328 = !DILocation(line: 76, column: 3, scope: !3257)
!3329 = !DILocation(line: 77, column: 1, scope: !3257)
!3330 = distinct !DISubprogram(name: "rpl_fclose", scope: !248, file: !248, line: 58, type: !3331, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !247, retainedNodes: !34)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!31, !3333}
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2584, line: 7, baseType: !3335)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2586, line: 49, size: 1728, elements: !3336)
!3336 = !{!3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3335, file: !2586, line: 51, baseType: !31, size: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3335, file: !2586, line: 54, baseType: !29, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3335, file: !2586, line: 55, baseType: !29, size: 64, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3335, file: !2586, line: 56, baseType: !29, size: 64, offset: 192)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3335, file: !2586, line: 57, baseType: !29, size: 64, offset: 256)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3335, file: !2586, line: 58, baseType: !29, size: 64, offset: 320)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3335, file: !2586, line: 59, baseType: !29, size: 64, offset: 384)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3335, file: !2586, line: 60, baseType: !29, size: 64, offset: 448)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3335, file: !2586, line: 61, baseType: !29, size: 64, offset: 512)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3335, file: !2586, line: 64, baseType: !29, size: 64, offset: 576)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3335, file: !2586, line: 65, baseType: !29, size: 64, offset: 640)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3335, file: !2586, line: 66, baseType: !29, size: 64, offset: 704)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3335, file: !2586, line: 68, baseType: !2601, size: 64, offset: 768)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3335, file: !2586, line: 70, baseType: !3351, size: 64, offset: 832)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3335, file: !2586, line: 72, baseType: !31, size: 32, offset: 896)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3335, file: !2586, line: 73, baseType: !31, size: 32, offset: 928)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3335, file: !2586, line: 74, baseType: !2608, size: 64, offset: 960)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3335, file: !2586, line: 77, baseType: !32, size: 16, offset: 1024)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3335, file: !2586, line: 78, baseType: !2611, size: 8, offset: 1040)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3335, file: !2586, line: 79, baseType: !2613, size: 8, offset: 1048)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3335, file: !2586, line: 81, baseType: !2617, size: 64, offset: 1088)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3335, file: !2586, line: 89, baseType: !2620, size: 64, offset: 1152)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3335, file: !2586, line: 91, baseType: !2622, size: 64, offset: 1216)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3335, file: !2586, line: 92, baseType: !2625, size: 64, offset: 1280)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3335, file: !2586, line: 93, baseType: !3351, size: 64, offset: 1344)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3335, file: !2586, line: 94, baseType: !30, size: 64, offset: 1408)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3335, file: !2586, line: 95, baseType: !124, size: 64, offset: 1472)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3335, file: !2586, line: 96, baseType: !31, size: 32, offset: 1536)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3335, file: !2586, line: 98, baseType: !2632, size: 160, offset: 1568)
!3367 = !DILocalVariable(name: "fp", arg: 1, scope: !3330, file: !248, line: 58, type: !3333)
!3368 = !DILocation(line: 58, column: 19, scope: !3330)
!3369 = !DILocalVariable(name: "saved_errno", scope: !3330, file: !248, line: 60, type: !31)
!3370 = !DILocation(line: 60, column: 7, scope: !3330)
!3371 = !DILocalVariable(name: "fd", scope: !3330, file: !248, line: 63, type: !31)
!3372 = !DILocation(line: 63, column: 7, scope: !3330)
!3373 = !DILocation(line: 63, column: 20, scope: !3330)
!3374 = !DILocation(line: 63, column: 12, scope: !3330)
!3375 = !DILocation(line: 64, column: 7, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3330, file: !248, line: 64, column: 7)
!3377 = !DILocation(line: 64, column: 10, scope: !3376)
!3378 = !DILocation(line: 64, column: 7, scope: !3330)
!3379 = !DILocation(line: 65, column: 28, scope: !3376)
!3380 = !DILocation(line: 65, column: 12, scope: !3376)
!3381 = !DILocation(line: 65, column: 5, scope: !3376)
!3382 = !DILocation(line: 70, column: 9, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3330, file: !248, line: 70, column: 7)
!3384 = !DILocation(line: 70, column: 23, scope: !3383)
!3385 = !DILocation(line: 70, column: 41, scope: !3383)
!3386 = !DILocation(line: 70, column: 33, scope: !3383)
!3387 = !DILocation(line: 70, column: 26, scope: !3383)
!3388 = !DILocation(line: 70, column: 59, scope: !3383)
!3389 = !DILocation(line: 71, column: 7, scope: !3383)
!3390 = !DILocation(line: 71, column: 18, scope: !3383)
!3391 = !DILocation(line: 71, column: 10, scope: !3383)
!3392 = !DILocation(line: 70, column: 7, scope: !3330)
!3393 = !DILocation(line: 72, column: 19, scope: !3383)
!3394 = !DILocation(line: 72, column: 17, scope: !3383)
!3395 = !DILocation(line: 72, column: 5, scope: !3383)
!3396 = !DILocalVariable(name: "result", scope: !3330, file: !248, line: 74, type: !31)
!3397 = !DILocation(line: 74, column: 7, scope: !3330)
!3398 = !DILocation(line: 100, column: 28, scope: !3330)
!3399 = !DILocation(line: 100, column: 12, scope: !3330)
!3400 = !DILocation(line: 100, column: 10, scope: !3330)
!3401 = !DILocation(line: 105, column: 7, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3330, file: !248, line: 105, column: 7)
!3403 = !DILocation(line: 105, column: 19, scope: !3402)
!3404 = !DILocation(line: 105, column: 7, scope: !3330)
!3405 = !DILocation(line: 107, column: 15, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3402, file: !248, line: 106, column: 5)
!3407 = !DILocation(line: 107, column: 7, scope: !3406)
!3408 = !DILocation(line: 107, column: 13, scope: !3406)
!3409 = !DILocation(line: 108, column: 14, scope: !3406)
!3410 = !DILocation(line: 109, column: 5, scope: !3406)
!3411 = !DILocation(line: 111, column: 10, scope: !3330)
!3412 = !DILocation(line: 111, column: 3, scope: !3330)
!3413 = !DILocation(line: 112, column: 1, scope: !3330)
!3414 = distinct !DISubprogram(name: "rpl_fflush", scope: !250, file: !250, line: 130, type: !3415, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !34)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!31, !3417}
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2584, line: 7, baseType: !3419)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2586, line: 49, size: 1728, elements: !3420)
!3420 = !{!3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3419, file: !2586, line: 51, baseType: !31, size: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3419, file: !2586, line: 54, baseType: !29, size: 64, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3419, file: !2586, line: 55, baseType: !29, size: 64, offset: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3419, file: !2586, line: 56, baseType: !29, size: 64, offset: 192)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3419, file: !2586, line: 57, baseType: !29, size: 64, offset: 256)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3419, file: !2586, line: 58, baseType: !29, size: 64, offset: 320)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3419, file: !2586, line: 59, baseType: !29, size: 64, offset: 384)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3419, file: !2586, line: 60, baseType: !29, size: 64, offset: 448)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3419, file: !2586, line: 61, baseType: !29, size: 64, offset: 512)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3419, file: !2586, line: 64, baseType: !29, size: 64, offset: 576)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3419, file: !2586, line: 65, baseType: !29, size: 64, offset: 640)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3419, file: !2586, line: 66, baseType: !29, size: 64, offset: 704)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3419, file: !2586, line: 68, baseType: !2601, size: 64, offset: 768)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3419, file: !2586, line: 70, baseType: !3435, size: 64, offset: 832)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3419, file: !2586, line: 72, baseType: !31, size: 32, offset: 896)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3419, file: !2586, line: 73, baseType: !31, size: 32, offset: 928)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3419, file: !2586, line: 74, baseType: !2608, size: 64, offset: 960)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3419, file: !2586, line: 77, baseType: !32, size: 16, offset: 1024)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3419, file: !2586, line: 78, baseType: !2611, size: 8, offset: 1040)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3419, file: !2586, line: 79, baseType: !2613, size: 8, offset: 1048)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3419, file: !2586, line: 81, baseType: !2617, size: 64, offset: 1088)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3419, file: !2586, line: 89, baseType: !2620, size: 64, offset: 1152)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3419, file: !2586, line: 91, baseType: !2622, size: 64, offset: 1216)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3419, file: !2586, line: 92, baseType: !2625, size: 64, offset: 1280)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3419, file: !2586, line: 93, baseType: !3435, size: 64, offset: 1344)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3419, file: !2586, line: 94, baseType: !30, size: 64, offset: 1408)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3419, file: !2586, line: 95, baseType: !124, size: 64, offset: 1472)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3419, file: !2586, line: 96, baseType: !31, size: 32, offset: 1536)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3419, file: !2586, line: 98, baseType: !2632, size: 160, offset: 1568)
!3451 = !DILocalVariable(name: "stream", arg: 1, scope: !3414, file: !250, line: 130, type: !3417)
!3452 = !DILocation(line: 130, column: 19, scope: !3414)
!3453 = !DILocation(line: 151, column: 7, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3414, file: !250, line: 151, column: 7)
!3455 = !DILocation(line: 151, column: 14, scope: !3454)
!3456 = !DILocation(line: 151, column: 22, scope: !3454)
!3457 = !DILocation(line: 151, column: 27, scope: !3454)
!3458 = !DILocation(line: 151, column: 7, scope: !3414)
!3459 = !DILocation(line: 152, column: 20, scope: !3454)
!3460 = !DILocation(line: 152, column: 12, scope: !3454)
!3461 = !DILocation(line: 152, column: 5, scope: !3454)
!3462 = !DILocation(line: 157, column: 44, scope: !3414)
!3463 = !DILocation(line: 157, column: 3, scope: !3414)
!3464 = !DILocation(line: 159, column: 18, scope: !3414)
!3465 = !DILocation(line: 159, column: 10, scope: !3414)
!3466 = !DILocation(line: 159, column: 3, scope: !3414)
!3467 = !DILocation(line: 236, column: 1, scope: !3414)
!3468 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !250, file: !250, line: 42, type: !3469, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !249, retainedNodes: !34)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{null, !3417}
!3471 = !DILocalVariable(name: "fp", arg: 1, scope: !3468, file: !250, line: 42, type: !3417)
!3472 = !DILocation(line: 42, column: 48, scope: !3468)
!3473 = !DILocation(line: 44, column: 7, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3468, file: !250, line: 44, column: 7)
!3475 = !DILocation(line: 44, column: 12, scope: !3474)
!3476 = !DILocation(line: 44, column: 19, scope: !3474)
!3477 = !DILocation(line: 44, column: 7, scope: !3468)
!3478 = !DILocation(line: 46, column: 13, scope: !3474)
!3479 = !DILocation(line: 46, column: 5, scope: !3474)
!3480 = !DILocation(line: 47, column: 1, scope: !3468)
!3481 = distinct !DISubprogram(name: "rpl_fseeko", scope: !252, file: !252, line: 28, type: !3482, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !34)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!31, !3484, !3518, !31}
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2584, line: 7, baseType: !3486)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2586, line: 49, size: 1728, elements: !3487)
!3487 = !{!3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3486, file: !2586, line: 51, baseType: !31, size: 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3486, file: !2586, line: 54, baseType: !29, size: 64, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3486, file: !2586, line: 55, baseType: !29, size: 64, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3486, file: !2586, line: 56, baseType: !29, size: 64, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3486, file: !2586, line: 57, baseType: !29, size: 64, offset: 256)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3486, file: !2586, line: 58, baseType: !29, size: 64, offset: 320)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3486, file: !2586, line: 59, baseType: !29, size: 64, offset: 384)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3486, file: !2586, line: 60, baseType: !29, size: 64, offset: 448)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3486, file: !2586, line: 61, baseType: !29, size: 64, offset: 512)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3486, file: !2586, line: 64, baseType: !29, size: 64, offset: 576)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3486, file: !2586, line: 65, baseType: !29, size: 64, offset: 640)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3486, file: !2586, line: 66, baseType: !29, size: 64, offset: 704)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3486, file: !2586, line: 68, baseType: !2601, size: 64, offset: 768)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3486, file: !2586, line: 70, baseType: !3502, size: 64, offset: 832)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3486, file: !2586, line: 72, baseType: !31, size: 32, offset: 896)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3486, file: !2586, line: 73, baseType: !31, size: 32, offset: 928)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3486, file: !2586, line: 74, baseType: !2608, size: 64, offset: 960)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3486, file: !2586, line: 77, baseType: !32, size: 16, offset: 1024)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3486, file: !2586, line: 78, baseType: !2611, size: 8, offset: 1040)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3486, file: !2586, line: 79, baseType: !2613, size: 8, offset: 1048)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3486, file: !2586, line: 81, baseType: !2617, size: 64, offset: 1088)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3486, file: !2586, line: 89, baseType: !2620, size: 64, offset: 1152)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3486, file: !2586, line: 91, baseType: !2622, size: 64, offset: 1216)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3486, file: !2586, line: 92, baseType: !2625, size: 64, offset: 1280)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3486, file: !2586, line: 93, baseType: !3502, size: 64, offset: 1344)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3486, file: !2586, line: 94, baseType: !30, size: 64, offset: 1408)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3486, file: !2586, line: 95, baseType: !124, size: 64, offset: 1472)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3486, file: !2586, line: 96, baseType: !31, size: 32, offset: 1536)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3486, file: !2586, line: 98, baseType: !2632, size: 160, offset: 1568)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !60, line: 63, baseType: !2608)
!3519 = !DILocalVariable(name: "fp", arg: 1, scope: !3481, file: !252, line: 28, type: !3484)
!3520 = !DILocation(line: 28, column: 15, scope: !3481)
!3521 = !DILocalVariable(name: "offset", arg: 2, scope: !3481, file: !252, line: 28, type: !3518)
!3522 = !DILocation(line: 28, column: 25, scope: !3481)
!3523 = !DILocalVariable(name: "whence", arg: 3, scope: !3481, file: !252, line: 28, type: !31)
!3524 = !DILocation(line: 28, column: 37, scope: !3481)
!3525 = !DILocation(line: 55, column: 7, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3481, file: !252, line: 55, column: 7)
!3527 = !DILocation(line: 55, column: 12, scope: !3526)
!3528 = !DILocation(line: 55, column: 28, scope: !3526)
!3529 = !DILocation(line: 55, column: 33, scope: !3526)
!3530 = !DILocation(line: 55, column: 25, scope: !3526)
!3531 = !DILocation(line: 56, column: 7, scope: !3526)
!3532 = !DILocation(line: 56, column: 10, scope: !3526)
!3533 = !DILocation(line: 56, column: 15, scope: !3526)
!3534 = !DILocation(line: 56, column: 32, scope: !3526)
!3535 = !DILocation(line: 56, column: 37, scope: !3526)
!3536 = !DILocation(line: 56, column: 29, scope: !3526)
!3537 = !DILocation(line: 57, column: 7, scope: !3526)
!3538 = !DILocation(line: 57, column: 10, scope: !3526)
!3539 = !DILocation(line: 57, column: 15, scope: !3526)
!3540 = !DILocation(line: 57, column: 29, scope: !3526)
!3541 = !DILocation(line: 55, column: 7, scope: !3481)
!3542 = !DILocalVariable(name: "pos", scope: !3543, file: !252, line: 123, type: !3518)
!3543 = distinct !DILexicalBlock(scope: !3526, file: !252, line: 119, column: 5)
!3544 = !DILocation(line: 123, column: 13, scope: !3543)
!3545 = !DILocation(line: 123, column: 34, scope: !3543)
!3546 = !DILocation(line: 123, column: 26, scope: !3543)
!3547 = !DILocation(line: 123, column: 39, scope: !3543)
!3548 = !DILocation(line: 123, column: 47, scope: !3543)
!3549 = !DILocation(line: 123, column: 19, scope: !3543)
!3550 = !DILocation(line: 124, column: 11, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3543, file: !252, line: 124, column: 11)
!3552 = !DILocation(line: 124, column: 15, scope: !3551)
!3553 = !DILocation(line: 124, column: 11, scope: !3543)
!3554 = !DILocation(line: 130, column: 11, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3551, file: !252, line: 125, column: 9)
!3556 = !DILocation(line: 135, column: 7, scope: !3543)
!3557 = !DILocation(line: 135, column: 12, scope: !3543)
!3558 = !DILocation(line: 135, column: 19, scope: !3543)
!3559 = !DILocation(line: 136, column: 22, scope: !3543)
!3560 = !DILocation(line: 136, column: 7, scope: !3543)
!3561 = !DILocation(line: 136, column: 12, scope: !3543)
!3562 = !DILocation(line: 136, column: 20, scope: !3543)
!3563 = !DILocation(line: 167, column: 7, scope: !3543)
!3564 = !DILocation(line: 169, column: 18, scope: !3481)
!3565 = !DILocation(line: 169, column: 22, scope: !3481)
!3566 = !DILocation(line: 169, column: 30, scope: !3481)
!3567 = !DILocation(line: 169, column: 10, scope: !3481)
!3568 = !DILocation(line: 169, column: 3, scope: !3481)
!3569 = !DILocation(line: 170, column: 1, scope: !3481)
!3570 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !3571, file: !3571, line: 43, type: !3572, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !253, retainedNodes: !34)
!3571 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3572 = !DISubroutineType(types: !52)
!3573 = !DILocation(line: 45, column: 3, scope: !3570)
!3574 = !DILocation(line: 45, column: 9, scope: !3570)
!3575 = !DILocation(line: 46, column: 3, scope: !3570)
!3576 = distinct !DISubprogram(name: "imalloc", scope: !3571, file: !3571, line: 55, type: !2935, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !253, retainedNodes: !34)
!3577 = !DILocalVariable(name: "s", arg: 1, scope: !3576, file: !3571, line: 55, type: !236)
!3578 = !DILocation(line: 55, column: 16, scope: !3576)
!3579 = !DILocation(line: 57, column: 10, scope: !3576)
!3580 = !DILocation(line: 57, column: 12, scope: !3576)
!3581 = !DILocation(line: 57, column: 34, scope: !3576)
!3582 = !DILocation(line: 57, column: 26, scope: !3576)
!3583 = !DILocation(line: 57, column: 39, scope: !3576)
!3584 = !DILocation(line: 57, column: 3, scope: !3576)
!3585 = distinct !DISubprogram(name: "irealloc", scope: !3571, file: !3571, line: 66, type: !2963, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !253, retainedNodes: !34)
!3586 = !DILocalVariable(name: "p", arg: 1, scope: !3585, file: !3571, line: 66, type: !30)
!3587 = !DILocation(line: 66, column: 17, scope: !3585)
!3588 = !DILocalVariable(name: "s", arg: 2, scope: !3585, file: !3571, line: 66, type: !236)
!3589 = !DILocation(line: 66, column: 26, scope: !3585)
!3590 = !DILocation(line: 68, column: 10, scope: !3585)
!3591 = !DILocation(line: 68, column: 12, scope: !3585)
!3592 = !DILocation(line: 68, column: 35, scope: !3585)
!3593 = !DILocation(line: 68, column: 38, scope: !3585)
!3594 = !DILocation(line: 68, column: 26, scope: !3585)
!3595 = !DILocation(line: 68, column: 43, scope: !3585)
!3596 = !DILocation(line: 68, column: 3, scope: !3585)
!3597 = distinct !DISubprogram(name: "icalloc", scope: !3571, file: !3571, line: 77, type: !3001, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !253, retainedNodes: !34)
!3598 = !DILocalVariable(name: "n", arg: 1, scope: !3597, file: !3571, line: 77, type: !236)
!3599 = !DILocation(line: 77, column: 16, scope: !3597)
!3600 = !DILocalVariable(name: "s", arg: 2, scope: !3597, file: !3571, line: 77, type: !236)
!3601 = !DILocation(line: 77, column: 25, scope: !3597)
!3602 = !DILocation(line: 79, column: 18, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3597, file: !3571, line: 79, column: 7)
!3604 = !DILocation(line: 79, column: 16, scope: !3603)
!3605 = !DILocation(line: 79, column: 7, scope: !3597)
!3606 = !DILocation(line: 81, column: 11, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !3571, line: 81, column: 11)
!3608 = distinct !DILexicalBlock(scope: !3603, file: !3571, line: 80, column: 5)
!3609 = !DILocation(line: 81, column: 13, scope: !3607)
!3610 = !DILocation(line: 81, column: 11, scope: !3608)
!3611 = !DILocation(line: 82, column: 16, scope: !3607)
!3612 = !DILocation(line: 82, column: 9, scope: !3607)
!3613 = !DILocation(line: 83, column: 9, scope: !3608)
!3614 = !DILocation(line: 84, column: 5, scope: !3608)
!3615 = !DILocation(line: 85, column: 18, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3597, file: !3571, line: 85, column: 7)
!3617 = !DILocation(line: 85, column: 16, scope: !3616)
!3618 = !DILocation(line: 85, column: 7, scope: !3597)
!3619 = !DILocation(line: 87, column: 11, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !3571, line: 87, column: 11)
!3621 = distinct !DILexicalBlock(scope: !3616, file: !3571, line: 86, column: 5)
!3622 = !DILocation(line: 87, column: 13, scope: !3620)
!3623 = !DILocation(line: 87, column: 11, scope: !3621)
!3624 = !DILocation(line: 88, column: 16, scope: !3620)
!3625 = !DILocation(line: 88, column: 9, scope: !3620)
!3626 = !DILocation(line: 89, column: 9, scope: !3621)
!3627 = !DILocation(line: 90, column: 5, scope: !3621)
!3628 = !DILocation(line: 91, column: 18, scope: !3597)
!3629 = !DILocation(line: 91, column: 21, scope: !3597)
!3630 = !DILocation(line: 91, column: 10, scope: !3597)
!3631 = !DILocation(line: 91, column: 3, scope: !3597)
!3632 = !DILocation(line: 92, column: 1, scope: !3597)
!3633 = distinct !DISubprogram(name: "ireallocarray", scope: !3571, file: !3571, line: 98, type: !2975, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !253, retainedNodes: !34)
!3634 = !DILocalVariable(name: "p", arg: 1, scope: !3633, file: !3571, line: 98, type: !30)
!3635 = !DILocation(line: 98, column: 22, scope: !3633)
!3636 = !DILocalVariable(name: "n", arg: 2, scope: !3633, file: !3571, line: 98, type: !236)
!3637 = !DILocation(line: 98, column: 31, scope: !3633)
!3638 = !DILocalVariable(name: "s", arg: 3, scope: !3633, file: !3571, line: 98, type: !236)
!3639 = !DILocation(line: 98, column: 40, scope: !3633)
!3640 = !DILocation(line: 100, column: 11, scope: !3633)
!3641 = !DILocation(line: 100, column: 13, scope: !3633)
!3642 = !DILocation(line: 100, column: 25, scope: !3633)
!3643 = !DILocation(line: 100, column: 28, scope: !3633)
!3644 = !DILocation(line: 100, column: 30, scope: !3633)
!3645 = !DILocation(line: 101, column: 27, scope: !3633)
!3646 = !DILocation(line: 101, column: 30, scope: !3633)
!3647 = !DILocation(line: 101, column: 33, scope: !3633)
!3648 = !DILocation(line: 101, column: 13, scope: !3633)
!3649 = !DILocation(line: 102, column: 13, scope: !3633)
!3650 = !DILocation(line: 100, column: 3, scope: !3633)
!3651 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !193, file: !193, line: 100, type: !3652, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !192, retainedNodes: !34)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!124, !3654, !6, !124, !3655}
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!3656 = !DILocalVariable(name: "pwc", arg: 1, scope: !3651, file: !193, line: 100, type: !3654)
!3657 = !DILocation(line: 100, column: 21, scope: !3651)
!3658 = !DILocalVariable(name: "s", arg: 2, scope: !3651, file: !193, line: 100, type: !6)
!3659 = !DILocation(line: 100, column: 38, scope: !3651)
!3660 = !DILocalVariable(name: "n", arg: 3, scope: !3651, file: !193, line: 100, type: !124)
!3661 = !DILocation(line: 100, column: 48, scope: !3651)
!3662 = !DILocalVariable(name: "ps", arg: 4, scope: !3651, file: !193, line: 100, type: !3655)
!3663 = !DILocation(line: 100, column: 62, scope: !3651)
!3664 = !DILocation(line: 105, column: 7, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3651, file: !193, line: 105, column: 7)
!3666 = !DILocation(line: 105, column: 9, scope: !3665)
!3667 = !DILocation(line: 105, column: 7, scope: !3651)
!3668 = !DILocation(line: 107, column: 11, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3665, file: !193, line: 106, column: 5)
!3670 = !DILocation(line: 108, column: 9, scope: !3669)
!3671 = !DILocation(line: 109, column: 9, scope: !3669)
!3672 = !DILocation(line: 110, column: 5, scope: !3669)
!3673 = !DILocation(line: 117, column: 7, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3651, file: !193, line: 117, column: 7)
!3675 = !DILocation(line: 117, column: 10, scope: !3674)
!3676 = !DILocation(line: 117, column: 7, scope: !3651)
!3677 = !DILocation(line: 118, column: 8, scope: !3674)
!3678 = !DILocation(line: 118, column: 5, scope: !3674)
!3679 = !DILocalVariable(name: "ret", scope: !3651, file: !193, line: 130, type: !124)
!3680 = !DILocation(line: 130, column: 10, scope: !3651)
!3681 = !DILocation(line: 130, column: 26, scope: !3651)
!3682 = !DILocation(line: 130, column: 31, scope: !3651)
!3683 = !DILocation(line: 130, column: 34, scope: !3651)
!3684 = !DILocation(line: 130, column: 37, scope: !3651)
!3685 = !DILocation(line: 130, column: 16, scope: !3651)
!3686 = !DILocation(line: 135, column: 7, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3651, file: !193, line: 135, column: 7)
!3688 = !DILocation(line: 135, column: 11, scope: !3687)
!3689 = !DILocation(line: 135, column: 25, scope: !3687)
!3690 = !DILocation(line: 135, column: 39, scope: !3687)
!3691 = !DILocation(line: 135, column: 30, scope: !3687)
!3692 = !DILocation(line: 135, column: 7, scope: !3651)
!3693 = !DILocation(line: 137, column: 14, scope: !3687)
!3694 = !DILocation(line: 137, column: 5, scope: !3687)
!3695 = !DILocation(line: 138, column: 7, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3651, file: !193, line: 138, column: 7)
!3697 = !DILocation(line: 138, column: 11, scope: !3696)
!3698 = !DILocation(line: 138, column: 7, scope: !3651)
!3699 = !DILocation(line: 139, column: 5, scope: !3696)
!3700 = !DILocation(line: 143, column: 22, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3651, file: !193, line: 143, column: 7)
!3702 = !DILocation(line: 143, column: 19, scope: !3701)
!3703 = !DILocation(line: 143, column: 26, scope: !3701)
!3704 = !DILocation(line: 143, column: 29, scope: !3701)
!3705 = !DILocation(line: 143, column: 31, scope: !3701)
!3706 = !DILocation(line: 143, column: 36, scope: !3701)
!3707 = !DILocation(line: 143, column: 41, scope: !3701)
!3708 = !DILocation(line: 143, column: 7, scope: !3651)
!3709 = !DILocation(line: 145, column: 11, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !193, line: 145, column: 11)
!3711 = distinct !DILexicalBlock(scope: !3701, file: !193, line: 144, column: 5)
!3712 = !DILocation(line: 145, column: 15, scope: !3710)
!3713 = !DILocation(line: 145, column: 11, scope: !3711)
!3714 = !DILocation(line: 146, column: 33, scope: !3710)
!3715 = !DILocation(line: 146, column: 32, scope: !3710)
!3716 = !DILocation(line: 146, column: 16, scope: !3710)
!3717 = !DILocation(line: 146, column: 10, scope: !3710)
!3718 = !DILocation(line: 146, column: 14, scope: !3710)
!3719 = !DILocation(line: 146, column: 9, scope: !3710)
!3720 = !DILocation(line: 147, column: 7, scope: !3711)
!3721 = !DILocation(line: 151, column: 10, scope: !3651)
!3722 = !DILocation(line: 151, column: 3, scope: !3651)
!3723 = !DILocation(line: 286, column: 1, scope: !3651)
!3724 = distinct !DISubprogram(name: "mbszero", scope: !3725, file: !3725, line: 1135, type: !3726, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !34)
!3725 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !3728}
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !198, line: 6, baseType: !3730)
!3730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !200, line: 21, baseType: !3731)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !200, line: 13, size: 64, elements: !3732)
!3732 = !{!3733, !3734}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3731, file: !200, line: 15, baseType: !31, size: 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3731, file: !200, line: 20, baseType: !3735, size: 32, offset: 32)
!3735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3731, file: !200, line: 16, size: 32, elements: !3736)
!3736 = !{!3737, !3738}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3735, file: !200, line: 18, baseType: !14, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3735, file: !200, line: 19, baseType: !209, size: 32)
!3739 = !DILocalVariable(name: "ps", arg: 1, scope: !3724, file: !3725, line: 1135, type: !3728)
!3740 = !DILocation(line: 1135, column: 21, scope: !3724)
!3741 = !DILocation(line: 1137, column: 11, scope: !3724)
!3742 = !DILocation(line: 1137, column: 3, scope: !3724)
!3743 = !DILocation(line: 1138, column: 1, scope: !3724)
!3744 = distinct !DISubprogram(name: "memeq", scope: !2567, file: !2567, line: 974, type: !3745, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !34)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!47, !3186, !3186, !124}
!3747 = !DILocalVariable(name: "__s1", arg: 1, scope: !3744, file: !2567, line: 974, type: !3186)
!3748 = !DILocation(line: 974, column: 20, scope: !3744)
!3749 = !DILocalVariable(name: "__s2", arg: 2, scope: !3744, file: !2567, line: 974, type: !3186)
!3750 = !DILocation(line: 974, column: 38, scope: !3744)
!3751 = !DILocalVariable(name: "__n", arg: 3, scope: !3744, file: !2567, line: 974, type: !124)
!3752 = !DILocation(line: 974, column: 51, scope: !3744)
!3753 = !DILocation(line: 976, column: 19, scope: !3744)
!3754 = !DILocation(line: 976, column: 25, scope: !3744)
!3755 = !DILocation(line: 976, column: 31, scope: !3744)
!3756 = !DILocation(line: 976, column: 11, scope: !3744)
!3757 = !DILocation(line: 976, column: 10, scope: !3744)
!3758 = !DILocation(line: 976, column: 3, scope: !3744)
!3759 = distinct !DISubprogram(name: "rpl_realloc", scope: !3760, file: !3760, line: 2057, type: !2951, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !259, retainedNodes: !34)
!3760 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3761 = !DILocalVariable(name: "ptr", arg: 1, scope: !3759, file: !3760, line: 2057, type: !30)
!3762 = !DILocation(line: 2057, column: 20, scope: !3759)
!3763 = !DILocalVariable(name: "size", arg: 2, scope: !3759, file: !3760, line: 2057, type: !124)
!3764 = !DILocation(line: 2057, column: 32, scope: !3759)
!3765 = !DILocation(line: 2059, column: 19, scope: !3759)
!3766 = !DILocation(line: 2059, column: 24, scope: !3759)
!3767 = !DILocation(line: 2059, column: 31, scope: !3759)
!3768 = !DILocation(line: 2059, column: 10, scope: !3759)
!3769 = !DILocation(line: 2059, column: 3, scope: !3759)
!3770 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !262, file: !262, line: 27, type: !2888, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !261, retainedNodes: !34)
!3771 = !DILocalVariable(name: "ptr", arg: 1, scope: !3770, file: !262, line: 27, type: !30)
!3772 = !DILocation(line: 27, column: 21, scope: !3770)
!3773 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3770, file: !262, line: 27, type: !124)
!3774 = !DILocation(line: 27, column: 33, scope: !3770)
!3775 = !DILocalVariable(name: "size", arg: 3, scope: !3770, file: !262, line: 27, type: !124)
!3776 = !DILocation(line: 27, column: 47, scope: !3770)
!3777 = !DILocalVariable(name: "nbytes", scope: !3770, file: !262, line: 29, type: !124)
!3778 = !DILocation(line: 29, column: 10, scope: !3770)
!3779 = !DILocation(line: 30, column: 7, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3770, file: !262, line: 30, column: 7)
!3781 = !DILocation(line: 30, column: 7, scope: !3770)
!3782 = !DILocation(line: 32, column: 7, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3780, file: !262, line: 31, column: 5)
!3784 = !DILocation(line: 32, column: 13, scope: !3783)
!3785 = !DILocation(line: 33, column: 7, scope: !3783)
!3786 = !DILocation(line: 37, column: 19, scope: !3770)
!3787 = !DILocation(line: 37, column: 24, scope: !3770)
!3788 = !DILocation(line: 37, column: 10, scope: !3770)
!3789 = !DILocation(line: 37, column: 3, scope: !3770)
!3790 = !DILocation(line: 38, column: 1, scope: !3770)
!3791 = distinct !DISubprogram(name: "hard_locale", scope: !265, file: !265, line: 28, type: !3792, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !34)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!47, !31}
!3794 = !DILocalVariable(name: "category", arg: 1, scope: !3791, file: !265, line: 28, type: !31)
!3795 = !DILocation(line: 28, column: 18, scope: !3791)
!3796 = !DILocalVariable(name: "locale", scope: !3791, file: !265, line: 30, type: !3797)
!3797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3798)
!3798 = !{!3799}
!3799 = !DISubrange(count: 257)
!3800 = !DILocation(line: 30, column: 8, scope: !3791)
!3801 = !DILocation(line: 32, column: 25, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3791, file: !265, line: 32, column: 7)
!3803 = !DILocation(line: 32, column: 35, scope: !3802)
!3804 = !DILocation(line: 32, column: 7, scope: !3802)
!3805 = !DILocation(line: 32, column: 7, scope: !3791)
!3806 = !DILocation(line: 33, column: 5, scope: !3802)
!3807 = !DILocation(line: 35, column: 16, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3791, file: !265, line: 35, column: 7)
!3809 = !DILocation(line: 35, column: 9, scope: !3808)
!3810 = !DILocation(line: 35, column: 29, scope: !3808)
!3811 = !DILocation(line: 35, column: 39, scope: !3808)
!3812 = !DILocation(line: 35, column: 32, scope: !3808)
!3813 = !DILocation(line: 35, column: 7, scope: !3791)
!3814 = !DILocation(line: 36, column: 5, scope: !3808)
!3815 = !DILocation(line: 46, column: 3, scope: !3791)
!3816 = !DILocation(line: 47, column: 1, scope: !3791)
!3817 = distinct !DISubprogram(name: "setlocale_null_r", scope: !267, file: !267, line: 154, type: !3818, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !34)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!31, !31, !29, !124}
!3820 = !DILocalVariable(name: "category", arg: 1, scope: !3817, file: !267, line: 154, type: !31)
!3821 = !DILocation(line: 154, column: 23, scope: !3817)
!3822 = !DILocalVariable(name: "buf", arg: 2, scope: !3817, file: !267, line: 154, type: !29)
!3823 = !DILocation(line: 154, column: 39, scope: !3817)
!3824 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3817, file: !267, line: 154, type: !124)
!3825 = !DILocation(line: 154, column: 51, scope: !3817)
!3826 = !DILocation(line: 159, column: 37, scope: !3817)
!3827 = !DILocation(line: 159, column: 47, scope: !3817)
!3828 = !DILocation(line: 159, column: 52, scope: !3817)
!3829 = !DILocation(line: 159, column: 10, scope: !3817)
!3830 = !DILocation(line: 159, column: 3, scope: !3817)
!3831 = distinct !DISubprogram(name: "setlocale_null", scope: !267, file: !267, line: 186, type: !3832, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !34)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!6, !31}
!3834 = !DILocalVariable(name: "category", arg: 1, scope: !3831, file: !267, line: 186, type: !31)
!3835 = !DILocation(line: 186, column: 21, scope: !3831)
!3836 = !DILocation(line: 189, column: 35, scope: !3831)
!3837 = !DILocation(line: 189, column: 10, scope: !3831)
!3838 = !DILocation(line: 189, column: 3, scope: !3831)
!3839 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !269, file: !269, line: 35, type: !3832, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !34)
!3840 = !DILocalVariable(name: "category", arg: 1, scope: !3839, file: !269, line: 35, type: !31)
!3841 = !DILocation(line: 35, column: 30, scope: !3839)
!3842 = !DILocalVariable(name: "result", scope: !3839, file: !269, line: 37, type: !6)
!3843 = !DILocation(line: 37, column: 15, scope: !3839)
!3844 = !DILocation(line: 37, column: 35, scope: !3839)
!3845 = !DILocation(line: 37, column: 24, scope: !3839)
!3846 = !DILocation(line: 62, column: 10, scope: !3839)
!3847 = !DILocation(line: 62, column: 3, scope: !3839)
!3848 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !269, file: !269, line: 66, type: !3818, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !34)
!3849 = !DILocalVariable(name: "category", arg: 1, scope: !3848, file: !269, line: 66, type: !31)
!3850 = !DILocation(line: 66, column: 32, scope: !3848)
!3851 = !DILocalVariable(name: "buf", arg: 2, scope: !3848, file: !269, line: 66, type: !29)
!3852 = !DILocation(line: 66, column: 48, scope: !3848)
!3853 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3848, file: !269, line: 66, type: !124)
!3854 = !DILocation(line: 66, column: 60, scope: !3848)
!3855 = !DILocalVariable(name: "result", scope: !3848, file: !269, line: 111, type: !6)
!3856 = !DILocation(line: 111, column: 15, scope: !3848)
!3857 = !DILocation(line: 111, column: 49, scope: !3848)
!3858 = !DILocation(line: 111, column: 24, scope: !3848)
!3859 = !DILocation(line: 113, column: 7, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3848, file: !269, line: 113, column: 7)
!3861 = !DILocation(line: 113, column: 14, scope: !3860)
!3862 = !DILocation(line: 113, column: 7, scope: !3848)
!3863 = !DILocation(line: 116, column: 11, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !269, line: 116, column: 11)
!3865 = distinct !DILexicalBlock(scope: !3860, file: !269, line: 114, column: 5)
!3866 = !DILocation(line: 116, column: 19, scope: !3864)
!3867 = !DILocation(line: 116, column: 11, scope: !3865)
!3868 = !DILocation(line: 120, column: 9, scope: !3864)
!3869 = !DILocation(line: 120, column: 16, scope: !3864)
!3870 = !DILocation(line: 121, column: 7, scope: !3865)
!3871 = !DILocalVariable(name: "length", scope: !3872, file: !269, line: 125, type: !124)
!3872 = distinct !DILexicalBlock(scope: !3860, file: !269, line: 124, column: 5)
!3873 = !DILocation(line: 125, column: 14, scope: !3872)
!3874 = !DILocation(line: 125, column: 31, scope: !3872)
!3875 = !DILocation(line: 125, column: 23, scope: !3872)
!3876 = !DILocation(line: 126, column: 11, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3872, file: !269, line: 126, column: 11)
!3878 = !DILocation(line: 126, column: 20, scope: !3877)
!3879 = !DILocation(line: 126, column: 18, scope: !3877)
!3880 = !DILocation(line: 126, column: 11, scope: !3872)
!3881 = !DILocation(line: 128, column: 19, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3877, file: !269, line: 127, column: 9)
!3883 = !DILocation(line: 128, column: 24, scope: !3882)
!3884 = !DILocation(line: 128, column: 32, scope: !3882)
!3885 = !DILocation(line: 128, column: 39, scope: !3882)
!3886 = !DILocation(line: 128, column: 11, scope: !3882)
!3887 = !DILocation(line: 129, column: 11, scope: !3882)
!3888 = !DILocation(line: 133, column: 15, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3890, file: !269, line: 133, column: 15)
!3890 = distinct !DILexicalBlock(scope: !3877, file: !269, line: 132, column: 9)
!3891 = !DILocation(line: 133, column: 23, scope: !3889)
!3892 = !DILocation(line: 133, column: 15, scope: !3890)
!3893 = !DILocation(line: 138, column: 23, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3889, file: !269, line: 134, column: 13)
!3895 = !DILocation(line: 138, column: 28, scope: !3894)
!3896 = !DILocation(line: 138, column: 36, scope: !3894)
!3897 = !DILocation(line: 138, column: 44, scope: !3894)
!3898 = !DILocation(line: 138, column: 15, scope: !3894)
!3899 = !DILocation(line: 139, column: 15, scope: !3894)
!3900 = !DILocation(line: 139, column: 19, scope: !3894)
!3901 = !DILocation(line: 139, column: 27, scope: !3894)
!3902 = !DILocation(line: 139, column: 32, scope: !3894)
!3903 = !DILocation(line: 140, column: 13, scope: !3894)
!3904 = !DILocation(line: 141, column: 11, scope: !3890)
!3905 = !DILocation(line: 145, column: 1, scope: !3848)
