; ModuleID = 'src/yes.bc'
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
%struct.iovec = type { i8*, i64 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [STRING]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Repeatedly output a line with all specified STRING(s), or 'y'.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
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
@__const.splice_write.pipefd = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@.str.48 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), align 8, !dbg !38
@file_name = internal global i8* null, align 8, !dbg !43
@ignore_EPIPE = internal global i8 0, align 1, !dbg !48
@.str.55 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.56 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.57 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !51
@stderr = external global %struct._IO_FILE*, align 8
@.str.59 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !80
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !57
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !76
@.str.1.65 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.66 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.67 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !78
@.str.4.60 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.61 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.62 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal global i32 0, align 4, !dbg !85
@opterr = external global i32, align 4
@.str.78 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.79, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.80, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !93
@optind = external global i32, align 4
@.str.1.83 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.79 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.80 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !110
@.str.90 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.91 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !116
@.str.94 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.95 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.96 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.97 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.98 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.99 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.100 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.101 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.102 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.103 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.95, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.96, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.97, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.98, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.99, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.100, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.102, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.103, i32 0, i32 0), i8* null], align 8, !dbg !127
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !156
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !174
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !189
@nslots = internal global i32 1, align 4, !dbg !196
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !176
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !198
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !162
@.str.10.104 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.105 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.106 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.107 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !181
@.str.114 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.115 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.116 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.117 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.118 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.119 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.120 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.121 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.122 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.123 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.124 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.125 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.126 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.127 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.128 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.129 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.130 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.135 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.136 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.137 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.138 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.139 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.140 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.141 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !204
@exit_failure = dso_local global i32 1, align 4, !dbg !212
@.str.156 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.154 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.155 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.181 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !218
@rpl_pipe2.have_pipe2_really = internal global i32 0, align 4, !dbg !239
@.str.194 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.195 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !339 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !342, metadata !DIExpression()), !dbg !343
  %3 = load i32, i32* %2, align 4, !dbg !344
  %4 = icmp ne i32 %3, 0, !dbg !346
  br i1 %4, label %5, label %12, !dbg !347

5:                                                ; preds = %1
  br label %6, !dbg !348

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !349
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #19, !dbg !349
  %9 = load i8*, i8** @program_name, align 8, !dbg !349
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !349
  br label %11, !dbg !349

11:                                               ; preds = %6
  br label %22, !dbg !349

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0)) #19, !dbg !351
  %14 = load i8*, i8** @program_name, align 8, !dbg !353
  %15 = load i8*, i8** @program_name, align 8, !dbg !354
  %16 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14, i8* noundef %15), !dbg !355
  %17 = call i8* @gettext(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0)) #19, !dbg !356
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !356
  %19 = call i32 @fputs_unlocked(i8* noundef %17, %struct._IO_FILE* noundef %18), !dbg !356
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0)) #19, !dbg !357
  call void @oputs_(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !357
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0)) #19, !dbg !358
  call void @oputs_(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !358
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !359
  br label %22

22:                                               ; preds = %12, %11
  %23 = load i32, i32* %2, align 4, !dbg !360
  call void @exit(i32 noundef %23) #20, !dbg !361
  unreachable, !dbg !361
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !362, metadata !DIExpression()), !dbg !363
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !364, metadata !DIExpression()), !dbg !365
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !366
  %15 = icmp eq i32 %14, -1, !dbg !368
  br i1 %15, label %16, label %30, !dbg !369

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !370, metadata !DIExpression()), !dbg !372
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #19, !dbg !373
  store i8* %17, i8** %5, align 8, !dbg !372
  %18 = load i8*, i8** %5, align 8, !dbg !374
  %19 = icmp ne i8* %18, null, !dbg !374
  br i1 %19, label %20, label %27, !dbg !375

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !376
  %22 = load i8, i8* %21, align 1, !dbg !377
  %23 = icmp ne i8 %22, 0, !dbg !377
  br i1 %23, label %24, label %27, !dbg !378

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !379
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)), !dbg !380
  br label %27, !dbg !378

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !378
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !381
  br label %30, !dbg !382

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !383
  %32 = icmp ne i32 %31, 0, !dbg !383
  br i1 %32, label %33, label %37, !dbg !385

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !386
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !386
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !386
  br label %274, !dbg !388

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !389, metadata !DIExpression()), !dbg !390
  store i8 1, i8* %6, align 1, !dbg !390
  call void @llvm.dbg.declare(metadata i8** %7, metadata !391, metadata !DIExpression()), !dbg !392
  %38 = load i8*, i8** %4, align 8, !dbg !393
  %39 = load i8*, i8** %4, align 8, !dbg !394
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #21, !dbg !395
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !396
  store i8* %41, i8** %7, align 8, !dbg !392
  call void @llvm.dbg.declare(metadata i8** %8, metadata !397, metadata !DIExpression()), !dbg !398
  %42 = load i8*, i8** %4, align 8, !dbg !399
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #21, !dbg !400
  store i8* %43, i8** %8, align 8, !dbg !398
  %44 = load i8*, i8** %8, align 8, !dbg !401
  %45 = icmp ne i8* %44, null, !dbg !401
  br i1 %45, label %48, label %46, !dbg !403

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !404
  store i8* %47, i8** %8, align 8, !dbg !406
  store i8 0, i8* %6, align 1, !dbg !407
  br label %89, !dbg !408

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !409
  %50 = load i8*, i8** %7, align 8, !dbg !411
  %51 = icmp ne i8* %49, %50, !dbg !412
  br i1 %51, label %52, label %88, !dbg !413

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !414, metadata !DIExpression()), !dbg !416
  %53 = load i8*, i8** %7, align 8, !dbg !417
  store i8* %53, i8** %9, align 8, !dbg !416
  call void @llvm.dbg.declare(metadata i64* %10, metadata !418, metadata !DIExpression()), !dbg !419
  store i64 0, i64* %10, align 8, !dbg !419
  br label %54, !dbg !420

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !421
  %56 = load i8*, i8** %8, align 8, !dbg !422
  %57 = icmp ult i8* %55, %56, !dbg !423
  br i1 %57, label %58, label %61, !dbg !424

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !425
  %60 = icmp ult i64 %59, 2, !dbg !426
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !427
  br i1 %62, label %63, label %82, !dbg !420

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #22, !dbg !428
  %65 = load i16*, i16** %64, align 8, !dbg !428
  %66 = load i8*, i8** %9, align 8, !dbg !428
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !428
  store i8* %67, i8** %9, align 8, !dbg !428
  %68 = load i8, i8* %66, align 1, !dbg !428
  %69 = zext i8 %68 to i32, !dbg !428
  %70 = sext i32 %69 to i64, !dbg !428
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !428
  %72 = load i16, i16* %71, align 2, !dbg !428
  %73 = zext i16 %72 to i32, !dbg !428
  %74 = and i32 %73, 8192, !dbg !428
  %75 = icmp ne i32 %74, 0, !dbg !429
  %76 = xor i1 %75, true, !dbg !429
  %77 = xor i1 %76, true, !dbg !430
  %78 = zext i1 %77 to i32, !dbg !430
  %79 = sext i32 %78 to i64, !dbg !430
  %80 = load i64, i64* %10, align 8, !dbg !431
  %81 = add i64 %80, %79, !dbg !431
  store i64 %81, i64* %10, align 8, !dbg !431
  br label %54, !dbg !420, !llvm.loop !432

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !434
  %84 = icmp eq i64 %83, 2, !dbg !436
  br i1 %84, label %85, label %87, !dbg !437

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !438
  store i8* %86, i8** %8, align 8, !dbg !440
  store i8 0, i8* %6, align 1, !dbg !441
  br label %87, !dbg !442

87:                                               ; preds = %85, %82
  br label %88, !dbg !443

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !444, metadata !DIExpression()), !dbg !445
  %90 = load i8*, i8** %8, align 8, !dbg !446
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #21, !dbg !447
  store i64 %91, i64* %11, align 8, !dbg !445
  call void @llvm.dbg.declare(metadata i8** %12, metadata !448, metadata !DIExpression()), !dbg !449
  %92 = load i8*, i8** %8, align 8, !dbg !450
  %93 = load i64, i64* %11, align 8, !dbg !451
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !452
  store i8* %94, i8** %12, align 8, !dbg !449
  br label %95, !dbg !453

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !454
  %97 = load i8, i8* %96, align 1, !dbg !455
  %98 = zext i8 %97 to i32, !dbg !455
  %99 = icmp ne i32 %98, 0, !dbg !455
  br i1 %99, label %100, label %105, !dbg !456

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !457
  %102 = load i8, i8* %101, align 1, !dbg !458
  %103 = zext i8 %102 to i32, !dbg !458
  %104 = icmp ne i32 %103, 10, !dbg !459
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !460
  br i1 %106, label %107, label %164, !dbg !453

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !461
  %109 = load i8, i8* %108, align 1, !dbg !464
  %110 = zext i8 %109 to i32, !dbg !464
  %111 = icmp eq i32 %110, 45, !dbg !465
  br i1 %111, label %112, label %119, !dbg !466

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !467
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !468
  %115 = load i8, i8* %114, align 1, !dbg !469
  %116 = zext i8 %115 to i32, !dbg !469
  %117 = icmp eq i32 %116, 45, !dbg !470
  br i1 %117, label %118, label %119, !dbg !471

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !472
  br label %119, !dbg !473

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #22, !dbg !474
  %121 = load i16*, i16** %120, align 8, !dbg !474
  %122 = load i8*, i8** %12, align 8, !dbg !474
  %123 = load i8, i8* %122, align 1, !dbg !474
  %124 = zext i8 %123 to i32, !dbg !474
  %125 = sext i32 %124 to i64, !dbg !474
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !474
  %127 = load i16, i16* %126, align 2, !dbg !474
  %128 = zext i16 %127 to i32, !dbg !474
  %129 = and i32 %128, 8192, !dbg !474
  %130 = icmp ne i32 %129, 0, !dbg !474
  br i1 %130, label %131, label %161, !dbg !476

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !477
  %133 = load i8, i8* %132, align 1, !dbg !480
  %134 = zext i8 %133 to i32, !dbg !480
  %135 = icmp eq i32 %134, 9, !dbg !481
  br i1 %135, label %149, label %136, !dbg !482

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #22, !dbg !483
  %138 = load i16*, i16** %137, align 8, !dbg !483
  %139 = load i8*, i8** %12, align 8, !dbg !483
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !483
  %141 = load i8, i8* %140, align 1, !dbg !483
  %142 = zext i8 %141 to i32, !dbg !483
  %143 = sext i32 %142 to i64, !dbg !483
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !483
  %145 = load i16, i16* %144, align 2, !dbg !483
  %146 = zext i16 %145 to i32, !dbg !483
  %147 = and i32 %146, 8192, !dbg !483
  %148 = icmp ne i32 %147, 0, !dbg !483
  br i1 %148, label %149, label %150, !dbg !484

149:                                              ; preds = %136, %131
  br label %164, !dbg !485

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !486
  %152 = trunc i8 %151 to i1, !dbg !486
  br i1 %152, label %160, label %153, !dbg !488

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !489
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !490
  %156 = load i8, i8* %155, align 1, !dbg !491
  %157 = zext i8 %156 to i32, !dbg !491
  %158 = icmp ne i32 %157, 45, !dbg !492
  br i1 %158, label %159, label %160, !dbg !493

159:                                              ; preds = %153
  br label %164, !dbg !494

160:                                              ; preds = %153, %150
  br label %161, !dbg !495

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !496
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !496
  store i8* %163, i8** %12, align 8, !dbg !496
  br label %95, !dbg !453, !llvm.loop !497

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !499
  %166 = load i8*, i8** %7, align 8, !dbg !499
  %167 = load i8*, i8** %4, align 8, !dbg !499
  %168 = ptrtoint i8* %166 to i64, !dbg !499
  %169 = ptrtoint i8* %167 to i64, !dbg !499
  %170 = sub i64 %168, %169, !dbg !499
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !499
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !499
  call void @llvm.dbg.declare(metadata i8** %13, metadata !500, metadata !DIExpression()), !dbg !501
  %173 = load i8*, i8** %3, align 8, !dbg !502
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)), !dbg !503
  br i1 %174, label %175, label %176, !dbg !503

175:                                              ; preds = %164
  br label %232, !dbg !503

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !504
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)), !dbg !505
  br i1 %178, label %179, label %180, !dbg !505

179:                                              ; preds = %176
  br label %230, !dbg !505

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !506
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)), !dbg !507
  br i1 %182, label %183, label %184, !dbg !507

183:                                              ; preds = %180
  br label %228, !dbg !507

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !508
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)), !dbg !509
  br i1 %186, label %187, label %188, !dbg !509

187:                                              ; preds = %184
  br label %226, !dbg !509

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !510
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0)), !dbg !511
  br i1 %190, label %191, label %192, !dbg !511

191:                                              ; preds = %188
  br label %224, !dbg !511

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !512
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0)), !dbg !513
  br i1 %194, label %195, label %196, !dbg !513

195:                                              ; preds = %192
  br label %222, !dbg !513

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !514
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)), !dbg !515
  br i1 %198, label %199, label %200, !dbg !515

199:                                              ; preds = %196
  br label %220, !dbg !515

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !516
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0)), !dbg !517
  br i1 %202, label %203, label %204, !dbg !517

203:                                              ; preds = %200
  br label %218, !dbg !517

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !518
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)), !dbg !519
  br i1 %206, label %207, label %208, !dbg !519

207:                                              ; preds = %204
  br label %216, !dbg !519

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !520
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)), !dbg !521
  br i1 %210, label %211, label %212, !dbg !521

211:                                              ; preds = %208
  br label %214, !dbg !521

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !522
  br label %214, !dbg !521

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !521
  br label %216, !dbg !519

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !519
  br label %218, !dbg !517

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !517
  br label %220, !dbg !515

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !515
  br label %222, !dbg !513

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !513
  br label %224, !dbg !511

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !511
  br label %226, !dbg !509

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !509
  br label %228, !dbg !507

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !507
  br label %230, !dbg !505

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !505
  br label %232, !dbg !503

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !503
  store i8* %233, i8** %13, align 8, !dbg !501
  %234 = load i8*, i8** %8, align 8, !dbg !523
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i64 noundef 6) #21, !dbg !523
  %236 = icmp eq i32 %235, 0, !dbg !523
  br i1 %236, label %241, label %237, !dbg !525

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !526
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i64 noundef 9) #21, !dbg !526
  %240 = icmp eq i32 %239, 0, !dbg !526
  br i1 %240, label %241, label %248, !dbg !527

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !528
  %243 = load i8*, i8** %13, align 8, !dbg !530
  %244 = load i64, i64* %11, align 8, !dbg !531
  %245 = trunc i64 %244 to i32, !dbg !532
  %246 = load i8*, i8** %8, align 8, !dbg !533
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !534
  br label %254, !dbg !535

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !536
  %250 = load i64, i64* %11, align 8, !dbg !538
  %251 = trunc i64 %250 to i32, !dbg !539
  %252 = load i8*, i8** %8, align 8, !dbg !540
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !541
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !542
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !542
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !543
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !543
  %259 = load i8*, i8** %7, align 8, !dbg !544
  %260 = load i8*, i8** %12, align 8, !dbg !544
  %261 = load i8*, i8** %7, align 8, !dbg !544
  %262 = ptrtoint i8* %260 to i64, !dbg !544
  %263 = ptrtoint i8* %261 to i64, !dbg !544
  %264 = sub i64 %262, %263, !dbg !544
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !544
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !544
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !545
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !545
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !546
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !546
  %271 = load i8*, i8** %12, align 8, !dbg !547
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !547
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !547
  br label %274, !dbg !548

274:                                              ; preds = %254, %33
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !549 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !554, metadata !DIExpression()), !dbg !563
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !563
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !563
  call void @llvm.dbg.declare(metadata i8** %4, metadata !564, metadata !DIExpression()), !dbg !565
  %9 = load i8*, i8** %2, align 8, !dbg !566
  store i8* %9, i8** %4, align 8, !dbg !565
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !567, metadata !DIExpression()), !dbg !569
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !570
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !569
  br label %11, !dbg !571

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !572
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !573
  %14 = load i8*, i8** %13, align 8, !dbg !573
  %15 = icmp ne i8* %14, null, !dbg !572
  br i1 %15, label %16, label %23, !dbg !574

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !575
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !576
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !577
  %20 = load i8*, i8** %19, align 8, !dbg !577
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !578
  %22 = xor i1 %21, true, !dbg !579
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !580
  br i1 %24, label %25, label %28, !dbg !571

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !581
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !581
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !581
  br label %11, !dbg !571, !llvm.loop !582

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !583
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !585
  %31 = load i8*, i8** %30, align 8, !dbg !585
  %32 = icmp ne i8* %31, null, !dbg !583
  br i1 %32, label %33, label %37, !dbg !586

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !587
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !588
  %36 = load i8*, i8** %35, align 8, !dbg !588
  store i8* %36, i8** %4, align 8, !dbg !589
  br label %37, !dbg !590

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !591
  call void @llvm.dbg.declare(metadata i8** %6, metadata !592, metadata !DIExpression()), !dbg !593
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #19, !dbg !594
  store i8* %38, i8** %6, align 8, !dbg !593
  %39 = load i8*, i8** %6, align 8, !dbg !595
  %40 = icmp ne i8* %39, null, !dbg !595
  br i1 %40, label %41, label %49, !dbg !597

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !598
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i64 noundef 3) #21, !dbg !598
  %44 = icmp ne i32 %43, 0, !dbg !598
  br i1 %44, label %45, label %49, !dbg !599

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.44, i64 0, i64 0)) #19, !dbg !600
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !600
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !600
  br label %49, !dbg !602

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !603, metadata !DIExpression()), !dbg !604
  %50 = load i8*, i8** %2, align 8, !dbg !605
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)), !dbg !606
  br i1 %51, label %52, label %53, !dbg !606

52:                                               ; preds = %49
  br label %55, !dbg !606

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !607
  br label %55, !dbg !606

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !606
  store i8* %56, i8** %7, align 8, !dbg !604
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0)) #19, !dbg !608
  %58 = load i8*, i8** %7, align 8, !dbg !609
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef %58), !dbg !610
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0)) #19, !dbg !611
  %61 = load i8*, i8** %4, align 8, !dbg !612
  %62 = load i8*, i8** %4, align 8, !dbg !613
  %63 = load i8*, i8** %2, align 8, !dbg !614
  %64 = icmp eq i8* %62, %63, !dbg !615
  %65 = zext i1 %64 to i64, !dbg !613
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !613
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !616
  ret void, !dbg !617
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !618 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !622, metadata !DIExpression()), !dbg !623
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !624, metadata !DIExpression()), !dbg !625
  %16 = load i8**, i8*** %5, align 8, !dbg !626
  %17 = getelementptr inbounds i8*, i8** %16, i64 0, !dbg !626
  %18 = load i8*, i8** %17, align 8, !dbg !626
  call void @set_program_name(i8* noundef %18), !dbg !627
  %19 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #19, !dbg !628
  %20 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #19, !dbg !629
  %21 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #19, !dbg !630
  %22 = call i32 @atexit(void ()* noundef @close_stdout) #19, !dbg !631
  %23 = load i32, i32* %4, align 4, !dbg !632
  %24 = load i8**, i8*** %5, align 8, !dbg !633
  %25 = load i8*, i8** @Version, align 8, !dbg !634
  %26 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)), !dbg !635
  call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %23, i8** noundef %24, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %25, i1 noundef true, void (i32)* noundef @usage, i8* noundef %26, i8* noundef null), !dbg !636
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !637, metadata !DIExpression()), !dbg !638
  %27 = load i8**, i8*** %5, align 8, !dbg !639
  %28 = load i32, i32* @optind, align 4, !dbg !640
  %29 = sext i32 %28 to i64, !dbg !641
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29, !dbg !641
  store i8** %30, i8*** %6, align 8, !dbg !638
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !642, metadata !DIExpression()), !dbg !643
  %31 = load i8**, i8*** %5, align 8, !dbg !644
  %32 = load i32, i32* %4, align 4, !dbg !645
  %33 = sext i32 %32 to i64, !dbg !646
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33, !dbg !646
  store i8** %34, i8*** %7, align 8, !dbg !643
  %35 = load i32, i32* @optind, align 4, !dbg !647
  %36 = load i32, i32* %4, align 4, !dbg !649
  %37 = icmp eq i32 %35, %36, !dbg !650
  br i1 %37, label %38, label %42, !dbg !651

38:                                               ; preds = %2
  %39 = call i8* @bad_cast(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)), !dbg !652
  %40 = load i8**, i8*** %7, align 8, !dbg !653
  %41 = getelementptr inbounds i8*, i8** %40, i32 1, !dbg !653
  store i8** %41, i8*** %7, align 8, !dbg !653
  store i8* %39, i8** %40, align 8, !dbg !654
  br label %42, !dbg !655

42:                                               ; preds = %38, %2
  call void @llvm.dbg.declare(metadata i64* %8, metadata !656, metadata !DIExpression()), !dbg !657
  store i64 0, i64* %8, align 8, !dbg !657
  call void @llvm.dbg.declare(metadata i8* %9, metadata !658, metadata !DIExpression()), !dbg !659
  store i8 1, i8* %9, align 1, !dbg !659
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !660, metadata !DIExpression()), !dbg !661
  %43 = load i8**, i8*** %6, align 8, !dbg !662
  store i8** %43, i8*** %10, align 8, !dbg !661
  br label %44, !dbg !663

44:                                               ; preds = %68, %42
  call void @llvm.dbg.declare(metadata i64* %11, metadata !664, metadata !DIExpression()), !dbg !666
  %45 = load i8**, i8*** %10, align 8, !dbg !667
  %46 = load i8*, i8** %45, align 8, !dbg !668
  %47 = call i64 @strlen(i8* noundef %46) #21, !dbg !669
  store i64 %47, i64* %11, align 8, !dbg !666
  %48 = load i64, i64* %11, align 8, !dbg !670
  %49 = add i64 %48, 1, !dbg !671
  %50 = load i64, i64* %8, align 8, !dbg !672
  %51 = add i64 %50, %49, !dbg !672
  store i64 %51, i64* %8, align 8, !dbg !672
  %52 = load i8**, i8*** %10, align 8, !dbg !673
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !675
  %54 = load i8**, i8*** %7, align 8, !dbg !676
  %55 = icmp ult i8** %53, %54, !dbg !677
  br i1 %55, label %56, label %67, !dbg !678

56:                                               ; preds = %44
  %57 = load i8**, i8*** %10, align 8, !dbg !679
  %58 = load i8*, i8** %57, align 8, !dbg !680
  %59 = load i64, i64* %11, align 8, !dbg !681
  %60 = getelementptr inbounds i8, i8* %58, i64 %59, !dbg !682
  %61 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !683
  %62 = load i8**, i8*** %10, align 8, !dbg !684
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !684
  %64 = load i8*, i8** %63, align 8, !dbg !684
  %65 = icmp ne i8* %61, %64, !dbg !685
  br i1 %65, label %66, label %67, !dbg !686

66:                                               ; preds = %56
  store i8 0, i8* %9, align 1, !dbg !687
  br label %67, !dbg !688

67:                                               ; preds = %66, %56, %44
  br label %68, !dbg !689

68:                                               ; preds = %67
  %69 = load i8**, i8*** %10, align 8, !dbg !690
  %70 = getelementptr inbounds i8*, i8** %69, i32 1, !dbg !690
  store i8** %70, i8*** %10, align 8, !dbg !690
  %71 = load i8**, i8*** %7, align 8, !dbg !691
  %72 = icmp ult i8** %70, %71, !dbg !692
  br i1 %72, label %44, label %73, !dbg !689, !llvm.loop !693

73:                                               ; preds = %68
  %74 = load i64, i64* %8, align 8, !dbg !695
  %75 = icmp ule i64 %74, 4096, !dbg !697
  br i1 %75, label %76, label %77, !dbg !698

76:                                               ; preds = %73
  store i64 8192, i64* %8, align 8, !dbg !699
  store i8 0, i8* %9, align 1, !dbg !701
  br label %77, !dbg !702

77:                                               ; preds = %76, %73
  call void @llvm.dbg.declare(metadata i8** %12, metadata !703, metadata !DIExpression()), !dbg !704
  %78 = load i8, i8* %9, align 1, !dbg !705
  %79 = trunc i8 %78 to i1, !dbg !705
  br i1 %79, label %80, label %83, !dbg !705

80:                                               ; preds = %77
  %81 = load i8**, i8*** %6, align 8, !dbg !706
  %82 = load i8*, i8** %81, align 8, !dbg !707
  br label %86, !dbg !705

83:                                               ; preds = %77
  %84 = load i64, i64* %8, align 8, !dbg !708
  %85 = call noalias nonnull i8* @xmalloc(i64 noundef %84) #23, !dbg !709
  br label %86, !dbg !705

86:                                               ; preds = %83, %80
  %87 = phi i8* [ %82, %80 ], [ %85, %83 ], !dbg !705
  store i8* %87, i8** %12, align 8, !dbg !704
  call void @llvm.dbg.declare(metadata i64* %13, metadata !710, metadata !DIExpression()), !dbg !711
  store i64 0, i64* %13, align 8, !dbg !711
  %88 = load i8**, i8*** %6, align 8, !dbg !712
  store i8** %88, i8*** %10, align 8, !dbg !713
  br label %89, !dbg !714

89:                                               ; preds = %110, %86
  call void @llvm.dbg.declare(metadata i64* %14, metadata !715, metadata !DIExpression()), !dbg !717
  %90 = load i8**, i8*** %10, align 8, !dbg !718
  %91 = load i8*, i8** %90, align 8, !dbg !719
  %92 = call i64 @strlen(i8* noundef %91) #21, !dbg !720
  store i64 %92, i64* %14, align 8, !dbg !717
  %93 = load i8, i8* %9, align 1, !dbg !721
  %94 = trunc i8 %93 to i1, !dbg !721
  br i1 %94, label %102, label %95, !dbg !723

95:                                               ; preds = %89
  %96 = load i8*, i8** %12, align 8, !dbg !724
  %97 = load i64, i64* %13, align 8, !dbg !725
  %98 = getelementptr inbounds i8, i8* %96, i64 %97, !dbg !726
  %99 = load i8**, i8*** %10, align 8, !dbg !727
  %100 = load i8*, i8** %99, align 8, !dbg !728
  %101 = load i64, i64* %14, align 8, !dbg !729
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %98, i8* align 1 %100, i64 %101, i1 false), !dbg !730
  br label %102, !dbg !730

102:                                              ; preds = %95, %89
  %103 = load i64, i64* %14, align 8, !dbg !731
  %104 = load i64, i64* %13, align 8, !dbg !732
  %105 = add i64 %104, %103, !dbg !732
  store i64 %105, i64* %13, align 8, !dbg !732
  %106 = load i8*, i8** %12, align 8, !dbg !733
  %107 = load i64, i64* %13, align 8, !dbg !734
  %108 = add i64 %107, 1, !dbg !734
  store i64 %108, i64* %13, align 8, !dbg !734
  %109 = getelementptr inbounds i8, i8* %106, i64 %107, !dbg !733
  store i8 32, i8* %109, align 1, !dbg !735
  br label %110, !dbg !736

110:                                              ; preds = %102
  %111 = load i8**, i8*** %10, align 8, !dbg !737
  %112 = getelementptr inbounds i8*, i8** %111, i32 1, !dbg !737
  store i8** %112, i8*** %10, align 8, !dbg !737
  %113 = load i8**, i8*** %7, align 8, !dbg !738
  %114 = icmp ult i8** %112, %113, !dbg !739
  br i1 %114, label %89, label %115, !dbg !736, !llvm.loop !740

115:                                              ; preds = %110
  %116 = load i8*, i8** %12, align 8, !dbg !742
  %117 = load i64, i64* %13, align 8, !dbg !743
  %118 = sub i64 %117, 1, !dbg !744
  %119 = getelementptr inbounds i8, i8* %116, i64 %118, !dbg !742
  store i8 10, i8* %119, align 1, !dbg !745
  call void @llvm.dbg.declare(metadata i64* %15, metadata !746, metadata !DIExpression()), !dbg !747
  %120 = load i64, i64* %13, align 8, !dbg !748
  store i64 %120, i64* %15, align 8, !dbg !747
  %121 = load i8*, i8** %12, align 8, !dbg !749
  %122 = load i64, i64* %15, align 8, !dbg !751
  %123 = call i64 @full_write(i32 noundef 1, i8* noundef %121, i64 noundef %122), !dbg !752
  %124 = load i64, i64* %15, align 8, !dbg !753
  %125 = icmp eq i64 %123, %124, !dbg !754
  br i1 %125, label %126, label %155, !dbg !755

126:                                              ; preds = %115
  %127 = load i8*, i8** %12, align 8, !dbg !756
  %128 = load i64, i64* %15, align 8, !dbg !757
  %129 = call i1 @splice_write(i8* noundef %127, i64 noundef %128), !dbg !758
  %130 = zext i1 %129 to i32, !dbg !758
  %131 = icmp eq i32 %130, 0, !dbg !759
  br i1 %131, label %132, label %155, !dbg !760

132:                                              ; preds = %126
  %133 = load i64, i64* %8, align 8, !dbg !761
  %134 = load i64, i64* %15, align 8, !dbg !763
  %135 = udiv i64 %133, %134, !dbg !764
  %136 = load i64, i64* %15, align 8, !dbg !765
  %137 = mul i64 %135, %136, !dbg !766
  store i64 %137, i64* %13, align 8, !dbg !767
  %138 = load i64, i64* %13, align 8, !dbg !768
  %139 = load i64, i64* %15, align 8, !dbg !770
  %140 = icmp ugt i64 %138, %139, !dbg !771
  br i1 %140, label %141, label %146, !dbg !772

141:                                              ; preds = %132
  %142 = load i8*, i8** %12, align 8, !dbg !773
  %143 = load i8*, i8** %12, align 8, !dbg !774
  %144 = load i64, i64* %15, align 8, !dbg !775
  %145 = load i64, i64* %13, align 8, !dbg !776
  call void @repeat_pattern(i8* noundef %142, i8* noundef %143, i64 noundef %144, i64 noundef %145), !dbg !777
  br label %146, !dbg !777

146:                                              ; preds = %141, %132
  br label %147, !dbg !778

147:                                              ; preds = %153, %146
  %148 = load i8*, i8** %12, align 8, !dbg !779
  %149 = load i64, i64* %13, align 8, !dbg !780
  %150 = call i64 @full_write(i32 noundef 1, i8* noundef %148, i64 noundef %149), !dbg !781
  %151 = load i64, i64* %13, align 8, !dbg !782
  %152 = icmp eq i64 %150, %151, !dbg !783
  br i1 %152, label %153, label %154, !dbg !778

153:                                              ; preds = %147
  br label %147, !dbg !784, !llvm.loop !785

154:                                              ; preds = %147
  br label %155, !dbg !786

155:                                              ; preds = %154, %126, %115
  %156 = call i32* @__errno_location() #22, !dbg !787
  %157 = load i32, i32* %156, align 4, !dbg !787
  %158 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #19, !dbg !787
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %157, i8* noundef %158), !dbg !787
  ret i32 1, !dbg !788
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bad_cast(i8* noundef %0) #4 !dbg !789 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !792, metadata !DIExpression()), !dbg !793
  %3 = load i8*, i8** %2, align 8, !dbg !794
  ret i8* %3, !dbg !795
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @splice_write(i8* noundef %0, i64 noundef %1) #4 !dbg !796 {
  %3 = alloca i1, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca [2 x i32], align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iovec, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !799, metadata !DIExpression()), !dbg !800
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !801, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.declare(metadata i8* %6, metadata !803, metadata !DIExpression()), !dbg !804
  store i8 0, i8* %6, align 1, !dbg !804
  call void @llvm.dbg.declare(metadata i64* %7, metadata !805, metadata !DIExpression()), !dbg !806
  %19 = call i32 @getpagesize() #22, !dbg !807
  %20 = sext i32 %19 to i64, !dbg !807
  store i64 %20, i64* %7, align 8, !dbg !806
  call void @llvm.dbg.declare(metadata i8* %8, metadata !808, metadata !DIExpression()), !dbg !809
  %21 = call i32 @isapipe(i32 noundef 1), !dbg !810
  %22 = icmp sgt i32 %21, 0, !dbg !811
  %23 = zext i1 %22 to i8, !dbg !809
  store i8 %23, i8* %8, align 1, !dbg !809
  call void @llvm.dbg.declare(metadata [2 x i32]* %9, metadata !812, metadata !DIExpression()), !dbg !814
  %24 = bitcast [2 x i32]* %9 to i8*, !dbg !814
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast ([2 x i32]* @__const.splice_write.pipefd to i8*), i64 8, i1 false), !dbg !814
  call void @llvm.dbg.declare(metadata i64* %10, metadata !815, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.declare(metadata i8** %11, metadata !817, metadata !DIExpression()), !dbg !818
  store i8* null, i8** %11, align 8, !dbg !818
  %25 = load i8, i8* %8, align 1, !dbg !819
  %26 = trunc i8 %25 to i1, !dbg !819
  br i1 %26, label %27, label %30, !dbg !821

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8, !dbg !822
  %29 = call i64 @pipe_splice_size(i32 noundef 1, i64 noundef %28), !dbg !823
  store i64 %29, i64* %10, align 8, !dbg !824
  br label %40, !dbg !825

30:                                               ; preds = %2
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0, !dbg !826
  %32 = call i32 @pipe2_safer(i32* noundef %31, i32 noundef 0), !dbg !829
  %33 = icmp slt i32 %32, 0, !dbg !830
  br i1 %33, label %34, label %35, !dbg !831

34:                                               ; preds = %30
  store i1 false, i1* %3, align 1, !dbg !832
  br label %141, !dbg !832

35:                                               ; preds = %30
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0, !dbg !833
  %37 = load i32, i32* %36, align 4, !dbg !833
  %38 = load i64, i64* %5, align 8, !dbg !834
  %39 = call i64 @pipe_splice_size(i32 noundef %37, i64 noundef %38), !dbg !835
  store i64 %39, i64* %10, align 8, !dbg !836
  br label %40

40:                                               ; preds = %35, %27
  %41 = load i64, i64* %10, align 8, !dbg !837
  %42 = icmp eq i64 %41, 0, !dbg !839
  br i1 %42, label %43, label %44, !dbg !840

43:                                               ; preds = %40
  br label %122, !dbg !841

44:                                               ; preds = %40
  %45 = load i64, i64* %7, align 8, !dbg !842
  %46 = load i64, i64* %10, align 8, !dbg !844
  %47 = call noalias i8* @alignalloc(i64 noundef %45, i64 noundef %46) #24, !dbg !845
  store i8* %47, i8** %11, align 8, !dbg !846
  %48 = icmp ne i8* %47, null, !dbg !846
  br i1 %48, label %50, label %49, !dbg !847

49:                                               ; preds = %44
  br label %122, !dbg !848

50:                                               ; preds = %44
  %51 = load i8*, i8** %11, align 8, !dbg !849
  %52 = load i8*, i8** %4, align 8, !dbg !850
  %53 = load i64, i64* %5, align 8, !dbg !851
  %54 = load i64, i64* %10, align 8, !dbg !852
  call void @repeat_pattern(i8* noundef %51, i8* noundef %52, i64 noundef %53, i64 noundef %54), !dbg !853
  call void @llvm.dbg.declare(metadata i32* %12, metadata !854, metadata !DIExpression()), !dbg !855
  %55 = load i8, i8* %8, align 1, !dbg !856
  %56 = trunc i8 %55 to i1, !dbg !856
  br i1 %56, label %57, label %58, !dbg !856

57:                                               ; preds = %50
  br label %61, !dbg !856

58:                                               ; preds = %50
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1, !dbg !857
  %60 = load i32, i32* %59, align 4, !dbg !857
  br label %61, !dbg !856

61:                                               ; preds = %58, %57
  %62 = phi i32 [ 1, %57 ], [ %60, %58 ], !dbg !856
  store i32 %62, i32* %12, align 4, !dbg !855
  br label %63, !dbg !858

63:                                               ; preds = %121, %61
  call void @llvm.dbg.declare(metadata %struct.iovec* %13, metadata !859, metadata !DIExpression()), !dbg !868
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0, !dbg !869
  %65 = load i8*, i8** %11, align 8, !dbg !870
  store i8* %65, i8** %64, align 8, !dbg !869
  %66 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1, !dbg !869
  %67 = load i64, i64* %10, align 8, !dbg !871
  store i64 %67, i64* %66, align 8, !dbg !869
  br label %68, !dbg !872

68:                                               ; preds = %90, %63
  %69 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1, !dbg !873
  %70 = load i64, i64* %69, align 8, !dbg !873
  %71 = icmp ugt i64 %70, 0, !dbg !874
  br i1 %71, label %72, label %100, !dbg !872

72:                                               ; preds = %68
  call void @llvm.dbg.declare(metadata i32* %14, metadata !875, metadata !DIExpression()), !dbg !877
  %73 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1, !dbg !878
  %74 = load i64, i64* %73, align 8, !dbg !878
  %75 = load i64, i64* %7, align 8, !dbg !879
  %76 = urem i64 %74, %75, !dbg !880
  %77 = icmp ne i64 %76, 0, !dbg !881
  %78 = zext i1 %77 to i64, !dbg !881
  %79 = select i1 %77, i32 0, i32 8, !dbg !881
  store i32 %79, i32* %14, align 4, !dbg !877
  call void @llvm.dbg.declare(metadata i64* %15, metadata !882, metadata !DIExpression()), !dbg !886
  %80 = load i32, i32* %12, align 4, !dbg !887
  %81 = load i32, i32* %14, align 4, !dbg !888
  %82 = call i64 @vmsplice(i32 noundef %80, %struct.iovec* noundef %13, i64 noundef 1, i32 noundef %81), !dbg !889
  store i64 %82, i64* %15, align 8, !dbg !886
  %83 = load i64, i64* %15, align 8, !dbg !890
  %84 = icmp sle i64 %83, 0, !dbg !892
  br i1 %84, label %85, label %86, !dbg !893

85:                                               ; preds = %72
  br label %122, !dbg !894

86:                                               ; preds = %72
  %87 = load i8, i8* %8, align 1, !dbg !895
  %88 = trunc i8 %87 to i1, !dbg !895
  br i1 %88, label %89, label %90, !dbg !897

89:                                               ; preds = %86
  store i8 1, i8* %6, align 1, !dbg !898
  br label %90, !dbg !899

90:                                               ; preds = %89, %86
  %91 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0, !dbg !900
  %92 = load i8*, i8** %91, align 8, !dbg !900
  %93 = load i64, i64* %15, align 8, !dbg !901
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !902
  %95 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0, !dbg !903
  store i8* %94, i8** %95, align 8, !dbg !904
  %96 = load i64, i64* %15, align 8, !dbg !905
  %97 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1, !dbg !906
  %98 = load i64, i64* %97, align 8, !dbg !907
  %99 = sub i64 %98, %96, !dbg !907
  store i64 %99, i64* %97, align 8, !dbg !907
  br label %68, !dbg !872, !llvm.loop !908

100:                                              ; preds = %68
  %101 = load i8, i8* %8, align 1, !dbg !910
  %102 = trunc i8 %101 to i1, !dbg !910
  br i1 %102, label %121, label %103, !dbg !912

103:                                              ; preds = %100
  call void @llvm.dbg.declare(metadata i64* %16, metadata !913, metadata !DIExpression()), !dbg !915
  %104 = load i64, i64* %10, align 8, !dbg !916
  store i64 %104, i64* %16, align 8, !dbg !915
  br label %105, !dbg !917

105:                                              ; preds = %116, %103
  %106 = load i64, i64* %16, align 8, !dbg !918
  %107 = icmp sgt i64 %106, 0, !dbg !919
  br i1 %107, label %108, label %120, !dbg !917

108:                                              ; preds = %105
  call void @llvm.dbg.declare(metadata i64* %17, metadata !920, metadata !DIExpression()), !dbg !922
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0, !dbg !923
  %110 = load i32, i32* %109, align 4, !dbg !923
  %111 = load i64, i64* %16, align 8, !dbg !924
  %112 = call i64 @splice(i32 noundef %110, i64* noundef null, i32 noundef 1, i64* noundef null, i64 noundef %111, i32 noundef 1), !dbg !925
  store i64 %112, i64* %17, align 8, !dbg !922
  %113 = load i64, i64* %17, align 8, !dbg !926
  %114 = icmp sle i64 %113, 0, !dbg !928
  br i1 %114, label %115, label %116, !dbg !929

115:                                              ; preds = %108
  br label %122, !dbg !930

116:                                              ; preds = %108
  store i8 1, i8* %6, align 1, !dbg !931
  %117 = load i64, i64* %17, align 8, !dbg !932
  %118 = load i64, i64* %16, align 8, !dbg !933
  %119 = sub nsw i64 %118, %117, !dbg !933
  store i64 %119, i64* %16, align 8, !dbg !933
  br label %105, !dbg !917, !llvm.loop !934

120:                                              ; preds = %105
  br label %121, !dbg !936

121:                                              ; preds = %120, %100
  br label %63, !dbg !937, !llvm.loop !938

122:                                              ; preds = %115, %85, %49, %43
  call void @llvm.dbg.label(metadata !941), !dbg !942
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0, !dbg !943
  %124 = load i32, i32* %123, align 4, !dbg !943
  %125 = icmp sge i32 %124, 0, !dbg !945
  br i1 %125, label %126, label %137, !dbg !946

126:                                              ; preds = %122
  call void @llvm.dbg.declare(metadata i32* %18, metadata !947, metadata !DIExpression()), !dbg !949
  %127 = call i32* @__errno_location() #22, !dbg !950
  %128 = load i32, i32* %127, align 4, !dbg !950
  store i32 %128, i32* %18, align 4, !dbg !949
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0, !dbg !951
  %130 = load i32, i32* %129, align 4, !dbg !951
  %131 = call i32 @close(i32 noundef %130), !dbg !952
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1, !dbg !953
  %133 = load i32, i32* %132, align 4, !dbg !953
  %134 = call i32 @close(i32 noundef %133), !dbg !954
  %135 = load i32, i32* %18, align 4, !dbg !955
  %136 = call i32* @__errno_location() #22, !dbg !956
  store i32 %135, i32* %136, align 4, !dbg !957
  br label %137, !dbg !958

137:                                              ; preds = %126, %122
  %138 = load i8*, i8** %11, align 8, !dbg !959
  call void @alignfree(i8* noundef %138), !dbg !960
  %139 = load i8, i8* %6, align 1, !dbg !961
  %140 = trunc i8 %139 to i1, !dbg !961
  store i1 %140, i1* %3, align 1, !dbg !962
  br label %141, !dbg !962

141:                                              ; preds = %137, %34
  %142 = load i1, i1* %3, align 1, !dbg !963
  ret i1 %142, !dbg !963
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repeat_pattern(i8* noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3) #4 !dbg !964 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !967, metadata !DIExpression()), !dbg !968
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !969, metadata !DIExpression()), !dbg !970
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !971, metadata !DIExpression()), !dbg !972
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !973, metadata !DIExpression()), !dbg !974
  %11 = load i8*, i8** %5, align 8, !dbg !975
  %12 = load i8*, i8** %6, align 8, !dbg !977
  %13 = icmp ne i8* %11, %12, !dbg !978
  br i1 %13, label %14, label %18, !dbg !979

14:                                               ; preds = %4
  %15 = load i8*, i8** %5, align 8, !dbg !980
  %16 = load i8*, i8** %6, align 8, !dbg !981
  %17 = load i64, i64* %7, align 8, !dbg !982
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %16, i64 %17, i1 false), !dbg !983
  br label %18, !dbg !983

18:                                               ; preds = %14, %4
  call void @llvm.dbg.declare(metadata i64* %9, metadata !984, metadata !DIExpression()), !dbg !986
  %19 = load i64, i64* %7, align 8, !dbg !987
  store i64 %19, i64* %9, align 8, !dbg !986
  br label %20, !dbg !988

20:                                               ; preds = %36, %18
  %21 = load i64, i64* %9, align 8, !dbg !989
  %22 = load i64, i64* %8, align 8, !dbg !991
  %23 = icmp slt i64 %21, %22, !dbg !992
  br i1 %23, label %24, label %46, !dbg !993

24:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata i64* %10, metadata !994, metadata !DIExpression()), !dbg !996
  %25 = load i64, i64* %9, align 8, !dbg !997
  %26 = load i64, i64* %8, align 8, !dbg !997
  %27 = load i64, i64* %9, align 8, !dbg !997
  %28 = sub nsw i64 %26, %27, !dbg !997
  %29 = icmp slt i64 %25, %28, !dbg !997
  br i1 %29, label %30, label %32, !dbg !997

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8, !dbg !997
  br label %36, !dbg !997

32:                                               ; preds = %24
  %33 = load i64, i64* %8, align 8, !dbg !997
  %34 = load i64, i64* %9, align 8, !dbg !997
  %35 = sub nsw i64 %33, %34, !dbg !997
  br label %36, !dbg !997

36:                                               ; preds = %32, %30
  %37 = phi i64 [ %31, %30 ], [ %35, %32 ], !dbg !997
  store i64 %37, i64* %10, align 8, !dbg !996
  %38 = load i8*, i8** %5, align 8, !dbg !998
  %39 = load i64, i64* %9, align 8, !dbg !999
  %40 = getelementptr inbounds i8, i8* %38, i64 %39, !dbg !1000
  %41 = load i8*, i8** %5, align 8, !dbg !1001
  %42 = load i64, i64* %10, align 8, !dbg !1002
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* align 1 %41, i64 %42, i1 false), !dbg !1003
  %43 = load i64, i64* %10, align 8, !dbg !1004
  %44 = load i64, i64* %9, align 8, !dbg !1005
  %45 = add nsw i64 %44, %43, !dbg !1005
  store i64 %45, i64* %9, align 8, !dbg !1005
  br label %20, !dbg !1006, !llvm.loop !1007

46:                                               ; preds = %20
  ret void, !dbg !1009
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind readnone willreturn
declare i32 @getpagesize() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pipe_splice_size(i32 noundef %0, i64 noundef %1) #4 !dbg !1010 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1013, metadata !DIExpression()), !dbg !1014
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1015, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1017, metadata !DIExpression()), !dbg !1018
  store i32 0, i32* %5, align 4, !dbg !1018
  %7 = load i32, i32* %3, align 4, !dbg !1019
  %8 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %7, i32 noundef 1031, i32 noundef 524288), !dbg !1021
  store i32 %8, i32* %5, align 4, !dbg !1022
  %9 = icmp slt i32 %8, 0, !dbg !1023
  br i1 %9, label %10, label %13, !dbg !1024

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4, !dbg !1025
  %12 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %11, i32 noundef 1032), !dbg !1026
  store i32 %12, i32* %5, align 4, !dbg !1027
  br label %13, !dbg !1028

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %5, align 4, !dbg !1029
  %15 = icmp sle i32 %14, 0, !dbg !1031
  br i1 %15, label %16, label %17, !dbg !1032

16:                                               ; preds = %13
  store i32 65536, i32* %5, align 4, !dbg !1033
  br label %17, !dbg !1034

17:                                               ; preds = %16, %13
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1035, metadata !DIExpression()), !dbg !1036
  %18 = load i32, i32* %5, align 4, !dbg !1037
  %19 = sdiv i32 %18, 4, !dbg !1038
  %20 = sext i32 %19 to i64, !dbg !1037
  store i64 %20, i64* %6, align 8, !dbg !1036
  %21 = load i64, i64* %6, align 8, !dbg !1039
  %22 = load i64, i64* %4, align 8, !dbg !1040
  %23 = udiv i64 %21, %22, !dbg !1041
  %24 = load i64, i64* %4, align 8, !dbg !1042
  %25 = mul i64 %23, %24, !dbg !1043
  ret i64 %25, !dbg !1044
}

declare i64 @vmsplice(i32 noundef, %struct.iovec* noundef, i64 noundef, i32 noundef) #3

declare i64 @splice(i32 noundef, i64* noundef, i32 noundef, i64* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare i32 @close(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alignfree(i8* noundef %0) #4 !dbg !1045 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1049, metadata !DIExpression()), !dbg !1050
  %3 = load i8*, i8** %2, align 8, !dbg !1051
  call void @free(i8* noundef %3) #19, !dbg !1052
  ret void, !dbg !1053
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias i8* @alignalloc(i64 noundef %0, i64 noundef %1) #9 !dbg !1054 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1057, metadata !DIExpression()), !dbg !1058
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1059, metadata !DIExpression()), !dbg !1060
  %5 = load i64, i64* %3, align 8, !dbg !1061
  %6 = icmp ult i64 -1, %5, !dbg !1063
  br i1 %6, label %7, label %8, !dbg !1064

7:                                                ; preds = %2
  store i64 -1, i64* %3, align 8, !dbg !1065
  br label %8, !dbg !1066

8:                                                ; preds = %7, %2
  %9 = load i64, i64* %4, align 8, !dbg !1067
  %10 = icmp ult i64 -1, %9, !dbg !1069
  br i1 %10, label %11, label %12, !dbg !1070

11:                                               ; preds = %8
  store i64 -1, i64* %4, align 8, !dbg !1071
  br label %12, !dbg !1072

12:                                               ; preds = %11, %8
  %13 = load i64, i64* %3, align 8, !dbg !1073
  %14 = load i64, i64* %4, align 8, !dbg !1074
  %15 = call noalias i8* @aligned_alloc(i64 noundef %13, i64 noundef %14) #19, !dbg !1075
  call void @llvm.assume(i1 true) [ "align"(i8* %15, i64 %13) ], !dbg !1075
  ret i8* %15, !dbg !1076
}

; Function Attrs: nounwind
declare noalias i8* @aligned_alloc(i64 noundef, i64 noundef) #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !1077 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1078, metadata !DIExpression()), !dbg !1079
  %3 = load i8*, i8** %2, align 8, !dbg !1080
  store i8* %3, i8** @file_name, align 8, !dbg !1081
  ret void, !dbg !1082
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !1083 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1086, metadata !DIExpression()), !dbg !1087
  %4 = load i8, i8* %2, align 1, !dbg !1088
  %5 = trunc i8 %4 to i1, !dbg !1088
  %6 = zext i1 %5 to i8, !dbg !1089
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1089
  ret void, !dbg !1090
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !1091 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1092
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !1094
  %4 = icmp ne i32 %3, 0, !dbg !1095
  br i1 %4, label %5, label %28, !dbg !1096

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1097
  %7 = trunc i8 %6 to i1, !dbg !1097
  br i1 %7, label %8, label %12, !dbg !1098

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #22, !dbg !1099
  %10 = load i32, i32* %9, align 4, !dbg !1099
  %11 = icmp eq i32 %10, 32, !dbg !1100
  br i1 %11, label %28, label %12, !dbg !1101

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1102, metadata !DIExpression()), !dbg !1104
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.56, i64 0, i64 0)) #19, !dbg !1105
  store i8* %13, i8** %1, align 8, !dbg !1104
  %14 = load i8*, i8** @file_name, align 8, !dbg !1106
  %15 = icmp ne i8* %14, null, !dbg !1106
  br i1 %15, label %16, label %22, !dbg !1108

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #22, !dbg !1109
  %18 = load i32, i32* %17, align 4, !dbg !1109
  %19 = load i8*, i8** @file_name, align 8, !dbg !1109
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !1109
  %21 = load i8*, i8** %1, align 8, !dbg !1109
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.57, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !1109
  br label %26, !dbg !1109

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #22, !dbg !1110
  %24 = load i32, i32* %23, align 4, !dbg !1110
  %25 = load i8*, i8** %1, align 8, !dbg !1110
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.58, i64 0, i64 0), i8* noundef %25), !dbg !1110
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1111
  call void @_exit(i32 noundef %27) #25, !dbg !1112
  unreachable, !dbg !1112

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1113
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !1115
  %31 = icmp ne i32 %30, 0, !dbg !1116
  br i1 %31, label %32, label %34, !dbg !1117

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !1118
  call void @_exit(i32 noundef %33) #25, !dbg !1119
  unreachable, !dbg !1119

34:                                               ; preds = %28
  ret void, !dbg !1120
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #12 !dbg !1121 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1124, metadata !DIExpression()), !dbg !1125
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1126, metadata !DIExpression()), !dbg !1125
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1127, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1128, metadata !DIExpression()), !dbg !1125
  call void @flush_stdout(), !dbg !1129
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1130
  %10 = icmp ne void ()* %9, null, !dbg !1130
  br i1 %10, label %11, label %13, !dbg !1132

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1133
  call void %12(), !dbg !1134
  br label %17, !dbg !1134

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1135
  %15 = call i8* @getprogname() #21, !dbg !1137
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i8* noundef %15), !dbg !1138
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !1139
  %19 = load i32, i32* %6, align 4, !dbg !1139
  %20 = load i8*, i8** %7, align 8, !dbg !1139
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1139
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1139
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !1139
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !1139
  ret void, !dbg !1140
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !1141 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1142, metadata !DIExpression()), !dbg !1143
  store i32 1, i32* %1, align 4, !dbg !1144
  %2 = load i32, i32* %1, align 4, !dbg !1145
  %3 = icmp sle i32 0, %2, !dbg !1147
  br i1 %3, label %4, label %11, !dbg !1148

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !1149
  %6 = call i32 @is_open(i32 noundef %5), !dbg !1150
  %7 = icmp ne i32 %6, 0, !dbg !1150
  br i1 %7, label %8, label %11, !dbg !1151

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1152
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !1152
  br label %11, !dbg !1152

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !1153
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !1154 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1155, metadata !DIExpression()), !dbg !1156
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1157, metadata !DIExpression()), !dbg !1156
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1158, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1159, metadata !DIExpression()), !dbg !1156
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1160
  %10 = load i8*, i8** %7, align 8, !dbg !1161
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1162
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1162
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1162
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !1162
  %14 = load i32, i32* @error_message_count, align 4, !dbg !1163
  %15 = add i32 %14, 1, !dbg !1163
  store i32 %15, i32* @error_message_count, align 4, !dbg !1163
  %16 = load i32, i32* %6, align 4, !dbg !1164
  %17 = icmp ne i32 %16, 0, !dbg !1164
  br i1 %17, label %18, label %20, !dbg !1166

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !1167
  call void @print_errno_message(i32 noundef %19), !dbg !1168
  br label %20, !dbg !1168

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1169
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !1169
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1170
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !1170
  %25 = load i32, i32* %5, align 4, !dbg !1171
  %26 = icmp ne i32 %25, 0, !dbg !1171
  br i1 %26, label %27, label %29, !dbg !1173

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1174
  call void @exit(i32 noundef %28) #20, !dbg !1175
  unreachable, !dbg !1175

29:                                               ; preds = %20
  ret void, !dbg !1176
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !1177 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1178, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1180, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1182, metadata !DIExpression()), !dbg !1186
  %5 = load i32, i32* %2, align 4, !dbg !1187
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1188
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #19, !dbg !1189
  store i8* %7, i8** %3, align 8, !dbg !1190
  %8 = load i8*, i8** %3, align 8, !dbg !1191
  %9 = icmp ne i8* %8, null, !dbg !1191
  br i1 %9, label %12, label %10, !dbg !1193

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.61, i64 0, i64 0)) #19, !dbg !1194
  store i8* %11, i8** %3, align 8, !dbg !1195
  br label %12, !dbg !1196

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1197
  %14 = load i8*, i8** %3, align 8, !dbg !1198
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.62, i64 0, i64 0), i8* noundef %14), !dbg !1199
  ret void, !dbg !1200
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !1201 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1204, metadata !DIExpression()), !dbg !1205
  %3 = load i32, i32* %2, align 4, !dbg !1206
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !1207
  %5 = icmp sle i32 0, %4, !dbg !1208
  %6 = zext i1 %5 to i32, !dbg !1208
  ret i32 %6, !dbg !1209
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !1210 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1213, metadata !DIExpression()), !dbg !1214
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1215, metadata !DIExpression()), !dbg !1216
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1217, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1219, metadata !DIExpression()), !dbg !1220
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1221
  call void @llvm.va_start(i8* %9), !dbg !1221
  %10 = load i32, i32* %4, align 4, !dbg !1222
  %11 = load i32, i32* %5, align 4, !dbg !1222
  %12 = load i8*, i8** %6, align 8, !dbg !1222
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1222
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1222
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1222
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #26, !dbg !1222
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1223
  call void @llvm.va_end(i8* %15), !dbg !1223
  ret void, !dbg !1224
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #13

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #13

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #12 !dbg !59 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1225, metadata !DIExpression()), !dbg !1226
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1227, metadata !DIExpression()), !dbg !1226
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1228, metadata !DIExpression()), !dbg !1226
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1229, metadata !DIExpression()), !dbg !1226
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1230, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1231, metadata !DIExpression()), !dbg !1226
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1232
  %14 = icmp ne i32 %13, 0, !dbg !1232
  br i1 %14, label %15, label %38, !dbg !1234

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1235
  %17 = load i32, i32* %10, align 4, !dbg !1238
  %18 = icmp eq i32 %16, %17, !dbg !1239
  br i1 %18, label %19, label %35, !dbg !1240

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1241
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1242
  %22 = icmp eq i8* %20, %21, !dbg !1243
  br i1 %22, label %34, label %23, !dbg !1244

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1245
  %25 = icmp ne i8* %24, null, !dbg !1246
  br i1 %25, label %26, label %35, !dbg !1247

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1248
  %28 = icmp ne i8* %27, null, !dbg !1249
  br i1 %28, label %29, label %35, !dbg !1250

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1251
  %31 = load i8*, i8** %9, align 8, !dbg !1252
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #21, !dbg !1253
  %33 = icmp eq i32 %32, 0, !dbg !1254
  br i1 %33, label %34, label %35, !dbg !1255

34:                                               ; preds = %29, %19
  br label %61, !dbg !1256

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1257
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1258
  %37 = load i32, i32* %10, align 4, !dbg !1259
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1260
  br label %38, !dbg !1261

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1262
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1263
  %40 = icmp ne void ()* %39, null, !dbg !1263
  br i1 %40, label %41, label %43, !dbg !1265

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1266
  call void %42(), !dbg !1267
  br label %47, !dbg !1267

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1268
  %45 = call i8* @getprogname() #21, !dbg !1270
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.65, i64 0, i64 0), i8* noundef %45), !dbg !1271
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1272
  %49 = load i8*, i8** %9, align 8, !dbg !1273
  %50 = icmp ne i8* %49, null, !dbg !1274
  %51 = zext i1 %50 to i64, !dbg !1273
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.66, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.67, i64 0, i64 0), !dbg !1273
  %53 = load i8*, i8** %9, align 8, !dbg !1275
  %54 = load i32, i32* %10, align 4, !dbg !1276
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1277
  %56 = load i32, i32* %7, align 4, !dbg !1278
  %57 = load i32, i32* %8, align 4, !dbg !1278
  %58 = load i8*, i8** %11, align 8, !dbg !1278
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1278
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1278
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1278
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1278
  br label %61, !dbg !1279

61:                                               ; preds = %47, %34
  ret void, !dbg !1279
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1280 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1283, metadata !DIExpression()), !dbg !1284
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1285, metadata !DIExpression()), !dbg !1286
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1287, metadata !DIExpression()), !dbg !1288
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1289, metadata !DIExpression()), !dbg !1290
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1291, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1293, metadata !DIExpression()), !dbg !1294
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1295
  call void @llvm.va_start(i8* %13), !dbg !1295
  %14 = load i32, i32* %6, align 4, !dbg !1296
  %15 = load i32, i32* %7, align 4, !dbg !1296
  %16 = load i8*, i8** %8, align 8, !dbg !1296
  %17 = load i32, i32* %9, align 4, !dbg !1296
  %18 = load i8*, i8** %10, align 8, !dbg !1296
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1296
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1296
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1296
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #26, !dbg !1296
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1297
  call void @llvm.va_end(i8* %21), !dbg !1297
  ret void, !dbg !1298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) #4 !dbg !1299 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1302, metadata !DIExpression()), !dbg !1303
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1304, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1306, metadata !DIExpression()), !dbg !1317
  %11 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1318
  call void @llvm.va_start(i8* %11), !dbg !1318
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1319, metadata !DIExpression()), !dbg !1320
  store i32 -1, i32* %6, align 4, !dbg !1320
  %12 = load i32, i32* %4, align 4, !dbg !1321
  switch i32 %12, label %59 [
    i32 0, label %13
    i32 1030, label %36
  ], !dbg !1322

13:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1323, metadata !DIExpression()), !dbg !1326
  %14 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !1327
  %15 = load i32, i32* %14, align 8, !dbg !1327
  %16 = icmp sge i32 %15, 0, !dbg !1327
  br i1 %16, label %25, label %17, !dbg !1327

17:                                               ; preds = %13
  %18 = add i32 %15, 8, !dbg !1327
  store i32 %18, i32* %14, align 8, !dbg !1327
  %19 = icmp sle i32 %18, 0, !dbg !1327
  br i1 %19, label %20, label %25, !dbg !1327

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !1327
  %22 = load i8*, i8** %21, align 8, !dbg !1327
  %23 = getelementptr inbounds i8, i8* %22, i32 %15, !dbg !1327
  %24 = bitcast i8* %23 to i32*, !dbg !1327
  br label %30, !dbg !1327

25:                                               ; preds = %17, %13
  %26 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !1327
  %27 = load i8*, i8** %26, align 8, !dbg !1327
  %28 = getelementptr inbounds i8, i8* %27, i64 8, !dbg !1327
  store i8* %28, i8** %26, align 8, !dbg !1327
  %29 = bitcast i8* %27 to i32*, !dbg !1327
  br label %30, !dbg !1327

30:                                               ; preds = %25, %20
  %31 = phi i32* [ %24, %20 ], [ %29, %25 ], !dbg !1327
  %32 = load i32, i32* %31, align 8, !dbg !1327
  store i32 %32, i32* %7, align 4, !dbg !1326
  %33 = load i32, i32* %3, align 4, !dbg !1328
  %34 = load i32, i32* %7, align 4, !dbg !1329
  %35 = call i32 @rpl_fcntl_DUPFD(i32 noundef %33, i32 noundef %34), !dbg !1330
  store i32 %35, i32* %6, align 4, !dbg !1331
  br label %114, !dbg !1332

36:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1333, metadata !DIExpression()), !dbg !1335
  %37 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !1336
  %38 = load i32, i32* %37, align 8, !dbg !1336
  %39 = icmp sge i32 %38, 0, !dbg !1336
  br i1 %39, label %48, label %40, !dbg !1336

40:                                               ; preds = %36
  %41 = add i32 %38, 8, !dbg !1336
  store i32 %41, i32* %37, align 8, !dbg !1336
  %42 = icmp sle i32 %41, 0, !dbg !1336
  br i1 %42, label %43, label %48, !dbg !1336

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !1336
  %45 = load i8*, i8** %44, align 8, !dbg !1336
  %46 = getelementptr inbounds i8, i8* %45, i32 %38, !dbg !1336
  %47 = bitcast i8* %46 to i32*, !dbg !1336
  br label %53, !dbg !1336

48:                                               ; preds = %40, %36
  %49 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !1336
  %50 = load i8*, i8** %49, align 8, !dbg !1336
  %51 = getelementptr inbounds i8, i8* %50, i64 8, !dbg !1336
  store i8* %51, i8** %49, align 8, !dbg !1336
  %52 = bitcast i8* %50 to i32*, !dbg !1336
  br label %53, !dbg !1336

53:                                               ; preds = %48, %43
  %54 = phi i32* [ %47, %43 ], [ %52, %48 ], !dbg !1336
  %55 = load i32, i32* %54, align 8, !dbg !1336
  store i32 %55, i32* %8, align 4, !dbg !1335
  %56 = load i32, i32* %3, align 4, !dbg !1337
  %57 = load i32, i32* %8, align 4, !dbg !1338
  %58 = call i32 @rpl_fcntl_DUPFD_CLOEXEC(i32 noundef %56, i32 noundef %57), !dbg !1339
  store i32 %58, i32* %6, align 4, !dbg !1340
  br label %114, !dbg !1341

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4, !dbg !1342
  switch i32 %60, label %89 [
    i32 1, label %61
    i32 3, label %61
    i32 1025, label %61
    i32 9, label %61
    i32 1032, label %61
    i32 1034, label %61
    i32 11, label %61
    i32 1033, label %65
    i32 0, label %65
    i32 1030, label %65
    i32 1026, label %65
    i32 2, label %65
    i32 4, label %65
    i32 1024, label %65
    i32 8, label %65
    i32 1031, label %65
    i32 10, label %65
  ], !dbg !1344

61:                                               ; preds = %59, %59, %59, %59, %59, %59, %59
  %62 = load i32, i32* %3, align 4, !dbg !1345
  %63 = load i32, i32* %4, align 4, !dbg !1347
  %64 = call i32 (i32, i32, ...) @fcntl(i32 noundef %62, i32 noundef %63), !dbg !1348
  store i32 %64, i32* %6, align 4, !dbg !1349
  br label %113, !dbg !1350

65:                                               ; preds = %59, %59, %59, %59, %59, %59, %59, %59, %59, %59
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1351, metadata !DIExpression()), !dbg !1353
  %66 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !1354
  %67 = load i32, i32* %66, align 8, !dbg !1354
  %68 = icmp sge i32 %67, 0, !dbg !1354
  br i1 %68, label %77, label %69, !dbg !1354

69:                                               ; preds = %65
  %70 = add i32 %67, 8, !dbg !1354
  store i32 %70, i32* %66, align 8, !dbg !1354
  %71 = icmp sle i32 %70, 0, !dbg !1354
  br i1 %71, label %72, label %77, !dbg !1354

72:                                               ; preds = %69
  %73 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !1354
  %74 = load i8*, i8** %73, align 8, !dbg !1354
  %75 = getelementptr inbounds i8, i8* %74, i32 %67, !dbg !1354
  %76 = bitcast i8* %75 to i32*, !dbg !1354
  br label %82, !dbg !1354

77:                                               ; preds = %69, %65
  %78 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !1354
  %79 = load i8*, i8** %78, align 8, !dbg !1354
  %80 = getelementptr inbounds i8, i8* %79, i64 8, !dbg !1354
  store i8* %80, i8** %78, align 8, !dbg !1354
  %81 = bitcast i8* %79 to i32*, !dbg !1354
  br label %82, !dbg !1354

82:                                               ; preds = %77, %72
  %83 = phi i32* [ %76, %72 ], [ %81, %77 ], !dbg !1354
  %84 = load i32, i32* %83, align 8, !dbg !1354
  store i32 %84, i32* %9, align 4, !dbg !1353
  %85 = load i32, i32* %3, align 4, !dbg !1355
  %86 = load i32, i32* %4, align 4, !dbg !1356
  %87 = load i32, i32* %9, align 4, !dbg !1357
  %88 = call i32 (i32, i32, ...) @fcntl(i32 noundef %85, i32 noundef %86, i32 noundef %87), !dbg !1358
  store i32 %88, i32* %6, align 4, !dbg !1359
  br label %113, !dbg !1360

89:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1361, metadata !DIExpression()), !dbg !1363
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !1364
  %91 = load i32, i32* %90, align 8, !dbg !1364
  %92 = icmp sge i32 %91, 0, !dbg !1364
  br i1 %92, label %101, label %93, !dbg !1364

93:                                               ; preds = %89
  %94 = add i32 %91, 8, !dbg !1364
  store i32 %94, i32* %90, align 8, !dbg !1364
  %95 = icmp sle i32 %94, 0, !dbg !1364
  br i1 %95, label %96, label %101, !dbg !1364

96:                                               ; preds = %93
  %97 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !1364
  %98 = load i8*, i8** %97, align 8, !dbg !1364
  %99 = getelementptr inbounds i8, i8* %98, i32 %91, !dbg !1364
  %100 = bitcast i8* %99 to i8**, !dbg !1364
  br label %106, !dbg !1364

101:                                              ; preds = %93, %89
  %102 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !1364
  %103 = load i8*, i8** %102, align 8, !dbg !1364
  %104 = getelementptr inbounds i8, i8* %103, i64 8, !dbg !1364
  store i8* %104, i8** %102, align 8, !dbg !1364
  %105 = bitcast i8* %103 to i8**, !dbg !1364
  br label %106, !dbg !1364

106:                                              ; preds = %101, %96
  %107 = phi i8** [ %100, %96 ], [ %105, %101 ], !dbg !1364
  %108 = load i8*, i8** %107, align 8, !dbg !1364
  store i8* %108, i8** %10, align 8, !dbg !1363
  %109 = load i32, i32* %3, align 4, !dbg !1365
  %110 = load i32, i32* %4, align 4, !dbg !1366
  %111 = load i8*, i8** %10, align 8, !dbg !1367
  %112 = call i32 (i32, i32, ...) @fcntl(i32 noundef %109, i32 noundef %110, i8* noundef %111), !dbg !1368
  store i32 %112, i32* %6, align 4, !dbg !1369
  br label %113, !dbg !1370

113:                                              ; preds = %106, %82, %61
  br label %114, !dbg !1371

114:                                              ; preds = %113, %53, %30
  %115 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1372
  call void @llvm.va_end(i8* %115), !dbg !1372
  %116 = load i32, i32* %6, align 4, !dbg !1373
  ret i32 %116, !dbg !1374
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpl_fcntl_DUPFD(i32 noundef %0, i32 noundef %1) #4 !dbg !1375 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1376, metadata !DIExpression()), !dbg !1377
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1378, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1380, metadata !DIExpression()), !dbg !1381
  %6 = load i32, i32* %3, align 4, !dbg !1382
  %7 = load i32, i32* %4, align 4, !dbg !1383
  %8 = call i32 (i32, i32, ...) @fcntl(i32 noundef %6, i32 noundef 0, i32 noundef %7), !dbg !1384
  store i32 %8, i32* %5, align 4, !dbg !1385
  %9 = load i32, i32* %5, align 4, !dbg !1386
  ret i32 %9, !dbg !1387
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpl_fcntl_DUPFD_CLOEXEC(i32 noundef %0, i32 noundef %1) #4 !dbg !87 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1388, metadata !DIExpression()), !dbg !1389
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1390, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1392, metadata !DIExpression()), !dbg !1393
  %8 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1394
  %9 = icmp sle i32 0, %8, !dbg !1396
  br i1 %9, label %10, label %30, !dbg !1397

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4, !dbg !1398
  %12 = load i32, i32* %4, align 4, !dbg !1400
  %13 = call i32 (i32, i32, ...) @fcntl(i32 noundef %11, i32 noundef 1030, i32 noundef %12), !dbg !1401
  store i32 %13, i32* %5, align 4, !dbg !1402
  %14 = load i32, i32* %5, align 4, !dbg !1403
  %15 = icmp sle i32 0, %14, !dbg !1405
  br i1 %15, label %20, label %16, !dbg !1406

16:                                               ; preds = %10
  %17 = call i32* @__errno_location() #22, !dbg !1407
  %18 = load i32, i32* %17, align 4, !dbg !1407
  %19 = icmp ne i32 %18, 22, !dbg !1408
  br i1 %19, label %20, label %21, !dbg !1409

20:                                               ; preds = %16, %10
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1410
  br label %29, !dbg !1412

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4, !dbg !1413
  %23 = load i32, i32* %4, align 4, !dbg !1415
  %24 = call i32 @rpl_fcntl_DUPFD(i32 noundef %22, i32 noundef %23), !dbg !1416
  store i32 %24, i32* %5, align 4, !dbg !1417
  %25 = load i32, i32* %5, align 4, !dbg !1418
  %26 = icmp sge i32 %25, 0, !dbg !1420
  br i1 %26, label %27, label %28, !dbg !1421

27:                                               ; preds = %21
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1422
  br label %28, !dbg !1423

28:                                               ; preds = %27, %21
  br label %29

29:                                               ; preds = %28, %20
  br label %34, !dbg !1424

30:                                               ; preds = %2
  %31 = load i32, i32* %3, align 4, !dbg !1425
  %32 = load i32, i32* %4, align 4, !dbg !1426
  %33 = call i32 @rpl_fcntl_DUPFD(i32 noundef %31, i32 noundef %32), !dbg !1427
  store i32 %33, i32* %5, align 4, !dbg !1428
  br label %34

34:                                               ; preds = %30, %29
  %35 = load i32, i32* %5, align 4, !dbg !1429
  %36 = icmp sle i32 0, %35, !dbg !1431
  br i1 %36, label %37, label %59, !dbg !1432

37:                                               ; preds = %34
  %38 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1433
  %39 = icmp eq i32 %38, -1, !dbg !1434
  br i1 %39, label %40, label %59, !dbg !1435

40:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1436, metadata !DIExpression()), !dbg !1438
  %41 = load i32, i32* %5, align 4, !dbg !1439
  %42 = call i32 (i32, i32, ...) @fcntl(i32 noundef %41, i32 noundef 1), !dbg !1440
  store i32 %42, i32* %6, align 4, !dbg !1438
  %43 = load i32, i32* %6, align 4, !dbg !1441
  %44 = icmp slt i32 %43, 0, !dbg !1443
  br i1 %44, label %51, label %45, !dbg !1444

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4, !dbg !1445
  %47 = load i32, i32* %6, align 4, !dbg !1446
  %48 = or i32 %47, 1, !dbg !1447
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %46, i32 noundef 2, i32 noundef %48), !dbg !1448
  %50 = icmp eq i32 %49, -1, !dbg !1449
  br i1 %50, label %51, label %58, !dbg !1450

51:                                               ; preds = %45, %40
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1451, metadata !DIExpression()), !dbg !1453
  %52 = call i32* @__errno_location() #22, !dbg !1454
  %53 = load i32, i32* %52, align 4, !dbg !1454
  store i32 %53, i32* %7, align 4, !dbg !1453
  %54 = load i32, i32* %5, align 4, !dbg !1455
  %55 = call i32 @close(i32 noundef %54), !dbg !1456
  %56 = load i32, i32* %7, align 4, !dbg !1457
  %57 = call i32* @__errno_location() #22, !dbg !1458
  store i32 %56, i32* %57, align 4, !dbg !1459
  store i32 -1, i32* %5, align 4, !dbg !1460
  br label %58, !dbg !1461

58:                                               ; preds = %51, %45
  br label %59, !dbg !1462

59:                                               ; preds = %58, %37, %34
  %60 = load i32, i32* %5, align 4, !dbg !1463
  ret i32 %60, !dbg !1464
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @full_write(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !1465 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1470, metadata !DIExpression()), !dbg !1471
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1472, metadata !DIExpression()), !dbg !1473
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1474, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1476, metadata !DIExpression()), !dbg !1477
  store i64 0, i64* %7, align 8, !dbg !1477
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1478, metadata !DIExpression()), !dbg !1479
  %10 = load i8*, i8** %5, align 8, !dbg !1480
  store i8* %10, i8** %8, align 8, !dbg !1479
  br label %11, !dbg !1481

11:                                               ; preds = %27, %3
  %12 = load i64, i64* %6, align 8, !dbg !1482
  %13 = icmp sgt i64 %12, 0, !dbg !1483
  br i1 %13, label %14, label %37, !dbg !1481

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1484, metadata !DIExpression()), !dbg !1486
  %15 = load i32, i32* %4, align 4, !dbg !1487
  %16 = load i8*, i8** %8, align 8, !dbg !1488
  %17 = load i64, i64* %6, align 8, !dbg !1489
  %18 = call i64 @safe_write(i32 noundef %15, i8* noundef %16, i64 noundef %17), !dbg !1490
  store i64 %18, i64* %9, align 8, !dbg !1486
  %19 = load i64, i64* %9, align 8, !dbg !1491
  %20 = icmp slt i64 %19, 0, !dbg !1493
  br i1 %20, label %21, label %22, !dbg !1494

21:                                               ; preds = %14
  br label %37, !dbg !1495

22:                                               ; preds = %14
  %23 = load i64, i64* %9, align 8, !dbg !1496
  %24 = icmp eq i64 %23, 0, !dbg !1498
  br i1 %24, label %25, label %27, !dbg !1499

25:                                               ; preds = %22
  %26 = call i32* @__errno_location() #22, !dbg !1500
  store i32 28, i32* %26, align 4, !dbg !1502
  br label %37, !dbg !1503

27:                                               ; preds = %22
  %28 = load i64, i64* %9, align 8, !dbg !1504
  %29 = load i64, i64* %7, align 8, !dbg !1505
  %30 = add nsw i64 %29, %28, !dbg !1505
  store i64 %30, i64* %7, align 8, !dbg !1505
  %31 = load i64, i64* %9, align 8, !dbg !1506
  %32 = load i8*, i8** %8, align 8, !dbg !1507
  %33 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !1507
  store i8* %33, i8** %8, align 8, !dbg !1507
  %34 = load i64, i64* %9, align 8, !dbg !1508
  %35 = load i64, i64* %6, align 8, !dbg !1509
  %36 = sub nsw i64 %35, %34, !dbg !1509
  store i64 %36, i64* %6, align 8, !dbg !1509
  br label %11, !dbg !1481, !llvm.loop !1510

37:                                               ; preds = %25, %21, %11
  %38 = load i64, i64* %7, align 8, !dbg !1512
  ret i64 %38, !dbg !1513
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #14 !dbg !1514 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1516
  ret i8* %1, !dbg !1517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isapipe(i32 noundef %0) #4 !dbg !1518 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1519, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1521, metadata !DIExpression()), !dbg !1525
  store i32 1, i32* %4, align 4, !dbg !1525
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1526, metadata !DIExpression()), !dbg !1527
  store i8 1, i8* %5, align 1, !dbg !1527
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !1528, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1564, metadata !DIExpression()), !dbg !1565
  %8 = load i32, i32* %3, align 4, !dbg !1566
  %9 = call i32 @fstat(i32 noundef %8, %struct.stat* noundef %6) #19, !dbg !1567
  store i32 %9, i32* %7, align 4, !dbg !1565
  %10 = load i32, i32* %7, align 4, !dbg !1568
  %11 = icmp ne i32 %10, 0, !dbg !1570
  br i1 %11, label %12, label %14, !dbg !1571

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4, !dbg !1572
  store i32 %13, i32* %2, align 4, !dbg !1573
  br label %40, !dbg !1573

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3, !dbg !1574
  %16 = load i32, i32* %15, align 4, !dbg !1574
  %17 = load i32, i32* %4, align 4, !dbg !1575
  %18 = icmp ule i32 %16, %17, !dbg !1576
  br i1 %18, label %19, label %37, !dbg !1577

19:                                               ; preds = %14
  %20 = load i8, i8* %5, align 1, !dbg !1578
  %21 = trunc i8 %20 to i1, !dbg !1578
  br i1 %21, label %22, label %28, !dbg !1578

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2, !dbg !1579
  %24 = load i32, i32* %23, align 8, !dbg !1579
  %25 = and i32 %24, 61440, !dbg !1579
  %26 = icmp eq i32 %25, 4096, !dbg !1579
  %27 = zext i1 %26 to i32, !dbg !1579
  br label %34, !dbg !1578

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2, !dbg !1580
  %30 = load i32, i32* %29, align 8, !dbg !1580
  %31 = and i32 %30, 61440, !dbg !1580
  %32 = icmp eq i32 %31, 49152, !dbg !1580
  %33 = zext i1 %32 to i32, !dbg !1580
  br label %34, !dbg !1578

34:                                               ; preds = %28, %22
  %35 = phi i32 [ %27, %22 ], [ %33, %28 ], !dbg !1578
  %36 = icmp ne i32 %35, 0, !dbg !1577
  br label %37

37:                                               ; preds = %34, %14
  %38 = phi i1 [ false, %14 ], [ %36, %34 ], !dbg !1581
  %39 = zext i1 %38 to i32, !dbg !1577
  store i32 %39, i32* %2, align 4, !dbg !1582
  br label %40, !dbg !1582

40:                                               ; preds = %37, %12
  %41 = load i32, i32* %2, align 4, !dbg !1583
  ret i32 %41, !dbg !1583
}

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, %struct.stat* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* noundef %5, ...) #4 !dbg !1584 {
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1588, metadata !DIExpression()), !dbg !1589
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1590, metadata !DIExpression()), !dbg !1591
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1592, metadata !DIExpression()), !dbg !1593
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1594, metadata !DIExpression()), !dbg !1595
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1596, metadata !DIExpression()), !dbg !1597
  store void (i32)* %5, void (i32)** %12, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %12, metadata !1598, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1600, metadata !DIExpression()), !dbg !1601
  %17 = load i32, i32* @opterr, align 4, !dbg !1602
  store i32 %17, i32* %13, align 4, !dbg !1601
  store i32 0, i32* @opterr, align 4, !dbg !1603
  %18 = load i32, i32* %7, align 4, !dbg !1604
  %19 = icmp eq i32 %18, 2, !dbg !1606
  br i1 %19, label %20, label %41, !dbg !1607

20:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1608, metadata !DIExpression()), !dbg !1610
  %21 = load i32, i32* %7, align 4, !dbg !1611
  %22 = load i8**, i8*** %8, align 8, !dbg !1612
  %23 = call i32 @getopt_long(i32 noundef %21, i8** noundef %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #19, !dbg !1613
  store i32 %23, i32* %14, align 4, !dbg !1610
  %24 = load i32, i32* %14, align 4, !dbg !1614
  %25 = icmp ne i32 %24, -1, !dbg !1616
  br i1 %25, label %26, label %40, !dbg !1617

26:                                               ; preds = %20
  %27 = load i32, i32* %14, align 4, !dbg !1618
  switch i32 %27, label %38 [
    i32 104, label %28
    i32 118, label %30
  ], !dbg !1620

28:                                               ; preds = %26
  %29 = load void (i32)*, void (i32)** %12, align 8, !dbg !1621
  call void %29(i32 noundef 0), !dbg !1623
  br label %39, !dbg !1624

30:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %15, metadata !1625, metadata !DIExpression()), !dbg !1638
  %31 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !1639
  call void @llvm.va_start(i8* %31), !dbg !1639
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1640
  %33 = load i8*, i8** %9, align 8, !dbg !1641
  %34 = load i8*, i8** %10, align 8, !dbg !1642
  %35 = load i8*, i8** %11, align 8, !dbg !1643
  %36 = bitcast %"struct.std::__va_list"* %16 to i8*, !dbg !1644
  %37 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !1644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 32, i1 false), !dbg !1644
  call void @version_etc_va(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef %34, i8* noundef %35, %"struct.std::__va_list"* noundef %16), !dbg !1644
  call void @exit(i32 noundef 0) #20, !dbg !1645
  unreachable, !dbg !1645

38:                                               ; preds = %26
  br label %39, !dbg !1646

39:                                               ; preds = %38, %28
  br label %40, !dbg !1647

40:                                               ; preds = %39, %20
  br label %41, !dbg !1648

41:                                               ; preds = %40, %6
  %42 = load i32, i32* %13, align 4, !dbg !1649
  store i32 %42, i32* @opterr, align 4, !dbg !1650
  store i32 0, i32* @optind, align 4, !dbg !1651
  ret void, !dbg !1652
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* noundef %6, ...) #4 !dbg !1653 {
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
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1656, metadata !DIExpression()), !dbg !1657
  store i8** %1, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1658, metadata !DIExpression()), !dbg !1659
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1660, metadata !DIExpression()), !dbg !1661
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1662, metadata !DIExpression()), !dbg !1663
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1664, metadata !DIExpression()), !dbg !1665
  %20 = zext i1 %5 to i8
  store i8 %20, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1666, metadata !DIExpression()), !dbg !1667
  store void (i32)* %6, void (i32)** %14, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %14, metadata !1668, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1670, metadata !DIExpression()), !dbg !1671
  %21 = load i32, i32* @opterr, align 4, !dbg !1672
  store i32 %21, i32* %15, align 4, !dbg !1671
  store i32 1, i32* @opterr, align 4, !dbg !1673
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1674, metadata !DIExpression()), !dbg !1675
  %22 = load i8, i8* %13, align 1, !dbg !1676
  %23 = trunc i8 %22 to i1, !dbg !1676
  %24 = zext i1 %23 to i64, !dbg !1676
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.83, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), !dbg !1676
  store i8* %25, i8** %16, align 8, !dbg !1675
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1677, metadata !DIExpression()), !dbg !1678
  %26 = load i32, i32* %8, align 4, !dbg !1679
  %27 = load i8**, i8*** %9, align 8, !dbg !1680
  %28 = load i8*, i8** %16, align 8, !dbg !1681
  %29 = call i32 @getopt_long(i32 noundef %26, i8** noundef %27, i8* noundef %28, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #19, !dbg !1682
  store i32 %29, i32* %17, align 4, !dbg !1678
  %30 = load i32, i32* %17, align 4, !dbg !1683
  %31 = icmp ne i32 %30, -1, !dbg !1685
  br i1 %31, label %32, label %48, !dbg !1686

32:                                               ; preds = %7
  %33 = load i32, i32* %17, align 4, !dbg !1687
  switch i32 %33, label %44 [
    i32 104, label %34
    i32 118, label %36
  ], !dbg !1689

34:                                               ; preds = %32
  %35 = load void (i32)*, void (i32)** %14, align 8, !dbg !1690
  call void %35(i32 noundef 0), !dbg !1692
  br label %47, !dbg !1693

36:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %18, metadata !1694, metadata !DIExpression()), !dbg !1696
  %37 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !1697
  call void @llvm.va_start(i8* %37), !dbg !1697
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1698
  %39 = load i8*, i8** %10, align 8, !dbg !1699
  %40 = load i8*, i8** %11, align 8, !dbg !1700
  %41 = load i8*, i8** %12, align 8, !dbg !1701
  %42 = bitcast %"struct.std::__va_list"* %19 to i8*, !dbg !1702
  %43 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !1702
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false), !dbg !1702
  call void @version_etc_va(%struct._IO_FILE* noundef %38, i8* noundef %39, i8* noundef %40, i8* noundef %41, %"struct.std::__va_list"* noundef %19), !dbg !1702
  call void @exit(i32 noundef 0) #20, !dbg !1703
  unreachable, !dbg !1703

44:                                               ; preds = %32
  %45 = load void (i32)*, void (i32)** %14, align 8, !dbg !1704
  %46 = load volatile i32, i32* @exit_failure, align 4, !dbg !1705
  call void %45(i32 noundef %46), !dbg !1706
  br label %47, !dbg !1707

47:                                               ; preds = %44, %34
  br label %48, !dbg !1708

48:                                               ; preds = %47, %7
  %49 = load i32, i32* %15, align 4, !dbg !1709
  store i32 %49, i32* @opterr, align 4, !dbg !1710
  ret void, !dbg !1711
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pipe2_safer(i32* noundef %0, i32 noundef %1) #4 !dbg !1712 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1713, metadata !DIExpression()), !dbg !1714
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1715, metadata !DIExpression()), !dbg !1716
  %8 = load i32*, i32** %4, align 8, !dbg !1717
  %9 = load i32, i32* %5, align 4, !dbg !1719
  %10 = call i32 @rpl_pipe2(i32* noundef %8, i32 noundef %9), !dbg !1720
  %11 = icmp eq i32 %10, 0, !dbg !1721
  br i1 %11, label %12, label %51, !dbg !1722

12:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1723, metadata !DIExpression()), !dbg !1726
  store i32 0, i32* %6, align 4, !dbg !1726
  br label %13, !dbg !1727

13:                                               ; preds = %47, %12
  %14 = load i32, i32* %6, align 4, !dbg !1728
  %15 = icmp slt i32 %14, 2, !dbg !1730
  br i1 %15, label %16, label %50, !dbg !1731

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8, !dbg !1732
  %18 = load i32, i32* %6, align 4, !dbg !1734
  %19 = sext i32 %18 to i64, !dbg !1732
  %20 = getelementptr inbounds i32, i32* %17, i64 %19, !dbg !1732
  %21 = load i32, i32* %20, align 4, !dbg !1732
  %22 = load i32, i32* %5, align 4, !dbg !1735
  %23 = call i32 @fd_safer_flag(i32 noundef %21, i32 noundef %22), !dbg !1736
  %24 = load i32*, i32** %4, align 8, !dbg !1737
  %25 = load i32, i32* %6, align 4, !dbg !1738
  %26 = sext i32 %25 to i64, !dbg !1737
  %27 = getelementptr inbounds i32, i32* %24, i64 %26, !dbg !1737
  store i32 %23, i32* %27, align 4, !dbg !1739
  %28 = load i32*, i32** %4, align 8, !dbg !1740
  %29 = load i32, i32* %6, align 4, !dbg !1742
  %30 = sext i32 %29 to i64, !dbg !1740
  %31 = getelementptr inbounds i32, i32* %28, i64 %30, !dbg !1740
  %32 = load i32, i32* %31, align 4, !dbg !1740
  %33 = icmp slt i32 %32, 0, !dbg !1743
  br i1 %33, label %34, label %46, !dbg !1744

34:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1745, metadata !DIExpression()), !dbg !1747
  %35 = call i32* @__errno_location() #22, !dbg !1748
  %36 = load i32, i32* %35, align 4, !dbg !1748
  store i32 %36, i32* %7, align 4, !dbg !1747
  %37 = load i32*, i32** %4, align 8, !dbg !1749
  %38 = load i32, i32* %6, align 4, !dbg !1750
  %39 = sub nsw i32 1, %38, !dbg !1751
  %40 = sext i32 %39 to i64, !dbg !1749
  %41 = getelementptr inbounds i32, i32* %37, i64 %40, !dbg !1749
  %42 = load i32, i32* %41, align 4, !dbg !1749
  %43 = call i32 @close(i32 noundef %42), !dbg !1752
  %44 = load i32, i32* %7, align 4, !dbg !1753
  %45 = call i32* @__errno_location() #22, !dbg !1754
  store i32 %44, i32* %45, align 4, !dbg !1755
  store i32 -1, i32* %3, align 4, !dbg !1756
  br label %52, !dbg !1756

46:                                               ; preds = %16
  br label %47, !dbg !1757

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4, !dbg !1758
  %49 = add nsw i32 %48, 1, !dbg !1758
  store i32 %49, i32* %6, align 4, !dbg !1758
  br label %13, !dbg !1759, !llvm.loop !1760

50:                                               ; preds = %13
  store i32 0, i32* %3, align 4, !dbg !1762
  br label %52, !dbg !1762

51:                                               ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1763
  br label %52, !dbg !1763

52:                                               ; preds = %51, %50, %34
  %53 = load i32, i32* %3, align 4, !dbg !1764
  ret i32 %53, !dbg !1764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1765 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1766, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1768, metadata !DIExpression()), !dbg !1769
  %5 = load i8*, i8** %2, align 8, !dbg !1770
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #21, !dbg !1771
  store i8* %6, i8** %3, align 8, !dbg !1769
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1772, metadata !DIExpression()), !dbg !1773
  %7 = load i8*, i8** %3, align 8, !dbg !1774
  %8 = icmp ne i8* %7, null, !dbg !1774
  br i1 %8, label %9, label %12, !dbg !1774

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1775
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1776
  br label %14, !dbg !1774

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1777
  br label %14, !dbg !1774

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1774
  store i8* %15, i8** %4, align 8, !dbg !1773
  %16 = load i8*, i8** %4, align 8, !dbg !1778
  %17 = load i8*, i8** %2, align 8, !dbg !1780
  %18 = ptrtoint i8* %16 to i64, !dbg !1781
  %19 = ptrtoint i8* %17 to i64, !dbg !1781
  %20 = sub i64 %18, %19, !dbg !1781
  %21 = icmp sle i64 7, %20, !dbg !1782
  br i1 %21, label %22, label %36, !dbg !1783

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1784
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1785
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i64 0, i64 0), i64 noundef 7), !dbg !1786
  br i1 %25, label %26, label %36, !dbg !1787

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1788
  store i8* %27, i8** %2, align 8, !dbg !1790
  %28 = load i8*, i8** %4, align 8, !dbg !1791
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.91, i64 0, i64 0), i64 noundef 3) #21, !dbg !1793
  %30 = icmp eq i32 %29, 0, !dbg !1794
  br i1 %30, label %31, label %35, !dbg !1795

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1796
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1796
  store i8* %33, i8** %4, align 8, !dbg !1796
  %34 = load i8*, i8** %4, align 8, !dbg !1798
  store i8* %34, i8** %2, align 8, !dbg !1799
  br label %35, !dbg !1800

35:                                               ; preds = %31, %26
  br label %36, !dbg !1801

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1802
  store i8* %37, i8** @program_name, align 8, !dbg !1803
  %38 = load i8*, i8** %2, align 8, !dbg !1804
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1805
  %39 = load i8*, i8** %4, align 8, !dbg !1806
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1807
  ret void, !dbg !1808
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !118 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1809, metadata !DIExpression()), !dbg !1810
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1811, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1813, metadata !DIExpression()), !dbg !1814
  %9 = load i8*, i8** %4, align 8, !dbg !1815
  %10 = call i8* @gettext(i8* noundef %9) #19, !dbg !1816
  store i8* %10, i8** %6, align 8, !dbg !1814
  %11 = load i8*, i8** %6, align 8, !dbg !1817
  %12 = load i8*, i8** %4, align 8, !dbg !1819
  %13 = icmp ne i8* %11, %12, !dbg !1820
  br i1 %13, label %14, label %16, !dbg !1821

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1822
  store i8* %15, i8** %3, align 8, !dbg !1823
  br label %26, !dbg !1823

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1824, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1830, metadata !DIExpression()), !dbg !1841
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1842
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #19, !dbg !1843
  %18 = icmp eq i64 %17, 2, !dbg !1845
  br i1 %18, label %19, label %24, !dbg !1846

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1847
  %21 = icmp eq i32 %20, 2047, !dbg !1848
  br i1 %21, label %22, label %24, !dbg !1849

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1850
  store i8* %23, i8** %3, align 8, !dbg !1851
  br label %26, !dbg !1851

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1852
  store i8* %25, i8** %3, align 8, !dbg !1853
  br label %26, !dbg !1853

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1854
  ret i8* %27, !dbg !1854
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1855 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1859, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1861, metadata !DIExpression()), !dbg !1862
  %5 = call i32* @__errno_location() #22, !dbg !1863
  %6 = load i32, i32* %5, align 4, !dbg !1863
  store i32 %6, i32* %3, align 4, !dbg !1862
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1864, metadata !DIExpression()), !dbg !1865
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1866
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1866
  br i1 %8, label %9, label %11, !dbg !1866

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1867
  br label %12, !dbg !1866

11:                                               ; preds = %1
  br label %12, !dbg !1866

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1866
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1866
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1868
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1868
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1865
  %17 = load i32, i32* %3, align 4, !dbg !1869
  %18 = call i32* @__errno_location() #22, !dbg !1870
  store i32 %17, i32* %18, align 4, !dbg !1871
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1872
  ret %struct.quoting_options* %19, !dbg !1873
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1874 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1879, metadata !DIExpression()), !dbg !1880
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1881
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1881
  br i1 %4, label %5, label %7, !dbg !1881

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1882
  br label %8, !dbg !1881

7:                                                ; preds = %1
  br label %8, !dbg !1881

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1881
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1883
  %11 = load i32, i32* %10, align 8, !dbg !1883
  ret i32 %11, !dbg !1884
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1885 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1888, metadata !DIExpression()), !dbg !1889
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1890, metadata !DIExpression()), !dbg !1891
  %5 = load i32, i32* %4, align 4, !dbg !1892
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1893
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1893
  br i1 %7, label %8, label %10, !dbg !1893

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1894
  br label %11, !dbg !1893

10:                                               ; preds = %2
  br label %11, !dbg !1893

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1893
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1895
  store i32 %5, i32* %13, align 8, !dbg !1896
  ret void, !dbg !1897
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1898 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1901, metadata !DIExpression()), !dbg !1902
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1903, metadata !DIExpression()), !dbg !1904
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1905, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1907, metadata !DIExpression()), !dbg !1908
  %11 = load i8, i8* %5, align 1, !dbg !1909
  store i8 %11, i8* %7, align 1, !dbg !1908
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1910, metadata !DIExpression()), !dbg !1912
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1913
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1913
  br i1 %13, label %14, label %16, !dbg !1913

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1914
  br label %17, !dbg !1913

16:                                               ; preds = %3
  br label %17, !dbg !1913

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1913
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1915
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1916
  %21 = load i8, i8* %7, align 1, !dbg !1917
  %22 = zext i8 %21 to i64, !dbg !1917
  %23 = udiv i64 %22, 32, !dbg !1918
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1919
  store i32* %24, i32** %8, align 8, !dbg !1912
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1920, metadata !DIExpression()), !dbg !1921
  %25 = load i8, i8* %7, align 1, !dbg !1922
  %26 = zext i8 %25 to i64, !dbg !1922
  %27 = urem i64 %26, 32, !dbg !1923
  %28 = trunc i64 %27 to i32, !dbg !1922
  store i32 %28, i32* %9, align 4, !dbg !1921
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1924, metadata !DIExpression()), !dbg !1925
  %29 = load i32*, i32** %8, align 8, !dbg !1926
  %30 = load i32, i32* %29, align 4, !dbg !1927
  %31 = load i32, i32* %9, align 4, !dbg !1928
  %32 = lshr i32 %30, %31, !dbg !1929
  %33 = and i32 %32, 1, !dbg !1930
  store i32 %33, i32* %10, align 4, !dbg !1925
  %34 = load i32, i32* %6, align 4, !dbg !1931
  %35 = and i32 %34, 1, !dbg !1932
  %36 = load i32, i32* %10, align 4, !dbg !1933
  %37 = xor i32 %35, %36, !dbg !1934
  %38 = load i32, i32* %9, align 4, !dbg !1935
  %39 = shl i32 %37, %38, !dbg !1936
  %40 = load i32*, i32** %8, align 8, !dbg !1937
  %41 = load i32, i32* %40, align 4, !dbg !1938
  %42 = xor i32 %41, %39, !dbg !1938
  store i32 %42, i32* %40, align 4, !dbg !1938
  %43 = load i32, i32* %10, align 4, !dbg !1939
  ret i32 %43, !dbg !1940
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1941 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1944, metadata !DIExpression()), !dbg !1945
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1946, metadata !DIExpression()), !dbg !1947
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1948
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1948
  br i1 %7, label %9, label %8, !dbg !1950

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1951
  br label %9, !dbg !1952

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1953, metadata !DIExpression()), !dbg !1954
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1955
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1956
  %12 = load i32, i32* %11, align 4, !dbg !1956
  store i32 %12, i32* %5, align 4, !dbg !1954
  %13 = load i32, i32* %4, align 4, !dbg !1957
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1958
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1959
  store i32 %13, i32* %15, align 4, !dbg !1960
  %16 = load i32, i32* %5, align 4, !dbg !1961
  ret i32 %16, !dbg !1962
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1963 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1966, metadata !DIExpression()), !dbg !1967
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1968, metadata !DIExpression()), !dbg !1969
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1970, metadata !DIExpression()), !dbg !1971
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1972
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1972
  br i1 %8, label %10, label %9, !dbg !1974

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1975
  br label %10, !dbg !1976

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1977
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1978
  store i32 10, i32* %12, align 8, !dbg !1979
  %13 = load i8*, i8** %5, align 8, !dbg !1980
  %14 = icmp ne i8* %13, null, !dbg !1980
  br i1 %14, label %15, label %18, !dbg !1982

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1983
  %17 = icmp ne i8* %16, null, !dbg !1983
  br i1 %17, label %19, label %18, !dbg !1984

18:                                               ; preds = %15, %10
  call void @abort() #20, !dbg !1985
  unreachable, !dbg !1985

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1986
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1987
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1988
  store i8* %20, i8** %22, align 8, !dbg !1989
  %23 = load i8*, i8** %6, align 8, !dbg !1990
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1991
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1992
  store i8* %23, i8** %25, align 8, !dbg !1993
  ret void, !dbg !1994
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1995 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1998, metadata !DIExpression()), !dbg !1999
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2000, metadata !DIExpression()), !dbg !2001
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2002, metadata !DIExpression()), !dbg !2003
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2004, metadata !DIExpression()), !dbg !2005
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !2006, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !2008, metadata !DIExpression()), !dbg !2009
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2010
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2010
  br i1 %15, label %16, label %18, !dbg !2010

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2011
  br label %19, !dbg !2010

18:                                               ; preds = %5
  br label %19, !dbg !2010

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2010
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !2009
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2012, metadata !DIExpression()), !dbg !2013
  %21 = call i32* @__errno_location() #22, !dbg !2014
  %22 = load i32, i32* %21, align 4, !dbg !2014
  store i32 %22, i32* %12, align 4, !dbg !2013
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2015, metadata !DIExpression()), !dbg !2016
  %23 = load i8*, i8** %6, align 8, !dbg !2017
  %24 = load i64, i64* %7, align 8, !dbg !2018
  %25 = load i8*, i8** %8, align 8, !dbg !2019
  %26 = load i64, i64* %9, align 8, !dbg !2020
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2021
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !2022
  %29 = load i32, i32* %28, align 8, !dbg !2022
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2023
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !2024
  %32 = load i32, i32* %31, align 4, !dbg !2024
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2025
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !2026
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !2025
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2027
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !2028
  %38 = load i8*, i8** %37, align 8, !dbg !2028
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2029
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !2030
  %41 = load i8*, i8** %40, align 8, !dbg !2030
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !2031
  store i64 %42, i64* %13, align 8, !dbg !2016
  %43 = load i32, i32* %12, align 4, !dbg !2032
  %44 = call i32* @__errno_location() #22, !dbg !2033
  store i32 %43, i32* %44, align 4, !dbg !2034
  %45 = load i64, i64* %13, align 8, !dbg !2035
  ret i64 %45, !dbg !2036
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !2037 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2042, metadata !DIExpression()), !dbg !2043
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2044, metadata !DIExpression()), !dbg !2045
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2046, metadata !DIExpression()), !dbg !2047
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2048, metadata !DIExpression()), !dbg !2049
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2050, metadata !DIExpression()), !dbg !2051
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2052, metadata !DIExpression()), !dbg !2053
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !2054, metadata !DIExpression()), !dbg !2055
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2056, metadata !DIExpression()), !dbg !2057
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !2058, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.declare(metadata i8* %20, metadata !2060, metadata !DIExpression()), !dbg !2061
  %44 = call i64 @__ctype_get_mb_cur_max() #19, !dbg !2062
  %45 = icmp eq i64 %44, 1, !dbg !2063
  %46 = zext i1 %45 to i8, !dbg !2061
  store i8 %46, i8* %20, align 1, !dbg !2061
  call void @llvm.dbg.declare(metadata i64* %21, metadata !2064, metadata !DIExpression()), !dbg !2065
  store i64 0, i64* %21, align 8, !dbg !2065
  call void @llvm.dbg.declare(metadata i64* %22, metadata !2066, metadata !DIExpression()), !dbg !2067
  store i64 0, i64* %22, align 8, !dbg !2067
  call void @llvm.dbg.declare(metadata i8** %23, metadata !2068, metadata !DIExpression()), !dbg !2069
  store i8* null, i8** %23, align 8, !dbg !2069
  call void @llvm.dbg.declare(metadata i64* %24, metadata !2070, metadata !DIExpression()), !dbg !2071
  store i64 0, i64* %24, align 8, !dbg !2071
  call void @llvm.dbg.declare(metadata i8* %25, metadata !2072, metadata !DIExpression()), !dbg !2073
  store i8 0, i8* %25, align 1, !dbg !2073
  call void @llvm.dbg.declare(metadata i8* %26, metadata !2074, metadata !DIExpression()), !dbg !2075
  %47 = load i32, i32* %16, align 4, !dbg !2076
  %48 = and i32 %47, 2, !dbg !2077
  %49 = icmp ne i32 %48, 0, !dbg !2078
  %50 = zext i1 %49 to i8, !dbg !2075
  store i8 %50, i8* %26, align 1, !dbg !2075
  call void @llvm.dbg.declare(metadata i8* %27, metadata !2079, metadata !DIExpression()), !dbg !2080
  store i8 0, i8* %27, align 1, !dbg !2080
  call void @llvm.dbg.declare(metadata i8* %28, metadata !2081, metadata !DIExpression()), !dbg !2082
  store i8 1, i8* %28, align 1, !dbg !2082
  br label %51, !dbg !2083

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !2084), !dbg !2085
  call void @llvm.dbg.declare(metadata i8* %29, metadata !2086, metadata !DIExpression()), !dbg !2087
  store i8 0, i8* %29, align 1, !dbg !2087
  %52 = load i32, i32* %15, align 4, !dbg !2088
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
  ], !dbg !2089

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !2090
  store i8 1, i8* %26, align 1, !dbg !2092
  br label %54, !dbg !2093

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !2094
  %56 = trunc i8 %55 to i1, !dbg !2094
  br i1 %56, label %70, label %57, !dbg !2096

57:                                               ; preds = %54
  br label %58, !dbg !2097

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !2098
  %60 = load i64, i64* %12, align 8, !dbg !2098
  %61 = icmp ult i64 %59, %60, !dbg !2098
  br i1 %61, label %62, label %66, !dbg !2101

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !2098
  %64 = load i64, i64* %21, align 8, !dbg !2098
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !2098
  store i8 34, i8* %65, align 1, !dbg !2098
  br label %66, !dbg !2098

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !2101
  %68 = add i64 %67, 1, !dbg !2101
  store i64 %68, i64* %21, align 8, !dbg !2101
  br label %69, !dbg !2101

69:                                               ; preds = %66
  br label %70, !dbg !2101

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !2102
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.104, i64 0, i64 0), i8** %23, align 8, !dbg !2103
  store i64 1, i64* %24, align 8, !dbg !2104
  br label %138, !dbg !2105

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2106
  store i8 0, i8* %26, align 1, !dbg !2107
  br label %138, !dbg !2108

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !2109
  %74 = icmp ne i32 %73, 10, !dbg !2112
  br i1 %74, label %75, label %80, !dbg !2113

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !2114
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.105, i64 0, i64 0), i32 noundef %76), !dbg !2116
  store i8* %77, i8** %18, align 8, !dbg !2117
  %78 = load i32, i32* %15, align 4, !dbg !2118
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), i32 noundef %78), !dbg !2119
  store i8* %79, i8** %19, align 8, !dbg !2120
  br label %80, !dbg !2121

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !2122
  %82 = trunc i8 %81 to i1, !dbg !2122
  br i1 %82, label %108, label %83, !dbg !2124

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !2125, metadata !DIExpression()), !dbg !2127
  %84 = load i8*, i8** %18, align 8, !dbg !2128
  store i8* %84, i8** %30, align 8, !dbg !2127
  br label %85, !dbg !2129

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !2130
  %87 = load i8, i8* %86, align 1, !dbg !2132
  %88 = icmp ne i8 %87, 0, !dbg !2133
  br i1 %88, label %89, label %107, !dbg !2133

89:                                               ; preds = %85
  br label %90, !dbg !2134

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !2135
  %92 = load i64, i64* %12, align 8, !dbg !2135
  %93 = icmp ult i64 %91, %92, !dbg !2135
  br i1 %93, label %94, label %100, !dbg !2138

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !2135
  %96 = load i8, i8* %95, align 1, !dbg !2135
  %97 = load i8*, i8** %11, align 8, !dbg !2135
  %98 = load i64, i64* %21, align 8, !dbg !2135
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2135
  store i8 %96, i8* %99, align 1, !dbg !2135
  br label %100, !dbg !2135

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !2138
  %102 = add i64 %101, 1, !dbg !2138
  store i64 %102, i64* %21, align 8, !dbg !2138
  br label %103, !dbg !2138

103:                                              ; preds = %100
  br label %104, !dbg !2138

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !2139
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !2139
  store i8* %106, i8** %30, align 8, !dbg !2139
  br label %85, !dbg !2140, !llvm.loop !2141

107:                                              ; preds = %85
  br label %108, !dbg !2142

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !2143
  %109 = load i8*, i8** %19, align 8, !dbg !2144
  store i8* %109, i8** %23, align 8, !dbg !2145
  %110 = load i8*, i8** %23, align 8, !dbg !2146
  %111 = call i64 @strlen(i8* noundef %110) #21, !dbg !2147
  store i64 %111, i64* %24, align 8, !dbg !2148
  br label %138, !dbg !2149

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2150
  br label %113, !dbg !2151

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !2152
  br label %114, !dbg !2153

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !2154
  %116 = trunc i8 %115 to i1, !dbg !2154
  br i1 %116, label %118, label %117, !dbg !2156

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !2157
  br label %118, !dbg !2158

118:                                              ; preds = %117, %114
  br label %119, !dbg !2154

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !2159
  %120 = load i8, i8* %26, align 1, !dbg !2160
  %121 = trunc i8 %120 to i1, !dbg !2160
  br i1 %121, label %135, label %122, !dbg !2162

122:                                              ; preds = %119
  br label %123, !dbg !2163

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !2164
  %125 = load i64, i64* %12, align 8, !dbg !2164
  %126 = icmp ult i64 %124, %125, !dbg !2164
  br i1 %126, label %127, label %131, !dbg !2167

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !2164
  %129 = load i64, i64* %21, align 8, !dbg !2164
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !2164
  store i8 39, i8* %130, align 1, !dbg !2164
  br label %131, !dbg !2164

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !2167
  %133 = add i64 %132, 1, !dbg !2167
  store i64 %133, i64* %21, align 8, !dbg !2167
  br label %134, !dbg !2167

134:                                              ; preds = %131
  br label %135, !dbg !2167

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), i8** %23, align 8, !dbg !2168
  store i64 1, i64* %24, align 8, !dbg !2169
  br label %138, !dbg !2170

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !2171
  br label %138, !dbg !2172

137:                                              ; preds = %51
  call void @abort() #20, !dbg !2173
  unreachable, !dbg !2173

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !2174, metadata !DIExpression()), !dbg !2176
  store i64 0, i64* %31, align 8, !dbg !2176
  br label %139, !dbg !2177

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !2178
  %141 = icmp eq i64 %140, -1, !dbg !2180
  br i1 %141, label %142, label %150, !dbg !2178

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !2181
  %144 = load i64, i64* %31, align 8, !dbg !2182
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !2181
  %146 = load i8, i8* %145, align 1, !dbg !2181
  %147 = zext i8 %146 to i32, !dbg !2181
  %148 = icmp eq i32 %147, 0, !dbg !2183
  %149 = zext i1 %148 to i32, !dbg !2183
  br label %155, !dbg !2178

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !2184
  %152 = load i64, i64* %14, align 8, !dbg !2185
  %153 = icmp eq i64 %151, %152, !dbg !2186
  %154 = zext i1 %153 to i32, !dbg !2186
  br label %155, !dbg !2178

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !2178
  %157 = icmp ne i32 %156, 0, !dbg !2187
  %158 = xor i1 %157, true, !dbg !2187
  br i1 %158, label %159, label %996, !dbg !2188

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !2189, metadata !DIExpression()), !dbg !2191
  store i8 0, i8* %32, align 1, !dbg !2191
  call void @llvm.dbg.declare(metadata i8* %33, metadata !2192, metadata !DIExpression()), !dbg !2193
  store i8 0, i8* %33, align 1, !dbg !2193
  call void @llvm.dbg.declare(metadata i8* %34, metadata !2194, metadata !DIExpression()), !dbg !2195
  store i8 0, i8* %34, align 1, !dbg !2195
  %160 = load i8, i8* %25, align 1, !dbg !2196
  %161 = trunc i8 %160 to i1, !dbg !2196
  br i1 %161, label %162, label %197, !dbg !2198

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !2199
  %164 = icmp ne i32 %163, 2, !dbg !2200
  br i1 %164, label %165, label %197, !dbg !2201

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !2202
  %167 = icmp ne i64 %166, 0, !dbg !2202
  br i1 %167, label %168, label %197, !dbg !2203

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !2204
  %170 = load i64, i64* %24, align 8, !dbg !2205
  %171 = add i64 %169, %170, !dbg !2206
  %172 = load i64, i64* %14, align 8, !dbg !2207
  %173 = icmp eq i64 %172, -1, !dbg !2208
  br i1 %173, label %174, label %180, !dbg !2209

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !2210
  %176 = icmp ult i64 1, %175, !dbg !2211
  br i1 %176, label %177, label %180, !dbg !2207

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !2212
  %179 = call i64 @strlen(i8* noundef %178) #21, !dbg !2213
  store i64 %179, i64* %14, align 8, !dbg !2214
  br label %182, !dbg !2207

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !2215
  br label %182, !dbg !2207

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !2207
  %184 = icmp ule i64 %171, %183, !dbg !2216
  br i1 %184, label %185, label %197, !dbg !2217

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !2218
  %187 = load i64, i64* %31, align 8, !dbg !2219
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !2220
  %189 = load i8*, i8** %23, align 8, !dbg !2221
  %190 = load i64, i64* %24, align 8, !dbg !2222
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !2223
  br i1 %191, label %192, label %197, !dbg !2224

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !2225
  %194 = trunc i8 %193 to i1, !dbg !2225
  br i1 %194, label %195, label %196, !dbg !2228

195:                                              ; preds = %192
  br label %1078, !dbg !2229

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !2230
  br label %197, !dbg !2231

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !2232, metadata !DIExpression()), !dbg !2233
  %198 = load i8*, i8** %13, align 8, !dbg !2234
  %199 = load i64, i64* %31, align 8, !dbg !2235
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !2234
  %201 = load i8, i8* %200, align 1, !dbg !2234
  store i8 %201, i8* %35, align 1, !dbg !2233
  %202 = load i8, i8* %35, align 1, !dbg !2236
  %203 = zext i8 %202 to i32, !dbg !2236
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
  ], !dbg !2237

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !2238
  %206 = trunc i8 %205 to i1, !dbg !2238
  br i1 %206, label %207, label %318, !dbg !2241

207:                                              ; preds = %204
  br label %208, !dbg !2242

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !2244
  %210 = trunc i8 %209 to i1, !dbg !2244
  br i1 %210, label %211, label %212, !dbg !2247

211:                                              ; preds = %208
  br label %1078, !dbg !2244

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !2247
  %213 = load i32, i32* %15, align 4, !dbg !2248
  %214 = icmp eq i32 %213, 2, !dbg !2248
  br i1 %214, label %215, label %255, !dbg !2248

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !2248
  %217 = trunc i8 %216 to i1, !dbg !2248
  br i1 %217, label %255, label %218, !dbg !2247

218:                                              ; preds = %215
  br label %219, !dbg !2250

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !2252
  %221 = load i64, i64* %12, align 8, !dbg !2252
  %222 = icmp ult i64 %220, %221, !dbg !2252
  br i1 %222, label %223, label %227, !dbg !2255

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !2252
  %225 = load i64, i64* %21, align 8, !dbg !2252
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !2252
  store i8 39, i8* %226, align 1, !dbg !2252
  br label %227, !dbg !2252

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !2255
  %229 = add i64 %228, 1, !dbg !2255
  store i64 %229, i64* %21, align 8, !dbg !2255
  br label %230, !dbg !2255

230:                                              ; preds = %227
  br label %231, !dbg !2250

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !2256
  %233 = load i64, i64* %12, align 8, !dbg !2256
  %234 = icmp ult i64 %232, %233, !dbg !2256
  br i1 %234, label %235, label %239, !dbg !2259

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !2256
  %237 = load i64, i64* %21, align 8, !dbg !2256
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !2256
  store i8 36, i8* %238, align 1, !dbg !2256
  br label %239, !dbg !2256

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !2259
  %241 = add i64 %240, 1, !dbg !2259
  store i64 %241, i64* %21, align 8, !dbg !2259
  br label %242, !dbg !2259

242:                                              ; preds = %239
  br label %243, !dbg !2250

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !2260
  %245 = load i64, i64* %12, align 8, !dbg !2260
  %246 = icmp ult i64 %244, %245, !dbg !2260
  br i1 %246, label %247, label %251, !dbg !2263

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !2260
  %249 = load i64, i64* %21, align 8, !dbg !2260
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !2260
  store i8 39, i8* %250, align 1, !dbg !2260
  br label %251, !dbg !2260

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !2263
  %253 = add i64 %252, 1, !dbg !2263
  store i64 %253, i64* %21, align 8, !dbg !2263
  br label %254, !dbg !2263

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !2250
  br label %255, !dbg !2250

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !2247

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !2264
  %258 = load i64, i64* %12, align 8, !dbg !2264
  %259 = icmp ult i64 %257, %258, !dbg !2264
  br i1 %259, label %260, label %264, !dbg !2267

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !2264
  %262 = load i64, i64* %21, align 8, !dbg !2264
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !2264
  store i8 92, i8* %263, align 1, !dbg !2264
  br label %264, !dbg !2264

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !2267
  %266 = add i64 %265, 1, !dbg !2267
  store i64 %266, i64* %21, align 8, !dbg !2267
  br label %267, !dbg !2267

267:                                              ; preds = %264
  br label %268, !dbg !2247

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !2268
  %270 = icmp ne i32 %269, 2, !dbg !2270
  br i1 %270, label %271, label %317, !dbg !2271

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !2272
  %273 = add i64 %272, 1, !dbg !2273
  %274 = load i64, i64* %14, align 8, !dbg !2274
  %275 = icmp ult i64 %273, %274, !dbg !2275
  br i1 %275, label %276, label %317, !dbg !2276

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !2277
  %278 = load i64, i64* %31, align 8, !dbg !2278
  %279 = add i64 %278, 1, !dbg !2279
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !2277
  %281 = load i8, i8* %280, align 1, !dbg !2277
  %282 = zext i8 %281 to i32, !dbg !2277
  %283 = icmp sle i32 48, %282, !dbg !2280
  br i1 %283, label %284, label %317, !dbg !2281

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !2282
  %286 = load i64, i64* %31, align 8, !dbg !2283
  %287 = add i64 %286, 1, !dbg !2284
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !2282
  %289 = load i8, i8* %288, align 1, !dbg !2282
  %290 = zext i8 %289 to i32, !dbg !2282
  %291 = icmp sle i32 %290, 57, !dbg !2285
  br i1 %291, label %292, label %317, !dbg !2286

292:                                              ; preds = %284
  br label %293, !dbg !2287

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !2289
  %295 = load i64, i64* %12, align 8, !dbg !2289
  %296 = icmp ult i64 %294, %295, !dbg !2289
  br i1 %296, label %297, label %301, !dbg !2292

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !2289
  %299 = load i64, i64* %21, align 8, !dbg !2289
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !2289
  store i8 48, i8* %300, align 1, !dbg !2289
  br label %301, !dbg !2289

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !2292
  %303 = add i64 %302, 1, !dbg !2292
  store i64 %303, i64* %21, align 8, !dbg !2292
  br label %304, !dbg !2292

304:                                              ; preds = %301
  br label %305, !dbg !2293

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !2294
  %307 = load i64, i64* %12, align 8, !dbg !2294
  %308 = icmp ult i64 %306, %307, !dbg !2294
  br i1 %308, label %309, label %313, !dbg !2297

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !2294
  %311 = load i64, i64* %21, align 8, !dbg !2294
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !2294
  store i8 48, i8* %312, align 1, !dbg !2294
  br label %313, !dbg !2294

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !2297
  %315 = add i64 %314, 1, !dbg !2297
  store i64 %315, i64* %21, align 8, !dbg !2297
  br label %316, !dbg !2297

316:                                              ; preds = %313
  br label %317, !dbg !2298

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !2299
  br label %324, !dbg !2300

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !2301
  %320 = and i32 %319, 1, !dbg !2303
  %321 = icmp ne i32 %320, 0, !dbg !2303
  br i1 %321, label %322, label %323, !dbg !2304

322:                                              ; preds = %318
  br label %993, !dbg !2305

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !2306

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !2307
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !2308

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !2309
  %329 = trunc i8 %328 to i1, !dbg !2309
  br i1 %329, label %330, label %331, !dbg !2312

330:                                              ; preds = %327
  br label %1078, !dbg !2313

331:                                              ; preds = %327
  br label %418, !dbg !2314

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !2315
  %334 = and i32 %333, 4, !dbg !2317
  %335 = icmp ne i32 %334, 0, !dbg !2317
  br i1 %335, label %336, label %417, !dbg !2318

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !2319
  %338 = add i64 %337, 2, !dbg !2320
  %339 = load i64, i64* %14, align 8, !dbg !2321
  %340 = icmp ult i64 %338, %339, !dbg !2322
  br i1 %340, label %341, label %417, !dbg !2323

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !2324
  %343 = load i64, i64* %31, align 8, !dbg !2325
  %344 = add i64 %343, 1, !dbg !2326
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !2324
  %346 = load i8, i8* %345, align 1, !dbg !2324
  %347 = zext i8 %346 to i32, !dbg !2324
  %348 = icmp eq i32 %347, 63, !dbg !2327
  br i1 %348, label %349, label %417, !dbg !2328

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !2329
  %351 = load i64, i64* %31, align 8, !dbg !2330
  %352 = add i64 %351, 2, !dbg !2331
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !2329
  %354 = load i8, i8* %353, align 1, !dbg !2329
  %355 = zext i8 %354 to i32, !dbg !2329
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
  ], !dbg !2332

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !2333
  %358 = trunc i8 %357 to i1, !dbg !2333
  br i1 %358, label %359, label %360, !dbg !2336

359:                                              ; preds = %356
  br label %1078, !dbg !2337

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !2338
  %362 = load i64, i64* %31, align 8, !dbg !2339
  %363 = add i64 %362, 2, !dbg !2340
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !2338
  %365 = load i8, i8* %364, align 1, !dbg !2338
  store i8 %365, i8* %35, align 1, !dbg !2341
  %366 = load i64, i64* %31, align 8, !dbg !2342
  %367 = add i64 %366, 2, !dbg !2342
  store i64 %367, i64* %31, align 8, !dbg !2342
  br label %368, !dbg !2343

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !2344
  %370 = load i64, i64* %12, align 8, !dbg !2344
  %371 = icmp ult i64 %369, %370, !dbg !2344
  br i1 %371, label %372, label %376, !dbg !2347

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !2344
  %374 = load i64, i64* %21, align 8, !dbg !2344
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !2344
  store i8 63, i8* %375, align 1, !dbg !2344
  br label %376, !dbg !2344

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !2347
  %378 = add i64 %377, 1, !dbg !2347
  store i64 %378, i64* %21, align 8, !dbg !2347
  br label %379, !dbg !2347

379:                                              ; preds = %376
  br label %380, !dbg !2348

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !2349
  %382 = load i64, i64* %12, align 8, !dbg !2349
  %383 = icmp ult i64 %381, %382, !dbg !2349
  br i1 %383, label %384, label %388, !dbg !2352

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !2349
  %386 = load i64, i64* %21, align 8, !dbg !2349
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !2349
  store i8 34, i8* %387, align 1, !dbg !2349
  br label %388, !dbg !2349

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !2352
  %390 = add i64 %389, 1, !dbg !2352
  store i64 %390, i64* %21, align 8, !dbg !2352
  br label %391, !dbg !2352

391:                                              ; preds = %388
  br label %392, !dbg !2353

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !2354
  %394 = load i64, i64* %12, align 8, !dbg !2354
  %395 = icmp ult i64 %393, %394, !dbg !2354
  br i1 %395, label %396, label %400, !dbg !2357

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !2354
  %398 = load i64, i64* %21, align 8, !dbg !2354
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !2354
  store i8 34, i8* %399, align 1, !dbg !2354
  br label %400, !dbg !2354

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !2357
  %402 = add i64 %401, 1, !dbg !2357
  store i64 %402, i64* %21, align 8, !dbg !2357
  br label %403, !dbg !2357

403:                                              ; preds = %400
  br label %404, !dbg !2358

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !2359
  %406 = load i64, i64* %12, align 8, !dbg !2359
  %407 = icmp ult i64 %405, %406, !dbg !2359
  br i1 %407, label %408, label %412, !dbg !2362

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !2359
  %410 = load i64, i64* %21, align 8, !dbg !2359
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !2359
  store i8 63, i8* %411, align 1, !dbg !2359
  br label %412, !dbg !2359

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !2362
  %414 = add i64 %413, 1, !dbg !2362
  store i64 %414, i64* %21, align 8, !dbg !2362
  br label %415, !dbg !2362

415:                                              ; preds = %412
  br label %416, !dbg !2363

416:                                              ; preds = %349, %415
  br label %417, !dbg !2364

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !2365

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !2366

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !2367
  br label %454, !dbg !2369

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !2370
  br label %454, !dbg !2371

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !2372
  br label %454, !dbg !2373

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !2374
  br label %446, !dbg !2375

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !2376
  br label %446, !dbg !2377

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !2378
  br label %446, !dbg !2379

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !2380
  br label %454, !dbg !2381

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !2382
  store i8 %427, i8* %36, align 1, !dbg !2383
  %428 = load i32, i32* %15, align 4, !dbg !2384
  %429 = icmp eq i32 %428, 2, !dbg !2386
  br i1 %429, label %430, label %435, !dbg !2387

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !2388
  %432 = trunc i8 %431 to i1, !dbg !2388
  br i1 %432, label %433, label %434, !dbg !2391

433:                                              ; preds = %430
  br label %1078, !dbg !2392

434:                                              ; preds = %430
  br label %942, !dbg !2393

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !2394
  %437 = trunc i8 %436 to i1, !dbg !2394
  br i1 %437, label %438, label %445, !dbg !2396

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !2397
  %440 = trunc i8 %439 to i1, !dbg !2397
  br i1 %440, label %441, label %445, !dbg !2398

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !2399
  %443 = icmp ne i64 %442, 0, !dbg !2399
  br i1 %443, label %444, label %445, !dbg !2400

444:                                              ; preds = %441
  br label %942, !dbg !2401

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !2399

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !2402), !dbg !2403
  %447 = load i32, i32* %15, align 4, !dbg !2404
  %448 = icmp eq i32 %447, 2, !dbg !2406
  br i1 %448, label %449, label %453, !dbg !2407

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !2408
  %451 = trunc i8 %450 to i1, !dbg !2408
  br i1 %451, label %452, label %453, !dbg !2409

452:                                              ; preds = %449
  br label %1078, !dbg !2410

453:                                              ; preds = %449, %446
  br label %454, !dbg !2408

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !2411), !dbg !2412
  %455 = load i8, i8* %25, align 1, !dbg !2413
  %456 = trunc i8 %455 to i1, !dbg !2413
  br i1 %456, label %457, label %459, !dbg !2415

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !2416
  store i8 %458, i8* %35, align 1, !dbg !2418
  br label %880, !dbg !2419

459:                                              ; preds = %454
  br label %849, !dbg !2420

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !2421
  %462 = icmp eq i64 %461, -1, !dbg !2423
  br i1 %462, label %463, label %469, !dbg !2424

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !2425
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !2425
  %466 = load i8, i8* %465, align 1, !dbg !2425
  %467 = zext i8 %466 to i32, !dbg !2425
  %468 = icmp eq i32 %467, 0, !dbg !2426
  br i1 %468, label %473, label %472, !dbg !2421

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !2427
  %471 = icmp eq i64 %470, 1, !dbg !2428
  br i1 %471, label %473, label %472, !dbg !2424

472:                                              ; preds = %469, %463
  br label %849, !dbg !2429

473:                                              ; preds = %469, %463
  br label %474, !dbg !2430

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !2431
  %476 = icmp ne i64 %475, 0, !dbg !2433
  br i1 %476, label %477, label %478, !dbg !2434

477:                                              ; preds = %474
  br label %849, !dbg !2435

478:                                              ; preds = %474
  br label %479, !dbg !2436

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !2437
  br label %480, !dbg !2438

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !2439
  %482 = icmp eq i32 %481, 2, !dbg !2441
  br i1 %482, label %483, label %487, !dbg !2442

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !2443
  %485 = trunc i8 %484 to i1, !dbg !2443
  br i1 %485, label %486, label %487, !dbg !2444

486:                                              ; preds = %483
  br label %1078, !dbg !2445

487:                                              ; preds = %483, %480
  br label %849, !dbg !2446

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !2447
  store i8 1, i8* %34, align 1, !dbg !2448
  %489 = load i32, i32* %15, align 4, !dbg !2449
  %490 = icmp eq i32 %489, 2, !dbg !2451
  br i1 %490, label %491, label %540, !dbg !2452

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !2453
  %493 = trunc i8 %492 to i1, !dbg !2453
  br i1 %493, label %494, label %495, !dbg !2456

494:                                              ; preds = %491
  br label %1078, !dbg !2457

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !2458
  %497 = icmp ne i64 %496, 0, !dbg !2458
  br i1 %497, label %498, label %503, !dbg !2460

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !2461
  %500 = icmp ne i64 %499, 0, !dbg !2461
  br i1 %500, label %503, label %501, !dbg !2462

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !2463
  store i64 %502, i64* %22, align 8, !dbg !2465
  store i64 0, i64* %12, align 8, !dbg !2466
  br label %503, !dbg !2467

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !2468

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !2469
  %506 = load i64, i64* %12, align 8, !dbg !2469
  %507 = icmp ult i64 %505, %506, !dbg !2469
  br i1 %507, label %508, label %512, !dbg !2472

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !2469
  %510 = load i64, i64* %21, align 8, !dbg !2469
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !2469
  store i8 39, i8* %511, align 1, !dbg !2469
  br label %512, !dbg !2469

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !2472
  %514 = add i64 %513, 1, !dbg !2472
  store i64 %514, i64* %21, align 8, !dbg !2472
  br label %515, !dbg !2472

515:                                              ; preds = %512
  br label %516, !dbg !2473

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !2474
  %518 = load i64, i64* %12, align 8, !dbg !2474
  %519 = icmp ult i64 %517, %518, !dbg !2474
  br i1 %519, label %520, label %524, !dbg !2477

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !2474
  %522 = load i64, i64* %21, align 8, !dbg !2474
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !2474
  store i8 92, i8* %523, align 1, !dbg !2474
  br label %524, !dbg !2474

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !2477
  %526 = add i64 %525, 1, !dbg !2477
  store i64 %526, i64* %21, align 8, !dbg !2477
  br label %527, !dbg !2477

527:                                              ; preds = %524
  br label %528, !dbg !2478

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !2479
  %530 = load i64, i64* %12, align 8, !dbg !2479
  %531 = icmp ult i64 %529, %530, !dbg !2479
  br i1 %531, label %532, label %536, !dbg !2482

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !2479
  %534 = load i64, i64* %21, align 8, !dbg !2479
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !2479
  store i8 39, i8* %535, align 1, !dbg !2479
  br label %536, !dbg !2479

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !2482
  %538 = add i64 %537, 1, !dbg !2482
  store i64 %538, i64* %21, align 8, !dbg !2482
  br label %539, !dbg !2482

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !2483
  br label %540, !dbg !2484

540:                                              ; preds = %539, %488
  br label %849, !dbg !2485

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !2486
  br label %849, !dbg !2487

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !2488, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.declare(metadata i8* %38, metadata !2491, metadata !DIExpression()), !dbg !2492
  %543 = load i8, i8* %20, align 1, !dbg !2493
  %544 = trunc i8 %543 to i1, !dbg !2493
  br i1 %544, label %545, label %557, !dbg !2495

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !2496
  %546 = call i16** @__ctype_b_loc() #22, !dbg !2498
  %547 = load i16*, i16** %546, align 8, !dbg !2498
  %548 = load i8, i8* %35, align 1, !dbg !2498
  %549 = zext i8 %548 to i32, !dbg !2498
  %550 = sext i32 %549 to i64, !dbg !2498
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !2498
  %552 = load i16, i16* %551, align 2, !dbg !2498
  %553 = zext i16 %552 to i32, !dbg !2498
  %554 = and i32 %553, 16384, !dbg !2498
  %555 = icmp ne i32 %554, 0, !dbg !2499
  %556 = zext i1 %555 to i8, !dbg !2500
  store i8 %556, i8* %38, align 1, !dbg !2500
  br label %648, !dbg !2501

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !2502, metadata !DIExpression()), !dbg !2514
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !2515
  store i64 0, i64* %37, align 8, !dbg !2516
  store i8 1, i8* %38, align 1, !dbg !2517
  %558 = load i64, i64* %14, align 8, !dbg !2518
  %559 = icmp eq i64 %558, -1, !dbg !2520
  br i1 %559, label %560, label %563, !dbg !2521

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !2522
  %562 = call i64 @strlen(i8* noundef %561) #21, !dbg !2523
  store i64 %562, i64* %14, align 8, !dbg !2524
  br label %563, !dbg !2525

563:                                              ; preds = %560, %557
  br label %564, !dbg !2526

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2527, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2532, metadata !DIExpression()), !dbg !2533
  %565 = load i8*, i8** %13, align 8, !dbg !2534
  %566 = load i64, i64* %31, align 8, !dbg !2535
  %567 = load i64, i64* %37, align 8, !dbg !2536
  %568 = add i64 %566, %567, !dbg !2537
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2534
  %570 = load i64, i64* %14, align 8, !dbg !2538
  %571 = load i64, i64* %31, align 8, !dbg !2539
  %572 = load i64, i64* %37, align 8, !dbg !2540
  %573 = add i64 %571, %572, !dbg !2541
  %574 = sub i64 %570, %573, !dbg !2542
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2543
  store i64 %575, i64* %41, align 8, !dbg !2533
  %576 = load i64, i64* %41, align 8, !dbg !2544
  %577 = icmp eq i64 %576, 0, !dbg !2546
  br i1 %577, label %578, label %579, !dbg !2547

578:                                              ; preds = %564
  br label %647, !dbg !2548

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2549
  %581 = icmp eq i64 %580, -1, !dbg !2551
  br i1 %581, label %582, label %583, !dbg !2552

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2553
  br label %647, !dbg !2555

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2556
  %585 = icmp eq i64 %584, -2, !dbg !2558
  br i1 %585, label %586, label %608, !dbg !2559

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !2560
  br label %587, !dbg !2562

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !2563
  %589 = load i64, i64* %37, align 8, !dbg !2564
  %590 = add i64 %588, %589, !dbg !2565
  %591 = load i64, i64* %14, align 8, !dbg !2566
  %592 = icmp ult i64 %590, %591, !dbg !2567
  br i1 %592, label %593, label %602, !dbg !2568

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2569
  %595 = load i64, i64* %31, align 8, !dbg !2570
  %596 = load i64, i64* %37, align 8, !dbg !2571
  %597 = add i64 %595, %596, !dbg !2572
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2569
  %599 = load i8, i8* %598, align 1, !dbg !2569
  %600 = zext i8 %599 to i32, !dbg !2569
  %601 = icmp ne i32 %600, 0, !dbg !2568
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2573
  br i1 %603, label %604, label %607, !dbg !2562

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2574
  %606 = add i64 %605, 1, !dbg !2574
  store i64 %606, i64* %37, align 8, !dbg !2574
  br label %587, !dbg !2562, !llvm.loop !2575

607:                                              ; preds = %602
  br label %647, !dbg !2576

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2577
  %610 = trunc i8 %609 to i1, !dbg !2577
  br i1 %610, label %611, label %635, !dbg !2580

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2581
  %613 = icmp eq i32 %612, 2, !dbg !2582
  br i1 %613, label %614, label %635, !dbg !2583

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2584, metadata !DIExpression()), !dbg !2587
  store i64 1, i64* %42, align 8, !dbg !2587
  br label %615, !dbg !2588

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2589
  %617 = load i64, i64* %41, align 8, !dbg !2591
  %618 = icmp ult i64 %616, %617, !dbg !2592
  br i1 %618, label %619, label %634, !dbg !2593

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2594
  %621 = load i64, i64* %31, align 8, !dbg !2595
  %622 = load i64, i64* %37, align 8, !dbg !2596
  %623 = add i64 %621, %622, !dbg !2597
  %624 = load i64, i64* %42, align 8, !dbg !2598
  %625 = add i64 %623, %624, !dbg !2599
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2594
  %627 = load i8, i8* %626, align 1, !dbg !2594
  %628 = zext i8 %627 to i32, !dbg !2594
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2600

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2601

630:                                              ; preds = %619
  br label %631, !dbg !2603

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2604
  %633 = add i64 %632, 1, !dbg !2604
  store i64 %633, i64* %42, align 8, !dbg !2604
  br label %615, !dbg !2605, !llvm.loop !2606

634:                                              ; preds = %615
  br label %635, !dbg !2608

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2609
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2611
  %638 = icmp ne i32 %637, 0, !dbg !2611
  br i1 %638, label %640, label %639, !dbg !2612

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2613
  br label %640, !dbg !2614

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2615
  %642 = load i64, i64* %37, align 8, !dbg !2616
  %643 = add i64 %642, %641, !dbg !2616
  store i64 %643, i64* %37, align 8, !dbg !2616
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2617

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2618
  %650 = trunc i8 %649 to i1, !dbg !2618
  %651 = zext i1 %650 to i8, !dbg !2619
  store i8 %651, i8* %34, align 1, !dbg !2619
  %652 = load i64, i64* %37, align 8, !dbg !2620
  %653 = icmp ult i64 1, %652, !dbg !2622
  br i1 %653, label %660, label %654, !dbg !2623

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2624
  %656 = trunc i8 %655 to i1, !dbg !2624
  br i1 %656, label %657, label %848, !dbg !2625

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2626
  %659 = trunc i8 %658 to i1, !dbg !2626
  br i1 %659, label %848, label %660, !dbg !2627

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2628, metadata !DIExpression()), !dbg !2630
  %661 = load i64, i64* %31, align 8, !dbg !2631
  %662 = load i64, i64* %37, align 8, !dbg !2632
  %663 = add i64 %661, %662, !dbg !2633
  store i64 %663, i64* %43, align 8, !dbg !2630
  br label %664, !dbg !2634

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2635
  %666 = trunc i8 %665 to i1, !dbg !2635
  br i1 %666, label %667, label %772, !dbg !2640

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2641
  %669 = trunc i8 %668 to i1, !dbg !2641
  br i1 %669, label %772, label %670, !dbg !2642

670:                                              ; preds = %667
  br label %671, !dbg !2643

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2645
  %673 = trunc i8 %672 to i1, !dbg !2645
  br i1 %673, label %674, label %675, !dbg !2648

674:                                              ; preds = %671
  br label %1078, !dbg !2645

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2648
  %676 = load i32, i32* %15, align 4, !dbg !2649
  %677 = icmp eq i32 %676, 2, !dbg !2649
  br i1 %677, label %678, label %718, !dbg !2649

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2649
  %680 = trunc i8 %679 to i1, !dbg !2649
  br i1 %680, label %718, label %681, !dbg !2648

681:                                              ; preds = %678
  br label %682, !dbg !2651

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2653
  %684 = load i64, i64* %12, align 8, !dbg !2653
  %685 = icmp ult i64 %683, %684, !dbg !2653
  br i1 %685, label %686, label %690, !dbg !2656

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2653
  %688 = load i64, i64* %21, align 8, !dbg !2653
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2653
  store i8 39, i8* %689, align 1, !dbg !2653
  br label %690, !dbg !2653

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2656
  %692 = add i64 %691, 1, !dbg !2656
  store i64 %692, i64* %21, align 8, !dbg !2656
  br label %693, !dbg !2656

693:                                              ; preds = %690
  br label %694, !dbg !2651

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2657
  %696 = load i64, i64* %12, align 8, !dbg !2657
  %697 = icmp ult i64 %695, %696, !dbg !2657
  br i1 %697, label %698, label %702, !dbg !2660

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2657
  %700 = load i64, i64* %21, align 8, !dbg !2657
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2657
  store i8 36, i8* %701, align 1, !dbg !2657
  br label %702, !dbg !2657

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2660
  %704 = add i64 %703, 1, !dbg !2660
  store i64 %704, i64* %21, align 8, !dbg !2660
  br label %705, !dbg !2660

705:                                              ; preds = %702
  br label %706, !dbg !2651

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2661
  %708 = load i64, i64* %12, align 8, !dbg !2661
  %709 = icmp ult i64 %707, %708, !dbg !2661
  br i1 %709, label %710, label %714, !dbg !2664

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2661
  %712 = load i64, i64* %21, align 8, !dbg !2661
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2661
  store i8 39, i8* %713, align 1, !dbg !2661
  br label %714, !dbg !2661

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2664
  %716 = add i64 %715, 1, !dbg !2664
  store i64 %716, i64* %21, align 8, !dbg !2664
  br label %717, !dbg !2664

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2651
  br label %718, !dbg !2651

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2648

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2665
  %721 = load i64, i64* %12, align 8, !dbg !2665
  %722 = icmp ult i64 %720, %721, !dbg !2665
  br i1 %722, label %723, label %727, !dbg !2668

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2665
  %725 = load i64, i64* %21, align 8, !dbg !2665
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2665
  store i8 92, i8* %726, align 1, !dbg !2665
  br label %727, !dbg !2665

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2668
  %729 = add i64 %728, 1, !dbg !2668
  store i64 %729, i64* %21, align 8, !dbg !2668
  br label %730, !dbg !2668

730:                                              ; preds = %727
  br label %731, !dbg !2648

731:                                              ; preds = %730
  br label %732, !dbg !2669

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2670
  %734 = load i64, i64* %12, align 8, !dbg !2670
  %735 = icmp ult i64 %733, %734, !dbg !2670
  br i1 %735, label %736, label %745, !dbg !2673

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2670
  %738 = zext i8 %737 to i32, !dbg !2670
  %739 = ashr i32 %738, 6, !dbg !2670
  %740 = add nsw i32 48, %739, !dbg !2670
  %741 = trunc i32 %740 to i8, !dbg !2670
  %742 = load i8*, i8** %11, align 8, !dbg !2670
  %743 = load i64, i64* %21, align 8, !dbg !2670
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2670
  store i8 %741, i8* %744, align 1, !dbg !2670
  br label %745, !dbg !2670

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2673
  %747 = add i64 %746, 1, !dbg !2673
  store i64 %747, i64* %21, align 8, !dbg !2673
  br label %748, !dbg !2673

748:                                              ; preds = %745
  br label %749, !dbg !2674

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2675
  %751 = load i64, i64* %12, align 8, !dbg !2675
  %752 = icmp ult i64 %750, %751, !dbg !2675
  br i1 %752, label %753, label %763, !dbg !2678

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2675
  %755 = zext i8 %754 to i32, !dbg !2675
  %756 = ashr i32 %755, 3, !dbg !2675
  %757 = and i32 %756, 7, !dbg !2675
  %758 = add nsw i32 48, %757, !dbg !2675
  %759 = trunc i32 %758 to i8, !dbg !2675
  %760 = load i8*, i8** %11, align 8, !dbg !2675
  %761 = load i64, i64* %21, align 8, !dbg !2675
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2675
  store i8 %759, i8* %762, align 1, !dbg !2675
  br label %763, !dbg !2675

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2678
  %765 = add i64 %764, 1, !dbg !2678
  store i64 %765, i64* %21, align 8, !dbg !2678
  br label %766, !dbg !2678

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2679
  %768 = zext i8 %767 to i32, !dbg !2679
  %769 = and i32 %768, 7, !dbg !2680
  %770 = add nsw i32 48, %769, !dbg !2681
  %771 = trunc i32 %770 to i8, !dbg !2682
  store i8 %771, i8* %35, align 1, !dbg !2683
  br label %789, !dbg !2684

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2685
  %774 = trunc i8 %773 to i1, !dbg !2685
  br i1 %774, label %775, label %788, !dbg !2687

775:                                              ; preds = %772
  br label %776, !dbg !2688

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2690
  %778 = load i64, i64* %12, align 8, !dbg !2690
  %779 = icmp ult i64 %777, %778, !dbg !2690
  br i1 %779, label %780, label %784, !dbg !2693

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2690
  %782 = load i64, i64* %21, align 8, !dbg !2690
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2690
  store i8 92, i8* %783, align 1, !dbg !2690
  br label %784, !dbg !2690

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2693
  %786 = add i64 %785, 1, !dbg !2693
  store i64 %786, i64* %21, align 8, !dbg !2693
  br label %787, !dbg !2693

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2694
  br label %788, !dbg !2695

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2696
  %791 = load i64, i64* %31, align 8, !dbg !2698
  %792 = add i64 %791, 1, !dbg !2699
  %793 = icmp ule i64 %790, %792, !dbg !2700
  br i1 %793, label %794, label %795, !dbg !2701

794:                                              ; preds = %789
  br label %847, !dbg !2702

795:                                              ; preds = %789
  br label %796, !dbg !2703

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2704
  %798 = trunc i8 %797 to i1, !dbg !2704
  br i1 %798, label %799, label %827, !dbg !2704

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2704
  %801 = trunc i8 %800 to i1, !dbg !2704
  br i1 %801, label %827, label %802, !dbg !2707

802:                                              ; preds = %799
  br label %803, !dbg !2708

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2710
  %805 = load i64, i64* %12, align 8, !dbg !2710
  %806 = icmp ult i64 %804, %805, !dbg !2710
  br i1 %806, label %807, label %811, !dbg !2713

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2710
  %809 = load i64, i64* %21, align 8, !dbg !2710
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2710
  store i8 39, i8* %810, align 1, !dbg !2710
  br label %811, !dbg !2710

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2713
  %813 = add i64 %812, 1, !dbg !2713
  store i64 %813, i64* %21, align 8, !dbg !2713
  br label %814, !dbg !2713

814:                                              ; preds = %811
  br label %815, !dbg !2708

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2714
  %817 = load i64, i64* %12, align 8, !dbg !2714
  %818 = icmp ult i64 %816, %817, !dbg !2714
  br i1 %818, label %819, label %823, !dbg !2717

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2714
  %821 = load i64, i64* %21, align 8, !dbg !2714
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2714
  store i8 39, i8* %822, align 1, !dbg !2714
  br label %823, !dbg !2714

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2717
  %825 = add i64 %824, 1, !dbg !2717
  store i64 %825, i64* %21, align 8, !dbg !2717
  br label %826, !dbg !2717

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2708
  br label %827, !dbg !2708

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2707

828:                                              ; preds = %827
  br label %829, !dbg !2718

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2719
  %831 = load i64, i64* %12, align 8, !dbg !2719
  %832 = icmp ult i64 %830, %831, !dbg !2719
  br i1 %832, label %833, label %838, !dbg !2722

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2719
  %835 = load i8*, i8** %11, align 8, !dbg !2719
  %836 = load i64, i64* %21, align 8, !dbg !2719
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2719
  store i8 %834, i8* %837, align 1, !dbg !2719
  br label %838, !dbg !2719

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2722
  %840 = add i64 %839, 1, !dbg !2722
  store i64 %840, i64* %21, align 8, !dbg !2722
  br label %841, !dbg !2722

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2723
  %843 = load i64, i64* %31, align 8, !dbg !2724
  %844 = add i64 %843, 1, !dbg !2724
  store i64 %844, i64* %31, align 8, !dbg !2724
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2723
  %846 = load i8, i8* %845, align 1, !dbg !2723
  store i8 %846, i8* %35, align 1, !dbg !2725
  br label %664, !dbg !2726, !llvm.loop !2727

847:                                              ; preds = %794
  br label %942, !dbg !2730

848:                                              ; preds = %657, %654
  br label %849, !dbg !2731

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2732
  %851 = trunc i8 %850 to i1, !dbg !2732
  br i1 %851, label %852, label %855, !dbg !2734

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2735
  %854 = icmp ne i32 %853, 2, !dbg !2736
  br i1 %854, label %858, label %855, !dbg !2737

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2738
  %857 = trunc i8 %856 to i1, !dbg !2738
  br i1 %857, label %858, label %875, !dbg !2739

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2740
  %860 = icmp ne i32* %859, null, !dbg !2740
  br i1 %860, label %861, label %875, !dbg !2741

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2742
  %863 = load i8, i8* %35, align 1, !dbg !2743
  %864 = zext i8 %863 to i64, !dbg !2743
  %865 = udiv i64 %864, 32, !dbg !2744
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2742
  %867 = load i32, i32* %866, align 4, !dbg !2742
  %868 = load i8, i8* %35, align 1, !dbg !2745
  %869 = zext i8 %868 to i64, !dbg !2745
  %870 = urem i64 %869, 32, !dbg !2746
  %871 = trunc i64 %870 to i32, !dbg !2747
  %872 = lshr i32 %867, %871, !dbg !2747
  %873 = and i32 %872, 1, !dbg !2748
  %874 = icmp ne i32 %873, 0, !dbg !2748
  br i1 %874, label %879, label %875, !dbg !2749

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2750
  %877 = trunc i8 %876 to i1, !dbg !2750
  br i1 %877, label %879, label %878, !dbg !2751

878:                                              ; preds = %875
  br label %942, !dbg !2752

879:                                              ; preds = %875, %861
  br label %880, !dbg !2750

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2753), !dbg !2754
  br label %881, !dbg !2755

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2756
  %883 = trunc i8 %882 to i1, !dbg !2756
  br i1 %883, label %884, label %885, !dbg !2759

884:                                              ; preds = %881
  br label %1078, !dbg !2756

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2759
  %886 = load i32, i32* %15, align 4, !dbg !2760
  %887 = icmp eq i32 %886, 2, !dbg !2760
  br i1 %887, label %888, label %928, !dbg !2760

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2760
  %890 = trunc i8 %889 to i1, !dbg !2760
  br i1 %890, label %928, label %891, !dbg !2759

891:                                              ; preds = %888
  br label %892, !dbg !2762

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2764
  %894 = load i64, i64* %12, align 8, !dbg !2764
  %895 = icmp ult i64 %893, %894, !dbg !2764
  br i1 %895, label %896, label %900, !dbg !2767

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2764
  %898 = load i64, i64* %21, align 8, !dbg !2764
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2764
  store i8 39, i8* %899, align 1, !dbg !2764
  br label %900, !dbg !2764

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2767
  %902 = add i64 %901, 1, !dbg !2767
  store i64 %902, i64* %21, align 8, !dbg !2767
  br label %903, !dbg !2767

903:                                              ; preds = %900
  br label %904, !dbg !2762

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2768
  %906 = load i64, i64* %12, align 8, !dbg !2768
  %907 = icmp ult i64 %905, %906, !dbg !2768
  br i1 %907, label %908, label %912, !dbg !2771

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2768
  %910 = load i64, i64* %21, align 8, !dbg !2768
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2768
  store i8 36, i8* %911, align 1, !dbg !2768
  br label %912, !dbg !2768

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2771
  %914 = add i64 %913, 1, !dbg !2771
  store i64 %914, i64* %21, align 8, !dbg !2771
  br label %915, !dbg !2771

915:                                              ; preds = %912
  br label %916, !dbg !2762

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2772
  %918 = load i64, i64* %12, align 8, !dbg !2772
  %919 = icmp ult i64 %917, %918, !dbg !2772
  br i1 %919, label %920, label %924, !dbg !2775

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2772
  %922 = load i64, i64* %21, align 8, !dbg !2772
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2772
  store i8 39, i8* %923, align 1, !dbg !2772
  br label %924, !dbg !2772

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2775
  %926 = add i64 %925, 1, !dbg !2775
  store i64 %926, i64* %21, align 8, !dbg !2775
  br label %927, !dbg !2775

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2762
  br label %928, !dbg !2762

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2759

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2776
  %931 = load i64, i64* %12, align 8, !dbg !2776
  %932 = icmp ult i64 %930, %931, !dbg !2776
  br i1 %932, label %933, label %937, !dbg !2779

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2776
  %935 = load i64, i64* %21, align 8, !dbg !2776
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2776
  store i8 92, i8* %936, align 1, !dbg !2776
  br label %937, !dbg !2776

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2779
  %939 = add i64 %938, 1, !dbg !2779
  store i64 %939, i64* %21, align 8, !dbg !2779
  br label %940, !dbg !2779

940:                                              ; preds = %937
  br label %941, !dbg !2759

941:                                              ; preds = %940
  br label %942, !dbg !2759

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2780), !dbg !2781
  br label %943, !dbg !2782

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2783
  %945 = trunc i8 %944 to i1, !dbg !2783
  br i1 %945, label %946, label %974, !dbg !2783

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2783
  %948 = trunc i8 %947 to i1, !dbg !2783
  br i1 %948, label %974, label %949, !dbg !2786

949:                                              ; preds = %946
  br label %950, !dbg !2787

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2789
  %952 = load i64, i64* %12, align 8, !dbg !2789
  %953 = icmp ult i64 %951, %952, !dbg !2789
  br i1 %953, label %954, label %958, !dbg !2792

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2789
  %956 = load i64, i64* %21, align 8, !dbg !2789
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2789
  store i8 39, i8* %957, align 1, !dbg !2789
  br label %958, !dbg !2789

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2792
  %960 = add i64 %959, 1, !dbg !2792
  store i64 %960, i64* %21, align 8, !dbg !2792
  br label %961, !dbg !2792

961:                                              ; preds = %958
  br label %962, !dbg !2787

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2793
  %964 = load i64, i64* %12, align 8, !dbg !2793
  %965 = icmp ult i64 %963, %964, !dbg !2793
  br i1 %965, label %966, label %970, !dbg !2796

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2793
  %968 = load i64, i64* %21, align 8, !dbg !2793
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2793
  store i8 39, i8* %969, align 1, !dbg !2793
  br label %970, !dbg !2793

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2796
  %972 = add i64 %971, 1, !dbg !2796
  store i64 %972, i64* %21, align 8, !dbg !2796
  br label %973, !dbg !2796

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2787
  br label %974, !dbg !2787

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2786

975:                                              ; preds = %974
  br label %976, !dbg !2797

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2798
  %978 = load i64, i64* %12, align 8, !dbg !2798
  %979 = icmp ult i64 %977, %978, !dbg !2798
  br i1 %979, label %980, label %985, !dbg !2801

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2798
  %982 = load i8*, i8** %11, align 8, !dbg !2798
  %983 = load i64, i64* %21, align 8, !dbg !2798
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2798
  store i8 %981, i8* %984, align 1, !dbg !2798
  br label %985, !dbg !2798

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2801
  %987 = add i64 %986, 1, !dbg !2801
  store i64 %987, i64* %21, align 8, !dbg !2801
  br label %988, !dbg !2801

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2802
  %990 = trunc i8 %989 to i1, !dbg !2802
  br i1 %990, label %992, label %991, !dbg !2804

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2805
  br label %992, !dbg !2806

992:                                              ; preds = %991, %988
  br label %993, !dbg !2807

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2808
  %995 = add i64 %994, 1, !dbg !2808
  store i64 %995, i64* %31, align 8, !dbg !2808
  br label %139, !dbg !2809, !llvm.loop !2810

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2812
  %998 = icmp eq i64 %997, 0, !dbg !2814
  br i1 %998, label %999, label %1006, !dbg !2815

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2816
  %1001 = icmp eq i32 %1000, 2, !dbg !2817
  br i1 %1001, label %1002, label %1006, !dbg !2818

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2819
  %1004 = trunc i8 %1003 to i1, !dbg !2819
  br i1 %1004, label %1005, label %1006, !dbg !2820

1005:                                             ; preds = %1002
  br label %1078, !dbg !2821

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2822
  %1008 = icmp eq i32 %1007, 2, !dbg !2824
  br i1 %1008, label %1009, label %1038, !dbg !2825

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2826
  %1011 = trunc i8 %1010 to i1, !dbg !2826
  br i1 %1011, label %1038, label %1012, !dbg !2827

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2828
  %1014 = trunc i8 %1013 to i1, !dbg !2828
  br i1 %1014, label %1015, label %1038, !dbg !2829

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2830
  %1017 = trunc i8 %1016 to i1, !dbg !2830
  br i1 %1017, label %1018, label %1028, !dbg !2833

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2834
  %1020 = load i64, i64* %22, align 8, !dbg !2835
  %1021 = load i8*, i8** %13, align 8, !dbg !2836
  %1022 = load i64, i64* %14, align 8, !dbg !2837
  %1023 = load i32, i32* %16, align 4, !dbg !2838
  %1024 = load i32*, i32** %17, align 8, !dbg !2839
  %1025 = load i8*, i8** %18, align 8, !dbg !2840
  %1026 = load i8*, i8** %19, align 8, !dbg !2841
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2842
  store i64 %1027, i64* %10, align 8, !dbg !2843
  br label %1096, !dbg !2843

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2844
  %1030 = icmp ne i64 %1029, 0, !dbg !2844
  br i1 %1030, label %1036, label %1031, !dbg !2846

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2847
  %1033 = icmp ne i64 %1032, 0, !dbg !2847
  br i1 %1033, label %1034, label %1036, !dbg !2848

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2849
  store i64 %1035, i64* %12, align 8, !dbg !2851
  store i64 0, i64* %21, align 8, !dbg !2852
  br label %51, !dbg !2853

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2854

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2855
  %1040 = icmp ne i8* %1039, null, !dbg !2855
  br i1 %1040, label %1041, label %1068, !dbg !2857

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2858
  %1043 = trunc i8 %1042 to i1, !dbg !2858
  br i1 %1043, label %1068, label %1044, !dbg !2859

1044:                                             ; preds = %1041
  br label %1045, !dbg !2860

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2861
  %1047 = load i8, i8* %1046, align 1, !dbg !2864
  %1048 = icmp ne i8 %1047, 0, !dbg !2865
  br i1 %1048, label %1049, label %1067, !dbg !2865

1049:                                             ; preds = %1045
  br label %1050, !dbg !2866

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2867
  %1052 = load i64, i64* %12, align 8, !dbg !2867
  %1053 = icmp ult i64 %1051, %1052, !dbg !2867
  br i1 %1053, label %1054, label %1060, !dbg !2870

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2867
  %1056 = load i8, i8* %1055, align 1, !dbg !2867
  %1057 = load i8*, i8** %11, align 8, !dbg !2867
  %1058 = load i64, i64* %21, align 8, !dbg !2867
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2867
  store i8 %1056, i8* %1059, align 1, !dbg !2867
  br label %1060, !dbg !2867

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2870
  %1062 = add i64 %1061, 1, !dbg !2870
  store i64 %1062, i64* %21, align 8, !dbg !2870
  br label %1063, !dbg !2870

1063:                                             ; preds = %1060
  br label %1064, !dbg !2870

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2871
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2871
  store i8* %1066, i8** %23, align 8, !dbg !2871
  br label %1045, !dbg !2872, !llvm.loop !2873

1067:                                             ; preds = %1045
  br label %1068, !dbg !2874

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2875
  %1070 = load i64, i64* %12, align 8, !dbg !2877
  %1071 = icmp ult i64 %1069, %1070, !dbg !2878
  br i1 %1071, label %1072, label %1076, !dbg !2879

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2880
  %1074 = load i64, i64* %21, align 8, !dbg !2881
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2880
  store i8 0, i8* %1075, align 1, !dbg !2882
  br label %1076, !dbg !2880

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2883
  store i64 %1077, i64* %10, align 8, !dbg !2884
  br label %1096, !dbg !2884

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2885), !dbg !2886
  %1079 = load i32, i32* %15, align 4, !dbg !2887
  %1080 = icmp eq i32 %1079, 2, !dbg !2889
  br i1 %1080, label %1081, label %1085, !dbg !2890

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2891
  %1083 = trunc i8 %1082 to i1, !dbg !2891
  br i1 %1083, label %1084, label %1085, !dbg !2892

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2893
  br label %1085, !dbg !2894

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2895
  %1087 = load i64, i64* %12, align 8, !dbg !2896
  %1088 = load i8*, i8** %13, align 8, !dbg !2897
  %1089 = load i64, i64* %14, align 8, !dbg !2898
  %1090 = load i32, i32* %15, align 4, !dbg !2899
  %1091 = load i32, i32* %16, align 4, !dbg !2900
  %1092 = and i32 %1091, -3, !dbg !2901
  %1093 = load i8*, i8** %18, align 8, !dbg !2902
  %1094 = load i8*, i8** %19, align 8, !dbg !2903
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2904
  store i64 %1095, i64* %10, align 8, !dbg !2905
  br label %1096, !dbg !2905

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2906
  ret i64 %1097, !dbg !2906
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !183 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2907, metadata !DIExpression()), !dbg !2908
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2909, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2911, metadata !DIExpression()), !dbg !2912
  %9 = load i8*, i8** %4, align 8, !dbg !2913
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.107, i64 0, i64 0), i8* noundef %9) #19, !dbg !2913
  store i8* %10, i8** %6, align 8, !dbg !2912
  %11 = load i8*, i8** %6, align 8, !dbg !2914
  %12 = load i8*, i8** %4, align 8, !dbg !2916
  %13 = icmp ne i8* %11, %12, !dbg !2917
  br i1 %13, label %14, label %16, !dbg !2918

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2919
  store i8* %15, i8** %3, align 8, !dbg !2920
  br label %37, !dbg !2920

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2923, metadata !DIExpression()), !dbg !2924
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2925
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2926
  %18 = icmp eq i64 %17, 3, !dbg !2928
  br i1 %18, label %19, label %32, !dbg !2929

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2930
  %21 = icmp eq i32 %20, 8216, !dbg !2931
  br i1 %21, label %22, label %32, !dbg !2932

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2933
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2933
  %25 = load i8, i8* %24, align 1, !dbg !2933
  %26 = zext i8 %25 to i32, !dbg !2933
  %27 = icmp eq i32 %26, 39, !dbg !2934
  %28 = zext i1 %27 to i32, !dbg !2934
  %29 = sext i32 %28 to i64, !dbg !2935
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2935
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2935
  store i8* %31, i8** %3, align 8, !dbg !2936
  br label %37, !dbg !2936

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2937
  %34 = icmp eq i32 %33, 9, !dbg !2938
  %35 = zext i1 %34 to i64, !dbg !2937
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.104, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), !dbg !2937
  store i8* %36, i8** %3, align 8, !dbg !2939
  br label %37, !dbg !2939

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2940
  ret i8* %38, !dbg !2940
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2941 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2944, metadata !DIExpression()), !dbg !2945
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2946, metadata !DIExpression()), !dbg !2947
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2948, metadata !DIExpression()), !dbg !2949
  %7 = load i8*, i8** %4, align 8, !dbg !2950
  %8 = load i64, i64* %5, align 8, !dbg !2951
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2952
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2953
  ret i8* %10, !dbg !2954
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2955 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2958, metadata !DIExpression()), !dbg !2959
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2960, metadata !DIExpression()), !dbg !2961
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2962, metadata !DIExpression()), !dbg !2963
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2964, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2966, metadata !DIExpression()), !dbg !2967
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2968
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2968
  br i1 %15, label %16, label %18, !dbg !2968

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2969
  br label %19, !dbg !2968

18:                                               ; preds = %4
  br label %19, !dbg !2968

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2968
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2967
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2970, metadata !DIExpression()), !dbg !2971
  %21 = call i32* @__errno_location() #22, !dbg !2972
  %22 = load i32, i32* %21, align 4, !dbg !2972
  store i32 %22, i32* %10, align 4, !dbg !2971
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2973, metadata !DIExpression()), !dbg !2974
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2975
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2976
  %25 = load i32, i32* %24, align 4, !dbg !2976
  %26 = load i64*, i64** %7, align 8, !dbg !2977
  %27 = icmp ne i64* %26, null, !dbg !2977
  %28 = zext i1 %27 to i64, !dbg !2977
  %29 = select i1 %27, i32 0, i32 1, !dbg !2977
  %30 = or i32 %25, %29, !dbg !2978
  store i32 %30, i32* %11, align 4, !dbg !2974
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2979, metadata !DIExpression()), !dbg !2980
  %31 = load i8*, i8** %5, align 8, !dbg !2981
  %32 = load i64, i64* %6, align 8, !dbg !2982
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2983
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2984
  %35 = load i32, i32* %34, align 8, !dbg !2984
  %36 = load i32, i32* %11, align 4, !dbg !2985
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2986
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2987
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2986
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2988
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2989
  %42 = load i8*, i8** %41, align 8, !dbg !2989
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2990
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2991
  %45 = load i8*, i8** %44, align 8, !dbg !2991
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2992
  %47 = add i64 %46, 1, !dbg !2993
  store i64 %47, i64* %12, align 8, !dbg !2980
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2994, metadata !DIExpression()), !dbg !2995
  %48 = load i64, i64* %12, align 8, !dbg !2996
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #23, !dbg !2997
  store i8* %49, i8** %13, align 8, !dbg !2995
  %50 = load i8*, i8** %13, align 8, !dbg !2998
  %51 = load i64, i64* %12, align 8, !dbg !2999
  %52 = load i8*, i8** %5, align 8, !dbg !3000
  %53 = load i64, i64* %6, align 8, !dbg !3001
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3002
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !3003
  %56 = load i32, i32* %55, align 8, !dbg !3003
  %57 = load i32, i32* %11, align 4, !dbg !3004
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3005
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !3006
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !3005
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3007
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !3008
  %63 = load i8*, i8** %62, align 8, !dbg !3008
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3009
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !3010
  %66 = load i8*, i8** %65, align 8, !dbg !3010
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !3011
  %68 = load i32, i32* %10, align 4, !dbg !3012
  %69 = call i32* @__errno_location() #22, !dbg !3013
  store i32 %68, i32* %69, align 4, !dbg !3014
  %70 = load i64*, i64** %7, align 8, !dbg !3015
  %71 = icmp ne i64* %70, null, !dbg !3015
  br i1 %71, label %72, label %76, !dbg !3017

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !3018
  %74 = sub i64 %73, 1, !dbg !3019
  %75 = load i64*, i64** %7, align 8, !dbg !3020
  store i64 %74, i64* %75, align 8, !dbg !3021
  br label %76, !dbg !3022

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !3023
  ret i8* %77, !dbg !3024
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !3025 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !3026, metadata !DIExpression()), !dbg !3027
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3028
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !3027
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3029, metadata !DIExpression()), !dbg !3031
  store i32 1, i32* %2, align 4, !dbg !3031
  br label %4, !dbg !3032

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !3033
  %6 = load i32, i32* @nslots, align 4, !dbg !3035
  %7 = icmp slt i32 %5, %6, !dbg !3036
  br i1 %7, label %8, label %18, !dbg !3037

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3038
  %10 = load i32, i32* %2, align 4, !dbg !3039
  %11 = sext i32 %10 to i64, !dbg !3038
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !3038
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !3040
  %14 = load i8*, i8** %13, align 8, !dbg !3040
  call void @free(i8* noundef %14) #19, !dbg !3041
  br label %15, !dbg !3041

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !3042
  %17 = add nsw i32 %16, 1, !dbg !3042
  store i32 %17, i32* %2, align 4, !dbg !3042
  br label %4, !dbg !3043, !llvm.loop !3044

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3046
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !3046
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !3048
  %22 = load i8*, i8** %21, align 8, !dbg !3048
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3049
  br i1 %23, label %24, label %29, !dbg !3050

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3051
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !3051
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !3053
  %28 = load i8*, i8** %27, align 8, !dbg !3053
  call void @free(i8* noundef %28) #19, !dbg !3054
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !3055
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !3056
  br label %29, !dbg !3057

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3058
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !3060
  br i1 %31, label %32, label %35, !dbg !3061

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3062
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !3062
  call void @free(i8* noundef %34) #19, !dbg !3064
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3065
  br label %35, !dbg !3066

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !3067
  ret void, !dbg !3068
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3069 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3072, metadata !DIExpression()), !dbg !3073
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3074, metadata !DIExpression()), !dbg !3075
  %5 = load i32, i32* %3, align 4, !dbg !3076
  %6 = load i8*, i8** %4, align 8, !dbg !3077
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !3078
  ret i8* %7, !dbg !3079
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !3080 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3083, metadata !DIExpression()), !dbg !3084
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3085, metadata !DIExpression()), !dbg !3086
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3087, metadata !DIExpression()), !dbg !3088
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3089, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3091, metadata !DIExpression()), !dbg !3092
  %18 = call i32* @__errno_location() #22, !dbg !3093
  %19 = load i32, i32* %18, align 4, !dbg !3093
  store i32 %19, i32* %9, align 4, !dbg !3092
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !3094, metadata !DIExpression()), !dbg !3095
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3096
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !3095
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3097, metadata !DIExpression()), !dbg !3098
  store i32 2147483647, i32* %11, align 4, !dbg !3098
  %21 = load i32, i32* %5, align 4, !dbg !3099
  %22 = icmp sle i32 0, %21, !dbg !3101
  br i1 %22, label %23, label %27, !dbg !3102

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !3103
  %25 = load i32, i32* %11, align 4, !dbg !3104
  %26 = icmp slt i32 %24, %25, !dbg !3105
  br i1 %26, label %28, label %27, !dbg !3106

27:                                               ; preds = %23, %4
  call void @abort() #20, !dbg !3107
  unreachable, !dbg !3107

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !3108
  %30 = load i32, i32* %5, align 4, !dbg !3110
  %31 = icmp sle i32 %29, %30, !dbg !3111
  br i1 %31, label %32, label %73, !dbg !3112

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !3113, metadata !DIExpression()), !dbg !3115
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3116
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !3117
  %35 = zext i1 %34 to i8, !dbg !3115
  store i8 %35, i8* %12, align 1, !dbg !3115
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3118, metadata !DIExpression()), !dbg !3119
  %36 = load i32, i32* @nslots, align 4, !dbg !3120
  %37 = sext i32 %36 to i64, !dbg !3120
  store i64 %37, i64* %13, align 8, !dbg !3119
  %38 = load i8, i8* %12, align 1, !dbg !3121
  %39 = trunc i8 %38 to i1, !dbg !3121
  br i1 %39, label %40, label %41, !dbg !3121

40:                                               ; preds = %32
  br label %43, !dbg !3121

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3122
  br label %43, !dbg !3121

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !3121
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !3121
  %46 = load i32, i32* %5, align 4, !dbg !3123
  %47 = load i32, i32* @nslots, align 4, !dbg !3124
  %48 = sub nsw i32 %46, %47, !dbg !3125
  %49 = add nsw i32 %48, 1, !dbg !3126
  %50 = sext i32 %49 to i64, !dbg !3123
  %51 = load i32, i32* %11, align 4, !dbg !3127
  %52 = sext i32 %51 to i64, !dbg !3127
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !3128
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !3128
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !3129
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !3130
  %55 = load i8, i8* %12, align 1, !dbg !3131
  %56 = trunc i8 %55 to i1, !dbg !3131
  br i1 %56, label %57, label %60, !dbg !3133

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3134
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !3135
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3135
  br label %60, !dbg !3136

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3137
  %62 = load i32, i32* @nslots, align 4, !dbg !3138
  %63 = sext i32 %62 to i64, !dbg !3139
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !3139
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !3140
  %66 = load i64, i64* %13, align 8, !dbg !3141
  %67 = load i32, i32* @nslots, align 4, !dbg !3142
  %68 = sext i32 %67 to i64, !dbg !3142
  %69 = sub nsw i64 %66, %68, !dbg !3143
  %70 = mul i64 %69, 16, !dbg !3144
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !3140
  %71 = load i64, i64* %13, align 8, !dbg !3145
  %72 = trunc i64 %71 to i32, !dbg !3145
  store i32 %72, i32* @nslots, align 4, !dbg !3146
  br label %73, !dbg !3147

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3148, metadata !DIExpression()), !dbg !3150
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3151
  %75 = load i32, i32* %5, align 4, !dbg !3152
  %76 = sext i32 %75 to i64, !dbg !3151
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !3151
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !3153
  %79 = load i64, i64* %78, align 8, !dbg !3153
  store i64 %79, i64* %14, align 8, !dbg !3150
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3154, metadata !DIExpression()), !dbg !3155
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3156
  %81 = load i32, i32* %5, align 4, !dbg !3157
  %82 = sext i32 %81 to i64, !dbg !3156
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !3156
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !3158
  %85 = load i8*, i8** %84, align 8, !dbg !3158
  store i8* %85, i8** %15, align 8, !dbg !3155
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3159, metadata !DIExpression()), !dbg !3160
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3161
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !3162
  %88 = load i32, i32* %87, align 4, !dbg !3162
  %89 = or i32 %88, 1, !dbg !3163
  store i32 %89, i32* %16, align 4, !dbg !3160
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3164, metadata !DIExpression()), !dbg !3165
  %90 = load i8*, i8** %15, align 8, !dbg !3166
  %91 = load i64, i64* %14, align 8, !dbg !3167
  %92 = load i8*, i8** %6, align 8, !dbg !3168
  %93 = load i64, i64* %7, align 8, !dbg !3169
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3170
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !3171
  %96 = load i32, i32* %95, align 8, !dbg !3171
  %97 = load i32, i32* %16, align 4, !dbg !3172
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3173
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !3174
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !3173
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3175
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !3176
  %103 = load i8*, i8** %102, align 8, !dbg !3176
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3177
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !3178
  %106 = load i8*, i8** %105, align 8, !dbg !3178
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !3179
  store i64 %107, i64* %17, align 8, !dbg !3165
  %108 = load i64, i64* %14, align 8, !dbg !3180
  %109 = load i64, i64* %17, align 8, !dbg !3182
  %110 = icmp ule i64 %108, %109, !dbg !3183
  br i1 %110, label %111, label %149, !dbg !3184

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !3185
  %113 = add i64 %112, 1, !dbg !3187
  store i64 %113, i64* %14, align 8, !dbg !3188
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3189
  %115 = load i32, i32* %5, align 4, !dbg !3190
  %116 = sext i32 %115 to i64, !dbg !3189
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !3189
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !3191
  store i64 %113, i64* %118, align 8, !dbg !3192
  %119 = load i8*, i8** %15, align 8, !dbg !3193
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3195
  br i1 %120, label %121, label %123, !dbg !3196

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !3197
  call void @free(i8* noundef %122) #19, !dbg !3198
  br label %123, !dbg !3198

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !3199
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #23, !dbg !3200
  store i8* %125, i8** %15, align 8, !dbg !3201
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3202
  %127 = load i32, i32* %5, align 4, !dbg !3203
  %128 = sext i32 %127 to i64, !dbg !3202
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !3202
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !3204
  store i8* %125, i8** %130, align 8, !dbg !3205
  %131 = load i8*, i8** %15, align 8, !dbg !3206
  %132 = load i64, i64* %14, align 8, !dbg !3207
  %133 = load i8*, i8** %6, align 8, !dbg !3208
  %134 = load i64, i64* %7, align 8, !dbg !3209
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3210
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !3211
  %137 = load i32, i32* %136, align 8, !dbg !3211
  %138 = load i32, i32* %16, align 4, !dbg !3212
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3213
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !3214
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !3213
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3215
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !3216
  %144 = load i8*, i8** %143, align 8, !dbg !3216
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3217
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !3218
  %147 = load i8*, i8** %146, align 8, !dbg !3218
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !3219
  br label %149, !dbg !3220

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !3221
  %151 = call i32* @__errno_location() #22, !dbg !3222
  store i32 %150, i32* %151, align 4, !dbg !3223
  %152 = load i8*, i8** %15, align 8, !dbg !3224
  ret i8* %152, !dbg !3225
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3226 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3229, metadata !DIExpression()), !dbg !3230
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3231, metadata !DIExpression()), !dbg !3232
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3233, metadata !DIExpression()), !dbg !3234
  %7 = load i32, i32* %4, align 4, !dbg !3235
  %8 = load i8*, i8** %5, align 8, !dbg !3236
  %9 = load i64, i64* %6, align 8, !dbg !3237
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !3238
  ret i8* %10, !dbg !3239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !3240 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3241, metadata !DIExpression()), !dbg !3242
  %3 = load i8*, i8** %2, align 8, !dbg !3243
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !3244
  ret i8* %4, !dbg !3245
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3246 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3249, metadata !DIExpression()), !dbg !3250
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3251, metadata !DIExpression()), !dbg !3252
  %5 = load i8*, i8** %3, align 8, !dbg !3253
  %6 = load i64, i64* %4, align 8, !dbg !3254
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3255
  ret i8* %7, !dbg !3256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3257 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3260, metadata !DIExpression()), !dbg !3261
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3262, metadata !DIExpression()), !dbg !3263
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3264, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3266, metadata !DIExpression()), !dbg !3267
  %8 = load i32, i32* %5, align 4, !dbg !3268
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !3269
  %9 = load i32, i32* %4, align 4, !dbg !3270
  %10 = load i8*, i8** %6, align 8, !dbg !3271
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3272
  ret i8* %11, !dbg !3273
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !3274 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3277, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !3279, metadata !DIExpression()), !dbg !3280
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3280
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !3280
  %5 = load i32, i32* %3, align 4, !dbg !3281
  %6 = icmp eq i32 %5, 10, !dbg !3283
  br i1 %6, label %7, label %8, !dbg !3284

7:                                                ; preds = %2
  call void @abort() #20, !dbg !3285
  unreachable, !dbg !3285

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !3286
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !3287
  store i32 %9, i32* %10, align 8, !dbg !3288
  ret void, !dbg !3289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3290 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3293, metadata !DIExpression()), !dbg !3294
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3295, metadata !DIExpression()), !dbg !3296
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3297, metadata !DIExpression()), !dbg !3298
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3299, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !3301, metadata !DIExpression()), !dbg !3302
  %10 = load i32, i32* %6, align 4, !dbg !3303
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !3304
  %11 = load i32, i32* %5, align 4, !dbg !3305
  %12 = load i8*, i8** %7, align 8, !dbg !3306
  %13 = load i64, i64* %8, align 8, !dbg !3307
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !3308
  ret i8* %14, !dbg !3309
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !3310 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3313, metadata !DIExpression()), !dbg !3314
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3315, metadata !DIExpression()), !dbg !3316
  %5 = load i32, i32* %3, align 4, !dbg !3317
  %6 = load i8*, i8** %4, align 8, !dbg !3318
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !3319
  ret i8* %7, !dbg !3320
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3321 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3324, metadata !DIExpression()), !dbg !3325
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3326, metadata !DIExpression()), !dbg !3327
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3328, metadata !DIExpression()), !dbg !3329
  %7 = load i32, i32* %4, align 4, !dbg !3330
  %8 = load i8*, i8** %5, align 8, !dbg !3331
  %9 = load i64, i64* %6, align 8, !dbg !3332
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3333
  ret i8* %10, !dbg !3334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !3335 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3338, metadata !DIExpression()), !dbg !3339
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3340, metadata !DIExpression()), !dbg !3341
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3344, metadata !DIExpression()), !dbg !3345
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3346
  %9 = load i8, i8* %6, align 1, !dbg !3347
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !3348
  %11 = load i8*, i8** %4, align 8, !dbg !3349
  %12 = load i64, i64* %5, align 8, !dbg !3350
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !3351
  ret i8* %13, !dbg !3352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !3353 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3356, metadata !DIExpression()), !dbg !3357
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3358, metadata !DIExpression()), !dbg !3359
  %5 = load i8*, i8** %3, align 8, !dbg !3360
  %6 = load i8, i8* %4, align 1, !dbg !3361
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !3362
  ret i8* %7, !dbg !3363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !3364 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3365, metadata !DIExpression()), !dbg !3366
  %3 = load i8*, i8** %2, align 8, !dbg !3367
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !3368
  ret i8* %4, !dbg !3369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3370 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3371, metadata !DIExpression()), !dbg !3372
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3373, metadata !DIExpression()), !dbg !3374
  %5 = load i8*, i8** %3, align 8, !dbg !3375
  %6 = load i64, i64* %4, align 8, !dbg !3376
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !3377
  ret i8* %7, !dbg !3378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3379 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3380, metadata !DIExpression()), !dbg !3381
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3382, metadata !DIExpression()), !dbg !3383
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3384, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3386, metadata !DIExpression()), !dbg !3387
  %9 = load i32, i32* %5, align 4, !dbg !3388
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !3389
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3389
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !3389
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !3389
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !3390
  %13 = load i32, i32* %4, align 4, !dbg !3391
  %14 = load i8*, i8** %6, align 8, !dbg !3392
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3393
  ret i8* %15, !dbg !3394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !3395 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3398, metadata !DIExpression()), !dbg !3399
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3400, metadata !DIExpression()), !dbg !3401
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3402, metadata !DIExpression()), !dbg !3403
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3404, metadata !DIExpression()), !dbg !3405
  %9 = load i32, i32* %5, align 4, !dbg !3406
  %10 = load i8*, i8** %6, align 8, !dbg !3407
  %11 = load i8*, i8** %7, align 8, !dbg !3408
  %12 = load i8*, i8** %8, align 8, !dbg !3409
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !3410
  ret i8* %13, !dbg !3411
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !3412 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3415, metadata !DIExpression()), !dbg !3416
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3417, metadata !DIExpression()), !dbg !3418
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3419, metadata !DIExpression()), !dbg !3420
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3421, metadata !DIExpression()), !dbg !3422
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3423, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3425, metadata !DIExpression()), !dbg !3426
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3427
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3427
  %13 = load i8*, i8** %7, align 8, !dbg !3428
  %14 = load i8*, i8** %8, align 8, !dbg !3429
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !3430
  %15 = load i32, i32* %6, align 4, !dbg !3431
  %16 = load i8*, i8** %9, align 8, !dbg !3432
  %17 = load i64, i64* %10, align 8, !dbg !3433
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !3434
  ret i8* %18, !dbg !3435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3436 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3439, metadata !DIExpression()), !dbg !3440
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3441, metadata !DIExpression()), !dbg !3442
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3443, metadata !DIExpression()), !dbg !3444
  %7 = load i8*, i8** %4, align 8, !dbg !3445
  %8 = load i8*, i8** %5, align 8, !dbg !3446
  %9 = load i8*, i8** %6, align 8, !dbg !3447
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !3448
  ret i8* %10, !dbg !3449
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3450 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3453, metadata !DIExpression()), !dbg !3454
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3455, metadata !DIExpression()), !dbg !3456
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3457, metadata !DIExpression()), !dbg !3458
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3459, metadata !DIExpression()), !dbg !3460
  %9 = load i8*, i8** %5, align 8, !dbg !3461
  %10 = load i8*, i8** %6, align 8, !dbg !3462
  %11 = load i8*, i8** %7, align 8, !dbg !3463
  %12 = load i64, i64* %8, align 8, !dbg !3464
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !3465
  ret i8* %13, !dbg !3466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3467 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3470, metadata !DIExpression()), !dbg !3471
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3472, metadata !DIExpression()), !dbg !3473
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3474, metadata !DIExpression()), !dbg !3475
  %7 = load i32, i32* %4, align 4, !dbg !3476
  %8 = load i8*, i8** %5, align 8, !dbg !3477
  %9 = load i64, i64* %6, align 8, !dbg !3478
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !3479
  ret i8* %10, !dbg !3480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3481 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3484, metadata !DIExpression()), !dbg !3485
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3486, metadata !DIExpression()), !dbg !3487
  %5 = load i8*, i8** %3, align 8, !dbg !3488
  %6 = load i64, i64* %4, align 8, !dbg !3489
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3490
  ret i8* %7, !dbg !3491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3492 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3495, metadata !DIExpression()), !dbg !3496
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3497, metadata !DIExpression()), !dbg !3498
  %5 = load i32, i32* %3, align 4, !dbg !3499
  %6 = load i8*, i8** %4, align 8, !dbg !3500
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !3501
  ret i8* %7, !dbg !3502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !3503 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3506, metadata !DIExpression()), !dbg !3507
  %3 = load i8*, i8** %2, align 8, !dbg !3508
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !3509
  ret i8* %4, !dbg !3510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @safe_write(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3511 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3516, metadata !DIExpression()), !dbg !3517
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3518, metadata !DIExpression()), !dbg !3519
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3520, metadata !DIExpression()), !dbg !3521
  br label %9, !dbg !3522

9:                                                ; preds = %41, %28, %3
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3523, metadata !DIExpression()), !dbg !3528
  %10 = load i32, i32* %5, align 4, !dbg !3529
  %11 = load i8*, i8** %6, align 8, !dbg !3530
  %12 = load i64, i64* %7, align 8, !dbg !3531
  %13 = icmp ule i64 %12, -1, !dbg !3532
  br i1 %13, label %14, label %16, !dbg !3531

14:                                               ; preds = %9
  %15 = load i64, i64* %7, align 8, !dbg !3533
  br label %17, !dbg !3531

16:                                               ; preds = %9
  br label %17, !dbg !3531

17:                                               ; preds = %16, %14
  %18 = phi i64 [ %15, %14 ], [ -1, %16 ], !dbg !3531
  %19 = call i64 @write(i32 noundef %10, i8* noundef %11, i64 noundef %18), !dbg !3534
  store i64 %19, i64* %8, align 8, !dbg !3528
  %20 = load i64, i64* %8, align 8, !dbg !3535
  %21 = icmp sle i64 0, %20, !dbg !3537
  br i1 %21, label %22, label %24, !dbg !3538

22:                                               ; preds = %17
  %23 = load i64, i64* %8, align 8, !dbg !3539
  store i64 %23, i64* %4, align 8, !dbg !3540
  br label %42, !dbg !3540

24:                                               ; preds = %17
  %25 = call i32* @__errno_location() #22, !dbg !3541
  %26 = load i32, i32* %25, align 4, !dbg !3541
  %27 = icmp eq i32 %26, 4, !dbg !3541
  br i1 %27, label %28, label %29, !dbg !3543

28:                                               ; preds = %24
  br label %9, !dbg !3544, !llvm.loop !3545

29:                                               ; preds = %24
  %30 = call i32* @__errno_location() #22, !dbg !3548
  %31 = load i32, i32* %30, align 4, !dbg !3548
  %32 = icmp eq i32 %31, 22, !dbg !3550
  br i1 %32, label %33, label %37, !dbg !3551

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8, !dbg !3552
  %35 = icmp slt i64 2146435072, %34, !dbg !3553
  br i1 %35, label %36, label %37, !dbg !3554

36:                                               ; preds = %33
  store i64 2146435072, i64* %7, align 8, !dbg !3555
  br label %39, !dbg !3556

37:                                               ; preds = %33, %29
  %38 = load i64, i64* %8, align 8, !dbg !3557
  store i64 %38, i64* %4, align 8, !dbg !3558
  br label %42, !dbg !3558

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  br label %9, !dbg !3559, !llvm.loop !3545

42:                                               ; preds = %37, %22
  %43 = load i64, i64* %4, align 8, !dbg !3560
  ret i64 %43, !dbg !3560
}

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !3561 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3565, metadata !DIExpression()), !dbg !3566
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3567, metadata !DIExpression()), !dbg !3568
  %5 = load i8*, i8** %3, align 8, !dbg !3569
  %6 = load i8*, i8** %4, align 8, !dbg !3570
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #21, !dbg !3571
  %8 = icmp ne i32 %7, 0, !dbg !3572
  %9 = xor i1 %8, true, !dbg !3572
  ret i1 %9, !dbg !3573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !3574 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3630, metadata !DIExpression()), !dbg !3631
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3632, metadata !DIExpression()), !dbg !3633
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3634, metadata !DIExpression()), !dbg !3635
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3636, metadata !DIExpression()), !dbg !3637
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3638, metadata !DIExpression()), !dbg !3639
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3640, metadata !DIExpression()), !dbg !3641
  %13 = load i8*, i8** %8, align 8, !dbg !3642
  %14 = icmp ne i8* %13, null, !dbg !3642
  br i1 %14, label %15, label %21, !dbg !3644

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3645
  %17 = load i8*, i8** %8, align 8, !dbg !3646
  %18 = load i8*, i8** %9, align 8, !dbg !3647
  %19 = load i8*, i8** %10, align 8, !dbg !3648
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3649
  br label %26, !dbg !3649

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3650
  %23 = load i8*, i8** %9, align 8, !dbg !3651
  %24 = load i8*, i8** %10, align 8, !dbg !3652
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.115, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3653
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3654
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.117, i64 0, i64 0)) #19, !dbg !3655
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3656
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3657
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.118, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3657
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3658
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.119, i64 0, i64 0)) #19, !dbg !3659
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.120, i64 0, i64 0)), !dbg !3660
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3661
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.118, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3661
  %37 = load i64, i64* %12, align 8, !dbg !3662
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
  ], !dbg !3663

38:                                               ; preds = %26
  br label %241, !dbg !3664

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3666
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.121, i64 0, i64 0)) #19, !dbg !3667
  %42 = load i8**, i8*** %11, align 8, !dbg !3668
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3668
  %44 = load i8*, i8** %43, align 8, !dbg !3668
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3669
  br label %241, !dbg !3670

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3671
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.122, i64 0, i64 0)) #19, !dbg !3672
  %49 = load i8**, i8*** %11, align 8, !dbg !3673
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3673
  %51 = load i8*, i8** %50, align 8, !dbg !3673
  %52 = load i8**, i8*** %11, align 8, !dbg !3674
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3674
  %54 = load i8*, i8** %53, align 8, !dbg !3674
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3675
  br label %241, !dbg !3676

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3677
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.123, i64 0, i64 0)) #19, !dbg !3678
  %59 = load i8**, i8*** %11, align 8, !dbg !3679
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3679
  %61 = load i8*, i8** %60, align 8, !dbg !3679
  %62 = load i8**, i8*** %11, align 8, !dbg !3680
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3680
  %64 = load i8*, i8** %63, align 8, !dbg !3680
  %65 = load i8**, i8*** %11, align 8, !dbg !3681
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3681
  %67 = load i8*, i8** %66, align 8, !dbg !3681
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3682
  br label %241, !dbg !3683

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3684
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.124, i64 0, i64 0)) #19, !dbg !3685
  %72 = load i8**, i8*** %11, align 8, !dbg !3686
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3686
  %74 = load i8*, i8** %73, align 8, !dbg !3686
  %75 = load i8**, i8*** %11, align 8, !dbg !3687
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3687
  %77 = load i8*, i8** %76, align 8, !dbg !3687
  %78 = load i8**, i8*** %11, align 8, !dbg !3688
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3688
  %80 = load i8*, i8** %79, align 8, !dbg !3688
  %81 = load i8**, i8*** %11, align 8, !dbg !3689
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3689
  %83 = load i8*, i8** %82, align 8, !dbg !3689
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3690
  br label %241, !dbg !3691

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3692
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.125, i64 0, i64 0)) #19, !dbg !3693
  %88 = load i8**, i8*** %11, align 8, !dbg !3694
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3694
  %90 = load i8*, i8** %89, align 8, !dbg !3694
  %91 = load i8**, i8*** %11, align 8, !dbg !3695
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3695
  %93 = load i8*, i8** %92, align 8, !dbg !3695
  %94 = load i8**, i8*** %11, align 8, !dbg !3696
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3696
  %96 = load i8*, i8** %95, align 8, !dbg !3696
  %97 = load i8**, i8*** %11, align 8, !dbg !3697
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3697
  %99 = load i8*, i8** %98, align 8, !dbg !3697
  %100 = load i8**, i8*** %11, align 8, !dbg !3698
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3698
  %102 = load i8*, i8** %101, align 8, !dbg !3698
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3699
  br label %241, !dbg !3700

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3701
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.126, i64 0, i64 0)) #19, !dbg !3702
  %107 = load i8**, i8*** %11, align 8, !dbg !3703
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3703
  %109 = load i8*, i8** %108, align 8, !dbg !3703
  %110 = load i8**, i8*** %11, align 8, !dbg !3704
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3704
  %112 = load i8*, i8** %111, align 8, !dbg !3704
  %113 = load i8**, i8*** %11, align 8, !dbg !3705
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3705
  %115 = load i8*, i8** %114, align 8, !dbg !3705
  %116 = load i8**, i8*** %11, align 8, !dbg !3706
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3706
  %118 = load i8*, i8** %117, align 8, !dbg !3706
  %119 = load i8**, i8*** %11, align 8, !dbg !3707
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3707
  %121 = load i8*, i8** %120, align 8, !dbg !3707
  %122 = load i8**, i8*** %11, align 8, !dbg !3708
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3708
  %124 = load i8*, i8** %123, align 8, !dbg !3708
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3709
  br label %241, !dbg !3710

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3711
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.127, i64 0, i64 0)) #19, !dbg !3712
  %129 = load i8**, i8*** %11, align 8, !dbg !3713
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3713
  %131 = load i8*, i8** %130, align 8, !dbg !3713
  %132 = load i8**, i8*** %11, align 8, !dbg !3714
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3714
  %134 = load i8*, i8** %133, align 8, !dbg !3714
  %135 = load i8**, i8*** %11, align 8, !dbg !3715
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3715
  %137 = load i8*, i8** %136, align 8, !dbg !3715
  %138 = load i8**, i8*** %11, align 8, !dbg !3716
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3716
  %140 = load i8*, i8** %139, align 8, !dbg !3716
  %141 = load i8**, i8*** %11, align 8, !dbg !3717
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3717
  %143 = load i8*, i8** %142, align 8, !dbg !3717
  %144 = load i8**, i8*** %11, align 8, !dbg !3718
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3718
  %146 = load i8*, i8** %145, align 8, !dbg !3718
  %147 = load i8**, i8*** %11, align 8, !dbg !3719
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3719
  %149 = load i8*, i8** %148, align 8, !dbg !3719
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3720
  br label %241, !dbg !3721

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3722
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.128, i64 0, i64 0)) #19, !dbg !3723
  %154 = load i8**, i8*** %11, align 8, !dbg !3724
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3724
  %156 = load i8*, i8** %155, align 8, !dbg !3724
  %157 = load i8**, i8*** %11, align 8, !dbg !3725
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3725
  %159 = load i8*, i8** %158, align 8, !dbg !3725
  %160 = load i8**, i8*** %11, align 8, !dbg !3726
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3726
  %162 = load i8*, i8** %161, align 8, !dbg !3726
  %163 = load i8**, i8*** %11, align 8, !dbg !3727
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3727
  %165 = load i8*, i8** %164, align 8, !dbg !3727
  %166 = load i8**, i8*** %11, align 8, !dbg !3728
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3728
  %168 = load i8*, i8** %167, align 8, !dbg !3728
  %169 = load i8**, i8*** %11, align 8, !dbg !3729
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3729
  %171 = load i8*, i8** %170, align 8, !dbg !3729
  %172 = load i8**, i8*** %11, align 8, !dbg !3730
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3730
  %174 = load i8*, i8** %173, align 8, !dbg !3730
  %175 = load i8**, i8*** %11, align 8, !dbg !3731
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3731
  %177 = load i8*, i8** %176, align 8, !dbg !3731
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3732
  br label %241, !dbg !3733

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3734
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.129, i64 0, i64 0)) #19, !dbg !3735
  %182 = load i8**, i8*** %11, align 8, !dbg !3736
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3736
  %184 = load i8*, i8** %183, align 8, !dbg !3736
  %185 = load i8**, i8*** %11, align 8, !dbg !3737
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3737
  %187 = load i8*, i8** %186, align 8, !dbg !3737
  %188 = load i8**, i8*** %11, align 8, !dbg !3738
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3738
  %190 = load i8*, i8** %189, align 8, !dbg !3738
  %191 = load i8**, i8*** %11, align 8, !dbg !3739
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3739
  %193 = load i8*, i8** %192, align 8, !dbg !3739
  %194 = load i8**, i8*** %11, align 8, !dbg !3740
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3740
  %196 = load i8*, i8** %195, align 8, !dbg !3740
  %197 = load i8**, i8*** %11, align 8, !dbg !3741
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3741
  %199 = load i8*, i8** %198, align 8, !dbg !3741
  %200 = load i8**, i8*** %11, align 8, !dbg !3742
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3742
  %202 = load i8*, i8** %201, align 8, !dbg !3742
  %203 = load i8**, i8*** %11, align 8, !dbg !3743
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3743
  %205 = load i8*, i8** %204, align 8, !dbg !3743
  %206 = load i8**, i8*** %11, align 8, !dbg !3744
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3744
  %208 = load i8*, i8** %207, align 8, !dbg !3744
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3745
  br label %241, !dbg !3746

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3747
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.130, i64 0, i64 0)) #19, !dbg !3748
  %213 = load i8**, i8*** %11, align 8, !dbg !3749
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3749
  %215 = load i8*, i8** %214, align 8, !dbg !3749
  %216 = load i8**, i8*** %11, align 8, !dbg !3750
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3750
  %218 = load i8*, i8** %217, align 8, !dbg !3750
  %219 = load i8**, i8*** %11, align 8, !dbg !3751
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3751
  %221 = load i8*, i8** %220, align 8, !dbg !3751
  %222 = load i8**, i8*** %11, align 8, !dbg !3752
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3752
  %224 = load i8*, i8** %223, align 8, !dbg !3752
  %225 = load i8**, i8*** %11, align 8, !dbg !3753
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3753
  %227 = load i8*, i8** %226, align 8, !dbg !3753
  %228 = load i8**, i8*** %11, align 8, !dbg !3754
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3754
  %230 = load i8*, i8** %229, align 8, !dbg !3754
  %231 = load i8**, i8*** %11, align 8, !dbg !3755
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3755
  %233 = load i8*, i8** %232, align 8, !dbg !3755
  %234 = load i8**, i8*** %11, align 8, !dbg !3756
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3756
  %236 = load i8*, i8** %235, align 8, !dbg !3756
  %237 = load i8**, i8*** %11, align 8, !dbg !3757
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3757
  %239 = load i8*, i8** %238, align 8, !dbg !3757
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3758
  br label %241, !dbg !3759

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3760
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3761 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3764, metadata !DIExpression()), !dbg !3765
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3766, metadata !DIExpression()), !dbg !3767
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3768, metadata !DIExpression()), !dbg !3769
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3770, metadata !DIExpression()), !dbg !3771
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3772, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3774, metadata !DIExpression()), !dbg !3775
  store i64 0, i64* %11, align 8, !dbg !3776
  br label %12, !dbg !3778

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3779
  %14 = load i64, i64* %11, align 8, !dbg !3781
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3779
  %16 = load i8*, i8** %15, align 8, !dbg !3779
  %17 = icmp ne i8* %16, null, !dbg !3782
  br i1 %17, label %18, label %22, !dbg !3782

18:                                               ; preds = %12
  br label %19, !dbg !3782

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3783
  %21 = add i64 %20, 1, !dbg !3783
  store i64 %21, i64* %11, align 8, !dbg !3783
  br label %12, !dbg !3784, !llvm.loop !3785

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3787
  %24 = load i8*, i8** %7, align 8, !dbg !3788
  %25 = load i8*, i8** %8, align 8, !dbg !3789
  %26 = load i8*, i8** %9, align 8, !dbg !3790
  %27 = load i8**, i8*** %10, align 8, !dbg !3791
  %28 = load i64, i64* %11, align 8, !dbg !3792
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3793
  ret void, !dbg !3794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3795 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3809, metadata !DIExpression()), !dbg !3810
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3811, metadata !DIExpression()), !dbg !3812
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3813, metadata !DIExpression()), !dbg !3814
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3815, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3817, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3819, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3821, metadata !DIExpression()), !dbg !3823
  store i64 0, i64* %10, align 8, !dbg !3824
  br label %12, !dbg !3826

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3827
  %14 = icmp ult i64 %13, 10, !dbg !3829
  br i1 %14, label %15, label %38, !dbg !3830

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3831
  %17 = load i32, i32* %16, align 8, !dbg !3831
  %18 = icmp sge i32 %17, 0, !dbg !3831
  br i1 %18, label %27, label %19, !dbg !3831

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3831
  store i32 %20, i32* %16, align 8, !dbg !3831
  %21 = icmp sle i32 %20, 0, !dbg !3831
  br i1 %21, label %22, label %27, !dbg !3831

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3831
  %24 = load i8*, i8** %23, align 8, !dbg !3831
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3831
  %26 = bitcast i8* %25 to i8**, !dbg !3831
  br label %32, !dbg !3831

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3831
  %29 = load i8*, i8** %28, align 8, !dbg !3831
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3831
  store i8* %30, i8** %28, align 8, !dbg !3831
  %31 = bitcast i8* %29 to i8**, !dbg !3831
  br label %32, !dbg !3831

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3831
  %34 = load i8*, i8** %33, align 8, !dbg !3831
  %35 = load i64, i64* %10, align 8, !dbg !3832
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3833
  store i8* %34, i8** %36, align 8, !dbg !3834
  %37 = icmp ne i8* %34, null, !dbg !3835
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3836
  br i1 %39, label %40, label %44, !dbg !3837

40:                                               ; preds = %38
  br label %41, !dbg !3837

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3838
  %43 = add i64 %42, 1, !dbg !3838
  store i64 %43, i64* %10, align 8, !dbg !3838
  br label %12, !dbg !3839, !llvm.loop !3840

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3842
  %46 = load i8*, i8** %7, align 8, !dbg !3843
  %47 = load i8*, i8** %8, align 8, !dbg !3844
  %48 = load i8*, i8** %9, align 8, !dbg !3845
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3846
  %50 = load i64, i64* %10, align 8, !dbg !3847
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3848
  ret void, !dbg !3849
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3850 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3853, metadata !DIExpression()), !dbg !3854
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3855, metadata !DIExpression()), !dbg !3856
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3857, metadata !DIExpression()), !dbg !3858
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3859, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3861, metadata !DIExpression()), !dbg !3862
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3863
  call void @llvm.va_start(i8* %11), !dbg !3863
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3864
  %13 = load i8*, i8** %6, align 8, !dbg !3865
  %14 = load i8*, i8** %7, align 8, !dbg !3866
  %15 = load i8*, i8** %8, align 8, !dbg !3867
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3868
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3868
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3868
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3869
  call void @llvm.va_end(i8* %18), !dbg !3869
  ret void, !dbg !3870
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3871 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3872
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.118, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3872
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.135, i64 0, i64 0)) #19, !dbg !3873
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.136, i64 0, i64 0)), !dbg !3874
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.137, i64 0, i64 0)) #19, !dbg !3875
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.138, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.139, i64 0, i64 0)), !dbg !3876
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.140, i64 0, i64 0)) #19, !dbg !3877
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.141, i64 0, i64 0)), !dbg !3878
  ret void, !dbg !3879
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #16 !dbg !3880 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3884, metadata !DIExpression()), !dbg !3885
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3886, metadata !DIExpression()), !dbg !3887
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3888, metadata !DIExpression()), !dbg !3889
  %7 = load i8*, i8** %4, align 8, !dbg !3890
  %8 = load i64, i64* %5, align 8, !dbg !3891
  %9 = load i64, i64* %6, align 8, !dbg !3892
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #27, !dbg !3893
  ret i8* %10, !dbg !3894
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #16 !dbg !3895 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3896, metadata !DIExpression()), !dbg !3897
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3898, metadata !DIExpression()), !dbg !3899
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3900, metadata !DIExpression()), !dbg !3901
  %7 = load i8*, i8** %4, align 8, !dbg !3902
  %8 = load i64, i64* %5, align 8, !dbg !3903
  %9 = load i64, i64* %6, align 8, !dbg !3904
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3905
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3906
  ret i8* %11, !dbg !3907
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3908 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3911, metadata !DIExpression()), !dbg !3912
  %3 = load i8*, i8** %2, align 8, !dbg !3913
  %4 = icmp ne i8* %3, null, !dbg !3913
  br i1 %4, label %6, label %5, !dbg !3915

5:                                                ; preds = %1
  call void @xalloc_die() #25, !dbg !3916
  unreachable, !dbg !3916

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3917
  ret i8* %7, !dbg !3918
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #17 !dbg !3919 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3922, metadata !DIExpression()), !dbg !3923
  %3 = load i64, i64* %2, align 8, !dbg !3924
  %4 = call noalias i8* @malloc(i64 noundef %3) #19, !dbg !3925
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3926
  ret i8* %5, !dbg !3927
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #17 !dbg !3928 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3931, metadata !DIExpression()), !dbg !3932
  %3 = load i64, i64* %2, align 8, !dbg !3933
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3934
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3935
  ret i8* %5, !dbg !3936
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #17 !dbg !3937 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3940, metadata !DIExpression()), !dbg !3941
  %3 = load i64, i64* %2, align 8, !dbg !3942
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #23, !dbg !3942
  ret i8* %4, !dbg !3943
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #9 !dbg !3944 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3947, metadata !DIExpression()), !dbg !3948
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3949, metadata !DIExpression()), !dbg !3950
  %5 = load i8*, i8** %3, align 8, !dbg !3951
  %6 = load i64, i64* %4, align 8, !dbg !3952
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3953
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3954
  ret i8* %8, !dbg !3955
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #9 !dbg !3956 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3959, metadata !DIExpression()), !dbg !3960
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3961, metadata !DIExpression()), !dbg !3962
  %5 = load i8*, i8** %3, align 8, !dbg !3963
  %6 = load i64, i64* %4, align 8, !dbg !3964
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3965
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3966
  ret i8* %8, !dbg !3967
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #16 !dbg !3968 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3971, metadata !DIExpression()), !dbg !3972
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3973, metadata !DIExpression()), !dbg !3974
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3975, metadata !DIExpression()), !dbg !3976
  %7 = load i8*, i8** %4, align 8, !dbg !3977
  %8 = load i64, i64* %5, align 8, !dbg !3978
  %9 = load i64, i64* %6, align 8, !dbg !3979
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3980
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3981
  ret i8* %11, !dbg !3982
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #18 !dbg !3983 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3986, metadata !DIExpression()), !dbg !3987
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3988, metadata !DIExpression()), !dbg !3989
  %5 = load i64, i64* %3, align 8, !dbg !3990
  %6 = load i64, i64* %4, align 8, !dbg !3991
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !3992
  ret i8* %7, !dbg !3993
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #18 !dbg !3994 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3995, metadata !DIExpression()), !dbg !3996
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3997, metadata !DIExpression()), !dbg !3998
  %5 = load i64, i64* %3, align 8, !dbg !3999
  %6 = load i64, i64* %4, align 8, !dbg !4000
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !4001
  ret i8* %7, !dbg !4002
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !4003 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4006, metadata !DIExpression()), !dbg !4007
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4008, metadata !DIExpression()), !dbg !4009
  %5 = load i8*, i8** %3, align 8, !dbg !4010
  %6 = load i64*, i64** %4, align 8, !dbg !4011
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !4012
  ret i8* %7, !dbg !4013
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !278 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4014, metadata !DIExpression()), !dbg !4015
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !4016, metadata !DIExpression()), !dbg !4017
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4018, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4020, metadata !DIExpression()), !dbg !4021
  %8 = load i64*, i64** %5, align 8, !dbg !4022
  %9 = load i64, i64* %8, align 8, !dbg !4023
  store i64 %9, i64* %7, align 8, !dbg !4021
  %10 = load i8*, i8** %4, align 8, !dbg !4024
  %11 = icmp ne i8* %10, null, !dbg !4024
  br i1 %11, label %26, label %12, !dbg !4026

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !4027
  %14 = icmp ne i64 %13, 0, !dbg !4027
  br i1 %14, label %25, label %15, !dbg !4030

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !4031
  %17 = udiv i64 128, %16, !dbg !4033
  store i64 %17, i64* %7, align 8, !dbg !4034
  %18 = load i64, i64* %7, align 8, !dbg !4035
  %19 = icmp ne i64 %18, 0, !dbg !4036
  %20 = xor i1 %19, true, !dbg !4036
  %21 = zext i1 %20 to i32, !dbg !4036
  %22 = sext i32 %21 to i64, !dbg !4036
  %23 = load i64, i64* %7, align 8, !dbg !4037
  %24 = add i64 %23, %22, !dbg !4037
  store i64 %24, i64* %7, align 8, !dbg !4037
  br label %25, !dbg !4038

25:                                               ; preds = %15, %12
  br label %36, !dbg !4039

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !4040
  %28 = load i64, i64* %7, align 8, !dbg !4040
  %29 = lshr i64 %28, 1, !dbg !4040
  %30 = add i64 %29, 1, !dbg !4040
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !4040
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !4040
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !4040
  store i64 %33, i64* %7, align 8, !dbg !4040
  br i1 %32, label %34, label %35, !dbg !4043

34:                                               ; preds = %26
  call void @xalloc_die() #25, !dbg !4044
  unreachable, !dbg !4044

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !4045
  %38 = load i64, i64* %7, align 8, !dbg !4046
  %39 = load i64, i64* %6, align 8, !dbg !4047
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #27, !dbg !4048
  store i8* %40, i8** %4, align 8, !dbg !4049
  %41 = load i64, i64* %7, align 8, !dbg !4050
  %42 = load i64*, i64** %5, align 8, !dbg !4051
  store i64 %41, i64* %42, align 8, !dbg !4052
  %43 = load i8*, i8** %4, align 8, !dbg !4053
  ret i8* %43, !dbg !4054
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !285 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4055, metadata !DIExpression()), !dbg !4056
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !4057, metadata !DIExpression()), !dbg !4058
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4059, metadata !DIExpression()), !dbg !4060
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4061, metadata !DIExpression()), !dbg !4062
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4065, metadata !DIExpression()), !dbg !4066
  %15 = load i64*, i64** %7, align 8, !dbg !4067
  %16 = load i64, i64* %15, align 8, !dbg !4068
  store i64 %16, i64* %11, align 8, !dbg !4066
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4069, metadata !DIExpression()), !dbg !4070
  %17 = load i64, i64* %11, align 8, !dbg !4071
  %18 = load i64, i64* %11, align 8, !dbg !4071
  %19 = ashr i64 %18, 1, !dbg !4071
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !4071
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !4071
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !4071
  store i64 %22, i64* %12, align 8, !dbg !4071
  br i1 %21, label %23, label %24, !dbg !4073

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !4074
  br label %24, !dbg !4075

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !4076
  %26 = icmp sle i64 0, %25, !dbg !4078
  br i1 %26, label %27, label %33, !dbg !4079

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !4080
  %29 = load i64, i64* %12, align 8, !dbg !4081
  %30 = icmp slt i64 %28, %29, !dbg !4082
  br i1 %30, label %31, label %33, !dbg !4083

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !4084
  store i64 %32, i64* %12, align 8, !dbg !4085
  br label %33, !dbg !4086

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !4087, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4089, metadata !DIExpression()), !dbg !4090
  %34 = load i64, i64* %10, align 8, !dbg !4091
  %35 = icmp slt i64 %34, 0, !dbg !4091
  br i1 %35, label %36, label %82, !dbg !4091

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !4091
  %38 = icmp slt i64 %37, 0, !dbg !4091
  br i1 %38, label %39, label %62, !dbg !4091

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !4091

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !4091
  %42 = load i64, i64* %10, align 8, !dbg !4091
  %43 = sdiv i64 9223372036854775807, %42, !dbg !4091
  %44 = icmp slt i64 %41, %43, !dbg !4091
  br i1 %44, label %111, label %115, !dbg !4091

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !4091

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !4091
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !4091
  br i1 %48, label %52, label %53, !dbg !4091

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !4091
  %51 = icmp slt i64 0, %50, !dbg !4091
  br i1 %51, label %52, label %53, !dbg !4091

52:                                               ; preds = %49, %46
  br label %57, !dbg !4091

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !4091
  %55 = sub nsw i64 0, %54, !dbg !4091
  %56 = sdiv i64 9223372036854775807, %55, !dbg !4091
  br label %57, !dbg !4091

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !4091
  %59 = load i64, i64* %12, align 8, !dbg !4091
  %60 = sub nsw i64 -1, %59, !dbg !4091
  %61 = icmp sle i64 %58, %60, !dbg !4091
  br i1 %61, label %111, label %115, !dbg !4091

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !4091
  %64 = icmp eq i64 %63, -1, !dbg !4091
  br i1 %64, label %65, label %77, !dbg !4091

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !4091

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !4091
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !4091
  %69 = icmp slt i64 0, %68, !dbg !4091
  br i1 %69, label %111, label %115, !dbg !4091

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !4091
  %72 = icmp slt i64 0, %71, !dbg !4091
  br i1 %72, label %73, label %115, !dbg !4091

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !4091
  %75 = sub nsw i64 %74, 1, !dbg !4091
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !4091
  br i1 %76, label %111, label %115, !dbg !4091

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !4091
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !4091
  %80 = load i64, i64* %12, align 8, !dbg !4091
  %81 = icmp slt i64 %79, %80, !dbg !4091
  br i1 %81, label %111, label %115, !dbg !4091

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !4091
  %84 = icmp eq i64 %83, 0, !dbg !4091
  br i1 %84, label %85, label %86, !dbg !4091

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !4091

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !4091
  %88 = icmp slt i64 %87, 0, !dbg !4091
  br i1 %88, label %89, label %106, !dbg !4091

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !4091
  %91 = icmp eq i64 %90, -1, !dbg !4091
  br i1 %91, label %92, label %101, !dbg !4091

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !4091

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !4091
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !4091
  %96 = icmp slt i64 0, %95, !dbg !4091
  br i1 %96, label %111, label %115, !dbg !4091

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !4091
  %99 = sub nsw i64 %98, 1, !dbg !4091
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !4091
  br i1 %100, label %111, label %115, !dbg !4091

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !4091
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !4091
  %104 = load i64, i64* %10, align 8, !dbg !4091
  %105 = icmp slt i64 %103, %104, !dbg !4091
  br i1 %105, label %111, label %115, !dbg !4091

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !4091
  %108 = sdiv i64 9223372036854775807, %107, !dbg !4091
  %109 = load i64, i64* %12, align 8, !dbg !4091
  %110 = icmp slt i64 %108, %109, !dbg !4091
  br i1 %110, label %111, label %115, !dbg !4091

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !4091
  %113 = load i64, i64* %10, align 8, !dbg !4091
  %114 = mul i64 %112, %113, !dbg !4091
  store i64 %114, i64* %13, align 8, !dbg !4091
  br label %119, !dbg !4091

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !4091
  %117 = load i64, i64* %10, align 8, !dbg !4091
  %118 = mul i64 %116, %117, !dbg !4091
  store i64 %118, i64* %13, align 8, !dbg !4091
  br label %119, !dbg !4091

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !4091
  %121 = icmp ne i32 %120, 0, !dbg !4091
  br i1 %121, label %122, label %123, !dbg !4091

122:                                              ; preds = %119
  br label %129, !dbg !4091

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !4092
  %125 = icmp slt i64 %124, 128, !dbg !4093
  %126 = zext i1 %125 to i64, !dbg !4092
  %127 = select i1 %125, i32 128, i32 0, !dbg !4092
  %128 = sext i32 %127 to i64, !dbg !4092
  br label %129, !dbg !4091

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !4091
  store i64 %130, i64* %14, align 8, !dbg !4090
  %131 = load i64, i64* %14, align 8, !dbg !4094
  %132 = icmp ne i64 %131, 0, !dbg !4094
  br i1 %132, label %133, label %142, !dbg !4096

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !4097
  %135 = load i64, i64* %10, align 8, !dbg !4099
  %136 = sdiv i64 %134, %135, !dbg !4100
  store i64 %136, i64* %12, align 8, !dbg !4101
  %137 = load i64, i64* %14, align 8, !dbg !4102
  %138 = load i64, i64* %14, align 8, !dbg !4103
  %139 = load i64, i64* %10, align 8, !dbg !4104
  %140 = srem i64 %138, %139, !dbg !4105
  %141 = sub nsw i64 %137, %140, !dbg !4106
  store i64 %141, i64* %13, align 8, !dbg !4107
  br label %142, !dbg !4108

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !4109
  %144 = icmp ne i8* %143, null, !dbg !4109
  br i1 %144, label %147, label %145, !dbg !4111

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !4112
  store i64 0, i64* %146, align 8, !dbg !4113
  br label %147, !dbg !4114

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !4115
  %149 = load i64, i64* %11, align 8, !dbg !4117
  %150 = sub nsw i64 %148, %149, !dbg !4118
  %151 = load i64, i64* %8, align 8, !dbg !4119
  %152 = icmp slt i64 %150, %151, !dbg !4120
  br i1 %152, label %153, label %256, !dbg !4121

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !4122
  %155 = load i64, i64* %8, align 8, !dbg !4122
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !4122
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !4122
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !4122
  store i64 %158, i64* %12, align 8, !dbg !4122
  br i1 %157, label %255, label %159, !dbg !4123

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !4124
  %161 = icmp sle i64 0, %160, !dbg !4125
  br i1 %161, label %162, label %166, !dbg !4126

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !4127
  %164 = load i64, i64* %12, align 8, !dbg !4128
  %165 = icmp slt i64 %163, %164, !dbg !4129
  br i1 %165, label %255, label %166, !dbg !4130

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !4131
  %168 = icmp slt i64 %167, 0, !dbg !4131
  br i1 %168, label %169, label %215, !dbg !4131

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !4131
  %171 = icmp slt i64 %170, 0, !dbg !4131
  br i1 %171, label %172, label %195, !dbg !4131

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !4131

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !4131
  %175 = load i64, i64* %10, align 8, !dbg !4131
  %176 = sdiv i64 9223372036854775807, %175, !dbg !4131
  %177 = icmp slt i64 %174, %176, !dbg !4131
  br i1 %177, label %244, label %248, !dbg !4131

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !4131

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !4131
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !4131
  br i1 %181, label %185, label %186, !dbg !4131

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !4131
  %184 = icmp slt i64 0, %183, !dbg !4131
  br i1 %184, label %185, label %186, !dbg !4131

185:                                              ; preds = %182, %179
  br label %190, !dbg !4131

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !4131
  %188 = sub nsw i64 0, %187, !dbg !4131
  %189 = sdiv i64 9223372036854775807, %188, !dbg !4131
  br label %190, !dbg !4131

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !4131
  %192 = load i64, i64* %12, align 8, !dbg !4131
  %193 = sub nsw i64 -1, %192, !dbg !4131
  %194 = icmp sle i64 %191, %193, !dbg !4131
  br i1 %194, label %244, label %248, !dbg !4131

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !4131
  %197 = icmp eq i64 %196, -1, !dbg !4131
  br i1 %197, label %198, label %210, !dbg !4131

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !4131

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !4131
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !4131
  %202 = icmp slt i64 0, %201, !dbg !4131
  br i1 %202, label %244, label %248, !dbg !4131

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !4131
  %205 = icmp slt i64 0, %204, !dbg !4131
  br i1 %205, label %206, label %248, !dbg !4131

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !4131
  %208 = sub nsw i64 %207, 1, !dbg !4131
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !4131
  br i1 %209, label %244, label %248, !dbg !4131

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !4131
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !4131
  %213 = load i64, i64* %12, align 8, !dbg !4131
  %214 = icmp slt i64 %212, %213, !dbg !4131
  br i1 %214, label %244, label %248, !dbg !4131

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !4131
  %217 = icmp eq i64 %216, 0, !dbg !4131
  br i1 %217, label %218, label %219, !dbg !4131

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !4131

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !4131
  %221 = icmp slt i64 %220, 0, !dbg !4131
  br i1 %221, label %222, label %239, !dbg !4131

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !4131
  %224 = icmp eq i64 %223, -1, !dbg !4131
  br i1 %224, label %225, label %234, !dbg !4131

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !4131

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !4131
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !4131
  %229 = icmp slt i64 0, %228, !dbg !4131
  br i1 %229, label %244, label %248, !dbg !4131

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !4131
  %232 = sub nsw i64 %231, 1, !dbg !4131
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !4131
  br i1 %233, label %244, label %248, !dbg !4131

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !4131
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !4131
  %237 = load i64, i64* %10, align 8, !dbg !4131
  %238 = icmp slt i64 %236, %237, !dbg !4131
  br i1 %238, label %244, label %248, !dbg !4131

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !4131
  %241 = sdiv i64 9223372036854775807, %240, !dbg !4131
  %242 = load i64, i64* %12, align 8, !dbg !4131
  %243 = icmp slt i64 %241, %242, !dbg !4131
  br i1 %243, label %244, label %248, !dbg !4131

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !4131
  %246 = load i64, i64* %10, align 8, !dbg !4131
  %247 = mul i64 %245, %246, !dbg !4131
  store i64 %247, i64* %13, align 8, !dbg !4131
  br label %252, !dbg !4131

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !4131
  %250 = load i64, i64* %10, align 8, !dbg !4131
  %251 = mul i64 %249, %250, !dbg !4131
  store i64 %251, i64* %13, align 8, !dbg !4131
  br label %252, !dbg !4131

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !4131
  %254 = icmp ne i32 %253, 0, !dbg !4131
  br i1 %254, label %255, label %256, !dbg !4132

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #25, !dbg !4133
  unreachable, !dbg !4133

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !4134
  %258 = load i64, i64* %13, align 8, !dbg !4135
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !4136
  store i8* %259, i8** %6, align 8, !dbg !4137
  %260 = load i64, i64* %12, align 8, !dbg !4138
  %261 = load i64*, i64** %7, align 8, !dbg !4139
  store i64 %260, i64* %261, align 8, !dbg !4140
  %262 = load i8*, i8** %6, align 8, !dbg !4141
  ret i8* %262, !dbg !4142
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #17 !dbg !4143 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4144, metadata !DIExpression()), !dbg !4145
  %3 = load i64, i64* %2, align 8, !dbg !4146
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #28, !dbg !4147
  ret i8* %4, !dbg !4148
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #18 !dbg !4149 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4150, metadata !DIExpression()), !dbg !4151
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4152, metadata !DIExpression()), !dbg !4153
  %5 = load i64, i64* %3, align 8, !dbg !4154
  %6 = load i64, i64* %4, align 8, !dbg !4155
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #19, !dbg !4156
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4157
  ret i8* %8, !dbg !4158
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #17 !dbg !4159 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4160, metadata !DIExpression()), !dbg !4161
  %3 = load i64, i64* %2, align 8, !dbg !4162
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #28, !dbg !4163
  ret i8* %4, !dbg !4164
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #18 !dbg !4165 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4166, metadata !DIExpression()), !dbg !4167
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4168, metadata !DIExpression()), !dbg !4169
  %5 = load i64, i64* %3, align 8, !dbg !4170
  %6 = load i64, i64* %4, align 8, !dbg !4171
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !4172
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4173
  ret i8* %8, !dbg !4174
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #9 !dbg !4175 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4178, metadata !DIExpression()), !dbg !4179
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4180, metadata !DIExpression()), !dbg !4181
  %5 = load i64, i64* %4, align 8, !dbg !4182
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #23, !dbg !4183
  %7 = load i8*, i8** %3, align 8, !dbg !4184
  %8 = load i64, i64* %4, align 8, !dbg !4185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4186
  ret i8* %6, !dbg !4187
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #9 !dbg !4188 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4191, metadata !DIExpression()), !dbg !4192
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4193, metadata !DIExpression()), !dbg !4194
  %5 = load i64, i64* %4, align 8, !dbg !4195
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #23, !dbg !4196
  %7 = load i8*, i8** %3, align 8, !dbg !4197
  %8 = load i64, i64* %4, align 8, !dbg !4198
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4199
  ret i8* %6, !dbg !4200
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !4201 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4204, metadata !DIExpression()), !dbg !4205
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4206, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4208, metadata !DIExpression()), !dbg !4209
  %6 = load i64, i64* %4, align 8, !dbg !4210
  %7 = add nsw i64 %6, 1, !dbg !4211
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #23, !dbg !4212
  store i8* %8, i8** %5, align 8, !dbg !4209
  %9 = load i8*, i8** %5, align 8, !dbg !4213
  %10 = load i64, i64* %4, align 8, !dbg !4214
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !4213
  store i8 0, i8* %11, align 1, !dbg !4215
  %12 = load i8*, i8** %5, align 8, !dbg !4216
  %13 = load i8*, i8** %3, align 8, !dbg !4217
  %14 = load i64, i64* %4, align 8, !dbg !4218
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !4219
  ret i8* %12, !dbg !4220
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !4221 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4222, metadata !DIExpression()), !dbg !4223
  %3 = load i8*, i8** %2, align 8, !dbg !4224
  %4 = load i8*, i8** %2, align 8, !dbg !4225
  %5 = call i64 @strlen(i8* noundef %4) #21, !dbg !4226
  %6 = add i64 %5, 1, !dbg !4227
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !4228
  ret i8* %7, !dbg !4229
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !4230 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !4231, metadata !DIExpression()), !dbg !4234
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !4234
  store i32 %2, i32* %1, align 4, !dbg !4234
  %3 = load i32, i32* %1, align 4, !dbg !4234
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.154, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.155, i64 0, i64 0)) #19, !dbg !4234
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0), i8* noundef %4), !dbg !4234
  %5 = load i32, i32* %1, align 4, !dbg !4234
  %6 = icmp ne i32 %5, 0, !dbg !4234
  br i1 %6, label %7, label %9, !dbg !4234

7:                                                ; preds = %0
  unreachable, !dbg !4234

8:                                                ; No predecessors!
  br label %10, !dbg !4234

9:                                                ; preds = %0
  br label %10, !dbg !4234

10:                                               ; preds = %9, %8
  call void @abort() #20, !dbg !4235
  unreachable, !dbg !4235
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !4236 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4242, metadata !DIExpression()), !dbg !4243
  %3 = load i32, i32* %2, align 4, !dbg !4244
  %4 = call i32 @iswprint(i32 noundef %3) #19, !dbg !4245
  ret i32 %4, !dbg !4246
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !4247 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4284, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4286, metadata !DIExpression()), !dbg !4288
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4289
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #19, !dbg !4290
  %9 = icmp ne i64 %8, 0, !dbg !4291
  %10 = zext i1 %9 to i8, !dbg !4288
  store i8 %10, i8* %4, align 1, !dbg !4288
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4292, metadata !DIExpression()), !dbg !4293
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4294
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #19, !dbg !4294
  %13 = icmp ne i32 %12, 0, !dbg !4295
  %14 = zext i1 %13 to i8, !dbg !4293
  store i8 %14, i8* %5, align 1, !dbg !4293
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4296, metadata !DIExpression()), !dbg !4297
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4298
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !4299
  %17 = icmp ne i32 %16, 0, !dbg !4300
  %18 = zext i1 %17 to i8, !dbg !4297
  store i8 %18, i8* %6, align 1, !dbg !4297
  %19 = load i8, i8* %5, align 1, !dbg !4301
  %20 = trunc i8 %19 to i1, !dbg !4301
  br i1 %20, label %31, label %21, !dbg !4303

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !4304
  %23 = trunc i8 %22 to i1, !dbg !4304
  br i1 %23, label %24, label %37, !dbg !4305

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !4306
  %26 = trunc i8 %25 to i1, !dbg !4306
  br i1 %26, label %31, label %27, !dbg !4307

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #22, !dbg !4308
  %29 = load i32, i32* %28, align 4, !dbg !4308
  %30 = icmp ne i32 %29, 9, !dbg !4309
  br i1 %30, label %31, label %37, !dbg !4310

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !4311
  %33 = trunc i8 %32 to i1, !dbg !4311
  br i1 %33, label %36, label %34, !dbg !4314

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #22, !dbg !4315
  store i32 0, i32* %35, align 4, !dbg !4316
  br label %36, !dbg !4315

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !4317
  br label %38, !dbg !4317

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !4318
  br label %38, !dbg !4318

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !4319
  ret i32 %39, !dbg !4319
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !4320 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4357, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4359, metadata !DIExpression()), !dbg !4360
  store i32 0, i32* %4, align 4, !dbg !4360
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4361, metadata !DIExpression()), !dbg !4362
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4363
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #19, !dbg !4364
  store i32 %8, i32* %5, align 4, !dbg !4362
  %9 = load i32, i32* %5, align 4, !dbg !4365
  %10 = icmp slt i32 %9, 0, !dbg !4367
  br i1 %10, label %11, label %14, !dbg !4368

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4369
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !4370
  store i32 %13, i32* %2, align 4, !dbg !4371
  br label %40, !dbg !4371

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4372
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #19, !dbg !4372
  %17 = icmp ne i32 %16, 0, !dbg !4372
  br i1 %17, label %18, label %23, !dbg !4374

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4375
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #19, !dbg !4376
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #19, !dbg !4377
  %22 = icmp ne i64 %21, -1, !dbg !4378
  br i1 %22, label %23, label %30, !dbg !4379

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4380
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !4381
  %26 = icmp ne i32 %25, 0, !dbg !4381
  br i1 %26, label %27, label %30, !dbg !4382

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #22, !dbg !4383
  %29 = load i32, i32* %28, align 4, !dbg !4383
  store i32 %29, i32* %4, align 4, !dbg !4384
  br label %30, !dbg !4385

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4386, metadata !DIExpression()), !dbg !4387
  store i32 0, i32* %6, align 4, !dbg !4387
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4388
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !4389
  store i32 %32, i32* %6, align 4, !dbg !4390
  %33 = load i32, i32* %4, align 4, !dbg !4391
  %34 = icmp ne i32 %33, 0, !dbg !4393
  br i1 %34, label %35, label %38, !dbg !4394

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !4395
  %37 = call i32* @__errno_location() #22, !dbg !4397
  store i32 %36, i32* %37, align 4, !dbg !4398
  store i32 -1, i32* %6, align 4, !dbg !4399
  br label %38, !dbg !4400

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !4401
  store i32 %39, i32* %2, align 4, !dbg !4402
  br label %40, !dbg !4402

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !4403
  ret i32 %41, !dbg !4403
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fd_safer_flag(i32 noundef %0, i32 noundef %1) #4 !dbg !4404 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4405, metadata !DIExpression()), !dbg !4406
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4407, metadata !DIExpression()), !dbg !4408
  %7 = load i32, i32* %3, align 4, !dbg !4409
  %8 = icmp sle i32 0, %7, !dbg !4411
  br i1 %8, label %9, label %23, !dbg !4412

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4, !dbg !4413
  %11 = icmp sle i32 %10, 2, !dbg !4414
  br i1 %11, label %12, label %23, !dbg !4415

12:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4416, metadata !DIExpression()), !dbg !4418
  %13 = load i32, i32* %3, align 4, !dbg !4419
  %14 = load i32, i32* %4, align 4, !dbg !4420
  %15 = call i32 @dup_safer_flag(i32 noundef %13, i32 noundef %14), !dbg !4421
  store i32 %15, i32* %5, align 4, !dbg !4418
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4422, metadata !DIExpression()), !dbg !4423
  %16 = call i32* @__errno_location() #22, !dbg !4424
  %17 = load i32, i32* %16, align 4, !dbg !4424
  store i32 %17, i32* %6, align 4, !dbg !4423
  %18 = load i32, i32* %3, align 4, !dbg !4425
  %19 = call i32 @close(i32 noundef %18), !dbg !4426
  %20 = load i32, i32* %6, align 4, !dbg !4427
  %21 = call i32* @__errno_location() #22, !dbg !4428
  store i32 %20, i32* %21, align 4, !dbg !4429
  %22 = load i32, i32* %5, align 4, !dbg !4430
  store i32 %22, i32* %3, align 4, !dbg !4431
  br label %23, !dbg !4432

23:                                               ; preds = %12, %9, %2
  %24 = load i32, i32* %3, align 4, !dbg !4433
  ret i32 %24, !dbg !4434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) #4 !dbg !4435 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4436, metadata !DIExpression()), !dbg !4437
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4438, metadata !DIExpression()), !dbg !4439
  %5 = load i32, i32* %3, align 4, !dbg !4440
  %6 = load i32, i32* %4, align 4, !dbg !4441
  %7 = and i32 %6, 524288, !dbg !4442
  %8 = icmp ne i32 %7, 0, !dbg !4443
  %9 = zext i1 %8 to i64, !dbg !4443
  %10 = select i1 %8, i32 1030, i32 0, !dbg !4443
  %11 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %5, i32 noundef %10, i32 noundef 3), !dbg !4444
  ret i32 %11, !dbg !4445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !4446 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4483, metadata !DIExpression()), !dbg !4484
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4485
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !4487
  br i1 %5, label %10, label %6, !dbg !4488

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4489
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #19, !dbg !4489
  %9 = icmp ne i32 %8, 0, !dbg !4489
  br i1 %9, label %13, label %10, !dbg !4490

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4491
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !4492
  store i32 %12, i32* %2, align 4, !dbg !4493
  br label %17, !dbg !4493

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4494
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !4495
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4496
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !4497
  store i32 %16, i32* %2, align 4, !dbg !4498
  br label %17, !dbg !4498

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !4499
  ret i32 %18, !dbg !4499
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !4500 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !4503, metadata !DIExpression()), !dbg !4504
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4505
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4507
  %5 = load i32, i32* %4, align 8, !dbg !4507
  %6 = and i32 %5, 256, !dbg !4508
  %7 = icmp ne i32 %6, 0, !dbg !4508
  br i1 %7, label %8, label %11, !dbg !4509

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4510
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !4511
  br label %11, !dbg !4511

11:                                               ; preds = %8, %1
  ret void, !dbg !4512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !4513 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4551, metadata !DIExpression()), !dbg !4552
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4553, metadata !DIExpression()), !dbg !4554
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4555, metadata !DIExpression()), !dbg !4556
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4557
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4559
  %11 = load i8*, i8** %10, align 8, !dbg !4559
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4560
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4561
  %14 = load i8*, i8** %13, align 8, !dbg !4561
  %15 = icmp eq i8* %11, %14, !dbg !4562
  br i1 %15, label %16, label %46, !dbg !4563

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4564
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4565
  %19 = load i8*, i8** %18, align 8, !dbg !4565
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4566
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4567
  %22 = load i8*, i8** %21, align 8, !dbg !4567
  %23 = icmp eq i8* %19, %22, !dbg !4568
  br i1 %23, label %24, label %46, !dbg !4569

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4570
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !4571
  %27 = load i8*, i8** %26, align 8, !dbg !4571
  %28 = icmp eq i8* %27, null, !dbg !4572
  br i1 %28, label %29, label %46, !dbg !4573

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4574, metadata !DIExpression()), !dbg !4576
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4577
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #19, !dbg !4578
  %32 = load i64, i64* %6, align 8, !dbg !4579
  %33 = load i32, i32* %7, align 4, !dbg !4580
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #19, !dbg !4581
  store i64 %34, i64* %8, align 8, !dbg !4576
  %35 = load i64, i64* %8, align 8, !dbg !4582
  %36 = icmp eq i64 %35, -1, !dbg !4584
  br i1 %36, label %37, label %38, !dbg !4585

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !4586
  br label %51, !dbg !4586

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4588
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !4589
  %41 = load i32, i32* %40, align 8, !dbg !4590
  %42 = and i32 %41, -17, !dbg !4590
  store i32 %42, i32* %40, align 8, !dbg !4590
  %43 = load i64, i64* %8, align 8, !dbg !4591
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4592
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !4593
  store i64 %43, i64* %45, align 8, !dbg !4594
  store i32 0, i32* %4, align 4, !dbg !4595
  br label %51, !dbg !4595

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4596
  %48 = load i64, i64* %6, align 8, !dbg !4597
  %49 = load i32, i32* %7, align 4, !dbg !4598
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !4599
  store i32 %50, i32* %4, align 4, !dbg !4600
  br label %51, !dbg !4600

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4601
  ret i32 %52, !dbg !4601
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #12 !dbg !4602 {
  %1 = call i32* @__errno_location() #22, !dbg !4605
  store i32 12, i32* %1, align 4, !dbg !4606
  ret i8* null, !dbg !4607
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !4608 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4609, metadata !DIExpression()), !dbg !4610
  %3 = load i64, i64* %2, align 8, !dbg !4611
  %4 = icmp ule i64 %3, -1, !dbg !4612
  br i1 %4, label %5, label %8, !dbg !4611

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !4613
  %7 = call noalias i8* @malloc(i64 noundef %6) #19, !dbg !4614
  br label %10, !dbg !4611

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #26, !dbg !4615
  br label %10, !dbg !4611

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !4611
  ret i8* %11, !dbg !4616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4617 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4618, metadata !DIExpression()), !dbg !4619
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4620, metadata !DIExpression()), !dbg !4621
  %5 = load i64, i64* %4, align 8, !dbg !4622
  %6 = icmp ule i64 %5, -1, !dbg !4623
  br i1 %6, label %7, label %11, !dbg !4622

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !4624
  %9 = load i64, i64* %4, align 8, !dbg !4625
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !4626
  br label %13, !dbg !4622

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #26, !dbg !4627
  br label %13, !dbg !4622

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !4622
  ret i8* %14, !dbg !4628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !4629 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4630, metadata !DIExpression()), !dbg !4631
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4632, metadata !DIExpression()), !dbg !4633
  %6 = load i64, i64* %4, align 8, !dbg !4634
  %7 = icmp ult i64 -1, %6, !dbg !4636
  br i1 %7, label %8, label %14, !dbg !4637

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !4638
  %10 = icmp ne i64 %9, 0, !dbg !4641
  br i1 %10, label %11, label %13, !dbg !4642

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #26, !dbg !4643
  store i8* %12, i8** %3, align 8, !dbg !4644
  br label %27, !dbg !4644

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !4645
  br label %14, !dbg !4646

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !4647
  %16 = icmp ult i64 -1, %15, !dbg !4649
  br i1 %16, label %17, label %23, !dbg !4650

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !4651
  %19 = icmp ne i64 %18, 0, !dbg !4654
  br i1 %19, label %20, label %22, !dbg !4655

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #26, !dbg !4656
  store i8* %21, i8** %3, align 8, !dbg !4657
  br label %27, !dbg !4657

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !4658
  br label %23, !dbg !4659

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !4660
  %25 = load i64, i64* %5, align 8, !dbg !4661
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #19, !dbg !4662
  store i8* %26, i8** %3, align 8, !dbg !4663
  br label %27, !dbg !4663

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !4664
  ret i8* %28, !dbg !4664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4665 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4666, metadata !DIExpression()), !dbg !4667
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4668, metadata !DIExpression()), !dbg !4669
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4670, metadata !DIExpression()), !dbg !4671
  %7 = load i64, i64* %5, align 8, !dbg !4672
  %8 = icmp ule i64 %7, -1, !dbg !4673
  br i1 %8, label %9, label %17, !dbg !4674

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !4675
  %11 = icmp ule i64 %10, -1, !dbg !4676
  br i1 %11, label %12, label %17, !dbg !4672

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !4677
  %14 = load i64, i64* %5, align 8, !dbg !4678
  %15 = load i64, i64* %6, align 8, !dbg !4679
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !4680
  br label %19, !dbg !4672

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #26, !dbg !4681
  br label %19, !dbg !4672

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !4672
  ret i8* %20, !dbg !4682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !4683 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4688, metadata !DIExpression()), !dbg !4689
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4690, metadata !DIExpression()), !dbg !4691
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4692, metadata !DIExpression()), !dbg !4693
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4694, metadata !DIExpression()), !dbg !4695
  %11 = load i8*, i8** %7, align 8, !dbg !4696
  %12 = icmp eq i8* %11, null, !dbg !4698
  br i1 %12, label %13, label %14, !dbg !4699

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4700
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.181, i64 0, i64 0), i8** %7, align 8, !dbg !4702
  store i64 1, i64* %8, align 8, !dbg !4703
  br label %14, !dbg !4704

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4705
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4707
  br i1 %16, label %17, label %18, !dbg !4708

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !4709
  br label %18, !dbg !4710

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4711, metadata !DIExpression()), !dbg !4712
  %19 = load i32*, i32** %6, align 8, !dbg !4713
  %20 = load i8*, i8** %7, align 8, !dbg !4714
  %21 = load i64, i64* %8, align 8, !dbg !4715
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4716
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #19, !dbg !4717
  store i64 %23, i64* %10, align 8, !dbg !4712
  %24 = load i64, i64* %10, align 8, !dbg !4718
  %25 = icmp ult i64 %24, -3, !dbg !4720
  br i1 %25, label %26, label %32, !dbg !4721

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4722
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #21, !dbg !4723
  %29 = icmp ne i32 %28, 0, !dbg !4723
  br i1 %29, label %32, label %30, !dbg !4724

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4725
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4726
  br label %32, !dbg !4726

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4727
  %34 = icmp eq i64 %33, -3, !dbg !4729
  br i1 %34, label %35, label %36, !dbg !4730

35:                                               ; preds = %32
  call void @abort() #20, !dbg !4731
  unreachable, !dbg !4731

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4732
  %38 = icmp ule i64 -2, %37, !dbg !4734
  br i1 %38, label %39, label %53, !dbg !4735

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4736
  %41 = icmp ne i64 %40, 0, !dbg !4737
  br i1 %41, label %42, label %53, !dbg !4738

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4739
  br i1 %43, label %53, label %44, !dbg !4740

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4741
  %46 = icmp ne i32* %45, null, !dbg !4744
  br i1 %46, label %47, label %52, !dbg !4745

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4746
  %49 = load i8, i8* %48, align 1, !dbg !4747
  %50 = zext i8 %49 to i32, !dbg !4748
  %51 = load i32*, i32** %6, align 8, !dbg !4749
  store i32 %50, i32* %51, align 4, !dbg !4750
  br label %52, !dbg !4751

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4752
  br label %55, !dbg !4752

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4753
  store i64 %54, i64* %5, align 8, !dbg !4754
  br label %55, !dbg !4754

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4755
  ret i64 %56, !dbg !4755
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !4756 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !4771, metadata !DIExpression()), !dbg !4772
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !4773
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !4774
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !4774
  ret void, !dbg !4775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4776 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4779, metadata !DIExpression()), !dbg !4780
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4781, metadata !DIExpression()), !dbg !4782
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4783, metadata !DIExpression()), !dbg !4784
  %7 = load i8*, i8** %4, align 8, !dbg !4785
  %8 = load i8*, i8** %5, align 8, !dbg !4786
  %9 = load i64, i64* %6, align 8, !dbg !4787
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #21, !dbg !4788
  %11 = icmp ne i32 %10, 0, !dbg !4789
  %12 = xor i1 %11, true, !dbg !4789
  ret i1 %12, !dbg !4790
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_pipe2(i32* noundef nonnull %0, i32 noundef %1) #4 !dbg !241 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !4791, metadata !DIExpression()), !dbg !4792
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4793, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.declare(metadata [2 x i32]* %6, metadata !4795, metadata !DIExpression()), !dbg !4796
  %11 = load i32*, i32** %4, align 8, !dbg !4797
  %12 = getelementptr inbounds i32, i32* %11, i64 0, !dbg !4797
  %13 = load i32, i32* %12, align 4, !dbg !4797
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0, !dbg !4798
  store i32 %13, i32* %14, align 4, !dbg !4799
  %15 = load i32*, i32** %4, align 8, !dbg !4800
  %16 = getelementptr inbounds i32, i32* %15, i64 1, !dbg !4800
  %17 = load i32, i32* %16, align 4, !dbg !4800
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1, !dbg !4801
  store i32 %17, i32* %18, align 4, !dbg !4802
  %19 = load i32, i32* @rpl_pipe2.have_pipe2_really, align 4, !dbg !4803
  %20 = icmp sge i32 %19, 0, !dbg !4806
  br i1 %20, label %21, label %34, !dbg !4807

21:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4808, metadata !DIExpression()), !dbg !4810
  %22 = load i32*, i32** %4, align 8, !dbg !4811
  %23 = load i32, i32* %5, align 4, !dbg !4812
  %24 = call i32 @pipe2(i32* noundef %22, i32 noundef %23) #19, !dbg !4813
  store i32 %24, i32* %7, align 4, !dbg !4810
  %25 = load i32, i32* %7, align 4, !dbg !4814
  %26 = icmp slt i32 %25, 0, !dbg !4816
  br i1 %26, label %27, label %31, !dbg !4817

27:                                               ; preds = %21
  %28 = call i32* @__errno_location() #22, !dbg !4818
  %29 = load i32, i32* %28, align 4, !dbg !4818
  %30 = icmp eq i32 %29, 38, !dbg !4819
  br i1 %30, label %33, label %31, !dbg !4820

31:                                               ; preds = %27, %21
  store i32 1, i32* @rpl_pipe2.have_pipe2_really, align 4, !dbg !4821
  %32 = load i32, i32* %7, align 4, !dbg !4823
  store i32 %32, i32* %3, align 4, !dbg !4824
  br label %135, !dbg !4824

33:                                               ; preds = %27
  store i32 -1, i32* @rpl_pipe2.have_pipe2_really, align 4, !dbg !4825
  br label %34, !dbg !4826

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %5, align 4, !dbg !4827
  %36 = and i32 %35, -526337, !dbg !4829
  %37 = icmp ne i32 %36, 0, !dbg !4830
  br i1 %37, label %38, label %40, !dbg !4831

38:                                               ; preds = %34
  %39 = call i32* @__errno_location() #22, !dbg !4832
  store i32 22, i32* %39, align 4, !dbg !4834
  store i32 -1, i32* %3, align 4, !dbg !4835
  br label %135, !dbg !4835

40:                                               ; preds = %34
  %41 = load i32*, i32** %4, align 8, !dbg !4836
  %42 = call i32 @pipe(i32* noundef %41) #19, !dbg !4838
  %43 = icmp slt i32 %42, 0, !dbg !4839
  br i1 %43, label %44, label %45, !dbg !4840

44:                                               ; preds = %40
  store i32 -1, i32* %3, align 4, !dbg !4841
  br label %135, !dbg !4841

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4, !dbg !4842
  %47 = and i32 %46, 2048, !dbg !4844
  %48 = icmp ne i32 %47, 0, !dbg !4844
  br i1 %48, label %49, label %79, !dbg !4845

49:                                               ; preds = %45
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4846, metadata !DIExpression()), !dbg !4848
  %50 = load i32*, i32** %4, align 8, !dbg !4849
  %51 = getelementptr inbounds i32, i32* %50, i64 1, !dbg !4849
  %52 = load i32, i32* %51, align 4, !dbg !4849
  %53 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %52, i32 noundef 3, i32 noundef 0), !dbg !4851
  store i32 %53, i32* %8, align 4, !dbg !4852
  %54 = icmp slt i32 %53, 0, !dbg !4853
  br i1 %54, label %77, label %55, !dbg !4854

55:                                               ; preds = %49
  %56 = load i32*, i32** %4, align 8, !dbg !4855
  %57 = getelementptr inbounds i32, i32* %56, i64 1, !dbg !4855
  %58 = load i32, i32* %57, align 4, !dbg !4855
  %59 = load i32, i32* %8, align 4, !dbg !4856
  %60 = or i32 %59, 2048, !dbg !4857
  %61 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %58, i32 noundef 4, i32 noundef %60), !dbg !4858
  %62 = icmp eq i32 %61, -1, !dbg !4859
  br i1 %62, label %77, label %63, !dbg !4860

63:                                               ; preds = %55
  %64 = load i32*, i32** %4, align 8, !dbg !4861
  %65 = getelementptr inbounds i32, i32* %64, i64 0, !dbg !4861
  %66 = load i32, i32* %65, align 4, !dbg !4861
  %67 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %66, i32 noundef 3, i32 noundef 0), !dbg !4862
  store i32 %67, i32* %8, align 4, !dbg !4863
  %68 = icmp slt i32 %67, 0, !dbg !4864
  br i1 %68, label %77, label %69, !dbg !4865

69:                                               ; preds = %63
  %70 = load i32*, i32** %4, align 8, !dbg !4866
  %71 = getelementptr inbounds i32, i32* %70, i64 0, !dbg !4866
  %72 = load i32, i32* %71, align 4, !dbg !4866
  %73 = load i32, i32* %8, align 4, !dbg !4867
  %74 = or i32 %73, 2048, !dbg !4868
  %75 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %72, i32 noundef 4, i32 noundef %74), !dbg !4869
  %76 = icmp eq i32 %75, -1, !dbg !4870
  br i1 %76, label %77, label %78, !dbg !4871

77:                                               ; preds = %69, %63, %55, %49
  br label %114, !dbg !4872

78:                                               ; preds = %69
  br label %79, !dbg !4873

79:                                               ; preds = %78, %45
  %80 = load i32, i32* %5, align 4, !dbg !4874
  %81 = and i32 %80, 524288, !dbg !4876
  %82 = icmp ne i32 %81, 0, !dbg !4876
  br i1 %82, label %83, label %113, !dbg !4877

83:                                               ; preds = %79
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4878, metadata !DIExpression()), !dbg !4880
  %84 = load i32*, i32** %4, align 8, !dbg !4881
  %85 = getelementptr inbounds i32, i32* %84, i64 1, !dbg !4881
  %86 = load i32, i32* %85, align 4, !dbg !4881
  %87 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %86, i32 noundef 1, i32 noundef 0), !dbg !4883
  store i32 %87, i32* %9, align 4, !dbg !4884
  %88 = icmp slt i32 %87, 0, !dbg !4885
  br i1 %88, label %111, label %89, !dbg !4886

89:                                               ; preds = %83
  %90 = load i32*, i32** %4, align 8, !dbg !4887
  %91 = getelementptr inbounds i32, i32* %90, i64 1, !dbg !4887
  %92 = load i32, i32* %91, align 4, !dbg !4887
  %93 = load i32, i32* %9, align 4, !dbg !4888
  %94 = or i32 %93, 1, !dbg !4889
  %95 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %92, i32 noundef 2, i32 noundef %94), !dbg !4890
  %96 = icmp eq i32 %95, -1, !dbg !4891
  br i1 %96, label %111, label %97, !dbg !4892

97:                                               ; preds = %89
  %98 = load i32*, i32** %4, align 8, !dbg !4893
  %99 = getelementptr inbounds i32, i32* %98, i64 0, !dbg !4893
  %100 = load i32, i32* %99, align 4, !dbg !4893
  %101 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %100, i32 noundef 1, i32 noundef 0), !dbg !4894
  store i32 %101, i32* %9, align 4, !dbg !4895
  %102 = icmp slt i32 %101, 0, !dbg !4896
  br i1 %102, label %111, label %103, !dbg !4897

103:                                              ; preds = %97
  %104 = load i32*, i32** %4, align 8, !dbg !4898
  %105 = getelementptr inbounds i32, i32* %104, i64 0, !dbg !4898
  %106 = load i32, i32* %105, align 4, !dbg !4898
  %107 = load i32, i32* %9, align 4, !dbg !4899
  %108 = or i32 %107, 1, !dbg !4900
  %109 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %106, i32 noundef 2, i32 noundef %108), !dbg !4901
  %110 = icmp eq i32 %109, -1, !dbg !4902
  br i1 %110, label %111, label %112, !dbg !4903

111:                                              ; preds = %103, %97, %89, %83
  br label %114, !dbg !4904

112:                                              ; preds = %103
  br label %113, !dbg !4905

113:                                              ; preds = %112, %79
  store i32 0, i32* %3, align 4, !dbg !4906
  br label %135, !dbg !4906

114:                                              ; preds = %111, %77
  call void @llvm.dbg.label(metadata !4907), !dbg !4908
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4909, metadata !DIExpression()), !dbg !4911
  %115 = call i32* @__errno_location() #22, !dbg !4912
  %116 = load i32, i32* %115, align 4, !dbg !4912
  store i32 %116, i32* %10, align 4, !dbg !4911
  %117 = load i32*, i32** %4, align 8, !dbg !4913
  %118 = getelementptr inbounds i32, i32* %117, i64 0, !dbg !4913
  %119 = load i32, i32* %118, align 4, !dbg !4913
  %120 = call i32 @close(i32 noundef %119), !dbg !4914
  %121 = load i32*, i32** %4, align 8, !dbg !4915
  %122 = getelementptr inbounds i32, i32* %121, i64 1, !dbg !4915
  %123 = load i32, i32* %122, align 4, !dbg !4915
  %124 = call i32 @close(i32 noundef %123), !dbg !4916
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0, !dbg !4917
  %126 = load i32, i32* %125, align 4, !dbg !4917
  %127 = load i32*, i32** %4, align 8, !dbg !4918
  %128 = getelementptr inbounds i32, i32* %127, i64 0, !dbg !4918
  store i32 %126, i32* %128, align 4, !dbg !4919
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1, !dbg !4920
  %130 = load i32, i32* %129, align 4, !dbg !4920
  %131 = load i32*, i32** %4, align 8, !dbg !4921
  %132 = getelementptr inbounds i32, i32* %131, i64 1, !dbg !4921
  store i32 %130, i32* %132, align 4, !dbg !4922
  %133 = load i32, i32* %10, align 4, !dbg !4923
  %134 = call i32* @__errno_location() #22, !dbg !4924
  store i32 %133, i32* %134, align 4, !dbg !4925
  store i32 -1, i32* %3, align 4, !dbg !4926
  br label %135, !dbg !4926

135:                                              ; preds = %114, %113, %44, %38, %31
  %136 = load i32, i32* %3, align 4, !dbg !4927
  ret i32 %136, !dbg !4927
}

; Function Attrs: nounwind
declare i32 @pipe2(i32* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @pipe(i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4928 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4930, metadata !DIExpression()), !dbg !4931
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4932, metadata !DIExpression()), !dbg !4933
  %5 = load i8*, i8** %3, align 8, !dbg !4934
  %6 = load i64, i64* %4, align 8, !dbg !4935
  %7 = icmp ne i64 %6, 0, !dbg !4935
  br i1 %7, label %8, label %10, !dbg !4935

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4936
  br label %11, !dbg !4935

10:                                               ; preds = %2
  br label %11, !dbg !4935

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4935
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #19, !dbg !4937
  ret i8* %13, !dbg !4938
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4939 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4940, metadata !DIExpression()), !dbg !4941
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4942, metadata !DIExpression()), !dbg !4943
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4944, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4946, metadata !DIExpression()), !dbg !4947
  %9 = load i64, i64* %7, align 8, !dbg !4948
  %10 = icmp ult i64 %9, 0, !dbg !4948
  br i1 %10, label %11, label %60, !dbg !4948

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4948
  %13 = icmp ult i64 %12, 0, !dbg !4948
  br i1 %13, label %14, label %37, !dbg !4948

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4948

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4948
  %17 = load i64, i64* %7, align 8, !dbg !4948
  %18 = udiv i64 -1, %17, !dbg !4948
  %19 = icmp ult i64 %16, %18, !dbg !4948
  br i1 %19, label %92, label %96, !dbg !4948

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4948

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4948
  %23 = icmp ult i64 %22, 1, !dbg !4948
  br i1 %23, label %27, label %28, !dbg !4948

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4948
  %26 = icmp ult i64 0, %25, !dbg !4948
  br i1 %26, label %27, label %28, !dbg !4948

27:                                               ; preds = %24, %21
  br label %32, !dbg !4948

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4948
  %30 = sub i64 0, %29, !dbg !4948
  %31 = udiv i64 -1, %30, !dbg !4948
  br label %32, !dbg !4948

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4948
  %34 = load i64, i64* %6, align 8, !dbg !4948
  %35 = sub i64 -1, %34, !dbg !4948
  %36 = icmp ule i64 %33, %35, !dbg !4948
  br i1 %36, label %92, label %96, !dbg !4948

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4948

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4948

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4948

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4948
  %42 = icmp eq i64 %41, -1, !dbg !4948
  br i1 %42, label %43, label %55, !dbg !4948

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4948

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4948
  %46 = add i64 %45, 0, !dbg !4948
  %47 = icmp ult i64 0, %46, !dbg !4948
  br i1 %47, label %92, label %96, !dbg !4948

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4948
  %50 = icmp ult i64 0, %49, !dbg !4948
  br i1 %50, label %51, label %96, !dbg !4948

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4948
  %53 = sub i64 %52, 1, !dbg !4948
  %54 = icmp ult i64 -1, %53, !dbg !4948
  br i1 %54, label %92, label %96, !dbg !4948

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4948
  %57 = udiv i64 0, %56, !dbg !4948
  %58 = load i64, i64* %6, align 8, !dbg !4948
  %59 = icmp ult i64 %57, %58, !dbg !4948
  br i1 %59, label %92, label %96, !dbg !4948

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4948
  %62 = icmp eq i64 %61, 0, !dbg !4948
  br i1 %62, label %63, label %64, !dbg !4948

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4948

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4948
  %66 = icmp ult i64 %65, 0, !dbg !4948
  br i1 %66, label %67, label %87, !dbg !4948

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4948

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4948

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4948

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4948
  %72 = icmp eq i64 %71, -1, !dbg !4948
  br i1 %72, label %73, label %82, !dbg !4948

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4948

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4948
  %76 = add i64 %75, 0, !dbg !4948
  %77 = icmp ult i64 0, %76, !dbg !4948
  br i1 %77, label %92, label %96, !dbg !4948

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4948
  %80 = sub i64 %79, 1, !dbg !4948
  %81 = icmp ult i64 -1, %80, !dbg !4948
  br i1 %81, label %92, label %96, !dbg !4948

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4948
  %84 = udiv i64 0, %83, !dbg !4948
  %85 = load i64, i64* %7, align 8, !dbg !4948
  %86 = icmp ult i64 %84, %85, !dbg !4948
  br i1 %86, label %92, label %96, !dbg !4948

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4948
  %89 = udiv i64 -1, %88, !dbg !4948
  %90 = load i64, i64* %6, align 8, !dbg !4948
  %91 = icmp ult i64 %89, %90, !dbg !4948
  br i1 %91, label %92, label %96, !dbg !4948

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4948
  %94 = load i64, i64* %7, align 8, !dbg !4948
  %95 = mul i64 %93, %94, !dbg !4948
  store i64 %95, i64* %8, align 8, !dbg !4948
  br label %100, !dbg !4948

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4948
  %98 = load i64, i64* %7, align 8, !dbg !4948
  %99 = mul i64 %97, %98, !dbg !4948
  store i64 %99, i64* %8, align 8, !dbg !4948
  br label %100, !dbg !4948

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4948
  %102 = icmp ne i32 %101, 0, !dbg !4948
  br i1 %102, label %103, label %105, !dbg !4950

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #22, !dbg !4951
  store i32 12, i32* %104, align 4, !dbg !4953
  store i8* null, i8** %4, align 8, !dbg !4954
  br label %109, !dbg !4954

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4955
  %107 = load i64, i64* %8, align 8, !dbg !4956
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4957
  store i8* %108, i8** %4, align 8, !dbg !4958
  br label %109, !dbg !4958

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4959
  ret i8* %110, !dbg !4959
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4960 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4963, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4965, metadata !DIExpression()), !dbg !4969
  %5 = load i32, i32* %3, align 4, !dbg !4970
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4972
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4973
  %8 = icmp ne i32 %7, 0, !dbg !4973
  br i1 %8, label %9, label %10, !dbg !4974

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4975
  br label %18, !dbg !4975

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4976
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i64 0, i64 0)), !dbg !4978
  br i1 %12, label %17, label %13, !dbg !4979

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4980
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.195, i64 0, i64 0)), !dbg !4981
  br i1 %15, label %17, label %16, !dbg !4982

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4983
  br label %18, !dbg !4983

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4984
  br label %18, !dbg !4984

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4985
  ret i1 %19, !dbg !4985
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4986 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4989, metadata !DIExpression()), !dbg !4990
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4991, metadata !DIExpression()), !dbg !4992
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4993, metadata !DIExpression()), !dbg !4994
  %7 = load i32, i32* %4, align 4, !dbg !4995
  %8 = load i8*, i8** %5, align 8, !dbg !4996
  %9 = load i64, i64* %6, align 8, !dbg !4997
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4998
  ret i32 %10, !dbg !4999
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !5000 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5003, metadata !DIExpression()), !dbg !5004
  %3 = load i32, i32* %2, align 4, !dbg !5005
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !5006
  ret i8* %4, !dbg !5007
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !5008 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5009, metadata !DIExpression()), !dbg !5010
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5011, metadata !DIExpression()), !dbg !5012
  %4 = load i32, i32* %2, align 4, !dbg !5013
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #19, !dbg !5014
  store i8* %5, i8** %3, align 8, !dbg !5012
  %6 = load i8*, i8** %3, align 8, !dbg !5015
  ret i8* %6, !dbg !5016
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !5017 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5018, metadata !DIExpression()), !dbg !5019
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5020, metadata !DIExpression()), !dbg !5021
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5022, metadata !DIExpression()), !dbg !5023
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5024, metadata !DIExpression()), !dbg !5025
  %10 = load i32, i32* %5, align 4, !dbg !5026
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !5027
  store i8* %11, i8** %8, align 8, !dbg !5025
  %12 = load i8*, i8** %8, align 8, !dbg !5028
  %13 = icmp eq i8* %12, null, !dbg !5030
  br i1 %13, label %14, label %21, !dbg !5031

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !5032
  %16 = icmp ugt i64 %15, 0, !dbg !5035
  br i1 %16, label %17, label %20, !dbg !5036

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !5037
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !5037
  store i8 0, i8* %19, align 1, !dbg !5038
  br label %20, !dbg !5037

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !5039
  br label %45, !dbg !5039

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5040, metadata !DIExpression()), !dbg !5042
  %22 = load i8*, i8** %8, align 8, !dbg !5043
  %23 = call i64 @strlen(i8* noundef %22) #21, !dbg !5044
  store i64 %23, i64* %9, align 8, !dbg !5042
  %24 = load i64, i64* %9, align 8, !dbg !5045
  %25 = load i64, i64* %7, align 8, !dbg !5047
  %26 = icmp ult i64 %24, %25, !dbg !5048
  br i1 %26, label %27, label %32, !dbg !5049

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !5050
  %29 = load i8*, i8** %8, align 8, !dbg !5052
  %30 = load i64, i64* %9, align 8, !dbg !5053
  %31 = add i64 %30, 1, !dbg !5054
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !5055
  store i32 0, i32* %4, align 4, !dbg !5056
  br label %45, !dbg !5056

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !5057
  %34 = icmp ugt i64 %33, 0, !dbg !5060
  br i1 %34, label %35, label %44, !dbg !5061

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !5062
  %37 = load i8*, i8** %8, align 8, !dbg !5064
  %38 = load i64, i64* %7, align 8, !dbg !5065
  %39 = sub i64 %38, 1, !dbg !5066
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !5067
  %40 = load i8*, i8** %6, align 8, !dbg !5068
  %41 = load i64, i64* %7, align 8, !dbg !5069
  %42 = sub i64 %41, 1, !dbg !5070
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !5068
  store i8 0, i8* %43, align 1, !dbg !5071
  br label %44, !dbg !5072

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !5073
  br label %45, !dbg !5073

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !5074
  ret i32 %46, !dbg !5074
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
attributes #9 = { noinline nounwind optnone uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #10 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #11 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { cold noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { nofree nosync nounwind willreturn }
attributes #14 = { noinline nounwind optnone readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { argmemonly nofree nounwind willreturn writeonly }
attributes #16 = { noinline nounwind optnone uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { noinline nounwind optnone uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { noinline nounwind optnone uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nounwind readnone willreturn }
attributes #23 = { allocsize(0) }
attributes #24 = { allocsize(1) }
attributes #25 = { noreturn }
attributes #26 = { cold }
attributes #27 = { allocsize(1,2) }
attributes #28 = { allocsize(0,1) }

!llvm.dbg.cu = !{!9, !40, !247, !45, !53, !214, !91, !250, !253, !255, !95, !257, !112, !122, !129, !259, !266, !268, !206, !274, !294, !296, !298, !300, !302, !304, !306, !308, !310, !220, !312, !314, !245, !316, !318, !321, !323, !325}
!llvm.ident = !{!327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327, !327}
!llvm.module.flags = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !37)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !31, globals: !36, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/yes.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e168110abf014226da6862ea552ec304")
!11 = !{!12, !28}
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
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 81, baseType: !14, size: 32, elements: !29)
!29 = !{!30}
!30 = !DIEnumerator(name: "SPLICE_PIPE_SIZE", value: 524288)
!31 = !{!6, !32, !33, !34, !35}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!36 = !{!0}
!37 = !{}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "Version", scope: !40, file: !41, line: 3, type: !6, isLocal: false, isDefinition: true)
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !42, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!42 = !{!38}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "file_name", scope: !45, file: !46, line: 45, type: !6, isLocal: true, isDefinition: true)
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !47, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!47 = !{!43, !48}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !45, file: !46, line: 55, type: !50, isLocal: true, isDefinition: true)
!50 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !53, file: !54, line: 66, type: !82, isLocal: false, isDefinition: true)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !55, globals: !56, splitDebugInlining: false, nameTableKind: None)
!54 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!55 = !{!32}
!56 = !{!57, !76, !51, !78, !80}
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "old_file_name", scope: !59, file: !54, line: 304, type: !6, isLocal: true, isDefinition: true)
!59 = distinct !DISubprogram(name: "verror_at_line", scope: !54, file: !54, line: 298, type: !60, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !37)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !33, !33, !6, !14, !6, !62}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !63, line: 52, baseType: !64)
!63 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !65, line: 32, baseType: !66)
!65 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !67, baseType: !68)
!67 = !DIFile(filename: "lib/error.c", directory: "/src")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !69, size: 256, elements: !70)
!69 = !DINamespace(name: "std", scope: null)
!70 = !{!71, !72, !73, !74, !75}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !68, file: !67, baseType: !32, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !68, file: !67, baseType: !32, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !68, file: !67, baseType: !32, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !68, file: !67, baseType: !33, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !68, file: !67, baseType: !33, size: 32, offset: 224)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "old_line_number", scope: !59, file: !54, line: 305, type: !14, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "error_message_count", scope: !53, file: !54, line: 69, type: !14, isLocal: false, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !53, file: !54, line: 295, type: !33, isLocal: false, isDefinition: true)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null}
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !87, file: !88, line: 506, type: !33, isLocal: true, isDefinition: true)
!87 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !88, file: !88, line: 485, type: !89, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !91, retainedNodes: !37)
!88 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!89 = !DISubroutineType(types: !90)
!90 = !{!33, !33, !33}
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !92, splitDebugInlining: false, nameTableKind: None)
!92 = !{!85}
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "long_options", scope: !95, file: !96, line: 34, type: !98, isLocal: true, isDefinition: true)
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !97, splitDebugInlining: false, nameTableKind: None)
!96 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!97 = !{!93}
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 768, elements: !108)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !101, line: 50, size: 256, elements: !102)
!101 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!102 = !{!103, !104, !105, !107}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !100, file: !101, line: 52, baseType: !6, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !100, file: !101, line: 55, baseType: !33, size: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !100, file: !101, line: 56, baseType: !106, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !100, file: !101, line: 57, baseType: !33, size: 32, offset: 192)
!108 = !{!109}
!109 = !DISubrange(count: 3)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "program_name", scope: !112, file: !113, line: 31, type: !6, isLocal: false, isDefinition: true)
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !114, globals: !115, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!114 = !{!35}
!115 = !{!110}
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "utf07FF", scope: !118, file: !119, line: 46, type: !124, isLocal: true, isDefinition: true)
!118 = distinct !DISubprogram(name: "proper_name_lite", scope: !119, file: !119, line: 38, type: !120, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !37)
!119 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!120 = !DISubroutineType(types: !121)
!121 = !{!6, !6, !6}
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !123, splitDebugInlining: false, nameTableKind: None)
!123 = !{!116}
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 2)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !129, file: !130, line: 76, type: !200, isLocal: false, isDefinition: true)
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !131, retainedTypes: !151, globals: !155, splitDebugInlining: false, nameTableKind: None)
!130 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!131 = !{!132, !146, !12}
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !133, line: 42, baseType: !14, size: 32, elements: !134)
!133 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!135 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!136 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!137 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!138 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!139 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!140 = !DIEnumerator(name: "c_quoting_style", value: 5)
!141 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!142 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!143 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!144 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!145 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !133, line: 254, baseType: !14, size: 32, elements: !147)
!147 = !{!148, !149, !150}
!148 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!149 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!150 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!151 = !{!33, !34, !152}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 46, baseType: !154)
!153 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!154 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!155 = !{!127, !156, !162, !174, !176, !181, !189, !196, !198}
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !129, file: !130, line: 92, type: !158, isLocal: false, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 320, elements: !160)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!160 = !{!161}
!161 = !DISubrange(count: 10)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !129, file: !130, line: 1040, type: !164, isLocal: false, isDefinition: true)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !130, line: 56, size: 448, elements: !165)
!165 = !{!166, !167, !168, !172, !173}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !164, file: !130, line: 59, baseType: !132, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !130, line: 62, baseType: !33, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !164, file: !130, line: 66, baseType: !169, size: 256, offset: 64)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 8)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !164, file: !130, line: 69, baseType: !6, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !164, file: !130, line: 72, baseType: !6, size: 64, offset: 384)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !129, file: !130, line: 107, type: !164, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "slot0", scope: !129, file: !130, line: 831, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 256)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "quote", scope: !183, file: !130, line: 228, type: !186, isLocal: true, isDefinition: true)
!183 = distinct !DISubprogram(name: "gettext_quote", scope: !130, file: !130, line: 197, type: !184, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !37)
!184 = !DISubroutineType(types: !185)
!185 = !{!6, !6, !132}
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !187)
!187 = !{!126, !188}
!188 = !DISubrange(count: 4)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "slotvec", scope: !129, file: !130, line: 834, type: !191, isLocal: true, isDefinition: true)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !130, line: 823, size: 128, elements: !193)
!193 = !{!194, !195}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !192, file: !130, line: 825, baseType: !152, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !192, file: !130, line: 826, baseType: !35, size: 64, offset: 64)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "nslots", scope: !129, file: !130, line: 832, type: !33, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "slotvec0", scope: !129, file: !130, line: 833, type: !192, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 704, elements: !202)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!202 = !{!203}
!203 = !DISubrange(count: 11)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !206, file: !207, line: 26, type: !209, isLocal: false, isDefinition: true)
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !208, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!208 = !{!204}
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 47)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "exit_failure", scope: !214, file: !215, line: 24, type: !217, isLocal: false, isDefinition: true)
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !216, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!216 = !{!212}
!217 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "internal_state", scope: !220, file: !221, line: 97, type: !225, isLocal: true, isDefinition: true)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !222, globals: !224, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!222 = !{!32, !152, !223}
!223 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!224 = !{!218}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !226, line: 6, baseType: !227)
!226 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !228, line: 21, baseType: !229)
!228 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !228, line: 13, size: 64, elements: !230)
!230 = !{!231, !232}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !229, file: !228, line: 15, baseType: !33, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !229, file: !228, line: 20, baseType: !233, size: 32, offset: 32)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !228, line: 16, size: 32, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !233, file: !228, line: 18, baseType: !14, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !233, file: !228, line: 19, baseType: !237, size: 32)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !238)
!238 = !{!188}
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "have_pipe2_really", scope: !241, file: !242, line: 54, type: !33, isLocal: true, isDefinition: true)
!241 = distinct !DISubprogram(name: "rpl_pipe2", scope: !242, file: !242, line: 39, type: !243, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !245, retainedNodes: !37)
!242 = !DIFile(filename: "lib/pipe2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b2941420442dd7afd7b1a45758b7ccee")
!243 = !DISubroutineType(types: !244)
!244 = !{!33, !106, !33}
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !246, splitDebugInlining: false, nameTableKind: None)
!246 = !{!239}
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !249, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/alignalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c7b4e88e983bf489857cf19a7acb042c")
!249 = !{!152}
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !252, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!252 = !{!6}
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!254 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "lib/isapipe.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5445de1f00883805631d924b7433dad7")
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "lib/pipe2-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f5a0d0feff89b6f036d8f7a6e8480abb")
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !261, retainedTypes: !249, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "lib/safe-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "868d9fdfbe37109ce7387a63f56e5cc3")
!261 = !{!262}
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !263, line: 36, baseType: !14, size: 32, elements: !264)
!263 = !DIFile(filename: "./lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!264 = !{!265}
!265 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072)
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !270, retainedTypes: !55, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!270 = !{!271}
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !269, line: 40, baseType: !14, size: 32, elements: !272)
!272 = !{!273}
!273 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, retainedTypes: !293, splitDebugInlining: false, nameTableKind: None)
!275 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!276 = !{!277, !284}
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !278, file: !275, line: 188, baseType: !14, size: 32, elements: !282)
!278 = distinct !DISubprogram(name: "x2nrealloc", scope: !275, file: !275, line: 176, type: !279, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!279 = !DISubroutineType(types: !280)
!280 = !{!32, !32, !281, !152}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!282 = !{!283}
!283 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!284 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !285, file: !275, line: 228, baseType: !14, size: 32, elements: !282)
!285 = distinct !DISubprogram(name: "xpalloc", scope: !275, file: !275, line: 223, type: !286, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!286 = !DISubroutineType(types: !287)
!287 = !{!32, !32, !288, !289, !291, !289}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !290, line: 130, baseType: !291)
!290 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !153, line: 35, baseType: !292)
!292 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!293 = !{!35, !32, !50, !292, !154}
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!295 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!296 = distinct !DICompileUnit(language: DW_LANG_C99, file: !297, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!297 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!298 = distinct !DICompileUnit(language: DW_LANG_C99, file: !299, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!299 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!300 = distinct !DICompileUnit(language: DW_LANG_C99, file: !301, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!301 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!302 = distinct !DICompileUnit(language: DW_LANG_C99, file: !303, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!303 = !DIFile(filename: "lib/fd-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "63ab878cf4b441e9798f87a8e3963108")
!304 = distinct !DICompileUnit(language: DW_LANG_C99, file: !305, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!305 = !DIFile(filename: "lib/dup-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad0f64dd333db5cafacb6809a74d5848")
!306 = distinct !DICompileUnit(language: DW_LANG_C99, file: !307, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !55, splitDebugInlining: false, nameTableKind: None)
!307 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !309, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !55, splitDebugInlining: false, nameTableKind: None)
!309 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!310 = distinct !DICompileUnit(language: DW_LANG_C99, file: !311, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !55, splitDebugInlining: false, nameTableKind: None)
!311 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!312 = distinct !DICompileUnit(language: DW_LANG_C99, file: !313, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!315 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!316 = distinct !DICompileUnit(language: DW_LANG_C99, file: !317, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!317 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!318 = distinct !DICompileUnit(language: DW_LANG_C99, file: !319, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !320, splitDebugInlining: false, nameTableKind: None)
!319 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!320 = !{!50, !154, !32}
!321 = distinct !DICompileUnit(language: DW_LANG_C99, file: !322, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!322 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!323 = distinct !DICompileUnit(language: DW_LANG_C99, file: !324, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!324 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!325 = distinct !DICompileUnit(language: DW_LANG_C99, file: !326, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !55, splitDebugInlining: false, nameTableKind: None)
!326 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!327 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!328 = !{i32 7, !"Dwarf Version", i32 5}
!329 = !{i32 2, !"Debug Info Version", i32 3}
!330 = !{i32 1, !"wchar_size", i32 4}
!331 = !{i32 1, !"branch-target-enforcement", i32 0}
!332 = !{i32 1, !"sign-return-address", i32 0}
!333 = !{i32 1, !"sign-return-address-all", i32 0}
!334 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!335 = !{i32 7, !"PIC Level", i32 2}
!336 = !{i32 7, !"PIE Level", i32 2}
!337 = !{i32 7, !"uwtable", i32 1}
!338 = !{i32 7, !"frame-pointer", i32 1}
!339 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 38, type: !340, scopeLine: 39, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !37)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !33}
!342 = !DILocalVariable(name: "status", arg: 1, scope: !339, file: !10, line: 38, type: !33)
!343 = !DILocation(line: 38, column: 12, scope: !339)
!344 = !DILocation(line: 40, column: 7, scope: !345)
!345 = distinct !DILexicalBlock(scope: !339, file: !10, line: 40, column: 7)
!346 = !DILocation(line: 40, column: 14, scope: !345)
!347 = !DILocation(line: 40, column: 7, scope: !339)
!348 = !DILocation(line: 41, column: 5, scope: !345)
!349 = !DILocation(line: 41, column: 5, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !10, line: 41, column: 5)
!351 = !DILocation(line: 44, column: 15, scope: !352)
!352 = distinct !DILexicalBlock(scope: !345, file: !10, line: 43, column: 5)
!353 = !DILocation(line: 48, column: 15, scope: !352)
!354 = !DILocation(line: 48, column: 29, scope: !352)
!355 = !DILocation(line: 44, column: 7, scope: !352)
!356 = !DILocation(line: 50, column: 7, scope: !352)
!357 = !DILocation(line: 54, column: 7, scope: !352)
!358 = !DILocation(line: 55, column: 7, scope: !352)
!359 = !DILocation(line: 56, column: 7, scope: !352)
!360 = !DILocation(line: 58, column: 9, scope: !339)
!361 = !DILocation(line: 58, column: 3, scope: !339)
!362 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!363 = !DILocation(line: 573, column: 34, scope: !2)
!364 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!365 = !DILocation(line: 573, column: 55, scope: !2)
!366 = !DILocation(line: 581, column: 7, scope: !367)
!367 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!368 = !DILocation(line: 581, column: 19, scope: !367)
!369 = !DILocation(line: 581, column: 7, scope: !2)
!370 = !DILocalVariable(name: "term", scope: !371, file: !3, line: 585, type: !6)
!371 = distinct !DILexicalBlock(scope: !367, file: !3, line: 582, column: 5)
!372 = !DILocation(line: 585, column: 19, scope: !371)
!373 = !DILocation(line: 585, column: 26, scope: !371)
!374 = !DILocation(line: 586, column: 23, scope: !371)
!375 = !DILocation(line: 586, column: 28, scope: !371)
!376 = !DILocation(line: 586, column: 33, scope: !371)
!377 = !DILocation(line: 586, column: 32, scope: !371)
!378 = !DILocation(line: 586, column: 38, scope: !371)
!379 = !DILocation(line: 586, column: 48, scope: !371)
!380 = !DILocation(line: 586, column: 41, scope: !371)
!381 = !DILocation(line: 586, column: 19, scope: !371)
!382 = !DILocation(line: 587, column: 5, scope: !371)
!383 = !DILocation(line: 588, column: 7, scope: !384)
!384 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!385 = !DILocation(line: 588, column: 7, scope: !2)
!386 = !DILocation(line: 590, column: 7, scope: !387)
!387 = distinct !DILexicalBlock(scope: !384, file: !3, line: 589, column: 5)
!388 = !DILocation(line: 591, column: 7, scope: !387)
!389 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !50)
!390 = !DILocation(line: 594, column: 8, scope: !2)
!391 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!392 = !DILocation(line: 595, column: 15, scope: !2)
!393 = !DILocation(line: 595, column: 28, scope: !2)
!394 = !DILocation(line: 595, column: 45, scope: !2)
!395 = !DILocation(line: 595, column: 37, scope: !2)
!396 = !DILocation(line: 595, column: 35, scope: !2)
!397 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!398 = !DILocation(line: 596, column: 15, scope: !2)
!399 = !DILocation(line: 596, column: 37, scope: !2)
!400 = !DILocation(line: 596, column: 29, scope: !2)
!401 = !DILocation(line: 597, column: 8, scope: !402)
!402 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!403 = !DILocation(line: 597, column: 7, scope: !2)
!404 = !DILocation(line: 599, column: 21, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !3, line: 598, column: 5)
!406 = !DILocation(line: 599, column: 19, scope: !405)
!407 = !DILocation(line: 602, column: 20, scope: !405)
!408 = !DILocation(line: 603, column: 5, scope: !405)
!409 = !DILocation(line: 604, column: 12, scope: !410)
!410 = distinct !DILexicalBlock(scope: !402, file: !3, line: 604, column: 12)
!411 = !DILocation(line: 604, column: 27, scope: !410)
!412 = !DILocation(line: 604, column: 24, scope: !410)
!413 = !DILocation(line: 604, column: 12, scope: !402)
!414 = !DILocalVariable(name: "s", scope: !415, file: !3, line: 608, type: !6)
!415 = distinct !DILexicalBlock(scope: !410, file: !3, line: 605, column: 5)
!416 = !DILocation(line: 608, column: 19, scope: !415)
!417 = !DILocation(line: 608, column: 23, scope: !415)
!418 = !DILocalVariable(name: "spaces", scope: !415, file: !3, line: 609, type: !152)
!419 = !DILocation(line: 609, column: 14, scope: !415)
!420 = !DILocation(line: 610, column: 7, scope: !415)
!421 = !DILocation(line: 610, column: 14, scope: !415)
!422 = !DILocation(line: 610, column: 18, scope: !415)
!423 = !DILocation(line: 610, column: 16, scope: !415)
!424 = !DILocation(line: 610, column: 30, scope: !415)
!425 = !DILocation(line: 610, column: 33, scope: !415)
!426 = !DILocation(line: 610, column: 40, scope: !415)
!427 = !DILocation(line: 0, scope: !415)
!428 = !DILocation(line: 611, column: 21, scope: !415)
!429 = !DILocation(line: 611, column: 20, scope: !415)
!430 = !DILocation(line: 611, column: 19, scope: !415)
!431 = !DILocation(line: 611, column: 16, scope: !415)
!432 = distinct !{!432, !420, !428, !433}
!433 = !{!"llvm.loop.mustprogress"}
!434 = !DILocation(line: 612, column: 11, scope: !435)
!435 = distinct !DILexicalBlock(scope: !415, file: !3, line: 612, column: 11)
!436 = !DILocation(line: 612, column: 18, scope: !435)
!437 = !DILocation(line: 612, column: 11, scope: !415)
!438 = !DILocation(line: 615, column: 25, scope: !439)
!439 = distinct !DILexicalBlock(scope: !435, file: !3, line: 613, column: 9)
!440 = !DILocation(line: 615, column: 23, scope: !439)
!441 = !DILocation(line: 616, column: 24, scope: !439)
!442 = !DILocation(line: 617, column: 9, scope: !439)
!443 = !DILocation(line: 618, column: 5, scope: !415)
!444 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !152)
!445 = !DILocation(line: 620, column: 10, scope: !2)
!446 = !DILocation(line: 620, column: 32, scope: !2)
!447 = !DILocation(line: 620, column: 23, scope: !2)
!448 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!449 = !DILocation(line: 625, column: 15, scope: !2)
!450 = !DILocation(line: 625, column: 27, scope: !2)
!451 = !DILocation(line: 625, column: 41, scope: !2)
!452 = !DILocation(line: 625, column: 39, scope: !2)
!453 = !DILocation(line: 626, column: 3, scope: !2)
!454 = !DILocation(line: 626, column: 11, scope: !2)
!455 = !DILocation(line: 626, column: 10, scope: !2)
!456 = !DILocation(line: 626, column: 21, scope: !2)
!457 = !DILocation(line: 626, column: 25, scope: !2)
!458 = !DILocation(line: 626, column: 24, scope: !2)
!459 = !DILocation(line: 626, column: 35, scope: !2)
!460 = !DILocation(line: 0, scope: !2)
!461 = !DILocation(line: 628, column: 12, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 628, column: 11)
!463 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!464 = !DILocation(line: 628, column: 11, scope: !462)
!465 = !DILocation(line: 628, column: 22, scope: !462)
!466 = !DILocation(line: 628, column: 29, scope: !462)
!467 = !DILocation(line: 628, column: 34, scope: !462)
!468 = !DILocation(line: 628, column: 44, scope: !462)
!469 = !DILocation(line: 628, column: 32, scope: !462)
!470 = !DILocation(line: 628, column: 49, scope: !462)
!471 = !DILocation(line: 628, column: 11, scope: !463)
!472 = !DILocation(line: 629, column: 22, scope: !462)
!473 = !DILocation(line: 629, column: 9, scope: !462)
!474 = !DILocation(line: 630, column: 11, scope: !475)
!475 = distinct !DILexicalBlock(scope: !463, file: !3, line: 630, column: 11)
!476 = !DILocation(line: 630, column: 11, scope: !463)
!477 = !DILocation(line: 632, column: 16, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !3, line: 632, column: 15)
!479 = distinct !DILexicalBlock(scope: !475, file: !3, line: 631, column: 9)
!480 = !DILocation(line: 632, column: 15, scope: !478)
!481 = !DILocation(line: 632, column: 26, scope: !478)
!482 = !DILocation(line: 632, column: 34, scope: !478)
!483 = !DILocation(line: 632, column: 37, scope: !478)
!484 = !DILocation(line: 632, column: 15, scope: !479)
!485 = !DILocation(line: 633, column: 13, scope: !478)
!486 = !DILocation(line: 636, column: 16, scope: !487)
!487 = distinct !DILexicalBlock(scope: !479, file: !3, line: 636, column: 15)
!488 = !DILocation(line: 636, column: 29, scope: !487)
!489 = !DILocation(line: 636, column: 34, scope: !487)
!490 = !DILocation(line: 636, column: 44, scope: !487)
!491 = !DILocation(line: 636, column: 32, scope: !487)
!492 = !DILocation(line: 636, column: 49, scope: !487)
!493 = !DILocation(line: 636, column: 15, scope: !479)
!494 = !DILocation(line: 637, column: 13, scope: !487)
!495 = !DILocation(line: 638, column: 9, scope: !479)
!496 = !DILocation(line: 640, column: 16, scope: !463)
!497 = distinct !{!497, !453, !498, !433}
!498 = !DILocation(line: 641, column: 5, scope: !2)
!499 = !DILocation(line: 644, column: 3, scope: !2)
!500 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!501 = !DILocation(line: 648, column: 15, scope: !2)
!502 = !DILocation(line: 648, column: 38, scope: !2)
!503 = !DILocation(line: 648, column: 31, scope: !2)
!504 = !DILocation(line: 649, column: 38, scope: !2)
!505 = !DILocation(line: 649, column: 31, scope: !2)
!506 = !DILocation(line: 650, column: 38, scope: !2)
!507 = !DILocation(line: 650, column: 31, scope: !2)
!508 = !DILocation(line: 651, column: 38, scope: !2)
!509 = !DILocation(line: 651, column: 31, scope: !2)
!510 = !DILocation(line: 652, column: 38, scope: !2)
!511 = !DILocation(line: 652, column: 31, scope: !2)
!512 = !DILocation(line: 653, column: 38, scope: !2)
!513 = !DILocation(line: 653, column: 31, scope: !2)
!514 = !DILocation(line: 654, column: 38, scope: !2)
!515 = !DILocation(line: 654, column: 31, scope: !2)
!516 = !DILocation(line: 655, column: 38, scope: !2)
!517 = !DILocation(line: 655, column: 31, scope: !2)
!518 = !DILocation(line: 656, column: 38, scope: !2)
!519 = !DILocation(line: 656, column: 31, scope: !2)
!520 = !DILocation(line: 657, column: 38, scope: !2)
!521 = !DILocation(line: 657, column: 31, scope: !2)
!522 = !DILocation(line: 658, column: 31, scope: !2)
!523 = !DILocation(line: 663, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!525 = !DILocation(line: 664, column: 7, scope: !524)
!526 = !DILocation(line: 664, column: 10, scope: !524)
!527 = !DILocation(line: 663, column: 7, scope: !2)
!528 = !DILocation(line: 670, column: 15, scope: !529)
!529 = distinct !DILexicalBlock(scope: !524, file: !3, line: 665, column: 5)
!530 = !DILocation(line: 670, column: 28, scope: !529)
!531 = !DILocation(line: 670, column: 47, scope: !529)
!532 = !DILocation(line: 670, column: 41, scope: !529)
!533 = !DILocation(line: 670, column: 59, scope: !529)
!534 = !DILocation(line: 669, column: 7, scope: !529)
!535 = !DILocation(line: 671, column: 5, scope: !529)
!536 = !DILocation(line: 676, column: 48, scope: !537)
!537 = distinct !DILexicalBlock(scope: !524, file: !3, line: 673, column: 5)
!538 = !DILocation(line: 677, column: 21, scope: !537)
!539 = !DILocation(line: 677, column: 15, scope: !537)
!540 = !DILocation(line: 677, column: 33, scope: !537)
!541 = !DILocation(line: 676, column: 7, scope: !537)
!542 = !DILocation(line: 679, column: 3, scope: !2)
!543 = !DILocation(line: 683, column: 3, scope: !2)
!544 = !DILocation(line: 686, column: 3, scope: !2)
!545 = !DILocation(line: 688, column: 3, scope: !2)
!546 = !DILocation(line: 691, column: 3, scope: !2)
!547 = !DILocation(line: 695, column: 3, scope: !2)
!548 = !DILocation(line: 696, column: 1, scope: !2)
!549 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !550, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !37)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !6}
!552 = !DILocalVariable(name: "program", arg: 1, scope: !549, file: !3, line: 836, type: !6)
!553 = !DILocation(line: 836, column: 34, scope: !549)
!554 = !DILocalVariable(name: "infomap", scope: !549, file: !3, line: 838, type: !555)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 896, elements: !561)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !549, file: !3, line: 838, size: 128, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !557, file: !3, line: 838, baseType: !6, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !557, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!561 = !{!562}
!562 = !DISubrange(count: 7)
!563 = !DILocation(line: 838, column: 67, scope: !549)
!564 = !DILocalVariable(name: "node", scope: !549, file: !3, line: 848, type: !6)
!565 = !DILocation(line: 848, column: 15, scope: !549)
!566 = !DILocation(line: 848, column: 22, scope: !549)
!567 = !DILocalVariable(name: "map_prog", scope: !549, file: !3, line: 849, type: !568)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!569 = !DILocation(line: 849, column: 25, scope: !549)
!570 = !DILocation(line: 849, column: 36, scope: !549)
!571 = !DILocation(line: 851, column: 3, scope: !549)
!572 = !DILocation(line: 851, column: 10, scope: !549)
!573 = !DILocation(line: 851, column: 20, scope: !549)
!574 = !DILocation(line: 851, column: 28, scope: !549)
!575 = !DILocation(line: 851, column: 40, scope: !549)
!576 = !DILocation(line: 851, column: 49, scope: !549)
!577 = !DILocation(line: 851, column: 59, scope: !549)
!578 = !DILocation(line: 851, column: 33, scope: !549)
!579 = !DILocation(line: 851, column: 31, scope: !549)
!580 = !DILocation(line: 0, scope: !549)
!581 = !DILocation(line: 852, column: 13, scope: !549)
!582 = distinct !{!582, !571, !581, !433}
!583 = !DILocation(line: 854, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !549, file: !3, line: 854, column: 7)
!585 = !DILocation(line: 854, column: 17, scope: !584)
!586 = !DILocation(line: 854, column: 7, scope: !549)
!587 = !DILocation(line: 855, column: 12, scope: !584)
!588 = !DILocation(line: 855, column: 22, scope: !584)
!589 = !DILocation(line: 855, column: 10, scope: !584)
!590 = !DILocation(line: 855, column: 5, scope: !584)
!591 = !DILocation(line: 857, column: 3, scope: !549)
!592 = !DILocalVariable(name: "lc_messages", scope: !549, file: !3, line: 861, type: !6)
!593 = !DILocation(line: 861, column: 15, scope: !549)
!594 = !DILocation(line: 861, column: 29, scope: !549)
!595 = !DILocation(line: 862, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !549, file: !3, line: 862, column: 7)
!597 = !DILocation(line: 862, column: 19, scope: !596)
!598 = !DILocation(line: 862, column: 22, scope: !596)
!599 = !DILocation(line: 862, column: 7, scope: !549)
!600 = !DILocation(line: 868, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !596, file: !3, line: 863, column: 5)
!602 = !DILocation(line: 870, column: 5, scope: !601)
!603 = !DILocalVariable(name: "url_program", scope: !549, file: !3, line: 874, type: !6)
!604 = !DILocation(line: 874, column: 15, scope: !549)
!605 = !DILocation(line: 874, column: 36, scope: !549)
!606 = !DILocation(line: 874, column: 29, scope: !549)
!607 = !DILocation(line: 874, column: 61, scope: !549)
!608 = !DILocation(line: 875, column: 11, scope: !549)
!609 = !DILocation(line: 876, column: 24, scope: !549)
!610 = !DILocation(line: 875, column: 3, scope: !549)
!611 = !DILocation(line: 877, column: 11, scope: !549)
!612 = !DILocation(line: 878, column: 11, scope: !549)
!613 = !DILocation(line: 878, column: 17, scope: !549)
!614 = !DILocation(line: 878, column: 25, scope: !549)
!615 = !DILocation(line: 878, column: 22, scope: !549)
!616 = !DILocation(line: 877, column: 3, scope: !549)
!617 = !DILocation(line: 879, column: 1, scope: !549)
!618 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 201, type: !619, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !37)
!619 = !DISubroutineType(types: !620)
!620 = !{!33, !33, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!622 = !DILocalVariable(name: "argc", arg: 1, scope: !618, file: !10, line: 201, type: !33)
!623 = !DILocation(line: 201, column: 11, scope: !618)
!624 = !DILocalVariable(name: "argv", arg: 2, scope: !618, file: !10, line: 201, type: !621)
!625 = !DILocation(line: 201, column: 24, scope: !618)
!626 = !DILocation(line: 204, column: 21, scope: !618)
!627 = !DILocation(line: 204, column: 3, scope: !618)
!628 = !DILocation(line: 205, column: 3, scope: !618)
!629 = !DILocation(line: 206, column: 3, scope: !618)
!630 = !DILocation(line: 207, column: 3, scope: !618)
!631 = !DILocation(line: 209, column: 3, scope: !618)
!632 = !DILocation(line: 211, column: 36, scope: !618)
!633 = !DILocation(line: 211, column: 42, scope: !618)
!634 = !DILocation(line: 212, column: 36, scope: !618)
!635 = !DILocation(line: 212, column: 58, scope: !618)
!636 = !DILocation(line: 211, column: 3, scope: !618)
!637 = !DILocalVariable(name: "operands", scope: !618, file: !10, line: 215, type: !621)
!638 = !DILocation(line: 215, column: 10, scope: !618)
!639 = !DILocation(line: 215, column: 21, scope: !618)
!640 = !DILocation(line: 215, column: 28, scope: !618)
!641 = !DILocation(line: 215, column: 26, scope: !618)
!642 = !DILocalVariable(name: "operand_lim", scope: !618, file: !10, line: 216, type: !621)
!643 = !DILocation(line: 216, column: 10, scope: !618)
!644 = !DILocation(line: 216, column: 24, scope: !618)
!645 = !DILocation(line: 216, column: 31, scope: !618)
!646 = !DILocation(line: 216, column: 29, scope: !618)
!647 = !DILocation(line: 217, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !618, file: !10, line: 217, column: 7)
!649 = !DILocation(line: 217, column: 17, scope: !648)
!650 = !DILocation(line: 217, column: 14, scope: !648)
!651 = !DILocation(line: 217, column: 7, scope: !618)
!652 = !DILocation(line: 218, column: 22, scope: !648)
!653 = !DILocation(line: 218, column: 17, scope: !648)
!654 = !DILocation(line: 218, column: 20, scope: !648)
!655 = !DILocation(line: 218, column: 5, scope: !648)
!656 = !DILocalVariable(name: "bufalloc", scope: !618, file: !10, line: 222, type: !152)
!657 = !DILocation(line: 222, column: 10, scope: !618)
!658 = !DILocalVariable(name: "reuse_operand_strings", scope: !618, file: !10, line: 223, type: !50)
!659 = !DILocation(line: 223, column: 8, scope: !618)
!660 = !DILocalVariable(name: "operandp", scope: !618, file: !10, line: 224, type: !621)
!661 = !DILocation(line: 224, column: 10, scope: !618)
!662 = !DILocation(line: 224, column: 21, scope: !618)
!663 = !DILocation(line: 225, column: 3, scope: !618)
!664 = !DILocalVariable(name: "operand_len", scope: !665, file: !10, line: 227, type: !152)
!665 = distinct !DILexicalBlock(scope: !618, file: !10, line: 226, column: 5)
!666 = !DILocation(line: 227, column: 14, scope: !665)
!667 = !DILocation(line: 227, column: 37, scope: !665)
!668 = !DILocation(line: 227, column: 36, scope: !665)
!669 = !DILocation(line: 227, column: 28, scope: !665)
!670 = !DILocation(line: 228, column: 19, scope: !665)
!671 = !DILocation(line: 228, column: 31, scope: !665)
!672 = !DILocation(line: 228, column: 16, scope: !665)
!673 = !DILocation(line: 229, column: 11, scope: !674)
!674 = distinct !DILexicalBlock(scope: !665, file: !10, line: 229, column: 11)
!675 = !DILocation(line: 229, column: 20, scope: !674)
!676 = !DILocation(line: 229, column: 26, scope: !674)
!677 = !DILocation(line: 229, column: 24, scope: !674)
!678 = !DILocation(line: 230, column: 11, scope: !674)
!679 = !DILocation(line: 230, column: 15, scope: !674)
!680 = !DILocation(line: 230, column: 14, scope: !674)
!681 = !DILocation(line: 230, column: 26, scope: !674)
!682 = !DILocation(line: 230, column: 24, scope: !674)
!683 = !DILocation(line: 230, column: 38, scope: !674)
!684 = !DILocation(line: 230, column: 45, scope: !674)
!685 = !DILocation(line: 230, column: 42, scope: !674)
!686 = !DILocation(line: 229, column: 11, scope: !665)
!687 = !DILocation(line: 231, column: 31, scope: !674)
!688 = !DILocation(line: 231, column: 9, scope: !674)
!689 = !DILocation(line: 232, column: 5, scope: !665)
!690 = !DILocation(line: 233, column: 10, scope: !618)
!691 = !DILocation(line: 233, column: 23, scope: !618)
!692 = !DILocation(line: 233, column: 21, scope: !618)
!693 = distinct !{!693, !663, !694, !433}
!694 = !DILocation(line: 233, column: 34, scope: !618)
!695 = !DILocation(line: 236, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !618, file: !10, line: 236, column: 7)
!697 = !DILocation(line: 236, column: 16, scope: !696)
!698 = !DILocation(line: 236, column: 7, scope: !618)
!699 = !DILocation(line: 238, column: 16, scope: !700)
!700 = distinct !DILexicalBlock(scope: !696, file: !10, line: 237, column: 5)
!701 = !DILocation(line: 239, column: 29, scope: !700)
!702 = !DILocation(line: 240, column: 5, scope: !700)
!703 = !DILocalVariable(name: "buf", scope: !618, file: !10, line: 249, type: !35)
!704 = !DILocation(line: 249, column: 9, scope: !618)
!705 = !DILocation(line: 249, column: 15, scope: !618)
!706 = !DILocation(line: 249, column: 40, scope: !618)
!707 = !DILocation(line: 249, column: 39, scope: !618)
!708 = !DILocation(line: 249, column: 60, scope: !618)
!709 = !DILocation(line: 249, column: 51, scope: !618)
!710 = !DILocalVariable(name: "bufused", scope: !618, file: !10, line: 250, type: !152)
!711 = !DILocation(line: 250, column: 10, scope: !618)
!712 = !DILocation(line: 251, column: 14, scope: !618)
!713 = !DILocation(line: 251, column: 12, scope: !618)
!714 = !DILocation(line: 252, column: 3, scope: !618)
!715 = !DILocalVariable(name: "operand_len", scope: !716, file: !10, line: 254, type: !152)
!716 = distinct !DILexicalBlock(scope: !618, file: !10, line: 253, column: 5)
!717 = !DILocation(line: 254, column: 14, scope: !716)
!718 = !DILocation(line: 254, column: 37, scope: !716)
!719 = !DILocation(line: 254, column: 36, scope: !716)
!720 = !DILocation(line: 254, column: 28, scope: !716)
!721 = !DILocation(line: 255, column: 13, scope: !722)
!722 = distinct !DILexicalBlock(scope: !716, file: !10, line: 255, column: 11)
!723 = !DILocation(line: 255, column: 11, scope: !716)
!724 = !DILocation(line: 256, column: 17, scope: !722)
!725 = !DILocation(line: 256, column: 23, scope: !722)
!726 = !DILocation(line: 256, column: 21, scope: !722)
!727 = !DILocation(line: 256, column: 33, scope: !722)
!728 = !DILocation(line: 256, column: 32, scope: !722)
!729 = !DILocation(line: 256, column: 43, scope: !722)
!730 = !DILocation(line: 256, column: 9, scope: !722)
!731 = !DILocation(line: 257, column: 18, scope: !716)
!732 = !DILocation(line: 257, column: 15, scope: !716)
!733 = !DILocation(line: 258, column: 7, scope: !716)
!734 = !DILocation(line: 258, column: 18, scope: !716)
!735 = !DILocation(line: 258, column: 22, scope: !716)
!736 = !DILocation(line: 259, column: 5, scope: !716)
!737 = !DILocation(line: 260, column: 10, scope: !618)
!738 = !DILocation(line: 260, column: 23, scope: !618)
!739 = !DILocation(line: 260, column: 21, scope: !618)
!740 = distinct !{!740, !714, !741, !433}
!741 = !DILocation(line: 260, column: 34, scope: !618)
!742 = !DILocation(line: 261, column: 3, scope: !618)
!743 = !DILocation(line: 261, column: 7, scope: !618)
!744 = !DILocation(line: 261, column: 15, scope: !618)
!745 = !DILocation(line: 261, column: 20, scope: !618)
!746 = !DILocalVariable(name: "copysize", scope: !618, file: !10, line: 263, type: !289)
!747 = !DILocation(line: 263, column: 9, scope: !618)
!748 = !DILocation(line: 263, column: 20, scope: !618)
!749 = !DILocation(line: 268, column: 34, scope: !750)
!750 = distinct !DILexicalBlock(scope: !618, file: !10, line: 268, column: 7)
!751 = !DILocation(line: 268, column: 39, scope: !750)
!752 = !DILocation(line: 268, column: 7, scope: !750)
!753 = !DILocation(line: 268, column: 52, scope: !750)
!754 = !DILocation(line: 268, column: 49, scope: !750)
!755 = !DILocation(line: 269, column: 7, scope: !750)
!756 = !DILocation(line: 269, column: 24, scope: !750)
!757 = !DILocation(line: 269, column: 29, scope: !750)
!758 = !DILocation(line: 269, column: 10, scope: !750)
!759 = !DILocation(line: 269, column: 39, scope: !750)
!760 = !DILocation(line: 268, column: 7, scope: !618)
!761 = !DILocation(line: 272, column: 17, scope: !762)
!762 = distinct !DILexicalBlock(scope: !750, file: !10, line: 270, column: 5)
!763 = !DILocation(line: 272, column: 28, scope: !762)
!764 = !DILocation(line: 272, column: 26, scope: !762)
!765 = !DILocation(line: 272, column: 39, scope: !762)
!766 = !DILocation(line: 272, column: 37, scope: !762)
!767 = !DILocation(line: 272, column: 15, scope: !762)
!768 = !DILocation(line: 273, column: 11, scope: !769)
!769 = distinct !DILexicalBlock(scope: !762, file: !10, line: 273, column: 11)
!770 = !DILocation(line: 273, column: 21, scope: !769)
!771 = !DILocation(line: 273, column: 19, scope: !769)
!772 = !DILocation(line: 273, column: 11, scope: !762)
!773 = !DILocation(line: 274, column: 25, scope: !769)
!774 = !DILocation(line: 274, column: 30, scope: !769)
!775 = !DILocation(line: 274, column: 35, scope: !769)
!776 = !DILocation(line: 274, column: 45, scope: !769)
!777 = !DILocation(line: 274, column: 9, scope: !769)
!778 = !DILocation(line: 275, column: 7, scope: !762)
!779 = !DILocation(line: 275, column: 41, scope: !762)
!780 = !DILocation(line: 275, column: 46, scope: !762)
!781 = !DILocation(line: 275, column: 14, scope: !762)
!782 = !DILocation(line: 275, column: 58, scope: !762)
!783 = !DILocation(line: 275, column: 55, scope: !762)
!784 = !DILocation(line: 276, column: 9, scope: !762)
!785 = distinct !{!785, !778, !784, !433}
!786 = !DILocation(line: 277, column: 5, scope: !762)
!787 = !DILocation(line: 279, column: 3, scope: !618)
!788 = !DILocation(line: 280, column: 3, scope: !618)
!789 = distinct !DISubprogram(name: "bad_cast", scope: !3, file: !3, line: 904, type: !790, scopeLine: 905, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !37)
!790 = !DISubroutineType(types: !791)
!791 = !{!35, !6}
!792 = !DILocalVariable(name: "s", arg: 1, scope: !789, file: !3, line: 904, type: !6)
!793 = !DILocation(line: 904, column: 23, scope: !789)
!794 = !DILocation(line: 906, column: 19, scope: !789)
!795 = !DILocation(line: 906, column: 3, scope: !789)
!796 = distinct !DISubprogram(name: "splice_write", scope: !10, file: !10, line: 113, type: !797, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !37)
!797 = !DISubroutineType(types: !798)
!798 = !{!50, !6, !289}
!799 = !DILocalVariable(name: "buf", arg: 1, scope: !796, file: !10, line: 113, type: !6)
!800 = !DILocation(line: 113, column: 40, scope: !796)
!801 = !DILocalVariable(name: "copysize", arg: 2, scope: !796, file: !10, line: 113, type: !289)
!802 = !DILocation(line: 113, column: 64, scope: !796)
!803 = !DILocalVariable(name: "output_started", scope: !796, file: !10, line: 115, type: !50)
!804 = !DILocation(line: 115, column: 8, scope: !796)
!805 = !DILocalVariable(name: "page_size", scope: !796, file: !10, line: 117, type: !289)
!806 = !DILocation(line: 117, column: 9, scope: !796)
!807 = !DILocation(line: 117, column: 21, scope: !796)
!808 = !DILocalVariable(name: "stdout_is_pipe", scope: !796, file: !10, line: 119, type: !50)
!809 = !DILocation(line: 119, column: 8, scope: !796)
!810 = !DILocation(line: 119, column: 25, scope: !796)
!811 = !DILocation(line: 119, column: 49, scope: !796)
!812 = !DILocalVariable(name: "pipefd", scope: !796, file: !10, line: 123, type: !813)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !125)
!814 = !DILocation(line: 123, column: 7, scope: !796)
!815 = !DILocalVariable(name: "splice_bufsize", scope: !796, file: !10, line: 124, type: !289)
!816 = !DILocation(line: 124, column: 9, scope: !796)
!817 = !DILocalVariable(name: "splice_buf", scope: !796, file: !10, line: 125, type: !35)
!818 = !DILocation(line: 125, column: 9, scope: !796)
!819 = !DILocation(line: 127, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !796, file: !10, line: 127, column: 7)
!821 = !DILocation(line: 127, column: 7, scope: !796)
!822 = !DILocation(line: 128, column: 55, scope: !820)
!823 = !DILocation(line: 128, column: 22, scope: !820)
!824 = !DILocation(line: 128, column: 20, scope: !820)
!825 = !DILocation(line: 128, column: 5, scope: !820)
!826 = !DILocation(line: 131, column: 18, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !10, line: 131, column: 11)
!828 = distinct !DILexicalBlock(scope: !820, file: !10, line: 130, column: 5)
!829 = !DILocation(line: 131, column: 11, scope: !827)
!830 = !DILocation(line: 131, column: 29, scope: !827)
!831 = !DILocation(line: 131, column: 11, scope: !828)
!832 = !DILocation(line: 132, column: 9, scope: !827)
!833 = !DILocation(line: 133, column: 42, scope: !828)
!834 = !DILocation(line: 133, column: 53, scope: !828)
!835 = !DILocation(line: 133, column: 24, scope: !828)
!836 = !DILocation(line: 133, column: 22, scope: !828)
!837 = !DILocation(line: 136, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !796, file: !10, line: 136, column: 7)
!839 = !DILocation(line: 136, column: 22, scope: !838)
!840 = !DILocation(line: 136, column: 7, scope: !796)
!841 = !DILocation(line: 137, column: 5, scope: !838)
!842 = !DILocation(line: 141, column: 35, scope: !843)
!843 = distinct !DILexicalBlock(scope: !796, file: !10, line: 141, column: 7)
!844 = !DILocation(line: 141, column: 46, scope: !843)
!845 = !DILocation(line: 141, column: 23, scope: !843)
!846 = !DILocation(line: 141, column: 21, scope: !843)
!847 = !DILocation(line: 141, column: 7, scope: !796)
!848 = !DILocation(line: 142, column: 5, scope: !843)
!849 = !DILocation(line: 144, column: 19, scope: !796)
!850 = !DILocation(line: 144, column: 31, scope: !796)
!851 = !DILocation(line: 144, column: 36, scope: !796)
!852 = !DILocation(line: 144, column: 46, scope: !796)
!853 = !DILocation(line: 144, column: 3, scope: !796)
!854 = !DILocalVariable(name: "vmsplice_fd", scope: !796, file: !10, line: 149, type: !33)
!855 = !DILocation(line: 149, column: 7, scope: !796)
!856 = !DILocation(line: 149, column: 21, scope: !796)
!857 = !DILocation(line: 149, column: 54, scope: !796)
!858 = !DILocation(line: 151, column: 3, scope: !796)
!859 = !DILocalVariable(name: "iov", scope: !860, file: !10, line: 153, type: !863)
!860 = distinct !DILexicalBlock(scope: !861, file: !10, line: 152, column: 5)
!861 = distinct !DILexicalBlock(scope: !862, file: !10, line: 151, column: 3)
!862 = distinct !DILexicalBlock(scope: !796, file: !10, line: 151, column: 3)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !864, line: 26, size: 128, elements: !865)
!864 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !863, file: !864, line: 28, baseType: !32, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !863, file: !864, line: 29, baseType: !152, size: 64, offset: 64)
!868 = !DILocation(line: 153, column: 20, scope: !860)
!869 = !DILocation(line: 153, column: 26, scope: !860)
!870 = !DILocation(line: 153, column: 40, scope: !860)
!871 = !DILocation(line: 154, column: 39, scope: !860)
!872 = !DILocation(line: 156, column: 7, scope: !860)
!873 = !DILocation(line: 156, column: 18, scope: !860)
!874 = !DILocation(line: 156, column: 26, scope: !860)
!875 = !DILocalVariable(name: "flags", scope: !876, file: !10, line: 161, type: !14)
!876 = distinct !DILexicalBlock(scope: !860, file: !10, line: 157, column: 9)
!877 = !DILocation(line: 161, column: 24, scope: !876)
!878 = !DILocation(line: 161, column: 36, scope: !876)
!879 = !DILocation(line: 161, column: 46, scope: !876)
!880 = !DILocation(line: 161, column: 44, scope: !876)
!881 = !DILocation(line: 161, column: 32, scope: !876)
!882 = !DILocalVariable(name: "n", scope: !876, file: !10, line: 162, type: !883)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !63, line: 77, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !885, line: 194, baseType: !292)
!885 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!886 = !DILocation(line: 162, column: 19, scope: !876)
!887 = !DILocation(line: 162, column: 33, scope: !876)
!888 = !DILocation(line: 162, column: 55, scope: !876)
!889 = !DILocation(line: 162, column: 23, scope: !876)
!890 = !DILocation(line: 163, column: 15, scope: !891)
!891 = distinct !DILexicalBlock(scope: !876, file: !10, line: 163, column: 15)
!892 = !DILocation(line: 163, column: 17, scope: !891)
!893 = !DILocation(line: 163, column: 15, scope: !876)
!894 = !DILocation(line: 164, column: 13, scope: !891)
!895 = !DILocation(line: 165, column: 15, scope: !896)
!896 = distinct !DILexicalBlock(scope: !876, file: !10, line: 165, column: 15)
!897 = !DILocation(line: 165, column: 15, scope: !876)
!898 = !DILocation(line: 166, column: 28, scope: !896)
!899 = !DILocation(line: 166, column: 13, scope: !896)
!900 = !DILocation(line: 167, column: 39, scope: !876)
!901 = !DILocation(line: 167, column: 50, scope: !876)
!902 = !DILocation(line: 167, column: 48, scope: !876)
!903 = !DILocation(line: 167, column: 15, scope: !876)
!904 = !DILocation(line: 167, column: 24, scope: !876)
!905 = !DILocation(line: 168, column: 26, scope: !876)
!906 = !DILocation(line: 168, column: 15, scope: !876)
!907 = !DILocation(line: 168, column: 23, scope: !876)
!908 = distinct !{!908, !872, !909, !433}
!909 = !DILocation(line: 169, column: 9, scope: !860)
!910 = !DILocation(line: 172, column: 13, scope: !911)
!911 = distinct !DILexicalBlock(scope: !860, file: !10, line: 172, column: 11)
!912 = !DILocation(line: 172, column: 11, scope: !860)
!913 = !DILocalVariable(name: "remaining", scope: !914, file: !10, line: 174, type: !289)
!914 = distinct !DILexicalBlock(scope: !911, file: !10, line: 173, column: 9)
!915 = !DILocation(line: 174, column: 17, scope: !914)
!916 = !DILocation(line: 174, column: 29, scope: !914)
!917 = !DILocation(line: 175, column: 11, scope: !914)
!918 = !DILocation(line: 175, column: 18, scope: !914)
!919 = !DILocation(line: 175, column: 28, scope: !914)
!920 = !DILocalVariable(name: "s", scope: !921, file: !10, line: 177, type: !883)
!921 = distinct !DILexicalBlock(scope: !914, file: !10, line: 176, column: 13)
!922 = !DILocation(line: 177, column: 23, scope: !921)
!923 = !DILocation(line: 177, column: 35, scope: !921)
!924 = !DILocation(line: 178, column: 35, scope: !921)
!925 = !DILocation(line: 177, column: 27, scope: !921)
!926 = !DILocation(line: 179, column: 19, scope: !927)
!927 = distinct !DILexicalBlock(scope: !921, file: !10, line: 179, column: 19)
!928 = !DILocation(line: 179, column: 21, scope: !927)
!929 = !DILocation(line: 179, column: 19, scope: !921)
!930 = !DILocation(line: 180, column: 17, scope: !927)
!931 = !DILocation(line: 181, column: 30, scope: !921)
!932 = !DILocation(line: 182, column: 28, scope: !921)
!933 = !DILocation(line: 182, column: 25, scope: !921)
!934 = distinct !{!934, !917, !935, !433}
!935 = !DILocation(line: 183, column: 13, scope: !914)
!936 = !DILocation(line: 184, column: 9, scope: !914)
!937 = !DILocation(line: 151, column: 3, scope: !861)
!938 = distinct !{!938, !939, !940}
!939 = !DILocation(line: 151, column: 3, scope: !862)
!940 = !DILocation(line: 185, column: 5, scope: !862)
!941 = !DILabel(scope: !796, name: "done", file: !10, line: 187)
!942 = !DILocation(line: 187, column: 1, scope: !796)
!943 = !DILocation(line: 188, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !796, file: !10, line: 188, column: 7)
!945 = !DILocation(line: 188, column: 17, scope: !944)
!946 = !DILocation(line: 188, column: 7, scope: !796)
!947 = !DILocalVariable(name: "saved_errno", scope: !948, file: !10, line: 190, type: !33)
!948 = distinct !DILexicalBlock(scope: !944, file: !10, line: 189, column: 5)
!949 = !DILocation(line: 190, column: 11, scope: !948)
!950 = !DILocation(line: 190, column: 25, scope: !948)
!951 = !DILocation(line: 191, column: 14, scope: !948)
!952 = !DILocation(line: 191, column: 7, scope: !948)
!953 = !DILocation(line: 192, column: 14, scope: !948)
!954 = !DILocation(line: 192, column: 7, scope: !948)
!955 = !DILocation(line: 193, column: 15, scope: !948)
!956 = !DILocation(line: 193, column: 7, scope: !948)
!957 = !DILocation(line: 193, column: 13, scope: !948)
!958 = !DILocation(line: 194, column: 5, scope: !948)
!959 = !DILocation(line: 195, column: 14, scope: !796)
!960 = !DILocation(line: 195, column: 3, scope: !796)
!961 = !DILocation(line: 197, column: 10, scope: !796)
!962 = !DILocation(line: 197, column: 3, scope: !796)
!963 = !DILocation(line: 198, column: 1, scope: !796)
!964 = distinct !DISubprogram(name: "repeat_pattern", scope: !10, file: !10, line: 65, type: !965, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !37)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !35, !6, !289, !289}
!967 = !DILocalVariable(name: "dest", arg: 1, scope: !964, file: !10, line: 65, type: !35)
!968 = !DILocation(line: 65, column: 23, scope: !964)
!969 = !DILocalVariable(name: "src", arg: 2, scope: !964, file: !10, line: 65, type: !6)
!970 = !DILocation(line: 65, column: 41, scope: !964)
!971 = !DILocalVariable(name: "srcsize", arg: 3, scope: !964, file: !10, line: 65, type: !289)
!972 = !DILocation(line: 65, column: 52, scope: !964)
!973 = !DILocalVariable(name: "bufsize", arg: 4, scope: !964, file: !10, line: 65, type: !289)
!974 = !DILocation(line: 65, column: 67, scope: !964)
!975 = !DILocation(line: 67, column: 7, scope: !976)
!976 = distinct !DILexicalBlock(scope: !964, file: !10, line: 67, column: 7)
!977 = !DILocation(line: 67, column: 15, scope: !976)
!978 = !DILocation(line: 67, column: 12, scope: !976)
!979 = !DILocation(line: 67, column: 7, scope: !964)
!980 = !DILocation(line: 68, column: 13, scope: !976)
!981 = !DILocation(line: 68, column: 19, scope: !976)
!982 = !DILocation(line: 68, column: 24, scope: !976)
!983 = !DILocation(line: 68, column: 5, scope: !976)
!984 = !DILocalVariable(name: "filled", scope: !985, file: !10, line: 69, type: !289)
!985 = distinct !DILexicalBlock(scope: !964, file: !10, line: 69, column: 3)
!986 = !DILocation(line: 69, column: 14, scope: !985)
!987 = !DILocation(line: 69, column: 23, scope: !985)
!988 = !DILocation(line: 69, column: 8, scope: !985)
!989 = !DILocation(line: 69, column: 32, scope: !990)
!990 = distinct !DILexicalBlock(scope: !985, file: !10, line: 69, column: 3)
!991 = !DILocation(line: 69, column: 41, scope: !990)
!992 = !DILocation(line: 69, column: 39, scope: !990)
!993 = !DILocation(line: 69, column: 3, scope: !985)
!994 = !DILocalVariable(name: "chunk", scope: !995, file: !10, line: 71, type: !289)
!995 = distinct !DILexicalBlock(scope: !990, file: !10, line: 70, column: 5)
!996 = !DILocation(line: 71, column: 13, scope: !995)
!997 = !DILocation(line: 71, column: 21, scope: !995)
!998 = !DILocation(line: 72, column: 15, scope: !995)
!999 = !DILocation(line: 72, column: 22, scope: !995)
!1000 = !DILocation(line: 72, column: 20, scope: !995)
!1001 = !DILocation(line: 72, column: 30, scope: !995)
!1002 = !DILocation(line: 72, column: 36, scope: !995)
!1003 = !DILocation(line: 72, column: 7, scope: !995)
!1004 = !DILocation(line: 73, column: 17, scope: !995)
!1005 = !DILocation(line: 73, column: 14, scope: !995)
!1006 = !DILocation(line: 69, column: 3, scope: !990)
!1007 = distinct !{!1007, !993, !1008, !433}
!1008 = !DILocation(line: 74, column: 5, scope: !985)
!1009 = !DILocation(line: 75, column: 1, scope: !964)
!1010 = distinct !DISubprogram(name: "pipe_splice_size", scope: !10, file: !10, line: 89, type: !1011, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !37)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!289, !33, !289}
!1013 = !DILocalVariable(name: "fd", arg: 1, scope: !1010, file: !10, line: 89, type: !33)
!1014 = !DILocation(line: 89, column: 23, scope: !1010)
!1015 = !DILocalVariable(name: "copysize", arg: 2, scope: !1010, file: !10, line: 89, type: !289)
!1016 = !DILocation(line: 89, column: 33, scope: !1010)
!1017 = !DILocalVariable(name: "pipe_cap", scope: !1010, file: !10, line: 91, type: !33)
!1018 = !DILocation(line: 91, column: 7, scope: !1010)
!1019 = !DILocation(line: 93, column: 26, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1010, file: !10, line: 93, column: 7)
!1021 = !DILocation(line: 93, column: 19, scope: !1020)
!1022 = !DILocation(line: 93, column: 17, scope: !1020)
!1023 = !DILocation(line: 93, column: 63, scope: !1020)
!1024 = !DILocation(line: 93, column: 7, scope: !1010)
!1025 = !DILocation(line: 94, column: 23, scope: !1020)
!1026 = !DILocation(line: 94, column: 16, scope: !1020)
!1027 = !DILocation(line: 94, column: 14, scope: !1020)
!1028 = !DILocation(line: 94, column: 5, scope: !1020)
!1029 = !DILocation(line: 96, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1010, file: !10, line: 96, column: 7)
!1031 = !DILocation(line: 96, column: 16, scope: !1030)
!1032 = !DILocation(line: 96, column: 7, scope: !1010)
!1033 = !DILocation(line: 97, column: 14, scope: !1030)
!1034 = !DILocation(line: 97, column: 5, scope: !1030)
!1035 = !DILocalVariable(name: "buf_cap", scope: !1010, file: !10, line: 99, type: !152)
!1036 = !DILocation(line: 99, column: 10, scope: !1010)
!1037 = !DILocation(line: 99, column: 20, scope: !1010)
!1038 = !DILocation(line: 99, column: 29, scope: !1010)
!1039 = !DILocation(line: 100, column: 10, scope: !1010)
!1040 = !DILocation(line: 100, column: 20, scope: !1010)
!1041 = !DILocation(line: 100, column: 18, scope: !1010)
!1042 = !DILocation(line: 100, column: 31, scope: !1010)
!1043 = !DILocation(line: 100, column: 29, scope: !1010)
!1044 = !DILocation(line: 100, column: 3, scope: !1010)
!1045 = distinct !DISubprogram(name: "alignfree", scope: !1046, file: !1046, line: 75, type: !1047, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !247, retainedNodes: !37)
!1046 = !DIFile(filename: "./lib/alignalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0a7d01653c1483fdd96283992acf95d0")
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !32}
!1049 = !DILocalVariable(name: "ptr", arg: 1, scope: !1045, file: !1046, line: 75, type: !32)
!1050 = !DILocation(line: 75, column: 18, scope: !1045)
!1051 = !DILocation(line: 77, column: 9, scope: !1045)
!1052 = !DILocation(line: 77, column: 3, scope: !1045)
!1053 = !DILocation(line: 78, column: 1, scope: !1045)
!1054 = distinct !DISubprogram(name: "alignalloc", scope: !1046, file: !1046, line: 90, type: !1055, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !247, retainedNodes: !37)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!32, !289, !289}
!1057 = !DILocalVariable(name: "alignment", arg: 1, scope: !1054, file: !1046, line: 90, type: !289)
!1058 = !DILocation(line: 90, column: 19, scope: !1054)
!1059 = !DILocalVariable(name: "size", arg: 2, scope: !1054, file: !1046, line: 90, type: !289)
!1060 = !DILocation(line: 90, column: 36, scope: !1054)
!1061 = !DILocation(line: 92, column: 21, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1054, file: !1046, line: 92, column: 7)
!1063 = !DILocation(line: 92, column: 19, scope: !1062)
!1064 = !DILocation(line: 92, column: 7, scope: !1054)
!1065 = !DILocation(line: 93, column: 15, scope: !1062)
!1066 = !DILocation(line: 93, column: 5, scope: !1062)
!1067 = !DILocation(line: 94, column: 21, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1054, file: !1046, line: 94, column: 7)
!1069 = !DILocation(line: 94, column: 19, scope: !1068)
!1070 = !DILocation(line: 94, column: 7, scope: !1054)
!1071 = !DILocation(line: 95, column: 10, scope: !1068)
!1072 = !DILocation(line: 95, column: 5, scope: !1068)
!1073 = !DILocation(line: 98, column: 25, scope: !1054)
!1074 = !DILocation(line: 98, column: 36, scope: !1054)
!1075 = !DILocation(line: 98, column: 10, scope: !1054)
!1076 = !DILocation(line: 98, column: 3, scope: !1054)
!1077 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !46, file: !46, line: 50, type: !550, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !37)
!1078 = !DILocalVariable(name: "file", arg: 1, scope: !1077, file: !46, line: 50, type: !6)
!1079 = !DILocation(line: 50, column: 41, scope: !1077)
!1080 = !DILocation(line: 52, column: 15, scope: !1077)
!1081 = !DILocation(line: 52, column: 13, scope: !1077)
!1082 = !DILocation(line: 53, column: 1, scope: !1077)
!1083 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !46, file: !46, line: 87, type: !1084, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !37)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !50}
!1086 = !DILocalVariable(name: "ignore", arg: 1, scope: !1083, file: !46, line: 87, type: !50)
!1087 = !DILocation(line: 87, column: 37, scope: !1083)
!1088 = !DILocation(line: 89, column: 18, scope: !1083)
!1089 = !DILocation(line: 89, column: 16, scope: !1083)
!1090 = !DILocation(line: 90, column: 1, scope: !1083)
!1091 = distinct !DISubprogram(name: "close_stdout", scope: !46, file: !46, line: 116, type: !83, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !37)
!1092 = !DILocation(line: 118, column: 21, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1091, file: !46, line: 118, column: 7)
!1094 = !DILocation(line: 118, column: 7, scope: !1093)
!1095 = !DILocation(line: 118, column: 29, scope: !1093)
!1096 = !DILocation(line: 119, column: 7, scope: !1093)
!1097 = !DILocation(line: 119, column: 12, scope: !1093)
!1098 = !DILocation(line: 119, column: 25, scope: !1093)
!1099 = !DILocation(line: 119, column: 28, scope: !1093)
!1100 = !DILocation(line: 119, column: 34, scope: !1093)
!1101 = !DILocation(line: 118, column: 7, scope: !1091)
!1102 = !DILocalVariable(name: "write_error", scope: !1103, file: !46, line: 121, type: !6)
!1103 = distinct !DILexicalBlock(scope: !1093, file: !46, line: 120, column: 5)
!1104 = !DILocation(line: 121, column: 19, scope: !1103)
!1105 = !DILocation(line: 121, column: 33, scope: !1103)
!1106 = !DILocation(line: 122, column: 11, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !46, line: 122, column: 11)
!1108 = !DILocation(line: 122, column: 11, scope: !1103)
!1109 = !DILocation(line: 123, column: 9, scope: !1107)
!1110 = !DILocation(line: 126, column: 9, scope: !1107)
!1111 = !DILocation(line: 128, column: 14, scope: !1103)
!1112 = !DILocation(line: 128, column: 7, scope: !1103)
!1113 = !DILocation(line: 133, column: 42, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1091, file: !46, line: 133, column: 7)
!1115 = !DILocation(line: 133, column: 28, scope: !1114)
!1116 = !DILocation(line: 133, column: 50, scope: !1114)
!1117 = !DILocation(line: 133, column: 7, scope: !1091)
!1118 = !DILocation(line: 134, column: 12, scope: !1114)
!1119 = !DILocation(line: 134, column: 5, scope: !1114)
!1120 = !DILocation(line: 135, column: 1, scope: !1091)
!1121 = distinct !DISubprogram(name: "verror", scope: !54, file: !54, line: 251, type: !1122, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !37)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{null, !33, !33, !6, !62}
!1124 = !DILocalVariable(name: "status", arg: 1, scope: !1121, file: !54, line: 251, type: !33)
!1125 = !DILocation(line: 251, column: 1, scope: !1121)
!1126 = !DILocalVariable(name: "errnum", arg: 2, scope: !1121, file: !54, line: 251, type: !33)
!1127 = !DILocalVariable(name: "message", arg: 3, scope: !1121, file: !54, line: 251, type: !6)
!1128 = !DILocalVariable(name: "args", arg: 4, scope: !1121, file: !54, line: 251, type: !62)
!1129 = !DILocation(line: 261, column: 3, scope: !1121)
!1130 = !DILocation(line: 265, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1121, file: !54, line: 265, column: 7)
!1132 = !DILocation(line: 265, column: 7, scope: !1121)
!1133 = !DILocation(line: 266, column: 7, scope: !1131)
!1134 = !DILocation(line: 266, column: 5, scope: !1131)
!1135 = !DILocation(line: 272, column: 16, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !54, line: 268, column: 5)
!1137 = !DILocation(line: 272, column: 32, scope: !1136)
!1138 = !DILocation(line: 272, column: 7, scope: !1136)
!1139 = !DILocation(line: 276, column: 3, scope: !1121)
!1140 = !DILocation(line: 282, column: 1, scope: !1121)
!1141 = distinct !DISubprogram(name: "flush_stdout", scope: !54, file: !54, line: 163, type: !83, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !53, retainedNodes: !37)
!1142 = !DILocalVariable(name: "stdout_fd", scope: !1141, file: !54, line: 166, type: !33)
!1143 = !DILocation(line: 166, column: 7, scope: !1141)
!1144 = !DILocation(line: 172, column: 13, scope: !1141)
!1145 = !DILocation(line: 182, column: 12, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !54, line: 182, column: 7)
!1147 = !DILocation(line: 182, column: 9, scope: !1146)
!1148 = !DILocation(line: 182, column: 22, scope: !1146)
!1149 = !DILocation(line: 182, column: 34, scope: !1146)
!1150 = !DILocation(line: 182, column: 25, scope: !1146)
!1151 = !DILocation(line: 182, column: 7, scope: !1141)
!1152 = !DILocation(line: 184, column: 5, scope: !1146)
!1153 = !DILocation(line: 185, column: 1, scope: !1141)
!1154 = distinct !DISubprogram(name: "error_tail", scope: !54, file: !54, line: 219, type: !1122, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !53, retainedNodes: !37)
!1155 = !DILocalVariable(name: "status", arg: 1, scope: !1154, file: !54, line: 219, type: !33)
!1156 = !DILocation(line: 219, column: 1, scope: !1154)
!1157 = !DILocalVariable(name: "errnum", arg: 2, scope: !1154, file: !54, line: 219, type: !33)
!1158 = !DILocalVariable(name: "message", arg: 3, scope: !1154, file: !54, line: 219, type: !6)
!1159 = !DILocalVariable(name: "args", arg: 4, scope: !1154, file: !54, line: 219, type: !62)
!1160 = !DILocation(line: 229, column: 13, scope: !1154)
!1161 = !DILocation(line: 229, column: 21, scope: !1154)
!1162 = !DILocation(line: 229, column: 3, scope: !1154)
!1163 = !DILocation(line: 232, column: 3, scope: !1154)
!1164 = !DILocation(line: 233, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1154, file: !54, line: 233, column: 7)
!1166 = !DILocation(line: 233, column: 7, scope: !1154)
!1167 = !DILocation(line: 234, column: 26, scope: !1165)
!1168 = !DILocation(line: 234, column: 5, scope: !1165)
!1169 = !DILocation(line: 238, column: 3, scope: !1154)
!1170 = !DILocation(line: 240, column: 3, scope: !1154)
!1171 = !DILocation(line: 241, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1154, file: !54, line: 241, column: 7)
!1173 = !DILocation(line: 241, column: 7, scope: !1154)
!1174 = !DILocation(line: 242, column: 11, scope: !1172)
!1175 = !DILocation(line: 242, column: 5, scope: !1172)
!1176 = !DILocation(line: 243, column: 1, scope: !1154)
!1177 = distinct !DISubprogram(name: "print_errno_message", scope: !54, file: !54, line: 188, type: !340, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !53, retainedNodes: !37)
!1178 = !DILocalVariable(name: "errnum", arg: 1, scope: !1177, file: !54, line: 188, type: !33)
!1179 = !DILocation(line: 188, column: 26, scope: !1177)
!1180 = !DILocalVariable(name: "s", scope: !1177, file: !54, line: 190, type: !6)
!1181 = !DILocation(line: 190, column: 15, scope: !1177)
!1182 = !DILocalVariable(name: "errbuf", scope: !1177, file: !54, line: 193, type: !1183)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !1184)
!1184 = !{!1185}
!1185 = !DISubrange(count: 1024)
!1186 = !DILocation(line: 193, column: 8, scope: !1177)
!1187 = !DILocation(line: 195, column: 21, scope: !1177)
!1188 = !DILocation(line: 195, column: 29, scope: !1177)
!1189 = !DILocation(line: 195, column: 7, scope: !1177)
!1190 = !DILocation(line: 195, column: 5, scope: !1177)
!1191 = !DILocation(line: 207, column: 9, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1177, file: !54, line: 207, column: 7)
!1193 = !DILocation(line: 207, column: 7, scope: !1177)
!1194 = !DILocation(line: 208, column: 9, scope: !1192)
!1195 = !DILocation(line: 208, column: 7, scope: !1192)
!1196 = !DILocation(line: 208, column: 5, scope: !1192)
!1197 = !DILocation(line: 214, column: 12, scope: !1177)
!1198 = !DILocation(line: 214, column: 28, scope: !1177)
!1199 = !DILocation(line: 214, column: 3, scope: !1177)
!1200 = !DILocation(line: 216, column: 1, scope: !1177)
!1201 = distinct !DISubprogram(name: "is_open", scope: !54, file: !54, line: 145, type: !1202, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !53, retainedNodes: !37)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!33, !33}
!1204 = !DILocalVariable(name: "fd", arg: 1, scope: !1201, file: !54, line: 145, type: !33)
!1205 = !DILocation(line: 145, column: 14, scope: !1201)
!1206 = !DILocation(line: 157, column: 22, scope: !1201)
!1207 = !DILocation(line: 157, column: 15, scope: !1201)
!1208 = !DILocation(line: 157, column: 12, scope: !1201)
!1209 = !DILocation(line: 157, column: 3, scope: !1201)
!1210 = distinct !DISubprogram(name: "error", scope: !54, file: !54, line: 285, type: !1211, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !37)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null, !33, !33, !6, null}
!1213 = !DILocalVariable(name: "status", arg: 1, scope: !1210, file: !54, line: 285, type: !33)
!1214 = !DILocation(line: 285, column: 12, scope: !1210)
!1215 = !DILocalVariable(name: "errnum", arg: 2, scope: !1210, file: !54, line: 285, type: !33)
!1216 = !DILocation(line: 285, column: 24, scope: !1210)
!1217 = !DILocalVariable(name: "message", arg: 3, scope: !1210, file: !54, line: 285, type: !6)
!1218 = !DILocation(line: 285, column: 44, scope: !1210)
!1219 = !DILocalVariable(name: "ap", scope: !1210, file: !54, line: 287, type: !62)
!1220 = !DILocation(line: 287, column: 11, scope: !1210)
!1221 = !DILocation(line: 288, column: 3, scope: !1210)
!1222 = !DILocation(line: 289, column: 3, scope: !1210)
!1223 = !DILocation(line: 290, column: 3, scope: !1210)
!1224 = !DILocation(line: 291, column: 1, scope: !1210)
!1225 = !DILocalVariable(name: "status", arg: 1, scope: !59, file: !54, line: 298, type: !33)
!1226 = !DILocation(line: 298, column: 1, scope: !59)
!1227 = !DILocalVariable(name: "errnum", arg: 2, scope: !59, file: !54, line: 298, type: !33)
!1228 = !DILocalVariable(name: "file_name", arg: 3, scope: !59, file: !54, line: 298, type: !6)
!1229 = !DILocalVariable(name: "line_number", arg: 4, scope: !59, file: !54, line: 298, type: !14)
!1230 = !DILocalVariable(name: "message", arg: 5, scope: !59, file: !54, line: 298, type: !6)
!1231 = !DILocalVariable(name: "args", arg: 6, scope: !59, file: !54, line: 298, type: !62)
!1232 = !DILocation(line: 302, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !59, file: !54, line: 302, column: 7)
!1234 = !DILocation(line: 302, column: 7, scope: !59)
!1235 = !DILocation(line: 307, column: 11, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !54, line: 307, column: 11)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !54, line: 303, column: 5)
!1238 = !DILocation(line: 307, column: 30, scope: !1236)
!1239 = !DILocation(line: 307, column: 27, scope: !1236)
!1240 = !DILocation(line: 308, column: 11, scope: !1236)
!1241 = !DILocation(line: 308, column: 15, scope: !1236)
!1242 = !DILocation(line: 308, column: 28, scope: !1236)
!1243 = !DILocation(line: 308, column: 25, scope: !1236)
!1244 = !DILocation(line: 309, column: 15, scope: !1236)
!1245 = !DILocation(line: 309, column: 19, scope: !1236)
!1246 = !DILocation(line: 309, column: 33, scope: !1236)
!1247 = !DILocation(line: 310, column: 19, scope: !1236)
!1248 = !DILocation(line: 310, column: 22, scope: !1236)
!1249 = !DILocation(line: 310, column: 32, scope: !1236)
!1250 = !DILocation(line: 311, column: 19, scope: !1236)
!1251 = !DILocation(line: 311, column: 30, scope: !1236)
!1252 = !DILocation(line: 311, column: 45, scope: !1236)
!1253 = !DILocation(line: 311, column: 22, scope: !1236)
!1254 = !DILocation(line: 311, column: 56, scope: !1236)
!1255 = !DILocation(line: 307, column: 11, scope: !1237)
!1256 = !DILocation(line: 314, column: 9, scope: !1236)
!1257 = !DILocation(line: 316, column: 23, scope: !1237)
!1258 = !DILocation(line: 316, column: 21, scope: !1237)
!1259 = !DILocation(line: 317, column: 25, scope: !1237)
!1260 = !DILocation(line: 317, column: 23, scope: !1237)
!1261 = !DILocation(line: 318, column: 5, scope: !1237)
!1262 = !DILocation(line: 327, column: 3, scope: !59)
!1263 = !DILocation(line: 331, column: 7, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !59, file: !54, line: 331, column: 7)
!1265 = !DILocation(line: 331, column: 7, scope: !59)
!1266 = !DILocation(line: 332, column: 7, scope: !1264)
!1267 = !DILocation(line: 332, column: 5, scope: !1264)
!1268 = !DILocation(line: 338, column: 16, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !54, line: 334, column: 5)
!1270 = !DILocation(line: 338, column: 31, scope: !1269)
!1271 = !DILocation(line: 338, column: 7, scope: !1269)
!1272 = !DILocation(line: 346, column: 12, scope: !59)
!1273 = !DILocation(line: 346, column: 20, scope: !59)
!1274 = !DILocation(line: 346, column: 30, scope: !59)
!1275 = !DILocation(line: 347, column: 12, scope: !59)
!1276 = !DILocation(line: 347, column: 23, scope: !59)
!1277 = !DILocation(line: 346, column: 3, scope: !59)
!1278 = !DILocation(line: 350, column: 3, scope: !59)
!1279 = !DILocation(line: 356, column: 1, scope: !59)
!1280 = distinct !DISubprogram(name: "error_at_line", scope: !54, file: !54, line: 359, type: !1281, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !37)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !33, !33, !6, !14, !6, null}
!1283 = !DILocalVariable(name: "status", arg: 1, scope: !1280, file: !54, line: 359, type: !33)
!1284 = !DILocation(line: 359, column: 20, scope: !1280)
!1285 = !DILocalVariable(name: "errnum", arg: 2, scope: !1280, file: !54, line: 359, type: !33)
!1286 = !DILocation(line: 359, column: 32, scope: !1280)
!1287 = !DILocalVariable(name: "file_name", arg: 3, scope: !1280, file: !54, line: 359, type: !6)
!1288 = !DILocation(line: 359, column: 52, scope: !1280)
!1289 = !DILocalVariable(name: "line_number", arg: 4, scope: !1280, file: !54, line: 360, type: !14)
!1290 = !DILocation(line: 360, column: 29, scope: !1280)
!1291 = !DILocalVariable(name: "message", arg: 5, scope: !1280, file: !54, line: 360, type: !6)
!1292 = !DILocation(line: 360, column: 54, scope: !1280)
!1293 = !DILocalVariable(name: "ap", scope: !1280, file: !54, line: 362, type: !62)
!1294 = !DILocation(line: 362, column: 11, scope: !1280)
!1295 = !DILocation(line: 363, column: 3, scope: !1280)
!1296 = !DILocation(line: 364, column: 3, scope: !1280)
!1297 = !DILocation(line: 366, column: 3, scope: !1280)
!1298 = !DILocation(line: 367, column: 1, scope: !1280)
!1299 = distinct !DISubprogram(name: "rpl_fcntl", scope: !88, file: !88, line: 202, type: !1300, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !91, retainedNodes: !37)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!33, !33, !33, null}
!1302 = !DILocalVariable(name: "fd", arg: 1, scope: !1299, file: !88, line: 202, type: !33)
!1303 = !DILocation(line: 202, column: 12, scope: !1299)
!1304 = !DILocalVariable(name: "action", arg: 2, scope: !1299, file: !88, line: 202, type: !33)
!1305 = !DILocation(line: 202, column: 20, scope: !1299)
!1306 = !DILocalVariable(name: "arg", scope: !1299, file: !88, line: 208, type: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !65, line: 14, baseType: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1309, baseType: !1310)
!1309 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !69, size: 256, elements: !1311)
!1311 = !{!1312, !1313, !1314, !1315, !1316}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1310, file: !1309, line: 208, baseType: !32, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1310, file: !1309, line: 208, baseType: !32, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1310, file: !1309, line: 208, baseType: !32, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1310, file: !1309, line: 208, baseType: !33, size: 32, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1310, file: !1309, line: 208, baseType: !33, size: 32, offset: 224)
!1317 = !DILocation(line: 208, column: 11, scope: !1299)
!1318 = !DILocation(line: 209, column: 3, scope: !1299)
!1319 = !DILocalVariable(name: "result", scope: !1299, file: !88, line: 211, type: !33)
!1320 = !DILocation(line: 211, column: 7, scope: !1299)
!1321 = !DILocation(line: 212, column: 11, scope: !1299)
!1322 = !DILocation(line: 212, column: 3, scope: !1299)
!1323 = !DILocalVariable(name: "target", scope: !1324, file: !88, line: 216, type: !33)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !88, line: 215, column: 7)
!1325 = distinct !DILexicalBlock(scope: !1299, file: !88, line: 213, column: 5)
!1326 = !DILocation(line: 216, column: 13, scope: !1324)
!1327 = !DILocation(line: 216, column: 22, scope: !1324)
!1328 = !DILocation(line: 217, column: 35, scope: !1324)
!1329 = !DILocation(line: 217, column: 39, scope: !1324)
!1330 = !DILocation(line: 217, column: 18, scope: !1324)
!1331 = !DILocation(line: 217, column: 16, scope: !1324)
!1332 = !DILocation(line: 218, column: 9, scope: !1324)
!1333 = !DILocalVariable(name: "target", scope: !1334, file: !88, line: 223, type: !33)
!1334 = distinct !DILexicalBlock(scope: !1325, file: !88, line: 222, column: 7)
!1335 = !DILocation(line: 223, column: 13, scope: !1334)
!1336 = !DILocation(line: 223, column: 22, scope: !1334)
!1337 = !DILocation(line: 224, column: 43, scope: !1334)
!1338 = !DILocation(line: 224, column: 47, scope: !1334)
!1339 = !DILocation(line: 224, column: 18, scope: !1334)
!1340 = !DILocation(line: 224, column: 16, scope: !1334)
!1341 = !DILocation(line: 225, column: 9, scope: !1334)
!1342 = !DILocation(line: 260, column: 17, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1325, file: !88, line: 258, column: 7)
!1344 = !DILocation(line: 260, column: 9, scope: !1343)
!1345 = !DILocation(line: 329, column: 29, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1343, file: !88, line: 261, column: 11)
!1347 = !DILocation(line: 329, column: 33, scope: !1346)
!1348 = !DILocation(line: 329, column: 22, scope: !1346)
!1349 = !DILocation(line: 329, column: 20, scope: !1346)
!1350 = !DILocation(line: 330, column: 13, scope: !1346)
!1351 = !DILocalVariable(name: "x", scope: !1352, file: !88, line: 418, type: !33)
!1352 = distinct !DILexicalBlock(scope: !1346, file: !88, line: 417, column: 13)
!1353 = !DILocation(line: 418, column: 19, scope: !1352)
!1354 = !DILocation(line: 418, column: 23, scope: !1352)
!1355 = !DILocation(line: 419, column: 31, scope: !1352)
!1356 = !DILocation(line: 419, column: 35, scope: !1352)
!1357 = !DILocation(line: 419, column: 43, scope: !1352)
!1358 = !DILocation(line: 419, column: 24, scope: !1352)
!1359 = !DILocation(line: 419, column: 22, scope: !1352)
!1360 = !DILocation(line: 421, column: 13, scope: !1346)
!1361 = !DILocalVariable(name: "p", scope: !1362, file: !88, line: 426, type: !32)
!1362 = distinct !DILexicalBlock(scope: !1346, file: !88, line: 425, column: 13)
!1363 = !DILocation(line: 426, column: 21, scope: !1362)
!1364 = !DILocation(line: 426, column: 25, scope: !1362)
!1365 = !DILocation(line: 427, column: 31, scope: !1362)
!1366 = !DILocation(line: 427, column: 35, scope: !1362)
!1367 = !DILocation(line: 427, column: 43, scope: !1362)
!1368 = !DILocation(line: 427, column: 24, scope: !1362)
!1369 = !DILocation(line: 427, column: 22, scope: !1362)
!1370 = !DILocation(line: 429, column: 13, scope: !1346)
!1371 = !DILocation(line: 434, column: 9, scope: !1343)
!1372 = !DILocation(line: 438, column: 3, scope: !1299)
!1373 = !DILocation(line: 440, column: 10, scope: !1299)
!1374 = !DILocation(line: 440, column: 3, scope: !1299)
!1375 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !88, file: !88, line: 444, type: !89, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !91, retainedNodes: !37)
!1376 = !DILocalVariable(name: "fd", arg: 1, scope: !1375, file: !88, line: 444, type: !33)
!1377 = !DILocation(line: 444, column: 22, scope: !1375)
!1378 = !DILocalVariable(name: "target", arg: 2, scope: !1375, file: !88, line: 444, type: !33)
!1379 = !DILocation(line: 444, column: 30, scope: !1375)
!1380 = !DILocalVariable(name: "result", scope: !1375, file: !88, line: 446, type: !33)
!1381 = !DILocation(line: 446, column: 7, scope: !1375)
!1382 = !DILocation(line: 479, column: 19, scope: !1375)
!1383 = !DILocation(line: 479, column: 32, scope: !1375)
!1384 = !DILocation(line: 479, column: 12, scope: !1375)
!1385 = !DILocation(line: 479, column: 10, scope: !1375)
!1386 = !DILocation(line: 481, column: 10, scope: !1375)
!1387 = !DILocation(line: 481, column: 3, scope: !1375)
!1388 = !DILocalVariable(name: "fd", arg: 1, scope: !87, file: !88, line: 485, type: !33)
!1389 = !DILocation(line: 485, column: 30, scope: !87)
!1390 = !DILocalVariable(name: "target", arg: 2, scope: !87, file: !88, line: 485, type: !33)
!1391 = !DILocation(line: 485, column: 38, scope: !87)
!1392 = !DILocalVariable(name: "result", scope: !87, file: !88, line: 487, type: !33)
!1393 = !DILocation(line: 487, column: 7, scope: !87)
!1394 = !DILocation(line: 507, column: 12, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !87, file: !88, line: 507, column: 7)
!1396 = !DILocation(line: 507, column: 9, scope: !1395)
!1397 = !DILocation(line: 507, column: 7, scope: !87)
!1398 = !DILocation(line: 509, column: 23, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !88, line: 508, column: 5)
!1400 = !DILocation(line: 509, column: 44, scope: !1399)
!1401 = !DILocation(line: 509, column: 16, scope: !1399)
!1402 = !DILocation(line: 509, column: 14, scope: !1399)
!1403 = !DILocation(line: 510, column: 16, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1399, file: !88, line: 510, column: 11)
!1405 = !DILocation(line: 510, column: 13, scope: !1404)
!1406 = !DILocation(line: 510, column: 23, scope: !1404)
!1407 = !DILocation(line: 510, column: 26, scope: !1404)
!1408 = !DILocation(line: 510, column: 32, scope: !1404)
!1409 = !DILocation(line: 510, column: 11, scope: !1399)
!1410 = !DILocation(line: 512, column: 30, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1404, file: !88, line: 511, column: 9)
!1412 = !DILocation(line: 517, column: 9, scope: !1411)
!1413 = !DILocation(line: 520, column: 37, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1404, file: !88, line: 519, column: 9)
!1415 = !DILocation(line: 520, column: 41, scope: !1414)
!1416 = !DILocation(line: 520, column: 20, scope: !1414)
!1417 = !DILocation(line: 520, column: 18, scope: !1414)
!1418 = !DILocation(line: 521, column: 15, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !88, line: 521, column: 15)
!1420 = !DILocation(line: 521, column: 22, scope: !1419)
!1421 = !DILocation(line: 521, column: 15, scope: !1414)
!1422 = !DILocation(line: 522, column: 32, scope: !1419)
!1423 = !DILocation(line: 522, column: 13, scope: !1419)
!1424 = !DILocation(line: 524, column: 5, scope: !1399)
!1425 = !DILocation(line: 527, column: 31, scope: !1395)
!1426 = !DILocation(line: 527, column: 35, scope: !1395)
!1427 = !DILocation(line: 527, column: 14, scope: !1395)
!1428 = !DILocation(line: 527, column: 12, scope: !1395)
!1429 = !DILocation(line: 528, column: 12, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !87, file: !88, line: 528, column: 7)
!1431 = !DILocation(line: 528, column: 9, scope: !1430)
!1432 = !DILocation(line: 528, column: 19, scope: !1430)
!1433 = !DILocation(line: 528, column: 22, scope: !1430)
!1434 = !DILocation(line: 528, column: 41, scope: !1430)
!1435 = !DILocation(line: 528, column: 7, scope: !87)
!1436 = !DILocalVariable(name: "flags", scope: !1437, file: !88, line: 530, type: !33)
!1437 = distinct !DILexicalBlock(scope: !1430, file: !88, line: 529, column: 5)
!1438 = !DILocation(line: 530, column: 11, scope: !1437)
!1439 = !DILocation(line: 530, column: 26, scope: !1437)
!1440 = !DILocation(line: 530, column: 19, scope: !1437)
!1441 = !DILocation(line: 531, column: 11, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !88, line: 531, column: 11)
!1443 = !DILocation(line: 531, column: 17, scope: !1442)
!1444 = !DILocation(line: 531, column: 21, scope: !1442)
!1445 = !DILocation(line: 531, column: 31, scope: !1442)
!1446 = !DILocation(line: 531, column: 48, scope: !1442)
!1447 = !DILocation(line: 531, column: 54, scope: !1442)
!1448 = !DILocation(line: 531, column: 24, scope: !1442)
!1449 = !DILocation(line: 531, column: 68, scope: !1442)
!1450 = !DILocation(line: 531, column: 11, scope: !1437)
!1451 = !DILocalVariable(name: "saved_errno", scope: !1452, file: !88, line: 533, type: !33)
!1452 = distinct !DILexicalBlock(scope: !1442, file: !88, line: 532, column: 9)
!1453 = !DILocation(line: 533, column: 15, scope: !1452)
!1454 = !DILocation(line: 533, column: 29, scope: !1452)
!1455 = !DILocation(line: 534, column: 18, scope: !1452)
!1456 = !DILocation(line: 534, column: 11, scope: !1452)
!1457 = !DILocation(line: 535, column: 19, scope: !1452)
!1458 = !DILocation(line: 535, column: 11, scope: !1452)
!1459 = !DILocation(line: 535, column: 17, scope: !1452)
!1460 = !DILocation(line: 536, column: 18, scope: !1452)
!1461 = !DILocation(line: 537, column: 9, scope: !1452)
!1462 = !DILocation(line: 538, column: 5, scope: !1437)
!1463 = !DILocation(line: 540, column: 10, scope: !87)
!1464 = !DILocation(line: 540, column: 3, scope: !87)
!1465 = distinct !DISubprogram(name: "full_write", scope: !251, file: !251, line: 58, type: !1466, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !37)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!289, !33, !1468, !289}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1470 = !DILocalVariable(name: "fd", arg: 1, scope: !1465, file: !251, line: 58, type: !33)
!1471 = !DILocation(line: 58, column: 14, scope: !1465)
!1472 = !DILocalVariable(name: "buf", arg: 2, scope: !1465, file: !251, line: 58, type: !1468)
!1473 = !DILocation(line: 58, column: 30, scope: !1465)
!1474 = !DILocalVariable(name: "count", arg: 3, scope: !1465, file: !251, line: 58, type: !289)
!1475 = !DILocation(line: 58, column: 41, scope: !1465)
!1476 = !DILocalVariable(name: "total", scope: !1465, file: !251, line: 60, type: !289)
!1477 = !DILocation(line: 60, column: 9, scope: !1465)
!1478 = !DILocalVariable(name: "ptr", scope: !1465, file: !251, line: 61, type: !6)
!1479 = !DILocation(line: 61, column: 15, scope: !1465)
!1480 = !DILocation(line: 61, column: 36, scope: !1465)
!1481 = !DILocation(line: 63, column: 3, scope: !1465)
!1482 = !DILocation(line: 63, column: 10, scope: !1465)
!1483 = !DILocation(line: 63, column: 16, scope: !1465)
!1484 = !DILocalVariable(name: "n_rw", scope: !1485, file: !251, line: 65, type: !291)
!1485 = distinct !DILexicalBlock(scope: !1465, file: !251, line: 64, column: 5)
!1486 = !DILocation(line: 65, column: 17, scope: !1485)
!1487 = !DILocation(line: 65, column: 33, scope: !1485)
!1488 = !DILocation(line: 65, column: 37, scope: !1485)
!1489 = !DILocation(line: 65, column: 42, scope: !1485)
!1490 = !DILocation(line: 65, column: 24, scope: !1485)
!1491 = !DILocation(line: 66, column: 11, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1485, file: !251, line: 66, column: 11)
!1493 = !DILocation(line: 66, column: 16, scope: !1492)
!1494 = !DILocation(line: 66, column: 11, scope: !1485)
!1495 = !DILocation(line: 67, column: 9, scope: !1492)
!1496 = !DILocation(line: 68, column: 11, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1485, file: !251, line: 68, column: 11)
!1498 = !DILocation(line: 68, column: 16, scope: !1497)
!1499 = !DILocation(line: 68, column: 11, scope: !1485)
!1500 = !DILocation(line: 70, column: 11, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !251, line: 69, column: 9)
!1502 = !DILocation(line: 70, column: 17, scope: !1501)
!1503 = !DILocation(line: 71, column: 11, scope: !1501)
!1504 = !DILocation(line: 73, column: 16, scope: !1485)
!1505 = !DILocation(line: 73, column: 13, scope: !1485)
!1506 = !DILocation(line: 74, column: 14, scope: !1485)
!1507 = !DILocation(line: 74, column: 11, scope: !1485)
!1508 = !DILocation(line: 75, column: 16, scope: !1485)
!1509 = !DILocation(line: 75, column: 13, scope: !1485)
!1510 = distinct !{!1510, !1481, !1511, !433}
!1511 = !DILocation(line: 76, column: 5, scope: !1465)
!1512 = !DILocation(line: 78, column: 10, scope: !1465)
!1513 = !DILocation(line: 78, column: 3, scope: !1465)
!1514 = distinct !DISubprogram(name: "getprogname", scope: !254, file: !254, line: 54, type: !1515, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !253, retainedNodes: !37)
!1515 = !DISubroutineType(types: !252)
!1516 = !DILocation(line: 58, column: 10, scope: !1514)
!1517 = !DILocation(line: 58, column: 3, scope: !1514)
!1518 = distinct !DISubprogram(name: "isapipe", scope: !256, file: !256, line: 72, type: !1202, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!1519 = !DILocalVariable(name: "fd", arg: 1, scope: !1518, file: !256, line: 72, type: !33)
!1520 = !DILocation(line: 72, column: 14, scope: !1518)
!1521 = !DILocalVariable(name: "pipe_link_count_max", scope: !1518, file: !256, line: 74, type: !1522)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !1523, line: 74, baseType: !1524)
!1523 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !885, line: 151, baseType: !14)
!1525 = !DILocation(line: 74, column: 11, scope: !1518)
!1526 = !DILocalVariable(name: "check_for_fifo", scope: !1518, file: !256, line: 75, type: !50)
!1527 = !DILocation(line: 75, column: 8, scope: !1518)
!1528 = !DILocalVariable(name: "st", scope: !1518, file: !256, line: 77, type: !1529)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1530, line: 44, size: 1024, elements: !1531)
!1530 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1531 = !{!1532, !1534, !1536, !1538, !1539, !1541, !1543, !1544, !1545, !1547, !1549, !1550, !1552, !1560, !1561, !1562}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1529, file: !1530, line: 46, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !885, line: 145, baseType: !154)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1529, file: !1530, line: 47, baseType: !1535, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !885, line: 148, baseType: !154)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1529, file: !1530, line: 48, baseType: !1537, size: 32, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !885, line: 150, baseType: !14)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1529, file: !1530, line: 49, baseType: !1524, size: 32, offset: 160)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1529, file: !1530, line: 50, baseType: !1540, size: 32, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !885, line: 146, baseType: !14)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1529, file: !1530, line: 51, baseType: !1542, size: 32, offset: 224)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !885, line: 147, baseType: !14)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1529, file: !1530, line: 52, baseType: !1533, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1529, file: !1530, line: 53, baseType: !1533, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1529, file: !1530, line: 54, baseType: !1546, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !885, line: 152, baseType: !292)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1529, file: !1530, line: 55, baseType: !1548, size: 32, offset: 448)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !885, line: 175, baseType: !33)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1529, file: !1530, line: 56, baseType: !33, size: 32, offset: 480)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1529, file: !1530, line: 57, baseType: !1551, size: 64, offset: 512)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !885, line: 180, baseType: !292)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1529, file: !1530, line: 65, baseType: !1553, size: 128, offset: 576)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1554, line: 11, size: 128, elements: !1555)
!1554 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1555 = !{!1556, !1558}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1553, file: !1554, line: 16, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !885, line: 160, baseType: !292)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1553, file: !1554, line: 21, baseType: !1559, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !885, line: 197, baseType: !292)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1529, file: !1530, line: 66, baseType: !1553, size: 128, offset: 704)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1529, file: !1530, line: 67, baseType: !1553, size: 128, offset: 832)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1529, file: !1530, line: 79, baseType: !813, size: 64, offset: 960)
!1563 = !DILocation(line: 77, column: 15, scope: !1518)
!1564 = !DILocalVariable(name: "fstat_result", scope: !1518, file: !256, line: 78, type: !33)
!1565 = !DILocation(line: 78, column: 7, scope: !1518)
!1566 = !DILocation(line: 78, column: 29, scope: !1518)
!1567 = !DILocation(line: 78, column: 22, scope: !1518)
!1568 = !DILocation(line: 79, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1518, file: !256, line: 79, column: 7)
!1570 = !DILocation(line: 79, column: 20, scope: !1569)
!1571 = !DILocation(line: 79, column: 7, scope: !1518)
!1572 = !DILocation(line: 80, column: 12, scope: !1569)
!1573 = !DILocation(line: 80, column: 5, scope: !1569)
!1574 = !DILocation(line: 118, column: 9, scope: !1518)
!1575 = !DILocation(line: 118, column: 21, scope: !1518)
!1576 = !DILocation(line: 118, column: 18, scope: !1518)
!1577 = !DILocation(line: 119, column: 6, scope: !1518)
!1578 = !DILocation(line: 119, column: 10, scope: !1518)
!1579 = !DILocation(line: 119, column: 27, scope: !1518)
!1580 = !DILocation(line: 119, column: 51, scope: !1518)
!1581 = !DILocation(line: 0, scope: !1518)
!1582 = !DILocation(line: 117, column: 3, scope: !1518)
!1583 = !DILocation(line: 120, column: 1, scope: !1518)
!1584 = distinct !DISubprogram(name: "parse_long_options", scope: !96, file: !96, line: 45, type: !1585, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !95, retainedNodes: !37)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !33, !621, !6, !6, !6, !1587, null}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1588 = !DILocalVariable(name: "argc", arg: 1, scope: !1584, file: !96, line: 45, type: !33)
!1589 = !DILocation(line: 45, column: 25, scope: !1584)
!1590 = !DILocalVariable(name: "argv", arg: 2, scope: !1584, file: !96, line: 46, type: !621)
!1591 = !DILocation(line: 46, column: 28, scope: !1584)
!1592 = !DILocalVariable(name: "command_name", arg: 3, scope: !1584, file: !96, line: 47, type: !6)
!1593 = !DILocation(line: 47, column: 33, scope: !1584)
!1594 = !DILocalVariable(name: "package", arg: 4, scope: !1584, file: !96, line: 48, type: !6)
!1595 = !DILocation(line: 48, column: 33, scope: !1584)
!1596 = !DILocalVariable(name: "version", arg: 5, scope: !1584, file: !96, line: 49, type: !6)
!1597 = !DILocation(line: 49, column: 33, scope: !1584)
!1598 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1584, file: !96, line: 50, type: !1587)
!1599 = !DILocation(line: 50, column: 28, scope: !1584)
!1600 = !DILocalVariable(name: "saved_opterr", scope: !1584, file: !96, line: 53, type: !33)
!1601 = !DILocation(line: 53, column: 7, scope: !1584)
!1602 = !DILocation(line: 53, column: 22, scope: !1584)
!1603 = !DILocation(line: 56, column: 10, scope: !1584)
!1604 = !DILocation(line: 58, column: 7, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1584, file: !96, line: 58, column: 7)
!1606 = !DILocation(line: 58, column: 12, scope: !1605)
!1607 = !DILocation(line: 58, column: 7, scope: !1584)
!1608 = !DILocalVariable(name: "c", scope: !1609, file: !96, line: 60, type: !33)
!1609 = distinct !DILexicalBlock(scope: !1605, file: !96, line: 59, column: 5)
!1610 = !DILocation(line: 60, column: 11, scope: !1609)
!1611 = !DILocation(line: 60, column: 28, scope: !1609)
!1612 = !DILocation(line: 60, column: 34, scope: !1609)
!1613 = !DILocation(line: 60, column: 15, scope: !1609)
!1614 = !DILocation(line: 61, column: 11, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1609, file: !96, line: 61, column: 11)
!1616 = !DILocation(line: 61, column: 13, scope: !1615)
!1617 = !DILocation(line: 61, column: 11, scope: !1609)
!1618 = !DILocation(line: 63, column: 19, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !96, line: 62, column: 9)
!1620 = !DILocation(line: 63, column: 11, scope: !1619)
!1621 = !DILocation(line: 66, column: 17, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1619, file: !96, line: 64, column: 13)
!1623 = !DILocation(line: 66, column: 15, scope: !1622)
!1624 = !DILocation(line: 67, column: 15, scope: !1622)
!1625 = !DILocalVariable(name: "authors", scope: !1626, file: !96, line: 71, type: !1627)
!1626 = distinct !DILexicalBlock(scope: !1622, file: !96, line: 70, column: 15)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !63, line: 52, baseType: !1628)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !65, line: 32, baseType: !1629)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1630, baseType: !1631)
!1630 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !69, size: 256, elements: !1632)
!1632 = !{!1633, !1634, !1635, !1636, !1637}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1631, file: !1630, line: 71, baseType: !32, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1631, file: !1630, line: 71, baseType: !32, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1631, file: !1630, line: 71, baseType: !32, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1631, file: !1630, line: 71, baseType: !33, size: 32, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1631, file: !1630, line: 71, baseType: !33, size: 32, offset: 224)
!1638 = !DILocation(line: 71, column: 25, scope: !1626)
!1639 = !DILocation(line: 72, column: 17, scope: !1626)
!1640 = !DILocation(line: 73, column: 33, scope: !1626)
!1641 = !DILocation(line: 73, column: 41, scope: !1626)
!1642 = !DILocation(line: 73, column: 55, scope: !1626)
!1643 = !DILocation(line: 73, column: 64, scope: !1626)
!1644 = !DILocation(line: 73, column: 17, scope: !1626)
!1645 = !DILocation(line: 74, column: 17, scope: !1626)
!1646 = !DILocation(line: 79, column: 15, scope: !1622)
!1647 = !DILocation(line: 81, column: 9, scope: !1619)
!1648 = !DILocation(line: 82, column: 5, scope: !1609)
!1649 = !DILocation(line: 85, column: 12, scope: !1584)
!1650 = !DILocation(line: 85, column: 10, scope: !1584)
!1651 = !DILocation(line: 89, column: 10, scope: !1584)
!1652 = !DILocation(line: 90, column: 1, scope: !1584)
!1653 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !96, file: !96, line: 98, type: !1654, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !95, retainedNodes: !37)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{null, !33, !621, !6, !6, !6, !50, !1587, null}
!1656 = !DILocalVariable(name: "argc", arg: 1, scope: !1653, file: !96, line: 98, type: !33)
!1657 = !DILocation(line: 98, column: 38, scope: !1653)
!1658 = !DILocalVariable(name: "argv", arg: 2, scope: !1653, file: !96, line: 99, type: !621)
!1659 = !DILocation(line: 99, column: 41, scope: !1653)
!1660 = !DILocalVariable(name: "command_name", arg: 3, scope: !1653, file: !96, line: 100, type: !6)
!1661 = !DILocation(line: 100, column: 46, scope: !1653)
!1662 = !DILocalVariable(name: "package", arg: 4, scope: !1653, file: !96, line: 101, type: !6)
!1663 = !DILocation(line: 101, column: 46, scope: !1653)
!1664 = !DILocalVariable(name: "version", arg: 5, scope: !1653, file: !96, line: 102, type: !6)
!1665 = !DILocation(line: 102, column: 46, scope: !1653)
!1666 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1653, file: !96, line: 103, type: !50)
!1667 = !DILocation(line: 103, column: 39, scope: !1653)
!1668 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1653, file: !96, line: 104, type: !1587)
!1669 = !DILocation(line: 104, column: 41, scope: !1653)
!1670 = !DILocalVariable(name: "saved_opterr", scope: !1653, file: !96, line: 107, type: !33)
!1671 = !DILocation(line: 107, column: 7, scope: !1653)
!1672 = !DILocation(line: 107, column: 22, scope: !1653)
!1673 = !DILocation(line: 110, column: 10, scope: !1653)
!1674 = !DILocalVariable(name: "optstring", scope: !1653, file: !96, line: 112, type: !6)
!1675 = !DILocation(line: 112, column: 15, scope: !1653)
!1676 = !DILocation(line: 112, column: 27, scope: !1653)
!1677 = !DILocalVariable(name: "c", scope: !1653, file: !96, line: 114, type: !33)
!1678 = !DILocation(line: 114, column: 7, scope: !1653)
!1679 = !DILocation(line: 114, column: 24, scope: !1653)
!1680 = !DILocation(line: 114, column: 30, scope: !1653)
!1681 = !DILocation(line: 114, column: 36, scope: !1653)
!1682 = !DILocation(line: 114, column: 11, scope: !1653)
!1683 = !DILocation(line: 115, column: 7, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1653, file: !96, line: 115, column: 7)
!1685 = !DILocation(line: 115, column: 9, scope: !1684)
!1686 = !DILocation(line: 115, column: 7, scope: !1653)
!1687 = !DILocation(line: 117, column: 15, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1684, file: !96, line: 116, column: 5)
!1689 = !DILocation(line: 117, column: 7, scope: !1688)
!1690 = !DILocation(line: 120, column: 13, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1688, file: !96, line: 118, column: 9)
!1692 = !DILocation(line: 120, column: 11, scope: !1691)
!1693 = !DILocation(line: 121, column: 11, scope: !1691)
!1694 = !DILocalVariable(name: "authors", scope: !1695, file: !96, line: 125, type: !1627)
!1695 = distinct !DILexicalBlock(scope: !1691, file: !96, line: 124, column: 11)
!1696 = !DILocation(line: 125, column: 21, scope: !1695)
!1697 = !DILocation(line: 126, column: 13, scope: !1695)
!1698 = !DILocation(line: 127, column: 29, scope: !1695)
!1699 = !DILocation(line: 127, column: 37, scope: !1695)
!1700 = !DILocation(line: 127, column: 51, scope: !1695)
!1701 = !DILocation(line: 127, column: 60, scope: !1695)
!1702 = !DILocation(line: 127, column: 13, scope: !1695)
!1703 = !DILocation(line: 128, column: 13, scope: !1695)
!1704 = !DILocation(line: 132, column: 13, scope: !1691)
!1705 = !DILocation(line: 132, column: 26, scope: !1691)
!1706 = !DILocation(line: 132, column: 11, scope: !1691)
!1707 = !DILocation(line: 133, column: 11, scope: !1691)
!1708 = !DILocation(line: 135, column: 5, scope: !1688)
!1709 = !DILocation(line: 138, column: 12, scope: !1653)
!1710 = !DILocation(line: 138, column: 10, scope: !1653)
!1711 = !DILocation(line: 139, column: 1, scope: !1653)
!1712 = distinct !DISubprogram(name: "pipe2_safer", scope: !258, file: !258, line: 31, type: !243, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !37)
!1713 = !DILocalVariable(name: "fd", arg: 1, scope: !1712, file: !258, line: 31, type: !106)
!1714 = !DILocation(line: 31, column: 18, scope: !1712)
!1715 = !DILocalVariable(name: "flags", arg: 2, scope: !1712, file: !258, line: 31, type: !33)
!1716 = !DILocation(line: 31, column: 29, scope: !1712)
!1717 = !DILocation(line: 34, column: 14, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1712, file: !258, line: 34, column: 7)
!1719 = !DILocation(line: 34, column: 18, scope: !1718)
!1720 = !DILocation(line: 34, column: 7, scope: !1718)
!1721 = !DILocation(line: 34, column: 25, scope: !1718)
!1722 = !DILocation(line: 34, column: 7, scope: !1712)
!1723 = !DILocalVariable(name: "i", scope: !1724, file: !258, line: 36, type: !33)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !258, line: 36, column: 7)
!1725 = distinct !DILexicalBlock(scope: !1718, file: !258, line: 35, column: 5)
!1726 = !DILocation(line: 36, column: 16, scope: !1724)
!1727 = !DILocation(line: 36, column: 12, scope: !1724)
!1728 = !DILocation(line: 36, column: 23, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1724, file: !258, line: 36, column: 7)
!1730 = !DILocation(line: 36, column: 25, scope: !1729)
!1731 = !DILocation(line: 36, column: 7, scope: !1724)
!1732 = !DILocation(line: 38, column: 34, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !258, line: 37, column: 9)
!1734 = !DILocation(line: 38, column: 37, scope: !1733)
!1735 = !DILocation(line: 38, column: 41, scope: !1733)
!1736 = !DILocation(line: 38, column: 19, scope: !1733)
!1737 = !DILocation(line: 38, column: 11, scope: !1733)
!1738 = !DILocation(line: 38, column: 14, scope: !1733)
!1739 = !DILocation(line: 38, column: 17, scope: !1733)
!1740 = !DILocation(line: 39, column: 15, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1733, file: !258, line: 39, column: 15)
!1742 = !DILocation(line: 39, column: 18, scope: !1741)
!1743 = !DILocation(line: 39, column: 21, scope: !1741)
!1744 = !DILocation(line: 39, column: 15, scope: !1733)
!1745 = !DILocalVariable(name: "saved_errno", scope: !1746, file: !258, line: 41, type: !33)
!1746 = distinct !DILexicalBlock(scope: !1741, file: !258, line: 40, column: 13)
!1747 = !DILocation(line: 41, column: 19, scope: !1746)
!1748 = !DILocation(line: 41, column: 33, scope: !1746)
!1749 = !DILocation(line: 42, column: 22, scope: !1746)
!1750 = !DILocation(line: 42, column: 29, scope: !1746)
!1751 = !DILocation(line: 42, column: 27, scope: !1746)
!1752 = !DILocation(line: 42, column: 15, scope: !1746)
!1753 = !DILocation(line: 43, column: 23, scope: !1746)
!1754 = !DILocation(line: 43, column: 15, scope: !1746)
!1755 = !DILocation(line: 43, column: 21, scope: !1746)
!1756 = !DILocation(line: 44, column: 15, scope: !1746)
!1757 = !DILocation(line: 46, column: 9, scope: !1733)
!1758 = !DILocation(line: 36, column: 31, scope: !1729)
!1759 = !DILocation(line: 36, column: 7, scope: !1729)
!1760 = distinct !{!1760, !1731, !1761, !433}
!1761 = !DILocation(line: 46, column: 9, scope: !1724)
!1762 = !DILocation(line: 48, column: 7, scope: !1725)
!1763 = !DILocation(line: 50, column: 3, scope: !1712)
!1764 = !DILocation(line: 51, column: 1, scope: !1712)
!1765 = distinct !DISubprogram(name: "set_program_name", scope: !113, file: !113, line: 37, type: !550, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !37)
!1766 = !DILocalVariable(name: "argv0", arg: 1, scope: !1765, file: !113, line: 37, type: !6)
!1767 = !DILocation(line: 37, column: 31, scope: !1765)
!1768 = !DILocalVariable(name: "slash", scope: !1765, file: !113, line: 44, type: !6)
!1769 = !DILocation(line: 44, column: 15, scope: !1765)
!1770 = !DILocation(line: 44, column: 32, scope: !1765)
!1771 = !DILocation(line: 44, column: 23, scope: !1765)
!1772 = !DILocalVariable(name: "base", scope: !1765, file: !113, line: 45, type: !6)
!1773 = !DILocation(line: 45, column: 15, scope: !1765)
!1774 = !DILocation(line: 45, column: 22, scope: !1765)
!1775 = !DILocation(line: 45, column: 30, scope: !1765)
!1776 = !DILocation(line: 45, column: 36, scope: !1765)
!1777 = !DILocation(line: 45, column: 42, scope: !1765)
!1778 = !DILocation(line: 46, column: 12, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1765, file: !113, line: 46, column: 7)
!1780 = !DILocation(line: 46, column: 19, scope: !1779)
!1781 = !DILocation(line: 46, column: 17, scope: !1779)
!1782 = !DILocation(line: 46, column: 9, scope: !1779)
!1783 = !DILocation(line: 46, column: 25, scope: !1779)
!1784 = !DILocation(line: 46, column: 35, scope: !1779)
!1785 = !DILocation(line: 46, column: 40, scope: !1779)
!1786 = !DILocation(line: 46, column: 28, scope: !1779)
!1787 = !DILocation(line: 46, column: 7, scope: !1765)
!1788 = !DILocation(line: 48, column: 15, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1779, file: !113, line: 47, column: 5)
!1790 = !DILocation(line: 48, column: 13, scope: !1789)
!1791 = !DILocation(line: 49, column: 20, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1789, file: !113, line: 49, column: 11)
!1793 = !DILocation(line: 49, column: 11, scope: !1792)
!1794 = !DILocation(line: 49, column: 36, scope: !1792)
!1795 = !DILocation(line: 49, column: 11, scope: !1789)
!1796 = !DILocation(line: 51, column: 16, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1792, file: !113, line: 50, column: 9)
!1798 = !DILocation(line: 52, column: 19, scope: !1797)
!1799 = !DILocation(line: 52, column: 17, scope: !1797)
!1800 = !DILocation(line: 53, column: 9, scope: !1797)
!1801 = !DILocation(line: 54, column: 5, scope: !1789)
!1802 = !DILocation(line: 65, column: 18, scope: !1765)
!1803 = !DILocation(line: 65, column: 16, scope: !1765)
!1804 = !DILocation(line: 71, column: 38, scope: !1765)
!1805 = !DILocation(line: 71, column: 27, scope: !1765)
!1806 = !DILocation(line: 74, column: 44, scope: !1765)
!1807 = !DILocation(line: 74, column: 33, scope: !1765)
!1808 = !DILocation(line: 76, column: 1, scope: !1765)
!1809 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !118, file: !119, line: 38, type: !6)
!1810 = !DILocation(line: 38, column: 31, scope: !118)
!1811 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !118, file: !119, line: 38, type: !6)
!1812 = !DILocation(line: 38, column: 66, scope: !118)
!1813 = !DILocalVariable(name: "translation", scope: !118, file: !119, line: 40, type: !6)
!1814 = !DILocation(line: 40, column: 15, scope: !118)
!1815 = !DILocation(line: 40, column: 38, scope: !118)
!1816 = !DILocation(line: 40, column: 29, scope: !118)
!1817 = !DILocation(line: 41, column: 7, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !118, file: !119, line: 41, column: 7)
!1819 = !DILocation(line: 41, column: 22, scope: !1818)
!1820 = !DILocation(line: 41, column: 19, scope: !1818)
!1821 = !DILocation(line: 41, column: 7, scope: !118)
!1822 = !DILocation(line: 42, column: 12, scope: !1818)
!1823 = !DILocation(line: 42, column: 5, scope: !1818)
!1824 = !DILocalVariable(name: "w", scope: !118, file: !119, line: 47, type: !1825)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1826, line: 37, baseType: !1827)
!1826 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !885, line: 57, baseType: !1828)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !885, line: 42, baseType: !14)
!1829 = !DILocation(line: 47, column: 12, scope: !118)
!1830 = !DILocalVariable(name: "mbs", scope: !118, file: !119, line: 48, type: !1831)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !226, line: 6, baseType: !1832)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !228, line: 21, baseType: !1833)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !228, line: 13, size: 64, elements: !1834)
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1833, file: !228, line: 15, baseType: !33, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1833, file: !228, line: 20, baseType: !1837, size: 32, offset: 32)
!1837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1833, file: !228, line: 16, size: 32, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1837, file: !228, line: 18, baseType: !14, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1837, file: !228, line: 19, baseType: !237, size: 32)
!1841 = !DILocation(line: 48, column: 13, scope: !118)
!1842 = !DILocation(line: 48, column: 18, scope: !118)
!1843 = !DILocation(line: 49, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !118, file: !119, line: 49, column: 7)
!1845 = !DILocation(line: 49, column: 39, scope: !1844)
!1846 = !DILocation(line: 49, column: 44, scope: !1844)
!1847 = !DILocation(line: 49, column: 47, scope: !1844)
!1848 = !DILocation(line: 49, column: 49, scope: !1844)
!1849 = !DILocation(line: 49, column: 7, scope: !118)
!1850 = !DILocation(line: 50, column: 12, scope: !1844)
!1851 = !DILocation(line: 50, column: 5, scope: !1844)
!1852 = !DILocation(line: 53, column: 10, scope: !118)
!1853 = !DILocation(line: 53, column: 3, scope: !118)
!1854 = !DILocation(line: 54, column: 1, scope: !118)
!1855 = distinct !DISubprogram(name: "clone_quoting_options", scope: !130, file: !130, line: 113, type: !1856, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!1858, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1859 = !DILocalVariable(name: "o", arg: 1, scope: !1855, file: !130, line: 113, type: !1858)
!1860 = !DILocation(line: 113, column: 48, scope: !1855)
!1861 = !DILocalVariable(name: "saved_errno", scope: !1855, file: !130, line: 115, type: !33)
!1862 = !DILocation(line: 115, column: 7, scope: !1855)
!1863 = !DILocation(line: 115, column: 21, scope: !1855)
!1864 = !DILocalVariable(name: "p", scope: !1855, file: !130, line: 116, type: !1858)
!1865 = !DILocation(line: 116, column: 27, scope: !1855)
!1866 = !DILocation(line: 116, column: 40, scope: !1855)
!1867 = !DILocation(line: 116, column: 44, scope: !1855)
!1868 = !DILocation(line: 116, column: 31, scope: !1855)
!1869 = !DILocation(line: 118, column: 11, scope: !1855)
!1870 = !DILocation(line: 118, column: 3, scope: !1855)
!1871 = !DILocation(line: 118, column: 9, scope: !1855)
!1872 = !DILocation(line: 119, column: 10, scope: !1855)
!1873 = !DILocation(line: 119, column: 3, scope: !1855)
!1874 = distinct !DISubprogram(name: "get_quoting_style", scope: !130, file: !130, line: 124, type: !1875, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!132, !1877}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!1879 = !DILocalVariable(name: "o", arg: 1, scope: !1874, file: !130, line: 124, type: !1877)
!1880 = !DILocation(line: 124, column: 50, scope: !1874)
!1881 = !DILocation(line: 126, column: 11, scope: !1874)
!1882 = !DILocation(line: 126, column: 15, scope: !1874)
!1883 = !DILocation(line: 126, column: 46, scope: !1874)
!1884 = !DILocation(line: 126, column: 3, scope: !1874)
!1885 = distinct !DISubprogram(name: "set_quoting_style", scope: !130, file: !130, line: 132, type: !1886, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !1858, !132}
!1888 = !DILocalVariable(name: "o", arg: 1, scope: !1885, file: !130, line: 132, type: !1858)
!1889 = !DILocation(line: 132, column: 44, scope: !1885)
!1890 = !DILocalVariable(name: "s", arg: 2, scope: !1885, file: !130, line: 132, type: !132)
!1891 = !DILocation(line: 132, column: 66, scope: !1885)
!1892 = !DILocation(line: 134, column: 47, scope: !1885)
!1893 = !DILocation(line: 134, column: 4, scope: !1885)
!1894 = !DILocation(line: 134, column: 8, scope: !1885)
!1895 = !DILocation(line: 134, column: 39, scope: !1885)
!1896 = !DILocation(line: 134, column: 45, scope: !1885)
!1897 = !DILocation(line: 135, column: 1, scope: !1885)
!1898 = distinct !DISubprogram(name: "set_char_quoting", scope: !130, file: !130, line: 143, type: !1899, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!33, !1858, !8, !33}
!1901 = !DILocalVariable(name: "o", arg: 1, scope: !1898, file: !130, line: 143, type: !1858)
!1902 = !DILocation(line: 143, column: 43, scope: !1898)
!1903 = !DILocalVariable(name: "c", arg: 2, scope: !1898, file: !130, line: 143, type: !8)
!1904 = !DILocation(line: 143, column: 51, scope: !1898)
!1905 = !DILocalVariable(name: "i", arg: 3, scope: !1898, file: !130, line: 143, type: !33)
!1906 = !DILocation(line: 143, column: 58, scope: !1898)
!1907 = !DILocalVariable(name: "uc", scope: !1898, file: !130, line: 145, type: !223)
!1908 = !DILocation(line: 145, column: 17, scope: !1898)
!1909 = !DILocation(line: 145, column: 22, scope: !1898)
!1910 = !DILocalVariable(name: "p", scope: !1898, file: !130, line: 146, type: !1911)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1912 = !DILocation(line: 146, column: 17, scope: !1898)
!1913 = !DILocation(line: 147, column: 6, scope: !1898)
!1914 = !DILocation(line: 147, column: 10, scope: !1898)
!1915 = !DILocation(line: 147, column: 41, scope: !1898)
!1916 = !DILocation(line: 147, column: 5, scope: !1898)
!1917 = !DILocation(line: 147, column: 59, scope: !1898)
!1918 = !DILocation(line: 147, column: 62, scope: !1898)
!1919 = !DILocation(line: 147, column: 57, scope: !1898)
!1920 = !DILocalVariable(name: "shift", scope: !1898, file: !130, line: 148, type: !33)
!1921 = !DILocation(line: 148, column: 7, scope: !1898)
!1922 = !DILocation(line: 148, column: 15, scope: !1898)
!1923 = !DILocation(line: 148, column: 18, scope: !1898)
!1924 = !DILocalVariable(name: "r", scope: !1898, file: !130, line: 149, type: !14)
!1925 = !DILocation(line: 149, column: 16, scope: !1898)
!1926 = !DILocation(line: 149, column: 22, scope: !1898)
!1927 = !DILocation(line: 149, column: 21, scope: !1898)
!1928 = !DILocation(line: 149, column: 27, scope: !1898)
!1929 = !DILocation(line: 149, column: 24, scope: !1898)
!1930 = !DILocation(line: 149, column: 34, scope: !1898)
!1931 = !DILocation(line: 150, column: 11, scope: !1898)
!1932 = !DILocation(line: 150, column: 13, scope: !1898)
!1933 = !DILocation(line: 150, column: 21, scope: !1898)
!1934 = !DILocation(line: 150, column: 19, scope: !1898)
!1935 = !DILocation(line: 150, column: 27, scope: !1898)
!1936 = !DILocation(line: 150, column: 24, scope: !1898)
!1937 = !DILocation(line: 150, column: 4, scope: !1898)
!1938 = !DILocation(line: 150, column: 6, scope: !1898)
!1939 = !DILocation(line: 151, column: 10, scope: !1898)
!1940 = !DILocation(line: 151, column: 3, scope: !1898)
!1941 = distinct !DISubprogram(name: "set_quoting_flags", scope: !130, file: !130, line: 159, type: !1942, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!33, !1858, !33}
!1944 = !DILocalVariable(name: "o", arg: 1, scope: !1941, file: !130, line: 159, type: !1858)
!1945 = !DILocation(line: 159, column: 44, scope: !1941)
!1946 = !DILocalVariable(name: "i", arg: 2, scope: !1941, file: !130, line: 159, type: !33)
!1947 = !DILocation(line: 159, column: 51, scope: !1941)
!1948 = !DILocation(line: 161, column: 8, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1941, file: !130, line: 161, column: 7)
!1950 = !DILocation(line: 161, column: 7, scope: !1941)
!1951 = !DILocation(line: 162, column: 7, scope: !1949)
!1952 = !DILocation(line: 162, column: 5, scope: !1949)
!1953 = !DILocalVariable(name: "r", scope: !1941, file: !130, line: 163, type: !33)
!1954 = !DILocation(line: 163, column: 7, scope: !1941)
!1955 = !DILocation(line: 163, column: 11, scope: !1941)
!1956 = !DILocation(line: 163, column: 14, scope: !1941)
!1957 = !DILocation(line: 164, column: 14, scope: !1941)
!1958 = !DILocation(line: 164, column: 3, scope: !1941)
!1959 = !DILocation(line: 164, column: 6, scope: !1941)
!1960 = !DILocation(line: 164, column: 12, scope: !1941)
!1961 = !DILocation(line: 165, column: 10, scope: !1941)
!1962 = !DILocation(line: 165, column: 3, scope: !1941)
!1963 = distinct !DISubprogram(name: "set_custom_quoting", scope: !130, file: !130, line: 169, type: !1964, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !1858, !6, !6}
!1966 = !DILocalVariable(name: "o", arg: 1, scope: !1963, file: !130, line: 169, type: !1858)
!1967 = !DILocation(line: 169, column: 45, scope: !1963)
!1968 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1963, file: !130, line: 170, type: !6)
!1969 = !DILocation(line: 170, column: 33, scope: !1963)
!1970 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1963, file: !130, line: 170, type: !6)
!1971 = !DILocation(line: 170, column: 57, scope: !1963)
!1972 = !DILocation(line: 172, column: 8, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1963, file: !130, line: 172, column: 7)
!1974 = !DILocation(line: 172, column: 7, scope: !1963)
!1975 = !DILocation(line: 173, column: 7, scope: !1973)
!1976 = !DILocation(line: 173, column: 5, scope: !1973)
!1977 = !DILocation(line: 174, column: 3, scope: !1963)
!1978 = !DILocation(line: 174, column: 6, scope: !1963)
!1979 = !DILocation(line: 174, column: 12, scope: !1963)
!1980 = !DILocation(line: 175, column: 8, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1963, file: !130, line: 175, column: 7)
!1982 = !DILocation(line: 175, column: 19, scope: !1981)
!1983 = !DILocation(line: 175, column: 23, scope: !1981)
!1984 = !DILocation(line: 175, column: 7, scope: !1963)
!1985 = !DILocation(line: 176, column: 5, scope: !1981)
!1986 = !DILocation(line: 177, column: 19, scope: !1963)
!1987 = !DILocation(line: 177, column: 3, scope: !1963)
!1988 = !DILocation(line: 177, column: 6, scope: !1963)
!1989 = !DILocation(line: 177, column: 17, scope: !1963)
!1990 = !DILocation(line: 178, column: 20, scope: !1963)
!1991 = !DILocation(line: 178, column: 3, scope: !1963)
!1992 = !DILocation(line: 178, column: 6, scope: !1963)
!1993 = !DILocation(line: 178, column: 18, scope: !1963)
!1994 = !DILocation(line: 179, column: 1, scope: !1963)
!1995 = distinct !DISubprogram(name: "quotearg_buffer", scope: !130, file: !130, line: 774, type: !1996, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!152, !35, !152, !6, !152, !1877}
!1998 = !DILocalVariable(name: "buffer", arg: 1, scope: !1995, file: !130, line: 774, type: !35)
!1999 = !DILocation(line: 774, column: 24, scope: !1995)
!2000 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1995, file: !130, line: 774, type: !152)
!2001 = !DILocation(line: 774, column: 39, scope: !1995)
!2002 = !DILocalVariable(name: "arg", arg: 3, scope: !1995, file: !130, line: 775, type: !6)
!2003 = !DILocation(line: 775, column: 30, scope: !1995)
!2004 = !DILocalVariable(name: "argsize", arg: 4, scope: !1995, file: !130, line: 775, type: !152)
!2005 = !DILocation(line: 775, column: 42, scope: !1995)
!2006 = !DILocalVariable(name: "o", arg: 5, scope: !1995, file: !130, line: 776, type: !1877)
!2007 = !DILocation(line: 776, column: 48, scope: !1995)
!2008 = !DILocalVariable(name: "p", scope: !1995, file: !130, line: 778, type: !1877)
!2009 = !DILocation(line: 778, column: 33, scope: !1995)
!2010 = !DILocation(line: 778, column: 37, scope: !1995)
!2011 = !DILocation(line: 778, column: 41, scope: !1995)
!2012 = !DILocalVariable(name: "saved_errno", scope: !1995, file: !130, line: 779, type: !33)
!2013 = !DILocation(line: 779, column: 7, scope: !1995)
!2014 = !DILocation(line: 779, column: 21, scope: !1995)
!2015 = !DILocalVariable(name: "r", scope: !1995, file: !130, line: 780, type: !152)
!2016 = !DILocation(line: 780, column: 10, scope: !1995)
!2017 = !DILocation(line: 780, column: 40, scope: !1995)
!2018 = !DILocation(line: 780, column: 48, scope: !1995)
!2019 = !DILocation(line: 780, column: 60, scope: !1995)
!2020 = !DILocation(line: 780, column: 65, scope: !1995)
!2021 = !DILocation(line: 781, column: 40, scope: !1995)
!2022 = !DILocation(line: 781, column: 43, scope: !1995)
!2023 = !DILocation(line: 781, column: 50, scope: !1995)
!2024 = !DILocation(line: 781, column: 53, scope: !1995)
!2025 = !DILocation(line: 781, column: 60, scope: !1995)
!2026 = !DILocation(line: 781, column: 63, scope: !1995)
!2027 = !DILocation(line: 782, column: 40, scope: !1995)
!2028 = !DILocation(line: 782, column: 43, scope: !1995)
!2029 = !DILocation(line: 782, column: 55, scope: !1995)
!2030 = !DILocation(line: 782, column: 58, scope: !1995)
!2031 = !DILocation(line: 780, column: 14, scope: !1995)
!2032 = !DILocation(line: 783, column: 11, scope: !1995)
!2033 = !DILocation(line: 783, column: 3, scope: !1995)
!2034 = !DILocation(line: 783, column: 9, scope: !1995)
!2035 = !DILocation(line: 784, column: 10, scope: !1995)
!2036 = !DILocation(line: 784, column: 3, scope: !1995)
!2037 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !130, file: !130, line: 251, type: !2038, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !37)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!152, !35, !152, !6, !152, !132, !33, !2040, !6, !6}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!2042 = !DILocalVariable(name: "buffer", arg: 1, scope: !2037, file: !130, line: 251, type: !35)
!2043 = !DILocation(line: 251, column: 33, scope: !2037)
!2044 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2037, file: !130, line: 251, type: !152)
!2045 = !DILocation(line: 251, column: 48, scope: !2037)
!2046 = !DILocalVariable(name: "arg", arg: 3, scope: !2037, file: !130, line: 252, type: !6)
!2047 = !DILocation(line: 252, column: 39, scope: !2037)
!2048 = !DILocalVariable(name: "argsize", arg: 4, scope: !2037, file: !130, line: 252, type: !152)
!2049 = !DILocation(line: 252, column: 51, scope: !2037)
!2050 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2037, file: !130, line: 253, type: !132)
!2051 = !DILocation(line: 253, column: 46, scope: !2037)
!2052 = !DILocalVariable(name: "flags", arg: 6, scope: !2037, file: !130, line: 253, type: !33)
!2053 = !DILocation(line: 253, column: 65, scope: !2037)
!2054 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2037, file: !130, line: 254, type: !2040)
!2055 = !DILocation(line: 254, column: 47, scope: !2037)
!2056 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2037, file: !130, line: 255, type: !6)
!2057 = !DILocation(line: 255, column: 39, scope: !2037)
!2058 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2037, file: !130, line: 256, type: !6)
!2059 = !DILocation(line: 256, column: 39, scope: !2037)
!2060 = !DILocalVariable(name: "unibyte_locale", scope: !2037, file: !130, line: 258, type: !50)
!2061 = !DILocation(line: 258, column: 8, scope: !2037)
!2062 = !DILocation(line: 258, column: 25, scope: !2037)
!2063 = !DILocation(line: 258, column: 36, scope: !2037)
!2064 = !DILocalVariable(name: "len", scope: !2037, file: !130, line: 260, type: !152)
!2065 = !DILocation(line: 260, column: 10, scope: !2037)
!2066 = !DILocalVariable(name: "orig_buffersize", scope: !2037, file: !130, line: 261, type: !152)
!2067 = !DILocation(line: 261, column: 10, scope: !2037)
!2068 = !DILocalVariable(name: "quote_string", scope: !2037, file: !130, line: 262, type: !6)
!2069 = !DILocation(line: 262, column: 15, scope: !2037)
!2070 = !DILocalVariable(name: "quote_string_len", scope: !2037, file: !130, line: 263, type: !152)
!2071 = !DILocation(line: 263, column: 10, scope: !2037)
!2072 = !DILocalVariable(name: "backslash_escapes", scope: !2037, file: !130, line: 264, type: !50)
!2073 = !DILocation(line: 264, column: 8, scope: !2037)
!2074 = !DILocalVariable(name: "elide_outer_quotes", scope: !2037, file: !130, line: 265, type: !50)
!2075 = !DILocation(line: 265, column: 8, scope: !2037)
!2076 = !DILocation(line: 265, column: 30, scope: !2037)
!2077 = !DILocation(line: 265, column: 36, scope: !2037)
!2078 = !DILocation(line: 265, column: 61, scope: !2037)
!2079 = !DILocalVariable(name: "encountered_single_quote", scope: !2037, file: !130, line: 266, type: !50)
!2080 = !DILocation(line: 266, column: 8, scope: !2037)
!2081 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2037, file: !130, line: 267, type: !50)
!2082 = !DILocation(line: 267, column: 8, scope: !2037)
!2083 = !DILocation(line: 267, column: 3, scope: !2037)
!2084 = !DILabel(scope: !2037, name: "process_input", file: !130, line: 308)
!2085 = !DILocation(line: 308, column: 2, scope: !2037)
!2086 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2037, file: !130, line: 309, type: !50)
!2087 = !DILocation(line: 309, column: 8, scope: !2037)
!2088 = !DILocation(line: 311, column: 11, scope: !2037)
!2089 = !DILocation(line: 311, column: 3, scope: !2037)
!2090 = !DILocation(line: 314, column: 21, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2037, file: !130, line: 312, column: 5)
!2092 = !DILocation(line: 315, column: 26, scope: !2091)
!2093 = !DILocation(line: 315, column: 7, scope: !2091)
!2094 = !DILocation(line: 318, column: 12, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2091, file: !130, line: 318, column: 11)
!2096 = !DILocation(line: 318, column: 11, scope: !2091)
!2097 = !DILocation(line: 319, column: 9, scope: !2095)
!2098 = !DILocation(line: 319, column: 9, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !130, line: 319, column: 9)
!2100 = distinct !DILexicalBlock(scope: !2095, file: !130, line: 319, column: 9)
!2101 = !DILocation(line: 319, column: 9, scope: !2100)
!2102 = !DILocation(line: 320, column: 25, scope: !2091)
!2103 = !DILocation(line: 321, column: 20, scope: !2091)
!2104 = !DILocation(line: 322, column: 24, scope: !2091)
!2105 = !DILocation(line: 323, column: 7, scope: !2091)
!2106 = !DILocation(line: 326, column: 25, scope: !2091)
!2107 = !DILocation(line: 327, column: 26, scope: !2091)
!2108 = !DILocation(line: 328, column: 7, scope: !2091)
!2109 = !DILocation(line: 334, column: 13, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !130, line: 334, column: 13)
!2111 = distinct !DILexicalBlock(scope: !2091, file: !130, line: 333, column: 7)
!2112 = !DILocation(line: 334, column: 27, scope: !2110)
!2113 = !DILocation(line: 334, column: 13, scope: !2111)
!2114 = !DILocation(line: 357, column: 50, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2110, file: !130, line: 335, column: 11)
!2116 = !DILocation(line: 357, column: 26, scope: !2115)
!2117 = !DILocation(line: 357, column: 24, scope: !2115)
!2118 = !DILocation(line: 358, column: 51, scope: !2115)
!2119 = !DILocation(line: 358, column: 27, scope: !2115)
!2120 = !DILocation(line: 358, column: 25, scope: !2115)
!2121 = !DILocation(line: 359, column: 11, scope: !2115)
!2122 = !DILocation(line: 360, column: 14, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2111, file: !130, line: 360, column: 13)
!2124 = !DILocation(line: 360, column: 13, scope: !2111)
!2125 = !DILocalVariable(name: "lq", scope: !2126, file: !130, line: 361, type: !6)
!2126 = distinct !DILexicalBlock(scope: !2123, file: !130, line: 361, column: 11)
!2127 = !DILocation(line: 361, column: 28, scope: !2126)
!2128 = !DILocation(line: 361, column: 33, scope: !2126)
!2129 = !DILocation(line: 361, column: 16, scope: !2126)
!2130 = !DILocation(line: 361, column: 46, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2126, file: !130, line: 361, column: 11)
!2132 = !DILocation(line: 361, column: 45, scope: !2131)
!2133 = !DILocation(line: 361, column: 11, scope: !2126)
!2134 = !DILocation(line: 362, column: 13, scope: !2131)
!2135 = !DILocation(line: 362, column: 13, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !130, line: 362, column: 13)
!2137 = distinct !DILexicalBlock(scope: !2131, file: !130, line: 362, column: 13)
!2138 = !DILocation(line: 362, column: 13, scope: !2137)
!2139 = !DILocation(line: 361, column: 52, scope: !2131)
!2140 = !DILocation(line: 361, column: 11, scope: !2131)
!2141 = distinct !{!2141, !2133, !2142, !433}
!2142 = !DILocation(line: 362, column: 13, scope: !2126)
!2143 = !DILocation(line: 363, column: 27, scope: !2111)
!2144 = !DILocation(line: 364, column: 24, scope: !2111)
!2145 = !DILocation(line: 364, column: 22, scope: !2111)
!2146 = !DILocation(line: 365, column: 36, scope: !2111)
!2147 = !DILocation(line: 365, column: 28, scope: !2111)
!2148 = !DILocation(line: 365, column: 26, scope: !2111)
!2149 = !DILocation(line: 367, column: 7, scope: !2091)
!2150 = !DILocation(line: 370, column: 25, scope: !2091)
!2151 = !DILocation(line: 370, column: 7, scope: !2091)
!2152 = !DILocation(line: 373, column: 26, scope: !2091)
!2153 = !DILocation(line: 373, column: 7, scope: !2091)
!2154 = !DILocation(line: 376, column: 12, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2091, file: !130, line: 376, column: 11)
!2156 = !DILocation(line: 376, column: 11, scope: !2091)
!2157 = !DILocation(line: 377, column: 27, scope: !2155)
!2158 = !DILocation(line: 377, column: 9, scope: !2155)
!2159 = !DILocation(line: 380, column: 21, scope: !2091)
!2160 = !DILocation(line: 381, column: 12, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2091, file: !130, line: 381, column: 11)
!2162 = !DILocation(line: 381, column: 11, scope: !2091)
!2163 = !DILocation(line: 382, column: 9, scope: !2161)
!2164 = !DILocation(line: 382, column: 9, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !130, line: 382, column: 9)
!2166 = distinct !DILexicalBlock(scope: !2161, file: !130, line: 382, column: 9)
!2167 = !DILocation(line: 382, column: 9, scope: !2166)
!2168 = !DILocation(line: 383, column: 20, scope: !2091)
!2169 = !DILocation(line: 384, column: 24, scope: !2091)
!2170 = !DILocation(line: 385, column: 7, scope: !2091)
!2171 = !DILocation(line: 388, column: 26, scope: !2091)
!2172 = !DILocation(line: 389, column: 7, scope: !2091)
!2173 = !DILocation(line: 392, column: 7, scope: !2091)
!2174 = !DILocalVariable(name: "i", scope: !2175, file: !130, line: 395, type: !152)
!2175 = distinct !DILexicalBlock(scope: !2037, file: !130, line: 395, column: 3)
!2176 = !DILocation(line: 395, column: 15, scope: !2175)
!2177 = !DILocation(line: 395, column: 8, scope: !2175)
!2178 = !DILocation(line: 395, column: 26, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !130, line: 395, column: 3)
!2180 = !DILocation(line: 395, column: 34, scope: !2179)
!2181 = !DILocation(line: 395, column: 48, scope: !2179)
!2182 = !DILocation(line: 395, column: 52, scope: !2179)
!2183 = !DILocation(line: 395, column: 55, scope: !2179)
!2184 = !DILocation(line: 395, column: 65, scope: !2179)
!2185 = !DILocation(line: 395, column: 70, scope: !2179)
!2186 = !DILocation(line: 395, column: 67, scope: !2179)
!2187 = !DILocation(line: 395, column: 23, scope: !2179)
!2188 = !DILocation(line: 395, column: 3, scope: !2175)
!2189 = !DILocalVariable(name: "is_right_quote", scope: !2190, file: !130, line: 397, type: !50)
!2190 = distinct !DILexicalBlock(scope: !2179, file: !130, line: 396, column: 5)
!2191 = !DILocation(line: 397, column: 12, scope: !2190)
!2192 = !DILocalVariable(name: "escaping", scope: !2190, file: !130, line: 398, type: !50)
!2193 = !DILocation(line: 398, column: 12, scope: !2190)
!2194 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2190, file: !130, line: 399, type: !50)
!2195 = !DILocation(line: 399, column: 12, scope: !2190)
!2196 = !DILocation(line: 401, column: 11, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2190, file: !130, line: 401, column: 11)
!2198 = !DILocation(line: 402, column: 11, scope: !2197)
!2199 = !DILocation(line: 402, column: 14, scope: !2197)
!2200 = !DILocation(line: 402, column: 28, scope: !2197)
!2201 = !DILocation(line: 403, column: 11, scope: !2197)
!2202 = !DILocation(line: 403, column: 14, scope: !2197)
!2203 = !DILocation(line: 404, column: 11, scope: !2197)
!2204 = !DILocation(line: 404, column: 15, scope: !2197)
!2205 = !DILocation(line: 404, column: 19, scope: !2197)
!2206 = !DILocation(line: 404, column: 17, scope: !2197)
!2207 = !DILocation(line: 405, column: 19, scope: !2197)
!2208 = !DILocation(line: 405, column: 27, scope: !2197)
!2209 = !DILocation(line: 405, column: 39, scope: !2197)
!2210 = !DILocation(line: 405, column: 46, scope: !2197)
!2211 = !DILocation(line: 405, column: 44, scope: !2197)
!2212 = !DILocation(line: 409, column: 40, scope: !2197)
!2213 = !DILocation(line: 409, column: 32, scope: !2197)
!2214 = !DILocation(line: 409, column: 30, scope: !2197)
!2215 = !DILocation(line: 409, column: 48, scope: !2197)
!2216 = !DILocation(line: 405, column: 15, scope: !2197)
!2217 = !DILocation(line: 410, column: 11, scope: !2197)
!2218 = !DILocation(line: 410, column: 21, scope: !2197)
!2219 = !DILocation(line: 410, column: 27, scope: !2197)
!2220 = !DILocation(line: 410, column: 25, scope: !2197)
!2221 = !DILocation(line: 410, column: 30, scope: !2197)
!2222 = !DILocation(line: 410, column: 44, scope: !2197)
!2223 = !DILocation(line: 410, column: 14, scope: !2197)
!2224 = !DILocation(line: 401, column: 11, scope: !2190)
!2225 = !DILocation(line: 412, column: 15, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !130, line: 412, column: 15)
!2227 = distinct !DILexicalBlock(scope: !2197, file: !130, line: 411, column: 9)
!2228 = !DILocation(line: 412, column: 15, scope: !2227)
!2229 = !DILocation(line: 413, column: 13, scope: !2226)
!2230 = !DILocation(line: 414, column: 26, scope: !2227)
!2231 = !DILocation(line: 415, column: 9, scope: !2227)
!2232 = !DILocalVariable(name: "c", scope: !2190, file: !130, line: 417, type: !223)
!2233 = !DILocation(line: 417, column: 21, scope: !2190)
!2234 = !DILocation(line: 417, column: 25, scope: !2190)
!2235 = !DILocation(line: 417, column: 29, scope: !2190)
!2236 = !DILocation(line: 418, column: 15, scope: !2190)
!2237 = !DILocation(line: 418, column: 7, scope: !2190)
!2238 = !DILocation(line: 421, column: 15, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !130, line: 421, column: 15)
!2240 = distinct !DILexicalBlock(scope: !2190, file: !130, line: 419, column: 9)
!2241 = !DILocation(line: 421, column: 15, scope: !2240)
!2242 = !DILocation(line: 423, column: 15, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !130, line: 422, column: 13)
!2244 = !DILocation(line: 423, column: 15, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !130, line: 423, column: 15)
!2246 = distinct !DILexicalBlock(scope: !2243, file: !130, line: 423, column: 15)
!2247 = !DILocation(line: 423, column: 15, scope: !2246)
!2248 = !DILocation(line: 423, column: 15, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2246, file: !130, line: 423, column: 15)
!2250 = !DILocation(line: 423, column: 15, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2249, file: !130, line: 423, column: 15)
!2252 = !DILocation(line: 423, column: 15, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !130, line: 423, column: 15)
!2254 = distinct !DILexicalBlock(scope: !2251, file: !130, line: 423, column: 15)
!2255 = !DILocation(line: 423, column: 15, scope: !2254)
!2256 = !DILocation(line: 423, column: 15, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !130, line: 423, column: 15)
!2258 = distinct !DILexicalBlock(scope: !2251, file: !130, line: 423, column: 15)
!2259 = !DILocation(line: 423, column: 15, scope: !2258)
!2260 = !DILocation(line: 423, column: 15, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !130, line: 423, column: 15)
!2262 = distinct !DILexicalBlock(scope: !2251, file: !130, line: 423, column: 15)
!2263 = !DILocation(line: 423, column: 15, scope: !2262)
!2264 = !DILocation(line: 423, column: 15, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !130, line: 423, column: 15)
!2266 = distinct !DILexicalBlock(scope: !2246, file: !130, line: 423, column: 15)
!2267 = !DILocation(line: 423, column: 15, scope: !2266)
!2268 = !DILocation(line: 430, column: 19, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2243, file: !130, line: 430, column: 19)
!2270 = !DILocation(line: 430, column: 33, scope: !2269)
!2271 = !DILocation(line: 431, column: 19, scope: !2269)
!2272 = !DILocation(line: 431, column: 22, scope: !2269)
!2273 = !DILocation(line: 431, column: 24, scope: !2269)
!2274 = !DILocation(line: 431, column: 30, scope: !2269)
!2275 = !DILocation(line: 431, column: 28, scope: !2269)
!2276 = !DILocation(line: 431, column: 38, scope: !2269)
!2277 = !DILocation(line: 431, column: 48, scope: !2269)
!2278 = !DILocation(line: 431, column: 52, scope: !2269)
!2279 = !DILocation(line: 431, column: 54, scope: !2269)
!2280 = !DILocation(line: 431, column: 45, scope: !2269)
!2281 = !DILocation(line: 431, column: 59, scope: !2269)
!2282 = !DILocation(line: 431, column: 62, scope: !2269)
!2283 = !DILocation(line: 431, column: 66, scope: !2269)
!2284 = !DILocation(line: 431, column: 68, scope: !2269)
!2285 = !DILocation(line: 431, column: 73, scope: !2269)
!2286 = !DILocation(line: 430, column: 19, scope: !2243)
!2287 = !DILocation(line: 433, column: 19, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2269, file: !130, line: 432, column: 17)
!2289 = !DILocation(line: 433, column: 19, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !130, line: 433, column: 19)
!2291 = distinct !DILexicalBlock(scope: !2288, file: !130, line: 433, column: 19)
!2292 = !DILocation(line: 433, column: 19, scope: !2291)
!2293 = !DILocation(line: 434, column: 19, scope: !2288)
!2294 = !DILocation(line: 434, column: 19, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !130, line: 434, column: 19)
!2296 = distinct !DILexicalBlock(scope: !2288, file: !130, line: 434, column: 19)
!2297 = !DILocation(line: 434, column: 19, scope: !2296)
!2298 = !DILocation(line: 435, column: 17, scope: !2288)
!2299 = !DILocation(line: 436, column: 17, scope: !2243)
!2300 = !DILocation(line: 441, column: 13, scope: !2243)
!2301 = !DILocation(line: 442, column: 20, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2239, file: !130, line: 442, column: 20)
!2303 = !DILocation(line: 442, column: 26, scope: !2302)
!2304 = !DILocation(line: 442, column: 20, scope: !2239)
!2305 = !DILocation(line: 443, column: 13, scope: !2302)
!2306 = !DILocation(line: 444, column: 11, scope: !2240)
!2307 = !DILocation(line: 447, column: 20, scope: !2240)
!2308 = !DILocation(line: 447, column: 11, scope: !2240)
!2309 = !DILocation(line: 450, column: 19, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !130, line: 450, column: 19)
!2311 = distinct !DILexicalBlock(scope: !2240, file: !130, line: 448, column: 13)
!2312 = !DILocation(line: 450, column: 19, scope: !2311)
!2313 = !DILocation(line: 451, column: 17, scope: !2310)
!2314 = !DILocation(line: 452, column: 15, scope: !2311)
!2315 = !DILocation(line: 455, column: 20, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2311, file: !130, line: 455, column: 19)
!2317 = !DILocation(line: 455, column: 26, scope: !2316)
!2318 = !DILocation(line: 456, column: 19, scope: !2316)
!2319 = !DILocation(line: 456, column: 22, scope: !2316)
!2320 = !DILocation(line: 456, column: 24, scope: !2316)
!2321 = !DILocation(line: 456, column: 30, scope: !2316)
!2322 = !DILocation(line: 456, column: 28, scope: !2316)
!2323 = !DILocation(line: 456, column: 38, scope: !2316)
!2324 = !DILocation(line: 456, column: 41, scope: !2316)
!2325 = !DILocation(line: 456, column: 45, scope: !2316)
!2326 = !DILocation(line: 456, column: 47, scope: !2316)
!2327 = !DILocation(line: 456, column: 52, scope: !2316)
!2328 = !DILocation(line: 455, column: 19, scope: !2311)
!2329 = !DILocation(line: 457, column: 25, scope: !2316)
!2330 = !DILocation(line: 457, column: 29, scope: !2316)
!2331 = !DILocation(line: 457, column: 31, scope: !2316)
!2332 = !DILocation(line: 457, column: 17, scope: !2316)
!2333 = !DILocation(line: 464, column: 25, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !130, line: 464, column: 25)
!2335 = distinct !DILexicalBlock(scope: !2316, file: !130, line: 458, column: 19)
!2336 = !DILocation(line: 464, column: 25, scope: !2335)
!2337 = !DILocation(line: 465, column: 23, scope: !2334)
!2338 = !DILocation(line: 466, column: 25, scope: !2335)
!2339 = !DILocation(line: 466, column: 29, scope: !2335)
!2340 = !DILocation(line: 466, column: 31, scope: !2335)
!2341 = !DILocation(line: 466, column: 23, scope: !2335)
!2342 = !DILocation(line: 467, column: 23, scope: !2335)
!2343 = !DILocation(line: 468, column: 21, scope: !2335)
!2344 = !DILocation(line: 468, column: 21, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !130, line: 468, column: 21)
!2346 = distinct !DILexicalBlock(scope: !2335, file: !130, line: 468, column: 21)
!2347 = !DILocation(line: 468, column: 21, scope: !2346)
!2348 = !DILocation(line: 469, column: 21, scope: !2335)
!2349 = !DILocation(line: 469, column: 21, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !130, line: 469, column: 21)
!2351 = distinct !DILexicalBlock(scope: !2335, file: !130, line: 469, column: 21)
!2352 = !DILocation(line: 469, column: 21, scope: !2351)
!2353 = !DILocation(line: 470, column: 21, scope: !2335)
!2354 = !DILocation(line: 470, column: 21, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !130, line: 470, column: 21)
!2356 = distinct !DILexicalBlock(scope: !2335, file: !130, line: 470, column: 21)
!2357 = !DILocation(line: 470, column: 21, scope: !2356)
!2358 = !DILocation(line: 471, column: 21, scope: !2335)
!2359 = !DILocation(line: 471, column: 21, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !130, line: 471, column: 21)
!2361 = distinct !DILexicalBlock(scope: !2335, file: !130, line: 471, column: 21)
!2362 = !DILocation(line: 471, column: 21, scope: !2361)
!2363 = !DILocation(line: 472, column: 21, scope: !2335)
!2364 = !DILocation(line: 473, column: 19, scope: !2335)
!2365 = !DILocation(line: 474, column: 15, scope: !2311)
!2366 = !DILocation(line: 476, column: 11, scope: !2240)
!2367 = !DILocation(line: 481, column: 26, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2240, file: !130, line: 478, column: 9)
!2369 = !DILocation(line: 481, column: 33, scope: !2368)
!2370 = !DILocation(line: 482, column: 26, scope: !2368)
!2371 = !DILocation(line: 482, column: 33, scope: !2368)
!2372 = !DILocation(line: 483, column: 26, scope: !2368)
!2373 = !DILocation(line: 483, column: 33, scope: !2368)
!2374 = !DILocation(line: 484, column: 26, scope: !2368)
!2375 = !DILocation(line: 484, column: 33, scope: !2368)
!2376 = !DILocation(line: 485, column: 26, scope: !2368)
!2377 = !DILocation(line: 485, column: 33, scope: !2368)
!2378 = !DILocation(line: 486, column: 26, scope: !2368)
!2379 = !DILocation(line: 486, column: 33, scope: !2368)
!2380 = !DILocation(line: 487, column: 26, scope: !2368)
!2381 = !DILocation(line: 487, column: 33, scope: !2368)
!2382 = !DILocation(line: 488, column: 28, scope: !2368)
!2383 = !DILocation(line: 488, column: 26, scope: !2368)
!2384 = !DILocation(line: 490, column: 17, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2368, file: !130, line: 490, column: 17)
!2386 = !DILocation(line: 490, column: 31, scope: !2385)
!2387 = !DILocation(line: 490, column: 17, scope: !2368)
!2388 = !DILocation(line: 492, column: 21, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !130, line: 492, column: 21)
!2390 = distinct !DILexicalBlock(scope: !2385, file: !130, line: 491, column: 15)
!2391 = !DILocation(line: 492, column: 21, scope: !2390)
!2392 = !DILocation(line: 493, column: 19, scope: !2389)
!2393 = !DILocation(line: 494, column: 17, scope: !2390)
!2394 = !DILocation(line: 499, column: 17, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2368, file: !130, line: 499, column: 17)
!2396 = !DILocation(line: 499, column: 35, scope: !2395)
!2397 = !DILocation(line: 499, column: 38, scope: !2395)
!2398 = !DILocation(line: 499, column: 57, scope: !2395)
!2399 = !DILocation(line: 499, column: 60, scope: !2395)
!2400 = !DILocation(line: 499, column: 17, scope: !2368)
!2401 = !DILocation(line: 500, column: 15, scope: !2395)
!2402 = !DILabel(scope: !2368, name: "c_and_shell_escape", file: !130, line: 502)
!2403 = !DILocation(line: 502, column: 11, scope: !2368)
!2404 = !DILocation(line: 503, column: 17, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2368, file: !130, line: 503, column: 17)
!2406 = !DILocation(line: 503, column: 31, scope: !2405)
!2407 = !DILocation(line: 504, column: 17, scope: !2405)
!2408 = !DILocation(line: 504, column: 20, scope: !2405)
!2409 = !DILocation(line: 503, column: 17, scope: !2368)
!2410 = !DILocation(line: 505, column: 15, scope: !2405)
!2411 = !DILabel(scope: !2368, name: "c_escape", file: !130, line: 507)
!2412 = !DILocation(line: 507, column: 11, scope: !2368)
!2413 = !DILocation(line: 508, column: 17, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2368, file: !130, line: 508, column: 17)
!2415 = !DILocation(line: 508, column: 17, scope: !2368)
!2416 = !DILocation(line: 510, column: 21, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2414, file: !130, line: 509, column: 15)
!2418 = !DILocation(line: 510, column: 19, scope: !2417)
!2419 = !DILocation(line: 511, column: 17, scope: !2417)
!2420 = !DILocation(line: 513, column: 13, scope: !2368)
!2421 = !DILocation(line: 517, column: 18, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2240, file: !130, line: 517, column: 15)
!2423 = !DILocation(line: 517, column: 26, scope: !2422)
!2424 = !DILocation(line: 517, column: 15, scope: !2240)
!2425 = !DILocation(line: 517, column: 40, scope: !2422)
!2426 = !DILocation(line: 517, column: 47, scope: !2422)
!2427 = !DILocation(line: 517, column: 57, scope: !2422)
!2428 = !DILocation(line: 517, column: 65, scope: !2422)
!2429 = !DILocation(line: 518, column: 13, scope: !2422)
!2430 = !DILocation(line: 517, column: 69, scope: !2422)
!2431 = !DILocation(line: 521, column: 15, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2240, file: !130, line: 521, column: 15)
!2433 = !DILocation(line: 521, column: 17, scope: !2432)
!2434 = !DILocation(line: 521, column: 15, scope: !2240)
!2435 = !DILocation(line: 522, column: 13, scope: !2432)
!2436 = !DILocation(line: 521, column: 20, scope: !2432)
!2437 = !DILocation(line: 525, column: 36, scope: !2240)
!2438 = !DILocation(line: 525, column: 11, scope: !2240)
!2439 = !DILocation(line: 536, column: 15, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2240, file: !130, line: 536, column: 15)
!2441 = !DILocation(line: 536, column: 29, scope: !2440)
!2442 = !DILocation(line: 537, column: 15, scope: !2440)
!2443 = !DILocation(line: 537, column: 18, scope: !2440)
!2444 = !DILocation(line: 536, column: 15, scope: !2240)
!2445 = !DILocation(line: 538, column: 13, scope: !2440)
!2446 = !DILocation(line: 539, column: 11, scope: !2240)
!2447 = !DILocation(line: 542, column: 36, scope: !2240)
!2448 = !DILocation(line: 543, column: 36, scope: !2240)
!2449 = !DILocation(line: 544, column: 15, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2240, file: !130, line: 544, column: 15)
!2451 = !DILocation(line: 544, column: 29, scope: !2450)
!2452 = !DILocation(line: 544, column: 15, scope: !2240)
!2453 = !DILocation(line: 546, column: 19, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !130, line: 546, column: 19)
!2455 = distinct !DILexicalBlock(scope: !2450, file: !130, line: 545, column: 13)
!2456 = !DILocation(line: 546, column: 19, scope: !2455)
!2457 = !DILocation(line: 547, column: 17, scope: !2454)
!2458 = !DILocation(line: 549, column: 19, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !130, line: 549, column: 19)
!2460 = !DILocation(line: 549, column: 30, scope: !2459)
!2461 = !DILocation(line: 549, column: 35, scope: !2459)
!2462 = !DILocation(line: 549, column: 19, scope: !2455)
!2463 = !DILocation(line: 554, column: 37, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2459, file: !130, line: 550, column: 17)
!2465 = !DILocation(line: 554, column: 35, scope: !2464)
!2466 = !DILocation(line: 555, column: 30, scope: !2464)
!2467 = !DILocation(line: 556, column: 17, scope: !2464)
!2468 = !DILocation(line: 558, column: 15, scope: !2455)
!2469 = !DILocation(line: 558, column: 15, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !130, line: 558, column: 15)
!2471 = distinct !DILexicalBlock(scope: !2455, file: !130, line: 558, column: 15)
!2472 = !DILocation(line: 558, column: 15, scope: !2471)
!2473 = !DILocation(line: 559, column: 15, scope: !2455)
!2474 = !DILocation(line: 559, column: 15, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !130, line: 559, column: 15)
!2476 = distinct !DILexicalBlock(scope: !2455, file: !130, line: 559, column: 15)
!2477 = !DILocation(line: 559, column: 15, scope: !2476)
!2478 = !DILocation(line: 560, column: 15, scope: !2455)
!2479 = !DILocation(line: 560, column: 15, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !130, line: 560, column: 15)
!2481 = distinct !DILexicalBlock(scope: !2455, file: !130, line: 560, column: 15)
!2482 = !DILocation(line: 560, column: 15, scope: !2481)
!2483 = !DILocation(line: 561, column: 40, scope: !2455)
!2484 = !DILocation(line: 562, column: 13, scope: !2455)
!2485 = !DILocation(line: 563, column: 11, scope: !2240)
!2486 = !DILocation(line: 587, column: 36, scope: !2240)
!2487 = !DILocation(line: 588, column: 11, scope: !2240)
!2488 = !DILocalVariable(name: "m", scope: !2489, file: !130, line: 598, type: !152)
!2489 = distinct !DILexicalBlock(scope: !2240, file: !130, line: 596, column: 11)
!2490 = !DILocation(line: 598, column: 20, scope: !2489)
!2491 = !DILocalVariable(name: "printable", scope: !2489, file: !130, line: 600, type: !50)
!2492 = !DILocation(line: 600, column: 18, scope: !2489)
!2493 = !DILocation(line: 602, column: 17, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2489, file: !130, line: 602, column: 17)
!2495 = !DILocation(line: 602, column: 17, scope: !2489)
!2496 = !DILocation(line: 604, column: 19, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2494, file: !130, line: 603, column: 15)
!2498 = !DILocation(line: 605, column: 29, scope: !2497)
!2499 = !DILocation(line: 605, column: 41, scope: !2497)
!2500 = !DILocation(line: 605, column: 27, scope: !2497)
!2501 = !DILocation(line: 606, column: 15, scope: !2497)
!2502 = !DILocalVariable(name: "mbs", scope: !2503, file: !130, line: 609, type: !2504)
!2503 = distinct !DILexicalBlock(scope: !2494, file: !130, line: 608, column: 15)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !226, line: 6, baseType: !2505)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !228, line: 21, baseType: !2506)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !228, line: 13, size: 64, elements: !2507)
!2507 = !{!2508, !2509}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2506, file: !228, line: 15, baseType: !33, size: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2506, file: !228, line: 20, baseType: !2510, size: 32, offset: 32)
!2510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2506, file: !228, line: 16, size: 32, elements: !2511)
!2511 = !{!2512, !2513}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2510, file: !228, line: 18, baseType: !14, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2510, file: !228, line: 19, baseType: !237, size: 32)
!2514 = !DILocation(line: 609, column: 27, scope: !2503)
!2515 = !DILocation(line: 609, column: 32, scope: !2503)
!2516 = !DILocation(line: 611, column: 19, scope: !2503)
!2517 = !DILocation(line: 612, column: 27, scope: !2503)
!2518 = !DILocation(line: 613, column: 21, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2503, file: !130, line: 613, column: 21)
!2520 = !DILocation(line: 613, column: 29, scope: !2519)
!2521 = !DILocation(line: 613, column: 21, scope: !2503)
!2522 = !DILocation(line: 614, column: 37, scope: !2519)
!2523 = !DILocation(line: 614, column: 29, scope: !2519)
!2524 = !DILocation(line: 614, column: 27, scope: !2519)
!2525 = !DILocation(line: 614, column: 19, scope: !2519)
!2526 = !DILocation(line: 616, column: 17, scope: !2503)
!2527 = !DILocalVariable(name: "w", scope: !2528, file: !130, line: 618, type: !1825)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !130, line: 617, column: 19)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !130, line: 616, column: 17)
!2530 = distinct !DILexicalBlock(scope: !2503, file: !130, line: 616, column: 17)
!2531 = !DILocation(line: 618, column: 30, scope: !2528)
!2532 = !DILocalVariable(name: "bytes", scope: !2528, file: !130, line: 619, type: !152)
!2533 = !DILocation(line: 619, column: 28, scope: !2528)
!2534 = !DILocation(line: 619, column: 51, scope: !2528)
!2535 = !DILocation(line: 619, column: 55, scope: !2528)
!2536 = !DILocation(line: 619, column: 59, scope: !2528)
!2537 = !DILocation(line: 619, column: 57, scope: !2528)
!2538 = !DILocation(line: 620, column: 46, scope: !2528)
!2539 = !DILocation(line: 620, column: 57, scope: !2528)
!2540 = !DILocation(line: 620, column: 61, scope: !2528)
!2541 = !DILocation(line: 620, column: 59, scope: !2528)
!2542 = !DILocation(line: 620, column: 54, scope: !2528)
!2543 = !DILocation(line: 619, column: 36, scope: !2528)
!2544 = !DILocation(line: 621, column: 25, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2528, file: !130, line: 621, column: 25)
!2546 = !DILocation(line: 621, column: 31, scope: !2545)
!2547 = !DILocation(line: 621, column: 25, scope: !2528)
!2548 = !DILocation(line: 622, column: 23, scope: !2545)
!2549 = !DILocation(line: 623, column: 30, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2545, file: !130, line: 623, column: 30)
!2551 = !DILocation(line: 623, column: 36, scope: !2550)
!2552 = !DILocation(line: 623, column: 30, scope: !2545)
!2553 = !DILocation(line: 625, column: 35, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2550, file: !130, line: 624, column: 23)
!2555 = !DILocation(line: 626, column: 25, scope: !2554)
!2556 = !DILocation(line: 628, column: 30, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2550, file: !130, line: 628, column: 30)
!2558 = !DILocation(line: 628, column: 36, scope: !2557)
!2559 = !DILocation(line: 628, column: 30, scope: !2550)
!2560 = !DILocation(line: 630, column: 35, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2557, file: !130, line: 629, column: 23)
!2562 = !DILocation(line: 631, column: 25, scope: !2561)
!2563 = !DILocation(line: 631, column: 32, scope: !2561)
!2564 = !DILocation(line: 631, column: 36, scope: !2561)
!2565 = !DILocation(line: 631, column: 34, scope: !2561)
!2566 = !DILocation(line: 631, column: 40, scope: !2561)
!2567 = !DILocation(line: 631, column: 38, scope: !2561)
!2568 = !DILocation(line: 631, column: 48, scope: !2561)
!2569 = !DILocation(line: 631, column: 51, scope: !2561)
!2570 = !DILocation(line: 631, column: 55, scope: !2561)
!2571 = !DILocation(line: 631, column: 59, scope: !2561)
!2572 = !DILocation(line: 631, column: 57, scope: !2561)
!2573 = !DILocation(line: 0, scope: !2561)
!2574 = !DILocation(line: 632, column: 28, scope: !2561)
!2575 = distinct !{!2575, !2562, !2574, !433}
!2576 = !DILocation(line: 633, column: 25, scope: !2561)
!2577 = !DILocation(line: 645, column: 44, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !130, line: 645, column: 29)
!2579 = distinct !DILexicalBlock(scope: !2557, file: !130, line: 636, column: 23)
!2580 = !DILocation(line: 646, column: 29, scope: !2578)
!2581 = !DILocation(line: 646, column: 32, scope: !2578)
!2582 = !DILocation(line: 646, column: 46, scope: !2578)
!2583 = !DILocation(line: 645, column: 29, scope: !2579)
!2584 = !DILocalVariable(name: "j", scope: !2585, file: !130, line: 648, type: !152)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !130, line: 648, column: 29)
!2586 = distinct !DILexicalBlock(scope: !2578, file: !130, line: 647, column: 27)
!2587 = !DILocation(line: 648, column: 41, scope: !2585)
!2588 = !DILocation(line: 648, column: 34, scope: !2585)
!2589 = !DILocation(line: 648, column: 48, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2585, file: !130, line: 648, column: 29)
!2591 = !DILocation(line: 648, column: 52, scope: !2590)
!2592 = !DILocation(line: 648, column: 50, scope: !2590)
!2593 = !DILocation(line: 648, column: 29, scope: !2585)
!2594 = !DILocation(line: 649, column: 39, scope: !2590)
!2595 = !DILocation(line: 649, column: 43, scope: !2590)
!2596 = !DILocation(line: 649, column: 47, scope: !2590)
!2597 = !DILocation(line: 649, column: 45, scope: !2590)
!2598 = !DILocation(line: 649, column: 51, scope: !2590)
!2599 = !DILocation(line: 649, column: 49, scope: !2590)
!2600 = !DILocation(line: 649, column: 31, scope: !2590)
!2601 = !DILocation(line: 653, column: 35, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2590, file: !130, line: 650, column: 33)
!2603 = !DILocation(line: 654, column: 33, scope: !2602)
!2604 = !DILocation(line: 648, column: 60, scope: !2590)
!2605 = !DILocation(line: 648, column: 29, scope: !2590)
!2606 = distinct !{!2606, !2593, !2607, !433}
!2607 = !DILocation(line: 654, column: 33, scope: !2585)
!2608 = !DILocation(line: 655, column: 27, scope: !2586)
!2609 = !DILocation(line: 657, column: 43, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2579, file: !130, line: 657, column: 29)
!2611 = !DILocation(line: 657, column: 31, scope: !2610)
!2612 = !DILocation(line: 657, column: 29, scope: !2579)
!2613 = !DILocation(line: 658, column: 37, scope: !2610)
!2614 = !DILocation(line: 658, column: 27, scope: !2610)
!2615 = !DILocation(line: 659, column: 30, scope: !2579)
!2616 = !DILocation(line: 659, column: 27, scope: !2579)
!2617 = !DILocation(line: 664, column: 23, scope: !2528)
!2618 = !DILocation(line: 668, column: 40, scope: !2489)
!2619 = !DILocation(line: 668, column: 38, scope: !2489)
!2620 = !DILocation(line: 670, column: 21, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2489, file: !130, line: 670, column: 17)
!2622 = !DILocation(line: 670, column: 19, scope: !2621)
!2623 = !DILocation(line: 670, column: 23, scope: !2621)
!2624 = !DILocation(line: 670, column: 27, scope: !2621)
!2625 = !DILocation(line: 670, column: 45, scope: !2621)
!2626 = !DILocation(line: 670, column: 50, scope: !2621)
!2627 = !DILocation(line: 670, column: 17, scope: !2489)
!2628 = !DILocalVariable(name: "ilim", scope: !2629, file: !130, line: 674, type: !152)
!2629 = distinct !DILexicalBlock(scope: !2621, file: !130, line: 671, column: 15)
!2630 = !DILocation(line: 674, column: 24, scope: !2629)
!2631 = !DILocation(line: 674, column: 31, scope: !2629)
!2632 = !DILocation(line: 674, column: 35, scope: !2629)
!2633 = !DILocation(line: 674, column: 33, scope: !2629)
!2634 = !DILocation(line: 676, column: 17, scope: !2629)
!2635 = !DILocation(line: 678, column: 25, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !130, line: 678, column: 25)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !130, line: 677, column: 19)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !130, line: 676, column: 17)
!2639 = distinct !DILexicalBlock(scope: !2629, file: !130, line: 676, column: 17)
!2640 = !DILocation(line: 678, column: 43, scope: !2636)
!2641 = !DILocation(line: 678, column: 48, scope: !2636)
!2642 = !DILocation(line: 678, column: 25, scope: !2637)
!2643 = !DILocation(line: 680, column: 25, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2636, file: !130, line: 679, column: 23)
!2645 = !DILocation(line: 680, column: 25, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !130, line: 680, column: 25)
!2647 = distinct !DILexicalBlock(scope: !2644, file: !130, line: 680, column: 25)
!2648 = !DILocation(line: 680, column: 25, scope: !2647)
!2649 = !DILocation(line: 680, column: 25, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !130, line: 680, column: 25)
!2651 = !DILocation(line: 680, column: 25, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2650, file: !130, line: 680, column: 25)
!2653 = !DILocation(line: 680, column: 25, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !130, line: 680, column: 25)
!2655 = distinct !DILexicalBlock(scope: !2652, file: !130, line: 680, column: 25)
!2656 = !DILocation(line: 680, column: 25, scope: !2655)
!2657 = !DILocation(line: 680, column: 25, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !130, line: 680, column: 25)
!2659 = distinct !DILexicalBlock(scope: !2652, file: !130, line: 680, column: 25)
!2660 = !DILocation(line: 680, column: 25, scope: !2659)
!2661 = !DILocation(line: 680, column: 25, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !130, line: 680, column: 25)
!2663 = distinct !DILexicalBlock(scope: !2652, file: !130, line: 680, column: 25)
!2664 = !DILocation(line: 680, column: 25, scope: !2663)
!2665 = !DILocation(line: 680, column: 25, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !130, line: 680, column: 25)
!2667 = distinct !DILexicalBlock(scope: !2647, file: !130, line: 680, column: 25)
!2668 = !DILocation(line: 680, column: 25, scope: !2667)
!2669 = !DILocation(line: 681, column: 25, scope: !2644)
!2670 = !DILocation(line: 681, column: 25, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !130, line: 681, column: 25)
!2672 = distinct !DILexicalBlock(scope: !2644, file: !130, line: 681, column: 25)
!2673 = !DILocation(line: 681, column: 25, scope: !2672)
!2674 = !DILocation(line: 682, column: 25, scope: !2644)
!2675 = !DILocation(line: 682, column: 25, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !130, line: 682, column: 25)
!2677 = distinct !DILexicalBlock(scope: !2644, file: !130, line: 682, column: 25)
!2678 = !DILocation(line: 682, column: 25, scope: !2677)
!2679 = !DILocation(line: 683, column: 36, scope: !2644)
!2680 = !DILocation(line: 683, column: 38, scope: !2644)
!2681 = !DILocation(line: 683, column: 33, scope: !2644)
!2682 = !DILocation(line: 683, column: 29, scope: !2644)
!2683 = !DILocation(line: 683, column: 27, scope: !2644)
!2684 = !DILocation(line: 684, column: 23, scope: !2644)
!2685 = !DILocation(line: 685, column: 30, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2636, file: !130, line: 685, column: 30)
!2687 = !DILocation(line: 685, column: 30, scope: !2636)
!2688 = !DILocation(line: 687, column: 25, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2686, file: !130, line: 686, column: 23)
!2690 = !DILocation(line: 687, column: 25, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !130, line: 687, column: 25)
!2692 = distinct !DILexicalBlock(scope: !2689, file: !130, line: 687, column: 25)
!2693 = !DILocation(line: 687, column: 25, scope: !2692)
!2694 = !DILocation(line: 688, column: 40, scope: !2689)
!2695 = !DILocation(line: 689, column: 23, scope: !2689)
!2696 = !DILocation(line: 690, column: 25, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2637, file: !130, line: 690, column: 25)
!2698 = !DILocation(line: 690, column: 33, scope: !2697)
!2699 = !DILocation(line: 690, column: 35, scope: !2697)
!2700 = !DILocation(line: 690, column: 30, scope: !2697)
!2701 = !DILocation(line: 690, column: 25, scope: !2637)
!2702 = !DILocation(line: 691, column: 23, scope: !2697)
!2703 = !DILocation(line: 692, column: 21, scope: !2637)
!2704 = !DILocation(line: 692, column: 21, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !130, line: 692, column: 21)
!2706 = distinct !DILexicalBlock(scope: !2637, file: !130, line: 692, column: 21)
!2707 = !DILocation(line: 692, column: 21, scope: !2706)
!2708 = !DILocation(line: 692, column: 21, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2705, file: !130, line: 692, column: 21)
!2710 = !DILocation(line: 692, column: 21, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !130, line: 692, column: 21)
!2712 = distinct !DILexicalBlock(scope: !2709, file: !130, line: 692, column: 21)
!2713 = !DILocation(line: 692, column: 21, scope: !2712)
!2714 = !DILocation(line: 692, column: 21, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !130, line: 692, column: 21)
!2716 = distinct !DILexicalBlock(scope: !2709, file: !130, line: 692, column: 21)
!2717 = !DILocation(line: 692, column: 21, scope: !2716)
!2718 = !DILocation(line: 693, column: 21, scope: !2637)
!2719 = !DILocation(line: 693, column: 21, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !130, line: 693, column: 21)
!2721 = distinct !DILexicalBlock(scope: !2637, file: !130, line: 693, column: 21)
!2722 = !DILocation(line: 693, column: 21, scope: !2721)
!2723 = !DILocation(line: 694, column: 25, scope: !2637)
!2724 = !DILocation(line: 694, column: 29, scope: !2637)
!2725 = !DILocation(line: 694, column: 23, scope: !2637)
!2726 = !DILocation(line: 676, column: 17, scope: !2638)
!2727 = distinct !{!2727, !2728, !2729}
!2728 = !DILocation(line: 676, column: 17, scope: !2639)
!2729 = !DILocation(line: 695, column: 19, scope: !2639)
!2730 = !DILocation(line: 697, column: 17, scope: !2629)
!2731 = !DILocation(line: 700, column: 9, scope: !2240)
!2732 = !DILocation(line: 702, column: 16, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2190, file: !130, line: 702, column: 11)
!2734 = !DILocation(line: 702, column: 34, scope: !2733)
!2735 = !DILocation(line: 702, column: 37, scope: !2733)
!2736 = !DILocation(line: 702, column: 51, scope: !2733)
!2737 = !DILocation(line: 703, column: 15, scope: !2733)
!2738 = !DILocation(line: 703, column: 18, scope: !2733)
!2739 = !DILocation(line: 704, column: 14, scope: !2733)
!2740 = !DILocation(line: 704, column: 17, scope: !2733)
!2741 = !DILocation(line: 705, column: 14, scope: !2733)
!2742 = !DILocation(line: 705, column: 17, scope: !2733)
!2743 = !DILocation(line: 705, column: 33, scope: !2733)
!2744 = !DILocation(line: 705, column: 35, scope: !2733)
!2745 = !DILocation(line: 705, column: 51, scope: !2733)
!2746 = !DILocation(line: 705, column: 53, scope: !2733)
!2747 = !DILocation(line: 705, column: 47, scope: !2733)
!2748 = !DILocation(line: 705, column: 65, scope: !2733)
!2749 = !DILocation(line: 706, column: 11, scope: !2733)
!2750 = !DILocation(line: 706, column: 15, scope: !2733)
!2751 = !DILocation(line: 702, column: 11, scope: !2190)
!2752 = !DILocation(line: 707, column: 9, scope: !2733)
!2753 = !DILabel(scope: !2190, name: "store_escape", file: !130, line: 709)
!2754 = !DILocation(line: 709, column: 5, scope: !2190)
!2755 = !DILocation(line: 710, column: 7, scope: !2190)
!2756 = !DILocation(line: 710, column: 7, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !130, line: 710, column: 7)
!2758 = distinct !DILexicalBlock(scope: !2190, file: !130, line: 710, column: 7)
!2759 = !DILocation(line: 710, column: 7, scope: !2758)
!2760 = !DILocation(line: 710, column: 7, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2758, file: !130, line: 710, column: 7)
!2762 = !DILocation(line: 710, column: 7, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2761, file: !130, line: 710, column: 7)
!2764 = !DILocation(line: 710, column: 7, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !130, line: 710, column: 7)
!2766 = distinct !DILexicalBlock(scope: !2763, file: !130, line: 710, column: 7)
!2767 = !DILocation(line: 710, column: 7, scope: !2766)
!2768 = !DILocation(line: 710, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !130, line: 710, column: 7)
!2770 = distinct !DILexicalBlock(scope: !2763, file: !130, line: 710, column: 7)
!2771 = !DILocation(line: 710, column: 7, scope: !2770)
!2772 = !DILocation(line: 710, column: 7, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !130, line: 710, column: 7)
!2774 = distinct !DILexicalBlock(scope: !2763, file: !130, line: 710, column: 7)
!2775 = !DILocation(line: 710, column: 7, scope: !2774)
!2776 = !DILocation(line: 710, column: 7, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !130, line: 710, column: 7)
!2778 = distinct !DILexicalBlock(scope: !2758, file: !130, line: 710, column: 7)
!2779 = !DILocation(line: 710, column: 7, scope: !2778)
!2780 = !DILabel(scope: !2190, name: "store_c", file: !130, line: 712)
!2781 = !DILocation(line: 712, column: 5, scope: !2190)
!2782 = !DILocation(line: 713, column: 7, scope: !2190)
!2783 = !DILocation(line: 713, column: 7, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !130, line: 713, column: 7)
!2785 = distinct !DILexicalBlock(scope: !2190, file: !130, line: 713, column: 7)
!2786 = !DILocation(line: 713, column: 7, scope: !2785)
!2787 = !DILocation(line: 713, column: 7, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2784, file: !130, line: 713, column: 7)
!2789 = !DILocation(line: 713, column: 7, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !130, line: 713, column: 7)
!2791 = distinct !DILexicalBlock(scope: !2788, file: !130, line: 713, column: 7)
!2792 = !DILocation(line: 713, column: 7, scope: !2791)
!2793 = !DILocation(line: 713, column: 7, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !130, line: 713, column: 7)
!2795 = distinct !DILexicalBlock(scope: !2788, file: !130, line: 713, column: 7)
!2796 = !DILocation(line: 713, column: 7, scope: !2795)
!2797 = !DILocation(line: 714, column: 7, scope: !2190)
!2798 = !DILocation(line: 714, column: 7, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !130, line: 714, column: 7)
!2800 = distinct !DILexicalBlock(scope: !2190, file: !130, line: 714, column: 7)
!2801 = !DILocation(line: 714, column: 7, scope: !2800)
!2802 = !DILocation(line: 716, column: 13, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2190, file: !130, line: 716, column: 11)
!2804 = !DILocation(line: 716, column: 11, scope: !2190)
!2805 = !DILocation(line: 717, column: 38, scope: !2803)
!2806 = !DILocation(line: 717, column: 9, scope: !2803)
!2807 = !DILocation(line: 718, column: 5, scope: !2190)
!2808 = !DILocation(line: 395, column: 82, scope: !2179)
!2809 = !DILocation(line: 395, column: 3, scope: !2179)
!2810 = distinct !{!2810, !2188, !2811, !433}
!2811 = !DILocation(line: 718, column: 5, scope: !2175)
!2812 = !DILocation(line: 720, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2037, file: !130, line: 720, column: 7)
!2814 = !DILocation(line: 720, column: 11, scope: !2813)
!2815 = !DILocation(line: 720, column: 16, scope: !2813)
!2816 = !DILocation(line: 720, column: 19, scope: !2813)
!2817 = !DILocation(line: 720, column: 33, scope: !2813)
!2818 = !DILocation(line: 721, column: 7, scope: !2813)
!2819 = !DILocation(line: 721, column: 10, scope: !2813)
!2820 = !DILocation(line: 720, column: 7, scope: !2037)
!2821 = !DILocation(line: 722, column: 5, scope: !2813)
!2822 = !DILocation(line: 728, column: 7, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2037, file: !130, line: 728, column: 7)
!2824 = !DILocation(line: 728, column: 21, scope: !2823)
!2825 = !DILocation(line: 728, column: 51, scope: !2823)
!2826 = !DILocation(line: 728, column: 56, scope: !2823)
!2827 = !DILocation(line: 729, column: 7, scope: !2823)
!2828 = !DILocation(line: 729, column: 10, scope: !2823)
!2829 = !DILocation(line: 728, column: 7, scope: !2037)
!2830 = !DILocation(line: 731, column: 11, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !130, line: 731, column: 11)
!2832 = distinct !DILexicalBlock(scope: !2823, file: !130, line: 730, column: 5)
!2833 = !DILocation(line: 731, column: 11, scope: !2832)
!2834 = !DILocation(line: 732, column: 42, scope: !2831)
!2835 = !DILocation(line: 732, column: 50, scope: !2831)
!2836 = !DILocation(line: 732, column: 67, scope: !2831)
!2837 = !DILocation(line: 732, column: 72, scope: !2831)
!2838 = !DILocation(line: 734, column: 42, scope: !2831)
!2839 = !DILocation(line: 734, column: 49, scope: !2831)
!2840 = !DILocation(line: 735, column: 42, scope: !2831)
!2841 = !DILocation(line: 735, column: 54, scope: !2831)
!2842 = !DILocation(line: 732, column: 16, scope: !2831)
!2843 = !DILocation(line: 732, column: 9, scope: !2831)
!2844 = !DILocation(line: 736, column: 18, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2831, file: !130, line: 736, column: 16)
!2846 = !DILocation(line: 736, column: 29, scope: !2845)
!2847 = !DILocation(line: 736, column: 32, scope: !2845)
!2848 = !DILocation(line: 736, column: 16, scope: !2831)
!2849 = !DILocation(line: 739, column: 24, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2845, file: !130, line: 737, column: 9)
!2851 = !DILocation(line: 739, column: 22, scope: !2850)
!2852 = !DILocation(line: 740, column: 15, scope: !2850)
!2853 = !DILocation(line: 741, column: 11, scope: !2850)
!2854 = !DILocation(line: 743, column: 5, scope: !2832)
!2855 = !DILocation(line: 745, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2037, file: !130, line: 745, column: 7)
!2857 = !DILocation(line: 745, column: 20, scope: !2856)
!2858 = !DILocation(line: 745, column: 24, scope: !2856)
!2859 = !DILocation(line: 745, column: 7, scope: !2037)
!2860 = !DILocation(line: 746, column: 5, scope: !2856)
!2861 = !DILocation(line: 746, column: 13, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !130, line: 746, column: 5)
!2863 = distinct !DILexicalBlock(scope: !2856, file: !130, line: 746, column: 5)
!2864 = !DILocation(line: 746, column: 12, scope: !2862)
!2865 = !DILocation(line: 746, column: 5, scope: !2863)
!2866 = !DILocation(line: 747, column: 7, scope: !2862)
!2867 = !DILocation(line: 747, column: 7, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !130, line: 747, column: 7)
!2869 = distinct !DILexicalBlock(scope: !2862, file: !130, line: 747, column: 7)
!2870 = !DILocation(line: 747, column: 7, scope: !2869)
!2871 = !DILocation(line: 746, column: 39, scope: !2862)
!2872 = !DILocation(line: 746, column: 5, scope: !2862)
!2873 = distinct !{!2873, !2865, !2874, !433}
!2874 = !DILocation(line: 747, column: 7, scope: !2863)
!2875 = !DILocation(line: 749, column: 7, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2037, file: !130, line: 749, column: 7)
!2877 = !DILocation(line: 749, column: 13, scope: !2876)
!2878 = !DILocation(line: 749, column: 11, scope: !2876)
!2879 = !DILocation(line: 749, column: 7, scope: !2037)
!2880 = !DILocation(line: 750, column: 5, scope: !2876)
!2881 = !DILocation(line: 750, column: 12, scope: !2876)
!2882 = !DILocation(line: 750, column: 17, scope: !2876)
!2883 = !DILocation(line: 751, column: 10, scope: !2037)
!2884 = !DILocation(line: 751, column: 3, scope: !2037)
!2885 = !DILabel(scope: !2037, name: "force_outer_quoting_style", file: !130, line: 753)
!2886 = !DILocation(line: 753, column: 2, scope: !2037)
!2887 = !DILocation(line: 756, column: 7, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2037, file: !130, line: 756, column: 7)
!2889 = !DILocation(line: 756, column: 21, scope: !2888)
!2890 = !DILocation(line: 756, column: 51, scope: !2888)
!2891 = !DILocation(line: 756, column: 54, scope: !2888)
!2892 = !DILocation(line: 756, column: 7, scope: !2037)
!2893 = !DILocation(line: 757, column: 19, scope: !2888)
!2894 = !DILocation(line: 757, column: 5, scope: !2888)
!2895 = !DILocation(line: 758, column: 36, scope: !2037)
!2896 = !DILocation(line: 758, column: 44, scope: !2037)
!2897 = !DILocation(line: 758, column: 56, scope: !2037)
!2898 = !DILocation(line: 758, column: 61, scope: !2037)
!2899 = !DILocation(line: 759, column: 36, scope: !2037)
!2900 = !DILocation(line: 760, column: 36, scope: !2037)
!2901 = !DILocation(line: 760, column: 42, scope: !2037)
!2902 = !DILocation(line: 761, column: 36, scope: !2037)
!2903 = !DILocation(line: 761, column: 48, scope: !2037)
!2904 = !DILocation(line: 758, column: 10, scope: !2037)
!2905 = !DILocation(line: 758, column: 3, scope: !2037)
!2906 = !DILocation(line: 762, column: 1, scope: !2037)
!2907 = !DILocalVariable(name: "msgid", arg: 1, scope: !183, file: !130, line: 197, type: !6)
!2908 = !DILocation(line: 197, column: 28, scope: !183)
!2909 = !DILocalVariable(name: "s", arg: 2, scope: !183, file: !130, line: 197, type: !132)
!2910 = !DILocation(line: 197, column: 54, scope: !183)
!2911 = !DILocalVariable(name: "translation", scope: !183, file: !130, line: 199, type: !6)
!2912 = !DILocation(line: 199, column: 15, scope: !183)
!2913 = !DILocation(line: 199, column: 29, scope: !183)
!2914 = !DILocation(line: 201, column: 7, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !183, file: !130, line: 201, column: 7)
!2916 = !DILocation(line: 201, column: 22, scope: !2915)
!2917 = !DILocation(line: 201, column: 19, scope: !2915)
!2918 = !DILocation(line: 201, column: 7, scope: !183)
!2919 = !DILocation(line: 202, column: 12, scope: !2915)
!2920 = !DILocation(line: 202, column: 5, scope: !2915)
!2921 = !DILocalVariable(name: "w", scope: !183, file: !130, line: 229, type: !1825)
!2922 = !DILocation(line: 229, column: 12, scope: !183)
!2923 = !DILocalVariable(name: "mbs", scope: !183, file: !130, line: 230, type: !2504)
!2924 = !DILocation(line: 230, column: 13, scope: !183)
!2925 = !DILocation(line: 230, column: 18, scope: !183)
!2926 = !DILocation(line: 231, column: 7, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !183, file: !130, line: 231, column: 7)
!2928 = !DILocation(line: 231, column: 40, scope: !2927)
!2929 = !DILocation(line: 231, column: 45, scope: !2927)
!2930 = !DILocation(line: 231, column: 48, scope: !2927)
!2931 = !DILocation(line: 231, column: 50, scope: !2927)
!2932 = !DILocation(line: 231, column: 7, scope: !183)
!2933 = !DILocation(line: 232, column: 18, scope: !2927)
!2934 = !DILocation(line: 232, column: 27, scope: !2927)
!2935 = !DILocation(line: 232, column: 12, scope: !2927)
!2936 = !DILocation(line: 232, column: 5, scope: !2927)
!2937 = !DILocation(line: 234, column: 11, scope: !183)
!2938 = !DILocation(line: 234, column: 13, scope: !183)
!2939 = !DILocation(line: 234, column: 3, scope: !183)
!2940 = !DILocation(line: 235, column: 1, scope: !183)
!2941 = distinct !DISubprogram(name: "quotearg_alloc", scope: !130, file: !130, line: 788, type: !2942, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!35, !6, !152, !1877}
!2944 = !DILocalVariable(name: "arg", arg: 1, scope: !2941, file: !130, line: 788, type: !6)
!2945 = !DILocation(line: 788, column: 29, scope: !2941)
!2946 = !DILocalVariable(name: "argsize", arg: 2, scope: !2941, file: !130, line: 788, type: !152)
!2947 = !DILocation(line: 788, column: 41, scope: !2941)
!2948 = !DILocalVariable(name: "o", arg: 3, scope: !2941, file: !130, line: 789, type: !1877)
!2949 = !DILocation(line: 789, column: 47, scope: !2941)
!2950 = !DILocation(line: 791, column: 30, scope: !2941)
!2951 = !DILocation(line: 791, column: 35, scope: !2941)
!2952 = !DILocation(line: 791, column: 50, scope: !2941)
!2953 = !DILocation(line: 791, column: 10, scope: !2941)
!2954 = !DILocation(line: 791, column: 3, scope: !2941)
!2955 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !130, file: !130, line: 801, type: !2956, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!35, !6, !152, !281, !1877}
!2958 = !DILocalVariable(name: "arg", arg: 1, scope: !2955, file: !130, line: 801, type: !6)
!2959 = !DILocation(line: 801, column: 33, scope: !2955)
!2960 = !DILocalVariable(name: "argsize", arg: 2, scope: !2955, file: !130, line: 801, type: !152)
!2961 = !DILocation(line: 801, column: 45, scope: !2955)
!2962 = !DILocalVariable(name: "size", arg: 3, scope: !2955, file: !130, line: 801, type: !281)
!2963 = !DILocation(line: 801, column: 62, scope: !2955)
!2964 = !DILocalVariable(name: "o", arg: 4, scope: !2955, file: !130, line: 802, type: !1877)
!2965 = !DILocation(line: 802, column: 51, scope: !2955)
!2966 = !DILocalVariable(name: "p", scope: !2955, file: !130, line: 804, type: !1877)
!2967 = !DILocation(line: 804, column: 33, scope: !2955)
!2968 = !DILocation(line: 804, column: 37, scope: !2955)
!2969 = !DILocation(line: 804, column: 41, scope: !2955)
!2970 = !DILocalVariable(name: "saved_errno", scope: !2955, file: !130, line: 805, type: !33)
!2971 = !DILocation(line: 805, column: 7, scope: !2955)
!2972 = !DILocation(line: 805, column: 21, scope: !2955)
!2973 = !DILocalVariable(name: "flags", scope: !2955, file: !130, line: 807, type: !33)
!2974 = !DILocation(line: 807, column: 7, scope: !2955)
!2975 = !DILocation(line: 807, column: 15, scope: !2955)
!2976 = !DILocation(line: 807, column: 18, scope: !2955)
!2977 = !DILocation(line: 807, column: 27, scope: !2955)
!2978 = !DILocation(line: 807, column: 24, scope: !2955)
!2979 = !DILocalVariable(name: "bufsize", scope: !2955, file: !130, line: 808, type: !152)
!2980 = !DILocation(line: 808, column: 10, scope: !2955)
!2981 = !DILocation(line: 808, column: 55, scope: !2955)
!2982 = !DILocation(line: 808, column: 60, scope: !2955)
!2983 = !DILocation(line: 808, column: 69, scope: !2955)
!2984 = !DILocation(line: 808, column: 72, scope: !2955)
!2985 = !DILocation(line: 809, column: 46, scope: !2955)
!2986 = !DILocation(line: 809, column: 53, scope: !2955)
!2987 = !DILocation(line: 809, column: 56, scope: !2955)
!2988 = !DILocation(line: 810, column: 46, scope: !2955)
!2989 = !DILocation(line: 810, column: 49, scope: !2955)
!2990 = !DILocation(line: 811, column: 46, scope: !2955)
!2991 = !DILocation(line: 811, column: 49, scope: !2955)
!2992 = !DILocation(line: 808, column: 20, scope: !2955)
!2993 = !DILocation(line: 811, column: 62, scope: !2955)
!2994 = !DILocalVariable(name: "buf", scope: !2955, file: !130, line: 812, type: !35)
!2995 = !DILocation(line: 812, column: 9, scope: !2955)
!2996 = !DILocation(line: 812, column: 27, scope: !2955)
!2997 = !DILocation(line: 812, column: 15, scope: !2955)
!2998 = !DILocation(line: 813, column: 29, scope: !2955)
!2999 = !DILocation(line: 813, column: 34, scope: !2955)
!3000 = !DILocation(line: 813, column: 43, scope: !2955)
!3001 = !DILocation(line: 813, column: 48, scope: !2955)
!3002 = !DILocation(line: 813, column: 57, scope: !2955)
!3003 = !DILocation(line: 813, column: 60, scope: !2955)
!3004 = !DILocation(line: 813, column: 67, scope: !2955)
!3005 = !DILocation(line: 814, column: 29, scope: !2955)
!3006 = !DILocation(line: 814, column: 32, scope: !2955)
!3007 = !DILocation(line: 815, column: 29, scope: !2955)
!3008 = !DILocation(line: 815, column: 32, scope: !2955)
!3009 = !DILocation(line: 815, column: 44, scope: !2955)
!3010 = !DILocation(line: 815, column: 47, scope: !2955)
!3011 = !DILocation(line: 813, column: 3, scope: !2955)
!3012 = !DILocation(line: 816, column: 11, scope: !2955)
!3013 = !DILocation(line: 816, column: 3, scope: !2955)
!3014 = !DILocation(line: 816, column: 9, scope: !2955)
!3015 = !DILocation(line: 817, column: 7, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2955, file: !130, line: 817, column: 7)
!3017 = !DILocation(line: 817, column: 7, scope: !2955)
!3018 = !DILocation(line: 818, column: 13, scope: !3016)
!3019 = !DILocation(line: 818, column: 21, scope: !3016)
!3020 = !DILocation(line: 818, column: 6, scope: !3016)
!3021 = !DILocation(line: 818, column: 11, scope: !3016)
!3022 = !DILocation(line: 818, column: 5, scope: !3016)
!3023 = !DILocation(line: 819, column: 10, scope: !2955)
!3024 = !DILocation(line: 819, column: 3, scope: !2955)
!3025 = distinct !DISubprogram(name: "quotearg_free", scope: !130, file: !130, line: 837, type: !83, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3026 = !DILocalVariable(name: "sv", scope: !3025, file: !130, line: 839, type: !191)
!3027 = !DILocation(line: 839, column: 19, scope: !3025)
!3028 = !DILocation(line: 839, column: 24, scope: !3025)
!3029 = !DILocalVariable(name: "i", scope: !3030, file: !130, line: 840, type: !33)
!3030 = distinct !DILexicalBlock(scope: !3025, file: !130, line: 840, column: 3)
!3031 = !DILocation(line: 840, column: 12, scope: !3030)
!3032 = !DILocation(line: 840, column: 8, scope: !3030)
!3033 = !DILocation(line: 840, column: 19, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3030, file: !130, line: 840, column: 3)
!3035 = !DILocation(line: 840, column: 23, scope: !3034)
!3036 = !DILocation(line: 840, column: 21, scope: !3034)
!3037 = !DILocation(line: 840, column: 3, scope: !3030)
!3038 = !DILocation(line: 841, column: 11, scope: !3034)
!3039 = !DILocation(line: 841, column: 14, scope: !3034)
!3040 = !DILocation(line: 841, column: 17, scope: !3034)
!3041 = !DILocation(line: 841, column: 5, scope: !3034)
!3042 = !DILocation(line: 840, column: 32, scope: !3034)
!3043 = !DILocation(line: 840, column: 3, scope: !3034)
!3044 = distinct !{!3044, !3037, !3045, !433}
!3045 = !DILocation(line: 841, column: 20, scope: !3030)
!3046 = !DILocation(line: 842, column: 7, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3025, file: !130, line: 842, column: 7)
!3048 = !DILocation(line: 842, column: 13, scope: !3047)
!3049 = !DILocation(line: 842, column: 17, scope: !3047)
!3050 = !DILocation(line: 842, column: 7, scope: !3025)
!3051 = !DILocation(line: 844, column: 13, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3047, file: !130, line: 843, column: 5)
!3053 = !DILocation(line: 844, column: 19, scope: !3052)
!3054 = !DILocation(line: 844, column: 7, scope: !3052)
!3055 = !DILocation(line: 845, column: 21, scope: !3052)
!3056 = !DILocation(line: 846, column: 20, scope: !3052)
!3057 = !DILocation(line: 847, column: 5, scope: !3052)
!3058 = !DILocation(line: 848, column: 7, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3025, file: !130, line: 848, column: 7)
!3060 = !DILocation(line: 848, column: 10, scope: !3059)
!3061 = !DILocation(line: 848, column: 7, scope: !3025)
!3062 = !DILocation(line: 850, column: 13, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3059, file: !130, line: 849, column: 5)
!3064 = !DILocation(line: 850, column: 7, scope: !3063)
!3065 = !DILocation(line: 851, column: 15, scope: !3063)
!3066 = !DILocation(line: 852, column: 5, scope: !3063)
!3067 = !DILocation(line: 853, column: 10, scope: !3025)
!3068 = !DILocation(line: 854, column: 1, scope: !3025)
!3069 = distinct !DISubprogram(name: "quotearg_n", scope: !130, file: !130, line: 919, type: !3070, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!35, !33, !6}
!3072 = !DILocalVariable(name: "n", arg: 1, scope: !3069, file: !130, line: 919, type: !33)
!3073 = !DILocation(line: 919, column: 17, scope: !3069)
!3074 = !DILocalVariable(name: "arg", arg: 2, scope: !3069, file: !130, line: 919, type: !6)
!3075 = !DILocation(line: 919, column: 32, scope: !3069)
!3076 = !DILocation(line: 921, column: 30, scope: !3069)
!3077 = !DILocation(line: 921, column: 33, scope: !3069)
!3078 = !DILocation(line: 921, column: 10, scope: !3069)
!3079 = !DILocation(line: 921, column: 3, scope: !3069)
!3080 = distinct !DISubprogram(name: "quotearg_n_options", scope: !130, file: !130, line: 866, type: !3081, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!35, !33, !6, !152, !1877}
!3083 = !DILocalVariable(name: "n", arg: 1, scope: !3080, file: !130, line: 866, type: !33)
!3084 = !DILocation(line: 866, column: 25, scope: !3080)
!3085 = !DILocalVariable(name: "arg", arg: 2, scope: !3080, file: !130, line: 866, type: !6)
!3086 = !DILocation(line: 866, column: 40, scope: !3080)
!3087 = !DILocalVariable(name: "argsize", arg: 3, scope: !3080, file: !130, line: 866, type: !152)
!3088 = !DILocation(line: 866, column: 52, scope: !3080)
!3089 = !DILocalVariable(name: "options", arg: 4, scope: !3080, file: !130, line: 867, type: !1877)
!3090 = !DILocation(line: 867, column: 51, scope: !3080)
!3091 = !DILocalVariable(name: "saved_errno", scope: !3080, file: !130, line: 869, type: !33)
!3092 = !DILocation(line: 869, column: 7, scope: !3080)
!3093 = !DILocation(line: 869, column: 21, scope: !3080)
!3094 = !DILocalVariable(name: "sv", scope: !3080, file: !130, line: 871, type: !191)
!3095 = !DILocation(line: 871, column: 19, scope: !3080)
!3096 = !DILocation(line: 871, column: 24, scope: !3080)
!3097 = !DILocalVariable(name: "nslots_max", scope: !3080, file: !130, line: 873, type: !33)
!3098 = !DILocation(line: 873, column: 7, scope: !3080)
!3099 = !DILocation(line: 874, column: 15, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3080, file: !130, line: 874, column: 7)
!3101 = !DILocation(line: 874, column: 12, scope: !3100)
!3102 = !DILocation(line: 874, column: 17, scope: !3100)
!3103 = !DILocation(line: 874, column: 20, scope: !3100)
!3104 = !DILocation(line: 874, column: 24, scope: !3100)
!3105 = !DILocation(line: 874, column: 22, scope: !3100)
!3106 = !DILocation(line: 874, column: 7, scope: !3080)
!3107 = !DILocation(line: 875, column: 5, scope: !3100)
!3108 = !DILocation(line: 877, column: 7, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3080, file: !130, line: 877, column: 7)
!3110 = !DILocation(line: 877, column: 17, scope: !3109)
!3111 = !DILocation(line: 877, column: 14, scope: !3109)
!3112 = !DILocation(line: 877, column: 7, scope: !3080)
!3113 = !DILocalVariable(name: "preallocated", scope: !3114, file: !130, line: 879, type: !50)
!3114 = distinct !DILexicalBlock(scope: !3109, file: !130, line: 878, column: 5)
!3115 = !DILocation(line: 879, column: 12, scope: !3114)
!3116 = !DILocation(line: 879, column: 28, scope: !3114)
!3117 = !DILocation(line: 879, column: 31, scope: !3114)
!3118 = !DILocalVariable(name: "new_nslots", scope: !3114, file: !130, line: 880, type: !289)
!3119 = !DILocation(line: 880, column: 13, scope: !3114)
!3120 = !DILocation(line: 880, column: 26, scope: !3114)
!3121 = !DILocation(line: 882, column: 31, scope: !3114)
!3122 = !DILocation(line: 882, column: 53, scope: !3114)
!3123 = !DILocation(line: 883, column: 31, scope: !3114)
!3124 = !DILocation(line: 883, column: 35, scope: !3114)
!3125 = !DILocation(line: 883, column: 33, scope: !3114)
!3126 = !DILocation(line: 883, column: 42, scope: !3114)
!3127 = !DILocation(line: 883, column: 47, scope: !3114)
!3128 = !DILocation(line: 882, column: 22, scope: !3114)
!3129 = !DILocation(line: 882, column: 20, scope: !3114)
!3130 = !DILocation(line: 882, column: 15, scope: !3114)
!3131 = !DILocation(line: 884, column: 11, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3114, file: !130, line: 884, column: 11)
!3133 = !DILocation(line: 884, column: 11, scope: !3114)
!3134 = !DILocation(line: 885, column: 10, scope: !3132)
!3135 = !DILocation(line: 885, column: 15, scope: !3132)
!3136 = !DILocation(line: 885, column: 9, scope: !3132)
!3137 = !DILocation(line: 886, column: 15, scope: !3114)
!3138 = !DILocation(line: 886, column: 20, scope: !3114)
!3139 = !DILocation(line: 886, column: 18, scope: !3114)
!3140 = !DILocation(line: 886, column: 7, scope: !3114)
!3141 = !DILocation(line: 886, column: 32, scope: !3114)
!3142 = !DILocation(line: 886, column: 45, scope: !3114)
!3143 = !DILocation(line: 886, column: 43, scope: !3114)
!3144 = !DILocation(line: 886, column: 53, scope: !3114)
!3145 = !DILocation(line: 887, column: 16, scope: !3114)
!3146 = !DILocation(line: 887, column: 14, scope: !3114)
!3147 = !DILocation(line: 888, column: 5, scope: !3114)
!3148 = !DILocalVariable(name: "size", scope: !3149, file: !130, line: 891, type: !152)
!3149 = distinct !DILexicalBlock(scope: !3080, file: !130, line: 890, column: 3)
!3150 = !DILocation(line: 891, column: 12, scope: !3149)
!3151 = !DILocation(line: 891, column: 19, scope: !3149)
!3152 = !DILocation(line: 891, column: 22, scope: !3149)
!3153 = !DILocation(line: 891, column: 25, scope: !3149)
!3154 = !DILocalVariable(name: "val", scope: !3149, file: !130, line: 892, type: !35)
!3155 = !DILocation(line: 892, column: 11, scope: !3149)
!3156 = !DILocation(line: 892, column: 17, scope: !3149)
!3157 = !DILocation(line: 892, column: 20, scope: !3149)
!3158 = !DILocation(line: 892, column: 23, scope: !3149)
!3159 = !DILocalVariable(name: "flags", scope: !3149, file: !130, line: 894, type: !33)
!3160 = !DILocation(line: 894, column: 9, scope: !3149)
!3161 = !DILocation(line: 894, column: 17, scope: !3149)
!3162 = !DILocation(line: 894, column: 26, scope: !3149)
!3163 = !DILocation(line: 894, column: 32, scope: !3149)
!3164 = !DILocalVariable(name: "qsize", scope: !3149, file: !130, line: 895, type: !152)
!3165 = !DILocation(line: 895, column: 12, scope: !3149)
!3166 = !DILocation(line: 895, column: 46, scope: !3149)
!3167 = !DILocation(line: 895, column: 51, scope: !3149)
!3168 = !DILocation(line: 895, column: 57, scope: !3149)
!3169 = !DILocation(line: 895, column: 62, scope: !3149)
!3170 = !DILocation(line: 896, column: 46, scope: !3149)
!3171 = !DILocation(line: 896, column: 55, scope: !3149)
!3172 = !DILocation(line: 896, column: 62, scope: !3149)
!3173 = !DILocation(line: 897, column: 46, scope: !3149)
!3174 = !DILocation(line: 897, column: 55, scope: !3149)
!3175 = !DILocation(line: 898, column: 46, scope: !3149)
!3176 = !DILocation(line: 898, column: 55, scope: !3149)
!3177 = !DILocation(line: 899, column: 46, scope: !3149)
!3178 = !DILocation(line: 899, column: 55, scope: !3149)
!3179 = !DILocation(line: 895, column: 20, scope: !3149)
!3180 = !DILocation(line: 901, column: 9, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3149, file: !130, line: 901, column: 9)
!3182 = !DILocation(line: 901, column: 17, scope: !3181)
!3183 = !DILocation(line: 901, column: 14, scope: !3181)
!3184 = !DILocation(line: 901, column: 9, scope: !3149)
!3185 = !DILocation(line: 903, column: 29, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3181, file: !130, line: 902, column: 7)
!3187 = !DILocation(line: 903, column: 35, scope: !3186)
!3188 = !DILocation(line: 903, column: 27, scope: !3186)
!3189 = !DILocation(line: 903, column: 9, scope: !3186)
!3190 = !DILocation(line: 903, column: 12, scope: !3186)
!3191 = !DILocation(line: 903, column: 15, scope: !3186)
!3192 = !DILocation(line: 903, column: 20, scope: !3186)
!3193 = !DILocation(line: 904, column: 13, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3186, file: !130, line: 904, column: 13)
!3195 = !DILocation(line: 904, column: 17, scope: !3194)
!3196 = !DILocation(line: 904, column: 13, scope: !3186)
!3197 = !DILocation(line: 905, column: 17, scope: !3194)
!3198 = !DILocation(line: 905, column: 11, scope: !3194)
!3199 = !DILocation(line: 906, column: 39, scope: !3186)
!3200 = !DILocation(line: 906, column: 27, scope: !3186)
!3201 = !DILocation(line: 906, column: 25, scope: !3186)
!3202 = !DILocation(line: 906, column: 9, scope: !3186)
!3203 = !DILocation(line: 906, column: 12, scope: !3186)
!3204 = !DILocation(line: 906, column: 15, scope: !3186)
!3205 = !DILocation(line: 906, column: 19, scope: !3186)
!3206 = !DILocation(line: 907, column: 35, scope: !3186)
!3207 = !DILocation(line: 907, column: 40, scope: !3186)
!3208 = !DILocation(line: 907, column: 46, scope: !3186)
!3209 = !DILocation(line: 907, column: 51, scope: !3186)
!3210 = !DILocation(line: 907, column: 60, scope: !3186)
!3211 = !DILocation(line: 907, column: 69, scope: !3186)
!3212 = !DILocation(line: 908, column: 35, scope: !3186)
!3213 = !DILocation(line: 908, column: 42, scope: !3186)
!3214 = !DILocation(line: 908, column: 51, scope: !3186)
!3215 = !DILocation(line: 909, column: 35, scope: !3186)
!3216 = !DILocation(line: 909, column: 44, scope: !3186)
!3217 = !DILocation(line: 910, column: 35, scope: !3186)
!3218 = !DILocation(line: 910, column: 44, scope: !3186)
!3219 = !DILocation(line: 907, column: 9, scope: !3186)
!3220 = !DILocation(line: 911, column: 7, scope: !3186)
!3221 = !DILocation(line: 913, column: 13, scope: !3149)
!3222 = !DILocation(line: 913, column: 5, scope: !3149)
!3223 = !DILocation(line: 913, column: 11, scope: !3149)
!3224 = !DILocation(line: 914, column: 12, scope: !3149)
!3225 = !DILocation(line: 914, column: 5, scope: !3149)
!3226 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !130, file: !130, line: 925, type: !3227, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!35, !33, !6, !152}
!3229 = !DILocalVariable(name: "n", arg: 1, scope: !3226, file: !130, line: 925, type: !33)
!3230 = !DILocation(line: 925, column: 21, scope: !3226)
!3231 = !DILocalVariable(name: "arg", arg: 2, scope: !3226, file: !130, line: 925, type: !6)
!3232 = !DILocation(line: 925, column: 36, scope: !3226)
!3233 = !DILocalVariable(name: "argsize", arg: 3, scope: !3226, file: !130, line: 925, type: !152)
!3234 = !DILocation(line: 925, column: 48, scope: !3226)
!3235 = !DILocation(line: 927, column: 30, scope: !3226)
!3236 = !DILocation(line: 927, column: 33, scope: !3226)
!3237 = !DILocation(line: 927, column: 38, scope: !3226)
!3238 = !DILocation(line: 927, column: 10, scope: !3226)
!3239 = !DILocation(line: 927, column: 3, scope: !3226)
!3240 = distinct !DISubprogram(name: "quotearg", scope: !130, file: !130, line: 931, type: !790, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3241 = !DILocalVariable(name: "arg", arg: 1, scope: !3240, file: !130, line: 931, type: !6)
!3242 = !DILocation(line: 931, column: 23, scope: !3240)
!3243 = !DILocation(line: 933, column: 25, scope: !3240)
!3244 = !DILocation(line: 933, column: 10, scope: !3240)
!3245 = !DILocation(line: 933, column: 3, scope: !3240)
!3246 = distinct !DISubprogram(name: "quotearg_mem", scope: !130, file: !130, line: 937, type: !3247, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!35, !6, !152}
!3249 = !DILocalVariable(name: "arg", arg: 1, scope: !3246, file: !130, line: 937, type: !6)
!3250 = !DILocation(line: 937, column: 27, scope: !3246)
!3251 = !DILocalVariable(name: "argsize", arg: 2, scope: !3246, file: !130, line: 937, type: !152)
!3252 = !DILocation(line: 937, column: 39, scope: !3246)
!3253 = !DILocation(line: 939, column: 29, scope: !3246)
!3254 = !DILocation(line: 939, column: 34, scope: !3246)
!3255 = !DILocation(line: 939, column: 10, scope: !3246)
!3256 = !DILocation(line: 939, column: 3, scope: !3246)
!3257 = distinct !DISubprogram(name: "quotearg_n_style", scope: !130, file: !130, line: 943, type: !3258, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!35, !33, !132, !6}
!3260 = !DILocalVariable(name: "n", arg: 1, scope: !3257, file: !130, line: 943, type: !33)
!3261 = !DILocation(line: 943, column: 23, scope: !3257)
!3262 = !DILocalVariable(name: "s", arg: 2, scope: !3257, file: !130, line: 943, type: !132)
!3263 = !DILocation(line: 943, column: 45, scope: !3257)
!3264 = !DILocalVariable(name: "arg", arg: 3, scope: !3257, file: !130, line: 943, type: !6)
!3265 = !DILocation(line: 943, column: 60, scope: !3257)
!3266 = !DILocalVariable(name: "o", scope: !3257, file: !130, line: 945, type: !1878)
!3267 = !DILocation(line: 945, column: 32, scope: !3257)
!3268 = !DILocation(line: 945, column: 64, scope: !3257)
!3269 = !DILocation(line: 945, column: 36, scope: !3257)
!3270 = !DILocation(line: 946, column: 30, scope: !3257)
!3271 = !DILocation(line: 946, column: 33, scope: !3257)
!3272 = !DILocation(line: 946, column: 10, scope: !3257)
!3273 = !DILocation(line: 946, column: 3, scope: !3257)
!3274 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !130, file: !130, line: 183, type: !3275, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!164, !132}
!3277 = !DILocalVariable(name: "style", arg: 1, scope: !3274, file: !130, line: 183, type: !132)
!3278 = !DILocation(line: 183, column: 48, scope: !3274)
!3279 = !DILocalVariable(name: "o", scope: !3274, file: !130, line: 185, type: !164)
!3280 = !DILocation(line: 185, column: 26, scope: !3274)
!3281 = !DILocation(line: 186, column: 7, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3274, file: !130, line: 186, column: 7)
!3283 = !DILocation(line: 186, column: 13, scope: !3282)
!3284 = !DILocation(line: 186, column: 7, scope: !3274)
!3285 = !DILocation(line: 187, column: 5, scope: !3282)
!3286 = !DILocation(line: 188, column: 13, scope: !3274)
!3287 = !DILocation(line: 188, column: 5, scope: !3274)
!3288 = !DILocation(line: 188, column: 11, scope: !3274)
!3289 = !DILocation(line: 189, column: 3, scope: !3274)
!3290 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !130, file: !130, line: 950, type: !3291, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!35, !33, !132, !6, !152}
!3293 = !DILocalVariable(name: "n", arg: 1, scope: !3290, file: !130, line: 950, type: !33)
!3294 = !DILocation(line: 950, column: 27, scope: !3290)
!3295 = !DILocalVariable(name: "s", arg: 2, scope: !3290, file: !130, line: 950, type: !132)
!3296 = !DILocation(line: 950, column: 49, scope: !3290)
!3297 = !DILocalVariable(name: "arg", arg: 3, scope: !3290, file: !130, line: 951, type: !6)
!3298 = !DILocation(line: 951, column: 35, scope: !3290)
!3299 = !DILocalVariable(name: "argsize", arg: 4, scope: !3290, file: !130, line: 951, type: !152)
!3300 = !DILocation(line: 951, column: 47, scope: !3290)
!3301 = !DILocalVariable(name: "o", scope: !3290, file: !130, line: 953, type: !1878)
!3302 = !DILocation(line: 953, column: 32, scope: !3290)
!3303 = !DILocation(line: 953, column: 64, scope: !3290)
!3304 = !DILocation(line: 953, column: 36, scope: !3290)
!3305 = !DILocation(line: 954, column: 30, scope: !3290)
!3306 = !DILocation(line: 954, column: 33, scope: !3290)
!3307 = !DILocation(line: 954, column: 38, scope: !3290)
!3308 = !DILocation(line: 954, column: 10, scope: !3290)
!3309 = !DILocation(line: 954, column: 3, scope: !3290)
!3310 = distinct !DISubprogram(name: "quotearg_style", scope: !130, file: !130, line: 958, type: !3311, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!35, !132, !6}
!3313 = !DILocalVariable(name: "s", arg: 1, scope: !3310, file: !130, line: 958, type: !132)
!3314 = !DILocation(line: 958, column: 36, scope: !3310)
!3315 = !DILocalVariable(name: "arg", arg: 2, scope: !3310, file: !130, line: 958, type: !6)
!3316 = !DILocation(line: 958, column: 51, scope: !3310)
!3317 = !DILocation(line: 960, column: 31, scope: !3310)
!3318 = !DILocation(line: 960, column: 34, scope: !3310)
!3319 = !DILocation(line: 960, column: 10, scope: !3310)
!3320 = !DILocation(line: 960, column: 3, scope: !3310)
!3321 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !130, file: !130, line: 964, type: !3322, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!35, !132, !6, !152}
!3324 = !DILocalVariable(name: "s", arg: 1, scope: !3321, file: !130, line: 964, type: !132)
!3325 = !DILocation(line: 964, column: 40, scope: !3321)
!3326 = !DILocalVariable(name: "arg", arg: 2, scope: !3321, file: !130, line: 964, type: !6)
!3327 = !DILocation(line: 964, column: 55, scope: !3321)
!3328 = !DILocalVariable(name: "argsize", arg: 3, scope: !3321, file: !130, line: 964, type: !152)
!3329 = !DILocation(line: 964, column: 67, scope: !3321)
!3330 = !DILocation(line: 966, column: 35, scope: !3321)
!3331 = !DILocation(line: 966, column: 38, scope: !3321)
!3332 = !DILocation(line: 966, column: 43, scope: !3321)
!3333 = !DILocation(line: 966, column: 10, scope: !3321)
!3334 = !DILocation(line: 966, column: 3, scope: !3321)
!3335 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !130, file: !130, line: 970, type: !3336, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!35, !6, !152, !8}
!3338 = !DILocalVariable(name: "arg", arg: 1, scope: !3335, file: !130, line: 970, type: !6)
!3339 = !DILocation(line: 970, column: 32, scope: !3335)
!3340 = !DILocalVariable(name: "argsize", arg: 2, scope: !3335, file: !130, line: 970, type: !152)
!3341 = !DILocation(line: 970, column: 44, scope: !3335)
!3342 = !DILocalVariable(name: "ch", arg: 3, scope: !3335, file: !130, line: 970, type: !8)
!3343 = !DILocation(line: 970, column: 58, scope: !3335)
!3344 = !DILocalVariable(name: "options", scope: !3335, file: !130, line: 972, type: !164)
!3345 = !DILocation(line: 972, column: 26, scope: !3335)
!3346 = !DILocation(line: 973, column: 13, scope: !3335)
!3347 = !DILocation(line: 974, column: 31, scope: !3335)
!3348 = !DILocation(line: 974, column: 3, scope: !3335)
!3349 = !DILocation(line: 975, column: 33, scope: !3335)
!3350 = !DILocation(line: 975, column: 38, scope: !3335)
!3351 = !DILocation(line: 975, column: 10, scope: !3335)
!3352 = !DILocation(line: 975, column: 3, scope: !3335)
!3353 = distinct !DISubprogram(name: "quotearg_char", scope: !130, file: !130, line: 979, type: !3354, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!35, !6, !8}
!3356 = !DILocalVariable(name: "arg", arg: 1, scope: !3353, file: !130, line: 979, type: !6)
!3357 = !DILocation(line: 979, column: 28, scope: !3353)
!3358 = !DILocalVariable(name: "ch", arg: 2, scope: !3353, file: !130, line: 979, type: !8)
!3359 = !DILocation(line: 979, column: 38, scope: !3353)
!3360 = !DILocation(line: 981, column: 29, scope: !3353)
!3361 = !DILocation(line: 981, column: 44, scope: !3353)
!3362 = !DILocation(line: 981, column: 10, scope: !3353)
!3363 = !DILocation(line: 981, column: 3, scope: !3353)
!3364 = distinct !DISubprogram(name: "quotearg_colon", scope: !130, file: !130, line: 985, type: !790, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3365 = !DILocalVariable(name: "arg", arg: 1, scope: !3364, file: !130, line: 985, type: !6)
!3366 = !DILocation(line: 985, column: 29, scope: !3364)
!3367 = !DILocation(line: 987, column: 25, scope: !3364)
!3368 = !DILocation(line: 987, column: 10, scope: !3364)
!3369 = !DILocation(line: 987, column: 3, scope: !3364)
!3370 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !130, file: !130, line: 991, type: !3247, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3371 = !DILocalVariable(name: "arg", arg: 1, scope: !3370, file: !130, line: 991, type: !6)
!3372 = !DILocation(line: 991, column: 33, scope: !3370)
!3373 = !DILocalVariable(name: "argsize", arg: 2, scope: !3370, file: !130, line: 991, type: !152)
!3374 = !DILocation(line: 991, column: 45, scope: !3370)
!3375 = !DILocation(line: 993, column: 29, scope: !3370)
!3376 = !DILocation(line: 993, column: 34, scope: !3370)
!3377 = !DILocation(line: 993, column: 10, scope: !3370)
!3378 = !DILocation(line: 993, column: 3, scope: !3370)
!3379 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !130, file: !130, line: 997, type: !3258, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3380 = !DILocalVariable(name: "n", arg: 1, scope: !3379, file: !130, line: 997, type: !33)
!3381 = !DILocation(line: 997, column: 29, scope: !3379)
!3382 = !DILocalVariable(name: "s", arg: 2, scope: !3379, file: !130, line: 997, type: !132)
!3383 = !DILocation(line: 997, column: 51, scope: !3379)
!3384 = !DILocalVariable(name: "arg", arg: 3, scope: !3379, file: !130, line: 997, type: !6)
!3385 = !DILocation(line: 997, column: 66, scope: !3379)
!3386 = !DILocalVariable(name: "options", scope: !3379, file: !130, line: 999, type: !164)
!3387 = !DILocation(line: 999, column: 26, scope: !3379)
!3388 = !DILocation(line: 1000, column: 41, scope: !3379)
!3389 = !DILocation(line: 1000, column: 13, scope: !3379)
!3390 = !DILocation(line: 1001, column: 3, scope: !3379)
!3391 = !DILocation(line: 1002, column: 30, scope: !3379)
!3392 = !DILocation(line: 1002, column: 33, scope: !3379)
!3393 = !DILocation(line: 1002, column: 10, scope: !3379)
!3394 = !DILocation(line: 1002, column: 3, scope: !3379)
!3395 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !130, file: !130, line: 1006, type: !3396, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!35, !33, !6, !6, !6}
!3398 = !DILocalVariable(name: "n", arg: 1, scope: !3395, file: !130, line: 1006, type: !33)
!3399 = !DILocation(line: 1006, column: 24, scope: !3395)
!3400 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3395, file: !130, line: 1006, type: !6)
!3401 = !DILocation(line: 1006, column: 39, scope: !3395)
!3402 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3395, file: !130, line: 1007, type: !6)
!3403 = !DILocation(line: 1007, column: 32, scope: !3395)
!3404 = !DILocalVariable(name: "arg", arg: 4, scope: !3395, file: !130, line: 1007, type: !6)
!3405 = !DILocation(line: 1007, column: 57, scope: !3395)
!3406 = !DILocation(line: 1009, column: 33, scope: !3395)
!3407 = !DILocation(line: 1009, column: 36, scope: !3395)
!3408 = !DILocation(line: 1009, column: 48, scope: !3395)
!3409 = !DILocation(line: 1009, column: 61, scope: !3395)
!3410 = !DILocation(line: 1009, column: 10, scope: !3395)
!3411 = !DILocation(line: 1009, column: 3, scope: !3395)
!3412 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !130, file: !130, line: 1014, type: !3413, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!35, !33, !6, !6, !6, !152}
!3415 = !DILocalVariable(name: "n", arg: 1, scope: !3412, file: !130, line: 1014, type: !33)
!3416 = !DILocation(line: 1014, column: 28, scope: !3412)
!3417 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3412, file: !130, line: 1014, type: !6)
!3418 = !DILocation(line: 1014, column: 43, scope: !3412)
!3419 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3412, file: !130, line: 1015, type: !6)
!3420 = !DILocation(line: 1015, column: 36, scope: !3412)
!3421 = !DILocalVariable(name: "arg", arg: 4, scope: !3412, file: !130, line: 1016, type: !6)
!3422 = !DILocation(line: 1016, column: 36, scope: !3412)
!3423 = !DILocalVariable(name: "argsize", arg: 5, scope: !3412, file: !130, line: 1016, type: !152)
!3424 = !DILocation(line: 1016, column: 48, scope: !3412)
!3425 = !DILocalVariable(name: "o", scope: !3412, file: !130, line: 1018, type: !164)
!3426 = !DILocation(line: 1018, column: 26, scope: !3412)
!3427 = !DILocation(line: 1018, column: 30, scope: !3412)
!3428 = !DILocation(line: 1019, column: 27, scope: !3412)
!3429 = !DILocation(line: 1019, column: 39, scope: !3412)
!3430 = !DILocation(line: 1019, column: 3, scope: !3412)
!3431 = !DILocation(line: 1020, column: 30, scope: !3412)
!3432 = !DILocation(line: 1020, column: 33, scope: !3412)
!3433 = !DILocation(line: 1020, column: 38, scope: !3412)
!3434 = !DILocation(line: 1020, column: 10, scope: !3412)
!3435 = !DILocation(line: 1020, column: 3, scope: !3412)
!3436 = distinct !DISubprogram(name: "quotearg_custom", scope: !130, file: !130, line: 1024, type: !3437, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!35, !6, !6, !6}
!3439 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3436, file: !130, line: 1024, type: !6)
!3440 = !DILocation(line: 1024, column: 30, scope: !3436)
!3441 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3436, file: !130, line: 1024, type: !6)
!3442 = !DILocation(line: 1024, column: 54, scope: !3436)
!3443 = !DILocalVariable(name: "arg", arg: 3, scope: !3436, file: !130, line: 1025, type: !6)
!3444 = !DILocation(line: 1025, column: 30, scope: !3436)
!3445 = !DILocation(line: 1027, column: 32, scope: !3436)
!3446 = !DILocation(line: 1027, column: 44, scope: !3436)
!3447 = !DILocation(line: 1027, column: 57, scope: !3436)
!3448 = !DILocation(line: 1027, column: 10, scope: !3436)
!3449 = !DILocation(line: 1027, column: 3, scope: !3436)
!3450 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !130, file: !130, line: 1031, type: !3451, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!35, !6, !6, !6, !152}
!3453 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3450, file: !130, line: 1031, type: !6)
!3454 = !DILocation(line: 1031, column: 34, scope: !3450)
!3455 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3450, file: !130, line: 1031, type: !6)
!3456 = !DILocation(line: 1031, column: 58, scope: !3450)
!3457 = !DILocalVariable(name: "arg", arg: 3, scope: !3450, file: !130, line: 1032, type: !6)
!3458 = !DILocation(line: 1032, column: 34, scope: !3450)
!3459 = !DILocalVariable(name: "argsize", arg: 4, scope: !3450, file: !130, line: 1032, type: !152)
!3460 = !DILocation(line: 1032, column: 46, scope: !3450)
!3461 = !DILocation(line: 1034, column: 36, scope: !3450)
!3462 = !DILocation(line: 1034, column: 48, scope: !3450)
!3463 = !DILocation(line: 1034, column: 61, scope: !3450)
!3464 = !DILocation(line: 1035, column: 33, scope: !3450)
!3465 = !DILocation(line: 1034, column: 10, scope: !3450)
!3466 = !DILocation(line: 1034, column: 3, scope: !3450)
!3467 = distinct !DISubprogram(name: "quote_n_mem", scope: !130, file: !130, line: 1049, type: !3468, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!6, !33, !6, !152}
!3470 = !DILocalVariable(name: "n", arg: 1, scope: !3467, file: !130, line: 1049, type: !33)
!3471 = !DILocation(line: 1049, column: 18, scope: !3467)
!3472 = !DILocalVariable(name: "arg", arg: 2, scope: !3467, file: !130, line: 1049, type: !6)
!3473 = !DILocation(line: 1049, column: 33, scope: !3467)
!3474 = !DILocalVariable(name: "argsize", arg: 3, scope: !3467, file: !130, line: 1049, type: !152)
!3475 = !DILocation(line: 1049, column: 45, scope: !3467)
!3476 = !DILocation(line: 1051, column: 30, scope: !3467)
!3477 = !DILocation(line: 1051, column: 33, scope: !3467)
!3478 = !DILocation(line: 1051, column: 38, scope: !3467)
!3479 = !DILocation(line: 1051, column: 10, scope: !3467)
!3480 = !DILocation(line: 1051, column: 3, scope: !3467)
!3481 = distinct !DISubprogram(name: "quote_mem", scope: !130, file: !130, line: 1055, type: !3482, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!6, !6, !152}
!3484 = !DILocalVariable(name: "arg", arg: 1, scope: !3481, file: !130, line: 1055, type: !6)
!3485 = !DILocation(line: 1055, column: 24, scope: !3481)
!3486 = !DILocalVariable(name: "argsize", arg: 2, scope: !3481, file: !130, line: 1055, type: !152)
!3487 = !DILocation(line: 1055, column: 36, scope: !3481)
!3488 = !DILocation(line: 1057, column: 26, scope: !3481)
!3489 = !DILocation(line: 1057, column: 31, scope: !3481)
!3490 = !DILocation(line: 1057, column: 10, scope: !3481)
!3491 = !DILocation(line: 1057, column: 3, scope: !3481)
!3492 = distinct !DISubprogram(name: "quote_n", scope: !130, file: !130, line: 1061, type: !3493, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!6, !33, !6}
!3495 = !DILocalVariable(name: "n", arg: 1, scope: !3492, file: !130, line: 1061, type: !33)
!3496 = !DILocation(line: 1061, column: 14, scope: !3492)
!3497 = !DILocalVariable(name: "arg", arg: 2, scope: !3492, file: !130, line: 1061, type: !6)
!3498 = !DILocation(line: 1061, column: 29, scope: !3492)
!3499 = !DILocation(line: 1063, column: 23, scope: !3492)
!3500 = !DILocation(line: 1063, column: 26, scope: !3492)
!3501 = !DILocation(line: 1063, column: 10, scope: !3492)
!3502 = !DILocation(line: 1063, column: 3, scope: !3492)
!3503 = distinct !DISubprogram(name: "quote", scope: !130, file: !130, line: 1067, type: !3504, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !37)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!6, !6}
!3506 = !DILocalVariable(name: "arg", arg: 1, scope: !3503, file: !130, line: 1067, type: !6)
!3507 = !DILocation(line: 1067, column: 20, scope: !3503)
!3508 = !DILocation(line: 1069, column: 22, scope: !3503)
!3509 = !DILocation(line: 1069, column: 10, scope: !3503)
!3510 = !DILocation(line: 1069, column: 3, scope: !3503)
!3511 = distinct !DISubprogram(name: "safe_write", scope: !3512, file: !3512, line: 56, type: !3513, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !259, retainedNodes: !37)
!3512 = !DIFile(filename: "./lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!291, !33, !3515, !289}
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !3512, line: 45, baseType: !1468)
!3516 = !DILocalVariable(name: "fd", arg: 1, scope: !3511, file: !3512, line: 56, type: !33)
!3517 = !DILocation(line: 56, column: 14, scope: !3511)
!3518 = !DILocalVariable(name: "buf", arg: 2, scope: !3511, file: !3512, line: 56, type: !3515)
!3519 = !DILocation(line: 56, column: 25, scope: !3511)
!3520 = !DILocalVariable(name: "count", arg: 3, scope: !3511, file: !3512, line: 56, type: !289)
!3521 = !DILocation(line: 56, column: 36, scope: !3511)
!3522 = !DILocation(line: 58, column: 3, scope: !3511)
!3523 = !DILocalVariable(name: "result", scope: !3524, file: !3512, line: 60, type: !3527)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !3512, line: 59, column: 5)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !3512, line: 58, column: 3)
!3526 = distinct !DILexicalBlock(scope: !3511, file: !3512, line: 58, column: 3)
!3527 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1523, line: 108, baseType: !884)
!3528 = !DILocation(line: 60, column: 15, scope: !3524)
!3529 = !DILocation(line: 60, column: 28, scope: !3524)
!3530 = !DILocation(line: 60, column: 32, scope: !3524)
!3531 = !DILocation(line: 60, column: 37, scope: !3524)
!3532 = !DILocation(line: 60, column: 43, scope: !3524)
!3533 = !DILocation(line: 60, column: 60, scope: !3524)
!3534 = !DILocation(line: 60, column: 24, scope: !3524)
!3535 = !DILocation(line: 62, column: 16, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3524, file: !3512, line: 62, column: 11)
!3537 = !DILocation(line: 62, column: 13, scope: !3536)
!3538 = !DILocation(line: 62, column: 11, scope: !3524)
!3539 = !DILocation(line: 63, column: 16, scope: !3536)
!3540 = !DILocation(line: 63, column: 9, scope: !3536)
!3541 = !DILocation(line: 64, column: 16, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3536, file: !3512, line: 64, column: 16)
!3543 = !DILocation(line: 64, column: 16, scope: !3536)
!3544 = !DILocation(line: 65, column: 9, scope: !3542)
!3545 = distinct !{!3545, !3546, !3547}
!3546 = !DILocation(line: 58, column: 3, scope: !3526)
!3547 = !DILocation(line: 70, column: 5, scope: !3526)
!3548 = !DILocation(line: 66, column: 16, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3542, file: !3512, line: 66, column: 16)
!3550 = !DILocation(line: 66, column: 22, scope: !3549)
!3551 = !DILocation(line: 66, column: 32, scope: !3549)
!3552 = !DILocation(line: 66, column: 53, scope: !3549)
!3553 = !DILocation(line: 66, column: 51, scope: !3549)
!3554 = !DILocation(line: 66, column: 16, scope: !3542)
!3555 = !DILocation(line: 67, column: 15, scope: !3549)
!3556 = !DILocation(line: 67, column: 9, scope: !3549)
!3557 = !DILocation(line: 69, column: 16, scope: !3549)
!3558 = !DILocation(line: 69, column: 9, scope: !3549)
!3559 = !DILocation(line: 58, column: 3, scope: !3525)
!3560 = !DILocation(line: 71, column: 1, scope: !3511)
!3561 = distinct !DISubprogram(name: "streq", scope: !3562, file: !3562, line: 1359, type: !3563, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !37)
!3562 = !DIFile(filename: "./lib/string.h", directory: "/src")
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!50, !6, !6}
!3565 = !DILocalVariable(name: "__s1", arg: 1, scope: !3561, file: !3562, line: 1359, type: !6)
!3566 = !DILocation(line: 1359, column: 20, scope: !3561)
!3567 = !DILocalVariable(name: "__s2", arg: 2, scope: !3561, file: !3562, line: 1359, type: !6)
!3568 = !DILocation(line: 1359, column: 38, scope: !3561)
!3569 = !DILocation(line: 1361, column: 19, scope: !3561)
!3570 = !DILocation(line: 1361, column: 25, scope: !3561)
!3571 = !DILocation(line: 1361, column: 11, scope: !3561)
!3572 = !DILocation(line: 1361, column: 10, scope: !3561)
!3573 = !DILocation(line: 1361, column: 3, scope: !3561)
!3574 = distinct !DISubprogram(name: "version_etc_arn", scope: !269, file: !269, line: 61, type: !3575, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !37)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{null, !3577, !6, !6, !6, !3629, !152}
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3579, line: 7, baseType: !3580)
!3579 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3581, line: 49, size: 1728, elements: !3582)
!3581 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!3582 = !{!3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3598, !3600, !3601, !3602, !3603, !3604, !3606, !3610, !3613, !3615, !3618, !3621, !3622, !3623, !3624, !3625}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3580, file: !3581, line: 51, baseType: !33, size: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3580, file: !3581, line: 54, baseType: !35, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3580, file: !3581, line: 55, baseType: !35, size: 64, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3580, file: !3581, line: 56, baseType: !35, size: 64, offset: 192)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3580, file: !3581, line: 57, baseType: !35, size: 64, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3580, file: !3581, line: 58, baseType: !35, size: 64, offset: 320)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3580, file: !3581, line: 59, baseType: !35, size: 64, offset: 384)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3580, file: !3581, line: 60, baseType: !35, size: 64, offset: 448)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3580, file: !3581, line: 61, baseType: !35, size: 64, offset: 512)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3580, file: !3581, line: 64, baseType: !35, size: 64, offset: 576)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3580, file: !3581, line: 65, baseType: !35, size: 64, offset: 640)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3580, file: !3581, line: 66, baseType: !35, size: 64, offset: 704)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3580, file: !3581, line: 68, baseType: !3596, size: 64, offset: 768)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3581, line: 36, flags: DIFlagFwdDecl)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3580, file: !3581, line: 70, baseType: !3599, size: 64, offset: 832)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3580, file: !3581, line: 72, baseType: !33, size: 32, offset: 896)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3580, file: !3581, line: 73, baseType: !33, size: 32, offset: 928)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3580, file: !3581, line: 74, baseType: !1546, size: 64, offset: 960)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3580, file: !3581, line: 77, baseType: !34, size: 16, offset: 1024)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3580, file: !3581, line: 78, baseType: !3605, size: 8, offset: 1040)
!3605 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3580, file: !3581, line: 79, baseType: !3607, size: 8, offset: 1048)
!3607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !3608)
!3608 = !{!3609}
!3609 = !DISubrange(count: 1)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3580, file: !3581, line: 81, baseType: !3611, size: 64, offset: 1088)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3581, line: 43, baseType: null)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3580, file: !3581, line: 89, baseType: !3614, size: 64, offset: 1152)
!3614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !885, line: 153, baseType: !292)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3580, file: !3581, line: 91, baseType: !3616, size: 64, offset: 1216)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3581, line: 37, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3580, file: !3581, line: 92, baseType: !3619, size: 64, offset: 1280)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3581, line: 38, flags: DIFlagFwdDecl)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3580, file: !3581, line: 93, baseType: !3599, size: 64, offset: 1344)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3580, file: !3581, line: 94, baseType: !32, size: 64, offset: 1408)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3580, file: !3581, line: 95, baseType: !152, size: 64, offset: 1472)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3580, file: !3581, line: 96, baseType: !33, size: 32, offset: 1536)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3580, file: !3581, line: 98, baseType: !3626, size: 160, offset: 1568)
!3626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !3627)
!3627 = !{!3628}
!3628 = !DISubrange(count: 20)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!3630 = !DILocalVariable(name: "stream", arg: 1, scope: !3574, file: !269, line: 61, type: !3577)
!3631 = !DILocation(line: 61, column: 24, scope: !3574)
!3632 = !DILocalVariable(name: "command_name", arg: 2, scope: !3574, file: !269, line: 62, type: !6)
!3633 = !DILocation(line: 62, column: 30, scope: !3574)
!3634 = !DILocalVariable(name: "package", arg: 3, scope: !3574, file: !269, line: 62, type: !6)
!3635 = !DILocation(line: 62, column: 56, scope: !3574)
!3636 = !DILocalVariable(name: "version", arg: 4, scope: !3574, file: !269, line: 63, type: !6)
!3637 = !DILocation(line: 63, column: 30, scope: !3574)
!3638 = !DILocalVariable(name: "authors", arg: 5, scope: !3574, file: !269, line: 64, type: !3629)
!3639 = !DILocation(line: 64, column: 39, scope: !3574)
!3640 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3574, file: !269, line: 64, type: !152)
!3641 = !DILocation(line: 64, column: 55, scope: !3574)
!3642 = !DILocation(line: 66, column: 7, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3574, file: !269, line: 66, column: 7)
!3644 = !DILocation(line: 66, column: 7, scope: !3574)
!3645 = !DILocation(line: 67, column: 14, scope: !3643)
!3646 = !DILocation(line: 67, column: 38, scope: !3643)
!3647 = !DILocation(line: 67, column: 52, scope: !3643)
!3648 = !DILocation(line: 67, column: 61, scope: !3643)
!3649 = !DILocation(line: 67, column: 5, scope: !3643)
!3650 = !DILocation(line: 69, column: 14, scope: !3643)
!3651 = !DILocation(line: 69, column: 33, scope: !3643)
!3652 = !DILocation(line: 69, column: 42, scope: !3643)
!3653 = !DILocation(line: 69, column: 5, scope: !3643)
!3654 = !DILocation(line: 83, column: 12, scope: !3574)
!3655 = !DILocation(line: 83, column: 43, scope: !3574)
!3656 = !DILocation(line: 83, column: 3, scope: !3574)
!3657 = !DILocation(line: 85, column: 3, scope: !3574)
!3658 = !DILocation(line: 88, column: 12, scope: !3574)
!3659 = !DILocation(line: 88, column: 20, scope: !3574)
!3660 = !DILocation(line: 88, column: 3, scope: !3574)
!3661 = !DILocation(line: 95, column: 3, scope: !3574)
!3662 = !DILocation(line: 97, column: 11, scope: !3574)
!3663 = !DILocation(line: 97, column: 3, scope: !3574)
!3664 = !DILocation(line: 102, column: 7, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3574, file: !269, line: 98, column: 5)
!3666 = !DILocation(line: 105, column: 16, scope: !3665)
!3667 = !DILocation(line: 105, column: 24, scope: !3665)
!3668 = !DILocation(line: 105, column: 47, scope: !3665)
!3669 = !DILocation(line: 105, column: 7, scope: !3665)
!3670 = !DILocation(line: 106, column: 7, scope: !3665)
!3671 = !DILocation(line: 109, column: 16, scope: !3665)
!3672 = !DILocation(line: 109, column: 24, scope: !3665)
!3673 = !DILocation(line: 109, column: 54, scope: !3665)
!3674 = !DILocation(line: 109, column: 66, scope: !3665)
!3675 = !DILocation(line: 109, column: 7, scope: !3665)
!3676 = !DILocation(line: 110, column: 7, scope: !3665)
!3677 = !DILocation(line: 113, column: 16, scope: !3665)
!3678 = !DILocation(line: 113, column: 24, scope: !3665)
!3679 = !DILocation(line: 114, column: 16, scope: !3665)
!3680 = !DILocation(line: 114, column: 28, scope: !3665)
!3681 = !DILocation(line: 114, column: 40, scope: !3665)
!3682 = !DILocation(line: 113, column: 7, scope: !3665)
!3683 = !DILocation(line: 115, column: 7, scope: !3665)
!3684 = !DILocation(line: 120, column: 16, scope: !3665)
!3685 = !DILocation(line: 120, column: 24, scope: !3665)
!3686 = !DILocation(line: 121, column: 16, scope: !3665)
!3687 = !DILocation(line: 121, column: 28, scope: !3665)
!3688 = !DILocation(line: 121, column: 40, scope: !3665)
!3689 = !DILocation(line: 121, column: 52, scope: !3665)
!3690 = !DILocation(line: 120, column: 7, scope: !3665)
!3691 = !DILocation(line: 122, column: 7, scope: !3665)
!3692 = !DILocation(line: 127, column: 16, scope: !3665)
!3693 = !DILocation(line: 127, column: 24, scope: !3665)
!3694 = !DILocation(line: 128, column: 16, scope: !3665)
!3695 = !DILocation(line: 128, column: 28, scope: !3665)
!3696 = !DILocation(line: 128, column: 40, scope: !3665)
!3697 = !DILocation(line: 128, column: 52, scope: !3665)
!3698 = !DILocation(line: 128, column: 64, scope: !3665)
!3699 = !DILocation(line: 127, column: 7, scope: !3665)
!3700 = !DILocation(line: 129, column: 7, scope: !3665)
!3701 = !DILocation(line: 134, column: 16, scope: !3665)
!3702 = !DILocation(line: 134, column: 24, scope: !3665)
!3703 = !DILocation(line: 135, column: 16, scope: !3665)
!3704 = !DILocation(line: 135, column: 28, scope: !3665)
!3705 = !DILocation(line: 135, column: 40, scope: !3665)
!3706 = !DILocation(line: 135, column: 52, scope: !3665)
!3707 = !DILocation(line: 135, column: 64, scope: !3665)
!3708 = !DILocation(line: 136, column: 16, scope: !3665)
!3709 = !DILocation(line: 134, column: 7, scope: !3665)
!3710 = !DILocation(line: 137, column: 7, scope: !3665)
!3711 = !DILocation(line: 142, column: 16, scope: !3665)
!3712 = !DILocation(line: 142, column: 24, scope: !3665)
!3713 = !DILocation(line: 143, column: 16, scope: !3665)
!3714 = !DILocation(line: 143, column: 28, scope: !3665)
!3715 = !DILocation(line: 143, column: 40, scope: !3665)
!3716 = !DILocation(line: 143, column: 52, scope: !3665)
!3717 = !DILocation(line: 143, column: 64, scope: !3665)
!3718 = !DILocation(line: 144, column: 16, scope: !3665)
!3719 = !DILocation(line: 144, column: 28, scope: !3665)
!3720 = !DILocation(line: 142, column: 7, scope: !3665)
!3721 = !DILocation(line: 145, column: 7, scope: !3665)
!3722 = !DILocation(line: 150, column: 16, scope: !3665)
!3723 = !DILocation(line: 150, column: 24, scope: !3665)
!3724 = !DILocation(line: 152, column: 17, scope: !3665)
!3725 = !DILocation(line: 152, column: 29, scope: !3665)
!3726 = !DILocation(line: 152, column: 41, scope: !3665)
!3727 = !DILocation(line: 152, column: 53, scope: !3665)
!3728 = !DILocation(line: 152, column: 65, scope: !3665)
!3729 = !DILocation(line: 153, column: 17, scope: !3665)
!3730 = !DILocation(line: 153, column: 29, scope: !3665)
!3731 = !DILocation(line: 153, column: 41, scope: !3665)
!3732 = !DILocation(line: 150, column: 7, scope: !3665)
!3733 = !DILocation(line: 154, column: 7, scope: !3665)
!3734 = !DILocation(line: 159, column: 16, scope: !3665)
!3735 = !DILocation(line: 159, column: 24, scope: !3665)
!3736 = !DILocation(line: 161, column: 16, scope: !3665)
!3737 = !DILocation(line: 161, column: 28, scope: !3665)
!3738 = !DILocation(line: 161, column: 40, scope: !3665)
!3739 = !DILocation(line: 161, column: 52, scope: !3665)
!3740 = !DILocation(line: 161, column: 64, scope: !3665)
!3741 = !DILocation(line: 162, column: 16, scope: !3665)
!3742 = !DILocation(line: 162, column: 28, scope: !3665)
!3743 = !DILocation(line: 162, column: 40, scope: !3665)
!3744 = !DILocation(line: 162, column: 52, scope: !3665)
!3745 = !DILocation(line: 159, column: 7, scope: !3665)
!3746 = !DILocation(line: 163, column: 7, scope: !3665)
!3747 = !DILocation(line: 170, column: 16, scope: !3665)
!3748 = !DILocation(line: 170, column: 24, scope: !3665)
!3749 = !DILocation(line: 172, column: 17, scope: !3665)
!3750 = !DILocation(line: 172, column: 29, scope: !3665)
!3751 = !DILocation(line: 172, column: 41, scope: !3665)
!3752 = !DILocation(line: 172, column: 53, scope: !3665)
!3753 = !DILocation(line: 172, column: 65, scope: !3665)
!3754 = !DILocation(line: 173, column: 17, scope: !3665)
!3755 = !DILocation(line: 173, column: 29, scope: !3665)
!3756 = !DILocation(line: 173, column: 41, scope: !3665)
!3757 = !DILocation(line: 173, column: 53, scope: !3665)
!3758 = !DILocation(line: 170, column: 7, scope: !3665)
!3759 = !DILocation(line: 174, column: 7, scope: !3665)
!3760 = !DILocation(line: 176, column: 1, scope: !3574)
!3761 = distinct !DISubprogram(name: "version_etc_ar", scope: !269, file: !269, line: 183, type: !3762, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !37)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null, !3577, !6, !6, !6, !3629}
!3764 = !DILocalVariable(name: "stream", arg: 1, scope: !3761, file: !269, line: 183, type: !3577)
!3765 = !DILocation(line: 183, column: 23, scope: !3761)
!3766 = !DILocalVariable(name: "command_name", arg: 2, scope: !3761, file: !269, line: 184, type: !6)
!3767 = !DILocation(line: 184, column: 29, scope: !3761)
!3768 = !DILocalVariable(name: "package", arg: 3, scope: !3761, file: !269, line: 184, type: !6)
!3769 = !DILocation(line: 184, column: 55, scope: !3761)
!3770 = !DILocalVariable(name: "version", arg: 4, scope: !3761, file: !269, line: 185, type: !6)
!3771 = !DILocation(line: 185, column: 29, scope: !3761)
!3772 = !DILocalVariable(name: "authors", arg: 5, scope: !3761, file: !269, line: 185, type: !3629)
!3773 = !DILocation(line: 185, column: 59, scope: !3761)
!3774 = !DILocalVariable(name: "n_authors", scope: !3761, file: !269, line: 187, type: !152)
!3775 = !DILocation(line: 187, column: 10, scope: !3761)
!3776 = !DILocation(line: 189, column: 18, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3761, file: !269, line: 189, column: 3)
!3778 = !DILocation(line: 189, column: 8, scope: !3777)
!3779 = !DILocation(line: 189, column: 23, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3777, file: !269, line: 189, column: 3)
!3781 = !DILocation(line: 189, column: 31, scope: !3780)
!3782 = !DILocation(line: 189, column: 3, scope: !3777)
!3783 = !DILocation(line: 189, column: 52, scope: !3780)
!3784 = !DILocation(line: 189, column: 3, scope: !3780)
!3785 = distinct !{!3785, !3782, !3786, !433}
!3786 = !DILocation(line: 190, column: 5, scope: !3777)
!3787 = !DILocation(line: 191, column: 20, scope: !3761)
!3788 = !DILocation(line: 191, column: 28, scope: !3761)
!3789 = !DILocation(line: 191, column: 42, scope: !3761)
!3790 = !DILocation(line: 191, column: 51, scope: !3761)
!3791 = !DILocation(line: 191, column: 60, scope: !3761)
!3792 = !DILocation(line: 191, column: 69, scope: !3761)
!3793 = !DILocation(line: 191, column: 3, scope: !3761)
!3794 = !DILocation(line: 192, column: 1, scope: !3761)
!3795 = distinct !DISubprogram(name: "version_etc_va", scope: !269, file: !269, line: 199, type: !3796, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !37)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{null, !3577, !6, !6, !6, !3798}
!3798 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !63, line: 52, baseType: !3799)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !65, line: 32, baseType: !3800)
!3800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3801, baseType: !3802)
!3801 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !69, size: 256, elements: !3803)
!3803 = !{!3804, !3805, !3806, !3807, !3808}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3802, file: !3801, line: 192, baseType: !32, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3802, file: !3801, line: 192, baseType: !32, size: 64, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3802, file: !3801, line: 192, baseType: !32, size: 64, offset: 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3802, file: !3801, line: 192, baseType: !33, size: 32, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3802, file: !3801, line: 192, baseType: !33, size: 32, offset: 224)
!3809 = !DILocalVariable(name: "stream", arg: 1, scope: !3795, file: !269, line: 199, type: !3577)
!3810 = !DILocation(line: 199, column: 23, scope: !3795)
!3811 = !DILocalVariable(name: "command_name", arg: 2, scope: !3795, file: !269, line: 200, type: !6)
!3812 = !DILocation(line: 200, column: 29, scope: !3795)
!3813 = !DILocalVariable(name: "package", arg: 3, scope: !3795, file: !269, line: 200, type: !6)
!3814 = !DILocation(line: 200, column: 55, scope: !3795)
!3815 = !DILocalVariable(name: "version", arg: 4, scope: !3795, file: !269, line: 201, type: !6)
!3816 = !DILocation(line: 201, column: 29, scope: !3795)
!3817 = !DILocalVariable(name: "authors", arg: 5, scope: !3795, file: !269, line: 201, type: !3798)
!3818 = !DILocation(line: 201, column: 46, scope: !3795)
!3819 = !DILocalVariable(name: "n_authors", scope: !3795, file: !269, line: 203, type: !152)
!3820 = !DILocation(line: 203, column: 10, scope: !3795)
!3821 = !DILocalVariable(name: "authtab", scope: !3795, file: !269, line: 204, type: !3822)
!3822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !160)
!3823 = !DILocation(line: 204, column: 15, scope: !3795)
!3824 = !DILocation(line: 206, column: 18, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3795, file: !269, line: 206, column: 3)
!3826 = !DILocation(line: 206, column: 8, scope: !3825)
!3827 = !DILocation(line: 207, column: 8, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3825, file: !269, line: 206, column: 3)
!3829 = !DILocation(line: 207, column: 18, scope: !3828)
!3830 = !DILocation(line: 208, column: 10, scope: !3828)
!3831 = !DILocation(line: 208, column: 35, scope: !3828)
!3832 = !DILocation(line: 208, column: 22, scope: !3828)
!3833 = !DILocation(line: 208, column: 14, scope: !3828)
!3834 = !DILocation(line: 208, column: 33, scope: !3828)
!3835 = !DILocation(line: 208, column: 67, scope: !3828)
!3836 = !DILocation(line: 0, scope: !3828)
!3837 = !DILocation(line: 206, column: 3, scope: !3825)
!3838 = !DILocation(line: 209, column: 17, scope: !3828)
!3839 = !DILocation(line: 206, column: 3, scope: !3828)
!3840 = distinct !{!3840, !3837, !3841, !433}
!3841 = !DILocation(line: 210, column: 5, scope: !3825)
!3842 = !DILocation(line: 211, column: 20, scope: !3795)
!3843 = !DILocation(line: 211, column: 28, scope: !3795)
!3844 = !DILocation(line: 211, column: 42, scope: !3795)
!3845 = !DILocation(line: 211, column: 51, scope: !3795)
!3846 = !DILocation(line: 212, column: 20, scope: !3795)
!3847 = !DILocation(line: 212, column: 29, scope: !3795)
!3848 = !DILocation(line: 211, column: 3, scope: !3795)
!3849 = !DILocation(line: 213, column: 1, scope: !3795)
!3850 = distinct !DISubprogram(name: "version_etc", scope: !269, file: !269, line: 230, type: !3851, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !37)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{null, !3577, !6, !6, !6, null}
!3853 = !DILocalVariable(name: "stream", arg: 1, scope: !3850, file: !269, line: 230, type: !3577)
!3854 = !DILocation(line: 230, column: 20, scope: !3850)
!3855 = !DILocalVariable(name: "command_name", arg: 2, scope: !3850, file: !269, line: 231, type: !6)
!3856 = !DILocation(line: 231, column: 26, scope: !3850)
!3857 = !DILocalVariable(name: "package", arg: 3, scope: !3850, file: !269, line: 231, type: !6)
!3858 = !DILocation(line: 231, column: 52, scope: !3850)
!3859 = !DILocalVariable(name: "version", arg: 4, scope: !3850, file: !269, line: 232, type: !6)
!3860 = !DILocation(line: 232, column: 26, scope: !3850)
!3861 = !DILocalVariable(name: "authors", scope: !3850, file: !269, line: 234, type: !3798)
!3862 = !DILocation(line: 234, column: 11, scope: !3850)
!3863 = !DILocation(line: 235, column: 3, scope: !3850)
!3864 = !DILocation(line: 236, column: 19, scope: !3850)
!3865 = !DILocation(line: 236, column: 27, scope: !3850)
!3866 = !DILocation(line: 236, column: 41, scope: !3850)
!3867 = !DILocation(line: 236, column: 50, scope: !3850)
!3868 = !DILocation(line: 236, column: 3, scope: !3850)
!3869 = !DILocation(line: 237, column: 3, scope: !3850)
!3870 = !DILocation(line: 238, column: 1, scope: !3850)
!3871 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !269, file: !269, line: 241, type: !83, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !37)
!3872 = !DILocation(line: 243, column: 3, scope: !3871)
!3873 = !DILocation(line: 248, column: 11, scope: !3871)
!3874 = !DILocation(line: 248, column: 3, scope: !3871)
!3875 = !DILocation(line: 254, column: 11, scope: !3871)
!3876 = !DILocation(line: 254, column: 3, scope: !3871)
!3877 = !DILocation(line: 259, column: 11, scope: !3871)
!3878 = !DILocation(line: 259, column: 3, scope: !3871)
!3879 = !DILocation(line: 261, column: 1, scope: !3871)
!3880 = distinct !DISubprogram(name: "xnrealloc", scope: !3881, file: !3881, line: 147, type: !3882, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!3881 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!32, !32, !152, !152}
!3884 = !DILocalVariable(name: "p", arg: 1, scope: !3880, file: !3881, line: 147, type: !32)
!3885 = !DILocation(line: 147, column: 18, scope: !3880)
!3886 = !DILocalVariable(name: "n", arg: 2, scope: !3880, file: !3881, line: 147, type: !152)
!3887 = !DILocation(line: 147, column: 28, scope: !3880)
!3888 = !DILocalVariable(name: "s", arg: 3, scope: !3880, file: !3881, line: 147, type: !152)
!3889 = !DILocation(line: 147, column: 38, scope: !3880)
!3890 = !DILocation(line: 149, column: 25, scope: !3880)
!3891 = !DILocation(line: 149, column: 28, scope: !3880)
!3892 = !DILocation(line: 149, column: 31, scope: !3880)
!3893 = !DILocation(line: 149, column: 10, scope: !3880)
!3894 = !DILocation(line: 149, column: 3, scope: !3880)
!3895 = distinct !DISubprogram(name: "xreallocarray", scope: !275, file: !275, line: 83, type: !3882, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!3896 = !DILocalVariable(name: "p", arg: 1, scope: !3895, file: !275, line: 83, type: !32)
!3897 = !DILocation(line: 83, column: 22, scope: !3895)
!3898 = !DILocalVariable(name: "n", arg: 2, scope: !3895, file: !275, line: 83, type: !152)
!3899 = !DILocation(line: 83, column: 32, scope: !3895)
!3900 = !DILocalVariable(name: "s", arg: 3, scope: !3895, file: !275, line: 83, type: !152)
!3901 = !DILocation(line: 83, column: 42, scope: !3895)
!3902 = !DILocation(line: 85, column: 39, scope: !3895)
!3903 = !DILocation(line: 85, column: 42, scope: !3895)
!3904 = !DILocation(line: 85, column: 45, scope: !3895)
!3905 = !DILocation(line: 85, column: 25, scope: !3895)
!3906 = !DILocation(line: 85, column: 10, scope: !3895)
!3907 = !DILocation(line: 85, column: 3, scope: !3895)
!3908 = distinct !DISubprogram(name: "check_nonnull", scope: !275, file: !275, line: 37, type: !3909, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !274, retainedNodes: !37)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!32, !32}
!3911 = !DILocalVariable(name: "p", arg: 1, scope: !3908, file: !275, line: 37, type: !32)
!3912 = !DILocation(line: 37, column: 22, scope: !3908)
!3913 = !DILocation(line: 39, column: 8, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3908, file: !275, line: 39, column: 7)
!3915 = !DILocation(line: 39, column: 7, scope: !3908)
!3916 = !DILocation(line: 40, column: 5, scope: !3914)
!3917 = !DILocation(line: 41, column: 10, scope: !3908)
!3918 = !DILocation(line: 41, column: 3, scope: !3908)
!3919 = distinct !DISubprogram(name: "xmalloc", scope: !275, file: !275, line: 47, type: !3920, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!32, !152}
!3922 = !DILocalVariable(name: "s", arg: 1, scope: !3919, file: !275, line: 47, type: !152)
!3923 = !DILocation(line: 47, column: 17, scope: !3919)
!3924 = !DILocation(line: 49, column: 33, scope: !3919)
!3925 = !DILocation(line: 49, column: 25, scope: !3919)
!3926 = !DILocation(line: 49, column: 10, scope: !3919)
!3927 = !DILocation(line: 49, column: 3, scope: !3919)
!3928 = distinct !DISubprogram(name: "ximalloc", scope: !275, file: !275, line: 53, type: !3929, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!32, !289}
!3931 = !DILocalVariable(name: "s", arg: 1, scope: !3928, file: !275, line: 53, type: !289)
!3932 = !DILocation(line: 53, column: 17, scope: !3928)
!3933 = !DILocation(line: 55, column: 34, scope: !3928)
!3934 = !DILocation(line: 55, column: 25, scope: !3928)
!3935 = !DILocation(line: 55, column: 10, scope: !3928)
!3936 = !DILocation(line: 55, column: 3, scope: !3928)
!3937 = distinct !DISubprogram(name: "xcharalloc", scope: !275, file: !275, line: 59, type: !3938, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!35, !152}
!3940 = !DILocalVariable(name: "n", arg: 1, scope: !3937, file: !275, line: 59, type: !152)
!3941 = !DILocation(line: 59, column: 20, scope: !3937)
!3942 = !DILocation(line: 61, column: 10, scope: !3937)
!3943 = !DILocation(line: 61, column: 3, scope: !3937)
!3944 = distinct !DISubprogram(name: "xrealloc", scope: !275, file: !275, line: 68, type: !3945, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!32, !32, !152}
!3947 = !DILocalVariable(name: "p", arg: 1, scope: !3944, file: !275, line: 68, type: !32)
!3948 = !DILocation(line: 68, column: 17, scope: !3944)
!3949 = !DILocalVariable(name: "s", arg: 2, scope: !3944, file: !275, line: 68, type: !152)
!3950 = !DILocation(line: 68, column: 27, scope: !3944)
!3951 = !DILocation(line: 70, column: 34, scope: !3944)
!3952 = !DILocation(line: 70, column: 37, scope: !3944)
!3953 = !DILocation(line: 70, column: 25, scope: !3944)
!3954 = !DILocation(line: 70, column: 10, scope: !3944)
!3955 = !DILocation(line: 70, column: 3, scope: !3944)
!3956 = distinct !DISubprogram(name: "xirealloc", scope: !275, file: !275, line: 74, type: !3957, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!32, !32, !289}
!3959 = !DILocalVariable(name: "p", arg: 1, scope: !3956, file: !275, line: 74, type: !32)
!3960 = !DILocation(line: 74, column: 18, scope: !3956)
!3961 = !DILocalVariable(name: "s", arg: 2, scope: !3956, file: !275, line: 74, type: !289)
!3962 = !DILocation(line: 74, column: 27, scope: !3956)
!3963 = !DILocation(line: 76, column: 35, scope: !3956)
!3964 = !DILocation(line: 76, column: 38, scope: !3956)
!3965 = !DILocation(line: 76, column: 25, scope: !3956)
!3966 = !DILocation(line: 76, column: 10, scope: !3956)
!3967 = !DILocation(line: 76, column: 3, scope: !3956)
!3968 = distinct !DISubprogram(name: "xireallocarray", scope: !275, file: !275, line: 89, type: !3969, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!32, !32, !289, !289}
!3971 = !DILocalVariable(name: "p", arg: 1, scope: !3968, file: !275, line: 89, type: !32)
!3972 = !DILocation(line: 89, column: 23, scope: !3968)
!3973 = !DILocalVariable(name: "n", arg: 2, scope: !3968, file: !275, line: 89, type: !289)
!3974 = !DILocation(line: 89, column: 32, scope: !3968)
!3975 = !DILocalVariable(name: "s", arg: 3, scope: !3968, file: !275, line: 89, type: !289)
!3976 = !DILocation(line: 89, column: 41, scope: !3968)
!3977 = !DILocation(line: 91, column: 40, scope: !3968)
!3978 = !DILocation(line: 91, column: 43, scope: !3968)
!3979 = !DILocation(line: 91, column: 46, scope: !3968)
!3980 = !DILocation(line: 91, column: 25, scope: !3968)
!3981 = !DILocation(line: 91, column: 10, scope: !3968)
!3982 = !DILocation(line: 91, column: 3, scope: !3968)
!3983 = distinct !DISubprogram(name: "xnmalloc", scope: !275, file: !275, line: 98, type: !3984, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!32, !152, !152}
!3986 = !DILocalVariable(name: "n", arg: 1, scope: !3983, file: !275, line: 98, type: !152)
!3987 = !DILocation(line: 98, column: 18, scope: !3983)
!3988 = !DILocalVariable(name: "s", arg: 2, scope: !3983, file: !275, line: 98, type: !152)
!3989 = !DILocation(line: 98, column: 28, scope: !3983)
!3990 = !DILocation(line: 100, column: 31, scope: !3983)
!3991 = !DILocation(line: 100, column: 34, scope: !3983)
!3992 = !DILocation(line: 100, column: 10, scope: !3983)
!3993 = !DILocation(line: 100, column: 3, scope: !3983)
!3994 = distinct !DISubprogram(name: "xinmalloc", scope: !275, file: !275, line: 104, type: !1055, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!3995 = !DILocalVariable(name: "n", arg: 1, scope: !3994, file: !275, line: 104, type: !289)
!3996 = !DILocation(line: 104, column: 18, scope: !3994)
!3997 = !DILocalVariable(name: "s", arg: 2, scope: !3994, file: !275, line: 104, type: !289)
!3998 = !DILocation(line: 104, column: 27, scope: !3994)
!3999 = !DILocation(line: 106, column: 32, scope: !3994)
!4000 = !DILocation(line: 106, column: 35, scope: !3994)
!4001 = !DILocation(line: 106, column: 10, scope: !3994)
!4002 = !DILocation(line: 106, column: 3, scope: !3994)
!4003 = distinct !DISubprogram(name: "x2realloc", scope: !275, file: !275, line: 116, type: !4004, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!32, !32, !281}
!4006 = !DILocalVariable(name: "p", arg: 1, scope: !4003, file: !275, line: 116, type: !32)
!4007 = !DILocation(line: 116, column: 18, scope: !4003)
!4008 = !DILocalVariable(name: "ps", arg: 2, scope: !4003, file: !275, line: 116, type: !281)
!4009 = !DILocation(line: 116, column: 29, scope: !4003)
!4010 = !DILocation(line: 118, column: 22, scope: !4003)
!4011 = !DILocation(line: 118, column: 25, scope: !4003)
!4012 = !DILocation(line: 118, column: 10, scope: !4003)
!4013 = !DILocation(line: 118, column: 3, scope: !4003)
!4014 = !DILocalVariable(name: "p", arg: 1, scope: !278, file: !275, line: 176, type: !32)
!4015 = !DILocation(line: 176, column: 19, scope: !278)
!4016 = !DILocalVariable(name: "pn", arg: 2, scope: !278, file: !275, line: 176, type: !281)
!4017 = !DILocation(line: 176, column: 30, scope: !278)
!4018 = !DILocalVariable(name: "s", arg: 3, scope: !278, file: !275, line: 176, type: !152)
!4019 = !DILocation(line: 176, column: 41, scope: !278)
!4020 = !DILocalVariable(name: "n", scope: !278, file: !275, line: 178, type: !152)
!4021 = !DILocation(line: 178, column: 10, scope: !278)
!4022 = !DILocation(line: 178, column: 15, scope: !278)
!4023 = !DILocation(line: 178, column: 14, scope: !278)
!4024 = !DILocation(line: 180, column: 9, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !278, file: !275, line: 180, column: 7)
!4026 = !DILocation(line: 180, column: 7, scope: !278)
!4027 = !DILocation(line: 182, column: 13, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4029, file: !275, line: 182, column: 11)
!4029 = distinct !DILexicalBlock(scope: !4025, file: !275, line: 181, column: 5)
!4030 = !DILocation(line: 182, column: 11, scope: !4029)
!4031 = !DILocation(line: 190, column: 32, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4028, file: !275, line: 183, column: 9)
!4033 = !DILocation(line: 190, column: 30, scope: !4032)
!4034 = !DILocation(line: 190, column: 13, scope: !4032)
!4035 = !DILocation(line: 191, column: 17, scope: !4032)
!4036 = !DILocation(line: 191, column: 16, scope: !4032)
!4037 = !DILocation(line: 191, column: 13, scope: !4032)
!4038 = !DILocation(line: 192, column: 9, scope: !4032)
!4039 = !DILocation(line: 193, column: 5, scope: !4029)
!4040 = !DILocation(line: 197, column: 11, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !275, line: 197, column: 11)
!4042 = distinct !DILexicalBlock(scope: !4025, file: !275, line: 195, column: 5)
!4043 = !DILocation(line: 197, column: 11, scope: !4042)
!4044 = !DILocation(line: 198, column: 9, scope: !4041)
!4045 = !DILocation(line: 201, column: 22, scope: !278)
!4046 = !DILocation(line: 201, column: 25, scope: !278)
!4047 = !DILocation(line: 201, column: 28, scope: !278)
!4048 = !DILocation(line: 201, column: 7, scope: !278)
!4049 = !DILocation(line: 201, column: 5, scope: !278)
!4050 = !DILocation(line: 202, column: 9, scope: !278)
!4051 = !DILocation(line: 202, column: 4, scope: !278)
!4052 = !DILocation(line: 202, column: 7, scope: !278)
!4053 = !DILocation(line: 203, column: 10, scope: !278)
!4054 = !DILocation(line: 203, column: 3, scope: !278)
!4055 = !DILocalVariable(name: "pa", arg: 1, scope: !285, file: !275, line: 223, type: !32)
!4056 = !DILocation(line: 223, column: 16, scope: !285)
!4057 = !DILocalVariable(name: "pn", arg: 2, scope: !285, file: !275, line: 223, type: !288)
!4058 = !DILocation(line: 223, column: 27, scope: !285)
!4059 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !285, file: !275, line: 223, type: !289)
!4060 = !DILocation(line: 223, column: 37, scope: !285)
!4061 = !DILocalVariable(name: "n_max", arg: 4, scope: !285, file: !275, line: 223, type: !291)
!4062 = !DILocation(line: 223, column: 59, scope: !285)
!4063 = !DILocalVariable(name: "s", arg: 5, scope: !285, file: !275, line: 223, type: !289)
!4064 = !DILocation(line: 223, column: 72, scope: !285)
!4065 = !DILocalVariable(name: "n0", scope: !285, file: !275, line: 230, type: !289)
!4066 = !DILocation(line: 230, column: 9, scope: !285)
!4067 = !DILocation(line: 230, column: 15, scope: !285)
!4068 = !DILocation(line: 230, column: 14, scope: !285)
!4069 = !DILocalVariable(name: "n", scope: !285, file: !275, line: 237, type: !289)
!4070 = !DILocation(line: 237, column: 9, scope: !285)
!4071 = !DILocation(line: 238, column: 7, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !285, file: !275, line: 238, column: 7)
!4073 = !DILocation(line: 238, column: 7, scope: !285)
!4074 = !DILocation(line: 239, column: 7, scope: !4072)
!4075 = !DILocation(line: 239, column: 5, scope: !4072)
!4076 = !DILocation(line: 240, column: 12, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !285, file: !275, line: 240, column: 7)
!4078 = !DILocation(line: 240, column: 9, scope: !4077)
!4079 = !DILocation(line: 240, column: 18, scope: !4077)
!4080 = !DILocation(line: 240, column: 21, scope: !4077)
!4081 = !DILocation(line: 240, column: 29, scope: !4077)
!4082 = !DILocation(line: 240, column: 27, scope: !4077)
!4083 = !DILocation(line: 240, column: 7, scope: !285)
!4084 = !DILocation(line: 241, column: 9, scope: !4077)
!4085 = !DILocation(line: 241, column: 7, scope: !4077)
!4086 = !DILocation(line: 241, column: 5, scope: !4077)
!4087 = !DILocalVariable(name: "nbytes", scope: !285, file: !275, line: 248, type: !289)
!4088 = !DILocation(line: 248, column: 9, scope: !285)
!4089 = !DILocalVariable(name: "adjusted_nbytes", scope: !285, file: !275, line: 252, type: !289)
!4090 = !DILocation(line: 252, column: 9, scope: !285)
!4091 = !DILocation(line: 253, column: 8, scope: !285)
!4092 = !DILocation(line: 255, column: 10, scope: !285)
!4093 = !DILocation(line: 255, column: 17, scope: !285)
!4094 = !DILocation(line: 256, column: 7, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !285, file: !275, line: 256, column: 7)
!4096 = !DILocation(line: 256, column: 7, scope: !285)
!4097 = !DILocation(line: 258, column: 11, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4095, file: !275, line: 257, column: 5)
!4099 = !DILocation(line: 258, column: 29, scope: !4098)
!4100 = !DILocation(line: 258, column: 27, scope: !4098)
!4101 = !DILocation(line: 258, column: 9, scope: !4098)
!4102 = !DILocation(line: 259, column: 16, scope: !4098)
!4103 = !DILocation(line: 259, column: 34, scope: !4098)
!4104 = !DILocation(line: 259, column: 52, scope: !4098)
!4105 = !DILocation(line: 259, column: 50, scope: !4098)
!4106 = !DILocation(line: 259, column: 32, scope: !4098)
!4107 = !DILocation(line: 259, column: 14, scope: !4098)
!4108 = !DILocation(line: 260, column: 5, scope: !4098)
!4109 = !DILocation(line: 262, column: 9, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !285, file: !275, line: 262, column: 7)
!4111 = !DILocation(line: 262, column: 7, scope: !285)
!4112 = !DILocation(line: 263, column: 6, scope: !4110)
!4113 = !DILocation(line: 263, column: 9, scope: !4110)
!4114 = !DILocation(line: 263, column: 5, scope: !4110)
!4115 = !DILocation(line: 264, column: 7, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !285, file: !275, line: 264, column: 7)
!4117 = !DILocation(line: 264, column: 11, scope: !4116)
!4118 = !DILocation(line: 264, column: 9, scope: !4116)
!4119 = !DILocation(line: 264, column: 16, scope: !4116)
!4120 = !DILocation(line: 264, column: 14, scope: !4116)
!4121 = !DILocation(line: 265, column: 7, scope: !4116)
!4122 = !DILocation(line: 265, column: 11, scope: !4116)
!4123 = !DILocation(line: 266, column: 11, scope: !4116)
!4124 = !DILocation(line: 266, column: 20, scope: !4116)
!4125 = !DILocation(line: 266, column: 17, scope: !4116)
!4126 = !DILocation(line: 266, column: 26, scope: !4116)
!4127 = !DILocation(line: 266, column: 29, scope: !4116)
!4128 = !DILocation(line: 266, column: 37, scope: !4116)
!4129 = !DILocation(line: 266, column: 35, scope: !4116)
!4130 = !DILocation(line: 267, column: 11, scope: !4116)
!4131 = !DILocation(line: 267, column: 14, scope: !4116)
!4132 = !DILocation(line: 264, column: 7, scope: !285)
!4133 = !DILocation(line: 268, column: 5, scope: !4116)
!4134 = !DILocation(line: 269, column: 18, scope: !285)
!4135 = !DILocation(line: 269, column: 22, scope: !285)
!4136 = !DILocation(line: 269, column: 8, scope: !285)
!4137 = !DILocation(line: 269, column: 6, scope: !285)
!4138 = !DILocation(line: 270, column: 9, scope: !285)
!4139 = !DILocation(line: 270, column: 4, scope: !285)
!4140 = !DILocation(line: 270, column: 7, scope: !285)
!4141 = !DILocation(line: 271, column: 10, scope: !285)
!4142 = !DILocation(line: 271, column: 3, scope: !285)
!4143 = distinct !DISubprogram(name: "xzalloc", scope: !275, file: !275, line: 279, type: !3920, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!4144 = !DILocalVariable(name: "s", arg: 1, scope: !4143, file: !275, line: 279, type: !152)
!4145 = !DILocation(line: 279, column: 17, scope: !4143)
!4146 = !DILocation(line: 281, column: 19, scope: !4143)
!4147 = !DILocation(line: 281, column: 10, scope: !4143)
!4148 = !DILocation(line: 281, column: 3, scope: !4143)
!4149 = distinct !DISubprogram(name: "xcalloc", scope: !275, file: !275, line: 294, type: !3984, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!4150 = !DILocalVariable(name: "n", arg: 1, scope: !4149, file: !275, line: 294, type: !152)
!4151 = !DILocation(line: 294, column: 17, scope: !4149)
!4152 = !DILocalVariable(name: "s", arg: 2, scope: !4149, file: !275, line: 294, type: !152)
!4153 = !DILocation(line: 294, column: 27, scope: !4149)
!4154 = !DILocation(line: 296, column: 33, scope: !4149)
!4155 = !DILocation(line: 296, column: 36, scope: !4149)
!4156 = !DILocation(line: 296, column: 25, scope: !4149)
!4157 = !DILocation(line: 296, column: 10, scope: !4149)
!4158 = !DILocation(line: 296, column: 3, scope: !4149)
!4159 = distinct !DISubprogram(name: "xizalloc", scope: !275, file: !275, line: 285, type: !3929, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!4160 = !DILocalVariable(name: "s", arg: 1, scope: !4159, file: !275, line: 285, type: !289)
!4161 = !DILocation(line: 285, column: 17, scope: !4159)
!4162 = !DILocation(line: 287, column: 20, scope: !4159)
!4163 = !DILocation(line: 287, column: 10, scope: !4159)
!4164 = !DILocation(line: 287, column: 3, scope: !4159)
!4165 = distinct !DISubprogram(name: "xicalloc", scope: !275, file: !275, line: 300, type: !1055, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!4166 = !DILocalVariable(name: "n", arg: 1, scope: !4165, file: !275, line: 300, type: !289)
!4167 = !DILocation(line: 300, column: 17, scope: !4165)
!4168 = !DILocalVariable(name: "s", arg: 2, scope: !4165, file: !275, line: 300, type: !289)
!4169 = !DILocation(line: 300, column: 26, scope: !4165)
!4170 = !DILocation(line: 302, column: 34, scope: !4165)
!4171 = !DILocation(line: 302, column: 37, scope: !4165)
!4172 = !DILocation(line: 302, column: 25, scope: !4165)
!4173 = !DILocation(line: 302, column: 10, scope: !4165)
!4174 = !DILocation(line: 302, column: 3, scope: !4165)
!4175 = distinct !DISubprogram(name: "xmemdup", scope: !275, file: !275, line: 310, type: !4176, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!32, !1468, !152}
!4178 = !DILocalVariable(name: "p", arg: 1, scope: !4175, file: !275, line: 310, type: !1468)
!4179 = !DILocation(line: 310, column: 22, scope: !4175)
!4180 = !DILocalVariable(name: "s", arg: 2, scope: !4175, file: !275, line: 310, type: !152)
!4181 = !DILocation(line: 310, column: 32, scope: !4175)
!4182 = !DILocation(line: 312, column: 27, scope: !4175)
!4183 = !DILocation(line: 312, column: 18, scope: !4175)
!4184 = !DILocation(line: 312, column: 31, scope: !4175)
!4185 = !DILocation(line: 312, column: 34, scope: !4175)
!4186 = !DILocation(line: 312, column: 10, scope: !4175)
!4187 = !DILocation(line: 312, column: 3, scope: !4175)
!4188 = distinct !DISubprogram(name: "ximemdup", scope: !275, file: !275, line: 316, type: !4189, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!32, !1468, !289}
!4191 = !DILocalVariable(name: "p", arg: 1, scope: !4188, file: !275, line: 316, type: !1468)
!4192 = !DILocation(line: 316, column: 23, scope: !4188)
!4193 = !DILocalVariable(name: "s", arg: 2, scope: !4188, file: !275, line: 316, type: !289)
!4194 = !DILocation(line: 316, column: 32, scope: !4188)
!4195 = !DILocation(line: 318, column: 28, scope: !4188)
!4196 = !DILocation(line: 318, column: 18, scope: !4188)
!4197 = !DILocation(line: 318, column: 32, scope: !4188)
!4198 = !DILocation(line: 318, column: 35, scope: !4188)
!4199 = !DILocation(line: 318, column: 10, scope: !4188)
!4200 = !DILocation(line: 318, column: 3, scope: !4188)
!4201 = distinct !DISubprogram(name: "ximemdup0", scope: !275, file: !275, line: 325, type: !4202, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!35, !1468, !289}
!4204 = !DILocalVariable(name: "p", arg: 1, scope: !4201, file: !275, line: 325, type: !1468)
!4205 = !DILocation(line: 325, column: 24, scope: !4201)
!4206 = !DILocalVariable(name: "s", arg: 2, scope: !4201, file: !275, line: 325, type: !289)
!4207 = !DILocation(line: 325, column: 33, scope: !4201)
!4208 = !DILocalVariable(name: "result", scope: !4201, file: !275, line: 327, type: !35)
!4209 = !DILocation(line: 327, column: 9, scope: !4201)
!4210 = !DILocation(line: 327, column: 28, scope: !4201)
!4211 = !DILocation(line: 327, column: 30, scope: !4201)
!4212 = !DILocation(line: 327, column: 18, scope: !4201)
!4213 = !DILocation(line: 328, column: 3, scope: !4201)
!4214 = !DILocation(line: 328, column: 10, scope: !4201)
!4215 = !DILocation(line: 328, column: 13, scope: !4201)
!4216 = !DILocation(line: 329, column: 18, scope: !4201)
!4217 = !DILocation(line: 329, column: 26, scope: !4201)
!4218 = !DILocation(line: 329, column: 29, scope: !4201)
!4219 = !DILocation(line: 329, column: 10, scope: !4201)
!4220 = !DILocation(line: 329, column: 3, scope: !4201)
!4221 = distinct !DISubprogram(name: "xstrdup", scope: !275, file: !275, line: 335, type: !790, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !37)
!4222 = !DILocalVariable(name: "string", arg: 1, scope: !4221, file: !275, line: 335, type: !6)
!4223 = !DILocation(line: 335, column: 22, scope: !4221)
!4224 = !DILocation(line: 337, column: 19, scope: !4221)
!4225 = !DILocation(line: 337, column: 35, scope: !4221)
!4226 = !DILocation(line: 337, column: 27, scope: !4221)
!4227 = !DILocation(line: 337, column: 43, scope: !4221)
!4228 = !DILocation(line: 337, column: 10, scope: !4221)
!4229 = !DILocation(line: 337, column: 3, scope: !4221)
!4230 = distinct !DISubprogram(name: "xalloc_die", scope: !295, file: !295, line: 32, type: !83, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !37)
!4231 = !DILocalVariable(name: "__errstatus", scope: !4232, file: !295, line: 34, type: !4233)
!4232 = distinct !DILexicalBlock(scope: !4230, file: !295, line: 34, column: 3)
!4233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!4234 = !DILocation(line: 34, column: 3, scope: !4232)
!4235 = !DILocation(line: 40, column: 3, scope: !4230)
!4236 = distinct !DISubprogram(name: "c32isprint", scope: !4237, file: !4237, line: 41, type: !4238, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !296, retainedNodes: !37)
!4237 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!33, !4240}
!4240 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !4241, line: 20, baseType: !14)
!4241 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!4242 = !DILocalVariable(name: "wc", arg: 1, scope: !4236, file: !4237, line: 41, type: !4240)
!4243 = !DILocation(line: 41, column: 14, scope: !4236)
!4244 = !DILocation(line: 66, column: 22, scope: !4236)
!4245 = !DILocation(line: 66, column: 10, scope: !4236)
!4246 = !DILocation(line: 66, column: 3, scope: !4236)
!4247 = distinct !DISubprogram(name: "close_stream", scope: !299, file: !299, line: 55, type: !4248, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !298, retainedNodes: !37)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!33, !4250}
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3579, line: 7, baseType: !4252)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3581, line: 49, size: 1728, elements: !4253)
!4253 = !{!4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4252, file: !3581, line: 51, baseType: !33, size: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4252, file: !3581, line: 54, baseType: !35, size: 64, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4252, file: !3581, line: 55, baseType: !35, size: 64, offset: 128)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4252, file: !3581, line: 56, baseType: !35, size: 64, offset: 192)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4252, file: !3581, line: 57, baseType: !35, size: 64, offset: 256)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4252, file: !3581, line: 58, baseType: !35, size: 64, offset: 320)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4252, file: !3581, line: 59, baseType: !35, size: 64, offset: 384)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4252, file: !3581, line: 60, baseType: !35, size: 64, offset: 448)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4252, file: !3581, line: 61, baseType: !35, size: 64, offset: 512)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4252, file: !3581, line: 64, baseType: !35, size: 64, offset: 576)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4252, file: !3581, line: 65, baseType: !35, size: 64, offset: 640)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4252, file: !3581, line: 66, baseType: !35, size: 64, offset: 704)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4252, file: !3581, line: 68, baseType: !3596, size: 64, offset: 768)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4252, file: !3581, line: 70, baseType: !4268, size: 64, offset: 832)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4252, file: !3581, line: 72, baseType: !33, size: 32, offset: 896)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4252, file: !3581, line: 73, baseType: !33, size: 32, offset: 928)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4252, file: !3581, line: 74, baseType: !1546, size: 64, offset: 960)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4252, file: !3581, line: 77, baseType: !34, size: 16, offset: 1024)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4252, file: !3581, line: 78, baseType: !3605, size: 8, offset: 1040)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4252, file: !3581, line: 79, baseType: !3607, size: 8, offset: 1048)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4252, file: !3581, line: 81, baseType: !3611, size: 64, offset: 1088)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4252, file: !3581, line: 89, baseType: !3614, size: 64, offset: 1152)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4252, file: !3581, line: 91, baseType: !3616, size: 64, offset: 1216)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4252, file: !3581, line: 92, baseType: !3619, size: 64, offset: 1280)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4252, file: !3581, line: 93, baseType: !4268, size: 64, offset: 1344)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4252, file: !3581, line: 94, baseType: !32, size: 64, offset: 1408)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4252, file: !3581, line: 95, baseType: !152, size: 64, offset: 1472)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4252, file: !3581, line: 96, baseType: !33, size: 32, offset: 1536)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4252, file: !3581, line: 98, baseType: !3626, size: 160, offset: 1568)
!4284 = !DILocalVariable(name: "stream", arg: 1, scope: !4247, file: !299, line: 55, type: !4250)
!4285 = !DILocation(line: 55, column: 21, scope: !4247)
!4286 = !DILocalVariable(name: "some_pending", scope: !4247, file: !299, line: 57, type: !4287)
!4287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!4288 = !DILocation(line: 57, column: 14, scope: !4247)
!4289 = !DILocation(line: 57, column: 42, scope: !4247)
!4290 = !DILocation(line: 57, column: 30, scope: !4247)
!4291 = !DILocation(line: 57, column: 50, scope: !4247)
!4292 = !DILocalVariable(name: "prev_fail", scope: !4247, file: !299, line: 58, type: !4287)
!4293 = !DILocation(line: 58, column: 14, scope: !4247)
!4294 = !DILocation(line: 58, column: 27, scope: !4247)
!4295 = !DILocation(line: 58, column: 43, scope: !4247)
!4296 = !DILocalVariable(name: "fclose_fail", scope: !4247, file: !299, line: 59, type: !4287)
!4297 = !DILocation(line: 59, column: 14, scope: !4247)
!4298 = !DILocation(line: 59, column: 37, scope: !4247)
!4299 = !DILocation(line: 59, column: 29, scope: !4247)
!4300 = !DILocation(line: 59, column: 45, scope: !4247)
!4301 = !DILocation(line: 69, column: 7, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4247, file: !299, line: 69, column: 7)
!4303 = !DILocation(line: 69, column: 17, scope: !4302)
!4304 = !DILocation(line: 69, column: 21, scope: !4302)
!4305 = !DILocation(line: 69, column: 33, scope: !4302)
!4306 = !DILocation(line: 69, column: 37, scope: !4302)
!4307 = !DILocation(line: 69, column: 50, scope: !4302)
!4308 = !DILocation(line: 69, column: 53, scope: !4302)
!4309 = !DILocation(line: 69, column: 59, scope: !4302)
!4310 = !DILocation(line: 69, column: 7, scope: !4247)
!4311 = !DILocation(line: 71, column: 13, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4313, file: !299, line: 71, column: 11)
!4313 = distinct !DILexicalBlock(scope: !4302, file: !299, line: 70, column: 5)
!4314 = !DILocation(line: 71, column: 11, scope: !4313)
!4315 = !DILocation(line: 72, column: 9, scope: !4312)
!4316 = !DILocation(line: 72, column: 15, scope: !4312)
!4317 = !DILocation(line: 73, column: 7, scope: !4313)
!4318 = !DILocation(line: 76, column: 3, scope: !4247)
!4319 = !DILocation(line: 77, column: 1, scope: !4247)
!4320 = distinct !DISubprogram(name: "rpl_fclose", scope: !301, file: !301, line: 58, type: !4321, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !300, retainedNodes: !37)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!33, !4323}
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3579, line: 7, baseType: !4325)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3581, line: 49, size: 1728, elements: !4326)
!4326 = !{!4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4325, file: !3581, line: 51, baseType: !33, size: 32)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4325, file: !3581, line: 54, baseType: !35, size: 64, offset: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4325, file: !3581, line: 55, baseType: !35, size: 64, offset: 128)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4325, file: !3581, line: 56, baseType: !35, size: 64, offset: 192)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4325, file: !3581, line: 57, baseType: !35, size: 64, offset: 256)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4325, file: !3581, line: 58, baseType: !35, size: 64, offset: 320)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4325, file: !3581, line: 59, baseType: !35, size: 64, offset: 384)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4325, file: !3581, line: 60, baseType: !35, size: 64, offset: 448)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4325, file: !3581, line: 61, baseType: !35, size: 64, offset: 512)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4325, file: !3581, line: 64, baseType: !35, size: 64, offset: 576)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4325, file: !3581, line: 65, baseType: !35, size: 64, offset: 640)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4325, file: !3581, line: 66, baseType: !35, size: 64, offset: 704)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4325, file: !3581, line: 68, baseType: !3596, size: 64, offset: 768)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4325, file: !3581, line: 70, baseType: !4341, size: 64, offset: 832)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4325, file: !3581, line: 72, baseType: !33, size: 32, offset: 896)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4325, file: !3581, line: 73, baseType: !33, size: 32, offset: 928)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4325, file: !3581, line: 74, baseType: !1546, size: 64, offset: 960)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4325, file: !3581, line: 77, baseType: !34, size: 16, offset: 1024)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4325, file: !3581, line: 78, baseType: !3605, size: 8, offset: 1040)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4325, file: !3581, line: 79, baseType: !3607, size: 8, offset: 1048)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4325, file: !3581, line: 81, baseType: !3611, size: 64, offset: 1088)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4325, file: !3581, line: 89, baseType: !3614, size: 64, offset: 1152)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4325, file: !3581, line: 91, baseType: !3616, size: 64, offset: 1216)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4325, file: !3581, line: 92, baseType: !3619, size: 64, offset: 1280)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4325, file: !3581, line: 93, baseType: !4341, size: 64, offset: 1344)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4325, file: !3581, line: 94, baseType: !32, size: 64, offset: 1408)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4325, file: !3581, line: 95, baseType: !152, size: 64, offset: 1472)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4325, file: !3581, line: 96, baseType: !33, size: 32, offset: 1536)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4325, file: !3581, line: 98, baseType: !3626, size: 160, offset: 1568)
!4357 = !DILocalVariable(name: "fp", arg: 1, scope: !4320, file: !301, line: 58, type: !4323)
!4358 = !DILocation(line: 58, column: 19, scope: !4320)
!4359 = !DILocalVariable(name: "saved_errno", scope: !4320, file: !301, line: 60, type: !33)
!4360 = !DILocation(line: 60, column: 7, scope: !4320)
!4361 = !DILocalVariable(name: "fd", scope: !4320, file: !301, line: 63, type: !33)
!4362 = !DILocation(line: 63, column: 7, scope: !4320)
!4363 = !DILocation(line: 63, column: 20, scope: !4320)
!4364 = !DILocation(line: 63, column: 12, scope: !4320)
!4365 = !DILocation(line: 64, column: 7, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4320, file: !301, line: 64, column: 7)
!4367 = !DILocation(line: 64, column: 10, scope: !4366)
!4368 = !DILocation(line: 64, column: 7, scope: !4320)
!4369 = !DILocation(line: 65, column: 28, scope: !4366)
!4370 = !DILocation(line: 65, column: 12, scope: !4366)
!4371 = !DILocation(line: 65, column: 5, scope: !4366)
!4372 = !DILocation(line: 70, column: 9, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4320, file: !301, line: 70, column: 7)
!4374 = !DILocation(line: 70, column: 23, scope: !4373)
!4375 = !DILocation(line: 70, column: 41, scope: !4373)
!4376 = !DILocation(line: 70, column: 33, scope: !4373)
!4377 = !DILocation(line: 70, column: 26, scope: !4373)
!4378 = !DILocation(line: 70, column: 59, scope: !4373)
!4379 = !DILocation(line: 71, column: 7, scope: !4373)
!4380 = !DILocation(line: 71, column: 18, scope: !4373)
!4381 = !DILocation(line: 71, column: 10, scope: !4373)
!4382 = !DILocation(line: 70, column: 7, scope: !4320)
!4383 = !DILocation(line: 72, column: 19, scope: !4373)
!4384 = !DILocation(line: 72, column: 17, scope: !4373)
!4385 = !DILocation(line: 72, column: 5, scope: !4373)
!4386 = !DILocalVariable(name: "result", scope: !4320, file: !301, line: 74, type: !33)
!4387 = !DILocation(line: 74, column: 7, scope: !4320)
!4388 = !DILocation(line: 100, column: 28, scope: !4320)
!4389 = !DILocation(line: 100, column: 12, scope: !4320)
!4390 = !DILocation(line: 100, column: 10, scope: !4320)
!4391 = !DILocation(line: 105, column: 7, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4320, file: !301, line: 105, column: 7)
!4393 = !DILocation(line: 105, column: 19, scope: !4392)
!4394 = !DILocation(line: 105, column: 7, scope: !4320)
!4395 = !DILocation(line: 107, column: 15, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4392, file: !301, line: 106, column: 5)
!4397 = !DILocation(line: 107, column: 7, scope: !4396)
!4398 = !DILocation(line: 107, column: 13, scope: !4396)
!4399 = !DILocation(line: 108, column: 14, scope: !4396)
!4400 = !DILocation(line: 109, column: 5, scope: !4396)
!4401 = !DILocation(line: 111, column: 10, scope: !4320)
!4402 = !DILocation(line: 111, column: 3, scope: !4320)
!4403 = !DILocation(line: 112, column: 1, scope: !4320)
!4404 = distinct !DISubprogram(name: "fd_safer_flag", scope: !303, file: !303, line: 40, type: !89, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !302, retainedNodes: !37)
!4405 = !DILocalVariable(name: "fd", arg: 1, scope: !4404, file: !303, line: 40, type: !33)
!4406 = !DILocation(line: 40, column: 20, scope: !4404)
!4407 = !DILocalVariable(name: "flag", arg: 2, scope: !4404, file: !303, line: 40, type: !33)
!4408 = !DILocation(line: 40, column: 28, scope: !4404)
!4409 = !DILocation(line: 42, column: 23, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4404, file: !303, line: 42, column: 7)
!4411 = !DILocation(line: 42, column: 20, scope: !4410)
!4412 = !DILocation(line: 42, column: 26, scope: !4410)
!4413 = !DILocation(line: 42, column: 29, scope: !4410)
!4414 = !DILocation(line: 42, column: 32, scope: !4410)
!4415 = !DILocation(line: 42, column: 7, scope: !4404)
!4416 = !DILocalVariable(name: "f", scope: !4417, file: !303, line: 44, type: !33)
!4417 = distinct !DILexicalBlock(scope: !4410, file: !303, line: 43, column: 5)
!4418 = !DILocation(line: 44, column: 11, scope: !4417)
!4419 = !DILocation(line: 44, column: 31, scope: !4417)
!4420 = !DILocation(line: 44, column: 35, scope: !4417)
!4421 = !DILocation(line: 44, column: 15, scope: !4417)
!4422 = !DILocalVariable(name: "saved_errno", scope: !4417, file: !303, line: 45, type: !33)
!4423 = !DILocation(line: 45, column: 11, scope: !4417)
!4424 = !DILocation(line: 45, column: 25, scope: !4417)
!4425 = !DILocation(line: 46, column: 14, scope: !4417)
!4426 = !DILocation(line: 46, column: 7, scope: !4417)
!4427 = !DILocation(line: 47, column: 15, scope: !4417)
!4428 = !DILocation(line: 47, column: 7, scope: !4417)
!4429 = !DILocation(line: 47, column: 13, scope: !4417)
!4430 = !DILocation(line: 48, column: 12, scope: !4417)
!4431 = !DILocation(line: 48, column: 10, scope: !4417)
!4432 = !DILocation(line: 49, column: 5, scope: !4417)
!4433 = !DILocation(line: 51, column: 10, scope: !4404)
!4434 = !DILocation(line: 51, column: 3, scope: !4404)
!4435 = distinct !DISubprogram(name: "dup_safer_flag", scope: !305, file: !305, line: 34, type: !89, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !304, retainedNodes: !37)
!4436 = !DILocalVariable(name: "fd", arg: 1, scope: !4435, file: !305, line: 34, type: !33)
!4437 = !DILocation(line: 34, column: 21, scope: !4435)
!4438 = !DILocalVariable(name: "flag", arg: 2, scope: !4435, file: !305, line: 34, type: !33)
!4439 = !DILocation(line: 34, column: 29, scope: !4435)
!4440 = !DILocation(line: 36, column: 17, scope: !4435)
!4441 = !DILocation(line: 36, column: 22, scope: !4435)
!4442 = !DILocation(line: 36, column: 27, scope: !4435)
!4443 = !DILocation(line: 36, column: 21, scope: !4435)
!4444 = !DILocation(line: 36, column: 10, scope: !4435)
!4445 = !DILocation(line: 36, column: 3, scope: !4435)
!4446 = distinct !DISubprogram(name: "rpl_fflush", scope: !307, file: !307, line: 130, type: !4447, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !306, retainedNodes: !37)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!33, !4449}
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3579, line: 7, baseType: !4451)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3581, line: 49, size: 1728, elements: !4452)
!4452 = !{!4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4451, file: !3581, line: 51, baseType: !33, size: 32)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4451, file: !3581, line: 54, baseType: !35, size: 64, offset: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4451, file: !3581, line: 55, baseType: !35, size: 64, offset: 128)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4451, file: !3581, line: 56, baseType: !35, size: 64, offset: 192)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4451, file: !3581, line: 57, baseType: !35, size: 64, offset: 256)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4451, file: !3581, line: 58, baseType: !35, size: 64, offset: 320)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4451, file: !3581, line: 59, baseType: !35, size: 64, offset: 384)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4451, file: !3581, line: 60, baseType: !35, size: 64, offset: 448)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4451, file: !3581, line: 61, baseType: !35, size: 64, offset: 512)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4451, file: !3581, line: 64, baseType: !35, size: 64, offset: 576)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4451, file: !3581, line: 65, baseType: !35, size: 64, offset: 640)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4451, file: !3581, line: 66, baseType: !35, size: 64, offset: 704)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4451, file: !3581, line: 68, baseType: !3596, size: 64, offset: 768)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4451, file: !3581, line: 70, baseType: !4467, size: 64, offset: 832)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4451, file: !3581, line: 72, baseType: !33, size: 32, offset: 896)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4451, file: !3581, line: 73, baseType: !33, size: 32, offset: 928)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4451, file: !3581, line: 74, baseType: !1546, size: 64, offset: 960)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4451, file: !3581, line: 77, baseType: !34, size: 16, offset: 1024)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4451, file: !3581, line: 78, baseType: !3605, size: 8, offset: 1040)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4451, file: !3581, line: 79, baseType: !3607, size: 8, offset: 1048)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4451, file: !3581, line: 81, baseType: !3611, size: 64, offset: 1088)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4451, file: !3581, line: 89, baseType: !3614, size: 64, offset: 1152)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4451, file: !3581, line: 91, baseType: !3616, size: 64, offset: 1216)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4451, file: !3581, line: 92, baseType: !3619, size: 64, offset: 1280)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4451, file: !3581, line: 93, baseType: !4467, size: 64, offset: 1344)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4451, file: !3581, line: 94, baseType: !32, size: 64, offset: 1408)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4451, file: !3581, line: 95, baseType: !152, size: 64, offset: 1472)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4451, file: !3581, line: 96, baseType: !33, size: 32, offset: 1536)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4451, file: !3581, line: 98, baseType: !3626, size: 160, offset: 1568)
!4483 = !DILocalVariable(name: "stream", arg: 1, scope: !4446, file: !307, line: 130, type: !4449)
!4484 = !DILocation(line: 130, column: 19, scope: !4446)
!4485 = !DILocation(line: 151, column: 7, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4446, file: !307, line: 151, column: 7)
!4487 = !DILocation(line: 151, column: 14, scope: !4486)
!4488 = !DILocation(line: 151, column: 22, scope: !4486)
!4489 = !DILocation(line: 151, column: 27, scope: !4486)
!4490 = !DILocation(line: 151, column: 7, scope: !4446)
!4491 = !DILocation(line: 152, column: 20, scope: !4486)
!4492 = !DILocation(line: 152, column: 12, scope: !4486)
!4493 = !DILocation(line: 152, column: 5, scope: !4486)
!4494 = !DILocation(line: 157, column: 44, scope: !4446)
!4495 = !DILocation(line: 157, column: 3, scope: !4446)
!4496 = !DILocation(line: 159, column: 18, scope: !4446)
!4497 = !DILocation(line: 159, column: 10, scope: !4446)
!4498 = !DILocation(line: 159, column: 3, scope: !4446)
!4499 = !DILocation(line: 236, column: 1, scope: !4446)
!4500 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !307, file: !307, line: 42, type: !4501, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !306, retainedNodes: !37)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{null, !4449}
!4503 = !DILocalVariable(name: "fp", arg: 1, scope: !4500, file: !307, line: 42, type: !4449)
!4504 = !DILocation(line: 42, column: 48, scope: !4500)
!4505 = !DILocation(line: 44, column: 7, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4500, file: !307, line: 44, column: 7)
!4507 = !DILocation(line: 44, column: 12, scope: !4506)
!4508 = !DILocation(line: 44, column: 19, scope: !4506)
!4509 = !DILocation(line: 44, column: 7, scope: !4500)
!4510 = !DILocation(line: 46, column: 13, scope: !4506)
!4511 = !DILocation(line: 46, column: 5, scope: !4506)
!4512 = !DILocation(line: 47, column: 1, scope: !4500)
!4513 = distinct !DISubprogram(name: "rpl_fseeko", scope: !309, file: !309, line: 28, type: !4514, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !308, retainedNodes: !37)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!33, !4516, !4550, !33}
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3579, line: 7, baseType: !4518)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3581, line: 49, size: 1728, elements: !4519)
!4519 = !{!4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4518, file: !3581, line: 51, baseType: !33, size: 32)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4518, file: !3581, line: 54, baseType: !35, size: 64, offset: 64)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4518, file: !3581, line: 55, baseType: !35, size: 64, offset: 128)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4518, file: !3581, line: 56, baseType: !35, size: 64, offset: 192)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4518, file: !3581, line: 57, baseType: !35, size: 64, offset: 256)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4518, file: !3581, line: 58, baseType: !35, size: 64, offset: 320)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4518, file: !3581, line: 59, baseType: !35, size: 64, offset: 384)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4518, file: !3581, line: 60, baseType: !35, size: 64, offset: 448)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4518, file: !3581, line: 61, baseType: !35, size: 64, offset: 512)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4518, file: !3581, line: 64, baseType: !35, size: 64, offset: 576)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4518, file: !3581, line: 65, baseType: !35, size: 64, offset: 640)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4518, file: !3581, line: 66, baseType: !35, size: 64, offset: 704)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4518, file: !3581, line: 68, baseType: !3596, size: 64, offset: 768)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4518, file: !3581, line: 70, baseType: !4534, size: 64, offset: 832)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4518, file: !3581, line: 72, baseType: !33, size: 32, offset: 896)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4518, file: !3581, line: 73, baseType: !33, size: 32, offset: 928)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4518, file: !3581, line: 74, baseType: !1546, size: 64, offset: 960)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4518, file: !3581, line: 77, baseType: !34, size: 16, offset: 1024)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4518, file: !3581, line: 78, baseType: !3605, size: 8, offset: 1040)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4518, file: !3581, line: 79, baseType: !3607, size: 8, offset: 1048)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4518, file: !3581, line: 81, baseType: !3611, size: 64, offset: 1088)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4518, file: !3581, line: 89, baseType: !3614, size: 64, offset: 1152)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4518, file: !3581, line: 91, baseType: !3616, size: 64, offset: 1216)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4518, file: !3581, line: 92, baseType: !3619, size: 64, offset: 1280)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4518, file: !3581, line: 93, baseType: !4534, size: 64, offset: 1344)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4518, file: !3581, line: 94, baseType: !32, size: 64, offset: 1408)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4518, file: !3581, line: 95, baseType: !152, size: 64, offset: 1472)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4518, file: !3581, line: 96, baseType: !33, size: 32, offset: 1536)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4518, file: !3581, line: 98, baseType: !3626, size: 160, offset: 1568)
!4550 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !63, line: 63, baseType: !1546)
!4551 = !DILocalVariable(name: "fp", arg: 1, scope: !4513, file: !309, line: 28, type: !4516)
!4552 = !DILocation(line: 28, column: 15, scope: !4513)
!4553 = !DILocalVariable(name: "offset", arg: 2, scope: !4513, file: !309, line: 28, type: !4550)
!4554 = !DILocation(line: 28, column: 25, scope: !4513)
!4555 = !DILocalVariable(name: "whence", arg: 3, scope: !4513, file: !309, line: 28, type: !33)
!4556 = !DILocation(line: 28, column: 37, scope: !4513)
!4557 = !DILocation(line: 55, column: 7, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4513, file: !309, line: 55, column: 7)
!4559 = !DILocation(line: 55, column: 12, scope: !4558)
!4560 = !DILocation(line: 55, column: 28, scope: !4558)
!4561 = !DILocation(line: 55, column: 33, scope: !4558)
!4562 = !DILocation(line: 55, column: 25, scope: !4558)
!4563 = !DILocation(line: 56, column: 7, scope: !4558)
!4564 = !DILocation(line: 56, column: 10, scope: !4558)
!4565 = !DILocation(line: 56, column: 15, scope: !4558)
!4566 = !DILocation(line: 56, column: 32, scope: !4558)
!4567 = !DILocation(line: 56, column: 37, scope: !4558)
!4568 = !DILocation(line: 56, column: 29, scope: !4558)
!4569 = !DILocation(line: 57, column: 7, scope: !4558)
!4570 = !DILocation(line: 57, column: 10, scope: !4558)
!4571 = !DILocation(line: 57, column: 15, scope: !4558)
!4572 = !DILocation(line: 57, column: 29, scope: !4558)
!4573 = !DILocation(line: 55, column: 7, scope: !4513)
!4574 = !DILocalVariable(name: "pos", scope: !4575, file: !309, line: 123, type: !4550)
!4575 = distinct !DILexicalBlock(scope: !4558, file: !309, line: 119, column: 5)
!4576 = !DILocation(line: 123, column: 13, scope: !4575)
!4577 = !DILocation(line: 123, column: 34, scope: !4575)
!4578 = !DILocation(line: 123, column: 26, scope: !4575)
!4579 = !DILocation(line: 123, column: 39, scope: !4575)
!4580 = !DILocation(line: 123, column: 47, scope: !4575)
!4581 = !DILocation(line: 123, column: 19, scope: !4575)
!4582 = !DILocation(line: 124, column: 11, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4575, file: !309, line: 124, column: 11)
!4584 = !DILocation(line: 124, column: 15, scope: !4583)
!4585 = !DILocation(line: 124, column: 11, scope: !4575)
!4586 = !DILocation(line: 130, column: 11, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4583, file: !309, line: 125, column: 9)
!4588 = !DILocation(line: 135, column: 7, scope: !4575)
!4589 = !DILocation(line: 135, column: 12, scope: !4575)
!4590 = !DILocation(line: 135, column: 19, scope: !4575)
!4591 = !DILocation(line: 136, column: 22, scope: !4575)
!4592 = !DILocation(line: 136, column: 7, scope: !4575)
!4593 = !DILocation(line: 136, column: 12, scope: !4575)
!4594 = !DILocation(line: 136, column: 20, scope: !4575)
!4595 = !DILocation(line: 167, column: 7, scope: !4575)
!4596 = !DILocation(line: 169, column: 18, scope: !4513)
!4597 = !DILocation(line: 169, column: 22, scope: !4513)
!4598 = !DILocation(line: 169, column: 30, scope: !4513)
!4599 = !DILocation(line: 169, column: 10, scope: !4513)
!4600 = !DILocation(line: 169, column: 3, scope: !4513)
!4601 = !DILocation(line: 170, column: 1, scope: !4513)
!4602 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !4603, file: !4603, line: 43, type: !4604, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !310, retainedNodes: !37)
!4603 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4604 = !DISubroutineType(types: !55)
!4605 = !DILocation(line: 45, column: 3, scope: !4602)
!4606 = !DILocation(line: 45, column: 9, scope: !4602)
!4607 = !DILocation(line: 46, column: 3, scope: !4602)
!4608 = distinct !DISubprogram(name: "imalloc", scope: !4603, file: !4603, line: 55, type: !3929, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !310, retainedNodes: !37)
!4609 = !DILocalVariable(name: "s", arg: 1, scope: !4608, file: !4603, line: 55, type: !289)
!4610 = !DILocation(line: 55, column: 16, scope: !4608)
!4611 = !DILocation(line: 57, column: 10, scope: !4608)
!4612 = !DILocation(line: 57, column: 12, scope: !4608)
!4613 = !DILocation(line: 57, column: 34, scope: !4608)
!4614 = !DILocation(line: 57, column: 26, scope: !4608)
!4615 = !DILocation(line: 57, column: 39, scope: !4608)
!4616 = !DILocation(line: 57, column: 3, scope: !4608)
!4617 = distinct !DISubprogram(name: "irealloc", scope: !4603, file: !4603, line: 66, type: !3957, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !310, retainedNodes: !37)
!4618 = !DILocalVariable(name: "p", arg: 1, scope: !4617, file: !4603, line: 66, type: !32)
!4619 = !DILocation(line: 66, column: 17, scope: !4617)
!4620 = !DILocalVariable(name: "s", arg: 2, scope: !4617, file: !4603, line: 66, type: !289)
!4621 = !DILocation(line: 66, column: 26, scope: !4617)
!4622 = !DILocation(line: 68, column: 10, scope: !4617)
!4623 = !DILocation(line: 68, column: 12, scope: !4617)
!4624 = !DILocation(line: 68, column: 35, scope: !4617)
!4625 = !DILocation(line: 68, column: 38, scope: !4617)
!4626 = !DILocation(line: 68, column: 26, scope: !4617)
!4627 = !DILocation(line: 68, column: 43, scope: !4617)
!4628 = !DILocation(line: 68, column: 3, scope: !4617)
!4629 = distinct !DISubprogram(name: "icalloc", scope: !4603, file: !4603, line: 77, type: !1055, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !310, retainedNodes: !37)
!4630 = !DILocalVariable(name: "n", arg: 1, scope: !4629, file: !4603, line: 77, type: !289)
!4631 = !DILocation(line: 77, column: 16, scope: !4629)
!4632 = !DILocalVariable(name: "s", arg: 2, scope: !4629, file: !4603, line: 77, type: !289)
!4633 = !DILocation(line: 77, column: 25, scope: !4629)
!4634 = !DILocation(line: 79, column: 18, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4629, file: !4603, line: 79, column: 7)
!4636 = !DILocation(line: 79, column: 16, scope: !4635)
!4637 = !DILocation(line: 79, column: 7, scope: !4629)
!4638 = !DILocation(line: 81, column: 11, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4640, file: !4603, line: 81, column: 11)
!4640 = distinct !DILexicalBlock(scope: !4635, file: !4603, line: 80, column: 5)
!4641 = !DILocation(line: 81, column: 13, scope: !4639)
!4642 = !DILocation(line: 81, column: 11, scope: !4640)
!4643 = !DILocation(line: 82, column: 16, scope: !4639)
!4644 = !DILocation(line: 82, column: 9, scope: !4639)
!4645 = !DILocation(line: 83, column: 9, scope: !4640)
!4646 = !DILocation(line: 84, column: 5, scope: !4640)
!4647 = !DILocation(line: 85, column: 18, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4629, file: !4603, line: 85, column: 7)
!4649 = !DILocation(line: 85, column: 16, scope: !4648)
!4650 = !DILocation(line: 85, column: 7, scope: !4629)
!4651 = !DILocation(line: 87, column: 11, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4653, file: !4603, line: 87, column: 11)
!4653 = distinct !DILexicalBlock(scope: !4648, file: !4603, line: 86, column: 5)
!4654 = !DILocation(line: 87, column: 13, scope: !4652)
!4655 = !DILocation(line: 87, column: 11, scope: !4653)
!4656 = !DILocation(line: 88, column: 16, scope: !4652)
!4657 = !DILocation(line: 88, column: 9, scope: !4652)
!4658 = !DILocation(line: 89, column: 9, scope: !4653)
!4659 = !DILocation(line: 90, column: 5, scope: !4653)
!4660 = !DILocation(line: 91, column: 18, scope: !4629)
!4661 = !DILocation(line: 91, column: 21, scope: !4629)
!4662 = !DILocation(line: 91, column: 10, scope: !4629)
!4663 = !DILocation(line: 91, column: 3, scope: !4629)
!4664 = !DILocation(line: 92, column: 1, scope: !4629)
!4665 = distinct !DISubprogram(name: "ireallocarray", scope: !4603, file: !4603, line: 98, type: !3969, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !310, retainedNodes: !37)
!4666 = !DILocalVariable(name: "p", arg: 1, scope: !4665, file: !4603, line: 98, type: !32)
!4667 = !DILocation(line: 98, column: 22, scope: !4665)
!4668 = !DILocalVariable(name: "n", arg: 2, scope: !4665, file: !4603, line: 98, type: !289)
!4669 = !DILocation(line: 98, column: 31, scope: !4665)
!4670 = !DILocalVariable(name: "s", arg: 3, scope: !4665, file: !4603, line: 98, type: !289)
!4671 = !DILocation(line: 98, column: 40, scope: !4665)
!4672 = !DILocation(line: 100, column: 11, scope: !4665)
!4673 = !DILocation(line: 100, column: 13, scope: !4665)
!4674 = !DILocation(line: 100, column: 25, scope: !4665)
!4675 = !DILocation(line: 100, column: 28, scope: !4665)
!4676 = !DILocation(line: 100, column: 30, scope: !4665)
!4677 = !DILocation(line: 101, column: 27, scope: !4665)
!4678 = !DILocation(line: 101, column: 30, scope: !4665)
!4679 = !DILocation(line: 101, column: 33, scope: !4665)
!4680 = !DILocation(line: 101, column: 13, scope: !4665)
!4681 = !DILocation(line: 102, column: 13, scope: !4665)
!4682 = !DILocation(line: 100, column: 3, scope: !4665)
!4683 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !221, file: !221, line: 100, type: !4684, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !220, retainedNodes: !37)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!152, !4686, !6, !152, !4687}
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!4688 = !DILocalVariable(name: "pwc", arg: 1, scope: !4683, file: !221, line: 100, type: !4686)
!4689 = !DILocation(line: 100, column: 21, scope: !4683)
!4690 = !DILocalVariable(name: "s", arg: 2, scope: !4683, file: !221, line: 100, type: !6)
!4691 = !DILocation(line: 100, column: 38, scope: !4683)
!4692 = !DILocalVariable(name: "n", arg: 3, scope: !4683, file: !221, line: 100, type: !152)
!4693 = !DILocation(line: 100, column: 48, scope: !4683)
!4694 = !DILocalVariable(name: "ps", arg: 4, scope: !4683, file: !221, line: 100, type: !4687)
!4695 = !DILocation(line: 100, column: 62, scope: !4683)
!4696 = !DILocation(line: 105, column: 7, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4683, file: !221, line: 105, column: 7)
!4698 = !DILocation(line: 105, column: 9, scope: !4697)
!4699 = !DILocation(line: 105, column: 7, scope: !4683)
!4700 = !DILocation(line: 107, column: 11, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4697, file: !221, line: 106, column: 5)
!4702 = !DILocation(line: 108, column: 9, scope: !4701)
!4703 = !DILocation(line: 109, column: 9, scope: !4701)
!4704 = !DILocation(line: 110, column: 5, scope: !4701)
!4705 = !DILocation(line: 117, column: 7, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4683, file: !221, line: 117, column: 7)
!4707 = !DILocation(line: 117, column: 10, scope: !4706)
!4708 = !DILocation(line: 117, column: 7, scope: !4683)
!4709 = !DILocation(line: 118, column: 8, scope: !4706)
!4710 = !DILocation(line: 118, column: 5, scope: !4706)
!4711 = !DILocalVariable(name: "ret", scope: !4683, file: !221, line: 130, type: !152)
!4712 = !DILocation(line: 130, column: 10, scope: !4683)
!4713 = !DILocation(line: 130, column: 26, scope: !4683)
!4714 = !DILocation(line: 130, column: 31, scope: !4683)
!4715 = !DILocation(line: 130, column: 34, scope: !4683)
!4716 = !DILocation(line: 130, column: 37, scope: !4683)
!4717 = !DILocation(line: 130, column: 16, scope: !4683)
!4718 = !DILocation(line: 135, column: 7, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4683, file: !221, line: 135, column: 7)
!4720 = !DILocation(line: 135, column: 11, scope: !4719)
!4721 = !DILocation(line: 135, column: 25, scope: !4719)
!4722 = !DILocation(line: 135, column: 39, scope: !4719)
!4723 = !DILocation(line: 135, column: 30, scope: !4719)
!4724 = !DILocation(line: 135, column: 7, scope: !4683)
!4725 = !DILocation(line: 137, column: 14, scope: !4719)
!4726 = !DILocation(line: 137, column: 5, scope: !4719)
!4727 = !DILocation(line: 138, column: 7, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4683, file: !221, line: 138, column: 7)
!4729 = !DILocation(line: 138, column: 11, scope: !4728)
!4730 = !DILocation(line: 138, column: 7, scope: !4683)
!4731 = !DILocation(line: 139, column: 5, scope: !4728)
!4732 = !DILocation(line: 143, column: 22, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4683, file: !221, line: 143, column: 7)
!4734 = !DILocation(line: 143, column: 19, scope: !4733)
!4735 = !DILocation(line: 143, column: 26, scope: !4733)
!4736 = !DILocation(line: 143, column: 29, scope: !4733)
!4737 = !DILocation(line: 143, column: 31, scope: !4733)
!4738 = !DILocation(line: 143, column: 36, scope: !4733)
!4739 = !DILocation(line: 143, column: 41, scope: !4733)
!4740 = !DILocation(line: 143, column: 7, scope: !4683)
!4741 = !DILocation(line: 145, column: 11, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4743, file: !221, line: 145, column: 11)
!4743 = distinct !DILexicalBlock(scope: !4733, file: !221, line: 144, column: 5)
!4744 = !DILocation(line: 145, column: 15, scope: !4742)
!4745 = !DILocation(line: 145, column: 11, scope: !4743)
!4746 = !DILocation(line: 146, column: 33, scope: !4742)
!4747 = !DILocation(line: 146, column: 32, scope: !4742)
!4748 = !DILocation(line: 146, column: 16, scope: !4742)
!4749 = !DILocation(line: 146, column: 10, scope: !4742)
!4750 = !DILocation(line: 146, column: 14, scope: !4742)
!4751 = !DILocation(line: 146, column: 9, scope: !4742)
!4752 = !DILocation(line: 147, column: 7, scope: !4743)
!4753 = !DILocation(line: 151, column: 10, scope: !4683)
!4754 = !DILocation(line: 151, column: 3, scope: !4683)
!4755 = !DILocation(line: 286, column: 1, scope: !4683)
!4756 = distinct !DISubprogram(name: "mbszero", scope: !4757, file: !4757, line: 1135, type: !4758, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !312, retainedNodes: !37)
!4757 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!4758 = !DISubroutineType(types: !4759)
!4759 = !{null, !4760}
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !226, line: 6, baseType: !4762)
!4762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !228, line: 21, baseType: !4763)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !228, line: 13, size: 64, elements: !4764)
!4764 = !{!4765, !4766}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4763, file: !228, line: 15, baseType: !33, size: 32)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4763, file: !228, line: 20, baseType: !4767, size: 32, offset: 32)
!4767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4763, file: !228, line: 16, size: 32, elements: !4768)
!4768 = !{!4769, !4770}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4767, file: !228, line: 18, baseType: !14, size: 32)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4767, file: !228, line: 19, baseType: !237, size: 32)
!4771 = !DILocalVariable(name: "ps", arg: 1, scope: !4756, file: !4757, line: 1135, type: !4760)
!4772 = !DILocation(line: 1135, column: 21, scope: !4756)
!4773 = !DILocation(line: 1137, column: 11, scope: !4756)
!4774 = !DILocation(line: 1137, column: 3, scope: !4756)
!4775 = !DILocation(line: 1138, column: 1, scope: !4756)
!4776 = distinct !DISubprogram(name: "memeq", scope: !3562, file: !3562, line: 974, type: !4777, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !314, retainedNodes: !37)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!50, !1468, !1468, !152}
!4779 = !DILocalVariable(name: "__s1", arg: 1, scope: !4776, file: !3562, line: 974, type: !1468)
!4780 = !DILocation(line: 974, column: 20, scope: !4776)
!4781 = !DILocalVariable(name: "__s2", arg: 2, scope: !4776, file: !3562, line: 974, type: !1468)
!4782 = !DILocation(line: 974, column: 38, scope: !4776)
!4783 = !DILocalVariable(name: "__n", arg: 3, scope: !4776, file: !3562, line: 974, type: !152)
!4784 = !DILocation(line: 974, column: 51, scope: !4776)
!4785 = !DILocation(line: 976, column: 19, scope: !4776)
!4786 = !DILocation(line: 976, column: 25, scope: !4776)
!4787 = !DILocation(line: 976, column: 31, scope: !4776)
!4788 = !DILocation(line: 976, column: 11, scope: !4776)
!4789 = !DILocation(line: 976, column: 10, scope: !4776)
!4790 = !DILocation(line: 976, column: 3, scope: !4776)
!4791 = !DILocalVariable(name: "fd", arg: 1, scope: !241, file: !242, line: 39, type: !106)
!4792 = !DILocation(line: 39, column: 12, scope: !241)
!4793 = !DILocalVariable(name: "flags", arg: 2, scope: !241, file: !242, line: 39, type: !33)
!4794 = !DILocation(line: 39, column: 23, scope: !241)
!4795 = !DILocalVariable(name: "tmp", scope: !241, file: !242, line: 44, type: !813)
!4796 = !DILocation(line: 44, column: 7, scope: !241)
!4797 = !DILocation(line: 45, column: 12, scope: !241)
!4798 = !DILocation(line: 45, column: 3, scope: !241)
!4799 = !DILocation(line: 45, column: 10, scope: !241)
!4800 = !DILocation(line: 46, column: 12, scope: !241)
!4801 = !DILocation(line: 46, column: 3, scope: !241)
!4802 = !DILocation(line: 46, column: 10, scope: !241)
!4803 = !DILocation(line: 55, column: 9, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4805, file: !242, line: 55, column: 9)
!4805 = distinct !DILexicalBlock(scope: !241, file: !242, line: 52, column: 3)
!4806 = !DILocation(line: 55, column: 27, scope: !4804)
!4807 = !DILocation(line: 55, column: 9, scope: !4805)
!4808 = !DILocalVariable(name: "result", scope: !4809, file: !242, line: 57, type: !33)
!4809 = distinct !DILexicalBlock(scope: !4804, file: !242, line: 56, column: 7)
!4810 = !DILocation(line: 57, column: 13, scope: !4809)
!4811 = !DILocation(line: 57, column: 29, scope: !4809)
!4812 = !DILocation(line: 57, column: 33, scope: !4809)
!4813 = !DILocation(line: 57, column: 22, scope: !4809)
!4814 = !DILocation(line: 58, column: 15, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4809, file: !242, line: 58, column: 13)
!4816 = !DILocation(line: 58, column: 22, scope: !4815)
!4817 = !DILocation(line: 58, column: 26, scope: !4815)
!4818 = !DILocation(line: 58, column: 29, scope: !4815)
!4819 = !DILocation(line: 58, column: 35, scope: !4815)
!4820 = !DILocation(line: 58, column: 13, scope: !4809)
!4821 = !DILocation(line: 60, column: 31, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4815, file: !242, line: 59, column: 11)
!4823 = !DILocation(line: 61, column: 20, scope: !4822)
!4824 = !DILocation(line: 61, column: 13, scope: !4822)
!4825 = !DILocation(line: 63, column: 27, scope: !4809)
!4826 = !DILocation(line: 64, column: 7, scope: !4809)
!4827 = !DILocation(line: 69, column: 8, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !241, file: !242, line: 69, column: 7)
!4829 = !DILocation(line: 69, column: 14, scope: !4828)
!4830 = !DILocation(line: 69, column: 63, scope: !4828)
!4831 = !DILocation(line: 69, column: 7, scope: !241)
!4832 = !DILocation(line: 71, column: 7, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4828, file: !242, line: 70, column: 5)
!4834 = !DILocation(line: 71, column: 13, scope: !4833)
!4835 = !DILocation(line: 72, column: 7, scope: !4833)
!4836 = !DILocation(line: 106, column: 13, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !241, file: !242, line: 106, column: 7)
!4838 = !DILocation(line: 106, column: 7, scope: !4837)
!4839 = !DILocation(line: 106, column: 17, scope: !4837)
!4840 = !DILocation(line: 106, column: 7, scope: !241)
!4841 = !DILocation(line: 107, column: 5, scope: !4837)
!4842 = !DILocation(line: 115, column: 7, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !241, file: !242, line: 115, column: 7)
!4844 = !DILocation(line: 115, column: 13, scope: !4843)
!4845 = !DILocation(line: 115, column: 7, scope: !241)
!4846 = !DILocalVariable(name: "fcntl_flags", scope: !4847, file: !242, line: 117, type: !33)
!4847 = distinct !DILexicalBlock(scope: !4843, file: !242, line: 116, column: 5)
!4848 = !DILocation(line: 117, column: 11, scope: !4847)
!4849 = !DILocation(line: 119, column: 33, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4847, file: !242, line: 119, column: 11)
!4851 = !DILocation(line: 119, column: 26, scope: !4850)
!4852 = !DILocation(line: 119, column: 24, scope: !4850)
!4853 = !DILocation(line: 119, column: 53, scope: !4850)
!4854 = !DILocation(line: 120, column: 11, scope: !4850)
!4855 = !DILocation(line: 120, column: 21, scope: !4850)
!4856 = !DILocation(line: 120, column: 37, scope: !4850)
!4857 = !DILocation(line: 120, column: 49, scope: !4850)
!4858 = !DILocation(line: 120, column: 14, scope: !4850)
!4859 = !DILocation(line: 120, column: 63, scope: !4850)
!4860 = !DILocation(line: 121, column: 11, scope: !4850)
!4861 = !DILocation(line: 121, column: 36, scope: !4850)
!4862 = !DILocation(line: 121, column: 29, scope: !4850)
!4863 = !DILocation(line: 121, column: 27, scope: !4850)
!4864 = !DILocation(line: 121, column: 56, scope: !4850)
!4865 = !DILocation(line: 122, column: 11, scope: !4850)
!4866 = !DILocation(line: 122, column: 21, scope: !4850)
!4867 = !DILocation(line: 122, column: 37, scope: !4850)
!4868 = !DILocation(line: 122, column: 49, scope: !4850)
!4869 = !DILocation(line: 122, column: 14, scope: !4850)
!4870 = !DILocation(line: 122, column: 63, scope: !4850)
!4871 = !DILocation(line: 119, column: 11, scope: !4847)
!4872 = !DILocation(line: 123, column: 9, scope: !4850)
!4873 = !DILocation(line: 124, column: 5, scope: !4847)
!4874 = !DILocation(line: 126, column: 7, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !241, file: !242, line: 126, column: 7)
!4876 = !DILocation(line: 126, column: 13, scope: !4875)
!4877 = !DILocation(line: 126, column: 7, scope: !241)
!4878 = !DILocalVariable(name: "fcntl_flags", scope: !4879, file: !242, line: 128, type: !33)
!4879 = distinct !DILexicalBlock(scope: !4875, file: !242, line: 127, column: 5)
!4880 = !DILocation(line: 128, column: 11, scope: !4879)
!4881 = !DILocation(line: 130, column: 33, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4879, file: !242, line: 130, column: 11)
!4883 = !DILocation(line: 130, column: 26, scope: !4882)
!4884 = !DILocation(line: 130, column: 24, scope: !4882)
!4885 = !DILocation(line: 130, column: 53, scope: !4882)
!4886 = !DILocation(line: 131, column: 11, scope: !4882)
!4887 = !DILocation(line: 131, column: 21, scope: !4882)
!4888 = !DILocation(line: 131, column: 37, scope: !4882)
!4889 = !DILocation(line: 131, column: 49, scope: !4882)
!4890 = !DILocation(line: 131, column: 14, scope: !4882)
!4891 = !DILocation(line: 131, column: 63, scope: !4882)
!4892 = !DILocation(line: 132, column: 11, scope: !4882)
!4893 = !DILocation(line: 132, column: 36, scope: !4882)
!4894 = !DILocation(line: 132, column: 29, scope: !4882)
!4895 = !DILocation(line: 132, column: 27, scope: !4882)
!4896 = !DILocation(line: 132, column: 56, scope: !4882)
!4897 = !DILocation(line: 133, column: 11, scope: !4882)
!4898 = !DILocation(line: 133, column: 21, scope: !4882)
!4899 = !DILocation(line: 133, column: 37, scope: !4882)
!4900 = !DILocation(line: 133, column: 49, scope: !4882)
!4901 = !DILocation(line: 133, column: 14, scope: !4882)
!4902 = !DILocation(line: 133, column: 63, scope: !4882)
!4903 = !DILocation(line: 130, column: 11, scope: !4879)
!4904 = !DILocation(line: 134, column: 9, scope: !4882)
!4905 = !DILocation(line: 135, column: 5, scope: !4879)
!4906 = !DILocation(line: 150, column: 3, scope: !241)
!4907 = !DILabel(scope: !241, name: "fail", file: !242, line: 155)
!4908 = !DILocation(line: 155, column: 2, scope: !241)
!4909 = !DILocalVariable(name: "saved_errno", scope: !4910, file: !242, line: 157, type: !33)
!4910 = distinct !DILexicalBlock(scope: !241, file: !242, line: 156, column: 3)
!4911 = !DILocation(line: 157, column: 9, scope: !4910)
!4912 = !DILocation(line: 157, column: 23, scope: !4910)
!4913 = !DILocation(line: 158, column: 12, scope: !4910)
!4914 = !DILocation(line: 158, column: 5, scope: !4910)
!4915 = !DILocation(line: 159, column: 12, scope: !4910)
!4916 = !DILocation(line: 159, column: 5, scope: !4910)
!4917 = !DILocation(line: 160, column: 13, scope: !4910)
!4918 = !DILocation(line: 160, column: 5, scope: !4910)
!4919 = !DILocation(line: 160, column: 11, scope: !4910)
!4920 = !DILocation(line: 161, column: 13, scope: !4910)
!4921 = !DILocation(line: 161, column: 5, scope: !4910)
!4922 = !DILocation(line: 161, column: 11, scope: !4910)
!4923 = !DILocation(line: 162, column: 13, scope: !4910)
!4924 = !DILocation(line: 162, column: 5, scope: !4910)
!4925 = !DILocation(line: 162, column: 11, scope: !4910)
!4926 = !DILocation(line: 163, column: 5, scope: !4910)
!4927 = !DILocation(line: 166, column: 1, scope: !241)
!4928 = distinct !DISubprogram(name: "rpl_realloc", scope: !4929, file: !4929, line: 2057, type: !3945, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !316, retainedNodes: !37)
!4929 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4930 = !DILocalVariable(name: "ptr", arg: 1, scope: !4928, file: !4929, line: 2057, type: !32)
!4931 = !DILocation(line: 2057, column: 20, scope: !4928)
!4932 = !DILocalVariable(name: "size", arg: 2, scope: !4928, file: !4929, line: 2057, type: !152)
!4933 = !DILocation(line: 2057, column: 32, scope: !4928)
!4934 = !DILocation(line: 2059, column: 19, scope: !4928)
!4935 = !DILocation(line: 2059, column: 24, scope: !4928)
!4936 = !DILocation(line: 2059, column: 31, scope: !4928)
!4937 = !DILocation(line: 2059, column: 10, scope: !4928)
!4938 = !DILocation(line: 2059, column: 3, scope: !4928)
!4939 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !319, file: !319, line: 27, type: !3882, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !318, retainedNodes: !37)
!4940 = !DILocalVariable(name: "ptr", arg: 1, scope: !4939, file: !319, line: 27, type: !32)
!4941 = !DILocation(line: 27, column: 21, scope: !4939)
!4942 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4939, file: !319, line: 27, type: !152)
!4943 = !DILocation(line: 27, column: 33, scope: !4939)
!4944 = !DILocalVariable(name: "size", arg: 3, scope: !4939, file: !319, line: 27, type: !152)
!4945 = !DILocation(line: 27, column: 47, scope: !4939)
!4946 = !DILocalVariable(name: "nbytes", scope: !4939, file: !319, line: 29, type: !152)
!4947 = !DILocation(line: 29, column: 10, scope: !4939)
!4948 = !DILocation(line: 30, column: 7, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4939, file: !319, line: 30, column: 7)
!4950 = !DILocation(line: 30, column: 7, scope: !4939)
!4951 = !DILocation(line: 32, column: 7, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4949, file: !319, line: 31, column: 5)
!4953 = !DILocation(line: 32, column: 13, scope: !4952)
!4954 = !DILocation(line: 33, column: 7, scope: !4952)
!4955 = !DILocation(line: 37, column: 19, scope: !4939)
!4956 = !DILocation(line: 37, column: 24, scope: !4939)
!4957 = !DILocation(line: 37, column: 10, scope: !4939)
!4958 = !DILocation(line: 37, column: 3, scope: !4939)
!4959 = !DILocation(line: 38, column: 1, scope: !4939)
!4960 = distinct !DISubprogram(name: "hard_locale", scope: !322, file: !322, line: 28, type: !4961, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !321, retainedNodes: !37)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!50, !33}
!4963 = !DILocalVariable(name: "category", arg: 1, scope: !4960, file: !322, line: 28, type: !33)
!4964 = !DILocation(line: 28, column: 18, scope: !4960)
!4965 = !DILocalVariable(name: "locale", scope: !4960, file: !322, line: 30, type: !4966)
!4966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !4967)
!4967 = !{!4968}
!4968 = !DISubrange(count: 257)
!4969 = !DILocation(line: 30, column: 8, scope: !4960)
!4970 = !DILocation(line: 32, column: 25, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4960, file: !322, line: 32, column: 7)
!4972 = !DILocation(line: 32, column: 35, scope: !4971)
!4973 = !DILocation(line: 32, column: 7, scope: !4971)
!4974 = !DILocation(line: 32, column: 7, scope: !4960)
!4975 = !DILocation(line: 33, column: 5, scope: !4971)
!4976 = !DILocation(line: 35, column: 16, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4960, file: !322, line: 35, column: 7)
!4978 = !DILocation(line: 35, column: 9, scope: !4977)
!4979 = !DILocation(line: 35, column: 29, scope: !4977)
!4980 = !DILocation(line: 35, column: 39, scope: !4977)
!4981 = !DILocation(line: 35, column: 32, scope: !4977)
!4982 = !DILocation(line: 35, column: 7, scope: !4960)
!4983 = !DILocation(line: 36, column: 5, scope: !4977)
!4984 = !DILocation(line: 46, column: 3, scope: !4960)
!4985 = !DILocation(line: 47, column: 1, scope: !4960)
!4986 = distinct !DISubprogram(name: "setlocale_null_r", scope: !324, file: !324, line: 154, type: !4987, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !323, retainedNodes: !37)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{!33, !33, !35, !152}
!4989 = !DILocalVariable(name: "category", arg: 1, scope: !4986, file: !324, line: 154, type: !33)
!4990 = !DILocation(line: 154, column: 23, scope: !4986)
!4991 = !DILocalVariable(name: "buf", arg: 2, scope: !4986, file: !324, line: 154, type: !35)
!4992 = !DILocation(line: 154, column: 39, scope: !4986)
!4993 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4986, file: !324, line: 154, type: !152)
!4994 = !DILocation(line: 154, column: 51, scope: !4986)
!4995 = !DILocation(line: 159, column: 37, scope: !4986)
!4996 = !DILocation(line: 159, column: 47, scope: !4986)
!4997 = !DILocation(line: 159, column: 52, scope: !4986)
!4998 = !DILocation(line: 159, column: 10, scope: !4986)
!4999 = !DILocation(line: 159, column: 3, scope: !4986)
!5000 = distinct !DISubprogram(name: "setlocale_null", scope: !324, file: !324, line: 186, type: !5001, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !323, retainedNodes: !37)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!6, !33}
!5003 = !DILocalVariable(name: "category", arg: 1, scope: !5000, file: !324, line: 186, type: !33)
!5004 = !DILocation(line: 186, column: 21, scope: !5000)
!5005 = !DILocation(line: 189, column: 35, scope: !5000)
!5006 = !DILocation(line: 189, column: 10, scope: !5000)
!5007 = !DILocation(line: 189, column: 3, scope: !5000)
!5008 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !326, file: !326, line: 35, type: !5001, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !325, retainedNodes: !37)
!5009 = !DILocalVariable(name: "category", arg: 1, scope: !5008, file: !326, line: 35, type: !33)
!5010 = !DILocation(line: 35, column: 30, scope: !5008)
!5011 = !DILocalVariable(name: "result", scope: !5008, file: !326, line: 37, type: !6)
!5012 = !DILocation(line: 37, column: 15, scope: !5008)
!5013 = !DILocation(line: 37, column: 35, scope: !5008)
!5014 = !DILocation(line: 37, column: 24, scope: !5008)
!5015 = !DILocation(line: 62, column: 10, scope: !5008)
!5016 = !DILocation(line: 62, column: 3, scope: !5008)
!5017 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !326, file: !326, line: 66, type: !4987, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !325, retainedNodes: !37)
!5018 = !DILocalVariable(name: "category", arg: 1, scope: !5017, file: !326, line: 66, type: !33)
!5019 = !DILocation(line: 66, column: 32, scope: !5017)
!5020 = !DILocalVariable(name: "buf", arg: 2, scope: !5017, file: !326, line: 66, type: !35)
!5021 = !DILocation(line: 66, column: 48, scope: !5017)
!5022 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5017, file: !326, line: 66, type: !152)
!5023 = !DILocation(line: 66, column: 60, scope: !5017)
!5024 = !DILocalVariable(name: "result", scope: !5017, file: !326, line: 111, type: !6)
!5025 = !DILocation(line: 111, column: 15, scope: !5017)
!5026 = !DILocation(line: 111, column: 49, scope: !5017)
!5027 = !DILocation(line: 111, column: 24, scope: !5017)
!5028 = !DILocation(line: 113, column: 7, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5017, file: !326, line: 113, column: 7)
!5030 = !DILocation(line: 113, column: 14, scope: !5029)
!5031 = !DILocation(line: 113, column: 7, scope: !5017)
!5032 = !DILocation(line: 116, column: 11, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5034, file: !326, line: 116, column: 11)
!5034 = distinct !DILexicalBlock(scope: !5029, file: !326, line: 114, column: 5)
!5035 = !DILocation(line: 116, column: 19, scope: !5033)
!5036 = !DILocation(line: 116, column: 11, scope: !5034)
!5037 = !DILocation(line: 120, column: 9, scope: !5033)
!5038 = !DILocation(line: 120, column: 16, scope: !5033)
!5039 = !DILocation(line: 121, column: 7, scope: !5034)
!5040 = !DILocalVariable(name: "length", scope: !5041, file: !326, line: 125, type: !152)
!5041 = distinct !DILexicalBlock(scope: !5029, file: !326, line: 124, column: 5)
!5042 = !DILocation(line: 125, column: 14, scope: !5041)
!5043 = !DILocation(line: 125, column: 31, scope: !5041)
!5044 = !DILocation(line: 125, column: 23, scope: !5041)
!5045 = !DILocation(line: 126, column: 11, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5041, file: !326, line: 126, column: 11)
!5047 = !DILocation(line: 126, column: 20, scope: !5046)
!5048 = !DILocation(line: 126, column: 18, scope: !5046)
!5049 = !DILocation(line: 126, column: 11, scope: !5041)
!5050 = !DILocation(line: 128, column: 19, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5046, file: !326, line: 127, column: 9)
!5052 = !DILocation(line: 128, column: 24, scope: !5051)
!5053 = !DILocation(line: 128, column: 32, scope: !5051)
!5054 = !DILocation(line: 128, column: 39, scope: !5051)
!5055 = !DILocation(line: 128, column: 11, scope: !5051)
!5056 = !DILocation(line: 129, column: 11, scope: !5051)
!5057 = !DILocation(line: 133, column: 15, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5059, file: !326, line: 133, column: 15)
!5059 = distinct !DILexicalBlock(scope: !5046, file: !326, line: 132, column: 9)
!5060 = !DILocation(line: 133, column: 23, scope: !5058)
!5061 = !DILocation(line: 133, column: 15, scope: !5059)
!5062 = !DILocation(line: 138, column: 23, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5058, file: !326, line: 134, column: 13)
!5064 = !DILocation(line: 138, column: 28, scope: !5063)
!5065 = !DILocation(line: 138, column: 36, scope: !5063)
!5066 = !DILocation(line: 138, column: 44, scope: !5063)
!5067 = !DILocation(line: 138, column: 15, scope: !5063)
!5068 = !DILocation(line: 139, column: 15, scope: !5063)
!5069 = !DILocation(line: 139, column: 19, scope: !5063)
!5070 = !DILocation(line: 139, column: 27, scope: !5063)
!5071 = !DILocation(line: 139, column: 32, scope: !5063)
!5072 = !DILocation(line: 140, column: 13, scope: !5063)
!5073 = !DILocation(line: 141, column: 11, scope: !5059)
!5074 = !DILocation(line: 145, column: 1, scope: !5017)
