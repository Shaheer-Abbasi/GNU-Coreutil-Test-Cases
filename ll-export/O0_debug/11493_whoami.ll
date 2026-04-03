; ModuleID = 'src/whoami.bc'
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
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Print the user name associated with the current effective user ID.\0ASame as id -un.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"whoami\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"cannot find name for user ID %ju\00", align 1
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
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), align 8, !dbg !39
@file_name = internal global i8* null, align 8, !dbg !44
@ignore_EPIPE = internal global i8 0, align 1, !dbg !49
@.str.51 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.52 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.53 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.54 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !52
@stderr = external global %struct._IO_FILE*, align 8
@.str.55 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !81
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !58
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !77
@.str.1.61 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.62 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.63 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !79
@.str.4.56 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.57 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.58 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external global i32, align 4
@.str.68 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.69, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.70, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !86
@optind = external global i32, align 4
@.str.1.73 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.69 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.70 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !103
@.str.78 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.79 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !110
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
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.85, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.87, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.91, i32 0, i32 0), i8* null], align 8, !dbg !121
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !149
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !167
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !182
@nslots = internal global i32 1, align 4, !dbg !189
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !169
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !191
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !155
@.str.10.92 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.93 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.95 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !174
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !197
@exit_failure = dso_local global i32 1, align 4, !dbg !205
@.str.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.140 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.163 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !211
@.str.174 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.175 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !303 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !306, metadata !DIExpression()), !dbg !307
  %3 = load i32, i32* %2, align 4, !dbg !308
  %4 = icmp ne i32 %3, 0, !dbg !310
  br i1 %4, label %5, label %12, !dbg !311

5:                                                ; preds = %1
  br label %6, !dbg !312

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !313
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !313
  %9 = load i8*, i8** @program_name, align 8, !dbg !313
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !313
  br label %11, !dbg !313

11:                                               ; preds = %6
  br label %21, !dbg !313

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !315
  %14 = load i8*, i8** @program_name, align 8, !dbg !317
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !318
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !319
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !319
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !319
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !320
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !320
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !321
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !321
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !322
  br label %21

21:                                               ; preds = %12, %11
  %22 = load i32, i32* %2, align 4, !dbg !323
  call void @exit(i32 noundef %22) #19, !dbg !324
  unreachable, !dbg !324
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !325, metadata !DIExpression()), !dbg !326
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !327, metadata !DIExpression()), !dbg !328
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !329
  %15 = icmp eq i32 %14, -1, !dbg !331
  br i1 %15, label %16, label %30, !dbg !332

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !333, metadata !DIExpression()), !dbg !335
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !336
  store i8* %17, i8** %5, align 8, !dbg !335
  %18 = load i8*, i8** %5, align 8, !dbg !337
  %19 = icmp ne i8* %18, null, !dbg !337
  br i1 %19, label %20, label %27, !dbg !338

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !339
  %22 = load i8, i8* %21, align 1, !dbg !340
  %23 = icmp ne i8 %22, 0, !dbg !340
  br i1 %23, label %24, label %27, !dbg !341

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !342
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)), !dbg !343
  br label %27, !dbg !341

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !341
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !344
  br label %30, !dbg !345

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !346
  %32 = icmp ne i32 %31, 0, !dbg !346
  br i1 %32, label %33, label %37, !dbg !348

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !349
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !349
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !349
  br label %274, !dbg !351

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !352, metadata !DIExpression()), !dbg !353
  store i8 1, i8* %6, align 1, !dbg !353
  call void @llvm.dbg.declare(metadata i8** %7, metadata !354, metadata !DIExpression()), !dbg !355
  %38 = load i8*, i8** %4, align 8, !dbg !356
  %39 = load i8*, i8** %4, align 8, !dbg !357
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #20, !dbg !358
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !359
  store i8* %41, i8** %7, align 8, !dbg !355
  call void @llvm.dbg.declare(metadata i8** %8, metadata !360, metadata !DIExpression()), !dbg !361
  %42 = load i8*, i8** %4, align 8, !dbg !362
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !363
  store i8* %43, i8** %8, align 8, !dbg !361
  %44 = load i8*, i8** %8, align 8, !dbg !364
  %45 = icmp ne i8* %44, null, !dbg !364
  br i1 %45, label %48, label %46, !dbg !366

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !367
  store i8* %47, i8** %8, align 8, !dbg !369
  store i8 0, i8* %6, align 1, !dbg !370
  br label %89, !dbg !371

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !372
  %50 = load i8*, i8** %7, align 8, !dbg !374
  %51 = icmp ne i8* %49, %50, !dbg !375
  br i1 %51, label %52, label %88, !dbg !376

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !377, metadata !DIExpression()), !dbg !379
  %53 = load i8*, i8** %7, align 8, !dbg !380
  store i8* %53, i8** %9, align 8, !dbg !379
  call void @llvm.dbg.declare(metadata i64* %10, metadata !381, metadata !DIExpression()), !dbg !382
  store i64 0, i64* %10, align 8, !dbg !382
  br label %54, !dbg !383

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !384
  %56 = load i8*, i8** %8, align 8, !dbg !385
  %57 = icmp ult i8* %55, %56, !dbg !386
  br i1 %57, label %58, label %61, !dbg !387

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !388
  %60 = icmp ult i64 %59, 2, !dbg !389
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !390
  br i1 %62, label %63, label %82, !dbg !383

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !391
  %65 = load i16*, i16** %64, align 8, !dbg !391
  %66 = load i8*, i8** %9, align 8, !dbg !391
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !391
  store i8* %67, i8** %9, align 8, !dbg !391
  %68 = load i8, i8* %66, align 1, !dbg !391
  %69 = zext i8 %68 to i32, !dbg !391
  %70 = sext i32 %69 to i64, !dbg !391
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !391
  %72 = load i16, i16* %71, align 2, !dbg !391
  %73 = zext i16 %72 to i32, !dbg !391
  %74 = and i32 %73, 8192, !dbg !391
  %75 = icmp ne i32 %74, 0, !dbg !392
  %76 = xor i1 %75, true, !dbg !392
  %77 = xor i1 %76, true, !dbg !393
  %78 = zext i1 %77 to i32, !dbg !393
  %79 = sext i32 %78 to i64, !dbg !393
  %80 = load i64, i64* %10, align 8, !dbg !394
  %81 = add i64 %80, %79, !dbg !394
  store i64 %81, i64* %10, align 8, !dbg !394
  br label %54, !dbg !383, !llvm.loop !395

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !397
  %84 = icmp eq i64 %83, 2, !dbg !399
  br i1 %84, label %85, label %87, !dbg !400

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !401
  store i8* %86, i8** %8, align 8, !dbg !403
  store i8 0, i8* %6, align 1, !dbg !404
  br label %87, !dbg !405

87:                                               ; preds = %85, %82
  br label %88, !dbg !406

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !407, metadata !DIExpression()), !dbg !408
  %90 = load i8*, i8** %8, align 8, !dbg !409
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #20, !dbg !410
  store i64 %91, i64* %11, align 8, !dbg !408
  call void @llvm.dbg.declare(metadata i8** %12, metadata !411, metadata !DIExpression()), !dbg !412
  %92 = load i8*, i8** %8, align 8, !dbg !413
  %93 = load i64, i64* %11, align 8, !dbg !414
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !415
  store i8* %94, i8** %12, align 8, !dbg !412
  br label %95, !dbg !416

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !417
  %97 = load i8, i8* %96, align 1, !dbg !418
  %98 = zext i8 %97 to i32, !dbg !418
  %99 = icmp ne i32 %98, 0, !dbg !418
  br i1 %99, label %100, label %105, !dbg !419

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !420
  %102 = load i8, i8* %101, align 1, !dbg !421
  %103 = zext i8 %102 to i32, !dbg !421
  %104 = icmp ne i32 %103, 10, !dbg !422
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !423
  br i1 %106, label %107, label %164, !dbg !416

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !424
  %109 = load i8, i8* %108, align 1, !dbg !427
  %110 = zext i8 %109 to i32, !dbg !427
  %111 = icmp eq i32 %110, 45, !dbg !428
  br i1 %111, label %112, label %119, !dbg !429

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !430
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !431
  %115 = load i8, i8* %114, align 1, !dbg !432
  %116 = zext i8 %115 to i32, !dbg !432
  %117 = icmp eq i32 %116, 45, !dbg !433
  br i1 %117, label %118, label %119, !dbg !434

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !435
  br label %119, !dbg !436

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !437
  %121 = load i16*, i16** %120, align 8, !dbg !437
  %122 = load i8*, i8** %12, align 8, !dbg !437
  %123 = load i8, i8* %122, align 1, !dbg !437
  %124 = zext i8 %123 to i32, !dbg !437
  %125 = sext i32 %124 to i64, !dbg !437
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !437
  %127 = load i16, i16* %126, align 2, !dbg !437
  %128 = zext i16 %127 to i32, !dbg !437
  %129 = and i32 %128, 8192, !dbg !437
  %130 = icmp ne i32 %129, 0, !dbg !437
  br i1 %130, label %131, label %161, !dbg !439

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !440
  %133 = load i8, i8* %132, align 1, !dbg !443
  %134 = zext i8 %133 to i32, !dbg !443
  %135 = icmp eq i32 %134, 9, !dbg !444
  br i1 %135, label %149, label %136, !dbg !445

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !446
  %138 = load i16*, i16** %137, align 8, !dbg !446
  %139 = load i8*, i8** %12, align 8, !dbg !446
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !446
  %141 = load i8, i8* %140, align 1, !dbg !446
  %142 = zext i8 %141 to i32, !dbg !446
  %143 = sext i32 %142 to i64, !dbg !446
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !446
  %145 = load i16, i16* %144, align 2, !dbg !446
  %146 = zext i16 %145 to i32, !dbg !446
  %147 = and i32 %146, 8192, !dbg !446
  %148 = icmp ne i32 %147, 0, !dbg !446
  br i1 %148, label %149, label %150, !dbg !447

149:                                              ; preds = %136, %131
  br label %164, !dbg !448

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !449
  %152 = trunc i8 %151 to i1, !dbg !449
  br i1 %152, label %160, label %153, !dbg !451

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !452
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !453
  %156 = load i8, i8* %155, align 1, !dbg !454
  %157 = zext i8 %156 to i32, !dbg !454
  %158 = icmp ne i32 %157, 45, !dbg !455
  br i1 %158, label %159, label %160, !dbg !456

159:                                              ; preds = %153
  br label %164, !dbg !457

160:                                              ; preds = %153, %150
  br label %161, !dbg !458

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !459
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !459
  store i8* %163, i8** %12, align 8, !dbg !459
  br label %95, !dbg !416, !llvm.loop !460

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !462
  %166 = load i8*, i8** %7, align 8, !dbg !462
  %167 = load i8*, i8** %4, align 8, !dbg !462
  %168 = ptrtoint i8* %166 to i64, !dbg !462
  %169 = ptrtoint i8* %167 to i64, !dbg !462
  %170 = sub i64 %168, %169, !dbg !462
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !462
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !462
  call void @llvm.dbg.declare(metadata i8** %13, metadata !463, metadata !DIExpression()), !dbg !464
  %173 = load i8*, i8** %3, align 8, !dbg !465
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)), !dbg !466
  br i1 %174, label %175, label %176, !dbg !466

175:                                              ; preds = %164
  br label %232, !dbg !466

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !467
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)), !dbg !468
  br i1 %178, label %179, label %180, !dbg !468

179:                                              ; preds = %176
  br label %230, !dbg !468

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !469
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)), !dbg !470
  br i1 %182, label %183, label %184, !dbg !470

183:                                              ; preds = %180
  br label %228, !dbg !470

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !471
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)), !dbg !472
  br i1 %186, label %187, label %188, !dbg !472

187:                                              ; preds = %184
  br label %226, !dbg !472

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !473
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0)), !dbg !474
  br i1 %190, label %191, label %192, !dbg !474

191:                                              ; preds = %188
  br label %224, !dbg !474

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !475
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0)), !dbg !476
  br i1 %194, label %195, label %196, !dbg !476

195:                                              ; preds = %192
  br label %222, !dbg !476

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !477
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)), !dbg !478
  br i1 %198, label %199, label %200, !dbg !478

199:                                              ; preds = %196
  br label %220, !dbg !478

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !479
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0)), !dbg !480
  br i1 %202, label %203, label %204, !dbg !480

203:                                              ; preds = %200
  br label %218, !dbg !480

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !481
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)), !dbg !482
  br i1 %206, label %207, label %208, !dbg !482

207:                                              ; preds = %204
  br label %216, !dbg !482

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !483
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)), !dbg !484
  br i1 %210, label %211, label %212, !dbg !484

211:                                              ; preds = %208
  br label %214, !dbg !484

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !485
  br label %214, !dbg !484

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !484
  br label %216, !dbg !482

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !482
  br label %218, !dbg !480

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !480
  br label %220, !dbg !478

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !478
  br label %222, !dbg !476

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !476
  br label %224, !dbg !474

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !474
  br label %226, !dbg !472

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !472
  br label %228, !dbg !470

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !470
  br label %230, !dbg !468

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !468
  br label %232, !dbg !466

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !466
  store i8* %233, i8** %13, align 8, !dbg !464
  %234 = load i8*, i8** %8, align 8, !dbg !486
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i64 noundef 6) #20, !dbg !486
  %236 = icmp eq i32 %235, 0, !dbg !486
  br i1 %236, label %241, label %237, !dbg !488

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !489
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i64 noundef 9) #20, !dbg !489
  %240 = icmp eq i32 %239, 0, !dbg !489
  br i1 %240, label %241, label %248, !dbg !490

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !491
  %243 = load i8*, i8** %13, align 8, !dbg !493
  %244 = load i64, i64* %11, align 8, !dbg !494
  %245 = trunc i64 %244 to i32, !dbg !495
  %246 = load i8*, i8** %8, align 8, !dbg !496
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !497
  br label %254, !dbg !498

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !499
  %250 = load i64, i64* %11, align 8, !dbg !501
  %251 = trunc i64 %250 to i32, !dbg !502
  %252 = load i8*, i8** %8, align 8, !dbg !503
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !504
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !505
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !505
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !506
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !506
  %259 = load i8*, i8** %7, align 8, !dbg !507
  %260 = load i8*, i8** %12, align 8, !dbg !507
  %261 = load i8*, i8** %7, align 8, !dbg !507
  %262 = ptrtoint i8* %260 to i64, !dbg !507
  %263 = ptrtoint i8* %261 to i64, !dbg !507
  %264 = sub i64 %262, %263, !dbg !507
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !507
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !507
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !508
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !508
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !509
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !509
  %271 = load i8*, i8** %12, align 8, !dbg !510
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !510
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !510
  br label %274, !dbg !511

274:                                              ; preds = %254, %33
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !512 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !515, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !517, metadata !DIExpression()), !dbg !526
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !526
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !526
  call void @llvm.dbg.declare(metadata i8** %4, metadata !527, metadata !DIExpression()), !dbg !528
  %9 = load i8*, i8** %2, align 8, !dbg !529
  store i8* %9, i8** %4, align 8, !dbg !528
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !530, metadata !DIExpression()), !dbg !532
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !533
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !532
  br label %11, !dbg !534

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !535
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !536
  %14 = load i8*, i8** %13, align 8, !dbg !536
  %15 = icmp ne i8* %14, null, !dbg !535
  br i1 %15, label %16, label %23, !dbg !537

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !538
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !539
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !540
  %20 = load i8*, i8** %19, align 8, !dbg !540
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !541
  %22 = xor i1 %21, true, !dbg !542
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !543
  br i1 %24, label %25, label %28, !dbg !534

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !544
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !544
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !544
  br label %11, !dbg !534, !llvm.loop !545

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !546
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !548
  %31 = load i8*, i8** %30, align 8, !dbg !548
  %32 = icmp ne i8* %31, null, !dbg !546
  br i1 %32, label %33, label %37, !dbg !549

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !550
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !551
  %36 = load i8*, i8** %35, align 8, !dbg !551
  store i8* %36, i8** %4, align 8, !dbg !552
  br label %37, !dbg !553

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !554
  call void @llvm.dbg.declare(metadata i8** %6, metadata !555, metadata !DIExpression()), !dbg !556
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !557
  store i8* %38, i8** %6, align 8, !dbg !556
  %39 = load i8*, i8** %6, align 8, !dbg !558
  %40 = icmp ne i8* %39, null, !dbg !558
  br i1 %40, label %41, label %49, !dbg !560

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !561
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i64 noundef 3) #20, !dbg !561
  %44 = icmp ne i32 %43, 0, !dbg !561
  br i1 %44, label %45, label %49, !dbg !562

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.44, i64 0, i64 0)) #18, !dbg !563
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !563
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !563
  br label %49, !dbg !565

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !566, metadata !DIExpression()), !dbg !567
  %50 = load i8*, i8** %2, align 8, !dbg !568
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)), !dbg !569
  br i1 %51, label %52, label %53, !dbg !569

52:                                               ; preds = %49
  br label %55, !dbg !569

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !570
  br label %55, !dbg !569

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !569
  store i8* %56, i8** %7, align 8, !dbg !567
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0)) #18, !dbg !571
  %58 = load i8*, i8** %7, align 8, !dbg !572
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef %58), !dbg !573
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0)) #18, !dbg !574
  %61 = load i8*, i8** %4, align 8, !dbg !575
  %62 = load i8*, i8** %4, align 8, !dbg !576
  %63 = load i8*, i8** %2, align 8, !dbg !577
  %64 = icmp eq i8* %62, %63, !dbg !578
  %65 = zext i1 %64 to i64, !dbg !576
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !576
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !579
  ret void, !dbg !580
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !581 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.passwd*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !585, metadata !DIExpression()), !dbg !586
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !587, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.declare(metadata i32* %6, metadata !589, metadata !DIExpression()), !dbg !593
  store i32 -1, i32* %6, align 4, !dbg !593
  %9 = load i8**, i8*** %5, align 8, !dbg !594
  %10 = getelementptr inbounds i8*, i8** %9, i64 0, !dbg !594
  %11 = load i8*, i8** %10, align 8, !dbg !594
  call void @set_program_name(i8* noundef %11), !dbg !595
  %12 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !596
  %13 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !597
  %14 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !598
  %15 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !599
  %16 = load i32, i32* %4, align 4, !dbg !600
  %17 = load i8**, i8*** %5, align 8, !dbg !601
  %18 = load i8*, i8** @Version, align 8, !dbg !602
  %19 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0)), !dbg !603
  call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %16, i8** noundef %17, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %18, i1 noundef true, void (i32)* noundef @usage, i8* noundef %19, i8* noundef null), !dbg !604
  %20 = load i32, i32* @optind, align 4, !dbg !605
  %21 = load i32, i32* %4, align 4, !dbg !607
  %22 = icmp ne i32 %20, %21, !dbg !608
  br i1 %22, label %23, label %31, !dbg !609

23:                                               ; preds = %2
  %24 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !610
  %25 = load i8**, i8*** %5, align 8, !dbg !610
  %26 = load i32, i32* @optind, align 4, !dbg !610
  %27 = sext i32 %26 to i64, !dbg !610
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27, !dbg !610
  %29 = load i8*, i8** %28, align 8, !dbg !610
  %30 = call i8* @quote(i8* noundef %29), !dbg !610
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %24, i8* noundef %30), !dbg !610
  call void @usage(i32 noundef 1) #22, !dbg !612
  unreachable, !dbg !612

31:                                               ; preds = %2
  %32 = call i32* @__errno_location() #21, !dbg !613
  store i32 0, i32* %32, align 4, !dbg !614
  call void @llvm.dbg.declare(metadata i32* %7, metadata !615, metadata !DIExpression()), !dbg !616
  %33 = call i32 @geteuid() #18, !dbg !617
  store i32 %33, i32* %7, align 4, !dbg !616
  call void @llvm.dbg.declare(metadata %struct.passwd** %8, metadata !618, metadata !DIExpression()), !dbg !631
  %34 = load i32, i32* %7, align 4, !dbg !632
  %35 = load i32, i32* %6, align 4, !dbg !633
  %36 = icmp eq i32 %34, %35, !dbg !634
  br i1 %36, label %37, label %42, !dbg !635

37:                                               ; preds = %31
  %38 = call i32* @__errno_location() #21, !dbg !636
  %39 = load i32, i32* %38, align 4, !dbg !636
  %40 = icmp ne i32 %39, 0, !dbg !636
  br i1 %40, label %41, label %42, !dbg !632

41:                                               ; preds = %37
  br label %45, !dbg !632

42:                                               ; preds = %37, %31
  %43 = load i32, i32* %7, align 4, !dbg !637
  %44 = call %struct.passwd* @getpwuid(i32 noundef %43), !dbg !638
  br label %45, !dbg !632

45:                                               ; preds = %42, %41
  %46 = phi %struct.passwd* [ null, %41 ], [ %44, %42 ], !dbg !632
  store %struct.passwd* %46, %struct.passwd** %8, align 8, !dbg !631
  %47 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !639
  %48 = icmp ne %struct.passwd* %47, null, !dbg !639
  br i1 %48, label %55, label %49, !dbg !641

49:                                               ; preds = %45
  %50 = call i32* @__errno_location() #21, !dbg !642
  %51 = load i32, i32* %50, align 4, !dbg !642
  %52 = call i8* @gettext(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !642
  %53 = load i32, i32* %7, align 4, !dbg !642
  %54 = zext i32 %53 to i64, !dbg !642
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %51, i8* noundef %52, i64 noundef %54), !dbg !642
  unreachable, !dbg !642

55:                                               ; preds = %45
  %56 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !643
  %57 = getelementptr inbounds %struct.passwd, %struct.passwd* %56, i32 0, i32 0, !dbg !644
  %58 = load i8*, i8** %57, align 8, !dbg !644
  %59 = call i32 @puts(i8* noundef %58), !dbg !645
  ret i32 0, !dbg !646
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i32 @geteuid() #2

declare %struct.passwd* @getpwuid(i32 noundef) #3

declare i32 @puts(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !647 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !648, metadata !DIExpression()), !dbg !649
  %3 = load i8*, i8** %2, align 8, !dbg !650
  store i8* %3, i8** @file_name, align 8, !dbg !651
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !653 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !656, metadata !DIExpression()), !dbg !657
  %4 = load i8, i8* %2, align 1, !dbg !658
  %5 = trunc i8 %4 to i1, !dbg !658
  %6 = zext i1 %5 to i8, !dbg !659
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !659
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !661 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !664
  %4 = icmp ne i32 %3, 0, !dbg !665
  br i1 %4, label %5, label %28, !dbg !666

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !667
  %7 = trunc i8 %6 to i1, !dbg !667
  br i1 %7, label %8, label %12, !dbg !668

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !669
  %10 = load i32, i32* %9, align 4, !dbg !669
  %11 = icmp eq i32 %10, 32, !dbg !670
  br i1 %11, label %28, label %12, !dbg !671

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !672, metadata !DIExpression()), !dbg !674
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.52, i64 0, i64 0)) #18, !dbg !675
  store i8* %13, i8** %1, align 8, !dbg !674
  %14 = load i8*, i8** @file_name, align 8, !dbg !676
  %15 = icmp ne i8* %14, null, !dbg !676
  br i1 %15, label %16, label %22, !dbg !678

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !679
  %18 = load i32, i32* %17, align 4, !dbg !679
  %19 = load i8*, i8** @file_name, align 8, !dbg !679
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !679
  %21 = load i8*, i8** %1, align 8, !dbg !679
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.53, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !679
  br label %26, !dbg !679

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !680
  %24 = load i32, i32* %23, align 4, !dbg !680
  %25 = load i8*, i8** %1, align 8, !dbg !680
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.54, i64 0, i64 0), i8* noundef %25), !dbg !680
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !681
  call void @_exit(i32 noundef %27) #22, !dbg !682
  unreachable, !dbg !682

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !683
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !685
  %31 = icmp ne i32 %30, 0, !dbg !686
  br i1 %31, label %32, label %34, !dbg !687

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !688
  call void @_exit(i32 noundef %33) #22, !dbg !689
  unreachable, !dbg !689

34:                                               ; preds = %28
  ret void, !dbg !690
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !691 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !694, metadata !DIExpression()), !dbg !695
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !696, metadata !DIExpression()), !dbg !695
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !697, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !698, metadata !DIExpression()), !dbg !695
  call void @flush_stdout(), !dbg !699
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !700
  %10 = icmp ne void ()* %9, null, !dbg !700
  br i1 %10, label %11, label %13, !dbg !702

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !703
  call void %12(), !dbg !704
  br label %17, !dbg !704

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !705
  %15 = call i8* @getprogname() #20, !dbg !707
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* noundef %15), !dbg !708
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !709
  %19 = load i32, i32* %6, align 4, !dbg !709
  %20 = load i8*, i8** %7, align 8, !dbg !709
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !709
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !709
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !709
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !709
  ret void, !dbg !710
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !711 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !712, metadata !DIExpression()), !dbg !713
  store i32 1, i32* %1, align 4, !dbg !714
  %2 = load i32, i32* %1, align 4, !dbg !715
  %3 = icmp sle i32 0, %2, !dbg !717
  br i1 %3, label %4, label %11, !dbg !718

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !719
  %6 = call i32 @is_open(i32 noundef %5), !dbg !720
  %7 = icmp ne i32 %6, 0, !dbg !720
  br i1 %7, label %8, label %11, !dbg !721

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !722
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !722
  br label %11, !dbg !722

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !723
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !724 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !725, metadata !DIExpression()), !dbg !726
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !727, metadata !DIExpression()), !dbg !726
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !728, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !729, metadata !DIExpression()), !dbg !726
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !730
  %10 = load i8*, i8** %7, align 8, !dbg !731
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !732
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !732
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !732
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !732
  %14 = load i32, i32* @error_message_count, align 4, !dbg !733
  %15 = add i32 %14, 1, !dbg !733
  store i32 %15, i32* @error_message_count, align 4, !dbg !733
  %16 = load i32, i32* %6, align 4, !dbg !734
  %17 = icmp ne i32 %16, 0, !dbg !734
  br i1 %17, label %18, label %20, !dbg !736

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !737
  call void @print_errno_message(i32 noundef %19), !dbg !738
  br label %20, !dbg !738

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !739
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !739
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !740
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !740
  %25 = load i32, i32* %5, align 4, !dbg !741
  %26 = icmp ne i32 %25, 0, !dbg !741
  br i1 %26, label %27, label %29, !dbg !743

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !744
  call void @exit(i32 noundef %28) #19, !dbg !745
  unreachable, !dbg !745

29:                                               ; preds = %20
  ret void, !dbg !746
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !747 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !748, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.declare(metadata i8** %3, metadata !750, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !752, metadata !DIExpression()), !dbg !756
  %5 = load i32, i32* %2, align 4, !dbg !757
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !758
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !759
  store i8* %7, i8** %3, align 8, !dbg !760
  %8 = load i8*, i8** %3, align 8, !dbg !761
  %9 = icmp ne i8* %8, null, !dbg !761
  br i1 %9, label %12, label %10, !dbg !763

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.57, i64 0, i64 0)) #18, !dbg !764
  store i8* %11, i8** %3, align 8, !dbg !765
  br label %12, !dbg !766

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !767
  %14 = load i8*, i8** %3, align 8, !dbg !768
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.58, i64 0, i64 0), i8* noundef %14), !dbg !769
  ret void, !dbg !770
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !771 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !774, metadata !DIExpression()), !dbg !775
  %3 = load i32, i32* %2, align 4, !dbg !776
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !777
  %5 = icmp sle i32 0, %4, !dbg !778
  %6 = zext i1 %5 to i32, !dbg !778
  ret i32 %6, !dbg !779
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !780 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !783, metadata !DIExpression()), !dbg !784
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !785, metadata !DIExpression()), !dbg !786
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !787, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !789, metadata !DIExpression()), !dbg !790
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !791
  call void @llvm.va_start(i8* %9), !dbg !791
  %10 = load i32, i32* %4, align 4, !dbg !792
  %11 = load i32, i32* %5, align 4, !dbg !792
  %12 = load i8*, i8** %6, align 8, !dbg !792
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !792
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !792
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !792
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !792
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !793
  call void @llvm.va_end(i8* %15), !dbg !793
  ret void, !dbg !794
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !60 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !795, metadata !DIExpression()), !dbg !796
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !797, metadata !DIExpression()), !dbg !796
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !798, metadata !DIExpression()), !dbg !796
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !799, metadata !DIExpression()), !dbg !796
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !800, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !801, metadata !DIExpression()), !dbg !796
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !802
  %14 = icmp ne i32 %13, 0, !dbg !802
  br i1 %14, label %15, label %38, !dbg !804

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !805
  %17 = load i32, i32* %10, align 4, !dbg !808
  %18 = icmp eq i32 %16, %17, !dbg !809
  br i1 %18, label %19, label %35, !dbg !810

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !811
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !812
  %22 = icmp eq i8* %20, %21, !dbg !813
  br i1 %22, label %34, label %23, !dbg !814

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !815
  %25 = icmp ne i8* %24, null, !dbg !816
  br i1 %25, label %26, label %35, !dbg !817

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !818
  %28 = icmp ne i8* %27, null, !dbg !819
  br i1 %28, label %29, label %35, !dbg !820

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !821
  %31 = load i8*, i8** %9, align 8, !dbg !822
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !823
  %33 = icmp eq i32 %32, 0, !dbg !824
  br i1 %33, label %34, label %35, !dbg !825

34:                                               ; preds = %29, %19
  br label %61, !dbg !826

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !827
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !828
  %37 = load i32, i32* %10, align 4, !dbg !829
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !830
  br label %38, !dbg !831

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !832
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !833
  %40 = icmp ne void ()* %39, null, !dbg !833
  br i1 %40, label %41, label %43, !dbg !835

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !836
  call void %42(), !dbg !837
  br label %47, !dbg !837

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !838
  %45 = call i8* @getprogname() #20, !dbg !840
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.61, i64 0, i64 0), i8* noundef %45), !dbg !841
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !842
  %49 = load i8*, i8** %9, align 8, !dbg !843
  %50 = icmp ne i8* %49, null, !dbg !844
  %51 = zext i1 %50 to i64, !dbg !843
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.63, i64 0, i64 0), !dbg !843
  %53 = load i8*, i8** %9, align 8, !dbg !845
  %54 = load i32, i32* %10, align 4, !dbg !846
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !847
  %56 = load i32, i32* %7, align 4, !dbg !848
  %57 = load i32, i32* %8, align 4, !dbg !848
  %58 = load i8*, i8** %11, align 8, !dbg !848
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !848
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !848
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !848
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !848
  br label %61, !dbg !849

61:                                               ; preds = %47, %34
  ret void, !dbg !849
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !850 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !853, metadata !DIExpression()), !dbg !854
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !855, metadata !DIExpression()), !dbg !856
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !857, metadata !DIExpression()), !dbg !858
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !859, metadata !DIExpression()), !dbg !860
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !861, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !863, metadata !DIExpression()), !dbg !864
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !865
  call void @llvm.va_start(i8* %13), !dbg !865
  %14 = load i32, i32* %6, align 4, !dbg !866
  %15 = load i32, i32* %7, align 4, !dbg !866
  %16 = load i8*, i8** %8, align 8, !dbg !866
  %17 = load i32, i32* %9, align 4, !dbg !866
  %18 = load i8*, i8** %10, align 8, !dbg !866
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !866
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !866
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !866
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !866
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !867
  call void @llvm.va_end(i8* %21), !dbg !867
  ret void, !dbg !868
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !869 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !872
  ret i8* %1, !dbg !873
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* noundef %5, ...) #4 !dbg !874 {
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !878, metadata !DIExpression()), !dbg !879
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !880, metadata !DIExpression()), !dbg !881
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !882, metadata !DIExpression()), !dbg !883
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !884, metadata !DIExpression()), !dbg !885
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !886, metadata !DIExpression()), !dbg !887
  store void (i32)* %5, void (i32)** %12, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %12, metadata !888, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.declare(metadata i32* %13, metadata !890, metadata !DIExpression()), !dbg !891
  %17 = load i32, i32* @opterr, align 4, !dbg !892
  store i32 %17, i32* %13, align 4, !dbg !891
  store i32 0, i32* @opterr, align 4, !dbg !893
  %18 = load i32, i32* %7, align 4, !dbg !894
  %19 = icmp eq i32 %18, 2, !dbg !896
  br i1 %19, label %20, label %41, !dbg !897

20:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %14, metadata !898, metadata !DIExpression()), !dbg !900
  %21 = load i32, i32* %7, align 4, !dbg !901
  %22 = load i8**, i8*** %8, align 8, !dbg !902
  %23 = call i32 @getopt_long(i32 noundef %21, i8** noundef %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !903
  store i32 %23, i32* %14, align 4, !dbg !900
  %24 = load i32, i32* %14, align 4, !dbg !904
  %25 = icmp ne i32 %24, -1, !dbg !906
  br i1 %25, label %26, label %40, !dbg !907

26:                                               ; preds = %20
  %27 = load i32, i32* %14, align 4, !dbg !908
  switch i32 %27, label %38 [
    i32 104, label %28
    i32 118, label %30
  ], !dbg !910

28:                                               ; preds = %26
  %29 = load void (i32)*, void (i32)** %12, align 8, !dbg !911
  call void %29(i32 noundef 0), !dbg !913
  br label %39, !dbg !914

30:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %15, metadata !915, metadata !DIExpression()), !dbg !928
  %31 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !929
  call void @llvm.va_start(i8* %31), !dbg !929
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !930
  %33 = load i8*, i8** %9, align 8, !dbg !931
  %34 = load i8*, i8** %10, align 8, !dbg !932
  %35 = load i8*, i8** %11, align 8, !dbg !933
  %36 = bitcast %"struct.std::__va_list"* %16 to i8*, !dbg !934
  %37 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !934
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 32, i1 false), !dbg !934
  call void @version_etc_va(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef %34, i8* noundef %35, %"struct.std::__va_list"* noundef %16), !dbg !934
  call void @exit(i32 noundef 0) #19, !dbg !935
  unreachable, !dbg !935

38:                                               ; preds = %26
  br label %39, !dbg !936

39:                                               ; preds = %38, %28
  br label %40, !dbg !937

40:                                               ; preds = %39, %20
  br label %41, !dbg !938

41:                                               ; preds = %40, %6
  %42 = load i32, i32* %13, align 4, !dbg !939
  store i32 %42, i32* @opterr, align 4, !dbg !940
  store i32 0, i32* @optind, align 4, !dbg !941
  ret void, !dbg !942
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* noundef %6, ...) #4 !dbg !943 {
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
  call void @llvm.dbg.declare(metadata i32* %8, metadata !946, metadata !DIExpression()), !dbg !947
  store i8** %1, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !948, metadata !DIExpression()), !dbg !949
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !950, metadata !DIExpression()), !dbg !951
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !952, metadata !DIExpression()), !dbg !953
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !954, metadata !DIExpression()), !dbg !955
  %20 = zext i1 %5 to i8
  store i8 %20, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !956, metadata !DIExpression()), !dbg !957
  store void (i32)* %6, void (i32)** %14, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %14, metadata !958, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata i32* %15, metadata !960, metadata !DIExpression()), !dbg !961
  %21 = load i32, i32* @opterr, align 4, !dbg !962
  store i32 %21, i32* %15, align 4, !dbg !961
  store i32 1, i32* @opterr, align 4, !dbg !963
  call void @llvm.dbg.declare(metadata i8** %16, metadata !964, metadata !DIExpression()), !dbg !965
  %22 = load i8, i8* %13, align 1, !dbg !966
  %23 = trunc i8 %22 to i1, !dbg !966
  %24 = zext i1 %23 to i64, !dbg !966
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.73, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), !dbg !966
  store i8* %25, i8** %16, align 8, !dbg !965
  call void @llvm.dbg.declare(metadata i32* %17, metadata !967, metadata !DIExpression()), !dbg !968
  %26 = load i32, i32* %8, align 4, !dbg !969
  %27 = load i8**, i8*** %9, align 8, !dbg !970
  %28 = load i8*, i8** %16, align 8, !dbg !971
  %29 = call i32 @getopt_long(i32 noundef %26, i8** noundef %27, i8* noundef %28, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !972
  store i32 %29, i32* %17, align 4, !dbg !968
  %30 = load i32, i32* %17, align 4, !dbg !973
  %31 = icmp ne i32 %30, -1, !dbg !975
  br i1 %31, label %32, label %48, !dbg !976

32:                                               ; preds = %7
  %33 = load i32, i32* %17, align 4, !dbg !977
  switch i32 %33, label %44 [
    i32 104, label %34
    i32 118, label %36
  ], !dbg !979

34:                                               ; preds = %32
  %35 = load void (i32)*, void (i32)** %14, align 8, !dbg !980
  call void %35(i32 noundef 0), !dbg !982
  br label %47, !dbg !983

36:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %18, metadata !984, metadata !DIExpression()), !dbg !986
  %37 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !987
  call void @llvm.va_start(i8* %37), !dbg !987
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !988
  %39 = load i8*, i8** %10, align 8, !dbg !989
  %40 = load i8*, i8** %11, align 8, !dbg !990
  %41 = load i8*, i8** %12, align 8, !dbg !991
  %42 = bitcast %"struct.std::__va_list"* %19 to i8*, !dbg !992
  %43 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !992
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false), !dbg !992
  call void @version_etc_va(%struct._IO_FILE* noundef %38, i8* noundef %39, i8* noundef %40, i8* noundef %41, %"struct.std::__va_list"* noundef %19), !dbg !992
  call void @exit(i32 noundef 0) #19, !dbg !993
  unreachable, !dbg !993

44:                                               ; preds = %32
  %45 = load void (i32)*, void (i32)** %14, align 8, !dbg !994
  %46 = load volatile i32, i32* @exit_failure, align 4, !dbg !995
  call void %45(i32 noundef %46), !dbg !996
  br label %47, !dbg !997

47:                                               ; preds = %44, %34
  br label %48, !dbg !998

48:                                               ; preds = %47, %7
  %49 = load i32, i32* %15, align 4, !dbg !999
  store i32 %49, i32* @opterr, align 4, !dbg !1000
  ret void, !dbg !1001
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1002 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1003, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1005, metadata !DIExpression()), !dbg !1006
  %5 = load i8*, i8** %2, align 8, !dbg !1007
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1008
  store i8* %6, i8** %3, align 8, !dbg !1006
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1009, metadata !DIExpression()), !dbg !1010
  %7 = load i8*, i8** %3, align 8, !dbg !1011
  %8 = icmp ne i8* %7, null, !dbg !1011
  br i1 %8, label %9, label %12, !dbg !1011

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1012
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1013
  br label %14, !dbg !1011

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1014
  br label %14, !dbg !1011

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1011
  store i8* %15, i8** %4, align 8, !dbg !1010
  %16 = load i8*, i8** %4, align 8, !dbg !1015
  %17 = load i8*, i8** %2, align 8, !dbg !1017
  %18 = ptrtoint i8* %16 to i64, !dbg !1018
  %19 = ptrtoint i8* %17 to i64, !dbg !1018
  %20 = sub i64 %18, %19, !dbg !1018
  %21 = icmp sle i64 7, %20, !dbg !1019
  br i1 %21, label %22, label %36, !dbg !1020

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1021
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1022
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i64 0, i64 0), i64 noundef 7), !dbg !1023
  br i1 %25, label %26, label %36, !dbg !1024

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1025
  store i8* %27, i8** %2, align 8, !dbg !1027
  %28 = load i8*, i8** %4, align 8, !dbg !1028
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.79, i64 0, i64 0), i64 noundef 3) #20, !dbg !1030
  %30 = icmp eq i32 %29, 0, !dbg !1031
  br i1 %30, label %31, label %35, !dbg !1032

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1033
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1033
  store i8* %33, i8** %4, align 8, !dbg !1033
  %34 = load i8*, i8** %4, align 8, !dbg !1035
  store i8* %34, i8** %2, align 8, !dbg !1036
  br label %35, !dbg !1037

35:                                               ; preds = %31, %26
  br label %36, !dbg !1038

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1039
  store i8* %37, i8** @program_name, align 8, !dbg !1040
  %38 = load i8*, i8** %2, align 8, !dbg !1041
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1042
  %39 = load i8*, i8** %4, align 8, !dbg !1043
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1044
  ret void, !dbg !1045
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !112 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1046, metadata !DIExpression()), !dbg !1047
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1048, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1050, metadata !DIExpression()), !dbg !1051
  %9 = load i8*, i8** %4, align 8, !dbg !1052
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1053
  store i8* %10, i8** %6, align 8, !dbg !1051
  %11 = load i8*, i8** %6, align 8, !dbg !1054
  %12 = load i8*, i8** %4, align 8, !dbg !1056
  %13 = icmp ne i8* %11, %12, !dbg !1057
  br i1 %13, label %14, label %16, !dbg !1058

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1059
  store i8* %15, i8** %3, align 8, !dbg !1060
  br label %26, !dbg !1060

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1061, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1067, metadata !DIExpression()), !dbg !1078
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1079
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1080
  %18 = icmp eq i64 %17, 2, !dbg !1082
  br i1 %18, label %19, label %24, !dbg !1083

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1084
  %21 = icmp eq i32 %20, 2047, !dbg !1085
  br i1 %21, label %22, label %24, !dbg !1086

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1087
  store i8* %23, i8** %3, align 8, !dbg !1088
  br label %26, !dbg !1088

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1089
  store i8* %25, i8** %3, align 8, !dbg !1090
  br label %26, !dbg !1090

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1091
  ret i8* %27, !dbg !1091
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1092 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1096, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1098, metadata !DIExpression()), !dbg !1099
  %5 = call i32* @__errno_location() #21, !dbg !1100
  %6 = load i32, i32* %5, align 4, !dbg !1100
  store i32 %6, i32* %3, align 4, !dbg !1099
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1101, metadata !DIExpression()), !dbg !1102
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1103
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1103
  br i1 %8, label %9, label %11, !dbg !1103

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1104
  br label %12, !dbg !1103

11:                                               ; preds = %1
  br label %12, !dbg !1103

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1103
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1103
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1105
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1105
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1102
  %17 = load i32, i32* %3, align 4, !dbg !1106
  %18 = call i32* @__errno_location() #21, !dbg !1107
  store i32 %17, i32* %18, align 4, !dbg !1108
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1109
  ret %struct.quoting_options* %19, !dbg !1110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1111 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1116, metadata !DIExpression()), !dbg !1117
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1118
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1118
  br i1 %4, label %5, label %7, !dbg !1118

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1119
  br label %8, !dbg !1118

7:                                                ; preds = %1
  br label %8, !dbg !1118

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1118
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1120
  %11 = load i32, i32* %10, align 8, !dbg !1120
  ret i32 %11, !dbg !1121
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1122 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1125, metadata !DIExpression()), !dbg !1126
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1127, metadata !DIExpression()), !dbg !1128
  %5 = load i32, i32* %4, align 4, !dbg !1129
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1130
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1130
  br i1 %7, label %8, label %10, !dbg !1130

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1131
  br label %11, !dbg !1130

10:                                               ; preds = %2
  br label %11, !dbg !1130

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1130
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1132
  store i32 %5, i32* %13, align 8, !dbg !1133
  ret void, !dbg !1134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1135 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1138, metadata !DIExpression()), !dbg !1139
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1140, metadata !DIExpression()), !dbg !1141
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1142, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1144, metadata !DIExpression()), !dbg !1145
  %11 = load i8, i8* %5, align 1, !dbg !1146
  store i8 %11, i8* %7, align 1, !dbg !1145
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1147, metadata !DIExpression()), !dbg !1149
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1150
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1150
  br i1 %13, label %14, label %16, !dbg !1150

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1151
  br label %17, !dbg !1150

16:                                               ; preds = %3
  br label %17, !dbg !1150

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1150
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1152
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1153
  %21 = load i8, i8* %7, align 1, !dbg !1154
  %22 = zext i8 %21 to i64, !dbg !1154
  %23 = udiv i64 %22, 32, !dbg !1155
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1156
  store i32* %24, i32** %8, align 8, !dbg !1149
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1157, metadata !DIExpression()), !dbg !1158
  %25 = load i8, i8* %7, align 1, !dbg !1159
  %26 = zext i8 %25 to i64, !dbg !1159
  %27 = urem i64 %26, 32, !dbg !1160
  %28 = trunc i64 %27 to i32, !dbg !1159
  store i32 %28, i32* %9, align 4, !dbg !1158
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1161, metadata !DIExpression()), !dbg !1162
  %29 = load i32*, i32** %8, align 8, !dbg !1163
  %30 = load i32, i32* %29, align 4, !dbg !1164
  %31 = load i32, i32* %9, align 4, !dbg !1165
  %32 = lshr i32 %30, %31, !dbg !1166
  %33 = and i32 %32, 1, !dbg !1167
  store i32 %33, i32* %10, align 4, !dbg !1162
  %34 = load i32, i32* %6, align 4, !dbg !1168
  %35 = and i32 %34, 1, !dbg !1169
  %36 = load i32, i32* %10, align 4, !dbg !1170
  %37 = xor i32 %35, %36, !dbg !1171
  %38 = load i32, i32* %9, align 4, !dbg !1172
  %39 = shl i32 %37, %38, !dbg !1173
  %40 = load i32*, i32** %8, align 8, !dbg !1174
  %41 = load i32, i32* %40, align 4, !dbg !1175
  %42 = xor i32 %41, %39, !dbg !1175
  store i32 %42, i32* %40, align 4, !dbg !1175
  %43 = load i32, i32* %10, align 4, !dbg !1176
  ret i32 %43, !dbg !1177
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1178 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1181, metadata !DIExpression()), !dbg !1182
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1183, metadata !DIExpression()), !dbg !1184
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1185
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1185
  br i1 %7, label %9, label %8, !dbg !1187

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1188
  br label %9, !dbg !1189

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1190, metadata !DIExpression()), !dbg !1191
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1192
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1193
  %12 = load i32, i32* %11, align 4, !dbg !1193
  store i32 %12, i32* %5, align 4, !dbg !1191
  %13 = load i32, i32* %4, align 4, !dbg !1194
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1195
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1196
  store i32 %13, i32* %15, align 4, !dbg !1197
  %16 = load i32, i32* %5, align 4, !dbg !1198
  ret i32 %16, !dbg !1199
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1200 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1203, metadata !DIExpression()), !dbg !1204
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1205, metadata !DIExpression()), !dbg !1206
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1207, metadata !DIExpression()), !dbg !1208
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1209
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1209
  br i1 %8, label %10, label %9, !dbg !1211

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1212
  br label %10, !dbg !1213

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1214
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1215
  store i32 10, i32* %12, align 8, !dbg !1216
  %13 = load i8*, i8** %5, align 8, !dbg !1217
  %14 = icmp ne i8* %13, null, !dbg !1217
  br i1 %14, label %15, label %18, !dbg !1219

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1220
  %17 = icmp ne i8* %16, null, !dbg !1220
  br i1 %17, label %19, label %18, !dbg !1221

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1222
  unreachable, !dbg !1222

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1223
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1224
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1225
  store i8* %20, i8** %22, align 8, !dbg !1226
  %23 = load i8*, i8** %6, align 8, !dbg !1227
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1228
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1229
  store i8* %23, i8** %25, align 8, !dbg !1230
  ret void, !dbg !1231
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1232 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1235, metadata !DIExpression()), !dbg !1236
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1237, metadata !DIExpression()), !dbg !1238
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1239, metadata !DIExpression()), !dbg !1240
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1241, metadata !DIExpression()), !dbg !1242
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1243, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1245, metadata !DIExpression()), !dbg !1246
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1247
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1247
  br i1 %15, label %16, label %18, !dbg !1247

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1248
  br label %19, !dbg !1247

18:                                               ; preds = %5
  br label %19, !dbg !1247

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1247
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1246
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1249, metadata !DIExpression()), !dbg !1250
  %21 = call i32* @__errno_location() #21, !dbg !1251
  %22 = load i32, i32* %21, align 4, !dbg !1251
  store i32 %22, i32* %12, align 4, !dbg !1250
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1252, metadata !DIExpression()), !dbg !1253
  %23 = load i8*, i8** %6, align 8, !dbg !1254
  %24 = load i64, i64* %7, align 8, !dbg !1255
  %25 = load i8*, i8** %8, align 8, !dbg !1256
  %26 = load i64, i64* %9, align 8, !dbg !1257
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1258
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1259
  %29 = load i32, i32* %28, align 8, !dbg !1259
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1260
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1261
  %32 = load i32, i32* %31, align 4, !dbg !1261
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1262
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1263
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1262
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1264
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1265
  %38 = load i8*, i8** %37, align 8, !dbg !1265
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1266
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1267
  %41 = load i8*, i8** %40, align 8, !dbg !1267
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1268
  store i64 %42, i64* %13, align 8, !dbg !1253
  %43 = load i32, i32* %12, align 4, !dbg !1269
  %44 = call i32* @__errno_location() #21, !dbg !1270
  store i32 %43, i32* %44, align 4, !dbg !1271
  %45 = load i64, i64* %13, align 8, !dbg !1272
  ret i64 %45, !dbg !1273
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1274 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1279, metadata !DIExpression()), !dbg !1280
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1281, metadata !DIExpression()), !dbg !1282
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1283, metadata !DIExpression()), !dbg !1284
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1285, metadata !DIExpression()), !dbg !1286
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1287, metadata !DIExpression()), !dbg !1288
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1289, metadata !DIExpression()), !dbg !1290
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1291, metadata !DIExpression()), !dbg !1292
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1293, metadata !DIExpression()), !dbg !1294
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1295, metadata !DIExpression()), !dbg !1296
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1297, metadata !DIExpression()), !dbg !1298
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1299
  %45 = icmp eq i64 %44, 1, !dbg !1300
  %46 = zext i1 %45 to i8, !dbg !1298
  store i8 %46, i8* %20, align 1, !dbg !1298
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1301, metadata !DIExpression()), !dbg !1302
  store i64 0, i64* %21, align 8, !dbg !1302
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1303, metadata !DIExpression()), !dbg !1304
  store i64 0, i64* %22, align 8, !dbg !1304
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1305, metadata !DIExpression()), !dbg !1306
  store i8* null, i8** %23, align 8, !dbg !1306
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1307, metadata !DIExpression()), !dbg !1308
  store i64 0, i64* %24, align 8, !dbg !1308
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1309, metadata !DIExpression()), !dbg !1310
  store i8 0, i8* %25, align 1, !dbg !1310
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1311, metadata !DIExpression()), !dbg !1312
  %47 = load i32, i32* %16, align 4, !dbg !1313
  %48 = and i32 %47, 2, !dbg !1314
  %49 = icmp ne i32 %48, 0, !dbg !1315
  %50 = zext i1 %49 to i8, !dbg !1312
  store i8 %50, i8* %26, align 1, !dbg !1312
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1316, metadata !DIExpression()), !dbg !1317
  store i8 0, i8* %27, align 1, !dbg !1317
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1318, metadata !DIExpression()), !dbg !1319
  store i8 1, i8* %28, align 1, !dbg !1319
  br label %51, !dbg !1320

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1321), !dbg !1322
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1323, metadata !DIExpression()), !dbg !1324
  store i8 0, i8* %29, align 1, !dbg !1324
  %52 = load i32, i32* %15, align 4, !dbg !1325
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
  ], !dbg !1326

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1327
  store i8 1, i8* %26, align 1, !dbg !1329
  br label %54, !dbg !1330

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1331
  %56 = trunc i8 %55 to i1, !dbg !1331
  br i1 %56, label %70, label %57, !dbg !1333

57:                                               ; preds = %54
  br label %58, !dbg !1334

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1335
  %60 = load i64, i64* %12, align 8, !dbg !1335
  %61 = icmp ult i64 %59, %60, !dbg !1335
  br i1 %61, label %62, label %66, !dbg !1338

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1335
  %64 = load i64, i64* %21, align 8, !dbg !1335
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1335
  store i8 34, i8* %65, align 1, !dbg !1335
  br label %66, !dbg !1335

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1338
  %68 = add i64 %67, 1, !dbg !1338
  store i64 %68, i64* %21, align 8, !dbg !1338
  br label %69, !dbg !1338

69:                                               ; preds = %66
  br label %70, !dbg !1338

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1339
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.92, i64 0, i64 0), i8** %23, align 8, !dbg !1340
  store i64 1, i64* %24, align 8, !dbg !1341
  br label %138, !dbg !1342

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1343
  store i8 0, i8* %26, align 1, !dbg !1344
  br label %138, !dbg !1345

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1346
  %74 = icmp ne i32 %73, 10, !dbg !1349
  br i1 %74, label %75, label %80, !dbg !1350

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1351
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.93, i64 0, i64 0), i32 noundef %76), !dbg !1353
  store i8* %77, i8** %18, align 8, !dbg !1354
  %78 = load i32, i32* %15, align 4, !dbg !1355
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), i32 noundef %78), !dbg !1356
  store i8* %79, i8** %19, align 8, !dbg !1357
  br label %80, !dbg !1358

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1359
  %82 = trunc i8 %81 to i1, !dbg !1359
  br i1 %82, label %108, label %83, !dbg !1361

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1362, metadata !DIExpression()), !dbg !1364
  %84 = load i8*, i8** %18, align 8, !dbg !1365
  store i8* %84, i8** %30, align 8, !dbg !1364
  br label %85, !dbg !1366

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1367
  %87 = load i8, i8* %86, align 1, !dbg !1369
  %88 = icmp ne i8 %87, 0, !dbg !1370
  br i1 %88, label %89, label %107, !dbg !1370

89:                                               ; preds = %85
  br label %90, !dbg !1371

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1372
  %92 = load i64, i64* %12, align 8, !dbg !1372
  %93 = icmp ult i64 %91, %92, !dbg !1372
  br i1 %93, label %94, label %100, !dbg !1375

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1372
  %96 = load i8, i8* %95, align 1, !dbg !1372
  %97 = load i8*, i8** %11, align 8, !dbg !1372
  %98 = load i64, i64* %21, align 8, !dbg !1372
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1372
  store i8 %96, i8* %99, align 1, !dbg !1372
  br label %100, !dbg !1372

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1375
  %102 = add i64 %101, 1, !dbg !1375
  store i64 %102, i64* %21, align 8, !dbg !1375
  br label %103, !dbg !1375

103:                                              ; preds = %100
  br label %104, !dbg !1375

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1376
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1376
  store i8* %106, i8** %30, align 8, !dbg !1376
  br label %85, !dbg !1377, !llvm.loop !1378

107:                                              ; preds = %85
  br label %108, !dbg !1379

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1380
  %109 = load i8*, i8** %19, align 8, !dbg !1381
  store i8* %109, i8** %23, align 8, !dbg !1382
  %110 = load i8*, i8** %23, align 8, !dbg !1383
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1384
  store i64 %111, i64* %24, align 8, !dbg !1385
  br label %138, !dbg !1386

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1387
  br label %113, !dbg !1388

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1389
  br label %114, !dbg !1390

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1391
  %116 = trunc i8 %115 to i1, !dbg !1391
  br i1 %116, label %118, label %117, !dbg !1393

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1394
  br label %118, !dbg !1395

118:                                              ; preds = %117, %114
  br label %119, !dbg !1391

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1396
  %120 = load i8, i8* %26, align 1, !dbg !1397
  %121 = trunc i8 %120 to i1, !dbg !1397
  br i1 %121, label %135, label %122, !dbg !1399

122:                                              ; preds = %119
  br label %123, !dbg !1400

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1401
  %125 = load i64, i64* %12, align 8, !dbg !1401
  %126 = icmp ult i64 %124, %125, !dbg !1401
  br i1 %126, label %127, label %131, !dbg !1404

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1401
  %129 = load i64, i64* %21, align 8, !dbg !1401
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1401
  store i8 39, i8* %130, align 1, !dbg !1401
  br label %131, !dbg !1401

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1404
  %133 = add i64 %132, 1, !dbg !1404
  store i64 %133, i64* %21, align 8, !dbg !1404
  br label %134, !dbg !1404

134:                                              ; preds = %131
  br label %135, !dbg !1404

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), i8** %23, align 8, !dbg !1405
  store i64 1, i64* %24, align 8, !dbg !1406
  br label %138, !dbg !1407

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1408
  br label %138, !dbg !1409

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1410
  unreachable, !dbg !1410

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1411, metadata !DIExpression()), !dbg !1413
  store i64 0, i64* %31, align 8, !dbg !1413
  br label %139, !dbg !1414

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1415
  %141 = icmp eq i64 %140, -1, !dbg !1417
  br i1 %141, label %142, label %150, !dbg !1415

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1418
  %144 = load i64, i64* %31, align 8, !dbg !1419
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1418
  %146 = load i8, i8* %145, align 1, !dbg !1418
  %147 = zext i8 %146 to i32, !dbg !1418
  %148 = icmp eq i32 %147, 0, !dbg !1420
  %149 = zext i1 %148 to i32, !dbg !1420
  br label %155, !dbg !1415

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1421
  %152 = load i64, i64* %14, align 8, !dbg !1422
  %153 = icmp eq i64 %151, %152, !dbg !1423
  %154 = zext i1 %153 to i32, !dbg !1423
  br label %155, !dbg !1415

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1415
  %157 = icmp ne i32 %156, 0, !dbg !1424
  %158 = xor i1 %157, true, !dbg !1424
  br i1 %158, label %159, label %996, !dbg !1425

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1426, metadata !DIExpression()), !dbg !1428
  store i8 0, i8* %32, align 1, !dbg !1428
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1429, metadata !DIExpression()), !dbg !1430
  store i8 0, i8* %33, align 1, !dbg !1430
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1431, metadata !DIExpression()), !dbg !1432
  store i8 0, i8* %34, align 1, !dbg !1432
  %160 = load i8, i8* %25, align 1, !dbg !1433
  %161 = trunc i8 %160 to i1, !dbg !1433
  br i1 %161, label %162, label %197, !dbg !1435

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1436
  %164 = icmp ne i32 %163, 2, !dbg !1437
  br i1 %164, label %165, label %197, !dbg !1438

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1439
  %167 = icmp ne i64 %166, 0, !dbg !1439
  br i1 %167, label %168, label %197, !dbg !1440

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1441
  %170 = load i64, i64* %24, align 8, !dbg !1442
  %171 = add i64 %169, %170, !dbg !1443
  %172 = load i64, i64* %14, align 8, !dbg !1444
  %173 = icmp eq i64 %172, -1, !dbg !1445
  br i1 %173, label %174, label %180, !dbg !1446

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1447
  %176 = icmp ult i64 1, %175, !dbg !1448
  br i1 %176, label %177, label %180, !dbg !1444

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1449
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1450
  store i64 %179, i64* %14, align 8, !dbg !1451
  br label %182, !dbg !1444

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1452
  br label %182, !dbg !1444

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1444
  %184 = icmp ule i64 %171, %183, !dbg !1453
  br i1 %184, label %185, label %197, !dbg !1454

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1455
  %187 = load i64, i64* %31, align 8, !dbg !1456
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1457
  %189 = load i8*, i8** %23, align 8, !dbg !1458
  %190 = load i64, i64* %24, align 8, !dbg !1459
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1460
  br i1 %191, label %192, label %197, !dbg !1461

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1462
  %194 = trunc i8 %193 to i1, !dbg !1462
  br i1 %194, label %195, label %196, !dbg !1465

195:                                              ; preds = %192
  br label %1078, !dbg !1466

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1467
  br label %197, !dbg !1468

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1469, metadata !DIExpression()), !dbg !1470
  %198 = load i8*, i8** %13, align 8, !dbg !1471
  %199 = load i64, i64* %31, align 8, !dbg !1472
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1471
  %201 = load i8, i8* %200, align 1, !dbg !1471
  store i8 %201, i8* %35, align 1, !dbg !1470
  %202 = load i8, i8* %35, align 1, !dbg !1473
  %203 = zext i8 %202 to i32, !dbg !1473
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
  ], !dbg !1474

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1475
  %206 = trunc i8 %205 to i1, !dbg !1475
  br i1 %206, label %207, label %318, !dbg !1478

207:                                              ; preds = %204
  br label %208, !dbg !1479

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1481
  %210 = trunc i8 %209 to i1, !dbg !1481
  br i1 %210, label %211, label %212, !dbg !1484

211:                                              ; preds = %208
  br label %1078, !dbg !1481

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1484
  %213 = load i32, i32* %15, align 4, !dbg !1485
  %214 = icmp eq i32 %213, 2, !dbg !1485
  br i1 %214, label %215, label %255, !dbg !1485

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1485
  %217 = trunc i8 %216 to i1, !dbg !1485
  br i1 %217, label %255, label %218, !dbg !1484

218:                                              ; preds = %215
  br label %219, !dbg !1487

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1489
  %221 = load i64, i64* %12, align 8, !dbg !1489
  %222 = icmp ult i64 %220, %221, !dbg !1489
  br i1 %222, label %223, label %227, !dbg !1492

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1489
  %225 = load i64, i64* %21, align 8, !dbg !1489
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1489
  store i8 39, i8* %226, align 1, !dbg !1489
  br label %227, !dbg !1489

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1492
  %229 = add i64 %228, 1, !dbg !1492
  store i64 %229, i64* %21, align 8, !dbg !1492
  br label %230, !dbg !1492

230:                                              ; preds = %227
  br label %231, !dbg !1487

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1493
  %233 = load i64, i64* %12, align 8, !dbg !1493
  %234 = icmp ult i64 %232, %233, !dbg !1493
  br i1 %234, label %235, label %239, !dbg !1496

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1493
  %237 = load i64, i64* %21, align 8, !dbg !1493
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1493
  store i8 36, i8* %238, align 1, !dbg !1493
  br label %239, !dbg !1493

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1496
  %241 = add i64 %240, 1, !dbg !1496
  store i64 %241, i64* %21, align 8, !dbg !1496
  br label %242, !dbg !1496

242:                                              ; preds = %239
  br label %243, !dbg !1487

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1497
  %245 = load i64, i64* %12, align 8, !dbg !1497
  %246 = icmp ult i64 %244, %245, !dbg !1497
  br i1 %246, label %247, label %251, !dbg !1500

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1497
  %249 = load i64, i64* %21, align 8, !dbg !1497
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1497
  store i8 39, i8* %250, align 1, !dbg !1497
  br label %251, !dbg !1497

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1500
  %253 = add i64 %252, 1, !dbg !1500
  store i64 %253, i64* %21, align 8, !dbg !1500
  br label %254, !dbg !1500

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1487
  br label %255, !dbg !1487

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1484

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1501
  %258 = load i64, i64* %12, align 8, !dbg !1501
  %259 = icmp ult i64 %257, %258, !dbg !1501
  br i1 %259, label %260, label %264, !dbg !1504

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1501
  %262 = load i64, i64* %21, align 8, !dbg !1501
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1501
  store i8 92, i8* %263, align 1, !dbg !1501
  br label %264, !dbg !1501

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1504
  %266 = add i64 %265, 1, !dbg !1504
  store i64 %266, i64* %21, align 8, !dbg !1504
  br label %267, !dbg !1504

267:                                              ; preds = %264
  br label %268, !dbg !1484

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1505
  %270 = icmp ne i32 %269, 2, !dbg !1507
  br i1 %270, label %271, label %317, !dbg !1508

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1509
  %273 = add i64 %272, 1, !dbg !1510
  %274 = load i64, i64* %14, align 8, !dbg !1511
  %275 = icmp ult i64 %273, %274, !dbg !1512
  br i1 %275, label %276, label %317, !dbg !1513

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1514
  %278 = load i64, i64* %31, align 8, !dbg !1515
  %279 = add i64 %278, 1, !dbg !1516
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1514
  %281 = load i8, i8* %280, align 1, !dbg !1514
  %282 = zext i8 %281 to i32, !dbg !1514
  %283 = icmp sle i32 48, %282, !dbg !1517
  br i1 %283, label %284, label %317, !dbg !1518

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1519
  %286 = load i64, i64* %31, align 8, !dbg !1520
  %287 = add i64 %286, 1, !dbg !1521
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1519
  %289 = load i8, i8* %288, align 1, !dbg !1519
  %290 = zext i8 %289 to i32, !dbg !1519
  %291 = icmp sle i32 %290, 57, !dbg !1522
  br i1 %291, label %292, label %317, !dbg !1523

292:                                              ; preds = %284
  br label %293, !dbg !1524

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1526
  %295 = load i64, i64* %12, align 8, !dbg !1526
  %296 = icmp ult i64 %294, %295, !dbg !1526
  br i1 %296, label %297, label %301, !dbg !1529

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1526
  %299 = load i64, i64* %21, align 8, !dbg !1526
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1526
  store i8 48, i8* %300, align 1, !dbg !1526
  br label %301, !dbg !1526

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1529
  %303 = add i64 %302, 1, !dbg !1529
  store i64 %303, i64* %21, align 8, !dbg !1529
  br label %304, !dbg !1529

304:                                              ; preds = %301
  br label %305, !dbg !1530

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1531
  %307 = load i64, i64* %12, align 8, !dbg !1531
  %308 = icmp ult i64 %306, %307, !dbg !1531
  br i1 %308, label %309, label %313, !dbg !1534

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1531
  %311 = load i64, i64* %21, align 8, !dbg !1531
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1531
  store i8 48, i8* %312, align 1, !dbg !1531
  br label %313, !dbg !1531

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1534
  %315 = add i64 %314, 1, !dbg !1534
  store i64 %315, i64* %21, align 8, !dbg !1534
  br label %316, !dbg !1534

316:                                              ; preds = %313
  br label %317, !dbg !1535

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1536
  br label %324, !dbg !1537

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1538
  %320 = and i32 %319, 1, !dbg !1540
  %321 = icmp ne i32 %320, 0, !dbg !1540
  br i1 %321, label %322, label %323, !dbg !1541

322:                                              ; preds = %318
  br label %993, !dbg !1542

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1543

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1544
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1545

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1546
  %329 = trunc i8 %328 to i1, !dbg !1546
  br i1 %329, label %330, label %331, !dbg !1549

330:                                              ; preds = %327
  br label %1078, !dbg !1550

331:                                              ; preds = %327
  br label %418, !dbg !1551

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1552
  %334 = and i32 %333, 4, !dbg !1554
  %335 = icmp ne i32 %334, 0, !dbg !1554
  br i1 %335, label %336, label %417, !dbg !1555

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1556
  %338 = add i64 %337, 2, !dbg !1557
  %339 = load i64, i64* %14, align 8, !dbg !1558
  %340 = icmp ult i64 %338, %339, !dbg !1559
  br i1 %340, label %341, label %417, !dbg !1560

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1561
  %343 = load i64, i64* %31, align 8, !dbg !1562
  %344 = add i64 %343, 1, !dbg !1563
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1561
  %346 = load i8, i8* %345, align 1, !dbg !1561
  %347 = zext i8 %346 to i32, !dbg !1561
  %348 = icmp eq i32 %347, 63, !dbg !1564
  br i1 %348, label %349, label %417, !dbg !1565

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1566
  %351 = load i64, i64* %31, align 8, !dbg !1567
  %352 = add i64 %351, 2, !dbg !1568
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1566
  %354 = load i8, i8* %353, align 1, !dbg !1566
  %355 = zext i8 %354 to i32, !dbg !1566
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
  ], !dbg !1569

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1570
  %358 = trunc i8 %357 to i1, !dbg !1570
  br i1 %358, label %359, label %360, !dbg !1573

359:                                              ; preds = %356
  br label %1078, !dbg !1574

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1575
  %362 = load i64, i64* %31, align 8, !dbg !1576
  %363 = add i64 %362, 2, !dbg !1577
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1575
  %365 = load i8, i8* %364, align 1, !dbg !1575
  store i8 %365, i8* %35, align 1, !dbg !1578
  %366 = load i64, i64* %31, align 8, !dbg !1579
  %367 = add i64 %366, 2, !dbg !1579
  store i64 %367, i64* %31, align 8, !dbg !1579
  br label %368, !dbg !1580

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1581
  %370 = load i64, i64* %12, align 8, !dbg !1581
  %371 = icmp ult i64 %369, %370, !dbg !1581
  br i1 %371, label %372, label %376, !dbg !1584

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1581
  %374 = load i64, i64* %21, align 8, !dbg !1581
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1581
  store i8 63, i8* %375, align 1, !dbg !1581
  br label %376, !dbg !1581

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1584
  %378 = add i64 %377, 1, !dbg !1584
  store i64 %378, i64* %21, align 8, !dbg !1584
  br label %379, !dbg !1584

379:                                              ; preds = %376
  br label %380, !dbg !1585

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1586
  %382 = load i64, i64* %12, align 8, !dbg !1586
  %383 = icmp ult i64 %381, %382, !dbg !1586
  br i1 %383, label %384, label %388, !dbg !1589

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1586
  %386 = load i64, i64* %21, align 8, !dbg !1586
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1586
  store i8 34, i8* %387, align 1, !dbg !1586
  br label %388, !dbg !1586

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1589
  %390 = add i64 %389, 1, !dbg !1589
  store i64 %390, i64* %21, align 8, !dbg !1589
  br label %391, !dbg !1589

391:                                              ; preds = %388
  br label %392, !dbg !1590

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1591
  %394 = load i64, i64* %12, align 8, !dbg !1591
  %395 = icmp ult i64 %393, %394, !dbg !1591
  br i1 %395, label %396, label %400, !dbg !1594

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1591
  %398 = load i64, i64* %21, align 8, !dbg !1591
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1591
  store i8 34, i8* %399, align 1, !dbg !1591
  br label %400, !dbg !1591

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1594
  %402 = add i64 %401, 1, !dbg !1594
  store i64 %402, i64* %21, align 8, !dbg !1594
  br label %403, !dbg !1594

403:                                              ; preds = %400
  br label %404, !dbg !1595

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1596
  %406 = load i64, i64* %12, align 8, !dbg !1596
  %407 = icmp ult i64 %405, %406, !dbg !1596
  br i1 %407, label %408, label %412, !dbg !1599

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1596
  %410 = load i64, i64* %21, align 8, !dbg !1596
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1596
  store i8 63, i8* %411, align 1, !dbg !1596
  br label %412, !dbg !1596

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1599
  %414 = add i64 %413, 1, !dbg !1599
  store i64 %414, i64* %21, align 8, !dbg !1599
  br label %415, !dbg !1599

415:                                              ; preds = %412
  br label %416, !dbg !1600

416:                                              ; preds = %349, %415
  br label %417, !dbg !1601

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1602

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1603

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1604
  br label %454, !dbg !1606

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1607
  br label %454, !dbg !1608

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1609
  br label %454, !dbg !1610

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1611
  br label %446, !dbg !1612

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1613
  br label %446, !dbg !1614

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1615
  br label %446, !dbg !1616

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1617
  br label %454, !dbg !1618

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1619
  store i8 %427, i8* %36, align 1, !dbg !1620
  %428 = load i32, i32* %15, align 4, !dbg !1621
  %429 = icmp eq i32 %428, 2, !dbg !1623
  br i1 %429, label %430, label %435, !dbg !1624

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1625
  %432 = trunc i8 %431 to i1, !dbg !1625
  br i1 %432, label %433, label %434, !dbg !1628

433:                                              ; preds = %430
  br label %1078, !dbg !1629

434:                                              ; preds = %430
  br label %942, !dbg !1630

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1631
  %437 = trunc i8 %436 to i1, !dbg !1631
  br i1 %437, label %438, label %445, !dbg !1633

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1634
  %440 = trunc i8 %439 to i1, !dbg !1634
  br i1 %440, label %441, label %445, !dbg !1635

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1636
  %443 = icmp ne i64 %442, 0, !dbg !1636
  br i1 %443, label %444, label %445, !dbg !1637

444:                                              ; preds = %441
  br label %942, !dbg !1638

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1636

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1639), !dbg !1640
  %447 = load i32, i32* %15, align 4, !dbg !1641
  %448 = icmp eq i32 %447, 2, !dbg !1643
  br i1 %448, label %449, label %453, !dbg !1644

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1645
  %451 = trunc i8 %450 to i1, !dbg !1645
  br i1 %451, label %452, label %453, !dbg !1646

452:                                              ; preds = %449
  br label %1078, !dbg !1647

453:                                              ; preds = %449, %446
  br label %454, !dbg !1645

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1648), !dbg !1649
  %455 = load i8, i8* %25, align 1, !dbg !1650
  %456 = trunc i8 %455 to i1, !dbg !1650
  br i1 %456, label %457, label %459, !dbg !1652

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1653
  store i8 %458, i8* %35, align 1, !dbg !1655
  br label %880, !dbg !1656

459:                                              ; preds = %454
  br label %849, !dbg !1657

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1658
  %462 = icmp eq i64 %461, -1, !dbg !1660
  br i1 %462, label %463, label %469, !dbg !1661

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1662
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1662
  %466 = load i8, i8* %465, align 1, !dbg !1662
  %467 = zext i8 %466 to i32, !dbg !1662
  %468 = icmp eq i32 %467, 0, !dbg !1663
  br i1 %468, label %473, label %472, !dbg !1658

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1664
  %471 = icmp eq i64 %470, 1, !dbg !1665
  br i1 %471, label %473, label %472, !dbg !1661

472:                                              ; preds = %469, %463
  br label %849, !dbg !1666

473:                                              ; preds = %469, %463
  br label %474, !dbg !1667

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1668
  %476 = icmp ne i64 %475, 0, !dbg !1670
  br i1 %476, label %477, label %478, !dbg !1671

477:                                              ; preds = %474
  br label %849, !dbg !1672

478:                                              ; preds = %474
  br label %479, !dbg !1673

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1674
  br label %480, !dbg !1675

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1676
  %482 = icmp eq i32 %481, 2, !dbg !1678
  br i1 %482, label %483, label %487, !dbg !1679

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1680
  %485 = trunc i8 %484 to i1, !dbg !1680
  br i1 %485, label %486, label %487, !dbg !1681

486:                                              ; preds = %483
  br label %1078, !dbg !1682

487:                                              ; preds = %483, %480
  br label %849, !dbg !1683

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1684
  store i8 1, i8* %34, align 1, !dbg !1685
  %489 = load i32, i32* %15, align 4, !dbg !1686
  %490 = icmp eq i32 %489, 2, !dbg !1688
  br i1 %490, label %491, label %540, !dbg !1689

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1690
  %493 = trunc i8 %492 to i1, !dbg !1690
  br i1 %493, label %494, label %495, !dbg !1693

494:                                              ; preds = %491
  br label %1078, !dbg !1694

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1695
  %497 = icmp ne i64 %496, 0, !dbg !1695
  br i1 %497, label %498, label %503, !dbg !1697

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1698
  %500 = icmp ne i64 %499, 0, !dbg !1698
  br i1 %500, label %503, label %501, !dbg !1699

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1700
  store i64 %502, i64* %22, align 8, !dbg !1702
  store i64 0, i64* %12, align 8, !dbg !1703
  br label %503, !dbg !1704

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1705

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1706
  %506 = load i64, i64* %12, align 8, !dbg !1706
  %507 = icmp ult i64 %505, %506, !dbg !1706
  br i1 %507, label %508, label %512, !dbg !1709

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1706
  %510 = load i64, i64* %21, align 8, !dbg !1706
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1706
  store i8 39, i8* %511, align 1, !dbg !1706
  br label %512, !dbg !1706

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1709
  %514 = add i64 %513, 1, !dbg !1709
  store i64 %514, i64* %21, align 8, !dbg !1709
  br label %515, !dbg !1709

515:                                              ; preds = %512
  br label %516, !dbg !1710

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1711
  %518 = load i64, i64* %12, align 8, !dbg !1711
  %519 = icmp ult i64 %517, %518, !dbg !1711
  br i1 %519, label %520, label %524, !dbg !1714

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1711
  %522 = load i64, i64* %21, align 8, !dbg !1711
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1711
  store i8 92, i8* %523, align 1, !dbg !1711
  br label %524, !dbg !1711

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1714
  %526 = add i64 %525, 1, !dbg !1714
  store i64 %526, i64* %21, align 8, !dbg !1714
  br label %527, !dbg !1714

527:                                              ; preds = %524
  br label %528, !dbg !1715

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1716
  %530 = load i64, i64* %12, align 8, !dbg !1716
  %531 = icmp ult i64 %529, %530, !dbg !1716
  br i1 %531, label %532, label %536, !dbg !1719

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1716
  %534 = load i64, i64* %21, align 8, !dbg !1716
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1716
  store i8 39, i8* %535, align 1, !dbg !1716
  br label %536, !dbg !1716

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1719
  %538 = add i64 %537, 1, !dbg !1719
  store i64 %538, i64* %21, align 8, !dbg !1719
  br label %539, !dbg !1719

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1720
  br label %540, !dbg !1721

540:                                              ; preds = %539, %488
  br label %849, !dbg !1722

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1723
  br label %849, !dbg !1724

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1725, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1728, metadata !DIExpression()), !dbg !1729
  %543 = load i8, i8* %20, align 1, !dbg !1730
  %544 = trunc i8 %543 to i1, !dbg !1730
  br i1 %544, label %545, label %557, !dbg !1732

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1733
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1735
  %547 = load i16*, i16** %546, align 8, !dbg !1735
  %548 = load i8, i8* %35, align 1, !dbg !1735
  %549 = zext i8 %548 to i32, !dbg !1735
  %550 = sext i32 %549 to i64, !dbg !1735
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1735
  %552 = load i16, i16* %551, align 2, !dbg !1735
  %553 = zext i16 %552 to i32, !dbg !1735
  %554 = and i32 %553, 16384, !dbg !1735
  %555 = icmp ne i32 %554, 0, !dbg !1736
  %556 = zext i1 %555 to i8, !dbg !1737
  store i8 %556, i8* %38, align 1, !dbg !1737
  br label %648, !dbg !1738

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1739, metadata !DIExpression()), !dbg !1751
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1752
  store i64 0, i64* %37, align 8, !dbg !1753
  store i8 1, i8* %38, align 1, !dbg !1754
  %558 = load i64, i64* %14, align 8, !dbg !1755
  %559 = icmp eq i64 %558, -1, !dbg !1757
  br i1 %559, label %560, label %563, !dbg !1758

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1759
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !1760
  store i64 %562, i64* %14, align 8, !dbg !1761
  br label %563, !dbg !1762

563:                                              ; preds = %560, %557
  br label %564, !dbg !1763

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1764, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1769, metadata !DIExpression()), !dbg !1770
  %565 = load i8*, i8** %13, align 8, !dbg !1771
  %566 = load i64, i64* %31, align 8, !dbg !1772
  %567 = load i64, i64* %37, align 8, !dbg !1773
  %568 = add i64 %566, %567, !dbg !1774
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !1771
  %570 = load i64, i64* %14, align 8, !dbg !1775
  %571 = load i64, i64* %31, align 8, !dbg !1776
  %572 = load i64, i64* %37, align 8, !dbg !1777
  %573 = add i64 %571, %572, !dbg !1778
  %574 = sub i64 %570, %573, !dbg !1779
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !1780
  store i64 %575, i64* %41, align 8, !dbg !1770
  %576 = load i64, i64* %41, align 8, !dbg !1781
  %577 = icmp eq i64 %576, 0, !dbg !1783
  br i1 %577, label %578, label %579, !dbg !1784

578:                                              ; preds = %564
  br label %647, !dbg !1785

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !1786
  %581 = icmp eq i64 %580, -1, !dbg !1788
  br i1 %581, label %582, label %583, !dbg !1789

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !1790
  br label %647, !dbg !1792

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !1793
  %585 = icmp eq i64 %584, -2, !dbg !1795
  br i1 %585, label %586, label %608, !dbg !1796

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !1797
  br label %587, !dbg !1799

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !1800
  %589 = load i64, i64* %37, align 8, !dbg !1801
  %590 = add i64 %588, %589, !dbg !1802
  %591 = load i64, i64* %14, align 8, !dbg !1803
  %592 = icmp ult i64 %590, %591, !dbg !1804
  br i1 %592, label %593, label %602, !dbg !1805

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !1806
  %595 = load i64, i64* %31, align 8, !dbg !1807
  %596 = load i64, i64* %37, align 8, !dbg !1808
  %597 = add i64 %595, %596, !dbg !1809
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !1806
  %599 = load i8, i8* %598, align 1, !dbg !1806
  %600 = zext i8 %599 to i32, !dbg !1806
  %601 = icmp ne i32 %600, 0, !dbg !1805
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !1810
  br i1 %603, label %604, label %607, !dbg !1799

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !1811
  %606 = add i64 %605, 1, !dbg !1811
  store i64 %606, i64* %37, align 8, !dbg !1811
  br label %587, !dbg !1799, !llvm.loop !1812

607:                                              ; preds = %602
  br label %647, !dbg !1813

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !1814
  %610 = trunc i8 %609 to i1, !dbg !1814
  br i1 %610, label %611, label %635, !dbg !1817

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !1818
  %613 = icmp eq i32 %612, 2, !dbg !1819
  br i1 %613, label %614, label %635, !dbg !1820

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !1821, metadata !DIExpression()), !dbg !1824
  store i64 1, i64* %42, align 8, !dbg !1824
  br label %615, !dbg !1825

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !1826
  %617 = load i64, i64* %41, align 8, !dbg !1828
  %618 = icmp ult i64 %616, %617, !dbg !1829
  br i1 %618, label %619, label %634, !dbg !1830

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !1831
  %621 = load i64, i64* %31, align 8, !dbg !1832
  %622 = load i64, i64* %37, align 8, !dbg !1833
  %623 = add i64 %621, %622, !dbg !1834
  %624 = load i64, i64* %42, align 8, !dbg !1835
  %625 = add i64 %623, %624, !dbg !1836
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !1831
  %627 = load i8, i8* %626, align 1, !dbg !1831
  %628 = zext i8 %627 to i32, !dbg !1831
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !1837

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !1838

630:                                              ; preds = %619
  br label %631, !dbg !1840

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !1841
  %633 = add i64 %632, 1, !dbg !1841
  store i64 %633, i64* %42, align 8, !dbg !1841
  br label %615, !dbg !1842, !llvm.loop !1843

634:                                              ; preds = %615
  br label %635, !dbg !1845

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !1846
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !1848
  %638 = icmp ne i32 %637, 0, !dbg !1848
  br i1 %638, label %640, label %639, !dbg !1849

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !1850
  br label %640, !dbg !1851

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !1852
  %642 = load i64, i64* %37, align 8, !dbg !1853
  %643 = add i64 %642, %641, !dbg !1853
  store i64 %643, i64* %37, align 8, !dbg !1853
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !1854

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !1855
  %650 = trunc i8 %649 to i1, !dbg !1855
  %651 = zext i1 %650 to i8, !dbg !1856
  store i8 %651, i8* %34, align 1, !dbg !1856
  %652 = load i64, i64* %37, align 8, !dbg !1857
  %653 = icmp ult i64 1, %652, !dbg !1859
  br i1 %653, label %660, label %654, !dbg !1860

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !1861
  %656 = trunc i8 %655 to i1, !dbg !1861
  br i1 %656, label %657, label %848, !dbg !1862

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !1863
  %659 = trunc i8 %658 to i1, !dbg !1863
  br i1 %659, label %848, label %660, !dbg !1864

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !1865, metadata !DIExpression()), !dbg !1867
  %661 = load i64, i64* %31, align 8, !dbg !1868
  %662 = load i64, i64* %37, align 8, !dbg !1869
  %663 = add i64 %661, %662, !dbg !1870
  store i64 %663, i64* %43, align 8, !dbg !1867
  br label %664, !dbg !1871

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !1872
  %666 = trunc i8 %665 to i1, !dbg !1872
  br i1 %666, label %667, label %772, !dbg !1877

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !1878
  %669 = trunc i8 %668 to i1, !dbg !1878
  br i1 %669, label %772, label %670, !dbg !1879

670:                                              ; preds = %667
  br label %671, !dbg !1880

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !1882
  %673 = trunc i8 %672 to i1, !dbg !1882
  br i1 %673, label %674, label %675, !dbg !1885

674:                                              ; preds = %671
  br label %1078, !dbg !1882

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !1885
  %676 = load i32, i32* %15, align 4, !dbg !1886
  %677 = icmp eq i32 %676, 2, !dbg !1886
  br i1 %677, label %678, label %718, !dbg !1886

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !1886
  %680 = trunc i8 %679 to i1, !dbg !1886
  br i1 %680, label %718, label %681, !dbg !1885

681:                                              ; preds = %678
  br label %682, !dbg !1888

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !1890
  %684 = load i64, i64* %12, align 8, !dbg !1890
  %685 = icmp ult i64 %683, %684, !dbg !1890
  br i1 %685, label %686, label %690, !dbg !1893

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !1890
  %688 = load i64, i64* %21, align 8, !dbg !1890
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !1890
  store i8 39, i8* %689, align 1, !dbg !1890
  br label %690, !dbg !1890

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !1893
  %692 = add i64 %691, 1, !dbg !1893
  store i64 %692, i64* %21, align 8, !dbg !1893
  br label %693, !dbg !1893

693:                                              ; preds = %690
  br label %694, !dbg !1888

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !1894
  %696 = load i64, i64* %12, align 8, !dbg !1894
  %697 = icmp ult i64 %695, %696, !dbg !1894
  br i1 %697, label %698, label %702, !dbg !1897

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !1894
  %700 = load i64, i64* %21, align 8, !dbg !1894
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !1894
  store i8 36, i8* %701, align 1, !dbg !1894
  br label %702, !dbg !1894

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !1897
  %704 = add i64 %703, 1, !dbg !1897
  store i64 %704, i64* %21, align 8, !dbg !1897
  br label %705, !dbg !1897

705:                                              ; preds = %702
  br label %706, !dbg !1888

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !1898
  %708 = load i64, i64* %12, align 8, !dbg !1898
  %709 = icmp ult i64 %707, %708, !dbg !1898
  br i1 %709, label %710, label %714, !dbg !1901

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !1898
  %712 = load i64, i64* %21, align 8, !dbg !1898
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !1898
  store i8 39, i8* %713, align 1, !dbg !1898
  br label %714, !dbg !1898

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !1901
  %716 = add i64 %715, 1, !dbg !1901
  store i64 %716, i64* %21, align 8, !dbg !1901
  br label %717, !dbg !1901

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !1888
  br label %718, !dbg !1888

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !1885

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !1902
  %721 = load i64, i64* %12, align 8, !dbg !1902
  %722 = icmp ult i64 %720, %721, !dbg !1902
  br i1 %722, label %723, label %727, !dbg !1905

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !1902
  %725 = load i64, i64* %21, align 8, !dbg !1902
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !1902
  store i8 92, i8* %726, align 1, !dbg !1902
  br label %727, !dbg !1902

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !1905
  %729 = add i64 %728, 1, !dbg !1905
  store i64 %729, i64* %21, align 8, !dbg !1905
  br label %730, !dbg !1905

730:                                              ; preds = %727
  br label %731, !dbg !1885

731:                                              ; preds = %730
  br label %732, !dbg !1906

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !1907
  %734 = load i64, i64* %12, align 8, !dbg !1907
  %735 = icmp ult i64 %733, %734, !dbg !1907
  br i1 %735, label %736, label %745, !dbg !1910

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !1907
  %738 = zext i8 %737 to i32, !dbg !1907
  %739 = ashr i32 %738, 6, !dbg !1907
  %740 = add nsw i32 48, %739, !dbg !1907
  %741 = trunc i32 %740 to i8, !dbg !1907
  %742 = load i8*, i8** %11, align 8, !dbg !1907
  %743 = load i64, i64* %21, align 8, !dbg !1907
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !1907
  store i8 %741, i8* %744, align 1, !dbg !1907
  br label %745, !dbg !1907

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !1910
  %747 = add i64 %746, 1, !dbg !1910
  store i64 %747, i64* %21, align 8, !dbg !1910
  br label %748, !dbg !1910

748:                                              ; preds = %745
  br label %749, !dbg !1911

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !1912
  %751 = load i64, i64* %12, align 8, !dbg !1912
  %752 = icmp ult i64 %750, %751, !dbg !1912
  br i1 %752, label %753, label %763, !dbg !1915

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !1912
  %755 = zext i8 %754 to i32, !dbg !1912
  %756 = ashr i32 %755, 3, !dbg !1912
  %757 = and i32 %756, 7, !dbg !1912
  %758 = add nsw i32 48, %757, !dbg !1912
  %759 = trunc i32 %758 to i8, !dbg !1912
  %760 = load i8*, i8** %11, align 8, !dbg !1912
  %761 = load i64, i64* %21, align 8, !dbg !1912
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !1912
  store i8 %759, i8* %762, align 1, !dbg !1912
  br label %763, !dbg !1912

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !1915
  %765 = add i64 %764, 1, !dbg !1915
  store i64 %765, i64* %21, align 8, !dbg !1915
  br label %766, !dbg !1915

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !1916
  %768 = zext i8 %767 to i32, !dbg !1916
  %769 = and i32 %768, 7, !dbg !1917
  %770 = add nsw i32 48, %769, !dbg !1918
  %771 = trunc i32 %770 to i8, !dbg !1919
  store i8 %771, i8* %35, align 1, !dbg !1920
  br label %789, !dbg !1921

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !1922
  %774 = trunc i8 %773 to i1, !dbg !1922
  br i1 %774, label %775, label %788, !dbg !1924

775:                                              ; preds = %772
  br label %776, !dbg !1925

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !1927
  %778 = load i64, i64* %12, align 8, !dbg !1927
  %779 = icmp ult i64 %777, %778, !dbg !1927
  br i1 %779, label %780, label %784, !dbg !1930

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !1927
  %782 = load i64, i64* %21, align 8, !dbg !1927
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !1927
  store i8 92, i8* %783, align 1, !dbg !1927
  br label %784, !dbg !1927

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !1930
  %786 = add i64 %785, 1, !dbg !1930
  store i64 %786, i64* %21, align 8, !dbg !1930
  br label %787, !dbg !1930

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !1931
  br label %788, !dbg !1932

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !1933
  %791 = load i64, i64* %31, align 8, !dbg !1935
  %792 = add i64 %791, 1, !dbg !1936
  %793 = icmp ule i64 %790, %792, !dbg !1937
  br i1 %793, label %794, label %795, !dbg !1938

794:                                              ; preds = %789
  br label %847, !dbg !1939

795:                                              ; preds = %789
  br label %796, !dbg !1940

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !1941
  %798 = trunc i8 %797 to i1, !dbg !1941
  br i1 %798, label %799, label %827, !dbg !1941

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !1941
  %801 = trunc i8 %800 to i1, !dbg !1941
  br i1 %801, label %827, label %802, !dbg !1944

802:                                              ; preds = %799
  br label %803, !dbg !1945

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !1947
  %805 = load i64, i64* %12, align 8, !dbg !1947
  %806 = icmp ult i64 %804, %805, !dbg !1947
  br i1 %806, label %807, label %811, !dbg !1950

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !1947
  %809 = load i64, i64* %21, align 8, !dbg !1947
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !1947
  store i8 39, i8* %810, align 1, !dbg !1947
  br label %811, !dbg !1947

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !1950
  %813 = add i64 %812, 1, !dbg !1950
  store i64 %813, i64* %21, align 8, !dbg !1950
  br label %814, !dbg !1950

814:                                              ; preds = %811
  br label %815, !dbg !1945

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !1951
  %817 = load i64, i64* %12, align 8, !dbg !1951
  %818 = icmp ult i64 %816, %817, !dbg !1951
  br i1 %818, label %819, label %823, !dbg !1954

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !1951
  %821 = load i64, i64* %21, align 8, !dbg !1951
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !1951
  store i8 39, i8* %822, align 1, !dbg !1951
  br label %823, !dbg !1951

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !1954
  %825 = add i64 %824, 1, !dbg !1954
  store i64 %825, i64* %21, align 8, !dbg !1954
  br label %826, !dbg !1954

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !1945
  br label %827, !dbg !1945

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !1944

828:                                              ; preds = %827
  br label %829, !dbg !1955

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !1956
  %831 = load i64, i64* %12, align 8, !dbg !1956
  %832 = icmp ult i64 %830, %831, !dbg !1956
  br i1 %832, label %833, label %838, !dbg !1959

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !1956
  %835 = load i8*, i8** %11, align 8, !dbg !1956
  %836 = load i64, i64* %21, align 8, !dbg !1956
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !1956
  store i8 %834, i8* %837, align 1, !dbg !1956
  br label %838, !dbg !1956

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !1959
  %840 = add i64 %839, 1, !dbg !1959
  store i64 %840, i64* %21, align 8, !dbg !1959
  br label %841, !dbg !1959

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !1960
  %843 = load i64, i64* %31, align 8, !dbg !1961
  %844 = add i64 %843, 1, !dbg !1961
  store i64 %844, i64* %31, align 8, !dbg !1961
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !1960
  %846 = load i8, i8* %845, align 1, !dbg !1960
  store i8 %846, i8* %35, align 1, !dbg !1962
  br label %664, !dbg !1963, !llvm.loop !1964

847:                                              ; preds = %794
  br label %942, !dbg !1967

848:                                              ; preds = %657, %654
  br label %849, !dbg !1968

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !1969
  %851 = trunc i8 %850 to i1, !dbg !1969
  br i1 %851, label %852, label %855, !dbg !1971

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !1972
  %854 = icmp ne i32 %853, 2, !dbg !1973
  br i1 %854, label %858, label %855, !dbg !1974

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !1975
  %857 = trunc i8 %856 to i1, !dbg !1975
  br i1 %857, label %858, label %875, !dbg !1976

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !1977
  %860 = icmp ne i32* %859, null, !dbg !1977
  br i1 %860, label %861, label %875, !dbg !1978

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !1979
  %863 = load i8, i8* %35, align 1, !dbg !1980
  %864 = zext i8 %863 to i64, !dbg !1980
  %865 = udiv i64 %864, 32, !dbg !1981
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !1979
  %867 = load i32, i32* %866, align 4, !dbg !1979
  %868 = load i8, i8* %35, align 1, !dbg !1982
  %869 = zext i8 %868 to i64, !dbg !1982
  %870 = urem i64 %869, 32, !dbg !1983
  %871 = trunc i64 %870 to i32, !dbg !1984
  %872 = lshr i32 %867, %871, !dbg !1984
  %873 = and i32 %872, 1, !dbg !1985
  %874 = icmp ne i32 %873, 0, !dbg !1985
  br i1 %874, label %879, label %875, !dbg !1986

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !1987
  %877 = trunc i8 %876 to i1, !dbg !1987
  br i1 %877, label %879, label %878, !dbg !1988

878:                                              ; preds = %875
  br label %942, !dbg !1989

879:                                              ; preds = %875, %861
  br label %880, !dbg !1987

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !1990), !dbg !1991
  br label %881, !dbg !1992

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !1993
  %883 = trunc i8 %882 to i1, !dbg !1993
  br i1 %883, label %884, label %885, !dbg !1996

884:                                              ; preds = %881
  br label %1078, !dbg !1993

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !1996
  %886 = load i32, i32* %15, align 4, !dbg !1997
  %887 = icmp eq i32 %886, 2, !dbg !1997
  br i1 %887, label %888, label %928, !dbg !1997

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !1997
  %890 = trunc i8 %889 to i1, !dbg !1997
  br i1 %890, label %928, label %891, !dbg !1996

891:                                              ; preds = %888
  br label %892, !dbg !1999

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2001
  %894 = load i64, i64* %12, align 8, !dbg !2001
  %895 = icmp ult i64 %893, %894, !dbg !2001
  br i1 %895, label %896, label %900, !dbg !2004

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2001
  %898 = load i64, i64* %21, align 8, !dbg !2001
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2001
  store i8 39, i8* %899, align 1, !dbg !2001
  br label %900, !dbg !2001

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2004
  %902 = add i64 %901, 1, !dbg !2004
  store i64 %902, i64* %21, align 8, !dbg !2004
  br label %903, !dbg !2004

903:                                              ; preds = %900
  br label %904, !dbg !1999

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2005
  %906 = load i64, i64* %12, align 8, !dbg !2005
  %907 = icmp ult i64 %905, %906, !dbg !2005
  br i1 %907, label %908, label %912, !dbg !2008

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2005
  %910 = load i64, i64* %21, align 8, !dbg !2005
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2005
  store i8 36, i8* %911, align 1, !dbg !2005
  br label %912, !dbg !2005

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2008
  %914 = add i64 %913, 1, !dbg !2008
  store i64 %914, i64* %21, align 8, !dbg !2008
  br label %915, !dbg !2008

915:                                              ; preds = %912
  br label %916, !dbg !1999

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2009
  %918 = load i64, i64* %12, align 8, !dbg !2009
  %919 = icmp ult i64 %917, %918, !dbg !2009
  br i1 %919, label %920, label %924, !dbg !2012

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2009
  %922 = load i64, i64* %21, align 8, !dbg !2009
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2009
  store i8 39, i8* %923, align 1, !dbg !2009
  br label %924, !dbg !2009

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2012
  %926 = add i64 %925, 1, !dbg !2012
  store i64 %926, i64* %21, align 8, !dbg !2012
  br label %927, !dbg !2012

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !1999
  br label %928, !dbg !1999

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !1996

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2013
  %931 = load i64, i64* %12, align 8, !dbg !2013
  %932 = icmp ult i64 %930, %931, !dbg !2013
  br i1 %932, label %933, label %937, !dbg !2016

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2013
  %935 = load i64, i64* %21, align 8, !dbg !2013
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2013
  store i8 92, i8* %936, align 1, !dbg !2013
  br label %937, !dbg !2013

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2016
  %939 = add i64 %938, 1, !dbg !2016
  store i64 %939, i64* %21, align 8, !dbg !2016
  br label %940, !dbg !2016

940:                                              ; preds = %937
  br label %941, !dbg !1996

941:                                              ; preds = %940
  br label %942, !dbg !1996

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2017), !dbg !2018
  br label %943, !dbg !2019

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2020
  %945 = trunc i8 %944 to i1, !dbg !2020
  br i1 %945, label %946, label %974, !dbg !2020

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2020
  %948 = trunc i8 %947 to i1, !dbg !2020
  br i1 %948, label %974, label %949, !dbg !2023

949:                                              ; preds = %946
  br label %950, !dbg !2024

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2026
  %952 = load i64, i64* %12, align 8, !dbg !2026
  %953 = icmp ult i64 %951, %952, !dbg !2026
  br i1 %953, label %954, label %958, !dbg !2029

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2026
  %956 = load i64, i64* %21, align 8, !dbg !2026
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2026
  store i8 39, i8* %957, align 1, !dbg !2026
  br label %958, !dbg !2026

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2029
  %960 = add i64 %959, 1, !dbg !2029
  store i64 %960, i64* %21, align 8, !dbg !2029
  br label %961, !dbg !2029

961:                                              ; preds = %958
  br label %962, !dbg !2024

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2030
  %964 = load i64, i64* %12, align 8, !dbg !2030
  %965 = icmp ult i64 %963, %964, !dbg !2030
  br i1 %965, label %966, label %970, !dbg !2033

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2030
  %968 = load i64, i64* %21, align 8, !dbg !2030
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2030
  store i8 39, i8* %969, align 1, !dbg !2030
  br label %970, !dbg !2030

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2033
  %972 = add i64 %971, 1, !dbg !2033
  store i64 %972, i64* %21, align 8, !dbg !2033
  br label %973, !dbg !2033

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2024
  br label %974, !dbg !2024

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2023

975:                                              ; preds = %974
  br label %976, !dbg !2034

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2035
  %978 = load i64, i64* %12, align 8, !dbg !2035
  %979 = icmp ult i64 %977, %978, !dbg !2035
  br i1 %979, label %980, label %985, !dbg !2038

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2035
  %982 = load i8*, i8** %11, align 8, !dbg !2035
  %983 = load i64, i64* %21, align 8, !dbg !2035
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2035
  store i8 %981, i8* %984, align 1, !dbg !2035
  br label %985, !dbg !2035

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2038
  %987 = add i64 %986, 1, !dbg !2038
  store i64 %987, i64* %21, align 8, !dbg !2038
  br label %988, !dbg !2038

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2039
  %990 = trunc i8 %989 to i1, !dbg !2039
  br i1 %990, label %992, label %991, !dbg !2041

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2042
  br label %992, !dbg !2043

992:                                              ; preds = %991, %988
  br label %993, !dbg !2044

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2045
  %995 = add i64 %994, 1, !dbg !2045
  store i64 %995, i64* %31, align 8, !dbg !2045
  br label %139, !dbg !2046, !llvm.loop !2047

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2049
  %998 = icmp eq i64 %997, 0, !dbg !2051
  br i1 %998, label %999, label %1006, !dbg !2052

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2053
  %1001 = icmp eq i32 %1000, 2, !dbg !2054
  br i1 %1001, label %1002, label %1006, !dbg !2055

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2056
  %1004 = trunc i8 %1003 to i1, !dbg !2056
  br i1 %1004, label %1005, label %1006, !dbg !2057

1005:                                             ; preds = %1002
  br label %1078, !dbg !2058

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2059
  %1008 = icmp eq i32 %1007, 2, !dbg !2061
  br i1 %1008, label %1009, label %1038, !dbg !2062

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2063
  %1011 = trunc i8 %1010 to i1, !dbg !2063
  br i1 %1011, label %1038, label %1012, !dbg !2064

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2065
  %1014 = trunc i8 %1013 to i1, !dbg !2065
  br i1 %1014, label %1015, label %1038, !dbg !2066

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2067
  %1017 = trunc i8 %1016 to i1, !dbg !2067
  br i1 %1017, label %1018, label %1028, !dbg !2070

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2071
  %1020 = load i64, i64* %22, align 8, !dbg !2072
  %1021 = load i8*, i8** %13, align 8, !dbg !2073
  %1022 = load i64, i64* %14, align 8, !dbg !2074
  %1023 = load i32, i32* %16, align 4, !dbg !2075
  %1024 = load i32*, i32** %17, align 8, !dbg !2076
  %1025 = load i8*, i8** %18, align 8, !dbg !2077
  %1026 = load i8*, i8** %19, align 8, !dbg !2078
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2079
  store i64 %1027, i64* %10, align 8, !dbg !2080
  br label %1096, !dbg !2080

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2081
  %1030 = icmp ne i64 %1029, 0, !dbg !2081
  br i1 %1030, label %1036, label %1031, !dbg !2083

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2084
  %1033 = icmp ne i64 %1032, 0, !dbg !2084
  br i1 %1033, label %1034, label %1036, !dbg !2085

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2086
  store i64 %1035, i64* %12, align 8, !dbg !2088
  store i64 0, i64* %21, align 8, !dbg !2089
  br label %51, !dbg !2090

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2091

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2092
  %1040 = icmp ne i8* %1039, null, !dbg !2092
  br i1 %1040, label %1041, label %1068, !dbg !2094

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2095
  %1043 = trunc i8 %1042 to i1, !dbg !2095
  br i1 %1043, label %1068, label %1044, !dbg !2096

1044:                                             ; preds = %1041
  br label %1045, !dbg !2097

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2098
  %1047 = load i8, i8* %1046, align 1, !dbg !2101
  %1048 = icmp ne i8 %1047, 0, !dbg !2102
  br i1 %1048, label %1049, label %1067, !dbg !2102

1049:                                             ; preds = %1045
  br label %1050, !dbg !2103

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2104
  %1052 = load i64, i64* %12, align 8, !dbg !2104
  %1053 = icmp ult i64 %1051, %1052, !dbg !2104
  br i1 %1053, label %1054, label %1060, !dbg !2107

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2104
  %1056 = load i8, i8* %1055, align 1, !dbg !2104
  %1057 = load i8*, i8** %11, align 8, !dbg !2104
  %1058 = load i64, i64* %21, align 8, !dbg !2104
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2104
  store i8 %1056, i8* %1059, align 1, !dbg !2104
  br label %1060, !dbg !2104

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2107
  %1062 = add i64 %1061, 1, !dbg !2107
  store i64 %1062, i64* %21, align 8, !dbg !2107
  br label %1063, !dbg !2107

1063:                                             ; preds = %1060
  br label %1064, !dbg !2107

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2108
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2108
  store i8* %1066, i8** %23, align 8, !dbg !2108
  br label %1045, !dbg !2109, !llvm.loop !2110

1067:                                             ; preds = %1045
  br label %1068, !dbg !2111

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2112
  %1070 = load i64, i64* %12, align 8, !dbg !2114
  %1071 = icmp ult i64 %1069, %1070, !dbg !2115
  br i1 %1071, label %1072, label %1076, !dbg !2116

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2117
  %1074 = load i64, i64* %21, align 8, !dbg !2118
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2117
  store i8 0, i8* %1075, align 1, !dbg !2119
  br label %1076, !dbg !2117

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2120
  store i64 %1077, i64* %10, align 8, !dbg !2121
  br label %1096, !dbg !2121

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2122), !dbg !2123
  %1079 = load i32, i32* %15, align 4, !dbg !2124
  %1080 = icmp eq i32 %1079, 2, !dbg !2126
  br i1 %1080, label %1081, label %1085, !dbg !2127

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2128
  %1083 = trunc i8 %1082 to i1, !dbg !2128
  br i1 %1083, label %1084, label %1085, !dbg !2129

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2130
  br label %1085, !dbg !2131

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2132
  %1087 = load i64, i64* %12, align 8, !dbg !2133
  %1088 = load i8*, i8** %13, align 8, !dbg !2134
  %1089 = load i64, i64* %14, align 8, !dbg !2135
  %1090 = load i32, i32* %15, align 4, !dbg !2136
  %1091 = load i32, i32* %16, align 4, !dbg !2137
  %1092 = and i32 %1091, -3, !dbg !2138
  %1093 = load i8*, i8** %18, align 8, !dbg !2139
  %1094 = load i8*, i8** %19, align 8, !dbg !2140
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2141
  store i64 %1095, i64* %10, align 8, !dbg !2142
  br label %1096, !dbg !2142

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2143
  ret i64 %1097, !dbg !2143
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !176 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2144, metadata !DIExpression()), !dbg !2145
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2146, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2148, metadata !DIExpression()), !dbg !2149
  %9 = load i8*, i8** %4, align 8, !dbg !2150
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.95, i64 0, i64 0), i8* noundef %9) #18, !dbg !2150
  store i8* %10, i8** %6, align 8, !dbg !2149
  %11 = load i8*, i8** %6, align 8, !dbg !2151
  %12 = load i8*, i8** %4, align 8, !dbg !2153
  %13 = icmp ne i8* %11, %12, !dbg !2154
  br i1 %13, label %14, label %16, !dbg !2155

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2156
  store i8* %15, i8** %3, align 8, !dbg !2157
  br label %37, !dbg !2157

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2158, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2160, metadata !DIExpression()), !dbg !2161
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2162
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2163
  %18 = icmp eq i64 %17, 3, !dbg !2165
  br i1 %18, label %19, label %32, !dbg !2166

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2167
  %21 = icmp eq i32 %20, 8216, !dbg !2168
  br i1 %21, label %22, label %32, !dbg !2169

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2170
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2170
  %25 = load i8, i8* %24, align 1, !dbg !2170
  %26 = zext i8 %25 to i32, !dbg !2170
  %27 = icmp eq i32 %26, 39, !dbg !2171
  %28 = zext i1 %27 to i32, !dbg !2171
  %29 = sext i32 %28 to i64, !dbg !2172
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2172
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2172
  store i8* %31, i8** %3, align 8, !dbg !2173
  br label %37, !dbg !2173

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2174
  %34 = icmp eq i32 %33, 9, !dbg !2175
  %35 = zext i1 %34 to i64, !dbg !2174
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.92, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), !dbg !2174
  store i8* %36, i8** %3, align 8, !dbg !2176
  br label %37, !dbg !2176

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2177
  ret i8* %38, !dbg !2177
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2178 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2181, metadata !DIExpression()), !dbg !2182
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2183, metadata !DIExpression()), !dbg !2184
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2185, metadata !DIExpression()), !dbg !2186
  %7 = load i8*, i8** %4, align 8, !dbg !2187
  %8 = load i64, i64* %5, align 8, !dbg !2188
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2189
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2190
  ret i8* %10, !dbg !2191
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2192 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2195, metadata !DIExpression()), !dbg !2196
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2197, metadata !DIExpression()), !dbg !2198
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2199, metadata !DIExpression()), !dbg !2200
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2201, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2203, metadata !DIExpression()), !dbg !2204
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2205
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2205
  br i1 %15, label %16, label %18, !dbg !2205

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2206
  br label %19, !dbg !2205

18:                                               ; preds = %4
  br label %19, !dbg !2205

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2205
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2204
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2207, metadata !DIExpression()), !dbg !2208
  %21 = call i32* @__errno_location() #21, !dbg !2209
  %22 = load i32, i32* %21, align 4, !dbg !2209
  store i32 %22, i32* %10, align 4, !dbg !2208
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2210, metadata !DIExpression()), !dbg !2211
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2212
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2213
  %25 = load i32, i32* %24, align 4, !dbg !2213
  %26 = load i64*, i64** %7, align 8, !dbg !2214
  %27 = icmp ne i64* %26, null, !dbg !2214
  %28 = zext i1 %27 to i64, !dbg !2214
  %29 = select i1 %27, i32 0, i32 1, !dbg !2214
  %30 = or i32 %25, %29, !dbg !2215
  store i32 %30, i32* %11, align 4, !dbg !2211
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2216, metadata !DIExpression()), !dbg !2217
  %31 = load i8*, i8** %5, align 8, !dbg !2218
  %32 = load i64, i64* %6, align 8, !dbg !2219
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2220
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2221
  %35 = load i32, i32* %34, align 8, !dbg !2221
  %36 = load i32, i32* %11, align 4, !dbg !2222
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2223
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2224
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2223
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2225
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2226
  %42 = load i8*, i8** %41, align 8, !dbg !2226
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2227
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2228
  %45 = load i8*, i8** %44, align 8, !dbg !2228
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2229
  %47 = add i64 %46, 1, !dbg !2230
  store i64 %47, i64* %12, align 8, !dbg !2217
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2231, metadata !DIExpression()), !dbg !2232
  %48 = load i64, i64* %12, align 8, !dbg !2233
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2234
  store i8* %49, i8** %13, align 8, !dbg !2232
  %50 = load i8*, i8** %13, align 8, !dbg !2235
  %51 = load i64, i64* %12, align 8, !dbg !2236
  %52 = load i8*, i8** %5, align 8, !dbg !2237
  %53 = load i64, i64* %6, align 8, !dbg !2238
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2239
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2240
  %56 = load i32, i32* %55, align 8, !dbg !2240
  %57 = load i32, i32* %11, align 4, !dbg !2241
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2242
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2243
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2242
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2244
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2245
  %63 = load i8*, i8** %62, align 8, !dbg !2245
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2246
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2247
  %66 = load i8*, i8** %65, align 8, !dbg !2247
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2248
  %68 = load i32, i32* %10, align 4, !dbg !2249
  %69 = call i32* @__errno_location() #21, !dbg !2250
  store i32 %68, i32* %69, align 4, !dbg !2251
  %70 = load i64*, i64** %7, align 8, !dbg !2252
  %71 = icmp ne i64* %70, null, !dbg !2252
  br i1 %71, label %72, label %76, !dbg !2254

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2255
  %74 = sub i64 %73, 1, !dbg !2256
  %75 = load i64*, i64** %7, align 8, !dbg !2257
  store i64 %74, i64* %75, align 8, !dbg !2258
  br label %76, !dbg !2259

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2260
  ret i8* %77, !dbg !2261
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2262 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2263, metadata !DIExpression()), !dbg !2264
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2265
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2264
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2266, metadata !DIExpression()), !dbg !2268
  store i32 1, i32* %2, align 4, !dbg !2268
  br label %4, !dbg !2269

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2270
  %6 = load i32, i32* @nslots, align 4, !dbg !2272
  %7 = icmp slt i32 %5, %6, !dbg !2273
  br i1 %7, label %8, label %18, !dbg !2274

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2275
  %10 = load i32, i32* %2, align 4, !dbg !2276
  %11 = sext i32 %10 to i64, !dbg !2275
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2275
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2277
  %14 = load i8*, i8** %13, align 8, !dbg !2277
  call void @free(i8* noundef %14) #18, !dbg !2278
  br label %15, !dbg !2278

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2279
  %17 = add nsw i32 %16, 1, !dbg !2279
  store i32 %17, i32* %2, align 4, !dbg !2279
  br label %4, !dbg !2280, !llvm.loop !2281

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2283
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2283
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2285
  %22 = load i8*, i8** %21, align 8, !dbg !2285
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2286
  br i1 %23, label %24, label %29, !dbg !2287

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2288
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2288
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2290
  %28 = load i8*, i8** %27, align 8, !dbg !2290
  call void @free(i8* noundef %28) #18, !dbg !2291
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2292
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2293
  br label %29, !dbg !2294

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2295
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2297
  br i1 %31, label %32, label %35, !dbg !2298

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2299
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2299
  call void @free(i8* noundef %34) #18, !dbg !2301
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2302
  br label %35, !dbg !2303

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2304
  ret void, !dbg !2305
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2306 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2309, metadata !DIExpression()), !dbg !2310
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2311, metadata !DIExpression()), !dbg !2312
  %5 = load i32, i32* %3, align 4, !dbg !2313
  %6 = load i8*, i8** %4, align 8, !dbg !2314
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2315
  ret i8* %7, !dbg !2316
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2317 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2320, metadata !DIExpression()), !dbg !2321
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2322, metadata !DIExpression()), !dbg !2323
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2324, metadata !DIExpression()), !dbg !2325
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2326, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2328, metadata !DIExpression()), !dbg !2329
  %18 = call i32* @__errno_location() #21, !dbg !2330
  %19 = load i32, i32* %18, align 4, !dbg !2330
  store i32 %19, i32* %9, align 4, !dbg !2329
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2331, metadata !DIExpression()), !dbg !2332
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2333
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2332
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2334, metadata !DIExpression()), !dbg !2335
  store i32 2147483647, i32* %11, align 4, !dbg !2335
  %21 = load i32, i32* %5, align 4, !dbg !2336
  %22 = icmp sle i32 0, %21, !dbg !2338
  br i1 %22, label %23, label %27, !dbg !2339

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2340
  %25 = load i32, i32* %11, align 4, !dbg !2341
  %26 = icmp slt i32 %24, %25, !dbg !2342
  br i1 %26, label %28, label %27, !dbg !2343

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2344
  unreachable, !dbg !2344

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2345
  %30 = load i32, i32* %5, align 4, !dbg !2347
  %31 = icmp sle i32 %29, %30, !dbg !2348
  br i1 %31, label %32, label %73, !dbg !2349

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2350, metadata !DIExpression()), !dbg !2352
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2353
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2354
  %35 = zext i1 %34 to i8, !dbg !2352
  store i8 %35, i8* %12, align 1, !dbg !2352
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2355, metadata !DIExpression()), !dbg !2356
  %36 = load i32, i32* @nslots, align 4, !dbg !2357
  %37 = sext i32 %36 to i64, !dbg !2357
  store i64 %37, i64* %13, align 8, !dbg !2356
  %38 = load i8, i8* %12, align 1, !dbg !2358
  %39 = trunc i8 %38 to i1, !dbg !2358
  br i1 %39, label %40, label %41, !dbg !2358

40:                                               ; preds = %32
  br label %43, !dbg !2358

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2359
  br label %43, !dbg !2358

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2358
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2358
  %46 = load i32, i32* %5, align 4, !dbg !2360
  %47 = load i32, i32* @nslots, align 4, !dbg !2361
  %48 = sub nsw i32 %46, %47, !dbg !2362
  %49 = add nsw i32 %48, 1, !dbg !2363
  %50 = sext i32 %49 to i64, !dbg !2360
  %51 = load i32, i32* %11, align 4, !dbg !2364
  %52 = sext i32 %51 to i64, !dbg !2364
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2365
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2365
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2366
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2367
  %55 = load i8, i8* %12, align 1, !dbg !2368
  %56 = trunc i8 %55 to i1, !dbg !2368
  br i1 %56, label %57, label %60, !dbg !2370

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2371
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2372
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2372
  br label %60, !dbg !2373

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2374
  %62 = load i32, i32* @nslots, align 4, !dbg !2375
  %63 = sext i32 %62 to i64, !dbg !2376
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2376
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2377
  %66 = load i64, i64* %13, align 8, !dbg !2378
  %67 = load i32, i32* @nslots, align 4, !dbg !2379
  %68 = sext i32 %67 to i64, !dbg !2379
  %69 = sub nsw i64 %66, %68, !dbg !2380
  %70 = mul i64 %69, 16, !dbg !2381
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2377
  %71 = load i64, i64* %13, align 8, !dbg !2382
  %72 = trunc i64 %71 to i32, !dbg !2382
  store i32 %72, i32* @nslots, align 4, !dbg !2383
  br label %73, !dbg !2384

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2385, metadata !DIExpression()), !dbg !2387
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2388
  %75 = load i32, i32* %5, align 4, !dbg !2389
  %76 = sext i32 %75 to i64, !dbg !2388
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2388
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2390
  %79 = load i64, i64* %78, align 8, !dbg !2390
  store i64 %79, i64* %14, align 8, !dbg !2387
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2391, metadata !DIExpression()), !dbg !2392
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2393
  %81 = load i32, i32* %5, align 4, !dbg !2394
  %82 = sext i32 %81 to i64, !dbg !2393
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2393
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2395
  %85 = load i8*, i8** %84, align 8, !dbg !2395
  store i8* %85, i8** %15, align 8, !dbg !2392
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2396, metadata !DIExpression()), !dbg !2397
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2398
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2399
  %88 = load i32, i32* %87, align 4, !dbg !2399
  %89 = or i32 %88, 1, !dbg !2400
  store i32 %89, i32* %16, align 4, !dbg !2397
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2401, metadata !DIExpression()), !dbg !2402
  %90 = load i8*, i8** %15, align 8, !dbg !2403
  %91 = load i64, i64* %14, align 8, !dbg !2404
  %92 = load i8*, i8** %6, align 8, !dbg !2405
  %93 = load i64, i64* %7, align 8, !dbg !2406
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2407
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2408
  %96 = load i32, i32* %95, align 8, !dbg !2408
  %97 = load i32, i32* %16, align 4, !dbg !2409
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2410
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2411
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2410
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2412
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2413
  %103 = load i8*, i8** %102, align 8, !dbg !2413
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2414
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2415
  %106 = load i8*, i8** %105, align 8, !dbg !2415
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2416
  store i64 %107, i64* %17, align 8, !dbg !2402
  %108 = load i64, i64* %14, align 8, !dbg !2417
  %109 = load i64, i64* %17, align 8, !dbg !2419
  %110 = icmp ule i64 %108, %109, !dbg !2420
  br i1 %110, label %111, label %149, !dbg !2421

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2422
  %113 = add i64 %112, 1, !dbg !2424
  store i64 %113, i64* %14, align 8, !dbg !2425
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2426
  %115 = load i32, i32* %5, align 4, !dbg !2427
  %116 = sext i32 %115 to i64, !dbg !2426
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2426
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2428
  store i64 %113, i64* %118, align 8, !dbg !2429
  %119 = load i8*, i8** %15, align 8, !dbg !2430
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2432
  br i1 %120, label %121, label %123, !dbg !2433

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2434
  call void @free(i8* noundef %122) #18, !dbg !2435
  br label %123, !dbg !2435

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2436
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2437
  store i8* %125, i8** %15, align 8, !dbg !2438
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2439
  %127 = load i32, i32* %5, align 4, !dbg !2440
  %128 = sext i32 %127 to i64, !dbg !2439
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2439
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2441
  store i8* %125, i8** %130, align 8, !dbg !2442
  %131 = load i8*, i8** %15, align 8, !dbg !2443
  %132 = load i64, i64* %14, align 8, !dbg !2444
  %133 = load i8*, i8** %6, align 8, !dbg !2445
  %134 = load i64, i64* %7, align 8, !dbg !2446
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2447
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2448
  %137 = load i32, i32* %136, align 8, !dbg !2448
  %138 = load i32, i32* %16, align 4, !dbg !2449
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2450
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2451
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2450
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2452
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2453
  %144 = load i8*, i8** %143, align 8, !dbg !2453
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2454
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2455
  %147 = load i8*, i8** %146, align 8, !dbg !2455
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2456
  br label %149, !dbg !2457

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2458
  %151 = call i32* @__errno_location() #21, !dbg !2459
  store i32 %150, i32* %151, align 4, !dbg !2460
  %152 = load i8*, i8** %15, align 8, !dbg !2461
  ret i8* %152, !dbg !2462
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2463 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2466, metadata !DIExpression()), !dbg !2467
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2468, metadata !DIExpression()), !dbg !2469
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2470, metadata !DIExpression()), !dbg !2471
  %7 = load i32, i32* %4, align 4, !dbg !2472
  %8 = load i8*, i8** %5, align 8, !dbg !2473
  %9 = load i64, i64* %6, align 8, !dbg !2474
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2475
  ret i8* %10, !dbg !2476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2477 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2480, metadata !DIExpression()), !dbg !2481
  %3 = load i8*, i8** %2, align 8, !dbg !2482
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2483
  ret i8* %4, !dbg !2484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2485 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2488, metadata !DIExpression()), !dbg !2489
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2490, metadata !DIExpression()), !dbg !2491
  %5 = load i8*, i8** %3, align 8, !dbg !2492
  %6 = load i64, i64* %4, align 8, !dbg !2493
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2494
  ret i8* %7, !dbg !2495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2496 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2499, metadata !DIExpression()), !dbg !2500
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2501, metadata !DIExpression()), !dbg !2502
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2503, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2505, metadata !DIExpression()), !dbg !2506
  %8 = load i32, i32* %5, align 4, !dbg !2507
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2508
  %9 = load i32, i32* %4, align 4, !dbg !2509
  %10 = load i8*, i8** %6, align 8, !dbg !2510
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2511
  ret i8* %11, !dbg !2512
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2513 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2516, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2518, metadata !DIExpression()), !dbg !2519
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2519
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2519
  %5 = load i32, i32* %3, align 4, !dbg !2520
  %6 = icmp eq i32 %5, 10, !dbg !2522
  br i1 %6, label %7, label %8, !dbg !2523

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2524
  unreachable, !dbg !2524

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2525
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2526
  store i32 %9, i32* %10, align 8, !dbg !2527
  ret void, !dbg !2528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2529 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2532, metadata !DIExpression()), !dbg !2533
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2534, metadata !DIExpression()), !dbg !2535
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2536, metadata !DIExpression()), !dbg !2537
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2538, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2540, metadata !DIExpression()), !dbg !2541
  %10 = load i32, i32* %6, align 4, !dbg !2542
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2543
  %11 = load i32, i32* %5, align 4, !dbg !2544
  %12 = load i8*, i8** %7, align 8, !dbg !2545
  %13 = load i64, i64* %8, align 8, !dbg !2546
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2547
  ret i8* %14, !dbg !2548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2549 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2552, metadata !DIExpression()), !dbg !2553
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2554, metadata !DIExpression()), !dbg !2555
  %5 = load i32, i32* %3, align 4, !dbg !2556
  %6 = load i8*, i8** %4, align 8, !dbg !2557
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2558
  ret i8* %7, !dbg !2559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2560 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2563, metadata !DIExpression()), !dbg !2564
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2565, metadata !DIExpression()), !dbg !2566
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2567, metadata !DIExpression()), !dbg !2568
  %7 = load i32, i32* %4, align 4, !dbg !2569
  %8 = load i8*, i8** %5, align 8, !dbg !2570
  %9 = load i64, i64* %6, align 8, !dbg !2571
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2572
  ret i8* %10, !dbg !2573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2574 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2577, metadata !DIExpression()), !dbg !2578
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2579, metadata !DIExpression()), !dbg !2580
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2581, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2583, metadata !DIExpression()), !dbg !2584
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2585
  %9 = load i8, i8* %6, align 1, !dbg !2586
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2587
  %11 = load i8*, i8** %4, align 8, !dbg !2588
  %12 = load i64, i64* %5, align 8, !dbg !2589
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2590
  ret i8* %13, !dbg !2591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2592 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2595, metadata !DIExpression()), !dbg !2596
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2597, metadata !DIExpression()), !dbg !2598
  %5 = load i8*, i8** %3, align 8, !dbg !2599
  %6 = load i8, i8* %4, align 1, !dbg !2600
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2601
  ret i8* %7, !dbg !2602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2603 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2604, metadata !DIExpression()), !dbg !2605
  %3 = load i8*, i8** %2, align 8, !dbg !2606
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2607
  ret i8* %4, !dbg !2608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2609 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2610, metadata !DIExpression()), !dbg !2611
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2612, metadata !DIExpression()), !dbg !2613
  %5 = load i8*, i8** %3, align 8, !dbg !2614
  %6 = load i64, i64* %4, align 8, !dbg !2615
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2616
  ret i8* %7, !dbg !2617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2618 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2619, metadata !DIExpression()), !dbg !2620
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2621, metadata !DIExpression()), !dbg !2622
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2623, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2625, metadata !DIExpression()), !dbg !2626
  %9 = load i32, i32* %5, align 4, !dbg !2627
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2628
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2628
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2628
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2628
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2629
  %13 = load i32, i32* %4, align 4, !dbg !2630
  %14 = load i8*, i8** %6, align 8, !dbg !2631
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2632
  ret i8* %15, !dbg !2633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2634 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2637, metadata !DIExpression()), !dbg !2638
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2639, metadata !DIExpression()), !dbg !2640
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2641, metadata !DIExpression()), !dbg !2642
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2643, metadata !DIExpression()), !dbg !2644
  %9 = load i32, i32* %5, align 4, !dbg !2645
  %10 = load i8*, i8** %6, align 8, !dbg !2646
  %11 = load i8*, i8** %7, align 8, !dbg !2647
  %12 = load i8*, i8** %8, align 8, !dbg !2648
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2649
  ret i8* %13, !dbg !2650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2651 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2654, metadata !DIExpression()), !dbg !2655
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2656, metadata !DIExpression()), !dbg !2657
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2658, metadata !DIExpression()), !dbg !2659
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2660, metadata !DIExpression()), !dbg !2661
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2662, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2664, metadata !DIExpression()), !dbg !2665
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2666
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2666
  %13 = load i8*, i8** %7, align 8, !dbg !2667
  %14 = load i8*, i8** %8, align 8, !dbg !2668
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2669
  %15 = load i32, i32* %6, align 4, !dbg !2670
  %16 = load i8*, i8** %9, align 8, !dbg !2671
  %17 = load i64, i64* %10, align 8, !dbg !2672
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2673
  ret i8* %18, !dbg !2674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2675 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2678, metadata !DIExpression()), !dbg !2679
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2680, metadata !DIExpression()), !dbg !2681
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2682, metadata !DIExpression()), !dbg !2683
  %7 = load i8*, i8** %4, align 8, !dbg !2684
  %8 = load i8*, i8** %5, align 8, !dbg !2685
  %9 = load i8*, i8** %6, align 8, !dbg !2686
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2687
  ret i8* %10, !dbg !2688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2689 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2692, metadata !DIExpression()), !dbg !2693
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2694, metadata !DIExpression()), !dbg !2695
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2696, metadata !DIExpression()), !dbg !2697
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2698, metadata !DIExpression()), !dbg !2699
  %9 = load i8*, i8** %5, align 8, !dbg !2700
  %10 = load i8*, i8** %6, align 8, !dbg !2701
  %11 = load i8*, i8** %7, align 8, !dbg !2702
  %12 = load i64, i64* %8, align 8, !dbg !2703
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2704
  ret i8* %13, !dbg !2705
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2706 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2709, metadata !DIExpression()), !dbg !2710
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2711, metadata !DIExpression()), !dbg !2712
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2713, metadata !DIExpression()), !dbg !2714
  %7 = load i32, i32* %4, align 4, !dbg !2715
  %8 = load i8*, i8** %5, align 8, !dbg !2716
  %9 = load i64, i64* %6, align 8, !dbg !2717
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2718
  ret i8* %10, !dbg !2719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2720 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2723, metadata !DIExpression()), !dbg !2724
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2725, metadata !DIExpression()), !dbg !2726
  %5 = load i8*, i8** %3, align 8, !dbg !2727
  %6 = load i64, i64* %4, align 8, !dbg !2728
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2729
  ret i8* %7, !dbg !2730
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2731 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2734, metadata !DIExpression()), !dbg !2735
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2736, metadata !DIExpression()), !dbg !2737
  %5 = load i32, i32* %3, align 4, !dbg !2738
  %6 = load i8*, i8** %4, align 8, !dbg !2739
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2740
  ret i8* %7, !dbg !2741
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !2742 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2745, metadata !DIExpression()), !dbg !2746
  %3 = load i8*, i8** %2, align 8, !dbg !2747
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !2748
  ret i8* %4, !dbg !2749
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !2750 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2754, metadata !DIExpression()), !dbg !2755
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2756, metadata !DIExpression()), !dbg !2757
  %5 = load i8*, i8** %3, align 8, !dbg !2758
  %6 = load i8*, i8** %4, align 8, !dbg !2759
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !2760
  %8 = icmp ne i32 %7, 0, !dbg !2761
  %9 = xor i1 %8, true, !dbg !2761
  ret i1 %9, !dbg !2762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !2763 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !2820, metadata !DIExpression()), !dbg !2821
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2822, metadata !DIExpression()), !dbg !2823
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2824, metadata !DIExpression()), !dbg !2825
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2826, metadata !DIExpression()), !dbg !2827
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2828, metadata !DIExpression()), !dbg !2829
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2830, metadata !DIExpression()), !dbg !2831
  %13 = load i8*, i8** %8, align 8, !dbg !2832
  %14 = icmp ne i8* %13, null, !dbg !2832
  br i1 %14, label %15, label %21, !dbg !2834

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2835
  %17 = load i8*, i8** %8, align 8, !dbg !2836
  %18 = load i8*, i8** %9, align 8, !dbg !2837
  %19 = load i8*, i8** %10, align 8, !dbg !2838
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !2839
  br label %26, !dbg !2839

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2840
  %23 = load i8*, i8** %9, align 8, !dbg !2841
  %24 = load i8*, i8** %10, align 8, !dbg !2842
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.103, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !2843
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2844
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.105, i64 0, i64 0)) #18, !dbg !2845
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !2846
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2847
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.106, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !2847
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2848
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.107, i64 0, i64 0)) #18, !dbg !2849
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.108, i64 0, i64 0)), !dbg !2850
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2851
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.106, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !2851
  %37 = load i64, i64* %12, align 8, !dbg !2852
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
  ], !dbg !2853

38:                                               ; preds = %26
  br label %241, !dbg !2854

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2856
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.109, i64 0, i64 0)) #18, !dbg !2857
  %42 = load i8**, i8*** %11, align 8, !dbg !2858
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !2858
  %44 = load i8*, i8** %43, align 8, !dbg !2858
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !2859
  br label %241, !dbg !2860

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2861
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.110, i64 0, i64 0)) #18, !dbg !2862
  %49 = load i8**, i8*** %11, align 8, !dbg !2863
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !2863
  %51 = load i8*, i8** %50, align 8, !dbg !2863
  %52 = load i8**, i8*** %11, align 8, !dbg !2864
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !2864
  %54 = load i8*, i8** %53, align 8, !dbg !2864
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !2865
  br label %241, !dbg !2866

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2867
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.111, i64 0, i64 0)) #18, !dbg !2868
  %59 = load i8**, i8*** %11, align 8, !dbg !2869
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !2869
  %61 = load i8*, i8** %60, align 8, !dbg !2869
  %62 = load i8**, i8*** %11, align 8, !dbg !2870
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !2870
  %64 = load i8*, i8** %63, align 8, !dbg !2870
  %65 = load i8**, i8*** %11, align 8, !dbg !2871
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !2871
  %67 = load i8*, i8** %66, align 8, !dbg !2871
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !2872
  br label %241, !dbg !2873

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2874
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.112, i64 0, i64 0)) #18, !dbg !2875
  %72 = load i8**, i8*** %11, align 8, !dbg !2876
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !2876
  %74 = load i8*, i8** %73, align 8, !dbg !2876
  %75 = load i8**, i8*** %11, align 8, !dbg !2877
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !2877
  %77 = load i8*, i8** %76, align 8, !dbg !2877
  %78 = load i8**, i8*** %11, align 8, !dbg !2878
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !2878
  %80 = load i8*, i8** %79, align 8, !dbg !2878
  %81 = load i8**, i8*** %11, align 8, !dbg !2879
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !2879
  %83 = load i8*, i8** %82, align 8, !dbg !2879
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !2880
  br label %241, !dbg !2881

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2882
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.113, i64 0, i64 0)) #18, !dbg !2883
  %88 = load i8**, i8*** %11, align 8, !dbg !2884
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !2884
  %90 = load i8*, i8** %89, align 8, !dbg !2884
  %91 = load i8**, i8*** %11, align 8, !dbg !2885
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !2885
  %93 = load i8*, i8** %92, align 8, !dbg !2885
  %94 = load i8**, i8*** %11, align 8, !dbg !2886
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !2886
  %96 = load i8*, i8** %95, align 8, !dbg !2886
  %97 = load i8**, i8*** %11, align 8, !dbg !2887
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !2887
  %99 = load i8*, i8** %98, align 8, !dbg !2887
  %100 = load i8**, i8*** %11, align 8, !dbg !2888
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !2888
  %102 = load i8*, i8** %101, align 8, !dbg !2888
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !2889
  br label %241, !dbg !2890

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2891
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.114, i64 0, i64 0)) #18, !dbg !2892
  %107 = load i8**, i8*** %11, align 8, !dbg !2893
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !2893
  %109 = load i8*, i8** %108, align 8, !dbg !2893
  %110 = load i8**, i8*** %11, align 8, !dbg !2894
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !2894
  %112 = load i8*, i8** %111, align 8, !dbg !2894
  %113 = load i8**, i8*** %11, align 8, !dbg !2895
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !2895
  %115 = load i8*, i8** %114, align 8, !dbg !2895
  %116 = load i8**, i8*** %11, align 8, !dbg !2896
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !2896
  %118 = load i8*, i8** %117, align 8, !dbg !2896
  %119 = load i8**, i8*** %11, align 8, !dbg !2897
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !2897
  %121 = load i8*, i8** %120, align 8, !dbg !2897
  %122 = load i8**, i8*** %11, align 8, !dbg !2898
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !2898
  %124 = load i8*, i8** %123, align 8, !dbg !2898
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !2899
  br label %241, !dbg !2900

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2901
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.115, i64 0, i64 0)) #18, !dbg !2902
  %129 = load i8**, i8*** %11, align 8, !dbg !2903
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !2903
  %131 = load i8*, i8** %130, align 8, !dbg !2903
  %132 = load i8**, i8*** %11, align 8, !dbg !2904
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !2904
  %134 = load i8*, i8** %133, align 8, !dbg !2904
  %135 = load i8**, i8*** %11, align 8, !dbg !2905
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !2905
  %137 = load i8*, i8** %136, align 8, !dbg !2905
  %138 = load i8**, i8*** %11, align 8, !dbg !2906
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !2906
  %140 = load i8*, i8** %139, align 8, !dbg !2906
  %141 = load i8**, i8*** %11, align 8, !dbg !2907
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !2907
  %143 = load i8*, i8** %142, align 8, !dbg !2907
  %144 = load i8**, i8*** %11, align 8, !dbg !2908
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !2908
  %146 = load i8*, i8** %145, align 8, !dbg !2908
  %147 = load i8**, i8*** %11, align 8, !dbg !2909
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !2909
  %149 = load i8*, i8** %148, align 8, !dbg !2909
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !2910
  br label %241, !dbg !2911

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2912
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.116, i64 0, i64 0)) #18, !dbg !2913
  %154 = load i8**, i8*** %11, align 8, !dbg !2914
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !2914
  %156 = load i8*, i8** %155, align 8, !dbg !2914
  %157 = load i8**, i8*** %11, align 8, !dbg !2915
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !2915
  %159 = load i8*, i8** %158, align 8, !dbg !2915
  %160 = load i8**, i8*** %11, align 8, !dbg !2916
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !2916
  %162 = load i8*, i8** %161, align 8, !dbg !2916
  %163 = load i8**, i8*** %11, align 8, !dbg !2917
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !2917
  %165 = load i8*, i8** %164, align 8, !dbg !2917
  %166 = load i8**, i8*** %11, align 8, !dbg !2918
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !2918
  %168 = load i8*, i8** %167, align 8, !dbg !2918
  %169 = load i8**, i8*** %11, align 8, !dbg !2919
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !2919
  %171 = load i8*, i8** %170, align 8, !dbg !2919
  %172 = load i8**, i8*** %11, align 8, !dbg !2920
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !2920
  %174 = load i8*, i8** %173, align 8, !dbg !2920
  %175 = load i8**, i8*** %11, align 8, !dbg !2921
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !2921
  %177 = load i8*, i8** %176, align 8, !dbg !2921
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !2922
  br label %241, !dbg !2923

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2924
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.117, i64 0, i64 0)) #18, !dbg !2925
  %182 = load i8**, i8*** %11, align 8, !dbg !2926
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !2926
  %184 = load i8*, i8** %183, align 8, !dbg !2926
  %185 = load i8**, i8*** %11, align 8, !dbg !2927
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !2927
  %187 = load i8*, i8** %186, align 8, !dbg !2927
  %188 = load i8**, i8*** %11, align 8, !dbg !2928
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !2928
  %190 = load i8*, i8** %189, align 8, !dbg !2928
  %191 = load i8**, i8*** %11, align 8, !dbg !2929
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !2929
  %193 = load i8*, i8** %192, align 8, !dbg !2929
  %194 = load i8**, i8*** %11, align 8, !dbg !2930
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !2930
  %196 = load i8*, i8** %195, align 8, !dbg !2930
  %197 = load i8**, i8*** %11, align 8, !dbg !2931
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !2931
  %199 = load i8*, i8** %198, align 8, !dbg !2931
  %200 = load i8**, i8*** %11, align 8, !dbg !2932
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !2932
  %202 = load i8*, i8** %201, align 8, !dbg !2932
  %203 = load i8**, i8*** %11, align 8, !dbg !2933
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !2933
  %205 = load i8*, i8** %204, align 8, !dbg !2933
  %206 = load i8**, i8*** %11, align 8, !dbg !2934
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !2934
  %208 = load i8*, i8** %207, align 8, !dbg !2934
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !2935
  br label %241, !dbg !2936

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2937
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.118, i64 0, i64 0)) #18, !dbg !2938
  %213 = load i8**, i8*** %11, align 8, !dbg !2939
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !2939
  %215 = load i8*, i8** %214, align 8, !dbg !2939
  %216 = load i8**, i8*** %11, align 8, !dbg !2940
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !2940
  %218 = load i8*, i8** %217, align 8, !dbg !2940
  %219 = load i8**, i8*** %11, align 8, !dbg !2941
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !2941
  %221 = load i8*, i8** %220, align 8, !dbg !2941
  %222 = load i8**, i8*** %11, align 8, !dbg !2942
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !2942
  %224 = load i8*, i8** %223, align 8, !dbg !2942
  %225 = load i8**, i8*** %11, align 8, !dbg !2943
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !2943
  %227 = load i8*, i8** %226, align 8, !dbg !2943
  %228 = load i8**, i8*** %11, align 8, !dbg !2944
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !2944
  %230 = load i8*, i8** %229, align 8, !dbg !2944
  %231 = load i8**, i8*** %11, align 8, !dbg !2945
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !2945
  %233 = load i8*, i8** %232, align 8, !dbg !2945
  %234 = load i8**, i8*** %11, align 8, !dbg !2946
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !2946
  %236 = load i8*, i8** %235, align 8, !dbg !2946
  %237 = load i8**, i8*** %11, align 8, !dbg !2947
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !2947
  %239 = load i8*, i8** %238, align 8, !dbg !2947
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !2948
  br label %241, !dbg !2949

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !2950
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !2951 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2954, metadata !DIExpression()), !dbg !2955
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2956, metadata !DIExpression()), !dbg !2957
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2958, metadata !DIExpression()), !dbg !2959
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2960, metadata !DIExpression()), !dbg !2961
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !2962, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2964, metadata !DIExpression()), !dbg !2965
  store i64 0, i64* %11, align 8, !dbg !2966
  br label %12, !dbg !2968

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !2969
  %14 = load i64, i64* %11, align 8, !dbg !2971
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !2969
  %16 = load i8*, i8** %15, align 8, !dbg !2969
  %17 = icmp ne i8* %16, null, !dbg !2972
  br i1 %17, label %18, label %22, !dbg !2972

18:                                               ; preds = %12
  br label %19, !dbg !2972

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !2973
  %21 = add i64 %20, 1, !dbg !2973
  store i64 %21, i64* %11, align 8, !dbg !2973
  br label %12, !dbg !2974, !llvm.loop !2975

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2977
  %24 = load i8*, i8** %7, align 8, !dbg !2978
  %25 = load i8*, i8** %8, align 8, !dbg !2979
  %26 = load i8*, i8** %9, align 8, !dbg !2980
  %27 = load i8**, i8*** %10, align 8, !dbg !2981
  %28 = load i64, i64* %11, align 8, !dbg !2982
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !2983
  ret void, !dbg !2984
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !2985 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2999, metadata !DIExpression()), !dbg !3000
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3001, metadata !DIExpression()), !dbg !3002
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3003, metadata !DIExpression()), !dbg !3004
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3007, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3009, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3011, metadata !DIExpression()), !dbg !3013
  store i64 0, i64* %10, align 8, !dbg !3014
  br label %12, !dbg !3016

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3017
  %14 = icmp ult i64 %13, 10, !dbg !3019
  br i1 %14, label %15, label %38, !dbg !3020

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3021
  %17 = load i32, i32* %16, align 8, !dbg !3021
  %18 = icmp sge i32 %17, 0, !dbg !3021
  br i1 %18, label %27, label %19, !dbg !3021

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3021
  store i32 %20, i32* %16, align 8, !dbg !3021
  %21 = icmp sle i32 %20, 0, !dbg !3021
  br i1 %21, label %22, label %27, !dbg !3021

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3021
  %24 = load i8*, i8** %23, align 8, !dbg !3021
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3021
  %26 = bitcast i8* %25 to i8**, !dbg !3021
  br label %32, !dbg !3021

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3021
  %29 = load i8*, i8** %28, align 8, !dbg !3021
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3021
  store i8* %30, i8** %28, align 8, !dbg !3021
  %31 = bitcast i8* %29 to i8**, !dbg !3021
  br label %32, !dbg !3021

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3021
  %34 = load i8*, i8** %33, align 8, !dbg !3021
  %35 = load i64, i64* %10, align 8, !dbg !3022
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3023
  store i8* %34, i8** %36, align 8, !dbg !3024
  %37 = icmp ne i8* %34, null, !dbg !3025
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3026
  br i1 %39, label %40, label %44, !dbg !3027

40:                                               ; preds = %38
  br label %41, !dbg !3027

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3028
  %43 = add i64 %42, 1, !dbg !3028
  store i64 %43, i64* %10, align 8, !dbg !3028
  br label %12, !dbg !3029, !llvm.loop !3030

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3032
  %46 = load i8*, i8** %7, align 8, !dbg !3033
  %47 = load i8*, i8** %8, align 8, !dbg !3034
  %48 = load i8*, i8** %9, align 8, !dbg !3035
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3036
  %50 = load i64, i64* %10, align 8, !dbg !3037
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3038
  ret void, !dbg !3039
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3040 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3043, metadata !DIExpression()), !dbg !3044
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3045, metadata !DIExpression()), !dbg !3046
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3047, metadata !DIExpression()), !dbg !3048
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3049, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3051, metadata !DIExpression()), !dbg !3052
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3053
  call void @llvm.va_start(i8* %11), !dbg !3053
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3054
  %13 = load i8*, i8** %6, align 8, !dbg !3055
  %14 = load i8*, i8** %7, align 8, !dbg !3056
  %15 = load i8*, i8** %8, align 8, !dbg !3057
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3058
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3058
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3058
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3058
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3059
  call void @llvm.va_end(i8* %18), !dbg !3059
  ret void, !dbg !3060
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3061 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3062
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.106, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3062
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.123, i64 0, i64 0)) #18, !dbg !3063
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.124, i64 0, i64 0)), !dbg !3064
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.125, i64 0, i64 0)) #18, !dbg !3065
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.127, i64 0, i64 0)), !dbg !3066
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.128, i64 0, i64 0)) #18, !dbg !3067
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.129, i64 0, i64 0)), !dbg !3068
  ret void, !dbg !3069
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3070 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3074, metadata !DIExpression()), !dbg !3075
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3076, metadata !DIExpression()), !dbg !3077
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3078, metadata !DIExpression()), !dbg !3079
  %7 = load i8*, i8** %4, align 8, !dbg !3080
  %8 = load i64, i64* %5, align 8, !dbg !3081
  %9 = load i64, i64* %6, align 8, !dbg !3082
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !3083
  ret i8* %10, !dbg !3084
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3085 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3086, metadata !DIExpression()), !dbg !3087
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3088, metadata !DIExpression()), !dbg !3089
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3090, metadata !DIExpression()), !dbg !3091
  %7 = load i8*, i8** %4, align 8, !dbg !3092
  %8 = load i64, i64* %5, align 8, !dbg !3093
  %9 = load i64, i64* %6, align 8, !dbg !3094
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3095
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3096
  ret i8* %11, !dbg !3097
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3098 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3101, metadata !DIExpression()), !dbg !3102
  %3 = load i8*, i8** %2, align 8, !dbg !3103
  %4 = icmp ne i8* %3, null, !dbg !3103
  br i1 %4, label %6, label %5, !dbg !3105

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3106
  unreachable, !dbg !3106

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3107
  ret i8* %7, !dbg !3108
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3109 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3112, metadata !DIExpression()), !dbg !3113
  %3 = load i64, i64* %2, align 8, !dbg !3114
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3115
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3116
  ret i8* %5, !dbg !3117
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3118 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3121, metadata !DIExpression()), !dbg !3122
  %3 = load i64, i64* %2, align 8, !dbg !3123
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3124
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3125
  ret i8* %5, !dbg !3126
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3127 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3130, metadata !DIExpression()), !dbg !3131
  %3 = load i64, i64* %2, align 8, !dbg !3132
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !3132
  ret i8* %4, !dbg !3133
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3134 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3137, metadata !DIExpression()), !dbg !3138
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3139, metadata !DIExpression()), !dbg !3140
  %5 = load i8*, i8** %3, align 8, !dbg !3141
  %6 = load i64, i64* %4, align 8, !dbg !3142
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3143
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3144
  ret i8* %8, !dbg !3145
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3146 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3149, metadata !DIExpression()), !dbg !3150
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3151, metadata !DIExpression()), !dbg !3152
  %5 = load i8*, i8** %3, align 8, !dbg !3153
  %6 = load i64, i64* %4, align 8, !dbg !3154
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3155
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3156
  ret i8* %8, !dbg !3157
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3158 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3161, metadata !DIExpression()), !dbg !3162
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3163, metadata !DIExpression()), !dbg !3164
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3165, metadata !DIExpression()), !dbg !3166
  %7 = load i8*, i8** %4, align 8, !dbg !3167
  %8 = load i64, i64* %5, align 8, !dbg !3168
  %9 = load i64, i64* %6, align 8, !dbg !3169
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3170
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3171
  ret i8* %11, !dbg !3172
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3173 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3176, metadata !DIExpression()), !dbg !3177
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3178, metadata !DIExpression()), !dbg !3179
  %5 = load i64, i64* %3, align 8, !dbg !3180
  %6 = load i64, i64* %4, align 8, !dbg !3181
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3182
  ret i8* %7, !dbg !3183
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3184 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3187, metadata !DIExpression()), !dbg !3188
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3189, metadata !DIExpression()), !dbg !3190
  %5 = load i64, i64* %3, align 8, !dbg !3191
  %6 = load i64, i64* %4, align 8, !dbg !3192
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3193
  ret i8* %7, !dbg !3194
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3195 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3198, metadata !DIExpression()), !dbg !3199
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3200, metadata !DIExpression()), !dbg !3201
  %5 = load i8*, i8** %3, align 8, !dbg !3202
  %6 = load i64*, i64** %4, align 8, !dbg !3203
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3204
  ret i8* %7, !dbg !3205
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !246 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3206, metadata !DIExpression()), !dbg !3207
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3208, metadata !DIExpression()), !dbg !3209
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3210, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3212, metadata !DIExpression()), !dbg !3213
  %8 = load i64*, i64** %5, align 8, !dbg !3214
  %9 = load i64, i64* %8, align 8, !dbg !3215
  store i64 %9, i64* %7, align 8, !dbg !3213
  %10 = load i8*, i8** %4, align 8, !dbg !3216
  %11 = icmp ne i8* %10, null, !dbg !3216
  br i1 %11, label %26, label %12, !dbg !3218

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3219
  %14 = icmp ne i64 %13, 0, !dbg !3219
  br i1 %14, label %25, label %15, !dbg !3222

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3223
  %17 = udiv i64 128, %16, !dbg !3225
  store i64 %17, i64* %7, align 8, !dbg !3226
  %18 = load i64, i64* %7, align 8, !dbg !3227
  %19 = icmp ne i64 %18, 0, !dbg !3228
  %20 = xor i1 %19, true, !dbg !3228
  %21 = zext i1 %20 to i32, !dbg !3228
  %22 = sext i32 %21 to i64, !dbg !3228
  %23 = load i64, i64* %7, align 8, !dbg !3229
  %24 = add i64 %23, %22, !dbg !3229
  store i64 %24, i64* %7, align 8, !dbg !3229
  br label %25, !dbg !3230

25:                                               ; preds = %15, %12
  br label %36, !dbg !3231

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3232
  %28 = load i64, i64* %7, align 8, !dbg !3232
  %29 = lshr i64 %28, 1, !dbg !3232
  %30 = add i64 %29, 1, !dbg !3232
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3232
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3232
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3232
  store i64 %33, i64* %7, align 8, !dbg !3232
  br i1 %32, label %34, label %35, !dbg !3235

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3236
  unreachable, !dbg !3236

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3237
  %38 = load i64, i64* %7, align 8, !dbg !3238
  %39 = load i64, i64* %6, align 8, !dbg !3239
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3240
  store i8* %40, i8** %4, align 8, !dbg !3241
  %41 = load i64, i64* %7, align 8, !dbg !3242
  %42 = load i64*, i64** %5, align 8, !dbg !3243
  store i64 %41, i64* %42, align 8, !dbg !3244
  %43 = load i8*, i8** %4, align 8, !dbg !3245
  ret i8* %43, !dbg !3246
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !253 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3247, metadata !DIExpression()), !dbg !3248
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3249, metadata !DIExpression()), !dbg !3250
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3251, metadata !DIExpression()), !dbg !3252
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3253, metadata !DIExpression()), !dbg !3254
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3255, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3257, metadata !DIExpression()), !dbg !3258
  %15 = load i64*, i64** %7, align 8, !dbg !3259
  %16 = load i64, i64* %15, align 8, !dbg !3260
  store i64 %16, i64* %11, align 8, !dbg !3258
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3261, metadata !DIExpression()), !dbg !3262
  %17 = load i64, i64* %11, align 8, !dbg !3263
  %18 = load i64, i64* %11, align 8, !dbg !3263
  %19 = ashr i64 %18, 1, !dbg !3263
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3263
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3263
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3263
  store i64 %22, i64* %12, align 8, !dbg !3263
  br i1 %21, label %23, label %24, !dbg !3265

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3266
  br label %24, !dbg !3267

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3268
  %26 = icmp sle i64 0, %25, !dbg !3270
  br i1 %26, label %27, label %33, !dbg !3271

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3272
  %29 = load i64, i64* %12, align 8, !dbg !3273
  %30 = icmp slt i64 %28, %29, !dbg !3274
  br i1 %30, label %31, label %33, !dbg !3275

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3276
  store i64 %32, i64* %12, align 8, !dbg !3277
  br label %33, !dbg !3278

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3279, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3281, metadata !DIExpression()), !dbg !3282
  %34 = load i64, i64* %10, align 8, !dbg !3283
  %35 = icmp slt i64 %34, 0, !dbg !3283
  br i1 %35, label %36, label %82, !dbg !3283

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3283
  %38 = icmp slt i64 %37, 0, !dbg !3283
  br i1 %38, label %39, label %62, !dbg !3283

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3283

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3283
  %42 = load i64, i64* %10, align 8, !dbg !3283
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3283
  %44 = icmp slt i64 %41, %43, !dbg !3283
  br i1 %44, label %111, label %115, !dbg !3283

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3283

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3283
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3283
  br i1 %48, label %52, label %53, !dbg !3283

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3283
  %51 = icmp slt i64 0, %50, !dbg !3283
  br i1 %51, label %52, label %53, !dbg !3283

52:                                               ; preds = %49, %46
  br label %57, !dbg !3283

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3283
  %55 = sub nsw i64 0, %54, !dbg !3283
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3283
  br label %57, !dbg !3283

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3283
  %59 = load i64, i64* %12, align 8, !dbg !3283
  %60 = sub nsw i64 -1, %59, !dbg !3283
  %61 = icmp sle i64 %58, %60, !dbg !3283
  br i1 %61, label %111, label %115, !dbg !3283

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3283
  %64 = icmp eq i64 %63, -1, !dbg !3283
  br i1 %64, label %65, label %77, !dbg !3283

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3283

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3283
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3283
  %69 = icmp slt i64 0, %68, !dbg !3283
  br i1 %69, label %111, label %115, !dbg !3283

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3283
  %72 = icmp slt i64 0, %71, !dbg !3283
  br i1 %72, label %73, label %115, !dbg !3283

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3283
  %75 = sub nsw i64 %74, 1, !dbg !3283
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3283
  br i1 %76, label %111, label %115, !dbg !3283

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3283
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3283
  %80 = load i64, i64* %12, align 8, !dbg !3283
  %81 = icmp slt i64 %79, %80, !dbg !3283
  br i1 %81, label %111, label %115, !dbg !3283

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3283
  %84 = icmp eq i64 %83, 0, !dbg !3283
  br i1 %84, label %85, label %86, !dbg !3283

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3283

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3283
  %88 = icmp slt i64 %87, 0, !dbg !3283
  br i1 %88, label %89, label %106, !dbg !3283

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3283
  %91 = icmp eq i64 %90, -1, !dbg !3283
  br i1 %91, label %92, label %101, !dbg !3283

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3283

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3283
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3283
  %96 = icmp slt i64 0, %95, !dbg !3283
  br i1 %96, label %111, label %115, !dbg !3283

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3283
  %99 = sub nsw i64 %98, 1, !dbg !3283
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3283
  br i1 %100, label %111, label %115, !dbg !3283

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3283
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3283
  %104 = load i64, i64* %10, align 8, !dbg !3283
  %105 = icmp slt i64 %103, %104, !dbg !3283
  br i1 %105, label %111, label %115, !dbg !3283

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3283
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3283
  %109 = load i64, i64* %12, align 8, !dbg !3283
  %110 = icmp slt i64 %108, %109, !dbg !3283
  br i1 %110, label %111, label %115, !dbg !3283

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3283
  %113 = load i64, i64* %10, align 8, !dbg !3283
  %114 = mul i64 %112, %113, !dbg !3283
  store i64 %114, i64* %13, align 8, !dbg !3283
  br label %119, !dbg !3283

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3283
  %117 = load i64, i64* %10, align 8, !dbg !3283
  %118 = mul i64 %116, %117, !dbg !3283
  store i64 %118, i64* %13, align 8, !dbg !3283
  br label %119, !dbg !3283

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3283
  %121 = icmp ne i32 %120, 0, !dbg !3283
  br i1 %121, label %122, label %123, !dbg !3283

122:                                              ; preds = %119
  br label %129, !dbg !3283

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3284
  %125 = icmp slt i64 %124, 128, !dbg !3285
  %126 = zext i1 %125 to i64, !dbg !3284
  %127 = select i1 %125, i32 128, i32 0, !dbg !3284
  %128 = sext i32 %127 to i64, !dbg !3284
  br label %129, !dbg !3283

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3283
  store i64 %130, i64* %14, align 8, !dbg !3282
  %131 = load i64, i64* %14, align 8, !dbg !3286
  %132 = icmp ne i64 %131, 0, !dbg !3286
  br i1 %132, label %133, label %142, !dbg !3288

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3289
  %135 = load i64, i64* %10, align 8, !dbg !3291
  %136 = sdiv i64 %134, %135, !dbg !3292
  store i64 %136, i64* %12, align 8, !dbg !3293
  %137 = load i64, i64* %14, align 8, !dbg !3294
  %138 = load i64, i64* %14, align 8, !dbg !3295
  %139 = load i64, i64* %10, align 8, !dbg !3296
  %140 = srem i64 %138, %139, !dbg !3297
  %141 = sub nsw i64 %137, %140, !dbg !3298
  store i64 %141, i64* %13, align 8, !dbg !3299
  br label %142, !dbg !3300

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3301
  %144 = icmp ne i8* %143, null, !dbg !3301
  br i1 %144, label %147, label %145, !dbg !3303

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3304
  store i64 0, i64* %146, align 8, !dbg !3305
  br label %147, !dbg !3306

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3307
  %149 = load i64, i64* %11, align 8, !dbg !3309
  %150 = sub nsw i64 %148, %149, !dbg !3310
  %151 = load i64, i64* %8, align 8, !dbg !3311
  %152 = icmp slt i64 %150, %151, !dbg !3312
  br i1 %152, label %153, label %256, !dbg !3313

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3314
  %155 = load i64, i64* %8, align 8, !dbg !3314
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3314
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3314
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3314
  store i64 %158, i64* %12, align 8, !dbg !3314
  br i1 %157, label %255, label %159, !dbg !3315

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3316
  %161 = icmp sle i64 0, %160, !dbg !3317
  br i1 %161, label %162, label %166, !dbg !3318

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3319
  %164 = load i64, i64* %12, align 8, !dbg !3320
  %165 = icmp slt i64 %163, %164, !dbg !3321
  br i1 %165, label %255, label %166, !dbg !3322

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3323
  %168 = icmp slt i64 %167, 0, !dbg !3323
  br i1 %168, label %169, label %215, !dbg !3323

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3323
  %171 = icmp slt i64 %170, 0, !dbg !3323
  br i1 %171, label %172, label %195, !dbg !3323

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3323

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3323
  %175 = load i64, i64* %10, align 8, !dbg !3323
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3323
  %177 = icmp slt i64 %174, %176, !dbg !3323
  br i1 %177, label %244, label %248, !dbg !3323

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3323

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3323
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3323
  br i1 %181, label %185, label %186, !dbg !3323

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3323
  %184 = icmp slt i64 0, %183, !dbg !3323
  br i1 %184, label %185, label %186, !dbg !3323

185:                                              ; preds = %182, %179
  br label %190, !dbg !3323

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3323
  %188 = sub nsw i64 0, %187, !dbg !3323
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3323
  br label %190, !dbg !3323

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3323
  %192 = load i64, i64* %12, align 8, !dbg !3323
  %193 = sub nsw i64 -1, %192, !dbg !3323
  %194 = icmp sle i64 %191, %193, !dbg !3323
  br i1 %194, label %244, label %248, !dbg !3323

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3323
  %197 = icmp eq i64 %196, -1, !dbg !3323
  br i1 %197, label %198, label %210, !dbg !3323

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3323

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3323
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3323
  %202 = icmp slt i64 0, %201, !dbg !3323
  br i1 %202, label %244, label %248, !dbg !3323

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3323
  %205 = icmp slt i64 0, %204, !dbg !3323
  br i1 %205, label %206, label %248, !dbg !3323

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3323
  %208 = sub nsw i64 %207, 1, !dbg !3323
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3323
  br i1 %209, label %244, label %248, !dbg !3323

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3323
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3323
  %213 = load i64, i64* %12, align 8, !dbg !3323
  %214 = icmp slt i64 %212, %213, !dbg !3323
  br i1 %214, label %244, label %248, !dbg !3323

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3323
  %217 = icmp eq i64 %216, 0, !dbg !3323
  br i1 %217, label %218, label %219, !dbg !3323

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3323

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3323
  %221 = icmp slt i64 %220, 0, !dbg !3323
  br i1 %221, label %222, label %239, !dbg !3323

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3323
  %224 = icmp eq i64 %223, -1, !dbg !3323
  br i1 %224, label %225, label %234, !dbg !3323

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3323

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3323
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3323
  %229 = icmp slt i64 0, %228, !dbg !3323
  br i1 %229, label %244, label %248, !dbg !3323

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3323
  %232 = sub nsw i64 %231, 1, !dbg !3323
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3323
  br i1 %233, label %244, label %248, !dbg !3323

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3323
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3323
  %237 = load i64, i64* %10, align 8, !dbg !3323
  %238 = icmp slt i64 %236, %237, !dbg !3323
  br i1 %238, label %244, label %248, !dbg !3323

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3323
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3323
  %242 = load i64, i64* %12, align 8, !dbg !3323
  %243 = icmp slt i64 %241, %242, !dbg !3323
  br i1 %243, label %244, label %248, !dbg !3323

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3323
  %246 = load i64, i64* %10, align 8, !dbg !3323
  %247 = mul i64 %245, %246, !dbg !3323
  store i64 %247, i64* %13, align 8, !dbg !3323
  br label %252, !dbg !3323

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3323
  %250 = load i64, i64* %10, align 8, !dbg !3323
  %251 = mul i64 %249, %250, !dbg !3323
  store i64 %251, i64* %13, align 8, !dbg !3323
  br label %252, !dbg !3323

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3323
  %254 = icmp ne i32 %253, 0, !dbg !3323
  br i1 %254, label %255, label %256, !dbg !3324

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3325
  unreachable, !dbg !3325

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3326
  %258 = load i64, i64* %13, align 8, !dbg !3327
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !3328
  store i8* %259, i8** %6, align 8, !dbg !3329
  %260 = load i64, i64* %12, align 8, !dbg !3330
  %261 = load i64*, i64** %7, align 8, !dbg !3331
  store i64 %260, i64* %261, align 8, !dbg !3332
  %262 = load i8*, i8** %6, align 8, !dbg !3333
  ret i8* %262, !dbg !3334
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3335 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3336, metadata !DIExpression()), !dbg !3337
  %3 = load i64, i64* %2, align 8, !dbg !3338
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3339
  ret i8* %4, !dbg !3340
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3341 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3342, metadata !DIExpression()), !dbg !3343
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3344, metadata !DIExpression()), !dbg !3345
  %5 = load i64, i64* %3, align 8, !dbg !3346
  %6 = load i64, i64* %4, align 8, !dbg !3347
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3348
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3349
  ret i8* %8, !dbg !3350
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3351 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3352, metadata !DIExpression()), !dbg !3353
  %3 = load i64, i64* %2, align 8, !dbg !3354
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3355
  ret i8* %4, !dbg !3356
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3357 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3358, metadata !DIExpression()), !dbg !3359
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3360, metadata !DIExpression()), !dbg !3361
  %5 = load i64, i64* %3, align 8, !dbg !3362
  %6 = load i64, i64* %4, align 8, !dbg !3363
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3364
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3365
  ret i8* %8, !dbg !3366
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3367 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3372, metadata !DIExpression()), !dbg !3373
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3374, metadata !DIExpression()), !dbg !3375
  %5 = load i64, i64* %4, align 8, !dbg !3376
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !3377
  %7 = load i8*, i8** %3, align 8, !dbg !3378
  %8 = load i64, i64* %4, align 8, !dbg !3379
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3380
  ret i8* %6, !dbg !3381
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3382 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3385, metadata !DIExpression()), !dbg !3386
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3387, metadata !DIExpression()), !dbg !3388
  %5 = load i64, i64* %4, align 8, !dbg !3389
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !3390
  %7 = load i8*, i8** %3, align 8, !dbg !3391
  %8 = load i64, i64* %4, align 8, !dbg !3392
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3393
  ret i8* %6, !dbg !3394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3395 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3398, metadata !DIExpression()), !dbg !3399
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3400, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3402, metadata !DIExpression()), !dbg !3403
  %6 = load i64, i64* %4, align 8, !dbg !3404
  %7 = add nsw i64 %6, 1, !dbg !3405
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !3406
  store i8* %8, i8** %5, align 8, !dbg !3403
  %9 = load i8*, i8** %5, align 8, !dbg !3407
  %10 = load i64, i64* %4, align 8, !dbg !3408
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3407
  store i8 0, i8* %11, align 1, !dbg !3409
  %12 = load i8*, i8** %5, align 8, !dbg !3410
  %13 = load i8*, i8** %3, align 8, !dbg !3411
  %14 = load i64, i64* %4, align 8, !dbg !3412
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3413
  ret i8* %12, !dbg !3414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3415 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3416, metadata !DIExpression()), !dbg !3417
  %3 = load i8*, i8** %2, align 8, !dbg !3418
  %4 = load i8*, i8** %2, align 8, !dbg !3419
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3420
  %6 = add i64 %5, 1, !dbg !3421
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !3422
  ret i8* %7, !dbg !3423
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3424 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3425, metadata !DIExpression()), !dbg !3428
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3428
  store i32 %2, i32* %1, align 4, !dbg !3428
  %3 = load i32, i32* %1, align 4, !dbg !3428
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.140, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.141, i64 0, i64 0)) #18, !dbg !3428
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i64 0, i64 0), i8* noundef %4), !dbg !3428
  %5 = load i32, i32* %1, align 4, !dbg !3428
  %6 = icmp ne i32 %5, 0, !dbg !3428
  br i1 %6, label %7, label %9, !dbg !3428

7:                                                ; preds = %0
  unreachable, !dbg !3428

8:                                                ; No predecessors!
  br label %10, !dbg !3428

9:                                                ; preds = %0
  br label %10, !dbg !3428

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3429
  unreachable, !dbg !3429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3430 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3436, metadata !DIExpression()), !dbg !3437
  %3 = load i32, i32* %2, align 4, !dbg !3438
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3439
  ret i32 %4, !dbg !3440
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3441 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3478, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3480, metadata !DIExpression()), !dbg !3482
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3483
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3484
  %9 = icmp ne i64 %8, 0, !dbg !3485
  %10 = zext i1 %9 to i8, !dbg !3482
  store i8 %10, i8* %4, align 1, !dbg !3482
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3486, metadata !DIExpression()), !dbg !3487
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3488
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3488
  %13 = icmp ne i32 %12, 0, !dbg !3489
  %14 = zext i1 %13 to i8, !dbg !3487
  store i8 %14, i8* %5, align 1, !dbg !3487
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3490, metadata !DIExpression()), !dbg !3491
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3492
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3493
  %17 = icmp ne i32 %16, 0, !dbg !3494
  %18 = zext i1 %17 to i8, !dbg !3491
  store i8 %18, i8* %6, align 1, !dbg !3491
  %19 = load i8, i8* %5, align 1, !dbg !3495
  %20 = trunc i8 %19 to i1, !dbg !3495
  br i1 %20, label %31, label %21, !dbg !3497

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3498
  %23 = trunc i8 %22 to i1, !dbg !3498
  br i1 %23, label %24, label %37, !dbg !3499

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3500
  %26 = trunc i8 %25 to i1, !dbg !3500
  br i1 %26, label %31, label %27, !dbg !3501

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3502
  %29 = load i32, i32* %28, align 4, !dbg !3502
  %30 = icmp ne i32 %29, 9, !dbg !3503
  br i1 %30, label %31, label %37, !dbg !3504

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3505
  %33 = trunc i8 %32 to i1, !dbg !3505
  br i1 %33, label %36, label %34, !dbg !3508

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3509
  store i32 0, i32* %35, align 4, !dbg !3510
  br label %36, !dbg !3509

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3511
  br label %38, !dbg !3511

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3512
  br label %38, !dbg !3512

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3513
  ret i32 %39, !dbg !3513
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3514 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3551, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3553, metadata !DIExpression()), !dbg !3554
  store i32 0, i32* %4, align 4, !dbg !3554
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3555, metadata !DIExpression()), !dbg !3556
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3557
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !3558
  store i32 %8, i32* %5, align 4, !dbg !3556
  %9 = load i32, i32* %5, align 4, !dbg !3559
  %10 = icmp slt i32 %9, 0, !dbg !3561
  br i1 %10, label %11, label %14, !dbg !3562

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3563
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3564
  store i32 %13, i32* %2, align 4, !dbg !3565
  br label %40, !dbg !3565

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3566
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !3566
  %17 = icmp ne i32 %16, 0, !dbg !3566
  br i1 %17, label %18, label %23, !dbg !3568

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3569
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !3570
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !3571
  %22 = icmp ne i64 %21, -1, !dbg !3572
  br i1 %22, label %23, label %30, !dbg !3573

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3574
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !3575
  %26 = icmp ne i32 %25, 0, !dbg !3575
  br i1 %26, label %27, label %30, !dbg !3576

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !3577
  %29 = load i32, i32* %28, align 4, !dbg !3577
  store i32 %29, i32* %4, align 4, !dbg !3578
  br label %30, !dbg !3579

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3580, metadata !DIExpression()), !dbg !3581
  store i32 0, i32* %6, align 4, !dbg !3581
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3582
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !3583
  store i32 %32, i32* %6, align 4, !dbg !3584
  %33 = load i32, i32* %4, align 4, !dbg !3585
  %34 = icmp ne i32 %33, 0, !dbg !3587
  br i1 %34, label %35, label %38, !dbg !3588

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3589
  %37 = call i32* @__errno_location() #21, !dbg !3591
  store i32 %36, i32* %37, align 4, !dbg !3592
  store i32 -1, i32* %6, align 4, !dbg !3593
  br label %38, !dbg !3594

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3595
  store i32 %39, i32* %2, align 4, !dbg !3596
  br label %40, !dbg !3596

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3597
  ret i32 %41, !dbg !3597
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !3598 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3635, metadata !DIExpression()), !dbg !3636
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3637
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3639
  br i1 %5, label %10, label %6, !dbg !3640

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3641
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !3641
  %9 = icmp ne i32 %8, 0, !dbg !3641
  br i1 %9, label %13, label %10, !dbg !3642

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3643
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !3644
  store i32 %12, i32* %2, align 4, !dbg !3645
  br label %17, !dbg !3645

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3646
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !3647
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3648
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !3649
  store i32 %16, i32* %2, align 4, !dbg !3650
  br label %17, !dbg !3650

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3651
  ret i32 %18, !dbg !3651
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !3652 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3655, metadata !DIExpression()), !dbg !3656
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3657
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !3659
  %5 = load i32, i32* %4, align 8, !dbg !3659
  %6 = and i32 %5, 256, !dbg !3660
  %7 = icmp ne i32 %6, 0, !dbg !3660
  br i1 %7, label %8, label %11, !dbg !3661

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3662
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !3663
  br label %11, !dbg !3663

11:                                               ; preds = %8, %1
  ret void, !dbg !3664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !3665 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3703, metadata !DIExpression()), !dbg !3704
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3705, metadata !DIExpression()), !dbg !3706
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3707, metadata !DIExpression()), !dbg !3708
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3709
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !3711
  %11 = load i8*, i8** %10, align 8, !dbg !3711
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3712
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !3713
  %14 = load i8*, i8** %13, align 8, !dbg !3713
  %15 = icmp eq i8* %11, %14, !dbg !3714
  br i1 %15, label %16, label %46, !dbg !3715

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3716
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !3717
  %19 = load i8*, i8** %18, align 8, !dbg !3717
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3718
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !3719
  %22 = load i8*, i8** %21, align 8, !dbg !3719
  %23 = icmp eq i8* %19, %22, !dbg !3720
  br i1 %23, label %24, label %46, !dbg !3721

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3722
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !3723
  %27 = load i8*, i8** %26, align 8, !dbg !3723
  %28 = icmp eq i8* %27, null, !dbg !3724
  br i1 %28, label %29, label %46, !dbg !3725

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3726, metadata !DIExpression()), !dbg !3728
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3729
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !3730
  %32 = load i64, i64* %6, align 8, !dbg !3731
  %33 = load i32, i32* %7, align 4, !dbg !3732
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !3733
  store i64 %34, i64* %8, align 8, !dbg !3728
  %35 = load i64, i64* %8, align 8, !dbg !3734
  %36 = icmp eq i64 %35, -1, !dbg !3736
  br i1 %36, label %37, label %38, !dbg !3737

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3738
  br label %51, !dbg !3738

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3740
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !3741
  %41 = load i32, i32* %40, align 8, !dbg !3742
  %42 = and i32 %41, -17, !dbg !3742
  store i32 %42, i32* %40, align 8, !dbg !3742
  %43 = load i64, i64* %8, align 8, !dbg !3743
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3744
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !3745
  store i64 %43, i64* %45, align 8, !dbg !3746
  store i32 0, i32* %4, align 4, !dbg !3747
  br label %51, !dbg !3747

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3748
  %48 = load i64, i64* %6, align 8, !dbg !3749
  %49 = load i32, i32* %7, align 4, !dbg !3750
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !3751
  store i32 %50, i32* %4, align 4, !dbg !3752
  br label %51, !dbg !3752

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !3753
  ret i32 %52, !dbg !3753
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !3754 {
  %1 = call i32* @__errno_location() #21, !dbg !3757
  store i32 12, i32* %1, align 4, !dbg !3758
  ret i8* null, !dbg !3759
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !3760 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3761, metadata !DIExpression()), !dbg !3762
  %3 = load i64, i64* %2, align 8, !dbg !3763
  %4 = icmp ule i64 %3, -1, !dbg !3764
  br i1 %4, label %5, label %8, !dbg !3763

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !3765
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !3766
  br label %10, !dbg !3763

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !3767
  br label %10, !dbg !3763

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !3763
  ret i8* %11, !dbg !3768
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3769 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3770, metadata !DIExpression()), !dbg !3771
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3772, metadata !DIExpression()), !dbg !3773
  %5 = load i64, i64* %4, align 8, !dbg !3774
  %6 = icmp ule i64 %5, -1, !dbg !3775
  br i1 %6, label %7, label %11, !dbg !3774

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !3776
  %9 = load i64, i64* %4, align 8, !dbg !3777
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !3778
  br label %13, !dbg !3774

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3779
  br label %13, !dbg !3774

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !3774
  ret i8* %14, !dbg !3780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !3781 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3782, metadata !DIExpression()), !dbg !3783
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3784, metadata !DIExpression()), !dbg !3785
  %6 = load i64, i64* %4, align 8, !dbg !3786
  %7 = icmp ult i64 -1, %6, !dbg !3788
  br i1 %7, label %8, label %14, !dbg !3789

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !3790
  %10 = icmp ne i64 %9, 0, !dbg !3793
  br i1 %10, label %11, label %13, !dbg !3794

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3795
  store i8* %12, i8** %3, align 8, !dbg !3796
  br label %27, !dbg !3796

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !3797
  br label %14, !dbg !3798

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !3799
  %16 = icmp ult i64 -1, %15, !dbg !3801
  br i1 %16, label %17, label %23, !dbg !3802

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !3803
  %19 = icmp ne i64 %18, 0, !dbg !3806
  br i1 %19, label %20, label %22, !dbg !3807

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !3808
  store i8* %21, i8** %3, align 8, !dbg !3809
  br label %27, !dbg !3809

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !3810
  br label %23, !dbg !3811

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !3812
  %25 = load i64, i64* %5, align 8, !dbg !3813
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !3814
  store i8* %26, i8** %3, align 8, !dbg !3815
  br label %27, !dbg !3815

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !3816
  ret i8* %28, !dbg !3816
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3817 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3818, metadata !DIExpression()), !dbg !3819
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3820, metadata !DIExpression()), !dbg !3821
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3822, metadata !DIExpression()), !dbg !3823
  %7 = load i64, i64* %5, align 8, !dbg !3824
  %8 = icmp ule i64 %7, -1, !dbg !3825
  br i1 %8, label %9, label %17, !dbg !3826

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !3827
  %11 = icmp ule i64 %10, -1, !dbg !3828
  br i1 %11, label %12, label %17, !dbg !3824

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !3829
  %14 = load i64, i64* %5, align 8, !dbg !3830
  %15 = load i64, i64* %6, align 8, !dbg !3831
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !3832
  br label %19, !dbg !3824

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !3833
  br label %19, !dbg !3824

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !3824
  ret i8* %20, !dbg !3834
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !3835 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3840, metadata !DIExpression()), !dbg !3841
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3842, metadata !DIExpression()), !dbg !3843
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3844, metadata !DIExpression()), !dbg !3845
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !3846, metadata !DIExpression()), !dbg !3847
  %11 = load i8*, i8** %7, align 8, !dbg !3848
  %12 = icmp eq i8* %11, null, !dbg !3850
  br i1 %12, label %13, label %14, !dbg !3851

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !3852
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.163, i64 0, i64 0), i8** %7, align 8, !dbg !3854
  store i64 1, i64* %8, align 8, !dbg !3855
  br label %14, !dbg !3856

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3857
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !3859
  br i1 %16, label %17, label %18, !dbg !3860

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !3861
  br label %18, !dbg !3862

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3863, metadata !DIExpression()), !dbg !3864
  %19 = load i32*, i32** %6, align 8, !dbg !3865
  %20 = load i8*, i8** %7, align 8, !dbg !3866
  %21 = load i64, i64* %8, align 8, !dbg !3867
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3868
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !3869
  store i64 %23, i64* %10, align 8, !dbg !3864
  %24 = load i64, i64* %10, align 8, !dbg !3870
  %25 = icmp ult i64 %24, -3, !dbg !3872
  br i1 %25, label %26, label %32, !dbg !3873

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3874
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !3875
  %29 = icmp ne i32 %28, 0, !dbg !3875
  br i1 %29, label %32, label %30, !dbg !3876

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3877
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !3878
  br label %32, !dbg !3878

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !3879
  %34 = icmp eq i64 %33, -3, !dbg !3881
  br i1 %34, label %35, label %36, !dbg !3882

35:                                               ; preds = %32
  call void @abort() #19, !dbg !3883
  unreachable, !dbg !3883

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !3884
  %38 = icmp ule i64 -2, %37, !dbg !3886
  br i1 %38, label %39, label %53, !dbg !3887

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !3888
  %41 = icmp ne i64 %40, 0, !dbg !3889
  br i1 %41, label %42, label %53, !dbg !3890

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !3891
  br i1 %43, label %53, label %44, !dbg !3892

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !3893
  %46 = icmp ne i32* %45, null, !dbg !3896
  br i1 %46, label %47, label %52, !dbg !3897

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !3898
  %49 = load i8, i8* %48, align 1, !dbg !3899
  %50 = zext i8 %49 to i32, !dbg !3900
  %51 = load i32*, i32** %6, align 8, !dbg !3901
  store i32 %50, i32* %51, align 4, !dbg !3902
  br label %52, !dbg !3903

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !3904
  br label %55, !dbg !3904

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !3905
  store i64 %54, i64* %5, align 8, !dbg !3906
  br label %55, !dbg !3906

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !3907
  ret i64 %56, !dbg !3907
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !3908 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !3923, metadata !DIExpression()), !dbg !3924
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !3925
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !3926
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !3926
  ret void, !dbg !3927
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3928 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3931, metadata !DIExpression()), !dbg !3932
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3933, metadata !DIExpression()), !dbg !3934
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3935, metadata !DIExpression()), !dbg !3936
  %7 = load i8*, i8** %4, align 8, !dbg !3937
  %8 = load i8*, i8** %5, align 8, !dbg !3938
  %9 = load i64, i64* %6, align 8, !dbg !3939
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !3940
  %11 = icmp ne i32 %10, 0, !dbg !3941
  %12 = xor i1 %11, true, !dbg !3941
  ret i1 %12, !dbg !3942
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3943 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3945, metadata !DIExpression()), !dbg !3946
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3947, metadata !DIExpression()), !dbg !3948
  %5 = load i8*, i8** %3, align 8, !dbg !3949
  %6 = load i64, i64* %4, align 8, !dbg !3950
  %7 = icmp ne i64 %6, 0, !dbg !3950
  br i1 %7, label %8, label %10, !dbg !3950

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !3951
  br label %11, !dbg !3950

10:                                               ; preds = %2
  br label %11, !dbg !3950

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !3950
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !3952
  ret i8* %13, !dbg !3953
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3954 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3955, metadata !DIExpression()), !dbg !3956
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3957, metadata !DIExpression()), !dbg !3958
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3959, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3961, metadata !DIExpression()), !dbg !3962
  %9 = load i64, i64* %7, align 8, !dbg !3963
  %10 = icmp ult i64 %9, 0, !dbg !3963
  br i1 %10, label %11, label %60, !dbg !3963

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !3963
  %13 = icmp ult i64 %12, 0, !dbg !3963
  br i1 %13, label %14, label %37, !dbg !3963

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !3963

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !3963
  %17 = load i64, i64* %7, align 8, !dbg !3963
  %18 = udiv i64 -1, %17, !dbg !3963
  %19 = icmp ult i64 %16, %18, !dbg !3963
  br i1 %19, label %92, label %96, !dbg !3963

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !3963

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !3963
  %23 = icmp ult i64 %22, 1, !dbg !3963
  br i1 %23, label %27, label %28, !dbg !3963

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !3963
  %26 = icmp ult i64 0, %25, !dbg !3963
  br i1 %26, label %27, label %28, !dbg !3963

27:                                               ; preds = %24, %21
  br label %32, !dbg !3963

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !3963
  %30 = sub i64 0, %29, !dbg !3963
  %31 = udiv i64 -1, %30, !dbg !3963
  br label %32, !dbg !3963

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !3963
  %34 = load i64, i64* %6, align 8, !dbg !3963
  %35 = sub i64 -1, %34, !dbg !3963
  %36 = icmp ule i64 %33, %35, !dbg !3963
  br i1 %36, label %92, label %96, !dbg !3963

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !3963

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !3963

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !3963

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !3963
  %42 = icmp eq i64 %41, -1, !dbg !3963
  br i1 %42, label %43, label %55, !dbg !3963

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !3963

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !3963
  %46 = add i64 %45, 0, !dbg !3963
  %47 = icmp ult i64 0, %46, !dbg !3963
  br i1 %47, label %92, label %96, !dbg !3963

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !3963
  %50 = icmp ult i64 0, %49, !dbg !3963
  br i1 %50, label %51, label %96, !dbg !3963

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !3963
  %53 = sub i64 %52, 1, !dbg !3963
  %54 = icmp ult i64 -1, %53, !dbg !3963
  br i1 %54, label %92, label %96, !dbg !3963

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !3963
  %57 = udiv i64 0, %56, !dbg !3963
  %58 = load i64, i64* %6, align 8, !dbg !3963
  %59 = icmp ult i64 %57, %58, !dbg !3963
  br i1 %59, label %92, label %96, !dbg !3963

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !3963
  %62 = icmp eq i64 %61, 0, !dbg !3963
  br i1 %62, label %63, label %64, !dbg !3963

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !3963

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !3963
  %66 = icmp ult i64 %65, 0, !dbg !3963
  br i1 %66, label %67, label %87, !dbg !3963

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !3963

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !3963

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !3963

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !3963
  %72 = icmp eq i64 %71, -1, !dbg !3963
  br i1 %72, label %73, label %82, !dbg !3963

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !3963

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !3963
  %76 = add i64 %75, 0, !dbg !3963
  %77 = icmp ult i64 0, %76, !dbg !3963
  br i1 %77, label %92, label %96, !dbg !3963

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !3963
  %80 = sub i64 %79, 1, !dbg !3963
  %81 = icmp ult i64 -1, %80, !dbg !3963
  br i1 %81, label %92, label %96, !dbg !3963

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !3963
  %84 = udiv i64 0, %83, !dbg !3963
  %85 = load i64, i64* %7, align 8, !dbg !3963
  %86 = icmp ult i64 %84, %85, !dbg !3963
  br i1 %86, label %92, label %96, !dbg !3963

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !3963
  %89 = udiv i64 -1, %88, !dbg !3963
  %90 = load i64, i64* %6, align 8, !dbg !3963
  %91 = icmp ult i64 %89, %90, !dbg !3963
  br i1 %91, label %92, label %96, !dbg !3963

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !3963
  %94 = load i64, i64* %7, align 8, !dbg !3963
  %95 = mul i64 %93, %94, !dbg !3963
  store i64 %95, i64* %8, align 8, !dbg !3963
  br label %100, !dbg !3963

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !3963
  %98 = load i64, i64* %7, align 8, !dbg !3963
  %99 = mul i64 %97, %98, !dbg !3963
  store i64 %99, i64* %8, align 8, !dbg !3963
  br label %100, !dbg !3963

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !3963
  %102 = icmp ne i32 %101, 0, !dbg !3963
  br i1 %102, label %103, label %105, !dbg !3965

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !3966
  store i32 12, i32* %104, align 4, !dbg !3968
  store i8* null, i8** %4, align 8, !dbg !3969
  br label %109, !dbg !3969

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !3970
  %107 = load i64, i64* %8, align 8, !dbg !3971
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !3972
  store i8* %108, i8** %4, align 8, !dbg !3973
  br label %109, !dbg !3973

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !3974
  ret i8* %110, !dbg !3974
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !3975 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3978, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !3980, metadata !DIExpression()), !dbg !3984
  %5 = load i32, i32* %3, align 4, !dbg !3985
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3987
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !3988
  %8 = icmp ne i32 %7, 0, !dbg !3988
  br i1 %8, label %9, label %10, !dbg !3989

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3990
  br label %18, !dbg !3990

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3991
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.174, i64 0, i64 0)), !dbg !3993
  br i1 %12, label %17, label %13, !dbg !3994

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3995
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.175, i64 0, i64 0)), !dbg !3996
  br i1 %15, label %17, label %16, !dbg !3997

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !3998
  br label %18, !dbg !3998

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !3999
  br label %18, !dbg !3999

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4000
  ret i1 %19, !dbg !4000
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4001 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4004, metadata !DIExpression()), !dbg !4005
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4006, metadata !DIExpression()), !dbg !4007
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4008, metadata !DIExpression()), !dbg !4009
  %7 = load i32, i32* %4, align 4, !dbg !4010
  %8 = load i8*, i8** %5, align 8, !dbg !4011
  %9 = load i64, i64* %6, align 8, !dbg !4012
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4013
  ret i32 %10, !dbg !4014
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4015 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4018, metadata !DIExpression()), !dbg !4019
  %3 = load i32, i32* %2, align 4, !dbg !4020
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4021
  ret i8* %4, !dbg !4022
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4023 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4026, metadata !DIExpression()), !dbg !4027
  %4 = load i32, i32* %2, align 4, !dbg !4028
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4029
  store i8* %5, i8** %3, align 8, !dbg !4027
  %6 = load i8*, i8** %3, align 8, !dbg !4030
  ret i8* %6, !dbg !4031
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4032 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4033, metadata !DIExpression()), !dbg !4034
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4035, metadata !DIExpression()), !dbg !4036
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4039, metadata !DIExpression()), !dbg !4040
  %10 = load i32, i32* %5, align 4, !dbg !4041
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4042
  store i8* %11, i8** %8, align 8, !dbg !4040
  %12 = load i8*, i8** %8, align 8, !dbg !4043
  %13 = icmp eq i8* %12, null, !dbg !4045
  br i1 %13, label %14, label %21, !dbg !4046

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4047
  %16 = icmp ugt i64 %15, 0, !dbg !4050
  br i1 %16, label %17, label %20, !dbg !4051

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4052
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4052
  store i8 0, i8* %19, align 1, !dbg !4053
  br label %20, !dbg !4052

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4054
  br label %45, !dbg !4054

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4055, metadata !DIExpression()), !dbg !4057
  %22 = load i8*, i8** %8, align 8, !dbg !4058
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4059
  store i64 %23, i64* %9, align 8, !dbg !4057
  %24 = load i64, i64* %9, align 8, !dbg !4060
  %25 = load i64, i64* %7, align 8, !dbg !4062
  %26 = icmp ult i64 %24, %25, !dbg !4063
  br i1 %26, label %27, label %32, !dbg !4064

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4065
  %29 = load i8*, i8** %8, align 8, !dbg !4067
  %30 = load i64, i64* %9, align 8, !dbg !4068
  %31 = add i64 %30, 1, !dbg !4069
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4070
  store i32 0, i32* %4, align 4, !dbg !4071
  br label %45, !dbg !4071

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4072
  %34 = icmp ugt i64 %33, 0, !dbg !4075
  br i1 %34, label %35, label %44, !dbg !4076

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4077
  %37 = load i8*, i8** %8, align 8, !dbg !4079
  %38 = load i64, i64* %7, align 8, !dbg !4080
  %39 = sub i64 %38, 1, !dbg !4081
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4082
  %40 = load i8*, i8** %6, align 8, !dbg !4083
  %41 = load i64, i64* %7, align 8, !dbg !4084
  %42 = sub i64 %41, 1, !dbg !4085
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4083
  store i8 0, i8* %43, align 1, !dbg !4086
  br label %44, !dbg !4087

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4088
  br label %45, !dbg !4088

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4089
  ret i32 %46, !dbg !4089
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

!llvm.dbg.cu = !{!9, !41, !46, !54, !207, !232, !88, !105, !116, !123, !234, !236, !199, !242, !262, !264, !266, !268, !270, !272, !274, !213, !276, !278, !280, !282, !285, !287, !289}
!llvm.ident = !{!291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291, !291}
!llvm.module.flags = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !35, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !38)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !28, globals: !37, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/whoami.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5c047d082e30b773191158ad69a0e0a3")
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
!28 = !{!6, !29, !30, !35, !36}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !31, line: 102, baseType: !32)
!31 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !33, line: 73, baseType: !34)
!33 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!37 = !{!0}
!38 = !{}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "Version", scope: !41, file: !42, line: 3, type: !6, isLocal: false, isDefinition: true)
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !43, splitDebugInlining: false, nameTableKind: None)
!42 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!43 = !{!39}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "file_name", scope: !46, file: !47, line: 45, type: !6, isLocal: true, isDefinition: true)
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !48, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!48 = !{!44, !49}
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !46, file: !47, line: 55, type: !51, isLocal: true, isDefinition: true)
!51 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !54, file: !55, line: 66, type: !83, isLocal: false, isDefinition: true)
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !56, globals: !57, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!56 = !{!29}
!57 = !{!58, !77, !52, !79, !81}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "old_file_name", scope: !60, file: !55, line: 304, type: !6, isLocal: true, isDefinition: true)
!60 = distinct !DISubprogram(name: "verror_at_line", scope: !55, file: !55, line: 298, type: !61, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !38)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !35, !35, !6, !14, !6, !63}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !64, line: 52, baseType: !65)
!64 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !66, line: 32, baseType: !67)
!66 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !68, baseType: !69)
!68 = !DIFile(filename: "lib/error.c", directory: "/src")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !70, size: 256, elements: !71)
!70 = !DINamespace(name: "std", scope: null)
!71 = !{!72, !73, !74, !75, !76}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !69, file: !68, baseType: !29, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !69, file: !68, baseType: !29, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !69, file: !68, baseType: !29, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !69, file: !68, baseType: !35, size: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !69, file: !68, baseType: !35, size: 32, offset: 224)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "old_line_number", scope: !60, file: !55, line: 305, type: !14, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "error_message_count", scope: !54, file: !55, line: 69, type: !14, isLocal: false, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !54, file: !55, line: 295, type: !35, isLocal: false, isDefinition: true)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{null}
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "long_options", scope: !88, file: !89, line: 34, type: !91, isLocal: true, isDefinition: true)
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !90, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!90 = !{!86}
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 768, elements: !101)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !94, line: 50, size: 256, elements: !95)
!94 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!95 = !{!96, !97, !98, !100}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !93, file: !94, line: 52, baseType: !6, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !93, file: !94, line: 55, baseType: !35, size: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !93, file: !94, line: 56, baseType: !99, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !93, file: !94, line: 57, baseType: !35, size: 32, offset: 192)
!101 = !{!102}
!102 = !DISubrange(count: 3)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "program_name", scope: !105, file: !106, line: 31, type: !6, isLocal: false, isDefinition: true)
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !107, globals: !109, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!109 = !{!103}
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "utf07FF", scope: !112, file: !113, line: 46, type: !118, isLocal: true, isDefinition: true)
!112 = distinct !DISubprogram(name: "proper_name_lite", scope: !113, file: !113, line: 38, type: !114, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !116, retainedNodes: !38)
!113 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!114 = !DISubroutineType(types: !115)
!115 = !{!6, !6, !6}
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !117, splitDebugInlining: false, nameTableKind: None)
!117 = !{!110}
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 2)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !123, file: !124, line: 76, type: !193, isLocal: false, isDefinition: true)
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !125, retainedTypes: !145, globals: !148, splitDebugInlining: false, nameTableKind: None)
!124 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!125 = !{!126, !140, !12}
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !127, line: 42, baseType: !14, size: 32, elements: !128)
!127 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!129 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!130 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!131 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!132 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!133 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!134 = !DIEnumerator(name: "c_quoting_style", value: 5)
!135 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!136 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!137 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!138 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!139 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !127, line: 254, baseType: !14, size: 32, elements: !141)
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!143 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!144 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!145 = !{!35, !36, !146}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !147, line: 46, baseType: !34)
!147 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!148 = !{!121, !149, !155, !167, !169, !174, !182, !189, !191}
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !123, file: !124, line: 92, type: !151, isLocal: false, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 320, elements: !153)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!153 = !{!154}
!154 = !DISubrange(count: 10)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !123, file: !124, line: 1040, type: !157, isLocal: false, isDefinition: true)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !124, line: 56, size: 448, elements: !158)
!158 = !{!159, !160, !161, !165, !166}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !157, file: !124, line: 59, baseType: !126, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !124, line: 62, baseType: !35, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !157, file: !124, line: 66, baseType: !162, size: 256, offset: 64)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !157, file: !124, line: 69, baseType: !6, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !157, file: !124, line: 72, baseType: !6, size: 64, offset: 384)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !123, file: !124, line: 107, type: !157, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "slot0", scope: !123, file: !124, line: 831, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 256)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "quote", scope: !176, file: !124, line: 228, type: !179, isLocal: true, isDefinition: true)
!176 = distinct !DISubprogram(name: "gettext_quote", scope: !124, file: !124, line: 197, type: !177, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !123, retainedNodes: !38)
!177 = !DISubroutineType(types: !178)
!178 = !{!6, !6, !126}
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !180)
!180 = !{!120, !181}
!181 = !DISubrange(count: 4)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "slotvec", scope: !123, file: !124, line: 834, type: !184, isLocal: true, isDefinition: true)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !124, line: 823, size: 128, elements: !186)
!186 = !{!187, !188}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !185, file: !124, line: 825, baseType: !146, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !185, file: !124, line: 826, baseType: !108, size: 64, offset: 64)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "nslots", scope: !123, file: !124, line: 832, type: !35, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "slotvec0", scope: !123, file: !124, line: 833, type: !185, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 704, elements: !195)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!195 = !{!196}
!196 = !DISubrange(count: 11)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !199, file: !200, line: 26, type: !202, isLocal: false, isDefinition: true)
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !201, splitDebugInlining: false, nameTableKind: None)
!200 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!201 = !{!197}
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 47)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "exit_failure", scope: !207, file: !208, line: 24, type: !210, isLocal: false, isDefinition: true)
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !209, splitDebugInlining: false, nameTableKind: None)
!208 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!209 = !{!205}
!210 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "internal_state", scope: !213, file: !214, line: 97, type: !218, isLocal: true, isDefinition: true)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !215, globals: !217, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!215 = !{!29, !146, !216}
!216 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!217 = !{!211}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !219, line: 6, baseType: !220)
!219 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !221, line: 21, baseType: !222)
!221 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 13, size: 64, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !222, file: !221, line: 15, baseType: !35, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !222, file: !221, line: 20, baseType: !226, size: 32, offset: 32)
!226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !222, file: !221, line: 16, size: 32, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !226, file: !221, line: 18, baseType: !14, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !226, file: !221, line: 19, baseType: !230, size: 32)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !231)
!231 = !{!181}
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!233 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!235 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !238, retainedTypes: !56, splitDebugInlining: false, nameTableKind: None)
!237 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!238 = !{!239}
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !237, line: 40, baseType: !14, size: 32, elements: !240)
!240 = !{!241}
!241 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !244, retainedTypes: !261, splitDebugInlining: false, nameTableKind: None)
!243 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!244 = !{!245, !252}
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !246, file: !243, line: 188, baseType: !14, size: 32, elements: !250)
!246 = distinct !DISubprogram(name: "x2nrealloc", scope: !243, file: !243, line: 176, type: !247, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!247 = !DISubroutineType(types: !248)
!248 = !{!29, !29, !249, !146}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!250 = !{!251}
!251 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !253, file: !243, line: 228, baseType: !14, size: 32, elements: !250)
!253 = distinct !DISubprogram(name: "xpalloc", scope: !243, file: !243, line: 223, type: !254, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!254 = !DISubroutineType(types: !255)
!255 = !{!29, !29, !256, !257, !259, !257}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !258, line: 130, baseType: !259)
!258 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !147, line: 35, baseType: !260)
!260 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!261 = !{!108, !29, !51, !260, !34}
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!263 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !56, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !56, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !56, splitDebugInlining: false, nameTableKind: None)
!275 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!279 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!281 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!282 = distinct !DICompileUnit(language: DW_LANG_C99, file: !283, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !284, splitDebugInlining: false, nameTableKind: None)
!283 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!284 = !{!51, !34, !29}
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!286 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!288 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !290, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !56, splitDebugInlining: false, nameTableKind: None)
!290 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!291 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!292 = !{i32 7, !"Dwarf Version", i32 5}
!293 = !{i32 2, !"Debug Info Version", i32 3}
!294 = !{i32 1, !"wchar_size", i32 4}
!295 = !{i32 1, !"branch-target-enforcement", i32 0}
!296 = !{i32 1, !"sign-return-address", i32 0}
!297 = !{i32 1, !"sign-return-address-all", i32 0}
!298 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!299 = !{i32 7, !"PIC Level", i32 2}
!300 = !{i32 7, !"PIE Level", i32 2}
!301 = !{i32 7, !"uwtable", i32 1}
!302 = !{i32 7, !"frame-pointer", i32 1}
!303 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 36, type: !304, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !38)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !35}
!306 = !DILocalVariable(name: "status", arg: 1, scope: !303, file: !10, line: 36, type: !35)
!307 = !DILocation(line: 36, column: 12, scope: !303)
!308 = !DILocation(line: 38, column: 7, scope: !309)
!309 = distinct !DILexicalBlock(scope: !303, file: !10, line: 38, column: 7)
!310 = !DILocation(line: 38, column: 14, scope: !309)
!311 = !DILocation(line: 38, column: 7, scope: !303)
!312 = !DILocation(line: 39, column: 5, scope: !309)
!313 = !DILocation(line: 39, column: 5, scope: !314)
!314 = distinct !DILexicalBlock(scope: !309, file: !10, line: 39, column: 5)
!315 = !DILocation(line: 42, column: 15, scope: !316)
!316 = distinct !DILexicalBlock(scope: !309, file: !10, line: 41, column: 5)
!317 = !DILocation(line: 42, column: 45, scope: !316)
!318 = !DILocation(line: 42, column: 7, scope: !316)
!319 = !DILocation(line: 43, column: 7, scope: !316)
!320 = !DILocation(line: 48, column: 7, scope: !316)
!321 = !DILocation(line: 49, column: 7, scope: !316)
!322 = !DILocation(line: 50, column: 7, scope: !316)
!323 = !DILocation(line: 52, column: 9, scope: !303)
!324 = !DILocation(line: 52, column: 3, scope: !303)
!325 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!326 = !DILocation(line: 573, column: 34, scope: !2)
!327 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!328 = !DILocation(line: 573, column: 55, scope: !2)
!329 = !DILocation(line: 581, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!331 = !DILocation(line: 581, column: 19, scope: !330)
!332 = !DILocation(line: 581, column: 7, scope: !2)
!333 = !DILocalVariable(name: "term", scope: !334, file: !3, line: 585, type: !6)
!334 = distinct !DILexicalBlock(scope: !330, file: !3, line: 582, column: 5)
!335 = !DILocation(line: 585, column: 19, scope: !334)
!336 = !DILocation(line: 585, column: 26, scope: !334)
!337 = !DILocation(line: 586, column: 23, scope: !334)
!338 = !DILocation(line: 586, column: 28, scope: !334)
!339 = !DILocation(line: 586, column: 33, scope: !334)
!340 = !DILocation(line: 586, column: 32, scope: !334)
!341 = !DILocation(line: 586, column: 38, scope: !334)
!342 = !DILocation(line: 586, column: 48, scope: !334)
!343 = !DILocation(line: 586, column: 41, scope: !334)
!344 = !DILocation(line: 586, column: 19, scope: !334)
!345 = !DILocation(line: 587, column: 5, scope: !334)
!346 = !DILocation(line: 588, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!348 = !DILocation(line: 588, column: 7, scope: !2)
!349 = !DILocation(line: 590, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !3, line: 589, column: 5)
!351 = !DILocation(line: 591, column: 7, scope: !350)
!352 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !51)
!353 = !DILocation(line: 594, column: 8, scope: !2)
!354 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!355 = !DILocation(line: 595, column: 15, scope: !2)
!356 = !DILocation(line: 595, column: 28, scope: !2)
!357 = !DILocation(line: 595, column: 45, scope: !2)
!358 = !DILocation(line: 595, column: 37, scope: !2)
!359 = !DILocation(line: 595, column: 35, scope: !2)
!360 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!361 = !DILocation(line: 596, column: 15, scope: !2)
!362 = !DILocation(line: 596, column: 37, scope: !2)
!363 = !DILocation(line: 596, column: 29, scope: !2)
!364 = !DILocation(line: 597, column: 8, scope: !365)
!365 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!366 = !DILocation(line: 597, column: 7, scope: !2)
!367 = !DILocation(line: 599, column: 21, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !3, line: 598, column: 5)
!369 = !DILocation(line: 599, column: 19, scope: !368)
!370 = !DILocation(line: 602, column: 20, scope: !368)
!371 = !DILocation(line: 603, column: 5, scope: !368)
!372 = !DILocation(line: 604, column: 12, scope: !373)
!373 = distinct !DILexicalBlock(scope: !365, file: !3, line: 604, column: 12)
!374 = !DILocation(line: 604, column: 27, scope: !373)
!375 = !DILocation(line: 604, column: 24, scope: !373)
!376 = !DILocation(line: 604, column: 12, scope: !365)
!377 = !DILocalVariable(name: "s", scope: !378, file: !3, line: 608, type: !6)
!378 = distinct !DILexicalBlock(scope: !373, file: !3, line: 605, column: 5)
!379 = !DILocation(line: 608, column: 19, scope: !378)
!380 = !DILocation(line: 608, column: 23, scope: !378)
!381 = !DILocalVariable(name: "spaces", scope: !378, file: !3, line: 609, type: !146)
!382 = !DILocation(line: 609, column: 14, scope: !378)
!383 = !DILocation(line: 610, column: 7, scope: !378)
!384 = !DILocation(line: 610, column: 14, scope: !378)
!385 = !DILocation(line: 610, column: 18, scope: !378)
!386 = !DILocation(line: 610, column: 16, scope: !378)
!387 = !DILocation(line: 610, column: 30, scope: !378)
!388 = !DILocation(line: 610, column: 33, scope: !378)
!389 = !DILocation(line: 610, column: 40, scope: !378)
!390 = !DILocation(line: 0, scope: !378)
!391 = !DILocation(line: 611, column: 21, scope: !378)
!392 = !DILocation(line: 611, column: 20, scope: !378)
!393 = !DILocation(line: 611, column: 19, scope: !378)
!394 = !DILocation(line: 611, column: 16, scope: !378)
!395 = distinct !{!395, !383, !391, !396}
!396 = !{!"llvm.loop.mustprogress"}
!397 = !DILocation(line: 612, column: 11, scope: !398)
!398 = distinct !DILexicalBlock(scope: !378, file: !3, line: 612, column: 11)
!399 = !DILocation(line: 612, column: 18, scope: !398)
!400 = !DILocation(line: 612, column: 11, scope: !378)
!401 = !DILocation(line: 615, column: 25, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !3, line: 613, column: 9)
!403 = !DILocation(line: 615, column: 23, scope: !402)
!404 = !DILocation(line: 616, column: 24, scope: !402)
!405 = !DILocation(line: 617, column: 9, scope: !402)
!406 = !DILocation(line: 618, column: 5, scope: !378)
!407 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !146)
!408 = !DILocation(line: 620, column: 10, scope: !2)
!409 = !DILocation(line: 620, column: 32, scope: !2)
!410 = !DILocation(line: 620, column: 23, scope: !2)
!411 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!412 = !DILocation(line: 625, column: 15, scope: !2)
!413 = !DILocation(line: 625, column: 27, scope: !2)
!414 = !DILocation(line: 625, column: 41, scope: !2)
!415 = !DILocation(line: 625, column: 39, scope: !2)
!416 = !DILocation(line: 626, column: 3, scope: !2)
!417 = !DILocation(line: 626, column: 11, scope: !2)
!418 = !DILocation(line: 626, column: 10, scope: !2)
!419 = !DILocation(line: 626, column: 21, scope: !2)
!420 = !DILocation(line: 626, column: 25, scope: !2)
!421 = !DILocation(line: 626, column: 24, scope: !2)
!422 = !DILocation(line: 626, column: 35, scope: !2)
!423 = !DILocation(line: 0, scope: !2)
!424 = !DILocation(line: 628, column: 12, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !3, line: 628, column: 11)
!426 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!427 = !DILocation(line: 628, column: 11, scope: !425)
!428 = !DILocation(line: 628, column: 22, scope: !425)
!429 = !DILocation(line: 628, column: 29, scope: !425)
!430 = !DILocation(line: 628, column: 34, scope: !425)
!431 = !DILocation(line: 628, column: 44, scope: !425)
!432 = !DILocation(line: 628, column: 32, scope: !425)
!433 = !DILocation(line: 628, column: 49, scope: !425)
!434 = !DILocation(line: 628, column: 11, scope: !426)
!435 = !DILocation(line: 629, column: 22, scope: !425)
!436 = !DILocation(line: 629, column: 9, scope: !425)
!437 = !DILocation(line: 630, column: 11, scope: !438)
!438 = distinct !DILexicalBlock(scope: !426, file: !3, line: 630, column: 11)
!439 = !DILocation(line: 630, column: 11, scope: !426)
!440 = !DILocation(line: 632, column: 16, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !3, line: 632, column: 15)
!442 = distinct !DILexicalBlock(scope: !438, file: !3, line: 631, column: 9)
!443 = !DILocation(line: 632, column: 15, scope: !441)
!444 = !DILocation(line: 632, column: 26, scope: !441)
!445 = !DILocation(line: 632, column: 34, scope: !441)
!446 = !DILocation(line: 632, column: 37, scope: !441)
!447 = !DILocation(line: 632, column: 15, scope: !442)
!448 = !DILocation(line: 633, column: 13, scope: !441)
!449 = !DILocation(line: 636, column: 16, scope: !450)
!450 = distinct !DILexicalBlock(scope: !442, file: !3, line: 636, column: 15)
!451 = !DILocation(line: 636, column: 29, scope: !450)
!452 = !DILocation(line: 636, column: 34, scope: !450)
!453 = !DILocation(line: 636, column: 44, scope: !450)
!454 = !DILocation(line: 636, column: 32, scope: !450)
!455 = !DILocation(line: 636, column: 49, scope: !450)
!456 = !DILocation(line: 636, column: 15, scope: !442)
!457 = !DILocation(line: 637, column: 13, scope: !450)
!458 = !DILocation(line: 638, column: 9, scope: !442)
!459 = !DILocation(line: 640, column: 16, scope: !426)
!460 = distinct !{!460, !416, !461, !396}
!461 = !DILocation(line: 641, column: 5, scope: !2)
!462 = !DILocation(line: 644, column: 3, scope: !2)
!463 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!464 = !DILocation(line: 648, column: 15, scope: !2)
!465 = !DILocation(line: 648, column: 38, scope: !2)
!466 = !DILocation(line: 648, column: 31, scope: !2)
!467 = !DILocation(line: 649, column: 38, scope: !2)
!468 = !DILocation(line: 649, column: 31, scope: !2)
!469 = !DILocation(line: 650, column: 38, scope: !2)
!470 = !DILocation(line: 650, column: 31, scope: !2)
!471 = !DILocation(line: 651, column: 38, scope: !2)
!472 = !DILocation(line: 651, column: 31, scope: !2)
!473 = !DILocation(line: 652, column: 38, scope: !2)
!474 = !DILocation(line: 652, column: 31, scope: !2)
!475 = !DILocation(line: 653, column: 38, scope: !2)
!476 = !DILocation(line: 653, column: 31, scope: !2)
!477 = !DILocation(line: 654, column: 38, scope: !2)
!478 = !DILocation(line: 654, column: 31, scope: !2)
!479 = !DILocation(line: 655, column: 38, scope: !2)
!480 = !DILocation(line: 655, column: 31, scope: !2)
!481 = !DILocation(line: 656, column: 38, scope: !2)
!482 = !DILocation(line: 656, column: 31, scope: !2)
!483 = !DILocation(line: 657, column: 38, scope: !2)
!484 = !DILocation(line: 657, column: 31, scope: !2)
!485 = !DILocation(line: 658, column: 31, scope: !2)
!486 = !DILocation(line: 663, column: 7, scope: !487)
!487 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!488 = !DILocation(line: 664, column: 7, scope: !487)
!489 = !DILocation(line: 664, column: 10, scope: !487)
!490 = !DILocation(line: 663, column: 7, scope: !2)
!491 = !DILocation(line: 670, column: 15, scope: !492)
!492 = distinct !DILexicalBlock(scope: !487, file: !3, line: 665, column: 5)
!493 = !DILocation(line: 670, column: 28, scope: !492)
!494 = !DILocation(line: 670, column: 47, scope: !492)
!495 = !DILocation(line: 670, column: 41, scope: !492)
!496 = !DILocation(line: 670, column: 59, scope: !492)
!497 = !DILocation(line: 669, column: 7, scope: !492)
!498 = !DILocation(line: 671, column: 5, scope: !492)
!499 = !DILocation(line: 676, column: 48, scope: !500)
!500 = distinct !DILexicalBlock(scope: !487, file: !3, line: 673, column: 5)
!501 = !DILocation(line: 677, column: 21, scope: !500)
!502 = !DILocation(line: 677, column: 15, scope: !500)
!503 = !DILocation(line: 677, column: 33, scope: !500)
!504 = !DILocation(line: 676, column: 7, scope: !500)
!505 = !DILocation(line: 679, column: 3, scope: !2)
!506 = !DILocation(line: 683, column: 3, scope: !2)
!507 = !DILocation(line: 686, column: 3, scope: !2)
!508 = !DILocation(line: 688, column: 3, scope: !2)
!509 = !DILocation(line: 691, column: 3, scope: !2)
!510 = !DILocation(line: 695, column: 3, scope: !2)
!511 = !DILocation(line: 696, column: 1, scope: !2)
!512 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !513, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !38)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !6}
!515 = !DILocalVariable(name: "program", arg: 1, scope: !512, file: !3, line: 836, type: !6)
!516 = !DILocation(line: 836, column: 34, scope: !512)
!517 = !DILocalVariable(name: "infomap", scope: !512, file: !3, line: 838, type: !518)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 896, elements: !524)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !512, file: !3, line: 838, size: 128, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !520, file: !3, line: 838, baseType: !6, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !520, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!524 = !{!525}
!525 = !DISubrange(count: 7)
!526 = !DILocation(line: 838, column: 67, scope: !512)
!527 = !DILocalVariable(name: "node", scope: !512, file: !3, line: 848, type: !6)
!528 = !DILocation(line: 848, column: 15, scope: !512)
!529 = !DILocation(line: 848, column: 22, scope: !512)
!530 = !DILocalVariable(name: "map_prog", scope: !512, file: !3, line: 849, type: !531)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!532 = !DILocation(line: 849, column: 25, scope: !512)
!533 = !DILocation(line: 849, column: 36, scope: !512)
!534 = !DILocation(line: 851, column: 3, scope: !512)
!535 = !DILocation(line: 851, column: 10, scope: !512)
!536 = !DILocation(line: 851, column: 20, scope: !512)
!537 = !DILocation(line: 851, column: 28, scope: !512)
!538 = !DILocation(line: 851, column: 40, scope: !512)
!539 = !DILocation(line: 851, column: 49, scope: !512)
!540 = !DILocation(line: 851, column: 59, scope: !512)
!541 = !DILocation(line: 851, column: 33, scope: !512)
!542 = !DILocation(line: 851, column: 31, scope: !512)
!543 = !DILocation(line: 0, scope: !512)
!544 = !DILocation(line: 852, column: 13, scope: !512)
!545 = distinct !{!545, !534, !544, !396}
!546 = !DILocation(line: 854, column: 7, scope: !547)
!547 = distinct !DILexicalBlock(scope: !512, file: !3, line: 854, column: 7)
!548 = !DILocation(line: 854, column: 17, scope: !547)
!549 = !DILocation(line: 854, column: 7, scope: !512)
!550 = !DILocation(line: 855, column: 12, scope: !547)
!551 = !DILocation(line: 855, column: 22, scope: !547)
!552 = !DILocation(line: 855, column: 10, scope: !547)
!553 = !DILocation(line: 855, column: 5, scope: !547)
!554 = !DILocation(line: 857, column: 3, scope: !512)
!555 = !DILocalVariable(name: "lc_messages", scope: !512, file: !3, line: 861, type: !6)
!556 = !DILocation(line: 861, column: 15, scope: !512)
!557 = !DILocation(line: 861, column: 29, scope: !512)
!558 = !DILocation(line: 862, column: 7, scope: !559)
!559 = distinct !DILexicalBlock(scope: !512, file: !3, line: 862, column: 7)
!560 = !DILocation(line: 862, column: 19, scope: !559)
!561 = !DILocation(line: 862, column: 22, scope: !559)
!562 = !DILocation(line: 862, column: 7, scope: !512)
!563 = !DILocation(line: 868, column: 7, scope: !564)
!564 = distinct !DILexicalBlock(scope: !559, file: !3, line: 863, column: 5)
!565 = !DILocation(line: 870, column: 5, scope: !564)
!566 = !DILocalVariable(name: "url_program", scope: !512, file: !3, line: 874, type: !6)
!567 = !DILocation(line: 874, column: 15, scope: !512)
!568 = !DILocation(line: 874, column: 36, scope: !512)
!569 = !DILocation(line: 874, column: 29, scope: !512)
!570 = !DILocation(line: 874, column: 61, scope: !512)
!571 = !DILocation(line: 875, column: 11, scope: !512)
!572 = !DILocation(line: 876, column: 24, scope: !512)
!573 = !DILocation(line: 875, column: 3, scope: !512)
!574 = !DILocation(line: 877, column: 11, scope: !512)
!575 = !DILocation(line: 878, column: 11, scope: !512)
!576 = !DILocation(line: 878, column: 17, scope: !512)
!577 = !DILocation(line: 878, column: 25, scope: !512)
!578 = !DILocation(line: 878, column: 22, scope: !512)
!579 = !DILocation(line: 877, column: 3, scope: !512)
!580 = !DILocation(line: 879, column: 1, scope: !512)
!581 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 56, type: !582, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !38)
!582 = !DISubroutineType(types: !583)
!583 = !{!35, !35, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!585 = !DILocalVariable(name: "argc", arg: 1, scope: !581, file: !10, line: 56, type: !35)
!586 = !DILocation(line: 56, column: 11, scope: !581)
!587 = !DILocalVariable(name: "argv", arg: 2, scope: !581, file: !10, line: 56, type: !584)
!588 = !DILocation(line: 56, column: 24, scope: !581)
!589 = !DILocalVariable(name: "NO_UID", scope: !581, file: !10, line: 58, type: !590)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !591, line: 79, baseType: !592)
!591 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !33, line: 146, baseType: !14)
!593 = !DILocation(line: 58, column: 9, scope: !581)
!594 = !DILocation(line: 61, column: 21, scope: !581)
!595 = !DILocation(line: 61, column: 3, scope: !581)
!596 = !DILocation(line: 62, column: 3, scope: !581)
!597 = !DILocation(line: 63, column: 3, scope: !581)
!598 = !DILocation(line: 64, column: 3, scope: !581)
!599 = !DILocation(line: 66, column: 3, scope: !581)
!600 = !DILocation(line: 68, column: 36, scope: !581)
!601 = !DILocation(line: 68, column: 42, scope: !581)
!602 = !DILocation(line: 69, column: 36, scope: !581)
!603 = !DILocation(line: 69, column: 58, scope: !581)
!604 = !DILocation(line: 68, column: 3, scope: !581)
!605 = !DILocation(line: 72, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !581, file: !10, line: 72, column: 7)
!607 = !DILocation(line: 72, column: 17, scope: !606)
!608 = !DILocation(line: 72, column: 14, scope: !606)
!609 = !DILocation(line: 72, column: 7, scope: !581)
!610 = !DILocation(line: 74, column: 7, scope: !611)
!611 = distinct !DILexicalBlock(scope: !606, file: !10, line: 73, column: 5)
!612 = !DILocation(line: 75, column: 7, scope: !611)
!613 = !DILocation(line: 78, column: 3, scope: !581)
!614 = !DILocation(line: 78, column: 9, scope: !581)
!615 = !DILocalVariable(name: "uid", scope: !581, file: !10, line: 79, type: !590)
!616 = !DILocation(line: 79, column: 9, scope: !581)
!617 = !DILocation(line: 79, column: 15, scope: !581)
!618 = !DILocalVariable(name: "pw", scope: !581, file: !10, line: 80, type: !619)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !621, line: 49, size: 384, elements: !622)
!621 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!622 = !{!623, !624, !625, !626, !628, !629, !630}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !620, file: !621, line: 51, baseType: !108, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !620, file: !621, line: 52, baseType: !108, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !620, file: !621, line: 54, baseType: !592, size: 32, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !620, file: !621, line: 55, baseType: !627, size: 32, offset: 160)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !33, line: 147, baseType: !14)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !620, file: !621, line: 56, baseType: !108, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !620, file: !621, line: 57, baseType: !108, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !620, file: !621, line: 58, baseType: !108, size: 64, offset: 320)
!631 = !DILocation(line: 80, column: 18, scope: !581)
!632 = !DILocation(line: 80, column: 23, scope: !581)
!633 = !DILocation(line: 80, column: 30, scope: !581)
!634 = !DILocation(line: 80, column: 27, scope: !581)
!635 = !DILocation(line: 80, column: 37, scope: !581)
!636 = !DILocation(line: 80, column: 40, scope: !581)
!637 = !DILocation(line: 80, column: 65, scope: !581)
!638 = !DILocation(line: 80, column: 55, scope: !581)
!639 = !DILocation(line: 81, column: 8, scope: !640)
!640 = distinct !DILexicalBlock(scope: !581, file: !10, line: 81, column: 7)
!641 = !DILocation(line: 81, column: 7, scope: !581)
!642 = !DILocation(line: 82, column: 5, scope: !640)
!643 = !DILocation(line: 84, column: 9, scope: !581)
!644 = !DILocation(line: 84, column: 13, scope: !581)
!645 = !DILocation(line: 84, column: 3, scope: !581)
!646 = !DILocation(line: 85, column: 3, scope: !581)
!647 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !47, file: !47, line: 50, type: !513, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !38)
!648 = !DILocalVariable(name: "file", arg: 1, scope: !647, file: !47, line: 50, type: !6)
!649 = !DILocation(line: 50, column: 41, scope: !647)
!650 = !DILocation(line: 52, column: 15, scope: !647)
!651 = !DILocation(line: 52, column: 13, scope: !647)
!652 = !DILocation(line: 53, column: 1, scope: !647)
!653 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !47, file: !47, line: 87, type: !654, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !38)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !51}
!656 = !DILocalVariable(name: "ignore", arg: 1, scope: !653, file: !47, line: 87, type: !51)
!657 = !DILocation(line: 87, column: 37, scope: !653)
!658 = !DILocation(line: 89, column: 18, scope: !653)
!659 = !DILocation(line: 89, column: 16, scope: !653)
!660 = !DILocation(line: 90, column: 1, scope: !653)
!661 = distinct !DISubprogram(name: "close_stdout", scope: !47, file: !47, line: 116, type: !84, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !38)
!662 = !DILocation(line: 118, column: 21, scope: !663)
!663 = distinct !DILexicalBlock(scope: !661, file: !47, line: 118, column: 7)
!664 = !DILocation(line: 118, column: 7, scope: !663)
!665 = !DILocation(line: 118, column: 29, scope: !663)
!666 = !DILocation(line: 119, column: 7, scope: !663)
!667 = !DILocation(line: 119, column: 12, scope: !663)
!668 = !DILocation(line: 119, column: 25, scope: !663)
!669 = !DILocation(line: 119, column: 28, scope: !663)
!670 = !DILocation(line: 119, column: 34, scope: !663)
!671 = !DILocation(line: 118, column: 7, scope: !661)
!672 = !DILocalVariable(name: "write_error", scope: !673, file: !47, line: 121, type: !6)
!673 = distinct !DILexicalBlock(scope: !663, file: !47, line: 120, column: 5)
!674 = !DILocation(line: 121, column: 19, scope: !673)
!675 = !DILocation(line: 121, column: 33, scope: !673)
!676 = !DILocation(line: 122, column: 11, scope: !677)
!677 = distinct !DILexicalBlock(scope: !673, file: !47, line: 122, column: 11)
!678 = !DILocation(line: 122, column: 11, scope: !673)
!679 = !DILocation(line: 123, column: 9, scope: !677)
!680 = !DILocation(line: 126, column: 9, scope: !677)
!681 = !DILocation(line: 128, column: 14, scope: !673)
!682 = !DILocation(line: 128, column: 7, scope: !673)
!683 = !DILocation(line: 133, column: 42, scope: !684)
!684 = distinct !DILexicalBlock(scope: !661, file: !47, line: 133, column: 7)
!685 = !DILocation(line: 133, column: 28, scope: !684)
!686 = !DILocation(line: 133, column: 50, scope: !684)
!687 = !DILocation(line: 133, column: 7, scope: !661)
!688 = !DILocation(line: 134, column: 12, scope: !684)
!689 = !DILocation(line: 134, column: 5, scope: !684)
!690 = !DILocation(line: 135, column: 1, scope: !661)
!691 = distinct !DISubprogram(name: "verror", scope: !55, file: !55, line: 251, type: !692, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !38)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !35, !35, !6, !63}
!694 = !DILocalVariable(name: "status", arg: 1, scope: !691, file: !55, line: 251, type: !35)
!695 = !DILocation(line: 251, column: 1, scope: !691)
!696 = !DILocalVariable(name: "errnum", arg: 2, scope: !691, file: !55, line: 251, type: !35)
!697 = !DILocalVariable(name: "message", arg: 3, scope: !691, file: !55, line: 251, type: !6)
!698 = !DILocalVariable(name: "args", arg: 4, scope: !691, file: !55, line: 251, type: !63)
!699 = !DILocation(line: 261, column: 3, scope: !691)
!700 = !DILocation(line: 265, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !691, file: !55, line: 265, column: 7)
!702 = !DILocation(line: 265, column: 7, scope: !691)
!703 = !DILocation(line: 266, column: 7, scope: !701)
!704 = !DILocation(line: 266, column: 5, scope: !701)
!705 = !DILocation(line: 272, column: 16, scope: !706)
!706 = distinct !DILexicalBlock(scope: !701, file: !55, line: 268, column: 5)
!707 = !DILocation(line: 272, column: 32, scope: !706)
!708 = !DILocation(line: 272, column: 7, scope: !706)
!709 = !DILocation(line: 276, column: 3, scope: !691)
!710 = !DILocation(line: 282, column: 1, scope: !691)
!711 = distinct !DISubprogram(name: "flush_stdout", scope: !55, file: !55, line: 163, type: !84, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !54, retainedNodes: !38)
!712 = !DILocalVariable(name: "stdout_fd", scope: !711, file: !55, line: 166, type: !35)
!713 = !DILocation(line: 166, column: 7, scope: !711)
!714 = !DILocation(line: 172, column: 13, scope: !711)
!715 = !DILocation(line: 182, column: 12, scope: !716)
!716 = distinct !DILexicalBlock(scope: !711, file: !55, line: 182, column: 7)
!717 = !DILocation(line: 182, column: 9, scope: !716)
!718 = !DILocation(line: 182, column: 22, scope: !716)
!719 = !DILocation(line: 182, column: 34, scope: !716)
!720 = !DILocation(line: 182, column: 25, scope: !716)
!721 = !DILocation(line: 182, column: 7, scope: !711)
!722 = !DILocation(line: 184, column: 5, scope: !716)
!723 = !DILocation(line: 185, column: 1, scope: !711)
!724 = distinct !DISubprogram(name: "error_tail", scope: !55, file: !55, line: 219, type: !692, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !54, retainedNodes: !38)
!725 = !DILocalVariable(name: "status", arg: 1, scope: !724, file: !55, line: 219, type: !35)
!726 = !DILocation(line: 219, column: 1, scope: !724)
!727 = !DILocalVariable(name: "errnum", arg: 2, scope: !724, file: !55, line: 219, type: !35)
!728 = !DILocalVariable(name: "message", arg: 3, scope: !724, file: !55, line: 219, type: !6)
!729 = !DILocalVariable(name: "args", arg: 4, scope: !724, file: !55, line: 219, type: !63)
!730 = !DILocation(line: 229, column: 13, scope: !724)
!731 = !DILocation(line: 229, column: 21, scope: !724)
!732 = !DILocation(line: 229, column: 3, scope: !724)
!733 = !DILocation(line: 232, column: 3, scope: !724)
!734 = !DILocation(line: 233, column: 7, scope: !735)
!735 = distinct !DILexicalBlock(scope: !724, file: !55, line: 233, column: 7)
!736 = !DILocation(line: 233, column: 7, scope: !724)
!737 = !DILocation(line: 234, column: 26, scope: !735)
!738 = !DILocation(line: 234, column: 5, scope: !735)
!739 = !DILocation(line: 238, column: 3, scope: !724)
!740 = !DILocation(line: 240, column: 3, scope: !724)
!741 = !DILocation(line: 241, column: 7, scope: !742)
!742 = distinct !DILexicalBlock(scope: !724, file: !55, line: 241, column: 7)
!743 = !DILocation(line: 241, column: 7, scope: !724)
!744 = !DILocation(line: 242, column: 11, scope: !742)
!745 = !DILocation(line: 242, column: 5, scope: !742)
!746 = !DILocation(line: 243, column: 1, scope: !724)
!747 = distinct !DISubprogram(name: "print_errno_message", scope: !55, file: !55, line: 188, type: !304, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !54, retainedNodes: !38)
!748 = !DILocalVariable(name: "errnum", arg: 1, scope: !747, file: !55, line: 188, type: !35)
!749 = !DILocation(line: 188, column: 26, scope: !747)
!750 = !DILocalVariable(name: "s", scope: !747, file: !55, line: 190, type: !6)
!751 = !DILocation(line: 190, column: 15, scope: !747)
!752 = !DILocalVariable(name: "errbuf", scope: !747, file: !55, line: 193, type: !753)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 1024)
!756 = !DILocation(line: 193, column: 8, scope: !747)
!757 = !DILocation(line: 195, column: 21, scope: !747)
!758 = !DILocation(line: 195, column: 29, scope: !747)
!759 = !DILocation(line: 195, column: 7, scope: !747)
!760 = !DILocation(line: 195, column: 5, scope: !747)
!761 = !DILocation(line: 207, column: 9, scope: !762)
!762 = distinct !DILexicalBlock(scope: !747, file: !55, line: 207, column: 7)
!763 = !DILocation(line: 207, column: 7, scope: !747)
!764 = !DILocation(line: 208, column: 9, scope: !762)
!765 = !DILocation(line: 208, column: 7, scope: !762)
!766 = !DILocation(line: 208, column: 5, scope: !762)
!767 = !DILocation(line: 214, column: 12, scope: !747)
!768 = !DILocation(line: 214, column: 28, scope: !747)
!769 = !DILocation(line: 214, column: 3, scope: !747)
!770 = !DILocation(line: 216, column: 1, scope: !747)
!771 = distinct !DISubprogram(name: "is_open", scope: !55, file: !55, line: 145, type: !772, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !54, retainedNodes: !38)
!772 = !DISubroutineType(types: !773)
!773 = !{!35, !35}
!774 = !DILocalVariable(name: "fd", arg: 1, scope: !771, file: !55, line: 145, type: !35)
!775 = !DILocation(line: 145, column: 14, scope: !771)
!776 = !DILocation(line: 157, column: 22, scope: !771)
!777 = !DILocation(line: 157, column: 15, scope: !771)
!778 = !DILocation(line: 157, column: 12, scope: !771)
!779 = !DILocation(line: 157, column: 3, scope: !771)
!780 = distinct !DISubprogram(name: "error", scope: !55, file: !55, line: 285, type: !781, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !38)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !35, !35, !6, null}
!783 = !DILocalVariable(name: "status", arg: 1, scope: !780, file: !55, line: 285, type: !35)
!784 = !DILocation(line: 285, column: 12, scope: !780)
!785 = !DILocalVariable(name: "errnum", arg: 2, scope: !780, file: !55, line: 285, type: !35)
!786 = !DILocation(line: 285, column: 24, scope: !780)
!787 = !DILocalVariable(name: "message", arg: 3, scope: !780, file: !55, line: 285, type: !6)
!788 = !DILocation(line: 285, column: 44, scope: !780)
!789 = !DILocalVariable(name: "ap", scope: !780, file: !55, line: 287, type: !63)
!790 = !DILocation(line: 287, column: 11, scope: !780)
!791 = !DILocation(line: 288, column: 3, scope: !780)
!792 = !DILocation(line: 289, column: 3, scope: !780)
!793 = !DILocation(line: 290, column: 3, scope: !780)
!794 = !DILocation(line: 291, column: 1, scope: !780)
!795 = !DILocalVariable(name: "status", arg: 1, scope: !60, file: !55, line: 298, type: !35)
!796 = !DILocation(line: 298, column: 1, scope: !60)
!797 = !DILocalVariable(name: "errnum", arg: 2, scope: !60, file: !55, line: 298, type: !35)
!798 = !DILocalVariable(name: "file_name", arg: 3, scope: !60, file: !55, line: 298, type: !6)
!799 = !DILocalVariable(name: "line_number", arg: 4, scope: !60, file: !55, line: 298, type: !14)
!800 = !DILocalVariable(name: "message", arg: 5, scope: !60, file: !55, line: 298, type: !6)
!801 = !DILocalVariable(name: "args", arg: 6, scope: !60, file: !55, line: 298, type: !63)
!802 = !DILocation(line: 302, column: 7, scope: !803)
!803 = distinct !DILexicalBlock(scope: !60, file: !55, line: 302, column: 7)
!804 = !DILocation(line: 302, column: 7, scope: !60)
!805 = !DILocation(line: 307, column: 11, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !55, line: 307, column: 11)
!807 = distinct !DILexicalBlock(scope: !803, file: !55, line: 303, column: 5)
!808 = !DILocation(line: 307, column: 30, scope: !806)
!809 = !DILocation(line: 307, column: 27, scope: !806)
!810 = !DILocation(line: 308, column: 11, scope: !806)
!811 = !DILocation(line: 308, column: 15, scope: !806)
!812 = !DILocation(line: 308, column: 28, scope: !806)
!813 = !DILocation(line: 308, column: 25, scope: !806)
!814 = !DILocation(line: 309, column: 15, scope: !806)
!815 = !DILocation(line: 309, column: 19, scope: !806)
!816 = !DILocation(line: 309, column: 33, scope: !806)
!817 = !DILocation(line: 310, column: 19, scope: !806)
!818 = !DILocation(line: 310, column: 22, scope: !806)
!819 = !DILocation(line: 310, column: 32, scope: !806)
!820 = !DILocation(line: 311, column: 19, scope: !806)
!821 = !DILocation(line: 311, column: 30, scope: !806)
!822 = !DILocation(line: 311, column: 45, scope: !806)
!823 = !DILocation(line: 311, column: 22, scope: !806)
!824 = !DILocation(line: 311, column: 56, scope: !806)
!825 = !DILocation(line: 307, column: 11, scope: !807)
!826 = !DILocation(line: 314, column: 9, scope: !806)
!827 = !DILocation(line: 316, column: 23, scope: !807)
!828 = !DILocation(line: 316, column: 21, scope: !807)
!829 = !DILocation(line: 317, column: 25, scope: !807)
!830 = !DILocation(line: 317, column: 23, scope: !807)
!831 = !DILocation(line: 318, column: 5, scope: !807)
!832 = !DILocation(line: 327, column: 3, scope: !60)
!833 = !DILocation(line: 331, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !60, file: !55, line: 331, column: 7)
!835 = !DILocation(line: 331, column: 7, scope: !60)
!836 = !DILocation(line: 332, column: 7, scope: !834)
!837 = !DILocation(line: 332, column: 5, scope: !834)
!838 = !DILocation(line: 338, column: 16, scope: !839)
!839 = distinct !DILexicalBlock(scope: !834, file: !55, line: 334, column: 5)
!840 = !DILocation(line: 338, column: 31, scope: !839)
!841 = !DILocation(line: 338, column: 7, scope: !839)
!842 = !DILocation(line: 346, column: 12, scope: !60)
!843 = !DILocation(line: 346, column: 20, scope: !60)
!844 = !DILocation(line: 346, column: 30, scope: !60)
!845 = !DILocation(line: 347, column: 12, scope: !60)
!846 = !DILocation(line: 347, column: 23, scope: !60)
!847 = !DILocation(line: 346, column: 3, scope: !60)
!848 = !DILocation(line: 350, column: 3, scope: !60)
!849 = !DILocation(line: 356, column: 1, scope: !60)
!850 = distinct !DISubprogram(name: "error_at_line", scope: !55, file: !55, line: 359, type: !851, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !38)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !35, !35, !6, !14, !6, null}
!853 = !DILocalVariable(name: "status", arg: 1, scope: !850, file: !55, line: 359, type: !35)
!854 = !DILocation(line: 359, column: 20, scope: !850)
!855 = !DILocalVariable(name: "errnum", arg: 2, scope: !850, file: !55, line: 359, type: !35)
!856 = !DILocation(line: 359, column: 32, scope: !850)
!857 = !DILocalVariable(name: "file_name", arg: 3, scope: !850, file: !55, line: 359, type: !6)
!858 = !DILocation(line: 359, column: 52, scope: !850)
!859 = !DILocalVariable(name: "line_number", arg: 4, scope: !850, file: !55, line: 360, type: !14)
!860 = !DILocation(line: 360, column: 29, scope: !850)
!861 = !DILocalVariable(name: "message", arg: 5, scope: !850, file: !55, line: 360, type: !6)
!862 = !DILocation(line: 360, column: 54, scope: !850)
!863 = !DILocalVariable(name: "ap", scope: !850, file: !55, line: 362, type: !63)
!864 = !DILocation(line: 362, column: 11, scope: !850)
!865 = !DILocation(line: 363, column: 3, scope: !850)
!866 = !DILocation(line: 364, column: 3, scope: !850)
!867 = !DILocation(line: 366, column: 3, scope: !850)
!868 = !DILocation(line: 367, column: 1, scope: !850)
!869 = distinct !DISubprogram(name: "getprogname", scope: !233, file: !233, line: 54, type: !870, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !38)
!870 = !DISubroutineType(types: !871)
!871 = !{!6}
!872 = !DILocation(line: 58, column: 10, scope: !869)
!873 = !DILocation(line: 58, column: 3, scope: !869)
!874 = distinct !DISubprogram(name: "parse_long_options", scope: !89, file: !89, line: 45, type: !875, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !88, retainedNodes: !38)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !35, !584, !6, !6, !6, !877, null}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!878 = !DILocalVariable(name: "argc", arg: 1, scope: !874, file: !89, line: 45, type: !35)
!879 = !DILocation(line: 45, column: 25, scope: !874)
!880 = !DILocalVariable(name: "argv", arg: 2, scope: !874, file: !89, line: 46, type: !584)
!881 = !DILocation(line: 46, column: 28, scope: !874)
!882 = !DILocalVariable(name: "command_name", arg: 3, scope: !874, file: !89, line: 47, type: !6)
!883 = !DILocation(line: 47, column: 33, scope: !874)
!884 = !DILocalVariable(name: "package", arg: 4, scope: !874, file: !89, line: 48, type: !6)
!885 = !DILocation(line: 48, column: 33, scope: !874)
!886 = !DILocalVariable(name: "version", arg: 5, scope: !874, file: !89, line: 49, type: !6)
!887 = !DILocation(line: 49, column: 33, scope: !874)
!888 = !DILocalVariable(name: "usage_func", arg: 6, scope: !874, file: !89, line: 50, type: !877)
!889 = !DILocation(line: 50, column: 28, scope: !874)
!890 = !DILocalVariable(name: "saved_opterr", scope: !874, file: !89, line: 53, type: !35)
!891 = !DILocation(line: 53, column: 7, scope: !874)
!892 = !DILocation(line: 53, column: 22, scope: !874)
!893 = !DILocation(line: 56, column: 10, scope: !874)
!894 = !DILocation(line: 58, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !874, file: !89, line: 58, column: 7)
!896 = !DILocation(line: 58, column: 12, scope: !895)
!897 = !DILocation(line: 58, column: 7, scope: !874)
!898 = !DILocalVariable(name: "c", scope: !899, file: !89, line: 60, type: !35)
!899 = distinct !DILexicalBlock(scope: !895, file: !89, line: 59, column: 5)
!900 = !DILocation(line: 60, column: 11, scope: !899)
!901 = !DILocation(line: 60, column: 28, scope: !899)
!902 = !DILocation(line: 60, column: 34, scope: !899)
!903 = !DILocation(line: 60, column: 15, scope: !899)
!904 = !DILocation(line: 61, column: 11, scope: !905)
!905 = distinct !DILexicalBlock(scope: !899, file: !89, line: 61, column: 11)
!906 = !DILocation(line: 61, column: 13, scope: !905)
!907 = !DILocation(line: 61, column: 11, scope: !899)
!908 = !DILocation(line: 63, column: 19, scope: !909)
!909 = distinct !DILexicalBlock(scope: !905, file: !89, line: 62, column: 9)
!910 = !DILocation(line: 63, column: 11, scope: !909)
!911 = !DILocation(line: 66, column: 17, scope: !912)
!912 = distinct !DILexicalBlock(scope: !909, file: !89, line: 64, column: 13)
!913 = !DILocation(line: 66, column: 15, scope: !912)
!914 = !DILocation(line: 67, column: 15, scope: !912)
!915 = !DILocalVariable(name: "authors", scope: !916, file: !89, line: 71, type: !917)
!916 = distinct !DILexicalBlock(scope: !912, file: !89, line: 70, column: 15)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !64, line: 52, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !66, line: 32, baseType: !919)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !920, baseType: !921)
!920 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !70, size: 256, elements: !922)
!922 = !{!923, !924, !925, !926, !927}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !921, file: !920, line: 71, baseType: !29, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !921, file: !920, line: 71, baseType: !29, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !921, file: !920, line: 71, baseType: !29, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !921, file: !920, line: 71, baseType: !35, size: 32, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !921, file: !920, line: 71, baseType: !35, size: 32, offset: 224)
!928 = !DILocation(line: 71, column: 25, scope: !916)
!929 = !DILocation(line: 72, column: 17, scope: !916)
!930 = !DILocation(line: 73, column: 33, scope: !916)
!931 = !DILocation(line: 73, column: 41, scope: !916)
!932 = !DILocation(line: 73, column: 55, scope: !916)
!933 = !DILocation(line: 73, column: 64, scope: !916)
!934 = !DILocation(line: 73, column: 17, scope: !916)
!935 = !DILocation(line: 74, column: 17, scope: !916)
!936 = !DILocation(line: 79, column: 15, scope: !912)
!937 = !DILocation(line: 81, column: 9, scope: !909)
!938 = !DILocation(line: 82, column: 5, scope: !899)
!939 = !DILocation(line: 85, column: 12, scope: !874)
!940 = !DILocation(line: 85, column: 10, scope: !874)
!941 = !DILocation(line: 89, column: 10, scope: !874)
!942 = !DILocation(line: 90, column: 1, scope: !874)
!943 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !89, file: !89, line: 98, type: !944, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !88, retainedNodes: !38)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !35, !584, !6, !6, !6, !51, !877, null}
!946 = !DILocalVariable(name: "argc", arg: 1, scope: !943, file: !89, line: 98, type: !35)
!947 = !DILocation(line: 98, column: 38, scope: !943)
!948 = !DILocalVariable(name: "argv", arg: 2, scope: !943, file: !89, line: 99, type: !584)
!949 = !DILocation(line: 99, column: 41, scope: !943)
!950 = !DILocalVariable(name: "command_name", arg: 3, scope: !943, file: !89, line: 100, type: !6)
!951 = !DILocation(line: 100, column: 46, scope: !943)
!952 = !DILocalVariable(name: "package", arg: 4, scope: !943, file: !89, line: 101, type: !6)
!953 = !DILocation(line: 101, column: 46, scope: !943)
!954 = !DILocalVariable(name: "version", arg: 5, scope: !943, file: !89, line: 102, type: !6)
!955 = !DILocation(line: 102, column: 46, scope: !943)
!956 = !DILocalVariable(name: "scan_all", arg: 6, scope: !943, file: !89, line: 103, type: !51)
!957 = !DILocation(line: 103, column: 39, scope: !943)
!958 = !DILocalVariable(name: "usage_func", arg: 7, scope: !943, file: !89, line: 104, type: !877)
!959 = !DILocation(line: 104, column: 41, scope: !943)
!960 = !DILocalVariable(name: "saved_opterr", scope: !943, file: !89, line: 107, type: !35)
!961 = !DILocation(line: 107, column: 7, scope: !943)
!962 = !DILocation(line: 107, column: 22, scope: !943)
!963 = !DILocation(line: 110, column: 10, scope: !943)
!964 = !DILocalVariable(name: "optstring", scope: !943, file: !89, line: 112, type: !6)
!965 = !DILocation(line: 112, column: 15, scope: !943)
!966 = !DILocation(line: 112, column: 27, scope: !943)
!967 = !DILocalVariable(name: "c", scope: !943, file: !89, line: 114, type: !35)
!968 = !DILocation(line: 114, column: 7, scope: !943)
!969 = !DILocation(line: 114, column: 24, scope: !943)
!970 = !DILocation(line: 114, column: 30, scope: !943)
!971 = !DILocation(line: 114, column: 36, scope: !943)
!972 = !DILocation(line: 114, column: 11, scope: !943)
!973 = !DILocation(line: 115, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !943, file: !89, line: 115, column: 7)
!975 = !DILocation(line: 115, column: 9, scope: !974)
!976 = !DILocation(line: 115, column: 7, scope: !943)
!977 = !DILocation(line: 117, column: 15, scope: !978)
!978 = distinct !DILexicalBlock(scope: !974, file: !89, line: 116, column: 5)
!979 = !DILocation(line: 117, column: 7, scope: !978)
!980 = !DILocation(line: 120, column: 13, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !89, line: 118, column: 9)
!982 = !DILocation(line: 120, column: 11, scope: !981)
!983 = !DILocation(line: 121, column: 11, scope: !981)
!984 = !DILocalVariable(name: "authors", scope: !985, file: !89, line: 125, type: !917)
!985 = distinct !DILexicalBlock(scope: !981, file: !89, line: 124, column: 11)
!986 = !DILocation(line: 125, column: 21, scope: !985)
!987 = !DILocation(line: 126, column: 13, scope: !985)
!988 = !DILocation(line: 127, column: 29, scope: !985)
!989 = !DILocation(line: 127, column: 37, scope: !985)
!990 = !DILocation(line: 127, column: 51, scope: !985)
!991 = !DILocation(line: 127, column: 60, scope: !985)
!992 = !DILocation(line: 127, column: 13, scope: !985)
!993 = !DILocation(line: 128, column: 13, scope: !985)
!994 = !DILocation(line: 132, column: 13, scope: !981)
!995 = !DILocation(line: 132, column: 26, scope: !981)
!996 = !DILocation(line: 132, column: 11, scope: !981)
!997 = !DILocation(line: 133, column: 11, scope: !981)
!998 = !DILocation(line: 135, column: 5, scope: !978)
!999 = !DILocation(line: 138, column: 12, scope: !943)
!1000 = !DILocation(line: 138, column: 10, scope: !943)
!1001 = !DILocation(line: 139, column: 1, scope: !943)
!1002 = distinct !DISubprogram(name: "set_program_name", scope: !106, file: !106, line: 37, type: !513, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !38)
!1003 = !DILocalVariable(name: "argv0", arg: 1, scope: !1002, file: !106, line: 37, type: !6)
!1004 = !DILocation(line: 37, column: 31, scope: !1002)
!1005 = !DILocalVariable(name: "slash", scope: !1002, file: !106, line: 44, type: !6)
!1006 = !DILocation(line: 44, column: 15, scope: !1002)
!1007 = !DILocation(line: 44, column: 32, scope: !1002)
!1008 = !DILocation(line: 44, column: 23, scope: !1002)
!1009 = !DILocalVariable(name: "base", scope: !1002, file: !106, line: 45, type: !6)
!1010 = !DILocation(line: 45, column: 15, scope: !1002)
!1011 = !DILocation(line: 45, column: 22, scope: !1002)
!1012 = !DILocation(line: 45, column: 30, scope: !1002)
!1013 = !DILocation(line: 45, column: 36, scope: !1002)
!1014 = !DILocation(line: 45, column: 42, scope: !1002)
!1015 = !DILocation(line: 46, column: 12, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1002, file: !106, line: 46, column: 7)
!1017 = !DILocation(line: 46, column: 19, scope: !1016)
!1018 = !DILocation(line: 46, column: 17, scope: !1016)
!1019 = !DILocation(line: 46, column: 9, scope: !1016)
!1020 = !DILocation(line: 46, column: 25, scope: !1016)
!1021 = !DILocation(line: 46, column: 35, scope: !1016)
!1022 = !DILocation(line: 46, column: 40, scope: !1016)
!1023 = !DILocation(line: 46, column: 28, scope: !1016)
!1024 = !DILocation(line: 46, column: 7, scope: !1002)
!1025 = !DILocation(line: 48, column: 15, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1016, file: !106, line: 47, column: 5)
!1027 = !DILocation(line: 48, column: 13, scope: !1026)
!1028 = !DILocation(line: 49, column: 20, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !106, line: 49, column: 11)
!1030 = !DILocation(line: 49, column: 11, scope: !1029)
!1031 = !DILocation(line: 49, column: 36, scope: !1029)
!1032 = !DILocation(line: 49, column: 11, scope: !1026)
!1033 = !DILocation(line: 51, column: 16, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1029, file: !106, line: 50, column: 9)
!1035 = !DILocation(line: 52, column: 19, scope: !1034)
!1036 = !DILocation(line: 52, column: 17, scope: !1034)
!1037 = !DILocation(line: 53, column: 9, scope: !1034)
!1038 = !DILocation(line: 54, column: 5, scope: !1026)
!1039 = !DILocation(line: 65, column: 18, scope: !1002)
!1040 = !DILocation(line: 65, column: 16, scope: !1002)
!1041 = !DILocation(line: 71, column: 38, scope: !1002)
!1042 = !DILocation(line: 71, column: 27, scope: !1002)
!1043 = !DILocation(line: 74, column: 44, scope: !1002)
!1044 = !DILocation(line: 74, column: 33, scope: !1002)
!1045 = !DILocation(line: 76, column: 1, scope: !1002)
!1046 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !112, file: !113, line: 38, type: !6)
!1047 = !DILocation(line: 38, column: 31, scope: !112)
!1048 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !112, file: !113, line: 38, type: !6)
!1049 = !DILocation(line: 38, column: 66, scope: !112)
!1050 = !DILocalVariable(name: "translation", scope: !112, file: !113, line: 40, type: !6)
!1051 = !DILocation(line: 40, column: 15, scope: !112)
!1052 = !DILocation(line: 40, column: 38, scope: !112)
!1053 = !DILocation(line: 40, column: 29, scope: !112)
!1054 = !DILocation(line: 41, column: 7, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !112, file: !113, line: 41, column: 7)
!1056 = !DILocation(line: 41, column: 22, scope: !1055)
!1057 = !DILocation(line: 41, column: 19, scope: !1055)
!1058 = !DILocation(line: 41, column: 7, scope: !112)
!1059 = !DILocation(line: 42, column: 12, scope: !1055)
!1060 = !DILocation(line: 42, column: 5, scope: !1055)
!1061 = !DILocalVariable(name: "w", scope: !112, file: !113, line: 47, type: !1062)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1063, line: 37, baseType: !1064)
!1063 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !33, line: 57, baseType: !1065)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !33, line: 42, baseType: !14)
!1066 = !DILocation(line: 47, column: 12, scope: !112)
!1067 = !DILocalVariable(name: "mbs", scope: !112, file: !113, line: 48, type: !1068)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !219, line: 6, baseType: !1069)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !221, line: 21, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 13, size: 64, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1070, file: !221, line: 15, baseType: !35, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1070, file: !221, line: 20, baseType: !1074, size: 32, offset: 32)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1070, file: !221, line: 16, size: 32, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1074, file: !221, line: 18, baseType: !14, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1074, file: !221, line: 19, baseType: !230, size: 32)
!1078 = !DILocation(line: 48, column: 13, scope: !112)
!1079 = !DILocation(line: 48, column: 18, scope: !112)
!1080 = !DILocation(line: 49, column: 7, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !112, file: !113, line: 49, column: 7)
!1082 = !DILocation(line: 49, column: 39, scope: !1081)
!1083 = !DILocation(line: 49, column: 44, scope: !1081)
!1084 = !DILocation(line: 49, column: 47, scope: !1081)
!1085 = !DILocation(line: 49, column: 49, scope: !1081)
!1086 = !DILocation(line: 49, column: 7, scope: !112)
!1087 = !DILocation(line: 50, column: 12, scope: !1081)
!1088 = !DILocation(line: 50, column: 5, scope: !1081)
!1089 = !DILocation(line: 53, column: 10, scope: !112)
!1090 = !DILocation(line: 53, column: 3, scope: !112)
!1091 = !DILocation(line: 54, column: 1, scope: !112)
!1092 = distinct !DISubprogram(name: "clone_quoting_options", scope: !124, file: !124, line: 113, type: !1093, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!1095, !1095}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!1096 = !DILocalVariable(name: "o", arg: 1, scope: !1092, file: !124, line: 113, type: !1095)
!1097 = !DILocation(line: 113, column: 48, scope: !1092)
!1098 = !DILocalVariable(name: "saved_errno", scope: !1092, file: !124, line: 115, type: !35)
!1099 = !DILocation(line: 115, column: 7, scope: !1092)
!1100 = !DILocation(line: 115, column: 21, scope: !1092)
!1101 = !DILocalVariable(name: "p", scope: !1092, file: !124, line: 116, type: !1095)
!1102 = !DILocation(line: 116, column: 27, scope: !1092)
!1103 = !DILocation(line: 116, column: 40, scope: !1092)
!1104 = !DILocation(line: 116, column: 44, scope: !1092)
!1105 = !DILocation(line: 116, column: 31, scope: !1092)
!1106 = !DILocation(line: 118, column: 11, scope: !1092)
!1107 = !DILocation(line: 118, column: 3, scope: !1092)
!1108 = !DILocation(line: 118, column: 9, scope: !1092)
!1109 = !DILocation(line: 119, column: 10, scope: !1092)
!1110 = !DILocation(line: 119, column: 3, scope: !1092)
!1111 = distinct !DISubprogram(name: "get_quoting_style", scope: !124, file: !124, line: 124, type: !1112, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!126, !1114}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!1116 = !DILocalVariable(name: "o", arg: 1, scope: !1111, file: !124, line: 124, type: !1114)
!1117 = !DILocation(line: 124, column: 50, scope: !1111)
!1118 = !DILocation(line: 126, column: 11, scope: !1111)
!1119 = !DILocation(line: 126, column: 15, scope: !1111)
!1120 = !DILocation(line: 126, column: 46, scope: !1111)
!1121 = !DILocation(line: 126, column: 3, scope: !1111)
!1122 = distinct !DISubprogram(name: "set_quoting_style", scope: !124, file: !124, line: 132, type: !1123, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !1095, !126}
!1125 = !DILocalVariable(name: "o", arg: 1, scope: !1122, file: !124, line: 132, type: !1095)
!1126 = !DILocation(line: 132, column: 44, scope: !1122)
!1127 = !DILocalVariable(name: "s", arg: 2, scope: !1122, file: !124, line: 132, type: !126)
!1128 = !DILocation(line: 132, column: 66, scope: !1122)
!1129 = !DILocation(line: 134, column: 47, scope: !1122)
!1130 = !DILocation(line: 134, column: 4, scope: !1122)
!1131 = !DILocation(line: 134, column: 8, scope: !1122)
!1132 = !DILocation(line: 134, column: 39, scope: !1122)
!1133 = !DILocation(line: 134, column: 45, scope: !1122)
!1134 = !DILocation(line: 135, column: 1, scope: !1122)
!1135 = distinct !DISubprogram(name: "set_char_quoting", scope: !124, file: !124, line: 143, type: !1136, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!35, !1095, !8, !35}
!1138 = !DILocalVariable(name: "o", arg: 1, scope: !1135, file: !124, line: 143, type: !1095)
!1139 = !DILocation(line: 143, column: 43, scope: !1135)
!1140 = !DILocalVariable(name: "c", arg: 2, scope: !1135, file: !124, line: 143, type: !8)
!1141 = !DILocation(line: 143, column: 51, scope: !1135)
!1142 = !DILocalVariable(name: "i", arg: 3, scope: !1135, file: !124, line: 143, type: !35)
!1143 = !DILocation(line: 143, column: 58, scope: !1135)
!1144 = !DILocalVariable(name: "uc", scope: !1135, file: !124, line: 145, type: !216)
!1145 = !DILocation(line: 145, column: 17, scope: !1135)
!1146 = !DILocation(line: 145, column: 22, scope: !1135)
!1147 = !DILocalVariable(name: "p", scope: !1135, file: !124, line: 146, type: !1148)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1149 = !DILocation(line: 146, column: 17, scope: !1135)
!1150 = !DILocation(line: 147, column: 6, scope: !1135)
!1151 = !DILocation(line: 147, column: 10, scope: !1135)
!1152 = !DILocation(line: 147, column: 41, scope: !1135)
!1153 = !DILocation(line: 147, column: 5, scope: !1135)
!1154 = !DILocation(line: 147, column: 59, scope: !1135)
!1155 = !DILocation(line: 147, column: 62, scope: !1135)
!1156 = !DILocation(line: 147, column: 57, scope: !1135)
!1157 = !DILocalVariable(name: "shift", scope: !1135, file: !124, line: 148, type: !35)
!1158 = !DILocation(line: 148, column: 7, scope: !1135)
!1159 = !DILocation(line: 148, column: 15, scope: !1135)
!1160 = !DILocation(line: 148, column: 18, scope: !1135)
!1161 = !DILocalVariable(name: "r", scope: !1135, file: !124, line: 149, type: !14)
!1162 = !DILocation(line: 149, column: 16, scope: !1135)
!1163 = !DILocation(line: 149, column: 22, scope: !1135)
!1164 = !DILocation(line: 149, column: 21, scope: !1135)
!1165 = !DILocation(line: 149, column: 27, scope: !1135)
!1166 = !DILocation(line: 149, column: 24, scope: !1135)
!1167 = !DILocation(line: 149, column: 34, scope: !1135)
!1168 = !DILocation(line: 150, column: 11, scope: !1135)
!1169 = !DILocation(line: 150, column: 13, scope: !1135)
!1170 = !DILocation(line: 150, column: 21, scope: !1135)
!1171 = !DILocation(line: 150, column: 19, scope: !1135)
!1172 = !DILocation(line: 150, column: 27, scope: !1135)
!1173 = !DILocation(line: 150, column: 24, scope: !1135)
!1174 = !DILocation(line: 150, column: 4, scope: !1135)
!1175 = !DILocation(line: 150, column: 6, scope: !1135)
!1176 = !DILocation(line: 151, column: 10, scope: !1135)
!1177 = !DILocation(line: 151, column: 3, scope: !1135)
!1178 = distinct !DISubprogram(name: "set_quoting_flags", scope: !124, file: !124, line: 159, type: !1179, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!35, !1095, !35}
!1181 = !DILocalVariable(name: "o", arg: 1, scope: !1178, file: !124, line: 159, type: !1095)
!1182 = !DILocation(line: 159, column: 44, scope: !1178)
!1183 = !DILocalVariable(name: "i", arg: 2, scope: !1178, file: !124, line: 159, type: !35)
!1184 = !DILocation(line: 159, column: 51, scope: !1178)
!1185 = !DILocation(line: 161, column: 8, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1178, file: !124, line: 161, column: 7)
!1187 = !DILocation(line: 161, column: 7, scope: !1178)
!1188 = !DILocation(line: 162, column: 7, scope: !1186)
!1189 = !DILocation(line: 162, column: 5, scope: !1186)
!1190 = !DILocalVariable(name: "r", scope: !1178, file: !124, line: 163, type: !35)
!1191 = !DILocation(line: 163, column: 7, scope: !1178)
!1192 = !DILocation(line: 163, column: 11, scope: !1178)
!1193 = !DILocation(line: 163, column: 14, scope: !1178)
!1194 = !DILocation(line: 164, column: 14, scope: !1178)
!1195 = !DILocation(line: 164, column: 3, scope: !1178)
!1196 = !DILocation(line: 164, column: 6, scope: !1178)
!1197 = !DILocation(line: 164, column: 12, scope: !1178)
!1198 = !DILocation(line: 165, column: 10, scope: !1178)
!1199 = !DILocation(line: 165, column: 3, scope: !1178)
!1200 = distinct !DISubprogram(name: "set_custom_quoting", scope: !124, file: !124, line: 169, type: !1201, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{null, !1095, !6, !6}
!1203 = !DILocalVariable(name: "o", arg: 1, scope: !1200, file: !124, line: 169, type: !1095)
!1204 = !DILocation(line: 169, column: 45, scope: !1200)
!1205 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1200, file: !124, line: 170, type: !6)
!1206 = !DILocation(line: 170, column: 33, scope: !1200)
!1207 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1200, file: !124, line: 170, type: !6)
!1208 = !DILocation(line: 170, column: 57, scope: !1200)
!1209 = !DILocation(line: 172, column: 8, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1200, file: !124, line: 172, column: 7)
!1211 = !DILocation(line: 172, column: 7, scope: !1200)
!1212 = !DILocation(line: 173, column: 7, scope: !1210)
!1213 = !DILocation(line: 173, column: 5, scope: !1210)
!1214 = !DILocation(line: 174, column: 3, scope: !1200)
!1215 = !DILocation(line: 174, column: 6, scope: !1200)
!1216 = !DILocation(line: 174, column: 12, scope: !1200)
!1217 = !DILocation(line: 175, column: 8, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1200, file: !124, line: 175, column: 7)
!1219 = !DILocation(line: 175, column: 19, scope: !1218)
!1220 = !DILocation(line: 175, column: 23, scope: !1218)
!1221 = !DILocation(line: 175, column: 7, scope: !1200)
!1222 = !DILocation(line: 176, column: 5, scope: !1218)
!1223 = !DILocation(line: 177, column: 19, scope: !1200)
!1224 = !DILocation(line: 177, column: 3, scope: !1200)
!1225 = !DILocation(line: 177, column: 6, scope: !1200)
!1226 = !DILocation(line: 177, column: 17, scope: !1200)
!1227 = !DILocation(line: 178, column: 20, scope: !1200)
!1228 = !DILocation(line: 178, column: 3, scope: !1200)
!1229 = !DILocation(line: 178, column: 6, scope: !1200)
!1230 = !DILocation(line: 178, column: 18, scope: !1200)
!1231 = !DILocation(line: 179, column: 1, scope: !1200)
!1232 = distinct !DISubprogram(name: "quotearg_buffer", scope: !124, file: !124, line: 774, type: !1233, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!146, !108, !146, !6, !146, !1114}
!1235 = !DILocalVariable(name: "buffer", arg: 1, scope: !1232, file: !124, line: 774, type: !108)
!1236 = !DILocation(line: 774, column: 24, scope: !1232)
!1237 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1232, file: !124, line: 774, type: !146)
!1238 = !DILocation(line: 774, column: 39, scope: !1232)
!1239 = !DILocalVariable(name: "arg", arg: 3, scope: !1232, file: !124, line: 775, type: !6)
!1240 = !DILocation(line: 775, column: 30, scope: !1232)
!1241 = !DILocalVariable(name: "argsize", arg: 4, scope: !1232, file: !124, line: 775, type: !146)
!1242 = !DILocation(line: 775, column: 42, scope: !1232)
!1243 = !DILocalVariable(name: "o", arg: 5, scope: !1232, file: !124, line: 776, type: !1114)
!1244 = !DILocation(line: 776, column: 48, scope: !1232)
!1245 = !DILocalVariable(name: "p", scope: !1232, file: !124, line: 778, type: !1114)
!1246 = !DILocation(line: 778, column: 33, scope: !1232)
!1247 = !DILocation(line: 778, column: 37, scope: !1232)
!1248 = !DILocation(line: 778, column: 41, scope: !1232)
!1249 = !DILocalVariable(name: "saved_errno", scope: !1232, file: !124, line: 779, type: !35)
!1250 = !DILocation(line: 779, column: 7, scope: !1232)
!1251 = !DILocation(line: 779, column: 21, scope: !1232)
!1252 = !DILocalVariable(name: "r", scope: !1232, file: !124, line: 780, type: !146)
!1253 = !DILocation(line: 780, column: 10, scope: !1232)
!1254 = !DILocation(line: 780, column: 40, scope: !1232)
!1255 = !DILocation(line: 780, column: 48, scope: !1232)
!1256 = !DILocation(line: 780, column: 60, scope: !1232)
!1257 = !DILocation(line: 780, column: 65, scope: !1232)
!1258 = !DILocation(line: 781, column: 40, scope: !1232)
!1259 = !DILocation(line: 781, column: 43, scope: !1232)
!1260 = !DILocation(line: 781, column: 50, scope: !1232)
!1261 = !DILocation(line: 781, column: 53, scope: !1232)
!1262 = !DILocation(line: 781, column: 60, scope: !1232)
!1263 = !DILocation(line: 781, column: 63, scope: !1232)
!1264 = !DILocation(line: 782, column: 40, scope: !1232)
!1265 = !DILocation(line: 782, column: 43, scope: !1232)
!1266 = !DILocation(line: 782, column: 55, scope: !1232)
!1267 = !DILocation(line: 782, column: 58, scope: !1232)
!1268 = !DILocation(line: 780, column: 14, scope: !1232)
!1269 = !DILocation(line: 783, column: 11, scope: !1232)
!1270 = !DILocation(line: 783, column: 3, scope: !1232)
!1271 = !DILocation(line: 783, column: 9, scope: !1232)
!1272 = !DILocation(line: 784, column: 10, scope: !1232)
!1273 = !DILocation(line: 784, column: 3, scope: !1232)
!1274 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !124, file: !124, line: 251, type: !1275, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !123, retainedNodes: !38)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!146, !108, !146, !6, !146, !126, !35, !1277, !6, !6}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1279 = !DILocalVariable(name: "buffer", arg: 1, scope: !1274, file: !124, line: 251, type: !108)
!1280 = !DILocation(line: 251, column: 33, scope: !1274)
!1281 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1274, file: !124, line: 251, type: !146)
!1282 = !DILocation(line: 251, column: 48, scope: !1274)
!1283 = !DILocalVariable(name: "arg", arg: 3, scope: !1274, file: !124, line: 252, type: !6)
!1284 = !DILocation(line: 252, column: 39, scope: !1274)
!1285 = !DILocalVariable(name: "argsize", arg: 4, scope: !1274, file: !124, line: 252, type: !146)
!1286 = !DILocation(line: 252, column: 51, scope: !1274)
!1287 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1274, file: !124, line: 253, type: !126)
!1288 = !DILocation(line: 253, column: 46, scope: !1274)
!1289 = !DILocalVariable(name: "flags", arg: 6, scope: !1274, file: !124, line: 253, type: !35)
!1290 = !DILocation(line: 253, column: 65, scope: !1274)
!1291 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1274, file: !124, line: 254, type: !1277)
!1292 = !DILocation(line: 254, column: 47, scope: !1274)
!1293 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1274, file: !124, line: 255, type: !6)
!1294 = !DILocation(line: 255, column: 39, scope: !1274)
!1295 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1274, file: !124, line: 256, type: !6)
!1296 = !DILocation(line: 256, column: 39, scope: !1274)
!1297 = !DILocalVariable(name: "unibyte_locale", scope: !1274, file: !124, line: 258, type: !51)
!1298 = !DILocation(line: 258, column: 8, scope: !1274)
!1299 = !DILocation(line: 258, column: 25, scope: !1274)
!1300 = !DILocation(line: 258, column: 36, scope: !1274)
!1301 = !DILocalVariable(name: "len", scope: !1274, file: !124, line: 260, type: !146)
!1302 = !DILocation(line: 260, column: 10, scope: !1274)
!1303 = !DILocalVariable(name: "orig_buffersize", scope: !1274, file: !124, line: 261, type: !146)
!1304 = !DILocation(line: 261, column: 10, scope: !1274)
!1305 = !DILocalVariable(name: "quote_string", scope: !1274, file: !124, line: 262, type: !6)
!1306 = !DILocation(line: 262, column: 15, scope: !1274)
!1307 = !DILocalVariable(name: "quote_string_len", scope: !1274, file: !124, line: 263, type: !146)
!1308 = !DILocation(line: 263, column: 10, scope: !1274)
!1309 = !DILocalVariable(name: "backslash_escapes", scope: !1274, file: !124, line: 264, type: !51)
!1310 = !DILocation(line: 264, column: 8, scope: !1274)
!1311 = !DILocalVariable(name: "elide_outer_quotes", scope: !1274, file: !124, line: 265, type: !51)
!1312 = !DILocation(line: 265, column: 8, scope: !1274)
!1313 = !DILocation(line: 265, column: 30, scope: !1274)
!1314 = !DILocation(line: 265, column: 36, scope: !1274)
!1315 = !DILocation(line: 265, column: 61, scope: !1274)
!1316 = !DILocalVariable(name: "encountered_single_quote", scope: !1274, file: !124, line: 266, type: !51)
!1317 = !DILocation(line: 266, column: 8, scope: !1274)
!1318 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1274, file: !124, line: 267, type: !51)
!1319 = !DILocation(line: 267, column: 8, scope: !1274)
!1320 = !DILocation(line: 267, column: 3, scope: !1274)
!1321 = !DILabel(scope: !1274, name: "process_input", file: !124, line: 308)
!1322 = !DILocation(line: 308, column: 2, scope: !1274)
!1323 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1274, file: !124, line: 309, type: !51)
!1324 = !DILocation(line: 309, column: 8, scope: !1274)
!1325 = !DILocation(line: 311, column: 11, scope: !1274)
!1326 = !DILocation(line: 311, column: 3, scope: !1274)
!1327 = !DILocation(line: 314, column: 21, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1274, file: !124, line: 312, column: 5)
!1329 = !DILocation(line: 315, column: 26, scope: !1328)
!1330 = !DILocation(line: 315, column: 7, scope: !1328)
!1331 = !DILocation(line: 318, column: 12, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !124, line: 318, column: 11)
!1333 = !DILocation(line: 318, column: 11, scope: !1328)
!1334 = !DILocation(line: 319, column: 9, scope: !1332)
!1335 = !DILocation(line: 319, column: 9, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !124, line: 319, column: 9)
!1337 = distinct !DILexicalBlock(scope: !1332, file: !124, line: 319, column: 9)
!1338 = !DILocation(line: 319, column: 9, scope: !1337)
!1339 = !DILocation(line: 320, column: 25, scope: !1328)
!1340 = !DILocation(line: 321, column: 20, scope: !1328)
!1341 = !DILocation(line: 322, column: 24, scope: !1328)
!1342 = !DILocation(line: 323, column: 7, scope: !1328)
!1343 = !DILocation(line: 326, column: 25, scope: !1328)
!1344 = !DILocation(line: 327, column: 26, scope: !1328)
!1345 = !DILocation(line: 328, column: 7, scope: !1328)
!1346 = !DILocation(line: 334, column: 13, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !124, line: 334, column: 13)
!1348 = distinct !DILexicalBlock(scope: !1328, file: !124, line: 333, column: 7)
!1349 = !DILocation(line: 334, column: 27, scope: !1347)
!1350 = !DILocation(line: 334, column: 13, scope: !1348)
!1351 = !DILocation(line: 357, column: 50, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1347, file: !124, line: 335, column: 11)
!1353 = !DILocation(line: 357, column: 26, scope: !1352)
!1354 = !DILocation(line: 357, column: 24, scope: !1352)
!1355 = !DILocation(line: 358, column: 51, scope: !1352)
!1356 = !DILocation(line: 358, column: 27, scope: !1352)
!1357 = !DILocation(line: 358, column: 25, scope: !1352)
!1358 = !DILocation(line: 359, column: 11, scope: !1352)
!1359 = !DILocation(line: 360, column: 14, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1348, file: !124, line: 360, column: 13)
!1361 = !DILocation(line: 360, column: 13, scope: !1348)
!1362 = !DILocalVariable(name: "lq", scope: !1363, file: !124, line: 361, type: !6)
!1363 = distinct !DILexicalBlock(scope: !1360, file: !124, line: 361, column: 11)
!1364 = !DILocation(line: 361, column: 28, scope: !1363)
!1365 = !DILocation(line: 361, column: 33, scope: !1363)
!1366 = !DILocation(line: 361, column: 16, scope: !1363)
!1367 = !DILocation(line: 361, column: 46, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !124, line: 361, column: 11)
!1369 = !DILocation(line: 361, column: 45, scope: !1368)
!1370 = !DILocation(line: 361, column: 11, scope: !1363)
!1371 = !DILocation(line: 362, column: 13, scope: !1368)
!1372 = !DILocation(line: 362, column: 13, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !124, line: 362, column: 13)
!1374 = distinct !DILexicalBlock(scope: !1368, file: !124, line: 362, column: 13)
!1375 = !DILocation(line: 362, column: 13, scope: !1374)
!1376 = !DILocation(line: 361, column: 52, scope: !1368)
!1377 = !DILocation(line: 361, column: 11, scope: !1368)
!1378 = distinct !{!1378, !1370, !1379, !396}
!1379 = !DILocation(line: 362, column: 13, scope: !1363)
!1380 = !DILocation(line: 363, column: 27, scope: !1348)
!1381 = !DILocation(line: 364, column: 24, scope: !1348)
!1382 = !DILocation(line: 364, column: 22, scope: !1348)
!1383 = !DILocation(line: 365, column: 36, scope: !1348)
!1384 = !DILocation(line: 365, column: 28, scope: !1348)
!1385 = !DILocation(line: 365, column: 26, scope: !1348)
!1386 = !DILocation(line: 367, column: 7, scope: !1328)
!1387 = !DILocation(line: 370, column: 25, scope: !1328)
!1388 = !DILocation(line: 370, column: 7, scope: !1328)
!1389 = !DILocation(line: 373, column: 26, scope: !1328)
!1390 = !DILocation(line: 373, column: 7, scope: !1328)
!1391 = !DILocation(line: 376, column: 12, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1328, file: !124, line: 376, column: 11)
!1393 = !DILocation(line: 376, column: 11, scope: !1328)
!1394 = !DILocation(line: 377, column: 27, scope: !1392)
!1395 = !DILocation(line: 377, column: 9, scope: !1392)
!1396 = !DILocation(line: 380, column: 21, scope: !1328)
!1397 = !DILocation(line: 381, column: 12, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1328, file: !124, line: 381, column: 11)
!1399 = !DILocation(line: 381, column: 11, scope: !1328)
!1400 = !DILocation(line: 382, column: 9, scope: !1398)
!1401 = !DILocation(line: 382, column: 9, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !124, line: 382, column: 9)
!1403 = distinct !DILexicalBlock(scope: !1398, file: !124, line: 382, column: 9)
!1404 = !DILocation(line: 382, column: 9, scope: !1403)
!1405 = !DILocation(line: 383, column: 20, scope: !1328)
!1406 = !DILocation(line: 384, column: 24, scope: !1328)
!1407 = !DILocation(line: 385, column: 7, scope: !1328)
!1408 = !DILocation(line: 388, column: 26, scope: !1328)
!1409 = !DILocation(line: 389, column: 7, scope: !1328)
!1410 = !DILocation(line: 392, column: 7, scope: !1328)
!1411 = !DILocalVariable(name: "i", scope: !1412, file: !124, line: 395, type: !146)
!1412 = distinct !DILexicalBlock(scope: !1274, file: !124, line: 395, column: 3)
!1413 = !DILocation(line: 395, column: 15, scope: !1412)
!1414 = !DILocation(line: 395, column: 8, scope: !1412)
!1415 = !DILocation(line: 395, column: 26, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !124, line: 395, column: 3)
!1417 = !DILocation(line: 395, column: 34, scope: !1416)
!1418 = !DILocation(line: 395, column: 48, scope: !1416)
!1419 = !DILocation(line: 395, column: 52, scope: !1416)
!1420 = !DILocation(line: 395, column: 55, scope: !1416)
!1421 = !DILocation(line: 395, column: 65, scope: !1416)
!1422 = !DILocation(line: 395, column: 70, scope: !1416)
!1423 = !DILocation(line: 395, column: 67, scope: !1416)
!1424 = !DILocation(line: 395, column: 23, scope: !1416)
!1425 = !DILocation(line: 395, column: 3, scope: !1412)
!1426 = !DILocalVariable(name: "is_right_quote", scope: !1427, file: !124, line: 397, type: !51)
!1427 = distinct !DILexicalBlock(scope: !1416, file: !124, line: 396, column: 5)
!1428 = !DILocation(line: 397, column: 12, scope: !1427)
!1429 = !DILocalVariable(name: "escaping", scope: !1427, file: !124, line: 398, type: !51)
!1430 = !DILocation(line: 398, column: 12, scope: !1427)
!1431 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1427, file: !124, line: 399, type: !51)
!1432 = !DILocation(line: 399, column: 12, scope: !1427)
!1433 = !DILocation(line: 401, column: 11, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1427, file: !124, line: 401, column: 11)
!1435 = !DILocation(line: 402, column: 11, scope: !1434)
!1436 = !DILocation(line: 402, column: 14, scope: !1434)
!1437 = !DILocation(line: 402, column: 28, scope: !1434)
!1438 = !DILocation(line: 403, column: 11, scope: !1434)
!1439 = !DILocation(line: 403, column: 14, scope: !1434)
!1440 = !DILocation(line: 404, column: 11, scope: !1434)
!1441 = !DILocation(line: 404, column: 15, scope: !1434)
!1442 = !DILocation(line: 404, column: 19, scope: !1434)
!1443 = !DILocation(line: 404, column: 17, scope: !1434)
!1444 = !DILocation(line: 405, column: 19, scope: !1434)
!1445 = !DILocation(line: 405, column: 27, scope: !1434)
!1446 = !DILocation(line: 405, column: 39, scope: !1434)
!1447 = !DILocation(line: 405, column: 46, scope: !1434)
!1448 = !DILocation(line: 405, column: 44, scope: !1434)
!1449 = !DILocation(line: 409, column: 40, scope: !1434)
!1450 = !DILocation(line: 409, column: 32, scope: !1434)
!1451 = !DILocation(line: 409, column: 30, scope: !1434)
!1452 = !DILocation(line: 409, column: 48, scope: !1434)
!1453 = !DILocation(line: 405, column: 15, scope: !1434)
!1454 = !DILocation(line: 410, column: 11, scope: !1434)
!1455 = !DILocation(line: 410, column: 21, scope: !1434)
!1456 = !DILocation(line: 410, column: 27, scope: !1434)
!1457 = !DILocation(line: 410, column: 25, scope: !1434)
!1458 = !DILocation(line: 410, column: 30, scope: !1434)
!1459 = !DILocation(line: 410, column: 44, scope: !1434)
!1460 = !DILocation(line: 410, column: 14, scope: !1434)
!1461 = !DILocation(line: 401, column: 11, scope: !1427)
!1462 = !DILocation(line: 412, column: 15, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !124, line: 412, column: 15)
!1464 = distinct !DILexicalBlock(scope: !1434, file: !124, line: 411, column: 9)
!1465 = !DILocation(line: 412, column: 15, scope: !1464)
!1466 = !DILocation(line: 413, column: 13, scope: !1463)
!1467 = !DILocation(line: 414, column: 26, scope: !1464)
!1468 = !DILocation(line: 415, column: 9, scope: !1464)
!1469 = !DILocalVariable(name: "c", scope: !1427, file: !124, line: 417, type: !216)
!1470 = !DILocation(line: 417, column: 21, scope: !1427)
!1471 = !DILocation(line: 417, column: 25, scope: !1427)
!1472 = !DILocation(line: 417, column: 29, scope: !1427)
!1473 = !DILocation(line: 418, column: 15, scope: !1427)
!1474 = !DILocation(line: 418, column: 7, scope: !1427)
!1475 = !DILocation(line: 421, column: 15, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !124, line: 421, column: 15)
!1477 = distinct !DILexicalBlock(scope: !1427, file: !124, line: 419, column: 9)
!1478 = !DILocation(line: 421, column: 15, scope: !1477)
!1479 = !DILocation(line: 423, column: 15, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !124, line: 422, column: 13)
!1481 = !DILocation(line: 423, column: 15, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !124, line: 423, column: 15)
!1483 = distinct !DILexicalBlock(scope: !1480, file: !124, line: 423, column: 15)
!1484 = !DILocation(line: 423, column: 15, scope: !1483)
!1485 = !DILocation(line: 423, column: 15, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1483, file: !124, line: 423, column: 15)
!1487 = !DILocation(line: 423, column: 15, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1486, file: !124, line: 423, column: 15)
!1489 = !DILocation(line: 423, column: 15, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !124, line: 423, column: 15)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !124, line: 423, column: 15)
!1492 = !DILocation(line: 423, column: 15, scope: !1491)
!1493 = !DILocation(line: 423, column: 15, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !124, line: 423, column: 15)
!1495 = distinct !DILexicalBlock(scope: !1488, file: !124, line: 423, column: 15)
!1496 = !DILocation(line: 423, column: 15, scope: !1495)
!1497 = !DILocation(line: 423, column: 15, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !124, line: 423, column: 15)
!1499 = distinct !DILexicalBlock(scope: !1488, file: !124, line: 423, column: 15)
!1500 = !DILocation(line: 423, column: 15, scope: !1499)
!1501 = !DILocation(line: 423, column: 15, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !124, line: 423, column: 15)
!1503 = distinct !DILexicalBlock(scope: !1483, file: !124, line: 423, column: 15)
!1504 = !DILocation(line: 423, column: 15, scope: !1503)
!1505 = !DILocation(line: 430, column: 19, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1480, file: !124, line: 430, column: 19)
!1507 = !DILocation(line: 430, column: 33, scope: !1506)
!1508 = !DILocation(line: 431, column: 19, scope: !1506)
!1509 = !DILocation(line: 431, column: 22, scope: !1506)
!1510 = !DILocation(line: 431, column: 24, scope: !1506)
!1511 = !DILocation(line: 431, column: 30, scope: !1506)
!1512 = !DILocation(line: 431, column: 28, scope: !1506)
!1513 = !DILocation(line: 431, column: 38, scope: !1506)
!1514 = !DILocation(line: 431, column: 48, scope: !1506)
!1515 = !DILocation(line: 431, column: 52, scope: !1506)
!1516 = !DILocation(line: 431, column: 54, scope: !1506)
!1517 = !DILocation(line: 431, column: 45, scope: !1506)
!1518 = !DILocation(line: 431, column: 59, scope: !1506)
!1519 = !DILocation(line: 431, column: 62, scope: !1506)
!1520 = !DILocation(line: 431, column: 66, scope: !1506)
!1521 = !DILocation(line: 431, column: 68, scope: !1506)
!1522 = !DILocation(line: 431, column: 73, scope: !1506)
!1523 = !DILocation(line: 430, column: 19, scope: !1480)
!1524 = !DILocation(line: 433, column: 19, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1506, file: !124, line: 432, column: 17)
!1526 = !DILocation(line: 433, column: 19, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !124, line: 433, column: 19)
!1528 = distinct !DILexicalBlock(scope: !1525, file: !124, line: 433, column: 19)
!1529 = !DILocation(line: 433, column: 19, scope: !1528)
!1530 = !DILocation(line: 434, column: 19, scope: !1525)
!1531 = !DILocation(line: 434, column: 19, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !124, line: 434, column: 19)
!1533 = distinct !DILexicalBlock(scope: !1525, file: !124, line: 434, column: 19)
!1534 = !DILocation(line: 434, column: 19, scope: !1533)
!1535 = !DILocation(line: 435, column: 17, scope: !1525)
!1536 = !DILocation(line: 436, column: 17, scope: !1480)
!1537 = !DILocation(line: 441, column: 13, scope: !1480)
!1538 = !DILocation(line: 442, column: 20, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1476, file: !124, line: 442, column: 20)
!1540 = !DILocation(line: 442, column: 26, scope: !1539)
!1541 = !DILocation(line: 442, column: 20, scope: !1476)
!1542 = !DILocation(line: 443, column: 13, scope: !1539)
!1543 = !DILocation(line: 444, column: 11, scope: !1477)
!1544 = !DILocation(line: 447, column: 20, scope: !1477)
!1545 = !DILocation(line: 447, column: 11, scope: !1477)
!1546 = !DILocation(line: 450, column: 19, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !124, line: 450, column: 19)
!1548 = distinct !DILexicalBlock(scope: !1477, file: !124, line: 448, column: 13)
!1549 = !DILocation(line: 450, column: 19, scope: !1548)
!1550 = !DILocation(line: 451, column: 17, scope: !1547)
!1551 = !DILocation(line: 452, column: 15, scope: !1548)
!1552 = !DILocation(line: 455, column: 20, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1548, file: !124, line: 455, column: 19)
!1554 = !DILocation(line: 455, column: 26, scope: !1553)
!1555 = !DILocation(line: 456, column: 19, scope: !1553)
!1556 = !DILocation(line: 456, column: 22, scope: !1553)
!1557 = !DILocation(line: 456, column: 24, scope: !1553)
!1558 = !DILocation(line: 456, column: 30, scope: !1553)
!1559 = !DILocation(line: 456, column: 28, scope: !1553)
!1560 = !DILocation(line: 456, column: 38, scope: !1553)
!1561 = !DILocation(line: 456, column: 41, scope: !1553)
!1562 = !DILocation(line: 456, column: 45, scope: !1553)
!1563 = !DILocation(line: 456, column: 47, scope: !1553)
!1564 = !DILocation(line: 456, column: 52, scope: !1553)
!1565 = !DILocation(line: 455, column: 19, scope: !1548)
!1566 = !DILocation(line: 457, column: 25, scope: !1553)
!1567 = !DILocation(line: 457, column: 29, scope: !1553)
!1568 = !DILocation(line: 457, column: 31, scope: !1553)
!1569 = !DILocation(line: 457, column: 17, scope: !1553)
!1570 = !DILocation(line: 464, column: 25, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !124, line: 464, column: 25)
!1572 = distinct !DILexicalBlock(scope: !1553, file: !124, line: 458, column: 19)
!1573 = !DILocation(line: 464, column: 25, scope: !1572)
!1574 = !DILocation(line: 465, column: 23, scope: !1571)
!1575 = !DILocation(line: 466, column: 25, scope: !1572)
!1576 = !DILocation(line: 466, column: 29, scope: !1572)
!1577 = !DILocation(line: 466, column: 31, scope: !1572)
!1578 = !DILocation(line: 466, column: 23, scope: !1572)
!1579 = !DILocation(line: 467, column: 23, scope: !1572)
!1580 = !DILocation(line: 468, column: 21, scope: !1572)
!1581 = !DILocation(line: 468, column: 21, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !124, line: 468, column: 21)
!1583 = distinct !DILexicalBlock(scope: !1572, file: !124, line: 468, column: 21)
!1584 = !DILocation(line: 468, column: 21, scope: !1583)
!1585 = !DILocation(line: 469, column: 21, scope: !1572)
!1586 = !DILocation(line: 469, column: 21, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !124, line: 469, column: 21)
!1588 = distinct !DILexicalBlock(scope: !1572, file: !124, line: 469, column: 21)
!1589 = !DILocation(line: 469, column: 21, scope: !1588)
!1590 = !DILocation(line: 470, column: 21, scope: !1572)
!1591 = !DILocation(line: 470, column: 21, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !124, line: 470, column: 21)
!1593 = distinct !DILexicalBlock(scope: !1572, file: !124, line: 470, column: 21)
!1594 = !DILocation(line: 470, column: 21, scope: !1593)
!1595 = !DILocation(line: 471, column: 21, scope: !1572)
!1596 = !DILocation(line: 471, column: 21, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !124, line: 471, column: 21)
!1598 = distinct !DILexicalBlock(scope: !1572, file: !124, line: 471, column: 21)
!1599 = !DILocation(line: 471, column: 21, scope: !1598)
!1600 = !DILocation(line: 472, column: 21, scope: !1572)
!1601 = !DILocation(line: 473, column: 19, scope: !1572)
!1602 = !DILocation(line: 474, column: 15, scope: !1548)
!1603 = !DILocation(line: 476, column: 11, scope: !1477)
!1604 = !DILocation(line: 481, column: 26, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1477, file: !124, line: 478, column: 9)
!1606 = !DILocation(line: 481, column: 33, scope: !1605)
!1607 = !DILocation(line: 482, column: 26, scope: !1605)
!1608 = !DILocation(line: 482, column: 33, scope: !1605)
!1609 = !DILocation(line: 483, column: 26, scope: !1605)
!1610 = !DILocation(line: 483, column: 33, scope: !1605)
!1611 = !DILocation(line: 484, column: 26, scope: !1605)
!1612 = !DILocation(line: 484, column: 33, scope: !1605)
!1613 = !DILocation(line: 485, column: 26, scope: !1605)
!1614 = !DILocation(line: 485, column: 33, scope: !1605)
!1615 = !DILocation(line: 486, column: 26, scope: !1605)
!1616 = !DILocation(line: 486, column: 33, scope: !1605)
!1617 = !DILocation(line: 487, column: 26, scope: !1605)
!1618 = !DILocation(line: 487, column: 33, scope: !1605)
!1619 = !DILocation(line: 488, column: 28, scope: !1605)
!1620 = !DILocation(line: 488, column: 26, scope: !1605)
!1621 = !DILocation(line: 490, column: 17, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1605, file: !124, line: 490, column: 17)
!1623 = !DILocation(line: 490, column: 31, scope: !1622)
!1624 = !DILocation(line: 490, column: 17, scope: !1605)
!1625 = !DILocation(line: 492, column: 21, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !124, line: 492, column: 21)
!1627 = distinct !DILexicalBlock(scope: !1622, file: !124, line: 491, column: 15)
!1628 = !DILocation(line: 492, column: 21, scope: !1627)
!1629 = !DILocation(line: 493, column: 19, scope: !1626)
!1630 = !DILocation(line: 494, column: 17, scope: !1627)
!1631 = !DILocation(line: 499, column: 17, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1605, file: !124, line: 499, column: 17)
!1633 = !DILocation(line: 499, column: 35, scope: !1632)
!1634 = !DILocation(line: 499, column: 38, scope: !1632)
!1635 = !DILocation(line: 499, column: 57, scope: !1632)
!1636 = !DILocation(line: 499, column: 60, scope: !1632)
!1637 = !DILocation(line: 499, column: 17, scope: !1605)
!1638 = !DILocation(line: 500, column: 15, scope: !1632)
!1639 = !DILabel(scope: !1605, name: "c_and_shell_escape", file: !124, line: 502)
!1640 = !DILocation(line: 502, column: 11, scope: !1605)
!1641 = !DILocation(line: 503, column: 17, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1605, file: !124, line: 503, column: 17)
!1643 = !DILocation(line: 503, column: 31, scope: !1642)
!1644 = !DILocation(line: 504, column: 17, scope: !1642)
!1645 = !DILocation(line: 504, column: 20, scope: !1642)
!1646 = !DILocation(line: 503, column: 17, scope: !1605)
!1647 = !DILocation(line: 505, column: 15, scope: !1642)
!1648 = !DILabel(scope: !1605, name: "c_escape", file: !124, line: 507)
!1649 = !DILocation(line: 507, column: 11, scope: !1605)
!1650 = !DILocation(line: 508, column: 17, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1605, file: !124, line: 508, column: 17)
!1652 = !DILocation(line: 508, column: 17, scope: !1605)
!1653 = !DILocation(line: 510, column: 21, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1651, file: !124, line: 509, column: 15)
!1655 = !DILocation(line: 510, column: 19, scope: !1654)
!1656 = !DILocation(line: 511, column: 17, scope: !1654)
!1657 = !DILocation(line: 513, column: 13, scope: !1605)
!1658 = !DILocation(line: 517, column: 18, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1477, file: !124, line: 517, column: 15)
!1660 = !DILocation(line: 517, column: 26, scope: !1659)
!1661 = !DILocation(line: 517, column: 15, scope: !1477)
!1662 = !DILocation(line: 517, column: 40, scope: !1659)
!1663 = !DILocation(line: 517, column: 47, scope: !1659)
!1664 = !DILocation(line: 517, column: 57, scope: !1659)
!1665 = !DILocation(line: 517, column: 65, scope: !1659)
!1666 = !DILocation(line: 518, column: 13, scope: !1659)
!1667 = !DILocation(line: 517, column: 69, scope: !1659)
!1668 = !DILocation(line: 521, column: 15, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1477, file: !124, line: 521, column: 15)
!1670 = !DILocation(line: 521, column: 17, scope: !1669)
!1671 = !DILocation(line: 521, column: 15, scope: !1477)
!1672 = !DILocation(line: 522, column: 13, scope: !1669)
!1673 = !DILocation(line: 521, column: 20, scope: !1669)
!1674 = !DILocation(line: 525, column: 36, scope: !1477)
!1675 = !DILocation(line: 525, column: 11, scope: !1477)
!1676 = !DILocation(line: 536, column: 15, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1477, file: !124, line: 536, column: 15)
!1678 = !DILocation(line: 536, column: 29, scope: !1677)
!1679 = !DILocation(line: 537, column: 15, scope: !1677)
!1680 = !DILocation(line: 537, column: 18, scope: !1677)
!1681 = !DILocation(line: 536, column: 15, scope: !1477)
!1682 = !DILocation(line: 538, column: 13, scope: !1677)
!1683 = !DILocation(line: 539, column: 11, scope: !1477)
!1684 = !DILocation(line: 542, column: 36, scope: !1477)
!1685 = !DILocation(line: 543, column: 36, scope: !1477)
!1686 = !DILocation(line: 544, column: 15, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1477, file: !124, line: 544, column: 15)
!1688 = !DILocation(line: 544, column: 29, scope: !1687)
!1689 = !DILocation(line: 544, column: 15, scope: !1477)
!1690 = !DILocation(line: 546, column: 19, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !124, line: 546, column: 19)
!1692 = distinct !DILexicalBlock(scope: !1687, file: !124, line: 545, column: 13)
!1693 = !DILocation(line: 546, column: 19, scope: !1692)
!1694 = !DILocation(line: 547, column: 17, scope: !1691)
!1695 = !DILocation(line: 549, column: 19, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1692, file: !124, line: 549, column: 19)
!1697 = !DILocation(line: 549, column: 30, scope: !1696)
!1698 = !DILocation(line: 549, column: 35, scope: !1696)
!1699 = !DILocation(line: 549, column: 19, scope: !1692)
!1700 = !DILocation(line: 554, column: 37, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1696, file: !124, line: 550, column: 17)
!1702 = !DILocation(line: 554, column: 35, scope: !1701)
!1703 = !DILocation(line: 555, column: 30, scope: !1701)
!1704 = !DILocation(line: 556, column: 17, scope: !1701)
!1705 = !DILocation(line: 558, column: 15, scope: !1692)
!1706 = !DILocation(line: 558, column: 15, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !124, line: 558, column: 15)
!1708 = distinct !DILexicalBlock(scope: !1692, file: !124, line: 558, column: 15)
!1709 = !DILocation(line: 558, column: 15, scope: !1708)
!1710 = !DILocation(line: 559, column: 15, scope: !1692)
!1711 = !DILocation(line: 559, column: 15, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !124, line: 559, column: 15)
!1713 = distinct !DILexicalBlock(scope: !1692, file: !124, line: 559, column: 15)
!1714 = !DILocation(line: 559, column: 15, scope: !1713)
!1715 = !DILocation(line: 560, column: 15, scope: !1692)
!1716 = !DILocation(line: 560, column: 15, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !124, line: 560, column: 15)
!1718 = distinct !DILexicalBlock(scope: !1692, file: !124, line: 560, column: 15)
!1719 = !DILocation(line: 560, column: 15, scope: !1718)
!1720 = !DILocation(line: 561, column: 40, scope: !1692)
!1721 = !DILocation(line: 562, column: 13, scope: !1692)
!1722 = !DILocation(line: 563, column: 11, scope: !1477)
!1723 = !DILocation(line: 587, column: 36, scope: !1477)
!1724 = !DILocation(line: 588, column: 11, scope: !1477)
!1725 = !DILocalVariable(name: "m", scope: !1726, file: !124, line: 598, type: !146)
!1726 = distinct !DILexicalBlock(scope: !1477, file: !124, line: 596, column: 11)
!1727 = !DILocation(line: 598, column: 20, scope: !1726)
!1728 = !DILocalVariable(name: "printable", scope: !1726, file: !124, line: 600, type: !51)
!1729 = !DILocation(line: 600, column: 18, scope: !1726)
!1730 = !DILocation(line: 602, column: 17, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !124, line: 602, column: 17)
!1732 = !DILocation(line: 602, column: 17, scope: !1726)
!1733 = !DILocation(line: 604, column: 19, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1731, file: !124, line: 603, column: 15)
!1735 = !DILocation(line: 605, column: 29, scope: !1734)
!1736 = !DILocation(line: 605, column: 41, scope: !1734)
!1737 = !DILocation(line: 605, column: 27, scope: !1734)
!1738 = !DILocation(line: 606, column: 15, scope: !1734)
!1739 = !DILocalVariable(name: "mbs", scope: !1740, file: !124, line: 609, type: !1741)
!1740 = distinct !DILexicalBlock(scope: !1731, file: !124, line: 608, column: 15)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !219, line: 6, baseType: !1742)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !221, line: 21, baseType: !1743)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 13, size: 64, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1743, file: !221, line: 15, baseType: !35, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1743, file: !221, line: 20, baseType: !1747, size: 32, offset: 32)
!1747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1743, file: !221, line: 16, size: 32, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1747, file: !221, line: 18, baseType: !14, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1747, file: !221, line: 19, baseType: !230, size: 32)
!1751 = !DILocation(line: 609, column: 27, scope: !1740)
!1752 = !DILocation(line: 609, column: 32, scope: !1740)
!1753 = !DILocation(line: 611, column: 19, scope: !1740)
!1754 = !DILocation(line: 612, column: 27, scope: !1740)
!1755 = !DILocation(line: 613, column: 21, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1740, file: !124, line: 613, column: 21)
!1757 = !DILocation(line: 613, column: 29, scope: !1756)
!1758 = !DILocation(line: 613, column: 21, scope: !1740)
!1759 = !DILocation(line: 614, column: 37, scope: !1756)
!1760 = !DILocation(line: 614, column: 29, scope: !1756)
!1761 = !DILocation(line: 614, column: 27, scope: !1756)
!1762 = !DILocation(line: 614, column: 19, scope: !1756)
!1763 = !DILocation(line: 616, column: 17, scope: !1740)
!1764 = !DILocalVariable(name: "w", scope: !1765, file: !124, line: 618, type: !1062)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !124, line: 617, column: 19)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !124, line: 616, column: 17)
!1767 = distinct !DILexicalBlock(scope: !1740, file: !124, line: 616, column: 17)
!1768 = !DILocation(line: 618, column: 30, scope: !1765)
!1769 = !DILocalVariable(name: "bytes", scope: !1765, file: !124, line: 619, type: !146)
!1770 = !DILocation(line: 619, column: 28, scope: !1765)
!1771 = !DILocation(line: 619, column: 51, scope: !1765)
!1772 = !DILocation(line: 619, column: 55, scope: !1765)
!1773 = !DILocation(line: 619, column: 59, scope: !1765)
!1774 = !DILocation(line: 619, column: 57, scope: !1765)
!1775 = !DILocation(line: 620, column: 46, scope: !1765)
!1776 = !DILocation(line: 620, column: 57, scope: !1765)
!1777 = !DILocation(line: 620, column: 61, scope: !1765)
!1778 = !DILocation(line: 620, column: 59, scope: !1765)
!1779 = !DILocation(line: 620, column: 54, scope: !1765)
!1780 = !DILocation(line: 619, column: 36, scope: !1765)
!1781 = !DILocation(line: 621, column: 25, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1765, file: !124, line: 621, column: 25)
!1783 = !DILocation(line: 621, column: 31, scope: !1782)
!1784 = !DILocation(line: 621, column: 25, scope: !1765)
!1785 = !DILocation(line: 622, column: 23, scope: !1782)
!1786 = !DILocation(line: 623, column: 30, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !124, line: 623, column: 30)
!1788 = !DILocation(line: 623, column: 36, scope: !1787)
!1789 = !DILocation(line: 623, column: 30, scope: !1782)
!1790 = !DILocation(line: 625, column: 35, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !124, line: 624, column: 23)
!1792 = !DILocation(line: 626, column: 25, scope: !1791)
!1793 = !DILocation(line: 628, column: 30, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1787, file: !124, line: 628, column: 30)
!1795 = !DILocation(line: 628, column: 36, scope: !1794)
!1796 = !DILocation(line: 628, column: 30, scope: !1787)
!1797 = !DILocation(line: 630, column: 35, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1794, file: !124, line: 629, column: 23)
!1799 = !DILocation(line: 631, column: 25, scope: !1798)
!1800 = !DILocation(line: 631, column: 32, scope: !1798)
!1801 = !DILocation(line: 631, column: 36, scope: !1798)
!1802 = !DILocation(line: 631, column: 34, scope: !1798)
!1803 = !DILocation(line: 631, column: 40, scope: !1798)
!1804 = !DILocation(line: 631, column: 38, scope: !1798)
!1805 = !DILocation(line: 631, column: 48, scope: !1798)
!1806 = !DILocation(line: 631, column: 51, scope: !1798)
!1807 = !DILocation(line: 631, column: 55, scope: !1798)
!1808 = !DILocation(line: 631, column: 59, scope: !1798)
!1809 = !DILocation(line: 631, column: 57, scope: !1798)
!1810 = !DILocation(line: 0, scope: !1798)
!1811 = !DILocation(line: 632, column: 28, scope: !1798)
!1812 = distinct !{!1812, !1799, !1811, !396}
!1813 = !DILocation(line: 633, column: 25, scope: !1798)
!1814 = !DILocation(line: 645, column: 44, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !124, line: 645, column: 29)
!1816 = distinct !DILexicalBlock(scope: !1794, file: !124, line: 636, column: 23)
!1817 = !DILocation(line: 646, column: 29, scope: !1815)
!1818 = !DILocation(line: 646, column: 32, scope: !1815)
!1819 = !DILocation(line: 646, column: 46, scope: !1815)
!1820 = !DILocation(line: 645, column: 29, scope: !1816)
!1821 = !DILocalVariable(name: "j", scope: !1822, file: !124, line: 648, type: !146)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !124, line: 648, column: 29)
!1823 = distinct !DILexicalBlock(scope: !1815, file: !124, line: 647, column: 27)
!1824 = !DILocation(line: 648, column: 41, scope: !1822)
!1825 = !DILocation(line: 648, column: 34, scope: !1822)
!1826 = !DILocation(line: 648, column: 48, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1822, file: !124, line: 648, column: 29)
!1828 = !DILocation(line: 648, column: 52, scope: !1827)
!1829 = !DILocation(line: 648, column: 50, scope: !1827)
!1830 = !DILocation(line: 648, column: 29, scope: !1822)
!1831 = !DILocation(line: 649, column: 39, scope: !1827)
!1832 = !DILocation(line: 649, column: 43, scope: !1827)
!1833 = !DILocation(line: 649, column: 47, scope: !1827)
!1834 = !DILocation(line: 649, column: 45, scope: !1827)
!1835 = !DILocation(line: 649, column: 51, scope: !1827)
!1836 = !DILocation(line: 649, column: 49, scope: !1827)
!1837 = !DILocation(line: 649, column: 31, scope: !1827)
!1838 = !DILocation(line: 653, column: 35, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1827, file: !124, line: 650, column: 33)
!1840 = !DILocation(line: 654, column: 33, scope: !1839)
!1841 = !DILocation(line: 648, column: 60, scope: !1827)
!1842 = !DILocation(line: 648, column: 29, scope: !1827)
!1843 = distinct !{!1843, !1830, !1844, !396}
!1844 = !DILocation(line: 654, column: 33, scope: !1822)
!1845 = !DILocation(line: 655, column: 27, scope: !1823)
!1846 = !DILocation(line: 657, column: 43, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1816, file: !124, line: 657, column: 29)
!1848 = !DILocation(line: 657, column: 31, scope: !1847)
!1849 = !DILocation(line: 657, column: 29, scope: !1816)
!1850 = !DILocation(line: 658, column: 37, scope: !1847)
!1851 = !DILocation(line: 658, column: 27, scope: !1847)
!1852 = !DILocation(line: 659, column: 30, scope: !1816)
!1853 = !DILocation(line: 659, column: 27, scope: !1816)
!1854 = !DILocation(line: 664, column: 23, scope: !1765)
!1855 = !DILocation(line: 668, column: 40, scope: !1726)
!1856 = !DILocation(line: 668, column: 38, scope: !1726)
!1857 = !DILocation(line: 670, column: 21, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1726, file: !124, line: 670, column: 17)
!1859 = !DILocation(line: 670, column: 19, scope: !1858)
!1860 = !DILocation(line: 670, column: 23, scope: !1858)
!1861 = !DILocation(line: 670, column: 27, scope: !1858)
!1862 = !DILocation(line: 670, column: 45, scope: !1858)
!1863 = !DILocation(line: 670, column: 50, scope: !1858)
!1864 = !DILocation(line: 670, column: 17, scope: !1726)
!1865 = !DILocalVariable(name: "ilim", scope: !1866, file: !124, line: 674, type: !146)
!1866 = distinct !DILexicalBlock(scope: !1858, file: !124, line: 671, column: 15)
!1867 = !DILocation(line: 674, column: 24, scope: !1866)
!1868 = !DILocation(line: 674, column: 31, scope: !1866)
!1869 = !DILocation(line: 674, column: 35, scope: !1866)
!1870 = !DILocation(line: 674, column: 33, scope: !1866)
!1871 = !DILocation(line: 676, column: 17, scope: !1866)
!1872 = !DILocation(line: 678, column: 25, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !124, line: 678, column: 25)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !124, line: 677, column: 19)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !124, line: 676, column: 17)
!1876 = distinct !DILexicalBlock(scope: !1866, file: !124, line: 676, column: 17)
!1877 = !DILocation(line: 678, column: 43, scope: !1873)
!1878 = !DILocation(line: 678, column: 48, scope: !1873)
!1879 = !DILocation(line: 678, column: 25, scope: !1874)
!1880 = !DILocation(line: 680, column: 25, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1873, file: !124, line: 679, column: 23)
!1882 = !DILocation(line: 680, column: 25, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !124, line: 680, column: 25)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !124, line: 680, column: 25)
!1885 = !DILocation(line: 680, column: 25, scope: !1884)
!1886 = !DILocation(line: 680, column: 25, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !124, line: 680, column: 25)
!1888 = !DILocation(line: 680, column: 25, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1887, file: !124, line: 680, column: 25)
!1890 = !DILocation(line: 680, column: 25, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !124, line: 680, column: 25)
!1892 = distinct !DILexicalBlock(scope: !1889, file: !124, line: 680, column: 25)
!1893 = !DILocation(line: 680, column: 25, scope: !1892)
!1894 = !DILocation(line: 680, column: 25, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !124, line: 680, column: 25)
!1896 = distinct !DILexicalBlock(scope: !1889, file: !124, line: 680, column: 25)
!1897 = !DILocation(line: 680, column: 25, scope: !1896)
!1898 = !DILocation(line: 680, column: 25, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !124, line: 680, column: 25)
!1900 = distinct !DILexicalBlock(scope: !1889, file: !124, line: 680, column: 25)
!1901 = !DILocation(line: 680, column: 25, scope: !1900)
!1902 = !DILocation(line: 680, column: 25, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !124, line: 680, column: 25)
!1904 = distinct !DILexicalBlock(scope: !1884, file: !124, line: 680, column: 25)
!1905 = !DILocation(line: 680, column: 25, scope: !1904)
!1906 = !DILocation(line: 681, column: 25, scope: !1881)
!1907 = !DILocation(line: 681, column: 25, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !124, line: 681, column: 25)
!1909 = distinct !DILexicalBlock(scope: !1881, file: !124, line: 681, column: 25)
!1910 = !DILocation(line: 681, column: 25, scope: !1909)
!1911 = !DILocation(line: 682, column: 25, scope: !1881)
!1912 = !DILocation(line: 682, column: 25, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !124, line: 682, column: 25)
!1914 = distinct !DILexicalBlock(scope: !1881, file: !124, line: 682, column: 25)
!1915 = !DILocation(line: 682, column: 25, scope: !1914)
!1916 = !DILocation(line: 683, column: 36, scope: !1881)
!1917 = !DILocation(line: 683, column: 38, scope: !1881)
!1918 = !DILocation(line: 683, column: 33, scope: !1881)
!1919 = !DILocation(line: 683, column: 29, scope: !1881)
!1920 = !DILocation(line: 683, column: 27, scope: !1881)
!1921 = !DILocation(line: 684, column: 23, scope: !1881)
!1922 = !DILocation(line: 685, column: 30, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1873, file: !124, line: 685, column: 30)
!1924 = !DILocation(line: 685, column: 30, scope: !1873)
!1925 = !DILocation(line: 687, column: 25, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1923, file: !124, line: 686, column: 23)
!1927 = !DILocation(line: 687, column: 25, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !124, line: 687, column: 25)
!1929 = distinct !DILexicalBlock(scope: !1926, file: !124, line: 687, column: 25)
!1930 = !DILocation(line: 687, column: 25, scope: !1929)
!1931 = !DILocation(line: 688, column: 40, scope: !1926)
!1932 = !DILocation(line: 689, column: 23, scope: !1926)
!1933 = !DILocation(line: 690, column: 25, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1874, file: !124, line: 690, column: 25)
!1935 = !DILocation(line: 690, column: 33, scope: !1934)
!1936 = !DILocation(line: 690, column: 35, scope: !1934)
!1937 = !DILocation(line: 690, column: 30, scope: !1934)
!1938 = !DILocation(line: 690, column: 25, scope: !1874)
!1939 = !DILocation(line: 691, column: 23, scope: !1934)
!1940 = !DILocation(line: 692, column: 21, scope: !1874)
!1941 = !DILocation(line: 692, column: 21, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !124, line: 692, column: 21)
!1943 = distinct !DILexicalBlock(scope: !1874, file: !124, line: 692, column: 21)
!1944 = !DILocation(line: 692, column: 21, scope: !1943)
!1945 = !DILocation(line: 692, column: 21, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1942, file: !124, line: 692, column: 21)
!1947 = !DILocation(line: 692, column: 21, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !124, line: 692, column: 21)
!1949 = distinct !DILexicalBlock(scope: !1946, file: !124, line: 692, column: 21)
!1950 = !DILocation(line: 692, column: 21, scope: !1949)
!1951 = !DILocation(line: 692, column: 21, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !124, line: 692, column: 21)
!1953 = distinct !DILexicalBlock(scope: !1946, file: !124, line: 692, column: 21)
!1954 = !DILocation(line: 692, column: 21, scope: !1953)
!1955 = !DILocation(line: 693, column: 21, scope: !1874)
!1956 = !DILocation(line: 693, column: 21, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !124, line: 693, column: 21)
!1958 = distinct !DILexicalBlock(scope: !1874, file: !124, line: 693, column: 21)
!1959 = !DILocation(line: 693, column: 21, scope: !1958)
!1960 = !DILocation(line: 694, column: 25, scope: !1874)
!1961 = !DILocation(line: 694, column: 29, scope: !1874)
!1962 = !DILocation(line: 694, column: 23, scope: !1874)
!1963 = !DILocation(line: 676, column: 17, scope: !1875)
!1964 = distinct !{!1964, !1965, !1966}
!1965 = !DILocation(line: 676, column: 17, scope: !1876)
!1966 = !DILocation(line: 695, column: 19, scope: !1876)
!1967 = !DILocation(line: 697, column: 17, scope: !1866)
!1968 = !DILocation(line: 700, column: 9, scope: !1477)
!1969 = !DILocation(line: 702, column: 16, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1427, file: !124, line: 702, column: 11)
!1971 = !DILocation(line: 702, column: 34, scope: !1970)
!1972 = !DILocation(line: 702, column: 37, scope: !1970)
!1973 = !DILocation(line: 702, column: 51, scope: !1970)
!1974 = !DILocation(line: 703, column: 15, scope: !1970)
!1975 = !DILocation(line: 703, column: 18, scope: !1970)
!1976 = !DILocation(line: 704, column: 14, scope: !1970)
!1977 = !DILocation(line: 704, column: 17, scope: !1970)
!1978 = !DILocation(line: 705, column: 14, scope: !1970)
!1979 = !DILocation(line: 705, column: 17, scope: !1970)
!1980 = !DILocation(line: 705, column: 33, scope: !1970)
!1981 = !DILocation(line: 705, column: 35, scope: !1970)
!1982 = !DILocation(line: 705, column: 51, scope: !1970)
!1983 = !DILocation(line: 705, column: 53, scope: !1970)
!1984 = !DILocation(line: 705, column: 47, scope: !1970)
!1985 = !DILocation(line: 705, column: 65, scope: !1970)
!1986 = !DILocation(line: 706, column: 11, scope: !1970)
!1987 = !DILocation(line: 706, column: 15, scope: !1970)
!1988 = !DILocation(line: 702, column: 11, scope: !1427)
!1989 = !DILocation(line: 707, column: 9, scope: !1970)
!1990 = !DILabel(scope: !1427, name: "store_escape", file: !124, line: 709)
!1991 = !DILocation(line: 709, column: 5, scope: !1427)
!1992 = !DILocation(line: 710, column: 7, scope: !1427)
!1993 = !DILocation(line: 710, column: 7, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !124, line: 710, column: 7)
!1995 = distinct !DILexicalBlock(scope: !1427, file: !124, line: 710, column: 7)
!1996 = !DILocation(line: 710, column: 7, scope: !1995)
!1997 = !DILocation(line: 710, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1995, file: !124, line: 710, column: 7)
!1999 = !DILocation(line: 710, column: 7, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1998, file: !124, line: 710, column: 7)
!2001 = !DILocation(line: 710, column: 7, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !124, line: 710, column: 7)
!2003 = distinct !DILexicalBlock(scope: !2000, file: !124, line: 710, column: 7)
!2004 = !DILocation(line: 710, column: 7, scope: !2003)
!2005 = !DILocation(line: 710, column: 7, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !124, line: 710, column: 7)
!2007 = distinct !DILexicalBlock(scope: !2000, file: !124, line: 710, column: 7)
!2008 = !DILocation(line: 710, column: 7, scope: !2007)
!2009 = !DILocation(line: 710, column: 7, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !124, line: 710, column: 7)
!2011 = distinct !DILexicalBlock(scope: !2000, file: !124, line: 710, column: 7)
!2012 = !DILocation(line: 710, column: 7, scope: !2011)
!2013 = !DILocation(line: 710, column: 7, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !124, line: 710, column: 7)
!2015 = distinct !DILexicalBlock(scope: !1995, file: !124, line: 710, column: 7)
!2016 = !DILocation(line: 710, column: 7, scope: !2015)
!2017 = !DILabel(scope: !1427, name: "store_c", file: !124, line: 712)
!2018 = !DILocation(line: 712, column: 5, scope: !1427)
!2019 = !DILocation(line: 713, column: 7, scope: !1427)
!2020 = !DILocation(line: 713, column: 7, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !124, line: 713, column: 7)
!2022 = distinct !DILexicalBlock(scope: !1427, file: !124, line: 713, column: 7)
!2023 = !DILocation(line: 713, column: 7, scope: !2022)
!2024 = !DILocation(line: 713, column: 7, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !124, line: 713, column: 7)
!2026 = !DILocation(line: 713, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !124, line: 713, column: 7)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !124, line: 713, column: 7)
!2029 = !DILocation(line: 713, column: 7, scope: !2028)
!2030 = !DILocation(line: 713, column: 7, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !124, line: 713, column: 7)
!2032 = distinct !DILexicalBlock(scope: !2025, file: !124, line: 713, column: 7)
!2033 = !DILocation(line: 713, column: 7, scope: !2032)
!2034 = !DILocation(line: 714, column: 7, scope: !1427)
!2035 = !DILocation(line: 714, column: 7, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !124, line: 714, column: 7)
!2037 = distinct !DILexicalBlock(scope: !1427, file: !124, line: 714, column: 7)
!2038 = !DILocation(line: 714, column: 7, scope: !2037)
!2039 = !DILocation(line: 716, column: 13, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1427, file: !124, line: 716, column: 11)
!2041 = !DILocation(line: 716, column: 11, scope: !1427)
!2042 = !DILocation(line: 717, column: 38, scope: !2040)
!2043 = !DILocation(line: 717, column: 9, scope: !2040)
!2044 = !DILocation(line: 718, column: 5, scope: !1427)
!2045 = !DILocation(line: 395, column: 82, scope: !1416)
!2046 = !DILocation(line: 395, column: 3, scope: !1416)
!2047 = distinct !{!2047, !1425, !2048, !396}
!2048 = !DILocation(line: 718, column: 5, scope: !1412)
!2049 = !DILocation(line: 720, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1274, file: !124, line: 720, column: 7)
!2051 = !DILocation(line: 720, column: 11, scope: !2050)
!2052 = !DILocation(line: 720, column: 16, scope: !2050)
!2053 = !DILocation(line: 720, column: 19, scope: !2050)
!2054 = !DILocation(line: 720, column: 33, scope: !2050)
!2055 = !DILocation(line: 721, column: 7, scope: !2050)
!2056 = !DILocation(line: 721, column: 10, scope: !2050)
!2057 = !DILocation(line: 720, column: 7, scope: !1274)
!2058 = !DILocation(line: 722, column: 5, scope: !2050)
!2059 = !DILocation(line: 728, column: 7, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1274, file: !124, line: 728, column: 7)
!2061 = !DILocation(line: 728, column: 21, scope: !2060)
!2062 = !DILocation(line: 728, column: 51, scope: !2060)
!2063 = !DILocation(line: 728, column: 56, scope: !2060)
!2064 = !DILocation(line: 729, column: 7, scope: !2060)
!2065 = !DILocation(line: 729, column: 10, scope: !2060)
!2066 = !DILocation(line: 728, column: 7, scope: !1274)
!2067 = !DILocation(line: 731, column: 11, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !124, line: 731, column: 11)
!2069 = distinct !DILexicalBlock(scope: !2060, file: !124, line: 730, column: 5)
!2070 = !DILocation(line: 731, column: 11, scope: !2069)
!2071 = !DILocation(line: 732, column: 42, scope: !2068)
!2072 = !DILocation(line: 732, column: 50, scope: !2068)
!2073 = !DILocation(line: 732, column: 67, scope: !2068)
!2074 = !DILocation(line: 732, column: 72, scope: !2068)
!2075 = !DILocation(line: 734, column: 42, scope: !2068)
!2076 = !DILocation(line: 734, column: 49, scope: !2068)
!2077 = !DILocation(line: 735, column: 42, scope: !2068)
!2078 = !DILocation(line: 735, column: 54, scope: !2068)
!2079 = !DILocation(line: 732, column: 16, scope: !2068)
!2080 = !DILocation(line: 732, column: 9, scope: !2068)
!2081 = !DILocation(line: 736, column: 18, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2068, file: !124, line: 736, column: 16)
!2083 = !DILocation(line: 736, column: 29, scope: !2082)
!2084 = !DILocation(line: 736, column: 32, scope: !2082)
!2085 = !DILocation(line: 736, column: 16, scope: !2068)
!2086 = !DILocation(line: 739, column: 24, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2082, file: !124, line: 737, column: 9)
!2088 = !DILocation(line: 739, column: 22, scope: !2087)
!2089 = !DILocation(line: 740, column: 15, scope: !2087)
!2090 = !DILocation(line: 741, column: 11, scope: !2087)
!2091 = !DILocation(line: 743, column: 5, scope: !2069)
!2092 = !DILocation(line: 745, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !1274, file: !124, line: 745, column: 7)
!2094 = !DILocation(line: 745, column: 20, scope: !2093)
!2095 = !DILocation(line: 745, column: 24, scope: !2093)
!2096 = !DILocation(line: 745, column: 7, scope: !1274)
!2097 = !DILocation(line: 746, column: 5, scope: !2093)
!2098 = !DILocation(line: 746, column: 13, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !124, line: 746, column: 5)
!2100 = distinct !DILexicalBlock(scope: !2093, file: !124, line: 746, column: 5)
!2101 = !DILocation(line: 746, column: 12, scope: !2099)
!2102 = !DILocation(line: 746, column: 5, scope: !2100)
!2103 = !DILocation(line: 747, column: 7, scope: !2099)
!2104 = !DILocation(line: 747, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !124, line: 747, column: 7)
!2106 = distinct !DILexicalBlock(scope: !2099, file: !124, line: 747, column: 7)
!2107 = !DILocation(line: 747, column: 7, scope: !2106)
!2108 = !DILocation(line: 746, column: 39, scope: !2099)
!2109 = !DILocation(line: 746, column: 5, scope: !2099)
!2110 = distinct !{!2110, !2102, !2111, !396}
!2111 = !DILocation(line: 747, column: 7, scope: !2100)
!2112 = !DILocation(line: 749, column: 7, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !1274, file: !124, line: 749, column: 7)
!2114 = !DILocation(line: 749, column: 13, scope: !2113)
!2115 = !DILocation(line: 749, column: 11, scope: !2113)
!2116 = !DILocation(line: 749, column: 7, scope: !1274)
!2117 = !DILocation(line: 750, column: 5, scope: !2113)
!2118 = !DILocation(line: 750, column: 12, scope: !2113)
!2119 = !DILocation(line: 750, column: 17, scope: !2113)
!2120 = !DILocation(line: 751, column: 10, scope: !1274)
!2121 = !DILocation(line: 751, column: 3, scope: !1274)
!2122 = !DILabel(scope: !1274, name: "force_outer_quoting_style", file: !124, line: 753)
!2123 = !DILocation(line: 753, column: 2, scope: !1274)
!2124 = !DILocation(line: 756, column: 7, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !1274, file: !124, line: 756, column: 7)
!2126 = !DILocation(line: 756, column: 21, scope: !2125)
!2127 = !DILocation(line: 756, column: 51, scope: !2125)
!2128 = !DILocation(line: 756, column: 54, scope: !2125)
!2129 = !DILocation(line: 756, column: 7, scope: !1274)
!2130 = !DILocation(line: 757, column: 19, scope: !2125)
!2131 = !DILocation(line: 757, column: 5, scope: !2125)
!2132 = !DILocation(line: 758, column: 36, scope: !1274)
!2133 = !DILocation(line: 758, column: 44, scope: !1274)
!2134 = !DILocation(line: 758, column: 56, scope: !1274)
!2135 = !DILocation(line: 758, column: 61, scope: !1274)
!2136 = !DILocation(line: 759, column: 36, scope: !1274)
!2137 = !DILocation(line: 760, column: 36, scope: !1274)
!2138 = !DILocation(line: 760, column: 42, scope: !1274)
!2139 = !DILocation(line: 761, column: 36, scope: !1274)
!2140 = !DILocation(line: 761, column: 48, scope: !1274)
!2141 = !DILocation(line: 758, column: 10, scope: !1274)
!2142 = !DILocation(line: 758, column: 3, scope: !1274)
!2143 = !DILocation(line: 762, column: 1, scope: !1274)
!2144 = !DILocalVariable(name: "msgid", arg: 1, scope: !176, file: !124, line: 197, type: !6)
!2145 = !DILocation(line: 197, column: 28, scope: !176)
!2146 = !DILocalVariable(name: "s", arg: 2, scope: !176, file: !124, line: 197, type: !126)
!2147 = !DILocation(line: 197, column: 54, scope: !176)
!2148 = !DILocalVariable(name: "translation", scope: !176, file: !124, line: 199, type: !6)
!2149 = !DILocation(line: 199, column: 15, scope: !176)
!2150 = !DILocation(line: 199, column: 29, scope: !176)
!2151 = !DILocation(line: 201, column: 7, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !176, file: !124, line: 201, column: 7)
!2153 = !DILocation(line: 201, column: 22, scope: !2152)
!2154 = !DILocation(line: 201, column: 19, scope: !2152)
!2155 = !DILocation(line: 201, column: 7, scope: !176)
!2156 = !DILocation(line: 202, column: 12, scope: !2152)
!2157 = !DILocation(line: 202, column: 5, scope: !2152)
!2158 = !DILocalVariable(name: "w", scope: !176, file: !124, line: 229, type: !1062)
!2159 = !DILocation(line: 229, column: 12, scope: !176)
!2160 = !DILocalVariable(name: "mbs", scope: !176, file: !124, line: 230, type: !1741)
!2161 = !DILocation(line: 230, column: 13, scope: !176)
!2162 = !DILocation(line: 230, column: 18, scope: !176)
!2163 = !DILocation(line: 231, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !176, file: !124, line: 231, column: 7)
!2165 = !DILocation(line: 231, column: 40, scope: !2164)
!2166 = !DILocation(line: 231, column: 45, scope: !2164)
!2167 = !DILocation(line: 231, column: 48, scope: !2164)
!2168 = !DILocation(line: 231, column: 50, scope: !2164)
!2169 = !DILocation(line: 231, column: 7, scope: !176)
!2170 = !DILocation(line: 232, column: 18, scope: !2164)
!2171 = !DILocation(line: 232, column: 27, scope: !2164)
!2172 = !DILocation(line: 232, column: 12, scope: !2164)
!2173 = !DILocation(line: 232, column: 5, scope: !2164)
!2174 = !DILocation(line: 234, column: 11, scope: !176)
!2175 = !DILocation(line: 234, column: 13, scope: !176)
!2176 = !DILocation(line: 234, column: 3, scope: !176)
!2177 = !DILocation(line: 235, column: 1, scope: !176)
!2178 = distinct !DISubprogram(name: "quotearg_alloc", scope: !124, file: !124, line: 788, type: !2179, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!108, !6, !146, !1114}
!2181 = !DILocalVariable(name: "arg", arg: 1, scope: !2178, file: !124, line: 788, type: !6)
!2182 = !DILocation(line: 788, column: 29, scope: !2178)
!2183 = !DILocalVariable(name: "argsize", arg: 2, scope: !2178, file: !124, line: 788, type: !146)
!2184 = !DILocation(line: 788, column: 41, scope: !2178)
!2185 = !DILocalVariable(name: "o", arg: 3, scope: !2178, file: !124, line: 789, type: !1114)
!2186 = !DILocation(line: 789, column: 47, scope: !2178)
!2187 = !DILocation(line: 791, column: 30, scope: !2178)
!2188 = !DILocation(line: 791, column: 35, scope: !2178)
!2189 = !DILocation(line: 791, column: 50, scope: !2178)
!2190 = !DILocation(line: 791, column: 10, scope: !2178)
!2191 = !DILocation(line: 791, column: 3, scope: !2178)
!2192 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !124, file: !124, line: 801, type: !2193, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!108, !6, !146, !249, !1114}
!2195 = !DILocalVariable(name: "arg", arg: 1, scope: !2192, file: !124, line: 801, type: !6)
!2196 = !DILocation(line: 801, column: 33, scope: !2192)
!2197 = !DILocalVariable(name: "argsize", arg: 2, scope: !2192, file: !124, line: 801, type: !146)
!2198 = !DILocation(line: 801, column: 45, scope: !2192)
!2199 = !DILocalVariable(name: "size", arg: 3, scope: !2192, file: !124, line: 801, type: !249)
!2200 = !DILocation(line: 801, column: 62, scope: !2192)
!2201 = !DILocalVariable(name: "o", arg: 4, scope: !2192, file: !124, line: 802, type: !1114)
!2202 = !DILocation(line: 802, column: 51, scope: !2192)
!2203 = !DILocalVariable(name: "p", scope: !2192, file: !124, line: 804, type: !1114)
!2204 = !DILocation(line: 804, column: 33, scope: !2192)
!2205 = !DILocation(line: 804, column: 37, scope: !2192)
!2206 = !DILocation(line: 804, column: 41, scope: !2192)
!2207 = !DILocalVariable(name: "saved_errno", scope: !2192, file: !124, line: 805, type: !35)
!2208 = !DILocation(line: 805, column: 7, scope: !2192)
!2209 = !DILocation(line: 805, column: 21, scope: !2192)
!2210 = !DILocalVariable(name: "flags", scope: !2192, file: !124, line: 807, type: !35)
!2211 = !DILocation(line: 807, column: 7, scope: !2192)
!2212 = !DILocation(line: 807, column: 15, scope: !2192)
!2213 = !DILocation(line: 807, column: 18, scope: !2192)
!2214 = !DILocation(line: 807, column: 27, scope: !2192)
!2215 = !DILocation(line: 807, column: 24, scope: !2192)
!2216 = !DILocalVariable(name: "bufsize", scope: !2192, file: !124, line: 808, type: !146)
!2217 = !DILocation(line: 808, column: 10, scope: !2192)
!2218 = !DILocation(line: 808, column: 55, scope: !2192)
!2219 = !DILocation(line: 808, column: 60, scope: !2192)
!2220 = !DILocation(line: 808, column: 69, scope: !2192)
!2221 = !DILocation(line: 808, column: 72, scope: !2192)
!2222 = !DILocation(line: 809, column: 46, scope: !2192)
!2223 = !DILocation(line: 809, column: 53, scope: !2192)
!2224 = !DILocation(line: 809, column: 56, scope: !2192)
!2225 = !DILocation(line: 810, column: 46, scope: !2192)
!2226 = !DILocation(line: 810, column: 49, scope: !2192)
!2227 = !DILocation(line: 811, column: 46, scope: !2192)
!2228 = !DILocation(line: 811, column: 49, scope: !2192)
!2229 = !DILocation(line: 808, column: 20, scope: !2192)
!2230 = !DILocation(line: 811, column: 62, scope: !2192)
!2231 = !DILocalVariable(name: "buf", scope: !2192, file: !124, line: 812, type: !108)
!2232 = !DILocation(line: 812, column: 9, scope: !2192)
!2233 = !DILocation(line: 812, column: 27, scope: !2192)
!2234 = !DILocation(line: 812, column: 15, scope: !2192)
!2235 = !DILocation(line: 813, column: 29, scope: !2192)
!2236 = !DILocation(line: 813, column: 34, scope: !2192)
!2237 = !DILocation(line: 813, column: 43, scope: !2192)
!2238 = !DILocation(line: 813, column: 48, scope: !2192)
!2239 = !DILocation(line: 813, column: 57, scope: !2192)
!2240 = !DILocation(line: 813, column: 60, scope: !2192)
!2241 = !DILocation(line: 813, column: 67, scope: !2192)
!2242 = !DILocation(line: 814, column: 29, scope: !2192)
!2243 = !DILocation(line: 814, column: 32, scope: !2192)
!2244 = !DILocation(line: 815, column: 29, scope: !2192)
!2245 = !DILocation(line: 815, column: 32, scope: !2192)
!2246 = !DILocation(line: 815, column: 44, scope: !2192)
!2247 = !DILocation(line: 815, column: 47, scope: !2192)
!2248 = !DILocation(line: 813, column: 3, scope: !2192)
!2249 = !DILocation(line: 816, column: 11, scope: !2192)
!2250 = !DILocation(line: 816, column: 3, scope: !2192)
!2251 = !DILocation(line: 816, column: 9, scope: !2192)
!2252 = !DILocation(line: 817, column: 7, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2192, file: !124, line: 817, column: 7)
!2254 = !DILocation(line: 817, column: 7, scope: !2192)
!2255 = !DILocation(line: 818, column: 13, scope: !2253)
!2256 = !DILocation(line: 818, column: 21, scope: !2253)
!2257 = !DILocation(line: 818, column: 6, scope: !2253)
!2258 = !DILocation(line: 818, column: 11, scope: !2253)
!2259 = !DILocation(line: 818, column: 5, scope: !2253)
!2260 = !DILocation(line: 819, column: 10, scope: !2192)
!2261 = !DILocation(line: 819, column: 3, scope: !2192)
!2262 = distinct !DISubprogram(name: "quotearg_free", scope: !124, file: !124, line: 837, type: !84, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2263 = !DILocalVariable(name: "sv", scope: !2262, file: !124, line: 839, type: !184)
!2264 = !DILocation(line: 839, column: 19, scope: !2262)
!2265 = !DILocation(line: 839, column: 24, scope: !2262)
!2266 = !DILocalVariable(name: "i", scope: !2267, file: !124, line: 840, type: !35)
!2267 = distinct !DILexicalBlock(scope: !2262, file: !124, line: 840, column: 3)
!2268 = !DILocation(line: 840, column: 12, scope: !2267)
!2269 = !DILocation(line: 840, column: 8, scope: !2267)
!2270 = !DILocation(line: 840, column: 19, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !124, line: 840, column: 3)
!2272 = !DILocation(line: 840, column: 23, scope: !2271)
!2273 = !DILocation(line: 840, column: 21, scope: !2271)
!2274 = !DILocation(line: 840, column: 3, scope: !2267)
!2275 = !DILocation(line: 841, column: 11, scope: !2271)
!2276 = !DILocation(line: 841, column: 14, scope: !2271)
!2277 = !DILocation(line: 841, column: 17, scope: !2271)
!2278 = !DILocation(line: 841, column: 5, scope: !2271)
!2279 = !DILocation(line: 840, column: 32, scope: !2271)
!2280 = !DILocation(line: 840, column: 3, scope: !2271)
!2281 = distinct !{!2281, !2274, !2282, !396}
!2282 = !DILocation(line: 841, column: 20, scope: !2267)
!2283 = !DILocation(line: 842, column: 7, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2262, file: !124, line: 842, column: 7)
!2285 = !DILocation(line: 842, column: 13, scope: !2284)
!2286 = !DILocation(line: 842, column: 17, scope: !2284)
!2287 = !DILocation(line: 842, column: 7, scope: !2262)
!2288 = !DILocation(line: 844, column: 13, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2284, file: !124, line: 843, column: 5)
!2290 = !DILocation(line: 844, column: 19, scope: !2289)
!2291 = !DILocation(line: 844, column: 7, scope: !2289)
!2292 = !DILocation(line: 845, column: 21, scope: !2289)
!2293 = !DILocation(line: 846, column: 20, scope: !2289)
!2294 = !DILocation(line: 847, column: 5, scope: !2289)
!2295 = !DILocation(line: 848, column: 7, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2262, file: !124, line: 848, column: 7)
!2297 = !DILocation(line: 848, column: 10, scope: !2296)
!2298 = !DILocation(line: 848, column: 7, scope: !2262)
!2299 = !DILocation(line: 850, column: 13, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2296, file: !124, line: 849, column: 5)
!2301 = !DILocation(line: 850, column: 7, scope: !2300)
!2302 = !DILocation(line: 851, column: 15, scope: !2300)
!2303 = !DILocation(line: 852, column: 5, scope: !2300)
!2304 = !DILocation(line: 853, column: 10, scope: !2262)
!2305 = !DILocation(line: 854, column: 1, scope: !2262)
!2306 = distinct !DISubprogram(name: "quotearg_n", scope: !124, file: !124, line: 919, type: !2307, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!108, !35, !6}
!2309 = !DILocalVariable(name: "n", arg: 1, scope: !2306, file: !124, line: 919, type: !35)
!2310 = !DILocation(line: 919, column: 17, scope: !2306)
!2311 = !DILocalVariable(name: "arg", arg: 2, scope: !2306, file: !124, line: 919, type: !6)
!2312 = !DILocation(line: 919, column: 32, scope: !2306)
!2313 = !DILocation(line: 921, column: 30, scope: !2306)
!2314 = !DILocation(line: 921, column: 33, scope: !2306)
!2315 = !DILocation(line: 921, column: 10, scope: !2306)
!2316 = !DILocation(line: 921, column: 3, scope: !2306)
!2317 = distinct !DISubprogram(name: "quotearg_n_options", scope: !124, file: !124, line: 866, type: !2318, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!108, !35, !6, !146, !1114}
!2320 = !DILocalVariable(name: "n", arg: 1, scope: !2317, file: !124, line: 866, type: !35)
!2321 = !DILocation(line: 866, column: 25, scope: !2317)
!2322 = !DILocalVariable(name: "arg", arg: 2, scope: !2317, file: !124, line: 866, type: !6)
!2323 = !DILocation(line: 866, column: 40, scope: !2317)
!2324 = !DILocalVariable(name: "argsize", arg: 3, scope: !2317, file: !124, line: 866, type: !146)
!2325 = !DILocation(line: 866, column: 52, scope: !2317)
!2326 = !DILocalVariable(name: "options", arg: 4, scope: !2317, file: !124, line: 867, type: !1114)
!2327 = !DILocation(line: 867, column: 51, scope: !2317)
!2328 = !DILocalVariable(name: "saved_errno", scope: !2317, file: !124, line: 869, type: !35)
!2329 = !DILocation(line: 869, column: 7, scope: !2317)
!2330 = !DILocation(line: 869, column: 21, scope: !2317)
!2331 = !DILocalVariable(name: "sv", scope: !2317, file: !124, line: 871, type: !184)
!2332 = !DILocation(line: 871, column: 19, scope: !2317)
!2333 = !DILocation(line: 871, column: 24, scope: !2317)
!2334 = !DILocalVariable(name: "nslots_max", scope: !2317, file: !124, line: 873, type: !35)
!2335 = !DILocation(line: 873, column: 7, scope: !2317)
!2336 = !DILocation(line: 874, column: 15, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2317, file: !124, line: 874, column: 7)
!2338 = !DILocation(line: 874, column: 12, scope: !2337)
!2339 = !DILocation(line: 874, column: 17, scope: !2337)
!2340 = !DILocation(line: 874, column: 20, scope: !2337)
!2341 = !DILocation(line: 874, column: 24, scope: !2337)
!2342 = !DILocation(line: 874, column: 22, scope: !2337)
!2343 = !DILocation(line: 874, column: 7, scope: !2317)
!2344 = !DILocation(line: 875, column: 5, scope: !2337)
!2345 = !DILocation(line: 877, column: 7, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2317, file: !124, line: 877, column: 7)
!2347 = !DILocation(line: 877, column: 17, scope: !2346)
!2348 = !DILocation(line: 877, column: 14, scope: !2346)
!2349 = !DILocation(line: 877, column: 7, scope: !2317)
!2350 = !DILocalVariable(name: "preallocated", scope: !2351, file: !124, line: 879, type: !51)
!2351 = distinct !DILexicalBlock(scope: !2346, file: !124, line: 878, column: 5)
!2352 = !DILocation(line: 879, column: 12, scope: !2351)
!2353 = !DILocation(line: 879, column: 28, scope: !2351)
!2354 = !DILocation(line: 879, column: 31, scope: !2351)
!2355 = !DILocalVariable(name: "new_nslots", scope: !2351, file: !124, line: 880, type: !257)
!2356 = !DILocation(line: 880, column: 13, scope: !2351)
!2357 = !DILocation(line: 880, column: 26, scope: !2351)
!2358 = !DILocation(line: 882, column: 31, scope: !2351)
!2359 = !DILocation(line: 882, column: 53, scope: !2351)
!2360 = !DILocation(line: 883, column: 31, scope: !2351)
!2361 = !DILocation(line: 883, column: 35, scope: !2351)
!2362 = !DILocation(line: 883, column: 33, scope: !2351)
!2363 = !DILocation(line: 883, column: 42, scope: !2351)
!2364 = !DILocation(line: 883, column: 47, scope: !2351)
!2365 = !DILocation(line: 882, column: 22, scope: !2351)
!2366 = !DILocation(line: 882, column: 20, scope: !2351)
!2367 = !DILocation(line: 882, column: 15, scope: !2351)
!2368 = !DILocation(line: 884, column: 11, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2351, file: !124, line: 884, column: 11)
!2370 = !DILocation(line: 884, column: 11, scope: !2351)
!2371 = !DILocation(line: 885, column: 10, scope: !2369)
!2372 = !DILocation(line: 885, column: 15, scope: !2369)
!2373 = !DILocation(line: 885, column: 9, scope: !2369)
!2374 = !DILocation(line: 886, column: 15, scope: !2351)
!2375 = !DILocation(line: 886, column: 20, scope: !2351)
!2376 = !DILocation(line: 886, column: 18, scope: !2351)
!2377 = !DILocation(line: 886, column: 7, scope: !2351)
!2378 = !DILocation(line: 886, column: 32, scope: !2351)
!2379 = !DILocation(line: 886, column: 45, scope: !2351)
!2380 = !DILocation(line: 886, column: 43, scope: !2351)
!2381 = !DILocation(line: 886, column: 53, scope: !2351)
!2382 = !DILocation(line: 887, column: 16, scope: !2351)
!2383 = !DILocation(line: 887, column: 14, scope: !2351)
!2384 = !DILocation(line: 888, column: 5, scope: !2351)
!2385 = !DILocalVariable(name: "size", scope: !2386, file: !124, line: 891, type: !146)
!2386 = distinct !DILexicalBlock(scope: !2317, file: !124, line: 890, column: 3)
!2387 = !DILocation(line: 891, column: 12, scope: !2386)
!2388 = !DILocation(line: 891, column: 19, scope: !2386)
!2389 = !DILocation(line: 891, column: 22, scope: !2386)
!2390 = !DILocation(line: 891, column: 25, scope: !2386)
!2391 = !DILocalVariable(name: "val", scope: !2386, file: !124, line: 892, type: !108)
!2392 = !DILocation(line: 892, column: 11, scope: !2386)
!2393 = !DILocation(line: 892, column: 17, scope: !2386)
!2394 = !DILocation(line: 892, column: 20, scope: !2386)
!2395 = !DILocation(line: 892, column: 23, scope: !2386)
!2396 = !DILocalVariable(name: "flags", scope: !2386, file: !124, line: 894, type: !35)
!2397 = !DILocation(line: 894, column: 9, scope: !2386)
!2398 = !DILocation(line: 894, column: 17, scope: !2386)
!2399 = !DILocation(line: 894, column: 26, scope: !2386)
!2400 = !DILocation(line: 894, column: 32, scope: !2386)
!2401 = !DILocalVariable(name: "qsize", scope: !2386, file: !124, line: 895, type: !146)
!2402 = !DILocation(line: 895, column: 12, scope: !2386)
!2403 = !DILocation(line: 895, column: 46, scope: !2386)
!2404 = !DILocation(line: 895, column: 51, scope: !2386)
!2405 = !DILocation(line: 895, column: 57, scope: !2386)
!2406 = !DILocation(line: 895, column: 62, scope: !2386)
!2407 = !DILocation(line: 896, column: 46, scope: !2386)
!2408 = !DILocation(line: 896, column: 55, scope: !2386)
!2409 = !DILocation(line: 896, column: 62, scope: !2386)
!2410 = !DILocation(line: 897, column: 46, scope: !2386)
!2411 = !DILocation(line: 897, column: 55, scope: !2386)
!2412 = !DILocation(line: 898, column: 46, scope: !2386)
!2413 = !DILocation(line: 898, column: 55, scope: !2386)
!2414 = !DILocation(line: 899, column: 46, scope: !2386)
!2415 = !DILocation(line: 899, column: 55, scope: !2386)
!2416 = !DILocation(line: 895, column: 20, scope: !2386)
!2417 = !DILocation(line: 901, column: 9, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2386, file: !124, line: 901, column: 9)
!2419 = !DILocation(line: 901, column: 17, scope: !2418)
!2420 = !DILocation(line: 901, column: 14, scope: !2418)
!2421 = !DILocation(line: 901, column: 9, scope: !2386)
!2422 = !DILocation(line: 903, column: 29, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2418, file: !124, line: 902, column: 7)
!2424 = !DILocation(line: 903, column: 35, scope: !2423)
!2425 = !DILocation(line: 903, column: 27, scope: !2423)
!2426 = !DILocation(line: 903, column: 9, scope: !2423)
!2427 = !DILocation(line: 903, column: 12, scope: !2423)
!2428 = !DILocation(line: 903, column: 15, scope: !2423)
!2429 = !DILocation(line: 903, column: 20, scope: !2423)
!2430 = !DILocation(line: 904, column: 13, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2423, file: !124, line: 904, column: 13)
!2432 = !DILocation(line: 904, column: 17, scope: !2431)
!2433 = !DILocation(line: 904, column: 13, scope: !2423)
!2434 = !DILocation(line: 905, column: 17, scope: !2431)
!2435 = !DILocation(line: 905, column: 11, scope: !2431)
!2436 = !DILocation(line: 906, column: 39, scope: !2423)
!2437 = !DILocation(line: 906, column: 27, scope: !2423)
!2438 = !DILocation(line: 906, column: 25, scope: !2423)
!2439 = !DILocation(line: 906, column: 9, scope: !2423)
!2440 = !DILocation(line: 906, column: 12, scope: !2423)
!2441 = !DILocation(line: 906, column: 15, scope: !2423)
!2442 = !DILocation(line: 906, column: 19, scope: !2423)
!2443 = !DILocation(line: 907, column: 35, scope: !2423)
!2444 = !DILocation(line: 907, column: 40, scope: !2423)
!2445 = !DILocation(line: 907, column: 46, scope: !2423)
!2446 = !DILocation(line: 907, column: 51, scope: !2423)
!2447 = !DILocation(line: 907, column: 60, scope: !2423)
!2448 = !DILocation(line: 907, column: 69, scope: !2423)
!2449 = !DILocation(line: 908, column: 35, scope: !2423)
!2450 = !DILocation(line: 908, column: 42, scope: !2423)
!2451 = !DILocation(line: 908, column: 51, scope: !2423)
!2452 = !DILocation(line: 909, column: 35, scope: !2423)
!2453 = !DILocation(line: 909, column: 44, scope: !2423)
!2454 = !DILocation(line: 910, column: 35, scope: !2423)
!2455 = !DILocation(line: 910, column: 44, scope: !2423)
!2456 = !DILocation(line: 907, column: 9, scope: !2423)
!2457 = !DILocation(line: 911, column: 7, scope: !2423)
!2458 = !DILocation(line: 913, column: 13, scope: !2386)
!2459 = !DILocation(line: 913, column: 5, scope: !2386)
!2460 = !DILocation(line: 913, column: 11, scope: !2386)
!2461 = !DILocation(line: 914, column: 12, scope: !2386)
!2462 = !DILocation(line: 914, column: 5, scope: !2386)
!2463 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !124, file: !124, line: 925, type: !2464, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!108, !35, !6, !146}
!2466 = !DILocalVariable(name: "n", arg: 1, scope: !2463, file: !124, line: 925, type: !35)
!2467 = !DILocation(line: 925, column: 21, scope: !2463)
!2468 = !DILocalVariable(name: "arg", arg: 2, scope: !2463, file: !124, line: 925, type: !6)
!2469 = !DILocation(line: 925, column: 36, scope: !2463)
!2470 = !DILocalVariable(name: "argsize", arg: 3, scope: !2463, file: !124, line: 925, type: !146)
!2471 = !DILocation(line: 925, column: 48, scope: !2463)
!2472 = !DILocation(line: 927, column: 30, scope: !2463)
!2473 = !DILocation(line: 927, column: 33, scope: !2463)
!2474 = !DILocation(line: 927, column: 38, scope: !2463)
!2475 = !DILocation(line: 927, column: 10, scope: !2463)
!2476 = !DILocation(line: 927, column: 3, scope: !2463)
!2477 = distinct !DISubprogram(name: "quotearg", scope: !124, file: !124, line: 931, type: !2478, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!108, !6}
!2480 = !DILocalVariable(name: "arg", arg: 1, scope: !2477, file: !124, line: 931, type: !6)
!2481 = !DILocation(line: 931, column: 23, scope: !2477)
!2482 = !DILocation(line: 933, column: 25, scope: !2477)
!2483 = !DILocation(line: 933, column: 10, scope: !2477)
!2484 = !DILocation(line: 933, column: 3, scope: !2477)
!2485 = distinct !DISubprogram(name: "quotearg_mem", scope: !124, file: !124, line: 937, type: !2486, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!108, !6, !146}
!2488 = !DILocalVariable(name: "arg", arg: 1, scope: !2485, file: !124, line: 937, type: !6)
!2489 = !DILocation(line: 937, column: 27, scope: !2485)
!2490 = !DILocalVariable(name: "argsize", arg: 2, scope: !2485, file: !124, line: 937, type: !146)
!2491 = !DILocation(line: 937, column: 39, scope: !2485)
!2492 = !DILocation(line: 939, column: 29, scope: !2485)
!2493 = !DILocation(line: 939, column: 34, scope: !2485)
!2494 = !DILocation(line: 939, column: 10, scope: !2485)
!2495 = !DILocation(line: 939, column: 3, scope: !2485)
!2496 = distinct !DISubprogram(name: "quotearg_n_style", scope: !124, file: !124, line: 943, type: !2497, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!108, !35, !126, !6}
!2499 = !DILocalVariable(name: "n", arg: 1, scope: !2496, file: !124, line: 943, type: !35)
!2500 = !DILocation(line: 943, column: 23, scope: !2496)
!2501 = !DILocalVariable(name: "s", arg: 2, scope: !2496, file: !124, line: 943, type: !126)
!2502 = !DILocation(line: 943, column: 45, scope: !2496)
!2503 = !DILocalVariable(name: "arg", arg: 3, scope: !2496, file: !124, line: 943, type: !6)
!2504 = !DILocation(line: 943, column: 60, scope: !2496)
!2505 = !DILocalVariable(name: "o", scope: !2496, file: !124, line: 945, type: !1115)
!2506 = !DILocation(line: 945, column: 32, scope: !2496)
!2507 = !DILocation(line: 945, column: 64, scope: !2496)
!2508 = !DILocation(line: 945, column: 36, scope: !2496)
!2509 = !DILocation(line: 946, column: 30, scope: !2496)
!2510 = !DILocation(line: 946, column: 33, scope: !2496)
!2511 = !DILocation(line: 946, column: 10, scope: !2496)
!2512 = !DILocation(line: 946, column: 3, scope: !2496)
!2513 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !124, file: !124, line: 183, type: !2514, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!157, !126}
!2516 = !DILocalVariable(name: "style", arg: 1, scope: !2513, file: !124, line: 183, type: !126)
!2517 = !DILocation(line: 183, column: 48, scope: !2513)
!2518 = !DILocalVariable(name: "o", scope: !2513, file: !124, line: 185, type: !157)
!2519 = !DILocation(line: 185, column: 26, scope: !2513)
!2520 = !DILocation(line: 186, column: 7, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2513, file: !124, line: 186, column: 7)
!2522 = !DILocation(line: 186, column: 13, scope: !2521)
!2523 = !DILocation(line: 186, column: 7, scope: !2513)
!2524 = !DILocation(line: 187, column: 5, scope: !2521)
!2525 = !DILocation(line: 188, column: 13, scope: !2513)
!2526 = !DILocation(line: 188, column: 5, scope: !2513)
!2527 = !DILocation(line: 188, column: 11, scope: !2513)
!2528 = !DILocation(line: 189, column: 3, scope: !2513)
!2529 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !124, file: !124, line: 950, type: !2530, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!108, !35, !126, !6, !146}
!2532 = !DILocalVariable(name: "n", arg: 1, scope: !2529, file: !124, line: 950, type: !35)
!2533 = !DILocation(line: 950, column: 27, scope: !2529)
!2534 = !DILocalVariable(name: "s", arg: 2, scope: !2529, file: !124, line: 950, type: !126)
!2535 = !DILocation(line: 950, column: 49, scope: !2529)
!2536 = !DILocalVariable(name: "arg", arg: 3, scope: !2529, file: !124, line: 951, type: !6)
!2537 = !DILocation(line: 951, column: 35, scope: !2529)
!2538 = !DILocalVariable(name: "argsize", arg: 4, scope: !2529, file: !124, line: 951, type: !146)
!2539 = !DILocation(line: 951, column: 47, scope: !2529)
!2540 = !DILocalVariable(name: "o", scope: !2529, file: !124, line: 953, type: !1115)
!2541 = !DILocation(line: 953, column: 32, scope: !2529)
!2542 = !DILocation(line: 953, column: 64, scope: !2529)
!2543 = !DILocation(line: 953, column: 36, scope: !2529)
!2544 = !DILocation(line: 954, column: 30, scope: !2529)
!2545 = !DILocation(line: 954, column: 33, scope: !2529)
!2546 = !DILocation(line: 954, column: 38, scope: !2529)
!2547 = !DILocation(line: 954, column: 10, scope: !2529)
!2548 = !DILocation(line: 954, column: 3, scope: !2529)
!2549 = distinct !DISubprogram(name: "quotearg_style", scope: !124, file: !124, line: 958, type: !2550, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!108, !126, !6}
!2552 = !DILocalVariable(name: "s", arg: 1, scope: !2549, file: !124, line: 958, type: !126)
!2553 = !DILocation(line: 958, column: 36, scope: !2549)
!2554 = !DILocalVariable(name: "arg", arg: 2, scope: !2549, file: !124, line: 958, type: !6)
!2555 = !DILocation(line: 958, column: 51, scope: !2549)
!2556 = !DILocation(line: 960, column: 31, scope: !2549)
!2557 = !DILocation(line: 960, column: 34, scope: !2549)
!2558 = !DILocation(line: 960, column: 10, scope: !2549)
!2559 = !DILocation(line: 960, column: 3, scope: !2549)
!2560 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !124, file: !124, line: 964, type: !2561, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!108, !126, !6, !146}
!2563 = !DILocalVariable(name: "s", arg: 1, scope: !2560, file: !124, line: 964, type: !126)
!2564 = !DILocation(line: 964, column: 40, scope: !2560)
!2565 = !DILocalVariable(name: "arg", arg: 2, scope: !2560, file: !124, line: 964, type: !6)
!2566 = !DILocation(line: 964, column: 55, scope: !2560)
!2567 = !DILocalVariable(name: "argsize", arg: 3, scope: !2560, file: !124, line: 964, type: !146)
!2568 = !DILocation(line: 964, column: 67, scope: !2560)
!2569 = !DILocation(line: 966, column: 35, scope: !2560)
!2570 = !DILocation(line: 966, column: 38, scope: !2560)
!2571 = !DILocation(line: 966, column: 43, scope: !2560)
!2572 = !DILocation(line: 966, column: 10, scope: !2560)
!2573 = !DILocation(line: 966, column: 3, scope: !2560)
!2574 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !124, file: !124, line: 970, type: !2575, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!108, !6, !146, !8}
!2577 = !DILocalVariable(name: "arg", arg: 1, scope: !2574, file: !124, line: 970, type: !6)
!2578 = !DILocation(line: 970, column: 32, scope: !2574)
!2579 = !DILocalVariable(name: "argsize", arg: 2, scope: !2574, file: !124, line: 970, type: !146)
!2580 = !DILocation(line: 970, column: 44, scope: !2574)
!2581 = !DILocalVariable(name: "ch", arg: 3, scope: !2574, file: !124, line: 970, type: !8)
!2582 = !DILocation(line: 970, column: 58, scope: !2574)
!2583 = !DILocalVariable(name: "options", scope: !2574, file: !124, line: 972, type: !157)
!2584 = !DILocation(line: 972, column: 26, scope: !2574)
!2585 = !DILocation(line: 973, column: 13, scope: !2574)
!2586 = !DILocation(line: 974, column: 31, scope: !2574)
!2587 = !DILocation(line: 974, column: 3, scope: !2574)
!2588 = !DILocation(line: 975, column: 33, scope: !2574)
!2589 = !DILocation(line: 975, column: 38, scope: !2574)
!2590 = !DILocation(line: 975, column: 10, scope: !2574)
!2591 = !DILocation(line: 975, column: 3, scope: !2574)
!2592 = distinct !DISubprogram(name: "quotearg_char", scope: !124, file: !124, line: 979, type: !2593, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!108, !6, !8}
!2595 = !DILocalVariable(name: "arg", arg: 1, scope: !2592, file: !124, line: 979, type: !6)
!2596 = !DILocation(line: 979, column: 28, scope: !2592)
!2597 = !DILocalVariable(name: "ch", arg: 2, scope: !2592, file: !124, line: 979, type: !8)
!2598 = !DILocation(line: 979, column: 38, scope: !2592)
!2599 = !DILocation(line: 981, column: 29, scope: !2592)
!2600 = !DILocation(line: 981, column: 44, scope: !2592)
!2601 = !DILocation(line: 981, column: 10, scope: !2592)
!2602 = !DILocation(line: 981, column: 3, scope: !2592)
!2603 = distinct !DISubprogram(name: "quotearg_colon", scope: !124, file: !124, line: 985, type: !2478, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2604 = !DILocalVariable(name: "arg", arg: 1, scope: !2603, file: !124, line: 985, type: !6)
!2605 = !DILocation(line: 985, column: 29, scope: !2603)
!2606 = !DILocation(line: 987, column: 25, scope: !2603)
!2607 = !DILocation(line: 987, column: 10, scope: !2603)
!2608 = !DILocation(line: 987, column: 3, scope: !2603)
!2609 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !124, file: !124, line: 991, type: !2486, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2610 = !DILocalVariable(name: "arg", arg: 1, scope: !2609, file: !124, line: 991, type: !6)
!2611 = !DILocation(line: 991, column: 33, scope: !2609)
!2612 = !DILocalVariable(name: "argsize", arg: 2, scope: !2609, file: !124, line: 991, type: !146)
!2613 = !DILocation(line: 991, column: 45, scope: !2609)
!2614 = !DILocation(line: 993, column: 29, scope: !2609)
!2615 = !DILocation(line: 993, column: 34, scope: !2609)
!2616 = !DILocation(line: 993, column: 10, scope: !2609)
!2617 = !DILocation(line: 993, column: 3, scope: !2609)
!2618 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !124, file: !124, line: 997, type: !2497, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2619 = !DILocalVariable(name: "n", arg: 1, scope: !2618, file: !124, line: 997, type: !35)
!2620 = !DILocation(line: 997, column: 29, scope: !2618)
!2621 = !DILocalVariable(name: "s", arg: 2, scope: !2618, file: !124, line: 997, type: !126)
!2622 = !DILocation(line: 997, column: 51, scope: !2618)
!2623 = !DILocalVariable(name: "arg", arg: 3, scope: !2618, file: !124, line: 997, type: !6)
!2624 = !DILocation(line: 997, column: 66, scope: !2618)
!2625 = !DILocalVariable(name: "options", scope: !2618, file: !124, line: 999, type: !157)
!2626 = !DILocation(line: 999, column: 26, scope: !2618)
!2627 = !DILocation(line: 1000, column: 41, scope: !2618)
!2628 = !DILocation(line: 1000, column: 13, scope: !2618)
!2629 = !DILocation(line: 1001, column: 3, scope: !2618)
!2630 = !DILocation(line: 1002, column: 30, scope: !2618)
!2631 = !DILocation(line: 1002, column: 33, scope: !2618)
!2632 = !DILocation(line: 1002, column: 10, scope: !2618)
!2633 = !DILocation(line: 1002, column: 3, scope: !2618)
!2634 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !124, file: !124, line: 1006, type: !2635, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!108, !35, !6, !6, !6}
!2637 = !DILocalVariable(name: "n", arg: 1, scope: !2634, file: !124, line: 1006, type: !35)
!2638 = !DILocation(line: 1006, column: 24, scope: !2634)
!2639 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2634, file: !124, line: 1006, type: !6)
!2640 = !DILocation(line: 1006, column: 39, scope: !2634)
!2641 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2634, file: !124, line: 1007, type: !6)
!2642 = !DILocation(line: 1007, column: 32, scope: !2634)
!2643 = !DILocalVariable(name: "arg", arg: 4, scope: !2634, file: !124, line: 1007, type: !6)
!2644 = !DILocation(line: 1007, column: 57, scope: !2634)
!2645 = !DILocation(line: 1009, column: 33, scope: !2634)
!2646 = !DILocation(line: 1009, column: 36, scope: !2634)
!2647 = !DILocation(line: 1009, column: 48, scope: !2634)
!2648 = !DILocation(line: 1009, column: 61, scope: !2634)
!2649 = !DILocation(line: 1009, column: 10, scope: !2634)
!2650 = !DILocation(line: 1009, column: 3, scope: !2634)
!2651 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !124, file: !124, line: 1014, type: !2652, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!108, !35, !6, !6, !6, !146}
!2654 = !DILocalVariable(name: "n", arg: 1, scope: !2651, file: !124, line: 1014, type: !35)
!2655 = !DILocation(line: 1014, column: 28, scope: !2651)
!2656 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2651, file: !124, line: 1014, type: !6)
!2657 = !DILocation(line: 1014, column: 43, scope: !2651)
!2658 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2651, file: !124, line: 1015, type: !6)
!2659 = !DILocation(line: 1015, column: 36, scope: !2651)
!2660 = !DILocalVariable(name: "arg", arg: 4, scope: !2651, file: !124, line: 1016, type: !6)
!2661 = !DILocation(line: 1016, column: 36, scope: !2651)
!2662 = !DILocalVariable(name: "argsize", arg: 5, scope: !2651, file: !124, line: 1016, type: !146)
!2663 = !DILocation(line: 1016, column: 48, scope: !2651)
!2664 = !DILocalVariable(name: "o", scope: !2651, file: !124, line: 1018, type: !157)
!2665 = !DILocation(line: 1018, column: 26, scope: !2651)
!2666 = !DILocation(line: 1018, column: 30, scope: !2651)
!2667 = !DILocation(line: 1019, column: 27, scope: !2651)
!2668 = !DILocation(line: 1019, column: 39, scope: !2651)
!2669 = !DILocation(line: 1019, column: 3, scope: !2651)
!2670 = !DILocation(line: 1020, column: 30, scope: !2651)
!2671 = !DILocation(line: 1020, column: 33, scope: !2651)
!2672 = !DILocation(line: 1020, column: 38, scope: !2651)
!2673 = !DILocation(line: 1020, column: 10, scope: !2651)
!2674 = !DILocation(line: 1020, column: 3, scope: !2651)
!2675 = distinct !DISubprogram(name: "quotearg_custom", scope: !124, file: !124, line: 1024, type: !2676, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!108, !6, !6, !6}
!2678 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2675, file: !124, line: 1024, type: !6)
!2679 = !DILocation(line: 1024, column: 30, scope: !2675)
!2680 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2675, file: !124, line: 1024, type: !6)
!2681 = !DILocation(line: 1024, column: 54, scope: !2675)
!2682 = !DILocalVariable(name: "arg", arg: 3, scope: !2675, file: !124, line: 1025, type: !6)
!2683 = !DILocation(line: 1025, column: 30, scope: !2675)
!2684 = !DILocation(line: 1027, column: 32, scope: !2675)
!2685 = !DILocation(line: 1027, column: 44, scope: !2675)
!2686 = !DILocation(line: 1027, column: 57, scope: !2675)
!2687 = !DILocation(line: 1027, column: 10, scope: !2675)
!2688 = !DILocation(line: 1027, column: 3, scope: !2675)
!2689 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !124, file: !124, line: 1031, type: !2690, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!108, !6, !6, !6, !146}
!2692 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2689, file: !124, line: 1031, type: !6)
!2693 = !DILocation(line: 1031, column: 34, scope: !2689)
!2694 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2689, file: !124, line: 1031, type: !6)
!2695 = !DILocation(line: 1031, column: 58, scope: !2689)
!2696 = !DILocalVariable(name: "arg", arg: 3, scope: !2689, file: !124, line: 1032, type: !6)
!2697 = !DILocation(line: 1032, column: 34, scope: !2689)
!2698 = !DILocalVariable(name: "argsize", arg: 4, scope: !2689, file: !124, line: 1032, type: !146)
!2699 = !DILocation(line: 1032, column: 46, scope: !2689)
!2700 = !DILocation(line: 1034, column: 36, scope: !2689)
!2701 = !DILocation(line: 1034, column: 48, scope: !2689)
!2702 = !DILocation(line: 1034, column: 61, scope: !2689)
!2703 = !DILocation(line: 1035, column: 33, scope: !2689)
!2704 = !DILocation(line: 1034, column: 10, scope: !2689)
!2705 = !DILocation(line: 1034, column: 3, scope: !2689)
!2706 = distinct !DISubprogram(name: "quote_n_mem", scope: !124, file: !124, line: 1049, type: !2707, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!6, !35, !6, !146}
!2709 = !DILocalVariable(name: "n", arg: 1, scope: !2706, file: !124, line: 1049, type: !35)
!2710 = !DILocation(line: 1049, column: 18, scope: !2706)
!2711 = !DILocalVariable(name: "arg", arg: 2, scope: !2706, file: !124, line: 1049, type: !6)
!2712 = !DILocation(line: 1049, column: 33, scope: !2706)
!2713 = !DILocalVariable(name: "argsize", arg: 3, scope: !2706, file: !124, line: 1049, type: !146)
!2714 = !DILocation(line: 1049, column: 45, scope: !2706)
!2715 = !DILocation(line: 1051, column: 30, scope: !2706)
!2716 = !DILocation(line: 1051, column: 33, scope: !2706)
!2717 = !DILocation(line: 1051, column: 38, scope: !2706)
!2718 = !DILocation(line: 1051, column: 10, scope: !2706)
!2719 = !DILocation(line: 1051, column: 3, scope: !2706)
!2720 = distinct !DISubprogram(name: "quote_mem", scope: !124, file: !124, line: 1055, type: !2721, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!6, !6, !146}
!2723 = !DILocalVariable(name: "arg", arg: 1, scope: !2720, file: !124, line: 1055, type: !6)
!2724 = !DILocation(line: 1055, column: 24, scope: !2720)
!2725 = !DILocalVariable(name: "argsize", arg: 2, scope: !2720, file: !124, line: 1055, type: !146)
!2726 = !DILocation(line: 1055, column: 36, scope: !2720)
!2727 = !DILocation(line: 1057, column: 26, scope: !2720)
!2728 = !DILocation(line: 1057, column: 31, scope: !2720)
!2729 = !DILocation(line: 1057, column: 10, scope: !2720)
!2730 = !DILocation(line: 1057, column: 3, scope: !2720)
!2731 = distinct !DISubprogram(name: "quote_n", scope: !124, file: !124, line: 1061, type: !2732, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!6, !35, !6}
!2734 = !DILocalVariable(name: "n", arg: 1, scope: !2731, file: !124, line: 1061, type: !35)
!2735 = !DILocation(line: 1061, column: 14, scope: !2731)
!2736 = !DILocalVariable(name: "arg", arg: 2, scope: !2731, file: !124, line: 1061, type: !6)
!2737 = !DILocation(line: 1061, column: 29, scope: !2731)
!2738 = !DILocation(line: 1063, column: 23, scope: !2731)
!2739 = !DILocation(line: 1063, column: 26, scope: !2731)
!2740 = !DILocation(line: 1063, column: 10, scope: !2731)
!2741 = !DILocation(line: 1063, column: 3, scope: !2731)
!2742 = distinct !DISubprogram(name: "quote", scope: !124, file: !124, line: 1067, type: !2743, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !38)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!6, !6}
!2745 = !DILocalVariable(name: "arg", arg: 1, scope: !2742, file: !124, line: 1067, type: !6)
!2746 = !DILocation(line: 1067, column: 20, scope: !2742)
!2747 = !DILocation(line: 1069, column: 22, scope: !2742)
!2748 = !DILocation(line: 1069, column: 10, scope: !2742)
!2749 = !DILocation(line: 1069, column: 3, scope: !2742)
!2750 = distinct !DISubprogram(name: "streq", scope: !2751, file: !2751, line: 1359, type: !2752, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !234, retainedNodes: !38)
!2751 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!51, !6, !6}
!2754 = !DILocalVariable(name: "__s1", arg: 1, scope: !2750, file: !2751, line: 1359, type: !6)
!2755 = !DILocation(line: 1359, column: 20, scope: !2750)
!2756 = !DILocalVariable(name: "__s2", arg: 2, scope: !2750, file: !2751, line: 1359, type: !6)
!2757 = !DILocation(line: 1359, column: 38, scope: !2750)
!2758 = !DILocation(line: 1361, column: 19, scope: !2750)
!2759 = !DILocation(line: 1361, column: 25, scope: !2750)
!2760 = !DILocation(line: 1361, column: 11, scope: !2750)
!2761 = !DILocation(line: 1361, column: 10, scope: !2750)
!2762 = !DILocation(line: 1361, column: 3, scope: !2750)
!2763 = distinct !DISubprogram(name: "version_etc_arn", scope: !237, file: !237, line: 61, type: !2764, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !38)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{null, !2766, !6, !6, !6, !2819, !146}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2768, line: 7, baseType: !2769)
!2768 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2770, line: 49, size: 1728, elements: !2771)
!2770 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2771 = !{!2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2787, !2789, !2790, !2791, !2793, !2794, !2796, !2800, !2803, !2805, !2808, !2811, !2812, !2813, !2814, !2815}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2769, file: !2770, line: 51, baseType: !35, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2769, file: !2770, line: 54, baseType: !108, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2769, file: !2770, line: 55, baseType: !108, size: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2769, file: !2770, line: 56, baseType: !108, size: 64, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2769, file: !2770, line: 57, baseType: !108, size: 64, offset: 256)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2769, file: !2770, line: 58, baseType: !108, size: 64, offset: 320)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2769, file: !2770, line: 59, baseType: !108, size: 64, offset: 384)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2769, file: !2770, line: 60, baseType: !108, size: 64, offset: 448)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2769, file: !2770, line: 61, baseType: !108, size: 64, offset: 512)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2769, file: !2770, line: 64, baseType: !108, size: 64, offset: 576)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2769, file: !2770, line: 65, baseType: !108, size: 64, offset: 640)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2769, file: !2770, line: 66, baseType: !108, size: 64, offset: 704)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2769, file: !2770, line: 68, baseType: !2785, size: 64, offset: 768)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2770, line: 36, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2769, file: !2770, line: 70, baseType: !2788, size: 64, offset: 832)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2769, file: !2770, line: 72, baseType: !35, size: 32, offset: 896)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2769, file: !2770, line: 73, baseType: !35, size: 32, offset: 928)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2769, file: !2770, line: 74, baseType: !2792, size: 64, offset: 960)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !33, line: 152, baseType: !260)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2769, file: !2770, line: 77, baseType: !36, size: 16, offset: 1024)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2769, file: !2770, line: 78, baseType: !2795, size: 8, offset: 1040)
!2795 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2769, file: !2770, line: 79, baseType: !2797, size: 8, offset: 1048)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2798)
!2798 = !{!2799}
!2799 = !DISubrange(count: 1)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2769, file: !2770, line: 81, baseType: !2801, size: 64, offset: 1088)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2770, line: 43, baseType: null)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2769, file: !2770, line: 89, baseType: !2804, size: 64, offset: 1152)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !33, line: 153, baseType: !260)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2769, file: !2770, line: 91, baseType: !2806, size: 64, offset: 1216)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2770, line: 37, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2769, file: !2770, line: 92, baseType: !2809, size: 64, offset: 1280)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2770, line: 38, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2769, file: !2770, line: 93, baseType: !2788, size: 64, offset: 1344)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2769, file: !2770, line: 94, baseType: !29, size: 64, offset: 1408)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2769, file: !2770, line: 95, baseType: !146, size: 64, offset: 1472)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2769, file: !2770, line: 96, baseType: !35, size: 32, offset: 1536)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2769, file: !2770, line: 98, baseType: !2816, size: 160, offset: 1568)
!2816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2817)
!2817 = !{!2818}
!2818 = !DISubrange(count: 20)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!2820 = !DILocalVariable(name: "stream", arg: 1, scope: !2763, file: !237, line: 61, type: !2766)
!2821 = !DILocation(line: 61, column: 24, scope: !2763)
!2822 = !DILocalVariable(name: "command_name", arg: 2, scope: !2763, file: !237, line: 62, type: !6)
!2823 = !DILocation(line: 62, column: 30, scope: !2763)
!2824 = !DILocalVariable(name: "package", arg: 3, scope: !2763, file: !237, line: 62, type: !6)
!2825 = !DILocation(line: 62, column: 56, scope: !2763)
!2826 = !DILocalVariable(name: "version", arg: 4, scope: !2763, file: !237, line: 63, type: !6)
!2827 = !DILocation(line: 63, column: 30, scope: !2763)
!2828 = !DILocalVariable(name: "authors", arg: 5, scope: !2763, file: !237, line: 64, type: !2819)
!2829 = !DILocation(line: 64, column: 39, scope: !2763)
!2830 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2763, file: !237, line: 64, type: !146)
!2831 = !DILocation(line: 64, column: 55, scope: !2763)
!2832 = !DILocation(line: 66, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2763, file: !237, line: 66, column: 7)
!2834 = !DILocation(line: 66, column: 7, scope: !2763)
!2835 = !DILocation(line: 67, column: 14, scope: !2833)
!2836 = !DILocation(line: 67, column: 38, scope: !2833)
!2837 = !DILocation(line: 67, column: 52, scope: !2833)
!2838 = !DILocation(line: 67, column: 61, scope: !2833)
!2839 = !DILocation(line: 67, column: 5, scope: !2833)
!2840 = !DILocation(line: 69, column: 14, scope: !2833)
!2841 = !DILocation(line: 69, column: 33, scope: !2833)
!2842 = !DILocation(line: 69, column: 42, scope: !2833)
!2843 = !DILocation(line: 69, column: 5, scope: !2833)
!2844 = !DILocation(line: 83, column: 12, scope: !2763)
!2845 = !DILocation(line: 83, column: 43, scope: !2763)
!2846 = !DILocation(line: 83, column: 3, scope: !2763)
!2847 = !DILocation(line: 85, column: 3, scope: !2763)
!2848 = !DILocation(line: 88, column: 12, scope: !2763)
!2849 = !DILocation(line: 88, column: 20, scope: !2763)
!2850 = !DILocation(line: 88, column: 3, scope: !2763)
!2851 = !DILocation(line: 95, column: 3, scope: !2763)
!2852 = !DILocation(line: 97, column: 11, scope: !2763)
!2853 = !DILocation(line: 97, column: 3, scope: !2763)
!2854 = !DILocation(line: 102, column: 7, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2763, file: !237, line: 98, column: 5)
!2856 = !DILocation(line: 105, column: 16, scope: !2855)
!2857 = !DILocation(line: 105, column: 24, scope: !2855)
!2858 = !DILocation(line: 105, column: 47, scope: !2855)
!2859 = !DILocation(line: 105, column: 7, scope: !2855)
!2860 = !DILocation(line: 106, column: 7, scope: !2855)
!2861 = !DILocation(line: 109, column: 16, scope: !2855)
!2862 = !DILocation(line: 109, column: 24, scope: !2855)
!2863 = !DILocation(line: 109, column: 54, scope: !2855)
!2864 = !DILocation(line: 109, column: 66, scope: !2855)
!2865 = !DILocation(line: 109, column: 7, scope: !2855)
!2866 = !DILocation(line: 110, column: 7, scope: !2855)
!2867 = !DILocation(line: 113, column: 16, scope: !2855)
!2868 = !DILocation(line: 113, column: 24, scope: !2855)
!2869 = !DILocation(line: 114, column: 16, scope: !2855)
!2870 = !DILocation(line: 114, column: 28, scope: !2855)
!2871 = !DILocation(line: 114, column: 40, scope: !2855)
!2872 = !DILocation(line: 113, column: 7, scope: !2855)
!2873 = !DILocation(line: 115, column: 7, scope: !2855)
!2874 = !DILocation(line: 120, column: 16, scope: !2855)
!2875 = !DILocation(line: 120, column: 24, scope: !2855)
!2876 = !DILocation(line: 121, column: 16, scope: !2855)
!2877 = !DILocation(line: 121, column: 28, scope: !2855)
!2878 = !DILocation(line: 121, column: 40, scope: !2855)
!2879 = !DILocation(line: 121, column: 52, scope: !2855)
!2880 = !DILocation(line: 120, column: 7, scope: !2855)
!2881 = !DILocation(line: 122, column: 7, scope: !2855)
!2882 = !DILocation(line: 127, column: 16, scope: !2855)
!2883 = !DILocation(line: 127, column: 24, scope: !2855)
!2884 = !DILocation(line: 128, column: 16, scope: !2855)
!2885 = !DILocation(line: 128, column: 28, scope: !2855)
!2886 = !DILocation(line: 128, column: 40, scope: !2855)
!2887 = !DILocation(line: 128, column: 52, scope: !2855)
!2888 = !DILocation(line: 128, column: 64, scope: !2855)
!2889 = !DILocation(line: 127, column: 7, scope: !2855)
!2890 = !DILocation(line: 129, column: 7, scope: !2855)
!2891 = !DILocation(line: 134, column: 16, scope: !2855)
!2892 = !DILocation(line: 134, column: 24, scope: !2855)
!2893 = !DILocation(line: 135, column: 16, scope: !2855)
!2894 = !DILocation(line: 135, column: 28, scope: !2855)
!2895 = !DILocation(line: 135, column: 40, scope: !2855)
!2896 = !DILocation(line: 135, column: 52, scope: !2855)
!2897 = !DILocation(line: 135, column: 64, scope: !2855)
!2898 = !DILocation(line: 136, column: 16, scope: !2855)
!2899 = !DILocation(line: 134, column: 7, scope: !2855)
!2900 = !DILocation(line: 137, column: 7, scope: !2855)
!2901 = !DILocation(line: 142, column: 16, scope: !2855)
!2902 = !DILocation(line: 142, column: 24, scope: !2855)
!2903 = !DILocation(line: 143, column: 16, scope: !2855)
!2904 = !DILocation(line: 143, column: 28, scope: !2855)
!2905 = !DILocation(line: 143, column: 40, scope: !2855)
!2906 = !DILocation(line: 143, column: 52, scope: !2855)
!2907 = !DILocation(line: 143, column: 64, scope: !2855)
!2908 = !DILocation(line: 144, column: 16, scope: !2855)
!2909 = !DILocation(line: 144, column: 28, scope: !2855)
!2910 = !DILocation(line: 142, column: 7, scope: !2855)
!2911 = !DILocation(line: 145, column: 7, scope: !2855)
!2912 = !DILocation(line: 150, column: 16, scope: !2855)
!2913 = !DILocation(line: 150, column: 24, scope: !2855)
!2914 = !DILocation(line: 152, column: 17, scope: !2855)
!2915 = !DILocation(line: 152, column: 29, scope: !2855)
!2916 = !DILocation(line: 152, column: 41, scope: !2855)
!2917 = !DILocation(line: 152, column: 53, scope: !2855)
!2918 = !DILocation(line: 152, column: 65, scope: !2855)
!2919 = !DILocation(line: 153, column: 17, scope: !2855)
!2920 = !DILocation(line: 153, column: 29, scope: !2855)
!2921 = !DILocation(line: 153, column: 41, scope: !2855)
!2922 = !DILocation(line: 150, column: 7, scope: !2855)
!2923 = !DILocation(line: 154, column: 7, scope: !2855)
!2924 = !DILocation(line: 159, column: 16, scope: !2855)
!2925 = !DILocation(line: 159, column: 24, scope: !2855)
!2926 = !DILocation(line: 161, column: 16, scope: !2855)
!2927 = !DILocation(line: 161, column: 28, scope: !2855)
!2928 = !DILocation(line: 161, column: 40, scope: !2855)
!2929 = !DILocation(line: 161, column: 52, scope: !2855)
!2930 = !DILocation(line: 161, column: 64, scope: !2855)
!2931 = !DILocation(line: 162, column: 16, scope: !2855)
!2932 = !DILocation(line: 162, column: 28, scope: !2855)
!2933 = !DILocation(line: 162, column: 40, scope: !2855)
!2934 = !DILocation(line: 162, column: 52, scope: !2855)
!2935 = !DILocation(line: 159, column: 7, scope: !2855)
!2936 = !DILocation(line: 163, column: 7, scope: !2855)
!2937 = !DILocation(line: 170, column: 16, scope: !2855)
!2938 = !DILocation(line: 170, column: 24, scope: !2855)
!2939 = !DILocation(line: 172, column: 17, scope: !2855)
!2940 = !DILocation(line: 172, column: 29, scope: !2855)
!2941 = !DILocation(line: 172, column: 41, scope: !2855)
!2942 = !DILocation(line: 172, column: 53, scope: !2855)
!2943 = !DILocation(line: 172, column: 65, scope: !2855)
!2944 = !DILocation(line: 173, column: 17, scope: !2855)
!2945 = !DILocation(line: 173, column: 29, scope: !2855)
!2946 = !DILocation(line: 173, column: 41, scope: !2855)
!2947 = !DILocation(line: 173, column: 53, scope: !2855)
!2948 = !DILocation(line: 170, column: 7, scope: !2855)
!2949 = !DILocation(line: 174, column: 7, scope: !2855)
!2950 = !DILocation(line: 176, column: 1, scope: !2763)
!2951 = distinct !DISubprogram(name: "version_etc_ar", scope: !237, file: !237, line: 183, type: !2952, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !38)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null, !2766, !6, !6, !6, !2819}
!2954 = !DILocalVariable(name: "stream", arg: 1, scope: !2951, file: !237, line: 183, type: !2766)
!2955 = !DILocation(line: 183, column: 23, scope: !2951)
!2956 = !DILocalVariable(name: "command_name", arg: 2, scope: !2951, file: !237, line: 184, type: !6)
!2957 = !DILocation(line: 184, column: 29, scope: !2951)
!2958 = !DILocalVariable(name: "package", arg: 3, scope: !2951, file: !237, line: 184, type: !6)
!2959 = !DILocation(line: 184, column: 55, scope: !2951)
!2960 = !DILocalVariable(name: "version", arg: 4, scope: !2951, file: !237, line: 185, type: !6)
!2961 = !DILocation(line: 185, column: 29, scope: !2951)
!2962 = !DILocalVariable(name: "authors", arg: 5, scope: !2951, file: !237, line: 185, type: !2819)
!2963 = !DILocation(line: 185, column: 59, scope: !2951)
!2964 = !DILocalVariable(name: "n_authors", scope: !2951, file: !237, line: 187, type: !146)
!2965 = !DILocation(line: 187, column: 10, scope: !2951)
!2966 = !DILocation(line: 189, column: 18, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2951, file: !237, line: 189, column: 3)
!2968 = !DILocation(line: 189, column: 8, scope: !2967)
!2969 = !DILocation(line: 189, column: 23, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2967, file: !237, line: 189, column: 3)
!2971 = !DILocation(line: 189, column: 31, scope: !2970)
!2972 = !DILocation(line: 189, column: 3, scope: !2967)
!2973 = !DILocation(line: 189, column: 52, scope: !2970)
!2974 = !DILocation(line: 189, column: 3, scope: !2970)
!2975 = distinct !{!2975, !2972, !2976, !396}
!2976 = !DILocation(line: 190, column: 5, scope: !2967)
!2977 = !DILocation(line: 191, column: 20, scope: !2951)
!2978 = !DILocation(line: 191, column: 28, scope: !2951)
!2979 = !DILocation(line: 191, column: 42, scope: !2951)
!2980 = !DILocation(line: 191, column: 51, scope: !2951)
!2981 = !DILocation(line: 191, column: 60, scope: !2951)
!2982 = !DILocation(line: 191, column: 69, scope: !2951)
!2983 = !DILocation(line: 191, column: 3, scope: !2951)
!2984 = !DILocation(line: 192, column: 1, scope: !2951)
!2985 = distinct !DISubprogram(name: "version_etc_va", scope: !237, file: !237, line: 199, type: !2986, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !38)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{null, !2766, !6, !6, !6, !2988}
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !64, line: 52, baseType: !2989)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !66, line: 32, baseType: !2990)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2991, baseType: !2992)
!2991 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !70, size: 256, elements: !2993)
!2993 = !{!2994, !2995, !2996, !2997, !2998}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2992, file: !2991, line: 192, baseType: !29, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2992, file: !2991, line: 192, baseType: !29, size: 64, offset: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2992, file: !2991, line: 192, baseType: !29, size: 64, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2992, file: !2991, line: 192, baseType: !35, size: 32, offset: 192)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2992, file: !2991, line: 192, baseType: !35, size: 32, offset: 224)
!2999 = !DILocalVariable(name: "stream", arg: 1, scope: !2985, file: !237, line: 199, type: !2766)
!3000 = !DILocation(line: 199, column: 23, scope: !2985)
!3001 = !DILocalVariable(name: "command_name", arg: 2, scope: !2985, file: !237, line: 200, type: !6)
!3002 = !DILocation(line: 200, column: 29, scope: !2985)
!3003 = !DILocalVariable(name: "package", arg: 3, scope: !2985, file: !237, line: 200, type: !6)
!3004 = !DILocation(line: 200, column: 55, scope: !2985)
!3005 = !DILocalVariable(name: "version", arg: 4, scope: !2985, file: !237, line: 201, type: !6)
!3006 = !DILocation(line: 201, column: 29, scope: !2985)
!3007 = !DILocalVariable(name: "authors", arg: 5, scope: !2985, file: !237, line: 201, type: !2988)
!3008 = !DILocation(line: 201, column: 46, scope: !2985)
!3009 = !DILocalVariable(name: "n_authors", scope: !2985, file: !237, line: 203, type: !146)
!3010 = !DILocation(line: 203, column: 10, scope: !2985)
!3011 = !DILocalVariable(name: "authtab", scope: !2985, file: !237, line: 204, type: !3012)
!3012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !153)
!3013 = !DILocation(line: 204, column: 15, scope: !2985)
!3014 = !DILocation(line: 206, column: 18, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2985, file: !237, line: 206, column: 3)
!3016 = !DILocation(line: 206, column: 8, scope: !3015)
!3017 = !DILocation(line: 207, column: 8, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3015, file: !237, line: 206, column: 3)
!3019 = !DILocation(line: 207, column: 18, scope: !3018)
!3020 = !DILocation(line: 208, column: 10, scope: !3018)
!3021 = !DILocation(line: 208, column: 35, scope: !3018)
!3022 = !DILocation(line: 208, column: 22, scope: !3018)
!3023 = !DILocation(line: 208, column: 14, scope: !3018)
!3024 = !DILocation(line: 208, column: 33, scope: !3018)
!3025 = !DILocation(line: 208, column: 67, scope: !3018)
!3026 = !DILocation(line: 0, scope: !3018)
!3027 = !DILocation(line: 206, column: 3, scope: !3015)
!3028 = !DILocation(line: 209, column: 17, scope: !3018)
!3029 = !DILocation(line: 206, column: 3, scope: !3018)
!3030 = distinct !{!3030, !3027, !3031, !396}
!3031 = !DILocation(line: 210, column: 5, scope: !3015)
!3032 = !DILocation(line: 211, column: 20, scope: !2985)
!3033 = !DILocation(line: 211, column: 28, scope: !2985)
!3034 = !DILocation(line: 211, column: 42, scope: !2985)
!3035 = !DILocation(line: 211, column: 51, scope: !2985)
!3036 = !DILocation(line: 212, column: 20, scope: !2985)
!3037 = !DILocation(line: 212, column: 29, scope: !2985)
!3038 = !DILocation(line: 211, column: 3, scope: !2985)
!3039 = !DILocation(line: 213, column: 1, scope: !2985)
!3040 = distinct !DISubprogram(name: "version_etc", scope: !237, file: !237, line: 230, type: !3041, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !38)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{null, !2766, !6, !6, !6, null}
!3043 = !DILocalVariable(name: "stream", arg: 1, scope: !3040, file: !237, line: 230, type: !2766)
!3044 = !DILocation(line: 230, column: 20, scope: !3040)
!3045 = !DILocalVariable(name: "command_name", arg: 2, scope: !3040, file: !237, line: 231, type: !6)
!3046 = !DILocation(line: 231, column: 26, scope: !3040)
!3047 = !DILocalVariable(name: "package", arg: 3, scope: !3040, file: !237, line: 231, type: !6)
!3048 = !DILocation(line: 231, column: 52, scope: !3040)
!3049 = !DILocalVariable(name: "version", arg: 4, scope: !3040, file: !237, line: 232, type: !6)
!3050 = !DILocation(line: 232, column: 26, scope: !3040)
!3051 = !DILocalVariable(name: "authors", scope: !3040, file: !237, line: 234, type: !2988)
!3052 = !DILocation(line: 234, column: 11, scope: !3040)
!3053 = !DILocation(line: 235, column: 3, scope: !3040)
!3054 = !DILocation(line: 236, column: 19, scope: !3040)
!3055 = !DILocation(line: 236, column: 27, scope: !3040)
!3056 = !DILocation(line: 236, column: 41, scope: !3040)
!3057 = !DILocation(line: 236, column: 50, scope: !3040)
!3058 = !DILocation(line: 236, column: 3, scope: !3040)
!3059 = !DILocation(line: 237, column: 3, scope: !3040)
!3060 = !DILocation(line: 238, column: 1, scope: !3040)
!3061 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !237, file: !237, line: 241, type: !84, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !38)
!3062 = !DILocation(line: 243, column: 3, scope: !3061)
!3063 = !DILocation(line: 248, column: 11, scope: !3061)
!3064 = !DILocation(line: 248, column: 3, scope: !3061)
!3065 = !DILocation(line: 254, column: 11, scope: !3061)
!3066 = !DILocation(line: 254, column: 3, scope: !3061)
!3067 = !DILocation(line: 259, column: 11, scope: !3061)
!3068 = !DILocation(line: 259, column: 3, scope: !3061)
!3069 = !DILocation(line: 261, column: 1, scope: !3061)
!3070 = distinct !DISubprogram(name: "xnrealloc", scope: !3071, file: !3071, line: 147, type: !3072, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3071 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!29, !29, !146, !146}
!3074 = !DILocalVariable(name: "p", arg: 1, scope: !3070, file: !3071, line: 147, type: !29)
!3075 = !DILocation(line: 147, column: 18, scope: !3070)
!3076 = !DILocalVariable(name: "n", arg: 2, scope: !3070, file: !3071, line: 147, type: !146)
!3077 = !DILocation(line: 147, column: 28, scope: !3070)
!3078 = !DILocalVariable(name: "s", arg: 3, scope: !3070, file: !3071, line: 147, type: !146)
!3079 = !DILocation(line: 147, column: 38, scope: !3070)
!3080 = !DILocation(line: 149, column: 25, scope: !3070)
!3081 = !DILocation(line: 149, column: 28, scope: !3070)
!3082 = !DILocation(line: 149, column: 31, scope: !3070)
!3083 = !DILocation(line: 149, column: 10, scope: !3070)
!3084 = !DILocation(line: 149, column: 3, scope: !3070)
!3085 = distinct !DISubprogram(name: "xreallocarray", scope: !243, file: !243, line: 83, type: !3072, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3086 = !DILocalVariable(name: "p", arg: 1, scope: !3085, file: !243, line: 83, type: !29)
!3087 = !DILocation(line: 83, column: 22, scope: !3085)
!3088 = !DILocalVariable(name: "n", arg: 2, scope: !3085, file: !243, line: 83, type: !146)
!3089 = !DILocation(line: 83, column: 32, scope: !3085)
!3090 = !DILocalVariable(name: "s", arg: 3, scope: !3085, file: !243, line: 83, type: !146)
!3091 = !DILocation(line: 83, column: 42, scope: !3085)
!3092 = !DILocation(line: 85, column: 39, scope: !3085)
!3093 = !DILocation(line: 85, column: 42, scope: !3085)
!3094 = !DILocation(line: 85, column: 45, scope: !3085)
!3095 = !DILocation(line: 85, column: 25, scope: !3085)
!3096 = !DILocation(line: 85, column: 10, scope: !3085)
!3097 = !DILocation(line: 85, column: 3, scope: !3085)
!3098 = distinct !DISubprogram(name: "check_nonnull", scope: !243, file: !243, line: 37, type: !3099, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!29, !29}
!3101 = !DILocalVariable(name: "p", arg: 1, scope: !3098, file: !243, line: 37, type: !29)
!3102 = !DILocation(line: 37, column: 22, scope: !3098)
!3103 = !DILocation(line: 39, column: 8, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3098, file: !243, line: 39, column: 7)
!3105 = !DILocation(line: 39, column: 7, scope: !3098)
!3106 = !DILocation(line: 40, column: 5, scope: !3104)
!3107 = !DILocation(line: 41, column: 10, scope: !3098)
!3108 = !DILocation(line: 41, column: 3, scope: !3098)
!3109 = distinct !DISubprogram(name: "xmalloc", scope: !243, file: !243, line: 47, type: !3110, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!29, !146}
!3112 = !DILocalVariable(name: "s", arg: 1, scope: !3109, file: !243, line: 47, type: !146)
!3113 = !DILocation(line: 47, column: 17, scope: !3109)
!3114 = !DILocation(line: 49, column: 33, scope: !3109)
!3115 = !DILocation(line: 49, column: 25, scope: !3109)
!3116 = !DILocation(line: 49, column: 10, scope: !3109)
!3117 = !DILocation(line: 49, column: 3, scope: !3109)
!3118 = distinct !DISubprogram(name: "ximalloc", scope: !243, file: !243, line: 53, type: !3119, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!29, !257}
!3121 = !DILocalVariable(name: "s", arg: 1, scope: !3118, file: !243, line: 53, type: !257)
!3122 = !DILocation(line: 53, column: 17, scope: !3118)
!3123 = !DILocation(line: 55, column: 34, scope: !3118)
!3124 = !DILocation(line: 55, column: 25, scope: !3118)
!3125 = !DILocation(line: 55, column: 10, scope: !3118)
!3126 = !DILocation(line: 55, column: 3, scope: !3118)
!3127 = distinct !DISubprogram(name: "xcharalloc", scope: !243, file: !243, line: 59, type: !3128, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!108, !146}
!3130 = !DILocalVariable(name: "n", arg: 1, scope: !3127, file: !243, line: 59, type: !146)
!3131 = !DILocation(line: 59, column: 20, scope: !3127)
!3132 = !DILocation(line: 61, column: 10, scope: !3127)
!3133 = !DILocation(line: 61, column: 3, scope: !3127)
!3134 = distinct !DISubprogram(name: "xrealloc", scope: !243, file: !243, line: 68, type: !3135, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!29, !29, !146}
!3137 = !DILocalVariable(name: "p", arg: 1, scope: !3134, file: !243, line: 68, type: !29)
!3138 = !DILocation(line: 68, column: 17, scope: !3134)
!3139 = !DILocalVariable(name: "s", arg: 2, scope: !3134, file: !243, line: 68, type: !146)
!3140 = !DILocation(line: 68, column: 27, scope: !3134)
!3141 = !DILocation(line: 70, column: 34, scope: !3134)
!3142 = !DILocation(line: 70, column: 37, scope: !3134)
!3143 = !DILocation(line: 70, column: 25, scope: !3134)
!3144 = !DILocation(line: 70, column: 10, scope: !3134)
!3145 = !DILocation(line: 70, column: 3, scope: !3134)
!3146 = distinct !DISubprogram(name: "xirealloc", scope: !243, file: !243, line: 74, type: !3147, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!29, !29, !257}
!3149 = !DILocalVariable(name: "p", arg: 1, scope: !3146, file: !243, line: 74, type: !29)
!3150 = !DILocation(line: 74, column: 18, scope: !3146)
!3151 = !DILocalVariable(name: "s", arg: 2, scope: !3146, file: !243, line: 74, type: !257)
!3152 = !DILocation(line: 74, column: 27, scope: !3146)
!3153 = !DILocation(line: 76, column: 35, scope: !3146)
!3154 = !DILocation(line: 76, column: 38, scope: !3146)
!3155 = !DILocation(line: 76, column: 25, scope: !3146)
!3156 = !DILocation(line: 76, column: 10, scope: !3146)
!3157 = !DILocation(line: 76, column: 3, scope: !3146)
!3158 = distinct !DISubprogram(name: "xireallocarray", scope: !243, file: !243, line: 89, type: !3159, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!29, !29, !257, !257}
!3161 = !DILocalVariable(name: "p", arg: 1, scope: !3158, file: !243, line: 89, type: !29)
!3162 = !DILocation(line: 89, column: 23, scope: !3158)
!3163 = !DILocalVariable(name: "n", arg: 2, scope: !3158, file: !243, line: 89, type: !257)
!3164 = !DILocation(line: 89, column: 32, scope: !3158)
!3165 = !DILocalVariable(name: "s", arg: 3, scope: !3158, file: !243, line: 89, type: !257)
!3166 = !DILocation(line: 89, column: 41, scope: !3158)
!3167 = !DILocation(line: 91, column: 40, scope: !3158)
!3168 = !DILocation(line: 91, column: 43, scope: !3158)
!3169 = !DILocation(line: 91, column: 46, scope: !3158)
!3170 = !DILocation(line: 91, column: 25, scope: !3158)
!3171 = !DILocation(line: 91, column: 10, scope: !3158)
!3172 = !DILocation(line: 91, column: 3, scope: !3158)
!3173 = distinct !DISubprogram(name: "xnmalloc", scope: !243, file: !243, line: 98, type: !3174, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!29, !146, !146}
!3176 = !DILocalVariable(name: "n", arg: 1, scope: !3173, file: !243, line: 98, type: !146)
!3177 = !DILocation(line: 98, column: 18, scope: !3173)
!3178 = !DILocalVariable(name: "s", arg: 2, scope: !3173, file: !243, line: 98, type: !146)
!3179 = !DILocation(line: 98, column: 28, scope: !3173)
!3180 = !DILocation(line: 100, column: 31, scope: !3173)
!3181 = !DILocation(line: 100, column: 34, scope: !3173)
!3182 = !DILocation(line: 100, column: 10, scope: !3173)
!3183 = !DILocation(line: 100, column: 3, scope: !3173)
!3184 = distinct !DISubprogram(name: "xinmalloc", scope: !243, file: !243, line: 104, type: !3185, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!29, !257, !257}
!3187 = !DILocalVariable(name: "n", arg: 1, scope: !3184, file: !243, line: 104, type: !257)
!3188 = !DILocation(line: 104, column: 18, scope: !3184)
!3189 = !DILocalVariable(name: "s", arg: 2, scope: !3184, file: !243, line: 104, type: !257)
!3190 = !DILocation(line: 104, column: 27, scope: !3184)
!3191 = !DILocation(line: 106, column: 32, scope: !3184)
!3192 = !DILocation(line: 106, column: 35, scope: !3184)
!3193 = !DILocation(line: 106, column: 10, scope: !3184)
!3194 = !DILocation(line: 106, column: 3, scope: !3184)
!3195 = distinct !DISubprogram(name: "x2realloc", scope: !243, file: !243, line: 116, type: !3196, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!29, !29, !249}
!3198 = !DILocalVariable(name: "p", arg: 1, scope: !3195, file: !243, line: 116, type: !29)
!3199 = !DILocation(line: 116, column: 18, scope: !3195)
!3200 = !DILocalVariable(name: "ps", arg: 2, scope: !3195, file: !243, line: 116, type: !249)
!3201 = !DILocation(line: 116, column: 29, scope: !3195)
!3202 = !DILocation(line: 118, column: 22, scope: !3195)
!3203 = !DILocation(line: 118, column: 25, scope: !3195)
!3204 = !DILocation(line: 118, column: 10, scope: !3195)
!3205 = !DILocation(line: 118, column: 3, scope: !3195)
!3206 = !DILocalVariable(name: "p", arg: 1, scope: !246, file: !243, line: 176, type: !29)
!3207 = !DILocation(line: 176, column: 19, scope: !246)
!3208 = !DILocalVariable(name: "pn", arg: 2, scope: !246, file: !243, line: 176, type: !249)
!3209 = !DILocation(line: 176, column: 30, scope: !246)
!3210 = !DILocalVariable(name: "s", arg: 3, scope: !246, file: !243, line: 176, type: !146)
!3211 = !DILocation(line: 176, column: 41, scope: !246)
!3212 = !DILocalVariable(name: "n", scope: !246, file: !243, line: 178, type: !146)
!3213 = !DILocation(line: 178, column: 10, scope: !246)
!3214 = !DILocation(line: 178, column: 15, scope: !246)
!3215 = !DILocation(line: 178, column: 14, scope: !246)
!3216 = !DILocation(line: 180, column: 9, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !246, file: !243, line: 180, column: 7)
!3218 = !DILocation(line: 180, column: 7, scope: !246)
!3219 = !DILocation(line: 182, column: 13, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !243, line: 182, column: 11)
!3221 = distinct !DILexicalBlock(scope: !3217, file: !243, line: 181, column: 5)
!3222 = !DILocation(line: 182, column: 11, scope: !3221)
!3223 = !DILocation(line: 190, column: 32, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3220, file: !243, line: 183, column: 9)
!3225 = !DILocation(line: 190, column: 30, scope: !3224)
!3226 = !DILocation(line: 190, column: 13, scope: !3224)
!3227 = !DILocation(line: 191, column: 17, scope: !3224)
!3228 = !DILocation(line: 191, column: 16, scope: !3224)
!3229 = !DILocation(line: 191, column: 13, scope: !3224)
!3230 = !DILocation(line: 192, column: 9, scope: !3224)
!3231 = !DILocation(line: 193, column: 5, scope: !3221)
!3232 = !DILocation(line: 197, column: 11, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !243, line: 197, column: 11)
!3234 = distinct !DILexicalBlock(scope: !3217, file: !243, line: 195, column: 5)
!3235 = !DILocation(line: 197, column: 11, scope: !3234)
!3236 = !DILocation(line: 198, column: 9, scope: !3233)
!3237 = !DILocation(line: 201, column: 22, scope: !246)
!3238 = !DILocation(line: 201, column: 25, scope: !246)
!3239 = !DILocation(line: 201, column: 28, scope: !246)
!3240 = !DILocation(line: 201, column: 7, scope: !246)
!3241 = !DILocation(line: 201, column: 5, scope: !246)
!3242 = !DILocation(line: 202, column: 9, scope: !246)
!3243 = !DILocation(line: 202, column: 4, scope: !246)
!3244 = !DILocation(line: 202, column: 7, scope: !246)
!3245 = !DILocation(line: 203, column: 10, scope: !246)
!3246 = !DILocation(line: 203, column: 3, scope: !246)
!3247 = !DILocalVariable(name: "pa", arg: 1, scope: !253, file: !243, line: 223, type: !29)
!3248 = !DILocation(line: 223, column: 16, scope: !253)
!3249 = !DILocalVariable(name: "pn", arg: 2, scope: !253, file: !243, line: 223, type: !256)
!3250 = !DILocation(line: 223, column: 27, scope: !253)
!3251 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !253, file: !243, line: 223, type: !257)
!3252 = !DILocation(line: 223, column: 37, scope: !253)
!3253 = !DILocalVariable(name: "n_max", arg: 4, scope: !253, file: !243, line: 223, type: !259)
!3254 = !DILocation(line: 223, column: 59, scope: !253)
!3255 = !DILocalVariable(name: "s", arg: 5, scope: !253, file: !243, line: 223, type: !257)
!3256 = !DILocation(line: 223, column: 72, scope: !253)
!3257 = !DILocalVariable(name: "n0", scope: !253, file: !243, line: 230, type: !257)
!3258 = !DILocation(line: 230, column: 9, scope: !253)
!3259 = !DILocation(line: 230, column: 15, scope: !253)
!3260 = !DILocation(line: 230, column: 14, scope: !253)
!3261 = !DILocalVariable(name: "n", scope: !253, file: !243, line: 237, type: !257)
!3262 = !DILocation(line: 237, column: 9, scope: !253)
!3263 = !DILocation(line: 238, column: 7, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !253, file: !243, line: 238, column: 7)
!3265 = !DILocation(line: 238, column: 7, scope: !253)
!3266 = !DILocation(line: 239, column: 7, scope: !3264)
!3267 = !DILocation(line: 239, column: 5, scope: !3264)
!3268 = !DILocation(line: 240, column: 12, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !253, file: !243, line: 240, column: 7)
!3270 = !DILocation(line: 240, column: 9, scope: !3269)
!3271 = !DILocation(line: 240, column: 18, scope: !3269)
!3272 = !DILocation(line: 240, column: 21, scope: !3269)
!3273 = !DILocation(line: 240, column: 29, scope: !3269)
!3274 = !DILocation(line: 240, column: 27, scope: !3269)
!3275 = !DILocation(line: 240, column: 7, scope: !253)
!3276 = !DILocation(line: 241, column: 9, scope: !3269)
!3277 = !DILocation(line: 241, column: 7, scope: !3269)
!3278 = !DILocation(line: 241, column: 5, scope: !3269)
!3279 = !DILocalVariable(name: "nbytes", scope: !253, file: !243, line: 248, type: !257)
!3280 = !DILocation(line: 248, column: 9, scope: !253)
!3281 = !DILocalVariable(name: "adjusted_nbytes", scope: !253, file: !243, line: 252, type: !257)
!3282 = !DILocation(line: 252, column: 9, scope: !253)
!3283 = !DILocation(line: 253, column: 8, scope: !253)
!3284 = !DILocation(line: 255, column: 10, scope: !253)
!3285 = !DILocation(line: 255, column: 17, scope: !253)
!3286 = !DILocation(line: 256, column: 7, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !253, file: !243, line: 256, column: 7)
!3288 = !DILocation(line: 256, column: 7, scope: !253)
!3289 = !DILocation(line: 258, column: 11, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3287, file: !243, line: 257, column: 5)
!3291 = !DILocation(line: 258, column: 29, scope: !3290)
!3292 = !DILocation(line: 258, column: 27, scope: !3290)
!3293 = !DILocation(line: 258, column: 9, scope: !3290)
!3294 = !DILocation(line: 259, column: 16, scope: !3290)
!3295 = !DILocation(line: 259, column: 34, scope: !3290)
!3296 = !DILocation(line: 259, column: 52, scope: !3290)
!3297 = !DILocation(line: 259, column: 50, scope: !3290)
!3298 = !DILocation(line: 259, column: 32, scope: !3290)
!3299 = !DILocation(line: 259, column: 14, scope: !3290)
!3300 = !DILocation(line: 260, column: 5, scope: !3290)
!3301 = !DILocation(line: 262, column: 9, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !253, file: !243, line: 262, column: 7)
!3303 = !DILocation(line: 262, column: 7, scope: !253)
!3304 = !DILocation(line: 263, column: 6, scope: !3302)
!3305 = !DILocation(line: 263, column: 9, scope: !3302)
!3306 = !DILocation(line: 263, column: 5, scope: !3302)
!3307 = !DILocation(line: 264, column: 7, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !253, file: !243, line: 264, column: 7)
!3309 = !DILocation(line: 264, column: 11, scope: !3308)
!3310 = !DILocation(line: 264, column: 9, scope: !3308)
!3311 = !DILocation(line: 264, column: 16, scope: !3308)
!3312 = !DILocation(line: 264, column: 14, scope: !3308)
!3313 = !DILocation(line: 265, column: 7, scope: !3308)
!3314 = !DILocation(line: 265, column: 11, scope: !3308)
!3315 = !DILocation(line: 266, column: 11, scope: !3308)
!3316 = !DILocation(line: 266, column: 20, scope: !3308)
!3317 = !DILocation(line: 266, column: 17, scope: !3308)
!3318 = !DILocation(line: 266, column: 26, scope: !3308)
!3319 = !DILocation(line: 266, column: 29, scope: !3308)
!3320 = !DILocation(line: 266, column: 37, scope: !3308)
!3321 = !DILocation(line: 266, column: 35, scope: !3308)
!3322 = !DILocation(line: 267, column: 11, scope: !3308)
!3323 = !DILocation(line: 267, column: 14, scope: !3308)
!3324 = !DILocation(line: 264, column: 7, scope: !253)
!3325 = !DILocation(line: 268, column: 5, scope: !3308)
!3326 = !DILocation(line: 269, column: 18, scope: !253)
!3327 = !DILocation(line: 269, column: 22, scope: !253)
!3328 = !DILocation(line: 269, column: 8, scope: !253)
!3329 = !DILocation(line: 269, column: 6, scope: !253)
!3330 = !DILocation(line: 270, column: 9, scope: !253)
!3331 = !DILocation(line: 270, column: 4, scope: !253)
!3332 = !DILocation(line: 270, column: 7, scope: !253)
!3333 = !DILocation(line: 271, column: 10, scope: !253)
!3334 = !DILocation(line: 271, column: 3, scope: !253)
!3335 = distinct !DISubprogram(name: "xzalloc", scope: !243, file: !243, line: 279, type: !3110, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3336 = !DILocalVariable(name: "s", arg: 1, scope: !3335, file: !243, line: 279, type: !146)
!3337 = !DILocation(line: 279, column: 17, scope: !3335)
!3338 = !DILocation(line: 281, column: 19, scope: !3335)
!3339 = !DILocation(line: 281, column: 10, scope: !3335)
!3340 = !DILocation(line: 281, column: 3, scope: !3335)
!3341 = distinct !DISubprogram(name: "xcalloc", scope: !243, file: !243, line: 294, type: !3174, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3342 = !DILocalVariable(name: "n", arg: 1, scope: !3341, file: !243, line: 294, type: !146)
!3343 = !DILocation(line: 294, column: 17, scope: !3341)
!3344 = !DILocalVariable(name: "s", arg: 2, scope: !3341, file: !243, line: 294, type: !146)
!3345 = !DILocation(line: 294, column: 27, scope: !3341)
!3346 = !DILocation(line: 296, column: 33, scope: !3341)
!3347 = !DILocation(line: 296, column: 36, scope: !3341)
!3348 = !DILocation(line: 296, column: 25, scope: !3341)
!3349 = !DILocation(line: 296, column: 10, scope: !3341)
!3350 = !DILocation(line: 296, column: 3, scope: !3341)
!3351 = distinct !DISubprogram(name: "xizalloc", scope: !243, file: !243, line: 285, type: !3119, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3352 = !DILocalVariable(name: "s", arg: 1, scope: !3351, file: !243, line: 285, type: !257)
!3353 = !DILocation(line: 285, column: 17, scope: !3351)
!3354 = !DILocation(line: 287, column: 20, scope: !3351)
!3355 = !DILocation(line: 287, column: 10, scope: !3351)
!3356 = !DILocation(line: 287, column: 3, scope: !3351)
!3357 = distinct !DISubprogram(name: "xicalloc", scope: !243, file: !243, line: 300, type: !3185, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3358 = !DILocalVariable(name: "n", arg: 1, scope: !3357, file: !243, line: 300, type: !257)
!3359 = !DILocation(line: 300, column: 17, scope: !3357)
!3360 = !DILocalVariable(name: "s", arg: 2, scope: !3357, file: !243, line: 300, type: !257)
!3361 = !DILocation(line: 300, column: 26, scope: !3357)
!3362 = !DILocation(line: 302, column: 34, scope: !3357)
!3363 = !DILocation(line: 302, column: 37, scope: !3357)
!3364 = !DILocation(line: 302, column: 25, scope: !3357)
!3365 = !DILocation(line: 302, column: 10, scope: !3357)
!3366 = !DILocation(line: 302, column: 3, scope: !3357)
!3367 = distinct !DISubprogram(name: "xmemdup", scope: !243, file: !243, line: 310, type: !3368, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!29, !3370, !146}
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3372 = !DILocalVariable(name: "p", arg: 1, scope: !3367, file: !243, line: 310, type: !3370)
!3373 = !DILocation(line: 310, column: 22, scope: !3367)
!3374 = !DILocalVariable(name: "s", arg: 2, scope: !3367, file: !243, line: 310, type: !146)
!3375 = !DILocation(line: 310, column: 32, scope: !3367)
!3376 = !DILocation(line: 312, column: 27, scope: !3367)
!3377 = !DILocation(line: 312, column: 18, scope: !3367)
!3378 = !DILocation(line: 312, column: 31, scope: !3367)
!3379 = !DILocation(line: 312, column: 34, scope: !3367)
!3380 = !DILocation(line: 312, column: 10, scope: !3367)
!3381 = !DILocation(line: 312, column: 3, scope: !3367)
!3382 = distinct !DISubprogram(name: "ximemdup", scope: !243, file: !243, line: 316, type: !3383, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!29, !3370, !257}
!3385 = !DILocalVariable(name: "p", arg: 1, scope: !3382, file: !243, line: 316, type: !3370)
!3386 = !DILocation(line: 316, column: 23, scope: !3382)
!3387 = !DILocalVariable(name: "s", arg: 2, scope: !3382, file: !243, line: 316, type: !257)
!3388 = !DILocation(line: 316, column: 32, scope: !3382)
!3389 = !DILocation(line: 318, column: 28, scope: !3382)
!3390 = !DILocation(line: 318, column: 18, scope: !3382)
!3391 = !DILocation(line: 318, column: 32, scope: !3382)
!3392 = !DILocation(line: 318, column: 35, scope: !3382)
!3393 = !DILocation(line: 318, column: 10, scope: !3382)
!3394 = !DILocation(line: 318, column: 3, scope: !3382)
!3395 = distinct !DISubprogram(name: "ximemdup0", scope: !243, file: !243, line: 325, type: !3396, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!108, !3370, !257}
!3398 = !DILocalVariable(name: "p", arg: 1, scope: !3395, file: !243, line: 325, type: !3370)
!3399 = !DILocation(line: 325, column: 24, scope: !3395)
!3400 = !DILocalVariable(name: "s", arg: 2, scope: !3395, file: !243, line: 325, type: !257)
!3401 = !DILocation(line: 325, column: 33, scope: !3395)
!3402 = !DILocalVariable(name: "result", scope: !3395, file: !243, line: 327, type: !108)
!3403 = !DILocation(line: 327, column: 9, scope: !3395)
!3404 = !DILocation(line: 327, column: 28, scope: !3395)
!3405 = !DILocation(line: 327, column: 30, scope: !3395)
!3406 = !DILocation(line: 327, column: 18, scope: !3395)
!3407 = !DILocation(line: 328, column: 3, scope: !3395)
!3408 = !DILocation(line: 328, column: 10, scope: !3395)
!3409 = !DILocation(line: 328, column: 13, scope: !3395)
!3410 = !DILocation(line: 329, column: 18, scope: !3395)
!3411 = !DILocation(line: 329, column: 26, scope: !3395)
!3412 = !DILocation(line: 329, column: 29, scope: !3395)
!3413 = !DILocation(line: 329, column: 10, scope: !3395)
!3414 = !DILocation(line: 329, column: 3, scope: !3395)
!3415 = distinct !DISubprogram(name: "xstrdup", scope: !243, file: !243, line: 335, type: !2478, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !38)
!3416 = !DILocalVariable(name: "string", arg: 1, scope: !3415, file: !243, line: 335, type: !6)
!3417 = !DILocation(line: 335, column: 22, scope: !3415)
!3418 = !DILocation(line: 337, column: 19, scope: !3415)
!3419 = !DILocation(line: 337, column: 35, scope: !3415)
!3420 = !DILocation(line: 337, column: 27, scope: !3415)
!3421 = !DILocation(line: 337, column: 43, scope: !3415)
!3422 = !DILocation(line: 337, column: 10, scope: !3415)
!3423 = !DILocation(line: 337, column: 3, scope: !3415)
!3424 = distinct !DISubprogram(name: "xalloc_die", scope: !263, file: !263, line: 32, type: !84, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !38)
!3425 = !DILocalVariable(name: "__errstatus", scope: !3426, file: !263, line: 34, type: !3427)
!3426 = distinct !DILexicalBlock(scope: !3424, file: !263, line: 34, column: 3)
!3427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!3428 = !DILocation(line: 34, column: 3, scope: !3426)
!3429 = !DILocation(line: 40, column: 3, scope: !3424)
!3430 = distinct !DISubprogram(name: "c32isprint", scope: !3431, file: !3431, line: 41, type: !3432, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !38)
!3431 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!35, !3434}
!3434 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3435, line: 20, baseType: !14)
!3435 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3436 = !DILocalVariable(name: "wc", arg: 1, scope: !3430, file: !3431, line: 41, type: !3434)
!3437 = !DILocation(line: 41, column: 14, scope: !3430)
!3438 = !DILocation(line: 66, column: 22, scope: !3430)
!3439 = !DILocation(line: 66, column: 10, scope: !3430)
!3440 = !DILocation(line: 66, column: 3, scope: !3430)
!3441 = distinct !DISubprogram(name: "close_stream", scope: !267, file: !267, line: 55, type: !3442, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !38)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!35, !3444}
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2768, line: 7, baseType: !3446)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2770, line: 49, size: 1728, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3446, file: !2770, line: 51, baseType: !35, size: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3446, file: !2770, line: 54, baseType: !108, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3446, file: !2770, line: 55, baseType: !108, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3446, file: !2770, line: 56, baseType: !108, size: 64, offset: 192)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3446, file: !2770, line: 57, baseType: !108, size: 64, offset: 256)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3446, file: !2770, line: 58, baseType: !108, size: 64, offset: 320)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3446, file: !2770, line: 59, baseType: !108, size: 64, offset: 384)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3446, file: !2770, line: 60, baseType: !108, size: 64, offset: 448)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3446, file: !2770, line: 61, baseType: !108, size: 64, offset: 512)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3446, file: !2770, line: 64, baseType: !108, size: 64, offset: 576)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3446, file: !2770, line: 65, baseType: !108, size: 64, offset: 640)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3446, file: !2770, line: 66, baseType: !108, size: 64, offset: 704)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3446, file: !2770, line: 68, baseType: !2785, size: 64, offset: 768)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3446, file: !2770, line: 70, baseType: !3462, size: 64, offset: 832)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3446, file: !2770, line: 72, baseType: !35, size: 32, offset: 896)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3446, file: !2770, line: 73, baseType: !35, size: 32, offset: 928)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3446, file: !2770, line: 74, baseType: !2792, size: 64, offset: 960)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3446, file: !2770, line: 77, baseType: !36, size: 16, offset: 1024)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3446, file: !2770, line: 78, baseType: !2795, size: 8, offset: 1040)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3446, file: !2770, line: 79, baseType: !2797, size: 8, offset: 1048)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3446, file: !2770, line: 81, baseType: !2801, size: 64, offset: 1088)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3446, file: !2770, line: 89, baseType: !2804, size: 64, offset: 1152)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3446, file: !2770, line: 91, baseType: !2806, size: 64, offset: 1216)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3446, file: !2770, line: 92, baseType: !2809, size: 64, offset: 1280)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3446, file: !2770, line: 93, baseType: !3462, size: 64, offset: 1344)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3446, file: !2770, line: 94, baseType: !29, size: 64, offset: 1408)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3446, file: !2770, line: 95, baseType: !146, size: 64, offset: 1472)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3446, file: !2770, line: 96, baseType: !35, size: 32, offset: 1536)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3446, file: !2770, line: 98, baseType: !2816, size: 160, offset: 1568)
!3478 = !DILocalVariable(name: "stream", arg: 1, scope: !3441, file: !267, line: 55, type: !3444)
!3479 = !DILocation(line: 55, column: 21, scope: !3441)
!3480 = !DILocalVariable(name: "some_pending", scope: !3441, file: !267, line: 57, type: !3481)
!3481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!3482 = !DILocation(line: 57, column: 14, scope: !3441)
!3483 = !DILocation(line: 57, column: 42, scope: !3441)
!3484 = !DILocation(line: 57, column: 30, scope: !3441)
!3485 = !DILocation(line: 57, column: 50, scope: !3441)
!3486 = !DILocalVariable(name: "prev_fail", scope: !3441, file: !267, line: 58, type: !3481)
!3487 = !DILocation(line: 58, column: 14, scope: !3441)
!3488 = !DILocation(line: 58, column: 27, scope: !3441)
!3489 = !DILocation(line: 58, column: 43, scope: !3441)
!3490 = !DILocalVariable(name: "fclose_fail", scope: !3441, file: !267, line: 59, type: !3481)
!3491 = !DILocation(line: 59, column: 14, scope: !3441)
!3492 = !DILocation(line: 59, column: 37, scope: !3441)
!3493 = !DILocation(line: 59, column: 29, scope: !3441)
!3494 = !DILocation(line: 59, column: 45, scope: !3441)
!3495 = !DILocation(line: 69, column: 7, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3441, file: !267, line: 69, column: 7)
!3497 = !DILocation(line: 69, column: 17, scope: !3496)
!3498 = !DILocation(line: 69, column: 21, scope: !3496)
!3499 = !DILocation(line: 69, column: 33, scope: !3496)
!3500 = !DILocation(line: 69, column: 37, scope: !3496)
!3501 = !DILocation(line: 69, column: 50, scope: !3496)
!3502 = !DILocation(line: 69, column: 53, scope: !3496)
!3503 = !DILocation(line: 69, column: 59, scope: !3496)
!3504 = !DILocation(line: 69, column: 7, scope: !3441)
!3505 = !DILocation(line: 71, column: 13, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !267, line: 71, column: 11)
!3507 = distinct !DILexicalBlock(scope: !3496, file: !267, line: 70, column: 5)
!3508 = !DILocation(line: 71, column: 11, scope: !3507)
!3509 = !DILocation(line: 72, column: 9, scope: !3506)
!3510 = !DILocation(line: 72, column: 15, scope: !3506)
!3511 = !DILocation(line: 73, column: 7, scope: !3507)
!3512 = !DILocation(line: 76, column: 3, scope: !3441)
!3513 = !DILocation(line: 77, column: 1, scope: !3441)
!3514 = distinct !DISubprogram(name: "rpl_fclose", scope: !269, file: !269, line: 58, type: !3515, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !38)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!35, !3517}
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2768, line: 7, baseType: !3519)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2770, line: 49, size: 1728, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3519, file: !2770, line: 51, baseType: !35, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3519, file: !2770, line: 54, baseType: !108, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3519, file: !2770, line: 55, baseType: !108, size: 64, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3519, file: !2770, line: 56, baseType: !108, size: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3519, file: !2770, line: 57, baseType: !108, size: 64, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3519, file: !2770, line: 58, baseType: !108, size: 64, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3519, file: !2770, line: 59, baseType: !108, size: 64, offset: 384)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3519, file: !2770, line: 60, baseType: !108, size: 64, offset: 448)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3519, file: !2770, line: 61, baseType: !108, size: 64, offset: 512)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3519, file: !2770, line: 64, baseType: !108, size: 64, offset: 576)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3519, file: !2770, line: 65, baseType: !108, size: 64, offset: 640)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3519, file: !2770, line: 66, baseType: !108, size: 64, offset: 704)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3519, file: !2770, line: 68, baseType: !2785, size: 64, offset: 768)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3519, file: !2770, line: 70, baseType: !3535, size: 64, offset: 832)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3519, file: !2770, line: 72, baseType: !35, size: 32, offset: 896)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3519, file: !2770, line: 73, baseType: !35, size: 32, offset: 928)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3519, file: !2770, line: 74, baseType: !2792, size: 64, offset: 960)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3519, file: !2770, line: 77, baseType: !36, size: 16, offset: 1024)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3519, file: !2770, line: 78, baseType: !2795, size: 8, offset: 1040)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3519, file: !2770, line: 79, baseType: !2797, size: 8, offset: 1048)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3519, file: !2770, line: 81, baseType: !2801, size: 64, offset: 1088)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3519, file: !2770, line: 89, baseType: !2804, size: 64, offset: 1152)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3519, file: !2770, line: 91, baseType: !2806, size: 64, offset: 1216)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3519, file: !2770, line: 92, baseType: !2809, size: 64, offset: 1280)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3519, file: !2770, line: 93, baseType: !3535, size: 64, offset: 1344)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3519, file: !2770, line: 94, baseType: !29, size: 64, offset: 1408)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3519, file: !2770, line: 95, baseType: !146, size: 64, offset: 1472)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3519, file: !2770, line: 96, baseType: !35, size: 32, offset: 1536)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3519, file: !2770, line: 98, baseType: !2816, size: 160, offset: 1568)
!3551 = !DILocalVariable(name: "fp", arg: 1, scope: !3514, file: !269, line: 58, type: !3517)
!3552 = !DILocation(line: 58, column: 19, scope: !3514)
!3553 = !DILocalVariable(name: "saved_errno", scope: !3514, file: !269, line: 60, type: !35)
!3554 = !DILocation(line: 60, column: 7, scope: !3514)
!3555 = !DILocalVariable(name: "fd", scope: !3514, file: !269, line: 63, type: !35)
!3556 = !DILocation(line: 63, column: 7, scope: !3514)
!3557 = !DILocation(line: 63, column: 20, scope: !3514)
!3558 = !DILocation(line: 63, column: 12, scope: !3514)
!3559 = !DILocation(line: 64, column: 7, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3514, file: !269, line: 64, column: 7)
!3561 = !DILocation(line: 64, column: 10, scope: !3560)
!3562 = !DILocation(line: 64, column: 7, scope: !3514)
!3563 = !DILocation(line: 65, column: 28, scope: !3560)
!3564 = !DILocation(line: 65, column: 12, scope: !3560)
!3565 = !DILocation(line: 65, column: 5, scope: !3560)
!3566 = !DILocation(line: 70, column: 9, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3514, file: !269, line: 70, column: 7)
!3568 = !DILocation(line: 70, column: 23, scope: !3567)
!3569 = !DILocation(line: 70, column: 41, scope: !3567)
!3570 = !DILocation(line: 70, column: 33, scope: !3567)
!3571 = !DILocation(line: 70, column: 26, scope: !3567)
!3572 = !DILocation(line: 70, column: 59, scope: !3567)
!3573 = !DILocation(line: 71, column: 7, scope: !3567)
!3574 = !DILocation(line: 71, column: 18, scope: !3567)
!3575 = !DILocation(line: 71, column: 10, scope: !3567)
!3576 = !DILocation(line: 70, column: 7, scope: !3514)
!3577 = !DILocation(line: 72, column: 19, scope: !3567)
!3578 = !DILocation(line: 72, column: 17, scope: !3567)
!3579 = !DILocation(line: 72, column: 5, scope: !3567)
!3580 = !DILocalVariable(name: "result", scope: !3514, file: !269, line: 74, type: !35)
!3581 = !DILocation(line: 74, column: 7, scope: !3514)
!3582 = !DILocation(line: 100, column: 28, scope: !3514)
!3583 = !DILocation(line: 100, column: 12, scope: !3514)
!3584 = !DILocation(line: 100, column: 10, scope: !3514)
!3585 = !DILocation(line: 105, column: 7, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3514, file: !269, line: 105, column: 7)
!3587 = !DILocation(line: 105, column: 19, scope: !3586)
!3588 = !DILocation(line: 105, column: 7, scope: !3514)
!3589 = !DILocation(line: 107, column: 15, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3586, file: !269, line: 106, column: 5)
!3591 = !DILocation(line: 107, column: 7, scope: !3590)
!3592 = !DILocation(line: 107, column: 13, scope: !3590)
!3593 = !DILocation(line: 108, column: 14, scope: !3590)
!3594 = !DILocation(line: 109, column: 5, scope: !3590)
!3595 = !DILocation(line: 111, column: 10, scope: !3514)
!3596 = !DILocation(line: 111, column: 3, scope: !3514)
!3597 = !DILocation(line: 112, column: 1, scope: !3514)
!3598 = distinct !DISubprogram(name: "rpl_fflush", scope: !271, file: !271, line: 130, type: !3599, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !38)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!35, !3601}
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2768, line: 7, baseType: !3603)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2770, line: 49, size: 1728, elements: !3604)
!3604 = !{!3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3603, file: !2770, line: 51, baseType: !35, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3603, file: !2770, line: 54, baseType: !108, size: 64, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3603, file: !2770, line: 55, baseType: !108, size: 64, offset: 128)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3603, file: !2770, line: 56, baseType: !108, size: 64, offset: 192)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3603, file: !2770, line: 57, baseType: !108, size: 64, offset: 256)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3603, file: !2770, line: 58, baseType: !108, size: 64, offset: 320)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3603, file: !2770, line: 59, baseType: !108, size: 64, offset: 384)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3603, file: !2770, line: 60, baseType: !108, size: 64, offset: 448)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3603, file: !2770, line: 61, baseType: !108, size: 64, offset: 512)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3603, file: !2770, line: 64, baseType: !108, size: 64, offset: 576)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3603, file: !2770, line: 65, baseType: !108, size: 64, offset: 640)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3603, file: !2770, line: 66, baseType: !108, size: 64, offset: 704)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3603, file: !2770, line: 68, baseType: !2785, size: 64, offset: 768)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3603, file: !2770, line: 70, baseType: !3619, size: 64, offset: 832)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3603, file: !2770, line: 72, baseType: !35, size: 32, offset: 896)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3603, file: !2770, line: 73, baseType: !35, size: 32, offset: 928)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3603, file: !2770, line: 74, baseType: !2792, size: 64, offset: 960)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3603, file: !2770, line: 77, baseType: !36, size: 16, offset: 1024)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3603, file: !2770, line: 78, baseType: !2795, size: 8, offset: 1040)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3603, file: !2770, line: 79, baseType: !2797, size: 8, offset: 1048)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3603, file: !2770, line: 81, baseType: !2801, size: 64, offset: 1088)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3603, file: !2770, line: 89, baseType: !2804, size: 64, offset: 1152)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3603, file: !2770, line: 91, baseType: !2806, size: 64, offset: 1216)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3603, file: !2770, line: 92, baseType: !2809, size: 64, offset: 1280)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3603, file: !2770, line: 93, baseType: !3619, size: 64, offset: 1344)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3603, file: !2770, line: 94, baseType: !29, size: 64, offset: 1408)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3603, file: !2770, line: 95, baseType: !146, size: 64, offset: 1472)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3603, file: !2770, line: 96, baseType: !35, size: 32, offset: 1536)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3603, file: !2770, line: 98, baseType: !2816, size: 160, offset: 1568)
!3635 = !DILocalVariable(name: "stream", arg: 1, scope: !3598, file: !271, line: 130, type: !3601)
!3636 = !DILocation(line: 130, column: 19, scope: !3598)
!3637 = !DILocation(line: 151, column: 7, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3598, file: !271, line: 151, column: 7)
!3639 = !DILocation(line: 151, column: 14, scope: !3638)
!3640 = !DILocation(line: 151, column: 22, scope: !3638)
!3641 = !DILocation(line: 151, column: 27, scope: !3638)
!3642 = !DILocation(line: 151, column: 7, scope: !3598)
!3643 = !DILocation(line: 152, column: 20, scope: !3638)
!3644 = !DILocation(line: 152, column: 12, scope: !3638)
!3645 = !DILocation(line: 152, column: 5, scope: !3638)
!3646 = !DILocation(line: 157, column: 44, scope: !3598)
!3647 = !DILocation(line: 157, column: 3, scope: !3598)
!3648 = !DILocation(line: 159, column: 18, scope: !3598)
!3649 = !DILocation(line: 159, column: 10, scope: !3598)
!3650 = !DILocation(line: 159, column: 3, scope: !3598)
!3651 = !DILocation(line: 236, column: 1, scope: !3598)
!3652 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !271, file: !271, line: 42, type: !3653, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !270, retainedNodes: !38)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{null, !3601}
!3655 = !DILocalVariable(name: "fp", arg: 1, scope: !3652, file: !271, line: 42, type: !3601)
!3656 = !DILocation(line: 42, column: 48, scope: !3652)
!3657 = !DILocation(line: 44, column: 7, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3652, file: !271, line: 44, column: 7)
!3659 = !DILocation(line: 44, column: 12, scope: !3658)
!3660 = !DILocation(line: 44, column: 19, scope: !3658)
!3661 = !DILocation(line: 44, column: 7, scope: !3652)
!3662 = !DILocation(line: 46, column: 13, scope: !3658)
!3663 = !DILocation(line: 46, column: 5, scope: !3658)
!3664 = !DILocation(line: 47, column: 1, scope: !3652)
!3665 = distinct !DISubprogram(name: "rpl_fseeko", scope: !273, file: !273, line: 28, type: !3666, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !272, retainedNodes: !38)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!35, !3668, !3702, !35}
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2768, line: 7, baseType: !3670)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2770, line: 49, size: 1728, elements: !3671)
!3671 = !{!3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3670, file: !2770, line: 51, baseType: !35, size: 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3670, file: !2770, line: 54, baseType: !108, size: 64, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3670, file: !2770, line: 55, baseType: !108, size: 64, offset: 128)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3670, file: !2770, line: 56, baseType: !108, size: 64, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3670, file: !2770, line: 57, baseType: !108, size: 64, offset: 256)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3670, file: !2770, line: 58, baseType: !108, size: 64, offset: 320)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3670, file: !2770, line: 59, baseType: !108, size: 64, offset: 384)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3670, file: !2770, line: 60, baseType: !108, size: 64, offset: 448)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3670, file: !2770, line: 61, baseType: !108, size: 64, offset: 512)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3670, file: !2770, line: 64, baseType: !108, size: 64, offset: 576)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3670, file: !2770, line: 65, baseType: !108, size: 64, offset: 640)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3670, file: !2770, line: 66, baseType: !108, size: 64, offset: 704)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3670, file: !2770, line: 68, baseType: !2785, size: 64, offset: 768)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3670, file: !2770, line: 70, baseType: !3686, size: 64, offset: 832)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3670, file: !2770, line: 72, baseType: !35, size: 32, offset: 896)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3670, file: !2770, line: 73, baseType: !35, size: 32, offset: 928)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3670, file: !2770, line: 74, baseType: !2792, size: 64, offset: 960)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3670, file: !2770, line: 77, baseType: !36, size: 16, offset: 1024)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3670, file: !2770, line: 78, baseType: !2795, size: 8, offset: 1040)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3670, file: !2770, line: 79, baseType: !2797, size: 8, offset: 1048)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3670, file: !2770, line: 81, baseType: !2801, size: 64, offset: 1088)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3670, file: !2770, line: 89, baseType: !2804, size: 64, offset: 1152)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3670, file: !2770, line: 91, baseType: !2806, size: 64, offset: 1216)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3670, file: !2770, line: 92, baseType: !2809, size: 64, offset: 1280)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3670, file: !2770, line: 93, baseType: !3686, size: 64, offset: 1344)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3670, file: !2770, line: 94, baseType: !29, size: 64, offset: 1408)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3670, file: !2770, line: 95, baseType: !146, size: 64, offset: 1472)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3670, file: !2770, line: 96, baseType: !35, size: 32, offset: 1536)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3670, file: !2770, line: 98, baseType: !2816, size: 160, offset: 1568)
!3702 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !64, line: 63, baseType: !2792)
!3703 = !DILocalVariable(name: "fp", arg: 1, scope: !3665, file: !273, line: 28, type: !3668)
!3704 = !DILocation(line: 28, column: 15, scope: !3665)
!3705 = !DILocalVariable(name: "offset", arg: 2, scope: !3665, file: !273, line: 28, type: !3702)
!3706 = !DILocation(line: 28, column: 25, scope: !3665)
!3707 = !DILocalVariable(name: "whence", arg: 3, scope: !3665, file: !273, line: 28, type: !35)
!3708 = !DILocation(line: 28, column: 37, scope: !3665)
!3709 = !DILocation(line: 55, column: 7, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3665, file: !273, line: 55, column: 7)
!3711 = !DILocation(line: 55, column: 12, scope: !3710)
!3712 = !DILocation(line: 55, column: 28, scope: !3710)
!3713 = !DILocation(line: 55, column: 33, scope: !3710)
!3714 = !DILocation(line: 55, column: 25, scope: !3710)
!3715 = !DILocation(line: 56, column: 7, scope: !3710)
!3716 = !DILocation(line: 56, column: 10, scope: !3710)
!3717 = !DILocation(line: 56, column: 15, scope: !3710)
!3718 = !DILocation(line: 56, column: 32, scope: !3710)
!3719 = !DILocation(line: 56, column: 37, scope: !3710)
!3720 = !DILocation(line: 56, column: 29, scope: !3710)
!3721 = !DILocation(line: 57, column: 7, scope: !3710)
!3722 = !DILocation(line: 57, column: 10, scope: !3710)
!3723 = !DILocation(line: 57, column: 15, scope: !3710)
!3724 = !DILocation(line: 57, column: 29, scope: !3710)
!3725 = !DILocation(line: 55, column: 7, scope: !3665)
!3726 = !DILocalVariable(name: "pos", scope: !3727, file: !273, line: 123, type: !3702)
!3727 = distinct !DILexicalBlock(scope: !3710, file: !273, line: 119, column: 5)
!3728 = !DILocation(line: 123, column: 13, scope: !3727)
!3729 = !DILocation(line: 123, column: 34, scope: !3727)
!3730 = !DILocation(line: 123, column: 26, scope: !3727)
!3731 = !DILocation(line: 123, column: 39, scope: !3727)
!3732 = !DILocation(line: 123, column: 47, scope: !3727)
!3733 = !DILocation(line: 123, column: 19, scope: !3727)
!3734 = !DILocation(line: 124, column: 11, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3727, file: !273, line: 124, column: 11)
!3736 = !DILocation(line: 124, column: 15, scope: !3735)
!3737 = !DILocation(line: 124, column: 11, scope: !3727)
!3738 = !DILocation(line: 130, column: 11, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3735, file: !273, line: 125, column: 9)
!3740 = !DILocation(line: 135, column: 7, scope: !3727)
!3741 = !DILocation(line: 135, column: 12, scope: !3727)
!3742 = !DILocation(line: 135, column: 19, scope: !3727)
!3743 = !DILocation(line: 136, column: 22, scope: !3727)
!3744 = !DILocation(line: 136, column: 7, scope: !3727)
!3745 = !DILocation(line: 136, column: 12, scope: !3727)
!3746 = !DILocation(line: 136, column: 20, scope: !3727)
!3747 = !DILocation(line: 167, column: 7, scope: !3727)
!3748 = !DILocation(line: 169, column: 18, scope: !3665)
!3749 = !DILocation(line: 169, column: 22, scope: !3665)
!3750 = !DILocation(line: 169, column: 30, scope: !3665)
!3751 = !DILocation(line: 169, column: 10, scope: !3665)
!3752 = !DILocation(line: 169, column: 3, scope: !3665)
!3753 = !DILocation(line: 170, column: 1, scope: !3665)
!3754 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !3755, file: !3755, line: 43, type: !3756, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !38)
!3755 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3756 = !DISubroutineType(types: !56)
!3757 = !DILocation(line: 45, column: 3, scope: !3754)
!3758 = !DILocation(line: 45, column: 9, scope: !3754)
!3759 = !DILocation(line: 46, column: 3, scope: !3754)
!3760 = distinct !DISubprogram(name: "imalloc", scope: !3755, file: !3755, line: 55, type: !3119, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !38)
!3761 = !DILocalVariable(name: "s", arg: 1, scope: !3760, file: !3755, line: 55, type: !257)
!3762 = !DILocation(line: 55, column: 16, scope: !3760)
!3763 = !DILocation(line: 57, column: 10, scope: !3760)
!3764 = !DILocation(line: 57, column: 12, scope: !3760)
!3765 = !DILocation(line: 57, column: 34, scope: !3760)
!3766 = !DILocation(line: 57, column: 26, scope: !3760)
!3767 = !DILocation(line: 57, column: 39, scope: !3760)
!3768 = !DILocation(line: 57, column: 3, scope: !3760)
!3769 = distinct !DISubprogram(name: "irealloc", scope: !3755, file: !3755, line: 66, type: !3147, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !38)
!3770 = !DILocalVariable(name: "p", arg: 1, scope: !3769, file: !3755, line: 66, type: !29)
!3771 = !DILocation(line: 66, column: 17, scope: !3769)
!3772 = !DILocalVariable(name: "s", arg: 2, scope: !3769, file: !3755, line: 66, type: !257)
!3773 = !DILocation(line: 66, column: 26, scope: !3769)
!3774 = !DILocation(line: 68, column: 10, scope: !3769)
!3775 = !DILocation(line: 68, column: 12, scope: !3769)
!3776 = !DILocation(line: 68, column: 35, scope: !3769)
!3777 = !DILocation(line: 68, column: 38, scope: !3769)
!3778 = !DILocation(line: 68, column: 26, scope: !3769)
!3779 = !DILocation(line: 68, column: 43, scope: !3769)
!3780 = !DILocation(line: 68, column: 3, scope: !3769)
!3781 = distinct !DISubprogram(name: "icalloc", scope: !3755, file: !3755, line: 77, type: !3185, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !38)
!3782 = !DILocalVariable(name: "n", arg: 1, scope: !3781, file: !3755, line: 77, type: !257)
!3783 = !DILocation(line: 77, column: 16, scope: !3781)
!3784 = !DILocalVariable(name: "s", arg: 2, scope: !3781, file: !3755, line: 77, type: !257)
!3785 = !DILocation(line: 77, column: 25, scope: !3781)
!3786 = !DILocation(line: 79, column: 18, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3781, file: !3755, line: 79, column: 7)
!3788 = !DILocation(line: 79, column: 16, scope: !3787)
!3789 = !DILocation(line: 79, column: 7, scope: !3781)
!3790 = !DILocation(line: 81, column: 11, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !3755, line: 81, column: 11)
!3792 = distinct !DILexicalBlock(scope: !3787, file: !3755, line: 80, column: 5)
!3793 = !DILocation(line: 81, column: 13, scope: !3791)
!3794 = !DILocation(line: 81, column: 11, scope: !3792)
!3795 = !DILocation(line: 82, column: 16, scope: !3791)
!3796 = !DILocation(line: 82, column: 9, scope: !3791)
!3797 = !DILocation(line: 83, column: 9, scope: !3792)
!3798 = !DILocation(line: 84, column: 5, scope: !3792)
!3799 = !DILocation(line: 85, column: 18, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3781, file: !3755, line: 85, column: 7)
!3801 = !DILocation(line: 85, column: 16, scope: !3800)
!3802 = !DILocation(line: 85, column: 7, scope: !3781)
!3803 = !DILocation(line: 87, column: 11, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3805, file: !3755, line: 87, column: 11)
!3805 = distinct !DILexicalBlock(scope: !3800, file: !3755, line: 86, column: 5)
!3806 = !DILocation(line: 87, column: 13, scope: !3804)
!3807 = !DILocation(line: 87, column: 11, scope: !3805)
!3808 = !DILocation(line: 88, column: 16, scope: !3804)
!3809 = !DILocation(line: 88, column: 9, scope: !3804)
!3810 = !DILocation(line: 89, column: 9, scope: !3805)
!3811 = !DILocation(line: 90, column: 5, scope: !3805)
!3812 = !DILocation(line: 91, column: 18, scope: !3781)
!3813 = !DILocation(line: 91, column: 21, scope: !3781)
!3814 = !DILocation(line: 91, column: 10, scope: !3781)
!3815 = !DILocation(line: 91, column: 3, scope: !3781)
!3816 = !DILocation(line: 92, column: 1, scope: !3781)
!3817 = distinct !DISubprogram(name: "ireallocarray", scope: !3755, file: !3755, line: 98, type: !3159, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !38)
!3818 = !DILocalVariable(name: "p", arg: 1, scope: !3817, file: !3755, line: 98, type: !29)
!3819 = !DILocation(line: 98, column: 22, scope: !3817)
!3820 = !DILocalVariable(name: "n", arg: 2, scope: !3817, file: !3755, line: 98, type: !257)
!3821 = !DILocation(line: 98, column: 31, scope: !3817)
!3822 = !DILocalVariable(name: "s", arg: 3, scope: !3817, file: !3755, line: 98, type: !257)
!3823 = !DILocation(line: 98, column: 40, scope: !3817)
!3824 = !DILocation(line: 100, column: 11, scope: !3817)
!3825 = !DILocation(line: 100, column: 13, scope: !3817)
!3826 = !DILocation(line: 100, column: 25, scope: !3817)
!3827 = !DILocation(line: 100, column: 28, scope: !3817)
!3828 = !DILocation(line: 100, column: 30, scope: !3817)
!3829 = !DILocation(line: 101, column: 27, scope: !3817)
!3830 = !DILocation(line: 101, column: 30, scope: !3817)
!3831 = !DILocation(line: 101, column: 33, scope: !3817)
!3832 = !DILocation(line: 101, column: 13, scope: !3817)
!3833 = !DILocation(line: 102, column: 13, scope: !3817)
!3834 = !DILocation(line: 100, column: 3, scope: !3817)
!3835 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !214, file: !214, line: 100, type: !3836, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !38)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!146, !3838, !6, !146, !3839}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!3840 = !DILocalVariable(name: "pwc", arg: 1, scope: !3835, file: !214, line: 100, type: !3838)
!3841 = !DILocation(line: 100, column: 21, scope: !3835)
!3842 = !DILocalVariable(name: "s", arg: 2, scope: !3835, file: !214, line: 100, type: !6)
!3843 = !DILocation(line: 100, column: 38, scope: !3835)
!3844 = !DILocalVariable(name: "n", arg: 3, scope: !3835, file: !214, line: 100, type: !146)
!3845 = !DILocation(line: 100, column: 48, scope: !3835)
!3846 = !DILocalVariable(name: "ps", arg: 4, scope: !3835, file: !214, line: 100, type: !3839)
!3847 = !DILocation(line: 100, column: 62, scope: !3835)
!3848 = !DILocation(line: 105, column: 7, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3835, file: !214, line: 105, column: 7)
!3850 = !DILocation(line: 105, column: 9, scope: !3849)
!3851 = !DILocation(line: 105, column: 7, scope: !3835)
!3852 = !DILocation(line: 107, column: 11, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3849, file: !214, line: 106, column: 5)
!3854 = !DILocation(line: 108, column: 9, scope: !3853)
!3855 = !DILocation(line: 109, column: 9, scope: !3853)
!3856 = !DILocation(line: 110, column: 5, scope: !3853)
!3857 = !DILocation(line: 117, column: 7, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3835, file: !214, line: 117, column: 7)
!3859 = !DILocation(line: 117, column: 10, scope: !3858)
!3860 = !DILocation(line: 117, column: 7, scope: !3835)
!3861 = !DILocation(line: 118, column: 8, scope: !3858)
!3862 = !DILocation(line: 118, column: 5, scope: !3858)
!3863 = !DILocalVariable(name: "ret", scope: !3835, file: !214, line: 130, type: !146)
!3864 = !DILocation(line: 130, column: 10, scope: !3835)
!3865 = !DILocation(line: 130, column: 26, scope: !3835)
!3866 = !DILocation(line: 130, column: 31, scope: !3835)
!3867 = !DILocation(line: 130, column: 34, scope: !3835)
!3868 = !DILocation(line: 130, column: 37, scope: !3835)
!3869 = !DILocation(line: 130, column: 16, scope: !3835)
!3870 = !DILocation(line: 135, column: 7, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3835, file: !214, line: 135, column: 7)
!3872 = !DILocation(line: 135, column: 11, scope: !3871)
!3873 = !DILocation(line: 135, column: 25, scope: !3871)
!3874 = !DILocation(line: 135, column: 39, scope: !3871)
!3875 = !DILocation(line: 135, column: 30, scope: !3871)
!3876 = !DILocation(line: 135, column: 7, scope: !3835)
!3877 = !DILocation(line: 137, column: 14, scope: !3871)
!3878 = !DILocation(line: 137, column: 5, scope: !3871)
!3879 = !DILocation(line: 138, column: 7, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3835, file: !214, line: 138, column: 7)
!3881 = !DILocation(line: 138, column: 11, scope: !3880)
!3882 = !DILocation(line: 138, column: 7, scope: !3835)
!3883 = !DILocation(line: 139, column: 5, scope: !3880)
!3884 = !DILocation(line: 143, column: 22, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3835, file: !214, line: 143, column: 7)
!3886 = !DILocation(line: 143, column: 19, scope: !3885)
!3887 = !DILocation(line: 143, column: 26, scope: !3885)
!3888 = !DILocation(line: 143, column: 29, scope: !3885)
!3889 = !DILocation(line: 143, column: 31, scope: !3885)
!3890 = !DILocation(line: 143, column: 36, scope: !3885)
!3891 = !DILocation(line: 143, column: 41, scope: !3885)
!3892 = !DILocation(line: 143, column: 7, scope: !3835)
!3893 = !DILocation(line: 145, column: 11, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !214, line: 145, column: 11)
!3895 = distinct !DILexicalBlock(scope: !3885, file: !214, line: 144, column: 5)
!3896 = !DILocation(line: 145, column: 15, scope: !3894)
!3897 = !DILocation(line: 145, column: 11, scope: !3895)
!3898 = !DILocation(line: 146, column: 33, scope: !3894)
!3899 = !DILocation(line: 146, column: 32, scope: !3894)
!3900 = !DILocation(line: 146, column: 16, scope: !3894)
!3901 = !DILocation(line: 146, column: 10, scope: !3894)
!3902 = !DILocation(line: 146, column: 14, scope: !3894)
!3903 = !DILocation(line: 146, column: 9, scope: !3894)
!3904 = !DILocation(line: 147, column: 7, scope: !3895)
!3905 = !DILocation(line: 151, column: 10, scope: !3835)
!3906 = !DILocation(line: 151, column: 3, scope: !3835)
!3907 = !DILocation(line: 286, column: 1, scope: !3835)
!3908 = distinct !DISubprogram(name: "mbszero", scope: !3909, file: !3909, line: 1135, type: !3910, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !38)
!3909 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3910 = !DISubroutineType(types: !3911)
!3911 = !{null, !3912}
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !219, line: 6, baseType: !3914)
!3914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !221, line: 21, baseType: !3915)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 13, size: 64, elements: !3916)
!3916 = !{!3917, !3918}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3915, file: !221, line: 15, baseType: !35, size: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3915, file: !221, line: 20, baseType: !3919, size: 32, offset: 32)
!3919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3915, file: !221, line: 16, size: 32, elements: !3920)
!3920 = !{!3921, !3922}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3919, file: !221, line: 18, baseType: !14, size: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3919, file: !221, line: 19, baseType: !230, size: 32)
!3923 = !DILocalVariable(name: "ps", arg: 1, scope: !3908, file: !3909, line: 1135, type: !3912)
!3924 = !DILocation(line: 1135, column: 21, scope: !3908)
!3925 = !DILocation(line: 1137, column: 11, scope: !3908)
!3926 = !DILocation(line: 1137, column: 3, scope: !3908)
!3927 = !DILocation(line: 1138, column: 1, scope: !3908)
!3928 = distinct !DISubprogram(name: "memeq", scope: !2751, file: !2751, line: 974, type: !3929, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !278, retainedNodes: !38)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!51, !3370, !3370, !146}
!3931 = !DILocalVariable(name: "__s1", arg: 1, scope: !3928, file: !2751, line: 974, type: !3370)
!3932 = !DILocation(line: 974, column: 20, scope: !3928)
!3933 = !DILocalVariable(name: "__s2", arg: 2, scope: !3928, file: !2751, line: 974, type: !3370)
!3934 = !DILocation(line: 974, column: 38, scope: !3928)
!3935 = !DILocalVariable(name: "__n", arg: 3, scope: !3928, file: !2751, line: 974, type: !146)
!3936 = !DILocation(line: 974, column: 51, scope: !3928)
!3937 = !DILocation(line: 976, column: 19, scope: !3928)
!3938 = !DILocation(line: 976, column: 25, scope: !3928)
!3939 = !DILocation(line: 976, column: 31, scope: !3928)
!3940 = !DILocation(line: 976, column: 11, scope: !3928)
!3941 = !DILocation(line: 976, column: 10, scope: !3928)
!3942 = !DILocation(line: 976, column: 3, scope: !3928)
!3943 = distinct !DISubprogram(name: "rpl_realloc", scope: !3944, file: !3944, line: 2057, type: !3135, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !38)
!3944 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3945 = !DILocalVariable(name: "ptr", arg: 1, scope: !3943, file: !3944, line: 2057, type: !29)
!3946 = !DILocation(line: 2057, column: 20, scope: !3943)
!3947 = !DILocalVariable(name: "size", arg: 2, scope: !3943, file: !3944, line: 2057, type: !146)
!3948 = !DILocation(line: 2057, column: 32, scope: !3943)
!3949 = !DILocation(line: 2059, column: 19, scope: !3943)
!3950 = !DILocation(line: 2059, column: 24, scope: !3943)
!3951 = !DILocation(line: 2059, column: 31, scope: !3943)
!3952 = !DILocation(line: 2059, column: 10, scope: !3943)
!3953 = !DILocation(line: 2059, column: 3, scope: !3943)
!3954 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !283, file: !283, line: 27, type: !3072, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !282, retainedNodes: !38)
!3955 = !DILocalVariable(name: "ptr", arg: 1, scope: !3954, file: !283, line: 27, type: !29)
!3956 = !DILocation(line: 27, column: 21, scope: !3954)
!3957 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3954, file: !283, line: 27, type: !146)
!3958 = !DILocation(line: 27, column: 33, scope: !3954)
!3959 = !DILocalVariable(name: "size", arg: 3, scope: !3954, file: !283, line: 27, type: !146)
!3960 = !DILocation(line: 27, column: 47, scope: !3954)
!3961 = !DILocalVariable(name: "nbytes", scope: !3954, file: !283, line: 29, type: !146)
!3962 = !DILocation(line: 29, column: 10, scope: !3954)
!3963 = !DILocation(line: 30, column: 7, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3954, file: !283, line: 30, column: 7)
!3965 = !DILocation(line: 30, column: 7, scope: !3954)
!3966 = !DILocation(line: 32, column: 7, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3964, file: !283, line: 31, column: 5)
!3968 = !DILocation(line: 32, column: 13, scope: !3967)
!3969 = !DILocation(line: 33, column: 7, scope: !3967)
!3970 = !DILocation(line: 37, column: 19, scope: !3954)
!3971 = !DILocation(line: 37, column: 24, scope: !3954)
!3972 = !DILocation(line: 37, column: 10, scope: !3954)
!3973 = !DILocation(line: 37, column: 3, scope: !3954)
!3974 = !DILocation(line: 38, column: 1, scope: !3954)
!3975 = distinct !DISubprogram(name: "hard_locale", scope: !286, file: !286, line: 28, type: !3976, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !285, retainedNodes: !38)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!51, !35}
!3978 = !DILocalVariable(name: "category", arg: 1, scope: !3975, file: !286, line: 28, type: !35)
!3979 = !DILocation(line: 28, column: 18, scope: !3975)
!3980 = !DILocalVariable(name: "locale", scope: !3975, file: !286, line: 30, type: !3981)
!3981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3982)
!3982 = !{!3983}
!3983 = !DISubrange(count: 257)
!3984 = !DILocation(line: 30, column: 8, scope: !3975)
!3985 = !DILocation(line: 32, column: 25, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3975, file: !286, line: 32, column: 7)
!3987 = !DILocation(line: 32, column: 35, scope: !3986)
!3988 = !DILocation(line: 32, column: 7, scope: !3986)
!3989 = !DILocation(line: 32, column: 7, scope: !3975)
!3990 = !DILocation(line: 33, column: 5, scope: !3986)
!3991 = !DILocation(line: 35, column: 16, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3975, file: !286, line: 35, column: 7)
!3993 = !DILocation(line: 35, column: 9, scope: !3992)
!3994 = !DILocation(line: 35, column: 29, scope: !3992)
!3995 = !DILocation(line: 35, column: 39, scope: !3992)
!3996 = !DILocation(line: 35, column: 32, scope: !3992)
!3997 = !DILocation(line: 35, column: 7, scope: !3975)
!3998 = !DILocation(line: 36, column: 5, scope: !3992)
!3999 = !DILocation(line: 46, column: 3, scope: !3975)
!4000 = !DILocation(line: 47, column: 1, scope: !3975)
!4001 = distinct !DISubprogram(name: "setlocale_null_r", scope: !288, file: !288, line: 154, type: !4002, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !287, retainedNodes: !38)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!35, !35, !108, !146}
!4004 = !DILocalVariable(name: "category", arg: 1, scope: !4001, file: !288, line: 154, type: !35)
!4005 = !DILocation(line: 154, column: 23, scope: !4001)
!4006 = !DILocalVariable(name: "buf", arg: 2, scope: !4001, file: !288, line: 154, type: !108)
!4007 = !DILocation(line: 154, column: 39, scope: !4001)
!4008 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4001, file: !288, line: 154, type: !146)
!4009 = !DILocation(line: 154, column: 51, scope: !4001)
!4010 = !DILocation(line: 159, column: 37, scope: !4001)
!4011 = !DILocation(line: 159, column: 47, scope: !4001)
!4012 = !DILocation(line: 159, column: 52, scope: !4001)
!4013 = !DILocation(line: 159, column: 10, scope: !4001)
!4014 = !DILocation(line: 159, column: 3, scope: !4001)
!4015 = distinct !DISubprogram(name: "setlocale_null", scope: !288, file: !288, line: 186, type: !4016, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !287, retainedNodes: !38)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!6, !35}
!4018 = !DILocalVariable(name: "category", arg: 1, scope: !4015, file: !288, line: 186, type: !35)
!4019 = !DILocation(line: 186, column: 21, scope: !4015)
!4020 = !DILocation(line: 189, column: 35, scope: !4015)
!4021 = !DILocation(line: 189, column: 10, scope: !4015)
!4022 = !DILocation(line: 189, column: 3, scope: !4015)
!4023 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !290, file: !290, line: 35, type: !4016, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !38)
!4024 = !DILocalVariable(name: "category", arg: 1, scope: !4023, file: !290, line: 35, type: !35)
!4025 = !DILocation(line: 35, column: 30, scope: !4023)
!4026 = !DILocalVariable(name: "result", scope: !4023, file: !290, line: 37, type: !6)
!4027 = !DILocation(line: 37, column: 15, scope: !4023)
!4028 = !DILocation(line: 37, column: 35, scope: !4023)
!4029 = !DILocation(line: 37, column: 24, scope: !4023)
!4030 = !DILocation(line: 62, column: 10, scope: !4023)
!4031 = !DILocation(line: 62, column: 3, scope: !4023)
!4032 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !290, file: !290, line: 66, type: !4002, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !38)
!4033 = !DILocalVariable(name: "category", arg: 1, scope: !4032, file: !290, line: 66, type: !35)
!4034 = !DILocation(line: 66, column: 32, scope: !4032)
!4035 = !DILocalVariable(name: "buf", arg: 2, scope: !4032, file: !290, line: 66, type: !108)
!4036 = !DILocation(line: 66, column: 48, scope: !4032)
!4037 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4032, file: !290, line: 66, type: !146)
!4038 = !DILocation(line: 66, column: 60, scope: !4032)
!4039 = !DILocalVariable(name: "result", scope: !4032, file: !290, line: 111, type: !6)
!4040 = !DILocation(line: 111, column: 15, scope: !4032)
!4041 = !DILocation(line: 111, column: 49, scope: !4032)
!4042 = !DILocation(line: 111, column: 24, scope: !4032)
!4043 = !DILocation(line: 113, column: 7, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4032, file: !290, line: 113, column: 7)
!4045 = !DILocation(line: 113, column: 14, scope: !4044)
!4046 = !DILocation(line: 113, column: 7, scope: !4032)
!4047 = !DILocation(line: 116, column: 11, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4049, file: !290, line: 116, column: 11)
!4049 = distinct !DILexicalBlock(scope: !4044, file: !290, line: 114, column: 5)
!4050 = !DILocation(line: 116, column: 19, scope: !4048)
!4051 = !DILocation(line: 116, column: 11, scope: !4049)
!4052 = !DILocation(line: 120, column: 9, scope: !4048)
!4053 = !DILocation(line: 120, column: 16, scope: !4048)
!4054 = !DILocation(line: 121, column: 7, scope: !4049)
!4055 = !DILocalVariable(name: "length", scope: !4056, file: !290, line: 125, type: !146)
!4056 = distinct !DILexicalBlock(scope: !4044, file: !290, line: 124, column: 5)
!4057 = !DILocation(line: 125, column: 14, scope: !4056)
!4058 = !DILocation(line: 125, column: 31, scope: !4056)
!4059 = !DILocation(line: 125, column: 23, scope: !4056)
!4060 = !DILocation(line: 126, column: 11, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4056, file: !290, line: 126, column: 11)
!4062 = !DILocation(line: 126, column: 20, scope: !4061)
!4063 = !DILocation(line: 126, column: 18, scope: !4061)
!4064 = !DILocation(line: 126, column: 11, scope: !4056)
!4065 = !DILocation(line: 128, column: 19, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4061, file: !290, line: 127, column: 9)
!4067 = !DILocation(line: 128, column: 24, scope: !4066)
!4068 = !DILocation(line: 128, column: 32, scope: !4066)
!4069 = !DILocation(line: 128, column: 39, scope: !4066)
!4070 = !DILocation(line: 128, column: 11, scope: !4066)
!4071 = !DILocation(line: 129, column: 11, scope: !4066)
!4072 = !DILocation(line: 133, column: 15, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4074, file: !290, line: 133, column: 15)
!4074 = distinct !DILexicalBlock(scope: !4061, file: !290, line: 132, column: 9)
!4075 = !DILocation(line: 133, column: 23, scope: !4073)
!4076 = !DILocation(line: 133, column: 15, scope: !4074)
!4077 = !DILocation(line: 138, column: 23, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4073, file: !290, line: 134, column: 13)
!4079 = !DILocation(line: 138, column: 28, scope: !4078)
!4080 = !DILocation(line: 138, column: 36, scope: !4078)
!4081 = !DILocation(line: 138, column: 44, scope: !4078)
!4082 = !DILocation(line: 138, column: 15, scope: !4078)
!4083 = !DILocation(line: 139, column: 15, scope: !4078)
!4084 = !DILocation(line: 139, column: 19, scope: !4078)
!4085 = !DILocation(line: 139, column: 27, scope: !4078)
!4086 = !DILocation(line: 139, column: 32, scope: !4078)
!4087 = !DILocation(line: 140, column: 13, scope: !4078)
!4088 = !DILocation(line: 141, column: 11, scope: !4074)
!4089 = !DILocation(line: 145, column: 1, scope: !4032)
