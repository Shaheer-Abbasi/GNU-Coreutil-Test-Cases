; ModuleID = 'src/unlink.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s FILE\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Call the unlink function to remove the specified FILE.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"cannot unlink %s\00", align 1
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
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.44 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.45 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), align 8, !dbg !48
@file_name = internal global i8* null, align 8, !dbg !53
@ignore_EPIPE = internal global i8 0, align 1, !dbg !58
@.str.52 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.53 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.54 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !61
@stderr = external global %struct._IO_FILE*, align 8
@.str.56 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !90
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !67
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !86
@.str.1.62 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.63 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.64 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !88
@.str.4.57 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.58 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.59 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external global i32, align 4
@.str.69 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.70, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.71, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !95
@optind = external global i32, align 4
@.str.1.74 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.70 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.71 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !112
@.str.79 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.80 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !119
@.str.83 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.84 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.85 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.86 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.87 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.88 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.89 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.90 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.91 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.92 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.86, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.92, i32 0, i32 0), i8* null], align 8, !dbg !130
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !145
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !163
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !178
@nslots = internal global i32 1, align 4, !dbg !185
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !165
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !187
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !151
@.str.10.93 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.94 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.96 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !170
@.str.105 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.106 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.107 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.108 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.109 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.110 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.111 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.112 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.113 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.114 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.115 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.116 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.117 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.118 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.119 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.120 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.121 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.126 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.127 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.128 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.129 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.130 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.131 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.132 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !193
@exit_failure = dso_local global i32 1, align 4, !dbg !201
@.str.145 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.143 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.144 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.166 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !207
@.str.177 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.178 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

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
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !311
  %14 = load i8*, i8** @program_name, align 8, !dbg !313
  %15 = load i8*, i8** @program_name, align 8, !dbg !314
  %16 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14, i8* noundef %15), !dbg !315
  %17 = call i8* @gettext(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !316
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !316
  %19 = call i32 @fputs_unlocked(i8* noundef %17, %struct._IO_FILE* noundef %18), !dbg !316
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !317
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !317
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !318
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !318
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !319
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
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #18, !dbg !333
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
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)), !dbg !340
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
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #20, !dbg !355
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
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)) #20, !dbg !407
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
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)), !dbg !463
  br i1 %174, label %175, label %176, !dbg !463

175:                                              ; preds = %164
  br label %232, !dbg !463

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !464
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)), !dbg !465
  br i1 %178, label %179, label %180, !dbg !465

179:                                              ; preds = %176
  br label %230, !dbg !465

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !466
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)), !dbg !467
  br i1 %182, label %183, label %184, !dbg !467

183:                                              ; preds = %180
  br label %228, !dbg !467

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !468
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0)), !dbg !469
  br i1 %186, label %187, label %188, !dbg !469

187:                                              ; preds = %184
  br label %226, !dbg !469

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !470
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0)), !dbg !471
  br i1 %190, label %191, label %192, !dbg !471

191:                                              ; preds = %188
  br label %224, !dbg !471

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !472
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0)), !dbg !473
  br i1 %194, label %195, label %196, !dbg !473

195:                                              ; preds = %192
  br label %222, !dbg !473

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !474
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0)), !dbg !475
  br i1 %198, label %199, label %200, !dbg !475

199:                                              ; preds = %196
  br label %220, !dbg !475

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !476
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)), !dbg !477
  br i1 %202, label %203, label %204, !dbg !477

203:                                              ; preds = %200
  br label %218, !dbg !477

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !478
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)), !dbg !479
  br i1 %206, label %207, label %208, !dbg !479

207:                                              ; preds = %204
  br label %216, !dbg !479

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !480
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)), !dbg !481
  br i1 %210, label %211, label %212, !dbg !481

211:                                              ; preds = %208
  br label %214, !dbg !481

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !482
  br label %214, !dbg !481

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !481
  br label %216, !dbg !479

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !479
  br label %218, !dbg !477

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !477
  br label %220, !dbg !475

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !475
  br label %222, !dbg !473

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !473
  br label %224, !dbg !471

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !471
  br label %226, !dbg !469

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !469
  br label %228, !dbg !467

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !467
  br label %230, !dbg !465

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !465
  br label %232, !dbg !463

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !463
  store i8* %233, i8** %13, align 8, !dbg !461
  %234 = load i8*, i8** %8, align 8, !dbg !483
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i64 noundef 6) #20, !dbg !483
  %236 = icmp eq i32 %235, 0, !dbg !483
  br i1 %236, label %241, label %237, !dbg !485

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !486
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i64 noundef 9) #20, !dbg !486
  %240 = icmp eq i32 %239, 0, !dbg !486
  br i1 %240, label %241, label %248, !dbg !487

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !488
  %243 = load i8*, i8** %13, align 8, !dbg !490
  %244 = load i64, i64* %11, align 8, !dbg !491
  %245 = trunc i64 %244 to i32, !dbg !492
  %246 = load i8*, i8** %8, align 8, !dbg !493
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !494
  br label %254, !dbg !495

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !496
  %250 = load i64, i64* %11, align 8, !dbg !498
  %251 = trunc i64 %250 to i32, !dbg !499
  %252 = load i8*, i8** %8, align 8, !dbg !500
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.36, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !501
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !502
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !502
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !503
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !503
  %259 = load i8*, i8** %7, align 8, !dbg !504
  %260 = load i8*, i8** %12, align 8, !dbg !504
  %261 = load i8*, i8** %7, align 8, !dbg !504
  %262 = ptrtoint i8* %260 to i64, !dbg !504
  %263 = ptrtoint i8* %261 to i64, !dbg !504
  %264 = sub i64 %262, %263, !dbg !504
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !504
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !504
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !505
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !505
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !506
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !506
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
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 noundef 3) #20, !dbg !558
  %44 = icmp ne i32 %43, 0, !dbg !558
  br i1 %44, label %45, label %49, !dbg !559

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.45, i64 0, i64 0)) #18, !dbg !560
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !560
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !560
  br label %49, !dbg !562

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !563, metadata !DIExpression()), !dbg !564
  %50 = load i8*, i8** %2, align 8, !dbg !565
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)), !dbg !566
  br i1 %51, label %52, label %53, !dbg !566

52:                                               ; preds = %49
  br label %55, !dbg !566

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !567
  br label %55, !dbg !566

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !566
  store i8* %56, i8** %7, align 8, !dbg !564
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i64 0, i64 0)) #18, !dbg !568
  %58 = load i8*, i8** %7, align 8, !dbg !569
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* noundef %58), !dbg !570
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0)) #18, !dbg !571
  %61 = load i8*, i8** %4, align 8, !dbg !572
  %62 = load i8*, i8** %4, align 8, !dbg !573
  %63 = load i8*, i8** %2, align 8, !dbg !574
  %64 = icmp eq i8* %62, %63, !dbg !575
  %65 = zext i1 %64 to i64, !dbg !573
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !573
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
  call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %13, i8** noundef %14, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %15, i1 noundef true, void (i32)* noundef @usage, i8* noundef %16, i8* noundef null), !dbg !596
  %17 = load i32, i32* %4, align 4, !dbg !597
  %18 = load i32, i32* @optind, align 4, !dbg !599
  %19 = add nsw i32 %18, 1, !dbg !600
  %20 = icmp slt i32 %17, %19, !dbg !601
  br i1 %20, label %21, label %23, !dbg !602

21:                                               ; preds = %2
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !603
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %22), !dbg !603
  call void @usage(i32 noundef 1) #22, !dbg !605
  unreachable, !dbg !605

23:                                               ; preds = %2
  %24 = load i32, i32* @optind, align 4, !dbg !606
  %25 = add nsw i32 %24, 1, !dbg !608
  %26 = load i32, i32* %4, align 4, !dbg !609
  %27 = icmp slt i32 %25, %26, !dbg !610
  br i1 %27, label %28, label %37, !dbg !611

28:                                               ; preds = %23
  %29 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !612
  %30 = load i8**, i8*** %5, align 8, !dbg !612
  %31 = load i32, i32* @optind, align 4, !dbg !612
  %32 = add nsw i32 %31, 1, !dbg !612
  %33 = sext i32 %32 to i64, !dbg !612
  %34 = getelementptr inbounds i8*, i8** %30, i64 %33, !dbg !612
  %35 = load i8*, i8** %34, align 8, !dbg !612
  %36 = call i8* @quote(i8* noundef %35), !dbg !612
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %29, i8* noundef %36), !dbg !612
  call void @usage(i32 noundef 1) #22, !dbg !614
  unreachable, !dbg !614

37:                                               ; preds = %23
  %38 = load i8**, i8*** %5, align 8, !dbg !615
  %39 = load i32, i32* @optind, align 4, !dbg !617
  %40 = sext i32 %39 to i64, !dbg !615
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40, !dbg !615
  %42 = load i8*, i8** %41, align 8, !dbg !615
  %43 = call i32 @unlink(i8* noundef %42) #18, !dbg !618
  %44 = icmp ne i32 %43, 0, !dbg !619
  br i1 %44, label %45, label %55, !dbg !620

45:                                               ; preds = %37
  %46 = call i32* @__errno_location() #21, !dbg !621
  %47 = load i32, i32* %46, align 4, !dbg !621
  %48 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !621
  %49 = load i8**, i8*** %5, align 8, !dbg !621
  %50 = load i32, i32* @optind, align 4, !dbg !621
  %51 = sext i32 %50 to i64, !dbg !621
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51, !dbg !621
  %53 = load i8*, i8** %52, align 8, !dbg !621
  %54 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %53), !dbg !621
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %47, i8* noundef %48, i8* noundef %54), !dbg !621
  unreachable, !dbg !621

55:                                               ; preds = %37
  ret i32 0, !dbg !622
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @unlink(i8* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !623 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !624, metadata !DIExpression()), !dbg !625
  %3 = load i8*, i8** %2, align 8, !dbg !626
  store i8* %3, i8** @file_name, align 8, !dbg !627
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !629 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !632, metadata !DIExpression()), !dbg !633
  %4 = load i8, i8* %2, align 1, !dbg !634
  %5 = trunc i8 %4 to i1, !dbg !634
  %6 = zext i1 %5 to i8, !dbg !635
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !635
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !637 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !638
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !640
  %4 = icmp ne i32 %3, 0, !dbg !641
  br i1 %4, label %5, label %28, !dbg !642

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !643
  %7 = trunc i8 %6 to i1, !dbg !643
  br i1 %7, label %8, label %12, !dbg !644

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !645
  %10 = load i32, i32* %9, align 4, !dbg !645
  %11 = icmp eq i32 %10, 32, !dbg !646
  br i1 %11, label %28, label %12, !dbg !647

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !648, metadata !DIExpression()), !dbg !650
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.53, i64 0, i64 0)) #18, !dbg !651
  store i8* %13, i8** %1, align 8, !dbg !650
  %14 = load i8*, i8** @file_name, align 8, !dbg !652
  %15 = icmp ne i8* %14, null, !dbg !652
  br i1 %15, label %16, label %22, !dbg !654

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !655
  %18 = load i32, i32* %17, align 4, !dbg !655
  %19 = load i8*, i8** @file_name, align 8, !dbg !655
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !655
  %21 = load i8*, i8** %1, align 8, !dbg !655
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.54, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !655
  br label %26, !dbg !655

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !656
  %24 = load i32, i32* %23, align 4, !dbg !656
  %25 = load i8*, i8** %1, align 8, !dbg !656
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.55, i64 0, i64 0), i8* noundef %25), !dbg !656
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !657
  call void @_exit(i32 noundef %27) #22, !dbg !658
  unreachable, !dbg !658

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !659
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !661
  %31 = icmp ne i32 %30, 0, !dbg !662
  br i1 %31, label %32, label %34, !dbg !663

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !664
  call void @_exit(i32 noundef %33) #22, !dbg !665
  unreachable, !dbg !665

34:                                               ; preds = %28
  ret void, !dbg !666
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !667 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !670, metadata !DIExpression()), !dbg !671
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !672, metadata !DIExpression()), !dbg !671
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !673, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !674, metadata !DIExpression()), !dbg !671
  call void @flush_stdout(), !dbg !675
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !676
  %10 = icmp ne void ()* %9, null, !dbg !676
  br i1 %10, label %11, label %13, !dbg !678

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !679
  call void %12(), !dbg !680
  br label %17, !dbg !680

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !681
  %15 = call i8* @getprogname() #20, !dbg !683
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i8* noundef %15), !dbg !684
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !685
  %19 = load i32, i32* %6, align 4, !dbg !685
  %20 = load i8*, i8** %7, align 8, !dbg !685
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !685
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !685
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !685
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !685
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !687 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !688, metadata !DIExpression()), !dbg !689
  store i32 1, i32* %1, align 4, !dbg !690
  %2 = load i32, i32* %1, align 4, !dbg !691
  %3 = icmp sle i32 0, %2, !dbg !693
  br i1 %3, label %4, label %11, !dbg !694

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !695
  %6 = call i32 @is_open(i32 noundef %5), !dbg !696
  %7 = icmp ne i32 %6, 0, !dbg !696
  br i1 %7, label %8, label %11, !dbg !697

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !698
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !698
  br label %11, !dbg !698

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !699
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !700 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !701, metadata !DIExpression()), !dbg !702
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !703, metadata !DIExpression()), !dbg !702
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !704, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !705, metadata !DIExpression()), !dbg !702
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !706
  %10 = load i8*, i8** %7, align 8, !dbg !707
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !708
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !708
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !708
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !708
  %14 = load i32, i32* @error_message_count, align 4, !dbg !709
  %15 = add i32 %14, 1, !dbg !709
  store i32 %15, i32* @error_message_count, align 4, !dbg !709
  %16 = load i32, i32* %6, align 4, !dbg !710
  %17 = icmp ne i32 %16, 0, !dbg !710
  br i1 %17, label %18, label %20, !dbg !712

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !713
  call void @print_errno_message(i32 noundef %19), !dbg !714
  br label %20, !dbg !714

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !715
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !715
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !716
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !716
  %25 = load i32, i32* %5, align 4, !dbg !717
  %26 = icmp ne i32 %25, 0, !dbg !717
  br i1 %26, label %27, label %29, !dbg !719

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !720
  call void @exit(i32 noundef %28) #19, !dbg !721
  unreachable, !dbg !721

29:                                               ; preds = %20
  ret void, !dbg !722
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !723 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !724, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.declare(metadata i8** %3, metadata !726, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !728, metadata !DIExpression()), !dbg !732
  %5 = load i32, i32* %2, align 4, !dbg !733
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !734
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !735
  store i8* %7, i8** %3, align 8, !dbg !736
  %8 = load i8*, i8** %3, align 8, !dbg !737
  %9 = icmp ne i8* %8, null, !dbg !737
  br i1 %9, label %12, label %10, !dbg !739

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.58, i64 0, i64 0)) #18, !dbg !740
  store i8* %11, i8** %3, align 8, !dbg !741
  br label %12, !dbg !742

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !743
  %14 = load i8*, i8** %3, align 8, !dbg !744
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.59, i64 0, i64 0), i8* noundef %14), !dbg !745
  ret void, !dbg !746
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !747 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !750, metadata !DIExpression()), !dbg !751
  %3 = load i32, i32* %2, align 4, !dbg !752
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !753
  %5 = icmp sle i32 0, %4, !dbg !754
  %6 = zext i1 %5 to i32, !dbg !754
  ret i32 %6, !dbg !755
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !756 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !759, metadata !DIExpression()), !dbg !760
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !761, metadata !DIExpression()), !dbg !762
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !763, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !765, metadata !DIExpression()), !dbg !766
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !767
  call void @llvm.va_start(i8* %9), !dbg !767
  %10 = load i32, i32* %4, align 4, !dbg !768
  %11 = load i32, i32* %5, align 4, !dbg !768
  %12 = load i8*, i8** %6, align 8, !dbg !768
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !768
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !768
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !768
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !768
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !769
  call void @llvm.va_end(i8* %15), !dbg !769
  ret void, !dbg !770
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !771, metadata !DIExpression()), !dbg !772
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !773, metadata !DIExpression()), !dbg !772
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !774, metadata !DIExpression()), !dbg !772
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !775, metadata !DIExpression()), !dbg !772
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !776, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !777, metadata !DIExpression()), !dbg !772
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !778
  %14 = icmp ne i32 %13, 0, !dbg !778
  br i1 %14, label %15, label %38, !dbg !780

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !781
  %17 = load i32, i32* %10, align 4, !dbg !784
  %18 = icmp eq i32 %16, %17, !dbg !785
  br i1 %18, label %19, label %35, !dbg !786

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !787
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !788
  %22 = icmp eq i8* %20, %21, !dbg !789
  br i1 %22, label %34, label %23, !dbg !790

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !791
  %25 = icmp ne i8* %24, null, !dbg !792
  br i1 %25, label %26, label %35, !dbg !793

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !794
  %28 = icmp ne i8* %27, null, !dbg !795
  br i1 %28, label %29, label %35, !dbg !796

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !797
  %31 = load i8*, i8** %9, align 8, !dbg !798
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !799
  %33 = icmp eq i32 %32, 0, !dbg !800
  br i1 %33, label %34, label %35, !dbg !801

34:                                               ; preds = %29, %19
  br label %61, !dbg !802

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !803
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !804
  %37 = load i32, i32* %10, align 4, !dbg !805
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !806
  br label %38, !dbg !807

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !808
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !809
  %40 = icmp ne void ()* %39, null, !dbg !809
  br i1 %40, label %41, label %43, !dbg !811

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !812
  call void %42(), !dbg !813
  br label %47, !dbg !813

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !814
  %45 = call i8* @getprogname() #20, !dbg !816
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.62, i64 0, i64 0), i8* noundef %45), !dbg !817
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !818
  %49 = load i8*, i8** %9, align 8, !dbg !819
  %50 = icmp ne i8* %49, null, !dbg !820
  %51 = zext i1 %50 to i64, !dbg !819
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.64, i64 0, i64 0), !dbg !819
  %53 = load i8*, i8** %9, align 8, !dbg !821
  %54 = load i32, i32* %10, align 4, !dbg !822
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !823
  %56 = load i32, i32* %7, align 4, !dbg !824
  %57 = load i32, i32* %8, align 4, !dbg !824
  %58 = load i8*, i8** %11, align 8, !dbg !824
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !824
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !824
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !824
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !824
  br label %61, !dbg !825

61:                                               ; preds = %47, %34
  ret void, !dbg !825
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !826 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !829, metadata !DIExpression()), !dbg !830
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !831, metadata !DIExpression()), !dbg !832
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !833, metadata !DIExpression()), !dbg !834
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !835, metadata !DIExpression()), !dbg !836
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !837, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !839, metadata !DIExpression()), !dbg !840
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !841
  call void @llvm.va_start(i8* %13), !dbg !841
  %14 = load i32, i32* %6, align 4, !dbg !842
  %15 = load i32, i32* %7, align 4, !dbg !842
  %16 = load i8*, i8** %8, align 8, !dbg !842
  %17 = load i32, i32* %9, align 4, !dbg !842
  %18 = load i8*, i8** %10, align 8, !dbg !842
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !842
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !842
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !842
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !842
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !843
  call void @llvm.va_end(i8* %21), !dbg !843
  ret void, !dbg !844
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !845 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !848
  ret i8* %1, !dbg !849
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* noundef %5, ...) #4 !dbg !850 {
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !854, metadata !DIExpression()), !dbg !855
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !856, metadata !DIExpression()), !dbg !857
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !858, metadata !DIExpression()), !dbg !859
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !860, metadata !DIExpression()), !dbg !861
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !862, metadata !DIExpression()), !dbg !863
  store void (i32)* %5, void (i32)** %12, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %12, metadata !864, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.declare(metadata i32* %13, metadata !866, metadata !DIExpression()), !dbg !867
  %17 = load i32, i32* @opterr, align 4, !dbg !868
  store i32 %17, i32* %13, align 4, !dbg !867
  store i32 0, i32* @opterr, align 4, !dbg !869
  %18 = load i32, i32* %7, align 4, !dbg !870
  %19 = icmp eq i32 %18, 2, !dbg !872
  br i1 %19, label %20, label %41, !dbg !873

20:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %14, metadata !874, metadata !DIExpression()), !dbg !876
  %21 = load i32, i32* %7, align 4, !dbg !877
  %22 = load i8**, i8*** %8, align 8, !dbg !878
  %23 = call i32 @getopt_long(i32 noundef %21, i8** noundef %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !879
  store i32 %23, i32* %14, align 4, !dbg !876
  %24 = load i32, i32* %14, align 4, !dbg !880
  %25 = icmp ne i32 %24, -1, !dbg !882
  br i1 %25, label %26, label %40, !dbg !883

26:                                               ; preds = %20
  %27 = load i32, i32* %14, align 4, !dbg !884
  switch i32 %27, label %38 [
    i32 104, label %28
    i32 118, label %30
  ], !dbg !886

28:                                               ; preds = %26
  %29 = load void (i32)*, void (i32)** %12, align 8, !dbg !887
  call void %29(i32 noundef 0), !dbg !889
  br label %39, !dbg !890

30:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %15, metadata !891, metadata !DIExpression()), !dbg !904
  %31 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !905
  call void @llvm.va_start(i8* %31), !dbg !905
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !906
  %33 = load i8*, i8** %9, align 8, !dbg !907
  %34 = load i8*, i8** %10, align 8, !dbg !908
  %35 = load i8*, i8** %11, align 8, !dbg !909
  %36 = bitcast %"struct.std::__va_list"* %16 to i8*, !dbg !910
  %37 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !910
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 32, i1 false), !dbg !910
  call void @version_etc_va(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef %34, i8* noundef %35, %"struct.std::__va_list"* noundef %16), !dbg !910
  call void @exit(i32 noundef 0) #19, !dbg !911
  unreachable, !dbg !911

38:                                               ; preds = %26
  br label %39, !dbg !912

39:                                               ; preds = %38, %28
  br label %40, !dbg !913

40:                                               ; preds = %39, %20
  br label %41, !dbg !914

41:                                               ; preds = %40, %6
  %42 = load i32, i32* %13, align 4, !dbg !915
  store i32 %42, i32* @opterr, align 4, !dbg !916
  store i32 0, i32* @optind, align 4, !dbg !917
  ret void, !dbg !918
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* noundef %6, ...) #4 !dbg !919 {
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
  call void @llvm.dbg.declare(metadata i32* %8, metadata !922, metadata !DIExpression()), !dbg !923
  store i8** %1, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !924, metadata !DIExpression()), !dbg !925
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !926, metadata !DIExpression()), !dbg !927
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !928, metadata !DIExpression()), !dbg !929
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !930, metadata !DIExpression()), !dbg !931
  %20 = zext i1 %5 to i8
  store i8 %20, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !932, metadata !DIExpression()), !dbg !933
  store void (i32)* %6, void (i32)** %14, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %14, metadata !934, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.declare(metadata i32* %15, metadata !936, metadata !DIExpression()), !dbg !937
  %21 = load i32, i32* @opterr, align 4, !dbg !938
  store i32 %21, i32* %15, align 4, !dbg !937
  store i32 1, i32* @opterr, align 4, !dbg !939
  call void @llvm.dbg.declare(metadata i8** %16, metadata !940, metadata !DIExpression()), !dbg !941
  %22 = load i8, i8* %13, align 1, !dbg !942
  %23 = trunc i8 %22 to i1, !dbg !942
  %24 = zext i1 %23 to i64, !dbg !942
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), !dbg !942
  store i8* %25, i8** %16, align 8, !dbg !941
  call void @llvm.dbg.declare(metadata i32* %17, metadata !943, metadata !DIExpression()), !dbg !944
  %26 = load i32, i32* %8, align 4, !dbg !945
  %27 = load i8**, i8*** %9, align 8, !dbg !946
  %28 = load i8*, i8** %16, align 8, !dbg !947
  %29 = call i32 @getopt_long(i32 noundef %26, i8** noundef %27, i8* noundef %28, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !948
  store i32 %29, i32* %17, align 4, !dbg !944
  %30 = load i32, i32* %17, align 4, !dbg !949
  %31 = icmp ne i32 %30, -1, !dbg !951
  br i1 %31, label %32, label %48, !dbg !952

32:                                               ; preds = %7
  %33 = load i32, i32* %17, align 4, !dbg !953
  switch i32 %33, label %44 [
    i32 104, label %34
    i32 118, label %36
  ], !dbg !955

34:                                               ; preds = %32
  %35 = load void (i32)*, void (i32)** %14, align 8, !dbg !956
  call void %35(i32 noundef 0), !dbg !958
  br label %47, !dbg !959

36:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %18, metadata !960, metadata !DIExpression()), !dbg !962
  %37 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !963
  call void @llvm.va_start(i8* %37), !dbg !963
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !964
  %39 = load i8*, i8** %10, align 8, !dbg !965
  %40 = load i8*, i8** %11, align 8, !dbg !966
  %41 = load i8*, i8** %12, align 8, !dbg !967
  %42 = bitcast %"struct.std::__va_list"* %19 to i8*, !dbg !968
  %43 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !968
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false), !dbg !968
  call void @version_etc_va(%struct._IO_FILE* noundef %38, i8* noundef %39, i8* noundef %40, i8* noundef %41, %"struct.std::__va_list"* noundef %19), !dbg !968
  call void @exit(i32 noundef 0) #19, !dbg !969
  unreachable, !dbg !969

44:                                               ; preds = %32
  %45 = load void (i32)*, void (i32)** %14, align 8, !dbg !970
  %46 = load volatile i32, i32* @exit_failure, align 4, !dbg !971
  call void %45(i32 noundef %46), !dbg !972
  br label %47, !dbg !973

47:                                               ; preds = %44, %34
  br label %48, !dbg !974

48:                                               ; preds = %47, %7
  %49 = load i32, i32* %15, align 4, !dbg !975
  store i32 %49, i32* @opterr, align 4, !dbg !976
  ret void, !dbg !977
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !978 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !979, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.declare(metadata i8** %3, metadata !981, metadata !DIExpression()), !dbg !982
  %5 = load i8*, i8** %2, align 8, !dbg !983
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !984
  store i8* %6, i8** %3, align 8, !dbg !982
  call void @llvm.dbg.declare(metadata i8** %4, metadata !985, metadata !DIExpression()), !dbg !986
  %7 = load i8*, i8** %3, align 8, !dbg !987
  %8 = icmp ne i8* %7, null, !dbg !987
  br i1 %8, label %9, label %12, !dbg !987

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !988
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !989
  br label %14, !dbg !987

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !990
  br label %14, !dbg !987

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !987
  store i8* %15, i8** %4, align 8, !dbg !986
  %16 = load i8*, i8** %4, align 8, !dbg !991
  %17 = load i8*, i8** %2, align 8, !dbg !993
  %18 = ptrtoint i8* %16 to i64, !dbg !994
  %19 = ptrtoint i8* %17 to i64, !dbg !994
  %20 = sub i64 %18, %19, !dbg !994
  %21 = icmp sle i64 7, %20, !dbg !995
  br i1 %21, label %22, label %36, !dbg !996

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !997
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !998
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i64 0, i64 0), i64 noundef 7), !dbg !999
  br i1 %25, label %26, label %36, !dbg !1000

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1001
  store i8* %27, i8** %2, align 8, !dbg !1003
  %28 = load i8*, i8** %4, align 8, !dbg !1004
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.80, i64 0, i64 0), i64 noundef 3) #20, !dbg !1006
  %30 = icmp eq i32 %29, 0, !dbg !1007
  br i1 %30, label %31, label %35, !dbg !1008

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1009
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1009
  store i8* %33, i8** %4, align 8, !dbg !1009
  %34 = load i8*, i8** %4, align 8, !dbg !1011
  store i8* %34, i8** %2, align 8, !dbg !1012
  br label %35, !dbg !1013

35:                                               ; preds = %31, %26
  br label %36, !dbg !1014

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1015
  store i8* %37, i8** @program_name, align 8, !dbg !1016
  %38 = load i8*, i8** %2, align 8, !dbg !1017
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1018
  %39 = load i8*, i8** %4, align 8, !dbg !1019
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1020
  ret void, !dbg !1021
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1022, metadata !DIExpression()), !dbg !1023
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1024, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1026, metadata !DIExpression()), !dbg !1027
  %9 = load i8*, i8** %4, align 8, !dbg !1028
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1029
  store i8* %10, i8** %6, align 8, !dbg !1027
  %11 = load i8*, i8** %6, align 8, !dbg !1030
  %12 = load i8*, i8** %4, align 8, !dbg !1032
  %13 = icmp ne i8* %11, %12, !dbg !1033
  br i1 %13, label %14, label %16, !dbg !1034

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1035
  store i8* %15, i8** %3, align 8, !dbg !1036
  br label %26, !dbg !1036

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1037, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1044, metadata !DIExpression()), !dbg !1055
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1056
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1057
  %18 = icmp eq i64 %17, 2, !dbg !1059
  br i1 %18, label %19, label %24, !dbg !1060

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1061
  %21 = icmp eq i32 %20, 2047, !dbg !1062
  br i1 %21, label %22, label %24, !dbg !1063

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1064
  store i8* %23, i8** %3, align 8, !dbg !1065
  br label %26, !dbg !1065

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1066
  store i8* %25, i8** %3, align 8, !dbg !1067
  br label %26, !dbg !1067

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1068
  ret i8* %27, !dbg !1068
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1069 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1073, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1075, metadata !DIExpression()), !dbg !1076
  %5 = call i32* @__errno_location() #21, !dbg !1077
  %6 = load i32, i32* %5, align 4, !dbg !1077
  store i32 %6, i32* %3, align 4, !dbg !1076
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1078, metadata !DIExpression()), !dbg !1079
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1080
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1080
  br i1 %8, label %9, label %11, !dbg !1080

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1081
  br label %12, !dbg !1080

11:                                               ; preds = %1
  br label %12, !dbg !1080

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1080
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1080
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1082
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1082
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1079
  %17 = load i32, i32* %3, align 4, !dbg !1083
  %18 = call i32* @__errno_location() #21, !dbg !1084
  store i32 %17, i32* %18, align 4, !dbg !1085
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1086
  ret %struct.quoting_options* %19, !dbg !1087
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1088 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1093, metadata !DIExpression()), !dbg !1094
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1095
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1095
  br i1 %4, label %5, label %7, !dbg !1095

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1096
  br label %8, !dbg !1095

7:                                                ; preds = %1
  br label %8, !dbg !1095

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1095
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1097
  %11 = load i32, i32* %10, align 8, !dbg !1097
  ret i32 %11, !dbg !1098
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1099 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1102, metadata !DIExpression()), !dbg !1103
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1104, metadata !DIExpression()), !dbg !1105
  %5 = load i32, i32* %4, align 4, !dbg !1106
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1107
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1107
  br i1 %7, label %8, label %10, !dbg !1107

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1108
  br label %11, !dbg !1107

10:                                               ; preds = %2
  br label %11, !dbg !1107

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1107
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1109
  store i32 %5, i32* %13, align 8, !dbg !1110
  ret void, !dbg !1111
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1112 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1115, metadata !DIExpression()), !dbg !1116
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1117, metadata !DIExpression()), !dbg !1118
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1119, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1121, metadata !DIExpression()), !dbg !1122
  %11 = load i8, i8* %5, align 1, !dbg !1123
  store i8 %11, i8* %7, align 1, !dbg !1122
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1124, metadata !DIExpression()), !dbg !1126
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1127
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1127
  br i1 %13, label %14, label %16, !dbg !1127

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1128
  br label %17, !dbg !1127

16:                                               ; preds = %3
  br label %17, !dbg !1127

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1127
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1129
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1130
  %21 = load i8, i8* %7, align 1, !dbg !1131
  %22 = zext i8 %21 to i64, !dbg !1131
  %23 = udiv i64 %22, 32, !dbg !1132
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1133
  store i32* %24, i32** %8, align 8, !dbg !1126
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1134, metadata !DIExpression()), !dbg !1135
  %25 = load i8, i8* %7, align 1, !dbg !1136
  %26 = zext i8 %25 to i64, !dbg !1136
  %27 = urem i64 %26, 32, !dbg !1137
  %28 = trunc i64 %27 to i32, !dbg !1136
  store i32 %28, i32* %9, align 4, !dbg !1135
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1138, metadata !DIExpression()), !dbg !1139
  %29 = load i32*, i32** %8, align 8, !dbg !1140
  %30 = load i32, i32* %29, align 4, !dbg !1141
  %31 = load i32, i32* %9, align 4, !dbg !1142
  %32 = lshr i32 %30, %31, !dbg !1143
  %33 = and i32 %32, 1, !dbg !1144
  store i32 %33, i32* %10, align 4, !dbg !1139
  %34 = load i32, i32* %6, align 4, !dbg !1145
  %35 = and i32 %34, 1, !dbg !1146
  %36 = load i32, i32* %10, align 4, !dbg !1147
  %37 = xor i32 %35, %36, !dbg !1148
  %38 = load i32, i32* %9, align 4, !dbg !1149
  %39 = shl i32 %37, %38, !dbg !1150
  %40 = load i32*, i32** %8, align 8, !dbg !1151
  %41 = load i32, i32* %40, align 4, !dbg !1152
  %42 = xor i32 %41, %39, !dbg !1152
  store i32 %42, i32* %40, align 4, !dbg !1152
  %43 = load i32, i32* %10, align 4, !dbg !1153
  ret i32 %43, !dbg !1154
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1155 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1158, metadata !DIExpression()), !dbg !1159
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1160, metadata !DIExpression()), !dbg !1161
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1162
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1162
  br i1 %7, label %9, label %8, !dbg !1164

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1165
  br label %9, !dbg !1166

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1167, metadata !DIExpression()), !dbg !1168
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1169
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1170
  %12 = load i32, i32* %11, align 4, !dbg !1170
  store i32 %12, i32* %5, align 4, !dbg !1168
  %13 = load i32, i32* %4, align 4, !dbg !1171
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1172
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1173
  store i32 %13, i32* %15, align 4, !dbg !1174
  %16 = load i32, i32* %5, align 4, !dbg !1175
  ret i32 %16, !dbg !1176
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1177 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1180, metadata !DIExpression()), !dbg !1181
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1182, metadata !DIExpression()), !dbg !1183
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1184, metadata !DIExpression()), !dbg !1185
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1186
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1186
  br i1 %8, label %10, label %9, !dbg !1188

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1189
  br label %10, !dbg !1190

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1191
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1192
  store i32 10, i32* %12, align 8, !dbg !1193
  %13 = load i8*, i8** %5, align 8, !dbg !1194
  %14 = icmp ne i8* %13, null, !dbg !1194
  br i1 %14, label %15, label %18, !dbg !1196

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1197
  %17 = icmp ne i8* %16, null, !dbg !1197
  br i1 %17, label %19, label %18, !dbg !1198

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1199
  unreachable, !dbg !1199

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1200
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1201
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1202
  store i8* %20, i8** %22, align 8, !dbg !1203
  %23 = load i8*, i8** %6, align 8, !dbg !1204
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1205
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1206
  store i8* %23, i8** %25, align 8, !dbg !1207
  ret void, !dbg !1208
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1209 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1212, metadata !DIExpression()), !dbg !1213
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1214, metadata !DIExpression()), !dbg !1215
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1216, metadata !DIExpression()), !dbg !1217
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1218, metadata !DIExpression()), !dbg !1219
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1220, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1222, metadata !DIExpression()), !dbg !1223
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1224
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1224
  br i1 %15, label %16, label %18, !dbg !1224

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1225
  br label %19, !dbg !1224

18:                                               ; preds = %5
  br label %19, !dbg !1224

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1224
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1223
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1226, metadata !DIExpression()), !dbg !1227
  %21 = call i32* @__errno_location() #21, !dbg !1228
  %22 = load i32, i32* %21, align 4, !dbg !1228
  store i32 %22, i32* %12, align 4, !dbg !1227
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1229, metadata !DIExpression()), !dbg !1230
  %23 = load i8*, i8** %6, align 8, !dbg !1231
  %24 = load i64, i64* %7, align 8, !dbg !1232
  %25 = load i8*, i8** %8, align 8, !dbg !1233
  %26 = load i64, i64* %9, align 8, !dbg !1234
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1235
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1236
  %29 = load i32, i32* %28, align 8, !dbg !1236
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1237
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1238
  %32 = load i32, i32* %31, align 4, !dbg !1238
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1239
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1240
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1239
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1241
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1242
  %38 = load i8*, i8** %37, align 8, !dbg !1242
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1243
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1244
  %41 = load i8*, i8** %40, align 8, !dbg !1244
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1245
  store i64 %42, i64* %13, align 8, !dbg !1230
  %43 = load i32, i32* %12, align 4, !dbg !1246
  %44 = call i32* @__errno_location() #21, !dbg !1247
  store i32 %43, i32* %44, align 4, !dbg !1248
  %45 = load i64, i64* %13, align 8, !dbg !1249
  ret i64 %45, !dbg !1250
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1251 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1256, metadata !DIExpression()), !dbg !1257
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1258, metadata !DIExpression()), !dbg !1259
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1260, metadata !DIExpression()), !dbg !1261
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1262, metadata !DIExpression()), !dbg !1263
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1264, metadata !DIExpression()), !dbg !1265
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1266, metadata !DIExpression()), !dbg !1267
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1268, metadata !DIExpression()), !dbg !1269
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1270, metadata !DIExpression()), !dbg !1271
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1272, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1274, metadata !DIExpression()), !dbg !1275
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1276
  %45 = icmp eq i64 %44, 1, !dbg !1277
  %46 = zext i1 %45 to i8, !dbg !1275
  store i8 %46, i8* %20, align 1, !dbg !1275
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1278, metadata !DIExpression()), !dbg !1279
  store i64 0, i64* %21, align 8, !dbg !1279
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1280, metadata !DIExpression()), !dbg !1281
  store i64 0, i64* %22, align 8, !dbg !1281
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1282, metadata !DIExpression()), !dbg !1283
  store i8* null, i8** %23, align 8, !dbg !1283
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1284, metadata !DIExpression()), !dbg !1285
  store i64 0, i64* %24, align 8, !dbg !1285
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1286, metadata !DIExpression()), !dbg !1287
  store i8 0, i8* %25, align 1, !dbg !1287
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1288, metadata !DIExpression()), !dbg !1289
  %47 = load i32, i32* %16, align 4, !dbg !1290
  %48 = and i32 %47, 2, !dbg !1291
  %49 = icmp ne i32 %48, 0, !dbg !1292
  %50 = zext i1 %49 to i8, !dbg !1289
  store i8 %50, i8* %26, align 1, !dbg !1289
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1293, metadata !DIExpression()), !dbg !1294
  store i8 0, i8* %27, align 1, !dbg !1294
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1295, metadata !DIExpression()), !dbg !1296
  store i8 1, i8* %28, align 1, !dbg !1296
  br label %51, !dbg !1297

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1298), !dbg !1299
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1300, metadata !DIExpression()), !dbg !1301
  store i8 0, i8* %29, align 1, !dbg !1301
  %52 = load i32, i32* %15, align 4, !dbg !1302
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
  ], !dbg !1303

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1304
  store i8 1, i8* %26, align 1, !dbg !1306
  br label %54, !dbg !1307

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1308
  %56 = trunc i8 %55 to i1, !dbg !1308
  br i1 %56, label %70, label %57, !dbg !1310

57:                                               ; preds = %54
  br label %58, !dbg !1311

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1312
  %60 = load i64, i64* %12, align 8, !dbg !1312
  %61 = icmp ult i64 %59, %60, !dbg !1312
  br i1 %61, label %62, label %66, !dbg !1315

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1312
  %64 = load i64, i64* %21, align 8, !dbg !1312
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1312
  store i8 34, i8* %65, align 1, !dbg !1312
  br label %66, !dbg !1312

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1315
  %68 = add i64 %67, 1, !dbg !1315
  store i64 %68, i64* %21, align 8, !dbg !1315
  br label %69, !dbg !1315

69:                                               ; preds = %66
  br label %70, !dbg !1315

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1316
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.93, i64 0, i64 0), i8** %23, align 8, !dbg !1317
  store i64 1, i64* %24, align 8, !dbg !1318
  br label %138, !dbg !1319

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1320
  store i8 0, i8* %26, align 1, !dbg !1321
  br label %138, !dbg !1322

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1323
  %74 = icmp ne i32 %73, 10, !dbg !1326
  br i1 %74, label %75, label %80, !dbg !1327

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1328
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.94, i64 0, i64 0), i32 noundef %76), !dbg !1330
  store i8* %77, i8** %18, align 8, !dbg !1331
  %78 = load i32, i32* %15, align 4, !dbg !1332
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), i32 noundef %78), !dbg !1333
  store i8* %79, i8** %19, align 8, !dbg !1334
  br label %80, !dbg !1335

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1336
  %82 = trunc i8 %81 to i1, !dbg !1336
  br i1 %82, label %108, label %83, !dbg !1338

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1339, metadata !DIExpression()), !dbg !1341
  %84 = load i8*, i8** %18, align 8, !dbg !1342
  store i8* %84, i8** %30, align 8, !dbg !1341
  br label %85, !dbg !1343

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1344
  %87 = load i8, i8* %86, align 1, !dbg !1346
  %88 = icmp ne i8 %87, 0, !dbg !1347
  br i1 %88, label %89, label %107, !dbg !1347

89:                                               ; preds = %85
  br label %90, !dbg !1348

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1349
  %92 = load i64, i64* %12, align 8, !dbg !1349
  %93 = icmp ult i64 %91, %92, !dbg !1349
  br i1 %93, label %94, label %100, !dbg !1352

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1349
  %96 = load i8, i8* %95, align 1, !dbg !1349
  %97 = load i8*, i8** %11, align 8, !dbg !1349
  %98 = load i64, i64* %21, align 8, !dbg !1349
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1349
  store i8 %96, i8* %99, align 1, !dbg !1349
  br label %100, !dbg !1349

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1352
  %102 = add i64 %101, 1, !dbg !1352
  store i64 %102, i64* %21, align 8, !dbg !1352
  br label %103, !dbg !1352

103:                                              ; preds = %100
  br label %104, !dbg !1352

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1353
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1353
  store i8* %106, i8** %30, align 8, !dbg !1353
  br label %85, !dbg !1354, !llvm.loop !1355

107:                                              ; preds = %85
  br label %108, !dbg !1356

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1357
  %109 = load i8*, i8** %19, align 8, !dbg !1358
  store i8* %109, i8** %23, align 8, !dbg !1359
  %110 = load i8*, i8** %23, align 8, !dbg !1360
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1361
  store i64 %111, i64* %24, align 8, !dbg !1362
  br label %138, !dbg !1363

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1364
  br label %113, !dbg !1365

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1366
  br label %114, !dbg !1367

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1368
  %116 = trunc i8 %115 to i1, !dbg !1368
  br i1 %116, label %118, label %117, !dbg !1370

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1371
  br label %118, !dbg !1372

118:                                              ; preds = %117, %114
  br label %119, !dbg !1368

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1373
  %120 = load i8, i8* %26, align 1, !dbg !1374
  %121 = trunc i8 %120 to i1, !dbg !1374
  br i1 %121, label %135, label %122, !dbg !1376

122:                                              ; preds = %119
  br label %123, !dbg !1377

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1378
  %125 = load i64, i64* %12, align 8, !dbg !1378
  %126 = icmp ult i64 %124, %125, !dbg !1378
  br i1 %126, label %127, label %131, !dbg !1381

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1378
  %129 = load i64, i64* %21, align 8, !dbg !1378
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1378
  store i8 39, i8* %130, align 1, !dbg !1378
  br label %131, !dbg !1378

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1381
  %133 = add i64 %132, 1, !dbg !1381
  store i64 %133, i64* %21, align 8, !dbg !1381
  br label %134, !dbg !1381

134:                                              ; preds = %131
  br label %135, !dbg !1381

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), i8** %23, align 8, !dbg !1382
  store i64 1, i64* %24, align 8, !dbg !1383
  br label %138, !dbg !1384

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1385
  br label %138, !dbg !1386

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1387
  unreachable, !dbg !1387

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1388, metadata !DIExpression()), !dbg !1390
  store i64 0, i64* %31, align 8, !dbg !1390
  br label %139, !dbg !1391

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1392
  %141 = icmp eq i64 %140, -1, !dbg !1394
  br i1 %141, label %142, label %150, !dbg !1392

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1395
  %144 = load i64, i64* %31, align 8, !dbg !1396
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1395
  %146 = load i8, i8* %145, align 1, !dbg !1395
  %147 = zext i8 %146 to i32, !dbg !1395
  %148 = icmp eq i32 %147, 0, !dbg !1397
  %149 = zext i1 %148 to i32, !dbg !1397
  br label %155, !dbg !1392

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1398
  %152 = load i64, i64* %14, align 8, !dbg !1399
  %153 = icmp eq i64 %151, %152, !dbg !1400
  %154 = zext i1 %153 to i32, !dbg !1400
  br label %155, !dbg !1392

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1392
  %157 = icmp ne i32 %156, 0, !dbg !1401
  %158 = xor i1 %157, true, !dbg !1401
  br i1 %158, label %159, label %996, !dbg !1402

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1403, metadata !DIExpression()), !dbg !1405
  store i8 0, i8* %32, align 1, !dbg !1405
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1406, metadata !DIExpression()), !dbg !1407
  store i8 0, i8* %33, align 1, !dbg !1407
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1408, metadata !DIExpression()), !dbg !1409
  store i8 0, i8* %34, align 1, !dbg !1409
  %160 = load i8, i8* %25, align 1, !dbg !1410
  %161 = trunc i8 %160 to i1, !dbg !1410
  br i1 %161, label %162, label %197, !dbg !1412

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1413
  %164 = icmp ne i32 %163, 2, !dbg !1414
  br i1 %164, label %165, label %197, !dbg !1415

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1416
  %167 = icmp ne i64 %166, 0, !dbg !1416
  br i1 %167, label %168, label %197, !dbg !1417

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1418
  %170 = load i64, i64* %24, align 8, !dbg !1419
  %171 = add i64 %169, %170, !dbg !1420
  %172 = load i64, i64* %14, align 8, !dbg !1421
  %173 = icmp eq i64 %172, -1, !dbg !1422
  br i1 %173, label %174, label %180, !dbg !1423

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1424
  %176 = icmp ult i64 1, %175, !dbg !1425
  br i1 %176, label %177, label %180, !dbg !1421

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1426
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1427
  store i64 %179, i64* %14, align 8, !dbg !1428
  br label %182, !dbg !1421

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1429
  br label %182, !dbg !1421

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1421
  %184 = icmp ule i64 %171, %183, !dbg !1430
  br i1 %184, label %185, label %197, !dbg !1431

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1432
  %187 = load i64, i64* %31, align 8, !dbg !1433
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1434
  %189 = load i8*, i8** %23, align 8, !dbg !1435
  %190 = load i64, i64* %24, align 8, !dbg !1436
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1437
  br i1 %191, label %192, label %197, !dbg !1438

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1439
  %194 = trunc i8 %193 to i1, !dbg !1439
  br i1 %194, label %195, label %196, !dbg !1442

195:                                              ; preds = %192
  br label %1078, !dbg !1443

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1444
  br label %197, !dbg !1445

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1446, metadata !DIExpression()), !dbg !1447
  %198 = load i8*, i8** %13, align 8, !dbg !1448
  %199 = load i64, i64* %31, align 8, !dbg !1449
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1448
  %201 = load i8, i8* %200, align 1, !dbg !1448
  store i8 %201, i8* %35, align 1, !dbg !1447
  %202 = load i8, i8* %35, align 1, !dbg !1450
  %203 = zext i8 %202 to i32, !dbg !1450
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
  ], !dbg !1451

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1452
  %206 = trunc i8 %205 to i1, !dbg !1452
  br i1 %206, label %207, label %318, !dbg !1455

207:                                              ; preds = %204
  br label %208, !dbg !1456

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1458
  %210 = trunc i8 %209 to i1, !dbg !1458
  br i1 %210, label %211, label %212, !dbg !1461

211:                                              ; preds = %208
  br label %1078, !dbg !1458

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1461
  %213 = load i32, i32* %15, align 4, !dbg !1462
  %214 = icmp eq i32 %213, 2, !dbg !1462
  br i1 %214, label %215, label %255, !dbg !1462

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1462
  %217 = trunc i8 %216 to i1, !dbg !1462
  br i1 %217, label %255, label %218, !dbg !1461

218:                                              ; preds = %215
  br label %219, !dbg !1464

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1466
  %221 = load i64, i64* %12, align 8, !dbg !1466
  %222 = icmp ult i64 %220, %221, !dbg !1466
  br i1 %222, label %223, label %227, !dbg !1469

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1466
  %225 = load i64, i64* %21, align 8, !dbg !1466
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1466
  store i8 39, i8* %226, align 1, !dbg !1466
  br label %227, !dbg !1466

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1469
  %229 = add i64 %228, 1, !dbg !1469
  store i64 %229, i64* %21, align 8, !dbg !1469
  br label %230, !dbg !1469

230:                                              ; preds = %227
  br label %231, !dbg !1464

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1470
  %233 = load i64, i64* %12, align 8, !dbg !1470
  %234 = icmp ult i64 %232, %233, !dbg !1470
  br i1 %234, label %235, label %239, !dbg !1473

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1470
  %237 = load i64, i64* %21, align 8, !dbg !1470
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1470
  store i8 36, i8* %238, align 1, !dbg !1470
  br label %239, !dbg !1470

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1473
  %241 = add i64 %240, 1, !dbg !1473
  store i64 %241, i64* %21, align 8, !dbg !1473
  br label %242, !dbg !1473

242:                                              ; preds = %239
  br label %243, !dbg !1464

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1474
  %245 = load i64, i64* %12, align 8, !dbg !1474
  %246 = icmp ult i64 %244, %245, !dbg !1474
  br i1 %246, label %247, label %251, !dbg !1477

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1474
  %249 = load i64, i64* %21, align 8, !dbg !1474
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1474
  store i8 39, i8* %250, align 1, !dbg !1474
  br label %251, !dbg !1474

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1477
  %253 = add i64 %252, 1, !dbg !1477
  store i64 %253, i64* %21, align 8, !dbg !1477
  br label %254, !dbg !1477

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1464
  br label %255, !dbg !1464

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1461

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1478
  %258 = load i64, i64* %12, align 8, !dbg !1478
  %259 = icmp ult i64 %257, %258, !dbg !1478
  br i1 %259, label %260, label %264, !dbg !1481

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1478
  %262 = load i64, i64* %21, align 8, !dbg !1478
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1478
  store i8 92, i8* %263, align 1, !dbg !1478
  br label %264, !dbg !1478

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1481
  %266 = add i64 %265, 1, !dbg !1481
  store i64 %266, i64* %21, align 8, !dbg !1481
  br label %267, !dbg !1481

267:                                              ; preds = %264
  br label %268, !dbg !1461

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1482
  %270 = icmp ne i32 %269, 2, !dbg !1484
  br i1 %270, label %271, label %317, !dbg !1485

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1486
  %273 = add i64 %272, 1, !dbg !1487
  %274 = load i64, i64* %14, align 8, !dbg !1488
  %275 = icmp ult i64 %273, %274, !dbg !1489
  br i1 %275, label %276, label %317, !dbg !1490

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1491
  %278 = load i64, i64* %31, align 8, !dbg !1492
  %279 = add i64 %278, 1, !dbg !1493
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1491
  %281 = load i8, i8* %280, align 1, !dbg !1491
  %282 = zext i8 %281 to i32, !dbg !1491
  %283 = icmp sle i32 48, %282, !dbg !1494
  br i1 %283, label %284, label %317, !dbg !1495

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1496
  %286 = load i64, i64* %31, align 8, !dbg !1497
  %287 = add i64 %286, 1, !dbg !1498
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1496
  %289 = load i8, i8* %288, align 1, !dbg !1496
  %290 = zext i8 %289 to i32, !dbg !1496
  %291 = icmp sle i32 %290, 57, !dbg !1499
  br i1 %291, label %292, label %317, !dbg !1500

292:                                              ; preds = %284
  br label %293, !dbg !1501

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1503
  %295 = load i64, i64* %12, align 8, !dbg !1503
  %296 = icmp ult i64 %294, %295, !dbg !1503
  br i1 %296, label %297, label %301, !dbg !1506

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1503
  %299 = load i64, i64* %21, align 8, !dbg !1503
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1503
  store i8 48, i8* %300, align 1, !dbg !1503
  br label %301, !dbg !1503

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1506
  %303 = add i64 %302, 1, !dbg !1506
  store i64 %303, i64* %21, align 8, !dbg !1506
  br label %304, !dbg !1506

304:                                              ; preds = %301
  br label %305, !dbg !1507

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1508
  %307 = load i64, i64* %12, align 8, !dbg !1508
  %308 = icmp ult i64 %306, %307, !dbg !1508
  br i1 %308, label %309, label %313, !dbg !1511

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1508
  %311 = load i64, i64* %21, align 8, !dbg !1508
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1508
  store i8 48, i8* %312, align 1, !dbg !1508
  br label %313, !dbg !1508

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1511
  %315 = add i64 %314, 1, !dbg !1511
  store i64 %315, i64* %21, align 8, !dbg !1511
  br label %316, !dbg !1511

316:                                              ; preds = %313
  br label %317, !dbg !1512

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1513
  br label %324, !dbg !1514

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1515
  %320 = and i32 %319, 1, !dbg !1517
  %321 = icmp ne i32 %320, 0, !dbg !1517
  br i1 %321, label %322, label %323, !dbg !1518

322:                                              ; preds = %318
  br label %993, !dbg !1519

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1520

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1521
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1522

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1523
  %329 = trunc i8 %328 to i1, !dbg !1523
  br i1 %329, label %330, label %331, !dbg !1526

330:                                              ; preds = %327
  br label %1078, !dbg !1527

331:                                              ; preds = %327
  br label %418, !dbg !1528

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1529
  %334 = and i32 %333, 4, !dbg !1531
  %335 = icmp ne i32 %334, 0, !dbg !1531
  br i1 %335, label %336, label %417, !dbg !1532

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1533
  %338 = add i64 %337, 2, !dbg !1534
  %339 = load i64, i64* %14, align 8, !dbg !1535
  %340 = icmp ult i64 %338, %339, !dbg !1536
  br i1 %340, label %341, label %417, !dbg !1537

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1538
  %343 = load i64, i64* %31, align 8, !dbg !1539
  %344 = add i64 %343, 1, !dbg !1540
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1538
  %346 = load i8, i8* %345, align 1, !dbg !1538
  %347 = zext i8 %346 to i32, !dbg !1538
  %348 = icmp eq i32 %347, 63, !dbg !1541
  br i1 %348, label %349, label %417, !dbg !1542

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1543
  %351 = load i64, i64* %31, align 8, !dbg !1544
  %352 = add i64 %351, 2, !dbg !1545
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1543
  %354 = load i8, i8* %353, align 1, !dbg !1543
  %355 = zext i8 %354 to i32, !dbg !1543
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
  ], !dbg !1546

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1547
  %358 = trunc i8 %357 to i1, !dbg !1547
  br i1 %358, label %359, label %360, !dbg !1550

359:                                              ; preds = %356
  br label %1078, !dbg !1551

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1552
  %362 = load i64, i64* %31, align 8, !dbg !1553
  %363 = add i64 %362, 2, !dbg !1554
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1552
  %365 = load i8, i8* %364, align 1, !dbg !1552
  store i8 %365, i8* %35, align 1, !dbg !1555
  %366 = load i64, i64* %31, align 8, !dbg !1556
  %367 = add i64 %366, 2, !dbg !1556
  store i64 %367, i64* %31, align 8, !dbg !1556
  br label %368, !dbg !1557

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1558
  %370 = load i64, i64* %12, align 8, !dbg !1558
  %371 = icmp ult i64 %369, %370, !dbg !1558
  br i1 %371, label %372, label %376, !dbg !1561

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1558
  %374 = load i64, i64* %21, align 8, !dbg !1558
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1558
  store i8 63, i8* %375, align 1, !dbg !1558
  br label %376, !dbg !1558

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1561
  %378 = add i64 %377, 1, !dbg !1561
  store i64 %378, i64* %21, align 8, !dbg !1561
  br label %379, !dbg !1561

379:                                              ; preds = %376
  br label %380, !dbg !1562

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1563
  %382 = load i64, i64* %12, align 8, !dbg !1563
  %383 = icmp ult i64 %381, %382, !dbg !1563
  br i1 %383, label %384, label %388, !dbg !1566

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1563
  %386 = load i64, i64* %21, align 8, !dbg !1563
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1563
  store i8 34, i8* %387, align 1, !dbg !1563
  br label %388, !dbg !1563

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1566
  %390 = add i64 %389, 1, !dbg !1566
  store i64 %390, i64* %21, align 8, !dbg !1566
  br label %391, !dbg !1566

391:                                              ; preds = %388
  br label %392, !dbg !1567

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1568
  %394 = load i64, i64* %12, align 8, !dbg !1568
  %395 = icmp ult i64 %393, %394, !dbg !1568
  br i1 %395, label %396, label %400, !dbg !1571

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1568
  %398 = load i64, i64* %21, align 8, !dbg !1568
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1568
  store i8 34, i8* %399, align 1, !dbg !1568
  br label %400, !dbg !1568

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1571
  %402 = add i64 %401, 1, !dbg !1571
  store i64 %402, i64* %21, align 8, !dbg !1571
  br label %403, !dbg !1571

403:                                              ; preds = %400
  br label %404, !dbg !1572

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1573
  %406 = load i64, i64* %12, align 8, !dbg !1573
  %407 = icmp ult i64 %405, %406, !dbg !1573
  br i1 %407, label %408, label %412, !dbg !1576

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1573
  %410 = load i64, i64* %21, align 8, !dbg !1573
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1573
  store i8 63, i8* %411, align 1, !dbg !1573
  br label %412, !dbg !1573

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1576
  %414 = add i64 %413, 1, !dbg !1576
  store i64 %414, i64* %21, align 8, !dbg !1576
  br label %415, !dbg !1576

415:                                              ; preds = %412
  br label %416, !dbg !1577

416:                                              ; preds = %349, %415
  br label %417, !dbg !1578

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1579

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1580

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1581
  br label %454, !dbg !1583

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1584
  br label %454, !dbg !1585

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1586
  br label %454, !dbg !1587

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1588
  br label %446, !dbg !1589

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1590
  br label %446, !dbg !1591

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1592
  br label %446, !dbg !1593

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1594
  br label %454, !dbg !1595

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1596
  store i8 %427, i8* %36, align 1, !dbg !1597
  %428 = load i32, i32* %15, align 4, !dbg !1598
  %429 = icmp eq i32 %428, 2, !dbg !1600
  br i1 %429, label %430, label %435, !dbg !1601

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1602
  %432 = trunc i8 %431 to i1, !dbg !1602
  br i1 %432, label %433, label %434, !dbg !1605

433:                                              ; preds = %430
  br label %1078, !dbg !1606

434:                                              ; preds = %430
  br label %942, !dbg !1607

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1608
  %437 = trunc i8 %436 to i1, !dbg !1608
  br i1 %437, label %438, label %445, !dbg !1610

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1611
  %440 = trunc i8 %439 to i1, !dbg !1611
  br i1 %440, label %441, label %445, !dbg !1612

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1613
  %443 = icmp ne i64 %442, 0, !dbg !1613
  br i1 %443, label %444, label %445, !dbg !1614

444:                                              ; preds = %441
  br label %942, !dbg !1615

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1613

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1616), !dbg !1617
  %447 = load i32, i32* %15, align 4, !dbg !1618
  %448 = icmp eq i32 %447, 2, !dbg !1620
  br i1 %448, label %449, label %453, !dbg !1621

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1622
  %451 = trunc i8 %450 to i1, !dbg !1622
  br i1 %451, label %452, label %453, !dbg !1623

452:                                              ; preds = %449
  br label %1078, !dbg !1624

453:                                              ; preds = %449, %446
  br label %454, !dbg !1622

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1625), !dbg !1626
  %455 = load i8, i8* %25, align 1, !dbg !1627
  %456 = trunc i8 %455 to i1, !dbg !1627
  br i1 %456, label %457, label %459, !dbg !1629

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1630
  store i8 %458, i8* %35, align 1, !dbg !1632
  br label %880, !dbg !1633

459:                                              ; preds = %454
  br label %849, !dbg !1634

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1635
  %462 = icmp eq i64 %461, -1, !dbg !1637
  br i1 %462, label %463, label %469, !dbg !1638

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1639
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1639
  %466 = load i8, i8* %465, align 1, !dbg !1639
  %467 = zext i8 %466 to i32, !dbg !1639
  %468 = icmp eq i32 %467, 0, !dbg !1640
  br i1 %468, label %473, label %472, !dbg !1635

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1641
  %471 = icmp eq i64 %470, 1, !dbg !1642
  br i1 %471, label %473, label %472, !dbg !1638

472:                                              ; preds = %469, %463
  br label %849, !dbg !1643

473:                                              ; preds = %469, %463
  br label %474, !dbg !1644

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1645
  %476 = icmp ne i64 %475, 0, !dbg !1647
  br i1 %476, label %477, label %478, !dbg !1648

477:                                              ; preds = %474
  br label %849, !dbg !1649

478:                                              ; preds = %474
  br label %479, !dbg !1650

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1651
  br label %480, !dbg !1652

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1653
  %482 = icmp eq i32 %481, 2, !dbg !1655
  br i1 %482, label %483, label %487, !dbg !1656

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1657
  %485 = trunc i8 %484 to i1, !dbg !1657
  br i1 %485, label %486, label %487, !dbg !1658

486:                                              ; preds = %483
  br label %1078, !dbg !1659

487:                                              ; preds = %483, %480
  br label %849, !dbg !1660

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1661
  store i8 1, i8* %34, align 1, !dbg !1662
  %489 = load i32, i32* %15, align 4, !dbg !1663
  %490 = icmp eq i32 %489, 2, !dbg !1665
  br i1 %490, label %491, label %540, !dbg !1666

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1667
  %493 = trunc i8 %492 to i1, !dbg !1667
  br i1 %493, label %494, label %495, !dbg !1670

494:                                              ; preds = %491
  br label %1078, !dbg !1671

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1672
  %497 = icmp ne i64 %496, 0, !dbg !1672
  br i1 %497, label %498, label %503, !dbg !1674

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1675
  %500 = icmp ne i64 %499, 0, !dbg !1675
  br i1 %500, label %503, label %501, !dbg !1676

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1677
  store i64 %502, i64* %22, align 8, !dbg !1679
  store i64 0, i64* %12, align 8, !dbg !1680
  br label %503, !dbg !1681

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1682

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1683
  %506 = load i64, i64* %12, align 8, !dbg !1683
  %507 = icmp ult i64 %505, %506, !dbg !1683
  br i1 %507, label %508, label %512, !dbg !1686

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1683
  %510 = load i64, i64* %21, align 8, !dbg !1683
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1683
  store i8 39, i8* %511, align 1, !dbg !1683
  br label %512, !dbg !1683

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1686
  %514 = add i64 %513, 1, !dbg !1686
  store i64 %514, i64* %21, align 8, !dbg !1686
  br label %515, !dbg !1686

515:                                              ; preds = %512
  br label %516, !dbg !1687

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1688
  %518 = load i64, i64* %12, align 8, !dbg !1688
  %519 = icmp ult i64 %517, %518, !dbg !1688
  br i1 %519, label %520, label %524, !dbg !1691

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1688
  %522 = load i64, i64* %21, align 8, !dbg !1688
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1688
  store i8 92, i8* %523, align 1, !dbg !1688
  br label %524, !dbg !1688

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1691
  %526 = add i64 %525, 1, !dbg !1691
  store i64 %526, i64* %21, align 8, !dbg !1691
  br label %527, !dbg !1691

527:                                              ; preds = %524
  br label %528, !dbg !1692

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1693
  %530 = load i64, i64* %12, align 8, !dbg !1693
  %531 = icmp ult i64 %529, %530, !dbg !1693
  br i1 %531, label %532, label %536, !dbg !1696

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1693
  %534 = load i64, i64* %21, align 8, !dbg !1693
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1693
  store i8 39, i8* %535, align 1, !dbg !1693
  br label %536, !dbg !1693

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1696
  %538 = add i64 %537, 1, !dbg !1696
  store i64 %538, i64* %21, align 8, !dbg !1696
  br label %539, !dbg !1696

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1697
  br label %540, !dbg !1698

540:                                              ; preds = %539, %488
  br label %849, !dbg !1699

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1700
  br label %849, !dbg !1701

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1702, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1705, metadata !DIExpression()), !dbg !1706
  %543 = load i8, i8* %20, align 1, !dbg !1707
  %544 = trunc i8 %543 to i1, !dbg !1707
  br i1 %544, label %545, label %557, !dbg !1709

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1710
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1712
  %547 = load i16*, i16** %546, align 8, !dbg !1712
  %548 = load i8, i8* %35, align 1, !dbg !1712
  %549 = zext i8 %548 to i32, !dbg !1712
  %550 = sext i32 %549 to i64, !dbg !1712
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1712
  %552 = load i16, i16* %551, align 2, !dbg !1712
  %553 = zext i16 %552 to i32, !dbg !1712
  %554 = and i32 %553, 16384, !dbg !1712
  %555 = icmp ne i32 %554, 0, !dbg !1713
  %556 = zext i1 %555 to i8, !dbg !1714
  store i8 %556, i8* %38, align 1, !dbg !1714
  br label %648, !dbg !1715

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1716, metadata !DIExpression()), !dbg !1728
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1729
  store i64 0, i64* %37, align 8, !dbg !1730
  store i8 1, i8* %38, align 1, !dbg !1731
  %558 = load i64, i64* %14, align 8, !dbg !1732
  %559 = icmp eq i64 %558, -1, !dbg !1734
  br i1 %559, label %560, label %563, !dbg !1735

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1736
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !1737
  store i64 %562, i64* %14, align 8, !dbg !1738
  br label %563, !dbg !1739

563:                                              ; preds = %560, %557
  br label %564, !dbg !1740

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1741, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1746, metadata !DIExpression()), !dbg !1747
  %565 = load i8*, i8** %13, align 8, !dbg !1748
  %566 = load i64, i64* %31, align 8, !dbg !1749
  %567 = load i64, i64* %37, align 8, !dbg !1750
  %568 = add i64 %566, %567, !dbg !1751
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !1748
  %570 = load i64, i64* %14, align 8, !dbg !1752
  %571 = load i64, i64* %31, align 8, !dbg !1753
  %572 = load i64, i64* %37, align 8, !dbg !1754
  %573 = add i64 %571, %572, !dbg !1755
  %574 = sub i64 %570, %573, !dbg !1756
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !1757
  store i64 %575, i64* %41, align 8, !dbg !1747
  %576 = load i64, i64* %41, align 8, !dbg !1758
  %577 = icmp eq i64 %576, 0, !dbg !1760
  br i1 %577, label %578, label %579, !dbg !1761

578:                                              ; preds = %564
  br label %647, !dbg !1762

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !1763
  %581 = icmp eq i64 %580, -1, !dbg !1765
  br i1 %581, label %582, label %583, !dbg !1766

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !1767
  br label %647, !dbg !1769

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !1770
  %585 = icmp eq i64 %584, -2, !dbg !1772
  br i1 %585, label %586, label %608, !dbg !1773

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !1774
  br label %587, !dbg !1776

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !1777
  %589 = load i64, i64* %37, align 8, !dbg !1778
  %590 = add i64 %588, %589, !dbg !1779
  %591 = load i64, i64* %14, align 8, !dbg !1780
  %592 = icmp ult i64 %590, %591, !dbg !1781
  br i1 %592, label %593, label %602, !dbg !1782

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !1783
  %595 = load i64, i64* %31, align 8, !dbg !1784
  %596 = load i64, i64* %37, align 8, !dbg !1785
  %597 = add i64 %595, %596, !dbg !1786
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !1783
  %599 = load i8, i8* %598, align 1, !dbg !1783
  %600 = zext i8 %599 to i32, !dbg !1783
  %601 = icmp ne i32 %600, 0, !dbg !1782
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !1787
  br i1 %603, label %604, label %607, !dbg !1776

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !1788
  %606 = add i64 %605, 1, !dbg !1788
  store i64 %606, i64* %37, align 8, !dbg !1788
  br label %587, !dbg !1776, !llvm.loop !1789

607:                                              ; preds = %602
  br label %647, !dbg !1790

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !1791
  %610 = trunc i8 %609 to i1, !dbg !1791
  br i1 %610, label %611, label %635, !dbg !1794

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !1795
  %613 = icmp eq i32 %612, 2, !dbg !1796
  br i1 %613, label %614, label %635, !dbg !1797

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !1798, metadata !DIExpression()), !dbg !1801
  store i64 1, i64* %42, align 8, !dbg !1801
  br label %615, !dbg !1802

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !1803
  %617 = load i64, i64* %41, align 8, !dbg !1805
  %618 = icmp ult i64 %616, %617, !dbg !1806
  br i1 %618, label %619, label %634, !dbg !1807

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !1808
  %621 = load i64, i64* %31, align 8, !dbg !1809
  %622 = load i64, i64* %37, align 8, !dbg !1810
  %623 = add i64 %621, %622, !dbg !1811
  %624 = load i64, i64* %42, align 8, !dbg !1812
  %625 = add i64 %623, %624, !dbg !1813
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !1808
  %627 = load i8, i8* %626, align 1, !dbg !1808
  %628 = zext i8 %627 to i32, !dbg !1808
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !1814

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !1815

630:                                              ; preds = %619
  br label %631, !dbg !1817

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !1818
  %633 = add i64 %632, 1, !dbg !1818
  store i64 %633, i64* %42, align 8, !dbg !1818
  br label %615, !dbg !1819, !llvm.loop !1820

634:                                              ; preds = %615
  br label %635, !dbg !1822

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !1823
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !1825
  %638 = icmp ne i32 %637, 0, !dbg !1825
  br i1 %638, label %640, label %639, !dbg !1826

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !1827
  br label %640, !dbg !1828

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !1829
  %642 = load i64, i64* %37, align 8, !dbg !1830
  %643 = add i64 %642, %641, !dbg !1830
  store i64 %643, i64* %37, align 8, !dbg !1830
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !1831

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !1832
  %650 = trunc i8 %649 to i1, !dbg !1832
  %651 = zext i1 %650 to i8, !dbg !1833
  store i8 %651, i8* %34, align 1, !dbg !1833
  %652 = load i64, i64* %37, align 8, !dbg !1834
  %653 = icmp ult i64 1, %652, !dbg !1836
  br i1 %653, label %660, label %654, !dbg !1837

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !1838
  %656 = trunc i8 %655 to i1, !dbg !1838
  br i1 %656, label %657, label %848, !dbg !1839

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !1840
  %659 = trunc i8 %658 to i1, !dbg !1840
  br i1 %659, label %848, label %660, !dbg !1841

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !1842, metadata !DIExpression()), !dbg !1844
  %661 = load i64, i64* %31, align 8, !dbg !1845
  %662 = load i64, i64* %37, align 8, !dbg !1846
  %663 = add i64 %661, %662, !dbg !1847
  store i64 %663, i64* %43, align 8, !dbg !1844
  br label %664, !dbg !1848

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !1849
  %666 = trunc i8 %665 to i1, !dbg !1849
  br i1 %666, label %667, label %772, !dbg !1854

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !1855
  %669 = trunc i8 %668 to i1, !dbg !1855
  br i1 %669, label %772, label %670, !dbg !1856

670:                                              ; preds = %667
  br label %671, !dbg !1857

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !1859
  %673 = trunc i8 %672 to i1, !dbg !1859
  br i1 %673, label %674, label %675, !dbg !1862

674:                                              ; preds = %671
  br label %1078, !dbg !1859

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !1862
  %676 = load i32, i32* %15, align 4, !dbg !1863
  %677 = icmp eq i32 %676, 2, !dbg !1863
  br i1 %677, label %678, label %718, !dbg !1863

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !1863
  %680 = trunc i8 %679 to i1, !dbg !1863
  br i1 %680, label %718, label %681, !dbg !1862

681:                                              ; preds = %678
  br label %682, !dbg !1865

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !1867
  %684 = load i64, i64* %12, align 8, !dbg !1867
  %685 = icmp ult i64 %683, %684, !dbg !1867
  br i1 %685, label %686, label %690, !dbg !1870

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !1867
  %688 = load i64, i64* %21, align 8, !dbg !1867
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !1867
  store i8 39, i8* %689, align 1, !dbg !1867
  br label %690, !dbg !1867

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !1870
  %692 = add i64 %691, 1, !dbg !1870
  store i64 %692, i64* %21, align 8, !dbg !1870
  br label %693, !dbg !1870

693:                                              ; preds = %690
  br label %694, !dbg !1865

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !1871
  %696 = load i64, i64* %12, align 8, !dbg !1871
  %697 = icmp ult i64 %695, %696, !dbg !1871
  br i1 %697, label %698, label %702, !dbg !1874

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !1871
  %700 = load i64, i64* %21, align 8, !dbg !1871
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !1871
  store i8 36, i8* %701, align 1, !dbg !1871
  br label %702, !dbg !1871

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !1874
  %704 = add i64 %703, 1, !dbg !1874
  store i64 %704, i64* %21, align 8, !dbg !1874
  br label %705, !dbg !1874

705:                                              ; preds = %702
  br label %706, !dbg !1865

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !1875
  %708 = load i64, i64* %12, align 8, !dbg !1875
  %709 = icmp ult i64 %707, %708, !dbg !1875
  br i1 %709, label %710, label %714, !dbg !1878

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !1875
  %712 = load i64, i64* %21, align 8, !dbg !1875
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !1875
  store i8 39, i8* %713, align 1, !dbg !1875
  br label %714, !dbg !1875

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !1878
  %716 = add i64 %715, 1, !dbg !1878
  store i64 %716, i64* %21, align 8, !dbg !1878
  br label %717, !dbg !1878

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !1865
  br label %718, !dbg !1865

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !1862

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !1879
  %721 = load i64, i64* %12, align 8, !dbg !1879
  %722 = icmp ult i64 %720, %721, !dbg !1879
  br i1 %722, label %723, label %727, !dbg !1882

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !1879
  %725 = load i64, i64* %21, align 8, !dbg !1879
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !1879
  store i8 92, i8* %726, align 1, !dbg !1879
  br label %727, !dbg !1879

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !1882
  %729 = add i64 %728, 1, !dbg !1882
  store i64 %729, i64* %21, align 8, !dbg !1882
  br label %730, !dbg !1882

730:                                              ; preds = %727
  br label %731, !dbg !1862

731:                                              ; preds = %730
  br label %732, !dbg !1883

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !1884
  %734 = load i64, i64* %12, align 8, !dbg !1884
  %735 = icmp ult i64 %733, %734, !dbg !1884
  br i1 %735, label %736, label %745, !dbg !1887

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !1884
  %738 = zext i8 %737 to i32, !dbg !1884
  %739 = ashr i32 %738, 6, !dbg !1884
  %740 = add nsw i32 48, %739, !dbg !1884
  %741 = trunc i32 %740 to i8, !dbg !1884
  %742 = load i8*, i8** %11, align 8, !dbg !1884
  %743 = load i64, i64* %21, align 8, !dbg !1884
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !1884
  store i8 %741, i8* %744, align 1, !dbg !1884
  br label %745, !dbg !1884

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !1887
  %747 = add i64 %746, 1, !dbg !1887
  store i64 %747, i64* %21, align 8, !dbg !1887
  br label %748, !dbg !1887

748:                                              ; preds = %745
  br label %749, !dbg !1888

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !1889
  %751 = load i64, i64* %12, align 8, !dbg !1889
  %752 = icmp ult i64 %750, %751, !dbg !1889
  br i1 %752, label %753, label %763, !dbg !1892

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !1889
  %755 = zext i8 %754 to i32, !dbg !1889
  %756 = ashr i32 %755, 3, !dbg !1889
  %757 = and i32 %756, 7, !dbg !1889
  %758 = add nsw i32 48, %757, !dbg !1889
  %759 = trunc i32 %758 to i8, !dbg !1889
  %760 = load i8*, i8** %11, align 8, !dbg !1889
  %761 = load i64, i64* %21, align 8, !dbg !1889
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !1889
  store i8 %759, i8* %762, align 1, !dbg !1889
  br label %763, !dbg !1889

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !1892
  %765 = add i64 %764, 1, !dbg !1892
  store i64 %765, i64* %21, align 8, !dbg !1892
  br label %766, !dbg !1892

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !1893
  %768 = zext i8 %767 to i32, !dbg !1893
  %769 = and i32 %768, 7, !dbg !1894
  %770 = add nsw i32 48, %769, !dbg !1895
  %771 = trunc i32 %770 to i8, !dbg !1896
  store i8 %771, i8* %35, align 1, !dbg !1897
  br label %789, !dbg !1898

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !1899
  %774 = trunc i8 %773 to i1, !dbg !1899
  br i1 %774, label %775, label %788, !dbg !1901

775:                                              ; preds = %772
  br label %776, !dbg !1902

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !1904
  %778 = load i64, i64* %12, align 8, !dbg !1904
  %779 = icmp ult i64 %777, %778, !dbg !1904
  br i1 %779, label %780, label %784, !dbg !1907

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !1904
  %782 = load i64, i64* %21, align 8, !dbg !1904
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !1904
  store i8 92, i8* %783, align 1, !dbg !1904
  br label %784, !dbg !1904

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !1907
  %786 = add i64 %785, 1, !dbg !1907
  store i64 %786, i64* %21, align 8, !dbg !1907
  br label %787, !dbg !1907

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !1908
  br label %788, !dbg !1909

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !1910
  %791 = load i64, i64* %31, align 8, !dbg !1912
  %792 = add i64 %791, 1, !dbg !1913
  %793 = icmp ule i64 %790, %792, !dbg !1914
  br i1 %793, label %794, label %795, !dbg !1915

794:                                              ; preds = %789
  br label %847, !dbg !1916

795:                                              ; preds = %789
  br label %796, !dbg !1917

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !1918
  %798 = trunc i8 %797 to i1, !dbg !1918
  br i1 %798, label %799, label %827, !dbg !1918

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !1918
  %801 = trunc i8 %800 to i1, !dbg !1918
  br i1 %801, label %827, label %802, !dbg !1921

802:                                              ; preds = %799
  br label %803, !dbg !1922

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !1924
  %805 = load i64, i64* %12, align 8, !dbg !1924
  %806 = icmp ult i64 %804, %805, !dbg !1924
  br i1 %806, label %807, label %811, !dbg !1927

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !1924
  %809 = load i64, i64* %21, align 8, !dbg !1924
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !1924
  store i8 39, i8* %810, align 1, !dbg !1924
  br label %811, !dbg !1924

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !1927
  %813 = add i64 %812, 1, !dbg !1927
  store i64 %813, i64* %21, align 8, !dbg !1927
  br label %814, !dbg !1927

814:                                              ; preds = %811
  br label %815, !dbg !1922

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !1928
  %817 = load i64, i64* %12, align 8, !dbg !1928
  %818 = icmp ult i64 %816, %817, !dbg !1928
  br i1 %818, label %819, label %823, !dbg !1931

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !1928
  %821 = load i64, i64* %21, align 8, !dbg !1928
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !1928
  store i8 39, i8* %822, align 1, !dbg !1928
  br label %823, !dbg !1928

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !1931
  %825 = add i64 %824, 1, !dbg !1931
  store i64 %825, i64* %21, align 8, !dbg !1931
  br label %826, !dbg !1931

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !1922
  br label %827, !dbg !1922

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !1921

828:                                              ; preds = %827
  br label %829, !dbg !1932

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !1933
  %831 = load i64, i64* %12, align 8, !dbg !1933
  %832 = icmp ult i64 %830, %831, !dbg !1933
  br i1 %832, label %833, label %838, !dbg !1936

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !1933
  %835 = load i8*, i8** %11, align 8, !dbg !1933
  %836 = load i64, i64* %21, align 8, !dbg !1933
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !1933
  store i8 %834, i8* %837, align 1, !dbg !1933
  br label %838, !dbg !1933

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !1936
  %840 = add i64 %839, 1, !dbg !1936
  store i64 %840, i64* %21, align 8, !dbg !1936
  br label %841, !dbg !1936

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !1937
  %843 = load i64, i64* %31, align 8, !dbg !1938
  %844 = add i64 %843, 1, !dbg !1938
  store i64 %844, i64* %31, align 8, !dbg !1938
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !1937
  %846 = load i8, i8* %845, align 1, !dbg !1937
  store i8 %846, i8* %35, align 1, !dbg !1939
  br label %664, !dbg !1940, !llvm.loop !1941

847:                                              ; preds = %794
  br label %942, !dbg !1944

848:                                              ; preds = %657, %654
  br label %849, !dbg !1945

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !1946
  %851 = trunc i8 %850 to i1, !dbg !1946
  br i1 %851, label %852, label %855, !dbg !1948

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !1949
  %854 = icmp ne i32 %853, 2, !dbg !1950
  br i1 %854, label %858, label %855, !dbg !1951

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !1952
  %857 = trunc i8 %856 to i1, !dbg !1952
  br i1 %857, label %858, label %875, !dbg !1953

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !1954
  %860 = icmp ne i32* %859, null, !dbg !1954
  br i1 %860, label %861, label %875, !dbg !1955

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !1956
  %863 = load i8, i8* %35, align 1, !dbg !1957
  %864 = zext i8 %863 to i64, !dbg !1957
  %865 = udiv i64 %864, 32, !dbg !1958
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !1956
  %867 = load i32, i32* %866, align 4, !dbg !1956
  %868 = load i8, i8* %35, align 1, !dbg !1959
  %869 = zext i8 %868 to i64, !dbg !1959
  %870 = urem i64 %869, 32, !dbg !1960
  %871 = trunc i64 %870 to i32, !dbg !1961
  %872 = lshr i32 %867, %871, !dbg !1961
  %873 = and i32 %872, 1, !dbg !1962
  %874 = icmp ne i32 %873, 0, !dbg !1962
  br i1 %874, label %879, label %875, !dbg !1963

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !1964
  %877 = trunc i8 %876 to i1, !dbg !1964
  br i1 %877, label %879, label %878, !dbg !1965

878:                                              ; preds = %875
  br label %942, !dbg !1966

879:                                              ; preds = %875, %861
  br label %880, !dbg !1964

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !1967), !dbg !1968
  br label %881, !dbg !1969

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !1970
  %883 = trunc i8 %882 to i1, !dbg !1970
  br i1 %883, label %884, label %885, !dbg !1973

884:                                              ; preds = %881
  br label %1078, !dbg !1970

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !1973
  %886 = load i32, i32* %15, align 4, !dbg !1974
  %887 = icmp eq i32 %886, 2, !dbg !1974
  br i1 %887, label %888, label %928, !dbg !1974

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !1974
  %890 = trunc i8 %889 to i1, !dbg !1974
  br i1 %890, label %928, label %891, !dbg !1973

891:                                              ; preds = %888
  br label %892, !dbg !1976

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !1978
  %894 = load i64, i64* %12, align 8, !dbg !1978
  %895 = icmp ult i64 %893, %894, !dbg !1978
  br i1 %895, label %896, label %900, !dbg !1981

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !1978
  %898 = load i64, i64* %21, align 8, !dbg !1978
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !1978
  store i8 39, i8* %899, align 1, !dbg !1978
  br label %900, !dbg !1978

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !1981
  %902 = add i64 %901, 1, !dbg !1981
  store i64 %902, i64* %21, align 8, !dbg !1981
  br label %903, !dbg !1981

903:                                              ; preds = %900
  br label %904, !dbg !1976

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !1982
  %906 = load i64, i64* %12, align 8, !dbg !1982
  %907 = icmp ult i64 %905, %906, !dbg !1982
  br i1 %907, label %908, label %912, !dbg !1985

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !1982
  %910 = load i64, i64* %21, align 8, !dbg !1982
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !1982
  store i8 36, i8* %911, align 1, !dbg !1982
  br label %912, !dbg !1982

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !1985
  %914 = add i64 %913, 1, !dbg !1985
  store i64 %914, i64* %21, align 8, !dbg !1985
  br label %915, !dbg !1985

915:                                              ; preds = %912
  br label %916, !dbg !1976

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !1986
  %918 = load i64, i64* %12, align 8, !dbg !1986
  %919 = icmp ult i64 %917, %918, !dbg !1986
  br i1 %919, label %920, label %924, !dbg !1989

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !1986
  %922 = load i64, i64* %21, align 8, !dbg !1986
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !1986
  store i8 39, i8* %923, align 1, !dbg !1986
  br label %924, !dbg !1986

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !1989
  %926 = add i64 %925, 1, !dbg !1989
  store i64 %926, i64* %21, align 8, !dbg !1989
  br label %927, !dbg !1989

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !1976
  br label %928, !dbg !1976

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !1973

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !1990
  %931 = load i64, i64* %12, align 8, !dbg !1990
  %932 = icmp ult i64 %930, %931, !dbg !1990
  br i1 %932, label %933, label %937, !dbg !1993

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !1990
  %935 = load i64, i64* %21, align 8, !dbg !1990
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !1990
  store i8 92, i8* %936, align 1, !dbg !1990
  br label %937, !dbg !1990

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !1993
  %939 = add i64 %938, 1, !dbg !1993
  store i64 %939, i64* %21, align 8, !dbg !1993
  br label %940, !dbg !1993

940:                                              ; preds = %937
  br label %941, !dbg !1973

941:                                              ; preds = %940
  br label %942, !dbg !1973

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !1994), !dbg !1995
  br label %943, !dbg !1996

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !1997
  %945 = trunc i8 %944 to i1, !dbg !1997
  br i1 %945, label %946, label %974, !dbg !1997

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !1997
  %948 = trunc i8 %947 to i1, !dbg !1997
  br i1 %948, label %974, label %949, !dbg !2000

949:                                              ; preds = %946
  br label %950, !dbg !2001

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2003
  %952 = load i64, i64* %12, align 8, !dbg !2003
  %953 = icmp ult i64 %951, %952, !dbg !2003
  br i1 %953, label %954, label %958, !dbg !2006

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2003
  %956 = load i64, i64* %21, align 8, !dbg !2003
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2003
  store i8 39, i8* %957, align 1, !dbg !2003
  br label %958, !dbg !2003

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2006
  %960 = add i64 %959, 1, !dbg !2006
  store i64 %960, i64* %21, align 8, !dbg !2006
  br label %961, !dbg !2006

961:                                              ; preds = %958
  br label %962, !dbg !2001

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2007
  %964 = load i64, i64* %12, align 8, !dbg !2007
  %965 = icmp ult i64 %963, %964, !dbg !2007
  br i1 %965, label %966, label %970, !dbg !2010

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2007
  %968 = load i64, i64* %21, align 8, !dbg !2007
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2007
  store i8 39, i8* %969, align 1, !dbg !2007
  br label %970, !dbg !2007

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2010
  %972 = add i64 %971, 1, !dbg !2010
  store i64 %972, i64* %21, align 8, !dbg !2010
  br label %973, !dbg !2010

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2001
  br label %974, !dbg !2001

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2000

975:                                              ; preds = %974
  br label %976, !dbg !2011

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2012
  %978 = load i64, i64* %12, align 8, !dbg !2012
  %979 = icmp ult i64 %977, %978, !dbg !2012
  br i1 %979, label %980, label %985, !dbg !2015

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2012
  %982 = load i8*, i8** %11, align 8, !dbg !2012
  %983 = load i64, i64* %21, align 8, !dbg !2012
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2012
  store i8 %981, i8* %984, align 1, !dbg !2012
  br label %985, !dbg !2012

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2015
  %987 = add i64 %986, 1, !dbg !2015
  store i64 %987, i64* %21, align 8, !dbg !2015
  br label %988, !dbg !2015

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2016
  %990 = trunc i8 %989 to i1, !dbg !2016
  br i1 %990, label %992, label %991, !dbg !2018

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2019
  br label %992, !dbg !2020

992:                                              ; preds = %991, %988
  br label %993, !dbg !2021

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2022
  %995 = add i64 %994, 1, !dbg !2022
  store i64 %995, i64* %31, align 8, !dbg !2022
  br label %139, !dbg !2023, !llvm.loop !2024

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2026
  %998 = icmp eq i64 %997, 0, !dbg !2028
  br i1 %998, label %999, label %1006, !dbg !2029

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2030
  %1001 = icmp eq i32 %1000, 2, !dbg !2031
  br i1 %1001, label %1002, label %1006, !dbg !2032

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2033
  %1004 = trunc i8 %1003 to i1, !dbg !2033
  br i1 %1004, label %1005, label %1006, !dbg !2034

1005:                                             ; preds = %1002
  br label %1078, !dbg !2035

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2036
  %1008 = icmp eq i32 %1007, 2, !dbg !2038
  br i1 %1008, label %1009, label %1038, !dbg !2039

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2040
  %1011 = trunc i8 %1010 to i1, !dbg !2040
  br i1 %1011, label %1038, label %1012, !dbg !2041

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2042
  %1014 = trunc i8 %1013 to i1, !dbg !2042
  br i1 %1014, label %1015, label %1038, !dbg !2043

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2044
  %1017 = trunc i8 %1016 to i1, !dbg !2044
  br i1 %1017, label %1018, label %1028, !dbg !2047

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2048
  %1020 = load i64, i64* %22, align 8, !dbg !2049
  %1021 = load i8*, i8** %13, align 8, !dbg !2050
  %1022 = load i64, i64* %14, align 8, !dbg !2051
  %1023 = load i32, i32* %16, align 4, !dbg !2052
  %1024 = load i32*, i32** %17, align 8, !dbg !2053
  %1025 = load i8*, i8** %18, align 8, !dbg !2054
  %1026 = load i8*, i8** %19, align 8, !dbg !2055
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2056
  store i64 %1027, i64* %10, align 8, !dbg !2057
  br label %1096, !dbg !2057

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2058
  %1030 = icmp ne i64 %1029, 0, !dbg !2058
  br i1 %1030, label %1036, label %1031, !dbg !2060

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2061
  %1033 = icmp ne i64 %1032, 0, !dbg !2061
  br i1 %1033, label %1034, label %1036, !dbg !2062

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2063
  store i64 %1035, i64* %12, align 8, !dbg !2065
  store i64 0, i64* %21, align 8, !dbg !2066
  br label %51, !dbg !2067

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2068

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2069
  %1040 = icmp ne i8* %1039, null, !dbg !2069
  br i1 %1040, label %1041, label %1068, !dbg !2071

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2072
  %1043 = trunc i8 %1042 to i1, !dbg !2072
  br i1 %1043, label %1068, label %1044, !dbg !2073

1044:                                             ; preds = %1041
  br label %1045, !dbg !2074

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2075
  %1047 = load i8, i8* %1046, align 1, !dbg !2078
  %1048 = icmp ne i8 %1047, 0, !dbg !2079
  br i1 %1048, label %1049, label %1067, !dbg !2079

1049:                                             ; preds = %1045
  br label %1050, !dbg !2080

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2081
  %1052 = load i64, i64* %12, align 8, !dbg !2081
  %1053 = icmp ult i64 %1051, %1052, !dbg !2081
  br i1 %1053, label %1054, label %1060, !dbg !2084

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2081
  %1056 = load i8, i8* %1055, align 1, !dbg !2081
  %1057 = load i8*, i8** %11, align 8, !dbg !2081
  %1058 = load i64, i64* %21, align 8, !dbg !2081
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2081
  store i8 %1056, i8* %1059, align 1, !dbg !2081
  br label %1060, !dbg !2081

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2084
  %1062 = add i64 %1061, 1, !dbg !2084
  store i64 %1062, i64* %21, align 8, !dbg !2084
  br label %1063, !dbg !2084

1063:                                             ; preds = %1060
  br label %1064, !dbg !2084

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2085
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2085
  store i8* %1066, i8** %23, align 8, !dbg !2085
  br label %1045, !dbg !2086, !llvm.loop !2087

1067:                                             ; preds = %1045
  br label %1068, !dbg !2088

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2089
  %1070 = load i64, i64* %12, align 8, !dbg !2091
  %1071 = icmp ult i64 %1069, %1070, !dbg !2092
  br i1 %1071, label %1072, label %1076, !dbg !2093

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2094
  %1074 = load i64, i64* %21, align 8, !dbg !2095
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2094
  store i8 0, i8* %1075, align 1, !dbg !2096
  br label %1076, !dbg !2094

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2097
  store i64 %1077, i64* %10, align 8, !dbg !2098
  br label %1096, !dbg !2098

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2099), !dbg !2100
  %1079 = load i32, i32* %15, align 4, !dbg !2101
  %1080 = icmp eq i32 %1079, 2, !dbg !2103
  br i1 %1080, label %1081, label %1085, !dbg !2104

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2105
  %1083 = trunc i8 %1082 to i1, !dbg !2105
  br i1 %1083, label %1084, label %1085, !dbg !2106

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2107
  br label %1085, !dbg !2108

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2109
  %1087 = load i64, i64* %12, align 8, !dbg !2110
  %1088 = load i8*, i8** %13, align 8, !dbg !2111
  %1089 = load i64, i64* %14, align 8, !dbg !2112
  %1090 = load i32, i32* %15, align 4, !dbg !2113
  %1091 = load i32, i32* %16, align 4, !dbg !2114
  %1092 = and i32 %1091, -3, !dbg !2115
  %1093 = load i8*, i8** %18, align 8, !dbg !2116
  %1094 = load i8*, i8** %19, align 8, !dbg !2117
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2118
  store i64 %1095, i64* %10, align 8, !dbg !2119
  br label %1096, !dbg !2119

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2120
  ret i64 %1097, !dbg !2120
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2121, metadata !DIExpression()), !dbg !2122
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2123, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2125, metadata !DIExpression()), !dbg !2126
  %9 = load i8*, i8** %4, align 8, !dbg !2127
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.96, i64 0, i64 0), i8* noundef %9) #18, !dbg !2127
  store i8* %10, i8** %6, align 8, !dbg !2126
  %11 = load i8*, i8** %6, align 8, !dbg !2128
  %12 = load i8*, i8** %4, align 8, !dbg !2130
  %13 = icmp ne i8* %11, %12, !dbg !2131
  br i1 %13, label %14, label %16, !dbg !2132

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2133
  store i8* %15, i8** %3, align 8, !dbg !2134
  br label %37, !dbg !2134

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2135, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2137, metadata !DIExpression()), !dbg !2138
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2139
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2140
  %18 = icmp eq i64 %17, 3, !dbg !2142
  br i1 %18, label %19, label %32, !dbg !2143

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2144
  %21 = icmp eq i32 %20, 8216, !dbg !2145
  br i1 %21, label %22, label %32, !dbg !2146

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2147
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2147
  %25 = load i8, i8* %24, align 1, !dbg !2147
  %26 = zext i8 %25 to i32, !dbg !2147
  %27 = icmp eq i32 %26, 39, !dbg !2148
  %28 = zext i1 %27 to i32, !dbg !2148
  %29 = sext i32 %28 to i64, !dbg !2149
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2149
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2149
  store i8* %31, i8** %3, align 8, !dbg !2150
  br label %37, !dbg !2150

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2151
  %34 = icmp eq i32 %33, 9, !dbg !2152
  %35 = zext i1 %34 to i64, !dbg !2151
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.93, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), !dbg !2151
  store i8* %36, i8** %3, align 8, !dbg !2153
  br label %37, !dbg !2153

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2154
  ret i8* %38, !dbg !2154
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2155 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2158, metadata !DIExpression()), !dbg !2159
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2160, metadata !DIExpression()), !dbg !2161
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2162, metadata !DIExpression()), !dbg !2163
  %7 = load i8*, i8** %4, align 8, !dbg !2164
  %8 = load i64, i64* %5, align 8, !dbg !2165
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2166
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2167
  ret i8* %10, !dbg !2168
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2169 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2172, metadata !DIExpression()), !dbg !2173
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2174, metadata !DIExpression()), !dbg !2175
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2176, metadata !DIExpression()), !dbg !2177
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2178, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2180, metadata !DIExpression()), !dbg !2181
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2182
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2182
  br i1 %15, label %16, label %18, !dbg !2182

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2183
  br label %19, !dbg !2182

18:                                               ; preds = %4
  br label %19, !dbg !2182

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2182
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2181
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2184, metadata !DIExpression()), !dbg !2185
  %21 = call i32* @__errno_location() #21, !dbg !2186
  %22 = load i32, i32* %21, align 4, !dbg !2186
  store i32 %22, i32* %10, align 4, !dbg !2185
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2187, metadata !DIExpression()), !dbg !2188
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2189
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2190
  %25 = load i32, i32* %24, align 4, !dbg !2190
  %26 = load i64*, i64** %7, align 8, !dbg !2191
  %27 = icmp ne i64* %26, null, !dbg !2191
  %28 = zext i1 %27 to i64, !dbg !2191
  %29 = select i1 %27, i32 0, i32 1, !dbg !2191
  %30 = or i32 %25, %29, !dbg !2192
  store i32 %30, i32* %11, align 4, !dbg !2188
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2193, metadata !DIExpression()), !dbg !2194
  %31 = load i8*, i8** %5, align 8, !dbg !2195
  %32 = load i64, i64* %6, align 8, !dbg !2196
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2197
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2198
  %35 = load i32, i32* %34, align 8, !dbg !2198
  %36 = load i32, i32* %11, align 4, !dbg !2199
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2200
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2201
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2200
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2202
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2203
  %42 = load i8*, i8** %41, align 8, !dbg !2203
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2204
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2205
  %45 = load i8*, i8** %44, align 8, !dbg !2205
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2206
  %47 = add i64 %46, 1, !dbg !2207
  store i64 %47, i64* %12, align 8, !dbg !2194
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2208, metadata !DIExpression()), !dbg !2209
  %48 = load i64, i64* %12, align 8, !dbg !2210
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2211
  store i8* %49, i8** %13, align 8, !dbg !2209
  %50 = load i8*, i8** %13, align 8, !dbg !2212
  %51 = load i64, i64* %12, align 8, !dbg !2213
  %52 = load i8*, i8** %5, align 8, !dbg !2214
  %53 = load i64, i64* %6, align 8, !dbg !2215
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2216
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2217
  %56 = load i32, i32* %55, align 8, !dbg !2217
  %57 = load i32, i32* %11, align 4, !dbg !2218
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2219
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2220
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2219
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2221
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2222
  %63 = load i8*, i8** %62, align 8, !dbg !2222
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2223
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2224
  %66 = load i8*, i8** %65, align 8, !dbg !2224
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2225
  %68 = load i32, i32* %10, align 4, !dbg !2226
  %69 = call i32* @__errno_location() #21, !dbg !2227
  store i32 %68, i32* %69, align 4, !dbg !2228
  %70 = load i64*, i64** %7, align 8, !dbg !2229
  %71 = icmp ne i64* %70, null, !dbg !2229
  br i1 %71, label %72, label %76, !dbg !2231

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2232
  %74 = sub i64 %73, 1, !dbg !2233
  %75 = load i64*, i64** %7, align 8, !dbg !2234
  store i64 %74, i64* %75, align 8, !dbg !2235
  br label %76, !dbg !2236

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2237
  ret i8* %77, !dbg !2238
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2239 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2240, metadata !DIExpression()), !dbg !2241
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2242
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2241
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2243, metadata !DIExpression()), !dbg !2245
  store i32 1, i32* %2, align 4, !dbg !2245
  br label %4, !dbg !2246

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2247
  %6 = load i32, i32* @nslots, align 4, !dbg !2249
  %7 = icmp slt i32 %5, %6, !dbg !2250
  br i1 %7, label %8, label %18, !dbg !2251

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2252
  %10 = load i32, i32* %2, align 4, !dbg !2253
  %11 = sext i32 %10 to i64, !dbg !2252
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2252
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2254
  %14 = load i8*, i8** %13, align 8, !dbg !2254
  call void @free(i8* noundef %14) #18, !dbg !2255
  br label %15, !dbg !2255

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2256
  %17 = add nsw i32 %16, 1, !dbg !2256
  store i32 %17, i32* %2, align 4, !dbg !2256
  br label %4, !dbg !2257, !llvm.loop !2258

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2260
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2260
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2262
  %22 = load i8*, i8** %21, align 8, !dbg !2262
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2263
  br i1 %23, label %24, label %29, !dbg !2264

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2265
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2265
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2267
  %28 = load i8*, i8** %27, align 8, !dbg !2267
  call void @free(i8* noundef %28) #18, !dbg !2268
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2269
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2270
  br label %29, !dbg !2271

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2272
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2274
  br i1 %31, label %32, label %35, !dbg !2275

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2276
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2276
  call void @free(i8* noundef %34) #18, !dbg !2278
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2279
  br label %35, !dbg !2280

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2281
  ret void, !dbg !2282
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2283 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2286, metadata !DIExpression()), !dbg !2287
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2288, metadata !DIExpression()), !dbg !2289
  %5 = load i32, i32* %3, align 4, !dbg !2290
  %6 = load i8*, i8** %4, align 8, !dbg !2291
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2292
  ret i8* %7, !dbg !2293
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2294 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2297, metadata !DIExpression()), !dbg !2298
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2299, metadata !DIExpression()), !dbg !2300
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2301, metadata !DIExpression()), !dbg !2302
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2303, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2305, metadata !DIExpression()), !dbg !2306
  %18 = call i32* @__errno_location() #21, !dbg !2307
  %19 = load i32, i32* %18, align 4, !dbg !2307
  store i32 %19, i32* %9, align 4, !dbg !2306
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2308, metadata !DIExpression()), !dbg !2309
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2310
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2309
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2311, metadata !DIExpression()), !dbg !2312
  store i32 2147483647, i32* %11, align 4, !dbg !2312
  %21 = load i32, i32* %5, align 4, !dbg !2313
  %22 = icmp sle i32 0, %21, !dbg !2315
  br i1 %22, label %23, label %27, !dbg !2316

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2317
  %25 = load i32, i32* %11, align 4, !dbg !2318
  %26 = icmp slt i32 %24, %25, !dbg !2319
  br i1 %26, label %28, label %27, !dbg !2320

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2321
  unreachable, !dbg !2321

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2322
  %30 = load i32, i32* %5, align 4, !dbg !2324
  %31 = icmp sle i32 %29, %30, !dbg !2325
  br i1 %31, label %32, label %73, !dbg !2326

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2327, metadata !DIExpression()), !dbg !2329
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2330
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2331
  %35 = zext i1 %34 to i8, !dbg !2329
  store i8 %35, i8* %12, align 1, !dbg !2329
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2332, metadata !DIExpression()), !dbg !2333
  %36 = load i32, i32* @nslots, align 4, !dbg !2334
  %37 = sext i32 %36 to i64, !dbg !2334
  store i64 %37, i64* %13, align 8, !dbg !2333
  %38 = load i8, i8* %12, align 1, !dbg !2335
  %39 = trunc i8 %38 to i1, !dbg !2335
  br i1 %39, label %40, label %41, !dbg !2335

40:                                               ; preds = %32
  br label %43, !dbg !2335

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2336
  br label %43, !dbg !2335

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2335
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2335
  %46 = load i32, i32* %5, align 4, !dbg !2337
  %47 = load i32, i32* @nslots, align 4, !dbg !2338
  %48 = sub nsw i32 %46, %47, !dbg !2339
  %49 = add nsw i32 %48, 1, !dbg !2340
  %50 = sext i32 %49 to i64, !dbg !2337
  %51 = load i32, i32* %11, align 4, !dbg !2341
  %52 = sext i32 %51 to i64, !dbg !2341
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2342
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2342
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2343
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2344
  %55 = load i8, i8* %12, align 1, !dbg !2345
  %56 = trunc i8 %55 to i1, !dbg !2345
  br i1 %56, label %57, label %60, !dbg !2347

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2348
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2349
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2349
  br label %60, !dbg !2350

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2351
  %62 = load i32, i32* @nslots, align 4, !dbg !2352
  %63 = sext i32 %62 to i64, !dbg !2353
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2353
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2354
  %66 = load i64, i64* %13, align 8, !dbg !2355
  %67 = load i32, i32* @nslots, align 4, !dbg !2356
  %68 = sext i32 %67 to i64, !dbg !2356
  %69 = sub nsw i64 %66, %68, !dbg !2357
  %70 = mul i64 %69, 16, !dbg !2358
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2354
  %71 = load i64, i64* %13, align 8, !dbg !2359
  %72 = trunc i64 %71 to i32, !dbg !2359
  store i32 %72, i32* @nslots, align 4, !dbg !2360
  br label %73, !dbg !2361

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2362, metadata !DIExpression()), !dbg !2364
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2365
  %75 = load i32, i32* %5, align 4, !dbg !2366
  %76 = sext i32 %75 to i64, !dbg !2365
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2365
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2367
  %79 = load i64, i64* %78, align 8, !dbg !2367
  store i64 %79, i64* %14, align 8, !dbg !2364
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2368, metadata !DIExpression()), !dbg !2369
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2370
  %81 = load i32, i32* %5, align 4, !dbg !2371
  %82 = sext i32 %81 to i64, !dbg !2370
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2370
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2372
  %85 = load i8*, i8** %84, align 8, !dbg !2372
  store i8* %85, i8** %15, align 8, !dbg !2369
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2373, metadata !DIExpression()), !dbg !2374
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2375
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2376
  %88 = load i32, i32* %87, align 4, !dbg !2376
  %89 = or i32 %88, 1, !dbg !2377
  store i32 %89, i32* %16, align 4, !dbg !2374
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2378, metadata !DIExpression()), !dbg !2379
  %90 = load i8*, i8** %15, align 8, !dbg !2380
  %91 = load i64, i64* %14, align 8, !dbg !2381
  %92 = load i8*, i8** %6, align 8, !dbg !2382
  %93 = load i64, i64* %7, align 8, !dbg !2383
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2384
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2385
  %96 = load i32, i32* %95, align 8, !dbg !2385
  %97 = load i32, i32* %16, align 4, !dbg !2386
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2387
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2388
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2387
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2389
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2390
  %103 = load i8*, i8** %102, align 8, !dbg !2390
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2391
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2392
  %106 = load i8*, i8** %105, align 8, !dbg !2392
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2393
  store i64 %107, i64* %17, align 8, !dbg !2379
  %108 = load i64, i64* %14, align 8, !dbg !2394
  %109 = load i64, i64* %17, align 8, !dbg !2396
  %110 = icmp ule i64 %108, %109, !dbg !2397
  br i1 %110, label %111, label %149, !dbg !2398

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2399
  %113 = add i64 %112, 1, !dbg !2401
  store i64 %113, i64* %14, align 8, !dbg !2402
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2403
  %115 = load i32, i32* %5, align 4, !dbg !2404
  %116 = sext i32 %115 to i64, !dbg !2403
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2403
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2405
  store i64 %113, i64* %118, align 8, !dbg !2406
  %119 = load i8*, i8** %15, align 8, !dbg !2407
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2409
  br i1 %120, label %121, label %123, !dbg !2410

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2411
  call void @free(i8* noundef %122) #18, !dbg !2412
  br label %123, !dbg !2412

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2413
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2414
  store i8* %125, i8** %15, align 8, !dbg !2415
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2416
  %127 = load i32, i32* %5, align 4, !dbg !2417
  %128 = sext i32 %127 to i64, !dbg !2416
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2416
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2418
  store i8* %125, i8** %130, align 8, !dbg !2419
  %131 = load i8*, i8** %15, align 8, !dbg !2420
  %132 = load i64, i64* %14, align 8, !dbg !2421
  %133 = load i8*, i8** %6, align 8, !dbg !2422
  %134 = load i64, i64* %7, align 8, !dbg !2423
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2424
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2425
  %137 = load i32, i32* %136, align 8, !dbg !2425
  %138 = load i32, i32* %16, align 4, !dbg !2426
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2427
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2428
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2427
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2429
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2430
  %144 = load i8*, i8** %143, align 8, !dbg !2430
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2431
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2432
  %147 = load i8*, i8** %146, align 8, !dbg !2432
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2433
  br label %149, !dbg !2434

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2435
  %151 = call i32* @__errno_location() #21, !dbg !2436
  store i32 %150, i32* %151, align 4, !dbg !2437
  %152 = load i8*, i8** %15, align 8, !dbg !2438
  ret i8* %152, !dbg !2439
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2440 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2443, metadata !DIExpression()), !dbg !2444
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2445, metadata !DIExpression()), !dbg !2446
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2447, metadata !DIExpression()), !dbg !2448
  %7 = load i32, i32* %4, align 4, !dbg !2449
  %8 = load i8*, i8** %5, align 8, !dbg !2450
  %9 = load i64, i64* %6, align 8, !dbg !2451
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2452
  ret i8* %10, !dbg !2453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2454 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2457, metadata !DIExpression()), !dbg !2458
  %3 = load i8*, i8** %2, align 8, !dbg !2459
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2460
  ret i8* %4, !dbg !2461
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2462 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2465, metadata !DIExpression()), !dbg !2466
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2467, metadata !DIExpression()), !dbg !2468
  %5 = load i8*, i8** %3, align 8, !dbg !2469
  %6 = load i64, i64* %4, align 8, !dbg !2470
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2471
  ret i8* %7, !dbg !2472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2473 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2476, metadata !DIExpression()), !dbg !2477
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2478, metadata !DIExpression()), !dbg !2479
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2480, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2482, metadata !DIExpression()), !dbg !2483
  %8 = load i32, i32* %5, align 4, !dbg !2484
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2485
  %9 = load i32, i32* %4, align 4, !dbg !2486
  %10 = load i8*, i8** %6, align 8, !dbg !2487
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2488
  ret i8* %11, !dbg !2489
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2490 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2493, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2495, metadata !DIExpression()), !dbg !2496
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2496
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2496
  %5 = load i32, i32* %3, align 4, !dbg !2497
  %6 = icmp eq i32 %5, 10, !dbg !2499
  br i1 %6, label %7, label %8, !dbg !2500

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2501
  unreachable, !dbg !2501

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2502
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2503
  store i32 %9, i32* %10, align 8, !dbg !2504
  ret void, !dbg !2505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2506 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2509, metadata !DIExpression()), !dbg !2510
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2511, metadata !DIExpression()), !dbg !2512
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2513, metadata !DIExpression()), !dbg !2514
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2515, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2517, metadata !DIExpression()), !dbg !2518
  %10 = load i32, i32* %6, align 4, !dbg !2519
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2520
  %11 = load i32, i32* %5, align 4, !dbg !2521
  %12 = load i8*, i8** %7, align 8, !dbg !2522
  %13 = load i64, i64* %8, align 8, !dbg !2523
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2524
  ret i8* %14, !dbg !2525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2526 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2529, metadata !DIExpression()), !dbg !2530
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2531, metadata !DIExpression()), !dbg !2532
  %5 = load i32, i32* %3, align 4, !dbg !2533
  %6 = load i8*, i8** %4, align 8, !dbg !2534
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2535
  ret i8* %7, !dbg !2536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2537 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2540, metadata !DIExpression()), !dbg !2541
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2542, metadata !DIExpression()), !dbg !2543
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2544, metadata !DIExpression()), !dbg !2545
  %7 = load i32, i32* %4, align 4, !dbg !2546
  %8 = load i8*, i8** %5, align 8, !dbg !2547
  %9 = load i64, i64* %6, align 8, !dbg !2548
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2549
  ret i8* %10, !dbg !2550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2551 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2554, metadata !DIExpression()), !dbg !2555
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2556, metadata !DIExpression()), !dbg !2557
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2558, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2560, metadata !DIExpression()), !dbg !2561
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2562
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2562
  %9 = load i8, i8* %6, align 1, !dbg !2563
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2564
  %11 = load i8*, i8** %4, align 8, !dbg !2565
  %12 = load i64, i64* %5, align 8, !dbg !2566
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2567
  ret i8* %13, !dbg !2568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2569 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2572, metadata !DIExpression()), !dbg !2573
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2574, metadata !DIExpression()), !dbg !2575
  %5 = load i8*, i8** %3, align 8, !dbg !2576
  %6 = load i8, i8* %4, align 1, !dbg !2577
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2578
  ret i8* %7, !dbg !2579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2580 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2581, metadata !DIExpression()), !dbg !2582
  %3 = load i8*, i8** %2, align 8, !dbg !2583
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2584
  ret i8* %4, !dbg !2585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2586 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2587, metadata !DIExpression()), !dbg !2588
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2589, metadata !DIExpression()), !dbg !2590
  %5 = load i8*, i8** %3, align 8, !dbg !2591
  %6 = load i64, i64* %4, align 8, !dbg !2592
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2593
  ret i8* %7, !dbg !2594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2595 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2596, metadata !DIExpression()), !dbg !2597
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2598, metadata !DIExpression()), !dbg !2599
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2600, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2602, metadata !DIExpression()), !dbg !2603
  %9 = load i32, i32* %5, align 4, !dbg !2604
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2605
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2605
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2605
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2605
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2606
  %13 = load i32, i32* %4, align 4, !dbg !2607
  %14 = load i8*, i8** %6, align 8, !dbg !2608
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2609
  ret i8* %15, !dbg !2610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2611 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2614, metadata !DIExpression()), !dbg !2615
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2616, metadata !DIExpression()), !dbg !2617
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2618, metadata !DIExpression()), !dbg !2619
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2620, metadata !DIExpression()), !dbg !2621
  %9 = load i32, i32* %5, align 4, !dbg !2622
  %10 = load i8*, i8** %6, align 8, !dbg !2623
  %11 = load i8*, i8** %7, align 8, !dbg !2624
  %12 = load i8*, i8** %8, align 8, !dbg !2625
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2626
  ret i8* %13, !dbg !2627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2628 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2631, metadata !DIExpression()), !dbg !2632
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2633, metadata !DIExpression()), !dbg !2634
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2635, metadata !DIExpression()), !dbg !2636
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2637, metadata !DIExpression()), !dbg !2638
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2639, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2641, metadata !DIExpression()), !dbg !2642
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2643
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2643
  %13 = load i8*, i8** %7, align 8, !dbg !2644
  %14 = load i8*, i8** %8, align 8, !dbg !2645
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2646
  %15 = load i32, i32* %6, align 4, !dbg !2647
  %16 = load i8*, i8** %9, align 8, !dbg !2648
  %17 = load i64, i64* %10, align 8, !dbg !2649
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2650
  ret i8* %18, !dbg !2651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2652 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2655, metadata !DIExpression()), !dbg !2656
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2657, metadata !DIExpression()), !dbg !2658
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2659, metadata !DIExpression()), !dbg !2660
  %7 = load i8*, i8** %4, align 8, !dbg !2661
  %8 = load i8*, i8** %5, align 8, !dbg !2662
  %9 = load i8*, i8** %6, align 8, !dbg !2663
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2664
  ret i8* %10, !dbg !2665
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2666 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2669, metadata !DIExpression()), !dbg !2670
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2671, metadata !DIExpression()), !dbg !2672
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2673, metadata !DIExpression()), !dbg !2674
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2675, metadata !DIExpression()), !dbg !2676
  %9 = load i8*, i8** %5, align 8, !dbg !2677
  %10 = load i8*, i8** %6, align 8, !dbg !2678
  %11 = load i8*, i8** %7, align 8, !dbg !2679
  %12 = load i64, i64* %8, align 8, !dbg !2680
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2681
  ret i8* %13, !dbg !2682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2683 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2686, metadata !DIExpression()), !dbg !2687
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2688, metadata !DIExpression()), !dbg !2689
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2690, metadata !DIExpression()), !dbg !2691
  %7 = load i32, i32* %4, align 4, !dbg !2692
  %8 = load i8*, i8** %5, align 8, !dbg !2693
  %9 = load i64, i64* %6, align 8, !dbg !2694
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2695
  ret i8* %10, !dbg !2696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2697 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2700, metadata !DIExpression()), !dbg !2701
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2702, metadata !DIExpression()), !dbg !2703
  %5 = load i8*, i8** %3, align 8, !dbg !2704
  %6 = load i64, i64* %4, align 8, !dbg !2705
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2706
  ret i8* %7, !dbg !2707
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2708 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2711, metadata !DIExpression()), !dbg !2712
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2713, metadata !DIExpression()), !dbg !2714
  %5 = load i32, i32* %3, align 4, !dbg !2715
  %6 = load i8*, i8** %4, align 8, !dbg !2716
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2717
  ret i8* %7, !dbg !2718
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !2719 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2722, metadata !DIExpression()), !dbg !2723
  %3 = load i8*, i8** %2, align 8, !dbg !2724
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !2725
  ret i8* %4, !dbg !2726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !2727 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2731, metadata !DIExpression()), !dbg !2732
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2733, metadata !DIExpression()), !dbg !2734
  %5 = load i8*, i8** %3, align 8, !dbg !2735
  %6 = load i8*, i8** %4, align 8, !dbg !2736
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !2737
  %8 = icmp ne i32 %7, 0, !dbg !2738
  %9 = xor i1 %8, true, !dbg !2738
  ret i1 %9, !dbg !2739
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !2740 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !2797, metadata !DIExpression()), !dbg !2798
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2799, metadata !DIExpression()), !dbg !2800
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2801, metadata !DIExpression()), !dbg !2802
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2803, metadata !DIExpression()), !dbg !2804
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2805, metadata !DIExpression()), !dbg !2806
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2807, metadata !DIExpression()), !dbg !2808
  %13 = load i8*, i8** %8, align 8, !dbg !2809
  %14 = icmp ne i8* %13, null, !dbg !2809
  br i1 %14, label %15, label %21, !dbg !2811

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2812
  %17 = load i8*, i8** %8, align 8, !dbg !2813
  %18 = load i8*, i8** %9, align 8, !dbg !2814
  %19 = load i8*, i8** %10, align 8, !dbg !2815
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !2816
  br label %26, !dbg !2816

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2817
  %23 = load i8*, i8** %9, align 8, !dbg !2818
  %24 = load i8*, i8** %10, align 8, !dbg !2819
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.106, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !2820
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2821
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.108, i64 0, i64 0)) #18, !dbg !2822
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !2823
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2824
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.109, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !2824
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2825
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.110, i64 0, i64 0)) #18, !dbg !2826
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.111, i64 0, i64 0)), !dbg !2827
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2828
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.109, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !2828
  %37 = load i64, i64* %12, align 8, !dbg !2829
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
  ], !dbg !2830

38:                                               ; preds = %26
  br label %241, !dbg !2831

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2833
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.112, i64 0, i64 0)) #18, !dbg !2834
  %42 = load i8**, i8*** %11, align 8, !dbg !2835
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !2835
  %44 = load i8*, i8** %43, align 8, !dbg !2835
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !2836
  br label %241, !dbg !2837

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2838
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.113, i64 0, i64 0)) #18, !dbg !2839
  %49 = load i8**, i8*** %11, align 8, !dbg !2840
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !2840
  %51 = load i8*, i8** %50, align 8, !dbg !2840
  %52 = load i8**, i8*** %11, align 8, !dbg !2841
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !2841
  %54 = load i8*, i8** %53, align 8, !dbg !2841
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !2842
  br label %241, !dbg !2843

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2844
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.114, i64 0, i64 0)) #18, !dbg !2845
  %59 = load i8**, i8*** %11, align 8, !dbg !2846
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !2846
  %61 = load i8*, i8** %60, align 8, !dbg !2846
  %62 = load i8**, i8*** %11, align 8, !dbg !2847
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !2847
  %64 = load i8*, i8** %63, align 8, !dbg !2847
  %65 = load i8**, i8*** %11, align 8, !dbg !2848
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !2848
  %67 = load i8*, i8** %66, align 8, !dbg !2848
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !2849
  br label %241, !dbg !2850

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2851
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.115, i64 0, i64 0)) #18, !dbg !2852
  %72 = load i8**, i8*** %11, align 8, !dbg !2853
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !2853
  %74 = load i8*, i8** %73, align 8, !dbg !2853
  %75 = load i8**, i8*** %11, align 8, !dbg !2854
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !2854
  %77 = load i8*, i8** %76, align 8, !dbg !2854
  %78 = load i8**, i8*** %11, align 8, !dbg !2855
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !2855
  %80 = load i8*, i8** %79, align 8, !dbg !2855
  %81 = load i8**, i8*** %11, align 8, !dbg !2856
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !2856
  %83 = load i8*, i8** %82, align 8, !dbg !2856
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !2857
  br label %241, !dbg !2858

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2859
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.116, i64 0, i64 0)) #18, !dbg !2860
  %88 = load i8**, i8*** %11, align 8, !dbg !2861
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !2861
  %90 = load i8*, i8** %89, align 8, !dbg !2861
  %91 = load i8**, i8*** %11, align 8, !dbg !2862
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !2862
  %93 = load i8*, i8** %92, align 8, !dbg !2862
  %94 = load i8**, i8*** %11, align 8, !dbg !2863
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !2863
  %96 = load i8*, i8** %95, align 8, !dbg !2863
  %97 = load i8**, i8*** %11, align 8, !dbg !2864
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !2864
  %99 = load i8*, i8** %98, align 8, !dbg !2864
  %100 = load i8**, i8*** %11, align 8, !dbg !2865
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !2865
  %102 = load i8*, i8** %101, align 8, !dbg !2865
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !2866
  br label %241, !dbg !2867

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2868
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.117, i64 0, i64 0)) #18, !dbg !2869
  %107 = load i8**, i8*** %11, align 8, !dbg !2870
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !2870
  %109 = load i8*, i8** %108, align 8, !dbg !2870
  %110 = load i8**, i8*** %11, align 8, !dbg !2871
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !2871
  %112 = load i8*, i8** %111, align 8, !dbg !2871
  %113 = load i8**, i8*** %11, align 8, !dbg !2872
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !2872
  %115 = load i8*, i8** %114, align 8, !dbg !2872
  %116 = load i8**, i8*** %11, align 8, !dbg !2873
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !2873
  %118 = load i8*, i8** %117, align 8, !dbg !2873
  %119 = load i8**, i8*** %11, align 8, !dbg !2874
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !2874
  %121 = load i8*, i8** %120, align 8, !dbg !2874
  %122 = load i8**, i8*** %11, align 8, !dbg !2875
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !2875
  %124 = load i8*, i8** %123, align 8, !dbg !2875
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !2876
  br label %241, !dbg !2877

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2878
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.118, i64 0, i64 0)) #18, !dbg !2879
  %129 = load i8**, i8*** %11, align 8, !dbg !2880
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !2880
  %131 = load i8*, i8** %130, align 8, !dbg !2880
  %132 = load i8**, i8*** %11, align 8, !dbg !2881
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !2881
  %134 = load i8*, i8** %133, align 8, !dbg !2881
  %135 = load i8**, i8*** %11, align 8, !dbg !2882
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !2882
  %137 = load i8*, i8** %136, align 8, !dbg !2882
  %138 = load i8**, i8*** %11, align 8, !dbg !2883
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !2883
  %140 = load i8*, i8** %139, align 8, !dbg !2883
  %141 = load i8**, i8*** %11, align 8, !dbg !2884
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !2884
  %143 = load i8*, i8** %142, align 8, !dbg !2884
  %144 = load i8**, i8*** %11, align 8, !dbg !2885
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !2885
  %146 = load i8*, i8** %145, align 8, !dbg !2885
  %147 = load i8**, i8*** %11, align 8, !dbg !2886
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !2886
  %149 = load i8*, i8** %148, align 8, !dbg !2886
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !2887
  br label %241, !dbg !2888

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2889
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.119, i64 0, i64 0)) #18, !dbg !2890
  %154 = load i8**, i8*** %11, align 8, !dbg !2891
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !2891
  %156 = load i8*, i8** %155, align 8, !dbg !2891
  %157 = load i8**, i8*** %11, align 8, !dbg !2892
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !2892
  %159 = load i8*, i8** %158, align 8, !dbg !2892
  %160 = load i8**, i8*** %11, align 8, !dbg !2893
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !2893
  %162 = load i8*, i8** %161, align 8, !dbg !2893
  %163 = load i8**, i8*** %11, align 8, !dbg !2894
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !2894
  %165 = load i8*, i8** %164, align 8, !dbg !2894
  %166 = load i8**, i8*** %11, align 8, !dbg !2895
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !2895
  %168 = load i8*, i8** %167, align 8, !dbg !2895
  %169 = load i8**, i8*** %11, align 8, !dbg !2896
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !2896
  %171 = load i8*, i8** %170, align 8, !dbg !2896
  %172 = load i8**, i8*** %11, align 8, !dbg !2897
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !2897
  %174 = load i8*, i8** %173, align 8, !dbg !2897
  %175 = load i8**, i8*** %11, align 8, !dbg !2898
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !2898
  %177 = load i8*, i8** %176, align 8, !dbg !2898
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !2899
  br label %241, !dbg !2900

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2901
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.120, i64 0, i64 0)) #18, !dbg !2902
  %182 = load i8**, i8*** %11, align 8, !dbg !2903
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !2903
  %184 = load i8*, i8** %183, align 8, !dbg !2903
  %185 = load i8**, i8*** %11, align 8, !dbg !2904
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !2904
  %187 = load i8*, i8** %186, align 8, !dbg !2904
  %188 = load i8**, i8*** %11, align 8, !dbg !2905
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !2905
  %190 = load i8*, i8** %189, align 8, !dbg !2905
  %191 = load i8**, i8*** %11, align 8, !dbg !2906
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !2906
  %193 = load i8*, i8** %192, align 8, !dbg !2906
  %194 = load i8**, i8*** %11, align 8, !dbg !2907
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !2907
  %196 = load i8*, i8** %195, align 8, !dbg !2907
  %197 = load i8**, i8*** %11, align 8, !dbg !2908
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !2908
  %199 = load i8*, i8** %198, align 8, !dbg !2908
  %200 = load i8**, i8*** %11, align 8, !dbg !2909
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !2909
  %202 = load i8*, i8** %201, align 8, !dbg !2909
  %203 = load i8**, i8*** %11, align 8, !dbg !2910
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !2910
  %205 = load i8*, i8** %204, align 8, !dbg !2910
  %206 = load i8**, i8*** %11, align 8, !dbg !2911
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !2911
  %208 = load i8*, i8** %207, align 8, !dbg !2911
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !2912
  br label %241, !dbg !2913

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2914
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.121, i64 0, i64 0)) #18, !dbg !2915
  %213 = load i8**, i8*** %11, align 8, !dbg !2916
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !2916
  %215 = load i8*, i8** %214, align 8, !dbg !2916
  %216 = load i8**, i8*** %11, align 8, !dbg !2917
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !2917
  %218 = load i8*, i8** %217, align 8, !dbg !2917
  %219 = load i8**, i8*** %11, align 8, !dbg !2918
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !2918
  %221 = load i8*, i8** %220, align 8, !dbg !2918
  %222 = load i8**, i8*** %11, align 8, !dbg !2919
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !2919
  %224 = load i8*, i8** %223, align 8, !dbg !2919
  %225 = load i8**, i8*** %11, align 8, !dbg !2920
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !2920
  %227 = load i8*, i8** %226, align 8, !dbg !2920
  %228 = load i8**, i8*** %11, align 8, !dbg !2921
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !2921
  %230 = load i8*, i8** %229, align 8, !dbg !2921
  %231 = load i8**, i8*** %11, align 8, !dbg !2922
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !2922
  %233 = load i8*, i8** %232, align 8, !dbg !2922
  %234 = load i8**, i8*** %11, align 8, !dbg !2923
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !2923
  %236 = load i8*, i8** %235, align 8, !dbg !2923
  %237 = load i8**, i8*** %11, align 8, !dbg !2924
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !2924
  %239 = load i8*, i8** %238, align 8, !dbg !2924
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !2925
  br label %241, !dbg !2926

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !2927
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !2928 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2931, metadata !DIExpression()), !dbg !2932
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2933, metadata !DIExpression()), !dbg !2934
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2935, metadata !DIExpression()), !dbg !2936
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2937, metadata !DIExpression()), !dbg !2938
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !2939, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2941, metadata !DIExpression()), !dbg !2942
  store i64 0, i64* %11, align 8, !dbg !2943
  br label %12, !dbg !2945

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !2946
  %14 = load i64, i64* %11, align 8, !dbg !2948
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !2946
  %16 = load i8*, i8** %15, align 8, !dbg !2946
  %17 = icmp ne i8* %16, null, !dbg !2949
  br i1 %17, label %18, label %22, !dbg !2949

18:                                               ; preds = %12
  br label %19, !dbg !2949

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !2950
  %21 = add i64 %20, 1, !dbg !2950
  store i64 %21, i64* %11, align 8, !dbg !2950
  br label %12, !dbg !2951, !llvm.loop !2952

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2954
  %24 = load i8*, i8** %7, align 8, !dbg !2955
  %25 = load i8*, i8** %8, align 8, !dbg !2956
  %26 = load i8*, i8** %9, align 8, !dbg !2957
  %27 = load i8**, i8*** %10, align 8, !dbg !2958
  %28 = load i64, i64* %11, align 8, !dbg !2959
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !2960
  ret void, !dbg !2961
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !2962 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2976, metadata !DIExpression()), !dbg !2977
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2978, metadata !DIExpression()), !dbg !2979
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2980, metadata !DIExpression()), !dbg !2981
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2984, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2986, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !2988, metadata !DIExpression()), !dbg !2990
  store i64 0, i64* %10, align 8, !dbg !2991
  br label %12, !dbg !2993

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !2994
  %14 = icmp ult i64 %13, 10, !dbg !2996
  br i1 %14, label %15, label %38, !dbg !2997

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !2998
  %17 = load i32, i32* %16, align 8, !dbg !2998
  %18 = icmp sge i32 %17, 0, !dbg !2998
  br i1 %18, label %27, label %19, !dbg !2998

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !2998
  store i32 %20, i32* %16, align 8, !dbg !2998
  %21 = icmp sle i32 %20, 0, !dbg !2998
  br i1 %21, label %22, label %27, !dbg !2998

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !2998
  %24 = load i8*, i8** %23, align 8, !dbg !2998
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !2998
  %26 = bitcast i8* %25 to i8**, !dbg !2998
  br label %32, !dbg !2998

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !2998
  %29 = load i8*, i8** %28, align 8, !dbg !2998
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !2998
  store i8* %30, i8** %28, align 8, !dbg !2998
  %31 = bitcast i8* %29 to i8**, !dbg !2998
  br label %32, !dbg !2998

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !2998
  %34 = load i8*, i8** %33, align 8, !dbg !2998
  %35 = load i64, i64* %10, align 8, !dbg !2999
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3000
  store i8* %34, i8** %36, align 8, !dbg !3001
  %37 = icmp ne i8* %34, null, !dbg !3002
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3003
  br i1 %39, label %40, label %44, !dbg !3004

40:                                               ; preds = %38
  br label %41, !dbg !3004

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3005
  %43 = add i64 %42, 1, !dbg !3005
  store i64 %43, i64* %10, align 8, !dbg !3005
  br label %12, !dbg !3006, !llvm.loop !3007

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3009
  %46 = load i8*, i8** %7, align 8, !dbg !3010
  %47 = load i8*, i8** %8, align 8, !dbg !3011
  %48 = load i8*, i8** %9, align 8, !dbg !3012
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3013
  %50 = load i64, i64* %10, align 8, !dbg !3014
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3015
  ret void, !dbg !3016
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3017 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3020, metadata !DIExpression()), !dbg !3021
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3022, metadata !DIExpression()), !dbg !3023
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3024, metadata !DIExpression()), !dbg !3025
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3026, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3028, metadata !DIExpression()), !dbg !3029
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3030
  call void @llvm.va_start(i8* %11), !dbg !3030
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3031
  %13 = load i8*, i8** %6, align 8, !dbg !3032
  %14 = load i8*, i8** %7, align 8, !dbg !3033
  %15 = load i8*, i8** %8, align 8, !dbg !3034
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3035
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3035
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3035
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3035
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3036
  call void @llvm.va_end(i8* %18), !dbg !3036
  ret void, !dbg !3037
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3038 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3039
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.109, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3039
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.126, i64 0, i64 0)) #18, !dbg !3040
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.127, i64 0, i64 0)), !dbg !3041
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.128, i64 0, i64 0)) #18, !dbg !3042
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.130, i64 0, i64 0)), !dbg !3043
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.131, i64 0, i64 0)) #18, !dbg !3044
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.132, i64 0, i64 0)), !dbg !3045
  ret void, !dbg !3046
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3047 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3051, metadata !DIExpression()), !dbg !3052
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3053, metadata !DIExpression()), !dbg !3054
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3055, metadata !DIExpression()), !dbg !3056
  %7 = load i8*, i8** %4, align 8, !dbg !3057
  %8 = load i64, i64* %5, align 8, !dbg !3058
  %9 = load i64, i64* %6, align 8, !dbg !3059
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !3060
  ret i8* %10, !dbg !3061
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3062 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3063, metadata !DIExpression()), !dbg !3064
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3065, metadata !DIExpression()), !dbg !3066
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3067, metadata !DIExpression()), !dbg !3068
  %7 = load i8*, i8** %4, align 8, !dbg !3069
  %8 = load i64, i64* %5, align 8, !dbg !3070
  %9 = load i64, i64* %6, align 8, !dbg !3071
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3072
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3073
  ret i8* %11, !dbg !3074
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3075 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3078, metadata !DIExpression()), !dbg !3079
  %3 = load i8*, i8** %2, align 8, !dbg !3080
  %4 = icmp ne i8* %3, null, !dbg !3080
  br i1 %4, label %6, label %5, !dbg !3082

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3083
  unreachable, !dbg !3083

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3084
  ret i8* %7, !dbg !3085
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3086 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3089, metadata !DIExpression()), !dbg !3090
  %3 = load i64, i64* %2, align 8, !dbg !3091
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3092
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3093
  ret i8* %5, !dbg !3094
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3095 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3098, metadata !DIExpression()), !dbg !3099
  %3 = load i64, i64* %2, align 8, !dbg !3100
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3101
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3102
  ret i8* %5, !dbg !3103
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3104 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3107, metadata !DIExpression()), !dbg !3108
  %3 = load i64, i64* %2, align 8, !dbg !3109
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !3109
  ret i8* %4, !dbg !3110
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3111 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3114, metadata !DIExpression()), !dbg !3115
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3116, metadata !DIExpression()), !dbg !3117
  %5 = load i8*, i8** %3, align 8, !dbg !3118
  %6 = load i64, i64* %4, align 8, !dbg !3119
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3120
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3121
  ret i8* %8, !dbg !3122
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3123 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3126, metadata !DIExpression()), !dbg !3127
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3128, metadata !DIExpression()), !dbg !3129
  %5 = load i8*, i8** %3, align 8, !dbg !3130
  %6 = load i64, i64* %4, align 8, !dbg !3131
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3132
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3133
  ret i8* %8, !dbg !3134
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3135 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3138, metadata !DIExpression()), !dbg !3139
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3140, metadata !DIExpression()), !dbg !3141
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3142, metadata !DIExpression()), !dbg !3143
  %7 = load i8*, i8** %4, align 8, !dbg !3144
  %8 = load i64, i64* %5, align 8, !dbg !3145
  %9 = load i64, i64* %6, align 8, !dbg !3146
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3147
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3148
  ret i8* %11, !dbg !3149
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3150 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3153, metadata !DIExpression()), !dbg !3154
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3155, metadata !DIExpression()), !dbg !3156
  %5 = load i64, i64* %3, align 8, !dbg !3157
  %6 = load i64, i64* %4, align 8, !dbg !3158
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3159
  ret i8* %7, !dbg !3160
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3161 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3164, metadata !DIExpression()), !dbg !3165
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3166, metadata !DIExpression()), !dbg !3167
  %5 = load i64, i64* %3, align 8, !dbg !3168
  %6 = load i64, i64* %4, align 8, !dbg !3169
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3170
  ret i8* %7, !dbg !3171
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3172 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3175, metadata !DIExpression()), !dbg !3176
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3177, metadata !DIExpression()), !dbg !3178
  %5 = load i8*, i8** %3, align 8, !dbg !3179
  %6 = load i64*, i64** %4, align 8, !dbg !3180
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3181
  ret i8* %7, !dbg !3182
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !242 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3183, metadata !DIExpression()), !dbg !3184
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3185, metadata !DIExpression()), !dbg !3186
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3187, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3189, metadata !DIExpression()), !dbg !3190
  %8 = load i64*, i64** %5, align 8, !dbg !3191
  %9 = load i64, i64* %8, align 8, !dbg !3192
  store i64 %9, i64* %7, align 8, !dbg !3190
  %10 = load i8*, i8** %4, align 8, !dbg !3193
  %11 = icmp ne i8* %10, null, !dbg !3193
  br i1 %11, label %26, label %12, !dbg !3195

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3196
  %14 = icmp ne i64 %13, 0, !dbg !3196
  br i1 %14, label %25, label %15, !dbg !3199

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3200
  %17 = udiv i64 128, %16, !dbg !3202
  store i64 %17, i64* %7, align 8, !dbg !3203
  %18 = load i64, i64* %7, align 8, !dbg !3204
  %19 = icmp ne i64 %18, 0, !dbg !3205
  %20 = xor i1 %19, true, !dbg !3205
  %21 = zext i1 %20 to i32, !dbg !3205
  %22 = sext i32 %21 to i64, !dbg !3205
  %23 = load i64, i64* %7, align 8, !dbg !3206
  %24 = add i64 %23, %22, !dbg !3206
  store i64 %24, i64* %7, align 8, !dbg !3206
  br label %25, !dbg !3207

25:                                               ; preds = %15, %12
  br label %36, !dbg !3208

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3209
  %28 = load i64, i64* %7, align 8, !dbg !3209
  %29 = lshr i64 %28, 1, !dbg !3209
  %30 = add i64 %29, 1, !dbg !3209
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3209
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3209
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3209
  store i64 %33, i64* %7, align 8, !dbg !3209
  br i1 %32, label %34, label %35, !dbg !3212

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3213
  unreachable, !dbg !3213

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3214
  %38 = load i64, i64* %7, align 8, !dbg !3215
  %39 = load i64, i64* %6, align 8, !dbg !3216
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3217
  store i8* %40, i8** %4, align 8, !dbg !3218
  %41 = load i64, i64* %7, align 8, !dbg !3219
  %42 = load i64*, i64** %5, align 8, !dbg !3220
  store i64 %41, i64* %42, align 8, !dbg !3221
  %43 = load i8*, i8** %4, align 8, !dbg !3222
  ret i8* %43, !dbg !3223
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3224, metadata !DIExpression()), !dbg !3225
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3226, metadata !DIExpression()), !dbg !3227
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3228, metadata !DIExpression()), !dbg !3229
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3230, metadata !DIExpression()), !dbg !3231
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3232, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3234, metadata !DIExpression()), !dbg !3235
  %15 = load i64*, i64** %7, align 8, !dbg !3236
  %16 = load i64, i64* %15, align 8, !dbg !3237
  store i64 %16, i64* %11, align 8, !dbg !3235
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3238, metadata !DIExpression()), !dbg !3239
  %17 = load i64, i64* %11, align 8, !dbg !3240
  %18 = load i64, i64* %11, align 8, !dbg !3240
  %19 = ashr i64 %18, 1, !dbg !3240
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3240
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3240
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3240
  store i64 %22, i64* %12, align 8, !dbg !3240
  br i1 %21, label %23, label %24, !dbg !3242

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3243
  br label %24, !dbg !3244

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3245
  %26 = icmp sle i64 0, %25, !dbg !3247
  br i1 %26, label %27, label %33, !dbg !3248

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3249
  %29 = load i64, i64* %12, align 8, !dbg !3250
  %30 = icmp slt i64 %28, %29, !dbg !3251
  br i1 %30, label %31, label %33, !dbg !3252

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3253
  store i64 %32, i64* %12, align 8, !dbg !3254
  br label %33, !dbg !3255

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3256, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3258, metadata !DIExpression()), !dbg !3259
  %34 = load i64, i64* %10, align 8, !dbg !3260
  %35 = icmp slt i64 %34, 0, !dbg !3260
  br i1 %35, label %36, label %82, !dbg !3260

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3260
  %38 = icmp slt i64 %37, 0, !dbg !3260
  br i1 %38, label %39, label %62, !dbg !3260

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3260

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3260
  %42 = load i64, i64* %10, align 8, !dbg !3260
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3260
  %44 = icmp slt i64 %41, %43, !dbg !3260
  br i1 %44, label %111, label %115, !dbg !3260

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3260

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3260
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3260
  br i1 %48, label %52, label %53, !dbg !3260

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3260
  %51 = icmp slt i64 0, %50, !dbg !3260
  br i1 %51, label %52, label %53, !dbg !3260

52:                                               ; preds = %49, %46
  br label %57, !dbg !3260

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3260
  %55 = sub nsw i64 0, %54, !dbg !3260
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3260
  br label %57, !dbg !3260

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3260
  %59 = load i64, i64* %12, align 8, !dbg !3260
  %60 = sub nsw i64 -1, %59, !dbg !3260
  %61 = icmp sle i64 %58, %60, !dbg !3260
  br i1 %61, label %111, label %115, !dbg !3260

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3260
  %64 = icmp eq i64 %63, -1, !dbg !3260
  br i1 %64, label %65, label %77, !dbg !3260

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3260

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3260
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3260
  %69 = icmp slt i64 0, %68, !dbg !3260
  br i1 %69, label %111, label %115, !dbg !3260

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3260
  %72 = icmp slt i64 0, %71, !dbg !3260
  br i1 %72, label %73, label %115, !dbg !3260

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3260
  %75 = sub nsw i64 %74, 1, !dbg !3260
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3260
  br i1 %76, label %111, label %115, !dbg !3260

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3260
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3260
  %80 = load i64, i64* %12, align 8, !dbg !3260
  %81 = icmp slt i64 %79, %80, !dbg !3260
  br i1 %81, label %111, label %115, !dbg !3260

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3260
  %84 = icmp eq i64 %83, 0, !dbg !3260
  br i1 %84, label %85, label %86, !dbg !3260

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3260

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3260
  %88 = icmp slt i64 %87, 0, !dbg !3260
  br i1 %88, label %89, label %106, !dbg !3260

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3260
  %91 = icmp eq i64 %90, -1, !dbg !3260
  br i1 %91, label %92, label %101, !dbg !3260

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3260

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3260
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3260
  %96 = icmp slt i64 0, %95, !dbg !3260
  br i1 %96, label %111, label %115, !dbg !3260

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3260
  %99 = sub nsw i64 %98, 1, !dbg !3260
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3260
  br i1 %100, label %111, label %115, !dbg !3260

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3260
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3260
  %104 = load i64, i64* %10, align 8, !dbg !3260
  %105 = icmp slt i64 %103, %104, !dbg !3260
  br i1 %105, label %111, label %115, !dbg !3260

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3260
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3260
  %109 = load i64, i64* %12, align 8, !dbg !3260
  %110 = icmp slt i64 %108, %109, !dbg !3260
  br i1 %110, label %111, label %115, !dbg !3260

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3260
  %113 = load i64, i64* %10, align 8, !dbg !3260
  %114 = mul i64 %112, %113, !dbg !3260
  store i64 %114, i64* %13, align 8, !dbg !3260
  br label %119, !dbg !3260

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3260
  %117 = load i64, i64* %10, align 8, !dbg !3260
  %118 = mul i64 %116, %117, !dbg !3260
  store i64 %118, i64* %13, align 8, !dbg !3260
  br label %119, !dbg !3260

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3260
  %121 = icmp ne i32 %120, 0, !dbg !3260
  br i1 %121, label %122, label %123, !dbg !3260

122:                                              ; preds = %119
  br label %129, !dbg !3260

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3261
  %125 = icmp slt i64 %124, 128, !dbg !3262
  %126 = zext i1 %125 to i64, !dbg !3261
  %127 = select i1 %125, i32 128, i32 0, !dbg !3261
  %128 = sext i32 %127 to i64, !dbg !3261
  br label %129, !dbg !3260

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3260
  store i64 %130, i64* %14, align 8, !dbg !3259
  %131 = load i64, i64* %14, align 8, !dbg !3263
  %132 = icmp ne i64 %131, 0, !dbg !3263
  br i1 %132, label %133, label %142, !dbg !3265

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3266
  %135 = load i64, i64* %10, align 8, !dbg !3268
  %136 = sdiv i64 %134, %135, !dbg !3269
  store i64 %136, i64* %12, align 8, !dbg !3270
  %137 = load i64, i64* %14, align 8, !dbg !3271
  %138 = load i64, i64* %14, align 8, !dbg !3272
  %139 = load i64, i64* %10, align 8, !dbg !3273
  %140 = srem i64 %138, %139, !dbg !3274
  %141 = sub nsw i64 %137, %140, !dbg !3275
  store i64 %141, i64* %13, align 8, !dbg !3276
  br label %142, !dbg !3277

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3278
  %144 = icmp ne i8* %143, null, !dbg !3278
  br i1 %144, label %147, label %145, !dbg !3280

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3281
  store i64 0, i64* %146, align 8, !dbg !3282
  br label %147, !dbg !3283

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3284
  %149 = load i64, i64* %11, align 8, !dbg !3286
  %150 = sub nsw i64 %148, %149, !dbg !3287
  %151 = load i64, i64* %8, align 8, !dbg !3288
  %152 = icmp slt i64 %150, %151, !dbg !3289
  br i1 %152, label %153, label %256, !dbg !3290

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3291
  %155 = load i64, i64* %8, align 8, !dbg !3291
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3291
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3291
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3291
  store i64 %158, i64* %12, align 8, !dbg !3291
  br i1 %157, label %255, label %159, !dbg !3292

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3293
  %161 = icmp sle i64 0, %160, !dbg !3294
  br i1 %161, label %162, label %166, !dbg !3295

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3296
  %164 = load i64, i64* %12, align 8, !dbg !3297
  %165 = icmp slt i64 %163, %164, !dbg !3298
  br i1 %165, label %255, label %166, !dbg !3299

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3300
  %168 = icmp slt i64 %167, 0, !dbg !3300
  br i1 %168, label %169, label %215, !dbg !3300

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3300
  %171 = icmp slt i64 %170, 0, !dbg !3300
  br i1 %171, label %172, label %195, !dbg !3300

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3300

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3300
  %175 = load i64, i64* %10, align 8, !dbg !3300
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3300
  %177 = icmp slt i64 %174, %176, !dbg !3300
  br i1 %177, label %244, label %248, !dbg !3300

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3300

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3300
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3300
  br i1 %181, label %185, label %186, !dbg !3300

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3300
  %184 = icmp slt i64 0, %183, !dbg !3300
  br i1 %184, label %185, label %186, !dbg !3300

185:                                              ; preds = %182, %179
  br label %190, !dbg !3300

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3300
  %188 = sub nsw i64 0, %187, !dbg !3300
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3300
  br label %190, !dbg !3300

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3300
  %192 = load i64, i64* %12, align 8, !dbg !3300
  %193 = sub nsw i64 -1, %192, !dbg !3300
  %194 = icmp sle i64 %191, %193, !dbg !3300
  br i1 %194, label %244, label %248, !dbg !3300

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3300
  %197 = icmp eq i64 %196, -1, !dbg !3300
  br i1 %197, label %198, label %210, !dbg !3300

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3300

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3300
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3300
  %202 = icmp slt i64 0, %201, !dbg !3300
  br i1 %202, label %244, label %248, !dbg !3300

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3300
  %205 = icmp slt i64 0, %204, !dbg !3300
  br i1 %205, label %206, label %248, !dbg !3300

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3300
  %208 = sub nsw i64 %207, 1, !dbg !3300
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3300
  br i1 %209, label %244, label %248, !dbg !3300

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3300
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3300
  %213 = load i64, i64* %12, align 8, !dbg !3300
  %214 = icmp slt i64 %212, %213, !dbg !3300
  br i1 %214, label %244, label %248, !dbg !3300

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3300
  %217 = icmp eq i64 %216, 0, !dbg !3300
  br i1 %217, label %218, label %219, !dbg !3300

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3300

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3300
  %221 = icmp slt i64 %220, 0, !dbg !3300
  br i1 %221, label %222, label %239, !dbg !3300

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3300
  %224 = icmp eq i64 %223, -1, !dbg !3300
  br i1 %224, label %225, label %234, !dbg !3300

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3300

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3300
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3300
  %229 = icmp slt i64 0, %228, !dbg !3300
  br i1 %229, label %244, label %248, !dbg !3300

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3300
  %232 = sub nsw i64 %231, 1, !dbg !3300
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3300
  br i1 %233, label %244, label %248, !dbg !3300

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3300
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3300
  %237 = load i64, i64* %10, align 8, !dbg !3300
  %238 = icmp slt i64 %236, %237, !dbg !3300
  br i1 %238, label %244, label %248, !dbg !3300

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3300
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3300
  %242 = load i64, i64* %12, align 8, !dbg !3300
  %243 = icmp slt i64 %241, %242, !dbg !3300
  br i1 %243, label %244, label %248, !dbg !3300

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3300
  %246 = load i64, i64* %10, align 8, !dbg !3300
  %247 = mul i64 %245, %246, !dbg !3300
  store i64 %247, i64* %13, align 8, !dbg !3300
  br label %252, !dbg !3300

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3300
  %250 = load i64, i64* %10, align 8, !dbg !3300
  %251 = mul i64 %249, %250, !dbg !3300
  store i64 %251, i64* %13, align 8, !dbg !3300
  br label %252, !dbg !3300

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3300
  %254 = icmp ne i32 %253, 0, !dbg !3300
  br i1 %254, label %255, label %256, !dbg !3301

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3302
  unreachable, !dbg !3302

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3303
  %258 = load i64, i64* %13, align 8, !dbg !3304
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !3305
  store i8* %259, i8** %6, align 8, !dbg !3306
  %260 = load i64, i64* %12, align 8, !dbg !3307
  %261 = load i64*, i64** %7, align 8, !dbg !3308
  store i64 %260, i64* %261, align 8, !dbg !3309
  %262 = load i8*, i8** %6, align 8, !dbg !3310
  ret i8* %262, !dbg !3311
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3312 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3313, metadata !DIExpression()), !dbg !3314
  %3 = load i64, i64* %2, align 8, !dbg !3315
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3316
  ret i8* %4, !dbg !3317
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3318 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3319, metadata !DIExpression()), !dbg !3320
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3321, metadata !DIExpression()), !dbg !3322
  %5 = load i64, i64* %3, align 8, !dbg !3323
  %6 = load i64, i64* %4, align 8, !dbg !3324
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3325
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3326
  ret i8* %8, !dbg !3327
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3328 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3329, metadata !DIExpression()), !dbg !3330
  %3 = load i64, i64* %2, align 8, !dbg !3331
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3332
  ret i8* %4, !dbg !3333
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3334 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3335, metadata !DIExpression()), !dbg !3336
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3337, metadata !DIExpression()), !dbg !3338
  %5 = load i64, i64* %3, align 8, !dbg !3339
  %6 = load i64, i64* %4, align 8, !dbg !3340
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3341
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3342
  ret i8* %8, !dbg !3343
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3344 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3349, metadata !DIExpression()), !dbg !3350
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3351, metadata !DIExpression()), !dbg !3352
  %5 = load i64, i64* %4, align 8, !dbg !3353
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !3354
  %7 = load i8*, i8** %3, align 8, !dbg !3355
  %8 = load i64, i64* %4, align 8, !dbg !3356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3357
  ret i8* %6, !dbg !3358
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3359 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3362, metadata !DIExpression()), !dbg !3363
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3364, metadata !DIExpression()), !dbg !3365
  %5 = load i64, i64* %4, align 8, !dbg !3366
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !3367
  %7 = load i8*, i8** %3, align 8, !dbg !3368
  %8 = load i64, i64* %4, align 8, !dbg !3369
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3370
  ret i8* %6, !dbg !3371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3372 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3375, metadata !DIExpression()), !dbg !3376
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3377, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3379, metadata !DIExpression()), !dbg !3380
  %6 = load i64, i64* %4, align 8, !dbg !3381
  %7 = add nsw i64 %6, 1, !dbg !3382
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !3383
  store i8* %8, i8** %5, align 8, !dbg !3380
  %9 = load i8*, i8** %5, align 8, !dbg !3384
  %10 = load i64, i64* %4, align 8, !dbg !3385
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3384
  store i8 0, i8* %11, align 1, !dbg !3386
  %12 = load i8*, i8** %5, align 8, !dbg !3387
  %13 = load i8*, i8** %3, align 8, !dbg !3388
  %14 = load i64, i64* %4, align 8, !dbg !3389
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3390
  ret i8* %12, !dbg !3391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3392 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3393, metadata !DIExpression()), !dbg !3394
  %3 = load i8*, i8** %2, align 8, !dbg !3395
  %4 = load i8*, i8** %2, align 8, !dbg !3396
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3397
  %6 = add i64 %5, 1, !dbg !3398
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !3399
  ret i8* %7, !dbg !3400
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3401 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3402, metadata !DIExpression()), !dbg !3405
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3405
  store i32 %2, i32* %1, align 4, !dbg !3405
  %3 = load i32, i32* %1, align 4, !dbg !3405
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.143, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.144, i64 0, i64 0)) #18, !dbg !3405
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i64 0, i64 0), i8* noundef %4), !dbg !3405
  %5 = load i32, i32* %1, align 4, !dbg !3405
  %6 = icmp ne i32 %5, 0, !dbg !3405
  br i1 %6, label %7, label %9, !dbg !3405

7:                                                ; preds = %0
  unreachable, !dbg !3405

8:                                                ; No predecessors!
  br label %10, !dbg !3405

9:                                                ; preds = %0
  br label %10, !dbg !3405

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3406
  unreachable, !dbg !3406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3407 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3413, metadata !DIExpression()), !dbg !3414
  %3 = load i32, i32* %2, align 4, !dbg !3415
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3416
  ret i32 %4, !dbg !3417
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3418 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3455, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3457, metadata !DIExpression()), !dbg !3459
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3460
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3461
  %9 = icmp ne i64 %8, 0, !dbg !3462
  %10 = zext i1 %9 to i8, !dbg !3459
  store i8 %10, i8* %4, align 1, !dbg !3459
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3463, metadata !DIExpression()), !dbg !3464
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3465
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3465
  %13 = icmp ne i32 %12, 0, !dbg !3466
  %14 = zext i1 %13 to i8, !dbg !3464
  store i8 %14, i8* %5, align 1, !dbg !3464
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3467, metadata !DIExpression()), !dbg !3468
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3469
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3470
  %17 = icmp ne i32 %16, 0, !dbg !3471
  %18 = zext i1 %17 to i8, !dbg !3468
  store i8 %18, i8* %6, align 1, !dbg !3468
  %19 = load i8, i8* %5, align 1, !dbg !3472
  %20 = trunc i8 %19 to i1, !dbg !3472
  br i1 %20, label %31, label %21, !dbg !3474

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3475
  %23 = trunc i8 %22 to i1, !dbg !3475
  br i1 %23, label %24, label %37, !dbg !3476

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3477
  %26 = trunc i8 %25 to i1, !dbg !3477
  br i1 %26, label %31, label %27, !dbg !3478

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3479
  %29 = load i32, i32* %28, align 4, !dbg !3479
  %30 = icmp ne i32 %29, 9, !dbg !3480
  br i1 %30, label %31, label %37, !dbg !3481

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3482
  %33 = trunc i8 %32 to i1, !dbg !3482
  br i1 %33, label %36, label %34, !dbg !3485

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3486
  store i32 0, i32* %35, align 4, !dbg !3487
  br label %36, !dbg !3486

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3488
  br label %38, !dbg !3488

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3489
  br label %38, !dbg !3489

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3490
  ret i32 %39, !dbg !3490
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3491 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3528, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3530, metadata !DIExpression()), !dbg !3531
  store i32 0, i32* %4, align 4, !dbg !3531
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3532, metadata !DIExpression()), !dbg !3533
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3534
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !3535
  store i32 %8, i32* %5, align 4, !dbg !3533
  %9 = load i32, i32* %5, align 4, !dbg !3536
  %10 = icmp slt i32 %9, 0, !dbg !3538
  br i1 %10, label %11, label %14, !dbg !3539

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3540
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3541
  store i32 %13, i32* %2, align 4, !dbg !3542
  br label %40, !dbg !3542

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3543
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !3543
  %17 = icmp ne i32 %16, 0, !dbg !3543
  br i1 %17, label %18, label %23, !dbg !3545

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3546
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !3547
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !3548
  %22 = icmp ne i64 %21, -1, !dbg !3549
  br i1 %22, label %23, label %30, !dbg !3550

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3551
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !3552
  %26 = icmp ne i32 %25, 0, !dbg !3552
  br i1 %26, label %27, label %30, !dbg !3553

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !3554
  %29 = load i32, i32* %28, align 4, !dbg !3554
  store i32 %29, i32* %4, align 4, !dbg !3555
  br label %30, !dbg !3556

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3557, metadata !DIExpression()), !dbg !3558
  store i32 0, i32* %6, align 4, !dbg !3558
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3559
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !3560
  store i32 %32, i32* %6, align 4, !dbg !3561
  %33 = load i32, i32* %4, align 4, !dbg !3562
  %34 = icmp ne i32 %33, 0, !dbg !3564
  br i1 %34, label %35, label %38, !dbg !3565

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3566
  %37 = call i32* @__errno_location() #21, !dbg !3568
  store i32 %36, i32* %37, align 4, !dbg !3569
  store i32 -1, i32* %6, align 4, !dbg !3570
  br label %38, !dbg !3571

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3572
  store i32 %39, i32* %2, align 4, !dbg !3573
  br label %40, !dbg !3573

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3574
  ret i32 %41, !dbg !3574
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !3575 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3612, metadata !DIExpression()), !dbg !3613
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3614
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3616
  br i1 %5, label %10, label %6, !dbg !3617

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3618
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !3618
  %9 = icmp ne i32 %8, 0, !dbg !3618
  br i1 %9, label %13, label %10, !dbg !3619

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3620
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !3621
  store i32 %12, i32* %2, align 4, !dbg !3622
  br label %17, !dbg !3622

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3623
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !3624
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3625
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !3626
  store i32 %16, i32* %2, align 4, !dbg !3627
  br label %17, !dbg !3627

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3628
  ret i32 %18, !dbg !3628
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !3629 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3632, metadata !DIExpression()), !dbg !3633
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3634
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !3636
  %5 = load i32, i32* %4, align 8, !dbg !3636
  %6 = and i32 %5, 256, !dbg !3637
  %7 = icmp ne i32 %6, 0, !dbg !3637
  br i1 %7, label %8, label %11, !dbg !3638

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3639
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !3640
  br label %11, !dbg !3640

11:                                               ; preds = %8, %1
  ret void, !dbg !3641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !3642 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3680, metadata !DIExpression()), !dbg !3681
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3682, metadata !DIExpression()), !dbg !3683
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3684, metadata !DIExpression()), !dbg !3685
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3686
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !3688
  %11 = load i8*, i8** %10, align 8, !dbg !3688
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3689
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !3690
  %14 = load i8*, i8** %13, align 8, !dbg !3690
  %15 = icmp eq i8* %11, %14, !dbg !3691
  br i1 %15, label %16, label %46, !dbg !3692

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3693
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !3694
  %19 = load i8*, i8** %18, align 8, !dbg !3694
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3695
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !3696
  %22 = load i8*, i8** %21, align 8, !dbg !3696
  %23 = icmp eq i8* %19, %22, !dbg !3697
  br i1 %23, label %24, label %46, !dbg !3698

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3699
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !3700
  %27 = load i8*, i8** %26, align 8, !dbg !3700
  %28 = icmp eq i8* %27, null, !dbg !3701
  br i1 %28, label %29, label %46, !dbg !3702

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3703, metadata !DIExpression()), !dbg !3705
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3706
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !3707
  %32 = load i64, i64* %6, align 8, !dbg !3708
  %33 = load i32, i32* %7, align 4, !dbg !3709
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !3710
  store i64 %34, i64* %8, align 8, !dbg !3705
  %35 = load i64, i64* %8, align 8, !dbg !3711
  %36 = icmp eq i64 %35, -1, !dbg !3713
  br i1 %36, label %37, label %38, !dbg !3714

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3715
  br label %51, !dbg !3715

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3717
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !3718
  %41 = load i32, i32* %40, align 8, !dbg !3719
  %42 = and i32 %41, -17, !dbg !3719
  store i32 %42, i32* %40, align 8, !dbg !3719
  %43 = load i64, i64* %8, align 8, !dbg !3720
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3721
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !3722
  store i64 %43, i64* %45, align 8, !dbg !3723
  store i32 0, i32* %4, align 4, !dbg !3724
  br label %51, !dbg !3724

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3725
  %48 = load i64, i64* %6, align 8, !dbg !3726
  %49 = load i32, i32* %7, align 4, !dbg !3727
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !3728
  store i32 %50, i32* %4, align 4, !dbg !3729
  br label %51, !dbg !3729

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !3730
  ret i32 %52, !dbg !3730
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !3731 {
  %1 = call i32* @__errno_location() #21, !dbg !3734
  store i32 12, i32* %1, align 4, !dbg !3735
  ret i8* null, !dbg !3736
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !3737 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3738, metadata !DIExpression()), !dbg !3739
  %3 = load i64, i64* %2, align 8, !dbg !3740
  %4 = icmp ule i64 %3, -1, !dbg !3741
  br i1 %4, label %5, label %8, !dbg !3740

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !3742
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !3743
  br label %10, !dbg !3740

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !3744
  br label %10, !dbg !3740

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !3740
  ret i8* %11, !dbg !3745
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3746 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3747, metadata !DIExpression()), !dbg !3748
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3749, metadata !DIExpression()), !dbg !3750
  %5 = load i64, i64* %4, align 8, !dbg !3751
  %6 = icmp ule i64 %5, -1, !dbg !3752
  br i1 %6, label %7, label %11, !dbg !3751

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !3753
  %9 = load i64, i64* %4, align 8, !dbg !3754
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !3755
  br label %13, !dbg !3751

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3756
  br label %13, !dbg !3751

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !3751
  ret i8* %14, !dbg !3757
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !3758 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3759, metadata !DIExpression()), !dbg !3760
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3761, metadata !DIExpression()), !dbg !3762
  %6 = load i64, i64* %4, align 8, !dbg !3763
  %7 = icmp ult i64 -1, %6, !dbg !3765
  br i1 %7, label %8, label %14, !dbg !3766

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !3767
  %10 = icmp ne i64 %9, 0, !dbg !3770
  br i1 %10, label %11, label %13, !dbg !3771

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3772
  store i8* %12, i8** %3, align 8, !dbg !3773
  br label %27, !dbg !3773

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !3774
  br label %14, !dbg !3775

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !3776
  %16 = icmp ult i64 -1, %15, !dbg !3778
  br i1 %16, label %17, label %23, !dbg !3779

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !3780
  %19 = icmp ne i64 %18, 0, !dbg !3783
  br i1 %19, label %20, label %22, !dbg !3784

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !3785
  store i8* %21, i8** %3, align 8, !dbg !3786
  br label %27, !dbg !3786

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !3787
  br label %23, !dbg !3788

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !3789
  %25 = load i64, i64* %5, align 8, !dbg !3790
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !3791
  store i8* %26, i8** %3, align 8, !dbg !3792
  br label %27, !dbg !3792

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !3793
  ret i8* %28, !dbg !3793
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3794 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3795, metadata !DIExpression()), !dbg !3796
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3797, metadata !DIExpression()), !dbg !3798
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3799, metadata !DIExpression()), !dbg !3800
  %7 = load i64, i64* %5, align 8, !dbg !3801
  %8 = icmp ule i64 %7, -1, !dbg !3802
  br i1 %8, label %9, label %17, !dbg !3803

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !3804
  %11 = icmp ule i64 %10, -1, !dbg !3805
  br i1 %11, label %12, label %17, !dbg !3801

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !3806
  %14 = load i64, i64* %5, align 8, !dbg !3807
  %15 = load i64, i64* %6, align 8, !dbg !3808
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !3809
  br label %19, !dbg !3801

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !3810
  br label %19, !dbg !3801

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !3801
  ret i8* %20, !dbg !3811
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !3812 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3817, metadata !DIExpression()), !dbg !3818
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3819, metadata !DIExpression()), !dbg !3820
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3821, metadata !DIExpression()), !dbg !3822
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !3823, metadata !DIExpression()), !dbg !3824
  %11 = load i8*, i8** %7, align 8, !dbg !3825
  %12 = icmp eq i8* %11, null, !dbg !3827
  br i1 %12, label %13, label %14, !dbg !3828

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !3829
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.166, i64 0, i64 0), i8** %7, align 8, !dbg !3831
  store i64 1, i64* %8, align 8, !dbg !3832
  br label %14, !dbg !3833

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3834
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !3836
  br i1 %16, label %17, label %18, !dbg !3837

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !3838
  br label %18, !dbg !3839

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3840, metadata !DIExpression()), !dbg !3841
  %19 = load i32*, i32** %6, align 8, !dbg !3842
  %20 = load i8*, i8** %7, align 8, !dbg !3843
  %21 = load i64, i64* %8, align 8, !dbg !3844
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3845
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !3846
  store i64 %23, i64* %10, align 8, !dbg !3841
  %24 = load i64, i64* %10, align 8, !dbg !3847
  %25 = icmp ult i64 %24, -3, !dbg !3849
  br i1 %25, label %26, label %32, !dbg !3850

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3851
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !3852
  %29 = icmp ne i32 %28, 0, !dbg !3852
  br i1 %29, label %32, label %30, !dbg !3853

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3854
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !3855
  br label %32, !dbg !3855

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !3856
  %34 = icmp eq i64 %33, -3, !dbg !3858
  br i1 %34, label %35, label %36, !dbg !3859

35:                                               ; preds = %32
  call void @abort() #19, !dbg !3860
  unreachable, !dbg !3860

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !3861
  %38 = icmp ule i64 -2, %37, !dbg !3863
  br i1 %38, label %39, label %53, !dbg !3864

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !3865
  %41 = icmp ne i64 %40, 0, !dbg !3866
  br i1 %41, label %42, label %53, !dbg !3867

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !3868
  br i1 %43, label %53, label %44, !dbg !3869

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !3870
  %46 = icmp ne i32* %45, null, !dbg !3873
  br i1 %46, label %47, label %52, !dbg !3874

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !3875
  %49 = load i8, i8* %48, align 1, !dbg !3876
  %50 = zext i8 %49 to i32, !dbg !3877
  %51 = load i32*, i32** %6, align 8, !dbg !3878
  store i32 %50, i32* %51, align 4, !dbg !3879
  br label %52, !dbg !3880

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !3881
  br label %55, !dbg !3881

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !3882
  store i64 %54, i64* %5, align 8, !dbg !3883
  br label %55, !dbg !3883

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !3884
  ret i64 %56, !dbg !3884
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !3885 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !3900, metadata !DIExpression()), !dbg !3901
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !3902
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !3903
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !3903
  ret void, !dbg !3904
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3905 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3908, metadata !DIExpression()), !dbg !3909
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3910, metadata !DIExpression()), !dbg !3911
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3912, metadata !DIExpression()), !dbg !3913
  %7 = load i8*, i8** %4, align 8, !dbg !3914
  %8 = load i8*, i8** %5, align 8, !dbg !3915
  %9 = load i64, i64* %6, align 8, !dbg !3916
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !3917
  %11 = icmp ne i32 %10, 0, !dbg !3918
  %12 = xor i1 %11, true, !dbg !3918
  ret i1 %12, !dbg !3919
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3920 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3922, metadata !DIExpression()), !dbg !3923
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3924, metadata !DIExpression()), !dbg !3925
  %5 = load i8*, i8** %3, align 8, !dbg !3926
  %6 = load i64, i64* %4, align 8, !dbg !3927
  %7 = icmp ne i64 %6, 0, !dbg !3927
  br i1 %7, label %8, label %10, !dbg !3927

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !3928
  br label %11, !dbg !3927

10:                                               ; preds = %2
  br label %11, !dbg !3927

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !3927
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !3929
  ret i8* %13, !dbg !3930
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3931 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3932, metadata !DIExpression()), !dbg !3933
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3934, metadata !DIExpression()), !dbg !3935
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3936, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3938, metadata !DIExpression()), !dbg !3939
  %9 = load i64, i64* %7, align 8, !dbg !3940
  %10 = icmp ult i64 %9, 0, !dbg !3940
  br i1 %10, label %11, label %60, !dbg !3940

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !3940
  %13 = icmp ult i64 %12, 0, !dbg !3940
  br i1 %13, label %14, label %37, !dbg !3940

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !3940

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !3940
  %17 = load i64, i64* %7, align 8, !dbg !3940
  %18 = udiv i64 -1, %17, !dbg !3940
  %19 = icmp ult i64 %16, %18, !dbg !3940
  br i1 %19, label %92, label %96, !dbg !3940

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !3940

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !3940
  %23 = icmp ult i64 %22, 1, !dbg !3940
  br i1 %23, label %27, label %28, !dbg !3940

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !3940
  %26 = icmp ult i64 0, %25, !dbg !3940
  br i1 %26, label %27, label %28, !dbg !3940

27:                                               ; preds = %24, %21
  br label %32, !dbg !3940

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !3940
  %30 = sub i64 0, %29, !dbg !3940
  %31 = udiv i64 -1, %30, !dbg !3940
  br label %32, !dbg !3940

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !3940
  %34 = load i64, i64* %6, align 8, !dbg !3940
  %35 = sub i64 -1, %34, !dbg !3940
  %36 = icmp ule i64 %33, %35, !dbg !3940
  br i1 %36, label %92, label %96, !dbg !3940

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !3940

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !3940

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !3940

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !3940
  %42 = icmp eq i64 %41, -1, !dbg !3940
  br i1 %42, label %43, label %55, !dbg !3940

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !3940

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !3940
  %46 = add i64 %45, 0, !dbg !3940
  %47 = icmp ult i64 0, %46, !dbg !3940
  br i1 %47, label %92, label %96, !dbg !3940

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !3940
  %50 = icmp ult i64 0, %49, !dbg !3940
  br i1 %50, label %51, label %96, !dbg !3940

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !3940
  %53 = sub i64 %52, 1, !dbg !3940
  %54 = icmp ult i64 -1, %53, !dbg !3940
  br i1 %54, label %92, label %96, !dbg !3940

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !3940
  %57 = udiv i64 0, %56, !dbg !3940
  %58 = load i64, i64* %6, align 8, !dbg !3940
  %59 = icmp ult i64 %57, %58, !dbg !3940
  br i1 %59, label %92, label %96, !dbg !3940

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !3940
  %62 = icmp eq i64 %61, 0, !dbg !3940
  br i1 %62, label %63, label %64, !dbg !3940

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !3940

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !3940
  %66 = icmp ult i64 %65, 0, !dbg !3940
  br i1 %66, label %67, label %87, !dbg !3940

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !3940

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !3940

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !3940

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !3940
  %72 = icmp eq i64 %71, -1, !dbg !3940
  br i1 %72, label %73, label %82, !dbg !3940

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !3940

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !3940
  %76 = add i64 %75, 0, !dbg !3940
  %77 = icmp ult i64 0, %76, !dbg !3940
  br i1 %77, label %92, label %96, !dbg !3940

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !3940
  %80 = sub i64 %79, 1, !dbg !3940
  %81 = icmp ult i64 -1, %80, !dbg !3940
  br i1 %81, label %92, label %96, !dbg !3940

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !3940
  %84 = udiv i64 0, %83, !dbg !3940
  %85 = load i64, i64* %7, align 8, !dbg !3940
  %86 = icmp ult i64 %84, %85, !dbg !3940
  br i1 %86, label %92, label %96, !dbg !3940

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !3940
  %89 = udiv i64 -1, %88, !dbg !3940
  %90 = load i64, i64* %6, align 8, !dbg !3940
  %91 = icmp ult i64 %89, %90, !dbg !3940
  br i1 %91, label %92, label %96, !dbg !3940

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !3940
  %94 = load i64, i64* %7, align 8, !dbg !3940
  %95 = mul i64 %93, %94, !dbg !3940
  store i64 %95, i64* %8, align 8, !dbg !3940
  br label %100, !dbg !3940

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !3940
  %98 = load i64, i64* %7, align 8, !dbg !3940
  %99 = mul i64 %97, %98, !dbg !3940
  store i64 %99, i64* %8, align 8, !dbg !3940
  br label %100, !dbg !3940

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !3940
  %102 = icmp ne i32 %101, 0, !dbg !3940
  br i1 %102, label %103, label %105, !dbg !3942

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !3943
  store i32 12, i32* %104, align 4, !dbg !3945
  store i8* null, i8** %4, align 8, !dbg !3946
  br label %109, !dbg !3946

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !3947
  %107 = load i64, i64* %8, align 8, !dbg !3948
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !3949
  store i8* %108, i8** %4, align 8, !dbg !3950
  br label %109, !dbg !3950

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !3951
  ret i8* %110, !dbg !3951
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !3952 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !3957, metadata !DIExpression()), !dbg !3961
  %5 = load i32, i32* %3, align 4, !dbg !3962
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3964
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !3965
  %8 = icmp ne i32 %7, 0, !dbg !3965
  br i1 %8, label %9, label %10, !dbg !3966

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3967
  br label %18, !dbg !3967

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3968
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.177, i64 0, i64 0)), !dbg !3970
  br i1 %12, label %17, label %13, !dbg !3971

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3972
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.178, i64 0, i64 0)), !dbg !3973
  br i1 %15, label %17, label %16, !dbg !3974

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !3975
  br label %18, !dbg !3975

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !3976
  br label %18, !dbg !3976

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !3977
  ret i1 %19, !dbg !3977
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !3978 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3981, metadata !DIExpression()), !dbg !3982
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3983, metadata !DIExpression()), !dbg !3984
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3985, metadata !DIExpression()), !dbg !3986
  %7 = load i32, i32* %4, align 4, !dbg !3987
  %8 = load i8*, i8** %5, align 8, !dbg !3988
  %9 = load i64, i64* %6, align 8, !dbg !3989
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3990
  ret i32 %10, !dbg !3991
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !3992 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3995, metadata !DIExpression()), !dbg !3996
  %3 = load i32, i32* %2, align 4, !dbg !3997
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !3998
  ret i8* %4, !dbg !3999
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4000 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4001, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4003, metadata !DIExpression()), !dbg !4004
  %4 = load i32, i32* %2, align 4, !dbg !4005
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4006
  store i8* %5, i8** %3, align 8, !dbg !4004
  %6 = load i8*, i8** %3, align 8, !dbg !4007
  ret i8* %6, !dbg !4008
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4009 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4010, metadata !DIExpression()), !dbg !4011
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4012, metadata !DIExpression()), !dbg !4013
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4014, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4016, metadata !DIExpression()), !dbg !4017
  %10 = load i32, i32* %5, align 4, !dbg !4018
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4019
  store i8* %11, i8** %8, align 8, !dbg !4017
  %12 = load i8*, i8** %8, align 8, !dbg !4020
  %13 = icmp eq i8* %12, null, !dbg !4022
  br i1 %13, label %14, label %21, !dbg !4023

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4024
  %16 = icmp ugt i64 %15, 0, !dbg !4027
  br i1 %16, label %17, label %20, !dbg !4028

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4029
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4029
  store i8 0, i8* %19, align 1, !dbg !4030
  br label %20, !dbg !4029

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4031
  br label %45, !dbg !4031

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4032, metadata !DIExpression()), !dbg !4034
  %22 = load i8*, i8** %8, align 8, !dbg !4035
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4036
  store i64 %23, i64* %9, align 8, !dbg !4034
  %24 = load i64, i64* %9, align 8, !dbg !4037
  %25 = load i64, i64* %7, align 8, !dbg !4039
  %26 = icmp ult i64 %24, %25, !dbg !4040
  br i1 %26, label %27, label %32, !dbg !4041

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4042
  %29 = load i8*, i8** %8, align 8, !dbg !4044
  %30 = load i64, i64* %9, align 8, !dbg !4045
  %31 = add i64 %30, 1, !dbg !4046
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4047
  store i32 0, i32* %4, align 4, !dbg !4048
  br label %45, !dbg !4048

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4049
  %34 = icmp ugt i64 %33, 0, !dbg !4052
  br i1 %34, label %35, label %44, !dbg !4053

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4054
  %37 = load i8*, i8** %8, align 8, !dbg !4056
  %38 = load i64, i64* %7, align 8, !dbg !4057
  %39 = sub i64 %38, 1, !dbg !4058
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4059
  %40 = load i8*, i8** %6, align 8, !dbg !4060
  %41 = load i64, i64* %7, align 8, !dbg !4061
  %42 = sub i64 %41, 1, !dbg !4062
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4060
  store i8 0, i8* %43, align 1, !dbg !4063
  br label %44, !dbg !4064

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4065
  br label %45, !dbg !4065

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4066
  ret i32 %46, !dbg !4066
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
!10 = !DIFile(filename: "src/unlink.c", directory: "/src", checksumkind: CSK_MD5, checksum: "db068e42b0dc801df6f06dd298eed8bd")
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
!317 = !DILocation(line: 48, column: 7, scope: !312)
!318 = !DILocation(line: 49, column: 7, scope: !312)
!319 = !DILocation(line: 50, column: 7, scope: !312)
!320 = !DILocation(line: 52, column: 9, scope: !299)
!321 = !DILocation(line: 52, column: 3, scope: !299)
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
!578 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 56, type: !579, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !47)
!579 = !DISubroutineType(types: !580)
!580 = !{!44, !44, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!582 = !DILocalVariable(name: "argc", arg: 1, scope: !578, file: !10, line: 56, type: !44)
!583 = !DILocation(line: 56, column: 11, scope: !578)
!584 = !DILocalVariable(name: "argv", arg: 2, scope: !578, file: !10, line: 56, type: !581)
!585 = !DILocation(line: 56, column: 24, scope: !578)
!586 = !DILocation(line: 59, column: 21, scope: !578)
!587 = !DILocation(line: 59, column: 3, scope: !578)
!588 = !DILocation(line: 60, column: 3, scope: !578)
!589 = !DILocation(line: 61, column: 3, scope: !578)
!590 = !DILocation(line: 62, column: 3, scope: !578)
!591 = !DILocation(line: 64, column: 3, scope: !578)
!592 = !DILocation(line: 66, column: 36, scope: !578)
!593 = !DILocation(line: 66, column: 42, scope: !578)
!594 = !DILocation(line: 67, column: 36, scope: !578)
!595 = !DILocation(line: 67, column: 58, scope: !578)
!596 = !DILocation(line: 66, column: 3, scope: !578)
!597 = !DILocation(line: 70, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !578, file: !10, line: 70, column: 7)
!599 = !DILocation(line: 70, column: 14, scope: !598)
!600 = !DILocation(line: 70, column: 21, scope: !598)
!601 = !DILocation(line: 70, column: 12, scope: !598)
!602 = !DILocation(line: 70, column: 7, scope: !578)
!603 = !DILocation(line: 72, column: 7, scope: !604)
!604 = distinct !DILexicalBlock(scope: !598, file: !10, line: 71, column: 5)
!605 = !DILocation(line: 73, column: 7, scope: !604)
!606 = !DILocation(line: 76, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !578, file: !10, line: 76, column: 7)
!608 = !DILocation(line: 76, column: 14, scope: !607)
!609 = !DILocation(line: 76, column: 20, scope: !607)
!610 = !DILocation(line: 76, column: 18, scope: !607)
!611 = !DILocation(line: 76, column: 7, scope: !578)
!612 = !DILocation(line: 78, column: 7, scope: !613)
!613 = distinct !DILexicalBlock(scope: !607, file: !10, line: 77, column: 5)
!614 = !DILocation(line: 79, column: 7, scope: !613)
!615 = !DILocation(line: 82, column: 15, scope: !616)
!616 = distinct !DILexicalBlock(scope: !578, file: !10, line: 82, column: 7)
!617 = !DILocation(line: 82, column: 20, scope: !616)
!618 = !DILocation(line: 82, column: 7, scope: !616)
!619 = !DILocation(line: 82, column: 29, scope: !616)
!620 = !DILocation(line: 82, column: 7, scope: !578)
!621 = !DILocation(line: 83, column: 5, scope: !616)
!622 = !DILocation(line: 85, column: 3, scope: !578)
!623 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !56, file: !56, line: 50, type: !510, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !47)
!624 = !DILocalVariable(name: "file", arg: 1, scope: !623, file: !56, line: 50, type: !6)
!625 = !DILocation(line: 50, column: 41, scope: !623)
!626 = !DILocation(line: 52, column: 15, scope: !623)
!627 = !DILocation(line: 52, column: 13, scope: !623)
!628 = !DILocation(line: 53, column: 1, scope: !623)
!629 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !56, file: !56, line: 87, type: !630, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !47)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !60}
!632 = !DILocalVariable(name: "ignore", arg: 1, scope: !629, file: !56, line: 87, type: !60)
!633 = !DILocation(line: 87, column: 37, scope: !629)
!634 = !DILocation(line: 89, column: 18, scope: !629)
!635 = !DILocation(line: 89, column: 16, scope: !629)
!636 = !DILocation(line: 90, column: 1, scope: !629)
!637 = distinct !DISubprogram(name: "close_stdout", scope: !56, file: !56, line: 116, type: !93, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !47)
!638 = !DILocation(line: 118, column: 21, scope: !639)
!639 = distinct !DILexicalBlock(scope: !637, file: !56, line: 118, column: 7)
!640 = !DILocation(line: 118, column: 7, scope: !639)
!641 = !DILocation(line: 118, column: 29, scope: !639)
!642 = !DILocation(line: 119, column: 7, scope: !639)
!643 = !DILocation(line: 119, column: 12, scope: !639)
!644 = !DILocation(line: 119, column: 25, scope: !639)
!645 = !DILocation(line: 119, column: 28, scope: !639)
!646 = !DILocation(line: 119, column: 34, scope: !639)
!647 = !DILocation(line: 118, column: 7, scope: !637)
!648 = !DILocalVariable(name: "write_error", scope: !649, file: !56, line: 121, type: !6)
!649 = distinct !DILexicalBlock(scope: !639, file: !56, line: 120, column: 5)
!650 = !DILocation(line: 121, column: 19, scope: !649)
!651 = !DILocation(line: 121, column: 33, scope: !649)
!652 = !DILocation(line: 122, column: 11, scope: !653)
!653 = distinct !DILexicalBlock(scope: !649, file: !56, line: 122, column: 11)
!654 = !DILocation(line: 122, column: 11, scope: !649)
!655 = !DILocation(line: 123, column: 9, scope: !653)
!656 = !DILocation(line: 126, column: 9, scope: !653)
!657 = !DILocation(line: 128, column: 14, scope: !649)
!658 = !DILocation(line: 128, column: 7, scope: !649)
!659 = !DILocation(line: 133, column: 42, scope: !660)
!660 = distinct !DILexicalBlock(scope: !637, file: !56, line: 133, column: 7)
!661 = !DILocation(line: 133, column: 28, scope: !660)
!662 = !DILocation(line: 133, column: 50, scope: !660)
!663 = !DILocation(line: 133, column: 7, scope: !637)
!664 = !DILocation(line: 134, column: 12, scope: !660)
!665 = !DILocation(line: 134, column: 5, scope: !660)
!666 = !DILocation(line: 135, column: 1, scope: !637)
!667 = distinct !DISubprogram(name: "verror", scope: !64, file: !64, line: 251, type: !668, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !47)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !44, !44, !6, !72}
!670 = !DILocalVariable(name: "status", arg: 1, scope: !667, file: !64, line: 251, type: !44)
!671 = !DILocation(line: 251, column: 1, scope: !667)
!672 = !DILocalVariable(name: "errnum", arg: 2, scope: !667, file: !64, line: 251, type: !44)
!673 = !DILocalVariable(name: "message", arg: 3, scope: !667, file: !64, line: 251, type: !6)
!674 = !DILocalVariable(name: "args", arg: 4, scope: !667, file: !64, line: 251, type: !72)
!675 = !DILocation(line: 261, column: 3, scope: !667)
!676 = !DILocation(line: 265, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !667, file: !64, line: 265, column: 7)
!678 = !DILocation(line: 265, column: 7, scope: !667)
!679 = !DILocation(line: 266, column: 7, scope: !677)
!680 = !DILocation(line: 266, column: 5, scope: !677)
!681 = !DILocation(line: 272, column: 16, scope: !682)
!682 = distinct !DILexicalBlock(scope: !677, file: !64, line: 268, column: 5)
!683 = !DILocation(line: 272, column: 32, scope: !682)
!684 = !DILocation(line: 272, column: 7, scope: !682)
!685 = !DILocation(line: 276, column: 3, scope: !667)
!686 = !DILocation(line: 282, column: 1, scope: !667)
!687 = distinct !DISubprogram(name: "flush_stdout", scope: !64, file: !64, line: 163, type: !93, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !47)
!688 = !DILocalVariable(name: "stdout_fd", scope: !687, file: !64, line: 166, type: !44)
!689 = !DILocation(line: 166, column: 7, scope: !687)
!690 = !DILocation(line: 172, column: 13, scope: !687)
!691 = !DILocation(line: 182, column: 12, scope: !692)
!692 = distinct !DILexicalBlock(scope: !687, file: !64, line: 182, column: 7)
!693 = !DILocation(line: 182, column: 9, scope: !692)
!694 = !DILocation(line: 182, column: 22, scope: !692)
!695 = !DILocation(line: 182, column: 34, scope: !692)
!696 = !DILocation(line: 182, column: 25, scope: !692)
!697 = !DILocation(line: 182, column: 7, scope: !687)
!698 = !DILocation(line: 184, column: 5, scope: !692)
!699 = !DILocation(line: 185, column: 1, scope: !687)
!700 = distinct !DISubprogram(name: "error_tail", scope: !64, file: !64, line: 219, type: !668, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !47)
!701 = !DILocalVariable(name: "status", arg: 1, scope: !700, file: !64, line: 219, type: !44)
!702 = !DILocation(line: 219, column: 1, scope: !700)
!703 = !DILocalVariable(name: "errnum", arg: 2, scope: !700, file: !64, line: 219, type: !44)
!704 = !DILocalVariable(name: "message", arg: 3, scope: !700, file: !64, line: 219, type: !6)
!705 = !DILocalVariable(name: "args", arg: 4, scope: !700, file: !64, line: 219, type: !72)
!706 = !DILocation(line: 229, column: 13, scope: !700)
!707 = !DILocation(line: 229, column: 21, scope: !700)
!708 = !DILocation(line: 229, column: 3, scope: !700)
!709 = !DILocation(line: 232, column: 3, scope: !700)
!710 = !DILocation(line: 233, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !700, file: !64, line: 233, column: 7)
!712 = !DILocation(line: 233, column: 7, scope: !700)
!713 = !DILocation(line: 234, column: 26, scope: !711)
!714 = !DILocation(line: 234, column: 5, scope: !711)
!715 = !DILocation(line: 238, column: 3, scope: !700)
!716 = !DILocation(line: 240, column: 3, scope: !700)
!717 = !DILocation(line: 241, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !700, file: !64, line: 241, column: 7)
!719 = !DILocation(line: 241, column: 7, scope: !700)
!720 = !DILocation(line: 242, column: 11, scope: !718)
!721 = !DILocation(line: 242, column: 5, scope: !718)
!722 = !DILocation(line: 243, column: 1, scope: !700)
!723 = distinct !DISubprogram(name: "print_errno_message", scope: !64, file: !64, line: 188, type: !300, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !47)
!724 = !DILocalVariable(name: "errnum", arg: 1, scope: !723, file: !64, line: 188, type: !44)
!725 = !DILocation(line: 188, column: 26, scope: !723)
!726 = !DILocalVariable(name: "s", scope: !723, file: !64, line: 190, type: !6)
!727 = !DILocation(line: 190, column: 15, scope: !723)
!728 = !DILocalVariable(name: "errbuf", scope: !723, file: !64, line: 193, type: !729)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 1024)
!732 = !DILocation(line: 193, column: 8, scope: !723)
!733 = !DILocation(line: 195, column: 21, scope: !723)
!734 = !DILocation(line: 195, column: 29, scope: !723)
!735 = !DILocation(line: 195, column: 7, scope: !723)
!736 = !DILocation(line: 195, column: 5, scope: !723)
!737 = !DILocation(line: 207, column: 9, scope: !738)
!738 = distinct !DILexicalBlock(scope: !723, file: !64, line: 207, column: 7)
!739 = !DILocation(line: 207, column: 7, scope: !723)
!740 = !DILocation(line: 208, column: 9, scope: !738)
!741 = !DILocation(line: 208, column: 7, scope: !738)
!742 = !DILocation(line: 208, column: 5, scope: !738)
!743 = !DILocation(line: 214, column: 12, scope: !723)
!744 = !DILocation(line: 214, column: 28, scope: !723)
!745 = !DILocation(line: 214, column: 3, scope: !723)
!746 = !DILocation(line: 216, column: 1, scope: !723)
!747 = distinct !DISubprogram(name: "is_open", scope: !64, file: !64, line: 145, type: !748, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !47)
!748 = !DISubroutineType(types: !749)
!749 = !{!44, !44}
!750 = !DILocalVariable(name: "fd", arg: 1, scope: !747, file: !64, line: 145, type: !44)
!751 = !DILocation(line: 145, column: 14, scope: !747)
!752 = !DILocation(line: 157, column: 22, scope: !747)
!753 = !DILocation(line: 157, column: 15, scope: !747)
!754 = !DILocation(line: 157, column: 12, scope: !747)
!755 = !DILocation(line: 157, column: 3, scope: !747)
!756 = distinct !DISubprogram(name: "error", scope: !64, file: !64, line: 285, type: !757, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !47)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !44, !44, !6, null}
!759 = !DILocalVariable(name: "status", arg: 1, scope: !756, file: !64, line: 285, type: !44)
!760 = !DILocation(line: 285, column: 12, scope: !756)
!761 = !DILocalVariable(name: "errnum", arg: 2, scope: !756, file: !64, line: 285, type: !44)
!762 = !DILocation(line: 285, column: 24, scope: !756)
!763 = !DILocalVariable(name: "message", arg: 3, scope: !756, file: !64, line: 285, type: !6)
!764 = !DILocation(line: 285, column: 44, scope: !756)
!765 = !DILocalVariable(name: "ap", scope: !756, file: !64, line: 287, type: !72)
!766 = !DILocation(line: 287, column: 11, scope: !756)
!767 = !DILocation(line: 288, column: 3, scope: !756)
!768 = !DILocation(line: 289, column: 3, scope: !756)
!769 = !DILocation(line: 290, column: 3, scope: !756)
!770 = !DILocation(line: 291, column: 1, scope: !756)
!771 = !DILocalVariable(name: "status", arg: 1, scope: !69, file: !64, line: 298, type: !44)
!772 = !DILocation(line: 298, column: 1, scope: !69)
!773 = !DILocalVariable(name: "errnum", arg: 2, scope: !69, file: !64, line: 298, type: !44)
!774 = !DILocalVariable(name: "file_name", arg: 3, scope: !69, file: !64, line: 298, type: !6)
!775 = !DILocalVariable(name: "line_number", arg: 4, scope: !69, file: !64, line: 298, type: !14)
!776 = !DILocalVariable(name: "message", arg: 5, scope: !69, file: !64, line: 298, type: !6)
!777 = !DILocalVariable(name: "args", arg: 6, scope: !69, file: !64, line: 298, type: !72)
!778 = !DILocation(line: 302, column: 7, scope: !779)
!779 = distinct !DILexicalBlock(scope: !69, file: !64, line: 302, column: 7)
!780 = !DILocation(line: 302, column: 7, scope: !69)
!781 = !DILocation(line: 307, column: 11, scope: !782)
!782 = distinct !DILexicalBlock(scope: !783, file: !64, line: 307, column: 11)
!783 = distinct !DILexicalBlock(scope: !779, file: !64, line: 303, column: 5)
!784 = !DILocation(line: 307, column: 30, scope: !782)
!785 = !DILocation(line: 307, column: 27, scope: !782)
!786 = !DILocation(line: 308, column: 11, scope: !782)
!787 = !DILocation(line: 308, column: 15, scope: !782)
!788 = !DILocation(line: 308, column: 28, scope: !782)
!789 = !DILocation(line: 308, column: 25, scope: !782)
!790 = !DILocation(line: 309, column: 15, scope: !782)
!791 = !DILocation(line: 309, column: 19, scope: !782)
!792 = !DILocation(line: 309, column: 33, scope: !782)
!793 = !DILocation(line: 310, column: 19, scope: !782)
!794 = !DILocation(line: 310, column: 22, scope: !782)
!795 = !DILocation(line: 310, column: 32, scope: !782)
!796 = !DILocation(line: 311, column: 19, scope: !782)
!797 = !DILocation(line: 311, column: 30, scope: !782)
!798 = !DILocation(line: 311, column: 45, scope: !782)
!799 = !DILocation(line: 311, column: 22, scope: !782)
!800 = !DILocation(line: 311, column: 56, scope: !782)
!801 = !DILocation(line: 307, column: 11, scope: !783)
!802 = !DILocation(line: 314, column: 9, scope: !782)
!803 = !DILocation(line: 316, column: 23, scope: !783)
!804 = !DILocation(line: 316, column: 21, scope: !783)
!805 = !DILocation(line: 317, column: 25, scope: !783)
!806 = !DILocation(line: 317, column: 23, scope: !783)
!807 = !DILocation(line: 318, column: 5, scope: !783)
!808 = !DILocation(line: 327, column: 3, scope: !69)
!809 = !DILocation(line: 331, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !69, file: !64, line: 331, column: 7)
!811 = !DILocation(line: 331, column: 7, scope: !69)
!812 = !DILocation(line: 332, column: 7, scope: !810)
!813 = !DILocation(line: 332, column: 5, scope: !810)
!814 = !DILocation(line: 338, column: 16, scope: !815)
!815 = distinct !DILexicalBlock(scope: !810, file: !64, line: 334, column: 5)
!816 = !DILocation(line: 338, column: 31, scope: !815)
!817 = !DILocation(line: 338, column: 7, scope: !815)
!818 = !DILocation(line: 346, column: 12, scope: !69)
!819 = !DILocation(line: 346, column: 20, scope: !69)
!820 = !DILocation(line: 346, column: 30, scope: !69)
!821 = !DILocation(line: 347, column: 12, scope: !69)
!822 = !DILocation(line: 347, column: 23, scope: !69)
!823 = !DILocation(line: 346, column: 3, scope: !69)
!824 = !DILocation(line: 350, column: 3, scope: !69)
!825 = !DILocation(line: 356, column: 1, scope: !69)
!826 = distinct !DISubprogram(name: "error_at_line", scope: !64, file: !64, line: 359, type: !827, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !47)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !44, !44, !6, !14, !6, null}
!829 = !DILocalVariable(name: "status", arg: 1, scope: !826, file: !64, line: 359, type: !44)
!830 = !DILocation(line: 359, column: 20, scope: !826)
!831 = !DILocalVariable(name: "errnum", arg: 2, scope: !826, file: !64, line: 359, type: !44)
!832 = !DILocation(line: 359, column: 32, scope: !826)
!833 = !DILocalVariable(name: "file_name", arg: 3, scope: !826, file: !64, line: 359, type: !6)
!834 = !DILocation(line: 359, column: 52, scope: !826)
!835 = !DILocalVariable(name: "line_number", arg: 4, scope: !826, file: !64, line: 360, type: !14)
!836 = !DILocation(line: 360, column: 29, scope: !826)
!837 = !DILocalVariable(name: "message", arg: 5, scope: !826, file: !64, line: 360, type: !6)
!838 = !DILocation(line: 360, column: 54, scope: !826)
!839 = !DILocalVariable(name: "ap", scope: !826, file: !64, line: 362, type: !72)
!840 = !DILocation(line: 362, column: 11, scope: !826)
!841 = !DILocation(line: 363, column: 3, scope: !826)
!842 = !DILocation(line: 364, column: 3, scope: !826)
!843 = !DILocation(line: 366, column: 3, scope: !826)
!844 = !DILocation(line: 367, column: 1, scope: !826)
!845 = distinct !DISubprogram(name: "getprogname", scope: !229, file: !229, line: 54, type: !846, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !228, retainedNodes: !47)
!846 = !DISubroutineType(types: !847)
!847 = !{!6}
!848 = !DILocation(line: 58, column: 10, scope: !845)
!849 = !DILocation(line: 58, column: 3, scope: !845)
!850 = distinct !DISubprogram(name: "parse_long_options", scope: !98, file: !98, line: 45, type: !851, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !97, retainedNodes: !47)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !44, !581, !6, !6, !6, !853, null}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!854 = !DILocalVariable(name: "argc", arg: 1, scope: !850, file: !98, line: 45, type: !44)
!855 = !DILocation(line: 45, column: 25, scope: !850)
!856 = !DILocalVariable(name: "argv", arg: 2, scope: !850, file: !98, line: 46, type: !581)
!857 = !DILocation(line: 46, column: 28, scope: !850)
!858 = !DILocalVariable(name: "command_name", arg: 3, scope: !850, file: !98, line: 47, type: !6)
!859 = !DILocation(line: 47, column: 33, scope: !850)
!860 = !DILocalVariable(name: "package", arg: 4, scope: !850, file: !98, line: 48, type: !6)
!861 = !DILocation(line: 48, column: 33, scope: !850)
!862 = !DILocalVariable(name: "version", arg: 5, scope: !850, file: !98, line: 49, type: !6)
!863 = !DILocation(line: 49, column: 33, scope: !850)
!864 = !DILocalVariable(name: "usage_func", arg: 6, scope: !850, file: !98, line: 50, type: !853)
!865 = !DILocation(line: 50, column: 28, scope: !850)
!866 = !DILocalVariable(name: "saved_opterr", scope: !850, file: !98, line: 53, type: !44)
!867 = !DILocation(line: 53, column: 7, scope: !850)
!868 = !DILocation(line: 53, column: 22, scope: !850)
!869 = !DILocation(line: 56, column: 10, scope: !850)
!870 = !DILocation(line: 58, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !850, file: !98, line: 58, column: 7)
!872 = !DILocation(line: 58, column: 12, scope: !871)
!873 = !DILocation(line: 58, column: 7, scope: !850)
!874 = !DILocalVariable(name: "c", scope: !875, file: !98, line: 60, type: !44)
!875 = distinct !DILexicalBlock(scope: !871, file: !98, line: 59, column: 5)
!876 = !DILocation(line: 60, column: 11, scope: !875)
!877 = !DILocation(line: 60, column: 28, scope: !875)
!878 = !DILocation(line: 60, column: 34, scope: !875)
!879 = !DILocation(line: 60, column: 15, scope: !875)
!880 = !DILocation(line: 61, column: 11, scope: !881)
!881 = distinct !DILexicalBlock(scope: !875, file: !98, line: 61, column: 11)
!882 = !DILocation(line: 61, column: 13, scope: !881)
!883 = !DILocation(line: 61, column: 11, scope: !875)
!884 = !DILocation(line: 63, column: 19, scope: !885)
!885 = distinct !DILexicalBlock(scope: !881, file: !98, line: 62, column: 9)
!886 = !DILocation(line: 63, column: 11, scope: !885)
!887 = !DILocation(line: 66, column: 17, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !98, line: 64, column: 13)
!889 = !DILocation(line: 66, column: 15, scope: !888)
!890 = !DILocation(line: 67, column: 15, scope: !888)
!891 = !DILocalVariable(name: "authors", scope: !892, file: !98, line: 71, type: !893)
!892 = distinct !DILexicalBlock(scope: !888, file: !98, line: 70, column: 15)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !73, line: 52, baseType: !894)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !75, line: 32, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !896, baseType: !897)
!896 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !79, size: 256, elements: !898)
!898 = !{!899, !900, !901, !902, !903}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !897, file: !896, line: 71, baseType: !43, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !897, file: !896, line: 71, baseType: !43, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !897, file: !896, line: 71, baseType: !43, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !897, file: !896, line: 71, baseType: !44, size: 32, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !897, file: !896, line: 71, baseType: !44, size: 32, offset: 224)
!904 = !DILocation(line: 71, column: 25, scope: !892)
!905 = !DILocation(line: 72, column: 17, scope: !892)
!906 = !DILocation(line: 73, column: 33, scope: !892)
!907 = !DILocation(line: 73, column: 41, scope: !892)
!908 = !DILocation(line: 73, column: 55, scope: !892)
!909 = !DILocation(line: 73, column: 64, scope: !892)
!910 = !DILocation(line: 73, column: 17, scope: !892)
!911 = !DILocation(line: 74, column: 17, scope: !892)
!912 = !DILocation(line: 79, column: 15, scope: !888)
!913 = !DILocation(line: 81, column: 9, scope: !885)
!914 = !DILocation(line: 82, column: 5, scope: !875)
!915 = !DILocation(line: 85, column: 12, scope: !850)
!916 = !DILocation(line: 85, column: 10, scope: !850)
!917 = !DILocation(line: 89, column: 10, scope: !850)
!918 = !DILocation(line: 90, column: 1, scope: !850)
!919 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !98, file: !98, line: 98, type: !920, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !97, retainedNodes: !47)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !44, !581, !6, !6, !6, !60, !853, null}
!922 = !DILocalVariable(name: "argc", arg: 1, scope: !919, file: !98, line: 98, type: !44)
!923 = !DILocation(line: 98, column: 38, scope: !919)
!924 = !DILocalVariable(name: "argv", arg: 2, scope: !919, file: !98, line: 99, type: !581)
!925 = !DILocation(line: 99, column: 41, scope: !919)
!926 = !DILocalVariable(name: "command_name", arg: 3, scope: !919, file: !98, line: 100, type: !6)
!927 = !DILocation(line: 100, column: 46, scope: !919)
!928 = !DILocalVariable(name: "package", arg: 4, scope: !919, file: !98, line: 101, type: !6)
!929 = !DILocation(line: 101, column: 46, scope: !919)
!930 = !DILocalVariable(name: "version", arg: 5, scope: !919, file: !98, line: 102, type: !6)
!931 = !DILocation(line: 102, column: 46, scope: !919)
!932 = !DILocalVariable(name: "scan_all", arg: 6, scope: !919, file: !98, line: 103, type: !60)
!933 = !DILocation(line: 103, column: 39, scope: !919)
!934 = !DILocalVariable(name: "usage_func", arg: 7, scope: !919, file: !98, line: 104, type: !853)
!935 = !DILocation(line: 104, column: 41, scope: !919)
!936 = !DILocalVariable(name: "saved_opterr", scope: !919, file: !98, line: 107, type: !44)
!937 = !DILocation(line: 107, column: 7, scope: !919)
!938 = !DILocation(line: 107, column: 22, scope: !919)
!939 = !DILocation(line: 110, column: 10, scope: !919)
!940 = !DILocalVariable(name: "optstring", scope: !919, file: !98, line: 112, type: !6)
!941 = !DILocation(line: 112, column: 15, scope: !919)
!942 = !DILocation(line: 112, column: 27, scope: !919)
!943 = !DILocalVariable(name: "c", scope: !919, file: !98, line: 114, type: !44)
!944 = !DILocation(line: 114, column: 7, scope: !919)
!945 = !DILocation(line: 114, column: 24, scope: !919)
!946 = !DILocation(line: 114, column: 30, scope: !919)
!947 = !DILocation(line: 114, column: 36, scope: !919)
!948 = !DILocation(line: 114, column: 11, scope: !919)
!949 = !DILocation(line: 115, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !919, file: !98, line: 115, column: 7)
!951 = !DILocation(line: 115, column: 9, scope: !950)
!952 = !DILocation(line: 115, column: 7, scope: !919)
!953 = !DILocation(line: 117, column: 15, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !98, line: 116, column: 5)
!955 = !DILocation(line: 117, column: 7, scope: !954)
!956 = !DILocation(line: 120, column: 13, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !98, line: 118, column: 9)
!958 = !DILocation(line: 120, column: 11, scope: !957)
!959 = !DILocation(line: 121, column: 11, scope: !957)
!960 = !DILocalVariable(name: "authors", scope: !961, file: !98, line: 125, type: !893)
!961 = distinct !DILexicalBlock(scope: !957, file: !98, line: 124, column: 11)
!962 = !DILocation(line: 125, column: 21, scope: !961)
!963 = !DILocation(line: 126, column: 13, scope: !961)
!964 = !DILocation(line: 127, column: 29, scope: !961)
!965 = !DILocation(line: 127, column: 37, scope: !961)
!966 = !DILocation(line: 127, column: 51, scope: !961)
!967 = !DILocation(line: 127, column: 60, scope: !961)
!968 = !DILocation(line: 127, column: 13, scope: !961)
!969 = !DILocation(line: 128, column: 13, scope: !961)
!970 = !DILocation(line: 132, column: 13, scope: !957)
!971 = !DILocation(line: 132, column: 26, scope: !957)
!972 = !DILocation(line: 132, column: 11, scope: !957)
!973 = !DILocation(line: 133, column: 11, scope: !957)
!974 = !DILocation(line: 135, column: 5, scope: !954)
!975 = !DILocation(line: 138, column: 12, scope: !919)
!976 = !DILocation(line: 138, column: 10, scope: !919)
!977 = !DILocation(line: 139, column: 1, scope: !919)
!978 = distinct !DISubprogram(name: "set_program_name", scope: !115, file: !115, line: 37, type: !510, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !47)
!979 = !DILocalVariable(name: "argv0", arg: 1, scope: !978, file: !115, line: 37, type: !6)
!980 = !DILocation(line: 37, column: 31, scope: !978)
!981 = !DILocalVariable(name: "slash", scope: !978, file: !115, line: 44, type: !6)
!982 = !DILocation(line: 44, column: 15, scope: !978)
!983 = !DILocation(line: 44, column: 32, scope: !978)
!984 = !DILocation(line: 44, column: 23, scope: !978)
!985 = !DILocalVariable(name: "base", scope: !978, file: !115, line: 45, type: !6)
!986 = !DILocation(line: 45, column: 15, scope: !978)
!987 = !DILocation(line: 45, column: 22, scope: !978)
!988 = !DILocation(line: 45, column: 30, scope: !978)
!989 = !DILocation(line: 45, column: 36, scope: !978)
!990 = !DILocation(line: 45, column: 42, scope: !978)
!991 = !DILocation(line: 46, column: 12, scope: !992)
!992 = distinct !DILexicalBlock(scope: !978, file: !115, line: 46, column: 7)
!993 = !DILocation(line: 46, column: 19, scope: !992)
!994 = !DILocation(line: 46, column: 17, scope: !992)
!995 = !DILocation(line: 46, column: 9, scope: !992)
!996 = !DILocation(line: 46, column: 25, scope: !992)
!997 = !DILocation(line: 46, column: 35, scope: !992)
!998 = !DILocation(line: 46, column: 40, scope: !992)
!999 = !DILocation(line: 46, column: 28, scope: !992)
!1000 = !DILocation(line: 46, column: 7, scope: !978)
!1001 = !DILocation(line: 48, column: 15, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !992, file: !115, line: 47, column: 5)
!1003 = !DILocation(line: 48, column: 13, scope: !1002)
!1004 = !DILocation(line: 49, column: 20, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !115, line: 49, column: 11)
!1006 = !DILocation(line: 49, column: 11, scope: !1005)
!1007 = !DILocation(line: 49, column: 36, scope: !1005)
!1008 = !DILocation(line: 49, column: 11, scope: !1002)
!1009 = !DILocation(line: 51, column: 16, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !115, line: 50, column: 9)
!1011 = !DILocation(line: 52, column: 19, scope: !1010)
!1012 = !DILocation(line: 52, column: 17, scope: !1010)
!1013 = !DILocation(line: 53, column: 9, scope: !1010)
!1014 = !DILocation(line: 54, column: 5, scope: !1002)
!1015 = !DILocation(line: 65, column: 18, scope: !978)
!1016 = !DILocation(line: 65, column: 16, scope: !978)
!1017 = !DILocation(line: 71, column: 38, scope: !978)
!1018 = !DILocation(line: 71, column: 27, scope: !978)
!1019 = !DILocation(line: 74, column: 44, scope: !978)
!1020 = !DILocation(line: 74, column: 33, scope: !978)
!1021 = !DILocation(line: 76, column: 1, scope: !978)
!1022 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !121, file: !122, line: 38, type: !6)
!1023 = !DILocation(line: 38, column: 31, scope: !121)
!1024 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !121, file: !122, line: 38, type: !6)
!1025 = !DILocation(line: 38, column: 66, scope: !121)
!1026 = !DILocalVariable(name: "translation", scope: !121, file: !122, line: 40, type: !6)
!1027 = !DILocation(line: 40, column: 15, scope: !121)
!1028 = !DILocation(line: 40, column: 38, scope: !121)
!1029 = !DILocation(line: 40, column: 29, scope: !121)
!1030 = !DILocation(line: 41, column: 7, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !121, file: !122, line: 41, column: 7)
!1032 = !DILocation(line: 41, column: 22, scope: !1031)
!1033 = !DILocation(line: 41, column: 19, scope: !1031)
!1034 = !DILocation(line: 41, column: 7, scope: !121)
!1035 = !DILocation(line: 42, column: 12, scope: !1031)
!1036 = !DILocation(line: 42, column: 5, scope: !1031)
!1037 = !DILocalVariable(name: "w", scope: !121, file: !122, line: 47, type: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1039, line: 37, baseType: !1040)
!1039 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1041, line: 57, baseType: !1042)
!1041 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1041, line: 42, baseType: !14)
!1043 = !DILocation(line: 47, column: 12, scope: !121)
!1044 = !DILocalVariable(name: "mbs", scope: !121, file: !122, line: 48, type: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1047, file: !217, line: 15, baseType: !44, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1047, file: !217, line: 20, baseType: !1051, size: 32, offset: 32)
!1051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !217, line: 16, size: 32, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1051, file: !217, line: 18, baseType: !14, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1051, file: !217, line: 19, baseType: !226, size: 32)
!1055 = !DILocation(line: 48, column: 13, scope: !121)
!1056 = !DILocation(line: 48, column: 18, scope: !121)
!1057 = !DILocation(line: 49, column: 7, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !121, file: !122, line: 49, column: 7)
!1059 = !DILocation(line: 49, column: 39, scope: !1058)
!1060 = !DILocation(line: 49, column: 44, scope: !1058)
!1061 = !DILocation(line: 49, column: 47, scope: !1058)
!1062 = !DILocation(line: 49, column: 49, scope: !1058)
!1063 = !DILocation(line: 49, column: 7, scope: !121)
!1064 = !DILocation(line: 50, column: 12, scope: !1058)
!1065 = !DILocation(line: 50, column: 5, scope: !1058)
!1066 = !DILocation(line: 53, column: 10, scope: !121)
!1067 = !DILocation(line: 53, column: 3, scope: !121)
!1068 = !DILocation(line: 54, column: 1, scope: !121)
!1069 = distinct !DISubprogram(name: "clone_quoting_options", scope: !133, file: !133, line: 113, type: !1070, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!1072, !1072}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!1073 = !DILocalVariable(name: "o", arg: 1, scope: !1069, file: !133, line: 113, type: !1072)
!1074 = !DILocation(line: 113, column: 48, scope: !1069)
!1075 = !DILocalVariable(name: "saved_errno", scope: !1069, file: !133, line: 115, type: !44)
!1076 = !DILocation(line: 115, column: 7, scope: !1069)
!1077 = !DILocation(line: 115, column: 21, scope: !1069)
!1078 = !DILocalVariable(name: "p", scope: !1069, file: !133, line: 116, type: !1072)
!1079 = !DILocation(line: 116, column: 27, scope: !1069)
!1080 = !DILocation(line: 116, column: 40, scope: !1069)
!1081 = !DILocation(line: 116, column: 44, scope: !1069)
!1082 = !DILocation(line: 116, column: 31, scope: !1069)
!1083 = !DILocation(line: 118, column: 11, scope: !1069)
!1084 = !DILocation(line: 118, column: 3, scope: !1069)
!1085 = !DILocation(line: 118, column: 9, scope: !1069)
!1086 = !DILocation(line: 119, column: 10, scope: !1069)
!1087 = !DILocation(line: 119, column: 3, scope: !1069)
!1088 = distinct !DISubprogram(name: "get_quoting_style", scope: !133, file: !133, line: 124, type: !1089, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!12, !1091}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!1093 = !DILocalVariable(name: "o", arg: 1, scope: !1088, file: !133, line: 124, type: !1091)
!1094 = !DILocation(line: 124, column: 50, scope: !1088)
!1095 = !DILocation(line: 126, column: 11, scope: !1088)
!1096 = !DILocation(line: 126, column: 15, scope: !1088)
!1097 = !DILocation(line: 126, column: 46, scope: !1088)
!1098 = !DILocation(line: 126, column: 3, scope: !1088)
!1099 = distinct !DISubprogram(name: "set_quoting_style", scope: !133, file: !133, line: 132, type: !1100, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !1072, !12}
!1102 = !DILocalVariable(name: "o", arg: 1, scope: !1099, file: !133, line: 132, type: !1072)
!1103 = !DILocation(line: 132, column: 44, scope: !1099)
!1104 = !DILocalVariable(name: "s", arg: 2, scope: !1099, file: !133, line: 132, type: !12)
!1105 = !DILocation(line: 132, column: 66, scope: !1099)
!1106 = !DILocation(line: 134, column: 47, scope: !1099)
!1107 = !DILocation(line: 134, column: 4, scope: !1099)
!1108 = !DILocation(line: 134, column: 8, scope: !1099)
!1109 = !DILocation(line: 134, column: 39, scope: !1099)
!1110 = !DILocation(line: 134, column: 45, scope: !1099)
!1111 = !DILocation(line: 135, column: 1, scope: !1099)
!1112 = distinct !DISubprogram(name: "set_char_quoting", scope: !133, file: !133, line: 143, type: !1113, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!44, !1072, !8, !44}
!1115 = !DILocalVariable(name: "o", arg: 1, scope: !1112, file: !133, line: 143, type: !1072)
!1116 = !DILocation(line: 143, column: 43, scope: !1112)
!1117 = !DILocalVariable(name: "c", arg: 2, scope: !1112, file: !133, line: 143, type: !8)
!1118 = !DILocation(line: 143, column: 51, scope: !1112)
!1119 = !DILocalVariable(name: "i", arg: 3, scope: !1112, file: !133, line: 143, type: !44)
!1120 = !DILocation(line: 143, column: 58, scope: !1112)
!1121 = !DILocalVariable(name: "uc", scope: !1112, file: !133, line: 145, type: !212)
!1122 = !DILocation(line: 145, column: 17, scope: !1112)
!1123 = !DILocation(line: 145, column: 22, scope: !1112)
!1124 = !DILocalVariable(name: "p", scope: !1112, file: !133, line: 146, type: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1126 = !DILocation(line: 146, column: 17, scope: !1112)
!1127 = !DILocation(line: 147, column: 6, scope: !1112)
!1128 = !DILocation(line: 147, column: 10, scope: !1112)
!1129 = !DILocation(line: 147, column: 41, scope: !1112)
!1130 = !DILocation(line: 147, column: 5, scope: !1112)
!1131 = !DILocation(line: 147, column: 59, scope: !1112)
!1132 = !DILocation(line: 147, column: 62, scope: !1112)
!1133 = !DILocation(line: 147, column: 57, scope: !1112)
!1134 = !DILocalVariable(name: "shift", scope: !1112, file: !133, line: 148, type: !44)
!1135 = !DILocation(line: 148, column: 7, scope: !1112)
!1136 = !DILocation(line: 148, column: 15, scope: !1112)
!1137 = !DILocation(line: 148, column: 18, scope: !1112)
!1138 = !DILocalVariable(name: "r", scope: !1112, file: !133, line: 149, type: !14)
!1139 = !DILocation(line: 149, column: 16, scope: !1112)
!1140 = !DILocation(line: 149, column: 22, scope: !1112)
!1141 = !DILocation(line: 149, column: 21, scope: !1112)
!1142 = !DILocation(line: 149, column: 27, scope: !1112)
!1143 = !DILocation(line: 149, column: 24, scope: !1112)
!1144 = !DILocation(line: 149, column: 34, scope: !1112)
!1145 = !DILocation(line: 150, column: 11, scope: !1112)
!1146 = !DILocation(line: 150, column: 13, scope: !1112)
!1147 = !DILocation(line: 150, column: 21, scope: !1112)
!1148 = !DILocation(line: 150, column: 19, scope: !1112)
!1149 = !DILocation(line: 150, column: 27, scope: !1112)
!1150 = !DILocation(line: 150, column: 24, scope: !1112)
!1151 = !DILocation(line: 150, column: 4, scope: !1112)
!1152 = !DILocation(line: 150, column: 6, scope: !1112)
!1153 = !DILocation(line: 151, column: 10, scope: !1112)
!1154 = !DILocation(line: 151, column: 3, scope: !1112)
!1155 = distinct !DISubprogram(name: "set_quoting_flags", scope: !133, file: !133, line: 159, type: !1156, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!44, !1072, !44}
!1158 = !DILocalVariable(name: "o", arg: 1, scope: !1155, file: !133, line: 159, type: !1072)
!1159 = !DILocation(line: 159, column: 44, scope: !1155)
!1160 = !DILocalVariable(name: "i", arg: 2, scope: !1155, file: !133, line: 159, type: !44)
!1161 = !DILocation(line: 159, column: 51, scope: !1155)
!1162 = !DILocation(line: 161, column: 8, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1155, file: !133, line: 161, column: 7)
!1164 = !DILocation(line: 161, column: 7, scope: !1155)
!1165 = !DILocation(line: 162, column: 7, scope: !1163)
!1166 = !DILocation(line: 162, column: 5, scope: !1163)
!1167 = !DILocalVariable(name: "r", scope: !1155, file: !133, line: 163, type: !44)
!1168 = !DILocation(line: 163, column: 7, scope: !1155)
!1169 = !DILocation(line: 163, column: 11, scope: !1155)
!1170 = !DILocation(line: 163, column: 14, scope: !1155)
!1171 = !DILocation(line: 164, column: 14, scope: !1155)
!1172 = !DILocation(line: 164, column: 3, scope: !1155)
!1173 = !DILocation(line: 164, column: 6, scope: !1155)
!1174 = !DILocation(line: 164, column: 12, scope: !1155)
!1175 = !DILocation(line: 165, column: 10, scope: !1155)
!1176 = !DILocation(line: 165, column: 3, scope: !1155)
!1177 = distinct !DISubprogram(name: "set_custom_quoting", scope: !133, file: !133, line: 169, type: !1178, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{null, !1072, !6, !6}
!1180 = !DILocalVariable(name: "o", arg: 1, scope: !1177, file: !133, line: 169, type: !1072)
!1181 = !DILocation(line: 169, column: 45, scope: !1177)
!1182 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1177, file: !133, line: 170, type: !6)
!1183 = !DILocation(line: 170, column: 33, scope: !1177)
!1184 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1177, file: !133, line: 170, type: !6)
!1185 = !DILocation(line: 170, column: 57, scope: !1177)
!1186 = !DILocation(line: 172, column: 8, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1177, file: !133, line: 172, column: 7)
!1188 = !DILocation(line: 172, column: 7, scope: !1177)
!1189 = !DILocation(line: 173, column: 7, scope: !1187)
!1190 = !DILocation(line: 173, column: 5, scope: !1187)
!1191 = !DILocation(line: 174, column: 3, scope: !1177)
!1192 = !DILocation(line: 174, column: 6, scope: !1177)
!1193 = !DILocation(line: 174, column: 12, scope: !1177)
!1194 = !DILocation(line: 175, column: 8, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1177, file: !133, line: 175, column: 7)
!1196 = !DILocation(line: 175, column: 19, scope: !1195)
!1197 = !DILocation(line: 175, column: 23, scope: !1195)
!1198 = !DILocation(line: 175, column: 7, scope: !1177)
!1199 = !DILocation(line: 176, column: 5, scope: !1195)
!1200 = !DILocation(line: 177, column: 19, scope: !1177)
!1201 = !DILocation(line: 177, column: 3, scope: !1177)
!1202 = !DILocation(line: 177, column: 6, scope: !1177)
!1203 = !DILocation(line: 177, column: 17, scope: !1177)
!1204 = !DILocation(line: 178, column: 20, scope: !1177)
!1205 = !DILocation(line: 178, column: 3, scope: !1177)
!1206 = !DILocation(line: 178, column: 6, scope: !1177)
!1207 = !DILocation(line: 178, column: 18, scope: !1177)
!1208 = !DILocation(line: 179, column: 1, scope: !1177)
!1209 = distinct !DISubprogram(name: "quotearg_buffer", scope: !133, file: !133, line: 774, type: !1210, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!141, !117, !141, !6, !141, !1091}
!1212 = !DILocalVariable(name: "buffer", arg: 1, scope: !1209, file: !133, line: 774, type: !117)
!1213 = !DILocation(line: 774, column: 24, scope: !1209)
!1214 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1209, file: !133, line: 774, type: !141)
!1215 = !DILocation(line: 774, column: 39, scope: !1209)
!1216 = !DILocalVariable(name: "arg", arg: 3, scope: !1209, file: !133, line: 775, type: !6)
!1217 = !DILocation(line: 775, column: 30, scope: !1209)
!1218 = !DILocalVariable(name: "argsize", arg: 4, scope: !1209, file: !133, line: 775, type: !141)
!1219 = !DILocation(line: 775, column: 42, scope: !1209)
!1220 = !DILocalVariable(name: "o", arg: 5, scope: !1209, file: !133, line: 776, type: !1091)
!1221 = !DILocation(line: 776, column: 48, scope: !1209)
!1222 = !DILocalVariable(name: "p", scope: !1209, file: !133, line: 778, type: !1091)
!1223 = !DILocation(line: 778, column: 33, scope: !1209)
!1224 = !DILocation(line: 778, column: 37, scope: !1209)
!1225 = !DILocation(line: 778, column: 41, scope: !1209)
!1226 = !DILocalVariable(name: "saved_errno", scope: !1209, file: !133, line: 779, type: !44)
!1227 = !DILocation(line: 779, column: 7, scope: !1209)
!1228 = !DILocation(line: 779, column: 21, scope: !1209)
!1229 = !DILocalVariable(name: "r", scope: !1209, file: !133, line: 780, type: !141)
!1230 = !DILocation(line: 780, column: 10, scope: !1209)
!1231 = !DILocation(line: 780, column: 40, scope: !1209)
!1232 = !DILocation(line: 780, column: 48, scope: !1209)
!1233 = !DILocation(line: 780, column: 60, scope: !1209)
!1234 = !DILocation(line: 780, column: 65, scope: !1209)
!1235 = !DILocation(line: 781, column: 40, scope: !1209)
!1236 = !DILocation(line: 781, column: 43, scope: !1209)
!1237 = !DILocation(line: 781, column: 50, scope: !1209)
!1238 = !DILocation(line: 781, column: 53, scope: !1209)
!1239 = !DILocation(line: 781, column: 60, scope: !1209)
!1240 = !DILocation(line: 781, column: 63, scope: !1209)
!1241 = !DILocation(line: 782, column: 40, scope: !1209)
!1242 = !DILocation(line: 782, column: 43, scope: !1209)
!1243 = !DILocation(line: 782, column: 55, scope: !1209)
!1244 = !DILocation(line: 782, column: 58, scope: !1209)
!1245 = !DILocation(line: 780, column: 14, scope: !1209)
!1246 = !DILocation(line: 783, column: 11, scope: !1209)
!1247 = !DILocation(line: 783, column: 3, scope: !1209)
!1248 = !DILocation(line: 783, column: 9, scope: !1209)
!1249 = !DILocation(line: 784, column: 10, scope: !1209)
!1250 = !DILocation(line: 784, column: 3, scope: !1209)
!1251 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !133, file: !133, line: 251, type: !1252, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !47)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!141, !117, !141, !6, !141, !12, !44, !1254, !6, !6}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1256 = !DILocalVariable(name: "buffer", arg: 1, scope: !1251, file: !133, line: 251, type: !117)
!1257 = !DILocation(line: 251, column: 33, scope: !1251)
!1258 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1251, file: !133, line: 251, type: !141)
!1259 = !DILocation(line: 251, column: 48, scope: !1251)
!1260 = !DILocalVariable(name: "arg", arg: 3, scope: !1251, file: !133, line: 252, type: !6)
!1261 = !DILocation(line: 252, column: 39, scope: !1251)
!1262 = !DILocalVariable(name: "argsize", arg: 4, scope: !1251, file: !133, line: 252, type: !141)
!1263 = !DILocation(line: 252, column: 51, scope: !1251)
!1264 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1251, file: !133, line: 253, type: !12)
!1265 = !DILocation(line: 253, column: 46, scope: !1251)
!1266 = !DILocalVariable(name: "flags", arg: 6, scope: !1251, file: !133, line: 253, type: !44)
!1267 = !DILocation(line: 253, column: 65, scope: !1251)
!1268 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1251, file: !133, line: 254, type: !1254)
!1269 = !DILocation(line: 254, column: 47, scope: !1251)
!1270 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1251, file: !133, line: 255, type: !6)
!1271 = !DILocation(line: 255, column: 39, scope: !1251)
!1272 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1251, file: !133, line: 256, type: !6)
!1273 = !DILocation(line: 256, column: 39, scope: !1251)
!1274 = !DILocalVariable(name: "unibyte_locale", scope: !1251, file: !133, line: 258, type: !60)
!1275 = !DILocation(line: 258, column: 8, scope: !1251)
!1276 = !DILocation(line: 258, column: 25, scope: !1251)
!1277 = !DILocation(line: 258, column: 36, scope: !1251)
!1278 = !DILocalVariable(name: "len", scope: !1251, file: !133, line: 260, type: !141)
!1279 = !DILocation(line: 260, column: 10, scope: !1251)
!1280 = !DILocalVariable(name: "orig_buffersize", scope: !1251, file: !133, line: 261, type: !141)
!1281 = !DILocation(line: 261, column: 10, scope: !1251)
!1282 = !DILocalVariable(name: "quote_string", scope: !1251, file: !133, line: 262, type: !6)
!1283 = !DILocation(line: 262, column: 15, scope: !1251)
!1284 = !DILocalVariable(name: "quote_string_len", scope: !1251, file: !133, line: 263, type: !141)
!1285 = !DILocation(line: 263, column: 10, scope: !1251)
!1286 = !DILocalVariable(name: "backslash_escapes", scope: !1251, file: !133, line: 264, type: !60)
!1287 = !DILocation(line: 264, column: 8, scope: !1251)
!1288 = !DILocalVariable(name: "elide_outer_quotes", scope: !1251, file: !133, line: 265, type: !60)
!1289 = !DILocation(line: 265, column: 8, scope: !1251)
!1290 = !DILocation(line: 265, column: 30, scope: !1251)
!1291 = !DILocation(line: 265, column: 36, scope: !1251)
!1292 = !DILocation(line: 265, column: 61, scope: !1251)
!1293 = !DILocalVariable(name: "encountered_single_quote", scope: !1251, file: !133, line: 266, type: !60)
!1294 = !DILocation(line: 266, column: 8, scope: !1251)
!1295 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1251, file: !133, line: 267, type: !60)
!1296 = !DILocation(line: 267, column: 8, scope: !1251)
!1297 = !DILocation(line: 267, column: 3, scope: !1251)
!1298 = !DILabel(scope: !1251, name: "process_input", file: !133, line: 308)
!1299 = !DILocation(line: 308, column: 2, scope: !1251)
!1300 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1251, file: !133, line: 309, type: !60)
!1301 = !DILocation(line: 309, column: 8, scope: !1251)
!1302 = !DILocation(line: 311, column: 11, scope: !1251)
!1303 = !DILocation(line: 311, column: 3, scope: !1251)
!1304 = !DILocation(line: 314, column: 21, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1251, file: !133, line: 312, column: 5)
!1306 = !DILocation(line: 315, column: 26, scope: !1305)
!1307 = !DILocation(line: 315, column: 7, scope: !1305)
!1308 = !DILocation(line: 318, column: 12, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !133, line: 318, column: 11)
!1310 = !DILocation(line: 318, column: 11, scope: !1305)
!1311 = !DILocation(line: 319, column: 9, scope: !1309)
!1312 = !DILocation(line: 319, column: 9, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !133, line: 319, column: 9)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !133, line: 319, column: 9)
!1315 = !DILocation(line: 319, column: 9, scope: !1314)
!1316 = !DILocation(line: 320, column: 25, scope: !1305)
!1317 = !DILocation(line: 321, column: 20, scope: !1305)
!1318 = !DILocation(line: 322, column: 24, scope: !1305)
!1319 = !DILocation(line: 323, column: 7, scope: !1305)
!1320 = !DILocation(line: 326, column: 25, scope: !1305)
!1321 = !DILocation(line: 327, column: 26, scope: !1305)
!1322 = !DILocation(line: 328, column: 7, scope: !1305)
!1323 = !DILocation(line: 334, column: 13, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !133, line: 334, column: 13)
!1325 = distinct !DILexicalBlock(scope: !1305, file: !133, line: 333, column: 7)
!1326 = !DILocation(line: 334, column: 27, scope: !1324)
!1327 = !DILocation(line: 334, column: 13, scope: !1325)
!1328 = !DILocation(line: 357, column: 50, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1324, file: !133, line: 335, column: 11)
!1330 = !DILocation(line: 357, column: 26, scope: !1329)
!1331 = !DILocation(line: 357, column: 24, scope: !1329)
!1332 = !DILocation(line: 358, column: 51, scope: !1329)
!1333 = !DILocation(line: 358, column: 27, scope: !1329)
!1334 = !DILocation(line: 358, column: 25, scope: !1329)
!1335 = !DILocation(line: 359, column: 11, scope: !1329)
!1336 = !DILocation(line: 360, column: 14, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1325, file: !133, line: 360, column: 13)
!1338 = !DILocation(line: 360, column: 13, scope: !1325)
!1339 = !DILocalVariable(name: "lq", scope: !1340, file: !133, line: 361, type: !6)
!1340 = distinct !DILexicalBlock(scope: !1337, file: !133, line: 361, column: 11)
!1341 = !DILocation(line: 361, column: 28, scope: !1340)
!1342 = !DILocation(line: 361, column: 33, scope: !1340)
!1343 = !DILocation(line: 361, column: 16, scope: !1340)
!1344 = !DILocation(line: 361, column: 46, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !133, line: 361, column: 11)
!1346 = !DILocation(line: 361, column: 45, scope: !1345)
!1347 = !DILocation(line: 361, column: 11, scope: !1340)
!1348 = !DILocation(line: 362, column: 13, scope: !1345)
!1349 = !DILocation(line: 362, column: 13, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !133, line: 362, column: 13)
!1351 = distinct !DILexicalBlock(scope: !1345, file: !133, line: 362, column: 13)
!1352 = !DILocation(line: 362, column: 13, scope: !1351)
!1353 = !DILocation(line: 361, column: 52, scope: !1345)
!1354 = !DILocation(line: 361, column: 11, scope: !1345)
!1355 = distinct !{!1355, !1347, !1356, !393}
!1356 = !DILocation(line: 362, column: 13, scope: !1340)
!1357 = !DILocation(line: 363, column: 27, scope: !1325)
!1358 = !DILocation(line: 364, column: 24, scope: !1325)
!1359 = !DILocation(line: 364, column: 22, scope: !1325)
!1360 = !DILocation(line: 365, column: 36, scope: !1325)
!1361 = !DILocation(line: 365, column: 28, scope: !1325)
!1362 = !DILocation(line: 365, column: 26, scope: !1325)
!1363 = !DILocation(line: 367, column: 7, scope: !1305)
!1364 = !DILocation(line: 370, column: 25, scope: !1305)
!1365 = !DILocation(line: 370, column: 7, scope: !1305)
!1366 = !DILocation(line: 373, column: 26, scope: !1305)
!1367 = !DILocation(line: 373, column: 7, scope: !1305)
!1368 = !DILocation(line: 376, column: 12, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1305, file: !133, line: 376, column: 11)
!1370 = !DILocation(line: 376, column: 11, scope: !1305)
!1371 = !DILocation(line: 377, column: 27, scope: !1369)
!1372 = !DILocation(line: 377, column: 9, scope: !1369)
!1373 = !DILocation(line: 380, column: 21, scope: !1305)
!1374 = !DILocation(line: 381, column: 12, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1305, file: !133, line: 381, column: 11)
!1376 = !DILocation(line: 381, column: 11, scope: !1305)
!1377 = !DILocation(line: 382, column: 9, scope: !1375)
!1378 = !DILocation(line: 382, column: 9, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !133, line: 382, column: 9)
!1380 = distinct !DILexicalBlock(scope: !1375, file: !133, line: 382, column: 9)
!1381 = !DILocation(line: 382, column: 9, scope: !1380)
!1382 = !DILocation(line: 383, column: 20, scope: !1305)
!1383 = !DILocation(line: 384, column: 24, scope: !1305)
!1384 = !DILocation(line: 385, column: 7, scope: !1305)
!1385 = !DILocation(line: 388, column: 26, scope: !1305)
!1386 = !DILocation(line: 389, column: 7, scope: !1305)
!1387 = !DILocation(line: 392, column: 7, scope: !1305)
!1388 = !DILocalVariable(name: "i", scope: !1389, file: !133, line: 395, type: !141)
!1389 = distinct !DILexicalBlock(scope: !1251, file: !133, line: 395, column: 3)
!1390 = !DILocation(line: 395, column: 15, scope: !1389)
!1391 = !DILocation(line: 395, column: 8, scope: !1389)
!1392 = !DILocation(line: 395, column: 26, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !133, line: 395, column: 3)
!1394 = !DILocation(line: 395, column: 34, scope: !1393)
!1395 = !DILocation(line: 395, column: 48, scope: !1393)
!1396 = !DILocation(line: 395, column: 52, scope: !1393)
!1397 = !DILocation(line: 395, column: 55, scope: !1393)
!1398 = !DILocation(line: 395, column: 65, scope: !1393)
!1399 = !DILocation(line: 395, column: 70, scope: !1393)
!1400 = !DILocation(line: 395, column: 67, scope: !1393)
!1401 = !DILocation(line: 395, column: 23, scope: !1393)
!1402 = !DILocation(line: 395, column: 3, scope: !1389)
!1403 = !DILocalVariable(name: "is_right_quote", scope: !1404, file: !133, line: 397, type: !60)
!1404 = distinct !DILexicalBlock(scope: !1393, file: !133, line: 396, column: 5)
!1405 = !DILocation(line: 397, column: 12, scope: !1404)
!1406 = !DILocalVariable(name: "escaping", scope: !1404, file: !133, line: 398, type: !60)
!1407 = !DILocation(line: 398, column: 12, scope: !1404)
!1408 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1404, file: !133, line: 399, type: !60)
!1409 = !DILocation(line: 399, column: 12, scope: !1404)
!1410 = !DILocation(line: 401, column: 11, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1404, file: !133, line: 401, column: 11)
!1412 = !DILocation(line: 402, column: 11, scope: !1411)
!1413 = !DILocation(line: 402, column: 14, scope: !1411)
!1414 = !DILocation(line: 402, column: 28, scope: !1411)
!1415 = !DILocation(line: 403, column: 11, scope: !1411)
!1416 = !DILocation(line: 403, column: 14, scope: !1411)
!1417 = !DILocation(line: 404, column: 11, scope: !1411)
!1418 = !DILocation(line: 404, column: 15, scope: !1411)
!1419 = !DILocation(line: 404, column: 19, scope: !1411)
!1420 = !DILocation(line: 404, column: 17, scope: !1411)
!1421 = !DILocation(line: 405, column: 19, scope: !1411)
!1422 = !DILocation(line: 405, column: 27, scope: !1411)
!1423 = !DILocation(line: 405, column: 39, scope: !1411)
!1424 = !DILocation(line: 405, column: 46, scope: !1411)
!1425 = !DILocation(line: 405, column: 44, scope: !1411)
!1426 = !DILocation(line: 409, column: 40, scope: !1411)
!1427 = !DILocation(line: 409, column: 32, scope: !1411)
!1428 = !DILocation(line: 409, column: 30, scope: !1411)
!1429 = !DILocation(line: 409, column: 48, scope: !1411)
!1430 = !DILocation(line: 405, column: 15, scope: !1411)
!1431 = !DILocation(line: 410, column: 11, scope: !1411)
!1432 = !DILocation(line: 410, column: 21, scope: !1411)
!1433 = !DILocation(line: 410, column: 27, scope: !1411)
!1434 = !DILocation(line: 410, column: 25, scope: !1411)
!1435 = !DILocation(line: 410, column: 30, scope: !1411)
!1436 = !DILocation(line: 410, column: 44, scope: !1411)
!1437 = !DILocation(line: 410, column: 14, scope: !1411)
!1438 = !DILocation(line: 401, column: 11, scope: !1404)
!1439 = !DILocation(line: 412, column: 15, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !133, line: 412, column: 15)
!1441 = distinct !DILexicalBlock(scope: !1411, file: !133, line: 411, column: 9)
!1442 = !DILocation(line: 412, column: 15, scope: !1441)
!1443 = !DILocation(line: 413, column: 13, scope: !1440)
!1444 = !DILocation(line: 414, column: 26, scope: !1441)
!1445 = !DILocation(line: 415, column: 9, scope: !1441)
!1446 = !DILocalVariable(name: "c", scope: !1404, file: !133, line: 417, type: !212)
!1447 = !DILocation(line: 417, column: 21, scope: !1404)
!1448 = !DILocation(line: 417, column: 25, scope: !1404)
!1449 = !DILocation(line: 417, column: 29, scope: !1404)
!1450 = !DILocation(line: 418, column: 15, scope: !1404)
!1451 = !DILocation(line: 418, column: 7, scope: !1404)
!1452 = !DILocation(line: 421, column: 15, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !133, line: 421, column: 15)
!1454 = distinct !DILexicalBlock(scope: !1404, file: !133, line: 419, column: 9)
!1455 = !DILocation(line: 421, column: 15, scope: !1454)
!1456 = !DILocation(line: 423, column: 15, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !133, line: 422, column: 13)
!1458 = !DILocation(line: 423, column: 15, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !133, line: 423, column: 15)
!1460 = distinct !DILexicalBlock(scope: !1457, file: !133, line: 423, column: 15)
!1461 = !DILocation(line: 423, column: 15, scope: !1460)
!1462 = !DILocation(line: 423, column: 15, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1460, file: !133, line: 423, column: 15)
!1464 = !DILocation(line: 423, column: 15, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1463, file: !133, line: 423, column: 15)
!1466 = !DILocation(line: 423, column: 15, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !133, line: 423, column: 15)
!1468 = distinct !DILexicalBlock(scope: !1465, file: !133, line: 423, column: 15)
!1469 = !DILocation(line: 423, column: 15, scope: !1468)
!1470 = !DILocation(line: 423, column: 15, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !133, line: 423, column: 15)
!1472 = distinct !DILexicalBlock(scope: !1465, file: !133, line: 423, column: 15)
!1473 = !DILocation(line: 423, column: 15, scope: !1472)
!1474 = !DILocation(line: 423, column: 15, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !133, line: 423, column: 15)
!1476 = distinct !DILexicalBlock(scope: !1465, file: !133, line: 423, column: 15)
!1477 = !DILocation(line: 423, column: 15, scope: !1476)
!1478 = !DILocation(line: 423, column: 15, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !133, line: 423, column: 15)
!1480 = distinct !DILexicalBlock(scope: !1460, file: !133, line: 423, column: 15)
!1481 = !DILocation(line: 423, column: 15, scope: !1480)
!1482 = !DILocation(line: 430, column: 19, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1457, file: !133, line: 430, column: 19)
!1484 = !DILocation(line: 430, column: 33, scope: !1483)
!1485 = !DILocation(line: 431, column: 19, scope: !1483)
!1486 = !DILocation(line: 431, column: 22, scope: !1483)
!1487 = !DILocation(line: 431, column: 24, scope: !1483)
!1488 = !DILocation(line: 431, column: 30, scope: !1483)
!1489 = !DILocation(line: 431, column: 28, scope: !1483)
!1490 = !DILocation(line: 431, column: 38, scope: !1483)
!1491 = !DILocation(line: 431, column: 48, scope: !1483)
!1492 = !DILocation(line: 431, column: 52, scope: !1483)
!1493 = !DILocation(line: 431, column: 54, scope: !1483)
!1494 = !DILocation(line: 431, column: 45, scope: !1483)
!1495 = !DILocation(line: 431, column: 59, scope: !1483)
!1496 = !DILocation(line: 431, column: 62, scope: !1483)
!1497 = !DILocation(line: 431, column: 66, scope: !1483)
!1498 = !DILocation(line: 431, column: 68, scope: !1483)
!1499 = !DILocation(line: 431, column: 73, scope: !1483)
!1500 = !DILocation(line: 430, column: 19, scope: !1457)
!1501 = !DILocation(line: 433, column: 19, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1483, file: !133, line: 432, column: 17)
!1503 = !DILocation(line: 433, column: 19, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !133, line: 433, column: 19)
!1505 = distinct !DILexicalBlock(scope: !1502, file: !133, line: 433, column: 19)
!1506 = !DILocation(line: 433, column: 19, scope: !1505)
!1507 = !DILocation(line: 434, column: 19, scope: !1502)
!1508 = !DILocation(line: 434, column: 19, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !133, line: 434, column: 19)
!1510 = distinct !DILexicalBlock(scope: !1502, file: !133, line: 434, column: 19)
!1511 = !DILocation(line: 434, column: 19, scope: !1510)
!1512 = !DILocation(line: 435, column: 17, scope: !1502)
!1513 = !DILocation(line: 436, column: 17, scope: !1457)
!1514 = !DILocation(line: 441, column: 13, scope: !1457)
!1515 = !DILocation(line: 442, column: 20, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1453, file: !133, line: 442, column: 20)
!1517 = !DILocation(line: 442, column: 26, scope: !1516)
!1518 = !DILocation(line: 442, column: 20, scope: !1453)
!1519 = !DILocation(line: 443, column: 13, scope: !1516)
!1520 = !DILocation(line: 444, column: 11, scope: !1454)
!1521 = !DILocation(line: 447, column: 20, scope: !1454)
!1522 = !DILocation(line: 447, column: 11, scope: !1454)
!1523 = !DILocation(line: 450, column: 19, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !133, line: 450, column: 19)
!1525 = distinct !DILexicalBlock(scope: !1454, file: !133, line: 448, column: 13)
!1526 = !DILocation(line: 450, column: 19, scope: !1525)
!1527 = !DILocation(line: 451, column: 17, scope: !1524)
!1528 = !DILocation(line: 452, column: 15, scope: !1525)
!1529 = !DILocation(line: 455, column: 20, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !133, line: 455, column: 19)
!1531 = !DILocation(line: 455, column: 26, scope: !1530)
!1532 = !DILocation(line: 456, column: 19, scope: !1530)
!1533 = !DILocation(line: 456, column: 22, scope: !1530)
!1534 = !DILocation(line: 456, column: 24, scope: !1530)
!1535 = !DILocation(line: 456, column: 30, scope: !1530)
!1536 = !DILocation(line: 456, column: 28, scope: !1530)
!1537 = !DILocation(line: 456, column: 38, scope: !1530)
!1538 = !DILocation(line: 456, column: 41, scope: !1530)
!1539 = !DILocation(line: 456, column: 45, scope: !1530)
!1540 = !DILocation(line: 456, column: 47, scope: !1530)
!1541 = !DILocation(line: 456, column: 52, scope: !1530)
!1542 = !DILocation(line: 455, column: 19, scope: !1525)
!1543 = !DILocation(line: 457, column: 25, scope: !1530)
!1544 = !DILocation(line: 457, column: 29, scope: !1530)
!1545 = !DILocation(line: 457, column: 31, scope: !1530)
!1546 = !DILocation(line: 457, column: 17, scope: !1530)
!1547 = !DILocation(line: 464, column: 25, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !133, line: 464, column: 25)
!1549 = distinct !DILexicalBlock(scope: !1530, file: !133, line: 458, column: 19)
!1550 = !DILocation(line: 464, column: 25, scope: !1549)
!1551 = !DILocation(line: 465, column: 23, scope: !1548)
!1552 = !DILocation(line: 466, column: 25, scope: !1549)
!1553 = !DILocation(line: 466, column: 29, scope: !1549)
!1554 = !DILocation(line: 466, column: 31, scope: !1549)
!1555 = !DILocation(line: 466, column: 23, scope: !1549)
!1556 = !DILocation(line: 467, column: 23, scope: !1549)
!1557 = !DILocation(line: 468, column: 21, scope: !1549)
!1558 = !DILocation(line: 468, column: 21, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !133, line: 468, column: 21)
!1560 = distinct !DILexicalBlock(scope: !1549, file: !133, line: 468, column: 21)
!1561 = !DILocation(line: 468, column: 21, scope: !1560)
!1562 = !DILocation(line: 469, column: 21, scope: !1549)
!1563 = !DILocation(line: 469, column: 21, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !133, line: 469, column: 21)
!1565 = distinct !DILexicalBlock(scope: !1549, file: !133, line: 469, column: 21)
!1566 = !DILocation(line: 469, column: 21, scope: !1565)
!1567 = !DILocation(line: 470, column: 21, scope: !1549)
!1568 = !DILocation(line: 470, column: 21, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !133, line: 470, column: 21)
!1570 = distinct !DILexicalBlock(scope: !1549, file: !133, line: 470, column: 21)
!1571 = !DILocation(line: 470, column: 21, scope: !1570)
!1572 = !DILocation(line: 471, column: 21, scope: !1549)
!1573 = !DILocation(line: 471, column: 21, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !133, line: 471, column: 21)
!1575 = distinct !DILexicalBlock(scope: !1549, file: !133, line: 471, column: 21)
!1576 = !DILocation(line: 471, column: 21, scope: !1575)
!1577 = !DILocation(line: 472, column: 21, scope: !1549)
!1578 = !DILocation(line: 473, column: 19, scope: !1549)
!1579 = !DILocation(line: 474, column: 15, scope: !1525)
!1580 = !DILocation(line: 476, column: 11, scope: !1454)
!1581 = !DILocation(line: 481, column: 26, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1454, file: !133, line: 478, column: 9)
!1583 = !DILocation(line: 481, column: 33, scope: !1582)
!1584 = !DILocation(line: 482, column: 26, scope: !1582)
!1585 = !DILocation(line: 482, column: 33, scope: !1582)
!1586 = !DILocation(line: 483, column: 26, scope: !1582)
!1587 = !DILocation(line: 483, column: 33, scope: !1582)
!1588 = !DILocation(line: 484, column: 26, scope: !1582)
!1589 = !DILocation(line: 484, column: 33, scope: !1582)
!1590 = !DILocation(line: 485, column: 26, scope: !1582)
!1591 = !DILocation(line: 485, column: 33, scope: !1582)
!1592 = !DILocation(line: 486, column: 26, scope: !1582)
!1593 = !DILocation(line: 486, column: 33, scope: !1582)
!1594 = !DILocation(line: 487, column: 26, scope: !1582)
!1595 = !DILocation(line: 487, column: 33, scope: !1582)
!1596 = !DILocation(line: 488, column: 28, scope: !1582)
!1597 = !DILocation(line: 488, column: 26, scope: !1582)
!1598 = !DILocation(line: 490, column: 17, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1582, file: !133, line: 490, column: 17)
!1600 = !DILocation(line: 490, column: 31, scope: !1599)
!1601 = !DILocation(line: 490, column: 17, scope: !1582)
!1602 = !DILocation(line: 492, column: 21, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !133, line: 492, column: 21)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !133, line: 491, column: 15)
!1605 = !DILocation(line: 492, column: 21, scope: !1604)
!1606 = !DILocation(line: 493, column: 19, scope: !1603)
!1607 = !DILocation(line: 494, column: 17, scope: !1604)
!1608 = !DILocation(line: 499, column: 17, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1582, file: !133, line: 499, column: 17)
!1610 = !DILocation(line: 499, column: 35, scope: !1609)
!1611 = !DILocation(line: 499, column: 38, scope: !1609)
!1612 = !DILocation(line: 499, column: 57, scope: !1609)
!1613 = !DILocation(line: 499, column: 60, scope: !1609)
!1614 = !DILocation(line: 499, column: 17, scope: !1582)
!1615 = !DILocation(line: 500, column: 15, scope: !1609)
!1616 = !DILabel(scope: !1582, name: "c_and_shell_escape", file: !133, line: 502)
!1617 = !DILocation(line: 502, column: 11, scope: !1582)
!1618 = !DILocation(line: 503, column: 17, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1582, file: !133, line: 503, column: 17)
!1620 = !DILocation(line: 503, column: 31, scope: !1619)
!1621 = !DILocation(line: 504, column: 17, scope: !1619)
!1622 = !DILocation(line: 504, column: 20, scope: !1619)
!1623 = !DILocation(line: 503, column: 17, scope: !1582)
!1624 = !DILocation(line: 505, column: 15, scope: !1619)
!1625 = !DILabel(scope: !1582, name: "c_escape", file: !133, line: 507)
!1626 = !DILocation(line: 507, column: 11, scope: !1582)
!1627 = !DILocation(line: 508, column: 17, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1582, file: !133, line: 508, column: 17)
!1629 = !DILocation(line: 508, column: 17, scope: !1582)
!1630 = !DILocation(line: 510, column: 21, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1628, file: !133, line: 509, column: 15)
!1632 = !DILocation(line: 510, column: 19, scope: !1631)
!1633 = !DILocation(line: 511, column: 17, scope: !1631)
!1634 = !DILocation(line: 513, column: 13, scope: !1582)
!1635 = !DILocation(line: 517, column: 18, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1454, file: !133, line: 517, column: 15)
!1637 = !DILocation(line: 517, column: 26, scope: !1636)
!1638 = !DILocation(line: 517, column: 15, scope: !1454)
!1639 = !DILocation(line: 517, column: 40, scope: !1636)
!1640 = !DILocation(line: 517, column: 47, scope: !1636)
!1641 = !DILocation(line: 517, column: 57, scope: !1636)
!1642 = !DILocation(line: 517, column: 65, scope: !1636)
!1643 = !DILocation(line: 518, column: 13, scope: !1636)
!1644 = !DILocation(line: 517, column: 69, scope: !1636)
!1645 = !DILocation(line: 521, column: 15, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1454, file: !133, line: 521, column: 15)
!1647 = !DILocation(line: 521, column: 17, scope: !1646)
!1648 = !DILocation(line: 521, column: 15, scope: !1454)
!1649 = !DILocation(line: 522, column: 13, scope: !1646)
!1650 = !DILocation(line: 521, column: 20, scope: !1646)
!1651 = !DILocation(line: 525, column: 36, scope: !1454)
!1652 = !DILocation(line: 525, column: 11, scope: !1454)
!1653 = !DILocation(line: 536, column: 15, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1454, file: !133, line: 536, column: 15)
!1655 = !DILocation(line: 536, column: 29, scope: !1654)
!1656 = !DILocation(line: 537, column: 15, scope: !1654)
!1657 = !DILocation(line: 537, column: 18, scope: !1654)
!1658 = !DILocation(line: 536, column: 15, scope: !1454)
!1659 = !DILocation(line: 538, column: 13, scope: !1654)
!1660 = !DILocation(line: 539, column: 11, scope: !1454)
!1661 = !DILocation(line: 542, column: 36, scope: !1454)
!1662 = !DILocation(line: 543, column: 36, scope: !1454)
!1663 = !DILocation(line: 544, column: 15, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1454, file: !133, line: 544, column: 15)
!1665 = !DILocation(line: 544, column: 29, scope: !1664)
!1666 = !DILocation(line: 544, column: 15, scope: !1454)
!1667 = !DILocation(line: 546, column: 19, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !133, line: 546, column: 19)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !133, line: 545, column: 13)
!1670 = !DILocation(line: 546, column: 19, scope: !1669)
!1671 = !DILocation(line: 547, column: 17, scope: !1668)
!1672 = !DILocation(line: 549, column: 19, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1669, file: !133, line: 549, column: 19)
!1674 = !DILocation(line: 549, column: 30, scope: !1673)
!1675 = !DILocation(line: 549, column: 35, scope: !1673)
!1676 = !DILocation(line: 549, column: 19, scope: !1669)
!1677 = !DILocation(line: 554, column: 37, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1673, file: !133, line: 550, column: 17)
!1679 = !DILocation(line: 554, column: 35, scope: !1678)
!1680 = !DILocation(line: 555, column: 30, scope: !1678)
!1681 = !DILocation(line: 556, column: 17, scope: !1678)
!1682 = !DILocation(line: 558, column: 15, scope: !1669)
!1683 = !DILocation(line: 558, column: 15, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !133, line: 558, column: 15)
!1685 = distinct !DILexicalBlock(scope: !1669, file: !133, line: 558, column: 15)
!1686 = !DILocation(line: 558, column: 15, scope: !1685)
!1687 = !DILocation(line: 559, column: 15, scope: !1669)
!1688 = !DILocation(line: 559, column: 15, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !133, line: 559, column: 15)
!1690 = distinct !DILexicalBlock(scope: !1669, file: !133, line: 559, column: 15)
!1691 = !DILocation(line: 559, column: 15, scope: !1690)
!1692 = !DILocation(line: 560, column: 15, scope: !1669)
!1693 = !DILocation(line: 560, column: 15, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !133, line: 560, column: 15)
!1695 = distinct !DILexicalBlock(scope: !1669, file: !133, line: 560, column: 15)
!1696 = !DILocation(line: 560, column: 15, scope: !1695)
!1697 = !DILocation(line: 561, column: 40, scope: !1669)
!1698 = !DILocation(line: 562, column: 13, scope: !1669)
!1699 = !DILocation(line: 563, column: 11, scope: !1454)
!1700 = !DILocation(line: 587, column: 36, scope: !1454)
!1701 = !DILocation(line: 588, column: 11, scope: !1454)
!1702 = !DILocalVariable(name: "m", scope: !1703, file: !133, line: 598, type: !141)
!1703 = distinct !DILexicalBlock(scope: !1454, file: !133, line: 596, column: 11)
!1704 = !DILocation(line: 598, column: 20, scope: !1703)
!1705 = !DILocalVariable(name: "printable", scope: !1703, file: !133, line: 600, type: !60)
!1706 = !DILocation(line: 600, column: 18, scope: !1703)
!1707 = !DILocation(line: 602, column: 17, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1703, file: !133, line: 602, column: 17)
!1709 = !DILocation(line: 602, column: 17, scope: !1703)
!1710 = !DILocation(line: 604, column: 19, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1708, file: !133, line: 603, column: 15)
!1712 = !DILocation(line: 605, column: 29, scope: !1711)
!1713 = !DILocation(line: 605, column: 41, scope: !1711)
!1714 = !DILocation(line: 605, column: 27, scope: !1711)
!1715 = !DILocation(line: 606, column: 15, scope: !1711)
!1716 = !DILocalVariable(name: "mbs", scope: !1717, file: !133, line: 609, type: !1718)
!1717 = distinct !DILexicalBlock(scope: !1708, file: !133, line: 608, column: 15)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !1719)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !1720)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1720, file: !217, line: 15, baseType: !44, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1720, file: !217, line: 20, baseType: !1724, size: 32, offset: 32)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1720, file: !217, line: 16, size: 32, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1724, file: !217, line: 18, baseType: !14, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1724, file: !217, line: 19, baseType: !226, size: 32)
!1728 = !DILocation(line: 609, column: 27, scope: !1717)
!1729 = !DILocation(line: 609, column: 32, scope: !1717)
!1730 = !DILocation(line: 611, column: 19, scope: !1717)
!1731 = !DILocation(line: 612, column: 27, scope: !1717)
!1732 = !DILocation(line: 613, column: 21, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1717, file: !133, line: 613, column: 21)
!1734 = !DILocation(line: 613, column: 29, scope: !1733)
!1735 = !DILocation(line: 613, column: 21, scope: !1717)
!1736 = !DILocation(line: 614, column: 37, scope: !1733)
!1737 = !DILocation(line: 614, column: 29, scope: !1733)
!1738 = !DILocation(line: 614, column: 27, scope: !1733)
!1739 = !DILocation(line: 614, column: 19, scope: !1733)
!1740 = !DILocation(line: 616, column: 17, scope: !1717)
!1741 = !DILocalVariable(name: "w", scope: !1742, file: !133, line: 618, type: !1038)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !133, line: 617, column: 19)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !133, line: 616, column: 17)
!1744 = distinct !DILexicalBlock(scope: !1717, file: !133, line: 616, column: 17)
!1745 = !DILocation(line: 618, column: 30, scope: !1742)
!1746 = !DILocalVariable(name: "bytes", scope: !1742, file: !133, line: 619, type: !141)
!1747 = !DILocation(line: 619, column: 28, scope: !1742)
!1748 = !DILocation(line: 619, column: 51, scope: !1742)
!1749 = !DILocation(line: 619, column: 55, scope: !1742)
!1750 = !DILocation(line: 619, column: 59, scope: !1742)
!1751 = !DILocation(line: 619, column: 57, scope: !1742)
!1752 = !DILocation(line: 620, column: 46, scope: !1742)
!1753 = !DILocation(line: 620, column: 57, scope: !1742)
!1754 = !DILocation(line: 620, column: 61, scope: !1742)
!1755 = !DILocation(line: 620, column: 59, scope: !1742)
!1756 = !DILocation(line: 620, column: 54, scope: !1742)
!1757 = !DILocation(line: 619, column: 36, scope: !1742)
!1758 = !DILocation(line: 621, column: 25, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1742, file: !133, line: 621, column: 25)
!1760 = !DILocation(line: 621, column: 31, scope: !1759)
!1761 = !DILocation(line: 621, column: 25, scope: !1742)
!1762 = !DILocation(line: 622, column: 23, scope: !1759)
!1763 = !DILocation(line: 623, column: 30, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1759, file: !133, line: 623, column: 30)
!1765 = !DILocation(line: 623, column: 36, scope: !1764)
!1766 = !DILocation(line: 623, column: 30, scope: !1759)
!1767 = !DILocation(line: 625, column: 35, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1764, file: !133, line: 624, column: 23)
!1769 = !DILocation(line: 626, column: 25, scope: !1768)
!1770 = !DILocation(line: 628, column: 30, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1764, file: !133, line: 628, column: 30)
!1772 = !DILocation(line: 628, column: 36, scope: !1771)
!1773 = !DILocation(line: 628, column: 30, scope: !1764)
!1774 = !DILocation(line: 630, column: 35, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1771, file: !133, line: 629, column: 23)
!1776 = !DILocation(line: 631, column: 25, scope: !1775)
!1777 = !DILocation(line: 631, column: 32, scope: !1775)
!1778 = !DILocation(line: 631, column: 36, scope: !1775)
!1779 = !DILocation(line: 631, column: 34, scope: !1775)
!1780 = !DILocation(line: 631, column: 40, scope: !1775)
!1781 = !DILocation(line: 631, column: 38, scope: !1775)
!1782 = !DILocation(line: 631, column: 48, scope: !1775)
!1783 = !DILocation(line: 631, column: 51, scope: !1775)
!1784 = !DILocation(line: 631, column: 55, scope: !1775)
!1785 = !DILocation(line: 631, column: 59, scope: !1775)
!1786 = !DILocation(line: 631, column: 57, scope: !1775)
!1787 = !DILocation(line: 0, scope: !1775)
!1788 = !DILocation(line: 632, column: 28, scope: !1775)
!1789 = distinct !{!1789, !1776, !1788, !393}
!1790 = !DILocation(line: 633, column: 25, scope: !1775)
!1791 = !DILocation(line: 645, column: 44, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !133, line: 645, column: 29)
!1793 = distinct !DILexicalBlock(scope: !1771, file: !133, line: 636, column: 23)
!1794 = !DILocation(line: 646, column: 29, scope: !1792)
!1795 = !DILocation(line: 646, column: 32, scope: !1792)
!1796 = !DILocation(line: 646, column: 46, scope: !1792)
!1797 = !DILocation(line: 645, column: 29, scope: !1793)
!1798 = !DILocalVariable(name: "j", scope: !1799, file: !133, line: 648, type: !141)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !133, line: 648, column: 29)
!1800 = distinct !DILexicalBlock(scope: !1792, file: !133, line: 647, column: 27)
!1801 = !DILocation(line: 648, column: 41, scope: !1799)
!1802 = !DILocation(line: 648, column: 34, scope: !1799)
!1803 = !DILocation(line: 648, column: 48, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1799, file: !133, line: 648, column: 29)
!1805 = !DILocation(line: 648, column: 52, scope: !1804)
!1806 = !DILocation(line: 648, column: 50, scope: !1804)
!1807 = !DILocation(line: 648, column: 29, scope: !1799)
!1808 = !DILocation(line: 649, column: 39, scope: !1804)
!1809 = !DILocation(line: 649, column: 43, scope: !1804)
!1810 = !DILocation(line: 649, column: 47, scope: !1804)
!1811 = !DILocation(line: 649, column: 45, scope: !1804)
!1812 = !DILocation(line: 649, column: 51, scope: !1804)
!1813 = !DILocation(line: 649, column: 49, scope: !1804)
!1814 = !DILocation(line: 649, column: 31, scope: !1804)
!1815 = !DILocation(line: 653, column: 35, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1804, file: !133, line: 650, column: 33)
!1817 = !DILocation(line: 654, column: 33, scope: !1816)
!1818 = !DILocation(line: 648, column: 60, scope: !1804)
!1819 = !DILocation(line: 648, column: 29, scope: !1804)
!1820 = distinct !{!1820, !1807, !1821, !393}
!1821 = !DILocation(line: 654, column: 33, scope: !1799)
!1822 = !DILocation(line: 655, column: 27, scope: !1800)
!1823 = !DILocation(line: 657, column: 43, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1793, file: !133, line: 657, column: 29)
!1825 = !DILocation(line: 657, column: 31, scope: !1824)
!1826 = !DILocation(line: 657, column: 29, scope: !1793)
!1827 = !DILocation(line: 658, column: 37, scope: !1824)
!1828 = !DILocation(line: 658, column: 27, scope: !1824)
!1829 = !DILocation(line: 659, column: 30, scope: !1793)
!1830 = !DILocation(line: 659, column: 27, scope: !1793)
!1831 = !DILocation(line: 664, column: 23, scope: !1742)
!1832 = !DILocation(line: 668, column: 40, scope: !1703)
!1833 = !DILocation(line: 668, column: 38, scope: !1703)
!1834 = !DILocation(line: 670, column: 21, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1703, file: !133, line: 670, column: 17)
!1836 = !DILocation(line: 670, column: 19, scope: !1835)
!1837 = !DILocation(line: 670, column: 23, scope: !1835)
!1838 = !DILocation(line: 670, column: 27, scope: !1835)
!1839 = !DILocation(line: 670, column: 45, scope: !1835)
!1840 = !DILocation(line: 670, column: 50, scope: !1835)
!1841 = !DILocation(line: 670, column: 17, scope: !1703)
!1842 = !DILocalVariable(name: "ilim", scope: !1843, file: !133, line: 674, type: !141)
!1843 = distinct !DILexicalBlock(scope: !1835, file: !133, line: 671, column: 15)
!1844 = !DILocation(line: 674, column: 24, scope: !1843)
!1845 = !DILocation(line: 674, column: 31, scope: !1843)
!1846 = !DILocation(line: 674, column: 35, scope: !1843)
!1847 = !DILocation(line: 674, column: 33, scope: !1843)
!1848 = !DILocation(line: 676, column: 17, scope: !1843)
!1849 = !DILocation(line: 678, column: 25, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !133, line: 678, column: 25)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !133, line: 677, column: 19)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !133, line: 676, column: 17)
!1853 = distinct !DILexicalBlock(scope: !1843, file: !133, line: 676, column: 17)
!1854 = !DILocation(line: 678, column: 43, scope: !1850)
!1855 = !DILocation(line: 678, column: 48, scope: !1850)
!1856 = !DILocation(line: 678, column: 25, scope: !1851)
!1857 = !DILocation(line: 680, column: 25, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1850, file: !133, line: 679, column: 23)
!1859 = !DILocation(line: 680, column: 25, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !133, line: 680, column: 25)
!1861 = distinct !DILexicalBlock(scope: !1858, file: !133, line: 680, column: 25)
!1862 = !DILocation(line: 680, column: 25, scope: !1861)
!1863 = !DILocation(line: 680, column: 25, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1861, file: !133, line: 680, column: 25)
!1865 = !DILocation(line: 680, column: 25, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1864, file: !133, line: 680, column: 25)
!1867 = !DILocation(line: 680, column: 25, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !133, line: 680, column: 25)
!1869 = distinct !DILexicalBlock(scope: !1866, file: !133, line: 680, column: 25)
!1870 = !DILocation(line: 680, column: 25, scope: !1869)
!1871 = !DILocation(line: 680, column: 25, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !133, line: 680, column: 25)
!1873 = distinct !DILexicalBlock(scope: !1866, file: !133, line: 680, column: 25)
!1874 = !DILocation(line: 680, column: 25, scope: !1873)
!1875 = !DILocation(line: 680, column: 25, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !133, line: 680, column: 25)
!1877 = distinct !DILexicalBlock(scope: !1866, file: !133, line: 680, column: 25)
!1878 = !DILocation(line: 680, column: 25, scope: !1877)
!1879 = !DILocation(line: 680, column: 25, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !133, line: 680, column: 25)
!1881 = distinct !DILexicalBlock(scope: !1861, file: !133, line: 680, column: 25)
!1882 = !DILocation(line: 680, column: 25, scope: !1881)
!1883 = !DILocation(line: 681, column: 25, scope: !1858)
!1884 = !DILocation(line: 681, column: 25, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !133, line: 681, column: 25)
!1886 = distinct !DILexicalBlock(scope: !1858, file: !133, line: 681, column: 25)
!1887 = !DILocation(line: 681, column: 25, scope: !1886)
!1888 = !DILocation(line: 682, column: 25, scope: !1858)
!1889 = !DILocation(line: 682, column: 25, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !133, line: 682, column: 25)
!1891 = distinct !DILexicalBlock(scope: !1858, file: !133, line: 682, column: 25)
!1892 = !DILocation(line: 682, column: 25, scope: !1891)
!1893 = !DILocation(line: 683, column: 36, scope: !1858)
!1894 = !DILocation(line: 683, column: 38, scope: !1858)
!1895 = !DILocation(line: 683, column: 33, scope: !1858)
!1896 = !DILocation(line: 683, column: 29, scope: !1858)
!1897 = !DILocation(line: 683, column: 27, scope: !1858)
!1898 = !DILocation(line: 684, column: 23, scope: !1858)
!1899 = !DILocation(line: 685, column: 30, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1850, file: !133, line: 685, column: 30)
!1901 = !DILocation(line: 685, column: 30, scope: !1850)
!1902 = !DILocation(line: 687, column: 25, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1900, file: !133, line: 686, column: 23)
!1904 = !DILocation(line: 687, column: 25, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !133, line: 687, column: 25)
!1906 = distinct !DILexicalBlock(scope: !1903, file: !133, line: 687, column: 25)
!1907 = !DILocation(line: 687, column: 25, scope: !1906)
!1908 = !DILocation(line: 688, column: 40, scope: !1903)
!1909 = !DILocation(line: 689, column: 23, scope: !1903)
!1910 = !DILocation(line: 690, column: 25, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1851, file: !133, line: 690, column: 25)
!1912 = !DILocation(line: 690, column: 33, scope: !1911)
!1913 = !DILocation(line: 690, column: 35, scope: !1911)
!1914 = !DILocation(line: 690, column: 30, scope: !1911)
!1915 = !DILocation(line: 690, column: 25, scope: !1851)
!1916 = !DILocation(line: 691, column: 23, scope: !1911)
!1917 = !DILocation(line: 692, column: 21, scope: !1851)
!1918 = !DILocation(line: 692, column: 21, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !133, line: 692, column: 21)
!1920 = distinct !DILexicalBlock(scope: !1851, file: !133, line: 692, column: 21)
!1921 = !DILocation(line: 692, column: 21, scope: !1920)
!1922 = !DILocation(line: 692, column: 21, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1919, file: !133, line: 692, column: 21)
!1924 = !DILocation(line: 692, column: 21, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !133, line: 692, column: 21)
!1926 = distinct !DILexicalBlock(scope: !1923, file: !133, line: 692, column: 21)
!1927 = !DILocation(line: 692, column: 21, scope: !1926)
!1928 = !DILocation(line: 692, column: 21, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !133, line: 692, column: 21)
!1930 = distinct !DILexicalBlock(scope: !1923, file: !133, line: 692, column: 21)
!1931 = !DILocation(line: 692, column: 21, scope: !1930)
!1932 = !DILocation(line: 693, column: 21, scope: !1851)
!1933 = !DILocation(line: 693, column: 21, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !133, line: 693, column: 21)
!1935 = distinct !DILexicalBlock(scope: !1851, file: !133, line: 693, column: 21)
!1936 = !DILocation(line: 693, column: 21, scope: !1935)
!1937 = !DILocation(line: 694, column: 25, scope: !1851)
!1938 = !DILocation(line: 694, column: 29, scope: !1851)
!1939 = !DILocation(line: 694, column: 23, scope: !1851)
!1940 = !DILocation(line: 676, column: 17, scope: !1852)
!1941 = distinct !{!1941, !1942, !1943}
!1942 = !DILocation(line: 676, column: 17, scope: !1853)
!1943 = !DILocation(line: 695, column: 19, scope: !1853)
!1944 = !DILocation(line: 697, column: 17, scope: !1843)
!1945 = !DILocation(line: 700, column: 9, scope: !1454)
!1946 = !DILocation(line: 702, column: 16, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1404, file: !133, line: 702, column: 11)
!1948 = !DILocation(line: 702, column: 34, scope: !1947)
!1949 = !DILocation(line: 702, column: 37, scope: !1947)
!1950 = !DILocation(line: 702, column: 51, scope: !1947)
!1951 = !DILocation(line: 703, column: 15, scope: !1947)
!1952 = !DILocation(line: 703, column: 18, scope: !1947)
!1953 = !DILocation(line: 704, column: 14, scope: !1947)
!1954 = !DILocation(line: 704, column: 17, scope: !1947)
!1955 = !DILocation(line: 705, column: 14, scope: !1947)
!1956 = !DILocation(line: 705, column: 17, scope: !1947)
!1957 = !DILocation(line: 705, column: 33, scope: !1947)
!1958 = !DILocation(line: 705, column: 35, scope: !1947)
!1959 = !DILocation(line: 705, column: 51, scope: !1947)
!1960 = !DILocation(line: 705, column: 53, scope: !1947)
!1961 = !DILocation(line: 705, column: 47, scope: !1947)
!1962 = !DILocation(line: 705, column: 65, scope: !1947)
!1963 = !DILocation(line: 706, column: 11, scope: !1947)
!1964 = !DILocation(line: 706, column: 15, scope: !1947)
!1965 = !DILocation(line: 702, column: 11, scope: !1404)
!1966 = !DILocation(line: 707, column: 9, scope: !1947)
!1967 = !DILabel(scope: !1404, name: "store_escape", file: !133, line: 709)
!1968 = !DILocation(line: 709, column: 5, scope: !1404)
!1969 = !DILocation(line: 710, column: 7, scope: !1404)
!1970 = !DILocation(line: 710, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !133, line: 710, column: 7)
!1972 = distinct !DILexicalBlock(scope: !1404, file: !133, line: 710, column: 7)
!1973 = !DILocation(line: 710, column: 7, scope: !1972)
!1974 = !DILocation(line: 710, column: 7, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1972, file: !133, line: 710, column: 7)
!1976 = !DILocation(line: 710, column: 7, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1975, file: !133, line: 710, column: 7)
!1978 = !DILocation(line: 710, column: 7, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !133, line: 710, column: 7)
!1980 = distinct !DILexicalBlock(scope: !1977, file: !133, line: 710, column: 7)
!1981 = !DILocation(line: 710, column: 7, scope: !1980)
!1982 = !DILocation(line: 710, column: 7, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !133, line: 710, column: 7)
!1984 = distinct !DILexicalBlock(scope: !1977, file: !133, line: 710, column: 7)
!1985 = !DILocation(line: 710, column: 7, scope: !1984)
!1986 = !DILocation(line: 710, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !133, line: 710, column: 7)
!1988 = distinct !DILexicalBlock(scope: !1977, file: !133, line: 710, column: 7)
!1989 = !DILocation(line: 710, column: 7, scope: !1988)
!1990 = !DILocation(line: 710, column: 7, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !133, line: 710, column: 7)
!1992 = distinct !DILexicalBlock(scope: !1972, file: !133, line: 710, column: 7)
!1993 = !DILocation(line: 710, column: 7, scope: !1992)
!1994 = !DILabel(scope: !1404, name: "store_c", file: !133, line: 712)
!1995 = !DILocation(line: 712, column: 5, scope: !1404)
!1996 = !DILocation(line: 713, column: 7, scope: !1404)
!1997 = !DILocation(line: 713, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !133, line: 713, column: 7)
!1999 = distinct !DILexicalBlock(scope: !1404, file: !133, line: 713, column: 7)
!2000 = !DILocation(line: 713, column: 7, scope: !1999)
!2001 = !DILocation(line: 713, column: 7, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !133, line: 713, column: 7)
!2003 = !DILocation(line: 713, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !133, line: 713, column: 7)
!2005 = distinct !DILexicalBlock(scope: !2002, file: !133, line: 713, column: 7)
!2006 = !DILocation(line: 713, column: 7, scope: !2005)
!2007 = !DILocation(line: 713, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !133, line: 713, column: 7)
!2009 = distinct !DILexicalBlock(scope: !2002, file: !133, line: 713, column: 7)
!2010 = !DILocation(line: 713, column: 7, scope: !2009)
!2011 = !DILocation(line: 714, column: 7, scope: !1404)
!2012 = !DILocation(line: 714, column: 7, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !133, line: 714, column: 7)
!2014 = distinct !DILexicalBlock(scope: !1404, file: !133, line: 714, column: 7)
!2015 = !DILocation(line: 714, column: 7, scope: !2014)
!2016 = !DILocation(line: 716, column: 13, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1404, file: !133, line: 716, column: 11)
!2018 = !DILocation(line: 716, column: 11, scope: !1404)
!2019 = !DILocation(line: 717, column: 38, scope: !2017)
!2020 = !DILocation(line: 717, column: 9, scope: !2017)
!2021 = !DILocation(line: 718, column: 5, scope: !1404)
!2022 = !DILocation(line: 395, column: 82, scope: !1393)
!2023 = !DILocation(line: 395, column: 3, scope: !1393)
!2024 = distinct !{!2024, !1402, !2025, !393}
!2025 = !DILocation(line: 718, column: 5, scope: !1389)
!2026 = !DILocation(line: 720, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1251, file: !133, line: 720, column: 7)
!2028 = !DILocation(line: 720, column: 11, scope: !2027)
!2029 = !DILocation(line: 720, column: 16, scope: !2027)
!2030 = !DILocation(line: 720, column: 19, scope: !2027)
!2031 = !DILocation(line: 720, column: 33, scope: !2027)
!2032 = !DILocation(line: 721, column: 7, scope: !2027)
!2033 = !DILocation(line: 721, column: 10, scope: !2027)
!2034 = !DILocation(line: 720, column: 7, scope: !1251)
!2035 = !DILocation(line: 722, column: 5, scope: !2027)
!2036 = !DILocation(line: 728, column: 7, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1251, file: !133, line: 728, column: 7)
!2038 = !DILocation(line: 728, column: 21, scope: !2037)
!2039 = !DILocation(line: 728, column: 51, scope: !2037)
!2040 = !DILocation(line: 728, column: 56, scope: !2037)
!2041 = !DILocation(line: 729, column: 7, scope: !2037)
!2042 = !DILocation(line: 729, column: 10, scope: !2037)
!2043 = !DILocation(line: 728, column: 7, scope: !1251)
!2044 = !DILocation(line: 731, column: 11, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !133, line: 731, column: 11)
!2046 = distinct !DILexicalBlock(scope: !2037, file: !133, line: 730, column: 5)
!2047 = !DILocation(line: 731, column: 11, scope: !2046)
!2048 = !DILocation(line: 732, column: 42, scope: !2045)
!2049 = !DILocation(line: 732, column: 50, scope: !2045)
!2050 = !DILocation(line: 732, column: 67, scope: !2045)
!2051 = !DILocation(line: 732, column: 72, scope: !2045)
!2052 = !DILocation(line: 734, column: 42, scope: !2045)
!2053 = !DILocation(line: 734, column: 49, scope: !2045)
!2054 = !DILocation(line: 735, column: 42, scope: !2045)
!2055 = !DILocation(line: 735, column: 54, scope: !2045)
!2056 = !DILocation(line: 732, column: 16, scope: !2045)
!2057 = !DILocation(line: 732, column: 9, scope: !2045)
!2058 = !DILocation(line: 736, column: 18, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2045, file: !133, line: 736, column: 16)
!2060 = !DILocation(line: 736, column: 29, scope: !2059)
!2061 = !DILocation(line: 736, column: 32, scope: !2059)
!2062 = !DILocation(line: 736, column: 16, scope: !2045)
!2063 = !DILocation(line: 739, column: 24, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2059, file: !133, line: 737, column: 9)
!2065 = !DILocation(line: 739, column: 22, scope: !2064)
!2066 = !DILocation(line: 740, column: 15, scope: !2064)
!2067 = !DILocation(line: 741, column: 11, scope: !2064)
!2068 = !DILocation(line: 743, column: 5, scope: !2046)
!2069 = !DILocation(line: 745, column: 7, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1251, file: !133, line: 745, column: 7)
!2071 = !DILocation(line: 745, column: 20, scope: !2070)
!2072 = !DILocation(line: 745, column: 24, scope: !2070)
!2073 = !DILocation(line: 745, column: 7, scope: !1251)
!2074 = !DILocation(line: 746, column: 5, scope: !2070)
!2075 = !DILocation(line: 746, column: 13, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !133, line: 746, column: 5)
!2077 = distinct !DILexicalBlock(scope: !2070, file: !133, line: 746, column: 5)
!2078 = !DILocation(line: 746, column: 12, scope: !2076)
!2079 = !DILocation(line: 746, column: 5, scope: !2077)
!2080 = !DILocation(line: 747, column: 7, scope: !2076)
!2081 = !DILocation(line: 747, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !133, line: 747, column: 7)
!2083 = distinct !DILexicalBlock(scope: !2076, file: !133, line: 747, column: 7)
!2084 = !DILocation(line: 747, column: 7, scope: !2083)
!2085 = !DILocation(line: 746, column: 39, scope: !2076)
!2086 = !DILocation(line: 746, column: 5, scope: !2076)
!2087 = distinct !{!2087, !2079, !2088, !393}
!2088 = !DILocation(line: 747, column: 7, scope: !2077)
!2089 = !DILocation(line: 749, column: 7, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1251, file: !133, line: 749, column: 7)
!2091 = !DILocation(line: 749, column: 13, scope: !2090)
!2092 = !DILocation(line: 749, column: 11, scope: !2090)
!2093 = !DILocation(line: 749, column: 7, scope: !1251)
!2094 = !DILocation(line: 750, column: 5, scope: !2090)
!2095 = !DILocation(line: 750, column: 12, scope: !2090)
!2096 = !DILocation(line: 750, column: 17, scope: !2090)
!2097 = !DILocation(line: 751, column: 10, scope: !1251)
!2098 = !DILocation(line: 751, column: 3, scope: !1251)
!2099 = !DILabel(scope: !1251, name: "force_outer_quoting_style", file: !133, line: 753)
!2100 = !DILocation(line: 753, column: 2, scope: !1251)
!2101 = !DILocation(line: 756, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1251, file: !133, line: 756, column: 7)
!2103 = !DILocation(line: 756, column: 21, scope: !2102)
!2104 = !DILocation(line: 756, column: 51, scope: !2102)
!2105 = !DILocation(line: 756, column: 54, scope: !2102)
!2106 = !DILocation(line: 756, column: 7, scope: !1251)
!2107 = !DILocation(line: 757, column: 19, scope: !2102)
!2108 = !DILocation(line: 757, column: 5, scope: !2102)
!2109 = !DILocation(line: 758, column: 36, scope: !1251)
!2110 = !DILocation(line: 758, column: 44, scope: !1251)
!2111 = !DILocation(line: 758, column: 56, scope: !1251)
!2112 = !DILocation(line: 758, column: 61, scope: !1251)
!2113 = !DILocation(line: 759, column: 36, scope: !1251)
!2114 = !DILocation(line: 760, column: 36, scope: !1251)
!2115 = !DILocation(line: 760, column: 42, scope: !1251)
!2116 = !DILocation(line: 761, column: 36, scope: !1251)
!2117 = !DILocation(line: 761, column: 48, scope: !1251)
!2118 = !DILocation(line: 758, column: 10, scope: !1251)
!2119 = !DILocation(line: 758, column: 3, scope: !1251)
!2120 = !DILocation(line: 762, column: 1, scope: !1251)
!2121 = !DILocalVariable(name: "msgid", arg: 1, scope: !172, file: !133, line: 197, type: !6)
!2122 = !DILocation(line: 197, column: 28, scope: !172)
!2123 = !DILocalVariable(name: "s", arg: 2, scope: !172, file: !133, line: 197, type: !12)
!2124 = !DILocation(line: 197, column: 54, scope: !172)
!2125 = !DILocalVariable(name: "translation", scope: !172, file: !133, line: 199, type: !6)
!2126 = !DILocation(line: 199, column: 15, scope: !172)
!2127 = !DILocation(line: 199, column: 29, scope: !172)
!2128 = !DILocation(line: 201, column: 7, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !172, file: !133, line: 201, column: 7)
!2130 = !DILocation(line: 201, column: 22, scope: !2129)
!2131 = !DILocation(line: 201, column: 19, scope: !2129)
!2132 = !DILocation(line: 201, column: 7, scope: !172)
!2133 = !DILocation(line: 202, column: 12, scope: !2129)
!2134 = !DILocation(line: 202, column: 5, scope: !2129)
!2135 = !DILocalVariable(name: "w", scope: !172, file: !133, line: 229, type: !1038)
!2136 = !DILocation(line: 229, column: 12, scope: !172)
!2137 = !DILocalVariable(name: "mbs", scope: !172, file: !133, line: 230, type: !1718)
!2138 = !DILocation(line: 230, column: 13, scope: !172)
!2139 = !DILocation(line: 230, column: 18, scope: !172)
!2140 = !DILocation(line: 231, column: 7, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !172, file: !133, line: 231, column: 7)
!2142 = !DILocation(line: 231, column: 40, scope: !2141)
!2143 = !DILocation(line: 231, column: 45, scope: !2141)
!2144 = !DILocation(line: 231, column: 48, scope: !2141)
!2145 = !DILocation(line: 231, column: 50, scope: !2141)
!2146 = !DILocation(line: 231, column: 7, scope: !172)
!2147 = !DILocation(line: 232, column: 18, scope: !2141)
!2148 = !DILocation(line: 232, column: 27, scope: !2141)
!2149 = !DILocation(line: 232, column: 12, scope: !2141)
!2150 = !DILocation(line: 232, column: 5, scope: !2141)
!2151 = !DILocation(line: 234, column: 11, scope: !172)
!2152 = !DILocation(line: 234, column: 13, scope: !172)
!2153 = !DILocation(line: 234, column: 3, scope: !172)
!2154 = !DILocation(line: 235, column: 1, scope: !172)
!2155 = distinct !DISubprogram(name: "quotearg_alloc", scope: !133, file: !133, line: 788, type: !2156, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!117, !6, !141, !1091}
!2158 = !DILocalVariable(name: "arg", arg: 1, scope: !2155, file: !133, line: 788, type: !6)
!2159 = !DILocation(line: 788, column: 29, scope: !2155)
!2160 = !DILocalVariable(name: "argsize", arg: 2, scope: !2155, file: !133, line: 788, type: !141)
!2161 = !DILocation(line: 788, column: 41, scope: !2155)
!2162 = !DILocalVariable(name: "o", arg: 3, scope: !2155, file: !133, line: 789, type: !1091)
!2163 = !DILocation(line: 789, column: 47, scope: !2155)
!2164 = !DILocation(line: 791, column: 30, scope: !2155)
!2165 = !DILocation(line: 791, column: 35, scope: !2155)
!2166 = !DILocation(line: 791, column: 50, scope: !2155)
!2167 = !DILocation(line: 791, column: 10, scope: !2155)
!2168 = !DILocation(line: 791, column: 3, scope: !2155)
!2169 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !133, file: !133, line: 801, type: !2170, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!117, !6, !141, !245, !1091}
!2172 = !DILocalVariable(name: "arg", arg: 1, scope: !2169, file: !133, line: 801, type: !6)
!2173 = !DILocation(line: 801, column: 33, scope: !2169)
!2174 = !DILocalVariable(name: "argsize", arg: 2, scope: !2169, file: !133, line: 801, type: !141)
!2175 = !DILocation(line: 801, column: 45, scope: !2169)
!2176 = !DILocalVariable(name: "size", arg: 3, scope: !2169, file: !133, line: 801, type: !245)
!2177 = !DILocation(line: 801, column: 62, scope: !2169)
!2178 = !DILocalVariable(name: "o", arg: 4, scope: !2169, file: !133, line: 802, type: !1091)
!2179 = !DILocation(line: 802, column: 51, scope: !2169)
!2180 = !DILocalVariable(name: "p", scope: !2169, file: !133, line: 804, type: !1091)
!2181 = !DILocation(line: 804, column: 33, scope: !2169)
!2182 = !DILocation(line: 804, column: 37, scope: !2169)
!2183 = !DILocation(line: 804, column: 41, scope: !2169)
!2184 = !DILocalVariable(name: "saved_errno", scope: !2169, file: !133, line: 805, type: !44)
!2185 = !DILocation(line: 805, column: 7, scope: !2169)
!2186 = !DILocation(line: 805, column: 21, scope: !2169)
!2187 = !DILocalVariable(name: "flags", scope: !2169, file: !133, line: 807, type: !44)
!2188 = !DILocation(line: 807, column: 7, scope: !2169)
!2189 = !DILocation(line: 807, column: 15, scope: !2169)
!2190 = !DILocation(line: 807, column: 18, scope: !2169)
!2191 = !DILocation(line: 807, column: 27, scope: !2169)
!2192 = !DILocation(line: 807, column: 24, scope: !2169)
!2193 = !DILocalVariable(name: "bufsize", scope: !2169, file: !133, line: 808, type: !141)
!2194 = !DILocation(line: 808, column: 10, scope: !2169)
!2195 = !DILocation(line: 808, column: 55, scope: !2169)
!2196 = !DILocation(line: 808, column: 60, scope: !2169)
!2197 = !DILocation(line: 808, column: 69, scope: !2169)
!2198 = !DILocation(line: 808, column: 72, scope: !2169)
!2199 = !DILocation(line: 809, column: 46, scope: !2169)
!2200 = !DILocation(line: 809, column: 53, scope: !2169)
!2201 = !DILocation(line: 809, column: 56, scope: !2169)
!2202 = !DILocation(line: 810, column: 46, scope: !2169)
!2203 = !DILocation(line: 810, column: 49, scope: !2169)
!2204 = !DILocation(line: 811, column: 46, scope: !2169)
!2205 = !DILocation(line: 811, column: 49, scope: !2169)
!2206 = !DILocation(line: 808, column: 20, scope: !2169)
!2207 = !DILocation(line: 811, column: 62, scope: !2169)
!2208 = !DILocalVariable(name: "buf", scope: !2169, file: !133, line: 812, type: !117)
!2209 = !DILocation(line: 812, column: 9, scope: !2169)
!2210 = !DILocation(line: 812, column: 27, scope: !2169)
!2211 = !DILocation(line: 812, column: 15, scope: !2169)
!2212 = !DILocation(line: 813, column: 29, scope: !2169)
!2213 = !DILocation(line: 813, column: 34, scope: !2169)
!2214 = !DILocation(line: 813, column: 43, scope: !2169)
!2215 = !DILocation(line: 813, column: 48, scope: !2169)
!2216 = !DILocation(line: 813, column: 57, scope: !2169)
!2217 = !DILocation(line: 813, column: 60, scope: !2169)
!2218 = !DILocation(line: 813, column: 67, scope: !2169)
!2219 = !DILocation(line: 814, column: 29, scope: !2169)
!2220 = !DILocation(line: 814, column: 32, scope: !2169)
!2221 = !DILocation(line: 815, column: 29, scope: !2169)
!2222 = !DILocation(line: 815, column: 32, scope: !2169)
!2223 = !DILocation(line: 815, column: 44, scope: !2169)
!2224 = !DILocation(line: 815, column: 47, scope: !2169)
!2225 = !DILocation(line: 813, column: 3, scope: !2169)
!2226 = !DILocation(line: 816, column: 11, scope: !2169)
!2227 = !DILocation(line: 816, column: 3, scope: !2169)
!2228 = !DILocation(line: 816, column: 9, scope: !2169)
!2229 = !DILocation(line: 817, column: 7, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2169, file: !133, line: 817, column: 7)
!2231 = !DILocation(line: 817, column: 7, scope: !2169)
!2232 = !DILocation(line: 818, column: 13, scope: !2230)
!2233 = !DILocation(line: 818, column: 21, scope: !2230)
!2234 = !DILocation(line: 818, column: 6, scope: !2230)
!2235 = !DILocation(line: 818, column: 11, scope: !2230)
!2236 = !DILocation(line: 818, column: 5, scope: !2230)
!2237 = !DILocation(line: 819, column: 10, scope: !2169)
!2238 = !DILocation(line: 819, column: 3, scope: !2169)
!2239 = distinct !DISubprogram(name: "quotearg_free", scope: !133, file: !133, line: 837, type: !93, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2240 = !DILocalVariable(name: "sv", scope: !2239, file: !133, line: 839, type: !180)
!2241 = !DILocation(line: 839, column: 19, scope: !2239)
!2242 = !DILocation(line: 839, column: 24, scope: !2239)
!2243 = !DILocalVariable(name: "i", scope: !2244, file: !133, line: 840, type: !44)
!2244 = distinct !DILexicalBlock(scope: !2239, file: !133, line: 840, column: 3)
!2245 = !DILocation(line: 840, column: 12, scope: !2244)
!2246 = !DILocation(line: 840, column: 8, scope: !2244)
!2247 = !DILocation(line: 840, column: 19, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !133, line: 840, column: 3)
!2249 = !DILocation(line: 840, column: 23, scope: !2248)
!2250 = !DILocation(line: 840, column: 21, scope: !2248)
!2251 = !DILocation(line: 840, column: 3, scope: !2244)
!2252 = !DILocation(line: 841, column: 11, scope: !2248)
!2253 = !DILocation(line: 841, column: 14, scope: !2248)
!2254 = !DILocation(line: 841, column: 17, scope: !2248)
!2255 = !DILocation(line: 841, column: 5, scope: !2248)
!2256 = !DILocation(line: 840, column: 32, scope: !2248)
!2257 = !DILocation(line: 840, column: 3, scope: !2248)
!2258 = distinct !{!2258, !2251, !2259, !393}
!2259 = !DILocation(line: 841, column: 20, scope: !2244)
!2260 = !DILocation(line: 842, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2239, file: !133, line: 842, column: 7)
!2262 = !DILocation(line: 842, column: 13, scope: !2261)
!2263 = !DILocation(line: 842, column: 17, scope: !2261)
!2264 = !DILocation(line: 842, column: 7, scope: !2239)
!2265 = !DILocation(line: 844, column: 13, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2261, file: !133, line: 843, column: 5)
!2267 = !DILocation(line: 844, column: 19, scope: !2266)
!2268 = !DILocation(line: 844, column: 7, scope: !2266)
!2269 = !DILocation(line: 845, column: 21, scope: !2266)
!2270 = !DILocation(line: 846, column: 20, scope: !2266)
!2271 = !DILocation(line: 847, column: 5, scope: !2266)
!2272 = !DILocation(line: 848, column: 7, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2239, file: !133, line: 848, column: 7)
!2274 = !DILocation(line: 848, column: 10, scope: !2273)
!2275 = !DILocation(line: 848, column: 7, scope: !2239)
!2276 = !DILocation(line: 850, column: 13, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2273, file: !133, line: 849, column: 5)
!2278 = !DILocation(line: 850, column: 7, scope: !2277)
!2279 = !DILocation(line: 851, column: 15, scope: !2277)
!2280 = !DILocation(line: 852, column: 5, scope: !2277)
!2281 = !DILocation(line: 853, column: 10, scope: !2239)
!2282 = !DILocation(line: 854, column: 1, scope: !2239)
!2283 = distinct !DISubprogram(name: "quotearg_n", scope: !133, file: !133, line: 919, type: !2284, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!117, !44, !6}
!2286 = !DILocalVariable(name: "n", arg: 1, scope: !2283, file: !133, line: 919, type: !44)
!2287 = !DILocation(line: 919, column: 17, scope: !2283)
!2288 = !DILocalVariable(name: "arg", arg: 2, scope: !2283, file: !133, line: 919, type: !6)
!2289 = !DILocation(line: 919, column: 32, scope: !2283)
!2290 = !DILocation(line: 921, column: 30, scope: !2283)
!2291 = !DILocation(line: 921, column: 33, scope: !2283)
!2292 = !DILocation(line: 921, column: 10, scope: !2283)
!2293 = !DILocation(line: 921, column: 3, scope: !2283)
!2294 = distinct !DISubprogram(name: "quotearg_n_options", scope: !133, file: !133, line: 866, type: !2295, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!117, !44, !6, !141, !1091}
!2297 = !DILocalVariable(name: "n", arg: 1, scope: !2294, file: !133, line: 866, type: !44)
!2298 = !DILocation(line: 866, column: 25, scope: !2294)
!2299 = !DILocalVariable(name: "arg", arg: 2, scope: !2294, file: !133, line: 866, type: !6)
!2300 = !DILocation(line: 866, column: 40, scope: !2294)
!2301 = !DILocalVariable(name: "argsize", arg: 3, scope: !2294, file: !133, line: 866, type: !141)
!2302 = !DILocation(line: 866, column: 52, scope: !2294)
!2303 = !DILocalVariable(name: "options", arg: 4, scope: !2294, file: !133, line: 867, type: !1091)
!2304 = !DILocation(line: 867, column: 51, scope: !2294)
!2305 = !DILocalVariable(name: "saved_errno", scope: !2294, file: !133, line: 869, type: !44)
!2306 = !DILocation(line: 869, column: 7, scope: !2294)
!2307 = !DILocation(line: 869, column: 21, scope: !2294)
!2308 = !DILocalVariable(name: "sv", scope: !2294, file: !133, line: 871, type: !180)
!2309 = !DILocation(line: 871, column: 19, scope: !2294)
!2310 = !DILocation(line: 871, column: 24, scope: !2294)
!2311 = !DILocalVariable(name: "nslots_max", scope: !2294, file: !133, line: 873, type: !44)
!2312 = !DILocation(line: 873, column: 7, scope: !2294)
!2313 = !DILocation(line: 874, column: 15, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2294, file: !133, line: 874, column: 7)
!2315 = !DILocation(line: 874, column: 12, scope: !2314)
!2316 = !DILocation(line: 874, column: 17, scope: !2314)
!2317 = !DILocation(line: 874, column: 20, scope: !2314)
!2318 = !DILocation(line: 874, column: 24, scope: !2314)
!2319 = !DILocation(line: 874, column: 22, scope: !2314)
!2320 = !DILocation(line: 874, column: 7, scope: !2294)
!2321 = !DILocation(line: 875, column: 5, scope: !2314)
!2322 = !DILocation(line: 877, column: 7, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2294, file: !133, line: 877, column: 7)
!2324 = !DILocation(line: 877, column: 17, scope: !2323)
!2325 = !DILocation(line: 877, column: 14, scope: !2323)
!2326 = !DILocation(line: 877, column: 7, scope: !2294)
!2327 = !DILocalVariable(name: "preallocated", scope: !2328, file: !133, line: 879, type: !60)
!2328 = distinct !DILexicalBlock(scope: !2323, file: !133, line: 878, column: 5)
!2329 = !DILocation(line: 879, column: 12, scope: !2328)
!2330 = !DILocation(line: 879, column: 28, scope: !2328)
!2331 = !DILocation(line: 879, column: 31, scope: !2328)
!2332 = !DILocalVariable(name: "new_nslots", scope: !2328, file: !133, line: 880, type: !253)
!2333 = !DILocation(line: 880, column: 13, scope: !2328)
!2334 = !DILocation(line: 880, column: 26, scope: !2328)
!2335 = !DILocation(line: 882, column: 31, scope: !2328)
!2336 = !DILocation(line: 882, column: 53, scope: !2328)
!2337 = !DILocation(line: 883, column: 31, scope: !2328)
!2338 = !DILocation(line: 883, column: 35, scope: !2328)
!2339 = !DILocation(line: 883, column: 33, scope: !2328)
!2340 = !DILocation(line: 883, column: 42, scope: !2328)
!2341 = !DILocation(line: 883, column: 47, scope: !2328)
!2342 = !DILocation(line: 882, column: 22, scope: !2328)
!2343 = !DILocation(line: 882, column: 20, scope: !2328)
!2344 = !DILocation(line: 882, column: 15, scope: !2328)
!2345 = !DILocation(line: 884, column: 11, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2328, file: !133, line: 884, column: 11)
!2347 = !DILocation(line: 884, column: 11, scope: !2328)
!2348 = !DILocation(line: 885, column: 10, scope: !2346)
!2349 = !DILocation(line: 885, column: 15, scope: !2346)
!2350 = !DILocation(line: 885, column: 9, scope: !2346)
!2351 = !DILocation(line: 886, column: 15, scope: !2328)
!2352 = !DILocation(line: 886, column: 20, scope: !2328)
!2353 = !DILocation(line: 886, column: 18, scope: !2328)
!2354 = !DILocation(line: 886, column: 7, scope: !2328)
!2355 = !DILocation(line: 886, column: 32, scope: !2328)
!2356 = !DILocation(line: 886, column: 45, scope: !2328)
!2357 = !DILocation(line: 886, column: 43, scope: !2328)
!2358 = !DILocation(line: 886, column: 53, scope: !2328)
!2359 = !DILocation(line: 887, column: 16, scope: !2328)
!2360 = !DILocation(line: 887, column: 14, scope: !2328)
!2361 = !DILocation(line: 888, column: 5, scope: !2328)
!2362 = !DILocalVariable(name: "size", scope: !2363, file: !133, line: 891, type: !141)
!2363 = distinct !DILexicalBlock(scope: !2294, file: !133, line: 890, column: 3)
!2364 = !DILocation(line: 891, column: 12, scope: !2363)
!2365 = !DILocation(line: 891, column: 19, scope: !2363)
!2366 = !DILocation(line: 891, column: 22, scope: !2363)
!2367 = !DILocation(line: 891, column: 25, scope: !2363)
!2368 = !DILocalVariable(name: "val", scope: !2363, file: !133, line: 892, type: !117)
!2369 = !DILocation(line: 892, column: 11, scope: !2363)
!2370 = !DILocation(line: 892, column: 17, scope: !2363)
!2371 = !DILocation(line: 892, column: 20, scope: !2363)
!2372 = !DILocation(line: 892, column: 23, scope: !2363)
!2373 = !DILocalVariable(name: "flags", scope: !2363, file: !133, line: 894, type: !44)
!2374 = !DILocation(line: 894, column: 9, scope: !2363)
!2375 = !DILocation(line: 894, column: 17, scope: !2363)
!2376 = !DILocation(line: 894, column: 26, scope: !2363)
!2377 = !DILocation(line: 894, column: 32, scope: !2363)
!2378 = !DILocalVariable(name: "qsize", scope: !2363, file: !133, line: 895, type: !141)
!2379 = !DILocation(line: 895, column: 12, scope: !2363)
!2380 = !DILocation(line: 895, column: 46, scope: !2363)
!2381 = !DILocation(line: 895, column: 51, scope: !2363)
!2382 = !DILocation(line: 895, column: 57, scope: !2363)
!2383 = !DILocation(line: 895, column: 62, scope: !2363)
!2384 = !DILocation(line: 896, column: 46, scope: !2363)
!2385 = !DILocation(line: 896, column: 55, scope: !2363)
!2386 = !DILocation(line: 896, column: 62, scope: !2363)
!2387 = !DILocation(line: 897, column: 46, scope: !2363)
!2388 = !DILocation(line: 897, column: 55, scope: !2363)
!2389 = !DILocation(line: 898, column: 46, scope: !2363)
!2390 = !DILocation(line: 898, column: 55, scope: !2363)
!2391 = !DILocation(line: 899, column: 46, scope: !2363)
!2392 = !DILocation(line: 899, column: 55, scope: !2363)
!2393 = !DILocation(line: 895, column: 20, scope: !2363)
!2394 = !DILocation(line: 901, column: 9, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2363, file: !133, line: 901, column: 9)
!2396 = !DILocation(line: 901, column: 17, scope: !2395)
!2397 = !DILocation(line: 901, column: 14, scope: !2395)
!2398 = !DILocation(line: 901, column: 9, scope: !2363)
!2399 = !DILocation(line: 903, column: 29, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2395, file: !133, line: 902, column: 7)
!2401 = !DILocation(line: 903, column: 35, scope: !2400)
!2402 = !DILocation(line: 903, column: 27, scope: !2400)
!2403 = !DILocation(line: 903, column: 9, scope: !2400)
!2404 = !DILocation(line: 903, column: 12, scope: !2400)
!2405 = !DILocation(line: 903, column: 15, scope: !2400)
!2406 = !DILocation(line: 903, column: 20, scope: !2400)
!2407 = !DILocation(line: 904, column: 13, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2400, file: !133, line: 904, column: 13)
!2409 = !DILocation(line: 904, column: 17, scope: !2408)
!2410 = !DILocation(line: 904, column: 13, scope: !2400)
!2411 = !DILocation(line: 905, column: 17, scope: !2408)
!2412 = !DILocation(line: 905, column: 11, scope: !2408)
!2413 = !DILocation(line: 906, column: 39, scope: !2400)
!2414 = !DILocation(line: 906, column: 27, scope: !2400)
!2415 = !DILocation(line: 906, column: 25, scope: !2400)
!2416 = !DILocation(line: 906, column: 9, scope: !2400)
!2417 = !DILocation(line: 906, column: 12, scope: !2400)
!2418 = !DILocation(line: 906, column: 15, scope: !2400)
!2419 = !DILocation(line: 906, column: 19, scope: !2400)
!2420 = !DILocation(line: 907, column: 35, scope: !2400)
!2421 = !DILocation(line: 907, column: 40, scope: !2400)
!2422 = !DILocation(line: 907, column: 46, scope: !2400)
!2423 = !DILocation(line: 907, column: 51, scope: !2400)
!2424 = !DILocation(line: 907, column: 60, scope: !2400)
!2425 = !DILocation(line: 907, column: 69, scope: !2400)
!2426 = !DILocation(line: 908, column: 35, scope: !2400)
!2427 = !DILocation(line: 908, column: 42, scope: !2400)
!2428 = !DILocation(line: 908, column: 51, scope: !2400)
!2429 = !DILocation(line: 909, column: 35, scope: !2400)
!2430 = !DILocation(line: 909, column: 44, scope: !2400)
!2431 = !DILocation(line: 910, column: 35, scope: !2400)
!2432 = !DILocation(line: 910, column: 44, scope: !2400)
!2433 = !DILocation(line: 907, column: 9, scope: !2400)
!2434 = !DILocation(line: 911, column: 7, scope: !2400)
!2435 = !DILocation(line: 913, column: 13, scope: !2363)
!2436 = !DILocation(line: 913, column: 5, scope: !2363)
!2437 = !DILocation(line: 913, column: 11, scope: !2363)
!2438 = !DILocation(line: 914, column: 12, scope: !2363)
!2439 = !DILocation(line: 914, column: 5, scope: !2363)
!2440 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !133, file: !133, line: 925, type: !2441, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!117, !44, !6, !141}
!2443 = !DILocalVariable(name: "n", arg: 1, scope: !2440, file: !133, line: 925, type: !44)
!2444 = !DILocation(line: 925, column: 21, scope: !2440)
!2445 = !DILocalVariable(name: "arg", arg: 2, scope: !2440, file: !133, line: 925, type: !6)
!2446 = !DILocation(line: 925, column: 36, scope: !2440)
!2447 = !DILocalVariable(name: "argsize", arg: 3, scope: !2440, file: !133, line: 925, type: !141)
!2448 = !DILocation(line: 925, column: 48, scope: !2440)
!2449 = !DILocation(line: 927, column: 30, scope: !2440)
!2450 = !DILocation(line: 927, column: 33, scope: !2440)
!2451 = !DILocation(line: 927, column: 38, scope: !2440)
!2452 = !DILocation(line: 927, column: 10, scope: !2440)
!2453 = !DILocation(line: 927, column: 3, scope: !2440)
!2454 = distinct !DISubprogram(name: "quotearg", scope: !133, file: !133, line: 931, type: !2455, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!117, !6}
!2457 = !DILocalVariable(name: "arg", arg: 1, scope: !2454, file: !133, line: 931, type: !6)
!2458 = !DILocation(line: 931, column: 23, scope: !2454)
!2459 = !DILocation(line: 933, column: 25, scope: !2454)
!2460 = !DILocation(line: 933, column: 10, scope: !2454)
!2461 = !DILocation(line: 933, column: 3, scope: !2454)
!2462 = distinct !DISubprogram(name: "quotearg_mem", scope: !133, file: !133, line: 937, type: !2463, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!117, !6, !141}
!2465 = !DILocalVariable(name: "arg", arg: 1, scope: !2462, file: !133, line: 937, type: !6)
!2466 = !DILocation(line: 937, column: 27, scope: !2462)
!2467 = !DILocalVariable(name: "argsize", arg: 2, scope: !2462, file: !133, line: 937, type: !141)
!2468 = !DILocation(line: 937, column: 39, scope: !2462)
!2469 = !DILocation(line: 939, column: 29, scope: !2462)
!2470 = !DILocation(line: 939, column: 34, scope: !2462)
!2471 = !DILocation(line: 939, column: 10, scope: !2462)
!2472 = !DILocation(line: 939, column: 3, scope: !2462)
!2473 = distinct !DISubprogram(name: "quotearg_n_style", scope: !133, file: !133, line: 943, type: !2474, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!117, !44, !12, !6}
!2476 = !DILocalVariable(name: "n", arg: 1, scope: !2473, file: !133, line: 943, type: !44)
!2477 = !DILocation(line: 943, column: 23, scope: !2473)
!2478 = !DILocalVariable(name: "s", arg: 2, scope: !2473, file: !133, line: 943, type: !12)
!2479 = !DILocation(line: 943, column: 45, scope: !2473)
!2480 = !DILocalVariable(name: "arg", arg: 3, scope: !2473, file: !133, line: 943, type: !6)
!2481 = !DILocation(line: 943, column: 60, scope: !2473)
!2482 = !DILocalVariable(name: "o", scope: !2473, file: !133, line: 945, type: !1092)
!2483 = !DILocation(line: 945, column: 32, scope: !2473)
!2484 = !DILocation(line: 945, column: 64, scope: !2473)
!2485 = !DILocation(line: 945, column: 36, scope: !2473)
!2486 = !DILocation(line: 946, column: 30, scope: !2473)
!2487 = !DILocation(line: 946, column: 33, scope: !2473)
!2488 = !DILocation(line: 946, column: 10, scope: !2473)
!2489 = !DILocation(line: 946, column: 3, scope: !2473)
!2490 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !133, file: !133, line: 183, type: !2491, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!153, !12}
!2493 = !DILocalVariable(name: "style", arg: 1, scope: !2490, file: !133, line: 183, type: !12)
!2494 = !DILocation(line: 183, column: 48, scope: !2490)
!2495 = !DILocalVariable(name: "o", scope: !2490, file: !133, line: 185, type: !153)
!2496 = !DILocation(line: 185, column: 26, scope: !2490)
!2497 = !DILocation(line: 186, column: 7, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2490, file: !133, line: 186, column: 7)
!2499 = !DILocation(line: 186, column: 13, scope: !2498)
!2500 = !DILocation(line: 186, column: 7, scope: !2490)
!2501 = !DILocation(line: 187, column: 5, scope: !2498)
!2502 = !DILocation(line: 188, column: 13, scope: !2490)
!2503 = !DILocation(line: 188, column: 5, scope: !2490)
!2504 = !DILocation(line: 188, column: 11, scope: !2490)
!2505 = !DILocation(line: 189, column: 3, scope: !2490)
!2506 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !133, file: !133, line: 950, type: !2507, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!117, !44, !12, !6, !141}
!2509 = !DILocalVariable(name: "n", arg: 1, scope: !2506, file: !133, line: 950, type: !44)
!2510 = !DILocation(line: 950, column: 27, scope: !2506)
!2511 = !DILocalVariable(name: "s", arg: 2, scope: !2506, file: !133, line: 950, type: !12)
!2512 = !DILocation(line: 950, column: 49, scope: !2506)
!2513 = !DILocalVariable(name: "arg", arg: 3, scope: !2506, file: !133, line: 951, type: !6)
!2514 = !DILocation(line: 951, column: 35, scope: !2506)
!2515 = !DILocalVariable(name: "argsize", arg: 4, scope: !2506, file: !133, line: 951, type: !141)
!2516 = !DILocation(line: 951, column: 47, scope: !2506)
!2517 = !DILocalVariable(name: "o", scope: !2506, file: !133, line: 953, type: !1092)
!2518 = !DILocation(line: 953, column: 32, scope: !2506)
!2519 = !DILocation(line: 953, column: 64, scope: !2506)
!2520 = !DILocation(line: 953, column: 36, scope: !2506)
!2521 = !DILocation(line: 954, column: 30, scope: !2506)
!2522 = !DILocation(line: 954, column: 33, scope: !2506)
!2523 = !DILocation(line: 954, column: 38, scope: !2506)
!2524 = !DILocation(line: 954, column: 10, scope: !2506)
!2525 = !DILocation(line: 954, column: 3, scope: !2506)
!2526 = distinct !DISubprogram(name: "quotearg_style", scope: !133, file: !133, line: 958, type: !2527, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!117, !12, !6}
!2529 = !DILocalVariable(name: "s", arg: 1, scope: !2526, file: !133, line: 958, type: !12)
!2530 = !DILocation(line: 958, column: 36, scope: !2526)
!2531 = !DILocalVariable(name: "arg", arg: 2, scope: !2526, file: !133, line: 958, type: !6)
!2532 = !DILocation(line: 958, column: 51, scope: !2526)
!2533 = !DILocation(line: 960, column: 31, scope: !2526)
!2534 = !DILocation(line: 960, column: 34, scope: !2526)
!2535 = !DILocation(line: 960, column: 10, scope: !2526)
!2536 = !DILocation(line: 960, column: 3, scope: !2526)
!2537 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !133, file: !133, line: 964, type: !2538, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!117, !12, !6, !141}
!2540 = !DILocalVariable(name: "s", arg: 1, scope: !2537, file: !133, line: 964, type: !12)
!2541 = !DILocation(line: 964, column: 40, scope: !2537)
!2542 = !DILocalVariable(name: "arg", arg: 2, scope: !2537, file: !133, line: 964, type: !6)
!2543 = !DILocation(line: 964, column: 55, scope: !2537)
!2544 = !DILocalVariable(name: "argsize", arg: 3, scope: !2537, file: !133, line: 964, type: !141)
!2545 = !DILocation(line: 964, column: 67, scope: !2537)
!2546 = !DILocation(line: 966, column: 35, scope: !2537)
!2547 = !DILocation(line: 966, column: 38, scope: !2537)
!2548 = !DILocation(line: 966, column: 43, scope: !2537)
!2549 = !DILocation(line: 966, column: 10, scope: !2537)
!2550 = !DILocation(line: 966, column: 3, scope: !2537)
!2551 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !133, file: !133, line: 970, type: !2552, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!117, !6, !141, !8}
!2554 = !DILocalVariable(name: "arg", arg: 1, scope: !2551, file: !133, line: 970, type: !6)
!2555 = !DILocation(line: 970, column: 32, scope: !2551)
!2556 = !DILocalVariable(name: "argsize", arg: 2, scope: !2551, file: !133, line: 970, type: !141)
!2557 = !DILocation(line: 970, column: 44, scope: !2551)
!2558 = !DILocalVariable(name: "ch", arg: 3, scope: !2551, file: !133, line: 970, type: !8)
!2559 = !DILocation(line: 970, column: 58, scope: !2551)
!2560 = !DILocalVariable(name: "options", scope: !2551, file: !133, line: 972, type: !153)
!2561 = !DILocation(line: 972, column: 26, scope: !2551)
!2562 = !DILocation(line: 973, column: 13, scope: !2551)
!2563 = !DILocation(line: 974, column: 31, scope: !2551)
!2564 = !DILocation(line: 974, column: 3, scope: !2551)
!2565 = !DILocation(line: 975, column: 33, scope: !2551)
!2566 = !DILocation(line: 975, column: 38, scope: !2551)
!2567 = !DILocation(line: 975, column: 10, scope: !2551)
!2568 = !DILocation(line: 975, column: 3, scope: !2551)
!2569 = distinct !DISubprogram(name: "quotearg_char", scope: !133, file: !133, line: 979, type: !2570, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!117, !6, !8}
!2572 = !DILocalVariable(name: "arg", arg: 1, scope: !2569, file: !133, line: 979, type: !6)
!2573 = !DILocation(line: 979, column: 28, scope: !2569)
!2574 = !DILocalVariable(name: "ch", arg: 2, scope: !2569, file: !133, line: 979, type: !8)
!2575 = !DILocation(line: 979, column: 38, scope: !2569)
!2576 = !DILocation(line: 981, column: 29, scope: !2569)
!2577 = !DILocation(line: 981, column: 44, scope: !2569)
!2578 = !DILocation(line: 981, column: 10, scope: !2569)
!2579 = !DILocation(line: 981, column: 3, scope: !2569)
!2580 = distinct !DISubprogram(name: "quotearg_colon", scope: !133, file: !133, line: 985, type: !2455, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2581 = !DILocalVariable(name: "arg", arg: 1, scope: !2580, file: !133, line: 985, type: !6)
!2582 = !DILocation(line: 985, column: 29, scope: !2580)
!2583 = !DILocation(line: 987, column: 25, scope: !2580)
!2584 = !DILocation(line: 987, column: 10, scope: !2580)
!2585 = !DILocation(line: 987, column: 3, scope: !2580)
!2586 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !133, file: !133, line: 991, type: !2463, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2587 = !DILocalVariable(name: "arg", arg: 1, scope: !2586, file: !133, line: 991, type: !6)
!2588 = !DILocation(line: 991, column: 33, scope: !2586)
!2589 = !DILocalVariable(name: "argsize", arg: 2, scope: !2586, file: !133, line: 991, type: !141)
!2590 = !DILocation(line: 991, column: 45, scope: !2586)
!2591 = !DILocation(line: 993, column: 29, scope: !2586)
!2592 = !DILocation(line: 993, column: 34, scope: !2586)
!2593 = !DILocation(line: 993, column: 10, scope: !2586)
!2594 = !DILocation(line: 993, column: 3, scope: !2586)
!2595 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !133, file: !133, line: 997, type: !2474, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2596 = !DILocalVariable(name: "n", arg: 1, scope: !2595, file: !133, line: 997, type: !44)
!2597 = !DILocation(line: 997, column: 29, scope: !2595)
!2598 = !DILocalVariable(name: "s", arg: 2, scope: !2595, file: !133, line: 997, type: !12)
!2599 = !DILocation(line: 997, column: 51, scope: !2595)
!2600 = !DILocalVariable(name: "arg", arg: 3, scope: !2595, file: !133, line: 997, type: !6)
!2601 = !DILocation(line: 997, column: 66, scope: !2595)
!2602 = !DILocalVariable(name: "options", scope: !2595, file: !133, line: 999, type: !153)
!2603 = !DILocation(line: 999, column: 26, scope: !2595)
!2604 = !DILocation(line: 1000, column: 41, scope: !2595)
!2605 = !DILocation(line: 1000, column: 13, scope: !2595)
!2606 = !DILocation(line: 1001, column: 3, scope: !2595)
!2607 = !DILocation(line: 1002, column: 30, scope: !2595)
!2608 = !DILocation(line: 1002, column: 33, scope: !2595)
!2609 = !DILocation(line: 1002, column: 10, scope: !2595)
!2610 = !DILocation(line: 1002, column: 3, scope: !2595)
!2611 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !133, file: !133, line: 1006, type: !2612, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!117, !44, !6, !6, !6}
!2614 = !DILocalVariable(name: "n", arg: 1, scope: !2611, file: !133, line: 1006, type: !44)
!2615 = !DILocation(line: 1006, column: 24, scope: !2611)
!2616 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2611, file: !133, line: 1006, type: !6)
!2617 = !DILocation(line: 1006, column: 39, scope: !2611)
!2618 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2611, file: !133, line: 1007, type: !6)
!2619 = !DILocation(line: 1007, column: 32, scope: !2611)
!2620 = !DILocalVariable(name: "arg", arg: 4, scope: !2611, file: !133, line: 1007, type: !6)
!2621 = !DILocation(line: 1007, column: 57, scope: !2611)
!2622 = !DILocation(line: 1009, column: 33, scope: !2611)
!2623 = !DILocation(line: 1009, column: 36, scope: !2611)
!2624 = !DILocation(line: 1009, column: 48, scope: !2611)
!2625 = !DILocation(line: 1009, column: 61, scope: !2611)
!2626 = !DILocation(line: 1009, column: 10, scope: !2611)
!2627 = !DILocation(line: 1009, column: 3, scope: !2611)
!2628 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !133, file: !133, line: 1014, type: !2629, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!117, !44, !6, !6, !6, !141}
!2631 = !DILocalVariable(name: "n", arg: 1, scope: !2628, file: !133, line: 1014, type: !44)
!2632 = !DILocation(line: 1014, column: 28, scope: !2628)
!2633 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2628, file: !133, line: 1014, type: !6)
!2634 = !DILocation(line: 1014, column: 43, scope: !2628)
!2635 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2628, file: !133, line: 1015, type: !6)
!2636 = !DILocation(line: 1015, column: 36, scope: !2628)
!2637 = !DILocalVariable(name: "arg", arg: 4, scope: !2628, file: !133, line: 1016, type: !6)
!2638 = !DILocation(line: 1016, column: 36, scope: !2628)
!2639 = !DILocalVariable(name: "argsize", arg: 5, scope: !2628, file: !133, line: 1016, type: !141)
!2640 = !DILocation(line: 1016, column: 48, scope: !2628)
!2641 = !DILocalVariable(name: "o", scope: !2628, file: !133, line: 1018, type: !153)
!2642 = !DILocation(line: 1018, column: 26, scope: !2628)
!2643 = !DILocation(line: 1018, column: 30, scope: !2628)
!2644 = !DILocation(line: 1019, column: 27, scope: !2628)
!2645 = !DILocation(line: 1019, column: 39, scope: !2628)
!2646 = !DILocation(line: 1019, column: 3, scope: !2628)
!2647 = !DILocation(line: 1020, column: 30, scope: !2628)
!2648 = !DILocation(line: 1020, column: 33, scope: !2628)
!2649 = !DILocation(line: 1020, column: 38, scope: !2628)
!2650 = !DILocation(line: 1020, column: 10, scope: !2628)
!2651 = !DILocation(line: 1020, column: 3, scope: !2628)
!2652 = distinct !DISubprogram(name: "quotearg_custom", scope: !133, file: !133, line: 1024, type: !2653, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!117, !6, !6, !6}
!2655 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2652, file: !133, line: 1024, type: !6)
!2656 = !DILocation(line: 1024, column: 30, scope: !2652)
!2657 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2652, file: !133, line: 1024, type: !6)
!2658 = !DILocation(line: 1024, column: 54, scope: !2652)
!2659 = !DILocalVariable(name: "arg", arg: 3, scope: !2652, file: !133, line: 1025, type: !6)
!2660 = !DILocation(line: 1025, column: 30, scope: !2652)
!2661 = !DILocation(line: 1027, column: 32, scope: !2652)
!2662 = !DILocation(line: 1027, column: 44, scope: !2652)
!2663 = !DILocation(line: 1027, column: 57, scope: !2652)
!2664 = !DILocation(line: 1027, column: 10, scope: !2652)
!2665 = !DILocation(line: 1027, column: 3, scope: !2652)
!2666 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !133, file: !133, line: 1031, type: !2667, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!117, !6, !6, !6, !141}
!2669 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2666, file: !133, line: 1031, type: !6)
!2670 = !DILocation(line: 1031, column: 34, scope: !2666)
!2671 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2666, file: !133, line: 1031, type: !6)
!2672 = !DILocation(line: 1031, column: 58, scope: !2666)
!2673 = !DILocalVariable(name: "arg", arg: 3, scope: !2666, file: !133, line: 1032, type: !6)
!2674 = !DILocation(line: 1032, column: 34, scope: !2666)
!2675 = !DILocalVariable(name: "argsize", arg: 4, scope: !2666, file: !133, line: 1032, type: !141)
!2676 = !DILocation(line: 1032, column: 46, scope: !2666)
!2677 = !DILocation(line: 1034, column: 36, scope: !2666)
!2678 = !DILocation(line: 1034, column: 48, scope: !2666)
!2679 = !DILocation(line: 1034, column: 61, scope: !2666)
!2680 = !DILocation(line: 1035, column: 33, scope: !2666)
!2681 = !DILocation(line: 1034, column: 10, scope: !2666)
!2682 = !DILocation(line: 1034, column: 3, scope: !2666)
!2683 = distinct !DISubprogram(name: "quote_n_mem", scope: !133, file: !133, line: 1049, type: !2684, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!6, !44, !6, !141}
!2686 = !DILocalVariable(name: "n", arg: 1, scope: !2683, file: !133, line: 1049, type: !44)
!2687 = !DILocation(line: 1049, column: 18, scope: !2683)
!2688 = !DILocalVariable(name: "arg", arg: 2, scope: !2683, file: !133, line: 1049, type: !6)
!2689 = !DILocation(line: 1049, column: 33, scope: !2683)
!2690 = !DILocalVariable(name: "argsize", arg: 3, scope: !2683, file: !133, line: 1049, type: !141)
!2691 = !DILocation(line: 1049, column: 45, scope: !2683)
!2692 = !DILocation(line: 1051, column: 30, scope: !2683)
!2693 = !DILocation(line: 1051, column: 33, scope: !2683)
!2694 = !DILocation(line: 1051, column: 38, scope: !2683)
!2695 = !DILocation(line: 1051, column: 10, scope: !2683)
!2696 = !DILocation(line: 1051, column: 3, scope: !2683)
!2697 = distinct !DISubprogram(name: "quote_mem", scope: !133, file: !133, line: 1055, type: !2698, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!6, !6, !141}
!2700 = !DILocalVariable(name: "arg", arg: 1, scope: !2697, file: !133, line: 1055, type: !6)
!2701 = !DILocation(line: 1055, column: 24, scope: !2697)
!2702 = !DILocalVariable(name: "argsize", arg: 2, scope: !2697, file: !133, line: 1055, type: !141)
!2703 = !DILocation(line: 1055, column: 36, scope: !2697)
!2704 = !DILocation(line: 1057, column: 26, scope: !2697)
!2705 = !DILocation(line: 1057, column: 31, scope: !2697)
!2706 = !DILocation(line: 1057, column: 10, scope: !2697)
!2707 = !DILocation(line: 1057, column: 3, scope: !2697)
!2708 = distinct !DISubprogram(name: "quote_n", scope: !133, file: !133, line: 1061, type: !2709, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!6, !44, !6}
!2711 = !DILocalVariable(name: "n", arg: 1, scope: !2708, file: !133, line: 1061, type: !44)
!2712 = !DILocation(line: 1061, column: 14, scope: !2708)
!2713 = !DILocalVariable(name: "arg", arg: 2, scope: !2708, file: !133, line: 1061, type: !6)
!2714 = !DILocation(line: 1061, column: 29, scope: !2708)
!2715 = !DILocation(line: 1063, column: 23, scope: !2708)
!2716 = !DILocation(line: 1063, column: 26, scope: !2708)
!2717 = !DILocation(line: 1063, column: 10, scope: !2708)
!2718 = !DILocation(line: 1063, column: 3, scope: !2708)
!2719 = distinct !DISubprogram(name: "quote", scope: !133, file: !133, line: 1067, type: !2720, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !47)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!6, !6}
!2722 = !DILocalVariable(name: "arg", arg: 1, scope: !2719, file: !133, line: 1067, type: !6)
!2723 = !DILocation(line: 1067, column: 20, scope: !2719)
!2724 = !DILocation(line: 1069, column: 22, scope: !2719)
!2725 = !DILocation(line: 1069, column: 10, scope: !2719)
!2726 = !DILocation(line: 1069, column: 3, scope: !2719)
!2727 = distinct !DISubprogram(name: "streq", scope: !2728, file: !2728, line: 1359, type: !2729, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !47)
!2728 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!60, !6, !6}
!2731 = !DILocalVariable(name: "__s1", arg: 1, scope: !2727, file: !2728, line: 1359, type: !6)
!2732 = !DILocation(line: 1359, column: 20, scope: !2727)
!2733 = !DILocalVariable(name: "__s2", arg: 2, scope: !2727, file: !2728, line: 1359, type: !6)
!2734 = !DILocation(line: 1359, column: 38, scope: !2727)
!2735 = !DILocation(line: 1361, column: 19, scope: !2727)
!2736 = !DILocation(line: 1361, column: 25, scope: !2727)
!2737 = !DILocation(line: 1361, column: 11, scope: !2727)
!2738 = !DILocation(line: 1361, column: 10, scope: !2727)
!2739 = !DILocation(line: 1361, column: 3, scope: !2727)
!2740 = distinct !DISubprogram(name: "version_etc_arn", scope: !233, file: !233, line: 61, type: !2741, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !47)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{null, !2743, !6, !6, !6, !2796, !141}
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2745, line: 7, baseType: !2746)
!2745 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2747, line: 49, size: 1728, elements: !2748)
!2747 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2748 = !{!2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2764, !2766, !2767, !2768, !2770, !2771, !2773, !2777, !2780, !2782, !2785, !2788, !2789, !2790, !2791, !2792}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2746, file: !2747, line: 51, baseType: !44, size: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2746, file: !2747, line: 54, baseType: !117, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2746, file: !2747, line: 55, baseType: !117, size: 64, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2746, file: !2747, line: 56, baseType: !117, size: 64, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2746, file: !2747, line: 57, baseType: !117, size: 64, offset: 256)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2746, file: !2747, line: 58, baseType: !117, size: 64, offset: 320)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2746, file: !2747, line: 59, baseType: !117, size: 64, offset: 384)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2746, file: !2747, line: 60, baseType: !117, size: 64, offset: 448)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2746, file: !2747, line: 61, baseType: !117, size: 64, offset: 512)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2746, file: !2747, line: 64, baseType: !117, size: 64, offset: 576)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2746, file: !2747, line: 65, baseType: !117, size: 64, offset: 640)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2746, file: !2747, line: 66, baseType: !117, size: 64, offset: 704)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2746, file: !2747, line: 68, baseType: !2762, size: 64, offset: 768)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2747, line: 36, flags: DIFlagFwdDecl)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2746, file: !2747, line: 70, baseType: !2765, size: 64, offset: 832)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2746, file: !2747, line: 72, baseType: !44, size: 32, offset: 896)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2746, file: !2747, line: 73, baseType: !44, size: 32, offset: 928)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2746, file: !2747, line: 74, baseType: !2769, size: 64, offset: 960)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1041, line: 152, baseType: !256)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2746, file: !2747, line: 77, baseType: !45, size: 16, offset: 1024)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2746, file: !2747, line: 78, baseType: !2772, size: 8, offset: 1040)
!2772 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2746, file: !2747, line: 79, baseType: !2774, size: 8, offset: 1048)
!2774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2775)
!2775 = !{!2776}
!2776 = !DISubrange(count: 1)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2746, file: !2747, line: 81, baseType: !2778, size: 64, offset: 1088)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2747, line: 43, baseType: null)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2746, file: !2747, line: 89, baseType: !2781, size: 64, offset: 1152)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1041, line: 153, baseType: !256)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2746, file: !2747, line: 91, baseType: !2783, size: 64, offset: 1216)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2747, line: 37, flags: DIFlagFwdDecl)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2746, file: !2747, line: 92, baseType: !2786, size: 64, offset: 1280)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2747, line: 38, flags: DIFlagFwdDecl)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2746, file: !2747, line: 93, baseType: !2765, size: 64, offset: 1344)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2746, file: !2747, line: 94, baseType: !43, size: 64, offset: 1408)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2746, file: !2747, line: 95, baseType: !141, size: 64, offset: 1472)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2746, file: !2747, line: 96, baseType: !44, size: 32, offset: 1536)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2746, file: !2747, line: 98, baseType: !2793, size: 160, offset: 1568)
!2793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2794)
!2794 = !{!2795}
!2795 = !DISubrange(count: 20)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!2797 = !DILocalVariable(name: "stream", arg: 1, scope: !2740, file: !233, line: 61, type: !2743)
!2798 = !DILocation(line: 61, column: 24, scope: !2740)
!2799 = !DILocalVariable(name: "command_name", arg: 2, scope: !2740, file: !233, line: 62, type: !6)
!2800 = !DILocation(line: 62, column: 30, scope: !2740)
!2801 = !DILocalVariable(name: "package", arg: 3, scope: !2740, file: !233, line: 62, type: !6)
!2802 = !DILocation(line: 62, column: 56, scope: !2740)
!2803 = !DILocalVariable(name: "version", arg: 4, scope: !2740, file: !233, line: 63, type: !6)
!2804 = !DILocation(line: 63, column: 30, scope: !2740)
!2805 = !DILocalVariable(name: "authors", arg: 5, scope: !2740, file: !233, line: 64, type: !2796)
!2806 = !DILocation(line: 64, column: 39, scope: !2740)
!2807 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2740, file: !233, line: 64, type: !141)
!2808 = !DILocation(line: 64, column: 55, scope: !2740)
!2809 = !DILocation(line: 66, column: 7, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2740, file: !233, line: 66, column: 7)
!2811 = !DILocation(line: 66, column: 7, scope: !2740)
!2812 = !DILocation(line: 67, column: 14, scope: !2810)
!2813 = !DILocation(line: 67, column: 38, scope: !2810)
!2814 = !DILocation(line: 67, column: 52, scope: !2810)
!2815 = !DILocation(line: 67, column: 61, scope: !2810)
!2816 = !DILocation(line: 67, column: 5, scope: !2810)
!2817 = !DILocation(line: 69, column: 14, scope: !2810)
!2818 = !DILocation(line: 69, column: 33, scope: !2810)
!2819 = !DILocation(line: 69, column: 42, scope: !2810)
!2820 = !DILocation(line: 69, column: 5, scope: !2810)
!2821 = !DILocation(line: 83, column: 12, scope: !2740)
!2822 = !DILocation(line: 83, column: 43, scope: !2740)
!2823 = !DILocation(line: 83, column: 3, scope: !2740)
!2824 = !DILocation(line: 85, column: 3, scope: !2740)
!2825 = !DILocation(line: 88, column: 12, scope: !2740)
!2826 = !DILocation(line: 88, column: 20, scope: !2740)
!2827 = !DILocation(line: 88, column: 3, scope: !2740)
!2828 = !DILocation(line: 95, column: 3, scope: !2740)
!2829 = !DILocation(line: 97, column: 11, scope: !2740)
!2830 = !DILocation(line: 97, column: 3, scope: !2740)
!2831 = !DILocation(line: 102, column: 7, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2740, file: !233, line: 98, column: 5)
!2833 = !DILocation(line: 105, column: 16, scope: !2832)
!2834 = !DILocation(line: 105, column: 24, scope: !2832)
!2835 = !DILocation(line: 105, column: 47, scope: !2832)
!2836 = !DILocation(line: 105, column: 7, scope: !2832)
!2837 = !DILocation(line: 106, column: 7, scope: !2832)
!2838 = !DILocation(line: 109, column: 16, scope: !2832)
!2839 = !DILocation(line: 109, column: 24, scope: !2832)
!2840 = !DILocation(line: 109, column: 54, scope: !2832)
!2841 = !DILocation(line: 109, column: 66, scope: !2832)
!2842 = !DILocation(line: 109, column: 7, scope: !2832)
!2843 = !DILocation(line: 110, column: 7, scope: !2832)
!2844 = !DILocation(line: 113, column: 16, scope: !2832)
!2845 = !DILocation(line: 113, column: 24, scope: !2832)
!2846 = !DILocation(line: 114, column: 16, scope: !2832)
!2847 = !DILocation(line: 114, column: 28, scope: !2832)
!2848 = !DILocation(line: 114, column: 40, scope: !2832)
!2849 = !DILocation(line: 113, column: 7, scope: !2832)
!2850 = !DILocation(line: 115, column: 7, scope: !2832)
!2851 = !DILocation(line: 120, column: 16, scope: !2832)
!2852 = !DILocation(line: 120, column: 24, scope: !2832)
!2853 = !DILocation(line: 121, column: 16, scope: !2832)
!2854 = !DILocation(line: 121, column: 28, scope: !2832)
!2855 = !DILocation(line: 121, column: 40, scope: !2832)
!2856 = !DILocation(line: 121, column: 52, scope: !2832)
!2857 = !DILocation(line: 120, column: 7, scope: !2832)
!2858 = !DILocation(line: 122, column: 7, scope: !2832)
!2859 = !DILocation(line: 127, column: 16, scope: !2832)
!2860 = !DILocation(line: 127, column: 24, scope: !2832)
!2861 = !DILocation(line: 128, column: 16, scope: !2832)
!2862 = !DILocation(line: 128, column: 28, scope: !2832)
!2863 = !DILocation(line: 128, column: 40, scope: !2832)
!2864 = !DILocation(line: 128, column: 52, scope: !2832)
!2865 = !DILocation(line: 128, column: 64, scope: !2832)
!2866 = !DILocation(line: 127, column: 7, scope: !2832)
!2867 = !DILocation(line: 129, column: 7, scope: !2832)
!2868 = !DILocation(line: 134, column: 16, scope: !2832)
!2869 = !DILocation(line: 134, column: 24, scope: !2832)
!2870 = !DILocation(line: 135, column: 16, scope: !2832)
!2871 = !DILocation(line: 135, column: 28, scope: !2832)
!2872 = !DILocation(line: 135, column: 40, scope: !2832)
!2873 = !DILocation(line: 135, column: 52, scope: !2832)
!2874 = !DILocation(line: 135, column: 64, scope: !2832)
!2875 = !DILocation(line: 136, column: 16, scope: !2832)
!2876 = !DILocation(line: 134, column: 7, scope: !2832)
!2877 = !DILocation(line: 137, column: 7, scope: !2832)
!2878 = !DILocation(line: 142, column: 16, scope: !2832)
!2879 = !DILocation(line: 142, column: 24, scope: !2832)
!2880 = !DILocation(line: 143, column: 16, scope: !2832)
!2881 = !DILocation(line: 143, column: 28, scope: !2832)
!2882 = !DILocation(line: 143, column: 40, scope: !2832)
!2883 = !DILocation(line: 143, column: 52, scope: !2832)
!2884 = !DILocation(line: 143, column: 64, scope: !2832)
!2885 = !DILocation(line: 144, column: 16, scope: !2832)
!2886 = !DILocation(line: 144, column: 28, scope: !2832)
!2887 = !DILocation(line: 142, column: 7, scope: !2832)
!2888 = !DILocation(line: 145, column: 7, scope: !2832)
!2889 = !DILocation(line: 150, column: 16, scope: !2832)
!2890 = !DILocation(line: 150, column: 24, scope: !2832)
!2891 = !DILocation(line: 152, column: 17, scope: !2832)
!2892 = !DILocation(line: 152, column: 29, scope: !2832)
!2893 = !DILocation(line: 152, column: 41, scope: !2832)
!2894 = !DILocation(line: 152, column: 53, scope: !2832)
!2895 = !DILocation(line: 152, column: 65, scope: !2832)
!2896 = !DILocation(line: 153, column: 17, scope: !2832)
!2897 = !DILocation(line: 153, column: 29, scope: !2832)
!2898 = !DILocation(line: 153, column: 41, scope: !2832)
!2899 = !DILocation(line: 150, column: 7, scope: !2832)
!2900 = !DILocation(line: 154, column: 7, scope: !2832)
!2901 = !DILocation(line: 159, column: 16, scope: !2832)
!2902 = !DILocation(line: 159, column: 24, scope: !2832)
!2903 = !DILocation(line: 161, column: 16, scope: !2832)
!2904 = !DILocation(line: 161, column: 28, scope: !2832)
!2905 = !DILocation(line: 161, column: 40, scope: !2832)
!2906 = !DILocation(line: 161, column: 52, scope: !2832)
!2907 = !DILocation(line: 161, column: 64, scope: !2832)
!2908 = !DILocation(line: 162, column: 16, scope: !2832)
!2909 = !DILocation(line: 162, column: 28, scope: !2832)
!2910 = !DILocation(line: 162, column: 40, scope: !2832)
!2911 = !DILocation(line: 162, column: 52, scope: !2832)
!2912 = !DILocation(line: 159, column: 7, scope: !2832)
!2913 = !DILocation(line: 163, column: 7, scope: !2832)
!2914 = !DILocation(line: 170, column: 16, scope: !2832)
!2915 = !DILocation(line: 170, column: 24, scope: !2832)
!2916 = !DILocation(line: 172, column: 17, scope: !2832)
!2917 = !DILocation(line: 172, column: 29, scope: !2832)
!2918 = !DILocation(line: 172, column: 41, scope: !2832)
!2919 = !DILocation(line: 172, column: 53, scope: !2832)
!2920 = !DILocation(line: 172, column: 65, scope: !2832)
!2921 = !DILocation(line: 173, column: 17, scope: !2832)
!2922 = !DILocation(line: 173, column: 29, scope: !2832)
!2923 = !DILocation(line: 173, column: 41, scope: !2832)
!2924 = !DILocation(line: 173, column: 53, scope: !2832)
!2925 = !DILocation(line: 170, column: 7, scope: !2832)
!2926 = !DILocation(line: 174, column: 7, scope: !2832)
!2927 = !DILocation(line: 176, column: 1, scope: !2740)
!2928 = distinct !DISubprogram(name: "version_etc_ar", scope: !233, file: !233, line: 183, type: !2929, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !47)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{null, !2743, !6, !6, !6, !2796}
!2931 = !DILocalVariable(name: "stream", arg: 1, scope: !2928, file: !233, line: 183, type: !2743)
!2932 = !DILocation(line: 183, column: 23, scope: !2928)
!2933 = !DILocalVariable(name: "command_name", arg: 2, scope: !2928, file: !233, line: 184, type: !6)
!2934 = !DILocation(line: 184, column: 29, scope: !2928)
!2935 = !DILocalVariable(name: "package", arg: 3, scope: !2928, file: !233, line: 184, type: !6)
!2936 = !DILocation(line: 184, column: 55, scope: !2928)
!2937 = !DILocalVariable(name: "version", arg: 4, scope: !2928, file: !233, line: 185, type: !6)
!2938 = !DILocation(line: 185, column: 29, scope: !2928)
!2939 = !DILocalVariable(name: "authors", arg: 5, scope: !2928, file: !233, line: 185, type: !2796)
!2940 = !DILocation(line: 185, column: 59, scope: !2928)
!2941 = !DILocalVariable(name: "n_authors", scope: !2928, file: !233, line: 187, type: !141)
!2942 = !DILocation(line: 187, column: 10, scope: !2928)
!2943 = !DILocation(line: 189, column: 18, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2928, file: !233, line: 189, column: 3)
!2945 = !DILocation(line: 189, column: 8, scope: !2944)
!2946 = !DILocation(line: 189, column: 23, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2944, file: !233, line: 189, column: 3)
!2948 = !DILocation(line: 189, column: 31, scope: !2947)
!2949 = !DILocation(line: 189, column: 3, scope: !2944)
!2950 = !DILocation(line: 189, column: 52, scope: !2947)
!2951 = !DILocation(line: 189, column: 3, scope: !2947)
!2952 = distinct !{!2952, !2949, !2953, !393}
!2953 = !DILocation(line: 190, column: 5, scope: !2944)
!2954 = !DILocation(line: 191, column: 20, scope: !2928)
!2955 = !DILocation(line: 191, column: 28, scope: !2928)
!2956 = !DILocation(line: 191, column: 42, scope: !2928)
!2957 = !DILocation(line: 191, column: 51, scope: !2928)
!2958 = !DILocation(line: 191, column: 60, scope: !2928)
!2959 = !DILocation(line: 191, column: 69, scope: !2928)
!2960 = !DILocation(line: 191, column: 3, scope: !2928)
!2961 = !DILocation(line: 192, column: 1, scope: !2928)
!2962 = distinct !DISubprogram(name: "version_etc_va", scope: !233, file: !233, line: 199, type: !2963, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !47)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !2743, !6, !6, !6, !2965}
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !73, line: 52, baseType: !2966)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !75, line: 32, baseType: !2967)
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2968, baseType: !2969)
!2968 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !79, size: 256, elements: !2970)
!2970 = !{!2971, !2972, !2973, !2974, !2975}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2969, file: !2968, line: 192, baseType: !43, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2969, file: !2968, line: 192, baseType: !43, size: 64, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2969, file: !2968, line: 192, baseType: !43, size: 64, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2969, file: !2968, line: 192, baseType: !44, size: 32, offset: 192)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2969, file: !2968, line: 192, baseType: !44, size: 32, offset: 224)
!2976 = !DILocalVariable(name: "stream", arg: 1, scope: !2962, file: !233, line: 199, type: !2743)
!2977 = !DILocation(line: 199, column: 23, scope: !2962)
!2978 = !DILocalVariable(name: "command_name", arg: 2, scope: !2962, file: !233, line: 200, type: !6)
!2979 = !DILocation(line: 200, column: 29, scope: !2962)
!2980 = !DILocalVariable(name: "package", arg: 3, scope: !2962, file: !233, line: 200, type: !6)
!2981 = !DILocation(line: 200, column: 55, scope: !2962)
!2982 = !DILocalVariable(name: "version", arg: 4, scope: !2962, file: !233, line: 201, type: !6)
!2983 = !DILocation(line: 201, column: 29, scope: !2962)
!2984 = !DILocalVariable(name: "authors", arg: 5, scope: !2962, file: !233, line: 201, type: !2965)
!2985 = !DILocation(line: 201, column: 46, scope: !2962)
!2986 = !DILocalVariable(name: "n_authors", scope: !2962, file: !233, line: 203, type: !141)
!2987 = !DILocation(line: 203, column: 10, scope: !2962)
!2988 = !DILocalVariable(name: "authtab", scope: !2962, file: !233, line: 204, type: !2989)
!2989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !149)
!2990 = !DILocation(line: 204, column: 15, scope: !2962)
!2991 = !DILocation(line: 206, column: 18, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2962, file: !233, line: 206, column: 3)
!2993 = !DILocation(line: 206, column: 8, scope: !2992)
!2994 = !DILocation(line: 207, column: 8, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2992, file: !233, line: 206, column: 3)
!2996 = !DILocation(line: 207, column: 18, scope: !2995)
!2997 = !DILocation(line: 208, column: 10, scope: !2995)
!2998 = !DILocation(line: 208, column: 35, scope: !2995)
!2999 = !DILocation(line: 208, column: 22, scope: !2995)
!3000 = !DILocation(line: 208, column: 14, scope: !2995)
!3001 = !DILocation(line: 208, column: 33, scope: !2995)
!3002 = !DILocation(line: 208, column: 67, scope: !2995)
!3003 = !DILocation(line: 0, scope: !2995)
!3004 = !DILocation(line: 206, column: 3, scope: !2992)
!3005 = !DILocation(line: 209, column: 17, scope: !2995)
!3006 = !DILocation(line: 206, column: 3, scope: !2995)
!3007 = distinct !{!3007, !3004, !3008, !393}
!3008 = !DILocation(line: 210, column: 5, scope: !2992)
!3009 = !DILocation(line: 211, column: 20, scope: !2962)
!3010 = !DILocation(line: 211, column: 28, scope: !2962)
!3011 = !DILocation(line: 211, column: 42, scope: !2962)
!3012 = !DILocation(line: 211, column: 51, scope: !2962)
!3013 = !DILocation(line: 212, column: 20, scope: !2962)
!3014 = !DILocation(line: 212, column: 29, scope: !2962)
!3015 = !DILocation(line: 211, column: 3, scope: !2962)
!3016 = !DILocation(line: 213, column: 1, scope: !2962)
!3017 = distinct !DISubprogram(name: "version_etc", scope: !233, file: !233, line: 230, type: !3018, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !47)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !2743, !6, !6, !6, null}
!3020 = !DILocalVariable(name: "stream", arg: 1, scope: !3017, file: !233, line: 230, type: !2743)
!3021 = !DILocation(line: 230, column: 20, scope: !3017)
!3022 = !DILocalVariable(name: "command_name", arg: 2, scope: !3017, file: !233, line: 231, type: !6)
!3023 = !DILocation(line: 231, column: 26, scope: !3017)
!3024 = !DILocalVariable(name: "package", arg: 3, scope: !3017, file: !233, line: 231, type: !6)
!3025 = !DILocation(line: 231, column: 52, scope: !3017)
!3026 = !DILocalVariable(name: "version", arg: 4, scope: !3017, file: !233, line: 232, type: !6)
!3027 = !DILocation(line: 232, column: 26, scope: !3017)
!3028 = !DILocalVariable(name: "authors", scope: !3017, file: !233, line: 234, type: !2965)
!3029 = !DILocation(line: 234, column: 11, scope: !3017)
!3030 = !DILocation(line: 235, column: 3, scope: !3017)
!3031 = !DILocation(line: 236, column: 19, scope: !3017)
!3032 = !DILocation(line: 236, column: 27, scope: !3017)
!3033 = !DILocation(line: 236, column: 41, scope: !3017)
!3034 = !DILocation(line: 236, column: 50, scope: !3017)
!3035 = !DILocation(line: 236, column: 3, scope: !3017)
!3036 = !DILocation(line: 237, column: 3, scope: !3017)
!3037 = !DILocation(line: 238, column: 1, scope: !3017)
!3038 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !233, file: !233, line: 241, type: !93, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !47)
!3039 = !DILocation(line: 243, column: 3, scope: !3038)
!3040 = !DILocation(line: 248, column: 11, scope: !3038)
!3041 = !DILocation(line: 248, column: 3, scope: !3038)
!3042 = !DILocation(line: 254, column: 11, scope: !3038)
!3043 = !DILocation(line: 254, column: 3, scope: !3038)
!3044 = !DILocation(line: 259, column: 11, scope: !3038)
!3045 = !DILocation(line: 259, column: 3, scope: !3038)
!3046 = !DILocation(line: 261, column: 1, scope: !3038)
!3047 = distinct !DISubprogram(name: "xnrealloc", scope: !3048, file: !3048, line: 147, type: !3049, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3048 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!43, !43, !141, !141}
!3051 = !DILocalVariable(name: "p", arg: 1, scope: !3047, file: !3048, line: 147, type: !43)
!3052 = !DILocation(line: 147, column: 18, scope: !3047)
!3053 = !DILocalVariable(name: "n", arg: 2, scope: !3047, file: !3048, line: 147, type: !141)
!3054 = !DILocation(line: 147, column: 28, scope: !3047)
!3055 = !DILocalVariable(name: "s", arg: 3, scope: !3047, file: !3048, line: 147, type: !141)
!3056 = !DILocation(line: 147, column: 38, scope: !3047)
!3057 = !DILocation(line: 149, column: 25, scope: !3047)
!3058 = !DILocation(line: 149, column: 28, scope: !3047)
!3059 = !DILocation(line: 149, column: 31, scope: !3047)
!3060 = !DILocation(line: 149, column: 10, scope: !3047)
!3061 = !DILocation(line: 149, column: 3, scope: !3047)
!3062 = distinct !DISubprogram(name: "xreallocarray", scope: !239, file: !239, line: 83, type: !3049, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3063 = !DILocalVariable(name: "p", arg: 1, scope: !3062, file: !239, line: 83, type: !43)
!3064 = !DILocation(line: 83, column: 22, scope: !3062)
!3065 = !DILocalVariable(name: "n", arg: 2, scope: !3062, file: !239, line: 83, type: !141)
!3066 = !DILocation(line: 83, column: 32, scope: !3062)
!3067 = !DILocalVariable(name: "s", arg: 3, scope: !3062, file: !239, line: 83, type: !141)
!3068 = !DILocation(line: 83, column: 42, scope: !3062)
!3069 = !DILocation(line: 85, column: 39, scope: !3062)
!3070 = !DILocation(line: 85, column: 42, scope: !3062)
!3071 = !DILocation(line: 85, column: 45, scope: !3062)
!3072 = !DILocation(line: 85, column: 25, scope: !3062)
!3073 = !DILocation(line: 85, column: 10, scope: !3062)
!3074 = !DILocation(line: 85, column: 3, scope: !3062)
!3075 = distinct !DISubprogram(name: "check_nonnull", scope: !239, file: !239, line: 37, type: !3076, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!43, !43}
!3078 = !DILocalVariable(name: "p", arg: 1, scope: !3075, file: !239, line: 37, type: !43)
!3079 = !DILocation(line: 37, column: 22, scope: !3075)
!3080 = !DILocation(line: 39, column: 8, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3075, file: !239, line: 39, column: 7)
!3082 = !DILocation(line: 39, column: 7, scope: !3075)
!3083 = !DILocation(line: 40, column: 5, scope: !3081)
!3084 = !DILocation(line: 41, column: 10, scope: !3075)
!3085 = !DILocation(line: 41, column: 3, scope: !3075)
!3086 = distinct !DISubprogram(name: "xmalloc", scope: !239, file: !239, line: 47, type: !3087, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!43, !141}
!3089 = !DILocalVariable(name: "s", arg: 1, scope: !3086, file: !239, line: 47, type: !141)
!3090 = !DILocation(line: 47, column: 17, scope: !3086)
!3091 = !DILocation(line: 49, column: 33, scope: !3086)
!3092 = !DILocation(line: 49, column: 25, scope: !3086)
!3093 = !DILocation(line: 49, column: 10, scope: !3086)
!3094 = !DILocation(line: 49, column: 3, scope: !3086)
!3095 = distinct !DISubprogram(name: "ximalloc", scope: !239, file: !239, line: 53, type: !3096, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!43, !253}
!3098 = !DILocalVariable(name: "s", arg: 1, scope: !3095, file: !239, line: 53, type: !253)
!3099 = !DILocation(line: 53, column: 17, scope: !3095)
!3100 = !DILocation(line: 55, column: 34, scope: !3095)
!3101 = !DILocation(line: 55, column: 25, scope: !3095)
!3102 = !DILocation(line: 55, column: 10, scope: !3095)
!3103 = !DILocation(line: 55, column: 3, scope: !3095)
!3104 = distinct !DISubprogram(name: "xcharalloc", scope: !239, file: !239, line: 59, type: !3105, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!117, !141}
!3107 = !DILocalVariable(name: "n", arg: 1, scope: !3104, file: !239, line: 59, type: !141)
!3108 = !DILocation(line: 59, column: 20, scope: !3104)
!3109 = !DILocation(line: 61, column: 10, scope: !3104)
!3110 = !DILocation(line: 61, column: 3, scope: !3104)
!3111 = distinct !DISubprogram(name: "xrealloc", scope: !239, file: !239, line: 68, type: !3112, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!43, !43, !141}
!3114 = !DILocalVariable(name: "p", arg: 1, scope: !3111, file: !239, line: 68, type: !43)
!3115 = !DILocation(line: 68, column: 17, scope: !3111)
!3116 = !DILocalVariable(name: "s", arg: 2, scope: !3111, file: !239, line: 68, type: !141)
!3117 = !DILocation(line: 68, column: 27, scope: !3111)
!3118 = !DILocation(line: 70, column: 34, scope: !3111)
!3119 = !DILocation(line: 70, column: 37, scope: !3111)
!3120 = !DILocation(line: 70, column: 25, scope: !3111)
!3121 = !DILocation(line: 70, column: 10, scope: !3111)
!3122 = !DILocation(line: 70, column: 3, scope: !3111)
!3123 = distinct !DISubprogram(name: "xirealloc", scope: !239, file: !239, line: 74, type: !3124, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!43, !43, !253}
!3126 = !DILocalVariable(name: "p", arg: 1, scope: !3123, file: !239, line: 74, type: !43)
!3127 = !DILocation(line: 74, column: 18, scope: !3123)
!3128 = !DILocalVariable(name: "s", arg: 2, scope: !3123, file: !239, line: 74, type: !253)
!3129 = !DILocation(line: 74, column: 27, scope: !3123)
!3130 = !DILocation(line: 76, column: 35, scope: !3123)
!3131 = !DILocation(line: 76, column: 38, scope: !3123)
!3132 = !DILocation(line: 76, column: 25, scope: !3123)
!3133 = !DILocation(line: 76, column: 10, scope: !3123)
!3134 = !DILocation(line: 76, column: 3, scope: !3123)
!3135 = distinct !DISubprogram(name: "xireallocarray", scope: !239, file: !239, line: 89, type: !3136, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!43, !43, !253, !253}
!3138 = !DILocalVariable(name: "p", arg: 1, scope: !3135, file: !239, line: 89, type: !43)
!3139 = !DILocation(line: 89, column: 23, scope: !3135)
!3140 = !DILocalVariable(name: "n", arg: 2, scope: !3135, file: !239, line: 89, type: !253)
!3141 = !DILocation(line: 89, column: 32, scope: !3135)
!3142 = !DILocalVariable(name: "s", arg: 3, scope: !3135, file: !239, line: 89, type: !253)
!3143 = !DILocation(line: 89, column: 41, scope: !3135)
!3144 = !DILocation(line: 91, column: 40, scope: !3135)
!3145 = !DILocation(line: 91, column: 43, scope: !3135)
!3146 = !DILocation(line: 91, column: 46, scope: !3135)
!3147 = !DILocation(line: 91, column: 25, scope: !3135)
!3148 = !DILocation(line: 91, column: 10, scope: !3135)
!3149 = !DILocation(line: 91, column: 3, scope: !3135)
!3150 = distinct !DISubprogram(name: "xnmalloc", scope: !239, file: !239, line: 98, type: !3151, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!43, !141, !141}
!3153 = !DILocalVariable(name: "n", arg: 1, scope: !3150, file: !239, line: 98, type: !141)
!3154 = !DILocation(line: 98, column: 18, scope: !3150)
!3155 = !DILocalVariable(name: "s", arg: 2, scope: !3150, file: !239, line: 98, type: !141)
!3156 = !DILocation(line: 98, column: 28, scope: !3150)
!3157 = !DILocation(line: 100, column: 31, scope: !3150)
!3158 = !DILocation(line: 100, column: 34, scope: !3150)
!3159 = !DILocation(line: 100, column: 10, scope: !3150)
!3160 = !DILocation(line: 100, column: 3, scope: !3150)
!3161 = distinct !DISubprogram(name: "xinmalloc", scope: !239, file: !239, line: 104, type: !3162, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!43, !253, !253}
!3164 = !DILocalVariable(name: "n", arg: 1, scope: !3161, file: !239, line: 104, type: !253)
!3165 = !DILocation(line: 104, column: 18, scope: !3161)
!3166 = !DILocalVariable(name: "s", arg: 2, scope: !3161, file: !239, line: 104, type: !253)
!3167 = !DILocation(line: 104, column: 27, scope: !3161)
!3168 = !DILocation(line: 106, column: 32, scope: !3161)
!3169 = !DILocation(line: 106, column: 35, scope: !3161)
!3170 = !DILocation(line: 106, column: 10, scope: !3161)
!3171 = !DILocation(line: 106, column: 3, scope: !3161)
!3172 = distinct !DISubprogram(name: "x2realloc", scope: !239, file: !239, line: 116, type: !3173, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!43, !43, !245}
!3175 = !DILocalVariable(name: "p", arg: 1, scope: !3172, file: !239, line: 116, type: !43)
!3176 = !DILocation(line: 116, column: 18, scope: !3172)
!3177 = !DILocalVariable(name: "ps", arg: 2, scope: !3172, file: !239, line: 116, type: !245)
!3178 = !DILocation(line: 116, column: 29, scope: !3172)
!3179 = !DILocation(line: 118, column: 22, scope: !3172)
!3180 = !DILocation(line: 118, column: 25, scope: !3172)
!3181 = !DILocation(line: 118, column: 10, scope: !3172)
!3182 = !DILocation(line: 118, column: 3, scope: !3172)
!3183 = !DILocalVariable(name: "p", arg: 1, scope: !242, file: !239, line: 176, type: !43)
!3184 = !DILocation(line: 176, column: 19, scope: !242)
!3185 = !DILocalVariable(name: "pn", arg: 2, scope: !242, file: !239, line: 176, type: !245)
!3186 = !DILocation(line: 176, column: 30, scope: !242)
!3187 = !DILocalVariable(name: "s", arg: 3, scope: !242, file: !239, line: 176, type: !141)
!3188 = !DILocation(line: 176, column: 41, scope: !242)
!3189 = !DILocalVariable(name: "n", scope: !242, file: !239, line: 178, type: !141)
!3190 = !DILocation(line: 178, column: 10, scope: !242)
!3191 = !DILocation(line: 178, column: 15, scope: !242)
!3192 = !DILocation(line: 178, column: 14, scope: !242)
!3193 = !DILocation(line: 180, column: 9, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !242, file: !239, line: 180, column: 7)
!3195 = !DILocation(line: 180, column: 7, scope: !242)
!3196 = !DILocation(line: 182, column: 13, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !239, line: 182, column: 11)
!3198 = distinct !DILexicalBlock(scope: !3194, file: !239, line: 181, column: 5)
!3199 = !DILocation(line: 182, column: 11, scope: !3198)
!3200 = !DILocation(line: 190, column: 32, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3197, file: !239, line: 183, column: 9)
!3202 = !DILocation(line: 190, column: 30, scope: !3201)
!3203 = !DILocation(line: 190, column: 13, scope: !3201)
!3204 = !DILocation(line: 191, column: 17, scope: !3201)
!3205 = !DILocation(line: 191, column: 16, scope: !3201)
!3206 = !DILocation(line: 191, column: 13, scope: !3201)
!3207 = !DILocation(line: 192, column: 9, scope: !3201)
!3208 = !DILocation(line: 193, column: 5, scope: !3198)
!3209 = !DILocation(line: 197, column: 11, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !239, line: 197, column: 11)
!3211 = distinct !DILexicalBlock(scope: !3194, file: !239, line: 195, column: 5)
!3212 = !DILocation(line: 197, column: 11, scope: !3211)
!3213 = !DILocation(line: 198, column: 9, scope: !3210)
!3214 = !DILocation(line: 201, column: 22, scope: !242)
!3215 = !DILocation(line: 201, column: 25, scope: !242)
!3216 = !DILocation(line: 201, column: 28, scope: !242)
!3217 = !DILocation(line: 201, column: 7, scope: !242)
!3218 = !DILocation(line: 201, column: 5, scope: !242)
!3219 = !DILocation(line: 202, column: 9, scope: !242)
!3220 = !DILocation(line: 202, column: 4, scope: !242)
!3221 = !DILocation(line: 202, column: 7, scope: !242)
!3222 = !DILocation(line: 203, column: 10, scope: !242)
!3223 = !DILocation(line: 203, column: 3, scope: !242)
!3224 = !DILocalVariable(name: "pa", arg: 1, scope: !249, file: !239, line: 223, type: !43)
!3225 = !DILocation(line: 223, column: 16, scope: !249)
!3226 = !DILocalVariable(name: "pn", arg: 2, scope: !249, file: !239, line: 223, type: !252)
!3227 = !DILocation(line: 223, column: 27, scope: !249)
!3228 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !249, file: !239, line: 223, type: !253)
!3229 = !DILocation(line: 223, column: 37, scope: !249)
!3230 = !DILocalVariable(name: "n_max", arg: 4, scope: !249, file: !239, line: 223, type: !255)
!3231 = !DILocation(line: 223, column: 59, scope: !249)
!3232 = !DILocalVariable(name: "s", arg: 5, scope: !249, file: !239, line: 223, type: !253)
!3233 = !DILocation(line: 223, column: 72, scope: !249)
!3234 = !DILocalVariable(name: "n0", scope: !249, file: !239, line: 230, type: !253)
!3235 = !DILocation(line: 230, column: 9, scope: !249)
!3236 = !DILocation(line: 230, column: 15, scope: !249)
!3237 = !DILocation(line: 230, column: 14, scope: !249)
!3238 = !DILocalVariable(name: "n", scope: !249, file: !239, line: 237, type: !253)
!3239 = !DILocation(line: 237, column: 9, scope: !249)
!3240 = !DILocation(line: 238, column: 7, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !249, file: !239, line: 238, column: 7)
!3242 = !DILocation(line: 238, column: 7, scope: !249)
!3243 = !DILocation(line: 239, column: 7, scope: !3241)
!3244 = !DILocation(line: 239, column: 5, scope: !3241)
!3245 = !DILocation(line: 240, column: 12, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !249, file: !239, line: 240, column: 7)
!3247 = !DILocation(line: 240, column: 9, scope: !3246)
!3248 = !DILocation(line: 240, column: 18, scope: !3246)
!3249 = !DILocation(line: 240, column: 21, scope: !3246)
!3250 = !DILocation(line: 240, column: 29, scope: !3246)
!3251 = !DILocation(line: 240, column: 27, scope: !3246)
!3252 = !DILocation(line: 240, column: 7, scope: !249)
!3253 = !DILocation(line: 241, column: 9, scope: !3246)
!3254 = !DILocation(line: 241, column: 7, scope: !3246)
!3255 = !DILocation(line: 241, column: 5, scope: !3246)
!3256 = !DILocalVariable(name: "nbytes", scope: !249, file: !239, line: 248, type: !253)
!3257 = !DILocation(line: 248, column: 9, scope: !249)
!3258 = !DILocalVariable(name: "adjusted_nbytes", scope: !249, file: !239, line: 252, type: !253)
!3259 = !DILocation(line: 252, column: 9, scope: !249)
!3260 = !DILocation(line: 253, column: 8, scope: !249)
!3261 = !DILocation(line: 255, column: 10, scope: !249)
!3262 = !DILocation(line: 255, column: 17, scope: !249)
!3263 = !DILocation(line: 256, column: 7, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !249, file: !239, line: 256, column: 7)
!3265 = !DILocation(line: 256, column: 7, scope: !249)
!3266 = !DILocation(line: 258, column: 11, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3264, file: !239, line: 257, column: 5)
!3268 = !DILocation(line: 258, column: 29, scope: !3267)
!3269 = !DILocation(line: 258, column: 27, scope: !3267)
!3270 = !DILocation(line: 258, column: 9, scope: !3267)
!3271 = !DILocation(line: 259, column: 16, scope: !3267)
!3272 = !DILocation(line: 259, column: 34, scope: !3267)
!3273 = !DILocation(line: 259, column: 52, scope: !3267)
!3274 = !DILocation(line: 259, column: 50, scope: !3267)
!3275 = !DILocation(line: 259, column: 32, scope: !3267)
!3276 = !DILocation(line: 259, column: 14, scope: !3267)
!3277 = !DILocation(line: 260, column: 5, scope: !3267)
!3278 = !DILocation(line: 262, column: 9, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !249, file: !239, line: 262, column: 7)
!3280 = !DILocation(line: 262, column: 7, scope: !249)
!3281 = !DILocation(line: 263, column: 6, scope: !3279)
!3282 = !DILocation(line: 263, column: 9, scope: !3279)
!3283 = !DILocation(line: 263, column: 5, scope: !3279)
!3284 = !DILocation(line: 264, column: 7, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !249, file: !239, line: 264, column: 7)
!3286 = !DILocation(line: 264, column: 11, scope: !3285)
!3287 = !DILocation(line: 264, column: 9, scope: !3285)
!3288 = !DILocation(line: 264, column: 16, scope: !3285)
!3289 = !DILocation(line: 264, column: 14, scope: !3285)
!3290 = !DILocation(line: 265, column: 7, scope: !3285)
!3291 = !DILocation(line: 265, column: 11, scope: !3285)
!3292 = !DILocation(line: 266, column: 11, scope: !3285)
!3293 = !DILocation(line: 266, column: 20, scope: !3285)
!3294 = !DILocation(line: 266, column: 17, scope: !3285)
!3295 = !DILocation(line: 266, column: 26, scope: !3285)
!3296 = !DILocation(line: 266, column: 29, scope: !3285)
!3297 = !DILocation(line: 266, column: 37, scope: !3285)
!3298 = !DILocation(line: 266, column: 35, scope: !3285)
!3299 = !DILocation(line: 267, column: 11, scope: !3285)
!3300 = !DILocation(line: 267, column: 14, scope: !3285)
!3301 = !DILocation(line: 264, column: 7, scope: !249)
!3302 = !DILocation(line: 268, column: 5, scope: !3285)
!3303 = !DILocation(line: 269, column: 18, scope: !249)
!3304 = !DILocation(line: 269, column: 22, scope: !249)
!3305 = !DILocation(line: 269, column: 8, scope: !249)
!3306 = !DILocation(line: 269, column: 6, scope: !249)
!3307 = !DILocation(line: 270, column: 9, scope: !249)
!3308 = !DILocation(line: 270, column: 4, scope: !249)
!3309 = !DILocation(line: 270, column: 7, scope: !249)
!3310 = !DILocation(line: 271, column: 10, scope: !249)
!3311 = !DILocation(line: 271, column: 3, scope: !249)
!3312 = distinct !DISubprogram(name: "xzalloc", scope: !239, file: !239, line: 279, type: !3087, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3313 = !DILocalVariable(name: "s", arg: 1, scope: !3312, file: !239, line: 279, type: !141)
!3314 = !DILocation(line: 279, column: 17, scope: !3312)
!3315 = !DILocation(line: 281, column: 19, scope: !3312)
!3316 = !DILocation(line: 281, column: 10, scope: !3312)
!3317 = !DILocation(line: 281, column: 3, scope: !3312)
!3318 = distinct !DISubprogram(name: "xcalloc", scope: !239, file: !239, line: 294, type: !3151, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3319 = !DILocalVariable(name: "n", arg: 1, scope: !3318, file: !239, line: 294, type: !141)
!3320 = !DILocation(line: 294, column: 17, scope: !3318)
!3321 = !DILocalVariable(name: "s", arg: 2, scope: !3318, file: !239, line: 294, type: !141)
!3322 = !DILocation(line: 294, column: 27, scope: !3318)
!3323 = !DILocation(line: 296, column: 33, scope: !3318)
!3324 = !DILocation(line: 296, column: 36, scope: !3318)
!3325 = !DILocation(line: 296, column: 25, scope: !3318)
!3326 = !DILocation(line: 296, column: 10, scope: !3318)
!3327 = !DILocation(line: 296, column: 3, scope: !3318)
!3328 = distinct !DISubprogram(name: "xizalloc", scope: !239, file: !239, line: 285, type: !3096, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3329 = !DILocalVariable(name: "s", arg: 1, scope: !3328, file: !239, line: 285, type: !253)
!3330 = !DILocation(line: 285, column: 17, scope: !3328)
!3331 = !DILocation(line: 287, column: 20, scope: !3328)
!3332 = !DILocation(line: 287, column: 10, scope: !3328)
!3333 = !DILocation(line: 287, column: 3, scope: !3328)
!3334 = distinct !DISubprogram(name: "xicalloc", scope: !239, file: !239, line: 300, type: !3162, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3335 = !DILocalVariable(name: "n", arg: 1, scope: !3334, file: !239, line: 300, type: !253)
!3336 = !DILocation(line: 300, column: 17, scope: !3334)
!3337 = !DILocalVariable(name: "s", arg: 2, scope: !3334, file: !239, line: 300, type: !253)
!3338 = !DILocation(line: 300, column: 26, scope: !3334)
!3339 = !DILocation(line: 302, column: 34, scope: !3334)
!3340 = !DILocation(line: 302, column: 37, scope: !3334)
!3341 = !DILocation(line: 302, column: 25, scope: !3334)
!3342 = !DILocation(line: 302, column: 10, scope: !3334)
!3343 = !DILocation(line: 302, column: 3, scope: !3334)
!3344 = distinct !DISubprogram(name: "xmemdup", scope: !239, file: !239, line: 310, type: !3345, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!43, !3347, !141}
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3349 = !DILocalVariable(name: "p", arg: 1, scope: !3344, file: !239, line: 310, type: !3347)
!3350 = !DILocation(line: 310, column: 22, scope: !3344)
!3351 = !DILocalVariable(name: "s", arg: 2, scope: !3344, file: !239, line: 310, type: !141)
!3352 = !DILocation(line: 310, column: 32, scope: !3344)
!3353 = !DILocation(line: 312, column: 27, scope: !3344)
!3354 = !DILocation(line: 312, column: 18, scope: !3344)
!3355 = !DILocation(line: 312, column: 31, scope: !3344)
!3356 = !DILocation(line: 312, column: 34, scope: !3344)
!3357 = !DILocation(line: 312, column: 10, scope: !3344)
!3358 = !DILocation(line: 312, column: 3, scope: !3344)
!3359 = distinct !DISubprogram(name: "ximemdup", scope: !239, file: !239, line: 316, type: !3360, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!43, !3347, !253}
!3362 = !DILocalVariable(name: "p", arg: 1, scope: !3359, file: !239, line: 316, type: !3347)
!3363 = !DILocation(line: 316, column: 23, scope: !3359)
!3364 = !DILocalVariable(name: "s", arg: 2, scope: !3359, file: !239, line: 316, type: !253)
!3365 = !DILocation(line: 316, column: 32, scope: !3359)
!3366 = !DILocation(line: 318, column: 28, scope: !3359)
!3367 = !DILocation(line: 318, column: 18, scope: !3359)
!3368 = !DILocation(line: 318, column: 32, scope: !3359)
!3369 = !DILocation(line: 318, column: 35, scope: !3359)
!3370 = !DILocation(line: 318, column: 10, scope: !3359)
!3371 = !DILocation(line: 318, column: 3, scope: !3359)
!3372 = distinct !DISubprogram(name: "ximemdup0", scope: !239, file: !239, line: 325, type: !3373, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!117, !3347, !253}
!3375 = !DILocalVariable(name: "p", arg: 1, scope: !3372, file: !239, line: 325, type: !3347)
!3376 = !DILocation(line: 325, column: 24, scope: !3372)
!3377 = !DILocalVariable(name: "s", arg: 2, scope: !3372, file: !239, line: 325, type: !253)
!3378 = !DILocation(line: 325, column: 33, scope: !3372)
!3379 = !DILocalVariable(name: "result", scope: !3372, file: !239, line: 327, type: !117)
!3380 = !DILocation(line: 327, column: 9, scope: !3372)
!3381 = !DILocation(line: 327, column: 28, scope: !3372)
!3382 = !DILocation(line: 327, column: 30, scope: !3372)
!3383 = !DILocation(line: 327, column: 18, scope: !3372)
!3384 = !DILocation(line: 328, column: 3, scope: !3372)
!3385 = !DILocation(line: 328, column: 10, scope: !3372)
!3386 = !DILocation(line: 328, column: 13, scope: !3372)
!3387 = !DILocation(line: 329, column: 18, scope: !3372)
!3388 = !DILocation(line: 329, column: 26, scope: !3372)
!3389 = !DILocation(line: 329, column: 29, scope: !3372)
!3390 = !DILocation(line: 329, column: 10, scope: !3372)
!3391 = !DILocation(line: 329, column: 3, scope: !3372)
!3392 = distinct !DISubprogram(name: "xstrdup", scope: !239, file: !239, line: 335, type: !2455, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !47)
!3393 = !DILocalVariable(name: "string", arg: 1, scope: !3392, file: !239, line: 335, type: !6)
!3394 = !DILocation(line: 335, column: 22, scope: !3392)
!3395 = !DILocation(line: 337, column: 19, scope: !3392)
!3396 = !DILocation(line: 337, column: 35, scope: !3392)
!3397 = !DILocation(line: 337, column: 27, scope: !3392)
!3398 = !DILocation(line: 337, column: 43, scope: !3392)
!3399 = !DILocation(line: 337, column: 10, scope: !3392)
!3400 = !DILocation(line: 337, column: 3, scope: !3392)
!3401 = distinct !DISubprogram(name: "xalloc_die", scope: !259, file: !259, line: 32, type: !93, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !258, retainedNodes: !47)
!3402 = !DILocalVariable(name: "__errstatus", scope: !3403, file: !259, line: 34, type: !3404)
!3403 = distinct !DILexicalBlock(scope: !3401, file: !259, line: 34, column: 3)
!3404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!3405 = !DILocation(line: 34, column: 3, scope: !3403)
!3406 = !DILocation(line: 40, column: 3, scope: !3401)
!3407 = distinct !DISubprogram(name: "c32isprint", scope: !3408, file: !3408, line: 41, type: !3409, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !47)
!3408 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!44, !3411}
!3411 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3412, line: 20, baseType: !14)
!3412 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3413 = !DILocalVariable(name: "wc", arg: 1, scope: !3407, file: !3408, line: 41, type: !3411)
!3414 = !DILocation(line: 41, column: 14, scope: !3407)
!3415 = !DILocation(line: 66, column: 22, scope: !3407)
!3416 = !DILocation(line: 66, column: 10, scope: !3407)
!3417 = !DILocation(line: 66, column: 3, scope: !3407)
!3418 = distinct !DISubprogram(name: "close_stream", scope: !263, file: !263, line: 55, type: !3419, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !47)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!44, !3421}
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2745, line: 7, baseType: !3423)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2747, line: 49, size: 1728, elements: !3424)
!3424 = !{!3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3423, file: !2747, line: 51, baseType: !44, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3423, file: !2747, line: 54, baseType: !117, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3423, file: !2747, line: 55, baseType: !117, size: 64, offset: 128)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3423, file: !2747, line: 56, baseType: !117, size: 64, offset: 192)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3423, file: !2747, line: 57, baseType: !117, size: 64, offset: 256)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3423, file: !2747, line: 58, baseType: !117, size: 64, offset: 320)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3423, file: !2747, line: 59, baseType: !117, size: 64, offset: 384)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3423, file: !2747, line: 60, baseType: !117, size: 64, offset: 448)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3423, file: !2747, line: 61, baseType: !117, size: 64, offset: 512)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3423, file: !2747, line: 64, baseType: !117, size: 64, offset: 576)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3423, file: !2747, line: 65, baseType: !117, size: 64, offset: 640)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3423, file: !2747, line: 66, baseType: !117, size: 64, offset: 704)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3423, file: !2747, line: 68, baseType: !2762, size: 64, offset: 768)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3423, file: !2747, line: 70, baseType: !3439, size: 64, offset: 832)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3423, file: !2747, line: 72, baseType: !44, size: 32, offset: 896)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3423, file: !2747, line: 73, baseType: !44, size: 32, offset: 928)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3423, file: !2747, line: 74, baseType: !2769, size: 64, offset: 960)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3423, file: !2747, line: 77, baseType: !45, size: 16, offset: 1024)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3423, file: !2747, line: 78, baseType: !2772, size: 8, offset: 1040)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3423, file: !2747, line: 79, baseType: !2774, size: 8, offset: 1048)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3423, file: !2747, line: 81, baseType: !2778, size: 64, offset: 1088)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3423, file: !2747, line: 89, baseType: !2781, size: 64, offset: 1152)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3423, file: !2747, line: 91, baseType: !2783, size: 64, offset: 1216)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3423, file: !2747, line: 92, baseType: !2786, size: 64, offset: 1280)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3423, file: !2747, line: 93, baseType: !3439, size: 64, offset: 1344)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3423, file: !2747, line: 94, baseType: !43, size: 64, offset: 1408)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3423, file: !2747, line: 95, baseType: !141, size: 64, offset: 1472)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3423, file: !2747, line: 96, baseType: !44, size: 32, offset: 1536)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3423, file: !2747, line: 98, baseType: !2793, size: 160, offset: 1568)
!3455 = !DILocalVariable(name: "stream", arg: 1, scope: !3418, file: !263, line: 55, type: !3421)
!3456 = !DILocation(line: 55, column: 21, scope: !3418)
!3457 = !DILocalVariable(name: "some_pending", scope: !3418, file: !263, line: 57, type: !3458)
!3458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!3459 = !DILocation(line: 57, column: 14, scope: !3418)
!3460 = !DILocation(line: 57, column: 42, scope: !3418)
!3461 = !DILocation(line: 57, column: 30, scope: !3418)
!3462 = !DILocation(line: 57, column: 50, scope: !3418)
!3463 = !DILocalVariable(name: "prev_fail", scope: !3418, file: !263, line: 58, type: !3458)
!3464 = !DILocation(line: 58, column: 14, scope: !3418)
!3465 = !DILocation(line: 58, column: 27, scope: !3418)
!3466 = !DILocation(line: 58, column: 43, scope: !3418)
!3467 = !DILocalVariable(name: "fclose_fail", scope: !3418, file: !263, line: 59, type: !3458)
!3468 = !DILocation(line: 59, column: 14, scope: !3418)
!3469 = !DILocation(line: 59, column: 37, scope: !3418)
!3470 = !DILocation(line: 59, column: 29, scope: !3418)
!3471 = !DILocation(line: 59, column: 45, scope: !3418)
!3472 = !DILocation(line: 69, column: 7, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3418, file: !263, line: 69, column: 7)
!3474 = !DILocation(line: 69, column: 17, scope: !3473)
!3475 = !DILocation(line: 69, column: 21, scope: !3473)
!3476 = !DILocation(line: 69, column: 33, scope: !3473)
!3477 = !DILocation(line: 69, column: 37, scope: !3473)
!3478 = !DILocation(line: 69, column: 50, scope: !3473)
!3479 = !DILocation(line: 69, column: 53, scope: !3473)
!3480 = !DILocation(line: 69, column: 59, scope: !3473)
!3481 = !DILocation(line: 69, column: 7, scope: !3418)
!3482 = !DILocation(line: 71, column: 13, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !263, line: 71, column: 11)
!3484 = distinct !DILexicalBlock(scope: !3473, file: !263, line: 70, column: 5)
!3485 = !DILocation(line: 71, column: 11, scope: !3484)
!3486 = !DILocation(line: 72, column: 9, scope: !3483)
!3487 = !DILocation(line: 72, column: 15, scope: !3483)
!3488 = !DILocation(line: 73, column: 7, scope: !3484)
!3489 = !DILocation(line: 76, column: 3, scope: !3418)
!3490 = !DILocation(line: 77, column: 1, scope: !3418)
!3491 = distinct !DISubprogram(name: "rpl_fclose", scope: !265, file: !265, line: 58, type: !3492, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !47)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!44, !3494}
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2745, line: 7, baseType: !3496)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2747, line: 49, size: 1728, elements: !3497)
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3496, file: !2747, line: 51, baseType: !44, size: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3496, file: !2747, line: 54, baseType: !117, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3496, file: !2747, line: 55, baseType: !117, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3496, file: !2747, line: 56, baseType: !117, size: 64, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3496, file: !2747, line: 57, baseType: !117, size: 64, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3496, file: !2747, line: 58, baseType: !117, size: 64, offset: 320)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3496, file: !2747, line: 59, baseType: !117, size: 64, offset: 384)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3496, file: !2747, line: 60, baseType: !117, size: 64, offset: 448)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3496, file: !2747, line: 61, baseType: !117, size: 64, offset: 512)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3496, file: !2747, line: 64, baseType: !117, size: 64, offset: 576)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3496, file: !2747, line: 65, baseType: !117, size: 64, offset: 640)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3496, file: !2747, line: 66, baseType: !117, size: 64, offset: 704)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3496, file: !2747, line: 68, baseType: !2762, size: 64, offset: 768)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3496, file: !2747, line: 70, baseType: !3512, size: 64, offset: 832)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3496, file: !2747, line: 72, baseType: !44, size: 32, offset: 896)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3496, file: !2747, line: 73, baseType: !44, size: 32, offset: 928)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3496, file: !2747, line: 74, baseType: !2769, size: 64, offset: 960)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3496, file: !2747, line: 77, baseType: !45, size: 16, offset: 1024)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3496, file: !2747, line: 78, baseType: !2772, size: 8, offset: 1040)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3496, file: !2747, line: 79, baseType: !2774, size: 8, offset: 1048)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3496, file: !2747, line: 81, baseType: !2778, size: 64, offset: 1088)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3496, file: !2747, line: 89, baseType: !2781, size: 64, offset: 1152)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3496, file: !2747, line: 91, baseType: !2783, size: 64, offset: 1216)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3496, file: !2747, line: 92, baseType: !2786, size: 64, offset: 1280)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3496, file: !2747, line: 93, baseType: !3512, size: 64, offset: 1344)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3496, file: !2747, line: 94, baseType: !43, size: 64, offset: 1408)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3496, file: !2747, line: 95, baseType: !141, size: 64, offset: 1472)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3496, file: !2747, line: 96, baseType: !44, size: 32, offset: 1536)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3496, file: !2747, line: 98, baseType: !2793, size: 160, offset: 1568)
!3528 = !DILocalVariable(name: "fp", arg: 1, scope: !3491, file: !265, line: 58, type: !3494)
!3529 = !DILocation(line: 58, column: 19, scope: !3491)
!3530 = !DILocalVariable(name: "saved_errno", scope: !3491, file: !265, line: 60, type: !44)
!3531 = !DILocation(line: 60, column: 7, scope: !3491)
!3532 = !DILocalVariable(name: "fd", scope: !3491, file: !265, line: 63, type: !44)
!3533 = !DILocation(line: 63, column: 7, scope: !3491)
!3534 = !DILocation(line: 63, column: 20, scope: !3491)
!3535 = !DILocation(line: 63, column: 12, scope: !3491)
!3536 = !DILocation(line: 64, column: 7, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3491, file: !265, line: 64, column: 7)
!3538 = !DILocation(line: 64, column: 10, scope: !3537)
!3539 = !DILocation(line: 64, column: 7, scope: !3491)
!3540 = !DILocation(line: 65, column: 28, scope: !3537)
!3541 = !DILocation(line: 65, column: 12, scope: !3537)
!3542 = !DILocation(line: 65, column: 5, scope: !3537)
!3543 = !DILocation(line: 70, column: 9, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3491, file: !265, line: 70, column: 7)
!3545 = !DILocation(line: 70, column: 23, scope: !3544)
!3546 = !DILocation(line: 70, column: 41, scope: !3544)
!3547 = !DILocation(line: 70, column: 33, scope: !3544)
!3548 = !DILocation(line: 70, column: 26, scope: !3544)
!3549 = !DILocation(line: 70, column: 59, scope: !3544)
!3550 = !DILocation(line: 71, column: 7, scope: !3544)
!3551 = !DILocation(line: 71, column: 18, scope: !3544)
!3552 = !DILocation(line: 71, column: 10, scope: !3544)
!3553 = !DILocation(line: 70, column: 7, scope: !3491)
!3554 = !DILocation(line: 72, column: 19, scope: !3544)
!3555 = !DILocation(line: 72, column: 17, scope: !3544)
!3556 = !DILocation(line: 72, column: 5, scope: !3544)
!3557 = !DILocalVariable(name: "result", scope: !3491, file: !265, line: 74, type: !44)
!3558 = !DILocation(line: 74, column: 7, scope: !3491)
!3559 = !DILocation(line: 100, column: 28, scope: !3491)
!3560 = !DILocation(line: 100, column: 12, scope: !3491)
!3561 = !DILocation(line: 100, column: 10, scope: !3491)
!3562 = !DILocation(line: 105, column: 7, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3491, file: !265, line: 105, column: 7)
!3564 = !DILocation(line: 105, column: 19, scope: !3563)
!3565 = !DILocation(line: 105, column: 7, scope: !3491)
!3566 = !DILocation(line: 107, column: 15, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3563, file: !265, line: 106, column: 5)
!3568 = !DILocation(line: 107, column: 7, scope: !3567)
!3569 = !DILocation(line: 107, column: 13, scope: !3567)
!3570 = !DILocation(line: 108, column: 14, scope: !3567)
!3571 = !DILocation(line: 109, column: 5, scope: !3567)
!3572 = !DILocation(line: 111, column: 10, scope: !3491)
!3573 = !DILocation(line: 111, column: 3, scope: !3491)
!3574 = !DILocation(line: 112, column: 1, scope: !3491)
!3575 = distinct !DISubprogram(name: "rpl_fflush", scope: !267, file: !267, line: 130, type: !3576, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !47)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!44, !3578}
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2745, line: 7, baseType: !3580)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2747, line: 49, size: 1728, elements: !3581)
!3581 = !{!3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3580, file: !2747, line: 51, baseType: !44, size: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3580, file: !2747, line: 54, baseType: !117, size: 64, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3580, file: !2747, line: 55, baseType: !117, size: 64, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3580, file: !2747, line: 56, baseType: !117, size: 64, offset: 192)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3580, file: !2747, line: 57, baseType: !117, size: 64, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3580, file: !2747, line: 58, baseType: !117, size: 64, offset: 320)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3580, file: !2747, line: 59, baseType: !117, size: 64, offset: 384)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3580, file: !2747, line: 60, baseType: !117, size: 64, offset: 448)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3580, file: !2747, line: 61, baseType: !117, size: 64, offset: 512)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3580, file: !2747, line: 64, baseType: !117, size: 64, offset: 576)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3580, file: !2747, line: 65, baseType: !117, size: 64, offset: 640)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3580, file: !2747, line: 66, baseType: !117, size: 64, offset: 704)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3580, file: !2747, line: 68, baseType: !2762, size: 64, offset: 768)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3580, file: !2747, line: 70, baseType: !3596, size: 64, offset: 832)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3580, file: !2747, line: 72, baseType: !44, size: 32, offset: 896)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3580, file: !2747, line: 73, baseType: !44, size: 32, offset: 928)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3580, file: !2747, line: 74, baseType: !2769, size: 64, offset: 960)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3580, file: !2747, line: 77, baseType: !45, size: 16, offset: 1024)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3580, file: !2747, line: 78, baseType: !2772, size: 8, offset: 1040)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3580, file: !2747, line: 79, baseType: !2774, size: 8, offset: 1048)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3580, file: !2747, line: 81, baseType: !2778, size: 64, offset: 1088)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3580, file: !2747, line: 89, baseType: !2781, size: 64, offset: 1152)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3580, file: !2747, line: 91, baseType: !2783, size: 64, offset: 1216)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3580, file: !2747, line: 92, baseType: !2786, size: 64, offset: 1280)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3580, file: !2747, line: 93, baseType: !3596, size: 64, offset: 1344)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3580, file: !2747, line: 94, baseType: !43, size: 64, offset: 1408)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3580, file: !2747, line: 95, baseType: !141, size: 64, offset: 1472)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3580, file: !2747, line: 96, baseType: !44, size: 32, offset: 1536)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3580, file: !2747, line: 98, baseType: !2793, size: 160, offset: 1568)
!3612 = !DILocalVariable(name: "stream", arg: 1, scope: !3575, file: !267, line: 130, type: !3578)
!3613 = !DILocation(line: 130, column: 19, scope: !3575)
!3614 = !DILocation(line: 151, column: 7, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3575, file: !267, line: 151, column: 7)
!3616 = !DILocation(line: 151, column: 14, scope: !3615)
!3617 = !DILocation(line: 151, column: 22, scope: !3615)
!3618 = !DILocation(line: 151, column: 27, scope: !3615)
!3619 = !DILocation(line: 151, column: 7, scope: !3575)
!3620 = !DILocation(line: 152, column: 20, scope: !3615)
!3621 = !DILocation(line: 152, column: 12, scope: !3615)
!3622 = !DILocation(line: 152, column: 5, scope: !3615)
!3623 = !DILocation(line: 157, column: 44, scope: !3575)
!3624 = !DILocation(line: 157, column: 3, scope: !3575)
!3625 = !DILocation(line: 159, column: 18, scope: !3575)
!3626 = !DILocation(line: 159, column: 10, scope: !3575)
!3627 = !DILocation(line: 159, column: 3, scope: !3575)
!3628 = !DILocation(line: 236, column: 1, scope: !3575)
!3629 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !267, file: !267, line: 42, type: !3630, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !266, retainedNodes: !47)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{null, !3578}
!3632 = !DILocalVariable(name: "fp", arg: 1, scope: !3629, file: !267, line: 42, type: !3578)
!3633 = !DILocation(line: 42, column: 48, scope: !3629)
!3634 = !DILocation(line: 44, column: 7, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3629, file: !267, line: 44, column: 7)
!3636 = !DILocation(line: 44, column: 12, scope: !3635)
!3637 = !DILocation(line: 44, column: 19, scope: !3635)
!3638 = !DILocation(line: 44, column: 7, scope: !3629)
!3639 = !DILocation(line: 46, column: 13, scope: !3635)
!3640 = !DILocation(line: 46, column: 5, scope: !3635)
!3641 = !DILocation(line: 47, column: 1, scope: !3629)
!3642 = distinct !DISubprogram(name: "rpl_fseeko", scope: !269, file: !269, line: 28, type: !3643, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !47)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!44, !3645, !3679, !44}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2745, line: 7, baseType: !3647)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2747, line: 49, size: 1728, elements: !3648)
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3647, file: !2747, line: 51, baseType: !44, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3647, file: !2747, line: 54, baseType: !117, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3647, file: !2747, line: 55, baseType: !117, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3647, file: !2747, line: 56, baseType: !117, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3647, file: !2747, line: 57, baseType: !117, size: 64, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3647, file: !2747, line: 58, baseType: !117, size: 64, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3647, file: !2747, line: 59, baseType: !117, size: 64, offset: 384)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3647, file: !2747, line: 60, baseType: !117, size: 64, offset: 448)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3647, file: !2747, line: 61, baseType: !117, size: 64, offset: 512)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3647, file: !2747, line: 64, baseType: !117, size: 64, offset: 576)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3647, file: !2747, line: 65, baseType: !117, size: 64, offset: 640)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3647, file: !2747, line: 66, baseType: !117, size: 64, offset: 704)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3647, file: !2747, line: 68, baseType: !2762, size: 64, offset: 768)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3647, file: !2747, line: 70, baseType: !3663, size: 64, offset: 832)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3647, file: !2747, line: 72, baseType: !44, size: 32, offset: 896)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3647, file: !2747, line: 73, baseType: !44, size: 32, offset: 928)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3647, file: !2747, line: 74, baseType: !2769, size: 64, offset: 960)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3647, file: !2747, line: 77, baseType: !45, size: 16, offset: 1024)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3647, file: !2747, line: 78, baseType: !2772, size: 8, offset: 1040)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3647, file: !2747, line: 79, baseType: !2774, size: 8, offset: 1048)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3647, file: !2747, line: 81, baseType: !2778, size: 64, offset: 1088)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3647, file: !2747, line: 89, baseType: !2781, size: 64, offset: 1152)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3647, file: !2747, line: 91, baseType: !2783, size: 64, offset: 1216)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3647, file: !2747, line: 92, baseType: !2786, size: 64, offset: 1280)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3647, file: !2747, line: 93, baseType: !3663, size: 64, offset: 1344)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3647, file: !2747, line: 94, baseType: !43, size: 64, offset: 1408)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3647, file: !2747, line: 95, baseType: !141, size: 64, offset: 1472)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3647, file: !2747, line: 96, baseType: !44, size: 32, offset: 1536)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3647, file: !2747, line: 98, baseType: !2793, size: 160, offset: 1568)
!3679 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !73, line: 63, baseType: !2769)
!3680 = !DILocalVariable(name: "fp", arg: 1, scope: !3642, file: !269, line: 28, type: !3645)
!3681 = !DILocation(line: 28, column: 15, scope: !3642)
!3682 = !DILocalVariable(name: "offset", arg: 2, scope: !3642, file: !269, line: 28, type: !3679)
!3683 = !DILocation(line: 28, column: 25, scope: !3642)
!3684 = !DILocalVariable(name: "whence", arg: 3, scope: !3642, file: !269, line: 28, type: !44)
!3685 = !DILocation(line: 28, column: 37, scope: !3642)
!3686 = !DILocation(line: 55, column: 7, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3642, file: !269, line: 55, column: 7)
!3688 = !DILocation(line: 55, column: 12, scope: !3687)
!3689 = !DILocation(line: 55, column: 28, scope: !3687)
!3690 = !DILocation(line: 55, column: 33, scope: !3687)
!3691 = !DILocation(line: 55, column: 25, scope: !3687)
!3692 = !DILocation(line: 56, column: 7, scope: !3687)
!3693 = !DILocation(line: 56, column: 10, scope: !3687)
!3694 = !DILocation(line: 56, column: 15, scope: !3687)
!3695 = !DILocation(line: 56, column: 32, scope: !3687)
!3696 = !DILocation(line: 56, column: 37, scope: !3687)
!3697 = !DILocation(line: 56, column: 29, scope: !3687)
!3698 = !DILocation(line: 57, column: 7, scope: !3687)
!3699 = !DILocation(line: 57, column: 10, scope: !3687)
!3700 = !DILocation(line: 57, column: 15, scope: !3687)
!3701 = !DILocation(line: 57, column: 29, scope: !3687)
!3702 = !DILocation(line: 55, column: 7, scope: !3642)
!3703 = !DILocalVariable(name: "pos", scope: !3704, file: !269, line: 123, type: !3679)
!3704 = distinct !DILexicalBlock(scope: !3687, file: !269, line: 119, column: 5)
!3705 = !DILocation(line: 123, column: 13, scope: !3704)
!3706 = !DILocation(line: 123, column: 34, scope: !3704)
!3707 = !DILocation(line: 123, column: 26, scope: !3704)
!3708 = !DILocation(line: 123, column: 39, scope: !3704)
!3709 = !DILocation(line: 123, column: 47, scope: !3704)
!3710 = !DILocation(line: 123, column: 19, scope: !3704)
!3711 = !DILocation(line: 124, column: 11, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3704, file: !269, line: 124, column: 11)
!3713 = !DILocation(line: 124, column: 15, scope: !3712)
!3714 = !DILocation(line: 124, column: 11, scope: !3704)
!3715 = !DILocation(line: 130, column: 11, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3712, file: !269, line: 125, column: 9)
!3717 = !DILocation(line: 135, column: 7, scope: !3704)
!3718 = !DILocation(line: 135, column: 12, scope: !3704)
!3719 = !DILocation(line: 135, column: 19, scope: !3704)
!3720 = !DILocation(line: 136, column: 22, scope: !3704)
!3721 = !DILocation(line: 136, column: 7, scope: !3704)
!3722 = !DILocation(line: 136, column: 12, scope: !3704)
!3723 = !DILocation(line: 136, column: 20, scope: !3704)
!3724 = !DILocation(line: 167, column: 7, scope: !3704)
!3725 = !DILocation(line: 169, column: 18, scope: !3642)
!3726 = !DILocation(line: 169, column: 22, scope: !3642)
!3727 = !DILocation(line: 169, column: 30, scope: !3642)
!3728 = !DILocation(line: 169, column: 10, scope: !3642)
!3729 = !DILocation(line: 169, column: 3, scope: !3642)
!3730 = !DILocation(line: 170, column: 1, scope: !3642)
!3731 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !3732, file: !3732, line: 43, type: !3733, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !47)
!3732 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3733 = !DISubroutineType(types: !65)
!3734 = !DILocation(line: 45, column: 3, scope: !3731)
!3735 = !DILocation(line: 45, column: 9, scope: !3731)
!3736 = !DILocation(line: 46, column: 3, scope: !3731)
!3737 = distinct !DISubprogram(name: "imalloc", scope: !3732, file: !3732, line: 55, type: !3096, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !47)
!3738 = !DILocalVariable(name: "s", arg: 1, scope: !3737, file: !3732, line: 55, type: !253)
!3739 = !DILocation(line: 55, column: 16, scope: !3737)
!3740 = !DILocation(line: 57, column: 10, scope: !3737)
!3741 = !DILocation(line: 57, column: 12, scope: !3737)
!3742 = !DILocation(line: 57, column: 34, scope: !3737)
!3743 = !DILocation(line: 57, column: 26, scope: !3737)
!3744 = !DILocation(line: 57, column: 39, scope: !3737)
!3745 = !DILocation(line: 57, column: 3, scope: !3737)
!3746 = distinct !DISubprogram(name: "irealloc", scope: !3732, file: !3732, line: 66, type: !3124, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !47)
!3747 = !DILocalVariable(name: "p", arg: 1, scope: !3746, file: !3732, line: 66, type: !43)
!3748 = !DILocation(line: 66, column: 17, scope: !3746)
!3749 = !DILocalVariable(name: "s", arg: 2, scope: !3746, file: !3732, line: 66, type: !253)
!3750 = !DILocation(line: 66, column: 26, scope: !3746)
!3751 = !DILocation(line: 68, column: 10, scope: !3746)
!3752 = !DILocation(line: 68, column: 12, scope: !3746)
!3753 = !DILocation(line: 68, column: 35, scope: !3746)
!3754 = !DILocation(line: 68, column: 38, scope: !3746)
!3755 = !DILocation(line: 68, column: 26, scope: !3746)
!3756 = !DILocation(line: 68, column: 43, scope: !3746)
!3757 = !DILocation(line: 68, column: 3, scope: !3746)
!3758 = distinct !DISubprogram(name: "icalloc", scope: !3732, file: !3732, line: 77, type: !3162, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !47)
!3759 = !DILocalVariable(name: "n", arg: 1, scope: !3758, file: !3732, line: 77, type: !253)
!3760 = !DILocation(line: 77, column: 16, scope: !3758)
!3761 = !DILocalVariable(name: "s", arg: 2, scope: !3758, file: !3732, line: 77, type: !253)
!3762 = !DILocation(line: 77, column: 25, scope: !3758)
!3763 = !DILocation(line: 79, column: 18, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3758, file: !3732, line: 79, column: 7)
!3765 = !DILocation(line: 79, column: 16, scope: !3764)
!3766 = !DILocation(line: 79, column: 7, scope: !3758)
!3767 = !DILocation(line: 81, column: 11, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3769, file: !3732, line: 81, column: 11)
!3769 = distinct !DILexicalBlock(scope: !3764, file: !3732, line: 80, column: 5)
!3770 = !DILocation(line: 81, column: 13, scope: !3768)
!3771 = !DILocation(line: 81, column: 11, scope: !3769)
!3772 = !DILocation(line: 82, column: 16, scope: !3768)
!3773 = !DILocation(line: 82, column: 9, scope: !3768)
!3774 = !DILocation(line: 83, column: 9, scope: !3769)
!3775 = !DILocation(line: 84, column: 5, scope: !3769)
!3776 = !DILocation(line: 85, column: 18, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3758, file: !3732, line: 85, column: 7)
!3778 = !DILocation(line: 85, column: 16, scope: !3777)
!3779 = !DILocation(line: 85, column: 7, scope: !3758)
!3780 = !DILocation(line: 87, column: 11, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !3732, line: 87, column: 11)
!3782 = distinct !DILexicalBlock(scope: !3777, file: !3732, line: 86, column: 5)
!3783 = !DILocation(line: 87, column: 13, scope: !3781)
!3784 = !DILocation(line: 87, column: 11, scope: !3782)
!3785 = !DILocation(line: 88, column: 16, scope: !3781)
!3786 = !DILocation(line: 88, column: 9, scope: !3781)
!3787 = !DILocation(line: 89, column: 9, scope: !3782)
!3788 = !DILocation(line: 90, column: 5, scope: !3782)
!3789 = !DILocation(line: 91, column: 18, scope: !3758)
!3790 = !DILocation(line: 91, column: 21, scope: !3758)
!3791 = !DILocation(line: 91, column: 10, scope: !3758)
!3792 = !DILocation(line: 91, column: 3, scope: !3758)
!3793 = !DILocation(line: 92, column: 1, scope: !3758)
!3794 = distinct !DISubprogram(name: "ireallocarray", scope: !3732, file: !3732, line: 98, type: !3136, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !47)
!3795 = !DILocalVariable(name: "p", arg: 1, scope: !3794, file: !3732, line: 98, type: !43)
!3796 = !DILocation(line: 98, column: 22, scope: !3794)
!3797 = !DILocalVariable(name: "n", arg: 2, scope: !3794, file: !3732, line: 98, type: !253)
!3798 = !DILocation(line: 98, column: 31, scope: !3794)
!3799 = !DILocalVariable(name: "s", arg: 3, scope: !3794, file: !3732, line: 98, type: !253)
!3800 = !DILocation(line: 98, column: 40, scope: !3794)
!3801 = !DILocation(line: 100, column: 11, scope: !3794)
!3802 = !DILocation(line: 100, column: 13, scope: !3794)
!3803 = !DILocation(line: 100, column: 25, scope: !3794)
!3804 = !DILocation(line: 100, column: 28, scope: !3794)
!3805 = !DILocation(line: 100, column: 30, scope: !3794)
!3806 = !DILocation(line: 101, column: 27, scope: !3794)
!3807 = !DILocation(line: 101, column: 30, scope: !3794)
!3808 = !DILocation(line: 101, column: 33, scope: !3794)
!3809 = !DILocation(line: 101, column: 13, scope: !3794)
!3810 = !DILocation(line: 102, column: 13, scope: !3794)
!3811 = !DILocation(line: 100, column: 3, scope: !3794)
!3812 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !210, file: !210, line: 100, type: !3813, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !209, retainedNodes: !47)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!141, !3815, !6, !141, !3816}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!3817 = !DILocalVariable(name: "pwc", arg: 1, scope: !3812, file: !210, line: 100, type: !3815)
!3818 = !DILocation(line: 100, column: 21, scope: !3812)
!3819 = !DILocalVariable(name: "s", arg: 2, scope: !3812, file: !210, line: 100, type: !6)
!3820 = !DILocation(line: 100, column: 38, scope: !3812)
!3821 = !DILocalVariable(name: "n", arg: 3, scope: !3812, file: !210, line: 100, type: !141)
!3822 = !DILocation(line: 100, column: 48, scope: !3812)
!3823 = !DILocalVariable(name: "ps", arg: 4, scope: !3812, file: !210, line: 100, type: !3816)
!3824 = !DILocation(line: 100, column: 62, scope: !3812)
!3825 = !DILocation(line: 105, column: 7, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3812, file: !210, line: 105, column: 7)
!3827 = !DILocation(line: 105, column: 9, scope: !3826)
!3828 = !DILocation(line: 105, column: 7, scope: !3812)
!3829 = !DILocation(line: 107, column: 11, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3826, file: !210, line: 106, column: 5)
!3831 = !DILocation(line: 108, column: 9, scope: !3830)
!3832 = !DILocation(line: 109, column: 9, scope: !3830)
!3833 = !DILocation(line: 110, column: 5, scope: !3830)
!3834 = !DILocation(line: 117, column: 7, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3812, file: !210, line: 117, column: 7)
!3836 = !DILocation(line: 117, column: 10, scope: !3835)
!3837 = !DILocation(line: 117, column: 7, scope: !3812)
!3838 = !DILocation(line: 118, column: 8, scope: !3835)
!3839 = !DILocation(line: 118, column: 5, scope: !3835)
!3840 = !DILocalVariable(name: "ret", scope: !3812, file: !210, line: 130, type: !141)
!3841 = !DILocation(line: 130, column: 10, scope: !3812)
!3842 = !DILocation(line: 130, column: 26, scope: !3812)
!3843 = !DILocation(line: 130, column: 31, scope: !3812)
!3844 = !DILocation(line: 130, column: 34, scope: !3812)
!3845 = !DILocation(line: 130, column: 37, scope: !3812)
!3846 = !DILocation(line: 130, column: 16, scope: !3812)
!3847 = !DILocation(line: 135, column: 7, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3812, file: !210, line: 135, column: 7)
!3849 = !DILocation(line: 135, column: 11, scope: !3848)
!3850 = !DILocation(line: 135, column: 25, scope: !3848)
!3851 = !DILocation(line: 135, column: 39, scope: !3848)
!3852 = !DILocation(line: 135, column: 30, scope: !3848)
!3853 = !DILocation(line: 135, column: 7, scope: !3812)
!3854 = !DILocation(line: 137, column: 14, scope: !3848)
!3855 = !DILocation(line: 137, column: 5, scope: !3848)
!3856 = !DILocation(line: 138, column: 7, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3812, file: !210, line: 138, column: 7)
!3858 = !DILocation(line: 138, column: 11, scope: !3857)
!3859 = !DILocation(line: 138, column: 7, scope: !3812)
!3860 = !DILocation(line: 139, column: 5, scope: !3857)
!3861 = !DILocation(line: 143, column: 22, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3812, file: !210, line: 143, column: 7)
!3863 = !DILocation(line: 143, column: 19, scope: !3862)
!3864 = !DILocation(line: 143, column: 26, scope: !3862)
!3865 = !DILocation(line: 143, column: 29, scope: !3862)
!3866 = !DILocation(line: 143, column: 31, scope: !3862)
!3867 = !DILocation(line: 143, column: 36, scope: !3862)
!3868 = !DILocation(line: 143, column: 41, scope: !3862)
!3869 = !DILocation(line: 143, column: 7, scope: !3812)
!3870 = !DILocation(line: 145, column: 11, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !210, line: 145, column: 11)
!3872 = distinct !DILexicalBlock(scope: !3862, file: !210, line: 144, column: 5)
!3873 = !DILocation(line: 145, column: 15, scope: !3871)
!3874 = !DILocation(line: 145, column: 11, scope: !3872)
!3875 = !DILocation(line: 146, column: 33, scope: !3871)
!3876 = !DILocation(line: 146, column: 32, scope: !3871)
!3877 = !DILocation(line: 146, column: 16, scope: !3871)
!3878 = !DILocation(line: 146, column: 10, scope: !3871)
!3879 = !DILocation(line: 146, column: 14, scope: !3871)
!3880 = !DILocation(line: 146, column: 9, scope: !3871)
!3881 = !DILocation(line: 147, column: 7, scope: !3872)
!3882 = !DILocation(line: 151, column: 10, scope: !3812)
!3883 = !DILocation(line: 151, column: 3, scope: !3812)
!3884 = !DILocation(line: 286, column: 1, scope: !3812)
!3885 = distinct !DISubprogram(name: "mbszero", scope: !3886, file: !3886, line: 1135, type: !3887, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !272, retainedNodes: !47)
!3886 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !3889}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !3891)
!3891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !3892)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !3893)
!3893 = !{!3894, !3895}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3892, file: !217, line: 15, baseType: !44, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3892, file: !217, line: 20, baseType: !3896, size: 32, offset: 32)
!3896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3892, file: !217, line: 16, size: 32, elements: !3897)
!3897 = !{!3898, !3899}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3896, file: !217, line: 18, baseType: !14, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3896, file: !217, line: 19, baseType: !226, size: 32)
!3900 = !DILocalVariable(name: "ps", arg: 1, scope: !3885, file: !3886, line: 1135, type: !3889)
!3901 = !DILocation(line: 1135, column: 21, scope: !3885)
!3902 = !DILocation(line: 1137, column: 11, scope: !3885)
!3903 = !DILocation(line: 1137, column: 3, scope: !3885)
!3904 = !DILocation(line: 1138, column: 1, scope: !3885)
!3905 = distinct !DISubprogram(name: "memeq", scope: !2728, file: !2728, line: 974, type: !3906, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !47)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!60, !3347, !3347, !141}
!3908 = !DILocalVariable(name: "__s1", arg: 1, scope: !3905, file: !2728, line: 974, type: !3347)
!3909 = !DILocation(line: 974, column: 20, scope: !3905)
!3910 = !DILocalVariable(name: "__s2", arg: 2, scope: !3905, file: !2728, line: 974, type: !3347)
!3911 = !DILocation(line: 974, column: 38, scope: !3905)
!3912 = !DILocalVariable(name: "__n", arg: 3, scope: !3905, file: !2728, line: 974, type: !141)
!3913 = !DILocation(line: 974, column: 51, scope: !3905)
!3914 = !DILocation(line: 976, column: 19, scope: !3905)
!3915 = !DILocation(line: 976, column: 25, scope: !3905)
!3916 = !DILocation(line: 976, column: 31, scope: !3905)
!3917 = !DILocation(line: 976, column: 11, scope: !3905)
!3918 = !DILocation(line: 976, column: 10, scope: !3905)
!3919 = !DILocation(line: 976, column: 3, scope: !3905)
!3920 = distinct !DISubprogram(name: "rpl_realloc", scope: !3921, file: !3921, line: 2057, type: !3112, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !47)
!3921 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3922 = !DILocalVariable(name: "ptr", arg: 1, scope: !3920, file: !3921, line: 2057, type: !43)
!3923 = !DILocation(line: 2057, column: 20, scope: !3920)
!3924 = !DILocalVariable(name: "size", arg: 2, scope: !3920, file: !3921, line: 2057, type: !141)
!3925 = !DILocation(line: 2057, column: 32, scope: !3920)
!3926 = !DILocation(line: 2059, column: 19, scope: !3920)
!3927 = !DILocation(line: 2059, column: 24, scope: !3920)
!3928 = !DILocation(line: 2059, column: 31, scope: !3920)
!3929 = !DILocation(line: 2059, column: 10, scope: !3920)
!3930 = !DILocation(line: 2059, column: 3, scope: !3920)
!3931 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !279, file: !279, line: 27, type: !3049, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !278, retainedNodes: !47)
!3932 = !DILocalVariable(name: "ptr", arg: 1, scope: !3931, file: !279, line: 27, type: !43)
!3933 = !DILocation(line: 27, column: 21, scope: !3931)
!3934 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3931, file: !279, line: 27, type: !141)
!3935 = !DILocation(line: 27, column: 33, scope: !3931)
!3936 = !DILocalVariable(name: "size", arg: 3, scope: !3931, file: !279, line: 27, type: !141)
!3937 = !DILocation(line: 27, column: 47, scope: !3931)
!3938 = !DILocalVariable(name: "nbytes", scope: !3931, file: !279, line: 29, type: !141)
!3939 = !DILocation(line: 29, column: 10, scope: !3931)
!3940 = !DILocation(line: 30, column: 7, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3931, file: !279, line: 30, column: 7)
!3942 = !DILocation(line: 30, column: 7, scope: !3931)
!3943 = !DILocation(line: 32, column: 7, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3941, file: !279, line: 31, column: 5)
!3945 = !DILocation(line: 32, column: 13, scope: !3944)
!3946 = !DILocation(line: 33, column: 7, scope: !3944)
!3947 = !DILocation(line: 37, column: 19, scope: !3931)
!3948 = !DILocation(line: 37, column: 24, scope: !3931)
!3949 = !DILocation(line: 37, column: 10, scope: !3931)
!3950 = !DILocation(line: 37, column: 3, scope: !3931)
!3951 = !DILocation(line: 38, column: 1, scope: !3931)
!3952 = distinct !DISubprogram(name: "hard_locale", scope: !282, file: !282, line: 28, type: !3953, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !281, retainedNodes: !47)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!60, !44}
!3955 = !DILocalVariable(name: "category", arg: 1, scope: !3952, file: !282, line: 28, type: !44)
!3956 = !DILocation(line: 28, column: 18, scope: !3952)
!3957 = !DILocalVariable(name: "locale", scope: !3952, file: !282, line: 30, type: !3958)
!3958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3959)
!3959 = !{!3960}
!3960 = !DISubrange(count: 257)
!3961 = !DILocation(line: 30, column: 8, scope: !3952)
!3962 = !DILocation(line: 32, column: 25, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3952, file: !282, line: 32, column: 7)
!3964 = !DILocation(line: 32, column: 35, scope: !3963)
!3965 = !DILocation(line: 32, column: 7, scope: !3963)
!3966 = !DILocation(line: 32, column: 7, scope: !3952)
!3967 = !DILocation(line: 33, column: 5, scope: !3963)
!3968 = !DILocation(line: 35, column: 16, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3952, file: !282, line: 35, column: 7)
!3970 = !DILocation(line: 35, column: 9, scope: !3969)
!3971 = !DILocation(line: 35, column: 29, scope: !3969)
!3972 = !DILocation(line: 35, column: 39, scope: !3969)
!3973 = !DILocation(line: 35, column: 32, scope: !3969)
!3974 = !DILocation(line: 35, column: 7, scope: !3952)
!3975 = !DILocation(line: 36, column: 5, scope: !3969)
!3976 = !DILocation(line: 46, column: 3, scope: !3952)
!3977 = !DILocation(line: 47, column: 1, scope: !3952)
!3978 = distinct !DISubprogram(name: "setlocale_null_r", scope: !284, file: !284, line: 154, type: !3979, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !47)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!44, !44, !117, !141}
!3981 = !DILocalVariable(name: "category", arg: 1, scope: !3978, file: !284, line: 154, type: !44)
!3982 = !DILocation(line: 154, column: 23, scope: !3978)
!3983 = !DILocalVariable(name: "buf", arg: 2, scope: !3978, file: !284, line: 154, type: !117)
!3984 = !DILocation(line: 154, column: 39, scope: !3978)
!3985 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3978, file: !284, line: 154, type: !141)
!3986 = !DILocation(line: 154, column: 51, scope: !3978)
!3987 = !DILocation(line: 159, column: 37, scope: !3978)
!3988 = !DILocation(line: 159, column: 47, scope: !3978)
!3989 = !DILocation(line: 159, column: 52, scope: !3978)
!3990 = !DILocation(line: 159, column: 10, scope: !3978)
!3991 = !DILocation(line: 159, column: 3, scope: !3978)
!3992 = distinct !DISubprogram(name: "setlocale_null", scope: !284, file: !284, line: 186, type: !3993, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !47)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!6, !44}
!3995 = !DILocalVariable(name: "category", arg: 1, scope: !3992, file: !284, line: 186, type: !44)
!3996 = !DILocation(line: 186, column: 21, scope: !3992)
!3997 = !DILocation(line: 189, column: 35, scope: !3992)
!3998 = !DILocation(line: 189, column: 10, scope: !3992)
!3999 = !DILocation(line: 189, column: 3, scope: !3992)
!4000 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !286, file: !286, line: 35, type: !3993, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !285, retainedNodes: !47)
!4001 = !DILocalVariable(name: "category", arg: 1, scope: !4000, file: !286, line: 35, type: !44)
!4002 = !DILocation(line: 35, column: 30, scope: !4000)
!4003 = !DILocalVariable(name: "result", scope: !4000, file: !286, line: 37, type: !6)
!4004 = !DILocation(line: 37, column: 15, scope: !4000)
!4005 = !DILocation(line: 37, column: 35, scope: !4000)
!4006 = !DILocation(line: 37, column: 24, scope: !4000)
!4007 = !DILocation(line: 62, column: 10, scope: !4000)
!4008 = !DILocation(line: 62, column: 3, scope: !4000)
!4009 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !286, file: !286, line: 66, type: !3979, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !285, retainedNodes: !47)
!4010 = !DILocalVariable(name: "category", arg: 1, scope: !4009, file: !286, line: 66, type: !44)
!4011 = !DILocation(line: 66, column: 32, scope: !4009)
!4012 = !DILocalVariable(name: "buf", arg: 2, scope: !4009, file: !286, line: 66, type: !117)
!4013 = !DILocation(line: 66, column: 48, scope: !4009)
!4014 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4009, file: !286, line: 66, type: !141)
!4015 = !DILocation(line: 66, column: 60, scope: !4009)
!4016 = !DILocalVariable(name: "result", scope: !4009, file: !286, line: 111, type: !6)
!4017 = !DILocation(line: 111, column: 15, scope: !4009)
!4018 = !DILocation(line: 111, column: 49, scope: !4009)
!4019 = !DILocation(line: 111, column: 24, scope: !4009)
!4020 = !DILocation(line: 113, column: 7, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4009, file: !286, line: 113, column: 7)
!4022 = !DILocation(line: 113, column: 14, scope: !4021)
!4023 = !DILocation(line: 113, column: 7, scope: !4009)
!4024 = !DILocation(line: 116, column: 11, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4026, file: !286, line: 116, column: 11)
!4026 = distinct !DILexicalBlock(scope: !4021, file: !286, line: 114, column: 5)
!4027 = !DILocation(line: 116, column: 19, scope: !4025)
!4028 = !DILocation(line: 116, column: 11, scope: !4026)
!4029 = !DILocation(line: 120, column: 9, scope: !4025)
!4030 = !DILocation(line: 120, column: 16, scope: !4025)
!4031 = !DILocation(line: 121, column: 7, scope: !4026)
!4032 = !DILocalVariable(name: "length", scope: !4033, file: !286, line: 125, type: !141)
!4033 = distinct !DILexicalBlock(scope: !4021, file: !286, line: 124, column: 5)
!4034 = !DILocation(line: 125, column: 14, scope: !4033)
!4035 = !DILocation(line: 125, column: 31, scope: !4033)
!4036 = !DILocation(line: 125, column: 23, scope: !4033)
!4037 = !DILocation(line: 126, column: 11, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4033, file: !286, line: 126, column: 11)
!4039 = !DILocation(line: 126, column: 20, scope: !4038)
!4040 = !DILocation(line: 126, column: 18, scope: !4038)
!4041 = !DILocation(line: 126, column: 11, scope: !4033)
!4042 = !DILocation(line: 128, column: 19, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4038, file: !286, line: 127, column: 9)
!4044 = !DILocation(line: 128, column: 24, scope: !4043)
!4045 = !DILocation(line: 128, column: 32, scope: !4043)
!4046 = !DILocation(line: 128, column: 39, scope: !4043)
!4047 = !DILocation(line: 128, column: 11, scope: !4043)
!4048 = !DILocation(line: 129, column: 11, scope: !4043)
!4049 = !DILocation(line: 133, column: 15, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !286, line: 133, column: 15)
!4051 = distinct !DILexicalBlock(scope: !4038, file: !286, line: 132, column: 9)
!4052 = !DILocation(line: 133, column: 23, scope: !4050)
!4053 = !DILocation(line: 133, column: 15, scope: !4051)
!4054 = !DILocation(line: 138, column: 23, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4050, file: !286, line: 134, column: 13)
!4056 = !DILocation(line: 138, column: 28, scope: !4055)
!4057 = !DILocation(line: 138, column: 36, scope: !4055)
!4058 = !DILocation(line: 138, column: 44, scope: !4055)
!4059 = !DILocation(line: 138, column: 15, scope: !4055)
!4060 = !DILocation(line: 139, column: 15, scope: !4055)
!4061 = !DILocation(line: 139, column: 19, scope: !4055)
!4062 = !DILocation(line: 139, column: 27, scope: !4055)
!4063 = !DILocation(line: 139, column: 32, scope: !4055)
!4064 = !DILocation(line: 140, column: 13, scope: !4055)
!4065 = !DILocation(line: 141, column: 11, scope: !4051)
!4066 = !DILocation(line: 145, column: 1, scope: !4009)
