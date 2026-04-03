; ModuleID = 'src/groups.bc'
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
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Usage: %s [OPTION]... [USERNAME]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [155 x i8] c"Print group memberships for each USERNAME or, if no USERNAME is specified, for\0Athe current process (which may differ if the groups database has changed).\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@longopts = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"James Youngman\00", align 1
@optind = external global i32, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s : \00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !28
@.str.17 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.39 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.47 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.48 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.56 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@.str.2.57 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %ju\00", align 1
@.str.3.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4.59 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), align 8, !dbg !49
@file_name = internal global i8* null, align 8, !dbg !54
@ignore_EPIPE = internal global i8 0, align 1, !dbg !59
@.str.65 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.66 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.67 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.68 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !62
@stderr = external global %struct._IO_FILE*, align 8
@.str.69 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !91
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !68
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !87
@.str.1.75 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.76 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.77 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !89
@.str.4.70 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.71 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.72 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !96
@.str.88 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.89 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !102
@.str.92 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.93 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.94 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.95 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.96 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.97 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.98 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.99 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.100 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.101 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.93, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.94, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.95, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.96, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.97, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.98, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.99, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.100, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.101, i32 0, i32 0), i8* null], align 8, !dbg !113
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !142
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !160
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !175
@nslots = internal global i32 1, align 4, !dbg !182
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !162
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !184
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !148
@.str.10.102 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.103 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.104 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.105 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !167
@.str.112 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.113 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.114 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.115 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.116 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.117 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.118 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.119 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.120 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.121 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.122 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.123 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.124 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.125 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.126 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.127 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.128 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.133 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.134 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.135 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.136 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.137 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.138 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.139 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !190
@exit_failure = dso_local global i32 1, align 4, !dbg !198
@.str.152 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.150 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.151 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.175 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !204
@.str.190 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.191 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !325 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !328, metadata !DIExpression()), !dbg !329
  %3 = load i32, i32* %2, align 4, !dbg !330
  %4 = icmp ne i32 %3, 0, !dbg !332
  br i1 %4, label %5, label %12, !dbg !333

5:                                                ; preds = %1
  br label %6, !dbg !334

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !335
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !335
  %9 = load i8*, i8** @program_name, align 8, !dbg !335
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !335
  br label %11, !dbg !335

11:                                               ; preds = %6
  br label %21, !dbg !335

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !337
  %14 = load i8*, i8** @program_name, align 8, !dbg !339
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !340
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([155 x i8], [155 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !341
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !341
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !341
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !342
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !342
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !343
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !343
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !344
  br label %21

21:                                               ; preds = %12, %11
  %22 = load i32, i32* %2, align 4, !dbg !345
  call void @exit(i32 noundef %22) #19, !dbg !346
  unreachable, !dbg !346
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !347, metadata !DIExpression()), !dbg !348
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !349, metadata !DIExpression()), !dbg !350
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !351
  %15 = icmp eq i32 %14, -1, !dbg !353
  br i1 %15, label %16, label %30, !dbg !354

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !355, metadata !DIExpression()), !dbg !357
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #18, !dbg !358
  store i8* %17, i8** %5, align 8, !dbg !357
  %18 = load i8*, i8** %5, align 8, !dbg !359
  %19 = icmp ne i8* %18, null, !dbg !359
  br i1 %19, label %20, label %27, !dbg !360

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !361
  %22 = load i8, i8* %21, align 1, !dbg !362
  %23 = icmp ne i8 %22, 0, !dbg !362
  br i1 %23, label %24, label %27, !dbg !363

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !364
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)), !dbg !365
  br label %27, !dbg !363

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !363
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !366
  br label %30, !dbg !367

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !368
  %32 = icmp ne i32 %31, 0, !dbg !368
  br i1 %32, label %33, label %37, !dbg !370

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !371
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !371
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !371
  br label %274, !dbg !373

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !374, metadata !DIExpression()), !dbg !375
  store i8 1, i8* %6, align 1, !dbg !375
  call void @llvm.dbg.declare(metadata i8** %7, metadata !376, metadata !DIExpression()), !dbg !377
  %38 = load i8*, i8** %4, align 8, !dbg !378
  %39 = load i8*, i8** %4, align 8, !dbg !379
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #20, !dbg !380
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !381
  store i8* %41, i8** %7, align 8, !dbg !377
  call void @llvm.dbg.declare(metadata i8** %8, metadata !382, metadata !DIExpression()), !dbg !383
  %42 = load i8*, i8** %4, align 8, !dbg !384
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !385
  store i8* %43, i8** %8, align 8, !dbg !383
  %44 = load i8*, i8** %8, align 8, !dbg !386
  %45 = icmp ne i8* %44, null, !dbg !386
  br i1 %45, label %48, label %46, !dbg !388

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !389
  store i8* %47, i8** %8, align 8, !dbg !391
  store i8 0, i8* %6, align 1, !dbg !392
  br label %89, !dbg !393

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !394
  %50 = load i8*, i8** %7, align 8, !dbg !396
  %51 = icmp ne i8* %49, %50, !dbg !397
  br i1 %51, label %52, label %88, !dbg !398

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !399, metadata !DIExpression()), !dbg !401
  %53 = load i8*, i8** %7, align 8, !dbg !402
  store i8* %53, i8** %9, align 8, !dbg !401
  call void @llvm.dbg.declare(metadata i64* %10, metadata !403, metadata !DIExpression()), !dbg !404
  store i64 0, i64* %10, align 8, !dbg !404
  br label %54, !dbg !405

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !406
  %56 = load i8*, i8** %8, align 8, !dbg !407
  %57 = icmp ult i8* %55, %56, !dbg !408
  br i1 %57, label %58, label %61, !dbg !409

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !410
  %60 = icmp ult i64 %59, 2, !dbg !411
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !412
  br i1 %62, label %63, label %82, !dbg !405

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !413
  %65 = load i16*, i16** %64, align 8, !dbg !413
  %66 = load i8*, i8** %9, align 8, !dbg !413
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !413
  store i8* %67, i8** %9, align 8, !dbg !413
  %68 = load i8, i8* %66, align 1, !dbg !413
  %69 = zext i8 %68 to i32, !dbg !413
  %70 = sext i32 %69 to i64, !dbg !413
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !413
  %72 = load i16, i16* %71, align 2, !dbg !413
  %73 = zext i16 %72 to i32, !dbg !413
  %74 = and i32 %73, 8192, !dbg !413
  %75 = icmp ne i32 %74, 0, !dbg !414
  %76 = xor i1 %75, true, !dbg !414
  %77 = xor i1 %76, true, !dbg !415
  %78 = zext i1 %77 to i32, !dbg !415
  %79 = sext i32 %78 to i64, !dbg !415
  %80 = load i64, i64* %10, align 8, !dbg !416
  %81 = add i64 %80, %79, !dbg !416
  store i64 %81, i64* %10, align 8, !dbg !416
  br label %54, !dbg !405, !llvm.loop !417

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !419
  %84 = icmp eq i64 %83, 2, !dbg !421
  br i1 %84, label %85, label %87, !dbg !422

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !423
  store i8* %86, i8** %8, align 8, !dbg !425
  store i8 0, i8* %6, align 1, !dbg !426
  br label %87, !dbg !427

87:                                               ; preds = %85, %82
  br label %88, !dbg !428

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !429, metadata !DIExpression()), !dbg !430
  %90 = load i8*, i8** %8, align 8, !dbg !431
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)) #20, !dbg !432
  store i64 %91, i64* %11, align 8, !dbg !430
  call void @llvm.dbg.declare(metadata i8** %12, metadata !433, metadata !DIExpression()), !dbg !434
  %92 = load i8*, i8** %8, align 8, !dbg !435
  %93 = load i64, i64* %11, align 8, !dbg !436
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !437
  store i8* %94, i8** %12, align 8, !dbg !434
  br label %95, !dbg !438

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !439
  %97 = load i8, i8* %96, align 1, !dbg !440
  %98 = zext i8 %97 to i32, !dbg !440
  %99 = icmp ne i32 %98, 0, !dbg !440
  br i1 %99, label %100, label %105, !dbg !441

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !442
  %102 = load i8, i8* %101, align 1, !dbg !443
  %103 = zext i8 %102 to i32, !dbg !443
  %104 = icmp ne i32 %103, 10, !dbg !444
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !445
  br i1 %106, label %107, label %164, !dbg !438

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !446
  %109 = load i8, i8* %108, align 1, !dbg !449
  %110 = zext i8 %109 to i32, !dbg !449
  %111 = icmp eq i32 %110, 45, !dbg !450
  br i1 %111, label %112, label %119, !dbg !451

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !452
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !453
  %115 = load i8, i8* %114, align 1, !dbg !454
  %116 = zext i8 %115 to i32, !dbg !454
  %117 = icmp eq i32 %116, 45, !dbg !455
  br i1 %117, label %118, label %119, !dbg !456

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !457
  br label %119, !dbg !458

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !459
  %121 = load i16*, i16** %120, align 8, !dbg !459
  %122 = load i8*, i8** %12, align 8, !dbg !459
  %123 = load i8, i8* %122, align 1, !dbg !459
  %124 = zext i8 %123 to i32, !dbg !459
  %125 = sext i32 %124 to i64, !dbg !459
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !459
  %127 = load i16, i16* %126, align 2, !dbg !459
  %128 = zext i16 %127 to i32, !dbg !459
  %129 = and i32 %128, 8192, !dbg !459
  %130 = icmp ne i32 %129, 0, !dbg !459
  br i1 %130, label %131, label %161, !dbg !461

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !462
  %133 = load i8, i8* %132, align 1, !dbg !465
  %134 = zext i8 %133 to i32, !dbg !465
  %135 = icmp eq i32 %134, 9, !dbg !466
  br i1 %135, label %149, label %136, !dbg !467

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !468
  %138 = load i16*, i16** %137, align 8, !dbg !468
  %139 = load i8*, i8** %12, align 8, !dbg !468
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !468
  %141 = load i8, i8* %140, align 1, !dbg !468
  %142 = zext i8 %141 to i32, !dbg !468
  %143 = sext i32 %142 to i64, !dbg !468
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !468
  %145 = load i16, i16* %144, align 2, !dbg !468
  %146 = zext i16 %145 to i32, !dbg !468
  %147 = and i32 %146, 8192, !dbg !468
  %148 = icmp ne i32 %147, 0, !dbg !468
  br i1 %148, label %149, label %150, !dbg !469

149:                                              ; preds = %136, %131
  br label %164, !dbg !470

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !471
  %152 = trunc i8 %151 to i1, !dbg !471
  br i1 %152, label %160, label %153, !dbg !473

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !474
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !475
  %156 = load i8, i8* %155, align 1, !dbg !476
  %157 = zext i8 %156 to i32, !dbg !476
  %158 = icmp ne i32 %157, 45, !dbg !477
  br i1 %158, label %159, label %160, !dbg !478

159:                                              ; preds = %153
  br label %164, !dbg !479

160:                                              ; preds = %153, %150
  br label %161, !dbg !480

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !481
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !481
  store i8* %163, i8** %12, align 8, !dbg !481
  br label %95, !dbg !438, !llvm.loop !482

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !484
  %166 = load i8*, i8** %7, align 8, !dbg !484
  %167 = load i8*, i8** %4, align 8, !dbg !484
  %168 = ptrtoint i8* %166 to i64, !dbg !484
  %169 = ptrtoint i8* %167 to i64, !dbg !484
  %170 = sub i64 %168, %169, !dbg !484
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !484
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !484
  call void @llvm.dbg.declare(metadata i8** %13, metadata !485, metadata !DIExpression()), !dbg !486
  %173 = load i8*, i8** %3, align 8, !dbg !487
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)), !dbg !488
  br i1 %174, label %175, label %176, !dbg !488

175:                                              ; preds = %164
  br label %232, !dbg !488

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !489
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0)), !dbg !490
  br i1 %178, label %179, label %180, !dbg !490

179:                                              ; preds = %176
  br label %230, !dbg !490

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !491
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)), !dbg !492
  br i1 %182, label %183, label %184, !dbg !492

183:                                              ; preds = %180
  br label %228, !dbg !492

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !493
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)), !dbg !494
  br i1 %186, label %187, label %188, !dbg !494

187:                                              ; preds = %184
  br label %226, !dbg !494

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !495
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0)), !dbg !496
  br i1 %190, label %191, label %192, !dbg !496

191:                                              ; preds = %188
  br label %224, !dbg !496

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !497
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0)), !dbg !498
  br i1 %194, label %195, label %196, !dbg !498

195:                                              ; preds = %192
  br label %222, !dbg !498

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !499
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)), !dbg !500
  br i1 %198, label %199, label %200, !dbg !500

199:                                              ; preds = %196
  br label %220, !dbg !500

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !501
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)), !dbg !502
  br i1 %202, label %203, label %204, !dbg !502

203:                                              ; preds = %200
  br label %218, !dbg !502

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !503
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)), !dbg !504
  br i1 %206, label %207, label %208, !dbg !504

207:                                              ; preds = %204
  br label %216, !dbg !504

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !505
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)), !dbg !506
  br i1 %210, label %211, label %212, !dbg !506

211:                                              ; preds = %208
  br label %214, !dbg !506

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !507
  br label %214, !dbg !506

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !506
  br label %216, !dbg !504

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !504
  br label %218, !dbg !502

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !502
  br label %220, !dbg !500

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !500
  br label %222, !dbg !498

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !498
  br label %224, !dbg !496

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !496
  br label %226, !dbg !494

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !494
  br label %228, !dbg !492

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !492
  br label %230, !dbg !490

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !490
  br label %232, !dbg !488

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !488
  store i8* %233, i8** %13, align 8, !dbg !486
  %234 = load i8*, i8** %8, align 8, !dbg !508
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i64 noundef 6) #20, !dbg !508
  %236 = icmp eq i32 %235, 0, !dbg !508
  br i1 %236, label %241, label %237, !dbg !510

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !511
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 noundef 9) #20, !dbg !511
  %240 = icmp eq i32 %239, 0, !dbg !511
  br i1 %240, label %241, label %248, !dbg !512

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !513
  %243 = load i8*, i8** %13, align 8, !dbg !515
  %244 = load i64, i64* %11, align 8, !dbg !516
  %245 = trunc i64 %244 to i32, !dbg !517
  %246 = load i8*, i8** %8, align 8, !dbg !518
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !519
  br label %254, !dbg !520

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !521
  %250 = load i64, i64* %11, align 8, !dbg !523
  %251 = trunc i64 %250 to i32, !dbg !524
  %252 = load i8*, i8** %8, align 8, !dbg !525
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.39, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !526
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !527
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !527
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !528
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !528
  %259 = load i8*, i8** %7, align 8, !dbg !529
  %260 = load i8*, i8** %12, align 8, !dbg !529
  %261 = load i8*, i8** %7, align 8, !dbg !529
  %262 = ptrtoint i8* %260 to i64, !dbg !529
  %263 = ptrtoint i8* %261 to i64, !dbg !529
  %264 = sub i64 %262, %263, !dbg !529
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !529
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !529
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !530
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !530
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !531
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !531
  %271 = load i8*, i8** %12, align 8, !dbg !532
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !532
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !532
  br label %274, !dbg !533

274:                                              ; preds = %254, %33
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !534 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !539, metadata !DIExpression()), !dbg !548
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !548
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !548
  call void @llvm.dbg.declare(metadata i8** %4, metadata !549, metadata !DIExpression()), !dbg !550
  %9 = load i8*, i8** %2, align 8, !dbg !551
  store i8* %9, i8** %4, align 8, !dbg !550
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !552, metadata !DIExpression()), !dbg !554
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !555
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !554
  br label %11, !dbg !556

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !557
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !558
  %14 = load i8*, i8** %13, align 8, !dbg !558
  %15 = icmp ne i8* %14, null, !dbg !557
  br i1 %15, label %16, label %23, !dbg !559

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !560
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !561
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !562
  %20 = load i8*, i8** %19, align 8, !dbg !562
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !563
  %22 = xor i1 %21, true, !dbg !564
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !565
  br i1 %24, label %25, label %28, !dbg !556

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !566
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !566
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !566
  br label %11, !dbg !556, !llvm.loop !567

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !568
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !570
  %31 = load i8*, i8** %30, align 8, !dbg !570
  %32 = icmp ne i8* %31, null, !dbg !568
  br i1 %32, label %33, label %37, !dbg !571

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !572
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !573
  %36 = load i8*, i8** %35, align 8, !dbg !573
  store i8* %36, i8** %4, align 8, !dbg !574
  br label %37, !dbg !575

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !576
  call void @llvm.dbg.declare(metadata i8** %6, metadata !577, metadata !DIExpression()), !dbg !578
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !579
  store i8* %38, i8** %6, align 8, !dbg !578
  %39 = load i8*, i8** %6, align 8, !dbg !580
  %40 = icmp ne i8* %39, null, !dbg !580
  br i1 %40, label %41, label %49, !dbg !582

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !583
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 noundef 3) #20, !dbg !583
  %44 = icmp ne i32 %43, 0, !dbg !583
  br i1 %44, label %45, label %49, !dbg !584

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.48, i64 0, i64 0)) #18, !dbg !585
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !585
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !585
  br label %49, !dbg !587

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !588, metadata !DIExpression()), !dbg !589
  %50 = load i8*, i8** %2, align 8, !dbg !590
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)), !dbg !591
  br i1 %51, label %52, label %53, !dbg !591

52:                                               ; preds = %49
  br label %55, !dbg !591

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !592
  br label %55, !dbg !591

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !591
  store i8* %56, i8** %7, align 8, !dbg !589
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0)) #18, !dbg !593
  %58 = load i8*, i8** %7, align 8, !dbg !594
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* noundef %58), !dbg !595
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i64 0, i64 0)) #18, !dbg !596
  %61 = load i8*, i8** %4, align 8, !dbg !597
  %62 = load i8*, i8** %4, align 8, !dbg !598
  %63 = load i8*, i8** %2, align 8, !dbg !599
  %64 = icmp eq i8* %62, %63, !dbg !600
  %65 = zext i1 %64 to i64, !dbg !598
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !598
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !601
  ret void, !dbg !602
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !603 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.passwd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !607, metadata !DIExpression()), !dbg !608
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !609, metadata !DIExpression()), !dbg !610
  %17 = load i8**, i8*** %5, align 8, !dbg !611
  %18 = getelementptr inbounds i8*, i8** %17, i64 0, !dbg !611
  %19 = load i8*, i8** %18, align 8, !dbg !611
  call void @set_program_name(i8* noundef %19), !dbg !612
  %20 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !613
  %21 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !614
  %22 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !615
  %23 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !616
  call void @llvm.dbg.declare(metadata i32* %6, metadata !617, metadata !DIExpression()), !dbg !618
  br label %24, !dbg !619

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4, !dbg !620
  %26 = load i8**, i8*** %5, align 8, !dbg !621
  %27 = call i32 @getopt_long(i32 noundef %25, i8** noundef %26, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18, !dbg !622
  store i32 %27, i32* %6, align 4, !dbg !623
  %28 = icmp ne i32 %27, -1, !dbg !624
  br i1 %28, label %29, label %38, !dbg !619

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4, !dbg !625
  switch i32 %30, label %37 [
    i32 -2, label %31
    i32 -3, label %32
  ], !dbg !627

31:                                               ; preds = %29
  call void @usage(i32 noundef 0) #22, !dbg !628
  unreachable, !dbg !628

32:                                               ; preds = %29
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630
  %34 = load i8*, i8** @Version, align 8, !dbg !630
  %35 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)), !dbg !630
  %36 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)), !dbg !630
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %34, i8* noundef %35, i8* noundef %36, i8* noundef null), !dbg !630
  call void @exit(i32 noundef 0) #19, !dbg !630
  unreachable, !dbg !630

37:                                               ; preds = %29
  call void @usage(i32 noundef 1) #22, !dbg !631
  unreachable, !dbg !631

38:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i8* %7, metadata !632, metadata !DIExpression()), !dbg !633
  store i8 1, i8* %7, align 1, !dbg !633
  %39 = load i32, i32* @optind, align 4, !dbg !634
  %40 = load i32, i32* %4, align 4, !dbg !636
  %41 = icmp eq i32 %39, %40, !dbg !637
  br i1 %41, label %42, label %92, !dbg !638

42:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata i32* %8, metadata !639, metadata !DIExpression()), !dbg !643
  store i32 -1, i32* %8, align 4, !dbg !643
  call void @llvm.dbg.declare(metadata i32* %9, metadata !644, metadata !DIExpression()), !dbg !645
  store i32 -1, i32* %9, align 4, !dbg !645
  %43 = call i32* @__errno_location() #21, !dbg !646
  store i32 0, i32* %43, align 4, !dbg !647
  call void @llvm.dbg.declare(metadata i32* %10, metadata !648, metadata !DIExpression()), !dbg !649
  %44 = call i32 @getuid() #18, !dbg !650
  store i32 %44, i32* %10, align 4, !dbg !649
  %45 = load i32, i32* %10, align 4, !dbg !651
  %46 = load i32, i32* %8, align 4, !dbg !653
  %47 = icmp eq i32 %45, %46, !dbg !654
  br i1 %47, label %48, label %56, !dbg !655

48:                                               ; preds = %42
  %49 = call i32* @__errno_location() #21, !dbg !656
  %50 = load i32, i32* %49, align 4, !dbg !656
  %51 = icmp ne i32 %50, 0, !dbg !656
  br i1 %51, label %52, label %56, !dbg !657

52:                                               ; preds = %48
  %53 = call i32* @__errno_location() #21, !dbg !658
  %54 = load i32, i32* %53, align 4, !dbg !658
  %55 = call i8* @gettext(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !658
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %54, i8* noundef %55), !dbg !658
  unreachable, !dbg !658

56:                                               ; preds = %48, %42
  %57 = call i32* @__errno_location() #21, !dbg !659
  store i32 0, i32* %57, align 4, !dbg !660
  call void @llvm.dbg.declare(metadata i32* %11, metadata !661, metadata !DIExpression()), !dbg !662
  %58 = call i32 @getegid() #18, !dbg !663
  store i32 %58, i32* %11, align 4, !dbg !662
  %59 = load i32, i32* %11, align 4, !dbg !664
  %60 = load i32, i32* %9, align 4, !dbg !666
  %61 = icmp eq i32 %59, %60, !dbg !667
  br i1 %61, label %62, label %70, !dbg !668

62:                                               ; preds = %56
  %63 = call i32* @__errno_location() #21, !dbg !669
  %64 = load i32, i32* %63, align 4, !dbg !669
  %65 = icmp ne i32 %64, 0, !dbg !669
  br i1 %65, label %66, label %70, !dbg !670

66:                                               ; preds = %62
  %67 = call i32* @__errno_location() #21, !dbg !671
  %68 = load i32, i32* %67, align 4, !dbg !671
  %69 = call i8* @gettext(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !671
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %68, i8* noundef %69), !dbg !671
  unreachable, !dbg !671

70:                                               ; preds = %62, %56
  %71 = call i32* @__errno_location() #21, !dbg !672
  store i32 0, i32* %71, align 4, !dbg !673
  call void @llvm.dbg.declare(metadata i32* %12, metadata !674, metadata !DIExpression()), !dbg !675
  %72 = call i32 @getgid() #18, !dbg !676
  store i32 %72, i32* %12, align 4, !dbg !675
  %73 = load i32, i32* %12, align 4, !dbg !677
  %74 = load i32, i32* %9, align 4, !dbg !679
  %75 = icmp eq i32 %73, %74, !dbg !680
  br i1 %75, label %76, label %84, !dbg !681

76:                                               ; preds = %70
  %77 = call i32* @__errno_location() #21, !dbg !682
  %78 = load i32, i32* %77, align 4, !dbg !682
  %79 = icmp ne i32 %78, 0, !dbg !682
  br i1 %79, label %80, label %84, !dbg !683

80:                                               ; preds = %76
  %81 = call i32* @__errno_location() #21, !dbg !684
  %82 = load i32, i32* %81, align 4, !dbg !684
  %83 = call i8* @gettext(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0)) #18, !dbg !684
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %82, i8* noundef %83), !dbg !684
  unreachable, !dbg !684

84:                                               ; preds = %76, %70
  %85 = load i32, i32* %10, align 4, !dbg !685
  %86 = load i32, i32* %12, align 4, !dbg !687
  %87 = load i32, i32* %11, align 4, !dbg !688
  %88 = call i1 @print_group_list(i8* noundef null, i32 noundef %85, i32 noundef %86, i32 noundef %87, i1 noundef true, i8 noundef 32), !dbg !689
  br i1 %88, label %90, label %89, !dbg !690

89:                                               ; preds = %84
  store i8 0, i8* %7, align 1, !dbg !691
  br label %90, !dbg !692

90:                                               ; preds = %89, %84
  %91 = call i32 @putchar_unlocked(i32 noundef 10), !dbg !693
  br label %149, !dbg !694

92:                                               ; preds = %38
  br label %93, !dbg !695

93:                                               ; preds = %145, %92
  %94 = load i32, i32* @optind, align 4, !dbg !697
  %95 = load i32, i32* %4, align 4, !dbg !700
  %96 = icmp slt i32 %94, %95, !dbg !701
  br i1 %96, label %97, label %148, !dbg !702

97:                                               ; preds = %93
  call void @llvm.dbg.declare(metadata %struct.passwd** %13, metadata !703, metadata !DIExpression()), !dbg !716
  %98 = load i8**, i8*** %5, align 8, !dbg !717
  %99 = load i32, i32* @optind, align 4, !dbg !718
  %100 = sext i32 %99 to i64, !dbg !717
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100, !dbg !717
  %102 = load i8*, i8** %101, align 8, !dbg !717
  %103 = call %struct.passwd* @getpwnam(i8* noundef %102), !dbg !719
  store %struct.passwd* %103, %struct.passwd** %13, align 8, !dbg !716
  %104 = load %struct.passwd*, %struct.passwd** %13, align 8, !dbg !720
  %105 = icmp eq %struct.passwd* %104, null, !dbg !722
  br i1 %105, label %106, label %114, !dbg !723

106:                                              ; preds = %97
  %107 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0)) #18, !dbg !724
  %108 = load i8**, i8*** %5, align 8, !dbg !724
  %109 = load i32, i32* @optind, align 4, !dbg !724
  %110 = sext i32 %109 to i64, !dbg !724
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110, !dbg !724
  %112 = load i8*, i8** %111, align 8, !dbg !724
  %113 = call i8* @quote(i8* noundef %112), !dbg !724
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %107, i8* noundef %113), !dbg !724
  store i8 0, i8* %7, align 1, !dbg !726
  br label %145, !dbg !727

114:                                              ; preds = %97
  call void @llvm.dbg.declare(metadata i32* %14, metadata !728, metadata !DIExpression()), !dbg !729
  %115 = load %struct.passwd*, %struct.passwd** %13, align 8, !dbg !730
  %116 = getelementptr inbounds %struct.passwd, %struct.passwd* %115, i32 0, i32 2, !dbg !731
  %117 = load i32, i32* %116, align 8, !dbg !731
  store i32 %117, i32* %14, align 4, !dbg !729
  call void @llvm.dbg.declare(metadata i32* %15, metadata !732, metadata !DIExpression()), !dbg !733
  %118 = load %struct.passwd*, %struct.passwd** %13, align 8, !dbg !734
  %119 = getelementptr inbounds %struct.passwd, %struct.passwd* %118, i32 0, i32 3, !dbg !735
  %120 = load i32, i32* %119, align 4, !dbg !735
  store i32 %120, i32* %15, align 4, !dbg !733
  call void @llvm.dbg.declare(metadata i32* %16, metadata !736, metadata !DIExpression()), !dbg !737
  %121 = load i32, i32* %15, align 4, !dbg !738
  store i32 %121, i32* %16, align 4, !dbg !737
  %122 = load i8**, i8*** %5, align 8, !dbg !739
  %123 = load i32, i32* @optind, align 4, !dbg !740
  %124 = sext i32 %123 to i64, !dbg !739
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124, !dbg !739
  %126 = load i8*, i8** %125, align 8, !dbg !739
  %127 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* noundef %126), !dbg !741
  %128 = load i8**, i8*** %5, align 8, !dbg !742
  %129 = load i32, i32* @optind, align 4, !dbg !744
  %130 = sext i32 %129 to i64, !dbg !742
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130, !dbg !742
  %132 = load i8*, i8** %131, align 8, !dbg !742
  %133 = load i32, i32* %14, align 4, !dbg !745
  %134 = load i32, i32* %15, align 4, !dbg !746
  %135 = load i32, i32* %16, align 4, !dbg !747
  %136 = call i1 @print_group_list(i8* noundef %132, i32 noundef %133, i32 noundef %134, i32 noundef %135, i1 noundef true, i8 noundef 32), !dbg !748
  br i1 %136, label %138, label %137, !dbg !749

137:                                              ; preds = %114
  store i8 0, i8* %7, align 1, !dbg !750
  br label %138, !dbg !751

138:                                              ; preds = %137, %114
  %139 = call i32 @putchar_unlocked(i32 noundef 10), !dbg !752
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !753
  %141 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %140) #18, !dbg !753
  %142 = icmp ne i32 %141, 0, !dbg !753
  br i1 %142, label %143, label %144, !dbg !755

143:                                              ; preds = %138
  call void @write_error(), !dbg !756
  br label %144, !dbg !756

144:                                              ; preds = %143, %138
  br label %145, !dbg !757

145:                                              ; preds = %144, %106
  %146 = load i32, i32* @optind, align 4, !dbg !758
  %147 = add nsw i32 %146, 1, !dbg !758
  store i32 %147, i32* @optind, align 4, !dbg !758
  br label %93, !dbg !759, !llvm.loop !760

148:                                              ; preds = %93
  br label %149

149:                                              ; preds = %148, %90
  %150 = load i8, i8* %7, align 1, !dbg !762
  %151 = trunc i8 %150 to i1, !dbg !762
  %152 = zext i1 %151 to i64, !dbg !762
  %153 = select i1 %151, i32 0, i32 1, !dbg !762
  ret i32 %153, !dbg !763
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i32 @getuid() #2

; Function Attrs: nounwind
declare i32 @getegid() #2

; Function Attrs: nounwind
declare i32 @getgid() #2

declare i32 @putchar_unlocked(i32 noundef) #3

declare %struct.passwd* @getpwnam(i8* noundef) #3

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_error() #4 !dbg !764 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !765, metadata !DIExpression()), !dbg !766
  %2 = call i32* @__errno_location() #21, !dbg !767
  %3 = load i32, i32* %2, align 4, !dbg !767
  store i32 %3, i32* %1, align 4, !dbg !766
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !768
  %5 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4), !dbg !768
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !769
  %7 = call i32 @fpurge(%struct._IO_FILE* noundef %6), !dbg !770
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !771
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %8) #18, !dbg !771
  %9 = load i32, i32* %1, align 4, !dbg !772
  %10 = call i8* @gettext(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0)) #18, !dbg !772
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %9, i8* noundef %10), !dbg !772
  unreachable, !dbg !772
}

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @print_group_list(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef %4, i8 noundef %5) #4 !dbg !773 {
  %7 = alloca i1, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca %struct.passwd*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !776, metadata !DIExpression()), !dbg !777
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !778, metadata !DIExpression()), !dbg !779
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !780, metadata !DIExpression()), !dbg !781
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !782, metadata !DIExpression()), !dbg !783
  %19 = zext i1 %4 to i8
  store i8 %19, i8* %12, align 1
  call void @llvm.dbg.declare(metadata i8* %12, metadata !784, metadata !DIExpression()), !dbg !785
  store i8 %5, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !786, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.declare(metadata i8* %14, metadata !788, metadata !DIExpression()), !dbg !789
  store i8 1, i8* %14, align 1, !dbg !789
  call void @llvm.dbg.declare(metadata %struct.passwd** %15, metadata !790, metadata !DIExpression()), !dbg !801
  store %struct.passwd* null, %struct.passwd** %15, align 8, !dbg !801
  %20 = load i8*, i8** %8, align 8, !dbg !802
  %21 = icmp ne i8* %20, null, !dbg !802
  br i1 %21, label %22, label %29, !dbg !804

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4, !dbg !805
  %24 = call %struct.passwd* @getpwuid(i32 noundef %23), !dbg !807
  store %struct.passwd* %24, %struct.passwd** %15, align 8, !dbg !808
  %25 = load %struct.passwd*, %struct.passwd** %15, align 8, !dbg !809
  %26 = icmp eq %struct.passwd* %25, null, !dbg !811
  br i1 %26, label %27, label %28, !dbg !812

27:                                               ; preds = %22
  store i8 0, i8* %14, align 1, !dbg !813
  br label %28, !dbg !814

28:                                               ; preds = %27, %22
  br label %29, !dbg !815

29:                                               ; preds = %28, %6
  %30 = load i32, i32* %10, align 4, !dbg !816
  %31 = load i8, i8* %12, align 1, !dbg !818
  %32 = trunc i8 %31 to i1, !dbg !818
  %33 = call i1 @print_group(i32 noundef %30, i1 noundef %32), !dbg !819
  br i1 %33, label %35, label %34, !dbg !820

34:                                               ; preds = %29
  store i8 0, i8* %14, align 1, !dbg !821
  br label %35, !dbg !822

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %11, align 4, !dbg !823
  %37 = load i32, i32* %10, align 4, !dbg !825
  %38 = icmp ne i32 %36, %37, !dbg !826
  br i1 %38, label %39, label %49, !dbg !827

39:                                               ; preds = %35
  %40 = load i8, i8* %13, align 1, !dbg !828
  %41 = zext i8 %40 to i32, !dbg !828
  %42 = call i32 @putchar_unlocked(i32 noundef %41), !dbg !828
  %43 = load i32, i32* %11, align 4, !dbg !830
  %44 = load i8, i8* %12, align 1, !dbg !832
  %45 = trunc i8 %44 to i1, !dbg !832
  %46 = call i1 @print_group(i32 noundef %43, i1 noundef %45), !dbg !833
  br i1 %46, label %48, label %47, !dbg !834

47:                                               ; preds = %39
  store i8 0, i8* %14, align 1, !dbg !835
  br label %48, !dbg !836

48:                                               ; preds = %47, %39
  br label %49, !dbg !837

49:                                               ; preds = %48, %35
  call void @llvm.dbg.declare(metadata i32** %16, metadata !838, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.declare(metadata i32* %17, metadata !841, metadata !DIExpression()), !dbg !842
  %50 = load i8*, i8** %8, align 8, !dbg !843
  %51 = load %struct.passwd*, %struct.passwd** %15, align 8, !dbg !844
  %52 = icmp ne %struct.passwd* %51, null, !dbg !844
  br i1 %52, label %53, label %57, !dbg !844

53:                                               ; preds = %49
  %54 = load %struct.passwd*, %struct.passwd** %15, align 8, !dbg !845
  %55 = getelementptr inbounds %struct.passwd, %struct.passwd* %54, i32 0, i32 3, !dbg !846
  %56 = load i32, i32* %55, align 4, !dbg !846
  br label %59, !dbg !844

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4, !dbg !847
  br label %59, !dbg !844

59:                                               ; preds = %57, %53
  %60 = phi i32 [ %56, %53 ], [ %58, %57 ], !dbg !844
  %61 = call i32 @xgetgroups(i8* noundef %50, i32 noundef %60, i32** noundef %16), !dbg !848
  store i32 %61, i32* %17, align 4, !dbg !842
  %62 = load i32, i32* %17, align 4, !dbg !849
  %63 = icmp slt i32 %62, 0, !dbg !851
  br i1 %63, label %64, label %78, !dbg !852

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8, !dbg !853
  %66 = icmp ne i8* %65, null, !dbg !853
  br i1 %66, label %67, label %73, !dbg !856

67:                                               ; preds = %64
  %68 = call i32* @__errno_location() #21, !dbg !857
  %69 = load i32, i32* %68, align 4, !dbg !857
  %70 = call i8* @gettext(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i64 0, i64 0)) #18, !dbg !857
  %71 = load i8*, i8** %8, align 8, !dbg !857
  %72 = call i8* @quote(i8* noundef %71), !dbg !857
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %69, i8* noundef %70, i8* noundef %72), !dbg !857
  br label %77, !dbg !859

73:                                               ; preds = %64
  %74 = call i32* @__errno_location() #21, !dbg !860
  %75 = load i32, i32* %74, align 4, !dbg !860
  %76 = call i8* @gettext(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.56, i64 0, i64 0)) #18, !dbg !860
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %75, i8* noundef %76), !dbg !860
  br label %77

77:                                               ; preds = %73, %67
  store i1 false, i1* %7, align 1, !dbg !862
  br label %122, !dbg !862

78:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata i32* %18, metadata !863, metadata !DIExpression()), !dbg !865
  store i32 0, i32* %18, align 4, !dbg !865
  br label %79, !dbg !866

79:                                               ; preds = %114, %78
  %80 = load i32, i32* %18, align 4, !dbg !867
  %81 = load i32, i32* %17, align 4, !dbg !869
  %82 = icmp slt i32 %80, %81, !dbg !870
  br i1 %82, label %83, label %117, !dbg !871

83:                                               ; preds = %79
  %84 = load i32*, i32** %16, align 8, !dbg !872
  %85 = load i32, i32* %18, align 4, !dbg !874
  %86 = sext i32 %85 to i64, !dbg !872
  %87 = getelementptr inbounds i32, i32* %84, i64 %86, !dbg !872
  %88 = load i32, i32* %87, align 4, !dbg !872
  %89 = load i32, i32* %10, align 4, !dbg !875
  %90 = icmp ne i32 %88, %89, !dbg !876
  br i1 %90, label %91, label %113, !dbg !877

91:                                               ; preds = %83
  %92 = load i32*, i32** %16, align 8, !dbg !878
  %93 = load i32, i32* %18, align 4, !dbg !879
  %94 = sext i32 %93 to i64, !dbg !878
  %95 = getelementptr inbounds i32, i32* %92, i64 %94, !dbg !878
  %96 = load i32, i32* %95, align 4, !dbg !878
  %97 = load i32, i32* %11, align 4, !dbg !880
  %98 = icmp ne i32 %96, %97, !dbg !881
  br i1 %98, label %99, label %113, !dbg !882

99:                                               ; preds = %91
  %100 = load i8, i8* %13, align 1, !dbg !883
  %101 = zext i8 %100 to i32, !dbg !883
  %102 = call i32 @putchar_unlocked(i32 noundef %101), !dbg !883
  %103 = load i32*, i32** %16, align 8, !dbg !885
  %104 = load i32, i32* %18, align 4, !dbg !887
  %105 = sext i32 %104 to i64, !dbg !885
  %106 = getelementptr inbounds i32, i32* %103, i64 %105, !dbg !885
  %107 = load i32, i32* %106, align 4, !dbg !885
  %108 = load i8, i8* %12, align 1, !dbg !888
  %109 = trunc i8 %108 to i1, !dbg !888
  %110 = call i1 @print_group(i32 noundef %107, i1 noundef %109), !dbg !889
  br i1 %110, label %112, label %111, !dbg !890

111:                                              ; preds = %99
  store i8 0, i8* %14, align 1, !dbg !891
  br label %112, !dbg !892

112:                                              ; preds = %111, %99
  br label %113, !dbg !893

113:                                              ; preds = %112, %91, %83
  br label %114, !dbg !880

114:                                              ; preds = %113
  %115 = load i32, i32* %18, align 4, !dbg !894
  %116 = add nsw i32 %115, 1, !dbg !894
  store i32 %116, i32* %18, align 4, !dbg !894
  br label %79, !dbg !895, !llvm.loop !896

117:                                              ; preds = %79
  %118 = load i32*, i32** %16, align 8, !dbg !898
  %119 = bitcast i32* %118 to i8*, !dbg !898
  call void @free(i8* noundef %119) #18, !dbg !899
  %120 = load i8, i8* %14, align 1, !dbg !900
  %121 = trunc i8 %120 to i1, !dbg !900
  store i1 %121, i1* %7, align 1, !dbg !901
  br label %122, !dbg !901

122:                                              ; preds = %117, %77
  %123 = load i1, i1* %7, align 1, !dbg !902
  ret i1 %123, !dbg !902
}

declare %struct.passwd* @getpwuid(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @print_group(i32 noundef %0, i1 noundef %1) #4 !dbg !903 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.group*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !906, metadata !DIExpression()), !dbg !907
  %8 = zext i1 %1 to i8
  store i8 %8, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !908, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.declare(metadata %struct.group** %5, metadata !910, metadata !DIExpression()), !dbg !919
  store %struct.group* null, %struct.group** %5, align 8, !dbg !919
  call void @llvm.dbg.declare(metadata i8* %6, metadata !920, metadata !DIExpression()), !dbg !921
  store i8 1, i8* %6, align 1, !dbg !921
  %9 = load i8, i8* %4, align 1, !dbg !922
  %10 = trunc i8 %9 to i1, !dbg !922
  br i1 %10, label %11, label %22, !dbg !924

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4, !dbg !925
  %13 = call %struct.group* @getgrgid(i32 noundef %12), !dbg !927
  store %struct.group* %13, %struct.group** %5, align 8, !dbg !928
  %14 = load %struct.group*, %struct.group** %5, align 8, !dbg !929
  %15 = icmp eq %struct.group* %14, null, !dbg !931
  br i1 %15, label %16, label %21, !dbg !932

16:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata i64* %7, metadata !933, metadata !DIExpression()), !dbg !937
  %17 = load i32, i32* %3, align 4, !dbg !938
  %18 = zext i32 %17 to i64, !dbg !938
  store i64 %18, i64* %7, align 8, !dbg !937
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.57, i64 0, i64 0)) #18, !dbg !939
  %20 = load i64, i64* %7, align 8, !dbg !939
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %19, i64 noundef %20), !dbg !939
  store i8 0, i8* %6, align 1, !dbg !940
  br label %21, !dbg !941

21:                                               ; preds = %16, %11
  br label %22, !dbg !942

22:                                               ; preds = %21, %2
  %23 = load %struct.group*, %struct.group** %5, align 8, !dbg !943
  %24 = icmp ne %struct.group* %23, null, !dbg !943
  br i1 %24, label %25, label %30, !dbg !945

25:                                               ; preds = %22
  %26 = load %struct.group*, %struct.group** %5, align 8, !dbg !946
  %27 = getelementptr inbounds %struct.group, %struct.group* %26, i32 0, i32 0, !dbg !947
  %28 = load i8*, i8** %27, align 8, !dbg !947
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.58, i64 0, i64 0), i8* noundef %28), !dbg !948
  br label %34, !dbg !948

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4, !dbg !949
  %32 = zext i32 %31 to i64, !dbg !950
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.59, i64 0, i64 0), i64 noundef %32), !dbg !951
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i8, i8* %6, align 1, !dbg !952
  %36 = trunc i8 %35 to i1, !dbg !952
  ret i1 %36, !dbg !953
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare %struct.group* @getgrgid(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !954 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !955, metadata !DIExpression()), !dbg !956
  %3 = load i8*, i8** %2, align 8, !dbg !957
  store i8* %3, i8** @file_name, align 8, !dbg !958
  ret void, !dbg !959
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !960 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !963, metadata !DIExpression()), !dbg !964
  %4 = load i8, i8* %2, align 1, !dbg !965
  %5 = trunc i8 %4 to i1, !dbg !965
  %6 = zext i1 %5 to i8, !dbg !966
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !966
  ret void, !dbg !967
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !968 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !969
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !971
  %4 = icmp ne i32 %3, 0, !dbg !972
  br i1 %4, label %5, label %28, !dbg !973

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !974
  %7 = trunc i8 %6 to i1, !dbg !974
  br i1 %7, label %8, label %12, !dbg !975

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !976
  %10 = load i32, i32* %9, align 4, !dbg !976
  %11 = icmp eq i32 %10, 32, !dbg !977
  br i1 %11, label %28, label %12, !dbg !978

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !979, metadata !DIExpression()), !dbg !981
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.66, i64 0, i64 0)) #18, !dbg !982
  store i8* %13, i8** %1, align 8, !dbg !981
  %14 = load i8*, i8** @file_name, align 8, !dbg !983
  %15 = icmp ne i8* %14, null, !dbg !983
  br i1 %15, label %16, label %22, !dbg !985

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !986
  %18 = load i32, i32* %17, align 4, !dbg !986
  %19 = load i8*, i8** @file_name, align 8, !dbg !986
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !986
  %21 = load i8*, i8** %1, align 8, !dbg !986
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.67, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !986
  br label %26, !dbg !986

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !987
  %24 = load i32, i32* %23, align 4, !dbg !987
  %25 = load i8*, i8** %1, align 8, !dbg !987
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.68, i64 0, i64 0), i8* noundef %25), !dbg !987
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !988
  call void @_exit(i32 noundef %27) #22, !dbg !989
  unreachable, !dbg !989

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !990
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !992
  %31 = icmp ne i32 %30, 0, !dbg !993
  br i1 %31, label %32, label %34, !dbg !994

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !995
  call void @_exit(i32 noundef %33) #22, !dbg !996
  unreachable, !dbg !996

34:                                               ; preds = %28
  ret void, !dbg !997
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !998 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1001, metadata !DIExpression()), !dbg !1002
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1003, metadata !DIExpression()), !dbg !1002
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1004, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1005, metadata !DIExpression()), !dbg !1002
  call void @flush_stdout(), !dbg !1006
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1007
  %10 = icmp ne void ()* %9, null, !dbg !1007
  br i1 %10, label %11, label %13, !dbg !1009

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1010
  call void %12(), !dbg !1011
  br label %17, !dbg !1011

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1012
  %15 = call i8* @getprogname() #20, !dbg !1014
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0), i8* noundef %15), !dbg !1015
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !1016
  %19 = load i32, i32* %6, align 4, !dbg !1016
  %20 = load i8*, i8** %7, align 8, !dbg !1016
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1016
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1016
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !1016
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !1016
  ret void, !dbg !1017
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !1018 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1019, metadata !DIExpression()), !dbg !1020
  store i32 1, i32* %1, align 4, !dbg !1021
  %2 = load i32, i32* %1, align 4, !dbg !1022
  %3 = icmp sle i32 0, %2, !dbg !1024
  br i1 %3, label %4, label %11, !dbg !1025

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !1026
  %6 = call i32 @is_open(i32 noundef %5), !dbg !1027
  %7 = icmp ne i32 %6, 0, !dbg !1027
  br i1 %7, label %8, label %11, !dbg !1028

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1029
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !1029
  br label %11, !dbg !1029

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !1030
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !1031 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1032, metadata !DIExpression()), !dbg !1033
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1034, metadata !DIExpression()), !dbg !1033
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1035, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1036, metadata !DIExpression()), !dbg !1033
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1037
  %10 = load i8*, i8** %7, align 8, !dbg !1038
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1039
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1039
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1039
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !1039
  %14 = load i32, i32* @error_message_count, align 4, !dbg !1040
  %15 = add i32 %14, 1, !dbg !1040
  store i32 %15, i32* @error_message_count, align 4, !dbg !1040
  %16 = load i32, i32* %6, align 4, !dbg !1041
  %17 = icmp ne i32 %16, 0, !dbg !1041
  br i1 %17, label %18, label %20, !dbg !1043

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !1044
  call void @print_errno_message(i32 noundef %19), !dbg !1045
  br label %20, !dbg !1045

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1046
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !1046
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1047
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !1047
  %25 = load i32, i32* %5, align 4, !dbg !1048
  %26 = icmp ne i32 %25, 0, !dbg !1048
  br i1 %26, label %27, label %29, !dbg !1050

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1051
  call void @exit(i32 noundef %28) #19, !dbg !1052
  unreachable, !dbg !1052

29:                                               ; preds = %20
  ret void, !dbg !1053
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !1054 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1055, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1057, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1059, metadata !DIExpression()), !dbg !1063
  %5 = load i32, i32* %2, align 4, !dbg !1064
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1065
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !1066
  store i8* %7, i8** %3, align 8, !dbg !1067
  %8 = load i8*, i8** %3, align 8, !dbg !1068
  %9 = icmp ne i8* %8, null, !dbg !1068
  br i1 %9, label %12, label %10, !dbg !1070

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.71, i64 0, i64 0)) #18, !dbg !1071
  store i8* %11, i8** %3, align 8, !dbg !1072
  br label %12, !dbg !1073

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1074
  %14 = load i8*, i8** %3, align 8, !dbg !1075
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.72, i64 0, i64 0), i8* noundef %14), !dbg !1076
  ret void, !dbg !1077
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !1078 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1081, metadata !DIExpression()), !dbg !1082
  %3 = load i32, i32* %2, align 4, !dbg !1083
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !1084
  %5 = icmp sle i32 0, %4, !dbg !1085
  %6 = zext i1 %5 to i32, !dbg !1085
  ret i32 %6, !dbg !1086
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !1087 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1090, metadata !DIExpression()), !dbg !1091
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1092, metadata !DIExpression()), !dbg !1093
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1094, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1096, metadata !DIExpression()), !dbg !1097
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1098
  call void @llvm.va_start(i8* %9), !dbg !1098
  %10 = load i32, i32* %4, align 4, !dbg !1099
  %11 = load i32, i32* %5, align 4, !dbg !1099
  %12 = load i8*, i8** %6, align 8, !dbg !1099
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1099
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1099
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1099
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !1099
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1100
  call void @llvm.va_end(i8* %15), !dbg !1100
  ret void, !dbg !1101
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1102, metadata !DIExpression()), !dbg !1103
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1104, metadata !DIExpression()), !dbg !1103
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1105, metadata !DIExpression()), !dbg !1103
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1106, metadata !DIExpression()), !dbg !1103
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1107, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1108, metadata !DIExpression()), !dbg !1103
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1109
  %14 = icmp ne i32 %13, 0, !dbg !1109
  br i1 %14, label %15, label %38, !dbg !1111

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1112
  %17 = load i32, i32* %10, align 4, !dbg !1115
  %18 = icmp eq i32 %16, %17, !dbg !1116
  br i1 %18, label %19, label %35, !dbg !1117

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1118
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1119
  %22 = icmp eq i8* %20, %21, !dbg !1120
  br i1 %22, label %34, label %23, !dbg !1121

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1122
  %25 = icmp ne i8* %24, null, !dbg !1123
  br i1 %25, label %26, label %35, !dbg !1124

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1125
  %28 = icmp ne i8* %27, null, !dbg !1126
  br i1 %28, label %29, label %35, !dbg !1127

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1128
  %31 = load i8*, i8** %9, align 8, !dbg !1129
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !1130
  %33 = icmp eq i32 %32, 0, !dbg !1131
  br i1 %33, label %34, label %35, !dbg !1132

34:                                               ; preds = %29, %19
  br label %61, !dbg !1133

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1134
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1135
  %37 = load i32, i32* %10, align 4, !dbg !1136
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1137
  br label %38, !dbg !1138

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1139
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1140
  %40 = icmp ne void ()* %39, null, !dbg !1140
  br i1 %40, label %41, label %43, !dbg !1142

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1143
  call void %42(), !dbg !1144
  br label %47, !dbg !1144

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1145
  %45 = call i8* @getprogname() #20, !dbg !1147
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.75, i64 0, i64 0), i8* noundef %45), !dbg !1148
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1149
  %49 = load i8*, i8** %9, align 8, !dbg !1150
  %50 = icmp ne i8* %49, null, !dbg !1151
  %51 = zext i1 %50 to i64, !dbg !1150
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.77, i64 0, i64 0), !dbg !1150
  %53 = load i8*, i8** %9, align 8, !dbg !1152
  %54 = load i32, i32* %10, align 4, !dbg !1153
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1154
  %56 = load i32, i32* %7, align 4, !dbg !1155
  %57 = load i32, i32* %8, align 4, !dbg !1155
  %58 = load i8*, i8** %11, align 8, !dbg !1155
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1155
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1155
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1155
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1155
  br label %61, !dbg !1156

61:                                               ; preds = %47, %34
  ret void, !dbg !1156
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1157 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1160, metadata !DIExpression()), !dbg !1161
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1162, metadata !DIExpression()), !dbg !1163
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1164, metadata !DIExpression()), !dbg !1165
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1166, metadata !DIExpression()), !dbg !1167
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1168, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1170, metadata !DIExpression()), !dbg !1171
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1172
  call void @llvm.va_start(i8* %13), !dbg !1172
  %14 = load i32, i32* %6, align 4, !dbg !1173
  %15 = load i32, i32* %7, align 4, !dbg !1173
  %16 = load i8*, i8** %8, align 8, !dbg !1173
  %17 = load i32, i32* %9, align 4, !dbg !1173
  %18 = load i8*, i8** %10, align 8, !dbg !1173
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1173
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1173
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1173
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !1173
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1174
  call void @llvm.va_end(i8* %21), !dbg !1174
  ret void, !dbg !1175
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !1176 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !1232, metadata !DIExpression()), !dbg !1233
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1234
  call void @__fpurge(%struct._IO_FILE* noundef %3) #18, !dbg !1235
  ret i32 0, !dbg !1236
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1237 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1240
  ret i8* %1, !dbg !1241
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1242 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1243, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1245, metadata !DIExpression()), !dbg !1246
  %5 = load i8*, i8** %2, align 8, !dbg !1247
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1248
  store i8* %6, i8** %3, align 8, !dbg !1246
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1249, metadata !DIExpression()), !dbg !1250
  %7 = load i8*, i8** %3, align 8, !dbg !1251
  %8 = icmp ne i8* %7, null, !dbg !1251
  br i1 %8, label %9, label %12, !dbg !1251

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1252
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1253
  br label %14, !dbg !1251

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1254
  br label %14, !dbg !1251

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1251
  store i8* %15, i8** %4, align 8, !dbg !1250
  %16 = load i8*, i8** %4, align 8, !dbg !1255
  %17 = load i8*, i8** %2, align 8, !dbg !1257
  %18 = ptrtoint i8* %16 to i64, !dbg !1258
  %19 = ptrtoint i8* %17 to i64, !dbg !1258
  %20 = sub i64 %18, %19, !dbg !1258
  %21 = icmp sle i64 7, %20, !dbg !1259
  br i1 %21, label %22, label %36, !dbg !1260

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1261
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1262
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i64 0, i64 0), i64 noundef 7), !dbg !1263
  br i1 %25, label %26, label %36, !dbg !1264

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1265
  store i8* %27, i8** %2, align 8, !dbg !1267
  %28 = load i8*, i8** %4, align 8, !dbg !1268
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.89, i64 0, i64 0), i64 noundef 3) #20, !dbg !1270
  %30 = icmp eq i32 %29, 0, !dbg !1271
  br i1 %30, label %31, label %35, !dbg !1272

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1273
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1273
  store i8* %33, i8** %4, align 8, !dbg !1273
  %34 = load i8*, i8** %4, align 8, !dbg !1275
  store i8* %34, i8** %2, align 8, !dbg !1276
  br label %35, !dbg !1277

35:                                               ; preds = %31, %26
  br label %36, !dbg !1278

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1279
  store i8* %37, i8** @program_name, align 8, !dbg !1280
  %38 = load i8*, i8** %2, align 8, !dbg !1281
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1282
  %39 = load i8*, i8** %4, align 8, !dbg !1283
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1284
  ret void, !dbg !1285
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1286, metadata !DIExpression()), !dbg !1287
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1288, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1290, metadata !DIExpression()), !dbg !1291
  %9 = load i8*, i8** %4, align 8, !dbg !1292
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1293
  store i8* %10, i8** %6, align 8, !dbg !1291
  %11 = load i8*, i8** %6, align 8, !dbg !1294
  %12 = load i8*, i8** %4, align 8, !dbg !1296
  %13 = icmp ne i8* %11, %12, !dbg !1297
  br i1 %13, label %14, label %16, !dbg !1298

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1299
  store i8* %15, i8** %3, align 8, !dbg !1300
  br label %26, !dbg !1300

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1301, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1307, metadata !DIExpression()), !dbg !1318
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1319
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1320
  %18 = icmp eq i64 %17, 2, !dbg !1322
  br i1 %18, label %19, label %24, !dbg !1323

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1324
  %21 = icmp eq i32 %20, 2047, !dbg !1325
  br i1 %21, label %22, label %24, !dbg !1326

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1327
  store i8* %23, i8** %3, align 8, !dbg !1328
  br label %26, !dbg !1328

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1329
  store i8* %25, i8** %3, align 8, !dbg !1330
  br label %26, !dbg !1330

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1331
  ret i8* %27, !dbg !1331
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1332 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1336, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1338, metadata !DIExpression()), !dbg !1339
  %5 = call i32* @__errno_location() #21, !dbg !1340
  %6 = load i32, i32* %5, align 4, !dbg !1340
  store i32 %6, i32* %3, align 4, !dbg !1339
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1341, metadata !DIExpression()), !dbg !1342
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1343
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1343
  br i1 %8, label %9, label %11, !dbg !1343

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1344
  br label %12, !dbg !1343

11:                                               ; preds = %1
  br label %12, !dbg !1343

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1343
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1343
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1345
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1345
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1342
  %17 = load i32, i32* %3, align 4, !dbg !1346
  %18 = call i32* @__errno_location() #21, !dbg !1347
  store i32 %17, i32* %18, align 4, !dbg !1348
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1349
  ret %struct.quoting_options* %19, !dbg !1350
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1351 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1356, metadata !DIExpression()), !dbg !1357
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1358
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1358
  br i1 %4, label %5, label %7, !dbg !1358

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1359
  br label %8, !dbg !1358

7:                                                ; preds = %1
  br label %8, !dbg !1358

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1358
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1360
  %11 = load i32, i32* %10, align 8, !dbg !1360
  ret i32 %11, !dbg !1361
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1362 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1365, metadata !DIExpression()), !dbg !1366
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1367, metadata !DIExpression()), !dbg !1368
  %5 = load i32, i32* %4, align 4, !dbg !1369
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1370
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1370
  br i1 %7, label %8, label %10, !dbg !1370

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1371
  br label %11, !dbg !1370

10:                                               ; preds = %2
  br label %11, !dbg !1370

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1370
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1372
  store i32 %5, i32* %13, align 8, !dbg !1373
  ret void, !dbg !1374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1375 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1378, metadata !DIExpression()), !dbg !1379
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1380, metadata !DIExpression()), !dbg !1381
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1382, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1384, metadata !DIExpression()), !dbg !1385
  %11 = load i8, i8* %5, align 1, !dbg !1386
  store i8 %11, i8* %7, align 1, !dbg !1385
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1387, metadata !DIExpression()), !dbg !1389
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1390
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1390
  br i1 %13, label %14, label %16, !dbg !1390

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1391
  br label %17, !dbg !1390

16:                                               ; preds = %3
  br label %17, !dbg !1390

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1390
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1392
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1393
  %21 = load i8, i8* %7, align 1, !dbg !1394
  %22 = zext i8 %21 to i64, !dbg !1394
  %23 = udiv i64 %22, 32, !dbg !1395
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1396
  store i32* %24, i32** %8, align 8, !dbg !1389
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1397, metadata !DIExpression()), !dbg !1398
  %25 = load i8, i8* %7, align 1, !dbg !1399
  %26 = zext i8 %25 to i64, !dbg !1399
  %27 = urem i64 %26, 32, !dbg !1400
  %28 = trunc i64 %27 to i32, !dbg !1399
  store i32 %28, i32* %9, align 4, !dbg !1398
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1401, metadata !DIExpression()), !dbg !1402
  %29 = load i32*, i32** %8, align 8, !dbg !1403
  %30 = load i32, i32* %29, align 4, !dbg !1404
  %31 = load i32, i32* %9, align 4, !dbg !1405
  %32 = lshr i32 %30, %31, !dbg !1406
  %33 = and i32 %32, 1, !dbg !1407
  store i32 %33, i32* %10, align 4, !dbg !1402
  %34 = load i32, i32* %6, align 4, !dbg !1408
  %35 = and i32 %34, 1, !dbg !1409
  %36 = load i32, i32* %10, align 4, !dbg !1410
  %37 = xor i32 %35, %36, !dbg !1411
  %38 = load i32, i32* %9, align 4, !dbg !1412
  %39 = shl i32 %37, %38, !dbg !1413
  %40 = load i32*, i32** %8, align 8, !dbg !1414
  %41 = load i32, i32* %40, align 4, !dbg !1415
  %42 = xor i32 %41, %39, !dbg !1415
  store i32 %42, i32* %40, align 4, !dbg !1415
  %43 = load i32, i32* %10, align 4, !dbg !1416
  ret i32 %43, !dbg !1417
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1418 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1421, metadata !DIExpression()), !dbg !1422
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1423, metadata !DIExpression()), !dbg !1424
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1425
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1425
  br i1 %7, label %9, label %8, !dbg !1427

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1428
  br label %9, !dbg !1429

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1430, metadata !DIExpression()), !dbg !1431
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1432
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1433
  %12 = load i32, i32* %11, align 4, !dbg !1433
  store i32 %12, i32* %5, align 4, !dbg !1431
  %13 = load i32, i32* %4, align 4, !dbg !1434
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1435
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1436
  store i32 %13, i32* %15, align 4, !dbg !1437
  %16 = load i32, i32* %5, align 4, !dbg !1438
  ret i32 %16, !dbg !1439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1440 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1443, metadata !DIExpression()), !dbg !1444
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1445, metadata !DIExpression()), !dbg !1446
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1447, metadata !DIExpression()), !dbg !1448
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1449
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1449
  br i1 %8, label %10, label %9, !dbg !1451

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1452
  br label %10, !dbg !1453

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1454
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1455
  store i32 10, i32* %12, align 8, !dbg !1456
  %13 = load i8*, i8** %5, align 8, !dbg !1457
  %14 = icmp ne i8* %13, null, !dbg !1457
  br i1 %14, label %15, label %18, !dbg !1459

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1460
  %17 = icmp ne i8* %16, null, !dbg !1460
  br i1 %17, label %19, label %18, !dbg !1461

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1462
  unreachable, !dbg !1462

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1463
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1464
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1465
  store i8* %20, i8** %22, align 8, !dbg !1466
  %23 = load i8*, i8** %6, align 8, !dbg !1467
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1468
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1469
  store i8* %23, i8** %25, align 8, !dbg !1470
  ret void, !dbg !1471
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1472 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1475, metadata !DIExpression()), !dbg !1476
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1477, metadata !DIExpression()), !dbg !1478
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1479, metadata !DIExpression()), !dbg !1480
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1481, metadata !DIExpression()), !dbg !1482
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1483, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1485, metadata !DIExpression()), !dbg !1486
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1487
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1487
  br i1 %15, label %16, label %18, !dbg !1487

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1488
  br label %19, !dbg !1487

18:                                               ; preds = %5
  br label %19, !dbg !1487

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1487
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1486
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1489, metadata !DIExpression()), !dbg !1490
  %21 = call i32* @__errno_location() #21, !dbg !1491
  %22 = load i32, i32* %21, align 4, !dbg !1491
  store i32 %22, i32* %12, align 4, !dbg !1490
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1492, metadata !DIExpression()), !dbg !1493
  %23 = load i8*, i8** %6, align 8, !dbg !1494
  %24 = load i64, i64* %7, align 8, !dbg !1495
  %25 = load i8*, i8** %8, align 8, !dbg !1496
  %26 = load i64, i64* %9, align 8, !dbg !1497
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1498
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1499
  %29 = load i32, i32* %28, align 8, !dbg !1499
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1500
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1501
  %32 = load i32, i32* %31, align 4, !dbg !1501
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1502
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1503
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1502
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1504
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1505
  %38 = load i8*, i8** %37, align 8, !dbg !1505
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1506
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1507
  %41 = load i8*, i8** %40, align 8, !dbg !1507
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1508
  store i64 %42, i64* %13, align 8, !dbg !1493
  %43 = load i32, i32* %12, align 4, !dbg !1509
  %44 = call i32* @__errno_location() #21, !dbg !1510
  store i32 %43, i32* %44, align 4, !dbg !1511
  %45 = load i64, i64* %13, align 8, !dbg !1512
  ret i64 %45, !dbg !1513
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1514 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1519, metadata !DIExpression()), !dbg !1520
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1521, metadata !DIExpression()), !dbg !1522
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1523, metadata !DIExpression()), !dbg !1524
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1525, metadata !DIExpression()), !dbg !1526
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1527, metadata !DIExpression()), !dbg !1528
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1529, metadata !DIExpression()), !dbg !1530
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1531, metadata !DIExpression()), !dbg !1532
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1533, metadata !DIExpression()), !dbg !1534
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1535, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1537, metadata !DIExpression()), !dbg !1538
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1539
  %45 = icmp eq i64 %44, 1, !dbg !1540
  %46 = zext i1 %45 to i8, !dbg !1538
  store i8 %46, i8* %20, align 1, !dbg !1538
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1541, metadata !DIExpression()), !dbg !1542
  store i64 0, i64* %21, align 8, !dbg !1542
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1543, metadata !DIExpression()), !dbg !1544
  store i64 0, i64* %22, align 8, !dbg !1544
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1545, metadata !DIExpression()), !dbg !1546
  store i8* null, i8** %23, align 8, !dbg !1546
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1547, metadata !DIExpression()), !dbg !1548
  store i64 0, i64* %24, align 8, !dbg !1548
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1549, metadata !DIExpression()), !dbg !1550
  store i8 0, i8* %25, align 1, !dbg !1550
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1551, metadata !DIExpression()), !dbg !1552
  %47 = load i32, i32* %16, align 4, !dbg !1553
  %48 = and i32 %47, 2, !dbg !1554
  %49 = icmp ne i32 %48, 0, !dbg !1555
  %50 = zext i1 %49 to i8, !dbg !1552
  store i8 %50, i8* %26, align 1, !dbg !1552
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1556, metadata !DIExpression()), !dbg !1557
  store i8 0, i8* %27, align 1, !dbg !1557
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1558, metadata !DIExpression()), !dbg !1559
  store i8 1, i8* %28, align 1, !dbg !1559
  br label %51, !dbg !1560

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1561), !dbg !1562
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1563, metadata !DIExpression()), !dbg !1564
  store i8 0, i8* %29, align 1, !dbg !1564
  %52 = load i32, i32* %15, align 4, !dbg !1565
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
  ], !dbg !1566

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1567
  store i8 1, i8* %26, align 1, !dbg !1569
  br label %54, !dbg !1570

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1571
  %56 = trunc i8 %55 to i1, !dbg !1571
  br i1 %56, label %70, label %57, !dbg !1573

57:                                               ; preds = %54
  br label %58, !dbg !1574

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1575
  %60 = load i64, i64* %12, align 8, !dbg !1575
  %61 = icmp ult i64 %59, %60, !dbg !1575
  br i1 %61, label %62, label %66, !dbg !1578

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1575
  %64 = load i64, i64* %21, align 8, !dbg !1575
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1575
  store i8 34, i8* %65, align 1, !dbg !1575
  br label %66, !dbg !1575

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1578
  %68 = add i64 %67, 1, !dbg !1578
  store i64 %68, i64* %21, align 8, !dbg !1578
  br label %69, !dbg !1578

69:                                               ; preds = %66
  br label %70, !dbg !1578

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1579
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), i8** %23, align 8, !dbg !1580
  store i64 1, i64* %24, align 8, !dbg !1581
  br label %138, !dbg !1582

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1583
  store i8 0, i8* %26, align 1, !dbg !1584
  br label %138, !dbg !1585

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1586
  %74 = icmp ne i32 %73, 10, !dbg !1589
  br i1 %74, label %75, label %80, !dbg !1590

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1591
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.103, i64 0, i64 0), i32 noundef %76), !dbg !1593
  store i8* %77, i8** %18, align 8, !dbg !1594
  %78 = load i32, i32* %15, align 4, !dbg !1595
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.104, i64 0, i64 0), i32 noundef %78), !dbg !1596
  store i8* %79, i8** %19, align 8, !dbg !1597
  br label %80, !dbg !1598

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1599
  %82 = trunc i8 %81 to i1, !dbg !1599
  br i1 %82, label %108, label %83, !dbg !1601

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1602, metadata !DIExpression()), !dbg !1604
  %84 = load i8*, i8** %18, align 8, !dbg !1605
  store i8* %84, i8** %30, align 8, !dbg !1604
  br label %85, !dbg !1606

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1607
  %87 = load i8, i8* %86, align 1, !dbg !1609
  %88 = icmp ne i8 %87, 0, !dbg !1610
  br i1 %88, label %89, label %107, !dbg !1610

89:                                               ; preds = %85
  br label %90, !dbg !1611

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1612
  %92 = load i64, i64* %12, align 8, !dbg !1612
  %93 = icmp ult i64 %91, %92, !dbg !1612
  br i1 %93, label %94, label %100, !dbg !1615

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1612
  %96 = load i8, i8* %95, align 1, !dbg !1612
  %97 = load i8*, i8** %11, align 8, !dbg !1612
  %98 = load i64, i64* %21, align 8, !dbg !1612
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1612
  store i8 %96, i8* %99, align 1, !dbg !1612
  br label %100, !dbg !1612

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1615
  %102 = add i64 %101, 1, !dbg !1615
  store i64 %102, i64* %21, align 8, !dbg !1615
  br label %103, !dbg !1615

103:                                              ; preds = %100
  br label %104, !dbg !1615

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1616
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1616
  store i8* %106, i8** %30, align 8, !dbg !1616
  br label %85, !dbg !1617, !llvm.loop !1618

107:                                              ; preds = %85
  br label %108, !dbg !1619

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1620
  %109 = load i8*, i8** %19, align 8, !dbg !1621
  store i8* %109, i8** %23, align 8, !dbg !1622
  %110 = load i8*, i8** %23, align 8, !dbg !1623
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1624
  store i64 %111, i64* %24, align 8, !dbg !1625
  br label %138, !dbg !1626

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1627
  br label %113, !dbg !1628

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1629
  br label %114, !dbg !1630

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1631
  %116 = trunc i8 %115 to i1, !dbg !1631
  br i1 %116, label %118, label %117, !dbg !1633

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1634
  br label %118, !dbg !1635

118:                                              ; preds = %117, %114
  br label %119, !dbg !1631

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1636
  %120 = load i8, i8* %26, align 1, !dbg !1637
  %121 = trunc i8 %120 to i1, !dbg !1637
  br i1 %121, label %135, label %122, !dbg !1639

122:                                              ; preds = %119
  br label %123, !dbg !1640

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1641
  %125 = load i64, i64* %12, align 8, !dbg !1641
  %126 = icmp ult i64 %124, %125, !dbg !1641
  br i1 %126, label %127, label %131, !dbg !1644

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1641
  %129 = load i64, i64* %21, align 8, !dbg !1641
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1641
  store i8 39, i8* %130, align 1, !dbg !1641
  br label %131, !dbg !1641

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1644
  %133 = add i64 %132, 1, !dbg !1644
  store i64 %133, i64* %21, align 8, !dbg !1644
  br label %134, !dbg !1644

134:                                              ; preds = %131
  br label %135, !dbg !1644

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.104, i64 0, i64 0), i8** %23, align 8, !dbg !1645
  store i64 1, i64* %24, align 8, !dbg !1646
  br label %138, !dbg !1647

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1648
  br label %138, !dbg !1649

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1650
  unreachable, !dbg !1650

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1651, metadata !DIExpression()), !dbg !1653
  store i64 0, i64* %31, align 8, !dbg !1653
  br label %139, !dbg !1654

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1655
  %141 = icmp eq i64 %140, -1, !dbg !1657
  br i1 %141, label %142, label %150, !dbg !1655

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1658
  %144 = load i64, i64* %31, align 8, !dbg !1659
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1658
  %146 = load i8, i8* %145, align 1, !dbg !1658
  %147 = zext i8 %146 to i32, !dbg !1658
  %148 = icmp eq i32 %147, 0, !dbg !1660
  %149 = zext i1 %148 to i32, !dbg !1660
  br label %155, !dbg !1655

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1661
  %152 = load i64, i64* %14, align 8, !dbg !1662
  %153 = icmp eq i64 %151, %152, !dbg !1663
  %154 = zext i1 %153 to i32, !dbg !1663
  br label %155, !dbg !1655

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1655
  %157 = icmp ne i32 %156, 0, !dbg !1664
  %158 = xor i1 %157, true, !dbg !1664
  br i1 %158, label %159, label %996, !dbg !1665

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1666, metadata !DIExpression()), !dbg !1668
  store i8 0, i8* %32, align 1, !dbg !1668
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1669, metadata !DIExpression()), !dbg !1670
  store i8 0, i8* %33, align 1, !dbg !1670
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1671, metadata !DIExpression()), !dbg !1672
  store i8 0, i8* %34, align 1, !dbg !1672
  %160 = load i8, i8* %25, align 1, !dbg !1673
  %161 = trunc i8 %160 to i1, !dbg !1673
  br i1 %161, label %162, label %197, !dbg !1675

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1676
  %164 = icmp ne i32 %163, 2, !dbg !1677
  br i1 %164, label %165, label %197, !dbg !1678

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1679
  %167 = icmp ne i64 %166, 0, !dbg !1679
  br i1 %167, label %168, label %197, !dbg !1680

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1681
  %170 = load i64, i64* %24, align 8, !dbg !1682
  %171 = add i64 %169, %170, !dbg !1683
  %172 = load i64, i64* %14, align 8, !dbg !1684
  %173 = icmp eq i64 %172, -1, !dbg !1685
  br i1 %173, label %174, label %180, !dbg !1686

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1687
  %176 = icmp ult i64 1, %175, !dbg !1688
  br i1 %176, label %177, label %180, !dbg !1684

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1689
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1690
  store i64 %179, i64* %14, align 8, !dbg !1691
  br label %182, !dbg !1684

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1692
  br label %182, !dbg !1684

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1684
  %184 = icmp ule i64 %171, %183, !dbg !1693
  br i1 %184, label %185, label %197, !dbg !1694

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1695
  %187 = load i64, i64* %31, align 8, !dbg !1696
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1697
  %189 = load i8*, i8** %23, align 8, !dbg !1698
  %190 = load i64, i64* %24, align 8, !dbg !1699
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1700
  br i1 %191, label %192, label %197, !dbg !1701

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1702
  %194 = trunc i8 %193 to i1, !dbg !1702
  br i1 %194, label %195, label %196, !dbg !1705

195:                                              ; preds = %192
  br label %1078, !dbg !1706

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1707
  br label %197, !dbg !1708

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1709, metadata !DIExpression()), !dbg !1710
  %198 = load i8*, i8** %13, align 8, !dbg !1711
  %199 = load i64, i64* %31, align 8, !dbg !1712
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1711
  %201 = load i8, i8* %200, align 1, !dbg !1711
  store i8 %201, i8* %35, align 1, !dbg !1710
  %202 = load i8, i8* %35, align 1, !dbg !1713
  %203 = zext i8 %202 to i32, !dbg !1713
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
  ], !dbg !1714

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1715
  %206 = trunc i8 %205 to i1, !dbg !1715
  br i1 %206, label %207, label %318, !dbg !1718

207:                                              ; preds = %204
  br label %208, !dbg !1719

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1721
  %210 = trunc i8 %209 to i1, !dbg !1721
  br i1 %210, label %211, label %212, !dbg !1724

211:                                              ; preds = %208
  br label %1078, !dbg !1721

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1724
  %213 = load i32, i32* %15, align 4, !dbg !1725
  %214 = icmp eq i32 %213, 2, !dbg !1725
  br i1 %214, label %215, label %255, !dbg !1725

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1725
  %217 = trunc i8 %216 to i1, !dbg !1725
  br i1 %217, label %255, label %218, !dbg !1724

218:                                              ; preds = %215
  br label %219, !dbg !1727

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1729
  %221 = load i64, i64* %12, align 8, !dbg !1729
  %222 = icmp ult i64 %220, %221, !dbg !1729
  br i1 %222, label %223, label %227, !dbg !1732

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1729
  %225 = load i64, i64* %21, align 8, !dbg !1729
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1729
  store i8 39, i8* %226, align 1, !dbg !1729
  br label %227, !dbg !1729

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1732
  %229 = add i64 %228, 1, !dbg !1732
  store i64 %229, i64* %21, align 8, !dbg !1732
  br label %230, !dbg !1732

230:                                              ; preds = %227
  br label %231, !dbg !1727

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1733
  %233 = load i64, i64* %12, align 8, !dbg !1733
  %234 = icmp ult i64 %232, %233, !dbg !1733
  br i1 %234, label %235, label %239, !dbg !1736

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1733
  %237 = load i64, i64* %21, align 8, !dbg !1733
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1733
  store i8 36, i8* %238, align 1, !dbg !1733
  br label %239, !dbg !1733

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1736
  %241 = add i64 %240, 1, !dbg !1736
  store i64 %241, i64* %21, align 8, !dbg !1736
  br label %242, !dbg !1736

242:                                              ; preds = %239
  br label %243, !dbg !1727

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1737
  %245 = load i64, i64* %12, align 8, !dbg !1737
  %246 = icmp ult i64 %244, %245, !dbg !1737
  br i1 %246, label %247, label %251, !dbg !1740

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1737
  %249 = load i64, i64* %21, align 8, !dbg !1737
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1737
  store i8 39, i8* %250, align 1, !dbg !1737
  br label %251, !dbg !1737

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1740
  %253 = add i64 %252, 1, !dbg !1740
  store i64 %253, i64* %21, align 8, !dbg !1740
  br label %254, !dbg !1740

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1727
  br label %255, !dbg !1727

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1724

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1741
  %258 = load i64, i64* %12, align 8, !dbg !1741
  %259 = icmp ult i64 %257, %258, !dbg !1741
  br i1 %259, label %260, label %264, !dbg !1744

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1741
  %262 = load i64, i64* %21, align 8, !dbg !1741
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1741
  store i8 92, i8* %263, align 1, !dbg !1741
  br label %264, !dbg !1741

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1744
  %266 = add i64 %265, 1, !dbg !1744
  store i64 %266, i64* %21, align 8, !dbg !1744
  br label %267, !dbg !1744

267:                                              ; preds = %264
  br label %268, !dbg !1724

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1745
  %270 = icmp ne i32 %269, 2, !dbg !1747
  br i1 %270, label %271, label %317, !dbg !1748

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1749
  %273 = add i64 %272, 1, !dbg !1750
  %274 = load i64, i64* %14, align 8, !dbg !1751
  %275 = icmp ult i64 %273, %274, !dbg !1752
  br i1 %275, label %276, label %317, !dbg !1753

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1754
  %278 = load i64, i64* %31, align 8, !dbg !1755
  %279 = add i64 %278, 1, !dbg !1756
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1754
  %281 = load i8, i8* %280, align 1, !dbg !1754
  %282 = zext i8 %281 to i32, !dbg !1754
  %283 = icmp sle i32 48, %282, !dbg !1757
  br i1 %283, label %284, label %317, !dbg !1758

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1759
  %286 = load i64, i64* %31, align 8, !dbg !1760
  %287 = add i64 %286, 1, !dbg !1761
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1759
  %289 = load i8, i8* %288, align 1, !dbg !1759
  %290 = zext i8 %289 to i32, !dbg !1759
  %291 = icmp sle i32 %290, 57, !dbg !1762
  br i1 %291, label %292, label %317, !dbg !1763

292:                                              ; preds = %284
  br label %293, !dbg !1764

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1766
  %295 = load i64, i64* %12, align 8, !dbg !1766
  %296 = icmp ult i64 %294, %295, !dbg !1766
  br i1 %296, label %297, label %301, !dbg !1769

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1766
  %299 = load i64, i64* %21, align 8, !dbg !1766
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1766
  store i8 48, i8* %300, align 1, !dbg !1766
  br label %301, !dbg !1766

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1769
  %303 = add i64 %302, 1, !dbg !1769
  store i64 %303, i64* %21, align 8, !dbg !1769
  br label %304, !dbg !1769

304:                                              ; preds = %301
  br label %305, !dbg !1770

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1771
  %307 = load i64, i64* %12, align 8, !dbg !1771
  %308 = icmp ult i64 %306, %307, !dbg !1771
  br i1 %308, label %309, label %313, !dbg !1774

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1771
  %311 = load i64, i64* %21, align 8, !dbg !1771
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1771
  store i8 48, i8* %312, align 1, !dbg !1771
  br label %313, !dbg !1771

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1774
  %315 = add i64 %314, 1, !dbg !1774
  store i64 %315, i64* %21, align 8, !dbg !1774
  br label %316, !dbg !1774

316:                                              ; preds = %313
  br label %317, !dbg !1775

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1776
  br label %324, !dbg !1777

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1778
  %320 = and i32 %319, 1, !dbg !1780
  %321 = icmp ne i32 %320, 0, !dbg !1780
  br i1 %321, label %322, label %323, !dbg !1781

322:                                              ; preds = %318
  br label %993, !dbg !1782

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1783

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1784
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1785

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1786
  %329 = trunc i8 %328 to i1, !dbg !1786
  br i1 %329, label %330, label %331, !dbg !1789

330:                                              ; preds = %327
  br label %1078, !dbg !1790

331:                                              ; preds = %327
  br label %418, !dbg !1791

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1792
  %334 = and i32 %333, 4, !dbg !1794
  %335 = icmp ne i32 %334, 0, !dbg !1794
  br i1 %335, label %336, label %417, !dbg !1795

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1796
  %338 = add i64 %337, 2, !dbg !1797
  %339 = load i64, i64* %14, align 8, !dbg !1798
  %340 = icmp ult i64 %338, %339, !dbg !1799
  br i1 %340, label %341, label %417, !dbg !1800

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1801
  %343 = load i64, i64* %31, align 8, !dbg !1802
  %344 = add i64 %343, 1, !dbg !1803
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1801
  %346 = load i8, i8* %345, align 1, !dbg !1801
  %347 = zext i8 %346 to i32, !dbg !1801
  %348 = icmp eq i32 %347, 63, !dbg !1804
  br i1 %348, label %349, label %417, !dbg !1805

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1806
  %351 = load i64, i64* %31, align 8, !dbg !1807
  %352 = add i64 %351, 2, !dbg !1808
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1806
  %354 = load i8, i8* %353, align 1, !dbg !1806
  %355 = zext i8 %354 to i32, !dbg !1806
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
  ], !dbg !1809

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1810
  %358 = trunc i8 %357 to i1, !dbg !1810
  br i1 %358, label %359, label %360, !dbg !1813

359:                                              ; preds = %356
  br label %1078, !dbg !1814

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1815
  %362 = load i64, i64* %31, align 8, !dbg !1816
  %363 = add i64 %362, 2, !dbg !1817
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1815
  %365 = load i8, i8* %364, align 1, !dbg !1815
  store i8 %365, i8* %35, align 1, !dbg !1818
  %366 = load i64, i64* %31, align 8, !dbg !1819
  %367 = add i64 %366, 2, !dbg !1819
  store i64 %367, i64* %31, align 8, !dbg !1819
  br label %368, !dbg !1820

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1821
  %370 = load i64, i64* %12, align 8, !dbg !1821
  %371 = icmp ult i64 %369, %370, !dbg !1821
  br i1 %371, label %372, label %376, !dbg !1824

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1821
  %374 = load i64, i64* %21, align 8, !dbg !1821
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1821
  store i8 63, i8* %375, align 1, !dbg !1821
  br label %376, !dbg !1821

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1824
  %378 = add i64 %377, 1, !dbg !1824
  store i64 %378, i64* %21, align 8, !dbg !1824
  br label %379, !dbg !1824

379:                                              ; preds = %376
  br label %380, !dbg !1825

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1826
  %382 = load i64, i64* %12, align 8, !dbg !1826
  %383 = icmp ult i64 %381, %382, !dbg !1826
  br i1 %383, label %384, label %388, !dbg !1829

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1826
  %386 = load i64, i64* %21, align 8, !dbg !1826
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1826
  store i8 34, i8* %387, align 1, !dbg !1826
  br label %388, !dbg !1826

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1829
  %390 = add i64 %389, 1, !dbg !1829
  store i64 %390, i64* %21, align 8, !dbg !1829
  br label %391, !dbg !1829

391:                                              ; preds = %388
  br label %392, !dbg !1830

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1831
  %394 = load i64, i64* %12, align 8, !dbg !1831
  %395 = icmp ult i64 %393, %394, !dbg !1831
  br i1 %395, label %396, label %400, !dbg !1834

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1831
  %398 = load i64, i64* %21, align 8, !dbg !1831
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1831
  store i8 34, i8* %399, align 1, !dbg !1831
  br label %400, !dbg !1831

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1834
  %402 = add i64 %401, 1, !dbg !1834
  store i64 %402, i64* %21, align 8, !dbg !1834
  br label %403, !dbg !1834

403:                                              ; preds = %400
  br label %404, !dbg !1835

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1836
  %406 = load i64, i64* %12, align 8, !dbg !1836
  %407 = icmp ult i64 %405, %406, !dbg !1836
  br i1 %407, label %408, label %412, !dbg !1839

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1836
  %410 = load i64, i64* %21, align 8, !dbg !1836
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1836
  store i8 63, i8* %411, align 1, !dbg !1836
  br label %412, !dbg !1836

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1839
  %414 = add i64 %413, 1, !dbg !1839
  store i64 %414, i64* %21, align 8, !dbg !1839
  br label %415, !dbg !1839

415:                                              ; preds = %412
  br label %416, !dbg !1840

416:                                              ; preds = %349, %415
  br label %417, !dbg !1841

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1842

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1843

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1844
  br label %454, !dbg !1846

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1847
  br label %454, !dbg !1848

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1849
  br label %454, !dbg !1850

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1851
  br label %446, !dbg !1852

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1853
  br label %446, !dbg !1854

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1855
  br label %446, !dbg !1856

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1857
  br label %454, !dbg !1858

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1859
  store i8 %427, i8* %36, align 1, !dbg !1860
  %428 = load i32, i32* %15, align 4, !dbg !1861
  %429 = icmp eq i32 %428, 2, !dbg !1863
  br i1 %429, label %430, label %435, !dbg !1864

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1865
  %432 = trunc i8 %431 to i1, !dbg !1865
  br i1 %432, label %433, label %434, !dbg !1868

433:                                              ; preds = %430
  br label %1078, !dbg !1869

434:                                              ; preds = %430
  br label %942, !dbg !1870

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1871
  %437 = trunc i8 %436 to i1, !dbg !1871
  br i1 %437, label %438, label %445, !dbg !1873

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1874
  %440 = trunc i8 %439 to i1, !dbg !1874
  br i1 %440, label %441, label %445, !dbg !1875

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1876
  %443 = icmp ne i64 %442, 0, !dbg !1876
  br i1 %443, label %444, label %445, !dbg !1877

444:                                              ; preds = %441
  br label %942, !dbg !1878

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1876

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1879), !dbg !1880
  %447 = load i32, i32* %15, align 4, !dbg !1881
  %448 = icmp eq i32 %447, 2, !dbg !1883
  br i1 %448, label %449, label %453, !dbg !1884

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1885
  %451 = trunc i8 %450 to i1, !dbg !1885
  br i1 %451, label %452, label %453, !dbg !1886

452:                                              ; preds = %449
  br label %1078, !dbg !1887

453:                                              ; preds = %449, %446
  br label %454, !dbg !1885

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1888), !dbg !1889
  %455 = load i8, i8* %25, align 1, !dbg !1890
  %456 = trunc i8 %455 to i1, !dbg !1890
  br i1 %456, label %457, label %459, !dbg !1892

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1893
  store i8 %458, i8* %35, align 1, !dbg !1895
  br label %880, !dbg !1896

459:                                              ; preds = %454
  br label %849, !dbg !1897

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1898
  %462 = icmp eq i64 %461, -1, !dbg !1900
  br i1 %462, label %463, label %469, !dbg !1901

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1902
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1902
  %466 = load i8, i8* %465, align 1, !dbg !1902
  %467 = zext i8 %466 to i32, !dbg !1902
  %468 = icmp eq i32 %467, 0, !dbg !1903
  br i1 %468, label %473, label %472, !dbg !1898

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1904
  %471 = icmp eq i64 %470, 1, !dbg !1905
  br i1 %471, label %473, label %472, !dbg !1901

472:                                              ; preds = %469, %463
  br label %849, !dbg !1906

473:                                              ; preds = %469, %463
  br label %474, !dbg !1907

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1908
  %476 = icmp ne i64 %475, 0, !dbg !1910
  br i1 %476, label %477, label %478, !dbg !1911

477:                                              ; preds = %474
  br label %849, !dbg !1912

478:                                              ; preds = %474
  br label %479, !dbg !1913

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1914
  br label %480, !dbg !1915

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1916
  %482 = icmp eq i32 %481, 2, !dbg !1918
  br i1 %482, label %483, label %487, !dbg !1919

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1920
  %485 = trunc i8 %484 to i1, !dbg !1920
  br i1 %485, label %486, label %487, !dbg !1921

486:                                              ; preds = %483
  br label %1078, !dbg !1922

487:                                              ; preds = %483, %480
  br label %849, !dbg !1923

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1924
  store i8 1, i8* %34, align 1, !dbg !1925
  %489 = load i32, i32* %15, align 4, !dbg !1926
  %490 = icmp eq i32 %489, 2, !dbg !1928
  br i1 %490, label %491, label %540, !dbg !1929

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1930
  %493 = trunc i8 %492 to i1, !dbg !1930
  br i1 %493, label %494, label %495, !dbg !1933

494:                                              ; preds = %491
  br label %1078, !dbg !1934

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1935
  %497 = icmp ne i64 %496, 0, !dbg !1935
  br i1 %497, label %498, label %503, !dbg !1937

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1938
  %500 = icmp ne i64 %499, 0, !dbg !1938
  br i1 %500, label %503, label %501, !dbg !1939

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1940
  store i64 %502, i64* %22, align 8, !dbg !1942
  store i64 0, i64* %12, align 8, !dbg !1943
  br label %503, !dbg !1944

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1945

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1946
  %506 = load i64, i64* %12, align 8, !dbg !1946
  %507 = icmp ult i64 %505, %506, !dbg !1946
  br i1 %507, label %508, label %512, !dbg !1949

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1946
  %510 = load i64, i64* %21, align 8, !dbg !1946
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1946
  store i8 39, i8* %511, align 1, !dbg !1946
  br label %512, !dbg !1946

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1949
  %514 = add i64 %513, 1, !dbg !1949
  store i64 %514, i64* %21, align 8, !dbg !1949
  br label %515, !dbg !1949

515:                                              ; preds = %512
  br label %516, !dbg !1950

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1951
  %518 = load i64, i64* %12, align 8, !dbg !1951
  %519 = icmp ult i64 %517, %518, !dbg !1951
  br i1 %519, label %520, label %524, !dbg !1954

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1951
  %522 = load i64, i64* %21, align 8, !dbg !1951
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1951
  store i8 92, i8* %523, align 1, !dbg !1951
  br label %524, !dbg !1951

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1954
  %526 = add i64 %525, 1, !dbg !1954
  store i64 %526, i64* %21, align 8, !dbg !1954
  br label %527, !dbg !1954

527:                                              ; preds = %524
  br label %528, !dbg !1955

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1956
  %530 = load i64, i64* %12, align 8, !dbg !1956
  %531 = icmp ult i64 %529, %530, !dbg !1956
  br i1 %531, label %532, label %536, !dbg !1959

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1956
  %534 = load i64, i64* %21, align 8, !dbg !1956
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1956
  store i8 39, i8* %535, align 1, !dbg !1956
  br label %536, !dbg !1956

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1959
  %538 = add i64 %537, 1, !dbg !1959
  store i64 %538, i64* %21, align 8, !dbg !1959
  br label %539, !dbg !1959

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1960
  br label %540, !dbg !1961

540:                                              ; preds = %539, %488
  br label %849, !dbg !1962

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1963
  br label %849, !dbg !1964

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1965, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1968, metadata !DIExpression()), !dbg !1969
  %543 = load i8, i8* %20, align 1, !dbg !1970
  %544 = trunc i8 %543 to i1, !dbg !1970
  br i1 %544, label %545, label %557, !dbg !1972

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1973
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1975
  %547 = load i16*, i16** %546, align 8, !dbg !1975
  %548 = load i8, i8* %35, align 1, !dbg !1975
  %549 = zext i8 %548 to i32, !dbg !1975
  %550 = sext i32 %549 to i64, !dbg !1975
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1975
  %552 = load i16, i16* %551, align 2, !dbg !1975
  %553 = zext i16 %552 to i32, !dbg !1975
  %554 = and i32 %553, 16384, !dbg !1975
  %555 = icmp ne i32 %554, 0, !dbg !1976
  %556 = zext i1 %555 to i8, !dbg !1977
  store i8 %556, i8* %38, align 1, !dbg !1977
  br label %648, !dbg !1978

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1979, metadata !DIExpression()), !dbg !1991
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1992
  store i64 0, i64* %37, align 8, !dbg !1993
  store i8 1, i8* %38, align 1, !dbg !1994
  %558 = load i64, i64* %14, align 8, !dbg !1995
  %559 = icmp eq i64 %558, -1, !dbg !1997
  br i1 %559, label %560, label %563, !dbg !1998

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1999
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !2000
  store i64 %562, i64* %14, align 8, !dbg !2001
  br label %563, !dbg !2002

563:                                              ; preds = %560, %557
  br label %564, !dbg !2003

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2004, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2009, metadata !DIExpression()), !dbg !2010
  %565 = load i8*, i8** %13, align 8, !dbg !2011
  %566 = load i64, i64* %31, align 8, !dbg !2012
  %567 = load i64, i64* %37, align 8, !dbg !2013
  %568 = add i64 %566, %567, !dbg !2014
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2011
  %570 = load i64, i64* %14, align 8, !dbg !2015
  %571 = load i64, i64* %31, align 8, !dbg !2016
  %572 = load i64, i64* %37, align 8, !dbg !2017
  %573 = add i64 %571, %572, !dbg !2018
  %574 = sub i64 %570, %573, !dbg !2019
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2020
  store i64 %575, i64* %41, align 8, !dbg !2010
  %576 = load i64, i64* %41, align 8, !dbg !2021
  %577 = icmp eq i64 %576, 0, !dbg !2023
  br i1 %577, label %578, label %579, !dbg !2024

578:                                              ; preds = %564
  br label %647, !dbg !2025

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2026
  %581 = icmp eq i64 %580, -1, !dbg !2028
  br i1 %581, label %582, label %583, !dbg !2029

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2030
  br label %647, !dbg !2032

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2033
  %585 = icmp eq i64 %584, -2, !dbg !2035
  br i1 %585, label %586, label %608, !dbg !2036

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !2037
  br label %587, !dbg !2039

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !2040
  %589 = load i64, i64* %37, align 8, !dbg !2041
  %590 = add i64 %588, %589, !dbg !2042
  %591 = load i64, i64* %14, align 8, !dbg !2043
  %592 = icmp ult i64 %590, %591, !dbg !2044
  br i1 %592, label %593, label %602, !dbg !2045

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2046
  %595 = load i64, i64* %31, align 8, !dbg !2047
  %596 = load i64, i64* %37, align 8, !dbg !2048
  %597 = add i64 %595, %596, !dbg !2049
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2046
  %599 = load i8, i8* %598, align 1, !dbg !2046
  %600 = zext i8 %599 to i32, !dbg !2046
  %601 = icmp ne i32 %600, 0, !dbg !2045
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2050
  br i1 %603, label %604, label %607, !dbg !2039

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2051
  %606 = add i64 %605, 1, !dbg !2051
  store i64 %606, i64* %37, align 8, !dbg !2051
  br label %587, !dbg !2039, !llvm.loop !2052

607:                                              ; preds = %602
  br label %647, !dbg !2053

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2054
  %610 = trunc i8 %609 to i1, !dbg !2054
  br i1 %610, label %611, label %635, !dbg !2057

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2058
  %613 = icmp eq i32 %612, 2, !dbg !2059
  br i1 %613, label %614, label %635, !dbg !2060

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2061, metadata !DIExpression()), !dbg !2064
  store i64 1, i64* %42, align 8, !dbg !2064
  br label %615, !dbg !2065

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2066
  %617 = load i64, i64* %41, align 8, !dbg !2068
  %618 = icmp ult i64 %616, %617, !dbg !2069
  br i1 %618, label %619, label %634, !dbg !2070

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2071
  %621 = load i64, i64* %31, align 8, !dbg !2072
  %622 = load i64, i64* %37, align 8, !dbg !2073
  %623 = add i64 %621, %622, !dbg !2074
  %624 = load i64, i64* %42, align 8, !dbg !2075
  %625 = add i64 %623, %624, !dbg !2076
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2071
  %627 = load i8, i8* %626, align 1, !dbg !2071
  %628 = zext i8 %627 to i32, !dbg !2071
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2077

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2078

630:                                              ; preds = %619
  br label %631, !dbg !2080

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2081
  %633 = add i64 %632, 1, !dbg !2081
  store i64 %633, i64* %42, align 8, !dbg !2081
  br label %615, !dbg !2082, !llvm.loop !2083

634:                                              ; preds = %615
  br label %635, !dbg !2085

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2086
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2088
  %638 = icmp ne i32 %637, 0, !dbg !2088
  br i1 %638, label %640, label %639, !dbg !2089

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2090
  br label %640, !dbg !2091

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2092
  %642 = load i64, i64* %37, align 8, !dbg !2093
  %643 = add i64 %642, %641, !dbg !2093
  store i64 %643, i64* %37, align 8, !dbg !2093
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2094

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2095
  %650 = trunc i8 %649 to i1, !dbg !2095
  %651 = zext i1 %650 to i8, !dbg !2096
  store i8 %651, i8* %34, align 1, !dbg !2096
  %652 = load i64, i64* %37, align 8, !dbg !2097
  %653 = icmp ult i64 1, %652, !dbg !2099
  br i1 %653, label %660, label %654, !dbg !2100

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2101
  %656 = trunc i8 %655 to i1, !dbg !2101
  br i1 %656, label %657, label %848, !dbg !2102

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2103
  %659 = trunc i8 %658 to i1, !dbg !2103
  br i1 %659, label %848, label %660, !dbg !2104

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2105, metadata !DIExpression()), !dbg !2107
  %661 = load i64, i64* %31, align 8, !dbg !2108
  %662 = load i64, i64* %37, align 8, !dbg !2109
  %663 = add i64 %661, %662, !dbg !2110
  store i64 %663, i64* %43, align 8, !dbg !2107
  br label %664, !dbg !2111

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2112
  %666 = trunc i8 %665 to i1, !dbg !2112
  br i1 %666, label %667, label %772, !dbg !2117

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2118
  %669 = trunc i8 %668 to i1, !dbg !2118
  br i1 %669, label %772, label %670, !dbg !2119

670:                                              ; preds = %667
  br label %671, !dbg !2120

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2122
  %673 = trunc i8 %672 to i1, !dbg !2122
  br i1 %673, label %674, label %675, !dbg !2125

674:                                              ; preds = %671
  br label %1078, !dbg !2122

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2125
  %676 = load i32, i32* %15, align 4, !dbg !2126
  %677 = icmp eq i32 %676, 2, !dbg !2126
  br i1 %677, label %678, label %718, !dbg !2126

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2126
  %680 = trunc i8 %679 to i1, !dbg !2126
  br i1 %680, label %718, label %681, !dbg !2125

681:                                              ; preds = %678
  br label %682, !dbg !2128

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2130
  %684 = load i64, i64* %12, align 8, !dbg !2130
  %685 = icmp ult i64 %683, %684, !dbg !2130
  br i1 %685, label %686, label %690, !dbg !2133

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2130
  %688 = load i64, i64* %21, align 8, !dbg !2130
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2130
  store i8 39, i8* %689, align 1, !dbg !2130
  br label %690, !dbg !2130

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2133
  %692 = add i64 %691, 1, !dbg !2133
  store i64 %692, i64* %21, align 8, !dbg !2133
  br label %693, !dbg !2133

693:                                              ; preds = %690
  br label %694, !dbg !2128

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2134
  %696 = load i64, i64* %12, align 8, !dbg !2134
  %697 = icmp ult i64 %695, %696, !dbg !2134
  br i1 %697, label %698, label %702, !dbg !2137

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2134
  %700 = load i64, i64* %21, align 8, !dbg !2134
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2134
  store i8 36, i8* %701, align 1, !dbg !2134
  br label %702, !dbg !2134

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2137
  %704 = add i64 %703, 1, !dbg !2137
  store i64 %704, i64* %21, align 8, !dbg !2137
  br label %705, !dbg !2137

705:                                              ; preds = %702
  br label %706, !dbg !2128

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2138
  %708 = load i64, i64* %12, align 8, !dbg !2138
  %709 = icmp ult i64 %707, %708, !dbg !2138
  br i1 %709, label %710, label %714, !dbg !2141

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2138
  %712 = load i64, i64* %21, align 8, !dbg !2138
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2138
  store i8 39, i8* %713, align 1, !dbg !2138
  br label %714, !dbg !2138

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2141
  %716 = add i64 %715, 1, !dbg !2141
  store i64 %716, i64* %21, align 8, !dbg !2141
  br label %717, !dbg !2141

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2128
  br label %718, !dbg !2128

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2125

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2142
  %721 = load i64, i64* %12, align 8, !dbg !2142
  %722 = icmp ult i64 %720, %721, !dbg !2142
  br i1 %722, label %723, label %727, !dbg !2145

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2142
  %725 = load i64, i64* %21, align 8, !dbg !2142
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2142
  store i8 92, i8* %726, align 1, !dbg !2142
  br label %727, !dbg !2142

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2145
  %729 = add i64 %728, 1, !dbg !2145
  store i64 %729, i64* %21, align 8, !dbg !2145
  br label %730, !dbg !2145

730:                                              ; preds = %727
  br label %731, !dbg !2125

731:                                              ; preds = %730
  br label %732, !dbg !2146

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2147
  %734 = load i64, i64* %12, align 8, !dbg !2147
  %735 = icmp ult i64 %733, %734, !dbg !2147
  br i1 %735, label %736, label %745, !dbg !2150

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2147
  %738 = zext i8 %737 to i32, !dbg !2147
  %739 = ashr i32 %738, 6, !dbg !2147
  %740 = add nsw i32 48, %739, !dbg !2147
  %741 = trunc i32 %740 to i8, !dbg !2147
  %742 = load i8*, i8** %11, align 8, !dbg !2147
  %743 = load i64, i64* %21, align 8, !dbg !2147
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2147
  store i8 %741, i8* %744, align 1, !dbg !2147
  br label %745, !dbg !2147

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2150
  %747 = add i64 %746, 1, !dbg !2150
  store i64 %747, i64* %21, align 8, !dbg !2150
  br label %748, !dbg !2150

748:                                              ; preds = %745
  br label %749, !dbg !2151

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2152
  %751 = load i64, i64* %12, align 8, !dbg !2152
  %752 = icmp ult i64 %750, %751, !dbg !2152
  br i1 %752, label %753, label %763, !dbg !2155

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2152
  %755 = zext i8 %754 to i32, !dbg !2152
  %756 = ashr i32 %755, 3, !dbg !2152
  %757 = and i32 %756, 7, !dbg !2152
  %758 = add nsw i32 48, %757, !dbg !2152
  %759 = trunc i32 %758 to i8, !dbg !2152
  %760 = load i8*, i8** %11, align 8, !dbg !2152
  %761 = load i64, i64* %21, align 8, !dbg !2152
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2152
  store i8 %759, i8* %762, align 1, !dbg !2152
  br label %763, !dbg !2152

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2155
  %765 = add i64 %764, 1, !dbg !2155
  store i64 %765, i64* %21, align 8, !dbg !2155
  br label %766, !dbg !2155

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2156
  %768 = zext i8 %767 to i32, !dbg !2156
  %769 = and i32 %768, 7, !dbg !2157
  %770 = add nsw i32 48, %769, !dbg !2158
  %771 = trunc i32 %770 to i8, !dbg !2159
  store i8 %771, i8* %35, align 1, !dbg !2160
  br label %789, !dbg !2161

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2162
  %774 = trunc i8 %773 to i1, !dbg !2162
  br i1 %774, label %775, label %788, !dbg !2164

775:                                              ; preds = %772
  br label %776, !dbg !2165

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2167
  %778 = load i64, i64* %12, align 8, !dbg !2167
  %779 = icmp ult i64 %777, %778, !dbg !2167
  br i1 %779, label %780, label %784, !dbg !2170

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2167
  %782 = load i64, i64* %21, align 8, !dbg !2167
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2167
  store i8 92, i8* %783, align 1, !dbg !2167
  br label %784, !dbg !2167

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2170
  %786 = add i64 %785, 1, !dbg !2170
  store i64 %786, i64* %21, align 8, !dbg !2170
  br label %787, !dbg !2170

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2171
  br label %788, !dbg !2172

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2173
  %791 = load i64, i64* %31, align 8, !dbg !2175
  %792 = add i64 %791, 1, !dbg !2176
  %793 = icmp ule i64 %790, %792, !dbg !2177
  br i1 %793, label %794, label %795, !dbg !2178

794:                                              ; preds = %789
  br label %847, !dbg !2179

795:                                              ; preds = %789
  br label %796, !dbg !2180

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2181
  %798 = trunc i8 %797 to i1, !dbg !2181
  br i1 %798, label %799, label %827, !dbg !2181

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2181
  %801 = trunc i8 %800 to i1, !dbg !2181
  br i1 %801, label %827, label %802, !dbg !2184

802:                                              ; preds = %799
  br label %803, !dbg !2185

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2187
  %805 = load i64, i64* %12, align 8, !dbg !2187
  %806 = icmp ult i64 %804, %805, !dbg !2187
  br i1 %806, label %807, label %811, !dbg !2190

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2187
  %809 = load i64, i64* %21, align 8, !dbg !2187
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2187
  store i8 39, i8* %810, align 1, !dbg !2187
  br label %811, !dbg !2187

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2190
  %813 = add i64 %812, 1, !dbg !2190
  store i64 %813, i64* %21, align 8, !dbg !2190
  br label %814, !dbg !2190

814:                                              ; preds = %811
  br label %815, !dbg !2185

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2191
  %817 = load i64, i64* %12, align 8, !dbg !2191
  %818 = icmp ult i64 %816, %817, !dbg !2191
  br i1 %818, label %819, label %823, !dbg !2194

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2191
  %821 = load i64, i64* %21, align 8, !dbg !2191
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2191
  store i8 39, i8* %822, align 1, !dbg !2191
  br label %823, !dbg !2191

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2194
  %825 = add i64 %824, 1, !dbg !2194
  store i64 %825, i64* %21, align 8, !dbg !2194
  br label %826, !dbg !2194

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2185
  br label %827, !dbg !2185

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2184

828:                                              ; preds = %827
  br label %829, !dbg !2195

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2196
  %831 = load i64, i64* %12, align 8, !dbg !2196
  %832 = icmp ult i64 %830, %831, !dbg !2196
  br i1 %832, label %833, label %838, !dbg !2199

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2196
  %835 = load i8*, i8** %11, align 8, !dbg !2196
  %836 = load i64, i64* %21, align 8, !dbg !2196
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2196
  store i8 %834, i8* %837, align 1, !dbg !2196
  br label %838, !dbg !2196

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2199
  %840 = add i64 %839, 1, !dbg !2199
  store i64 %840, i64* %21, align 8, !dbg !2199
  br label %841, !dbg !2199

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2200
  %843 = load i64, i64* %31, align 8, !dbg !2201
  %844 = add i64 %843, 1, !dbg !2201
  store i64 %844, i64* %31, align 8, !dbg !2201
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2200
  %846 = load i8, i8* %845, align 1, !dbg !2200
  store i8 %846, i8* %35, align 1, !dbg !2202
  br label %664, !dbg !2203, !llvm.loop !2204

847:                                              ; preds = %794
  br label %942, !dbg !2207

848:                                              ; preds = %657, %654
  br label %849, !dbg !2208

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2209
  %851 = trunc i8 %850 to i1, !dbg !2209
  br i1 %851, label %852, label %855, !dbg !2211

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2212
  %854 = icmp ne i32 %853, 2, !dbg !2213
  br i1 %854, label %858, label %855, !dbg !2214

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2215
  %857 = trunc i8 %856 to i1, !dbg !2215
  br i1 %857, label %858, label %875, !dbg !2216

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2217
  %860 = icmp ne i32* %859, null, !dbg !2217
  br i1 %860, label %861, label %875, !dbg !2218

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2219
  %863 = load i8, i8* %35, align 1, !dbg !2220
  %864 = zext i8 %863 to i64, !dbg !2220
  %865 = udiv i64 %864, 32, !dbg !2221
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2219
  %867 = load i32, i32* %866, align 4, !dbg !2219
  %868 = load i8, i8* %35, align 1, !dbg !2222
  %869 = zext i8 %868 to i64, !dbg !2222
  %870 = urem i64 %869, 32, !dbg !2223
  %871 = trunc i64 %870 to i32, !dbg !2224
  %872 = lshr i32 %867, %871, !dbg !2224
  %873 = and i32 %872, 1, !dbg !2225
  %874 = icmp ne i32 %873, 0, !dbg !2225
  br i1 %874, label %879, label %875, !dbg !2226

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2227
  %877 = trunc i8 %876 to i1, !dbg !2227
  br i1 %877, label %879, label %878, !dbg !2228

878:                                              ; preds = %875
  br label %942, !dbg !2229

879:                                              ; preds = %875, %861
  br label %880, !dbg !2227

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2230), !dbg !2231
  br label %881, !dbg !2232

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2233
  %883 = trunc i8 %882 to i1, !dbg !2233
  br i1 %883, label %884, label %885, !dbg !2236

884:                                              ; preds = %881
  br label %1078, !dbg !2233

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2236
  %886 = load i32, i32* %15, align 4, !dbg !2237
  %887 = icmp eq i32 %886, 2, !dbg !2237
  br i1 %887, label %888, label %928, !dbg !2237

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2237
  %890 = trunc i8 %889 to i1, !dbg !2237
  br i1 %890, label %928, label %891, !dbg !2236

891:                                              ; preds = %888
  br label %892, !dbg !2239

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2241
  %894 = load i64, i64* %12, align 8, !dbg !2241
  %895 = icmp ult i64 %893, %894, !dbg !2241
  br i1 %895, label %896, label %900, !dbg !2244

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2241
  %898 = load i64, i64* %21, align 8, !dbg !2241
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2241
  store i8 39, i8* %899, align 1, !dbg !2241
  br label %900, !dbg !2241

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2244
  %902 = add i64 %901, 1, !dbg !2244
  store i64 %902, i64* %21, align 8, !dbg !2244
  br label %903, !dbg !2244

903:                                              ; preds = %900
  br label %904, !dbg !2239

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2245
  %906 = load i64, i64* %12, align 8, !dbg !2245
  %907 = icmp ult i64 %905, %906, !dbg !2245
  br i1 %907, label %908, label %912, !dbg !2248

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2245
  %910 = load i64, i64* %21, align 8, !dbg !2245
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2245
  store i8 36, i8* %911, align 1, !dbg !2245
  br label %912, !dbg !2245

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2248
  %914 = add i64 %913, 1, !dbg !2248
  store i64 %914, i64* %21, align 8, !dbg !2248
  br label %915, !dbg !2248

915:                                              ; preds = %912
  br label %916, !dbg !2239

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2249
  %918 = load i64, i64* %12, align 8, !dbg !2249
  %919 = icmp ult i64 %917, %918, !dbg !2249
  br i1 %919, label %920, label %924, !dbg !2252

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2249
  %922 = load i64, i64* %21, align 8, !dbg !2249
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2249
  store i8 39, i8* %923, align 1, !dbg !2249
  br label %924, !dbg !2249

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2252
  %926 = add i64 %925, 1, !dbg !2252
  store i64 %926, i64* %21, align 8, !dbg !2252
  br label %927, !dbg !2252

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2239
  br label %928, !dbg !2239

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2236

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2253
  %931 = load i64, i64* %12, align 8, !dbg !2253
  %932 = icmp ult i64 %930, %931, !dbg !2253
  br i1 %932, label %933, label %937, !dbg !2256

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2253
  %935 = load i64, i64* %21, align 8, !dbg !2253
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2253
  store i8 92, i8* %936, align 1, !dbg !2253
  br label %937, !dbg !2253

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2256
  %939 = add i64 %938, 1, !dbg !2256
  store i64 %939, i64* %21, align 8, !dbg !2256
  br label %940, !dbg !2256

940:                                              ; preds = %937
  br label %941, !dbg !2236

941:                                              ; preds = %940
  br label %942, !dbg !2236

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2257), !dbg !2258
  br label %943, !dbg !2259

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2260
  %945 = trunc i8 %944 to i1, !dbg !2260
  br i1 %945, label %946, label %974, !dbg !2260

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2260
  %948 = trunc i8 %947 to i1, !dbg !2260
  br i1 %948, label %974, label %949, !dbg !2263

949:                                              ; preds = %946
  br label %950, !dbg !2264

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2266
  %952 = load i64, i64* %12, align 8, !dbg !2266
  %953 = icmp ult i64 %951, %952, !dbg !2266
  br i1 %953, label %954, label %958, !dbg !2269

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2266
  %956 = load i64, i64* %21, align 8, !dbg !2266
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2266
  store i8 39, i8* %957, align 1, !dbg !2266
  br label %958, !dbg !2266

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2269
  %960 = add i64 %959, 1, !dbg !2269
  store i64 %960, i64* %21, align 8, !dbg !2269
  br label %961, !dbg !2269

961:                                              ; preds = %958
  br label %962, !dbg !2264

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2270
  %964 = load i64, i64* %12, align 8, !dbg !2270
  %965 = icmp ult i64 %963, %964, !dbg !2270
  br i1 %965, label %966, label %970, !dbg !2273

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2270
  %968 = load i64, i64* %21, align 8, !dbg !2270
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2270
  store i8 39, i8* %969, align 1, !dbg !2270
  br label %970, !dbg !2270

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2273
  %972 = add i64 %971, 1, !dbg !2273
  store i64 %972, i64* %21, align 8, !dbg !2273
  br label %973, !dbg !2273

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2264
  br label %974, !dbg !2264

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2263

975:                                              ; preds = %974
  br label %976, !dbg !2274

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2275
  %978 = load i64, i64* %12, align 8, !dbg !2275
  %979 = icmp ult i64 %977, %978, !dbg !2275
  br i1 %979, label %980, label %985, !dbg !2278

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2275
  %982 = load i8*, i8** %11, align 8, !dbg !2275
  %983 = load i64, i64* %21, align 8, !dbg !2275
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2275
  store i8 %981, i8* %984, align 1, !dbg !2275
  br label %985, !dbg !2275

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2278
  %987 = add i64 %986, 1, !dbg !2278
  store i64 %987, i64* %21, align 8, !dbg !2278
  br label %988, !dbg !2278

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2279
  %990 = trunc i8 %989 to i1, !dbg !2279
  br i1 %990, label %992, label %991, !dbg !2281

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2282
  br label %992, !dbg !2283

992:                                              ; preds = %991, %988
  br label %993, !dbg !2284

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2285
  %995 = add i64 %994, 1, !dbg !2285
  store i64 %995, i64* %31, align 8, !dbg !2285
  br label %139, !dbg !2286, !llvm.loop !2287

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2289
  %998 = icmp eq i64 %997, 0, !dbg !2291
  br i1 %998, label %999, label %1006, !dbg !2292

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2293
  %1001 = icmp eq i32 %1000, 2, !dbg !2294
  br i1 %1001, label %1002, label %1006, !dbg !2295

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2296
  %1004 = trunc i8 %1003 to i1, !dbg !2296
  br i1 %1004, label %1005, label %1006, !dbg !2297

1005:                                             ; preds = %1002
  br label %1078, !dbg !2298

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2299
  %1008 = icmp eq i32 %1007, 2, !dbg !2301
  br i1 %1008, label %1009, label %1038, !dbg !2302

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2303
  %1011 = trunc i8 %1010 to i1, !dbg !2303
  br i1 %1011, label %1038, label %1012, !dbg !2304

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2305
  %1014 = trunc i8 %1013 to i1, !dbg !2305
  br i1 %1014, label %1015, label %1038, !dbg !2306

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2307
  %1017 = trunc i8 %1016 to i1, !dbg !2307
  br i1 %1017, label %1018, label %1028, !dbg !2310

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2311
  %1020 = load i64, i64* %22, align 8, !dbg !2312
  %1021 = load i8*, i8** %13, align 8, !dbg !2313
  %1022 = load i64, i64* %14, align 8, !dbg !2314
  %1023 = load i32, i32* %16, align 4, !dbg !2315
  %1024 = load i32*, i32** %17, align 8, !dbg !2316
  %1025 = load i8*, i8** %18, align 8, !dbg !2317
  %1026 = load i8*, i8** %19, align 8, !dbg !2318
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2319
  store i64 %1027, i64* %10, align 8, !dbg !2320
  br label %1096, !dbg !2320

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2321
  %1030 = icmp ne i64 %1029, 0, !dbg !2321
  br i1 %1030, label %1036, label %1031, !dbg !2323

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2324
  %1033 = icmp ne i64 %1032, 0, !dbg !2324
  br i1 %1033, label %1034, label %1036, !dbg !2325

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2326
  store i64 %1035, i64* %12, align 8, !dbg !2328
  store i64 0, i64* %21, align 8, !dbg !2329
  br label %51, !dbg !2330

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2331

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2332
  %1040 = icmp ne i8* %1039, null, !dbg !2332
  br i1 %1040, label %1041, label %1068, !dbg !2334

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2335
  %1043 = trunc i8 %1042 to i1, !dbg !2335
  br i1 %1043, label %1068, label %1044, !dbg !2336

1044:                                             ; preds = %1041
  br label %1045, !dbg !2337

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2338
  %1047 = load i8, i8* %1046, align 1, !dbg !2341
  %1048 = icmp ne i8 %1047, 0, !dbg !2342
  br i1 %1048, label %1049, label %1067, !dbg !2342

1049:                                             ; preds = %1045
  br label %1050, !dbg !2343

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2344
  %1052 = load i64, i64* %12, align 8, !dbg !2344
  %1053 = icmp ult i64 %1051, %1052, !dbg !2344
  br i1 %1053, label %1054, label %1060, !dbg !2347

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2344
  %1056 = load i8, i8* %1055, align 1, !dbg !2344
  %1057 = load i8*, i8** %11, align 8, !dbg !2344
  %1058 = load i64, i64* %21, align 8, !dbg !2344
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2344
  store i8 %1056, i8* %1059, align 1, !dbg !2344
  br label %1060, !dbg !2344

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2347
  %1062 = add i64 %1061, 1, !dbg !2347
  store i64 %1062, i64* %21, align 8, !dbg !2347
  br label %1063, !dbg !2347

1063:                                             ; preds = %1060
  br label %1064, !dbg !2347

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2348
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2348
  store i8* %1066, i8** %23, align 8, !dbg !2348
  br label %1045, !dbg !2349, !llvm.loop !2350

1067:                                             ; preds = %1045
  br label %1068, !dbg !2351

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2352
  %1070 = load i64, i64* %12, align 8, !dbg !2354
  %1071 = icmp ult i64 %1069, %1070, !dbg !2355
  br i1 %1071, label %1072, label %1076, !dbg !2356

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2357
  %1074 = load i64, i64* %21, align 8, !dbg !2358
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2357
  store i8 0, i8* %1075, align 1, !dbg !2359
  br label %1076, !dbg !2357

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2360
  store i64 %1077, i64* %10, align 8, !dbg !2361
  br label %1096, !dbg !2361

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2362), !dbg !2363
  %1079 = load i32, i32* %15, align 4, !dbg !2364
  %1080 = icmp eq i32 %1079, 2, !dbg !2366
  br i1 %1080, label %1081, label %1085, !dbg !2367

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2368
  %1083 = trunc i8 %1082 to i1, !dbg !2368
  br i1 %1083, label %1084, label %1085, !dbg !2369

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2370
  br label %1085, !dbg !2371

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2372
  %1087 = load i64, i64* %12, align 8, !dbg !2373
  %1088 = load i8*, i8** %13, align 8, !dbg !2374
  %1089 = load i64, i64* %14, align 8, !dbg !2375
  %1090 = load i32, i32* %15, align 4, !dbg !2376
  %1091 = load i32, i32* %16, align 4, !dbg !2377
  %1092 = and i32 %1091, -3, !dbg !2378
  %1093 = load i8*, i8** %18, align 8, !dbg !2379
  %1094 = load i8*, i8** %19, align 8, !dbg !2380
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2381
  store i64 %1095, i64* %10, align 8, !dbg !2382
  br label %1096, !dbg !2382

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2383
  ret i64 %1097, !dbg !2383
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2384, metadata !DIExpression()), !dbg !2385
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2386, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2388, metadata !DIExpression()), !dbg !2389
  %9 = load i8*, i8** %4, align 8, !dbg !2390
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.105, i64 0, i64 0), i8* noundef %9) #18, !dbg !2390
  store i8* %10, i8** %6, align 8, !dbg !2389
  %11 = load i8*, i8** %6, align 8, !dbg !2391
  %12 = load i8*, i8** %4, align 8, !dbg !2393
  %13 = icmp ne i8* %11, %12, !dbg !2394
  br i1 %13, label %14, label %16, !dbg !2395

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2396
  store i8* %15, i8** %3, align 8, !dbg !2397
  br label %37, !dbg !2397

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2398, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2400, metadata !DIExpression()), !dbg !2401
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2402
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2403
  %18 = icmp eq i64 %17, 3, !dbg !2405
  br i1 %18, label %19, label %32, !dbg !2406

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2407
  %21 = icmp eq i32 %20, 8216, !dbg !2408
  br i1 %21, label %22, label %32, !dbg !2409

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2410
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2410
  %25 = load i8, i8* %24, align 1, !dbg !2410
  %26 = zext i8 %25 to i32, !dbg !2410
  %27 = icmp eq i32 %26, 39, !dbg !2411
  %28 = zext i1 %27 to i32, !dbg !2411
  %29 = sext i32 %28 to i64, !dbg !2412
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2412
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2412
  store i8* %31, i8** %3, align 8, !dbg !2413
  br label %37, !dbg !2413

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2414
  %34 = icmp eq i32 %33, 9, !dbg !2415
  %35 = zext i1 %34 to i64, !dbg !2414
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.104, i64 0, i64 0), !dbg !2414
  store i8* %36, i8** %3, align 8, !dbg !2416
  br label %37, !dbg !2416

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2417
  ret i8* %38, !dbg !2417
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2418 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2421, metadata !DIExpression()), !dbg !2422
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2423, metadata !DIExpression()), !dbg !2424
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2425, metadata !DIExpression()), !dbg !2426
  %7 = load i8*, i8** %4, align 8, !dbg !2427
  %8 = load i64, i64* %5, align 8, !dbg !2428
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2429
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2430
  ret i8* %10, !dbg !2431
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2432 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2435, metadata !DIExpression()), !dbg !2436
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2437, metadata !DIExpression()), !dbg !2438
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2439, metadata !DIExpression()), !dbg !2440
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2441, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2443, metadata !DIExpression()), !dbg !2444
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2445
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2445
  br i1 %15, label %16, label %18, !dbg !2445

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2446
  br label %19, !dbg !2445

18:                                               ; preds = %4
  br label %19, !dbg !2445

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2445
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2444
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2447, metadata !DIExpression()), !dbg !2448
  %21 = call i32* @__errno_location() #21, !dbg !2449
  %22 = load i32, i32* %21, align 4, !dbg !2449
  store i32 %22, i32* %10, align 4, !dbg !2448
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2450, metadata !DIExpression()), !dbg !2451
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2452
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2453
  %25 = load i32, i32* %24, align 4, !dbg !2453
  %26 = load i64*, i64** %7, align 8, !dbg !2454
  %27 = icmp ne i64* %26, null, !dbg !2454
  %28 = zext i1 %27 to i64, !dbg !2454
  %29 = select i1 %27, i32 0, i32 1, !dbg !2454
  %30 = or i32 %25, %29, !dbg !2455
  store i32 %30, i32* %11, align 4, !dbg !2451
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2456, metadata !DIExpression()), !dbg !2457
  %31 = load i8*, i8** %5, align 8, !dbg !2458
  %32 = load i64, i64* %6, align 8, !dbg !2459
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2460
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2461
  %35 = load i32, i32* %34, align 8, !dbg !2461
  %36 = load i32, i32* %11, align 4, !dbg !2462
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2463
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2464
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2463
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2465
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2466
  %42 = load i8*, i8** %41, align 8, !dbg !2466
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2467
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2468
  %45 = load i8*, i8** %44, align 8, !dbg !2468
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2469
  %47 = add i64 %46, 1, !dbg !2470
  store i64 %47, i64* %12, align 8, !dbg !2457
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2471, metadata !DIExpression()), !dbg !2472
  %48 = load i64, i64* %12, align 8, !dbg !2473
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2474
  store i8* %49, i8** %13, align 8, !dbg !2472
  %50 = load i8*, i8** %13, align 8, !dbg !2475
  %51 = load i64, i64* %12, align 8, !dbg !2476
  %52 = load i8*, i8** %5, align 8, !dbg !2477
  %53 = load i64, i64* %6, align 8, !dbg !2478
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2479
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2480
  %56 = load i32, i32* %55, align 8, !dbg !2480
  %57 = load i32, i32* %11, align 4, !dbg !2481
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2482
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2483
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2482
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2484
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2485
  %63 = load i8*, i8** %62, align 8, !dbg !2485
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2486
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2487
  %66 = load i8*, i8** %65, align 8, !dbg !2487
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2488
  %68 = load i32, i32* %10, align 4, !dbg !2489
  %69 = call i32* @__errno_location() #21, !dbg !2490
  store i32 %68, i32* %69, align 4, !dbg !2491
  %70 = load i64*, i64** %7, align 8, !dbg !2492
  %71 = icmp ne i64* %70, null, !dbg !2492
  br i1 %71, label %72, label %76, !dbg !2494

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2495
  %74 = sub i64 %73, 1, !dbg !2496
  %75 = load i64*, i64** %7, align 8, !dbg !2497
  store i64 %74, i64* %75, align 8, !dbg !2498
  br label %76, !dbg !2499

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2500
  ret i8* %77, !dbg !2501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2502 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2503, metadata !DIExpression()), !dbg !2504
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2505
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2504
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2506, metadata !DIExpression()), !dbg !2508
  store i32 1, i32* %2, align 4, !dbg !2508
  br label %4, !dbg !2509

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2510
  %6 = load i32, i32* @nslots, align 4, !dbg !2512
  %7 = icmp slt i32 %5, %6, !dbg !2513
  br i1 %7, label %8, label %18, !dbg !2514

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2515
  %10 = load i32, i32* %2, align 4, !dbg !2516
  %11 = sext i32 %10 to i64, !dbg !2515
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2515
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2517
  %14 = load i8*, i8** %13, align 8, !dbg !2517
  call void @free(i8* noundef %14) #18, !dbg !2518
  br label %15, !dbg !2518

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2519
  %17 = add nsw i32 %16, 1, !dbg !2519
  store i32 %17, i32* %2, align 4, !dbg !2519
  br label %4, !dbg !2520, !llvm.loop !2521

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2523
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2523
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2525
  %22 = load i8*, i8** %21, align 8, !dbg !2525
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2526
  br i1 %23, label %24, label %29, !dbg !2527

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2528
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2528
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2530
  %28 = load i8*, i8** %27, align 8, !dbg !2530
  call void @free(i8* noundef %28) #18, !dbg !2531
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2532
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2533
  br label %29, !dbg !2534

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2535
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2537
  br i1 %31, label %32, label %35, !dbg !2538

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2539
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2539
  call void @free(i8* noundef %34) #18, !dbg !2541
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2542
  br label %35, !dbg !2543

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2544
  ret void, !dbg !2545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2546 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2549, metadata !DIExpression()), !dbg !2550
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2551, metadata !DIExpression()), !dbg !2552
  %5 = load i32, i32* %3, align 4, !dbg !2553
  %6 = load i8*, i8** %4, align 8, !dbg !2554
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2555
  ret i8* %7, !dbg !2556
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2557 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2560, metadata !DIExpression()), !dbg !2561
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2562, metadata !DIExpression()), !dbg !2563
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2564, metadata !DIExpression()), !dbg !2565
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2566, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2568, metadata !DIExpression()), !dbg !2569
  %18 = call i32* @__errno_location() #21, !dbg !2570
  %19 = load i32, i32* %18, align 4, !dbg !2570
  store i32 %19, i32* %9, align 4, !dbg !2569
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2571, metadata !DIExpression()), !dbg !2572
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2573
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2572
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2574, metadata !DIExpression()), !dbg !2575
  store i32 2147483647, i32* %11, align 4, !dbg !2575
  %21 = load i32, i32* %5, align 4, !dbg !2576
  %22 = icmp sle i32 0, %21, !dbg !2578
  br i1 %22, label %23, label %27, !dbg !2579

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2580
  %25 = load i32, i32* %11, align 4, !dbg !2581
  %26 = icmp slt i32 %24, %25, !dbg !2582
  br i1 %26, label %28, label %27, !dbg !2583

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2584
  unreachable, !dbg !2584

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2585
  %30 = load i32, i32* %5, align 4, !dbg !2587
  %31 = icmp sle i32 %29, %30, !dbg !2588
  br i1 %31, label %32, label %73, !dbg !2589

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2590, metadata !DIExpression()), !dbg !2592
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2593
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2594
  %35 = zext i1 %34 to i8, !dbg !2592
  store i8 %35, i8* %12, align 1, !dbg !2592
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2595, metadata !DIExpression()), !dbg !2596
  %36 = load i32, i32* @nslots, align 4, !dbg !2597
  %37 = sext i32 %36 to i64, !dbg !2597
  store i64 %37, i64* %13, align 8, !dbg !2596
  %38 = load i8, i8* %12, align 1, !dbg !2598
  %39 = trunc i8 %38 to i1, !dbg !2598
  br i1 %39, label %40, label %41, !dbg !2598

40:                                               ; preds = %32
  br label %43, !dbg !2598

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2599
  br label %43, !dbg !2598

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2598
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2598
  %46 = load i32, i32* %5, align 4, !dbg !2600
  %47 = load i32, i32* @nslots, align 4, !dbg !2601
  %48 = sub nsw i32 %46, %47, !dbg !2602
  %49 = add nsw i32 %48, 1, !dbg !2603
  %50 = sext i32 %49 to i64, !dbg !2600
  %51 = load i32, i32* %11, align 4, !dbg !2604
  %52 = sext i32 %51 to i64, !dbg !2604
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2605
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2605
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2606
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2607
  %55 = load i8, i8* %12, align 1, !dbg !2608
  %56 = trunc i8 %55 to i1, !dbg !2608
  br i1 %56, label %57, label %60, !dbg !2610

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2611
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2612
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2612
  br label %60, !dbg !2613

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2614
  %62 = load i32, i32* @nslots, align 4, !dbg !2615
  %63 = sext i32 %62 to i64, !dbg !2616
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2616
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2617
  %66 = load i64, i64* %13, align 8, !dbg !2618
  %67 = load i32, i32* @nslots, align 4, !dbg !2619
  %68 = sext i32 %67 to i64, !dbg !2619
  %69 = sub nsw i64 %66, %68, !dbg !2620
  %70 = mul i64 %69, 16, !dbg !2621
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2617
  %71 = load i64, i64* %13, align 8, !dbg !2622
  %72 = trunc i64 %71 to i32, !dbg !2622
  store i32 %72, i32* @nslots, align 4, !dbg !2623
  br label %73, !dbg !2624

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2625, metadata !DIExpression()), !dbg !2627
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2628
  %75 = load i32, i32* %5, align 4, !dbg !2629
  %76 = sext i32 %75 to i64, !dbg !2628
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2628
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2630
  %79 = load i64, i64* %78, align 8, !dbg !2630
  store i64 %79, i64* %14, align 8, !dbg !2627
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2631, metadata !DIExpression()), !dbg !2632
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2633
  %81 = load i32, i32* %5, align 4, !dbg !2634
  %82 = sext i32 %81 to i64, !dbg !2633
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2633
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2635
  %85 = load i8*, i8** %84, align 8, !dbg !2635
  store i8* %85, i8** %15, align 8, !dbg !2632
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2636, metadata !DIExpression()), !dbg !2637
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2638
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2639
  %88 = load i32, i32* %87, align 4, !dbg !2639
  %89 = or i32 %88, 1, !dbg !2640
  store i32 %89, i32* %16, align 4, !dbg !2637
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2641, metadata !DIExpression()), !dbg !2642
  %90 = load i8*, i8** %15, align 8, !dbg !2643
  %91 = load i64, i64* %14, align 8, !dbg !2644
  %92 = load i8*, i8** %6, align 8, !dbg !2645
  %93 = load i64, i64* %7, align 8, !dbg !2646
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2647
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2648
  %96 = load i32, i32* %95, align 8, !dbg !2648
  %97 = load i32, i32* %16, align 4, !dbg !2649
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2650
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2651
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2650
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2652
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2653
  %103 = load i8*, i8** %102, align 8, !dbg !2653
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2654
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2655
  %106 = load i8*, i8** %105, align 8, !dbg !2655
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2656
  store i64 %107, i64* %17, align 8, !dbg !2642
  %108 = load i64, i64* %14, align 8, !dbg !2657
  %109 = load i64, i64* %17, align 8, !dbg !2659
  %110 = icmp ule i64 %108, %109, !dbg !2660
  br i1 %110, label %111, label %149, !dbg !2661

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2662
  %113 = add i64 %112, 1, !dbg !2664
  store i64 %113, i64* %14, align 8, !dbg !2665
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2666
  %115 = load i32, i32* %5, align 4, !dbg !2667
  %116 = sext i32 %115 to i64, !dbg !2666
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2666
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2668
  store i64 %113, i64* %118, align 8, !dbg !2669
  %119 = load i8*, i8** %15, align 8, !dbg !2670
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2672
  br i1 %120, label %121, label %123, !dbg !2673

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2674
  call void @free(i8* noundef %122) #18, !dbg !2675
  br label %123, !dbg !2675

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2676
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2677
  store i8* %125, i8** %15, align 8, !dbg !2678
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2679
  %127 = load i32, i32* %5, align 4, !dbg !2680
  %128 = sext i32 %127 to i64, !dbg !2679
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2679
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2681
  store i8* %125, i8** %130, align 8, !dbg !2682
  %131 = load i8*, i8** %15, align 8, !dbg !2683
  %132 = load i64, i64* %14, align 8, !dbg !2684
  %133 = load i8*, i8** %6, align 8, !dbg !2685
  %134 = load i64, i64* %7, align 8, !dbg !2686
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2687
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2688
  %137 = load i32, i32* %136, align 8, !dbg !2688
  %138 = load i32, i32* %16, align 4, !dbg !2689
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2690
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2691
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2690
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2692
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2693
  %144 = load i8*, i8** %143, align 8, !dbg !2693
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2694
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2695
  %147 = load i8*, i8** %146, align 8, !dbg !2695
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2696
  br label %149, !dbg !2697

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2698
  %151 = call i32* @__errno_location() #21, !dbg !2699
  store i32 %150, i32* %151, align 4, !dbg !2700
  %152 = load i8*, i8** %15, align 8, !dbg !2701
  ret i8* %152, !dbg !2702
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2703 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2706, metadata !DIExpression()), !dbg !2707
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2708, metadata !DIExpression()), !dbg !2709
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2710, metadata !DIExpression()), !dbg !2711
  %7 = load i32, i32* %4, align 4, !dbg !2712
  %8 = load i8*, i8** %5, align 8, !dbg !2713
  %9 = load i64, i64* %6, align 8, !dbg !2714
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2715
  ret i8* %10, !dbg !2716
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2717 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2720, metadata !DIExpression()), !dbg !2721
  %3 = load i8*, i8** %2, align 8, !dbg !2722
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2723
  ret i8* %4, !dbg !2724
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2725 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2728, metadata !DIExpression()), !dbg !2729
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2730, metadata !DIExpression()), !dbg !2731
  %5 = load i8*, i8** %3, align 8, !dbg !2732
  %6 = load i64, i64* %4, align 8, !dbg !2733
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2734
  ret i8* %7, !dbg !2735
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2736 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2739, metadata !DIExpression()), !dbg !2740
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2741, metadata !DIExpression()), !dbg !2742
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2743, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2745, metadata !DIExpression()), !dbg !2746
  %8 = load i32, i32* %5, align 4, !dbg !2747
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2748
  %9 = load i32, i32* %4, align 4, !dbg !2749
  %10 = load i8*, i8** %6, align 8, !dbg !2750
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2751
  ret i8* %11, !dbg !2752
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2753 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2756, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2758, metadata !DIExpression()), !dbg !2759
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2759
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2759
  %5 = load i32, i32* %3, align 4, !dbg !2760
  %6 = icmp eq i32 %5, 10, !dbg !2762
  br i1 %6, label %7, label %8, !dbg !2763

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2764
  unreachable, !dbg !2764

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2765
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2766
  store i32 %9, i32* %10, align 8, !dbg !2767
  ret void, !dbg !2768
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2769 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2772, metadata !DIExpression()), !dbg !2773
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2774, metadata !DIExpression()), !dbg !2775
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2776, metadata !DIExpression()), !dbg !2777
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2778, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2780, metadata !DIExpression()), !dbg !2781
  %10 = load i32, i32* %6, align 4, !dbg !2782
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2783
  %11 = load i32, i32* %5, align 4, !dbg !2784
  %12 = load i8*, i8** %7, align 8, !dbg !2785
  %13 = load i64, i64* %8, align 8, !dbg !2786
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2787
  ret i8* %14, !dbg !2788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2789 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2792, metadata !DIExpression()), !dbg !2793
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2794, metadata !DIExpression()), !dbg !2795
  %5 = load i32, i32* %3, align 4, !dbg !2796
  %6 = load i8*, i8** %4, align 8, !dbg !2797
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2798
  ret i8* %7, !dbg !2799
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2800 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2803, metadata !DIExpression()), !dbg !2804
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2805, metadata !DIExpression()), !dbg !2806
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2807, metadata !DIExpression()), !dbg !2808
  %7 = load i32, i32* %4, align 4, !dbg !2809
  %8 = load i8*, i8** %5, align 8, !dbg !2810
  %9 = load i64, i64* %6, align 8, !dbg !2811
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2812
  ret i8* %10, !dbg !2813
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2814 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2817, metadata !DIExpression()), !dbg !2818
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2819, metadata !DIExpression()), !dbg !2820
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2821, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2823, metadata !DIExpression()), !dbg !2824
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2825
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2825
  %9 = load i8, i8* %6, align 1, !dbg !2826
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2827
  %11 = load i8*, i8** %4, align 8, !dbg !2828
  %12 = load i64, i64* %5, align 8, !dbg !2829
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2830
  ret i8* %13, !dbg !2831
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2832 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2835, metadata !DIExpression()), !dbg !2836
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2837, metadata !DIExpression()), !dbg !2838
  %5 = load i8*, i8** %3, align 8, !dbg !2839
  %6 = load i8, i8* %4, align 1, !dbg !2840
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2841
  ret i8* %7, !dbg !2842
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2843 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2844, metadata !DIExpression()), !dbg !2845
  %3 = load i8*, i8** %2, align 8, !dbg !2846
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2847
  ret i8* %4, !dbg !2848
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2849 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2850, metadata !DIExpression()), !dbg !2851
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2852, metadata !DIExpression()), !dbg !2853
  %5 = load i8*, i8** %3, align 8, !dbg !2854
  %6 = load i64, i64* %4, align 8, !dbg !2855
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2856
  ret i8* %7, !dbg !2857
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2858 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2859, metadata !DIExpression()), !dbg !2860
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2861, metadata !DIExpression()), !dbg !2862
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2863, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2865, metadata !DIExpression()), !dbg !2866
  %9 = load i32, i32* %5, align 4, !dbg !2867
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2868
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2868
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2868
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2869
  %13 = load i32, i32* %4, align 4, !dbg !2870
  %14 = load i8*, i8** %6, align 8, !dbg !2871
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2872
  ret i8* %15, !dbg !2873
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2874 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2877, metadata !DIExpression()), !dbg !2878
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2879, metadata !DIExpression()), !dbg !2880
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2881, metadata !DIExpression()), !dbg !2882
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2883, metadata !DIExpression()), !dbg !2884
  %9 = load i32, i32* %5, align 4, !dbg !2885
  %10 = load i8*, i8** %6, align 8, !dbg !2886
  %11 = load i8*, i8** %7, align 8, !dbg !2887
  %12 = load i8*, i8** %8, align 8, !dbg !2888
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2889
  ret i8* %13, !dbg !2890
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2891 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2894, metadata !DIExpression()), !dbg !2895
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2896, metadata !DIExpression()), !dbg !2897
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2898, metadata !DIExpression()), !dbg !2899
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2900, metadata !DIExpression()), !dbg !2901
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2902, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2904, metadata !DIExpression()), !dbg !2905
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2906
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2906
  %13 = load i8*, i8** %7, align 8, !dbg !2907
  %14 = load i8*, i8** %8, align 8, !dbg !2908
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2909
  %15 = load i32, i32* %6, align 4, !dbg !2910
  %16 = load i8*, i8** %9, align 8, !dbg !2911
  %17 = load i64, i64* %10, align 8, !dbg !2912
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2913
  ret i8* %18, !dbg !2914
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2915 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2918, metadata !DIExpression()), !dbg !2919
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2920, metadata !DIExpression()), !dbg !2921
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2922, metadata !DIExpression()), !dbg !2923
  %7 = load i8*, i8** %4, align 8, !dbg !2924
  %8 = load i8*, i8** %5, align 8, !dbg !2925
  %9 = load i8*, i8** %6, align 8, !dbg !2926
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2927
  ret i8* %10, !dbg !2928
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2929 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2932, metadata !DIExpression()), !dbg !2933
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2934, metadata !DIExpression()), !dbg !2935
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2936, metadata !DIExpression()), !dbg !2937
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2938, metadata !DIExpression()), !dbg !2939
  %9 = load i8*, i8** %5, align 8, !dbg !2940
  %10 = load i8*, i8** %6, align 8, !dbg !2941
  %11 = load i8*, i8** %7, align 8, !dbg !2942
  %12 = load i64, i64* %8, align 8, !dbg !2943
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2944
  ret i8* %13, !dbg !2945
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2946 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2949, metadata !DIExpression()), !dbg !2950
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2951, metadata !DIExpression()), !dbg !2952
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2953, metadata !DIExpression()), !dbg !2954
  %7 = load i32, i32* %4, align 4, !dbg !2955
  %8 = load i8*, i8** %5, align 8, !dbg !2956
  %9 = load i64, i64* %6, align 8, !dbg !2957
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2958
  ret i8* %10, !dbg !2959
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2960 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2963, metadata !DIExpression()), !dbg !2964
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2965, metadata !DIExpression()), !dbg !2966
  %5 = load i8*, i8** %3, align 8, !dbg !2967
  %6 = load i64, i64* %4, align 8, !dbg !2968
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2969
  ret i8* %7, !dbg !2970
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2971 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2974, metadata !DIExpression()), !dbg !2975
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2976, metadata !DIExpression()), !dbg !2977
  %5 = load i32, i32* %3, align 4, !dbg !2978
  %6 = load i8*, i8** %4, align 8, !dbg !2979
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2980
  ret i8* %7, !dbg !2981
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !2982 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2985, metadata !DIExpression()), !dbg !2986
  %3 = load i8*, i8** %2, align 8, !dbg !2987
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !2988
  ret i8* %4, !dbg !2989
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !2990 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2994, metadata !DIExpression()), !dbg !2995
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2996, metadata !DIExpression()), !dbg !2997
  %5 = load i8*, i8** %3, align 8, !dbg !2998
  %6 = load i8*, i8** %4, align 8, !dbg !2999
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !3000
  %8 = icmp ne i32 %7, 0, !dbg !3001
  %9 = xor i1 %8, true, !dbg !3001
  ret i1 %9, !dbg !3002
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !3003 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3041, metadata !DIExpression()), !dbg !3042
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3043, metadata !DIExpression()), !dbg !3044
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3045, metadata !DIExpression()), !dbg !3046
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3047, metadata !DIExpression()), !dbg !3048
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3049, metadata !DIExpression()), !dbg !3050
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3051, metadata !DIExpression()), !dbg !3052
  %13 = load i8*, i8** %8, align 8, !dbg !3053
  %14 = icmp ne i8* %13, null, !dbg !3053
  br i1 %14, label %15, label %21, !dbg !3055

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3056
  %17 = load i8*, i8** %8, align 8, !dbg !3057
  %18 = load i8*, i8** %9, align 8, !dbg !3058
  %19 = load i8*, i8** %10, align 8, !dbg !3059
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3060
  br label %26, !dbg !3060

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3061
  %23 = load i8*, i8** %9, align 8, !dbg !3062
  %24 = load i8*, i8** %10, align 8, !dbg !3063
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.113, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3064
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3065
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.115, i64 0, i64 0)) #18, !dbg !3066
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3067
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3068
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.116, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3068
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3069
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.117, i64 0, i64 0)) #18, !dbg !3070
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.118, i64 0, i64 0)), !dbg !3071
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3072
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.116, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3072
  %37 = load i64, i64* %12, align 8, !dbg !3073
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
  ], !dbg !3074

38:                                               ; preds = %26
  br label %241, !dbg !3075

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3077
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.119, i64 0, i64 0)) #18, !dbg !3078
  %42 = load i8**, i8*** %11, align 8, !dbg !3079
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3079
  %44 = load i8*, i8** %43, align 8, !dbg !3079
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3080
  br label %241, !dbg !3081

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3082
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.120, i64 0, i64 0)) #18, !dbg !3083
  %49 = load i8**, i8*** %11, align 8, !dbg !3084
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3084
  %51 = load i8*, i8** %50, align 8, !dbg !3084
  %52 = load i8**, i8*** %11, align 8, !dbg !3085
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3085
  %54 = load i8*, i8** %53, align 8, !dbg !3085
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3086
  br label %241, !dbg !3087

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3088
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.121, i64 0, i64 0)) #18, !dbg !3089
  %59 = load i8**, i8*** %11, align 8, !dbg !3090
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3090
  %61 = load i8*, i8** %60, align 8, !dbg !3090
  %62 = load i8**, i8*** %11, align 8, !dbg !3091
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3091
  %64 = load i8*, i8** %63, align 8, !dbg !3091
  %65 = load i8**, i8*** %11, align 8, !dbg !3092
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3092
  %67 = load i8*, i8** %66, align 8, !dbg !3092
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3093
  br label %241, !dbg !3094

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3095
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.122, i64 0, i64 0)) #18, !dbg !3096
  %72 = load i8**, i8*** %11, align 8, !dbg !3097
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3097
  %74 = load i8*, i8** %73, align 8, !dbg !3097
  %75 = load i8**, i8*** %11, align 8, !dbg !3098
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3098
  %77 = load i8*, i8** %76, align 8, !dbg !3098
  %78 = load i8**, i8*** %11, align 8, !dbg !3099
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3099
  %80 = load i8*, i8** %79, align 8, !dbg !3099
  %81 = load i8**, i8*** %11, align 8, !dbg !3100
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3100
  %83 = load i8*, i8** %82, align 8, !dbg !3100
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3101
  br label %241, !dbg !3102

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3103
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.123, i64 0, i64 0)) #18, !dbg !3104
  %88 = load i8**, i8*** %11, align 8, !dbg !3105
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3105
  %90 = load i8*, i8** %89, align 8, !dbg !3105
  %91 = load i8**, i8*** %11, align 8, !dbg !3106
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3106
  %93 = load i8*, i8** %92, align 8, !dbg !3106
  %94 = load i8**, i8*** %11, align 8, !dbg !3107
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3107
  %96 = load i8*, i8** %95, align 8, !dbg !3107
  %97 = load i8**, i8*** %11, align 8, !dbg !3108
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3108
  %99 = load i8*, i8** %98, align 8, !dbg !3108
  %100 = load i8**, i8*** %11, align 8, !dbg !3109
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3109
  %102 = load i8*, i8** %101, align 8, !dbg !3109
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3110
  br label %241, !dbg !3111

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3112
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.124, i64 0, i64 0)) #18, !dbg !3113
  %107 = load i8**, i8*** %11, align 8, !dbg !3114
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3114
  %109 = load i8*, i8** %108, align 8, !dbg !3114
  %110 = load i8**, i8*** %11, align 8, !dbg !3115
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3115
  %112 = load i8*, i8** %111, align 8, !dbg !3115
  %113 = load i8**, i8*** %11, align 8, !dbg !3116
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3116
  %115 = load i8*, i8** %114, align 8, !dbg !3116
  %116 = load i8**, i8*** %11, align 8, !dbg !3117
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3117
  %118 = load i8*, i8** %117, align 8, !dbg !3117
  %119 = load i8**, i8*** %11, align 8, !dbg !3118
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3118
  %121 = load i8*, i8** %120, align 8, !dbg !3118
  %122 = load i8**, i8*** %11, align 8, !dbg !3119
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3119
  %124 = load i8*, i8** %123, align 8, !dbg !3119
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3120
  br label %241, !dbg !3121

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3122
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.125, i64 0, i64 0)) #18, !dbg !3123
  %129 = load i8**, i8*** %11, align 8, !dbg !3124
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3124
  %131 = load i8*, i8** %130, align 8, !dbg !3124
  %132 = load i8**, i8*** %11, align 8, !dbg !3125
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3125
  %134 = load i8*, i8** %133, align 8, !dbg !3125
  %135 = load i8**, i8*** %11, align 8, !dbg !3126
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3126
  %137 = load i8*, i8** %136, align 8, !dbg !3126
  %138 = load i8**, i8*** %11, align 8, !dbg !3127
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3127
  %140 = load i8*, i8** %139, align 8, !dbg !3127
  %141 = load i8**, i8*** %11, align 8, !dbg !3128
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3128
  %143 = load i8*, i8** %142, align 8, !dbg !3128
  %144 = load i8**, i8*** %11, align 8, !dbg !3129
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3129
  %146 = load i8*, i8** %145, align 8, !dbg !3129
  %147 = load i8**, i8*** %11, align 8, !dbg !3130
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3130
  %149 = load i8*, i8** %148, align 8, !dbg !3130
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3131
  br label %241, !dbg !3132

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3133
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.126, i64 0, i64 0)) #18, !dbg !3134
  %154 = load i8**, i8*** %11, align 8, !dbg !3135
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3135
  %156 = load i8*, i8** %155, align 8, !dbg !3135
  %157 = load i8**, i8*** %11, align 8, !dbg !3136
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3136
  %159 = load i8*, i8** %158, align 8, !dbg !3136
  %160 = load i8**, i8*** %11, align 8, !dbg !3137
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3137
  %162 = load i8*, i8** %161, align 8, !dbg !3137
  %163 = load i8**, i8*** %11, align 8, !dbg !3138
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3138
  %165 = load i8*, i8** %164, align 8, !dbg !3138
  %166 = load i8**, i8*** %11, align 8, !dbg !3139
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3139
  %168 = load i8*, i8** %167, align 8, !dbg !3139
  %169 = load i8**, i8*** %11, align 8, !dbg !3140
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3140
  %171 = load i8*, i8** %170, align 8, !dbg !3140
  %172 = load i8**, i8*** %11, align 8, !dbg !3141
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3141
  %174 = load i8*, i8** %173, align 8, !dbg !3141
  %175 = load i8**, i8*** %11, align 8, !dbg !3142
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3142
  %177 = load i8*, i8** %176, align 8, !dbg !3142
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3143
  br label %241, !dbg !3144

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3145
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.127, i64 0, i64 0)) #18, !dbg !3146
  %182 = load i8**, i8*** %11, align 8, !dbg !3147
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3147
  %184 = load i8*, i8** %183, align 8, !dbg !3147
  %185 = load i8**, i8*** %11, align 8, !dbg !3148
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3148
  %187 = load i8*, i8** %186, align 8, !dbg !3148
  %188 = load i8**, i8*** %11, align 8, !dbg !3149
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3149
  %190 = load i8*, i8** %189, align 8, !dbg !3149
  %191 = load i8**, i8*** %11, align 8, !dbg !3150
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3150
  %193 = load i8*, i8** %192, align 8, !dbg !3150
  %194 = load i8**, i8*** %11, align 8, !dbg !3151
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3151
  %196 = load i8*, i8** %195, align 8, !dbg !3151
  %197 = load i8**, i8*** %11, align 8, !dbg !3152
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3152
  %199 = load i8*, i8** %198, align 8, !dbg !3152
  %200 = load i8**, i8*** %11, align 8, !dbg !3153
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3153
  %202 = load i8*, i8** %201, align 8, !dbg !3153
  %203 = load i8**, i8*** %11, align 8, !dbg !3154
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3154
  %205 = load i8*, i8** %204, align 8, !dbg !3154
  %206 = load i8**, i8*** %11, align 8, !dbg !3155
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3155
  %208 = load i8*, i8** %207, align 8, !dbg !3155
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3156
  br label %241, !dbg !3157

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3158
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.128, i64 0, i64 0)) #18, !dbg !3159
  %213 = load i8**, i8*** %11, align 8, !dbg !3160
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3160
  %215 = load i8*, i8** %214, align 8, !dbg !3160
  %216 = load i8**, i8*** %11, align 8, !dbg !3161
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3161
  %218 = load i8*, i8** %217, align 8, !dbg !3161
  %219 = load i8**, i8*** %11, align 8, !dbg !3162
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3162
  %221 = load i8*, i8** %220, align 8, !dbg !3162
  %222 = load i8**, i8*** %11, align 8, !dbg !3163
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3163
  %224 = load i8*, i8** %223, align 8, !dbg !3163
  %225 = load i8**, i8*** %11, align 8, !dbg !3164
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3164
  %227 = load i8*, i8** %226, align 8, !dbg !3164
  %228 = load i8**, i8*** %11, align 8, !dbg !3165
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3165
  %230 = load i8*, i8** %229, align 8, !dbg !3165
  %231 = load i8**, i8*** %11, align 8, !dbg !3166
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3166
  %233 = load i8*, i8** %232, align 8, !dbg !3166
  %234 = load i8**, i8*** %11, align 8, !dbg !3167
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3167
  %236 = load i8*, i8** %235, align 8, !dbg !3167
  %237 = load i8**, i8*** %11, align 8, !dbg !3168
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3168
  %239 = load i8*, i8** %238, align 8, !dbg !3168
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3169
  br label %241, !dbg !3170

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3171
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3172 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3175, metadata !DIExpression()), !dbg !3176
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3177, metadata !DIExpression()), !dbg !3178
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3179, metadata !DIExpression()), !dbg !3180
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3181, metadata !DIExpression()), !dbg !3182
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3183, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3185, metadata !DIExpression()), !dbg !3186
  store i64 0, i64* %11, align 8, !dbg !3187
  br label %12, !dbg !3189

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3190
  %14 = load i64, i64* %11, align 8, !dbg !3192
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3190
  %16 = load i8*, i8** %15, align 8, !dbg !3190
  %17 = icmp ne i8* %16, null, !dbg !3193
  br i1 %17, label %18, label %22, !dbg !3193

18:                                               ; preds = %12
  br label %19, !dbg !3193

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3194
  %21 = add i64 %20, 1, !dbg !3194
  store i64 %21, i64* %11, align 8, !dbg !3194
  br label %12, !dbg !3195, !llvm.loop !3196

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3198
  %24 = load i8*, i8** %7, align 8, !dbg !3199
  %25 = load i8*, i8** %8, align 8, !dbg !3200
  %26 = load i8*, i8** %9, align 8, !dbg !3201
  %27 = load i8**, i8*** %10, align 8, !dbg !3202
  %28 = load i64, i64* %11, align 8, !dbg !3203
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3204
  ret void, !dbg !3205
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3206 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3220, metadata !DIExpression()), !dbg !3221
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3222, metadata !DIExpression()), !dbg !3223
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3224, metadata !DIExpression()), !dbg !3225
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3226, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3228, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3230, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3232, metadata !DIExpression()), !dbg !3234
  store i64 0, i64* %10, align 8, !dbg !3235
  br label %12, !dbg !3237

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3238
  %14 = icmp ult i64 %13, 10, !dbg !3240
  br i1 %14, label %15, label %38, !dbg !3241

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3242
  %17 = load i32, i32* %16, align 8, !dbg !3242
  %18 = icmp sge i32 %17, 0, !dbg !3242
  br i1 %18, label %27, label %19, !dbg !3242

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3242
  store i32 %20, i32* %16, align 8, !dbg !3242
  %21 = icmp sle i32 %20, 0, !dbg !3242
  br i1 %21, label %22, label %27, !dbg !3242

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3242
  %24 = load i8*, i8** %23, align 8, !dbg !3242
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3242
  %26 = bitcast i8* %25 to i8**, !dbg !3242
  br label %32, !dbg !3242

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3242
  %29 = load i8*, i8** %28, align 8, !dbg !3242
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3242
  store i8* %30, i8** %28, align 8, !dbg !3242
  %31 = bitcast i8* %29 to i8**, !dbg !3242
  br label %32, !dbg !3242

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3242
  %34 = load i8*, i8** %33, align 8, !dbg !3242
  %35 = load i64, i64* %10, align 8, !dbg !3243
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3244
  store i8* %34, i8** %36, align 8, !dbg !3245
  %37 = icmp ne i8* %34, null, !dbg !3246
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3247
  br i1 %39, label %40, label %44, !dbg !3248

40:                                               ; preds = %38
  br label %41, !dbg !3248

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3249
  %43 = add i64 %42, 1, !dbg !3249
  store i64 %43, i64* %10, align 8, !dbg !3249
  br label %12, !dbg !3250, !llvm.loop !3251

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3253
  %46 = load i8*, i8** %7, align 8, !dbg !3254
  %47 = load i8*, i8** %8, align 8, !dbg !3255
  %48 = load i8*, i8** %9, align 8, !dbg !3256
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3257
  %50 = load i64, i64* %10, align 8, !dbg !3258
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3259
  ret void, !dbg !3260
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3261 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3264, metadata !DIExpression()), !dbg !3265
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3266, metadata !DIExpression()), !dbg !3267
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3268, metadata !DIExpression()), !dbg !3269
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3270, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3272, metadata !DIExpression()), !dbg !3273
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3274
  call void @llvm.va_start(i8* %11), !dbg !3274
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3275
  %13 = load i8*, i8** %6, align 8, !dbg !3276
  %14 = load i8*, i8** %7, align 8, !dbg !3277
  %15 = load i8*, i8** %8, align 8, !dbg !3278
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3279
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3279
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3279
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3279
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3280
  call void @llvm.va_end(i8* %18), !dbg !3280
  ret void, !dbg !3281
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3282 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3283
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.116, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3283
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.133, i64 0, i64 0)) #18, !dbg !3284
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.134, i64 0, i64 0)), !dbg !3285
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.135, i64 0, i64 0)) #18, !dbg !3286
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.137, i64 0, i64 0)), !dbg !3287
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.138, i64 0, i64 0)) #18, !dbg !3288
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.139, i64 0, i64 0)), !dbg !3289
  ret void, !dbg !3290
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3291 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3295, metadata !DIExpression()), !dbg !3296
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3297, metadata !DIExpression()), !dbg !3298
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3299, metadata !DIExpression()), !dbg !3300
  %7 = load i8*, i8** %4, align 8, !dbg !3301
  %8 = load i64, i64* %5, align 8, !dbg !3302
  %9 = load i64, i64* %6, align 8, !dbg !3303
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !3304
  ret i8* %10, !dbg !3305
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3306 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3307, metadata !DIExpression()), !dbg !3308
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3309, metadata !DIExpression()), !dbg !3310
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3311, metadata !DIExpression()), !dbg !3312
  %7 = load i8*, i8** %4, align 8, !dbg !3313
  %8 = load i64, i64* %5, align 8, !dbg !3314
  %9 = load i64, i64* %6, align 8, !dbg !3315
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3316
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3317
  ret i8* %11, !dbg !3318
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3319 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3322, metadata !DIExpression()), !dbg !3323
  %3 = load i8*, i8** %2, align 8, !dbg !3324
  %4 = icmp ne i8* %3, null, !dbg !3324
  br i1 %4, label %6, label %5, !dbg !3326

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3327
  unreachable, !dbg !3327

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3328
  ret i8* %7, !dbg !3329
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3330 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3333, metadata !DIExpression()), !dbg !3334
  %3 = load i64, i64* %2, align 8, !dbg !3335
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3336
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3337
  ret i8* %5, !dbg !3338
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3339 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3342, metadata !DIExpression()), !dbg !3343
  %3 = load i64, i64* %2, align 8, !dbg !3344
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3345
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3346
  ret i8* %5, !dbg !3347
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3348 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3351, metadata !DIExpression()), !dbg !3352
  %3 = load i64, i64* %2, align 8, !dbg !3353
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !3353
  ret i8* %4, !dbg !3354
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3355 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3358, metadata !DIExpression()), !dbg !3359
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3360, metadata !DIExpression()), !dbg !3361
  %5 = load i8*, i8** %3, align 8, !dbg !3362
  %6 = load i64, i64* %4, align 8, !dbg !3363
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3364
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3365
  ret i8* %8, !dbg !3366
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3367 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3370, metadata !DIExpression()), !dbg !3371
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3372, metadata !DIExpression()), !dbg !3373
  %5 = load i8*, i8** %3, align 8, !dbg !3374
  %6 = load i64, i64* %4, align 8, !dbg !3375
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3376
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3377
  ret i8* %8, !dbg !3378
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3379 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3382, metadata !DIExpression()), !dbg !3383
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3384, metadata !DIExpression()), !dbg !3385
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3386, metadata !DIExpression()), !dbg !3387
  %7 = load i8*, i8** %4, align 8, !dbg !3388
  %8 = load i64, i64* %5, align 8, !dbg !3389
  %9 = load i64, i64* %6, align 8, !dbg !3390
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3391
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3392
  ret i8* %11, !dbg !3393
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3394 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3397, metadata !DIExpression()), !dbg !3398
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3399, metadata !DIExpression()), !dbg !3400
  %5 = load i64, i64* %3, align 8, !dbg !3401
  %6 = load i64, i64* %4, align 8, !dbg !3402
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3403
  ret i8* %7, !dbg !3404
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3405 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3408, metadata !DIExpression()), !dbg !3409
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3410, metadata !DIExpression()), !dbg !3411
  %5 = load i64, i64* %3, align 8, !dbg !3412
  %6 = load i64, i64* %4, align 8, !dbg !3413
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3414
  ret i8* %7, !dbg !3415
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3416 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3419, metadata !DIExpression()), !dbg !3420
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3421, metadata !DIExpression()), !dbg !3422
  %5 = load i8*, i8** %3, align 8, !dbg !3423
  %6 = load i64*, i64** %4, align 8, !dbg !3424
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3425
  ret i8* %7, !dbg !3426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !248 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3427, metadata !DIExpression()), !dbg !3428
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3429, metadata !DIExpression()), !dbg !3430
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3431, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3433, metadata !DIExpression()), !dbg !3434
  %8 = load i64*, i64** %5, align 8, !dbg !3435
  %9 = load i64, i64* %8, align 8, !dbg !3436
  store i64 %9, i64* %7, align 8, !dbg !3434
  %10 = load i8*, i8** %4, align 8, !dbg !3437
  %11 = icmp ne i8* %10, null, !dbg !3437
  br i1 %11, label %26, label %12, !dbg !3439

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3440
  %14 = icmp ne i64 %13, 0, !dbg !3440
  br i1 %14, label %25, label %15, !dbg !3443

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3444
  %17 = udiv i64 128, %16, !dbg !3446
  store i64 %17, i64* %7, align 8, !dbg !3447
  %18 = load i64, i64* %7, align 8, !dbg !3448
  %19 = icmp ne i64 %18, 0, !dbg !3449
  %20 = xor i1 %19, true, !dbg !3449
  %21 = zext i1 %20 to i32, !dbg !3449
  %22 = sext i32 %21 to i64, !dbg !3449
  %23 = load i64, i64* %7, align 8, !dbg !3450
  %24 = add i64 %23, %22, !dbg !3450
  store i64 %24, i64* %7, align 8, !dbg !3450
  br label %25, !dbg !3451

25:                                               ; preds = %15, %12
  br label %36, !dbg !3452

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3453
  %28 = load i64, i64* %7, align 8, !dbg !3453
  %29 = lshr i64 %28, 1, !dbg !3453
  %30 = add i64 %29, 1, !dbg !3453
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3453
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3453
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3453
  store i64 %33, i64* %7, align 8, !dbg !3453
  br i1 %32, label %34, label %35, !dbg !3456

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3457
  unreachable, !dbg !3457

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3458
  %38 = load i64, i64* %7, align 8, !dbg !3459
  %39 = load i64, i64* %6, align 8, !dbg !3460
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3461
  store i8* %40, i8** %4, align 8, !dbg !3462
  %41 = load i64, i64* %7, align 8, !dbg !3463
  %42 = load i64*, i64** %5, align 8, !dbg !3464
  store i64 %41, i64* %42, align 8, !dbg !3465
  %43 = load i8*, i8** %4, align 8, !dbg !3466
  ret i8* %43, !dbg !3467
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !255 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3468, metadata !DIExpression()), !dbg !3469
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3470, metadata !DIExpression()), !dbg !3471
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3472, metadata !DIExpression()), !dbg !3473
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3474, metadata !DIExpression()), !dbg !3475
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3476, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3478, metadata !DIExpression()), !dbg !3479
  %15 = load i64*, i64** %7, align 8, !dbg !3480
  %16 = load i64, i64* %15, align 8, !dbg !3481
  store i64 %16, i64* %11, align 8, !dbg !3479
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3482, metadata !DIExpression()), !dbg !3483
  %17 = load i64, i64* %11, align 8, !dbg !3484
  %18 = load i64, i64* %11, align 8, !dbg !3484
  %19 = ashr i64 %18, 1, !dbg !3484
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3484
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3484
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3484
  store i64 %22, i64* %12, align 8, !dbg !3484
  br i1 %21, label %23, label %24, !dbg !3486

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3487
  br label %24, !dbg !3488

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3489
  %26 = icmp sle i64 0, %25, !dbg !3491
  br i1 %26, label %27, label %33, !dbg !3492

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3493
  %29 = load i64, i64* %12, align 8, !dbg !3494
  %30 = icmp slt i64 %28, %29, !dbg !3495
  br i1 %30, label %31, label %33, !dbg !3496

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3497
  store i64 %32, i64* %12, align 8, !dbg !3498
  br label %33, !dbg !3499

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3500, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3502, metadata !DIExpression()), !dbg !3503
  %34 = load i64, i64* %10, align 8, !dbg !3504
  %35 = icmp slt i64 %34, 0, !dbg !3504
  br i1 %35, label %36, label %82, !dbg !3504

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3504
  %38 = icmp slt i64 %37, 0, !dbg !3504
  br i1 %38, label %39, label %62, !dbg !3504

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3504

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3504
  %42 = load i64, i64* %10, align 8, !dbg !3504
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3504
  %44 = icmp slt i64 %41, %43, !dbg !3504
  br i1 %44, label %111, label %115, !dbg !3504

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3504

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3504
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3504
  br i1 %48, label %52, label %53, !dbg !3504

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3504
  %51 = icmp slt i64 0, %50, !dbg !3504
  br i1 %51, label %52, label %53, !dbg !3504

52:                                               ; preds = %49, %46
  br label %57, !dbg !3504

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3504
  %55 = sub nsw i64 0, %54, !dbg !3504
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3504
  br label %57, !dbg !3504

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3504
  %59 = load i64, i64* %12, align 8, !dbg !3504
  %60 = sub nsw i64 -1, %59, !dbg !3504
  %61 = icmp sle i64 %58, %60, !dbg !3504
  br i1 %61, label %111, label %115, !dbg !3504

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3504
  %64 = icmp eq i64 %63, -1, !dbg !3504
  br i1 %64, label %65, label %77, !dbg !3504

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3504

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3504
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3504
  %69 = icmp slt i64 0, %68, !dbg !3504
  br i1 %69, label %111, label %115, !dbg !3504

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3504
  %72 = icmp slt i64 0, %71, !dbg !3504
  br i1 %72, label %73, label %115, !dbg !3504

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3504
  %75 = sub nsw i64 %74, 1, !dbg !3504
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3504
  br i1 %76, label %111, label %115, !dbg !3504

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3504
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3504
  %80 = load i64, i64* %12, align 8, !dbg !3504
  %81 = icmp slt i64 %79, %80, !dbg !3504
  br i1 %81, label %111, label %115, !dbg !3504

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3504
  %84 = icmp eq i64 %83, 0, !dbg !3504
  br i1 %84, label %85, label %86, !dbg !3504

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3504

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3504
  %88 = icmp slt i64 %87, 0, !dbg !3504
  br i1 %88, label %89, label %106, !dbg !3504

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3504
  %91 = icmp eq i64 %90, -1, !dbg !3504
  br i1 %91, label %92, label %101, !dbg !3504

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3504

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3504
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3504
  %96 = icmp slt i64 0, %95, !dbg !3504
  br i1 %96, label %111, label %115, !dbg !3504

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3504
  %99 = sub nsw i64 %98, 1, !dbg !3504
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3504
  br i1 %100, label %111, label %115, !dbg !3504

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3504
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3504
  %104 = load i64, i64* %10, align 8, !dbg !3504
  %105 = icmp slt i64 %103, %104, !dbg !3504
  br i1 %105, label %111, label %115, !dbg !3504

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3504
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3504
  %109 = load i64, i64* %12, align 8, !dbg !3504
  %110 = icmp slt i64 %108, %109, !dbg !3504
  br i1 %110, label %111, label %115, !dbg !3504

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3504
  %113 = load i64, i64* %10, align 8, !dbg !3504
  %114 = mul i64 %112, %113, !dbg !3504
  store i64 %114, i64* %13, align 8, !dbg !3504
  br label %119, !dbg !3504

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3504
  %117 = load i64, i64* %10, align 8, !dbg !3504
  %118 = mul i64 %116, %117, !dbg !3504
  store i64 %118, i64* %13, align 8, !dbg !3504
  br label %119, !dbg !3504

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3504
  %121 = icmp ne i32 %120, 0, !dbg !3504
  br i1 %121, label %122, label %123, !dbg !3504

122:                                              ; preds = %119
  br label %129, !dbg !3504

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3505
  %125 = icmp slt i64 %124, 128, !dbg !3506
  %126 = zext i1 %125 to i64, !dbg !3505
  %127 = select i1 %125, i32 128, i32 0, !dbg !3505
  %128 = sext i32 %127 to i64, !dbg !3505
  br label %129, !dbg !3504

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3504
  store i64 %130, i64* %14, align 8, !dbg !3503
  %131 = load i64, i64* %14, align 8, !dbg !3507
  %132 = icmp ne i64 %131, 0, !dbg !3507
  br i1 %132, label %133, label %142, !dbg !3509

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3510
  %135 = load i64, i64* %10, align 8, !dbg !3512
  %136 = sdiv i64 %134, %135, !dbg !3513
  store i64 %136, i64* %12, align 8, !dbg !3514
  %137 = load i64, i64* %14, align 8, !dbg !3515
  %138 = load i64, i64* %14, align 8, !dbg !3516
  %139 = load i64, i64* %10, align 8, !dbg !3517
  %140 = srem i64 %138, %139, !dbg !3518
  %141 = sub nsw i64 %137, %140, !dbg !3519
  store i64 %141, i64* %13, align 8, !dbg !3520
  br label %142, !dbg !3521

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3522
  %144 = icmp ne i8* %143, null, !dbg !3522
  br i1 %144, label %147, label %145, !dbg !3524

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3525
  store i64 0, i64* %146, align 8, !dbg !3526
  br label %147, !dbg !3527

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3528
  %149 = load i64, i64* %11, align 8, !dbg !3530
  %150 = sub nsw i64 %148, %149, !dbg !3531
  %151 = load i64, i64* %8, align 8, !dbg !3532
  %152 = icmp slt i64 %150, %151, !dbg !3533
  br i1 %152, label %153, label %256, !dbg !3534

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3535
  %155 = load i64, i64* %8, align 8, !dbg !3535
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3535
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3535
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3535
  store i64 %158, i64* %12, align 8, !dbg !3535
  br i1 %157, label %255, label %159, !dbg !3536

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3537
  %161 = icmp sle i64 0, %160, !dbg !3538
  br i1 %161, label %162, label %166, !dbg !3539

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3540
  %164 = load i64, i64* %12, align 8, !dbg !3541
  %165 = icmp slt i64 %163, %164, !dbg !3542
  br i1 %165, label %255, label %166, !dbg !3543

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3544
  %168 = icmp slt i64 %167, 0, !dbg !3544
  br i1 %168, label %169, label %215, !dbg !3544

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3544
  %171 = icmp slt i64 %170, 0, !dbg !3544
  br i1 %171, label %172, label %195, !dbg !3544

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3544

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3544
  %175 = load i64, i64* %10, align 8, !dbg !3544
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3544
  %177 = icmp slt i64 %174, %176, !dbg !3544
  br i1 %177, label %244, label %248, !dbg !3544

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3544

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3544
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3544
  br i1 %181, label %185, label %186, !dbg !3544

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3544
  %184 = icmp slt i64 0, %183, !dbg !3544
  br i1 %184, label %185, label %186, !dbg !3544

185:                                              ; preds = %182, %179
  br label %190, !dbg !3544

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3544
  %188 = sub nsw i64 0, %187, !dbg !3544
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3544
  br label %190, !dbg !3544

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3544
  %192 = load i64, i64* %12, align 8, !dbg !3544
  %193 = sub nsw i64 -1, %192, !dbg !3544
  %194 = icmp sle i64 %191, %193, !dbg !3544
  br i1 %194, label %244, label %248, !dbg !3544

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3544
  %197 = icmp eq i64 %196, -1, !dbg !3544
  br i1 %197, label %198, label %210, !dbg !3544

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3544

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3544
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3544
  %202 = icmp slt i64 0, %201, !dbg !3544
  br i1 %202, label %244, label %248, !dbg !3544

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3544
  %205 = icmp slt i64 0, %204, !dbg !3544
  br i1 %205, label %206, label %248, !dbg !3544

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3544
  %208 = sub nsw i64 %207, 1, !dbg !3544
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3544
  br i1 %209, label %244, label %248, !dbg !3544

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3544
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3544
  %213 = load i64, i64* %12, align 8, !dbg !3544
  %214 = icmp slt i64 %212, %213, !dbg !3544
  br i1 %214, label %244, label %248, !dbg !3544

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3544
  %217 = icmp eq i64 %216, 0, !dbg !3544
  br i1 %217, label %218, label %219, !dbg !3544

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3544

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3544
  %221 = icmp slt i64 %220, 0, !dbg !3544
  br i1 %221, label %222, label %239, !dbg !3544

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3544
  %224 = icmp eq i64 %223, -1, !dbg !3544
  br i1 %224, label %225, label %234, !dbg !3544

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3544

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3544
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3544
  %229 = icmp slt i64 0, %228, !dbg !3544
  br i1 %229, label %244, label %248, !dbg !3544

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3544
  %232 = sub nsw i64 %231, 1, !dbg !3544
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3544
  br i1 %233, label %244, label %248, !dbg !3544

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3544
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3544
  %237 = load i64, i64* %10, align 8, !dbg !3544
  %238 = icmp slt i64 %236, %237, !dbg !3544
  br i1 %238, label %244, label %248, !dbg !3544

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3544
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3544
  %242 = load i64, i64* %12, align 8, !dbg !3544
  %243 = icmp slt i64 %241, %242, !dbg !3544
  br i1 %243, label %244, label %248, !dbg !3544

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3544
  %246 = load i64, i64* %10, align 8, !dbg !3544
  %247 = mul i64 %245, %246, !dbg !3544
  store i64 %247, i64* %13, align 8, !dbg !3544
  br label %252, !dbg !3544

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3544
  %250 = load i64, i64* %10, align 8, !dbg !3544
  %251 = mul i64 %249, %250, !dbg !3544
  store i64 %251, i64* %13, align 8, !dbg !3544
  br label %252, !dbg !3544

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3544
  %254 = icmp ne i32 %253, 0, !dbg !3544
  br i1 %254, label %255, label %256, !dbg !3545

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3546
  unreachable, !dbg !3546

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3547
  %258 = load i64, i64* %13, align 8, !dbg !3548
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !3549
  store i8* %259, i8** %6, align 8, !dbg !3550
  %260 = load i64, i64* %12, align 8, !dbg !3551
  %261 = load i64*, i64** %7, align 8, !dbg !3552
  store i64 %260, i64* %261, align 8, !dbg !3553
  %262 = load i8*, i8** %6, align 8, !dbg !3554
  ret i8* %262, !dbg !3555
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3556 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3557, metadata !DIExpression()), !dbg !3558
  %3 = load i64, i64* %2, align 8, !dbg !3559
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3560
  ret i8* %4, !dbg !3561
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3562 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3563, metadata !DIExpression()), !dbg !3564
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3565, metadata !DIExpression()), !dbg !3566
  %5 = load i64, i64* %3, align 8, !dbg !3567
  %6 = load i64, i64* %4, align 8, !dbg !3568
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3569
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3570
  ret i8* %8, !dbg !3571
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3572 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3573, metadata !DIExpression()), !dbg !3574
  %3 = load i64, i64* %2, align 8, !dbg !3575
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3576
  ret i8* %4, !dbg !3577
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3578 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3579, metadata !DIExpression()), !dbg !3580
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3581, metadata !DIExpression()), !dbg !3582
  %5 = load i64, i64* %3, align 8, !dbg !3583
  %6 = load i64, i64* %4, align 8, !dbg !3584
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3585
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3586
  ret i8* %8, !dbg !3587
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3588 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3593, metadata !DIExpression()), !dbg !3594
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3595, metadata !DIExpression()), !dbg !3596
  %5 = load i64, i64* %4, align 8, !dbg !3597
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !3598
  %7 = load i8*, i8** %3, align 8, !dbg !3599
  %8 = load i64, i64* %4, align 8, !dbg !3600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3601
  ret i8* %6, !dbg !3602
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3603 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3606, metadata !DIExpression()), !dbg !3607
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3608, metadata !DIExpression()), !dbg !3609
  %5 = load i64, i64* %4, align 8, !dbg !3610
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !3611
  %7 = load i8*, i8** %3, align 8, !dbg !3612
  %8 = load i64, i64* %4, align 8, !dbg !3613
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3614
  ret i8* %6, !dbg !3615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3616 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3619, metadata !DIExpression()), !dbg !3620
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3621, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3623, metadata !DIExpression()), !dbg !3624
  %6 = load i64, i64* %4, align 8, !dbg !3625
  %7 = add nsw i64 %6, 1, !dbg !3626
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !3627
  store i8* %8, i8** %5, align 8, !dbg !3624
  %9 = load i8*, i8** %5, align 8, !dbg !3628
  %10 = load i64, i64* %4, align 8, !dbg !3629
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3628
  store i8 0, i8* %11, align 1, !dbg !3630
  %12 = load i8*, i8** %5, align 8, !dbg !3631
  %13 = load i8*, i8** %3, align 8, !dbg !3632
  %14 = load i64, i64* %4, align 8, !dbg !3633
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3634
  ret i8* %12, !dbg !3635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3636 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3637, metadata !DIExpression()), !dbg !3638
  %3 = load i8*, i8** %2, align 8, !dbg !3639
  %4 = load i8*, i8** %2, align 8, !dbg !3640
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3641
  %6 = add i64 %5, 1, !dbg !3642
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !3643
  ret i8* %7, !dbg !3644
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3645 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3646, metadata !DIExpression()), !dbg !3649
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3649
  store i32 %2, i32* %1, align 4, !dbg !3649
  %3 = load i32, i32* %1, align 4, !dbg !3649
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.150, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.151, i64 0, i64 0)) #18, !dbg !3649
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.152, i64 0, i64 0), i8* noundef %4), !dbg !3649
  %5 = load i32, i32* %1, align 4, !dbg !3649
  %6 = icmp ne i32 %5, 0, !dbg !3649
  br i1 %6, label %7, label %9, !dbg !3649

7:                                                ; preds = %0
  unreachable, !dbg !3649

8:                                                ; No predecessors!
  br label %10, !dbg !3649

9:                                                ; preds = %0
  br label %10, !dbg !3649

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3650
  unreachable, !dbg !3650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xgetgroups(i8* noundef %0, i32 noundef %1, i32** noundef %2) #4 !dbg !3651 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3652, metadata !DIExpression()), !dbg !3653
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3654, metadata !DIExpression()), !dbg !3655
  store i32** %2, i32*** %6, align 8
  call void @llvm.dbg.declare(metadata i32*** %6, metadata !3656, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3658, metadata !DIExpression()), !dbg !3659
  %8 = load i8*, i8** %4, align 8, !dbg !3660
  %9 = load i32, i32* %5, align 4, !dbg !3661
  %10 = load i32**, i32*** %6, align 8, !dbg !3662
  %11 = call i32 @mgetgroups(i8* noundef %8, i32 noundef %9, i32** noundef %10), !dbg !3663
  store i32 %11, i32* %7, align 4, !dbg !3659
  %12 = load i32, i32* %7, align 4, !dbg !3664
  %13 = icmp eq i32 %12, -1, !dbg !3666
  br i1 %13, label %14, label %19, !dbg !3667

14:                                               ; preds = %3
  %15 = call i32* @__errno_location() #21, !dbg !3668
  %16 = load i32, i32* %15, align 4, !dbg !3668
  %17 = icmp eq i32 %16, 12, !dbg !3669
  br i1 %17, label %18, label %19, !dbg !3670

18:                                               ; preds = %14
  call void @xalloc_die() #22, !dbg !3671
  unreachable, !dbg !3671

19:                                               ; preds = %14, %3
  %20 = load i32, i32* %7, align 4, !dbg !3672
  ret i32 %20, !dbg !3673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3674 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3680, metadata !DIExpression()), !dbg !3681
  %3 = load i32, i32* %2, align 4, !dbg !3682
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3683
  ret i32 %4, !dbg !3684
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3685 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3722, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3724, metadata !DIExpression()), !dbg !3726
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3727
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3728
  %9 = icmp ne i64 %8, 0, !dbg !3729
  %10 = zext i1 %9 to i8, !dbg !3726
  store i8 %10, i8* %4, align 1, !dbg !3726
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3730, metadata !DIExpression()), !dbg !3731
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3732
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3732
  %13 = icmp ne i32 %12, 0, !dbg !3733
  %14 = zext i1 %13 to i8, !dbg !3731
  store i8 %14, i8* %5, align 1, !dbg !3731
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3734, metadata !DIExpression()), !dbg !3735
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3736
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3737
  %17 = icmp ne i32 %16, 0, !dbg !3738
  %18 = zext i1 %17 to i8, !dbg !3735
  store i8 %18, i8* %6, align 1, !dbg !3735
  %19 = load i8, i8* %5, align 1, !dbg !3739
  %20 = trunc i8 %19 to i1, !dbg !3739
  br i1 %20, label %31, label %21, !dbg !3741

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3742
  %23 = trunc i8 %22 to i1, !dbg !3742
  br i1 %23, label %24, label %37, !dbg !3743

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3744
  %26 = trunc i8 %25 to i1, !dbg !3744
  br i1 %26, label %31, label %27, !dbg !3745

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3746
  %29 = load i32, i32* %28, align 4, !dbg !3746
  %30 = icmp ne i32 %29, 9, !dbg !3747
  br i1 %30, label %31, label %37, !dbg !3748

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3749
  %33 = trunc i8 %32 to i1, !dbg !3749
  br i1 %33, label %36, label %34, !dbg !3752

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3753
  store i32 0, i32* %35, align 4, !dbg !3754
  br label %36, !dbg !3753

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3755
  br label %38, !dbg !3755

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3756
  br label %38, !dbg !3756

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3757
  ret i32 %39, !dbg !3757
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3758 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3795, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3797, metadata !DIExpression()), !dbg !3798
  store i32 0, i32* %4, align 4, !dbg !3798
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3799, metadata !DIExpression()), !dbg !3800
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3801
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !3802
  store i32 %8, i32* %5, align 4, !dbg !3800
  %9 = load i32, i32* %5, align 4, !dbg !3803
  %10 = icmp slt i32 %9, 0, !dbg !3805
  br i1 %10, label %11, label %14, !dbg !3806

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3807
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3808
  store i32 %13, i32* %2, align 4, !dbg !3809
  br label %40, !dbg !3809

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3810
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !3810
  %17 = icmp ne i32 %16, 0, !dbg !3810
  br i1 %17, label %18, label %23, !dbg !3812

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3813
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !3814
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !3815
  %22 = icmp ne i64 %21, -1, !dbg !3816
  br i1 %22, label %23, label %30, !dbg !3817

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3818
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !3819
  %26 = icmp ne i32 %25, 0, !dbg !3819
  br i1 %26, label %27, label %30, !dbg !3820

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !3821
  %29 = load i32, i32* %28, align 4, !dbg !3821
  store i32 %29, i32* %4, align 4, !dbg !3822
  br label %30, !dbg !3823

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3824, metadata !DIExpression()), !dbg !3825
  store i32 0, i32* %6, align 4, !dbg !3825
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3826
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !3827
  store i32 %32, i32* %6, align 4, !dbg !3828
  %33 = load i32, i32* %4, align 4, !dbg !3829
  %34 = icmp ne i32 %33, 0, !dbg !3831
  br i1 %34, label %35, label %38, !dbg !3832

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3833
  %37 = call i32* @__errno_location() #21, !dbg !3835
  store i32 %36, i32* %37, align 4, !dbg !3836
  store i32 -1, i32* %6, align 4, !dbg !3837
  br label %38, !dbg !3838

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3839
  store i32 %39, i32* %2, align 4, !dbg !3840
  br label %40, !dbg !3840

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3841
  ret i32 %41, !dbg !3841
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !3842 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3879, metadata !DIExpression()), !dbg !3880
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3881
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3883
  br i1 %5, label %10, label %6, !dbg !3884

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3885
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !3885
  %9 = icmp ne i32 %8, 0, !dbg !3885
  br i1 %9, label %13, label %10, !dbg !3886

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3887
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !3888
  store i32 %12, i32* %2, align 4, !dbg !3889
  br label %17, !dbg !3889

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3890
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !3891
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3892
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !3893
  store i32 %16, i32* %2, align 4, !dbg !3894
  br label %17, !dbg !3894

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3895
  ret i32 %18, !dbg !3895
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !3896 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3899, metadata !DIExpression()), !dbg !3900
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3901
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !3903
  %5 = load i32, i32* %4, align 8, !dbg !3903
  %6 = and i32 %5, 256, !dbg !3904
  %7 = icmp ne i32 %6, 0, !dbg !3904
  br i1 %7, label %8, label %11, !dbg !3905

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3906
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !3907
  br label %11, !dbg !3907

11:                                               ; preds = %8, %1
  ret void, !dbg !3908
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !3909 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3947, metadata !DIExpression()), !dbg !3948
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3949, metadata !DIExpression()), !dbg !3950
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3951, metadata !DIExpression()), !dbg !3952
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3953
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !3955
  %11 = load i8*, i8** %10, align 8, !dbg !3955
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3956
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !3957
  %14 = load i8*, i8** %13, align 8, !dbg !3957
  %15 = icmp eq i8* %11, %14, !dbg !3958
  br i1 %15, label %16, label %46, !dbg !3959

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3960
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !3961
  %19 = load i8*, i8** %18, align 8, !dbg !3961
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3962
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !3963
  %22 = load i8*, i8** %21, align 8, !dbg !3963
  %23 = icmp eq i8* %19, %22, !dbg !3964
  br i1 %23, label %24, label %46, !dbg !3965

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3966
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !3967
  %27 = load i8*, i8** %26, align 8, !dbg !3967
  %28 = icmp eq i8* %27, null, !dbg !3968
  br i1 %28, label %29, label %46, !dbg !3969

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3970, metadata !DIExpression()), !dbg !3972
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3973
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !3974
  %32 = load i64, i64* %6, align 8, !dbg !3975
  %33 = load i32, i32* %7, align 4, !dbg !3976
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !3977
  store i64 %34, i64* %8, align 8, !dbg !3972
  %35 = load i64, i64* %8, align 8, !dbg !3978
  %36 = icmp eq i64 %35, -1, !dbg !3980
  br i1 %36, label %37, label %38, !dbg !3981

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3982
  br label %51, !dbg !3982

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3984
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !3985
  %41 = load i32, i32* %40, align 8, !dbg !3986
  %42 = and i32 %41, -17, !dbg !3986
  store i32 %42, i32* %40, align 8, !dbg !3986
  %43 = load i64, i64* %8, align 8, !dbg !3987
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3988
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !3989
  store i64 %43, i64* %45, align 8, !dbg !3990
  store i32 0, i32* %4, align 4, !dbg !3991
  br label %51, !dbg !3991

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3992
  %48 = load i64, i64* %6, align 8, !dbg !3993
  %49 = load i32, i32* %7, align 4, !dbg !3994
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !3995
  store i32 %50, i32* %4, align 4, !dbg !3996
  br label %51, !dbg !3996

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !3997
  ret i32 %52, !dbg !3997
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !3998 {
  %1 = call i32* @__errno_location() #21, !dbg !4001
  store i32 12, i32* %1, align 4, !dbg !4002
  ret i8* null, !dbg !4003
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !4004 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4005, metadata !DIExpression()), !dbg !4006
  %3 = load i64, i64* %2, align 8, !dbg !4007
  %4 = icmp ule i64 %3, -1, !dbg !4008
  br i1 %4, label %5, label %8, !dbg !4007

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !4009
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !4010
  br label %10, !dbg !4007

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !4011
  br label %10, !dbg !4007

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !4007
  ret i8* %11, !dbg !4012
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4013 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4014, metadata !DIExpression()), !dbg !4015
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4016, metadata !DIExpression()), !dbg !4017
  %5 = load i64, i64* %4, align 8, !dbg !4018
  %6 = icmp ule i64 %5, -1, !dbg !4019
  br i1 %6, label %7, label %11, !dbg !4018

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !4020
  %9 = load i64, i64* %4, align 8, !dbg !4021
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !4022
  br label %13, !dbg !4018

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !4023
  br label %13, !dbg !4018

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !4018
  ret i8* %14, !dbg !4024
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !4025 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4026, metadata !DIExpression()), !dbg !4027
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4028, metadata !DIExpression()), !dbg !4029
  %6 = load i64, i64* %4, align 8, !dbg !4030
  %7 = icmp ult i64 -1, %6, !dbg !4032
  br i1 %7, label %8, label %14, !dbg !4033

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !4034
  %10 = icmp ne i64 %9, 0, !dbg !4037
  br i1 %10, label %11, label %13, !dbg !4038

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !4039
  store i8* %12, i8** %3, align 8, !dbg !4040
  br label %27, !dbg !4040

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !4041
  br label %14, !dbg !4042

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !4043
  %16 = icmp ult i64 -1, %15, !dbg !4045
  br i1 %16, label %17, label %23, !dbg !4046

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !4047
  %19 = icmp ne i64 %18, 0, !dbg !4050
  br i1 %19, label %20, label %22, !dbg !4051

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !4052
  store i8* %21, i8** %3, align 8, !dbg !4053
  br label %27, !dbg !4053

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !4054
  br label %23, !dbg !4055

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !4056
  %25 = load i64, i64* %5, align 8, !dbg !4057
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !4058
  store i8* %26, i8** %3, align 8, !dbg !4059
  br label %27, !dbg !4059

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !4060
  ret i8* %28, !dbg !4060
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4061 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4062, metadata !DIExpression()), !dbg !4063
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4064, metadata !DIExpression()), !dbg !4065
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4066, metadata !DIExpression()), !dbg !4067
  %7 = load i64, i64* %5, align 8, !dbg !4068
  %8 = icmp ule i64 %7, -1, !dbg !4069
  br i1 %8, label %9, label %17, !dbg !4070

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !4071
  %11 = icmp ule i64 %10, -1, !dbg !4072
  br i1 %11, label %12, label %17, !dbg !4068

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !4073
  %14 = load i64, i64* %5, align 8, !dbg !4074
  %15 = load i64, i64* %6, align 8, !dbg !4075
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !4076
  br label %19, !dbg !4068

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !4077
  br label %19, !dbg !4068

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !4068
  ret i8* %20, !dbg !4078
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !4079 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4084, metadata !DIExpression()), !dbg !4085
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4086, metadata !DIExpression()), !dbg !4087
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4088, metadata !DIExpression()), !dbg !4089
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4090, metadata !DIExpression()), !dbg !4091
  %11 = load i8*, i8** %7, align 8, !dbg !4092
  %12 = icmp eq i8* %11, null, !dbg !4094
  br i1 %12, label %13, label %14, !dbg !4095

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4096
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.175, i64 0, i64 0), i8** %7, align 8, !dbg !4098
  store i64 1, i64* %8, align 8, !dbg !4099
  br label %14, !dbg !4100

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4101
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4103
  br i1 %16, label %17, label %18, !dbg !4104

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !4105
  br label %18, !dbg !4106

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4107, metadata !DIExpression()), !dbg !4108
  %19 = load i32*, i32** %6, align 8, !dbg !4109
  %20 = load i8*, i8** %7, align 8, !dbg !4110
  %21 = load i64, i64* %8, align 8, !dbg !4111
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4112
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !4113
  store i64 %23, i64* %10, align 8, !dbg !4108
  %24 = load i64, i64* %10, align 8, !dbg !4114
  %25 = icmp ult i64 %24, -3, !dbg !4116
  br i1 %25, label %26, label %32, !dbg !4117

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4118
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !4119
  %29 = icmp ne i32 %28, 0, !dbg !4119
  br i1 %29, label %32, label %30, !dbg !4120

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4121
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4122
  br label %32, !dbg !4122

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4123
  %34 = icmp eq i64 %33, -3, !dbg !4125
  br i1 %34, label %35, label %36, !dbg !4126

35:                                               ; preds = %32
  call void @abort() #19, !dbg !4127
  unreachable, !dbg !4127

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4128
  %38 = icmp ule i64 -2, %37, !dbg !4130
  br i1 %38, label %39, label %53, !dbg !4131

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4132
  %41 = icmp ne i64 %40, 0, !dbg !4133
  br i1 %41, label %42, label %53, !dbg !4134

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4135
  br i1 %43, label %53, label %44, !dbg !4136

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4137
  %46 = icmp ne i32* %45, null, !dbg !4140
  br i1 %46, label %47, label %52, !dbg !4141

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4142
  %49 = load i8, i8* %48, align 1, !dbg !4143
  %50 = zext i8 %49 to i32, !dbg !4144
  %51 = load i32*, i32** %6, align 8, !dbg !4145
  store i32 %50, i32* %51, align 4, !dbg !4146
  br label %52, !dbg !4147

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4148
  br label %55, !dbg !4148

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4149
  store i64 %54, i64* %5, align 8, !dbg !4150
  br label %55, !dbg !4150

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4151
  ret i64 %56, !dbg !4151
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !4152 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !4167, metadata !DIExpression()), !dbg !4168
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !4169
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !4170
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !4170
  ret void, !dbg !4171
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4172 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4175, metadata !DIExpression()), !dbg !4176
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4177, metadata !DIExpression()), !dbg !4178
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4179, metadata !DIExpression()), !dbg !4180
  %7 = load i8*, i8** %4, align 8, !dbg !4181
  %8 = load i8*, i8** %5, align 8, !dbg !4182
  %9 = load i64, i64* %6, align 8, !dbg !4183
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !4184
  %11 = icmp ne i32 %10, 0, !dbg !4185
  %12 = xor i1 %11, true, !dbg !4185
  ret i1 %12, !dbg !4186
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgetgroups(i8* noundef %0, i32 noundef %1, i32** noundef %2) #4 !dbg !288 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4187, metadata !DIExpression()), !dbg !4188
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4189, metadata !DIExpression()), !dbg !4190
  store i32** %2, i32*** %7, align 8
  call void @llvm.dbg.declare(metadata i32*** %7, metadata !4191, metadata !DIExpression()), !dbg !4192
  %20 = load i8*, i8** %5, align 8, !dbg !4193
  %21 = icmp ne i8* %20, null, !dbg !4193
  br i1 %21, label %22, label %64, !dbg !4195

22:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4196, metadata !DIExpression()), !dbg !4198
  store i32 10, i32* %8, align 4, !dbg !4198
  call void @llvm.dbg.declare(metadata i32** %9, metadata !4199, metadata !DIExpression()), !dbg !4200
  %23 = load i32, i32* %8, align 4, !dbg !4201
  %24 = sext i32 %23 to i64, !dbg !4201
  %25 = call i32* @realloc_groupbuf(i32* noundef null, i64 noundef %24), !dbg !4202
  store i32* %25, i32** %9, align 8, !dbg !4200
  %26 = load i32*, i32** %9, align 8, !dbg !4203
  %27 = icmp eq i32* %26, null, !dbg !4205
  br i1 %27, label %28, label %29, !dbg !4206

28:                                               ; preds = %22
  store i32 -1, i32* %4, align 4, !dbg !4207
  br label %198, !dbg !4207

29:                                               ; preds = %22
  br label %30, !dbg !4208

30:                                               ; preds = %29, %63
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4209, metadata !DIExpression()), !dbg !4211
  %31 = load i32, i32* %8, align 4, !dbg !4212
  store i32 %31, i32* %10, align 4, !dbg !4211
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4213, metadata !DIExpression()), !dbg !4214
  %32 = load i8*, i8** %5, align 8, !dbg !4215
  %33 = load i32, i32* %6, align 4, !dbg !4216
  %34 = load i32*, i32** %9, align 8, !dbg !4217
  %35 = call i32 @getgrouplist(i8* noundef %32, i32 noundef %33, i32* noundef %34, i32* noundef %8), !dbg !4218
  store i32 %35, i32* %11, align 4, !dbg !4214
  %36 = load i32, i32* %11, align 4, !dbg !4219
  %37 = icmp slt i32 %36, 0, !dbg !4221
  br i1 %37, label %38, label %45, !dbg !4222

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4, !dbg !4223
  %40 = load i32, i32* %8, align 4, !dbg !4224
  %41 = icmp eq i32 %39, %40, !dbg !4225
  br i1 %41, label %42, label %45, !dbg !4226

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4, !dbg !4227
  %44 = mul nsw i32 %43, 2, !dbg !4227
  store i32 %44, i32* %8, align 4, !dbg !4227
  br label %45, !dbg !4228

45:                                               ; preds = %42, %38, %30
  call void @llvm.dbg.declare(metadata i32** %12, metadata !4229, metadata !DIExpression()), !dbg !4230
  %46 = load i32*, i32** %9, align 8, !dbg !4231
  %47 = load i32, i32* %8, align 4, !dbg !4232
  %48 = sext i32 %47 to i64, !dbg !4232
  %49 = call i32* @realloc_groupbuf(i32* noundef %46, i64 noundef %48), !dbg !4233
  store i32* %49, i32** %12, align 8, !dbg !4230
  %50 = load i32*, i32** %12, align 8, !dbg !4234
  %51 = icmp eq i32* %50, null, !dbg !4236
  br i1 %51, label %52, label %55, !dbg !4237

52:                                               ; preds = %45
  %53 = load i32*, i32** %9, align 8, !dbg !4238
  %54 = bitcast i32* %53 to i8*, !dbg !4238
  call void @free(i8* noundef %54) #18, !dbg !4240
  store i32 -1, i32* %4, align 4, !dbg !4241
  br label %198, !dbg !4241

55:                                               ; preds = %45
  %56 = load i32*, i32** %12, align 8, !dbg !4242
  store i32* %56, i32** %9, align 8, !dbg !4243
  %57 = load i32, i32* %11, align 4, !dbg !4244
  %58 = icmp sle i32 0, %57, !dbg !4246
  br i1 %58, label %59, label %63, !dbg !4247

59:                                               ; preds = %55
  %60 = load i32*, i32** %9, align 8, !dbg !4248
  %61 = load i32**, i32*** %7, align 8, !dbg !4250
  store i32* %60, i32** %61, align 8, !dbg !4251
  %62 = load i32, i32* %8, align 4, !dbg !4252
  store i32 %62, i32* %4, align 4, !dbg !4253
  br label %198, !dbg !4253

63:                                               ; preds = %55
  br label %30, !dbg !4208, !llvm.loop !4254

64:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4256, metadata !DIExpression()), !dbg !4257
  %65 = load i8*, i8** %5, align 8, !dbg !4258
  %66 = icmp ne i8* %65, null, !dbg !4258
  br i1 %66, label %67, label %71, !dbg !4258

67:                                               ; preds = %64
  %68 = load i8*, i8** %5, align 8, !dbg !4259
  %69 = load i32, i32* %6, align 4, !dbg !4260
  %70 = call i32 @getugroups(i32 noundef 0, i32* noundef null, i8* noundef %68, i32 noundef %69), !dbg !4261
  br label %73, !dbg !4258

71:                                               ; preds = %64
  %72 = call i32 @getgroups(i32 noundef 0, i32* noundef null) #18, !dbg !4262
  br label %73, !dbg !4258

73:                                               ; preds = %71, %67
  %74 = phi i32 [ %70, %67 ], [ %72, %71 ], !dbg !4258
  store i32 %74, i32* %13, align 4, !dbg !4257
  %75 = load i32, i32* %13, align 4, !dbg !4263
  %76 = icmp slt i32 %75, 0, !dbg !4265
  br i1 %76, label %77, label %95, !dbg !4266

77:                                               ; preds = %73
  %78 = call i32* @__errno_location() #21, !dbg !4267
  %79 = load i32, i32* %78, align 4, !dbg !4267
  %80 = icmp eq i32 %79, 38, !dbg !4270
  br i1 %80, label %81, label %94, !dbg !4271

81:                                               ; preds = %77
  call void @llvm.dbg.declare(metadata i32** %14, metadata !4272, metadata !DIExpression()), !dbg !4274
  %82 = call i32* @realloc_groupbuf(i32* noundef null, i64 noundef 1), !dbg !4275
  store i32* %82, i32** %14, align 8, !dbg !4274
  %83 = load i32*, i32** %14, align 8, !dbg !4276
  %84 = icmp ne i32* %83, null, !dbg !4276
  br i1 %84, label %85, label %93, !dbg !4278

85:                                               ; preds = %81
  %86 = load i32*, i32** %14, align 8, !dbg !4279
  %87 = load i32**, i32*** %7, align 8, !dbg !4281
  store i32* %86, i32** %87, align 8, !dbg !4282
  %88 = load i32, i32* %6, align 4, !dbg !4283
  %89 = load i32*, i32** %14, align 8, !dbg !4284
  store i32 %88, i32* %89, align 4, !dbg !4285
  %90 = load i32, i32* %6, align 4, !dbg !4286
  %91 = icmp ne i32 %90, -1, !dbg !4287
  %92 = zext i1 %91 to i32, !dbg !4287
  store i32 %92, i32* %4, align 4, !dbg !4288
  br label %198, !dbg !4288

93:                                               ; preds = %81
  br label %94, !dbg !4289

94:                                               ; preds = %93, %77
  store i32 -1, i32* %4, align 4, !dbg !4290
  br label %198, !dbg !4290

95:                                               ; preds = %73
  %96 = load i32, i32* %13, align 4, !dbg !4291
  %97 = icmp eq i32 %96, 0, !dbg !4293
  br i1 %97, label %104, label %98, !dbg !4294

98:                                               ; preds = %95
  %99 = load i8*, i8** %5, align 8, !dbg !4295
  %100 = icmp ne i8* %99, null, !dbg !4295
  br i1 %100, label %107, label %101, !dbg !4296

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4, !dbg !4297
  %103 = icmp ne i32 %102, -1, !dbg !4298
  br i1 %103, label %104, label %107, !dbg !4299

104:                                              ; preds = %101, %95
  %105 = load i32, i32* %13, align 4, !dbg !4300
  %106 = add nsw i32 %105, 1, !dbg !4300
  store i32 %106, i32* %13, align 4, !dbg !4300
  br label %107, !dbg !4301

107:                                              ; preds = %104, %101, %98
  call void @llvm.dbg.declare(metadata i32** %15, metadata !4302, metadata !DIExpression()), !dbg !4303
  %108 = load i32, i32* %13, align 4, !dbg !4304
  %109 = sext i32 %108 to i64, !dbg !4304
  %110 = call i32* @realloc_groupbuf(i32* noundef null, i64 noundef %109), !dbg !4305
  store i32* %110, i32** %15, align 8, !dbg !4303
  %111 = load i32*, i32** %15, align 8, !dbg !4306
  %112 = icmp eq i32* %111, null, !dbg !4308
  br i1 %112, label %113, label %114, !dbg !4309

113:                                              ; preds = %107
  store i32 -1, i32* %4, align 4, !dbg !4310
  br label %198, !dbg !4310

114:                                              ; preds = %107
  call void @llvm.dbg.declare(metadata i32* %16, metadata !4311, metadata !DIExpression()), !dbg !4312
  %115 = load i8*, i8** %5, align 8, !dbg !4313
  %116 = icmp ne i8* %115, null, !dbg !4313
  br i1 %116, label %117, label %123, !dbg !4313

117:                                              ; preds = %114
  %118 = load i32, i32* %13, align 4, !dbg !4314
  %119 = load i32*, i32** %15, align 8, !dbg !4315
  %120 = load i8*, i8** %5, align 8, !dbg !4316
  %121 = load i32, i32* %6, align 4, !dbg !4317
  %122 = call i32 @getugroups(i32 noundef %118, i32* noundef %119, i8* noundef %120, i32 noundef %121), !dbg !4318
  br label %136, !dbg !4313

123:                                              ; preds = %114
  %124 = load i32, i32* %13, align 4, !dbg !4319
  %125 = load i32, i32* %6, align 4, !dbg !4320
  %126 = icmp ne i32 %125, -1, !dbg !4321
  %127 = zext i1 %126 to i32, !dbg !4321
  %128 = sub nsw i32 %124, %127, !dbg !4322
  %129 = load i32*, i32** %15, align 8, !dbg !4323
  %130 = load i32, i32* %6, align 4, !dbg !4324
  %131 = icmp ne i32 %130, -1, !dbg !4325
  %132 = zext i1 %131 to i32, !dbg !4325
  %133 = sext i32 %132 to i64, !dbg !4326
  %134 = getelementptr inbounds i32, i32* %129, i64 %133, !dbg !4326
  %135 = call i32 @getgroups(i32 noundef %128, i32* noundef %134) #18, !dbg !4327
  br label %136, !dbg !4313

136:                                              ; preds = %123, %117
  %137 = phi i32 [ %122, %117 ], [ %135, %123 ], !dbg !4313
  store i32 %137, i32* %16, align 4, !dbg !4312
  %138 = load i32, i32* %16, align 4, !dbg !4328
  %139 = icmp slt i32 %138, 0, !dbg !4330
  br i1 %139, label %140, label %143, !dbg !4331

140:                                              ; preds = %136
  %141 = load i32*, i32** %15, align 8, !dbg !4332
  %142 = bitcast i32* %141 to i8*, !dbg !4332
  call void @free(i8* noundef %142) #18, !dbg !4334
  store i32 -1, i32* %4, align 4, !dbg !4335
  br label %198, !dbg !4335

143:                                              ; preds = %136
  %144 = load i8*, i8** %5, align 8, !dbg !4336
  %145 = icmp ne i8* %144, null, !dbg !4336
  br i1 %145, label %154, label %146, !dbg !4338

146:                                              ; preds = %143
  %147 = load i32, i32* %6, align 4, !dbg !4339
  %148 = icmp ne i32 %147, -1, !dbg !4340
  br i1 %148, label %149, label %154, !dbg !4341

149:                                              ; preds = %146
  %150 = load i32, i32* %6, align 4, !dbg !4342
  %151 = load i32*, i32** %15, align 8, !dbg !4344
  store i32 %150, i32* %151, align 4, !dbg !4345
  %152 = load i32, i32* %16, align 4, !dbg !4346
  %153 = add nsw i32 %152, 1, !dbg !4346
  store i32 %153, i32* %16, align 4, !dbg !4346
  br label %154, !dbg !4347

154:                                              ; preds = %149, %146, %143
  %155 = load i32*, i32** %15, align 8, !dbg !4348
  %156 = load i32**, i32*** %7, align 8, !dbg !4349
  store i32* %155, i32** %156, align 8, !dbg !4350
  %157 = load i32, i32* %16, align 4, !dbg !4351
  %158 = icmp slt i32 1, %157, !dbg !4353
  br i1 %158, label %159, label %196, !dbg !4354

159:                                              ; preds = %154
  call void @llvm.dbg.declare(metadata i32* %17, metadata !4355, metadata !DIExpression()), !dbg !4357
  %160 = load i32*, i32** %15, align 8, !dbg !4358
  %161 = load i32, i32* %160, align 4, !dbg !4359
  store i32 %161, i32* %17, align 4, !dbg !4357
  call void @llvm.dbg.declare(metadata i32** %18, metadata !4360, metadata !DIExpression()), !dbg !4361
  %162 = load i32*, i32** %15, align 8, !dbg !4362
  %163 = load i32, i32* %16, align 4, !dbg !4363
  %164 = sext i32 %163 to i64, !dbg !4364
  %165 = getelementptr inbounds i32, i32* %162, i64 %164, !dbg !4364
  store i32* %165, i32** %18, align 8, !dbg !4361
  call void @llvm.dbg.declare(metadata i32** %19, metadata !4365, metadata !DIExpression()), !dbg !4367
  %166 = load i32*, i32** %15, align 8, !dbg !4368
  %167 = getelementptr inbounds i32, i32* %166, i64 1, !dbg !4369
  store i32* %167, i32** %19, align 8, !dbg !4367
  br label %168, !dbg !4370

168:                                              ; preds = %192, %159
  %169 = load i32*, i32** %19, align 8, !dbg !4371
  %170 = load i32*, i32** %18, align 8, !dbg !4373
  %171 = icmp ult i32* %169, %170, !dbg !4374
  br i1 %171, label %172, label %195, !dbg !4375

172:                                              ; preds = %168
  %173 = load i32*, i32** %19, align 8, !dbg !4376
  %174 = load i32, i32* %173, align 4, !dbg !4379
  %175 = load i32, i32* %17, align 4, !dbg !4380
  %176 = icmp eq i32 %174, %175, !dbg !4381
  br i1 %176, label %183, label %177, !dbg !4382

177:                                              ; preds = %172
  %178 = load i32*, i32** %19, align 8, !dbg !4383
  %179 = load i32, i32* %178, align 4, !dbg !4384
  %180 = load i32*, i32** %15, align 8, !dbg !4385
  %181 = load i32, i32* %180, align 4, !dbg !4386
  %182 = icmp eq i32 %179, %181, !dbg !4387
  br i1 %182, label %183, label %186, !dbg !4388

183:                                              ; preds = %177, %172
  %184 = load i32, i32* %16, align 4, !dbg !4389
  %185 = add nsw i32 %184, -1, !dbg !4389
  store i32 %185, i32* %16, align 4, !dbg !4389
  br label %191, !dbg !4390

186:                                              ; preds = %177
  %187 = load i32*, i32** %19, align 8, !dbg !4391
  %188 = load i32, i32* %187, align 4, !dbg !4392
  %189 = load i32*, i32** %15, align 8, !dbg !4393
  %190 = getelementptr inbounds i32, i32* %189, i32 1, !dbg !4393
  store i32* %190, i32** %15, align 8, !dbg !4393
  store i32 %188, i32* %190, align 4, !dbg !4394
  br label %191

191:                                              ; preds = %186, %183
  br label %192, !dbg !4395

192:                                              ; preds = %191
  %193 = load i32*, i32** %19, align 8, !dbg !4396
  %194 = getelementptr inbounds i32, i32* %193, i32 1, !dbg !4396
  store i32* %194, i32** %19, align 8, !dbg !4396
  br label %168, !dbg !4397, !llvm.loop !4398

195:                                              ; preds = %168
  br label %196, !dbg !4400

196:                                              ; preds = %195, %154
  %197 = load i32, i32* %16, align 4, !dbg !4401
  store i32 %197, i32* %4, align 4, !dbg !4402
  br label %198, !dbg !4402

198:                                              ; preds = %196, %140, %113, %94, %85, %59, %52, %28
  %199 = load i32, i32* %4, align 4, !dbg !4403
  ret i32 %199, !dbg !4403
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @realloc_groupbuf(i32* noundef %0, i64 noundef %1) #4 !dbg !4404 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !4407, metadata !DIExpression()), !dbg !4408
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4409, metadata !DIExpression()), !dbg !4410
  %6 = load i64, i64* %5, align 8, !dbg !4411
  %7 = icmp ult i64 2305843009213693951, %6, !dbg !4411
  br i1 %7, label %8, label %10, !dbg !4413

8:                                                ; preds = %2
  %9 = call i32* @__errno_location() #21, !dbg !4414
  store i32 12, i32* %9, align 4, !dbg !4416
  store i32* null, i32** %3, align 8, !dbg !4417
  br label %17, !dbg !4417

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8, !dbg !4418
  %12 = bitcast i32* %11 to i8*, !dbg !4418
  %13 = load i64, i64* %5, align 8, !dbg !4419
  %14 = mul i64 %13, 4, !dbg !4420
  %15 = call i8* @rpl_realloc(i8* noundef %12, i64 noundef %14), !dbg !4421
  %16 = bitcast i8* %15 to i32*, !dbg !4421
  store i32* %16, i32** %3, align 8, !dbg !4422
  br label %17, !dbg !4422

17:                                               ; preds = %10, %8
  %18 = load i32*, i32** %3, align 8, !dbg !4423
  ret i32* %18, !dbg !4423
}

declare i32 @getgrouplist(i8* noundef, i32 noundef, i32* noundef, i32* noundef) #3

; Function Attrs: nounwind
declare i32 @getgroups(i32 noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4424 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4426, metadata !DIExpression()), !dbg !4427
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4428, metadata !DIExpression()), !dbg !4429
  %5 = load i8*, i8** %3, align 8, !dbg !4430
  %6 = load i64, i64* %4, align 8, !dbg !4431
  %7 = icmp ne i64 %6, 0, !dbg !4431
  br i1 %7, label %8, label %10, !dbg !4431

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4432
  br label %11, !dbg !4431

10:                                               ; preds = %2
  br label %11, !dbg !4431

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4431
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !4433
  ret i8* %13, !dbg !4434
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4435 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4436, metadata !DIExpression()), !dbg !4437
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4438, metadata !DIExpression()), !dbg !4439
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4440, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4442, metadata !DIExpression()), !dbg !4443
  %9 = load i64, i64* %7, align 8, !dbg !4444
  %10 = icmp ult i64 %9, 0, !dbg !4444
  br i1 %10, label %11, label %60, !dbg !4444

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4444
  %13 = icmp ult i64 %12, 0, !dbg !4444
  br i1 %13, label %14, label %37, !dbg !4444

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4444

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4444
  %17 = load i64, i64* %7, align 8, !dbg !4444
  %18 = udiv i64 -1, %17, !dbg !4444
  %19 = icmp ult i64 %16, %18, !dbg !4444
  br i1 %19, label %92, label %96, !dbg !4444

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4444

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4444
  %23 = icmp ult i64 %22, 1, !dbg !4444
  br i1 %23, label %27, label %28, !dbg !4444

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4444
  %26 = icmp ult i64 0, %25, !dbg !4444
  br i1 %26, label %27, label %28, !dbg !4444

27:                                               ; preds = %24, %21
  br label %32, !dbg !4444

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4444
  %30 = sub i64 0, %29, !dbg !4444
  %31 = udiv i64 -1, %30, !dbg !4444
  br label %32, !dbg !4444

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4444
  %34 = load i64, i64* %6, align 8, !dbg !4444
  %35 = sub i64 -1, %34, !dbg !4444
  %36 = icmp ule i64 %33, %35, !dbg !4444
  br i1 %36, label %92, label %96, !dbg !4444

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4444

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4444

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4444

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4444
  %42 = icmp eq i64 %41, -1, !dbg !4444
  br i1 %42, label %43, label %55, !dbg !4444

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4444

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4444
  %46 = add i64 %45, 0, !dbg !4444
  %47 = icmp ult i64 0, %46, !dbg !4444
  br i1 %47, label %92, label %96, !dbg !4444

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4444
  %50 = icmp ult i64 0, %49, !dbg !4444
  br i1 %50, label %51, label %96, !dbg !4444

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4444
  %53 = sub i64 %52, 1, !dbg !4444
  %54 = icmp ult i64 -1, %53, !dbg !4444
  br i1 %54, label %92, label %96, !dbg !4444

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4444
  %57 = udiv i64 0, %56, !dbg !4444
  %58 = load i64, i64* %6, align 8, !dbg !4444
  %59 = icmp ult i64 %57, %58, !dbg !4444
  br i1 %59, label %92, label %96, !dbg !4444

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4444
  %62 = icmp eq i64 %61, 0, !dbg !4444
  br i1 %62, label %63, label %64, !dbg !4444

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4444

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4444
  %66 = icmp ult i64 %65, 0, !dbg !4444
  br i1 %66, label %67, label %87, !dbg !4444

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4444

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4444

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4444

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4444
  %72 = icmp eq i64 %71, -1, !dbg !4444
  br i1 %72, label %73, label %82, !dbg !4444

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4444

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4444
  %76 = add i64 %75, 0, !dbg !4444
  %77 = icmp ult i64 0, %76, !dbg !4444
  br i1 %77, label %92, label %96, !dbg !4444

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4444
  %80 = sub i64 %79, 1, !dbg !4444
  %81 = icmp ult i64 -1, %80, !dbg !4444
  br i1 %81, label %92, label %96, !dbg !4444

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4444
  %84 = udiv i64 0, %83, !dbg !4444
  %85 = load i64, i64* %7, align 8, !dbg !4444
  %86 = icmp ult i64 %84, %85, !dbg !4444
  br i1 %86, label %92, label %96, !dbg !4444

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4444
  %89 = udiv i64 -1, %88, !dbg !4444
  %90 = load i64, i64* %6, align 8, !dbg !4444
  %91 = icmp ult i64 %89, %90, !dbg !4444
  br i1 %91, label %92, label %96, !dbg !4444

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4444
  %94 = load i64, i64* %7, align 8, !dbg !4444
  %95 = mul i64 %93, %94, !dbg !4444
  store i64 %95, i64* %8, align 8, !dbg !4444
  br label %100, !dbg !4444

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4444
  %98 = load i64, i64* %7, align 8, !dbg !4444
  %99 = mul i64 %97, %98, !dbg !4444
  store i64 %99, i64* %8, align 8, !dbg !4444
  br label %100, !dbg !4444

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4444
  %102 = icmp ne i32 %101, 0, !dbg !4444
  br i1 %102, label %103, label %105, !dbg !4446

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !4447
  store i32 12, i32* %104, align 4, !dbg !4449
  store i8* null, i8** %4, align 8, !dbg !4450
  br label %109, !dbg !4450

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4451
  %107 = load i64, i64* %8, align 8, !dbg !4452
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4453
  store i8* %108, i8** %4, align 8, !dbg !4454
  br label %109, !dbg !4454

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4455
  ret i8* %110, !dbg !4455
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getugroups(i32 noundef %0, i32* noundef %1, i8* noundef %2, i32 noundef %3) #4 !dbg !4456 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.group*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4459, metadata !DIExpression()), !dbg !4460
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4461, metadata !DIExpression()), !dbg !4462
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4463, metadata !DIExpression()), !dbg !4464
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4465, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4467, metadata !DIExpression()), !dbg !4468
  store i32 0, i32* %9, align 4, !dbg !4468
  %14 = load i32, i32* %8, align 4, !dbg !4469
  %15 = icmp ne i32 %14, -1, !dbg !4471
  br i1 %15, label %16, label %28, !dbg !4472

16:                                               ; preds = %4
  %17 = load i32, i32* %5, align 4, !dbg !4473
  %18 = icmp ne i32 %17, 0, !dbg !4476
  br i1 %18, label %19, label %25, !dbg !4477

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4, !dbg !4478
  %21 = load i32*, i32** %6, align 8, !dbg !4479
  %22 = load i32, i32* %9, align 4, !dbg !4480
  %23 = sext i32 %22 to i64, !dbg !4479
  %24 = getelementptr inbounds i32, i32* %21, i64 %23, !dbg !4479
  store i32 %20, i32* %24, align 4, !dbg !4481
  br label %25, !dbg !4479

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %9, align 4, !dbg !4482
  %27 = add nsw i32 %26, 1, !dbg !4482
  store i32 %27, i32* %9, align 4, !dbg !4482
  br label %28, !dbg !4483

28:                                               ; preds = %25, %4
  call void @setgrent(), !dbg !4484
  br label %29, !dbg !4485

29:                                               ; preds = %28, %104
  %30 = call i32* @__errno_location() #21, !dbg !4486
  store i32 0, i32* %30, align 4, !dbg !4488
  call void @llvm.dbg.declare(metadata %struct.group** %10, metadata !4489, metadata !DIExpression()), !dbg !4497
  %31 = call %struct.group* @getgrent(), !dbg !4498
  store %struct.group* %31, %struct.group** %10, align 8, !dbg !4497
  %32 = load %struct.group*, %struct.group** %10, align 8, !dbg !4499
  %33 = icmp eq %struct.group* %32, null, !dbg !4501
  br i1 %33, label %34, label %35, !dbg !4502

34:                                               ; preds = %29
  br label %105, !dbg !4503

35:                                               ; preds = %29
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !4504, metadata !DIExpression()), !dbg !4506
  %36 = load %struct.group*, %struct.group** %10, align 8, !dbg !4507
  %37 = getelementptr inbounds %struct.group, %struct.group* %36, i32 0, i32 3, !dbg !4508
  %38 = load i8**, i8*** %37, align 8, !dbg !4508
  store i8** %38, i8*** %11, align 8, !dbg !4506
  br label %39, !dbg !4509

39:                                               ; preds = %101, %35
  %40 = load i8**, i8*** %11, align 8, !dbg !4510
  %41 = load i8*, i8** %40, align 8, !dbg !4512
  %42 = icmp ne i8* %41, null, !dbg !4513
  br i1 %42, label %43, label %104, !dbg !4513

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8, !dbg !4514
  %45 = load i8**, i8*** %11, align 8, !dbg !4517
  %46 = load i8*, i8** %45, align 8, !dbg !4518
  %47 = call i1 @streq(i8* noundef %44, i8* noundef %46), !dbg !4519
  br i1 %47, label %48, label %100, !dbg !4520

48:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4521, metadata !DIExpression()), !dbg !4523
  store i32 0, i32* %12, align 4, !dbg !4524
  br label %49, !dbg !4526

49:                                               ; preds = %68, %48
  %50 = load i32, i32* %12, align 4, !dbg !4527
  %51 = load i32, i32* %9, align 4, !dbg !4529
  %52 = icmp slt i32 %50, %51, !dbg !4530
  br i1 %52, label %53, label %71, !dbg !4531

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8, !dbg !4532
  %55 = icmp ne i32* %54, null, !dbg !4532
  br i1 %55, label %56, label %67, !dbg !4534

56:                                               ; preds = %53
  %57 = load i32*, i32** %6, align 8, !dbg !4535
  %58 = load i32, i32* %12, align 4, !dbg !4536
  %59 = sext i32 %58 to i64, !dbg !4535
  %60 = getelementptr inbounds i32, i32* %57, i64 %59, !dbg !4535
  %61 = load i32, i32* %60, align 4, !dbg !4535
  %62 = load %struct.group*, %struct.group** %10, align 8, !dbg !4537
  %63 = getelementptr inbounds %struct.group, %struct.group* %62, i32 0, i32 2, !dbg !4538
  %64 = load i32, i32* %63, align 8, !dbg !4538
  %65 = icmp eq i32 %61, %64, !dbg !4539
  br i1 %65, label %66, label %67, !dbg !4540

66:                                               ; preds = %56
  br label %71, !dbg !4541

67:                                               ; preds = %56, %53
  br label %68, !dbg !4538

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4, !dbg !4542
  %70 = add nsw i32 %69, 1, !dbg !4542
  store i32 %70, i32* %12, align 4, !dbg !4542
  br label %49, !dbg !4543, !llvm.loop !4544

71:                                               ; preds = %66, %49
  %72 = load i32, i32* %12, align 4, !dbg !4546
  %73 = load i32, i32* %9, align 4, !dbg !4548
  %74 = icmp eq i32 %72, %73, !dbg !4549
  br i1 %74, label %75, label %99, !dbg !4550

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4, !dbg !4551
  %77 = icmp ne i32 %76, 0, !dbg !4554
  br i1 %77, label %78, label %91, !dbg !4555

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4, !dbg !4556
  %80 = load i32, i32* %5, align 4, !dbg !4559
  %81 = icmp sge i32 %79, %80, !dbg !4560
  br i1 %81, label %82, label %83, !dbg !4561

82:                                               ; preds = %78
  br label %111, !dbg !4562

83:                                               ; preds = %78
  %84 = load %struct.group*, %struct.group** %10, align 8, !dbg !4563
  %85 = getelementptr inbounds %struct.group, %struct.group* %84, i32 0, i32 2, !dbg !4564
  %86 = load i32, i32* %85, align 8, !dbg !4564
  %87 = load i32*, i32** %6, align 8, !dbg !4565
  %88 = load i32, i32* %9, align 4, !dbg !4566
  %89 = sext i32 %88 to i64, !dbg !4565
  %90 = getelementptr inbounds i32, i32* %87, i64 %89, !dbg !4565
  store i32 %86, i32* %90, align 4, !dbg !4567
  br label %91, !dbg !4568

91:                                               ; preds = %83, %75
  %92 = load i32, i32* %9, align 4, !dbg !4569
  %93 = icmp eq i32 %92, 2147483647, !dbg !4571
  br i1 %93, label %94, label %96, !dbg !4572

94:                                               ; preds = %91
  %95 = call i32* @__errno_location() #21, !dbg !4573
  store i32 75, i32* %95, align 4, !dbg !4575
  br label %111, !dbg !4576

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4, !dbg !4577
  %98 = add nsw i32 %97, 1, !dbg !4577
  store i32 %98, i32* %9, align 4, !dbg !4577
  br label %99, !dbg !4578

99:                                               ; preds = %96, %71
  br label %100, !dbg !4579

100:                                              ; preds = %99, %43
  br label %101, !dbg !4580

101:                                              ; preds = %100
  %102 = load i8**, i8*** %11, align 8, !dbg !4581
  %103 = getelementptr inbounds i8*, i8** %102, i32 1, !dbg !4581
  store i8** %103, i8*** %11, align 8, !dbg !4581
  br label %39, !dbg !4582, !llvm.loop !4583

104:                                              ; preds = %39
  br label %29, !dbg !4485, !llvm.loop !4585

105:                                              ; preds = %34
  %106 = call i32* @__errno_location() #21, !dbg !4587
  %107 = load i32, i32* %106, align 4, !dbg !4587
  %108 = icmp ne i32 %107, 0, !dbg !4589
  br i1 %108, label %109, label %110, !dbg !4590

109:                                              ; preds = %105
  store i32 -1, i32* %9, align 4, !dbg !4591
  br label %110, !dbg !4592

110:                                              ; preds = %109, %105
  br label %111, !dbg !4593

111:                                              ; preds = %110, %94, %82
  call void @llvm.dbg.label(metadata !4594), !dbg !4595
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4596, metadata !DIExpression()), !dbg !4598
  %112 = call i32* @__errno_location() #21, !dbg !4599
  %113 = load i32, i32* %112, align 4, !dbg !4599
  store i32 %113, i32* %13, align 4, !dbg !4598
  call void @endgrent(), !dbg !4600
  %114 = load i32, i32* %13, align 4, !dbg !4601
  %115 = call i32* @__errno_location() #21, !dbg !4602
  store i32 %114, i32* %115, align 4, !dbg !4603
  %116 = load i32, i32* %9, align 4, !dbg !4604
  ret i32 %116, !dbg !4605
}

declare void @setgrent() #3

declare %struct.group* @getgrent() #3

declare void @endgrent() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4606 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4609, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4611, metadata !DIExpression()), !dbg !4615
  %5 = load i32, i32* %3, align 4, !dbg !4616
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4618
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4619
  %8 = icmp ne i32 %7, 0, !dbg !4619
  br i1 %8, label %9, label %10, !dbg !4620

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4621
  br label %18, !dbg !4621

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4622
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.190, i64 0, i64 0)), !dbg !4624
  br i1 %12, label %17, label %13, !dbg !4625

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4626
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.191, i64 0, i64 0)), !dbg !4627
  br i1 %15, label %17, label %16, !dbg !4628

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4629
  br label %18, !dbg !4629

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4630
  br label %18, !dbg !4630

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4631
  ret i1 %19, !dbg !4631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4632 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4635, metadata !DIExpression()), !dbg !4636
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4637, metadata !DIExpression()), !dbg !4638
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4639, metadata !DIExpression()), !dbg !4640
  %7 = load i32, i32* %4, align 4, !dbg !4641
  %8 = load i8*, i8** %5, align 8, !dbg !4642
  %9 = load i64, i64* %6, align 8, !dbg !4643
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4644
  ret i32 %10, !dbg !4645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4646 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4649, metadata !DIExpression()), !dbg !4650
  %3 = load i32, i32* %2, align 4, !dbg !4651
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4652
  ret i8* %4, !dbg !4653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4654 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4655, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4657, metadata !DIExpression()), !dbg !4658
  %4 = load i32, i32* %2, align 4, !dbg !4659
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4660
  store i8* %5, i8** %3, align 8, !dbg !4658
  %6 = load i8*, i8** %3, align 8, !dbg !4661
  ret i8* %6, !dbg !4662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4663 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4664, metadata !DIExpression()), !dbg !4665
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4666, metadata !DIExpression()), !dbg !4667
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4668, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4670, metadata !DIExpression()), !dbg !4671
  %10 = load i32, i32* %5, align 4, !dbg !4672
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4673
  store i8* %11, i8** %8, align 8, !dbg !4671
  %12 = load i8*, i8** %8, align 8, !dbg !4674
  %13 = icmp eq i8* %12, null, !dbg !4676
  br i1 %13, label %14, label %21, !dbg !4677

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4678
  %16 = icmp ugt i64 %15, 0, !dbg !4681
  br i1 %16, label %17, label %20, !dbg !4682

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4683
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4683
  store i8 0, i8* %19, align 1, !dbg !4684
  br label %20, !dbg !4683

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4685
  br label %45, !dbg !4685

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4686, metadata !DIExpression()), !dbg !4688
  %22 = load i8*, i8** %8, align 8, !dbg !4689
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4690
  store i64 %23, i64* %9, align 8, !dbg !4688
  %24 = load i64, i64* %9, align 8, !dbg !4691
  %25 = load i64, i64* %7, align 8, !dbg !4693
  %26 = icmp ult i64 %24, %25, !dbg !4694
  br i1 %26, label %27, label %32, !dbg !4695

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4696
  %29 = load i8*, i8** %8, align 8, !dbg !4698
  %30 = load i64, i64* %9, align 8, !dbg !4699
  %31 = add i64 %30, 1, !dbg !4700
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4701
  store i32 0, i32* %4, align 4, !dbg !4702
  br label %45, !dbg !4702

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4703
  %34 = icmp ugt i64 %33, 0, !dbg !4706
  br i1 %34, label %35, label %44, !dbg !4707

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4708
  %37 = load i8*, i8** %8, align 8, !dbg !4710
  %38 = load i64, i64* %7, align 8, !dbg !4711
  %39 = sub i64 %38, 1, !dbg !4712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4713
  %40 = load i8*, i8** %6, align 8, !dbg !4714
  %41 = load i64, i64* %7, align 8, !dbg !4715
  %42 = sub i64 %41, 1, !dbg !4716
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4714
  store i8 0, i8* %43, align 1, !dbg !4717
  br label %44, !dbg !4718

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4719
  br label %45, !dbg !4719

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4720
  ret i32 %46, !dbg !4720
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

!llvm.dbg.cu = !{!2, !225, !51, !56, !64, !200, !232, !234, !98, !108, !115, !236, !238, !192, !244, !264, !266, !268, !270, !272, !274, !276, !278, !206, !280, !282, !284, !299, !301, !304, !307, !309, !311}
!llvm.ident = !{!313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313, !313}
!llvm.module.flags = !{!314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 39, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/groups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d48dc102a9c02fb59e67fc9e395fa6a9")
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
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 768, elements: !47)
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
!48 = !DISubrange(count: 3)
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
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !227, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "src/group-list.c", directory: "/src", checksumkind: CSK_MD5, checksum: "86bc740edd29a2e1277335d35d8d331e")
!227 = !{!24, !228}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !229, line: 102, baseType: !230)
!229 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !231, line: 73, baseType: !140)
!231 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!233 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!235 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!237 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !240, retainedTypes: !66, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!240 = !{!241}
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !239, line: 40, baseType: !7, size: 32, elements: !242)
!242 = !{!243}
!243 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !263, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!246 = !{!247, !254}
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !248, file: !245, line: 188, baseType: !7, size: 32, elements: !252)
!248 = distinct !DISubprogram(name: "x2nrealloc", scope: !245, file: !245, line: 176, type: !249, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!249 = !DISubroutineType(types: !250)
!250 = !{!24, !24, !251, !138}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!252 = !{!253}
!253 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !255, file: !245, line: 228, baseType: !7, size: 32, elements: !252)
!255 = distinct !DISubprogram(name: "xpalloc", scope: !245, file: !245, line: 223, type: !256, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!256 = !DISubroutineType(types: !257)
!257 = !{!24, !24, !258, !259, !261, !259}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !260, line: 130, baseType: !261)
!260 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !139, line: 35, baseType: !262)
!262 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!263 = !{!22, !24, !61, !262, !140}
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/xgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b5210c3f5d54a118d66836a8f2f46b25")
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !66, splitDebugInlining: false, nameTableKind: None)
!275 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !66, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !66, splitDebugInlining: false, nameTableKind: None)
!279 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!281 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!282 = distinct !DICompileUnit(language: DW_LANG_C99, file: !283, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!283 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!284 = distinct !DICompileUnit(language: DW_LANG_C99, file: !285, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !286, retainedTypes: !298, splitDebugInlining: false, nameTableKind: None)
!285 = !DIFile(filename: "lib/mgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c6d0df677a26dbd2695c193e3d6de3d1")
!286 = !{!287}
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !288, file: !285, line: 79, baseType: !7, size: 32, elements: !296)
!288 = distinct !DISubprogram(name: "mgetgroups", scope: !285, file: !285, line: 66, type: !289, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !284, retainedNodes: !36)
!289 = !DISubroutineType(types: !290)
!290 = !{!25, !34, !291, !294}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !292, line: 64, baseType: !293)
!292 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !231, line: 147, baseType: !7)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!296 = !{!297}
!297 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10)
!298 = !{!24, !291}
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!301 = distinct !DICompileUnit(language: DW_LANG_C99, file: !302, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !303, splitDebugInlining: false, nameTableKind: None)
!302 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!303 = !{!61, !140, !24}
!304 = distinct !DICompileUnit(language: DW_LANG_C99, file: !305, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !306, splitDebugInlining: false, nameTableKind: None)
!305 = !DIFile(filename: "lib/getugroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "133b212624b9afab46cc6a15f2134d44")
!306 = !{!291, !24}
!307 = distinct !DICompileUnit(language: DW_LANG_C99, file: !308, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!308 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!309 = distinct !DICompileUnit(language: DW_LANG_C99, file: !310, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!310 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !66, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!313 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!314 = !{i32 7, !"Dwarf Version", i32 5}
!315 = !{i32 2, !"Debug Info Version", i32 3}
!316 = !{i32 1, !"wchar_size", i32 4}
!317 = !{i32 1, !"branch-target-enforcement", i32 0}
!318 = !{i32 1, !"sign-return-address", i32 0}
!319 = !{i32 1, !"sign-return-address-all", i32 0}
!320 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!321 = !{i32 7, !"PIC Level", i32 2}
!322 = !{i32 7, !"PIE Level", i32 2}
!323 = !{i32 7, !"uwtable", i32 1}
!324 = !{i32 7, !"frame-pointer", i32 1}
!325 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 47, type: !326, scopeLine: 48, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !25}
!328 = !DILocalVariable(name: "status", arg: 1, scope: !325, file: !3, line: 47, type: !25)
!329 = !DILocation(line: 47, column: 12, scope: !325)
!330 = !DILocation(line: 49, column: 7, scope: !331)
!331 = distinct !DILexicalBlock(scope: !325, file: !3, line: 49, column: 7)
!332 = !DILocation(line: 49, column: 14, scope: !331)
!333 = !DILocation(line: 49, column: 7, scope: !325)
!334 = !DILocation(line: 50, column: 5, scope: !331)
!335 = !DILocation(line: 50, column: 5, scope: !336)
!336 = distinct !DILexicalBlock(scope: !331, file: !3, line: 50, column: 5)
!337 = !DILocation(line: 53, column: 15, scope: !338)
!338 = distinct !DILexicalBlock(scope: !331, file: !3, line: 52, column: 5)
!339 = !DILocation(line: 53, column: 59, scope: !338)
!340 = !DILocation(line: 53, column: 7, scope: !338)
!341 = !DILocation(line: 54, column: 7, scope: !338)
!342 = !DILocation(line: 59, column: 7, scope: !338)
!343 = !DILocation(line: 60, column: 7, scope: !338)
!344 = !DILocation(line: 61, column: 7, scope: !338)
!345 = !DILocation(line: 63, column: 9, scope: !325)
!346 = !DILocation(line: 63, column: 3, scope: !325)
!347 = !DILocalVariable(name: "program", arg: 1, scope: !30, file: !31, line: 573, type: !34)
!348 = !DILocation(line: 573, column: 34, scope: !30)
!349 = !DILocalVariable(name: "option", arg: 2, scope: !30, file: !31, line: 573, type: !34)
!350 = !DILocation(line: 573, column: 55, scope: !30)
!351 = !DILocation(line: 581, column: 7, scope: !352)
!352 = distinct !DILexicalBlock(scope: !30, file: !31, line: 581, column: 7)
!353 = !DILocation(line: 581, column: 19, scope: !352)
!354 = !DILocation(line: 581, column: 7, scope: !30)
!355 = !DILocalVariable(name: "term", scope: !356, file: !31, line: 585, type: !34)
!356 = distinct !DILexicalBlock(scope: !352, file: !31, line: 582, column: 5)
!357 = !DILocation(line: 585, column: 19, scope: !356)
!358 = !DILocation(line: 585, column: 26, scope: !356)
!359 = !DILocation(line: 586, column: 23, scope: !356)
!360 = !DILocation(line: 586, column: 28, scope: !356)
!361 = !DILocation(line: 586, column: 33, scope: !356)
!362 = !DILocation(line: 586, column: 32, scope: !356)
!363 = !DILocation(line: 586, column: 38, scope: !356)
!364 = !DILocation(line: 586, column: 48, scope: !356)
!365 = !DILocation(line: 586, column: 41, scope: !356)
!366 = !DILocation(line: 586, column: 19, scope: !356)
!367 = !DILocation(line: 587, column: 5, scope: !356)
!368 = !DILocation(line: 588, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !30, file: !31, line: 588, column: 7)
!370 = !DILocation(line: 588, column: 7, scope: !30)
!371 = !DILocation(line: 590, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !31, line: 589, column: 5)
!373 = !DILocation(line: 591, column: 7, scope: !372)
!374 = !DILocalVariable(name: "double_space", scope: !30, file: !31, line: 594, type: !61)
!375 = !DILocation(line: 594, column: 8, scope: !30)
!376 = !DILocalVariable(name: "first_word", scope: !30, file: !31, line: 595, type: !34)
!377 = !DILocation(line: 595, column: 15, scope: !30)
!378 = !DILocation(line: 595, column: 28, scope: !30)
!379 = !DILocation(line: 595, column: 45, scope: !30)
!380 = !DILocation(line: 595, column: 37, scope: !30)
!381 = !DILocation(line: 595, column: 35, scope: !30)
!382 = !DILocalVariable(name: "option_text", scope: !30, file: !31, line: 596, type: !34)
!383 = !DILocation(line: 596, column: 15, scope: !30)
!384 = !DILocation(line: 596, column: 37, scope: !30)
!385 = !DILocation(line: 596, column: 29, scope: !30)
!386 = !DILocation(line: 597, column: 8, scope: !387)
!387 = distinct !DILexicalBlock(scope: !30, file: !31, line: 597, column: 7)
!388 = !DILocation(line: 597, column: 7, scope: !30)
!389 = !DILocation(line: 599, column: 21, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !31, line: 598, column: 5)
!391 = !DILocation(line: 599, column: 19, scope: !390)
!392 = !DILocation(line: 602, column: 20, scope: !390)
!393 = !DILocation(line: 603, column: 5, scope: !390)
!394 = !DILocation(line: 604, column: 12, scope: !395)
!395 = distinct !DILexicalBlock(scope: !387, file: !31, line: 604, column: 12)
!396 = !DILocation(line: 604, column: 27, scope: !395)
!397 = !DILocation(line: 604, column: 24, scope: !395)
!398 = !DILocation(line: 604, column: 12, scope: !387)
!399 = !DILocalVariable(name: "s", scope: !400, file: !31, line: 608, type: !34)
!400 = distinct !DILexicalBlock(scope: !395, file: !31, line: 605, column: 5)
!401 = !DILocation(line: 608, column: 19, scope: !400)
!402 = !DILocation(line: 608, column: 23, scope: !400)
!403 = !DILocalVariable(name: "spaces", scope: !400, file: !31, line: 609, type: !138)
!404 = !DILocation(line: 609, column: 14, scope: !400)
!405 = !DILocation(line: 610, column: 7, scope: !400)
!406 = !DILocation(line: 610, column: 14, scope: !400)
!407 = !DILocation(line: 610, column: 18, scope: !400)
!408 = !DILocation(line: 610, column: 16, scope: !400)
!409 = !DILocation(line: 610, column: 30, scope: !400)
!410 = !DILocation(line: 610, column: 33, scope: !400)
!411 = !DILocation(line: 610, column: 40, scope: !400)
!412 = !DILocation(line: 0, scope: !400)
!413 = !DILocation(line: 611, column: 21, scope: !400)
!414 = !DILocation(line: 611, column: 20, scope: !400)
!415 = !DILocation(line: 611, column: 19, scope: !400)
!416 = !DILocation(line: 611, column: 16, scope: !400)
!417 = distinct !{!417, !405, !413, !418}
!418 = !{!"llvm.loop.mustprogress"}
!419 = !DILocation(line: 612, column: 11, scope: !420)
!420 = distinct !DILexicalBlock(scope: !400, file: !31, line: 612, column: 11)
!421 = !DILocation(line: 612, column: 18, scope: !420)
!422 = !DILocation(line: 612, column: 11, scope: !400)
!423 = !DILocation(line: 615, column: 25, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !31, line: 613, column: 9)
!425 = !DILocation(line: 615, column: 23, scope: !424)
!426 = !DILocation(line: 616, column: 24, scope: !424)
!427 = !DILocation(line: 617, column: 9, scope: !424)
!428 = !DILocation(line: 618, column: 5, scope: !400)
!429 = !DILocalVariable(name: "anchor_len", scope: !30, file: !31, line: 620, type: !138)
!430 = !DILocation(line: 620, column: 10, scope: !30)
!431 = !DILocation(line: 620, column: 32, scope: !30)
!432 = !DILocation(line: 620, column: 23, scope: !30)
!433 = !DILocalVariable(name: "desc_text", scope: !30, file: !31, line: 625, type: !34)
!434 = !DILocation(line: 625, column: 15, scope: !30)
!435 = !DILocation(line: 625, column: 27, scope: !30)
!436 = !DILocation(line: 625, column: 41, scope: !30)
!437 = !DILocation(line: 625, column: 39, scope: !30)
!438 = !DILocation(line: 626, column: 3, scope: !30)
!439 = !DILocation(line: 626, column: 11, scope: !30)
!440 = !DILocation(line: 626, column: 10, scope: !30)
!441 = !DILocation(line: 626, column: 21, scope: !30)
!442 = !DILocation(line: 626, column: 25, scope: !30)
!443 = !DILocation(line: 626, column: 24, scope: !30)
!444 = !DILocation(line: 626, column: 35, scope: !30)
!445 = !DILocation(line: 0, scope: !30)
!446 = !DILocation(line: 628, column: 12, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !31, line: 628, column: 11)
!448 = distinct !DILexicalBlock(scope: !30, file: !31, line: 627, column: 5)
!449 = !DILocation(line: 628, column: 11, scope: !447)
!450 = !DILocation(line: 628, column: 22, scope: !447)
!451 = !DILocation(line: 628, column: 29, scope: !447)
!452 = !DILocation(line: 628, column: 34, scope: !447)
!453 = !DILocation(line: 628, column: 44, scope: !447)
!454 = !DILocation(line: 628, column: 32, scope: !447)
!455 = !DILocation(line: 628, column: 49, scope: !447)
!456 = !DILocation(line: 628, column: 11, scope: !448)
!457 = !DILocation(line: 629, column: 22, scope: !447)
!458 = !DILocation(line: 629, column: 9, scope: !447)
!459 = !DILocation(line: 630, column: 11, scope: !460)
!460 = distinct !DILexicalBlock(scope: !448, file: !31, line: 630, column: 11)
!461 = !DILocation(line: 630, column: 11, scope: !448)
!462 = !DILocation(line: 632, column: 16, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !31, line: 632, column: 15)
!464 = distinct !DILexicalBlock(scope: !460, file: !31, line: 631, column: 9)
!465 = !DILocation(line: 632, column: 15, scope: !463)
!466 = !DILocation(line: 632, column: 26, scope: !463)
!467 = !DILocation(line: 632, column: 34, scope: !463)
!468 = !DILocation(line: 632, column: 37, scope: !463)
!469 = !DILocation(line: 632, column: 15, scope: !464)
!470 = !DILocation(line: 633, column: 13, scope: !463)
!471 = !DILocation(line: 636, column: 16, scope: !472)
!472 = distinct !DILexicalBlock(scope: !464, file: !31, line: 636, column: 15)
!473 = !DILocation(line: 636, column: 29, scope: !472)
!474 = !DILocation(line: 636, column: 34, scope: !472)
!475 = !DILocation(line: 636, column: 44, scope: !472)
!476 = !DILocation(line: 636, column: 32, scope: !472)
!477 = !DILocation(line: 636, column: 49, scope: !472)
!478 = !DILocation(line: 636, column: 15, scope: !464)
!479 = !DILocation(line: 637, column: 13, scope: !472)
!480 = !DILocation(line: 638, column: 9, scope: !464)
!481 = !DILocation(line: 640, column: 16, scope: !448)
!482 = distinct !{!482, !438, !483, !418}
!483 = !DILocation(line: 641, column: 5, scope: !30)
!484 = !DILocation(line: 644, column: 3, scope: !30)
!485 = !DILocalVariable(name: "url_program", scope: !30, file: !31, line: 648, type: !34)
!486 = !DILocation(line: 648, column: 15, scope: !30)
!487 = !DILocation(line: 648, column: 38, scope: !30)
!488 = !DILocation(line: 648, column: 31, scope: !30)
!489 = !DILocation(line: 649, column: 38, scope: !30)
!490 = !DILocation(line: 649, column: 31, scope: !30)
!491 = !DILocation(line: 650, column: 38, scope: !30)
!492 = !DILocation(line: 650, column: 31, scope: !30)
!493 = !DILocation(line: 651, column: 38, scope: !30)
!494 = !DILocation(line: 651, column: 31, scope: !30)
!495 = !DILocation(line: 652, column: 38, scope: !30)
!496 = !DILocation(line: 652, column: 31, scope: !30)
!497 = !DILocation(line: 653, column: 38, scope: !30)
!498 = !DILocation(line: 653, column: 31, scope: !30)
!499 = !DILocation(line: 654, column: 38, scope: !30)
!500 = !DILocation(line: 654, column: 31, scope: !30)
!501 = !DILocation(line: 655, column: 38, scope: !30)
!502 = !DILocation(line: 655, column: 31, scope: !30)
!503 = !DILocation(line: 656, column: 38, scope: !30)
!504 = !DILocation(line: 656, column: 31, scope: !30)
!505 = !DILocation(line: 657, column: 38, scope: !30)
!506 = !DILocation(line: 657, column: 31, scope: !30)
!507 = !DILocation(line: 658, column: 31, scope: !30)
!508 = !DILocation(line: 663, column: 7, scope: !509)
!509 = distinct !DILexicalBlock(scope: !30, file: !31, line: 663, column: 7)
!510 = !DILocation(line: 664, column: 7, scope: !509)
!511 = !DILocation(line: 664, column: 10, scope: !509)
!512 = !DILocation(line: 663, column: 7, scope: !30)
!513 = !DILocation(line: 670, column: 15, scope: !514)
!514 = distinct !DILexicalBlock(scope: !509, file: !31, line: 665, column: 5)
!515 = !DILocation(line: 670, column: 28, scope: !514)
!516 = !DILocation(line: 670, column: 47, scope: !514)
!517 = !DILocation(line: 670, column: 41, scope: !514)
!518 = !DILocation(line: 670, column: 59, scope: !514)
!519 = !DILocation(line: 669, column: 7, scope: !514)
!520 = !DILocation(line: 671, column: 5, scope: !514)
!521 = !DILocation(line: 676, column: 48, scope: !522)
!522 = distinct !DILexicalBlock(scope: !509, file: !31, line: 673, column: 5)
!523 = !DILocation(line: 677, column: 21, scope: !522)
!524 = !DILocation(line: 677, column: 15, scope: !522)
!525 = !DILocation(line: 677, column: 33, scope: !522)
!526 = !DILocation(line: 676, column: 7, scope: !522)
!527 = !DILocation(line: 679, column: 3, scope: !30)
!528 = !DILocation(line: 683, column: 3, scope: !30)
!529 = !DILocation(line: 686, column: 3, scope: !30)
!530 = !DILocation(line: 688, column: 3, scope: !30)
!531 = !DILocation(line: 691, column: 3, scope: !30)
!532 = !DILocation(line: 695, column: 3, scope: !30)
!533 = !DILocation(line: 696, column: 1, scope: !30)
!534 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !31, file: !31, line: 836, type: !535, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !36)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !34}
!537 = !DILocalVariable(name: "program", arg: 1, scope: !534, file: !31, line: 836, type: !34)
!538 = !DILocation(line: 836, column: 34, scope: !534)
!539 = !DILocalVariable(name: "infomap", scope: !534, file: !31, line: 838, type: !540)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 896, elements: !546)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !534, file: !31, line: 838, size: 128, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !542, file: !31, line: 838, baseType: !34, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !542, file: !31, line: 838, baseType: !34, size: 64, offset: 64)
!546 = !{!547}
!547 = !DISubrange(count: 7)
!548 = !DILocation(line: 838, column: 67, scope: !534)
!549 = !DILocalVariable(name: "node", scope: !534, file: !31, line: 848, type: !34)
!550 = !DILocation(line: 848, column: 15, scope: !534)
!551 = !DILocation(line: 848, column: 22, scope: !534)
!552 = !DILocalVariable(name: "map_prog", scope: !534, file: !31, line: 849, type: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!554 = !DILocation(line: 849, column: 25, scope: !534)
!555 = !DILocation(line: 849, column: 36, scope: !534)
!556 = !DILocation(line: 851, column: 3, scope: !534)
!557 = !DILocation(line: 851, column: 10, scope: !534)
!558 = !DILocation(line: 851, column: 20, scope: !534)
!559 = !DILocation(line: 851, column: 28, scope: !534)
!560 = !DILocation(line: 851, column: 40, scope: !534)
!561 = !DILocation(line: 851, column: 49, scope: !534)
!562 = !DILocation(line: 851, column: 59, scope: !534)
!563 = !DILocation(line: 851, column: 33, scope: !534)
!564 = !DILocation(line: 851, column: 31, scope: !534)
!565 = !DILocation(line: 0, scope: !534)
!566 = !DILocation(line: 852, column: 13, scope: !534)
!567 = distinct !{!567, !556, !566, !418}
!568 = !DILocation(line: 854, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !534, file: !31, line: 854, column: 7)
!570 = !DILocation(line: 854, column: 17, scope: !569)
!571 = !DILocation(line: 854, column: 7, scope: !534)
!572 = !DILocation(line: 855, column: 12, scope: !569)
!573 = !DILocation(line: 855, column: 22, scope: !569)
!574 = !DILocation(line: 855, column: 10, scope: !569)
!575 = !DILocation(line: 855, column: 5, scope: !569)
!576 = !DILocation(line: 857, column: 3, scope: !534)
!577 = !DILocalVariable(name: "lc_messages", scope: !534, file: !31, line: 861, type: !34)
!578 = !DILocation(line: 861, column: 15, scope: !534)
!579 = !DILocation(line: 861, column: 29, scope: !534)
!580 = !DILocation(line: 862, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !534, file: !31, line: 862, column: 7)
!582 = !DILocation(line: 862, column: 19, scope: !581)
!583 = !DILocation(line: 862, column: 22, scope: !581)
!584 = !DILocation(line: 862, column: 7, scope: !534)
!585 = !DILocation(line: 868, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !581, file: !31, line: 863, column: 5)
!587 = !DILocation(line: 870, column: 5, scope: !586)
!588 = !DILocalVariable(name: "url_program", scope: !534, file: !31, line: 874, type: !34)
!589 = !DILocation(line: 874, column: 15, scope: !534)
!590 = !DILocation(line: 874, column: 36, scope: !534)
!591 = !DILocation(line: 874, column: 29, scope: !534)
!592 = !DILocation(line: 874, column: 61, scope: !534)
!593 = !DILocation(line: 875, column: 11, scope: !534)
!594 = !DILocation(line: 876, column: 24, scope: !534)
!595 = !DILocation(line: 875, column: 3, scope: !534)
!596 = !DILocation(line: 877, column: 11, scope: !534)
!597 = !DILocation(line: 878, column: 11, scope: !534)
!598 = !DILocation(line: 878, column: 17, scope: !534)
!599 = !DILocation(line: 878, column: 25, scope: !534)
!600 = !DILocation(line: 878, column: 22, scope: !534)
!601 = !DILocation(line: 877, column: 3, scope: !534)
!602 = !DILocation(line: 879, column: 1, scope: !534)
!603 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 67, type: !604, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!604 = !DISubroutineType(types: !605)
!605 = !{!25, !25, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!607 = !DILocalVariable(name: "argc", arg: 1, scope: !603, file: !3, line: 67, type: !25)
!608 = !DILocation(line: 67, column: 11, scope: !603)
!609 = !DILocalVariable(name: "argv", arg: 2, scope: !603, file: !3, line: 67, type: !606)
!610 = !DILocation(line: 67, column: 24, scope: !603)
!611 = !DILocation(line: 70, column: 21, scope: !603)
!612 = !DILocation(line: 70, column: 3, scope: !603)
!613 = !DILocation(line: 71, column: 3, scope: !603)
!614 = !DILocation(line: 72, column: 3, scope: !603)
!615 = !DILocation(line: 73, column: 3, scope: !603)
!616 = !DILocation(line: 75, column: 3, scope: !603)
!617 = !DILocalVariable(name: "optc", scope: !603, file: !3, line: 79, type: !25)
!618 = !DILocation(line: 79, column: 7, scope: !603)
!619 = !DILocation(line: 80, column: 3, scope: !603)
!620 = !DILocation(line: 80, column: 31, scope: !603)
!621 = !DILocation(line: 80, column: 37, scope: !603)
!622 = !DILocation(line: 80, column: 18, scope: !603)
!623 = !DILocation(line: 80, column: 16, scope: !603)
!624 = !DILocation(line: 80, column: 64, scope: !603)
!625 = !DILocation(line: 82, column: 15, scope: !626)
!626 = distinct !DILexicalBlock(scope: !603, file: !3, line: 81, column: 5)
!627 = !DILocation(line: 82, column: 7, scope: !626)
!628 = !DILocation(line: 84, column: 9, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !3, line: 83, column: 9)
!630 = !DILocation(line: 85, column: 9, scope: !629)
!631 = !DILocation(line: 87, column: 11, scope: !629)
!632 = !DILocalVariable(name: "ok", scope: !603, file: !3, line: 91, type: !61)
!633 = !DILocation(line: 91, column: 8, scope: !603)
!634 = !DILocation(line: 92, column: 7, scope: !635)
!635 = distinct !DILexicalBlock(scope: !603, file: !3, line: 92, column: 7)
!636 = !DILocation(line: 92, column: 17, scope: !635)
!637 = !DILocation(line: 92, column: 14, scope: !635)
!638 = !DILocation(line: 92, column: 7, scope: !603)
!639 = !DILocalVariable(name: "NO_UID", scope: !640, file: !3, line: 95, type: !641)
!640 = distinct !DILexicalBlock(scope: !635, file: !3, line: 93, column: 5)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !292, line: 79, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !231, line: 146, baseType: !7)
!643 = !DILocation(line: 95, column: 13, scope: !640)
!644 = !DILocalVariable(name: "NO_GID", scope: !640, file: !3, line: 96, type: !291)
!645 = !DILocation(line: 96, column: 13, scope: !640)
!646 = !DILocation(line: 98, column: 7, scope: !640)
!647 = !DILocation(line: 98, column: 13, scope: !640)
!648 = !DILocalVariable(name: "ruid", scope: !640, file: !3, line: 99, type: !641)
!649 = !DILocation(line: 99, column: 13, scope: !640)
!650 = !DILocation(line: 99, column: 20, scope: !640)
!651 = !DILocation(line: 100, column: 11, scope: !652)
!652 = distinct !DILexicalBlock(scope: !640, file: !3, line: 100, column: 11)
!653 = !DILocation(line: 100, column: 19, scope: !652)
!654 = !DILocation(line: 100, column: 16, scope: !652)
!655 = !DILocation(line: 100, column: 26, scope: !652)
!656 = !DILocation(line: 100, column: 29, scope: !652)
!657 = !DILocation(line: 100, column: 11, scope: !640)
!658 = !DILocation(line: 101, column: 9, scope: !652)
!659 = !DILocation(line: 103, column: 7, scope: !640)
!660 = !DILocation(line: 103, column: 13, scope: !640)
!661 = !DILocalVariable(name: "egid", scope: !640, file: !3, line: 104, type: !291)
!662 = !DILocation(line: 104, column: 13, scope: !640)
!663 = !DILocation(line: 104, column: 20, scope: !640)
!664 = !DILocation(line: 105, column: 11, scope: !665)
!665 = distinct !DILexicalBlock(scope: !640, file: !3, line: 105, column: 11)
!666 = !DILocation(line: 105, column: 19, scope: !665)
!667 = !DILocation(line: 105, column: 16, scope: !665)
!668 = !DILocation(line: 105, column: 26, scope: !665)
!669 = !DILocation(line: 105, column: 29, scope: !665)
!670 = !DILocation(line: 105, column: 11, scope: !640)
!671 = !DILocation(line: 106, column: 9, scope: !665)
!672 = !DILocation(line: 108, column: 7, scope: !640)
!673 = !DILocation(line: 108, column: 13, scope: !640)
!674 = !DILocalVariable(name: "rgid", scope: !640, file: !3, line: 109, type: !291)
!675 = !DILocation(line: 109, column: 13, scope: !640)
!676 = !DILocation(line: 109, column: 20, scope: !640)
!677 = !DILocation(line: 110, column: 11, scope: !678)
!678 = distinct !DILexicalBlock(scope: !640, file: !3, line: 110, column: 11)
!679 = !DILocation(line: 110, column: 19, scope: !678)
!680 = !DILocation(line: 110, column: 16, scope: !678)
!681 = !DILocation(line: 110, column: 26, scope: !678)
!682 = !DILocation(line: 110, column: 29, scope: !678)
!683 = !DILocation(line: 110, column: 11, scope: !640)
!684 = !DILocation(line: 111, column: 9, scope: !678)
!685 = !DILocation(line: 113, column: 36, scope: !686)
!686 = distinct !DILexicalBlock(scope: !640, file: !3, line: 113, column: 11)
!687 = !DILocation(line: 113, column: 42, scope: !686)
!688 = !DILocation(line: 113, column: 48, scope: !686)
!689 = !DILocation(line: 113, column: 12, scope: !686)
!690 = !DILocation(line: 113, column: 11, scope: !640)
!691 = !DILocation(line: 114, column: 12, scope: !686)
!692 = !DILocation(line: 114, column: 9, scope: !686)
!693 = !DILocation(line: 115, column: 7, scope: !640)
!694 = !DILocation(line: 116, column: 5, scope: !640)
!695 = !DILocation(line: 120, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !635, file: !3, line: 118, column: 5)
!697 = !DILocation(line: 120, column: 15, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !3, line: 120, column: 7)
!699 = distinct !DILexicalBlock(scope: !696, file: !3, line: 120, column: 7)
!700 = !DILocation(line: 120, column: 24, scope: !698)
!701 = !DILocation(line: 120, column: 22, scope: !698)
!702 = !DILocation(line: 120, column: 7, scope: !699)
!703 = !DILocalVariable(name: "pwd", scope: !704, file: !3, line: 122, type: !705)
!704 = distinct !DILexicalBlock(scope: !698, file: !3, line: 121, column: 9)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !707, line: 49, size: 384, elements: !708)
!707 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!708 = !{!709, !710, !711, !712, !713, !714, !715}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !706, file: !707, line: 51, baseType: !22, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !706, file: !707, line: 52, baseType: !22, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !706, file: !707, line: 54, baseType: !642, size: 32, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !706, file: !707, line: 55, baseType: !293, size: 32, offset: 160)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !706, file: !707, line: 56, baseType: !22, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !706, file: !707, line: 57, baseType: !22, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !706, file: !707, line: 58, baseType: !22, size: 64, offset: 320)
!716 = !DILocation(line: 122, column: 26, scope: !704)
!717 = !DILocation(line: 122, column: 42, scope: !704)
!718 = !DILocation(line: 122, column: 47, scope: !704)
!719 = !DILocation(line: 122, column: 32, scope: !704)
!720 = !DILocation(line: 123, column: 15, scope: !721)
!721 = distinct !DILexicalBlock(scope: !704, file: !3, line: 123, column: 15)
!722 = !DILocation(line: 123, column: 19, scope: !721)
!723 = !DILocation(line: 123, column: 15, scope: !704)
!724 = !DILocation(line: 125, column: 15, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !3, line: 124, column: 13)
!726 = !DILocation(line: 126, column: 18, scope: !725)
!727 = !DILocation(line: 127, column: 15, scope: !725)
!728 = !DILocalVariable(name: "ruid", scope: !704, file: !3, line: 129, type: !641)
!729 = !DILocation(line: 129, column: 17, scope: !704)
!730 = !DILocation(line: 129, column: 24, scope: !704)
!731 = !DILocation(line: 129, column: 29, scope: !704)
!732 = !DILocalVariable(name: "rgid", scope: !704, file: !3, line: 130, type: !291)
!733 = !DILocation(line: 130, column: 17, scope: !704)
!734 = !DILocation(line: 130, column: 24, scope: !704)
!735 = !DILocation(line: 130, column: 29, scope: !704)
!736 = !DILocalVariable(name: "egid", scope: !704, file: !3, line: 131, type: !291)
!737 = !DILocation(line: 131, column: 17, scope: !704)
!738 = !DILocation(line: 131, column: 24, scope: !704)
!739 = !DILocation(line: 133, column: 28, scope: !704)
!740 = !DILocation(line: 133, column: 33, scope: !704)
!741 = !DILocation(line: 133, column: 11, scope: !704)
!742 = !DILocation(line: 134, column: 34, scope: !743)
!743 = distinct !DILexicalBlock(scope: !704, file: !3, line: 134, column: 15)
!744 = !DILocation(line: 134, column: 39, scope: !743)
!745 = !DILocation(line: 134, column: 48, scope: !743)
!746 = !DILocation(line: 134, column: 54, scope: !743)
!747 = !DILocation(line: 134, column: 60, scope: !743)
!748 = !DILocation(line: 134, column: 16, scope: !743)
!749 = !DILocation(line: 134, column: 15, scope: !704)
!750 = !DILocation(line: 135, column: 16, scope: !743)
!751 = !DILocation(line: 135, column: 13, scope: !743)
!752 = !DILocation(line: 136, column: 11, scope: !704)
!753 = !DILocation(line: 138, column: 15, scope: !754)
!754 = distinct !DILexicalBlock(scope: !704, file: !3, line: 138, column: 15)
!755 = !DILocation(line: 138, column: 15, scope: !704)
!756 = !DILocation(line: 139, column: 13, scope: !754)
!757 = !DILocation(line: 140, column: 9, scope: !704)
!758 = !DILocation(line: 120, column: 36, scope: !698)
!759 = !DILocation(line: 120, column: 7, scope: !698)
!760 = distinct !{!760, !702, !761, !418}
!761 = !DILocation(line: 140, column: 9, scope: !699)
!762 = !DILocation(line: 143, column: 10, scope: !603)
!763 = !DILocation(line: 143, column: 3, scope: !603)
!764 = distinct !DISubprogram(name: "write_error", scope: !31, file: !31, line: 946, type: !94, scopeLine: 947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !36)
!765 = !DILocalVariable(name: "saved_errno", scope: !764, file: !31, line: 948, type: !25)
!766 = !DILocation(line: 948, column: 7, scope: !764)
!767 = !DILocation(line: 948, column: 21, scope: !764)
!768 = !DILocation(line: 949, column: 3, scope: !764)
!769 = !DILocation(line: 950, column: 11, scope: !764)
!770 = !DILocation(line: 950, column: 3, scope: !764)
!771 = !DILocation(line: 951, column: 3, scope: !764)
!772 = !DILocation(line: 952, column: 3, scope: !764)
!773 = distinct !DISubprogram(name: "print_group_list", scope: !226, file: !226, line: 35, type: !774, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !225, retainedNodes: !36)
!774 = !DISubroutineType(types: !775)
!775 = !{!61, !34, !641, !291, !291, !61, !23}
!776 = !DILocalVariable(name: "username", arg: 1, scope: !773, file: !226, line: 35, type: !34)
!777 = !DILocation(line: 35, column: 31, scope: !773)
!778 = !DILocalVariable(name: "ruid", arg: 2, scope: !773, file: !226, line: 36, type: !641)
!779 = !DILocation(line: 36, column: 25, scope: !773)
!780 = !DILocalVariable(name: "rgid", arg: 3, scope: !773, file: !226, line: 36, type: !291)
!781 = !DILocation(line: 36, column: 37, scope: !773)
!782 = !DILocalVariable(name: "egid", arg: 4, scope: !773, file: !226, line: 36, type: !291)
!783 = !DILocation(line: 36, column: 49, scope: !773)
!784 = !DILocalVariable(name: "use_names", arg: 5, scope: !773, file: !226, line: 37, type: !61)
!785 = !DILocation(line: 37, column: 24, scope: !773)
!786 = !DILocalVariable(name: "delim", arg: 6, scope: !773, file: !226, line: 37, type: !23)
!787 = !DILocation(line: 37, column: 40, scope: !773)
!788 = !DILocalVariable(name: "ok", scope: !773, file: !226, line: 39, type: !61)
!789 = !DILocation(line: 39, column: 8, scope: !773)
!790 = !DILocalVariable(name: "pwd", scope: !773, file: !226, line: 40, type: !791)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !707, line: 49, size: 384, elements: !793)
!793 = !{!794, !795, !796, !797, !798, !799, !800}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !792, file: !707, line: 51, baseType: !22, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !792, file: !707, line: 52, baseType: !22, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !792, file: !707, line: 54, baseType: !642, size: 32, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !792, file: !707, line: 55, baseType: !293, size: 32, offset: 160)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !792, file: !707, line: 56, baseType: !22, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !792, file: !707, line: 57, baseType: !22, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !792, file: !707, line: 58, baseType: !22, size: 64, offset: 320)
!801 = !DILocation(line: 40, column: 18, scope: !773)
!802 = !DILocation(line: 42, column: 7, scope: !803)
!803 = distinct !DILexicalBlock(scope: !773, file: !226, line: 42, column: 7)
!804 = !DILocation(line: 42, column: 7, scope: !773)
!805 = !DILocation(line: 44, column: 23, scope: !806)
!806 = distinct !DILexicalBlock(scope: !803, file: !226, line: 43, column: 5)
!807 = !DILocation(line: 44, column: 13, scope: !806)
!808 = !DILocation(line: 44, column: 11, scope: !806)
!809 = !DILocation(line: 45, column: 11, scope: !810)
!810 = distinct !DILexicalBlock(scope: !806, file: !226, line: 45, column: 11)
!811 = !DILocation(line: 45, column: 15, scope: !810)
!812 = !DILocation(line: 45, column: 11, scope: !806)
!813 = !DILocation(line: 46, column: 12, scope: !810)
!814 = !DILocation(line: 46, column: 9, scope: !810)
!815 = !DILocation(line: 47, column: 5, scope: !806)
!816 = !DILocation(line: 49, column: 21, scope: !817)
!817 = distinct !DILexicalBlock(scope: !773, file: !226, line: 49, column: 7)
!818 = !DILocation(line: 49, column: 27, scope: !817)
!819 = !DILocation(line: 49, column: 8, scope: !817)
!820 = !DILocation(line: 49, column: 7, scope: !773)
!821 = !DILocation(line: 50, column: 8, scope: !817)
!822 = !DILocation(line: 50, column: 5, scope: !817)
!823 = !DILocation(line: 52, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !773, file: !226, line: 52, column: 7)
!825 = !DILocation(line: 52, column: 15, scope: !824)
!826 = !DILocation(line: 52, column: 12, scope: !824)
!827 = !DILocation(line: 52, column: 7, scope: !773)
!828 = !DILocation(line: 54, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !824, file: !226, line: 53, column: 5)
!830 = !DILocation(line: 55, column: 25, scope: !831)
!831 = distinct !DILexicalBlock(scope: !829, file: !226, line: 55, column: 11)
!832 = !DILocation(line: 55, column: 31, scope: !831)
!833 = !DILocation(line: 55, column: 12, scope: !831)
!834 = !DILocation(line: 55, column: 11, scope: !829)
!835 = !DILocation(line: 56, column: 12, scope: !831)
!836 = !DILocation(line: 56, column: 9, scope: !831)
!837 = !DILocation(line: 57, column: 5, scope: !829)
!838 = !DILocalVariable(name: "groups", scope: !839, file: !226, line: 60, type: !295)
!839 = distinct !DILexicalBlock(scope: !773, file: !226, line: 59, column: 3)
!840 = !DILocation(line: 60, column: 12, scope: !839)
!841 = !DILocalVariable(name: "n_groups", scope: !839, file: !226, line: 62, type: !25)
!842 = !DILocation(line: 62, column: 9, scope: !839)
!843 = !DILocation(line: 62, column: 32, scope: !839)
!844 = !DILocation(line: 62, column: 43, scope: !839)
!845 = !DILocation(line: 62, column: 49, scope: !839)
!846 = !DILocation(line: 62, column: 54, scope: !839)
!847 = !DILocation(line: 62, column: 63, scope: !839)
!848 = !DILocation(line: 62, column: 20, scope: !839)
!849 = !DILocation(line: 63, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !839, file: !226, line: 63, column: 9)
!851 = !DILocation(line: 63, column: 18, scope: !850)
!852 = !DILocation(line: 63, column: 9, scope: !839)
!853 = !DILocation(line: 65, column: 13, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !226, line: 65, column: 13)
!855 = distinct !DILexicalBlock(scope: !850, file: !226, line: 64, column: 7)
!856 = !DILocation(line: 65, column: 13, scope: !855)
!857 = !DILocation(line: 67, column: 13, scope: !858)
!858 = distinct !DILexicalBlock(scope: !854, file: !226, line: 66, column: 11)
!859 = !DILocation(line: 69, column: 11, scope: !858)
!860 = !DILocation(line: 72, column: 13, scope: !861)
!861 = distinct !DILexicalBlock(scope: !854, file: !226, line: 71, column: 11)
!862 = !DILocation(line: 74, column: 9, scope: !855)
!863 = !DILocalVariable(name: "i", scope: !864, file: !226, line: 77, type: !25)
!864 = distinct !DILexicalBlock(scope: !839, file: !226, line: 77, column: 5)
!865 = !DILocation(line: 77, column: 14, scope: !864)
!866 = !DILocation(line: 77, column: 10, scope: !864)
!867 = !DILocation(line: 77, column: 21, scope: !868)
!868 = distinct !DILexicalBlock(scope: !864, file: !226, line: 77, column: 5)
!869 = !DILocation(line: 77, column: 25, scope: !868)
!870 = !DILocation(line: 77, column: 23, scope: !868)
!871 = !DILocation(line: 77, column: 5, scope: !864)
!872 = !DILocation(line: 78, column: 11, scope: !873)
!873 = distinct !DILexicalBlock(scope: !868, file: !226, line: 78, column: 11)
!874 = !DILocation(line: 78, column: 18, scope: !873)
!875 = !DILocation(line: 78, column: 24, scope: !873)
!876 = !DILocation(line: 78, column: 21, scope: !873)
!877 = !DILocation(line: 78, column: 29, scope: !873)
!878 = !DILocation(line: 78, column: 32, scope: !873)
!879 = !DILocation(line: 78, column: 39, scope: !873)
!880 = !DILocation(line: 78, column: 45, scope: !873)
!881 = !DILocation(line: 78, column: 42, scope: !873)
!882 = !DILocation(line: 78, column: 11, scope: !868)
!883 = !DILocation(line: 80, column: 11, scope: !884)
!884 = distinct !DILexicalBlock(scope: !873, file: !226, line: 79, column: 9)
!885 = !DILocation(line: 81, column: 29, scope: !886)
!886 = distinct !DILexicalBlock(scope: !884, file: !226, line: 81, column: 15)
!887 = !DILocation(line: 81, column: 36, scope: !886)
!888 = !DILocation(line: 81, column: 40, scope: !886)
!889 = !DILocation(line: 81, column: 16, scope: !886)
!890 = !DILocation(line: 81, column: 15, scope: !884)
!891 = !DILocation(line: 82, column: 16, scope: !886)
!892 = !DILocation(line: 82, column: 13, scope: !886)
!893 = !DILocation(line: 83, column: 9, scope: !884)
!894 = !DILocation(line: 77, column: 36, scope: !868)
!895 = !DILocation(line: 77, column: 5, scope: !868)
!896 = distinct !{!896, !871, !897, !418}
!897 = !DILocation(line: 83, column: 9, scope: !864)
!898 = !DILocation(line: 84, column: 11, scope: !839)
!899 = !DILocation(line: 84, column: 5, scope: !839)
!900 = !DILocation(line: 86, column: 10, scope: !773)
!901 = !DILocation(line: 86, column: 3, scope: !773)
!902 = !DILocation(line: 87, column: 1, scope: !773)
!903 = distinct !DISubprogram(name: "print_group", scope: !226, file: !226, line: 91, type: !904, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !225, retainedNodes: !36)
!904 = !DISubroutineType(types: !905)
!905 = !{!61, !291, !61}
!906 = !DILocalVariable(name: "gid", arg: 1, scope: !903, file: !226, line: 91, type: !291)
!907 = !DILocation(line: 91, column: 20, scope: !903)
!908 = !DILocalVariable(name: "use_name", arg: 2, scope: !903, file: !226, line: 91, type: !61)
!909 = !DILocation(line: 91, column: 30, scope: !903)
!910 = !DILocalVariable(name: "grp", scope: !903, file: !226, line: 93, type: !911)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !913, line: 42, size: 256, elements: !914)
!913 = !DIFile(filename: "/usr/include/grp.h", directory: "", checksumkind: CSK_MD5, checksum: "17838c4acd24e08e5bed6821e9e2c084")
!914 = !{!915, !916, !917, !918}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !912, file: !913, line: 44, baseType: !22, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !912, file: !913, line: 45, baseType: !22, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !912, file: !913, line: 46, baseType: !293, size: 32, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !912, file: !913, line: 47, baseType: !606, size: 64, offset: 192)
!919 = !DILocation(line: 93, column: 17, scope: !903)
!920 = !DILocalVariable(name: "ok", scope: !903, file: !226, line: 94, type: !61)
!921 = !DILocation(line: 94, column: 8, scope: !903)
!922 = !DILocation(line: 96, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !903, file: !226, line: 96, column: 7)
!924 = !DILocation(line: 96, column: 7, scope: !903)
!925 = !DILocation(line: 98, column: 23, scope: !926)
!926 = distinct !DILexicalBlock(scope: !923, file: !226, line: 97, column: 5)
!927 = !DILocation(line: 98, column: 13, scope: !926)
!928 = !DILocation(line: 98, column: 11, scope: !926)
!929 = !DILocation(line: 99, column: 11, scope: !930)
!930 = distinct !DILexicalBlock(scope: !926, file: !226, line: 99, column: 11)
!931 = !DILocation(line: 99, column: 15, scope: !930)
!932 = !DILocation(line: 99, column: 11, scope: !926)
!933 = !DILocalVariable(name: "g", scope: !934, file: !226, line: 108, type: !228)
!934 = distinct !DILexicalBlock(scope: !935, file: !226, line: 107, column: 13)
!935 = distinct !DILexicalBlock(scope: !936, file: !226, line: 101, column: 15)
!936 = distinct !DILexicalBlock(scope: !930, file: !226, line: 100, column: 9)
!937 = !DILocation(line: 108, column: 25, scope: !934)
!938 = !DILocation(line: 108, column: 29, scope: !934)
!939 = !DILocation(line: 109, column: 15, scope: !934)
!940 = !DILocation(line: 111, column: 14, scope: !936)
!941 = !DILocation(line: 112, column: 9, scope: !936)
!942 = !DILocation(line: 113, column: 5, scope: !926)
!943 = !DILocation(line: 115, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !903, file: !226, line: 115, column: 7)
!945 = !DILocation(line: 115, column: 7, scope: !903)
!946 = !DILocation(line: 116, column: 19, scope: !944)
!947 = !DILocation(line: 116, column: 24, scope: !944)
!948 = !DILocation(line: 116, column: 5, scope: !944)
!949 = !DILocation(line: 118, column: 32, scope: !944)
!950 = !DILocation(line: 118, column: 20, scope: !944)
!951 = !DILocation(line: 118, column: 5, scope: !944)
!952 = !DILocation(line: 119, column: 10, scope: !903)
!953 = !DILocation(line: 119, column: 3, scope: !903)
!954 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !57, file: !57, line: 50, type: !535, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !36)
!955 = !DILocalVariable(name: "file", arg: 1, scope: !954, file: !57, line: 50, type: !34)
!956 = !DILocation(line: 50, column: 41, scope: !954)
!957 = !DILocation(line: 52, column: 15, scope: !954)
!958 = !DILocation(line: 52, column: 13, scope: !954)
!959 = !DILocation(line: 53, column: 1, scope: !954)
!960 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !57, file: !57, line: 87, type: !961, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !36)
!961 = !DISubroutineType(types: !962)
!962 = !{null, !61}
!963 = !DILocalVariable(name: "ignore", arg: 1, scope: !960, file: !57, line: 87, type: !61)
!964 = !DILocation(line: 87, column: 37, scope: !960)
!965 = !DILocation(line: 89, column: 18, scope: !960)
!966 = !DILocation(line: 89, column: 16, scope: !960)
!967 = !DILocation(line: 90, column: 1, scope: !960)
!968 = distinct !DISubprogram(name: "close_stdout", scope: !57, file: !57, line: 116, type: !94, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !36)
!969 = !DILocation(line: 118, column: 21, scope: !970)
!970 = distinct !DILexicalBlock(scope: !968, file: !57, line: 118, column: 7)
!971 = !DILocation(line: 118, column: 7, scope: !970)
!972 = !DILocation(line: 118, column: 29, scope: !970)
!973 = !DILocation(line: 119, column: 7, scope: !970)
!974 = !DILocation(line: 119, column: 12, scope: !970)
!975 = !DILocation(line: 119, column: 25, scope: !970)
!976 = !DILocation(line: 119, column: 28, scope: !970)
!977 = !DILocation(line: 119, column: 34, scope: !970)
!978 = !DILocation(line: 118, column: 7, scope: !968)
!979 = !DILocalVariable(name: "write_error", scope: !980, file: !57, line: 121, type: !34)
!980 = distinct !DILexicalBlock(scope: !970, file: !57, line: 120, column: 5)
!981 = !DILocation(line: 121, column: 19, scope: !980)
!982 = !DILocation(line: 121, column: 33, scope: !980)
!983 = !DILocation(line: 122, column: 11, scope: !984)
!984 = distinct !DILexicalBlock(scope: !980, file: !57, line: 122, column: 11)
!985 = !DILocation(line: 122, column: 11, scope: !980)
!986 = !DILocation(line: 123, column: 9, scope: !984)
!987 = !DILocation(line: 126, column: 9, scope: !984)
!988 = !DILocation(line: 128, column: 14, scope: !980)
!989 = !DILocation(line: 128, column: 7, scope: !980)
!990 = !DILocation(line: 133, column: 42, scope: !991)
!991 = distinct !DILexicalBlock(scope: !968, file: !57, line: 133, column: 7)
!992 = !DILocation(line: 133, column: 28, scope: !991)
!993 = !DILocation(line: 133, column: 50, scope: !991)
!994 = !DILocation(line: 133, column: 7, scope: !968)
!995 = !DILocation(line: 134, column: 12, scope: !991)
!996 = !DILocation(line: 134, column: 5, scope: !991)
!997 = !DILocation(line: 135, column: 1, scope: !968)
!998 = distinct !DISubprogram(name: "verror", scope: !65, file: !65, line: 251, type: !999, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !36)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !25, !25, !34, !73}
!1001 = !DILocalVariable(name: "status", arg: 1, scope: !998, file: !65, line: 251, type: !25)
!1002 = !DILocation(line: 251, column: 1, scope: !998)
!1003 = !DILocalVariable(name: "errnum", arg: 2, scope: !998, file: !65, line: 251, type: !25)
!1004 = !DILocalVariable(name: "message", arg: 3, scope: !998, file: !65, line: 251, type: !34)
!1005 = !DILocalVariable(name: "args", arg: 4, scope: !998, file: !65, line: 251, type: !73)
!1006 = !DILocation(line: 261, column: 3, scope: !998)
!1007 = !DILocation(line: 265, column: 7, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !998, file: !65, line: 265, column: 7)
!1009 = !DILocation(line: 265, column: 7, scope: !998)
!1010 = !DILocation(line: 266, column: 7, scope: !1008)
!1011 = !DILocation(line: 266, column: 5, scope: !1008)
!1012 = !DILocation(line: 272, column: 16, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !65, line: 268, column: 5)
!1014 = !DILocation(line: 272, column: 32, scope: !1013)
!1015 = !DILocation(line: 272, column: 7, scope: !1013)
!1016 = !DILocation(line: 276, column: 3, scope: !998)
!1017 = !DILocation(line: 282, column: 1, scope: !998)
!1018 = distinct !DISubprogram(name: "flush_stdout", scope: !65, file: !65, line: 163, type: !94, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !64, retainedNodes: !36)
!1019 = !DILocalVariable(name: "stdout_fd", scope: !1018, file: !65, line: 166, type: !25)
!1020 = !DILocation(line: 166, column: 7, scope: !1018)
!1021 = !DILocation(line: 172, column: 13, scope: !1018)
!1022 = !DILocation(line: 182, column: 12, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !65, line: 182, column: 7)
!1024 = !DILocation(line: 182, column: 9, scope: !1023)
!1025 = !DILocation(line: 182, column: 22, scope: !1023)
!1026 = !DILocation(line: 182, column: 34, scope: !1023)
!1027 = !DILocation(line: 182, column: 25, scope: !1023)
!1028 = !DILocation(line: 182, column: 7, scope: !1018)
!1029 = !DILocation(line: 184, column: 5, scope: !1023)
!1030 = !DILocation(line: 185, column: 1, scope: !1018)
!1031 = distinct !DISubprogram(name: "error_tail", scope: !65, file: !65, line: 219, type: !999, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !64, retainedNodes: !36)
!1032 = !DILocalVariable(name: "status", arg: 1, scope: !1031, file: !65, line: 219, type: !25)
!1033 = !DILocation(line: 219, column: 1, scope: !1031)
!1034 = !DILocalVariable(name: "errnum", arg: 2, scope: !1031, file: !65, line: 219, type: !25)
!1035 = !DILocalVariable(name: "message", arg: 3, scope: !1031, file: !65, line: 219, type: !34)
!1036 = !DILocalVariable(name: "args", arg: 4, scope: !1031, file: !65, line: 219, type: !73)
!1037 = !DILocation(line: 229, column: 13, scope: !1031)
!1038 = !DILocation(line: 229, column: 21, scope: !1031)
!1039 = !DILocation(line: 229, column: 3, scope: !1031)
!1040 = !DILocation(line: 232, column: 3, scope: !1031)
!1041 = !DILocation(line: 233, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1031, file: !65, line: 233, column: 7)
!1043 = !DILocation(line: 233, column: 7, scope: !1031)
!1044 = !DILocation(line: 234, column: 26, scope: !1042)
!1045 = !DILocation(line: 234, column: 5, scope: !1042)
!1046 = !DILocation(line: 238, column: 3, scope: !1031)
!1047 = !DILocation(line: 240, column: 3, scope: !1031)
!1048 = !DILocation(line: 241, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1031, file: !65, line: 241, column: 7)
!1050 = !DILocation(line: 241, column: 7, scope: !1031)
!1051 = !DILocation(line: 242, column: 11, scope: !1049)
!1052 = !DILocation(line: 242, column: 5, scope: !1049)
!1053 = !DILocation(line: 243, column: 1, scope: !1031)
!1054 = distinct !DISubprogram(name: "print_errno_message", scope: !65, file: !65, line: 188, type: !326, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !64, retainedNodes: !36)
!1055 = !DILocalVariable(name: "errnum", arg: 1, scope: !1054, file: !65, line: 188, type: !25)
!1056 = !DILocation(line: 188, column: 26, scope: !1054)
!1057 = !DILocalVariable(name: "s", scope: !1054, file: !65, line: 190, type: !34)
!1058 = !DILocation(line: 190, column: 15, scope: !1054)
!1059 = !DILocalVariable(name: "errbuf", scope: !1054, file: !65, line: 193, type: !1060)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !1061)
!1061 = !{!1062}
!1062 = !DISubrange(count: 1024)
!1063 = !DILocation(line: 193, column: 8, scope: !1054)
!1064 = !DILocation(line: 195, column: 21, scope: !1054)
!1065 = !DILocation(line: 195, column: 29, scope: !1054)
!1066 = !DILocation(line: 195, column: 7, scope: !1054)
!1067 = !DILocation(line: 195, column: 5, scope: !1054)
!1068 = !DILocation(line: 207, column: 9, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1054, file: !65, line: 207, column: 7)
!1070 = !DILocation(line: 207, column: 7, scope: !1054)
!1071 = !DILocation(line: 208, column: 9, scope: !1069)
!1072 = !DILocation(line: 208, column: 7, scope: !1069)
!1073 = !DILocation(line: 208, column: 5, scope: !1069)
!1074 = !DILocation(line: 214, column: 12, scope: !1054)
!1075 = !DILocation(line: 214, column: 28, scope: !1054)
!1076 = !DILocation(line: 214, column: 3, scope: !1054)
!1077 = !DILocation(line: 216, column: 1, scope: !1054)
!1078 = distinct !DISubprogram(name: "is_open", scope: !65, file: !65, line: 145, type: !1079, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !64, retainedNodes: !36)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!25, !25}
!1081 = !DILocalVariable(name: "fd", arg: 1, scope: !1078, file: !65, line: 145, type: !25)
!1082 = !DILocation(line: 145, column: 14, scope: !1078)
!1083 = !DILocation(line: 157, column: 22, scope: !1078)
!1084 = !DILocation(line: 157, column: 15, scope: !1078)
!1085 = !DILocation(line: 157, column: 12, scope: !1078)
!1086 = !DILocation(line: 157, column: 3, scope: !1078)
!1087 = distinct !DISubprogram(name: "error", scope: !65, file: !65, line: 285, type: !1088, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !36)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !25, !25, !34, null}
!1090 = !DILocalVariable(name: "status", arg: 1, scope: !1087, file: !65, line: 285, type: !25)
!1091 = !DILocation(line: 285, column: 12, scope: !1087)
!1092 = !DILocalVariable(name: "errnum", arg: 2, scope: !1087, file: !65, line: 285, type: !25)
!1093 = !DILocation(line: 285, column: 24, scope: !1087)
!1094 = !DILocalVariable(name: "message", arg: 3, scope: !1087, file: !65, line: 285, type: !34)
!1095 = !DILocation(line: 285, column: 44, scope: !1087)
!1096 = !DILocalVariable(name: "ap", scope: !1087, file: !65, line: 287, type: !73)
!1097 = !DILocation(line: 287, column: 11, scope: !1087)
!1098 = !DILocation(line: 288, column: 3, scope: !1087)
!1099 = !DILocation(line: 289, column: 3, scope: !1087)
!1100 = !DILocation(line: 290, column: 3, scope: !1087)
!1101 = !DILocation(line: 291, column: 1, scope: !1087)
!1102 = !DILocalVariable(name: "status", arg: 1, scope: !70, file: !65, line: 298, type: !25)
!1103 = !DILocation(line: 298, column: 1, scope: !70)
!1104 = !DILocalVariable(name: "errnum", arg: 2, scope: !70, file: !65, line: 298, type: !25)
!1105 = !DILocalVariable(name: "file_name", arg: 3, scope: !70, file: !65, line: 298, type: !34)
!1106 = !DILocalVariable(name: "line_number", arg: 4, scope: !70, file: !65, line: 298, type: !7)
!1107 = !DILocalVariable(name: "message", arg: 5, scope: !70, file: !65, line: 298, type: !34)
!1108 = !DILocalVariable(name: "args", arg: 6, scope: !70, file: !65, line: 298, type: !73)
!1109 = !DILocation(line: 302, column: 7, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !70, file: !65, line: 302, column: 7)
!1111 = !DILocation(line: 302, column: 7, scope: !70)
!1112 = !DILocation(line: 307, column: 11, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !65, line: 307, column: 11)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !65, line: 303, column: 5)
!1115 = !DILocation(line: 307, column: 30, scope: !1113)
!1116 = !DILocation(line: 307, column: 27, scope: !1113)
!1117 = !DILocation(line: 308, column: 11, scope: !1113)
!1118 = !DILocation(line: 308, column: 15, scope: !1113)
!1119 = !DILocation(line: 308, column: 28, scope: !1113)
!1120 = !DILocation(line: 308, column: 25, scope: !1113)
!1121 = !DILocation(line: 309, column: 15, scope: !1113)
!1122 = !DILocation(line: 309, column: 19, scope: !1113)
!1123 = !DILocation(line: 309, column: 33, scope: !1113)
!1124 = !DILocation(line: 310, column: 19, scope: !1113)
!1125 = !DILocation(line: 310, column: 22, scope: !1113)
!1126 = !DILocation(line: 310, column: 32, scope: !1113)
!1127 = !DILocation(line: 311, column: 19, scope: !1113)
!1128 = !DILocation(line: 311, column: 30, scope: !1113)
!1129 = !DILocation(line: 311, column: 45, scope: !1113)
!1130 = !DILocation(line: 311, column: 22, scope: !1113)
!1131 = !DILocation(line: 311, column: 56, scope: !1113)
!1132 = !DILocation(line: 307, column: 11, scope: !1114)
!1133 = !DILocation(line: 314, column: 9, scope: !1113)
!1134 = !DILocation(line: 316, column: 23, scope: !1114)
!1135 = !DILocation(line: 316, column: 21, scope: !1114)
!1136 = !DILocation(line: 317, column: 25, scope: !1114)
!1137 = !DILocation(line: 317, column: 23, scope: !1114)
!1138 = !DILocation(line: 318, column: 5, scope: !1114)
!1139 = !DILocation(line: 327, column: 3, scope: !70)
!1140 = !DILocation(line: 331, column: 7, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !70, file: !65, line: 331, column: 7)
!1142 = !DILocation(line: 331, column: 7, scope: !70)
!1143 = !DILocation(line: 332, column: 7, scope: !1141)
!1144 = !DILocation(line: 332, column: 5, scope: !1141)
!1145 = !DILocation(line: 338, column: 16, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !65, line: 334, column: 5)
!1147 = !DILocation(line: 338, column: 31, scope: !1146)
!1148 = !DILocation(line: 338, column: 7, scope: !1146)
!1149 = !DILocation(line: 346, column: 12, scope: !70)
!1150 = !DILocation(line: 346, column: 20, scope: !70)
!1151 = !DILocation(line: 346, column: 30, scope: !70)
!1152 = !DILocation(line: 347, column: 12, scope: !70)
!1153 = !DILocation(line: 347, column: 23, scope: !70)
!1154 = !DILocation(line: 346, column: 3, scope: !70)
!1155 = !DILocation(line: 350, column: 3, scope: !70)
!1156 = !DILocation(line: 356, column: 1, scope: !70)
!1157 = distinct !DISubprogram(name: "error_at_line", scope: !65, file: !65, line: 359, type: !1158, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !36)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !25, !25, !34, !7, !34, null}
!1160 = !DILocalVariable(name: "status", arg: 1, scope: !1157, file: !65, line: 359, type: !25)
!1161 = !DILocation(line: 359, column: 20, scope: !1157)
!1162 = !DILocalVariable(name: "errnum", arg: 2, scope: !1157, file: !65, line: 359, type: !25)
!1163 = !DILocation(line: 359, column: 32, scope: !1157)
!1164 = !DILocalVariable(name: "file_name", arg: 3, scope: !1157, file: !65, line: 359, type: !34)
!1165 = !DILocation(line: 359, column: 52, scope: !1157)
!1166 = !DILocalVariable(name: "line_number", arg: 4, scope: !1157, file: !65, line: 360, type: !7)
!1167 = !DILocation(line: 360, column: 29, scope: !1157)
!1168 = !DILocalVariable(name: "message", arg: 5, scope: !1157, file: !65, line: 360, type: !34)
!1169 = !DILocation(line: 360, column: 54, scope: !1157)
!1170 = !DILocalVariable(name: "ap", scope: !1157, file: !65, line: 362, type: !73)
!1171 = !DILocation(line: 362, column: 11, scope: !1157)
!1172 = !DILocation(line: 363, column: 3, scope: !1157)
!1173 = !DILocation(line: 364, column: 3, scope: !1157)
!1174 = !DILocation(line: 366, column: 3, scope: !1157)
!1175 = !DILocation(line: 367, column: 1, scope: !1157)
!1176 = distinct !DISubprogram(name: "fpurge", scope: !233, file: !233, line: 32, type: !1177, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !36)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!25, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1181, line: 7, baseType: !1182)
!1181 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1183, line: 49, size: 1728, elements: !1184)
!1183 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1200, !1202, !1203, !1204, !1206, !1207, !1209, !1213, !1216, !1218, !1221, !1224, !1225, !1226, !1227, !1228}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1182, file: !1183, line: 51, baseType: !25, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1182, file: !1183, line: 54, baseType: !22, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1182, file: !1183, line: 55, baseType: !22, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1182, file: !1183, line: 56, baseType: !22, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1182, file: !1183, line: 57, baseType: !22, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1182, file: !1183, line: 58, baseType: !22, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1182, file: !1183, line: 59, baseType: !22, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1182, file: !1183, line: 60, baseType: !22, size: 64, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1182, file: !1183, line: 61, baseType: !22, size: 64, offset: 512)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1182, file: !1183, line: 64, baseType: !22, size: 64, offset: 576)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1182, file: !1183, line: 65, baseType: !22, size: 64, offset: 640)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1182, file: !1183, line: 66, baseType: !22, size: 64, offset: 704)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1182, file: !1183, line: 68, baseType: !1198, size: 64, offset: 768)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1183, line: 36, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1182, file: !1183, line: 70, baseType: !1201, size: 64, offset: 832)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1182, file: !1183, line: 72, baseType: !25, size: 32, offset: 896)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1182, file: !1183, line: 73, baseType: !25, size: 32, offset: 928)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1182, file: !1183, line: 74, baseType: !1205, size: 64, offset: 960)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !231, line: 152, baseType: !262)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1182, file: !1183, line: 77, baseType: !26, size: 16, offset: 1024)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1182, file: !1183, line: 78, baseType: !1208, size: 8, offset: 1040)
!1208 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1182, file: !1183, line: 79, baseType: !1210, size: 8, offset: 1048)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !1211)
!1211 = !{!1212}
!1212 = !DISubrange(count: 1)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1182, file: !1183, line: 81, baseType: !1214, size: 64, offset: 1088)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1183, line: 43, baseType: null)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1182, file: !1183, line: 89, baseType: !1217, size: 64, offset: 1152)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !231, line: 153, baseType: !262)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1182, file: !1183, line: 91, baseType: !1219, size: 64, offset: 1216)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1183, line: 37, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1182, file: !1183, line: 92, baseType: !1222, size: 64, offset: 1280)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1183, line: 38, flags: DIFlagFwdDecl)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1182, file: !1183, line: 93, baseType: !1201, size: 64, offset: 1344)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1182, file: !1183, line: 94, baseType: !24, size: 64, offset: 1408)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1182, file: !1183, line: 95, baseType: !138, size: 64, offset: 1472)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1182, file: !1183, line: 96, baseType: !25, size: 32, offset: 1536)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1182, file: !1183, line: 98, baseType: !1229, size: 160, offset: 1568)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !1230)
!1230 = !{!1231}
!1231 = !DISubrange(count: 20)
!1232 = !DILocalVariable(name: "fp", arg: 1, scope: !1176, file: !233, line: 32, type: !1179)
!1233 = !DILocation(line: 32, column: 15, scope: !1176)
!1234 = !DILocation(line: 36, column: 13, scope: !1176)
!1235 = !DILocation(line: 36, column: 3, scope: !1176)
!1236 = !DILocation(line: 38, column: 3, scope: !1176)
!1237 = distinct !DISubprogram(name: "getprogname", scope: !235, file: !235, line: 54, type: !1238, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !234, retainedNodes: !36)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!34}
!1240 = !DILocation(line: 58, column: 10, scope: !1237)
!1241 = !DILocation(line: 58, column: 3, scope: !1237)
!1242 = distinct !DISubprogram(name: "set_program_name", scope: !99, file: !99, line: 37, type: !535, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !36)
!1243 = !DILocalVariable(name: "argv0", arg: 1, scope: !1242, file: !99, line: 37, type: !34)
!1244 = !DILocation(line: 37, column: 31, scope: !1242)
!1245 = !DILocalVariable(name: "slash", scope: !1242, file: !99, line: 44, type: !34)
!1246 = !DILocation(line: 44, column: 15, scope: !1242)
!1247 = !DILocation(line: 44, column: 32, scope: !1242)
!1248 = !DILocation(line: 44, column: 23, scope: !1242)
!1249 = !DILocalVariable(name: "base", scope: !1242, file: !99, line: 45, type: !34)
!1250 = !DILocation(line: 45, column: 15, scope: !1242)
!1251 = !DILocation(line: 45, column: 22, scope: !1242)
!1252 = !DILocation(line: 45, column: 30, scope: !1242)
!1253 = !DILocation(line: 45, column: 36, scope: !1242)
!1254 = !DILocation(line: 45, column: 42, scope: !1242)
!1255 = !DILocation(line: 46, column: 12, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1242, file: !99, line: 46, column: 7)
!1257 = !DILocation(line: 46, column: 19, scope: !1256)
!1258 = !DILocation(line: 46, column: 17, scope: !1256)
!1259 = !DILocation(line: 46, column: 9, scope: !1256)
!1260 = !DILocation(line: 46, column: 25, scope: !1256)
!1261 = !DILocation(line: 46, column: 35, scope: !1256)
!1262 = !DILocation(line: 46, column: 40, scope: !1256)
!1263 = !DILocation(line: 46, column: 28, scope: !1256)
!1264 = !DILocation(line: 46, column: 7, scope: !1242)
!1265 = !DILocation(line: 48, column: 15, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1256, file: !99, line: 47, column: 5)
!1267 = !DILocation(line: 48, column: 13, scope: !1266)
!1268 = !DILocation(line: 49, column: 20, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !99, line: 49, column: 11)
!1270 = !DILocation(line: 49, column: 11, scope: !1269)
!1271 = !DILocation(line: 49, column: 36, scope: !1269)
!1272 = !DILocation(line: 49, column: 11, scope: !1266)
!1273 = !DILocation(line: 51, column: 16, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !99, line: 50, column: 9)
!1275 = !DILocation(line: 52, column: 19, scope: !1274)
!1276 = !DILocation(line: 52, column: 17, scope: !1274)
!1277 = !DILocation(line: 53, column: 9, scope: !1274)
!1278 = !DILocation(line: 54, column: 5, scope: !1266)
!1279 = !DILocation(line: 65, column: 18, scope: !1242)
!1280 = !DILocation(line: 65, column: 16, scope: !1242)
!1281 = !DILocation(line: 71, column: 38, scope: !1242)
!1282 = !DILocation(line: 71, column: 27, scope: !1242)
!1283 = !DILocation(line: 74, column: 44, scope: !1242)
!1284 = !DILocation(line: 74, column: 33, scope: !1242)
!1285 = !DILocation(line: 76, column: 1, scope: !1242)
!1286 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !104, file: !105, line: 38, type: !34)
!1287 = !DILocation(line: 38, column: 31, scope: !104)
!1288 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !104, file: !105, line: 38, type: !34)
!1289 = !DILocation(line: 38, column: 66, scope: !104)
!1290 = !DILocalVariable(name: "translation", scope: !104, file: !105, line: 40, type: !34)
!1291 = !DILocation(line: 40, column: 15, scope: !104)
!1292 = !DILocation(line: 40, column: 38, scope: !104)
!1293 = !DILocation(line: 40, column: 29, scope: !104)
!1294 = !DILocation(line: 41, column: 7, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !104, file: !105, line: 41, column: 7)
!1296 = !DILocation(line: 41, column: 22, scope: !1295)
!1297 = !DILocation(line: 41, column: 19, scope: !1295)
!1298 = !DILocation(line: 41, column: 7, scope: !104)
!1299 = !DILocation(line: 42, column: 12, scope: !1295)
!1300 = !DILocation(line: 42, column: 5, scope: !1295)
!1301 = !DILocalVariable(name: "w", scope: !104, file: !105, line: 47, type: !1302)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1303, line: 37, baseType: !1304)
!1303 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !231, line: 57, baseType: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !231, line: 42, baseType: !7)
!1306 = !DILocation(line: 47, column: 12, scope: !104)
!1307 = !DILocalVariable(name: "mbs", scope: !104, file: !105, line: 48, type: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !212, line: 6, baseType: !1309)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !214, line: 21, baseType: !1310)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 13, size: 64, elements: !1311)
!1311 = !{!1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1310, file: !214, line: 15, baseType: !25, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1310, file: !214, line: 20, baseType: !1314, size: 32, offset: 32)
!1314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1310, file: !214, line: 16, size: 32, elements: !1315)
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1314, file: !214, line: 18, baseType: !7, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1314, file: !214, line: 19, baseType: !223, size: 32)
!1318 = !DILocation(line: 48, column: 13, scope: !104)
!1319 = !DILocation(line: 48, column: 18, scope: !104)
!1320 = !DILocation(line: 49, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !104, file: !105, line: 49, column: 7)
!1322 = !DILocation(line: 49, column: 39, scope: !1321)
!1323 = !DILocation(line: 49, column: 44, scope: !1321)
!1324 = !DILocation(line: 49, column: 47, scope: !1321)
!1325 = !DILocation(line: 49, column: 49, scope: !1321)
!1326 = !DILocation(line: 49, column: 7, scope: !104)
!1327 = !DILocation(line: 50, column: 12, scope: !1321)
!1328 = !DILocation(line: 50, column: 5, scope: !1321)
!1329 = !DILocation(line: 53, column: 10, scope: !104)
!1330 = !DILocation(line: 53, column: 3, scope: !104)
!1331 = !DILocation(line: 54, column: 1, scope: !104)
!1332 = distinct !DISubprogram(name: "clone_quoting_options", scope: !116, file: !116, line: 113, type: !1333, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!1335, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1336 = !DILocalVariable(name: "o", arg: 1, scope: !1332, file: !116, line: 113, type: !1335)
!1337 = !DILocation(line: 113, column: 48, scope: !1332)
!1338 = !DILocalVariable(name: "saved_errno", scope: !1332, file: !116, line: 115, type: !25)
!1339 = !DILocation(line: 115, column: 7, scope: !1332)
!1340 = !DILocation(line: 115, column: 21, scope: !1332)
!1341 = !DILocalVariable(name: "p", scope: !1332, file: !116, line: 116, type: !1335)
!1342 = !DILocation(line: 116, column: 27, scope: !1332)
!1343 = !DILocation(line: 116, column: 40, scope: !1332)
!1344 = !DILocation(line: 116, column: 44, scope: !1332)
!1345 = !DILocation(line: 116, column: 31, scope: !1332)
!1346 = !DILocation(line: 118, column: 11, scope: !1332)
!1347 = !DILocation(line: 118, column: 3, scope: !1332)
!1348 = !DILocation(line: 118, column: 9, scope: !1332)
!1349 = !DILocation(line: 119, column: 10, scope: !1332)
!1350 = !DILocation(line: 119, column: 3, scope: !1332)
!1351 = distinct !DISubprogram(name: "get_quoting_style", scope: !116, file: !116, line: 124, type: !1352, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!118, !1354}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!1356 = !DILocalVariable(name: "o", arg: 1, scope: !1351, file: !116, line: 124, type: !1354)
!1357 = !DILocation(line: 124, column: 50, scope: !1351)
!1358 = !DILocation(line: 126, column: 11, scope: !1351)
!1359 = !DILocation(line: 126, column: 15, scope: !1351)
!1360 = !DILocation(line: 126, column: 46, scope: !1351)
!1361 = !DILocation(line: 126, column: 3, scope: !1351)
!1362 = distinct !DISubprogram(name: "set_quoting_style", scope: !116, file: !116, line: 132, type: !1363, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !1335, !118}
!1365 = !DILocalVariable(name: "o", arg: 1, scope: !1362, file: !116, line: 132, type: !1335)
!1366 = !DILocation(line: 132, column: 44, scope: !1362)
!1367 = !DILocalVariable(name: "s", arg: 2, scope: !1362, file: !116, line: 132, type: !118)
!1368 = !DILocation(line: 132, column: 66, scope: !1362)
!1369 = !DILocation(line: 134, column: 47, scope: !1362)
!1370 = !DILocation(line: 134, column: 4, scope: !1362)
!1371 = !DILocation(line: 134, column: 8, scope: !1362)
!1372 = !DILocation(line: 134, column: 39, scope: !1362)
!1373 = !DILocation(line: 134, column: 45, scope: !1362)
!1374 = !DILocation(line: 135, column: 1, scope: !1362)
!1375 = distinct !DISubprogram(name: "set_char_quoting", scope: !116, file: !116, line: 143, type: !1376, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!25, !1335, !23, !25}
!1378 = !DILocalVariable(name: "o", arg: 1, scope: !1375, file: !116, line: 143, type: !1335)
!1379 = !DILocation(line: 143, column: 43, scope: !1375)
!1380 = !DILocalVariable(name: "c", arg: 2, scope: !1375, file: !116, line: 143, type: !23)
!1381 = !DILocation(line: 143, column: 51, scope: !1375)
!1382 = !DILocalVariable(name: "i", arg: 3, scope: !1375, file: !116, line: 143, type: !25)
!1383 = !DILocation(line: 143, column: 58, scope: !1375)
!1384 = !DILocalVariable(name: "uc", scope: !1375, file: !116, line: 145, type: !209)
!1385 = !DILocation(line: 145, column: 17, scope: !1375)
!1386 = !DILocation(line: 145, column: 22, scope: !1375)
!1387 = !DILocalVariable(name: "p", scope: !1375, file: !116, line: 146, type: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1389 = !DILocation(line: 146, column: 17, scope: !1375)
!1390 = !DILocation(line: 147, column: 6, scope: !1375)
!1391 = !DILocation(line: 147, column: 10, scope: !1375)
!1392 = !DILocation(line: 147, column: 41, scope: !1375)
!1393 = !DILocation(line: 147, column: 5, scope: !1375)
!1394 = !DILocation(line: 147, column: 59, scope: !1375)
!1395 = !DILocation(line: 147, column: 62, scope: !1375)
!1396 = !DILocation(line: 147, column: 57, scope: !1375)
!1397 = !DILocalVariable(name: "shift", scope: !1375, file: !116, line: 148, type: !25)
!1398 = !DILocation(line: 148, column: 7, scope: !1375)
!1399 = !DILocation(line: 148, column: 15, scope: !1375)
!1400 = !DILocation(line: 148, column: 18, scope: !1375)
!1401 = !DILocalVariable(name: "r", scope: !1375, file: !116, line: 149, type: !7)
!1402 = !DILocation(line: 149, column: 16, scope: !1375)
!1403 = !DILocation(line: 149, column: 22, scope: !1375)
!1404 = !DILocation(line: 149, column: 21, scope: !1375)
!1405 = !DILocation(line: 149, column: 27, scope: !1375)
!1406 = !DILocation(line: 149, column: 24, scope: !1375)
!1407 = !DILocation(line: 149, column: 34, scope: !1375)
!1408 = !DILocation(line: 150, column: 11, scope: !1375)
!1409 = !DILocation(line: 150, column: 13, scope: !1375)
!1410 = !DILocation(line: 150, column: 21, scope: !1375)
!1411 = !DILocation(line: 150, column: 19, scope: !1375)
!1412 = !DILocation(line: 150, column: 27, scope: !1375)
!1413 = !DILocation(line: 150, column: 24, scope: !1375)
!1414 = !DILocation(line: 150, column: 4, scope: !1375)
!1415 = !DILocation(line: 150, column: 6, scope: !1375)
!1416 = !DILocation(line: 151, column: 10, scope: !1375)
!1417 = !DILocation(line: 151, column: 3, scope: !1375)
!1418 = distinct !DISubprogram(name: "set_quoting_flags", scope: !116, file: !116, line: 159, type: !1419, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!25, !1335, !25}
!1421 = !DILocalVariable(name: "o", arg: 1, scope: !1418, file: !116, line: 159, type: !1335)
!1422 = !DILocation(line: 159, column: 44, scope: !1418)
!1423 = !DILocalVariable(name: "i", arg: 2, scope: !1418, file: !116, line: 159, type: !25)
!1424 = !DILocation(line: 159, column: 51, scope: !1418)
!1425 = !DILocation(line: 161, column: 8, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1418, file: !116, line: 161, column: 7)
!1427 = !DILocation(line: 161, column: 7, scope: !1418)
!1428 = !DILocation(line: 162, column: 7, scope: !1426)
!1429 = !DILocation(line: 162, column: 5, scope: !1426)
!1430 = !DILocalVariable(name: "r", scope: !1418, file: !116, line: 163, type: !25)
!1431 = !DILocation(line: 163, column: 7, scope: !1418)
!1432 = !DILocation(line: 163, column: 11, scope: !1418)
!1433 = !DILocation(line: 163, column: 14, scope: !1418)
!1434 = !DILocation(line: 164, column: 14, scope: !1418)
!1435 = !DILocation(line: 164, column: 3, scope: !1418)
!1436 = !DILocation(line: 164, column: 6, scope: !1418)
!1437 = !DILocation(line: 164, column: 12, scope: !1418)
!1438 = !DILocation(line: 165, column: 10, scope: !1418)
!1439 = !DILocation(line: 165, column: 3, scope: !1418)
!1440 = distinct !DISubprogram(name: "set_custom_quoting", scope: !116, file: !116, line: 169, type: !1441, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !1335, !34, !34}
!1443 = !DILocalVariable(name: "o", arg: 1, scope: !1440, file: !116, line: 169, type: !1335)
!1444 = !DILocation(line: 169, column: 45, scope: !1440)
!1445 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1440, file: !116, line: 170, type: !34)
!1446 = !DILocation(line: 170, column: 33, scope: !1440)
!1447 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1440, file: !116, line: 170, type: !34)
!1448 = !DILocation(line: 170, column: 57, scope: !1440)
!1449 = !DILocation(line: 172, column: 8, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1440, file: !116, line: 172, column: 7)
!1451 = !DILocation(line: 172, column: 7, scope: !1440)
!1452 = !DILocation(line: 173, column: 7, scope: !1450)
!1453 = !DILocation(line: 173, column: 5, scope: !1450)
!1454 = !DILocation(line: 174, column: 3, scope: !1440)
!1455 = !DILocation(line: 174, column: 6, scope: !1440)
!1456 = !DILocation(line: 174, column: 12, scope: !1440)
!1457 = !DILocation(line: 175, column: 8, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1440, file: !116, line: 175, column: 7)
!1459 = !DILocation(line: 175, column: 19, scope: !1458)
!1460 = !DILocation(line: 175, column: 23, scope: !1458)
!1461 = !DILocation(line: 175, column: 7, scope: !1440)
!1462 = !DILocation(line: 176, column: 5, scope: !1458)
!1463 = !DILocation(line: 177, column: 19, scope: !1440)
!1464 = !DILocation(line: 177, column: 3, scope: !1440)
!1465 = !DILocation(line: 177, column: 6, scope: !1440)
!1466 = !DILocation(line: 177, column: 17, scope: !1440)
!1467 = !DILocation(line: 178, column: 20, scope: !1440)
!1468 = !DILocation(line: 178, column: 3, scope: !1440)
!1469 = !DILocation(line: 178, column: 6, scope: !1440)
!1470 = !DILocation(line: 178, column: 18, scope: !1440)
!1471 = !DILocation(line: 179, column: 1, scope: !1440)
!1472 = distinct !DISubprogram(name: "quotearg_buffer", scope: !116, file: !116, line: 774, type: !1473, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!138, !22, !138, !34, !138, !1354}
!1475 = !DILocalVariable(name: "buffer", arg: 1, scope: !1472, file: !116, line: 774, type: !22)
!1476 = !DILocation(line: 774, column: 24, scope: !1472)
!1477 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1472, file: !116, line: 774, type: !138)
!1478 = !DILocation(line: 774, column: 39, scope: !1472)
!1479 = !DILocalVariable(name: "arg", arg: 3, scope: !1472, file: !116, line: 775, type: !34)
!1480 = !DILocation(line: 775, column: 30, scope: !1472)
!1481 = !DILocalVariable(name: "argsize", arg: 4, scope: !1472, file: !116, line: 775, type: !138)
!1482 = !DILocation(line: 775, column: 42, scope: !1472)
!1483 = !DILocalVariable(name: "o", arg: 5, scope: !1472, file: !116, line: 776, type: !1354)
!1484 = !DILocation(line: 776, column: 48, scope: !1472)
!1485 = !DILocalVariable(name: "p", scope: !1472, file: !116, line: 778, type: !1354)
!1486 = !DILocation(line: 778, column: 33, scope: !1472)
!1487 = !DILocation(line: 778, column: 37, scope: !1472)
!1488 = !DILocation(line: 778, column: 41, scope: !1472)
!1489 = !DILocalVariable(name: "saved_errno", scope: !1472, file: !116, line: 779, type: !25)
!1490 = !DILocation(line: 779, column: 7, scope: !1472)
!1491 = !DILocation(line: 779, column: 21, scope: !1472)
!1492 = !DILocalVariable(name: "r", scope: !1472, file: !116, line: 780, type: !138)
!1493 = !DILocation(line: 780, column: 10, scope: !1472)
!1494 = !DILocation(line: 780, column: 40, scope: !1472)
!1495 = !DILocation(line: 780, column: 48, scope: !1472)
!1496 = !DILocation(line: 780, column: 60, scope: !1472)
!1497 = !DILocation(line: 780, column: 65, scope: !1472)
!1498 = !DILocation(line: 781, column: 40, scope: !1472)
!1499 = !DILocation(line: 781, column: 43, scope: !1472)
!1500 = !DILocation(line: 781, column: 50, scope: !1472)
!1501 = !DILocation(line: 781, column: 53, scope: !1472)
!1502 = !DILocation(line: 781, column: 60, scope: !1472)
!1503 = !DILocation(line: 781, column: 63, scope: !1472)
!1504 = !DILocation(line: 782, column: 40, scope: !1472)
!1505 = !DILocation(line: 782, column: 43, scope: !1472)
!1506 = !DILocation(line: 782, column: 55, scope: !1472)
!1507 = !DILocation(line: 782, column: 58, scope: !1472)
!1508 = !DILocation(line: 780, column: 14, scope: !1472)
!1509 = !DILocation(line: 783, column: 11, scope: !1472)
!1510 = !DILocation(line: 783, column: 3, scope: !1472)
!1511 = !DILocation(line: 783, column: 9, scope: !1472)
!1512 = !DILocation(line: 784, column: 10, scope: !1472)
!1513 = !DILocation(line: 784, column: 3, scope: !1472)
!1514 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !116, file: !116, line: 251, type: !1515, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!138, !22, !138, !34, !138, !118, !25, !1517, !34, !34}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1519 = !DILocalVariable(name: "buffer", arg: 1, scope: !1514, file: !116, line: 251, type: !22)
!1520 = !DILocation(line: 251, column: 33, scope: !1514)
!1521 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1514, file: !116, line: 251, type: !138)
!1522 = !DILocation(line: 251, column: 48, scope: !1514)
!1523 = !DILocalVariable(name: "arg", arg: 3, scope: !1514, file: !116, line: 252, type: !34)
!1524 = !DILocation(line: 252, column: 39, scope: !1514)
!1525 = !DILocalVariable(name: "argsize", arg: 4, scope: !1514, file: !116, line: 252, type: !138)
!1526 = !DILocation(line: 252, column: 51, scope: !1514)
!1527 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1514, file: !116, line: 253, type: !118)
!1528 = !DILocation(line: 253, column: 46, scope: !1514)
!1529 = !DILocalVariable(name: "flags", arg: 6, scope: !1514, file: !116, line: 253, type: !25)
!1530 = !DILocation(line: 253, column: 65, scope: !1514)
!1531 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1514, file: !116, line: 254, type: !1517)
!1532 = !DILocation(line: 254, column: 47, scope: !1514)
!1533 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1514, file: !116, line: 255, type: !34)
!1534 = !DILocation(line: 255, column: 39, scope: !1514)
!1535 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1514, file: !116, line: 256, type: !34)
!1536 = !DILocation(line: 256, column: 39, scope: !1514)
!1537 = !DILocalVariable(name: "unibyte_locale", scope: !1514, file: !116, line: 258, type: !61)
!1538 = !DILocation(line: 258, column: 8, scope: !1514)
!1539 = !DILocation(line: 258, column: 25, scope: !1514)
!1540 = !DILocation(line: 258, column: 36, scope: !1514)
!1541 = !DILocalVariable(name: "len", scope: !1514, file: !116, line: 260, type: !138)
!1542 = !DILocation(line: 260, column: 10, scope: !1514)
!1543 = !DILocalVariable(name: "orig_buffersize", scope: !1514, file: !116, line: 261, type: !138)
!1544 = !DILocation(line: 261, column: 10, scope: !1514)
!1545 = !DILocalVariable(name: "quote_string", scope: !1514, file: !116, line: 262, type: !34)
!1546 = !DILocation(line: 262, column: 15, scope: !1514)
!1547 = !DILocalVariable(name: "quote_string_len", scope: !1514, file: !116, line: 263, type: !138)
!1548 = !DILocation(line: 263, column: 10, scope: !1514)
!1549 = !DILocalVariable(name: "backslash_escapes", scope: !1514, file: !116, line: 264, type: !61)
!1550 = !DILocation(line: 264, column: 8, scope: !1514)
!1551 = !DILocalVariable(name: "elide_outer_quotes", scope: !1514, file: !116, line: 265, type: !61)
!1552 = !DILocation(line: 265, column: 8, scope: !1514)
!1553 = !DILocation(line: 265, column: 30, scope: !1514)
!1554 = !DILocation(line: 265, column: 36, scope: !1514)
!1555 = !DILocation(line: 265, column: 61, scope: !1514)
!1556 = !DILocalVariable(name: "encountered_single_quote", scope: !1514, file: !116, line: 266, type: !61)
!1557 = !DILocation(line: 266, column: 8, scope: !1514)
!1558 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1514, file: !116, line: 267, type: !61)
!1559 = !DILocation(line: 267, column: 8, scope: !1514)
!1560 = !DILocation(line: 267, column: 3, scope: !1514)
!1561 = !DILabel(scope: !1514, name: "process_input", file: !116, line: 308)
!1562 = !DILocation(line: 308, column: 2, scope: !1514)
!1563 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1514, file: !116, line: 309, type: !61)
!1564 = !DILocation(line: 309, column: 8, scope: !1514)
!1565 = !DILocation(line: 311, column: 11, scope: !1514)
!1566 = !DILocation(line: 311, column: 3, scope: !1514)
!1567 = !DILocation(line: 314, column: 21, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1514, file: !116, line: 312, column: 5)
!1569 = !DILocation(line: 315, column: 26, scope: !1568)
!1570 = !DILocation(line: 315, column: 7, scope: !1568)
!1571 = !DILocation(line: 318, column: 12, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !116, line: 318, column: 11)
!1573 = !DILocation(line: 318, column: 11, scope: !1568)
!1574 = !DILocation(line: 319, column: 9, scope: !1572)
!1575 = !DILocation(line: 319, column: 9, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !116, line: 319, column: 9)
!1577 = distinct !DILexicalBlock(scope: !1572, file: !116, line: 319, column: 9)
!1578 = !DILocation(line: 319, column: 9, scope: !1577)
!1579 = !DILocation(line: 320, column: 25, scope: !1568)
!1580 = !DILocation(line: 321, column: 20, scope: !1568)
!1581 = !DILocation(line: 322, column: 24, scope: !1568)
!1582 = !DILocation(line: 323, column: 7, scope: !1568)
!1583 = !DILocation(line: 326, column: 25, scope: !1568)
!1584 = !DILocation(line: 327, column: 26, scope: !1568)
!1585 = !DILocation(line: 328, column: 7, scope: !1568)
!1586 = !DILocation(line: 334, column: 13, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !116, line: 334, column: 13)
!1588 = distinct !DILexicalBlock(scope: !1568, file: !116, line: 333, column: 7)
!1589 = !DILocation(line: 334, column: 27, scope: !1587)
!1590 = !DILocation(line: 334, column: 13, scope: !1588)
!1591 = !DILocation(line: 357, column: 50, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1587, file: !116, line: 335, column: 11)
!1593 = !DILocation(line: 357, column: 26, scope: !1592)
!1594 = !DILocation(line: 357, column: 24, scope: !1592)
!1595 = !DILocation(line: 358, column: 51, scope: !1592)
!1596 = !DILocation(line: 358, column: 27, scope: !1592)
!1597 = !DILocation(line: 358, column: 25, scope: !1592)
!1598 = !DILocation(line: 359, column: 11, scope: !1592)
!1599 = !DILocation(line: 360, column: 14, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1588, file: !116, line: 360, column: 13)
!1601 = !DILocation(line: 360, column: 13, scope: !1588)
!1602 = !DILocalVariable(name: "lq", scope: !1603, file: !116, line: 361, type: !34)
!1603 = distinct !DILexicalBlock(scope: !1600, file: !116, line: 361, column: 11)
!1604 = !DILocation(line: 361, column: 28, scope: !1603)
!1605 = !DILocation(line: 361, column: 33, scope: !1603)
!1606 = !DILocation(line: 361, column: 16, scope: !1603)
!1607 = !DILocation(line: 361, column: 46, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !116, line: 361, column: 11)
!1609 = !DILocation(line: 361, column: 45, scope: !1608)
!1610 = !DILocation(line: 361, column: 11, scope: !1603)
!1611 = !DILocation(line: 362, column: 13, scope: !1608)
!1612 = !DILocation(line: 362, column: 13, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !116, line: 362, column: 13)
!1614 = distinct !DILexicalBlock(scope: !1608, file: !116, line: 362, column: 13)
!1615 = !DILocation(line: 362, column: 13, scope: !1614)
!1616 = !DILocation(line: 361, column: 52, scope: !1608)
!1617 = !DILocation(line: 361, column: 11, scope: !1608)
!1618 = distinct !{!1618, !1610, !1619, !418}
!1619 = !DILocation(line: 362, column: 13, scope: !1603)
!1620 = !DILocation(line: 363, column: 27, scope: !1588)
!1621 = !DILocation(line: 364, column: 24, scope: !1588)
!1622 = !DILocation(line: 364, column: 22, scope: !1588)
!1623 = !DILocation(line: 365, column: 36, scope: !1588)
!1624 = !DILocation(line: 365, column: 28, scope: !1588)
!1625 = !DILocation(line: 365, column: 26, scope: !1588)
!1626 = !DILocation(line: 367, column: 7, scope: !1568)
!1627 = !DILocation(line: 370, column: 25, scope: !1568)
!1628 = !DILocation(line: 370, column: 7, scope: !1568)
!1629 = !DILocation(line: 373, column: 26, scope: !1568)
!1630 = !DILocation(line: 373, column: 7, scope: !1568)
!1631 = !DILocation(line: 376, column: 12, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1568, file: !116, line: 376, column: 11)
!1633 = !DILocation(line: 376, column: 11, scope: !1568)
!1634 = !DILocation(line: 377, column: 27, scope: !1632)
!1635 = !DILocation(line: 377, column: 9, scope: !1632)
!1636 = !DILocation(line: 380, column: 21, scope: !1568)
!1637 = !DILocation(line: 381, column: 12, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1568, file: !116, line: 381, column: 11)
!1639 = !DILocation(line: 381, column: 11, scope: !1568)
!1640 = !DILocation(line: 382, column: 9, scope: !1638)
!1641 = !DILocation(line: 382, column: 9, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !116, line: 382, column: 9)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !116, line: 382, column: 9)
!1644 = !DILocation(line: 382, column: 9, scope: !1643)
!1645 = !DILocation(line: 383, column: 20, scope: !1568)
!1646 = !DILocation(line: 384, column: 24, scope: !1568)
!1647 = !DILocation(line: 385, column: 7, scope: !1568)
!1648 = !DILocation(line: 388, column: 26, scope: !1568)
!1649 = !DILocation(line: 389, column: 7, scope: !1568)
!1650 = !DILocation(line: 392, column: 7, scope: !1568)
!1651 = !DILocalVariable(name: "i", scope: !1652, file: !116, line: 395, type: !138)
!1652 = distinct !DILexicalBlock(scope: !1514, file: !116, line: 395, column: 3)
!1653 = !DILocation(line: 395, column: 15, scope: !1652)
!1654 = !DILocation(line: 395, column: 8, scope: !1652)
!1655 = !DILocation(line: 395, column: 26, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !116, line: 395, column: 3)
!1657 = !DILocation(line: 395, column: 34, scope: !1656)
!1658 = !DILocation(line: 395, column: 48, scope: !1656)
!1659 = !DILocation(line: 395, column: 52, scope: !1656)
!1660 = !DILocation(line: 395, column: 55, scope: !1656)
!1661 = !DILocation(line: 395, column: 65, scope: !1656)
!1662 = !DILocation(line: 395, column: 70, scope: !1656)
!1663 = !DILocation(line: 395, column: 67, scope: !1656)
!1664 = !DILocation(line: 395, column: 23, scope: !1656)
!1665 = !DILocation(line: 395, column: 3, scope: !1652)
!1666 = !DILocalVariable(name: "is_right_quote", scope: !1667, file: !116, line: 397, type: !61)
!1667 = distinct !DILexicalBlock(scope: !1656, file: !116, line: 396, column: 5)
!1668 = !DILocation(line: 397, column: 12, scope: !1667)
!1669 = !DILocalVariable(name: "escaping", scope: !1667, file: !116, line: 398, type: !61)
!1670 = !DILocation(line: 398, column: 12, scope: !1667)
!1671 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1667, file: !116, line: 399, type: !61)
!1672 = !DILocation(line: 399, column: 12, scope: !1667)
!1673 = !DILocation(line: 401, column: 11, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1667, file: !116, line: 401, column: 11)
!1675 = !DILocation(line: 402, column: 11, scope: !1674)
!1676 = !DILocation(line: 402, column: 14, scope: !1674)
!1677 = !DILocation(line: 402, column: 28, scope: !1674)
!1678 = !DILocation(line: 403, column: 11, scope: !1674)
!1679 = !DILocation(line: 403, column: 14, scope: !1674)
!1680 = !DILocation(line: 404, column: 11, scope: !1674)
!1681 = !DILocation(line: 404, column: 15, scope: !1674)
!1682 = !DILocation(line: 404, column: 19, scope: !1674)
!1683 = !DILocation(line: 404, column: 17, scope: !1674)
!1684 = !DILocation(line: 405, column: 19, scope: !1674)
!1685 = !DILocation(line: 405, column: 27, scope: !1674)
!1686 = !DILocation(line: 405, column: 39, scope: !1674)
!1687 = !DILocation(line: 405, column: 46, scope: !1674)
!1688 = !DILocation(line: 405, column: 44, scope: !1674)
!1689 = !DILocation(line: 409, column: 40, scope: !1674)
!1690 = !DILocation(line: 409, column: 32, scope: !1674)
!1691 = !DILocation(line: 409, column: 30, scope: !1674)
!1692 = !DILocation(line: 409, column: 48, scope: !1674)
!1693 = !DILocation(line: 405, column: 15, scope: !1674)
!1694 = !DILocation(line: 410, column: 11, scope: !1674)
!1695 = !DILocation(line: 410, column: 21, scope: !1674)
!1696 = !DILocation(line: 410, column: 27, scope: !1674)
!1697 = !DILocation(line: 410, column: 25, scope: !1674)
!1698 = !DILocation(line: 410, column: 30, scope: !1674)
!1699 = !DILocation(line: 410, column: 44, scope: !1674)
!1700 = !DILocation(line: 410, column: 14, scope: !1674)
!1701 = !DILocation(line: 401, column: 11, scope: !1667)
!1702 = !DILocation(line: 412, column: 15, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !116, line: 412, column: 15)
!1704 = distinct !DILexicalBlock(scope: !1674, file: !116, line: 411, column: 9)
!1705 = !DILocation(line: 412, column: 15, scope: !1704)
!1706 = !DILocation(line: 413, column: 13, scope: !1703)
!1707 = !DILocation(line: 414, column: 26, scope: !1704)
!1708 = !DILocation(line: 415, column: 9, scope: !1704)
!1709 = !DILocalVariable(name: "c", scope: !1667, file: !116, line: 417, type: !209)
!1710 = !DILocation(line: 417, column: 21, scope: !1667)
!1711 = !DILocation(line: 417, column: 25, scope: !1667)
!1712 = !DILocation(line: 417, column: 29, scope: !1667)
!1713 = !DILocation(line: 418, column: 15, scope: !1667)
!1714 = !DILocation(line: 418, column: 7, scope: !1667)
!1715 = !DILocation(line: 421, column: 15, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !116, line: 421, column: 15)
!1717 = distinct !DILexicalBlock(scope: !1667, file: !116, line: 419, column: 9)
!1718 = !DILocation(line: 421, column: 15, scope: !1717)
!1719 = !DILocation(line: 423, column: 15, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !116, line: 422, column: 13)
!1721 = !DILocation(line: 423, column: 15, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !116, line: 423, column: 15)
!1723 = distinct !DILexicalBlock(scope: !1720, file: !116, line: 423, column: 15)
!1724 = !DILocation(line: 423, column: 15, scope: !1723)
!1725 = !DILocation(line: 423, column: 15, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !116, line: 423, column: 15)
!1727 = !DILocation(line: 423, column: 15, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1726, file: !116, line: 423, column: 15)
!1729 = !DILocation(line: 423, column: 15, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !116, line: 423, column: 15)
!1731 = distinct !DILexicalBlock(scope: !1728, file: !116, line: 423, column: 15)
!1732 = !DILocation(line: 423, column: 15, scope: !1731)
!1733 = !DILocation(line: 423, column: 15, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !116, line: 423, column: 15)
!1735 = distinct !DILexicalBlock(scope: !1728, file: !116, line: 423, column: 15)
!1736 = !DILocation(line: 423, column: 15, scope: !1735)
!1737 = !DILocation(line: 423, column: 15, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !116, line: 423, column: 15)
!1739 = distinct !DILexicalBlock(scope: !1728, file: !116, line: 423, column: 15)
!1740 = !DILocation(line: 423, column: 15, scope: !1739)
!1741 = !DILocation(line: 423, column: 15, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !116, line: 423, column: 15)
!1743 = distinct !DILexicalBlock(scope: !1723, file: !116, line: 423, column: 15)
!1744 = !DILocation(line: 423, column: 15, scope: !1743)
!1745 = !DILocation(line: 430, column: 19, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1720, file: !116, line: 430, column: 19)
!1747 = !DILocation(line: 430, column: 33, scope: !1746)
!1748 = !DILocation(line: 431, column: 19, scope: !1746)
!1749 = !DILocation(line: 431, column: 22, scope: !1746)
!1750 = !DILocation(line: 431, column: 24, scope: !1746)
!1751 = !DILocation(line: 431, column: 30, scope: !1746)
!1752 = !DILocation(line: 431, column: 28, scope: !1746)
!1753 = !DILocation(line: 431, column: 38, scope: !1746)
!1754 = !DILocation(line: 431, column: 48, scope: !1746)
!1755 = !DILocation(line: 431, column: 52, scope: !1746)
!1756 = !DILocation(line: 431, column: 54, scope: !1746)
!1757 = !DILocation(line: 431, column: 45, scope: !1746)
!1758 = !DILocation(line: 431, column: 59, scope: !1746)
!1759 = !DILocation(line: 431, column: 62, scope: !1746)
!1760 = !DILocation(line: 431, column: 66, scope: !1746)
!1761 = !DILocation(line: 431, column: 68, scope: !1746)
!1762 = !DILocation(line: 431, column: 73, scope: !1746)
!1763 = !DILocation(line: 430, column: 19, scope: !1720)
!1764 = !DILocation(line: 433, column: 19, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1746, file: !116, line: 432, column: 17)
!1766 = !DILocation(line: 433, column: 19, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !116, line: 433, column: 19)
!1768 = distinct !DILexicalBlock(scope: !1765, file: !116, line: 433, column: 19)
!1769 = !DILocation(line: 433, column: 19, scope: !1768)
!1770 = !DILocation(line: 434, column: 19, scope: !1765)
!1771 = !DILocation(line: 434, column: 19, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !116, line: 434, column: 19)
!1773 = distinct !DILexicalBlock(scope: !1765, file: !116, line: 434, column: 19)
!1774 = !DILocation(line: 434, column: 19, scope: !1773)
!1775 = !DILocation(line: 435, column: 17, scope: !1765)
!1776 = !DILocation(line: 436, column: 17, scope: !1720)
!1777 = !DILocation(line: 441, column: 13, scope: !1720)
!1778 = !DILocation(line: 442, column: 20, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1716, file: !116, line: 442, column: 20)
!1780 = !DILocation(line: 442, column: 26, scope: !1779)
!1781 = !DILocation(line: 442, column: 20, scope: !1716)
!1782 = !DILocation(line: 443, column: 13, scope: !1779)
!1783 = !DILocation(line: 444, column: 11, scope: !1717)
!1784 = !DILocation(line: 447, column: 20, scope: !1717)
!1785 = !DILocation(line: 447, column: 11, scope: !1717)
!1786 = !DILocation(line: 450, column: 19, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !116, line: 450, column: 19)
!1788 = distinct !DILexicalBlock(scope: !1717, file: !116, line: 448, column: 13)
!1789 = !DILocation(line: 450, column: 19, scope: !1788)
!1790 = !DILocation(line: 451, column: 17, scope: !1787)
!1791 = !DILocation(line: 452, column: 15, scope: !1788)
!1792 = !DILocation(line: 455, column: 20, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1788, file: !116, line: 455, column: 19)
!1794 = !DILocation(line: 455, column: 26, scope: !1793)
!1795 = !DILocation(line: 456, column: 19, scope: !1793)
!1796 = !DILocation(line: 456, column: 22, scope: !1793)
!1797 = !DILocation(line: 456, column: 24, scope: !1793)
!1798 = !DILocation(line: 456, column: 30, scope: !1793)
!1799 = !DILocation(line: 456, column: 28, scope: !1793)
!1800 = !DILocation(line: 456, column: 38, scope: !1793)
!1801 = !DILocation(line: 456, column: 41, scope: !1793)
!1802 = !DILocation(line: 456, column: 45, scope: !1793)
!1803 = !DILocation(line: 456, column: 47, scope: !1793)
!1804 = !DILocation(line: 456, column: 52, scope: !1793)
!1805 = !DILocation(line: 455, column: 19, scope: !1788)
!1806 = !DILocation(line: 457, column: 25, scope: !1793)
!1807 = !DILocation(line: 457, column: 29, scope: !1793)
!1808 = !DILocation(line: 457, column: 31, scope: !1793)
!1809 = !DILocation(line: 457, column: 17, scope: !1793)
!1810 = !DILocation(line: 464, column: 25, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !116, line: 464, column: 25)
!1812 = distinct !DILexicalBlock(scope: !1793, file: !116, line: 458, column: 19)
!1813 = !DILocation(line: 464, column: 25, scope: !1812)
!1814 = !DILocation(line: 465, column: 23, scope: !1811)
!1815 = !DILocation(line: 466, column: 25, scope: !1812)
!1816 = !DILocation(line: 466, column: 29, scope: !1812)
!1817 = !DILocation(line: 466, column: 31, scope: !1812)
!1818 = !DILocation(line: 466, column: 23, scope: !1812)
!1819 = !DILocation(line: 467, column: 23, scope: !1812)
!1820 = !DILocation(line: 468, column: 21, scope: !1812)
!1821 = !DILocation(line: 468, column: 21, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !116, line: 468, column: 21)
!1823 = distinct !DILexicalBlock(scope: !1812, file: !116, line: 468, column: 21)
!1824 = !DILocation(line: 468, column: 21, scope: !1823)
!1825 = !DILocation(line: 469, column: 21, scope: !1812)
!1826 = !DILocation(line: 469, column: 21, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !116, line: 469, column: 21)
!1828 = distinct !DILexicalBlock(scope: !1812, file: !116, line: 469, column: 21)
!1829 = !DILocation(line: 469, column: 21, scope: !1828)
!1830 = !DILocation(line: 470, column: 21, scope: !1812)
!1831 = !DILocation(line: 470, column: 21, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !116, line: 470, column: 21)
!1833 = distinct !DILexicalBlock(scope: !1812, file: !116, line: 470, column: 21)
!1834 = !DILocation(line: 470, column: 21, scope: !1833)
!1835 = !DILocation(line: 471, column: 21, scope: !1812)
!1836 = !DILocation(line: 471, column: 21, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !116, line: 471, column: 21)
!1838 = distinct !DILexicalBlock(scope: !1812, file: !116, line: 471, column: 21)
!1839 = !DILocation(line: 471, column: 21, scope: !1838)
!1840 = !DILocation(line: 472, column: 21, scope: !1812)
!1841 = !DILocation(line: 473, column: 19, scope: !1812)
!1842 = !DILocation(line: 474, column: 15, scope: !1788)
!1843 = !DILocation(line: 476, column: 11, scope: !1717)
!1844 = !DILocation(line: 481, column: 26, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1717, file: !116, line: 478, column: 9)
!1846 = !DILocation(line: 481, column: 33, scope: !1845)
!1847 = !DILocation(line: 482, column: 26, scope: !1845)
!1848 = !DILocation(line: 482, column: 33, scope: !1845)
!1849 = !DILocation(line: 483, column: 26, scope: !1845)
!1850 = !DILocation(line: 483, column: 33, scope: !1845)
!1851 = !DILocation(line: 484, column: 26, scope: !1845)
!1852 = !DILocation(line: 484, column: 33, scope: !1845)
!1853 = !DILocation(line: 485, column: 26, scope: !1845)
!1854 = !DILocation(line: 485, column: 33, scope: !1845)
!1855 = !DILocation(line: 486, column: 26, scope: !1845)
!1856 = !DILocation(line: 486, column: 33, scope: !1845)
!1857 = !DILocation(line: 487, column: 26, scope: !1845)
!1858 = !DILocation(line: 487, column: 33, scope: !1845)
!1859 = !DILocation(line: 488, column: 28, scope: !1845)
!1860 = !DILocation(line: 488, column: 26, scope: !1845)
!1861 = !DILocation(line: 490, column: 17, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1845, file: !116, line: 490, column: 17)
!1863 = !DILocation(line: 490, column: 31, scope: !1862)
!1864 = !DILocation(line: 490, column: 17, scope: !1845)
!1865 = !DILocation(line: 492, column: 21, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !116, line: 492, column: 21)
!1867 = distinct !DILexicalBlock(scope: !1862, file: !116, line: 491, column: 15)
!1868 = !DILocation(line: 492, column: 21, scope: !1867)
!1869 = !DILocation(line: 493, column: 19, scope: !1866)
!1870 = !DILocation(line: 494, column: 17, scope: !1867)
!1871 = !DILocation(line: 499, column: 17, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1845, file: !116, line: 499, column: 17)
!1873 = !DILocation(line: 499, column: 35, scope: !1872)
!1874 = !DILocation(line: 499, column: 38, scope: !1872)
!1875 = !DILocation(line: 499, column: 57, scope: !1872)
!1876 = !DILocation(line: 499, column: 60, scope: !1872)
!1877 = !DILocation(line: 499, column: 17, scope: !1845)
!1878 = !DILocation(line: 500, column: 15, scope: !1872)
!1879 = !DILabel(scope: !1845, name: "c_and_shell_escape", file: !116, line: 502)
!1880 = !DILocation(line: 502, column: 11, scope: !1845)
!1881 = !DILocation(line: 503, column: 17, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1845, file: !116, line: 503, column: 17)
!1883 = !DILocation(line: 503, column: 31, scope: !1882)
!1884 = !DILocation(line: 504, column: 17, scope: !1882)
!1885 = !DILocation(line: 504, column: 20, scope: !1882)
!1886 = !DILocation(line: 503, column: 17, scope: !1845)
!1887 = !DILocation(line: 505, column: 15, scope: !1882)
!1888 = !DILabel(scope: !1845, name: "c_escape", file: !116, line: 507)
!1889 = !DILocation(line: 507, column: 11, scope: !1845)
!1890 = !DILocation(line: 508, column: 17, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1845, file: !116, line: 508, column: 17)
!1892 = !DILocation(line: 508, column: 17, scope: !1845)
!1893 = !DILocation(line: 510, column: 21, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1891, file: !116, line: 509, column: 15)
!1895 = !DILocation(line: 510, column: 19, scope: !1894)
!1896 = !DILocation(line: 511, column: 17, scope: !1894)
!1897 = !DILocation(line: 513, column: 13, scope: !1845)
!1898 = !DILocation(line: 517, column: 18, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1717, file: !116, line: 517, column: 15)
!1900 = !DILocation(line: 517, column: 26, scope: !1899)
!1901 = !DILocation(line: 517, column: 15, scope: !1717)
!1902 = !DILocation(line: 517, column: 40, scope: !1899)
!1903 = !DILocation(line: 517, column: 47, scope: !1899)
!1904 = !DILocation(line: 517, column: 57, scope: !1899)
!1905 = !DILocation(line: 517, column: 65, scope: !1899)
!1906 = !DILocation(line: 518, column: 13, scope: !1899)
!1907 = !DILocation(line: 517, column: 69, scope: !1899)
!1908 = !DILocation(line: 521, column: 15, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1717, file: !116, line: 521, column: 15)
!1910 = !DILocation(line: 521, column: 17, scope: !1909)
!1911 = !DILocation(line: 521, column: 15, scope: !1717)
!1912 = !DILocation(line: 522, column: 13, scope: !1909)
!1913 = !DILocation(line: 521, column: 20, scope: !1909)
!1914 = !DILocation(line: 525, column: 36, scope: !1717)
!1915 = !DILocation(line: 525, column: 11, scope: !1717)
!1916 = !DILocation(line: 536, column: 15, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1717, file: !116, line: 536, column: 15)
!1918 = !DILocation(line: 536, column: 29, scope: !1917)
!1919 = !DILocation(line: 537, column: 15, scope: !1917)
!1920 = !DILocation(line: 537, column: 18, scope: !1917)
!1921 = !DILocation(line: 536, column: 15, scope: !1717)
!1922 = !DILocation(line: 538, column: 13, scope: !1917)
!1923 = !DILocation(line: 539, column: 11, scope: !1717)
!1924 = !DILocation(line: 542, column: 36, scope: !1717)
!1925 = !DILocation(line: 543, column: 36, scope: !1717)
!1926 = !DILocation(line: 544, column: 15, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1717, file: !116, line: 544, column: 15)
!1928 = !DILocation(line: 544, column: 29, scope: !1927)
!1929 = !DILocation(line: 544, column: 15, scope: !1717)
!1930 = !DILocation(line: 546, column: 19, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !116, line: 546, column: 19)
!1932 = distinct !DILexicalBlock(scope: !1927, file: !116, line: 545, column: 13)
!1933 = !DILocation(line: 546, column: 19, scope: !1932)
!1934 = !DILocation(line: 547, column: 17, scope: !1931)
!1935 = !DILocation(line: 549, column: 19, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1932, file: !116, line: 549, column: 19)
!1937 = !DILocation(line: 549, column: 30, scope: !1936)
!1938 = !DILocation(line: 549, column: 35, scope: !1936)
!1939 = !DILocation(line: 549, column: 19, scope: !1932)
!1940 = !DILocation(line: 554, column: 37, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1936, file: !116, line: 550, column: 17)
!1942 = !DILocation(line: 554, column: 35, scope: !1941)
!1943 = !DILocation(line: 555, column: 30, scope: !1941)
!1944 = !DILocation(line: 556, column: 17, scope: !1941)
!1945 = !DILocation(line: 558, column: 15, scope: !1932)
!1946 = !DILocation(line: 558, column: 15, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !116, line: 558, column: 15)
!1948 = distinct !DILexicalBlock(scope: !1932, file: !116, line: 558, column: 15)
!1949 = !DILocation(line: 558, column: 15, scope: !1948)
!1950 = !DILocation(line: 559, column: 15, scope: !1932)
!1951 = !DILocation(line: 559, column: 15, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !116, line: 559, column: 15)
!1953 = distinct !DILexicalBlock(scope: !1932, file: !116, line: 559, column: 15)
!1954 = !DILocation(line: 559, column: 15, scope: !1953)
!1955 = !DILocation(line: 560, column: 15, scope: !1932)
!1956 = !DILocation(line: 560, column: 15, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !116, line: 560, column: 15)
!1958 = distinct !DILexicalBlock(scope: !1932, file: !116, line: 560, column: 15)
!1959 = !DILocation(line: 560, column: 15, scope: !1958)
!1960 = !DILocation(line: 561, column: 40, scope: !1932)
!1961 = !DILocation(line: 562, column: 13, scope: !1932)
!1962 = !DILocation(line: 563, column: 11, scope: !1717)
!1963 = !DILocation(line: 587, column: 36, scope: !1717)
!1964 = !DILocation(line: 588, column: 11, scope: !1717)
!1965 = !DILocalVariable(name: "m", scope: !1966, file: !116, line: 598, type: !138)
!1966 = distinct !DILexicalBlock(scope: !1717, file: !116, line: 596, column: 11)
!1967 = !DILocation(line: 598, column: 20, scope: !1966)
!1968 = !DILocalVariable(name: "printable", scope: !1966, file: !116, line: 600, type: !61)
!1969 = !DILocation(line: 600, column: 18, scope: !1966)
!1970 = !DILocation(line: 602, column: 17, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1966, file: !116, line: 602, column: 17)
!1972 = !DILocation(line: 602, column: 17, scope: !1966)
!1973 = !DILocation(line: 604, column: 19, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1971, file: !116, line: 603, column: 15)
!1975 = !DILocation(line: 605, column: 29, scope: !1974)
!1976 = !DILocation(line: 605, column: 41, scope: !1974)
!1977 = !DILocation(line: 605, column: 27, scope: !1974)
!1978 = !DILocation(line: 606, column: 15, scope: !1974)
!1979 = !DILocalVariable(name: "mbs", scope: !1980, file: !116, line: 609, type: !1981)
!1980 = distinct !DILexicalBlock(scope: !1971, file: !116, line: 608, column: 15)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !212, line: 6, baseType: !1982)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !214, line: 21, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 13, size: 64, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1983, file: !214, line: 15, baseType: !25, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1983, file: !214, line: 20, baseType: !1987, size: 32, offset: 32)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !214, line: 16, size: 32, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1987, file: !214, line: 18, baseType: !7, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1987, file: !214, line: 19, baseType: !223, size: 32)
!1991 = !DILocation(line: 609, column: 27, scope: !1980)
!1992 = !DILocation(line: 609, column: 32, scope: !1980)
!1993 = !DILocation(line: 611, column: 19, scope: !1980)
!1994 = !DILocation(line: 612, column: 27, scope: !1980)
!1995 = !DILocation(line: 613, column: 21, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1980, file: !116, line: 613, column: 21)
!1997 = !DILocation(line: 613, column: 29, scope: !1996)
!1998 = !DILocation(line: 613, column: 21, scope: !1980)
!1999 = !DILocation(line: 614, column: 37, scope: !1996)
!2000 = !DILocation(line: 614, column: 29, scope: !1996)
!2001 = !DILocation(line: 614, column: 27, scope: !1996)
!2002 = !DILocation(line: 614, column: 19, scope: !1996)
!2003 = !DILocation(line: 616, column: 17, scope: !1980)
!2004 = !DILocalVariable(name: "w", scope: !2005, file: !116, line: 618, type: !1302)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !116, line: 617, column: 19)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !116, line: 616, column: 17)
!2007 = distinct !DILexicalBlock(scope: !1980, file: !116, line: 616, column: 17)
!2008 = !DILocation(line: 618, column: 30, scope: !2005)
!2009 = !DILocalVariable(name: "bytes", scope: !2005, file: !116, line: 619, type: !138)
!2010 = !DILocation(line: 619, column: 28, scope: !2005)
!2011 = !DILocation(line: 619, column: 51, scope: !2005)
!2012 = !DILocation(line: 619, column: 55, scope: !2005)
!2013 = !DILocation(line: 619, column: 59, scope: !2005)
!2014 = !DILocation(line: 619, column: 57, scope: !2005)
!2015 = !DILocation(line: 620, column: 46, scope: !2005)
!2016 = !DILocation(line: 620, column: 57, scope: !2005)
!2017 = !DILocation(line: 620, column: 61, scope: !2005)
!2018 = !DILocation(line: 620, column: 59, scope: !2005)
!2019 = !DILocation(line: 620, column: 54, scope: !2005)
!2020 = !DILocation(line: 619, column: 36, scope: !2005)
!2021 = !DILocation(line: 621, column: 25, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2005, file: !116, line: 621, column: 25)
!2023 = !DILocation(line: 621, column: 31, scope: !2022)
!2024 = !DILocation(line: 621, column: 25, scope: !2005)
!2025 = !DILocation(line: 622, column: 23, scope: !2022)
!2026 = !DILocation(line: 623, column: 30, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2022, file: !116, line: 623, column: 30)
!2028 = !DILocation(line: 623, column: 36, scope: !2027)
!2029 = !DILocation(line: 623, column: 30, scope: !2022)
!2030 = !DILocation(line: 625, column: 35, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2027, file: !116, line: 624, column: 23)
!2032 = !DILocation(line: 626, column: 25, scope: !2031)
!2033 = !DILocation(line: 628, column: 30, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2027, file: !116, line: 628, column: 30)
!2035 = !DILocation(line: 628, column: 36, scope: !2034)
!2036 = !DILocation(line: 628, column: 30, scope: !2027)
!2037 = !DILocation(line: 630, column: 35, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2034, file: !116, line: 629, column: 23)
!2039 = !DILocation(line: 631, column: 25, scope: !2038)
!2040 = !DILocation(line: 631, column: 32, scope: !2038)
!2041 = !DILocation(line: 631, column: 36, scope: !2038)
!2042 = !DILocation(line: 631, column: 34, scope: !2038)
!2043 = !DILocation(line: 631, column: 40, scope: !2038)
!2044 = !DILocation(line: 631, column: 38, scope: !2038)
!2045 = !DILocation(line: 631, column: 48, scope: !2038)
!2046 = !DILocation(line: 631, column: 51, scope: !2038)
!2047 = !DILocation(line: 631, column: 55, scope: !2038)
!2048 = !DILocation(line: 631, column: 59, scope: !2038)
!2049 = !DILocation(line: 631, column: 57, scope: !2038)
!2050 = !DILocation(line: 0, scope: !2038)
!2051 = !DILocation(line: 632, column: 28, scope: !2038)
!2052 = distinct !{!2052, !2039, !2051, !418}
!2053 = !DILocation(line: 633, column: 25, scope: !2038)
!2054 = !DILocation(line: 645, column: 44, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !116, line: 645, column: 29)
!2056 = distinct !DILexicalBlock(scope: !2034, file: !116, line: 636, column: 23)
!2057 = !DILocation(line: 646, column: 29, scope: !2055)
!2058 = !DILocation(line: 646, column: 32, scope: !2055)
!2059 = !DILocation(line: 646, column: 46, scope: !2055)
!2060 = !DILocation(line: 645, column: 29, scope: !2056)
!2061 = !DILocalVariable(name: "j", scope: !2062, file: !116, line: 648, type: !138)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !116, line: 648, column: 29)
!2063 = distinct !DILexicalBlock(scope: !2055, file: !116, line: 647, column: 27)
!2064 = !DILocation(line: 648, column: 41, scope: !2062)
!2065 = !DILocation(line: 648, column: 34, scope: !2062)
!2066 = !DILocation(line: 648, column: 48, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2062, file: !116, line: 648, column: 29)
!2068 = !DILocation(line: 648, column: 52, scope: !2067)
!2069 = !DILocation(line: 648, column: 50, scope: !2067)
!2070 = !DILocation(line: 648, column: 29, scope: !2062)
!2071 = !DILocation(line: 649, column: 39, scope: !2067)
!2072 = !DILocation(line: 649, column: 43, scope: !2067)
!2073 = !DILocation(line: 649, column: 47, scope: !2067)
!2074 = !DILocation(line: 649, column: 45, scope: !2067)
!2075 = !DILocation(line: 649, column: 51, scope: !2067)
!2076 = !DILocation(line: 649, column: 49, scope: !2067)
!2077 = !DILocation(line: 649, column: 31, scope: !2067)
!2078 = !DILocation(line: 653, column: 35, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2067, file: !116, line: 650, column: 33)
!2080 = !DILocation(line: 654, column: 33, scope: !2079)
!2081 = !DILocation(line: 648, column: 60, scope: !2067)
!2082 = !DILocation(line: 648, column: 29, scope: !2067)
!2083 = distinct !{!2083, !2070, !2084, !418}
!2084 = !DILocation(line: 654, column: 33, scope: !2062)
!2085 = !DILocation(line: 655, column: 27, scope: !2063)
!2086 = !DILocation(line: 657, column: 43, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2056, file: !116, line: 657, column: 29)
!2088 = !DILocation(line: 657, column: 31, scope: !2087)
!2089 = !DILocation(line: 657, column: 29, scope: !2056)
!2090 = !DILocation(line: 658, column: 37, scope: !2087)
!2091 = !DILocation(line: 658, column: 27, scope: !2087)
!2092 = !DILocation(line: 659, column: 30, scope: !2056)
!2093 = !DILocation(line: 659, column: 27, scope: !2056)
!2094 = !DILocation(line: 664, column: 23, scope: !2005)
!2095 = !DILocation(line: 668, column: 40, scope: !1966)
!2096 = !DILocation(line: 668, column: 38, scope: !1966)
!2097 = !DILocation(line: 670, column: 21, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1966, file: !116, line: 670, column: 17)
!2099 = !DILocation(line: 670, column: 19, scope: !2098)
!2100 = !DILocation(line: 670, column: 23, scope: !2098)
!2101 = !DILocation(line: 670, column: 27, scope: !2098)
!2102 = !DILocation(line: 670, column: 45, scope: !2098)
!2103 = !DILocation(line: 670, column: 50, scope: !2098)
!2104 = !DILocation(line: 670, column: 17, scope: !1966)
!2105 = !DILocalVariable(name: "ilim", scope: !2106, file: !116, line: 674, type: !138)
!2106 = distinct !DILexicalBlock(scope: !2098, file: !116, line: 671, column: 15)
!2107 = !DILocation(line: 674, column: 24, scope: !2106)
!2108 = !DILocation(line: 674, column: 31, scope: !2106)
!2109 = !DILocation(line: 674, column: 35, scope: !2106)
!2110 = !DILocation(line: 674, column: 33, scope: !2106)
!2111 = !DILocation(line: 676, column: 17, scope: !2106)
!2112 = !DILocation(line: 678, column: 25, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !116, line: 678, column: 25)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !116, line: 677, column: 19)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !116, line: 676, column: 17)
!2116 = distinct !DILexicalBlock(scope: !2106, file: !116, line: 676, column: 17)
!2117 = !DILocation(line: 678, column: 43, scope: !2113)
!2118 = !DILocation(line: 678, column: 48, scope: !2113)
!2119 = !DILocation(line: 678, column: 25, scope: !2114)
!2120 = !DILocation(line: 680, column: 25, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2113, file: !116, line: 679, column: 23)
!2122 = !DILocation(line: 680, column: 25, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !116, line: 680, column: 25)
!2124 = distinct !DILexicalBlock(scope: !2121, file: !116, line: 680, column: 25)
!2125 = !DILocation(line: 680, column: 25, scope: !2124)
!2126 = !DILocation(line: 680, column: 25, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2124, file: !116, line: 680, column: 25)
!2128 = !DILocation(line: 680, column: 25, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2127, file: !116, line: 680, column: 25)
!2130 = !DILocation(line: 680, column: 25, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !116, line: 680, column: 25)
!2132 = distinct !DILexicalBlock(scope: !2129, file: !116, line: 680, column: 25)
!2133 = !DILocation(line: 680, column: 25, scope: !2132)
!2134 = !DILocation(line: 680, column: 25, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !116, line: 680, column: 25)
!2136 = distinct !DILexicalBlock(scope: !2129, file: !116, line: 680, column: 25)
!2137 = !DILocation(line: 680, column: 25, scope: !2136)
!2138 = !DILocation(line: 680, column: 25, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !116, line: 680, column: 25)
!2140 = distinct !DILexicalBlock(scope: !2129, file: !116, line: 680, column: 25)
!2141 = !DILocation(line: 680, column: 25, scope: !2140)
!2142 = !DILocation(line: 680, column: 25, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !116, line: 680, column: 25)
!2144 = distinct !DILexicalBlock(scope: !2124, file: !116, line: 680, column: 25)
!2145 = !DILocation(line: 680, column: 25, scope: !2144)
!2146 = !DILocation(line: 681, column: 25, scope: !2121)
!2147 = !DILocation(line: 681, column: 25, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !116, line: 681, column: 25)
!2149 = distinct !DILexicalBlock(scope: !2121, file: !116, line: 681, column: 25)
!2150 = !DILocation(line: 681, column: 25, scope: !2149)
!2151 = !DILocation(line: 682, column: 25, scope: !2121)
!2152 = !DILocation(line: 682, column: 25, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !116, line: 682, column: 25)
!2154 = distinct !DILexicalBlock(scope: !2121, file: !116, line: 682, column: 25)
!2155 = !DILocation(line: 682, column: 25, scope: !2154)
!2156 = !DILocation(line: 683, column: 36, scope: !2121)
!2157 = !DILocation(line: 683, column: 38, scope: !2121)
!2158 = !DILocation(line: 683, column: 33, scope: !2121)
!2159 = !DILocation(line: 683, column: 29, scope: !2121)
!2160 = !DILocation(line: 683, column: 27, scope: !2121)
!2161 = !DILocation(line: 684, column: 23, scope: !2121)
!2162 = !DILocation(line: 685, column: 30, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2113, file: !116, line: 685, column: 30)
!2164 = !DILocation(line: 685, column: 30, scope: !2113)
!2165 = !DILocation(line: 687, column: 25, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2163, file: !116, line: 686, column: 23)
!2167 = !DILocation(line: 687, column: 25, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !116, line: 687, column: 25)
!2169 = distinct !DILexicalBlock(scope: !2166, file: !116, line: 687, column: 25)
!2170 = !DILocation(line: 687, column: 25, scope: !2169)
!2171 = !DILocation(line: 688, column: 40, scope: !2166)
!2172 = !DILocation(line: 689, column: 23, scope: !2166)
!2173 = !DILocation(line: 690, column: 25, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2114, file: !116, line: 690, column: 25)
!2175 = !DILocation(line: 690, column: 33, scope: !2174)
!2176 = !DILocation(line: 690, column: 35, scope: !2174)
!2177 = !DILocation(line: 690, column: 30, scope: !2174)
!2178 = !DILocation(line: 690, column: 25, scope: !2114)
!2179 = !DILocation(line: 691, column: 23, scope: !2174)
!2180 = !DILocation(line: 692, column: 21, scope: !2114)
!2181 = !DILocation(line: 692, column: 21, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !116, line: 692, column: 21)
!2183 = distinct !DILexicalBlock(scope: !2114, file: !116, line: 692, column: 21)
!2184 = !DILocation(line: 692, column: 21, scope: !2183)
!2185 = !DILocation(line: 692, column: 21, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2182, file: !116, line: 692, column: 21)
!2187 = !DILocation(line: 692, column: 21, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !116, line: 692, column: 21)
!2189 = distinct !DILexicalBlock(scope: !2186, file: !116, line: 692, column: 21)
!2190 = !DILocation(line: 692, column: 21, scope: !2189)
!2191 = !DILocation(line: 692, column: 21, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !116, line: 692, column: 21)
!2193 = distinct !DILexicalBlock(scope: !2186, file: !116, line: 692, column: 21)
!2194 = !DILocation(line: 692, column: 21, scope: !2193)
!2195 = !DILocation(line: 693, column: 21, scope: !2114)
!2196 = !DILocation(line: 693, column: 21, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !116, line: 693, column: 21)
!2198 = distinct !DILexicalBlock(scope: !2114, file: !116, line: 693, column: 21)
!2199 = !DILocation(line: 693, column: 21, scope: !2198)
!2200 = !DILocation(line: 694, column: 25, scope: !2114)
!2201 = !DILocation(line: 694, column: 29, scope: !2114)
!2202 = !DILocation(line: 694, column: 23, scope: !2114)
!2203 = !DILocation(line: 676, column: 17, scope: !2115)
!2204 = distinct !{!2204, !2205, !2206}
!2205 = !DILocation(line: 676, column: 17, scope: !2116)
!2206 = !DILocation(line: 695, column: 19, scope: !2116)
!2207 = !DILocation(line: 697, column: 17, scope: !2106)
!2208 = !DILocation(line: 700, column: 9, scope: !1717)
!2209 = !DILocation(line: 702, column: 16, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !1667, file: !116, line: 702, column: 11)
!2211 = !DILocation(line: 702, column: 34, scope: !2210)
!2212 = !DILocation(line: 702, column: 37, scope: !2210)
!2213 = !DILocation(line: 702, column: 51, scope: !2210)
!2214 = !DILocation(line: 703, column: 15, scope: !2210)
!2215 = !DILocation(line: 703, column: 18, scope: !2210)
!2216 = !DILocation(line: 704, column: 14, scope: !2210)
!2217 = !DILocation(line: 704, column: 17, scope: !2210)
!2218 = !DILocation(line: 705, column: 14, scope: !2210)
!2219 = !DILocation(line: 705, column: 17, scope: !2210)
!2220 = !DILocation(line: 705, column: 33, scope: !2210)
!2221 = !DILocation(line: 705, column: 35, scope: !2210)
!2222 = !DILocation(line: 705, column: 51, scope: !2210)
!2223 = !DILocation(line: 705, column: 53, scope: !2210)
!2224 = !DILocation(line: 705, column: 47, scope: !2210)
!2225 = !DILocation(line: 705, column: 65, scope: !2210)
!2226 = !DILocation(line: 706, column: 11, scope: !2210)
!2227 = !DILocation(line: 706, column: 15, scope: !2210)
!2228 = !DILocation(line: 702, column: 11, scope: !1667)
!2229 = !DILocation(line: 707, column: 9, scope: !2210)
!2230 = !DILabel(scope: !1667, name: "store_escape", file: !116, line: 709)
!2231 = !DILocation(line: 709, column: 5, scope: !1667)
!2232 = !DILocation(line: 710, column: 7, scope: !1667)
!2233 = !DILocation(line: 710, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !116, line: 710, column: 7)
!2235 = distinct !DILexicalBlock(scope: !1667, file: !116, line: 710, column: 7)
!2236 = !DILocation(line: 710, column: 7, scope: !2235)
!2237 = !DILocation(line: 710, column: 7, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2235, file: !116, line: 710, column: 7)
!2239 = !DILocation(line: 710, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2238, file: !116, line: 710, column: 7)
!2241 = !DILocation(line: 710, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !116, line: 710, column: 7)
!2243 = distinct !DILexicalBlock(scope: !2240, file: !116, line: 710, column: 7)
!2244 = !DILocation(line: 710, column: 7, scope: !2243)
!2245 = !DILocation(line: 710, column: 7, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !116, line: 710, column: 7)
!2247 = distinct !DILexicalBlock(scope: !2240, file: !116, line: 710, column: 7)
!2248 = !DILocation(line: 710, column: 7, scope: !2247)
!2249 = !DILocation(line: 710, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !116, line: 710, column: 7)
!2251 = distinct !DILexicalBlock(scope: !2240, file: !116, line: 710, column: 7)
!2252 = !DILocation(line: 710, column: 7, scope: !2251)
!2253 = !DILocation(line: 710, column: 7, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !116, line: 710, column: 7)
!2255 = distinct !DILexicalBlock(scope: !2235, file: !116, line: 710, column: 7)
!2256 = !DILocation(line: 710, column: 7, scope: !2255)
!2257 = !DILabel(scope: !1667, name: "store_c", file: !116, line: 712)
!2258 = !DILocation(line: 712, column: 5, scope: !1667)
!2259 = !DILocation(line: 713, column: 7, scope: !1667)
!2260 = !DILocation(line: 713, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !116, line: 713, column: 7)
!2262 = distinct !DILexicalBlock(scope: !1667, file: !116, line: 713, column: 7)
!2263 = !DILocation(line: 713, column: 7, scope: !2262)
!2264 = !DILocation(line: 713, column: 7, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !116, line: 713, column: 7)
!2266 = !DILocation(line: 713, column: 7, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !116, line: 713, column: 7)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !116, line: 713, column: 7)
!2269 = !DILocation(line: 713, column: 7, scope: !2268)
!2270 = !DILocation(line: 713, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !116, line: 713, column: 7)
!2272 = distinct !DILexicalBlock(scope: !2265, file: !116, line: 713, column: 7)
!2273 = !DILocation(line: 713, column: 7, scope: !2272)
!2274 = !DILocation(line: 714, column: 7, scope: !1667)
!2275 = !DILocation(line: 714, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !116, line: 714, column: 7)
!2277 = distinct !DILexicalBlock(scope: !1667, file: !116, line: 714, column: 7)
!2278 = !DILocation(line: 714, column: 7, scope: !2277)
!2279 = !DILocation(line: 716, column: 13, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !1667, file: !116, line: 716, column: 11)
!2281 = !DILocation(line: 716, column: 11, scope: !1667)
!2282 = !DILocation(line: 717, column: 38, scope: !2280)
!2283 = !DILocation(line: 717, column: 9, scope: !2280)
!2284 = !DILocation(line: 718, column: 5, scope: !1667)
!2285 = !DILocation(line: 395, column: 82, scope: !1656)
!2286 = !DILocation(line: 395, column: 3, scope: !1656)
!2287 = distinct !{!2287, !1665, !2288, !418}
!2288 = !DILocation(line: 718, column: 5, scope: !1652)
!2289 = !DILocation(line: 720, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !1514, file: !116, line: 720, column: 7)
!2291 = !DILocation(line: 720, column: 11, scope: !2290)
!2292 = !DILocation(line: 720, column: 16, scope: !2290)
!2293 = !DILocation(line: 720, column: 19, scope: !2290)
!2294 = !DILocation(line: 720, column: 33, scope: !2290)
!2295 = !DILocation(line: 721, column: 7, scope: !2290)
!2296 = !DILocation(line: 721, column: 10, scope: !2290)
!2297 = !DILocation(line: 720, column: 7, scope: !1514)
!2298 = !DILocation(line: 722, column: 5, scope: !2290)
!2299 = !DILocation(line: 728, column: 7, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !1514, file: !116, line: 728, column: 7)
!2301 = !DILocation(line: 728, column: 21, scope: !2300)
!2302 = !DILocation(line: 728, column: 51, scope: !2300)
!2303 = !DILocation(line: 728, column: 56, scope: !2300)
!2304 = !DILocation(line: 729, column: 7, scope: !2300)
!2305 = !DILocation(line: 729, column: 10, scope: !2300)
!2306 = !DILocation(line: 728, column: 7, scope: !1514)
!2307 = !DILocation(line: 731, column: 11, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !116, line: 731, column: 11)
!2309 = distinct !DILexicalBlock(scope: !2300, file: !116, line: 730, column: 5)
!2310 = !DILocation(line: 731, column: 11, scope: !2309)
!2311 = !DILocation(line: 732, column: 42, scope: !2308)
!2312 = !DILocation(line: 732, column: 50, scope: !2308)
!2313 = !DILocation(line: 732, column: 67, scope: !2308)
!2314 = !DILocation(line: 732, column: 72, scope: !2308)
!2315 = !DILocation(line: 734, column: 42, scope: !2308)
!2316 = !DILocation(line: 734, column: 49, scope: !2308)
!2317 = !DILocation(line: 735, column: 42, scope: !2308)
!2318 = !DILocation(line: 735, column: 54, scope: !2308)
!2319 = !DILocation(line: 732, column: 16, scope: !2308)
!2320 = !DILocation(line: 732, column: 9, scope: !2308)
!2321 = !DILocation(line: 736, column: 18, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2308, file: !116, line: 736, column: 16)
!2323 = !DILocation(line: 736, column: 29, scope: !2322)
!2324 = !DILocation(line: 736, column: 32, scope: !2322)
!2325 = !DILocation(line: 736, column: 16, scope: !2308)
!2326 = !DILocation(line: 739, column: 24, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2322, file: !116, line: 737, column: 9)
!2328 = !DILocation(line: 739, column: 22, scope: !2327)
!2329 = !DILocation(line: 740, column: 15, scope: !2327)
!2330 = !DILocation(line: 741, column: 11, scope: !2327)
!2331 = !DILocation(line: 743, column: 5, scope: !2309)
!2332 = !DILocation(line: 745, column: 7, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !1514, file: !116, line: 745, column: 7)
!2334 = !DILocation(line: 745, column: 20, scope: !2333)
!2335 = !DILocation(line: 745, column: 24, scope: !2333)
!2336 = !DILocation(line: 745, column: 7, scope: !1514)
!2337 = !DILocation(line: 746, column: 5, scope: !2333)
!2338 = !DILocation(line: 746, column: 13, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !116, line: 746, column: 5)
!2340 = distinct !DILexicalBlock(scope: !2333, file: !116, line: 746, column: 5)
!2341 = !DILocation(line: 746, column: 12, scope: !2339)
!2342 = !DILocation(line: 746, column: 5, scope: !2340)
!2343 = !DILocation(line: 747, column: 7, scope: !2339)
!2344 = !DILocation(line: 747, column: 7, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !116, line: 747, column: 7)
!2346 = distinct !DILexicalBlock(scope: !2339, file: !116, line: 747, column: 7)
!2347 = !DILocation(line: 747, column: 7, scope: !2346)
!2348 = !DILocation(line: 746, column: 39, scope: !2339)
!2349 = !DILocation(line: 746, column: 5, scope: !2339)
!2350 = distinct !{!2350, !2342, !2351, !418}
!2351 = !DILocation(line: 747, column: 7, scope: !2340)
!2352 = !DILocation(line: 749, column: 7, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !1514, file: !116, line: 749, column: 7)
!2354 = !DILocation(line: 749, column: 13, scope: !2353)
!2355 = !DILocation(line: 749, column: 11, scope: !2353)
!2356 = !DILocation(line: 749, column: 7, scope: !1514)
!2357 = !DILocation(line: 750, column: 5, scope: !2353)
!2358 = !DILocation(line: 750, column: 12, scope: !2353)
!2359 = !DILocation(line: 750, column: 17, scope: !2353)
!2360 = !DILocation(line: 751, column: 10, scope: !1514)
!2361 = !DILocation(line: 751, column: 3, scope: !1514)
!2362 = !DILabel(scope: !1514, name: "force_outer_quoting_style", file: !116, line: 753)
!2363 = !DILocation(line: 753, column: 2, scope: !1514)
!2364 = !DILocation(line: 756, column: 7, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !1514, file: !116, line: 756, column: 7)
!2366 = !DILocation(line: 756, column: 21, scope: !2365)
!2367 = !DILocation(line: 756, column: 51, scope: !2365)
!2368 = !DILocation(line: 756, column: 54, scope: !2365)
!2369 = !DILocation(line: 756, column: 7, scope: !1514)
!2370 = !DILocation(line: 757, column: 19, scope: !2365)
!2371 = !DILocation(line: 757, column: 5, scope: !2365)
!2372 = !DILocation(line: 758, column: 36, scope: !1514)
!2373 = !DILocation(line: 758, column: 44, scope: !1514)
!2374 = !DILocation(line: 758, column: 56, scope: !1514)
!2375 = !DILocation(line: 758, column: 61, scope: !1514)
!2376 = !DILocation(line: 759, column: 36, scope: !1514)
!2377 = !DILocation(line: 760, column: 36, scope: !1514)
!2378 = !DILocation(line: 760, column: 42, scope: !1514)
!2379 = !DILocation(line: 761, column: 36, scope: !1514)
!2380 = !DILocation(line: 761, column: 48, scope: !1514)
!2381 = !DILocation(line: 758, column: 10, scope: !1514)
!2382 = !DILocation(line: 758, column: 3, scope: !1514)
!2383 = !DILocation(line: 762, column: 1, scope: !1514)
!2384 = !DILocalVariable(name: "msgid", arg: 1, scope: !169, file: !116, line: 197, type: !34)
!2385 = !DILocation(line: 197, column: 28, scope: !169)
!2386 = !DILocalVariable(name: "s", arg: 2, scope: !169, file: !116, line: 197, type: !118)
!2387 = !DILocation(line: 197, column: 54, scope: !169)
!2388 = !DILocalVariable(name: "translation", scope: !169, file: !116, line: 199, type: !34)
!2389 = !DILocation(line: 199, column: 15, scope: !169)
!2390 = !DILocation(line: 199, column: 29, scope: !169)
!2391 = !DILocation(line: 201, column: 7, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !169, file: !116, line: 201, column: 7)
!2393 = !DILocation(line: 201, column: 22, scope: !2392)
!2394 = !DILocation(line: 201, column: 19, scope: !2392)
!2395 = !DILocation(line: 201, column: 7, scope: !169)
!2396 = !DILocation(line: 202, column: 12, scope: !2392)
!2397 = !DILocation(line: 202, column: 5, scope: !2392)
!2398 = !DILocalVariable(name: "w", scope: !169, file: !116, line: 229, type: !1302)
!2399 = !DILocation(line: 229, column: 12, scope: !169)
!2400 = !DILocalVariable(name: "mbs", scope: !169, file: !116, line: 230, type: !1981)
!2401 = !DILocation(line: 230, column: 13, scope: !169)
!2402 = !DILocation(line: 230, column: 18, scope: !169)
!2403 = !DILocation(line: 231, column: 7, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !169, file: !116, line: 231, column: 7)
!2405 = !DILocation(line: 231, column: 40, scope: !2404)
!2406 = !DILocation(line: 231, column: 45, scope: !2404)
!2407 = !DILocation(line: 231, column: 48, scope: !2404)
!2408 = !DILocation(line: 231, column: 50, scope: !2404)
!2409 = !DILocation(line: 231, column: 7, scope: !169)
!2410 = !DILocation(line: 232, column: 18, scope: !2404)
!2411 = !DILocation(line: 232, column: 27, scope: !2404)
!2412 = !DILocation(line: 232, column: 12, scope: !2404)
!2413 = !DILocation(line: 232, column: 5, scope: !2404)
!2414 = !DILocation(line: 234, column: 11, scope: !169)
!2415 = !DILocation(line: 234, column: 13, scope: !169)
!2416 = !DILocation(line: 234, column: 3, scope: !169)
!2417 = !DILocation(line: 235, column: 1, scope: !169)
!2418 = distinct !DISubprogram(name: "quotearg_alloc", scope: !116, file: !116, line: 788, type: !2419, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!22, !34, !138, !1354}
!2421 = !DILocalVariable(name: "arg", arg: 1, scope: !2418, file: !116, line: 788, type: !34)
!2422 = !DILocation(line: 788, column: 29, scope: !2418)
!2423 = !DILocalVariable(name: "argsize", arg: 2, scope: !2418, file: !116, line: 788, type: !138)
!2424 = !DILocation(line: 788, column: 41, scope: !2418)
!2425 = !DILocalVariable(name: "o", arg: 3, scope: !2418, file: !116, line: 789, type: !1354)
!2426 = !DILocation(line: 789, column: 47, scope: !2418)
!2427 = !DILocation(line: 791, column: 30, scope: !2418)
!2428 = !DILocation(line: 791, column: 35, scope: !2418)
!2429 = !DILocation(line: 791, column: 50, scope: !2418)
!2430 = !DILocation(line: 791, column: 10, scope: !2418)
!2431 = !DILocation(line: 791, column: 3, scope: !2418)
!2432 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !116, file: !116, line: 801, type: !2433, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!22, !34, !138, !251, !1354}
!2435 = !DILocalVariable(name: "arg", arg: 1, scope: !2432, file: !116, line: 801, type: !34)
!2436 = !DILocation(line: 801, column: 33, scope: !2432)
!2437 = !DILocalVariable(name: "argsize", arg: 2, scope: !2432, file: !116, line: 801, type: !138)
!2438 = !DILocation(line: 801, column: 45, scope: !2432)
!2439 = !DILocalVariable(name: "size", arg: 3, scope: !2432, file: !116, line: 801, type: !251)
!2440 = !DILocation(line: 801, column: 62, scope: !2432)
!2441 = !DILocalVariable(name: "o", arg: 4, scope: !2432, file: !116, line: 802, type: !1354)
!2442 = !DILocation(line: 802, column: 51, scope: !2432)
!2443 = !DILocalVariable(name: "p", scope: !2432, file: !116, line: 804, type: !1354)
!2444 = !DILocation(line: 804, column: 33, scope: !2432)
!2445 = !DILocation(line: 804, column: 37, scope: !2432)
!2446 = !DILocation(line: 804, column: 41, scope: !2432)
!2447 = !DILocalVariable(name: "saved_errno", scope: !2432, file: !116, line: 805, type: !25)
!2448 = !DILocation(line: 805, column: 7, scope: !2432)
!2449 = !DILocation(line: 805, column: 21, scope: !2432)
!2450 = !DILocalVariable(name: "flags", scope: !2432, file: !116, line: 807, type: !25)
!2451 = !DILocation(line: 807, column: 7, scope: !2432)
!2452 = !DILocation(line: 807, column: 15, scope: !2432)
!2453 = !DILocation(line: 807, column: 18, scope: !2432)
!2454 = !DILocation(line: 807, column: 27, scope: !2432)
!2455 = !DILocation(line: 807, column: 24, scope: !2432)
!2456 = !DILocalVariable(name: "bufsize", scope: !2432, file: !116, line: 808, type: !138)
!2457 = !DILocation(line: 808, column: 10, scope: !2432)
!2458 = !DILocation(line: 808, column: 55, scope: !2432)
!2459 = !DILocation(line: 808, column: 60, scope: !2432)
!2460 = !DILocation(line: 808, column: 69, scope: !2432)
!2461 = !DILocation(line: 808, column: 72, scope: !2432)
!2462 = !DILocation(line: 809, column: 46, scope: !2432)
!2463 = !DILocation(line: 809, column: 53, scope: !2432)
!2464 = !DILocation(line: 809, column: 56, scope: !2432)
!2465 = !DILocation(line: 810, column: 46, scope: !2432)
!2466 = !DILocation(line: 810, column: 49, scope: !2432)
!2467 = !DILocation(line: 811, column: 46, scope: !2432)
!2468 = !DILocation(line: 811, column: 49, scope: !2432)
!2469 = !DILocation(line: 808, column: 20, scope: !2432)
!2470 = !DILocation(line: 811, column: 62, scope: !2432)
!2471 = !DILocalVariable(name: "buf", scope: !2432, file: !116, line: 812, type: !22)
!2472 = !DILocation(line: 812, column: 9, scope: !2432)
!2473 = !DILocation(line: 812, column: 27, scope: !2432)
!2474 = !DILocation(line: 812, column: 15, scope: !2432)
!2475 = !DILocation(line: 813, column: 29, scope: !2432)
!2476 = !DILocation(line: 813, column: 34, scope: !2432)
!2477 = !DILocation(line: 813, column: 43, scope: !2432)
!2478 = !DILocation(line: 813, column: 48, scope: !2432)
!2479 = !DILocation(line: 813, column: 57, scope: !2432)
!2480 = !DILocation(line: 813, column: 60, scope: !2432)
!2481 = !DILocation(line: 813, column: 67, scope: !2432)
!2482 = !DILocation(line: 814, column: 29, scope: !2432)
!2483 = !DILocation(line: 814, column: 32, scope: !2432)
!2484 = !DILocation(line: 815, column: 29, scope: !2432)
!2485 = !DILocation(line: 815, column: 32, scope: !2432)
!2486 = !DILocation(line: 815, column: 44, scope: !2432)
!2487 = !DILocation(line: 815, column: 47, scope: !2432)
!2488 = !DILocation(line: 813, column: 3, scope: !2432)
!2489 = !DILocation(line: 816, column: 11, scope: !2432)
!2490 = !DILocation(line: 816, column: 3, scope: !2432)
!2491 = !DILocation(line: 816, column: 9, scope: !2432)
!2492 = !DILocation(line: 817, column: 7, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2432, file: !116, line: 817, column: 7)
!2494 = !DILocation(line: 817, column: 7, scope: !2432)
!2495 = !DILocation(line: 818, column: 13, scope: !2493)
!2496 = !DILocation(line: 818, column: 21, scope: !2493)
!2497 = !DILocation(line: 818, column: 6, scope: !2493)
!2498 = !DILocation(line: 818, column: 11, scope: !2493)
!2499 = !DILocation(line: 818, column: 5, scope: !2493)
!2500 = !DILocation(line: 819, column: 10, scope: !2432)
!2501 = !DILocation(line: 819, column: 3, scope: !2432)
!2502 = distinct !DISubprogram(name: "quotearg_free", scope: !116, file: !116, line: 837, type: !94, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2503 = !DILocalVariable(name: "sv", scope: !2502, file: !116, line: 839, type: !177)
!2504 = !DILocation(line: 839, column: 19, scope: !2502)
!2505 = !DILocation(line: 839, column: 24, scope: !2502)
!2506 = !DILocalVariable(name: "i", scope: !2507, file: !116, line: 840, type: !25)
!2507 = distinct !DILexicalBlock(scope: !2502, file: !116, line: 840, column: 3)
!2508 = !DILocation(line: 840, column: 12, scope: !2507)
!2509 = !DILocation(line: 840, column: 8, scope: !2507)
!2510 = !DILocation(line: 840, column: 19, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2507, file: !116, line: 840, column: 3)
!2512 = !DILocation(line: 840, column: 23, scope: !2511)
!2513 = !DILocation(line: 840, column: 21, scope: !2511)
!2514 = !DILocation(line: 840, column: 3, scope: !2507)
!2515 = !DILocation(line: 841, column: 11, scope: !2511)
!2516 = !DILocation(line: 841, column: 14, scope: !2511)
!2517 = !DILocation(line: 841, column: 17, scope: !2511)
!2518 = !DILocation(line: 841, column: 5, scope: !2511)
!2519 = !DILocation(line: 840, column: 32, scope: !2511)
!2520 = !DILocation(line: 840, column: 3, scope: !2511)
!2521 = distinct !{!2521, !2514, !2522, !418}
!2522 = !DILocation(line: 841, column: 20, scope: !2507)
!2523 = !DILocation(line: 842, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2502, file: !116, line: 842, column: 7)
!2525 = !DILocation(line: 842, column: 13, scope: !2524)
!2526 = !DILocation(line: 842, column: 17, scope: !2524)
!2527 = !DILocation(line: 842, column: 7, scope: !2502)
!2528 = !DILocation(line: 844, column: 13, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2524, file: !116, line: 843, column: 5)
!2530 = !DILocation(line: 844, column: 19, scope: !2529)
!2531 = !DILocation(line: 844, column: 7, scope: !2529)
!2532 = !DILocation(line: 845, column: 21, scope: !2529)
!2533 = !DILocation(line: 846, column: 20, scope: !2529)
!2534 = !DILocation(line: 847, column: 5, scope: !2529)
!2535 = !DILocation(line: 848, column: 7, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2502, file: !116, line: 848, column: 7)
!2537 = !DILocation(line: 848, column: 10, scope: !2536)
!2538 = !DILocation(line: 848, column: 7, scope: !2502)
!2539 = !DILocation(line: 850, column: 13, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2536, file: !116, line: 849, column: 5)
!2541 = !DILocation(line: 850, column: 7, scope: !2540)
!2542 = !DILocation(line: 851, column: 15, scope: !2540)
!2543 = !DILocation(line: 852, column: 5, scope: !2540)
!2544 = !DILocation(line: 853, column: 10, scope: !2502)
!2545 = !DILocation(line: 854, column: 1, scope: !2502)
!2546 = distinct !DISubprogram(name: "quotearg_n", scope: !116, file: !116, line: 919, type: !2547, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!22, !25, !34}
!2549 = !DILocalVariable(name: "n", arg: 1, scope: !2546, file: !116, line: 919, type: !25)
!2550 = !DILocation(line: 919, column: 17, scope: !2546)
!2551 = !DILocalVariable(name: "arg", arg: 2, scope: !2546, file: !116, line: 919, type: !34)
!2552 = !DILocation(line: 919, column: 32, scope: !2546)
!2553 = !DILocation(line: 921, column: 30, scope: !2546)
!2554 = !DILocation(line: 921, column: 33, scope: !2546)
!2555 = !DILocation(line: 921, column: 10, scope: !2546)
!2556 = !DILocation(line: 921, column: 3, scope: !2546)
!2557 = distinct !DISubprogram(name: "quotearg_n_options", scope: !116, file: !116, line: 866, type: !2558, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!22, !25, !34, !138, !1354}
!2560 = !DILocalVariable(name: "n", arg: 1, scope: !2557, file: !116, line: 866, type: !25)
!2561 = !DILocation(line: 866, column: 25, scope: !2557)
!2562 = !DILocalVariable(name: "arg", arg: 2, scope: !2557, file: !116, line: 866, type: !34)
!2563 = !DILocation(line: 866, column: 40, scope: !2557)
!2564 = !DILocalVariable(name: "argsize", arg: 3, scope: !2557, file: !116, line: 866, type: !138)
!2565 = !DILocation(line: 866, column: 52, scope: !2557)
!2566 = !DILocalVariable(name: "options", arg: 4, scope: !2557, file: !116, line: 867, type: !1354)
!2567 = !DILocation(line: 867, column: 51, scope: !2557)
!2568 = !DILocalVariable(name: "saved_errno", scope: !2557, file: !116, line: 869, type: !25)
!2569 = !DILocation(line: 869, column: 7, scope: !2557)
!2570 = !DILocation(line: 869, column: 21, scope: !2557)
!2571 = !DILocalVariable(name: "sv", scope: !2557, file: !116, line: 871, type: !177)
!2572 = !DILocation(line: 871, column: 19, scope: !2557)
!2573 = !DILocation(line: 871, column: 24, scope: !2557)
!2574 = !DILocalVariable(name: "nslots_max", scope: !2557, file: !116, line: 873, type: !25)
!2575 = !DILocation(line: 873, column: 7, scope: !2557)
!2576 = !DILocation(line: 874, column: 15, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2557, file: !116, line: 874, column: 7)
!2578 = !DILocation(line: 874, column: 12, scope: !2577)
!2579 = !DILocation(line: 874, column: 17, scope: !2577)
!2580 = !DILocation(line: 874, column: 20, scope: !2577)
!2581 = !DILocation(line: 874, column: 24, scope: !2577)
!2582 = !DILocation(line: 874, column: 22, scope: !2577)
!2583 = !DILocation(line: 874, column: 7, scope: !2557)
!2584 = !DILocation(line: 875, column: 5, scope: !2577)
!2585 = !DILocation(line: 877, column: 7, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2557, file: !116, line: 877, column: 7)
!2587 = !DILocation(line: 877, column: 17, scope: !2586)
!2588 = !DILocation(line: 877, column: 14, scope: !2586)
!2589 = !DILocation(line: 877, column: 7, scope: !2557)
!2590 = !DILocalVariable(name: "preallocated", scope: !2591, file: !116, line: 879, type: !61)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !116, line: 878, column: 5)
!2592 = !DILocation(line: 879, column: 12, scope: !2591)
!2593 = !DILocation(line: 879, column: 28, scope: !2591)
!2594 = !DILocation(line: 879, column: 31, scope: !2591)
!2595 = !DILocalVariable(name: "new_nslots", scope: !2591, file: !116, line: 880, type: !259)
!2596 = !DILocation(line: 880, column: 13, scope: !2591)
!2597 = !DILocation(line: 880, column: 26, scope: !2591)
!2598 = !DILocation(line: 882, column: 31, scope: !2591)
!2599 = !DILocation(line: 882, column: 53, scope: !2591)
!2600 = !DILocation(line: 883, column: 31, scope: !2591)
!2601 = !DILocation(line: 883, column: 35, scope: !2591)
!2602 = !DILocation(line: 883, column: 33, scope: !2591)
!2603 = !DILocation(line: 883, column: 42, scope: !2591)
!2604 = !DILocation(line: 883, column: 47, scope: !2591)
!2605 = !DILocation(line: 882, column: 22, scope: !2591)
!2606 = !DILocation(line: 882, column: 20, scope: !2591)
!2607 = !DILocation(line: 882, column: 15, scope: !2591)
!2608 = !DILocation(line: 884, column: 11, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2591, file: !116, line: 884, column: 11)
!2610 = !DILocation(line: 884, column: 11, scope: !2591)
!2611 = !DILocation(line: 885, column: 10, scope: !2609)
!2612 = !DILocation(line: 885, column: 15, scope: !2609)
!2613 = !DILocation(line: 885, column: 9, scope: !2609)
!2614 = !DILocation(line: 886, column: 15, scope: !2591)
!2615 = !DILocation(line: 886, column: 20, scope: !2591)
!2616 = !DILocation(line: 886, column: 18, scope: !2591)
!2617 = !DILocation(line: 886, column: 7, scope: !2591)
!2618 = !DILocation(line: 886, column: 32, scope: !2591)
!2619 = !DILocation(line: 886, column: 45, scope: !2591)
!2620 = !DILocation(line: 886, column: 43, scope: !2591)
!2621 = !DILocation(line: 886, column: 53, scope: !2591)
!2622 = !DILocation(line: 887, column: 16, scope: !2591)
!2623 = !DILocation(line: 887, column: 14, scope: !2591)
!2624 = !DILocation(line: 888, column: 5, scope: !2591)
!2625 = !DILocalVariable(name: "size", scope: !2626, file: !116, line: 891, type: !138)
!2626 = distinct !DILexicalBlock(scope: !2557, file: !116, line: 890, column: 3)
!2627 = !DILocation(line: 891, column: 12, scope: !2626)
!2628 = !DILocation(line: 891, column: 19, scope: !2626)
!2629 = !DILocation(line: 891, column: 22, scope: !2626)
!2630 = !DILocation(line: 891, column: 25, scope: !2626)
!2631 = !DILocalVariable(name: "val", scope: !2626, file: !116, line: 892, type: !22)
!2632 = !DILocation(line: 892, column: 11, scope: !2626)
!2633 = !DILocation(line: 892, column: 17, scope: !2626)
!2634 = !DILocation(line: 892, column: 20, scope: !2626)
!2635 = !DILocation(line: 892, column: 23, scope: !2626)
!2636 = !DILocalVariable(name: "flags", scope: !2626, file: !116, line: 894, type: !25)
!2637 = !DILocation(line: 894, column: 9, scope: !2626)
!2638 = !DILocation(line: 894, column: 17, scope: !2626)
!2639 = !DILocation(line: 894, column: 26, scope: !2626)
!2640 = !DILocation(line: 894, column: 32, scope: !2626)
!2641 = !DILocalVariable(name: "qsize", scope: !2626, file: !116, line: 895, type: !138)
!2642 = !DILocation(line: 895, column: 12, scope: !2626)
!2643 = !DILocation(line: 895, column: 46, scope: !2626)
!2644 = !DILocation(line: 895, column: 51, scope: !2626)
!2645 = !DILocation(line: 895, column: 57, scope: !2626)
!2646 = !DILocation(line: 895, column: 62, scope: !2626)
!2647 = !DILocation(line: 896, column: 46, scope: !2626)
!2648 = !DILocation(line: 896, column: 55, scope: !2626)
!2649 = !DILocation(line: 896, column: 62, scope: !2626)
!2650 = !DILocation(line: 897, column: 46, scope: !2626)
!2651 = !DILocation(line: 897, column: 55, scope: !2626)
!2652 = !DILocation(line: 898, column: 46, scope: !2626)
!2653 = !DILocation(line: 898, column: 55, scope: !2626)
!2654 = !DILocation(line: 899, column: 46, scope: !2626)
!2655 = !DILocation(line: 899, column: 55, scope: !2626)
!2656 = !DILocation(line: 895, column: 20, scope: !2626)
!2657 = !DILocation(line: 901, column: 9, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2626, file: !116, line: 901, column: 9)
!2659 = !DILocation(line: 901, column: 17, scope: !2658)
!2660 = !DILocation(line: 901, column: 14, scope: !2658)
!2661 = !DILocation(line: 901, column: 9, scope: !2626)
!2662 = !DILocation(line: 903, column: 29, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2658, file: !116, line: 902, column: 7)
!2664 = !DILocation(line: 903, column: 35, scope: !2663)
!2665 = !DILocation(line: 903, column: 27, scope: !2663)
!2666 = !DILocation(line: 903, column: 9, scope: !2663)
!2667 = !DILocation(line: 903, column: 12, scope: !2663)
!2668 = !DILocation(line: 903, column: 15, scope: !2663)
!2669 = !DILocation(line: 903, column: 20, scope: !2663)
!2670 = !DILocation(line: 904, column: 13, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2663, file: !116, line: 904, column: 13)
!2672 = !DILocation(line: 904, column: 17, scope: !2671)
!2673 = !DILocation(line: 904, column: 13, scope: !2663)
!2674 = !DILocation(line: 905, column: 17, scope: !2671)
!2675 = !DILocation(line: 905, column: 11, scope: !2671)
!2676 = !DILocation(line: 906, column: 39, scope: !2663)
!2677 = !DILocation(line: 906, column: 27, scope: !2663)
!2678 = !DILocation(line: 906, column: 25, scope: !2663)
!2679 = !DILocation(line: 906, column: 9, scope: !2663)
!2680 = !DILocation(line: 906, column: 12, scope: !2663)
!2681 = !DILocation(line: 906, column: 15, scope: !2663)
!2682 = !DILocation(line: 906, column: 19, scope: !2663)
!2683 = !DILocation(line: 907, column: 35, scope: !2663)
!2684 = !DILocation(line: 907, column: 40, scope: !2663)
!2685 = !DILocation(line: 907, column: 46, scope: !2663)
!2686 = !DILocation(line: 907, column: 51, scope: !2663)
!2687 = !DILocation(line: 907, column: 60, scope: !2663)
!2688 = !DILocation(line: 907, column: 69, scope: !2663)
!2689 = !DILocation(line: 908, column: 35, scope: !2663)
!2690 = !DILocation(line: 908, column: 42, scope: !2663)
!2691 = !DILocation(line: 908, column: 51, scope: !2663)
!2692 = !DILocation(line: 909, column: 35, scope: !2663)
!2693 = !DILocation(line: 909, column: 44, scope: !2663)
!2694 = !DILocation(line: 910, column: 35, scope: !2663)
!2695 = !DILocation(line: 910, column: 44, scope: !2663)
!2696 = !DILocation(line: 907, column: 9, scope: !2663)
!2697 = !DILocation(line: 911, column: 7, scope: !2663)
!2698 = !DILocation(line: 913, column: 13, scope: !2626)
!2699 = !DILocation(line: 913, column: 5, scope: !2626)
!2700 = !DILocation(line: 913, column: 11, scope: !2626)
!2701 = !DILocation(line: 914, column: 12, scope: !2626)
!2702 = !DILocation(line: 914, column: 5, scope: !2626)
!2703 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !116, file: !116, line: 925, type: !2704, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!22, !25, !34, !138}
!2706 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !116, line: 925, type: !25)
!2707 = !DILocation(line: 925, column: 21, scope: !2703)
!2708 = !DILocalVariable(name: "arg", arg: 2, scope: !2703, file: !116, line: 925, type: !34)
!2709 = !DILocation(line: 925, column: 36, scope: !2703)
!2710 = !DILocalVariable(name: "argsize", arg: 3, scope: !2703, file: !116, line: 925, type: !138)
!2711 = !DILocation(line: 925, column: 48, scope: !2703)
!2712 = !DILocation(line: 927, column: 30, scope: !2703)
!2713 = !DILocation(line: 927, column: 33, scope: !2703)
!2714 = !DILocation(line: 927, column: 38, scope: !2703)
!2715 = !DILocation(line: 927, column: 10, scope: !2703)
!2716 = !DILocation(line: 927, column: 3, scope: !2703)
!2717 = distinct !DISubprogram(name: "quotearg", scope: !116, file: !116, line: 931, type: !2718, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!22, !34}
!2720 = !DILocalVariable(name: "arg", arg: 1, scope: !2717, file: !116, line: 931, type: !34)
!2721 = !DILocation(line: 931, column: 23, scope: !2717)
!2722 = !DILocation(line: 933, column: 25, scope: !2717)
!2723 = !DILocation(line: 933, column: 10, scope: !2717)
!2724 = !DILocation(line: 933, column: 3, scope: !2717)
!2725 = distinct !DISubprogram(name: "quotearg_mem", scope: !116, file: !116, line: 937, type: !2726, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!22, !34, !138}
!2728 = !DILocalVariable(name: "arg", arg: 1, scope: !2725, file: !116, line: 937, type: !34)
!2729 = !DILocation(line: 937, column: 27, scope: !2725)
!2730 = !DILocalVariable(name: "argsize", arg: 2, scope: !2725, file: !116, line: 937, type: !138)
!2731 = !DILocation(line: 937, column: 39, scope: !2725)
!2732 = !DILocation(line: 939, column: 29, scope: !2725)
!2733 = !DILocation(line: 939, column: 34, scope: !2725)
!2734 = !DILocation(line: 939, column: 10, scope: !2725)
!2735 = !DILocation(line: 939, column: 3, scope: !2725)
!2736 = distinct !DISubprogram(name: "quotearg_n_style", scope: !116, file: !116, line: 943, type: !2737, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!22, !25, !118, !34}
!2739 = !DILocalVariable(name: "n", arg: 1, scope: !2736, file: !116, line: 943, type: !25)
!2740 = !DILocation(line: 943, column: 23, scope: !2736)
!2741 = !DILocalVariable(name: "s", arg: 2, scope: !2736, file: !116, line: 943, type: !118)
!2742 = !DILocation(line: 943, column: 45, scope: !2736)
!2743 = !DILocalVariable(name: "arg", arg: 3, scope: !2736, file: !116, line: 943, type: !34)
!2744 = !DILocation(line: 943, column: 60, scope: !2736)
!2745 = !DILocalVariable(name: "o", scope: !2736, file: !116, line: 945, type: !1355)
!2746 = !DILocation(line: 945, column: 32, scope: !2736)
!2747 = !DILocation(line: 945, column: 64, scope: !2736)
!2748 = !DILocation(line: 945, column: 36, scope: !2736)
!2749 = !DILocation(line: 946, column: 30, scope: !2736)
!2750 = !DILocation(line: 946, column: 33, scope: !2736)
!2751 = !DILocation(line: 946, column: 10, scope: !2736)
!2752 = !DILocation(line: 946, column: 3, scope: !2736)
!2753 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !116, file: !116, line: 183, type: !2754, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!150, !118}
!2756 = !DILocalVariable(name: "style", arg: 1, scope: !2753, file: !116, line: 183, type: !118)
!2757 = !DILocation(line: 183, column: 48, scope: !2753)
!2758 = !DILocalVariable(name: "o", scope: !2753, file: !116, line: 185, type: !150)
!2759 = !DILocation(line: 185, column: 26, scope: !2753)
!2760 = !DILocation(line: 186, column: 7, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2753, file: !116, line: 186, column: 7)
!2762 = !DILocation(line: 186, column: 13, scope: !2761)
!2763 = !DILocation(line: 186, column: 7, scope: !2753)
!2764 = !DILocation(line: 187, column: 5, scope: !2761)
!2765 = !DILocation(line: 188, column: 13, scope: !2753)
!2766 = !DILocation(line: 188, column: 5, scope: !2753)
!2767 = !DILocation(line: 188, column: 11, scope: !2753)
!2768 = !DILocation(line: 189, column: 3, scope: !2753)
!2769 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !116, file: !116, line: 950, type: !2770, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!22, !25, !118, !34, !138}
!2772 = !DILocalVariable(name: "n", arg: 1, scope: !2769, file: !116, line: 950, type: !25)
!2773 = !DILocation(line: 950, column: 27, scope: !2769)
!2774 = !DILocalVariable(name: "s", arg: 2, scope: !2769, file: !116, line: 950, type: !118)
!2775 = !DILocation(line: 950, column: 49, scope: !2769)
!2776 = !DILocalVariable(name: "arg", arg: 3, scope: !2769, file: !116, line: 951, type: !34)
!2777 = !DILocation(line: 951, column: 35, scope: !2769)
!2778 = !DILocalVariable(name: "argsize", arg: 4, scope: !2769, file: !116, line: 951, type: !138)
!2779 = !DILocation(line: 951, column: 47, scope: !2769)
!2780 = !DILocalVariable(name: "o", scope: !2769, file: !116, line: 953, type: !1355)
!2781 = !DILocation(line: 953, column: 32, scope: !2769)
!2782 = !DILocation(line: 953, column: 64, scope: !2769)
!2783 = !DILocation(line: 953, column: 36, scope: !2769)
!2784 = !DILocation(line: 954, column: 30, scope: !2769)
!2785 = !DILocation(line: 954, column: 33, scope: !2769)
!2786 = !DILocation(line: 954, column: 38, scope: !2769)
!2787 = !DILocation(line: 954, column: 10, scope: !2769)
!2788 = !DILocation(line: 954, column: 3, scope: !2769)
!2789 = distinct !DISubprogram(name: "quotearg_style", scope: !116, file: !116, line: 958, type: !2790, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!22, !118, !34}
!2792 = !DILocalVariable(name: "s", arg: 1, scope: !2789, file: !116, line: 958, type: !118)
!2793 = !DILocation(line: 958, column: 36, scope: !2789)
!2794 = !DILocalVariable(name: "arg", arg: 2, scope: !2789, file: !116, line: 958, type: !34)
!2795 = !DILocation(line: 958, column: 51, scope: !2789)
!2796 = !DILocation(line: 960, column: 31, scope: !2789)
!2797 = !DILocation(line: 960, column: 34, scope: !2789)
!2798 = !DILocation(line: 960, column: 10, scope: !2789)
!2799 = !DILocation(line: 960, column: 3, scope: !2789)
!2800 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !116, file: !116, line: 964, type: !2801, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!22, !118, !34, !138}
!2803 = !DILocalVariable(name: "s", arg: 1, scope: !2800, file: !116, line: 964, type: !118)
!2804 = !DILocation(line: 964, column: 40, scope: !2800)
!2805 = !DILocalVariable(name: "arg", arg: 2, scope: !2800, file: !116, line: 964, type: !34)
!2806 = !DILocation(line: 964, column: 55, scope: !2800)
!2807 = !DILocalVariable(name: "argsize", arg: 3, scope: !2800, file: !116, line: 964, type: !138)
!2808 = !DILocation(line: 964, column: 67, scope: !2800)
!2809 = !DILocation(line: 966, column: 35, scope: !2800)
!2810 = !DILocation(line: 966, column: 38, scope: !2800)
!2811 = !DILocation(line: 966, column: 43, scope: !2800)
!2812 = !DILocation(line: 966, column: 10, scope: !2800)
!2813 = !DILocation(line: 966, column: 3, scope: !2800)
!2814 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !116, file: !116, line: 970, type: !2815, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!22, !34, !138, !23}
!2817 = !DILocalVariable(name: "arg", arg: 1, scope: !2814, file: !116, line: 970, type: !34)
!2818 = !DILocation(line: 970, column: 32, scope: !2814)
!2819 = !DILocalVariable(name: "argsize", arg: 2, scope: !2814, file: !116, line: 970, type: !138)
!2820 = !DILocation(line: 970, column: 44, scope: !2814)
!2821 = !DILocalVariable(name: "ch", arg: 3, scope: !2814, file: !116, line: 970, type: !23)
!2822 = !DILocation(line: 970, column: 58, scope: !2814)
!2823 = !DILocalVariable(name: "options", scope: !2814, file: !116, line: 972, type: !150)
!2824 = !DILocation(line: 972, column: 26, scope: !2814)
!2825 = !DILocation(line: 973, column: 13, scope: !2814)
!2826 = !DILocation(line: 974, column: 31, scope: !2814)
!2827 = !DILocation(line: 974, column: 3, scope: !2814)
!2828 = !DILocation(line: 975, column: 33, scope: !2814)
!2829 = !DILocation(line: 975, column: 38, scope: !2814)
!2830 = !DILocation(line: 975, column: 10, scope: !2814)
!2831 = !DILocation(line: 975, column: 3, scope: !2814)
!2832 = distinct !DISubprogram(name: "quotearg_char", scope: !116, file: !116, line: 979, type: !2833, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!22, !34, !23}
!2835 = !DILocalVariable(name: "arg", arg: 1, scope: !2832, file: !116, line: 979, type: !34)
!2836 = !DILocation(line: 979, column: 28, scope: !2832)
!2837 = !DILocalVariable(name: "ch", arg: 2, scope: !2832, file: !116, line: 979, type: !23)
!2838 = !DILocation(line: 979, column: 38, scope: !2832)
!2839 = !DILocation(line: 981, column: 29, scope: !2832)
!2840 = !DILocation(line: 981, column: 44, scope: !2832)
!2841 = !DILocation(line: 981, column: 10, scope: !2832)
!2842 = !DILocation(line: 981, column: 3, scope: !2832)
!2843 = distinct !DISubprogram(name: "quotearg_colon", scope: !116, file: !116, line: 985, type: !2718, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2844 = !DILocalVariable(name: "arg", arg: 1, scope: !2843, file: !116, line: 985, type: !34)
!2845 = !DILocation(line: 985, column: 29, scope: !2843)
!2846 = !DILocation(line: 987, column: 25, scope: !2843)
!2847 = !DILocation(line: 987, column: 10, scope: !2843)
!2848 = !DILocation(line: 987, column: 3, scope: !2843)
!2849 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !116, file: !116, line: 991, type: !2726, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2850 = !DILocalVariable(name: "arg", arg: 1, scope: !2849, file: !116, line: 991, type: !34)
!2851 = !DILocation(line: 991, column: 33, scope: !2849)
!2852 = !DILocalVariable(name: "argsize", arg: 2, scope: !2849, file: !116, line: 991, type: !138)
!2853 = !DILocation(line: 991, column: 45, scope: !2849)
!2854 = !DILocation(line: 993, column: 29, scope: !2849)
!2855 = !DILocation(line: 993, column: 34, scope: !2849)
!2856 = !DILocation(line: 993, column: 10, scope: !2849)
!2857 = !DILocation(line: 993, column: 3, scope: !2849)
!2858 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !116, file: !116, line: 997, type: !2737, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2859 = !DILocalVariable(name: "n", arg: 1, scope: !2858, file: !116, line: 997, type: !25)
!2860 = !DILocation(line: 997, column: 29, scope: !2858)
!2861 = !DILocalVariable(name: "s", arg: 2, scope: !2858, file: !116, line: 997, type: !118)
!2862 = !DILocation(line: 997, column: 51, scope: !2858)
!2863 = !DILocalVariable(name: "arg", arg: 3, scope: !2858, file: !116, line: 997, type: !34)
!2864 = !DILocation(line: 997, column: 66, scope: !2858)
!2865 = !DILocalVariable(name: "options", scope: !2858, file: !116, line: 999, type: !150)
!2866 = !DILocation(line: 999, column: 26, scope: !2858)
!2867 = !DILocation(line: 1000, column: 41, scope: !2858)
!2868 = !DILocation(line: 1000, column: 13, scope: !2858)
!2869 = !DILocation(line: 1001, column: 3, scope: !2858)
!2870 = !DILocation(line: 1002, column: 30, scope: !2858)
!2871 = !DILocation(line: 1002, column: 33, scope: !2858)
!2872 = !DILocation(line: 1002, column: 10, scope: !2858)
!2873 = !DILocation(line: 1002, column: 3, scope: !2858)
!2874 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !116, file: !116, line: 1006, type: !2875, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!22, !25, !34, !34, !34}
!2877 = !DILocalVariable(name: "n", arg: 1, scope: !2874, file: !116, line: 1006, type: !25)
!2878 = !DILocation(line: 1006, column: 24, scope: !2874)
!2879 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2874, file: !116, line: 1006, type: !34)
!2880 = !DILocation(line: 1006, column: 39, scope: !2874)
!2881 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2874, file: !116, line: 1007, type: !34)
!2882 = !DILocation(line: 1007, column: 32, scope: !2874)
!2883 = !DILocalVariable(name: "arg", arg: 4, scope: !2874, file: !116, line: 1007, type: !34)
!2884 = !DILocation(line: 1007, column: 57, scope: !2874)
!2885 = !DILocation(line: 1009, column: 33, scope: !2874)
!2886 = !DILocation(line: 1009, column: 36, scope: !2874)
!2887 = !DILocation(line: 1009, column: 48, scope: !2874)
!2888 = !DILocation(line: 1009, column: 61, scope: !2874)
!2889 = !DILocation(line: 1009, column: 10, scope: !2874)
!2890 = !DILocation(line: 1009, column: 3, scope: !2874)
!2891 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !116, file: !116, line: 1014, type: !2892, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!22, !25, !34, !34, !34, !138}
!2894 = !DILocalVariable(name: "n", arg: 1, scope: !2891, file: !116, line: 1014, type: !25)
!2895 = !DILocation(line: 1014, column: 28, scope: !2891)
!2896 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2891, file: !116, line: 1014, type: !34)
!2897 = !DILocation(line: 1014, column: 43, scope: !2891)
!2898 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2891, file: !116, line: 1015, type: !34)
!2899 = !DILocation(line: 1015, column: 36, scope: !2891)
!2900 = !DILocalVariable(name: "arg", arg: 4, scope: !2891, file: !116, line: 1016, type: !34)
!2901 = !DILocation(line: 1016, column: 36, scope: !2891)
!2902 = !DILocalVariable(name: "argsize", arg: 5, scope: !2891, file: !116, line: 1016, type: !138)
!2903 = !DILocation(line: 1016, column: 48, scope: !2891)
!2904 = !DILocalVariable(name: "o", scope: !2891, file: !116, line: 1018, type: !150)
!2905 = !DILocation(line: 1018, column: 26, scope: !2891)
!2906 = !DILocation(line: 1018, column: 30, scope: !2891)
!2907 = !DILocation(line: 1019, column: 27, scope: !2891)
!2908 = !DILocation(line: 1019, column: 39, scope: !2891)
!2909 = !DILocation(line: 1019, column: 3, scope: !2891)
!2910 = !DILocation(line: 1020, column: 30, scope: !2891)
!2911 = !DILocation(line: 1020, column: 33, scope: !2891)
!2912 = !DILocation(line: 1020, column: 38, scope: !2891)
!2913 = !DILocation(line: 1020, column: 10, scope: !2891)
!2914 = !DILocation(line: 1020, column: 3, scope: !2891)
!2915 = distinct !DISubprogram(name: "quotearg_custom", scope: !116, file: !116, line: 1024, type: !2916, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!22, !34, !34, !34}
!2918 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2915, file: !116, line: 1024, type: !34)
!2919 = !DILocation(line: 1024, column: 30, scope: !2915)
!2920 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2915, file: !116, line: 1024, type: !34)
!2921 = !DILocation(line: 1024, column: 54, scope: !2915)
!2922 = !DILocalVariable(name: "arg", arg: 3, scope: !2915, file: !116, line: 1025, type: !34)
!2923 = !DILocation(line: 1025, column: 30, scope: !2915)
!2924 = !DILocation(line: 1027, column: 32, scope: !2915)
!2925 = !DILocation(line: 1027, column: 44, scope: !2915)
!2926 = !DILocation(line: 1027, column: 57, scope: !2915)
!2927 = !DILocation(line: 1027, column: 10, scope: !2915)
!2928 = !DILocation(line: 1027, column: 3, scope: !2915)
!2929 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !116, file: !116, line: 1031, type: !2930, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!22, !34, !34, !34, !138}
!2932 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2929, file: !116, line: 1031, type: !34)
!2933 = !DILocation(line: 1031, column: 34, scope: !2929)
!2934 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2929, file: !116, line: 1031, type: !34)
!2935 = !DILocation(line: 1031, column: 58, scope: !2929)
!2936 = !DILocalVariable(name: "arg", arg: 3, scope: !2929, file: !116, line: 1032, type: !34)
!2937 = !DILocation(line: 1032, column: 34, scope: !2929)
!2938 = !DILocalVariable(name: "argsize", arg: 4, scope: !2929, file: !116, line: 1032, type: !138)
!2939 = !DILocation(line: 1032, column: 46, scope: !2929)
!2940 = !DILocation(line: 1034, column: 36, scope: !2929)
!2941 = !DILocation(line: 1034, column: 48, scope: !2929)
!2942 = !DILocation(line: 1034, column: 61, scope: !2929)
!2943 = !DILocation(line: 1035, column: 33, scope: !2929)
!2944 = !DILocation(line: 1034, column: 10, scope: !2929)
!2945 = !DILocation(line: 1034, column: 3, scope: !2929)
!2946 = distinct !DISubprogram(name: "quote_n_mem", scope: !116, file: !116, line: 1049, type: !2947, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!34, !25, !34, !138}
!2949 = !DILocalVariable(name: "n", arg: 1, scope: !2946, file: !116, line: 1049, type: !25)
!2950 = !DILocation(line: 1049, column: 18, scope: !2946)
!2951 = !DILocalVariable(name: "arg", arg: 2, scope: !2946, file: !116, line: 1049, type: !34)
!2952 = !DILocation(line: 1049, column: 33, scope: !2946)
!2953 = !DILocalVariable(name: "argsize", arg: 3, scope: !2946, file: !116, line: 1049, type: !138)
!2954 = !DILocation(line: 1049, column: 45, scope: !2946)
!2955 = !DILocation(line: 1051, column: 30, scope: !2946)
!2956 = !DILocation(line: 1051, column: 33, scope: !2946)
!2957 = !DILocation(line: 1051, column: 38, scope: !2946)
!2958 = !DILocation(line: 1051, column: 10, scope: !2946)
!2959 = !DILocation(line: 1051, column: 3, scope: !2946)
!2960 = distinct !DISubprogram(name: "quote_mem", scope: !116, file: !116, line: 1055, type: !2961, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!34, !34, !138}
!2963 = !DILocalVariable(name: "arg", arg: 1, scope: !2960, file: !116, line: 1055, type: !34)
!2964 = !DILocation(line: 1055, column: 24, scope: !2960)
!2965 = !DILocalVariable(name: "argsize", arg: 2, scope: !2960, file: !116, line: 1055, type: !138)
!2966 = !DILocation(line: 1055, column: 36, scope: !2960)
!2967 = !DILocation(line: 1057, column: 26, scope: !2960)
!2968 = !DILocation(line: 1057, column: 31, scope: !2960)
!2969 = !DILocation(line: 1057, column: 10, scope: !2960)
!2970 = !DILocation(line: 1057, column: 3, scope: !2960)
!2971 = distinct !DISubprogram(name: "quote_n", scope: !116, file: !116, line: 1061, type: !2972, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!34, !25, !34}
!2974 = !DILocalVariable(name: "n", arg: 1, scope: !2971, file: !116, line: 1061, type: !25)
!2975 = !DILocation(line: 1061, column: 14, scope: !2971)
!2976 = !DILocalVariable(name: "arg", arg: 2, scope: !2971, file: !116, line: 1061, type: !34)
!2977 = !DILocation(line: 1061, column: 29, scope: !2971)
!2978 = !DILocation(line: 1063, column: 23, scope: !2971)
!2979 = !DILocation(line: 1063, column: 26, scope: !2971)
!2980 = !DILocation(line: 1063, column: 10, scope: !2971)
!2981 = !DILocation(line: 1063, column: 3, scope: !2971)
!2982 = distinct !DISubprogram(name: "quote", scope: !116, file: !116, line: 1067, type: !2983, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!34, !34}
!2985 = !DILocalVariable(name: "arg", arg: 1, scope: !2982, file: !116, line: 1067, type: !34)
!2986 = !DILocation(line: 1067, column: 20, scope: !2982)
!2987 = !DILocation(line: 1069, column: 22, scope: !2982)
!2988 = !DILocation(line: 1069, column: 10, scope: !2982)
!2989 = !DILocation(line: 1069, column: 3, scope: !2982)
!2990 = distinct !DISubprogram(name: "streq", scope: !2991, file: !2991, line: 1359, type: !2992, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !36)
!2991 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!61, !34, !34}
!2994 = !DILocalVariable(name: "__s1", arg: 1, scope: !2990, file: !2991, line: 1359, type: !34)
!2995 = !DILocation(line: 1359, column: 20, scope: !2990)
!2996 = !DILocalVariable(name: "__s2", arg: 2, scope: !2990, file: !2991, line: 1359, type: !34)
!2997 = !DILocation(line: 1359, column: 38, scope: !2990)
!2998 = !DILocation(line: 1361, column: 19, scope: !2990)
!2999 = !DILocation(line: 1361, column: 25, scope: !2990)
!3000 = !DILocation(line: 1361, column: 11, scope: !2990)
!3001 = !DILocation(line: 1361, column: 10, scope: !2990)
!3002 = !DILocation(line: 1361, column: 3, scope: !2990)
!3003 = distinct !DISubprogram(name: "version_etc_arn", scope: !239, file: !239, line: 61, type: !3004, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !36)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{null, !3006, !34, !34, !34, !3040, !138}
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1181, line: 7, baseType: !3008)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1183, line: 49, size: 1728, elements: !3009)
!3009 = !{!3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3008, file: !1183, line: 51, baseType: !25, size: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3008, file: !1183, line: 54, baseType: !22, size: 64, offset: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3008, file: !1183, line: 55, baseType: !22, size: 64, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3008, file: !1183, line: 56, baseType: !22, size: 64, offset: 192)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3008, file: !1183, line: 57, baseType: !22, size: 64, offset: 256)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3008, file: !1183, line: 58, baseType: !22, size: 64, offset: 320)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3008, file: !1183, line: 59, baseType: !22, size: 64, offset: 384)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3008, file: !1183, line: 60, baseType: !22, size: 64, offset: 448)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3008, file: !1183, line: 61, baseType: !22, size: 64, offset: 512)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3008, file: !1183, line: 64, baseType: !22, size: 64, offset: 576)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3008, file: !1183, line: 65, baseType: !22, size: 64, offset: 640)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3008, file: !1183, line: 66, baseType: !22, size: 64, offset: 704)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3008, file: !1183, line: 68, baseType: !1198, size: 64, offset: 768)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3008, file: !1183, line: 70, baseType: !3024, size: 64, offset: 832)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3008, file: !1183, line: 72, baseType: !25, size: 32, offset: 896)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3008, file: !1183, line: 73, baseType: !25, size: 32, offset: 928)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3008, file: !1183, line: 74, baseType: !1205, size: 64, offset: 960)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3008, file: !1183, line: 77, baseType: !26, size: 16, offset: 1024)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3008, file: !1183, line: 78, baseType: !1208, size: 8, offset: 1040)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3008, file: !1183, line: 79, baseType: !1210, size: 8, offset: 1048)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3008, file: !1183, line: 81, baseType: !1214, size: 64, offset: 1088)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3008, file: !1183, line: 89, baseType: !1217, size: 64, offset: 1152)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3008, file: !1183, line: 91, baseType: !1219, size: 64, offset: 1216)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3008, file: !1183, line: 92, baseType: !1222, size: 64, offset: 1280)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3008, file: !1183, line: 93, baseType: !3024, size: 64, offset: 1344)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3008, file: !1183, line: 94, baseType: !24, size: 64, offset: 1408)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3008, file: !1183, line: 95, baseType: !138, size: 64, offset: 1472)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3008, file: !1183, line: 96, baseType: !25, size: 32, offset: 1536)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3008, file: !1183, line: 98, baseType: !1229, size: 160, offset: 1568)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!3041 = !DILocalVariable(name: "stream", arg: 1, scope: !3003, file: !239, line: 61, type: !3006)
!3042 = !DILocation(line: 61, column: 24, scope: !3003)
!3043 = !DILocalVariable(name: "command_name", arg: 2, scope: !3003, file: !239, line: 62, type: !34)
!3044 = !DILocation(line: 62, column: 30, scope: !3003)
!3045 = !DILocalVariable(name: "package", arg: 3, scope: !3003, file: !239, line: 62, type: !34)
!3046 = !DILocation(line: 62, column: 56, scope: !3003)
!3047 = !DILocalVariable(name: "version", arg: 4, scope: !3003, file: !239, line: 63, type: !34)
!3048 = !DILocation(line: 63, column: 30, scope: !3003)
!3049 = !DILocalVariable(name: "authors", arg: 5, scope: !3003, file: !239, line: 64, type: !3040)
!3050 = !DILocation(line: 64, column: 39, scope: !3003)
!3051 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3003, file: !239, line: 64, type: !138)
!3052 = !DILocation(line: 64, column: 55, scope: !3003)
!3053 = !DILocation(line: 66, column: 7, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3003, file: !239, line: 66, column: 7)
!3055 = !DILocation(line: 66, column: 7, scope: !3003)
!3056 = !DILocation(line: 67, column: 14, scope: !3054)
!3057 = !DILocation(line: 67, column: 38, scope: !3054)
!3058 = !DILocation(line: 67, column: 52, scope: !3054)
!3059 = !DILocation(line: 67, column: 61, scope: !3054)
!3060 = !DILocation(line: 67, column: 5, scope: !3054)
!3061 = !DILocation(line: 69, column: 14, scope: !3054)
!3062 = !DILocation(line: 69, column: 33, scope: !3054)
!3063 = !DILocation(line: 69, column: 42, scope: !3054)
!3064 = !DILocation(line: 69, column: 5, scope: !3054)
!3065 = !DILocation(line: 83, column: 12, scope: !3003)
!3066 = !DILocation(line: 83, column: 43, scope: !3003)
!3067 = !DILocation(line: 83, column: 3, scope: !3003)
!3068 = !DILocation(line: 85, column: 3, scope: !3003)
!3069 = !DILocation(line: 88, column: 12, scope: !3003)
!3070 = !DILocation(line: 88, column: 20, scope: !3003)
!3071 = !DILocation(line: 88, column: 3, scope: !3003)
!3072 = !DILocation(line: 95, column: 3, scope: !3003)
!3073 = !DILocation(line: 97, column: 11, scope: !3003)
!3074 = !DILocation(line: 97, column: 3, scope: !3003)
!3075 = !DILocation(line: 102, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3003, file: !239, line: 98, column: 5)
!3077 = !DILocation(line: 105, column: 16, scope: !3076)
!3078 = !DILocation(line: 105, column: 24, scope: !3076)
!3079 = !DILocation(line: 105, column: 47, scope: !3076)
!3080 = !DILocation(line: 105, column: 7, scope: !3076)
!3081 = !DILocation(line: 106, column: 7, scope: !3076)
!3082 = !DILocation(line: 109, column: 16, scope: !3076)
!3083 = !DILocation(line: 109, column: 24, scope: !3076)
!3084 = !DILocation(line: 109, column: 54, scope: !3076)
!3085 = !DILocation(line: 109, column: 66, scope: !3076)
!3086 = !DILocation(line: 109, column: 7, scope: !3076)
!3087 = !DILocation(line: 110, column: 7, scope: !3076)
!3088 = !DILocation(line: 113, column: 16, scope: !3076)
!3089 = !DILocation(line: 113, column: 24, scope: !3076)
!3090 = !DILocation(line: 114, column: 16, scope: !3076)
!3091 = !DILocation(line: 114, column: 28, scope: !3076)
!3092 = !DILocation(line: 114, column: 40, scope: !3076)
!3093 = !DILocation(line: 113, column: 7, scope: !3076)
!3094 = !DILocation(line: 115, column: 7, scope: !3076)
!3095 = !DILocation(line: 120, column: 16, scope: !3076)
!3096 = !DILocation(line: 120, column: 24, scope: !3076)
!3097 = !DILocation(line: 121, column: 16, scope: !3076)
!3098 = !DILocation(line: 121, column: 28, scope: !3076)
!3099 = !DILocation(line: 121, column: 40, scope: !3076)
!3100 = !DILocation(line: 121, column: 52, scope: !3076)
!3101 = !DILocation(line: 120, column: 7, scope: !3076)
!3102 = !DILocation(line: 122, column: 7, scope: !3076)
!3103 = !DILocation(line: 127, column: 16, scope: !3076)
!3104 = !DILocation(line: 127, column: 24, scope: !3076)
!3105 = !DILocation(line: 128, column: 16, scope: !3076)
!3106 = !DILocation(line: 128, column: 28, scope: !3076)
!3107 = !DILocation(line: 128, column: 40, scope: !3076)
!3108 = !DILocation(line: 128, column: 52, scope: !3076)
!3109 = !DILocation(line: 128, column: 64, scope: !3076)
!3110 = !DILocation(line: 127, column: 7, scope: !3076)
!3111 = !DILocation(line: 129, column: 7, scope: !3076)
!3112 = !DILocation(line: 134, column: 16, scope: !3076)
!3113 = !DILocation(line: 134, column: 24, scope: !3076)
!3114 = !DILocation(line: 135, column: 16, scope: !3076)
!3115 = !DILocation(line: 135, column: 28, scope: !3076)
!3116 = !DILocation(line: 135, column: 40, scope: !3076)
!3117 = !DILocation(line: 135, column: 52, scope: !3076)
!3118 = !DILocation(line: 135, column: 64, scope: !3076)
!3119 = !DILocation(line: 136, column: 16, scope: !3076)
!3120 = !DILocation(line: 134, column: 7, scope: !3076)
!3121 = !DILocation(line: 137, column: 7, scope: !3076)
!3122 = !DILocation(line: 142, column: 16, scope: !3076)
!3123 = !DILocation(line: 142, column: 24, scope: !3076)
!3124 = !DILocation(line: 143, column: 16, scope: !3076)
!3125 = !DILocation(line: 143, column: 28, scope: !3076)
!3126 = !DILocation(line: 143, column: 40, scope: !3076)
!3127 = !DILocation(line: 143, column: 52, scope: !3076)
!3128 = !DILocation(line: 143, column: 64, scope: !3076)
!3129 = !DILocation(line: 144, column: 16, scope: !3076)
!3130 = !DILocation(line: 144, column: 28, scope: !3076)
!3131 = !DILocation(line: 142, column: 7, scope: !3076)
!3132 = !DILocation(line: 145, column: 7, scope: !3076)
!3133 = !DILocation(line: 150, column: 16, scope: !3076)
!3134 = !DILocation(line: 150, column: 24, scope: !3076)
!3135 = !DILocation(line: 152, column: 17, scope: !3076)
!3136 = !DILocation(line: 152, column: 29, scope: !3076)
!3137 = !DILocation(line: 152, column: 41, scope: !3076)
!3138 = !DILocation(line: 152, column: 53, scope: !3076)
!3139 = !DILocation(line: 152, column: 65, scope: !3076)
!3140 = !DILocation(line: 153, column: 17, scope: !3076)
!3141 = !DILocation(line: 153, column: 29, scope: !3076)
!3142 = !DILocation(line: 153, column: 41, scope: !3076)
!3143 = !DILocation(line: 150, column: 7, scope: !3076)
!3144 = !DILocation(line: 154, column: 7, scope: !3076)
!3145 = !DILocation(line: 159, column: 16, scope: !3076)
!3146 = !DILocation(line: 159, column: 24, scope: !3076)
!3147 = !DILocation(line: 161, column: 16, scope: !3076)
!3148 = !DILocation(line: 161, column: 28, scope: !3076)
!3149 = !DILocation(line: 161, column: 40, scope: !3076)
!3150 = !DILocation(line: 161, column: 52, scope: !3076)
!3151 = !DILocation(line: 161, column: 64, scope: !3076)
!3152 = !DILocation(line: 162, column: 16, scope: !3076)
!3153 = !DILocation(line: 162, column: 28, scope: !3076)
!3154 = !DILocation(line: 162, column: 40, scope: !3076)
!3155 = !DILocation(line: 162, column: 52, scope: !3076)
!3156 = !DILocation(line: 159, column: 7, scope: !3076)
!3157 = !DILocation(line: 163, column: 7, scope: !3076)
!3158 = !DILocation(line: 170, column: 16, scope: !3076)
!3159 = !DILocation(line: 170, column: 24, scope: !3076)
!3160 = !DILocation(line: 172, column: 17, scope: !3076)
!3161 = !DILocation(line: 172, column: 29, scope: !3076)
!3162 = !DILocation(line: 172, column: 41, scope: !3076)
!3163 = !DILocation(line: 172, column: 53, scope: !3076)
!3164 = !DILocation(line: 172, column: 65, scope: !3076)
!3165 = !DILocation(line: 173, column: 17, scope: !3076)
!3166 = !DILocation(line: 173, column: 29, scope: !3076)
!3167 = !DILocation(line: 173, column: 41, scope: !3076)
!3168 = !DILocation(line: 173, column: 53, scope: !3076)
!3169 = !DILocation(line: 170, column: 7, scope: !3076)
!3170 = !DILocation(line: 174, column: 7, scope: !3076)
!3171 = !DILocation(line: 176, column: 1, scope: !3003)
!3172 = distinct !DISubprogram(name: "version_etc_ar", scope: !239, file: !239, line: 183, type: !3173, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !36)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{null, !3006, !34, !34, !34, !3040}
!3175 = !DILocalVariable(name: "stream", arg: 1, scope: !3172, file: !239, line: 183, type: !3006)
!3176 = !DILocation(line: 183, column: 23, scope: !3172)
!3177 = !DILocalVariable(name: "command_name", arg: 2, scope: !3172, file: !239, line: 184, type: !34)
!3178 = !DILocation(line: 184, column: 29, scope: !3172)
!3179 = !DILocalVariable(name: "package", arg: 3, scope: !3172, file: !239, line: 184, type: !34)
!3180 = !DILocation(line: 184, column: 55, scope: !3172)
!3181 = !DILocalVariable(name: "version", arg: 4, scope: !3172, file: !239, line: 185, type: !34)
!3182 = !DILocation(line: 185, column: 29, scope: !3172)
!3183 = !DILocalVariable(name: "authors", arg: 5, scope: !3172, file: !239, line: 185, type: !3040)
!3184 = !DILocation(line: 185, column: 59, scope: !3172)
!3185 = !DILocalVariable(name: "n_authors", scope: !3172, file: !239, line: 187, type: !138)
!3186 = !DILocation(line: 187, column: 10, scope: !3172)
!3187 = !DILocation(line: 189, column: 18, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3172, file: !239, line: 189, column: 3)
!3189 = !DILocation(line: 189, column: 8, scope: !3188)
!3190 = !DILocation(line: 189, column: 23, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3188, file: !239, line: 189, column: 3)
!3192 = !DILocation(line: 189, column: 31, scope: !3191)
!3193 = !DILocation(line: 189, column: 3, scope: !3188)
!3194 = !DILocation(line: 189, column: 52, scope: !3191)
!3195 = !DILocation(line: 189, column: 3, scope: !3191)
!3196 = distinct !{!3196, !3193, !3197, !418}
!3197 = !DILocation(line: 190, column: 5, scope: !3188)
!3198 = !DILocation(line: 191, column: 20, scope: !3172)
!3199 = !DILocation(line: 191, column: 28, scope: !3172)
!3200 = !DILocation(line: 191, column: 42, scope: !3172)
!3201 = !DILocation(line: 191, column: 51, scope: !3172)
!3202 = !DILocation(line: 191, column: 60, scope: !3172)
!3203 = !DILocation(line: 191, column: 69, scope: !3172)
!3204 = !DILocation(line: 191, column: 3, scope: !3172)
!3205 = !DILocation(line: 192, column: 1, scope: !3172)
!3206 = distinct !DISubprogram(name: "version_etc_va", scope: !239, file: !239, line: 199, type: !3207, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !36)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{null, !3006, !34, !34, !34, !3209}
!3209 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !74, line: 52, baseType: !3210)
!3210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !76, line: 32, baseType: !3211)
!3211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3212, baseType: !3213)
!3212 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !80, size: 256, elements: !3214)
!3214 = !{!3215, !3216, !3217, !3218, !3219}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3213, file: !3212, line: 192, baseType: !24, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3213, file: !3212, line: 192, baseType: !24, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3213, file: !3212, line: 192, baseType: !24, size: 64, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3213, file: !3212, line: 192, baseType: !25, size: 32, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3213, file: !3212, line: 192, baseType: !25, size: 32, offset: 224)
!3220 = !DILocalVariable(name: "stream", arg: 1, scope: !3206, file: !239, line: 199, type: !3006)
!3221 = !DILocation(line: 199, column: 23, scope: !3206)
!3222 = !DILocalVariable(name: "command_name", arg: 2, scope: !3206, file: !239, line: 200, type: !34)
!3223 = !DILocation(line: 200, column: 29, scope: !3206)
!3224 = !DILocalVariable(name: "package", arg: 3, scope: !3206, file: !239, line: 200, type: !34)
!3225 = !DILocation(line: 200, column: 55, scope: !3206)
!3226 = !DILocalVariable(name: "version", arg: 4, scope: !3206, file: !239, line: 201, type: !34)
!3227 = !DILocation(line: 201, column: 29, scope: !3206)
!3228 = !DILocalVariable(name: "authors", arg: 5, scope: !3206, file: !239, line: 201, type: !3209)
!3229 = !DILocation(line: 201, column: 46, scope: !3206)
!3230 = !DILocalVariable(name: "n_authors", scope: !3206, file: !239, line: 203, type: !138)
!3231 = !DILocation(line: 203, column: 10, scope: !3206)
!3232 = !DILocalVariable(name: "authtab", scope: !3206, file: !239, line: 204, type: !3233)
!3233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 640, elements: !146)
!3234 = !DILocation(line: 204, column: 15, scope: !3206)
!3235 = !DILocation(line: 206, column: 18, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3206, file: !239, line: 206, column: 3)
!3237 = !DILocation(line: 206, column: 8, scope: !3236)
!3238 = !DILocation(line: 207, column: 8, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3236, file: !239, line: 206, column: 3)
!3240 = !DILocation(line: 207, column: 18, scope: !3239)
!3241 = !DILocation(line: 208, column: 10, scope: !3239)
!3242 = !DILocation(line: 208, column: 35, scope: !3239)
!3243 = !DILocation(line: 208, column: 22, scope: !3239)
!3244 = !DILocation(line: 208, column: 14, scope: !3239)
!3245 = !DILocation(line: 208, column: 33, scope: !3239)
!3246 = !DILocation(line: 208, column: 67, scope: !3239)
!3247 = !DILocation(line: 0, scope: !3239)
!3248 = !DILocation(line: 206, column: 3, scope: !3236)
!3249 = !DILocation(line: 209, column: 17, scope: !3239)
!3250 = !DILocation(line: 206, column: 3, scope: !3239)
!3251 = distinct !{!3251, !3248, !3252, !418}
!3252 = !DILocation(line: 210, column: 5, scope: !3236)
!3253 = !DILocation(line: 211, column: 20, scope: !3206)
!3254 = !DILocation(line: 211, column: 28, scope: !3206)
!3255 = !DILocation(line: 211, column: 42, scope: !3206)
!3256 = !DILocation(line: 211, column: 51, scope: !3206)
!3257 = !DILocation(line: 212, column: 20, scope: !3206)
!3258 = !DILocation(line: 212, column: 29, scope: !3206)
!3259 = !DILocation(line: 211, column: 3, scope: !3206)
!3260 = !DILocation(line: 213, column: 1, scope: !3206)
!3261 = distinct !DISubprogram(name: "version_etc", scope: !239, file: !239, line: 230, type: !3262, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !36)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !3006, !34, !34, !34, null}
!3264 = !DILocalVariable(name: "stream", arg: 1, scope: !3261, file: !239, line: 230, type: !3006)
!3265 = !DILocation(line: 230, column: 20, scope: !3261)
!3266 = !DILocalVariable(name: "command_name", arg: 2, scope: !3261, file: !239, line: 231, type: !34)
!3267 = !DILocation(line: 231, column: 26, scope: !3261)
!3268 = !DILocalVariable(name: "package", arg: 3, scope: !3261, file: !239, line: 231, type: !34)
!3269 = !DILocation(line: 231, column: 52, scope: !3261)
!3270 = !DILocalVariable(name: "version", arg: 4, scope: !3261, file: !239, line: 232, type: !34)
!3271 = !DILocation(line: 232, column: 26, scope: !3261)
!3272 = !DILocalVariable(name: "authors", scope: !3261, file: !239, line: 234, type: !3209)
!3273 = !DILocation(line: 234, column: 11, scope: !3261)
!3274 = !DILocation(line: 235, column: 3, scope: !3261)
!3275 = !DILocation(line: 236, column: 19, scope: !3261)
!3276 = !DILocation(line: 236, column: 27, scope: !3261)
!3277 = !DILocation(line: 236, column: 41, scope: !3261)
!3278 = !DILocation(line: 236, column: 50, scope: !3261)
!3279 = !DILocation(line: 236, column: 3, scope: !3261)
!3280 = !DILocation(line: 237, column: 3, scope: !3261)
!3281 = !DILocation(line: 238, column: 1, scope: !3261)
!3282 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !239, file: !239, line: 241, type: !94, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !36)
!3283 = !DILocation(line: 243, column: 3, scope: !3282)
!3284 = !DILocation(line: 248, column: 11, scope: !3282)
!3285 = !DILocation(line: 248, column: 3, scope: !3282)
!3286 = !DILocation(line: 254, column: 11, scope: !3282)
!3287 = !DILocation(line: 254, column: 3, scope: !3282)
!3288 = !DILocation(line: 259, column: 11, scope: !3282)
!3289 = !DILocation(line: 259, column: 3, scope: !3282)
!3290 = !DILocation(line: 261, column: 1, scope: !3282)
!3291 = distinct !DISubprogram(name: "xnrealloc", scope: !3292, file: !3292, line: 147, type: !3293, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3292 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!24, !24, !138, !138}
!3295 = !DILocalVariable(name: "p", arg: 1, scope: !3291, file: !3292, line: 147, type: !24)
!3296 = !DILocation(line: 147, column: 18, scope: !3291)
!3297 = !DILocalVariable(name: "n", arg: 2, scope: !3291, file: !3292, line: 147, type: !138)
!3298 = !DILocation(line: 147, column: 28, scope: !3291)
!3299 = !DILocalVariable(name: "s", arg: 3, scope: !3291, file: !3292, line: 147, type: !138)
!3300 = !DILocation(line: 147, column: 38, scope: !3291)
!3301 = !DILocation(line: 149, column: 25, scope: !3291)
!3302 = !DILocation(line: 149, column: 28, scope: !3291)
!3303 = !DILocation(line: 149, column: 31, scope: !3291)
!3304 = !DILocation(line: 149, column: 10, scope: !3291)
!3305 = !DILocation(line: 149, column: 3, scope: !3291)
!3306 = distinct !DISubprogram(name: "xreallocarray", scope: !245, file: !245, line: 83, type: !3293, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3307 = !DILocalVariable(name: "p", arg: 1, scope: !3306, file: !245, line: 83, type: !24)
!3308 = !DILocation(line: 83, column: 22, scope: !3306)
!3309 = !DILocalVariable(name: "n", arg: 2, scope: !3306, file: !245, line: 83, type: !138)
!3310 = !DILocation(line: 83, column: 32, scope: !3306)
!3311 = !DILocalVariable(name: "s", arg: 3, scope: !3306, file: !245, line: 83, type: !138)
!3312 = !DILocation(line: 83, column: 42, scope: !3306)
!3313 = !DILocation(line: 85, column: 39, scope: !3306)
!3314 = !DILocation(line: 85, column: 42, scope: !3306)
!3315 = !DILocation(line: 85, column: 45, scope: !3306)
!3316 = !DILocation(line: 85, column: 25, scope: !3306)
!3317 = !DILocation(line: 85, column: 10, scope: !3306)
!3318 = !DILocation(line: 85, column: 3, scope: !3306)
!3319 = distinct !DISubprogram(name: "check_nonnull", scope: !245, file: !245, line: 37, type: !3320, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!24, !24}
!3322 = !DILocalVariable(name: "p", arg: 1, scope: !3319, file: !245, line: 37, type: !24)
!3323 = !DILocation(line: 37, column: 22, scope: !3319)
!3324 = !DILocation(line: 39, column: 8, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3319, file: !245, line: 39, column: 7)
!3326 = !DILocation(line: 39, column: 7, scope: !3319)
!3327 = !DILocation(line: 40, column: 5, scope: !3325)
!3328 = !DILocation(line: 41, column: 10, scope: !3319)
!3329 = !DILocation(line: 41, column: 3, scope: !3319)
!3330 = distinct !DISubprogram(name: "xmalloc", scope: !245, file: !245, line: 47, type: !3331, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!24, !138}
!3333 = !DILocalVariable(name: "s", arg: 1, scope: !3330, file: !245, line: 47, type: !138)
!3334 = !DILocation(line: 47, column: 17, scope: !3330)
!3335 = !DILocation(line: 49, column: 33, scope: !3330)
!3336 = !DILocation(line: 49, column: 25, scope: !3330)
!3337 = !DILocation(line: 49, column: 10, scope: !3330)
!3338 = !DILocation(line: 49, column: 3, scope: !3330)
!3339 = distinct !DISubprogram(name: "ximalloc", scope: !245, file: !245, line: 53, type: !3340, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!24, !259}
!3342 = !DILocalVariable(name: "s", arg: 1, scope: !3339, file: !245, line: 53, type: !259)
!3343 = !DILocation(line: 53, column: 17, scope: !3339)
!3344 = !DILocation(line: 55, column: 34, scope: !3339)
!3345 = !DILocation(line: 55, column: 25, scope: !3339)
!3346 = !DILocation(line: 55, column: 10, scope: !3339)
!3347 = !DILocation(line: 55, column: 3, scope: !3339)
!3348 = distinct !DISubprogram(name: "xcharalloc", scope: !245, file: !245, line: 59, type: !3349, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!22, !138}
!3351 = !DILocalVariable(name: "n", arg: 1, scope: !3348, file: !245, line: 59, type: !138)
!3352 = !DILocation(line: 59, column: 20, scope: !3348)
!3353 = !DILocation(line: 61, column: 10, scope: !3348)
!3354 = !DILocation(line: 61, column: 3, scope: !3348)
!3355 = distinct !DISubprogram(name: "xrealloc", scope: !245, file: !245, line: 68, type: !3356, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!24, !24, !138}
!3358 = !DILocalVariable(name: "p", arg: 1, scope: !3355, file: !245, line: 68, type: !24)
!3359 = !DILocation(line: 68, column: 17, scope: !3355)
!3360 = !DILocalVariable(name: "s", arg: 2, scope: !3355, file: !245, line: 68, type: !138)
!3361 = !DILocation(line: 68, column: 27, scope: !3355)
!3362 = !DILocation(line: 70, column: 34, scope: !3355)
!3363 = !DILocation(line: 70, column: 37, scope: !3355)
!3364 = !DILocation(line: 70, column: 25, scope: !3355)
!3365 = !DILocation(line: 70, column: 10, scope: !3355)
!3366 = !DILocation(line: 70, column: 3, scope: !3355)
!3367 = distinct !DISubprogram(name: "xirealloc", scope: !245, file: !245, line: 74, type: !3368, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!24, !24, !259}
!3370 = !DILocalVariable(name: "p", arg: 1, scope: !3367, file: !245, line: 74, type: !24)
!3371 = !DILocation(line: 74, column: 18, scope: !3367)
!3372 = !DILocalVariable(name: "s", arg: 2, scope: !3367, file: !245, line: 74, type: !259)
!3373 = !DILocation(line: 74, column: 27, scope: !3367)
!3374 = !DILocation(line: 76, column: 35, scope: !3367)
!3375 = !DILocation(line: 76, column: 38, scope: !3367)
!3376 = !DILocation(line: 76, column: 25, scope: !3367)
!3377 = !DILocation(line: 76, column: 10, scope: !3367)
!3378 = !DILocation(line: 76, column: 3, scope: !3367)
!3379 = distinct !DISubprogram(name: "xireallocarray", scope: !245, file: !245, line: 89, type: !3380, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!24, !24, !259, !259}
!3382 = !DILocalVariable(name: "p", arg: 1, scope: !3379, file: !245, line: 89, type: !24)
!3383 = !DILocation(line: 89, column: 23, scope: !3379)
!3384 = !DILocalVariable(name: "n", arg: 2, scope: !3379, file: !245, line: 89, type: !259)
!3385 = !DILocation(line: 89, column: 32, scope: !3379)
!3386 = !DILocalVariable(name: "s", arg: 3, scope: !3379, file: !245, line: 89, type: !259)
!3387 = !DILocation(line: 89, column: 41, scope: !3379)
!3388 = !DILocation(line: 91, column: 40, scope: !3379)
!3389 = !DILocation(line: 91, column: 43, scope: !3379)
!3390 = !DILocation(line: 91, column: 46, scope: !3379)
!3391 = !DILocation(line: 91, column: 25, scope: !3379)
!3392 = !DILocation(line: 91, column: 10, scope: !3379)
!3393 = !DILocation(line: 91, column: 3, scope: !3379)
!3394 = distinct !DISubprogram(name: "xnmalloc", scope: !245, file: !245, line: 98, type: !3395, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!24, !138, !138}
!3397 = !DILocalVariable(name: "n", arg: 1, scope: !3394, file: !245, line: 98, type: !138)
!3398 = !DILocation(line: 98, column: 18, scope: !3394)
!3399 = !DILocalVariable(name: "s", arg: 2, scope: !3394, file: !245, line: 98, type: !138)
!3400 = !DILocation(line: 98, column: 28, scope: !3394)
!3401 = !DILocation(line: 100, column: 31, scope: !3394)
!3402 = !DILocation(line: 100, column: 34, scope: !3394)
!3403 = !DILocation(line: 100, column: 10, scope: !3394)
!3404 = !DILocation(line: 100, column: 3, scope: !3394)
!3405 = distinct !DISubprogram(name: "xinmalloc", scope: !245, file: !245, line: 104, type: !3406, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!24, !259, !259}
!3408 = !DILocalVariable(name: "n", arg: 1, scope: !3405, file: !245, line: 104, type: !259)
!3409 = !DILocation(line: 104, column: 18, scope: !3405)
!3410 = !DILocalVariable(name: "s", arg: 2, scope: !3405, file: !245, line: 104, type: !259)
!3411 = !DILocation(line: 104, column: 27, scope: !3405)
!3412 = !DILocation(line: 106, column: 32, scope: !3405)
!3413 = !DILocation(line: 106, column: 35, scope: !3405)
!3414 = !DILocation(line: 106, column: 10, scope: !3405)
!3415 = !DILocation(line: 106, column: 3, scope: !3405)
!3416 = distinct !DISubprogram(name: "x2realloc", scope: !245, file: !245, line: 116, type: !3417, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!24, !24, !251}
!3419 = !DILocalVariable(name: "p", arg: 1, scope: !3416, file: !245, line: 116, type: !24)
!3420 = !DILocation(line: 116, column: 18, scope: !3416)
!3421 = !DILocalVariable(name: "ps", arg: 2, scope: !3416, file: !245, line: 116, type: !251)
!3422 = !DILocation(line: 116, column: 29, scope: !3416)
!3423 = !DILocation(line: 118, column: 22, scope: !3416)
!3424 = !DILocation(line: 118, column: 25, scope: !3416)
!3425 = !DILocation(line: 118, column: 10, scope: !3416)
!3426 = !DILocation(line: 118, column: 3, scope: !3416)
!3427 = !DILocalVariable(name: "p", arg: 1, scope: !248, file: !245, line: 176, type: !24)
!3428 = !DILocation(line: 176, column: 19, scope: !248)
!3429 = !DILocalVariable(name: "pn", arg: 2, scope: !248, file: !245, line: 176, type: !251)
!3430 = !DILocation(line: 176, column: 30, scope: !248)
!3431 = !DILocalVariable(name: "s", arg: 3, scope: !248, file: !245, line: 176, type: !138)
!3432 = !DILocation(line: 176, column: 41, scope: !248)
!3433 = !DILocalVariable(name: "n", scope: !248, file: !245, line: 178, type: !138)
!3434 = !DILocation(line: 178, column: 10, scope: !248)
!3435 = !DILocation(line: 178, column: 15, scope: !248)
!3436 = !DILocation(line: 178, column: 14, scope: !248)
!3437 = !DILocation(line: 180, column: 9, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !248, file: !245, line: 180, column: 7)
!3439 = !DILocation(line: 180, column: 7, scope: !248)
!3440 = !DILocation(line: 182, column: 13, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !245, line: 182, column: 11)
!3442 = distinct !DILexicalBlock(scope: !3438, file: !245, line: 181, column: 5)
!3443 = !DILocation(line: 182, column: 11, scope: !3442)
!3444 = !DILocation(line: 190, column: 32, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3441, file: !245, line: 183, column: 9)
!3446 = !DILocation(line: 190, column: 30, scope: !3445)
!3447 = !DILocation(line: 190, column: 13, scope: !3445)
!3448 = !DILocation(line: 191, column: 17, scope: !3445)
!3449 = !DILocation(line: 191, column: 16, scope: !3445)
!3450 = !DILocation(line: 191, column: 13, scope: !3445)
!3451 = !DILocation(line: 192, column: 9, scope: !3445)
!3452 = !DILocation(line: 193, column: 5, scope: !3442)
!3453 = !DILocation(line: 197, column: 11, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !245, line: 197, column: 11)
!3455 = distinct !DILexicalBlock(scope: !3438, file: !245, line: 195, column: 5)
!3456 = !DILocation(line: 197, column: 11, scope: !3455)
!3457 = !DILocation(line: 198, column: 9, scope: !3454)
!3458 = !DILocation(line: 201, column: 22, scope: !248)
!3459 = !DILocation(line: 201, column: 25, scope: !248)
!3460 = !DILocation(line: 201, column: 28, scope: !248)
!3461 = !DILocation(line: 201, column: 7, scope: !248)
!3462 = !DILocation(line: 201, column: 5, scope: !248)
!3463 = !DILocation(line: 202, column: 9, scope: !248)
!3464 = !DILocation(line: 202, column: 4, scope: !248)
!3465 = !DILocation(line: 202, column: 7, scope: !248)
!3466 = !DILocation(line: 203, column: 10, scope: !248)
!3467 = !DILocation(line: 203, column: 3, scope: !248)
!3468 = !DILocalVariable(name: "pa", arg: 1, scope: !255, file: !245, line: 223, type: !24)
!3469 = !DILocation(line: 223, column: 16, scope: !255)
!3470 = !DILocalVariable(name: "pn", arg: 2, scope: !255, file: !245, line: 223, type: !258)
!3471 = !DILocation(line: 223, column: 27, scope: !255)
!3472 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !255, file: !245, line: 223, type: !259)
!3473 = !DILocation(line: 223, column: 37, scope: !255)
!3474 = !DILocalVariable(name: "n_max", arg: 4, scope: !255, file: !245, line: 223, type: !261)
!3475 = !DILocation(line: 223, column: 59, scope: !255)
!3476 = !DILocalVariable(name: "s", arg: 5, scope: !255, file: !245, line: 223, type: !259)
!3477 = !DILocation(line: 223, column: 72, scope: !255)
!3478 = !DILocalVariable(name: "n0", scope: !255, file: !245, line: 230, type: !259)
!3479 = !DILocation(line: 230, column: 9, scope: !255)
!3480 = !DILocation(line: 230, column: 15, scope: !255)
!3481 = !DILocation(line: 230, column: 14, scope: !255)
!3482 = !DILocalVariable(name: "n", scope: !255, file: !245, line: 237, type: !259)
!3483 = !DILocation(line: 237, column: 9, scope: !255)
!3484 = !DILocation(line: 238, column: 7, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !255, file: !245, line: 238, column: 7)
!3486 = !DILocation(line: 238, column: 7, scope: !255)
!3487 = !DILocation(line: 239, column: 7, scope: !3485)
!3488 = !DILocation(line: 239, column: 5, scope: !3485)
!3489 = !DILocation(line: 240, column: 12, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !255, file: !245, line: 240, column: 7)
!3491 = !DILocation(line: 240, column: 9, scope: !3490)
!3492 = !DILocation(line: 240, column: 18, scope: !3490)
!3493 = !DILocation(line: 240, column: 21, scope: !3490)
!3494 = !DILocation(line: 240, column: 29, scope: !3490)
!3495 = !DILocation(line: 240, column: 27, scope: !3490)
!3496 = !DILocation(line: 240, column: 7, scope: !255)
!3497 = !DILocation(line: 241, column: 9, scope: !3490)
!3498 = !DILocation(line: 241, column: 7, scope: !3490)
!3499 = !DILocation(line: 241, column: 5, scope: !3490)
!3500 = !DILocalVariable(name: "nbytes", scope: !255, file: !245, line: 248, type: !259)
!3501 = !DILocation(line: 248, column: 9, scope: !255)
!3502 = !DILocalVariable(name: "adjusted_nbytes", scope: !255, file: !245, line: 252, type: !259)
!3503 = !DILocation(line: 252, column: 9, scope: !255)
!3504 = !DILocation(line: 253, column: 8, scope: !255)
!3505 = !DILocation(line: 255, column: 10, scope: !255)
!3506 = !DILocation(line: 255, column: 17, scope: !255)
!3507 = !DILocation(line: 256, column: 7, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !255, file: !245, line: 256, column: 7)
!3509 = !DILocation(line: 256, column: 7, scope: !255)
!3510 = !DILocation(line: 258, column: 11, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3508, file: !245, line: 257, column: 5)
!3512 = !DILocation(line: 258, column: 29, scope: !3511)
!3513 = !DILocation(line: 258, column: 27, scope: !3511)
!3514 = !DILocation(line: 258, column: 9, scope: !3511)
!3515 = !DILocation(line: 259, column: 16, scope: !3511)
!3516 = !DILocation(line: 259, column: 34, scope: !3511)
!3517 = !DILocation(line: 259, column: 52, scope: !3511)
!3518 = !DILocation(line: 259, column: 50, scope: !3511)
!3519 = !DILocation(line: 259, column: 32, scope: !3511)
!3520 = !DILocation(line: 259, column: 14, scope: !3511)
!3521 = !DILocation(line: 260, column: 5, scope: !3511)
!3522 = !DILocation(line: 262, column: 9, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !255, file: !245, line: 262, column: 7)
!3524 = !DILocation(line: 262, column: 7, scope: !255)
!3525 = !DILocation(line: 263, column: 6, scope: !3523)
!3526 = !DILocation(line: 263, column: 9, scope: !3523)
!3527 = !DILocation(line: 263, column: 5, scope: !3523)
!3528 = !DILocation(line: 264, column: 7, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !255, file: !245, line: 264, column: 7)
!3530 = !DILocation(line: 264, column: 11, scope: !3529)
!3531 = !DILocation(line: 264, column: 9, scope: !3529)
!3532 = !DILocation(line: 264, column: 16, scope: !3529)
!3533 = !DILocation(line: 264, column: 14, scope: !3529)
!3534 = !DILocation(line: 265, column: 7, scope: !3529)
!3535 = !DILocation(line: 265, column: 11, scope: !3529)
!3536 = !DILocation(line: 266, column: 11, scope: !3529)
!3537 = !DILocation(line: 266, column: 20, scope: !3529)
!3538 = !DILocation(line: 266, column: 17, scope: !3529)
!3539 = !DILocation(line: 266, column: 26, scope: !3529)
!3540 = !DILocation(line: 266, column: 29, scope: !3529)
!3541 = !DILocation(line: 266, column: 37, scope: !3529)
!3542 = !DILocation(line: 266, column: 35, scope: !3529)
!3543 = !DILocation(line: 267, column: 11, scope: !3529)
!3544 = !DILocation(line: 267, column: 14, scope: !3529)
!3545 = !DILocation(line: 264, column: 7, scope: !255)
!3546 = !DILocation(line: 268, column: 5, scope: !3529)
!3547 = !DILocation(line: 269, column: 18, scope: !255)
!3548 = !DILocation(line: 269, column: 22, scope: !255)
!3549 = !DILocation(line: 269, column: 8, scope: !255)
!3550 = !DILocation(line: 269, column: 6, scope: !255)
!3551 = !DILocation(line: 270, column: 9, scope: !255)
!3552 = !DILocation(line: 270, column: 4, scope: !255)
!3553 = !DILocation(line: 270, column: 7, scope: !255)
!3554 = !DILocation(line: 271, column: 10, scope: !255)
!3555 = !DILocation(line: 271, column: 3, scope: !255)
!3556 = distinct !DISubprogram(name: "xzalloc", scope: !245, file: !245, line: 279, type: !3331, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3557 = !DILocalVariable(name: "s", arg: 1, scope: !3556, file: !245, line: 279, type: !138)
!3558 = !DILocation(line: 279, column: 17, scope: !3556)
!3559 = !DILocation(line: 281, column: 19, scope: !3556)
!3560 = !DILocation(line: 281, column: 10, scope: !3556)
!3561 = !DILocation(line: 281, column: 3, scope: !3556)
!3562 = distinct !DISubprogram(name: "xcalloc", scope: !245, file: !245, line: 294, type: !3395, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3563 = !DILocalVariable(name: "n", arg: 1, scope: !3562, file: !245, line: 294, type: !138)
!3564 = !DILocation(line: 294, column: 17, scope: !3562)
!3565 = !DILocalVariable(name: "s", arg: 2, scope: !3562, file: !245, line: 294, type: !138)
!3566 = !DILocation(line: 294, column: 27, scope: !3562)
!3567 = !DILocation(line: 296, column: 33, scope: !3562)
!3568 = !DILocation(line: 296, column: 36, scope: !3562)
!3569 = !DILocation(line: 296, column: 25, scope: !3562)
!3570 = !DILocation(line: 296, column: 10, scope: !3562)
!3571 = !DILocation(line: 296, column: 3, scope: !3562)
!3572 = distinct !DISubprogram(name: "xizalloc", scope: !245, file: !245, line: 285, type: !3340, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3573 = !DILocalVariable(name: "s", arg: 1, scope: !3572, file: !245, line: 285, type: !259)
!3574 = !DILocation(line: 285, column: 17, scope: !3572)
!3575 = !DILocation(line: 287, column: 20, scope: !3572)
!3576 = !DILocation(line: 287, column: 10, scope: !3572)
!3577 = !DILocation(line: 287, column: 3, scope: !3572)
!3578 = distinct !DISubprogram(name: "xicalloc", scope: !245, file: !245, line: 300, type: !3406, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3579 = !DILocalVariable(name: "n", arg: 1, scope: !3578, file: !245, line: 300, type: !259)
!3580 = !DILocation(line: 300, column: 17, scope: !3578)
!3581 = !DILocalVariable(name: "s", arg: 2, scope: !3578, file: !245, line: 300, type: !259)
!3582 = !DILocation(line: 300, column: 26, scope: !3578)
!3583 = !DILocation(line: 302, column: 34, scope: !3578)
!3584 = !DILocation(line: 302, column: 37, scope: !3578)
!3585 = !DILocation(line: 302, column: 25, scope: !3578)
!3586 = !DILocation(line: 302, column: 10, scope: !3578)
!3587 = !DILocation(line: 302, column: 3, scope: !3578)
!3588 = distinct !DISubprogram(name: "xmemdup", scope: !245, file: !245, line: 310, type: !3589, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!24, !3591, !138}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3593 = !DILocalVariable(name: "p", arg: 1, scope: !3588, file: !245, line: 310, type: !3591)
!3594 = !DILocation(line: 310, column: 22, scope: !3588)
!3595 = !DILocalVariable(name: "s", arg: 2, scope: !3588, file: !245, line: 310, type: !138)
!3596 = !DILocation(line: 310, column: 32, scope: !3588)
!3597 = !DILocation(line: 312, column: 27, scope: !3588)
!3598 = !DILocation(line: 312, column: 18, scope: !3588)
!3599 = !DILocation(line: 312, column: 31, scope: !3588)
!3600 = !DILocation(line: 312, column: 34, scope: !3588)
!3601 = !DILocation(line: 312, column: 10, scope: !3588)
!3602 = !DILocation(line: 312, column: 3, scope: !3588)
!3603 = distinct !DISubprogram(name: "ximemdup", scope: !245, file: !245, line: 316, type: !3604, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!24, !3591, !259}
!3606 = !DILocalVariable(name: "p", arg: 1, scope: !3603, file: !245, line: 316, type: !3591)
!3607 = !DILocation(line: 316, column: 23, scope: !3603)
!3608 = !DILocalVariable(name: "s", arg: 2, scope: !3603, file: !245, line: 316, type: !259)
!3609 = !DILocation(line: 316, column: 32, scope: !3603)
!3610 = !DILocation(line: 318, column: 28, scope: !3603)
!3611 = !DILocation(line: 318, column: 18, scope: !3603)
!3612 = !DILocation(line: 318, column: 32, scope: !3603)
!3613 = !DILocation(line: 318, column: 35, scope: !3603)
!3614 = !DILocation(line: 318, column: 10, scope: !3603)
!3615 = !DILocation(line: 318, column: 3, scope: !3603)
!3616 = distinct !DISubprogram(name: "ximemdup0", scope: !245, file: !245, line: 325, type: !3617, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!22, !3591, !259}
!3619 = !DILocalVariable(name: "p", arg: 1, scope: !3616, file: !245, line: 325, type: !3591)
!3620 = !DILocation(line: 325, column: 24, scope: !3616)
!3621 = !DILocalVariable(name: "s", arg: 2, scope: !3616, file: !245, line: 325, type: !259)
!3622 = !DILocation(line: 325, column: 33, scope: !3616)
!3623 = !DILocalVariable(name: "result", scope: !3616, file: !245, line: 327, type: !22)
!3624 = !DILocation(line: 327, column: 9, scope: !3616)
!3625 = !DILocation(line: 327, column: 28, scope: !3616)
!3626 = !DILocation(line: 327, column: 30, scope: !3616)
!3627 = !DILocation(line: 327, column: 18, scope: !3616)
!3628 = !DILocation(line: 328, column: 3, scope: !3616)
!3629 = !DILocation(line: 328, column: 10, scope: !3616)
!3630 = !DILocation(line: 328, column: 13, scope: !3616)
!3631 = !DILocation(line: 329, column: 18, scope: !3616)
!3632 = !DILocation(line: 329, column: 26, scope: !3616)
!3633 = !DILocation(line: 329, column: 29, scope: !3616)
!3634 = !DILocation(line: 329, column: 10, scope: !3616)
!3635 = !DILocation(line: 329, column: 3, scope: !3616)
!3636 = distinct !DISubprogram(name: "xstrdup", scope: !245, file: !245, line: 335, type: !2718, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !36)
!3637 = !DILocalVariable(name: "string", arg: 1, scope: !3636, file: !245, line: 335, type: !34)
!3638 = !DILocation(line: 335, column: 22, scope: !3636)
!3639 = !DILocation(line: 337, column: 19, scope: !3636)
!3640 = !DILocation(line: 337, column: 35, scope: !3636)
!3641 = !DILocation(line: 337, column: 27, scope: !3636)
!3642 = !DILocation(line: 337, column: 43, scope: !3636)
!3643 = !DILocation(line: 337, column: 10, scope: !3636)
!3644 = !DILocation(line: 337, column: 3, scope: !3636)
!3645 = distinct !DISubprogram(name: "xalloc_die", scope: !265, file: !265, line: 32, type: !94, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !36)
!3646 = !DILocalVariable(name: "__errstatus", scope: !3647, file: !265, line: 34, type: !3648)
!3647 = distinct !DILexicalBlock(scope: !3645, file: !265, line: 34, column: 3)
!3648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!3649 = !DILocation(line: 34, column: 3, scope: !3647)
!3650 = !DILocation(line: 40, column: 3, scope: !3645)
!3651 = distinct !DISubprogram(name: "xgetgroups", scope: !267, file: !267, line: 31, type: !289, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !36)
!3652 = !DILocalVariable(name: "username", arg: 1, scope: !3651, file: !267, line: 31, type: !34)
!3653 = !DILocation(line: 31, column: 25, scope: !3651)
!3654 = !DILocalVariable(name: "gid", arg: 2, scope: !3651, file: !267, line: 31, type: !291)
!3655 = !DILocation(line: 31, column: 41, scope: !3651)
!3656 = !DILocalVariable(name: "groups", arg: 3, scope: !3651, file: !267, line: 31, type: !294)
!3657 = !DILocation(line: 31, column: 54, scope: !3651)
!3658 = !DILocalVariable(name: "result", scope: !3651, file: !267, line: 33, type: !25)
!3659 = !DILocation(line: 33, column: 7, scope: !3651)
!3660 = !DILocation(line: 33, column: 28, scope: !3651)
!3661 = !DILocation(line: 33, column: 38, scope: !3651)
!3662 = !DILocation(line: 33, column: 43, scope: !3651)
!3663 = !DILocation(line: 33, column: 16, scope: !3651)
!3664 = !DILocation(line: 34, column: 7, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3651, file: !267, line: 34, column: 7)
!3666 = !DILocation(line: 34, column: 14, scope: !3665)
!3667 = !DILocation(line: 34, column: 20, scope: !3665)
!3668 = !DILocation(line: 34, column: 23, scope: !3665)
!3669 = !DILocation(line: 34, column: 29, scope: !3665)
!3670 = !DILocation(line: 34, column: 7, scope: !3651)
!3671 = !DILocation(line: 35, column: 5, scope: !3665)
!3672 = !DILocation(line: 36, column: 10, scope: !3651)
!3673 = !DILocation(line: 36, column: 3, scope: !3651)
!3674 = distinct !DISubprogram(name: "c32isprint", scope: !3675, file: !3675, line: 41, type: !3676, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !36)
!3675 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!25, !3678}
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3679, line: 20, baseType: !7)
!3679 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3680 = !DILocalVariable(name: "wc", arg: 1, scope: !3674, file: !3675, line: 41, type: !3678)
!3681 = !DILocation(line: 41, column: 14, scope: !3674)
!3682 = !DILocation(line: 66, column: 22, scope: !3674)
!3683 = !DILocation(line: 66, column: 10, scope: !3674)
!3684 = !DILocation(line: 66, column: 3, scope: !3674)
!3685 = distinct !DISubprogram(name: "close_stream", scope: !271, file: !271, line: 55, type: !3686, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !36)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!25, !3688}
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1181, line: 7, baseType: !3690)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1183, line: 49, size: 1728, elements: !3691)
!3691 = !{!3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3690, file: !1183, line: 51, baseType: !25, size: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3690, file: !1183, line: 54, baseType: !22, size: 64, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3690, file: !1183, line: 55, baseType: !22, size: 64, offset: 128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3690, file: !1183, line: 56, baseType: !22, size: 64, offset: 192)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3690, file: !1183, line: 57, baseType: !22, size: 64, offset: 256)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3690, file: !1183, line: 58, baseType: !22, size: 64, offset: 320)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3690, file: !1183, line: 59, baseType: !22, size: 64, offset: 384)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3690, file: !1183, line: 60, baseType: !22, size: 64, offset: 448)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3690, file: !1183, line: 61, baseType: !22, size: 64, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3690, file: !1183, line: 64, baseType: !22, size: 64, offset: 576)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3690, file: !1183, line: 65, baseType: !22, size: 64, offset: 640)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3690, file: !1183, line: 66, baseType: !22, size: 64, offset: 704)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3690, file: !1183, line: 68, baseType: !1198, size: 64, offset: 768)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3690, file: !1183, line: 70, baseType: !3706, size: 64, offset: 832)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3690, file: !1183, line: 72, baseType: !25, size: 32, offset: 896)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3690, file: !1183, line: 73, baseType: !25, size: 32, offset: 928)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3690, file: !1183, line: 74, baseType: !1205, size: 64, offset: 960)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3690, file: !1183, line: 77, baseType: !26, size: 16, offset: 1024)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3690, file: !1183, line: 78, baseType: !1208, size: 8, offset: 1040)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3690, file: !1183, line: 79, baseType: !1210, size: 8, offset: 1048)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3690, file: !1183, line: 81, baseType: !1214, size: 64, offset: 1088)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3690, file: !1183, line: 89, baseType: !1217, size: 64, offset: 1152)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3690, file: !1183, line: 91, baseType: !1219, size: 64, offset: 1216)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3690, file: !1183, line: 92, baseType: !1222, size: 64, offset: 1280)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3690, file: !1183, line: 93, baseType: !3706, size: 64, offset: 1344)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3690, file: !1183, line: 94, baseType: !24, size: 64, offset: 1408)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3690, file: !1183, line: 95, baseType: !138, size: 64, offset: 1472)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3690, file: !1183, line: 96, baseType: !25, size: 32, offset: 1536)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3690, file: !1183, line: 98, baseType: !1229, size: 160, offset: 1568)
!3722 = !DILocalVariable(name: "stream", arg: 1, scope: !3685, file: !271, line: 55, type: !3688)
!3723 = !DILocation(line: 55, column: 21, scope: !3685)
!3724 = !DILocalVariable(name: "some_pending", scope: !3685, file: !271, line: 57, type: !3725)
!3725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!3726 = !DILocation(line: 57, column: 14, scope: !3685)
!3727 = !DILocation(line: 57, column: 42, scope: !3685)
!3728 = !DILocation(line: 57, column: 30, scope: !3685)
!3729 = !DILocation(line: 57, column: 50, scope: !3685)
!3730 = !DILocalVariable(name: "prev_fail", scope: !3685, file: !271, line: 58, type: !3725)
!3731 = !DILocation(line: 58, column: 14, scope: !3685)
!3732 = !DILocation(line: 58, column: 27, scope: !3685)
!3733 = !DILocation(line: 58, column: 43, scope: !3685)
!3734 = !DILocalVariable(name: "fclose_fail", scope: !3685, file: !271, line: 59, type: !3725)
!3735 = !DILocation(line: 59, column: 14, scope: !3685)
!3736 = !DILocation(line: 59, column: 37, scope: !3685)
!3737 = !DILocation(line: 59, column: 29, scope: !3685)
!3738 = !DILocation(line: 59, column: 45, scope: !3685)
!3739 = !DILocation(line: 69, column: 7, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3685, file: !271, line: 69, column: 7)
!3741 = !DILocation(line: 69, column: 17, scope: !3740)
!3742 = !DILocation(line: 69, column: 21, scope: !3740)
!3743 = !DILocation(line: 69, column: 33, scope: !3740)
!3744 = !DILocation(line: 69, column: 37, scope: !3740)
!3745 = !DILocation(line: 69, column: 50, scope: !3740)
!3746 = !DILocation(line: 69, column: 53, scope: !3740)
!3747 = !DILocation(line: 69, column: 59, scope: !3740)
!3748 = !DILocation(line: 69, column: 7, scope: !3685)
!3749 = !DILocation(line: 71, column: 13, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !271, line: 71, column: 11)
!3751 = distinct !DILexicalBlock(scope: !3740, file: !271, line: 70, column: 5)
!3752 = !DILocation(line: 71, column: 11, scope: !3751)
!3753 = !DILocation(line: 72, column: 9, scope: !3750)
!3754 = !DILocation(line: 72, column: 15, scope: !3750)
!3755 = !DILocation(line: 73, column: 7, scope: !3751)
!3756 = !DILocation(line: 76, column: 3, scope: !3685)
!3757 = !DILocation(line: 77, column: 1, scope: !3685)
!3758 = distinct !DISubprogram(name: "rpl_fclose", scope: !273, file: !273, line: 58, type: !3759, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !272, retainedNodes: !36)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!25, !3761}
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1181, line: 7, baseType: !3763)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1183, line: 49, size: 1728, elements: !3764)
!3764 = !{!3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3763, file: !1183, line: 51, baseType: !25, size: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3763, file: !1183, line: 54, baseType: !22, size: 64, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3763, file: !1183, line: 55, baseType: !22, size: 64, offset: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3763, file: !1183, line: 56, baseType: !22, size: 64, offset: 192)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3763, file: !1183, line: 57, baseType: !22, size: 64, offset: 256)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3763, file: !1183, line: 58, baseType: !22, size: 64, offset: 320)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3763, file: !1183, line: 59, baseType: !22, size: 64, offset: 384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3763, file: !1183, line: 60, baseType: !22, size: 64, offset: 448)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3763, file: !1183, line: 61, baseType: !22, size: 64, offset: 512)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3763, file: !1183, line: 64, baseType: !22, size: 64, offset: 576)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3763, file: !1183, line: 65, baseType: !22, size: 64, offset: 640)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3763, file: !1183, line: 66, baseType: !22, size: 64, offset: 704)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3763, file: !1183, line: 68, baseType: !1198, size: 64, offset: 768)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3763, file: !1183, line: 70, baseType: !3779, size: 64, offset: 832)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3763, file: !1183, line: 72, baseType: !25, size: 32, offset: 896)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3763, file: !1183, line: 73, baseType: !25, size: 32, offset: 928)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3763, file: !1183, line: 74, baseType: !1205, size: 64, offset: 960)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3763, file: !1183, line: 77, baseType: !26, size: 16, offset: 1024)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3763, file: !1183, line: 78, baseType: !1208, size: 8, offset: 1040)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3763, file: !1183, line: 79, baseType: !1210, size: 8, offset: 1048)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3763, file: !1183, line: 81, baseType: !1214, size: 64, offset: 1088)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3763, file: !1183, line: 89, baseType: !1217, size: 64, offset: 1152)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3763, file: !1183, line: 91, baseType: !1219, size: 64, offset: 1216)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3763, file: !1183, line: 92, baseType: !1222, size: 64, offset: 1280)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3763, file: !1183, line: 93, baseType: !3779, size: 64, offset: 1344)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3763, file: !1183, line: 94, baseType: !24, size: 64, offset: 1408)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3763, file: !1183, line: 95, baseType: !138, size: 64, offset: 1472)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3763, file: !1183, line: 96, baseType: !25, size: 32, offset: 1536)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3763, file: !1183, line: 98, baseType: !1229, size: 160, offset: 1568)
!3795 = !DILocalVariable(name: "fp", arg: 1, scope: !3758, file: !273, line: 58, type: !3761)
!3796 = !DILocation(line: 58, column: 19, scope: !3758)
!3797 = !DILocalVariable(name: "saved_errno", scope: !3758, file: !273, line: 60, type: !25)
!3798 = !DILocation(line: 60, column: 7, scope: !3758)
!3799 = !DILocalVariable(name: "fd", scope: !3758, file: !273, line: 63, type: !25)
!3800 = !DILocation(line: 63, column: 7, scope: !3758)
!3801 = !DILocation(line: 63, column: 20, scope: !3758)
!3802 = !DILocation(line: 63, column: 12, scope: !3758)
!3803 = !DILocation(line: 64, column: 7, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3758, file: !273, line: 64, column: 7)
!3805 = !DILocation(line: 64, column: 10, scope: !3804)
!3806 = !DILocation(line: 64, column: 7, scope: !3758)
!3807 = !DILocation(line: 65, column: 28, scope: !3804)
!3808 = !DILocation(line: 65, column: 12, scope: !3804)
!3809 = !DILocation(line: 65, column: 5, scope: !3804)
!3810 = !DILocation(line: 70, column: 9, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3758, file: !273, line: 70, column: 7)
!3812 = !DILocation(line: 70, column: 23, scope: !3811)
!3813 = !DILocation(line: 70, column: 41, scope: !3811)
!3814 = !DILocation(line: 70, column: 33, scope: !3811)
!3815 = !DILocation(line: 70, column: 26, scope: !3811)
!3816 = !DILocation(line: 70, column: 59, scope: !3811)
!3817 = !DILocation(line: 71, column: 7, scope: !3811)
!3818 = !DILocation(line: 71, column: 18, scope: !3811)
!3819 = !DILocation(line: 71, column: 10, scope: !3811)
!3820 = !DILocation(line: 70, column: 7, scope: !3758)
!3821 = !DILocation(line: 72, column: 19, scope: !3811)
!3822 = !DILocation(line: 72, column: 17, scope: !3811)
!3823 = !DILocation(line: 72, column: 5, scope: !3811)
!3824 = !DILocalVariable(name: "result", scope: !3758, file: !273, line: 74, type: !25)
!3825 = !DILocation(line: 74, column: 7, scope: !3758)
!3826 = !DILocation(line: 100, column: 28, scope: !3758)
!3827 = !DILocation(line: 100, column: 12, scope: !3758)
!3828 = !DILocation(line: 100, column: 10, scope: !3758)
!3829 = !DILocation(line: 105, column: 7, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3758, file: !273, line: 105, column: 7)
!3831 = !DILocation(line: 105, column: 19, scope: !3830)
!3832 = !DILocation(line: 105, column: 7, scope: !3758)
!3833 = !DILocation(line: 107, column: 15, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3830, file: !273, line: 106, column: 5)
!3835 = !DILocation(line: 107, column: 7, scope: !3834)
!3836 = !DILocation(line: 107, column: 13, scope: !3834)
!3837 = !DILocation(line: 108, column: 14, scope: !3834)
!3838 = !DILocation(line: 109, column: 5, scope: !3834)
!3839 = !DILocation(line: 111, column: 10, scope: !3758)
!3840 = !DILocation(line: 111, column: 3, scope: !3758)
!3841 = !DILocation(line: 112, column: 1, scope: !3758)
!3842 = distinct !DISubprogram(name: "rpl_fflush", scope: !275, file: !275, line: 130, type: !3843, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !36)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!25, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1181, line: 7, baseType: !3847)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1183, line: 49, size: 1728, elements: !3848)
!3848 = !{!3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3847, file: !1183, line: 51, baseType: !25, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3847, file: !1183, line: 54, baseType: !22, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3847, file: !1183, line: 55, baseType: !22, size: 64, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3847, file: !1183, line: 56, baseType: !22, size: 64, offset: 192)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3847, file: !1183, line: 57, baseType: !22, size: 64, offset: 256)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3847, file: !1183, line: 58, baseType: !22, size: 64, offset: 320)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3847, file: !1183, line: 59, baseType: !22, size: 64, offset: 384)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3847, file: !1183, line: 60, baseType: !22, size: 64, offset: 448)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3847, file: !1183, line: 61, baseType: !22, size: 64, offset: 512)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3847, file: !1183, line: 64, baseType: !22, size: 64, offset: 576)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3847, file: !1183, line: 65, baseType: !22, size: 64, offset: 640)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3847, file: !1183, line: 66, baseType: !22, size: 64, offset: 704)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3847, file: !1183, line: 68, baseType: !1198, size: 64, offset: 768)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3847, file: !1183, line: 70, baseType: !3863, size: 64, offset: 832)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3847, file: !1183, line: 72, baseType: !25, size: 32, offset: 896)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3847, file: !1183, line: 73, baseType: !25, size: 32, offset: 928)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3847, file: !1183, line: 74, baseType: !1205, size: 64, offset: 960)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3847, file: !1183, line: 77, baseType: !26, size: 16, offset: 1024)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3847, file: !1183, line: 78, baseType: !1208, size: 8, offset: 1040)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3847, file: !1183, line: 79, baseType: !1210, size: 8, offset: 1048)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3847, file: !1183, line: 81, baseType: !1214, size: 64, offset: 1088)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3847, file: !1183, line: 89, baseType: !1217, size: 64, offset: 1152)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3847, file: !1183, line: 91, baseType: !1219, size: 64, offset: 1216)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3847, file: !1183, line: 92, baseType: !1222, size: 64, offset: 1280)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3847, file: !1183, line: 93, baseType: !3863, size: 64, offset: 1344)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3847, file: !1183, line: 94, baseType: !24, size: 64, offset: 1408)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3847, file: !1183, line: 95, baseType: !138, size: 64, offset: 1472)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3847, file: !1183, line: 96, baseType: !25, size: 32, offset: 1536)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3847, file: !1183, line: 98, baseType: !1229, size: 160, offset: 1568)
!3879 = !DILocalVariable(name: "stream", arg: 1, scope: !3842, file: !275, line: 130, type: !3845)
!3880 = !DILocation(line: 130, column: 19, scope: !3842)
!3881 = !DILocation(line: 151, column: 7, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3842, file: !275, line: 151, column: 7)
!3883 = !DILocation(line: 151, column: 14, scope: !3882)
!3884 = !DILocation(line: 151, column: 22, scope: !3882)
!3885 = !DILocation(line: 151, column: 27, scope: !3882)
!3886 = !DILocation(line: 151, column: 7, scope: !3842)
!3887 = !DILocation(line: 152, column: 20, scope: !3882)
!3888 = !DILocation(line: 152, column: 12, scope: !3882)
!3889 = !DILocation(line: 152, column: 5, scope: !3882)
!3890 = !DILocation(line: 157, column: 44, scope: !3842)
!3891 = !DILocation(line: 157, column: 3, scope: !3842)
!3892 = !DILocation(line: 159, column: 18, scope: !3842)
!3893 = !DILocation(line: 159, column: 10, scope: !3842)
!3894 = !DILocation(line: 159, column: 3, scope: !3842)
!3895 = !DILocation(line: 236, column: 1, scope: !3842)
!3896 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !275, file: !275, line: 42, type: !3897, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !274, retainedNodes: !36)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{null, !3845}
!3899 = !DILocalVariable(name: "fp", arg: 1, scope: !3896, file: !275, line: 42, type: !3845)
!3900 = !DILocation(line: 42, column: 48, scope: !3896)
!3901 = !DILocation(line: 44, column: 7, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3896, file: !275, line: 44, column: 7)
!3903 = !DILocation(line: 44, column: 12, scope: !3902)
!3904 = !DILocation(line: 44, column: 19, scope: !3902)
!3905 = !DILocation(line: 44, column: 7, scope: !3896)
!3906 = !DILocation(line: 46, column: 13, scope: !3902)
!3907 = !DILocation(line: 46, column: 5, scope: !3902)
!3908 = !DILocation(line: 47, column: 1, scope: !3896)
!3909 = distinct !DISubprogram(name: "rpl_fseeko", scope: !277, file: !277, line: 28, type: !3910, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !36)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!25, !3912, !3946, !25}
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1181, line: 7, baseType: !3914)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1183, line: 49, size: 1728, elements: !3915)
!3915 = !{!3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3914, file: !1183, line: 51, baseType: !25, size: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3914, file: !1183, line: 54, baseType: !22, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3914, file: !1183, line: 55, baseType: !22, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3914, file: !1183, line: 56, baseType: !22, size: 64, offset: 192)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3914, file: !1183, line: 57, baseType: !22, size: 64, offset: 256)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3914, file: !1183, line: 58, baseType: !22, size: 64, offset: 320)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3914, file: !1183, line: 59, baseType: !22, size: 64, offset: 384)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3914, file: !1183, line: 60, baseType: !22, size: 64, offset: 448)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3914, file: !1183, line: 61, baseType: !22, size: 64, offset: 512)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3914, file: !1183, line: 64, baseType: !22, size: 64, offset: 576)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3914, file: !1183, line: 65, baseType: !22, size: 64, offset: 640)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3914, file: !1183, line: 66, baseType: !22, size: 64, offset: 704)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3914, file: !1183, line: 68, baseType: !1198, size: 64, offset: 768)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3914, file: !1183, line: 70, baseType: !3930, size: 64, offset: 832)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3914, file: !1183, line: 72, baseType: !25, size: 32, offset: 896)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3914, file: !1183, line: 73, baseType: !25, size: 32, offset: 928)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3914, file: !1183, line: 74, baseType: !1205, size: 64, offset: 960)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3914, file: !1183, line: 77, baseType: !26, size: 16, offset: 1024)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3914, file: !1183, line: 78, baseType: !1208, size: 8, offset: 1040)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3914, file: !1183, line: 79, baseType: !1210, size: 8, offset: 1048)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3914, file: !1183, line: 81, baseType: !1214, size: 64, offset: 1088)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3914, file: !1183, line: 89, baseType: !1217, size: 64, offset: 1152)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3914, file: !1183, line: 91, baseType: !1219, size: 64, offset: 1216)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3914, file: !1183, line: 92, baseType: !1222, size: 64, offset: 1280)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3914, file: !1183, line: 93, baseType: !3930, size: 64, offset: 1344)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3914, file: !1183, line: 94, baseType: !24, size: 64, offset: 1408)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3914, file: !1183, line: 95, baseType: !138, size: 64, offset: 1472)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3914, file: !1183, line: 96, baseType: !25, size: 32, offset: 1536)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3914, file: !1183, line: 98, baseType: !1229, size: 160, offset: 1568)
!3946 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !74, line: 63, baseType: !1205)
!3947 = !DILocalVariable(name: "fp", arg: 1, scope: !3909, file: !277, line: 28, type: !3912)
!3948 = !DILocation(line: 28, column: 15, scope: !3909)
!3949 = !DILocalVariable(name: "offset", arg: 2, scope: !3909, file: !277, line: 28, type: !3946)
!3950 = !DILocation(line: 28, column: 25, scope: !3909)
!3951 = !DILocalVariable(name: "whence", arg: 3, scope: !3909, file: !277, line: 28, type: !25)
!3952 = !DILocation(line: 28, column: 37, scope: !3909)
!3953 = !DILocation(line: 55, column: 7, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3909, file: !277, line: 55, column: 7)
!3955 = !DILocation(line: 55, column: 12, scope: !3954)
!3956 = !DILocation(line: 55, column: 28, scope: !3954)
!3957 = !DILocation(line: 55, column: 33, scope: !3954)
!3958 = !DILocation(line: 55, column: 25, scope: !3954)
!3959 = !DILocation(line: 56, column: 7, scope: !3954)
!3960 = !DILocation(line: 56, column: 10, scope: !3954)
!3961 = !DILocation(line: 56, column: 15, scope: !3954)
!3962 = !DILocation(line: 56, column: 32, scope: !3954)
!3963 = !DILocation(line: 56, column: 37, scope: !3954)
!3964 = !DILocation(line: 56, column: 29, scope: !3954)
!3965 = !DILocation(line: 57, column: 7, scope: !3954)
!3966 = !DILocation(line: 57, column: 10, scope: !3954)
!3967 = !DILocation(line: 57, column: 15, scope: !3954)
!3968 = !DILocation(line: 57, column: 29, scope: !3954)
!3969 = !DILocation(line: 55, column: 7, scope: !3909)
!3970 = !DILocalVariable(name: "pos", scope: !3971, file: !277, line: 123, type: !3946)
!3971 = distinct !DILexicalBlock(scope: !3954, file: !277, line: 119, column: 5)
!3972 = !DILocation(line: 123, column: 13, scope: !3971)
!3973 = !DILocation(line: 123, column: 34, scope: !3971)
!3974 = !DILocation(line: 123, column: 26, scope: !3971)
!3975 = !DILocation(line: 123, column: 39, scope: !3971)
!3976 = !DILocation(line: 123, column: 47, scope: !3971)
!3977 = !DILocation(line: 123, column: 19, scope: !3971)
!3978 = !DILocation(line: 124, column: 11, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3971, file: !277, line: 124, column: 11)
!3980 = !DILocation(line: 124, column: 15, scope: !3979)
!3981 = !DILocation(line: 124, column: 11, scope: !3971)
!3982 = !DILocation(line: 130, column: 11, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3979, file: !277, line: 125, column: 9)
!3984 = !DILocation(line: 135, column: 7, scope: !3971)
!3985 = !DILocation(line: 135, column: 12, scope: !3971)
!3986 = !DILocation(line: 135, column: 19, scope: !3971)
!3987 = !DILocation(line: 136, column: 22, scope: !3971)
!3988 = !DILocation(line: 136, column: 7, scope: !3971)
!3989 = !DILocation(line: 136, column: 12, scope: !3971)
!3990 = !DILocation(line: 136, column: 20, scope: !3971)
!3991 = !DILocation(line: 167, column: 7, scope: !3971)
!3992 = !DILocation(line: 169, column: 18, scope: !3909)
!3993 = !DILocation(line: 169, column: 22, scope: !3909)
!3994 = !DILocation(line: 169, column: 30, scope: !3909)
!3995 = !DILocation(line: 169, column: 10, scope: !3909)
!3996 = !DILocation(line: 169, column: 3, scope: !3909)
!3997 = !DILocation(line: 170, column: 1, scope: !3909)
!3998 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !3999, file: !3999, line: 43, type: !4000, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !278, retainedNodes: !36)
!3999 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4000 = !DISubroutineType(types: !66)
!4001 = !DILocation(line: 45, column: 3, scope: !3998)
!4002 = !DILocation(line: 45, column: 9, scope: !3998)
!4003 = !DILocation(line: 46, column: 3, scope: !3998)
!4004 = distinct !DISubprogram(name: "imalloc", scope: !3999, file: !3999, line: 55, type: !3340, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !278, retainedNodes: !36)
!4005 = !DILocalVariable(name: "s", arg: 1, scope: !4004, file: !3999, line: 55, type: !259)
!4006 = !DILocation(line: 55, column: 16, scope: !4004)
!4007 = !DILocation(line: 57, column: 10, scope: !4004)
!4008 = !DILocation(line: 57, column: 12, scope: !4004)
!4009 = !DILocation(line: 57, column: 34, scope: !4004)
!4010 = !DILocation(line: 57, column: 26, scope: !4004)
!4011 = !DILocation(line: 57, column: 39, scope: !4004)
!4012 = !DILocation(line: 57, column: 3, scope: !4004)
!4013 = distinct !DISubprogram(name: "irealloc", scope: !3999, file: !3999, line: 66, type: !3368, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !278, retainedNodes: !36)
!4014 = !DILocalVariable(name: "p", arg: 1, scope: !4013, file: !3999, line: 66, type: !24)
!4015 = !DILocation(line: 66, column: 17, scope: !4013)
!4016 = !DILocalVariable(name: "s", arg: 2, scope: !4013, file: !3999, line: 66, type: !259)
!4017 = !DILocation(line: 66, column: 26, scope: !4013)
!4018 = !DILocation(line: 68, column: 10, scope: !4013)
!4019 = !DILocation(line: 68, column: 12, scope: !4013)
!4020 = !DILocation(line: 68, column: 35, scope: !4013)
!4021 = !DILocation(line: 68, column: 38, scope: !4013)
!4022 = !DILocation(line: 68, column: 26, scope: !4013)
!4023 = !DILocation(line: 68, column: 43, scope: !4013)
!4024 = !DILocation(line: 68, column: 3, scope: !4013)
!4025 = distinct !DISubprogram(name: "icalloc", scope: !3999, file: !3999, line: 77, type: !3406, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !278, retainedNodes: !36)
!4026 = !DILocalVariable(name: "n", arg: 1, scope: !4025, file: !3999, line: 77, type: !259)
!4027 = !DILocation(line: 77, column: 16, scope: !4025)
!4028 = !DILocalVariable(name: "s", arg: 2, scope: !4025, file: !3999, line: 77, type: !259)
!4029 = !DILocation(line: 77, column: 25, scope: !4025)
!4030 = !DILocation(line: 79, column: 18, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4025, file: !3999, line: 79, column: 7)
!4032 = !DILocation(line: 79, column: 16, scope: !4031)
!4033 = !DILocation(line: 79, column: 7, scope: !4025)
!4034 = !DILocation(line: 81, column: 11, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4036, file: !3999, line: 81, column: 11)
!4036 = distinct !DILexicalBlock(scope: !4031, file: !3999, line: 80, column: 5)
!4037 = !DILocation(line: 81, column: 13, scope: !4035)
!4038 = !DILocation(line: 81, column: 11, scope: !4036)
!4039 = !DILocation(line: 82, column: 16, scope: !4035)
!4040 = !DILocation(line: 82, column: 9, scope: !4035)
!4041 = !DILocation(line: 83, column: 9, scope: !4036)
!4042 = !DILocation(line: 84, column: 5, scope: !4036)
!4043 = !DILocation(line: 85, column: 18, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4025, file: !3999, line: 85, column: 7)
!4045 = !DILocation(line: 85, column: 16, scope: !4044)
!4046 = !DILocation(line: 85, column: 7, scope: !4025)
!4047 = !DILocation(line: 87, column: 11, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4049, file: !3999, line: 87, column: 11)
!4049 = distinct !DILexicalBlock(scope: !4044, file: !3999, line: 86, column: 5)
!4050 = !DILocation(line: 87, column: 13, scope: !4048)
!4051 = !DILocation(line: 87, column: 11, scope: !4049)
!4052 = !DILocation(line: 88, column: 16, scope: !4048)
!4053 = !DILocation(line: 88, column: 9, scope: !4048)
!4054 = !DILocation(line: 89, column: 9, scope: !4049)
!4055 = !DILocation(line: 90, column: 5, scope: !4049)
!4056 = !DILocation(line: 91, column: 18, scope: !4025)
!4057 = !DILocation(line: 91, column: 21, scope: !4025)
!4058 = !DILocation(line: 91, column: 10, scope: !4025)
!4059 = !DILocation(line: 91, column: 3, scope: !4025)
!4060 = !DILocation(line: 92, column: 1, scope: !4025)
!4061 = distinct !DISubprogram(name: "ireallocarray", scope: !3999, file: !3999, line: 98, type: !3380, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !278, retainedNodes: !36)
!4062 = !DILocalVariable(name: "p", arg: 1, scope: !4061, file: !3999, line: 98, type: !24)
!4063 = !DILocation(line: 98, column: 22, scope: !4061)
!4064 = !DILocalVariable(name: "n", arg: 2, scope: !4061, file: !3999, line: 98, type: !259)
!4065 = !DILocation(line: 98, column: 31, scope: !4061)
!4066 = !DILocalVariable(name: "s", arg: 3, scope: !4061, file: !3999, line: 98, type: !259)
!4067 = !DILocation(line: 98, column: 40, scope: !4061)
!4068 = !DILocation(line: 100, column: 11, scope: !4061)
!4069 = !DILocation(line: 100, column: 13, scope: !4061)
!4070 = !DILocation(line: 100, column: 25, scope: !4061)
!4071 = !DILocation(line: 100, column: 28, scope: !4061)
!4072 = !DILocation(line: 100, column: 30, scope: !4061)
!4073 = !DILocation(line: 101, column: 27, scope: !4061)
!4074 = !DILocation(line: 101, column: 30, scope: !4061)
!4075 = !DILocation(line: 101, column: 33, scope: !4061)
!4076 = !DILocation(line: 101, column: 13, scope: !4061)
!4077 = !DILocation(line: 102, column: 13, scope: !4061)
!4078 = !DILocation(line: 100, column: 3, scope: !4061)
!4079 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !207, file: !207, line: 100, type: !4080, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !206, retainedNodes: !36)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!138, !4082, !34, !138, !4083}
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!4084 = !DILocalVariable(name: "pwc", arg: 1, scope: !4079, file: !207, line: 100, type: !4082)
!4085 = !DILocation(line: 100, column: 21, scope: !4079)
!4086 = !DILocalVariable(name: "s", arg: 2, scope: !4079, file: !207, line: 100, type: !34)
!4087 = !DILocation(line: 100, column: 38, scope: !4079)
!4088 = !DILocalVariable(name: "n", arg: 3, scope: !4079, file: !207, line: 100, type: !138)
!4089 = !DILocation(line: 100, column: 48, scope: !4079)
!4090 = !DILocalVariable(name: "ps", arg: 4, scope: !4079, file: !207, line: 100, type: !4083)
!4091 = !DILocation(line: 100, column: 62, scope: !4079)
!4092 = !DILocation(line: 105, column: 7, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4079, file: !207, line: 105, column: 7)
!4094 = !DILocation(line: 105, column: 9, scope: !4093)
!4095 = !DILocation(line: 105, column: 7, scope: !4079)
!4096 = !DILocation(line: 107, column: 11, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4093, file: !207, line: 106, column: 5)
!4098 = !DILocation(line: 108, column: 9, scope: !4097)
!4099 = !DILocation(line: 109, column: 9, scope: !4097)
!4100 = !DILocation(line: 110, column: 5, scope: !4097)
!4101 = !DILocation(line: 117, column: 7, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4079, file: !207, line: 117, column: 7)
!4103 = !DILocation(line: 117, column: 10, scope: !4102)
!4104 = !DILocation(line: 117, column: 7, scope: !4079)
!4105 = !DILocation(line: 118, column: 8, scope: !4102)
!4106 = !DILocation(line: 118, column: 5, scope: !4102)
!4107 = !DILocalVariable(name: "ret", scope: !4079, file: !207, line: 130, type: !138)
!4108 = !DILocation(line: 130, column: 10, scope: !4079)
!4109 = !DILocation(line: 130, column: 26, scope: !4079)
!4110 = !DILocation(line: 130, column: 31, scope: !4079)
!4111 = !DILocation(line: 130, column: 34, scope: !4079)
!4112 = !DILocation(line: 130, column: 37, scope: !4079)
!4113 = !DILocation(line: 130, column: 16, scope: !4079)
!4114 = !DILocation(line: 135, column: 7, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4079, file: !207, line: 135, column: 7)
!4116 = !DILocation(line: 135, column: 11, scope: !4115)
!4117 = !DILocation(line: 135, column: 25, scope: !4115)
!4118 = !DILocation(line: 135, column: 39, scope: !4115)
!4119 = !DILocation(line: 135, column: 30, scope: !4115)
!4120 = !DILocation(line: 135, column: 7, scope: !4079)
!4121 = !DILocation(line: 137, column: 14, scope: !4115)
!4122 = !DILocation(line: 137, column: 5, scope: !4115)
!4123 = !DILocation(line: 138, column: 7, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4079, file: !207, line: 138, column: 7)
!4125 = !DILocation(line: 138, column: 11, scope: !4124)
!4126 = !DILocation(line: 138, column: 7, scope: !4079)
!4127 = !DILocation(line: 139, column: 5, scope: !4124)
!4128 = !DILocation(line: 143, column: 22, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4079, file: !207, line: 143, column: 7)
!4130 = !DILocation(line: 143, column: 19, scope: !4129)
!4131 = !DILocation(line: 143, column: 26, scope: !4129)
!4132 = !DILocation(line: 143, column: 29, scope: !4129)
!4133 = !DILocation(line: 143, column: 31, scope: !4129)
!4134 = !DILocation(line: 143, column: 36, scope: !4129)
!4135 = !DILocation(line: 143, column: 41, scope: !4129)
!4136 = !DILocation(line: 143, column: 7, scope: !4079)
!4137 = !DILocation(line: 145, column: 11, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !207, line: 145, column: 11)
!4139 = distinct !DILexicalBlock(scope: !4129, file: !207, line: 144, column: 5)
!4140 = !DILocation(line: 145, column: 15, scope: !4138)
!4141 = !DILocation(line: 145, column: 11, scope: !4139)
!4142 = !DILocation(line: 146, column: 33, scope: !4138)
!4143 = !DILocation(line: 146, column: 32, scope: !4138)
!4144 = !DILocation(line: 146, column: 16, scope: !4138)
!4145 = !DILocation(line: 146, column: 10, scope: !4138)
!4146 = !DILocation(line: 146, column: 14, scope: !4138)
!4147 = !DILocation(line: 146, column: 9, scope: !4138)
!4148 = !DILocation(line: 147, column: 7, scope: !4139)
!4149 = !DILocation(line: 151, column: 10, scope: !4079)
!4150 = !DILocation(line: 151, column: 3, scope: !4079)
!4151 = !DILocation(line: 286, column: 1, scope: !4079)
!4152 = distinct !DISubprogram(name: "mbszero", scope: !4153, file: !4153, line: 1135, type: !4154, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !36)
!4153 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!4154 = !DISubroutineType(types: !4155)
!4155 = !{null, !4156}
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !212, line: 6, baseType: !4158)
!4158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !214, line: 21, baseType: !4159)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 13, size: 64, elements: !4160)
!4160 = !{!4161, !4162}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4159, file: !214, line: 15, baseType: !25, size: 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4159, file: !214, line: 20, baseType: !4163, size: 32, offset: 32)
!4163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4159, file: !214, line: 16, size: 32, elements: !4164)
!4164 = !{!4165, !4166}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4163, file: !214, line: 18, baseType: !7, size: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4163, file: !214, line: 19, baseType: !223, size: 32)
!4167 = !DILocalVariable(name: "ps", arg: 1, scope: !4152, file: !4153, line: 1135, type: !4156)
!4168 = !DILocation(line: 1135, column: 21, scope: !4152)
!4169 = !DILocation(line: 1137, column: 11, scope: !4152)
!4170 = !DILocation(line: 1137, column: 3, scope: !4152)
!4171 = !DILocation(line: 1138, column: 1, scope: !4152)
!4172 = distinct !DISubprogram(name: "memeq", scope: !2991, file: !2991, line: 974, type: !4173, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !282, retainedNodes: !36)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!61, !3591, !3591, !138}
!4175 = !DILocalVariable(name: "__s1", arg: 1, scope: !4172, file: !2991, line: 974, type: !3591)
!4176 = !DILocation(line: 974, column: 20, scope: !4172)
!4177 = !DILocalVariable(name: "__s2", arg: 2, scope: !4172, file: !2991, line: 974, type: !3591)
!4178 = !DILocation(line: 974, column: 38, scope: !4172)
!4179 = !DILocalVariable(name: "__n", arg: 3, scope: !4172, file: !2991, line: 974, type: !138)
!4180 = !DILocation(line: 974, column: 51, scope: !4172)
!4181 = !DILocation(line: 976, column: 19, scope: !4172)
!4182 = !DILocation(line: 976, column: 25, scope: !4172)
!4183 = !DILocation(line: 976, column: 31, scope: !4172)
!4184 = !DILocation(line: 976, column: 11, scope: !4172)
!4185 = !DILocation(line: 976, column: 10, scope: !4172)
!4186 = !DILocation(line: 976, column: 3, scope: !4172)
!4187 = !DILocalVariable(name: "username", arg: 1, scope: !288, file: !285, line: 66, type: !34)
!4188 = !DILocation(line: 66, column: 25, scope: !288)
!4189 = !DILocalVariable(name: "gid", arg: 2, scope: !288, file: !285, line: 66, type: !291)
!4190 = !DILocation(line: 66, column: 41, scope: !288)
!4191 = !DILocalVariable(name: "groups", arg: 3, scope: !288, file: !285, line: 66, type: !294)
!4192 = !DILocation(line: 66, column: 54, scope: !288)
!4193 = !DILocation(line: 77, column: 7, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !288, file: !285, line: 77, column: 7)
!4195 = !DILocation(line: 77, column: 7, scope: !288)
!4196 = !DILocalVariable(name: "max_n_groups", scope: !4197, file: !285, line: 80, type: !25)
!4197 = distinct !DILexicalBlock(scope: !4194, file: !285, line: 78, column: 5)
!4198 = !DILocation(line: 80, column: 11, scope: !4197)
!4199 = !DILocalVariable(name: "g", scope: !4197, file: !285, line: 82, type: !295)
!4200 = !DILocation(line: 82, column: 14, scope: !4197)
!4201 = !DILocation(line: 82, column: 42, scope: !4197)
!4202 = !DILocation(line: 82, column: 18, scope: !4197)
!4203 = !DILocation(line: 83, column: 11, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4197, file: !285, line: 83, column: 11)
!4205 = !DILocation(line: 83, column: 13, scope: !4204)
!4206 = !DILocation(line: 83, column: 11, scope: !4197)
!4207 = !DILocation(line: 84, column: 9, scope: !4204)
!4208 = !DILocation(line: 86, column: 7, scope: !4197)
!4209 = !DILocalVariable(name: "last_n_groups", scope: !4210, file: !285, line: 88, type: !25)
!4210 = distinct !DILexicalBlock(scope: !4197, file: !285, line: 87, column: 9)
!4211 = !DILocation(line: 88, column: 15, scope: !4210)
!4212 = !DILocation(line: 88, column: 31, scope: !4210)
!4213 = !DILocalVariable(name: "ng", scope: !4210, file: !285, line: 91, type: !25)
!4214 = !DILocation(line: 91, column: 15, scope: !4210)
!4215 = !DILocation(line: 91, column: 34, scope: !4210)
!4216 = !DILocation(line: 91, column: 44, scope: !4210)
!4217 = !DILocation(line: 91, column: 49, scope: !4210)
!4218 = !DILocation(line: 91, column: 20, scope: !4210)
!4219 = !DILocation(line: 95, column: 15, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4210, file: !285, line: 95, column: 15)
!4221 = !DILocation(line: 95, column: 18, scope: !4220)
!4222 = !DILocation(line: 95, column: 22, scope: !4220)
!4223 = !DILocation(line: 95, column: 25, scope: !4220)
!4224 = !DILocation(line: 95, column: 42, scope: !4220)
!4225 = !DILocation(line: 95, column: 39, scope: !4220)
!4226 = !DILocation(line: 95, column: 15, scope: !4210)
!4227 = !DILocation(line: 96, column: 26, scope: !4220)
!4228 = !DILocation(line: 96, column: 13, scope: !4220)
!4229 = !DILocalVariable(name: "h", scope: !4210, file: !285, line: 98, type: !295)
!4230 = !DILocation(line: 98, column: 18, scope: !4210)
!4231 = !DILocation(line: 98, column: 40, scope: !4210)
!4232 = !DILocation(line: 98, column: 43, scope: !4210)
!4233 = !DILocation(line: 98, column: 22, scope: !4210)
!4234 = !DILocation(line: 99, column: 15, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4210, file: !285, line: 99, column: 15)
!4236 = !DILocation(line: 99, column: 17, scope: !4235)
!4237 = !DILocation(line: 99, column: 15, scope: !4210)
!4238 = !DILocation(line: 101, column: 21, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4235, file: !285, line: 100, column: 13)
!4240 = !DILocation(line: 101, column: 15, scope: !4239)
!4241 = !DILocation(line: 102, column: 15, scope: !4239)
!4242 = !DILocation(line: 104, column: 15, scope: !4210)
!4243 = !DILocation(line: 104, column: 13, scope: !4210)
!4244 = !DILocation(line: 106, column: 20, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4210, file: !285, line: 106, column: 15)
!4246 = !DILocation(line: 106, column: 17, scope: !4245)
!4247 = !DILocation(line: 106, column: 15, scope: !4210)
!4248 = !DILocation(line: 108, column: 25, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4245, file: !285, line: 107, column: 13)
!4250 = !DILocation(line: 108, column: 16, scope: !4249)
!4251 = !DILocation(line: 108, column: 23, scope: !4249)
!4252 = !DILocation(line: 111, column: 22, scope: !4249)
!4253 = !DILocation(line: 111, column: 15, scope: !4249)
!4254 = distinct !{!4254, !4208, !4255}
!4255 = !DILocation(line: 113, column: 9, scope: !4197)
!4256 = !DILocalVariable(name: "max_n_groups", scope: !288, file: !285, line: 118, type: !25)
!4257 = !DILocation(line: 118, column: 7, scope: !288)
!4258 = !DILocation(line: 118, column: 23, scope: !288)
!4259 = !DILocation(line: 119, column: 46, scope: !288)
!4260 = !DILocation(line: 119, column: 56, scope: !288)
!4261 = !DILocation(line: 119, column: 25, scope: !288)
!4262 = !DILocation(line: 120, column: 25, scope: !288)
!4263 = !DILocation(line: 125, column: 7, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !288, file: !285, line: 125, column: 7)
!4265 = !DILocation(line: 125, column: 20, scope: !4264)
!4266 = !DILocation(line: 125, column: 7, scope: !288)
!4267 = !DILocation(line: 127, column: 11, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4269, file: !285, line: 127, column: 11)
!4269 = distinct !DILexicalBlock(scope: !4264, file: !285, line: 126, column: 5)
!4270 = !DILocation(line: 127, column: 17, scope: !4268)
!4271 = !DILocation(line: 127, column: 11, scope: !4269)
!4272 = !DILocalVariable(name: "g", scope: !4273, file: !285, line: 129, type: !295)
!4273 = distinct !DILexicalBlock(scope: !4268, file: !285, line: 128, column: 9)
!4274 = !DILocation(line: 129, column: 18, scope: !4273)
!4275 = !DILocation(line: 129, column: 22, scope: !4273)
!4276 = !DILocation(line: 130, column: 15, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4273, file: !285, line: 130, column: 15)
!4278 = !DILocation(line: 130, column: 15, scope: !4273)
!4279 = !DILocation(line: 132, column: 25, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4277, file: !285, line: 131, column: 13)
!4281 = !DILocation(line: 132, column: 16, scope: !4280)
!4282 = !DILocation(line: 132, column: 23, scope: !4280)
!4283 = !DILocation(line: 133, column: 20, scope: !4280)
!4284 = !DILocation(line: 133, column: 16, scope: !4280)
!4285 = !DILocation(line: 133, column: 18, scope: !4280)
!4286 = !DILocation(line: 134, column: 22, scope: !4280)
!4287 = !DILocation(line: 134, column: 26, scope: !4280)
!4288 = !DILocation(line: 134, column: 15, scope: !4280)
!4289 = !DILocation(line: 136, column: 9, scope: !4273)
!4290 = !DILocation(line: 137, column: 7, scope: !4269)
!4291 = !DILocation(line: 140, column: 7, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !288, file: !285, line: 140, column: 7)
!4293 = !DILocation(line: 140, column: 20, scope: !4292)
!4294 = !DILocation(line: 140, column: 25, scope: !4292)
!4295 = !DILocation(line: 140, column: 30, scope: !4292)
!4296 = !DILocation(line: 140, column: 39, scope: !4292)
!4297 = !DILocation(line: 140, column: 42, scope: !4292)
!4298 = !DILocation(line: 140, column: 46, scope: !4292)
!4299 = !DILocation(line: 140, column: 7, scope: !288)
!4300 = !DILocation(line: 141, column: 17, scope: !4292)
!4301 = !DILocation(line: 141, column: 5, scope: !4292)
!4302 = !DILocalVariable(name: "g", scope: !288, file: !285, line: 142, type: !295)
!4303 = !DILocation(line: 142, column: 10, scope: !288)
!4304 = !DILocation(line: 142, column: 38, scope: !288)
!4305 = !DILocation(line: 142, column: 14, scope: !288)
!4306 = !DILocation(line: 143, column: 7, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !288, file: !285, line: 143, column: 7)
!4308 = !DILocation(line: 143, column: 9, scope: !4307)
!4309 = !DILocation(line: 143, column: 7, scope: !288)
!4310 = !DILocation(line: 144, column: 5, scope: !4307)
!4311 = !DILocalVariable(name: "ng", scope: !288, file: !285, line: 146, type: !25)
!4312 = !DILocation(line: 146, column: 7, scope: !288)
!4313 = !DILocation(line: 146, column: 13, scope: !288)
!4314 = !DILocation(line: 147, column: 27, scope: !288)
!4315 = !DILocation(line: 147, column: 41, scope: !288)
!4316 = !DILocation(line: 147, column: 44, scope: !288)
!4317 = !DILocation(line: 147, column: 54, scope: !288)
!4318 = !DILocation(line: 147, column: 15, scope: !288)
!4319 = !DILocation(line: 148, column: 26, scope: !288)
!4320 = !DILocation(line: 148, column: 42, scope: !288)
!4321 = !DILocation(line: 148, column: 46, scope: !288)
!4322 = !DILocation(line: 148, column: 39, scope: !288)
!4323 = !DILocation(line: 149, column: 37, scope: !288)
!4324 = !DILocation(line: 149, column: 42, scope: !288)
!4325 = !DILocation(line: 149, column: 46, scope: !288)
!4326 = !DILocation(line: 149, column: 39, scope: !288)
!4327 = !DILocation(line: 148, column: 15, scope: !288)
!4328 = !DILocation(line: 151, column: 7, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !288, file: !285, line: 151, column: 7)
!4330 = !DILocation(line: 151, column: 10, scope: !4329)
!4331 = !DILocation(line: 151, column: 7, scope: !288)
!4332 = !DILocation(line: 154, column: 13, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4329, file: !285, line: 152, column: 5)
!4334 = !DILocation(line: 154, column: 7, scope: !4333)
!4335 = !DILocation(line: 155, column: 7, scope: !4333)
!4336 = !DILocation(line: 158, column: 8, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !288, file: !285, line: 158, column: 7)
!4338 = !DILocation(line: 158, column: 17, scope: !4337)
!4339 = !DILocation(line: 158, column: 20, scope: !4337)
!4340 = !DILocation(line: 158, column: 24, scope: !4337)
!4341 = !DILocation(line: 158, column: 7, scope: !288)
!4342 = !DILocation(line: 160, column: 12, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4337, file: !285, line: 159, column: 5)
!4344 = !DILocation(line: 160, column: 8, scope: !4343)
!4345 = !DILocation(line: 160, column: 10, scope: !4343)
!4346 = !DILocation(line: 161, column: 9, scope: !4343)
!4347 = !DILocation(line: 162, column: 5, scope: !4343)
!4348 = !DILocation(line: 163, column: 13, scope: !288)
!4349 = !DILocation(line: 163, column: 4, scope: !288)
!4350 = !DILocation(line: 163, column: 11, scope: !288)
!4351 = !DILocation(line: 181, column: 11, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !288, file: !285, line: 181, column: 7)
!4353 = !DILocation(line: 181, column: 9, scope: !4352)
!4354 = !DILocation(line: 181, column: 7, scope: !288)
!4355 = !DILocalVariable(name: "first", scope: !4356, file: !285, line: 183, type: !291)
!4356 = distinct !DILexicalBlock(scope: !4352, file: !285, line: 182, column: 5)
!4357 = !DILocation(line: 183, column: 13, scope: !4356)
!4358 = !DILocation(line: 183, column: 22, scope: !4356)
!4359 = !DILocation(line: 183, column: 21, scope: !4356)
!4360 = !DILocalVariable(name: "groups_end", scope: !4356, file: !285, line: 184, type: !295)
!4361 = !DILocation(line: 184, column: 14, scope: !4356)
!4362 = !DILocation(line: 184, column: 27, scope: !4356)
!4363 = !DILocation(line: 184, column: 31, scope: !4356)
!4364 = !DILocation(line: 184, column: 29, scope: !4356)
!4365 = !DILocalVariable(name: "next", scope: !4366, file: !285, line: 186, type: !295)
!4366 = distinct !DILexicalBlock(scope: !4356, file: !285, line: 186, column: 7)
!4367 = !DILocation(line: 186, column: 19, scope: !4366)
!4368 = !DILocation(line: 186, column: 26, scope: !4366)
!4369 = !DILocation(line: 186, column: 28, scope: !4366)
!4370 = !DILocation(line: 186, column: 12, scope: !4366)
!4371 = !DILocation(line: 186, column: 33, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4366, file: !285, line: 186, column: 7)
!4373 = !DILocation(line: 186, column: 40, scope: !4372)
!4374 = !DILocation(line: 186, column: 38, scope: !4372)
!4375 = !DILocation(line: 186, column: 7, scope: !4366)
!4376 = !DILocation(line: 188, column: 16, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !285, line: 188, column: 15)
!4378 = distinct !DILexicalBlock(scope: !4372, file: !285, line: 187, column: 9)
!4379 = !DILocation(line: 188, column: 15, scope: !4377)
!4380 = !DILocation(line: 188, column: 24, scope: !4377)
!4381 = !DILocation(line: 188, column: 21, scope: !4377)
!4382 = !DILocation(line: 188, column: 30, scope: !4377)
!4383 = !DILocation(line: 188, column: 34, scope: !4377)
!4384 = !DILocation(line: 188, column: 33, scope: !4377)
!4385 = !DILocation(line: 188, column: 43, scope: !4377)
!4386 = !DILocation(line: 188, column: 42, scope: !4377)
!4387 = !DILocation(line: 188, column: 39, scope: !4377)
!4388 = !DILocation(line: 188, column: 15, scope: !4378)
!4389 = !DILocation(line: 189, column: 15, scope: !4377)
!4390 = !DILocation(line: 189, column: 13, scope: !4377)
!4391 = !DILocation(line: 191, column: 21, scope: !4377)
!4392 = !DILocation(line: 191, column: 20, scope: !4377)
!4393 = !DILocation(line: 191, column: 14, scope: !4377)
!4394 = !DILocation(line: 191, column: 18, scope: !4377)
!4395 = !DILocation(line: 192, column: 9, scope: !4378)
!4396 = !DILocation(line: 186, column: 56, scope: !4372)
!4397 = !DILocation(line: 186, column: 7, scope: !4372)
!4398 = distinct !{!4398, !4375, !4399, !418}
!4399 = !DILocation(line: 192, column: 9, scope: !4366)
!4400 = !DILocation(line: 193, column: 5, scope: !4356)
!4401 = !DILocation(line: 195, column: 10, scope: !288)
!4402 = !DILocation(line: 195, column: 3, scope: !288)
!4403 = !DILocation(line: 196, column: 1, scope: !288)
!4404 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !285, file: !285, line: 43, type: !4405, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !284, retainedNodes: !36)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!295, !295, !138}
!4407 = !DILocalVariable(name: "g", arg: 1, scope: !4404, file: !285, line: 43, type: !295)
!4408 = !DILocation(line: 43, column: 26, scope: !4404)
!4409 = !DILocalVariable(name: "num", arg: 2, scope: !4404, file: !285, line: 43, type: !138)
!4410 = !DILocation(line: 43, column: 36, scope: !4404)
!4411 = !DILocation(line: 45, column: 7, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4404, file: !285, line: 45, column: 7)
!4413 = !DILocation(line: 45, column: 7, scope: !4404)
!4414 = !DILocation(line: 47, column: 7, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4412, file: !285, line: 46, column: 5)
!4416 = !DILocation(line: 47, column: 13, scope: !4415)
!4417 = !DILocation(line: 48, column: 7, scope: !4415)
!4418 = !DILocation(line: 51, column: 19, scope: !4404)
!4419 = !DILocation(line: 51, column: 22, scope: !4404)
!4420 = !DILocation(line: 51, column: 26, scope: !4404)
!4421 = !DILocation(line: 51, column: 10, scope: !4404)
!4422 = !DILocation(line: 51, column: 3, scope: !4404)
!4423 = !DILocation(line: 52, column: 1, scope: !4404)
!4424 = distinct !DISubprogram(name: "rpl_realloc", scope: !4425, file: !4425, line: 2057, type: !3356, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !299, retainedNodes: !36)
!4425 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4426 = !DILocalVariable(name: "ptr", arg: 1, scope: !4424, file: !4425, line: 2057, type: !24)
!4427 = !DILocation(line: 2057, column: 20, scope: !4424)
!4428 = !DILocalVariable(name: "size", arg: 2, scope: !4424, file: !4425, line: 2057, type: !138)
!4429 = !DILocation(line: 2057, column: 32, scope: !4424)
!4430 = !DILocation(line: 2059, column: 19, scope: !4424)
!4431 = !DILocation(line: 2059, column: 24, scope: !4424)
!4432 = !DILocation(line: 2059, column: 31, scope: !4424)
!4433 = !DILocation(line: 2059, column: 10, scope: !4424)
!4434 = !DILocation(line: 2059, column: 3, scope: !4424)
!4435 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !302, file: !302, line: 27, type: !3293, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !36)
!4436 = !DILocalVariable(name: "ptr", arg: 1, scope: !4435, file: !302, line: 27, type: !24)
!4437 = !DILocation(line: 27, column: 21, scope: !4435)
!4438 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4435, file: !302, line: 27, type: !138)
!4439 = !DILocation(line: 27, column: 33, scope: !4435)
!4440 = !DILocalVariable(name: "size", arg: 3, scope: !4435, file: !302, line: 27, type: !138)
!4441 = !DILocation(line: 27, column: 47, scope: !4435)
!4442 = !DILocalVariable(name: "nbytes", scope: !4435, file: !302, line: 29, type: !138)
!4443 = !DILocation(line: 29, column: 10, scope: !4435)
!4444 = !DILocation(line: 30, column: 7, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4435, file: !302, line: 30, column: 7)
!4446 = !DILocation(line: 30, column: 7, scope: !4435)
!4447 = !DILocation(line: 32, column: 7, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4445, file: !302, line: 31, column: 5)
!4449 = !DILocation(line: 32, column: 13, scope: !4448)
!4450 = !DILocation(line: 33, column: 7, scope: !4448)
!4451 = !DILocation(line: 37, column: 19, scope: !4435)
!4452 = !DILocation(line: 37, column: 24, scope: !4435)
!4453 = !DILocation(line: 37, column: 10, scope: !4435)
!4454 = !DILocation(line: 37, column: 3, scope: !4435)
!4455 = !DILocation(line: 38, column: 1, scope: !4435)
!4456 = distinct !DISubprogram(name: "getugroups", scope: !305, file: !305, line: 59, type: !4457, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !304, retainedNodes: !36)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!25, !25, !295, !34, !291}
!4459 = !DILocalVariable(name: "maxcount", arg: 1, scope: !4456, file: !305, line: 59, type: !25)
!4460 = !DILocation(line: 59, column: 17, scope: !4456)
!4461 = !DILocalVariable(name: "grouplist", arg: 2, scope: !4456, file: !305, line: 59, type: !295)
!4462 = !DILocation(line: 59, column: 34, scope: !4456)
!4463 = !DILocalVariable(name: "username", arg: 3, scope: !4456, file: !305, line: 59, type: !34)
!4464 = !DILocation(line: 59, column: 57, scope: !4456)
!4465 = !DILocalVariable(name: "gid", arg: 4, scope: !4456, file: !305, line: 60, type: !291)
!4466 = !DILocation(line: 60, column: 19, scope: !4456)
!4467 = !DILocalVariable(name: "count", scope: !4456, file: !305, line: 62, type: !25)
!4468 = !DILocation(line: 62, column: 7, scope: !4456)
!4469 = !DILocation(line: 64, column: 7, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4456, file: !305, line: 64, column: 7)
!4471 = !DILocation(line: 64, column: 11, scope: !4470)
!4472 = !DILocation(line: 64, column: 7, scope: !4456)
!4473 = !DILocation(line: 66, column: 11, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !305, line: 66, column: 11)
!4475 = distinct !DILexicalBlock(scope: !4470, file: !305, line: 65, column: 5)
!4476 = !DILocation(line: 66, column: 20, scope: !4474)
!4477 = !DILocation(line: 66, column: 11, scope: !4475)
!4478 = !DILocation(line: 67, column: 28, scope: !4474)
!4479 = !DILocation(line: 67, column: 9, scope: !4474)
!4480 = !DILocation(line: 67, column: 19, scope: !4474)
!4481 = !DILocation(line: 67, column: 26, scope: !4474)
!4482 = !DILocation(line: 68, column: 7, scope: !4475)
!4483 = !DILocation(line: 69, column: 5, scope: !4475)
!4484 = !DILocation(line: 71, column: 3, scope: !4456)
!4485 = !DILocation(line: 72, column: 3, scope: !4456)
!4486 = !DILocation(line: 74, column: 7, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4456, file: !305, line: 73, column: 5)
!4488 = !DILocation(line: 74, column: 13, scope: !4487)
!4489 = !DILocalVariable(name: "grp", scope: !4487, file: !305, line: 75, type: !4490)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !913, line: 42, size: 256, elements: !4492)
!4492 = !{!4493, !4494, !4495, !4496}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !4491, file: !913, line: 44, baseType: !22, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !4491, file: !913, line: 45, baseType: !22, size: 64, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !4491, file: !913, line: 46, baseType: !293, size: 32, offset: 128)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !4491, file: !913, line: 47, baseType: !606, size: 64, offset: 192)
!4497 = !DILocation(line: 75, column: 21, scope: !4487)
!4498 = !DILocation(line: 75, column: 27, scope: !4487)
!4499 = !DILocation(line: 76, column: 11, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4487, file: !305, line: 76, column: 11)
!4501 = !DILocation(line: 76, column: 15, scope: !4500)
!4502 = !DILocation(line: 76, column: 11, scope: !4487)
!4503 = !DILocation(line: 77, column: 9, scope: !4500)
!4504 = !DILocalVariable(name: "cp", scope: !4505, file: !305, line: 79, type: !606)
!4505 = distinct !DILexicalBlock(scope: !4487, file: !305, line: 79, column: 7)
!4506 = !DILocation(line: 79, column: 19, scope: !4505)
!4507 = !DILocation(line: 79, column: 24, scope: !4505)
!4508 = !DILocation(line: 79, column: 29, scope: !4505)
!4509 = !DILocation(line: 79, column: 12, scope: !4505)
!4510 = !DILocation(line: 79, column: 38, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4505, file: !305, line: 79, column: 7)
!4512 = !DILocation(line: 79, column: 37, scope: !4511)
!4513 = !DILocation(line: 79, column: 7, scope: !4505)
!4514 = !DILocation(line: 81, column: 22, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4516, file: !305, line: 81, column: 15)
!4516 = distinct !DILexicalBlock(scope: !4511, file: !305, line: 80, column: 9)
!4517 = !DILocation(line: 81, column: 33, scope: !4515)
!4518 = !DILocation(line: 81, column: 32, scope: !4515)
!4519 = !DILocation(line: 81, column: 15, scope: !4515)
!4520 = !DILocation(line: 81, column: 15, scope: !4516)
!4521 = !DILocalVariable(name: "n", scope: !4522, file: !305, line: 84, type: !25)
!4522 = distinct !DILexicalBlock(scope: !4515, file: !305, line: 82, column: 13)
!4523 = !DILocation(line: 84, column: 19, scope: !4522)
!4524 = !DILocation(line: 85, column: 22, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4522, file: !305, line: 85, column: 15)
!4526 = !DILocation(line: 85, column: 20, scope: !4525)
!4527 = !DILocation(line: 85, column: 27, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4525, file: !305, line: 85, column: 15)
!4529 = !DILocation(line: 85, column: 31, scope: !4528)
!4530 = !DILocation(line: 85, column: 29, scope: !4528)
!4531 = !DILocation(line: 85, column: 15, scope: !4525)
!4532 = !DILocation(line: 86, column: 21, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4528, file: !305, line: 86, column: 21)
!4534 = !DILocation(line: 86, column: 31, scope: !4533)
!4535 = !DILocation(line: 86, column: 34, scope: !4533)
!4536 = !DILocation(line: 86, column: 44, scope: !4533)
!4537 = !DILocation(line: 86, column: 50, scope: !4533)
!4538 = !DILocation(line: 86, column: 55, scope: !4533)
!4539 = !DILocation(line: 86, column: 47, scope: !4533)
!4540 = !DILocation(line: 86, column: 21, scope: !4528)
!4541 = !DILocation(line: 87, column: 19, scope: !4533)
!4542 = !DILocation(line: 85, column: 38, scope: !4528)
!4543 = !DILocation(line: 85, column: 15, scope: !4528)
!4544 = distinct !{!4544, !4531, !4545, !418}
!4545 = !DILocation(line: 87, column: 19, scope: !4525)
!4546 = !DILocation(line: 90, column: 19, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4522, file: !305, line: 90, column: 19)
!4548 = !DILocation(line: 90, column: 24, scope: !4547)
!4549 = !DILocation(line: 90, column: 21, scope: !4547)
!4550 = !DILocation(line: 90, column: 19, scope: !4522)
!4551 = !DILocation(line: 92, column: 23, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !305, line: 92, column: 23)
!4553 = distinct !DILexicalBlock(scope: !4547, file: !305, line: 91, column: 17)
!4554 = !DILocation(line: 92, column: 32, scope: !4552)
!4555 = !DILocation(line: 92, column: 23, scope: !4553)
!4556 = !DILocation(line: 94, column: 27, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4558, file: !305, line: 94, column: 27)
!4558 = distinct !DILexicalBlock(scope: !4552, file: !305, line: 93, column: 21)
!4559 = !DILocation(line: 94, column: 36, scope: !4557)
!4560 = !DILocation(line: 94, column: 33, scope: !4557)
!4561 = !DILocation(line: 94, column: 27, scope: !4558)
!4562 = !DILocation(line: 95, column: 25, scope: !4557)
!4563 = !DILocation(line: 96, column: 42, scope: !4558)
!4564 = !DILocation(line: 96, column: 47, scope: !4558)
!4565 = !DILocation(line: 96, column: 23, scope: !4558)
!4566 = !DILocation(line: 96, column: 33, scope: !4558)
!4567 = !DILocation(line: 96, column: 40, scope: !4558)
!4568 = !DILocation(line: 97, column: 21, scope: !4558)
!4569 = !DILocation(line: 98, column: 23, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4553, file: !305, line: 98, column: 23)
!4571 = !DILocation(line: 98, column: 29, scope: !4570)
!4572 = !DILocation(line: 98, column: 23, scope: !4553)
!4573 = !DILocation(line: 100, column: 23, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4570, file: !305, line: 99, column: 21)
!4575 = !DILocation(line: 100, column: 29, scope: !4574)
!4576 = !DILocation(line: 101, column: 23, scope: !4574)
!4577 = !DILocation(line: 103, column: 24, scope: !4553)
!4578 = !DILocation(line: 104, column: 17, scope: !4553)
!4579 = !DILocation(line: 105, column: 13, scope: !4522)
!4580 = !DILocation(line: 106, column: 9, scope: !4516)
!4581 = !DILocation(line: 79, column: 42, scope: !4511)
!4582 = !DILocation(line: 79, column: 7, scope: !4511)
!4583 = distinct !{!4583, !4513, !4584, !418}
!4584 = !DILocation(line: 106, column: 9, scope: !4505)
!4585 = distinct !{!4585, !4485, !4586}
!4586 = !DILocation(line: 107, column: 5, scope: !4456)
!4587 = !DILocation(line: 109, column: 7, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4456, file: !305, line: 109, column: 7)
!4589 = !DILocation(line: 109, column: 13, scope: !4588)
!4590 = !DILocation(line: 109, column: 7, scope: !4456)
!4591 = !DILocation(line: 110, column: 11, scope: !4588)
!4592 = !DILocation(line: 110, column: 5, scope: !4588)
!4593 = !DILocation(line: 109, column: 16, scope: !4588)
!4594 = !DILabel(scope: !4456, name: "done", file: !305, line: 112)
!4595 = !DILocation(line: 112, column: 2, scope: !4456)
!4596 = !DILocalVariable(name: "saved_errno", scope: !4597, file: !305, line: 114, type: !25)
!4597 = distinct !DILexicalBlock(scope: !4456, file: !305, line: 113, column: 3)
!4598 = !DILocation(line: 114, column: 9, scope: !4597)
!4599 = !DILocation(line: 114, column: 23, scope: !4597)
!4600 = !DILocation(line: 115, column: 5, scope: !4597)
!4601 = !DILocation(line: 116, column: 13, scope: !4597)
!4602 = !DILocation(line: 116, column: 5, scope: !4597)
!4603 = !DILocation(line: 116, column: 11, scope: !4597)
!4604 = !DILocation(line: 119, column: 10, scope: !4456)
!4605 = !DILocation(line: 119, column: 3, scope: !4456)
!4606 = distinct !DISubprogram(name: "hard_locale", scope: !308, file: !308, line: 28, type: !4607, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !307, retainedNodes: !36)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!61, !25}
!4609 = !DILocalVariable(name: "category", arg: 1, scope: !4606, file: !308, line: 28, type: !25)
!4610 = !DILocation(line: 28, column: 18, scope: !4606)
!4611 = !DILocalVariable(name: "locale", scope: !4606, file: !308, line: 30, type: !4612)
!4612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !4613)
!4613 = !{!4614}
!4614 = !DISubrange(count: 257)
!4615 = !DILocation(line: 30, column: 8, scope: !4606)
!4616 = !DILocation(line: 32, column: 25, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4606, file: !308, line: 32, column: 7)
!4618 = !DILocation(line: 32, column: 35, scope: !4617)
!4619 = !DILocation(line: 32, column: 7, scope: !4617)
!4620 = !DILocation(line: 32, column: 7, scope: !4606)
!4621 = !DILocation(line: 33, column: 5, scope: !4617)
!4622 = !DILocation(line: 35, column: 16, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4606, file: !308, line: 35, column: 7)
!4624 = !DILocation(line: 35, column: 9, scope: !4623)
!4625 = !DILocation(line: 35, column: 29, scope: !4623)
!4626 = !DILocation(line: 35, column: 39, scope: !4623)
!4627 = !DILocation(line: 35, column: 32, scope: !4623)
!4628 = !DILocation(line: 35, column: 7, scope: !4606)
!4629 = !DILocation(line: 36, column: 5, scope: !4623)
!4630 = !DILocation(line: 46, column: 3, scope: !4606)
!4631 = !DILocation(line: 47, column: 1, scope: !4606)
!4632 = distinct !DISubprogram(name: "setlocale_null_r", scope: !310, file: !310, line: 154, type: !4633, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !36)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!25, !25, !22, !138}
!4635 = !DILocalVariable(name: "category", arg: 1, scope: !4632, file: !310, line: 154, type: !25)
!4636 = !DILocation(line: 154, column: 23, scope: !4632)
!4637 = !DILocalVariable(name: "buf", arg: 2, scope: !4632, file: !310, line: 154, type: !22)
!4638 = !DILocation(line: 154, column: 39, scope: !4632)
!4639 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4632, file: !310, line: 154, type: !138)
!4640 = !DILocation(line: 154, column: 51, scope: !4632)
!4641 = !DILocation(line: 159, column: 37, scope: !4632)
!4642 = !DILocation(line: 159, column: 47, scope: !4632)
!4643 = !DILocation(line: 159, column: 52, scope: !4632)
!4644 = !DILocation(line: 159, column: 10, scope: !4632)
!4645 = !DILocation(line: 159, column: 3, scope: !4632)
!4646 = distinct !DISubprogram(name: "setlocale_null", scope: !310, file: !310, line: 186, type: !4647, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !36)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!34, !25}
!4649 = !DILocalVariable(name: "category", arg: 1, scope: !4646, file: !310, line: 186, type: !25)
!4650 = !DILocation(line: 186, column: 21, scope: !4646)
!4651 = !DILocation(line: 189, column: 35, scope: !4646)
!4652 = !DILocation(line: 189, column: 10, scope: !4646)
!4653 = !DILocation(line: 189, column: 3, scope: !4646)
!4654 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !312, file: !312, line: 35, type: !4647, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !311, retainedNodes: !36)
!4655 = !DILocalVariable(name: "category", arg: 1, scope: !4654, file: !312, line: 35, type: !25)
!4656 = !DILocation(line: 35, column: 30, scope: !4654)
!4657 = !DILocalVariable(name: "result", scope: !4654, file: !312, line: 37, type: !34)
!4658 = !DILocation(line: 37, column: 15, scope: !4654)
!4659 = !DILocation(line: 37, column: 35, scope: !4654)
!4660 = !DILocation(line: 37, column: 24, scope: !4654)
!4661 = !DILocation(line: 62, column: 10, scope: !4654)
!4662 = !DILocation(line: 62, column: 3, scope: !4654)
!4663 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !312, file: !312, line: 66, type: !4633, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !311, retainedNodes: !36)
!4664 = !DILocalVariable(name: "category", arg: 1, scope: !4663, file: !312, line: 66, type: !25)
!4665 = !DILocation(line: 66, column: 32, scope: !4663)
!4666 = !DILocalVariable(name: "buf", arg: 2, scope: !4663, file: !312, line: 66, type: !22)
!4667 = !DILocation(line: 66, column: 48, scope: !4663)
!4668 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4663, file: !312, line: 66, type: !138)
!4669 = !DILocation(line: 66, column: 60, scope: !4663)
!4670 = !DILocalVariable(name: "result", scope: !4663, file: !312, line: 111, type: !34)
!4671 = !DILocation(line: 111, column: 15, scope: !4663)
!4672 = !DILocation(line: 111, column: 49, scope: !4663)
!4673 = !DILocation(line: 111, column: 24, scope: !4663)
!4674 = !DILocation(line: 113, column: 7, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4663, file: !312, line: 113, column: 7)
!4676 = !DILocation(line: 113, column: 14, scope: !4675)
!4677 = !DILocation(line: 113, column: 7, scope: !4663)
!4678 = !DILocation(line: 116, column: 11, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4680, file: !312, line: 116, column: 11)
!4680 = distinct !DILexicalBlock(scope: !4675, file: !312, line: 114, column: 5)
!4681 = !DILocation(line: 116, column: 19, scope: !4679)
!4682 = !DILocation(line: 116, column: 11, scope: !4680)
!4683 = !DILocation(line: 120, column: 9, scope: !4679)
!4684 = !DILocation(line: 120, column: 16, scope: !4679)
!4685 = !DILocation(line: 121, column: 7, scope: !4680)
!4686 = !DILocalVariable(name: "length", scope: !4687, file: !312, line: 125, type: !138)
!4687 = distinct !DILexicalBlock(scope: !4675, file: !312, line: 124, column: 5)
!4688 = !DILocation(line: 125, column: 14, scope: !4687)
!4689 = !DILocation(line: 125, column: 31, scope: !4687)
!4690 = !DILocation(line: 125, column: 23, scope: !4687)
!4691 = !DILocation(line: 126, column: 11, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4687, file: !312, line: 126, column: 11)
!4693 = !DILocation(line: 126, column: 20, scope: !4692)
!4694 = !DILocation(line: 126, column: 18, scope: !4692)
!4695 = !DILocation(line: 126, column: 11, scope: !4687)
!4696 = !DILocation(line: 128, column: 19, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4692, file: !312, line: 127, column: 9)
!4698 = !DILocation(line: 128, column: 24, scope: !4697)
!4699 = !DILocation(line: 128, column: 32, scope: !4697)
!4700 = !DILocation(line: 128, column: 39, scope: !4697)
!4701 = !DILocation(line: 128, column: 11, scope: !4697)
!4702 = !DILocation(line: 129, column: 11, scope: !4697)
!4703 = !DILocation(line: 133, column: 15, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4705, file: !312, line: 133, column: 15)
!4705 = distinct !DILexicalBlock(scope: !4692, file: !312, line: 132, column: 9)
!4706 = !DILocation(line: 133, column: 23, scope: !4704)
!4707 = !DILocation(line: 133, column: 15, scope: !4705)
!4708 = !DILocation(line: 138, column: 23, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4704, file: !312, line: 134, column: 13)
!4710 = !DILocation(line: 138, column: 28, scope: !4709)
!4711 = !DILocation(line: 138, column: 36, scope: !4709)
!4712 = !DILocation(line: 138, column: 44, scope: !4709)
!4713 = !DILocation(line: 138, column: 15, scope: !4709)
!4714 = !DILocation(line: 139, column: 15, scope: !4709)
!4715 = !DILocation(line: 139, column: 19, scope: !4709)
!4716 = !DILocation(line: 139, column: 27, scope: !4709)
!4717 = !DILocation(line: 139, column: 32, scope: !4709)
!4718 = !DILocation(line: 140, column: 13, scope: !4709)
!4719 = !DILocation(line: 141, column: 11, scope: !4705)
!4720 = !DILocation(line: 145, column: 1, scope: !4663)
