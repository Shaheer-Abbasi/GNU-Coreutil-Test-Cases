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
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s : \00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !34
@.str.17 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1
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
@.str.22 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.23 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@.str.2.3 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %ju\00", align 1
@.str.3.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4.5 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), align 8, !dbg !133
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !138
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !143
@.str.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !145
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.55 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !181
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !151
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !177
@.str.1.61 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.63 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.62 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !179
@.str.4.56 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.57 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.58 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !186
@.str.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !192
@.str.78 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.79 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.80 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.81 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.82 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.83 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.84 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.85 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.86 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.87 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.79, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.80, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.81, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.82, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.84, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.87, i32 0, i32 0), i8* null], align 8, !dbg !228
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !254
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !272
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !302
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !309
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !274
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !311
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !260
@.str.10.90 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.88 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.91 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.89 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !279
@.str.96 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.97 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.98 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.99 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.100 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.101 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.102 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.103 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.104 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.105 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.106 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.107 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.108 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.109 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.110 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.111 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.112 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.117 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.118 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.119 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.120 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.121 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.122 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !317
@exit_failure = dso_local global i32 1, align 4, !dbg !325
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.148 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !331
@.str.155 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.156 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !472 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !476, metadata !DIExpression()), !dbg !477
  %3 = icmp eq i32 %0, 0, !dbg !478
  br i1 %3, label %9, label %4, !dbg !480

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !481, !tbaa !483
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #32, !dbg !481
  %7 = load i8*, i8** @program_name, align 8, !dbg !481, !tbaa !483
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #32, !dbg !481
  br label %52, !dbg !481

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #32, !dbg !487
  %11 = load i8*, i8** @program_name, align 8, !dbg !487, !tbaa !483
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #32, !dbg !487
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([155 x i8], [155 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #32, !dbg !489
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !489, !tbaa !483
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !489
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32, !dbg !490
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !490
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32, !dbg !491
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !491
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !492, metadata !DIExpression()) #32, !dbg !511
  %18 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !513
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %18) #32, !dbg !513
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !497, metadata !DIExpression()) #32, !dbg !514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %18, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32, !dbg !514
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !506, metadata !DIExpression()) #32, !dbg !511
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !507, metadata !DIExpression()) #32, !dbg !511
  %19 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !515
  call void @llvm.dbg.value(metadata %struct.infomap* %19, metadata !507, metadata !DIExpression()) #32, !dbg !511
  br label %20, !dbg !516

20:                                               ; preds = %25, %9
  %21 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %9 ]
  %22 = phi %struct.infomap* [ %26, %25 ], [ %19, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %22, metadata !507, metadata !DIExpression()) #32, !dbg !511
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !524
  call void @llvm.dbg.value(metadata i8* %21, metadata !523, metadata !DIExpression()) #32, !dbg !524
  %23 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %21) #33, !dbg !526
  %24 = icmp eq i32 %23, 0, !dbg !527
  br i1 %24, label %30, label %25, !dbg !516

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.infomap, %struct.infomap* %22, i64 1, !dbg !528
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !507, metadata !DIExpression()) #32, !dbg !511
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 0, i32 0, !dbg !529
  %28 = load i8*, i8** %27, align 8, !dbg !529, !tbaa !530
  %29 = icmp eq i8* %28, null, !dbg !532
  br i1 %29, label %30, label %20, !dbg !533, !llvm.loop !534

30:                                               ; preds = %25, %20
  %31 = phi %struct.infomap* [ %22, %20 ], [ %26, %25 ]
  %32 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 0, i32 1, !dbg !536
  %33 = load i8*, i8** %32, align 8, !dbg !536, !tbaa !538
  %34 = icmp eq i8* %33, null, !dbg !539
  %35 = select i1 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %33, !dbg !540
  call void @llvm.dbg.value(metadata i8* %35, metadata !506, metadata !DIExpression()) #32, !dbg !511
  tail call void @emit_bug_reporting_address() #32, !dbg !541
  %36 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !542
  call void @llvm.dbg.value(metadata i8* %36, metadata !509, metadata !DIExpression()) #32, !dbg !511
  %37 = icmp eq i8* %36, null, !dbg !543
  br i1 %37, label %45, label %38, !dbg !545

38:                                               ; preds = %30
  %39 = tail call i32 @strncmp(i8* noundef nonnull %36, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 noundef 3) #33, !dbg !546
  %40 = icmp eq i32 %39, 0, !dbg !546
  br i1 %40, label %45, label %41, !dbg !547

41:                                               ; preds = %38
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.48, i64 0, i64 0), i32 noundef 5) #32, !dbg !548
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !548, !tbaa !483
  %44 = tail call i32 @fputs_unlocked(i8* noundef %42, %struct._IO_FILE* noundef %43) #32, !dbg !548
  br label %45, !dbg !550

45:                                               ; preds = %30, %38, %41
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !551
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !523, metadata !DIExpression()) #32, !dbg !551
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !510, metadata !DIExpression()) #32, !dbg !511
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i32 noundef 5) #32, !dbg !553
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %46, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !553
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i64 0, i64 0), i32 noundef 5) #32, !dbg !554
  %49 = icmp eq i8* %35, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), !dbg !554
  %50 = select i1 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !554
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %48, i8* noundef %35, i8* noundef %50) #32, !dbg !554
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %18) #32, !dbg !555
  br label %52

52:                                               ; preds = %45, %4
  tail call void @exit(i32 noundef %0) #34, !dbg !556
  unreachable, !dbg !556
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !557 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !562 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !36 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !41, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i8* %0, metadata !42, metadata !DIExpression()), !dbg !567
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !568, !tbaa !569
  %3 = icmp eq i32 %2, -1, !dbg !571
  br i1 %3, label %4, label %16, !dbg !572

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #32, !dbg !573
  call void @llvm.dbg.value(metadata i8* %5, metadata !43, metadata !DIExpression()), !dbg !574
  %6 = icmp eq i8* %5, null, !dbg !575
  br i1 %6, label %14, label %7, !dbg !576

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !577, !tbaa !578
  %9 = icmp eq i8 %8, 0, !dbg !577
  br i1 %9, label %14, label %10, !dbg !579

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !517, metadata !DIExpression()) #32, !dbg !580
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), metadata !523, metadata !DIExpression()) #32, !dbg !580
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #33, !dbg !582
  %12 = icmp eq i32 %11, 0, !dbg !583
  %13 = zext i1 %12 to i32, !dbg !579
  br label %14, !dbg !579

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !584, !tbaa !569
  br label %16, !dbg !585

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !586
  %18 = icmp eq i32 %17, 0, !dbg !586
  br i1 %18, label %22, label %19, !dbg !588

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589, !tbaa !483
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !589
  br label %121, !dbg !591

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !46, metadata !DIExpression()), !dbg !567
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #33, !dbg !592
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !593
  call void @llvm.dbg.value(metadata i8* %24, metadata !48, metadata !DIExpression()), !dbg !567
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #33, !dbg !594
  call void @llvm.dbg.value(metadata i8* %25, metadata !49, metadata !DIExpression()), !dbg !567
  %26 = icmp eq i8* %25, null, !dbg !595
  br i1 %26, label %53, label %27, !dbg !596

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !597
  br i1 %28, label %53, label %29, !dbg !598

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !50, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i64 0, metadata !54, metadata !DIExpression()), !dbg !599
  %30 = icmp ult i8* %24, %25, !dbg !600
  br i1 %30, label %31, label %53, !dbg !601

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35, !dbg !567
  %33 = load i16*, i16** %32, align 8, !tbaa !483
  br label %34, !dbg !601

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !50, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i64 %36, metadata !54, metadata !DIExpression()), !dbg !599
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !602
  call void @llvm.dbg.value(metadata i8* %37, metadata !50, metadata !DIExpression()), !dbg !599
  %38 = load i8, i8* %35, align 1, !dbg !602, !tbaa !578
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !602
  %41 = load i16, i16* %40, align 2, !dbg !602, !tbaa !603
  %42 = lshr i16 %41, 13, !dbg !605
  %43 = and i16 %42, 1, !dbg !605
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !606
  call void @llvm.dbg.value(metadata i64 %45, metadata !54, metadata !DIExpression()), !dbg !599
  %46 = icmp ult i8* %37, %25, !dbg !600
  %47 = icmp ult i64 %45, 2, !dbg !607
  %48 = select i1 %46, i1 %47, i1 false, !dbg !607
  br i1 %48, label %34, label %49, !dbg !601, !llvm.loop !608

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !609
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !611
  %52 = xor i1 %50, true, !dbg !611
  br label %53, !dbg !611

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !567
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !46, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i8* %54, metadata !49, metadata !DIExpression()), !dbg !567
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)) #33, !dbg !612
  call void @llvm.dbg.value(metadata i64 %56, metadata !55, metadata !DIExpression()), !dbg !567
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !613
  call void @llvm.dbg.value(metadata i8* %57, metadata !56, metadata !DIExpression()), !dbg !567
  br label %58, !dbg !614

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !567
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !46, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i8* %59, metadata !56, metadata !DIExpression()), !dbg !567
  %61 = load i8, i8* %59, align 1, !dbg !615, !tbaa !578
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !616

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !617
  %64 = load i8, i8* %63, align 1, !dbg !620, !tbaa !578
  %65 = icmp ne i8 %64, 45, !dbg !621
  %66 = select i1 %65, i1 %60, i1 false, !dbg !622
  br label %67, !dbg !622

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !46, metadata !DIExpression()), !dbg !567
  %69 = tail call i16** @__ctype_b_loc() #35, !dbg !623
  %70 = load i16*, i16** %69, align 8, !dbg !623, !tbaa !483
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !623
  %73 = load i16, i16* %72, align 2, !dbg !623, !tbaa !603
  %74 = and i16 %73, 8192, !dbg !623
  %75 = icmp eq i16 %74, 0, !dbg !623
  br i1 %75, label %89, label %76, !dbg !625

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !626
  br i1 %77, label %91, label %78, !dbg !629

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !630
  %80 = load i8, i8* %79, align 1, !dbg !630, !tbaa !578
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !630
  %83 = load i16, i16* %82, align 2, !dbg !630, !tbaa !603
  %84 = and i16 %83, 8192, !dbg !630
  %85 = icmp eq i16 %84, 0, !dbg !630
  br i1 %85, label %86, label %91, !dbg !631

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !632
  br i1 %88, label %89, label %91, !dbg !632

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !634
  call void @llvm.dbg.value(metadata i8* %90, metadata !56, metadata !DIExpression()), !dbg !567
  br label %58, !dbg !614, !llvm.loop !635

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !637
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637, !tbaa !483
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !637
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !523, metadata !DIExpression()) #32, !dbg !638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !640
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !642
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !644
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !646
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !648
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !650
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !652
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !654
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !116, metadata !DIExpression()), !dbg !567
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i64 noundef 6) #33, !dbg !658
  %96 = icmp eq i32 %95, 0, !dbg !658
  br i1 %96, label %100, label %97, !dbg !660

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 noundef 9) #33, !dbg !661
  %99 = icmp eq i32 %98, 0, !dbg !661
  br i1 %99, label %100, label %103, !dbg !662

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !663
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32, !dbg !663
  br label %106, !dbg !665

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !666
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32, !dbg !666
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !668, !tbaa !483
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !668
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !483
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !669
  %111 = ptrtoint i8* %59 to i64, !dbg !670
  %112 = sub i64 %111, %92, !dbg !670
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !670, !tbaa !483
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !670
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !483
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !671
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !672, !tbaa !483
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !672
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !673, !tbaa !483
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !673
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !674
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !675 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !679 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !683 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !689 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !694, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8** %1, metadata !695, metadata !DIExpression()), !dbg !726
  %3 = load i8*, i8** %1, align 8, !dbg !727, !tbaa !483
  tail call void @set_program_name(i8* noundef %3) #32, !dbg !728
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #32, !dbg !729
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #32, !dbg !730
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #32, !dbg !731
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32, !dbg !732
  %8 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #32, !dbg !733
  call void @llvm.dbg.value(metadata i32 %8, metadata !696, metadata !DIExpression()), !dbg !726
  switch i32 %8, label %15 [
    i32 -1, label %16
    i32 -2, label %9
    i32 -3, label %10
  ], !dbg !734

9:                                                ; preds = %2
  tail call void @usage(i32 noundef 0) #36, !dbg !735
  unreachable, !dbg !735

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !738, !tbaa !483
  %12 = load i8*, i8** @Version, align 8, !dbg !738, !tbaa !483
  %13 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)) #32, !dbg !738
  %14 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #32, !dbg !738
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef null) #32, !dbg !738
  tail call void @exit(i32 noundef 0) #34, !dbg !738
  unreachable, !dbg !738

15:                                               ; preds = %2
  tail call void @usage(i32 noundef 1) #36, !dbg !739
  unreachable, !dbg !739

16:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8 1, metadata !697, metadata !DIExpression()), !dbg !726
  %17 = load i32, i32* @optind, align 4, !dbg !740, !tbaa !569
  %18 = icmp eq i32 %17, %0, !dbg !741
  br i1 %18, label %21, label %19, !dbg !742

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 poison, metadata !697, metadata !DIExpression()), !dbg !726
  %20 = icmp slt i32 %17, %0, !dbg !743
  br i1 %20, label %58, label %118, !dbg !744

21:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i32 -1, metadata !698, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i32 -1, metadata !703, metadata !DIExpression()), !dbg !745
  %22 = tail call i32* @__errno_location() #35, !dbg !746
  store i32 0, i32* %22, align 4, !dbg !747, !tbaa !569
  %23 = tail call i32 @getuid() #32, !dbg !748
  call void @llvm.dbg.value(metadata i32 %23, metadata !704, metadata !DIExpression()), !dbg !745
  %24 = icmp eq i32 %23, -1, !dbg !749
  br i1 %24, label %25, label %30, !dbg !751

25:                                               ; preds = %21
  %26 = load i32, i32* %22, align 4, !dbg !752, !tbaa !569
  %27 = icmp eq i32 %26, 0, !dbg !752
  br i1 %27, label %30, label %28, !dbg !753

28:                                               ; preds = %25
  %29 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #32, !dbg !754
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %26, i8* noundef %29) #32, !dbg !754
  unreachable, !dbg !754

30:                                               ; preds = %25, %21
  store i32 0, i32* %22, align 4, !dbg !755, !tbaa !569
  %31 = tail call i32 @getegid() #32, !dbg !756
  call void @llvm.dbg.value(metadata i32 %31, metadata !705, metadata !DIExpression()), !dbg !745
  %32 = icmp eq i32 %31, -1, !dbg !757
  br i1 %32, label %33, label %38, !dbg !759

33:                                               ; preds = %30
  %34 = load i32, i32* %22, align 4, !dbg !760, !tbaa !569
  %35 = icmp eq i32 %34, 0, !dbg !760
  br i1 %35, label %38, label %36, !dbg !761

36:                                               ; preds = %33
  %37 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #32, !dbg !762
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %34, i8* noundef %37) #32, !dbg !762
  unreachable, !dbg !762

38:                                               ; preds = %33, %30
  store i32 0, i32* %22, align 4, !dbg !763, !tbaa !569
  %39 = tail call i32 @getgid() #32, !dbg !764
  call void @llvm.dbg.value(metadata i32 %39, metadata !706, metadata !DIExpression()), !dbg !745
  %40 = icmp eq i32 %39, -1, !dbg !765
  br i1 %40, label %41, label %46, !dbg !767

41:                                               ; preds = %38
  %42 = load i32, i32* %22, align 4, !dbg !768, !tbaa !569
  %43 = icmp eq i32 %42, 0, !dbg !768
  br i1 %43, label %46, label %44, !dbg !769

44:                                               ; preds = %41
  %45 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #32, !dbg !770
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %42, i8* noundef %45) #32, !dbg !770
  unreachable, !dbg !770

46:                                               ; preds = %41, %38
  %47 = tail call i1 @print_group_list(i8* noundef null, i32 noundef %23, i32 noundef %39, i32 noundef %31, i1 noundef true, i8 noundef 32) #32, !dbg !771
  call void @llvm.dbg.value(metadata i8 undef, metadata !697, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i32 10, metadata !773, metadata !DIExpression()) #32, !dbg !779
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !781, !tbaa !483
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 5, !dbg !781
  %50 = load i8*, i8** %49, align 8, !dbg !781, !tbaa !782
  %51 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 6, !dbg !781
  %52 = load i8*, i8** %51, align 8, !dbg !781, !tbaa !785
  %53 = icmp ult i8* %50, %52, !dbg !781
  br i1 %53, label %56, label %54, !dbg !781, !prof !786

54:                                               ; preds = %46
  %55 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %48, i32 noundef 10) #32, !dbg !781
  br label %118, !dbg !781

56:                                               ; preds = %46
  %57 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !781
  store i8* %57, i8** %49, align 8, !dbg !781, !tbaa !782
  store i8 10, i8* %50, align 1, !dbg !781, !tbaa !578
  br label %118, !dbg !781

58:                                               ; preds = %19, %113
  %59 = phi i32 [ %116, %113 ], [ %17, %19 ]
  %60 = phi i1 [ %114, %113 ], [ true, %19 ]
  %61 = sext i32 %59 to i64, !dbg !787
  %62 = getelementptr inbounds i8*, i8** %1, i64 %61, !dbg !787
  %63 = load i8*, i8** %62, align 8, !dbg !787, !tbaa !483
  %64 = tail call %struct.passwd* @getpwnam(i8* noundef %63), !dbg !788
  call void @llvm.dbg.value(metadata %struct.passwd* %64, metadata !707, metadata !DIExpression()), !dbg !789
  %65 = icmp eq %struct.passwd* %64, null, !dbg !790
  br i1 %65, label %66, label %73, !dbg !792

66:                                               ; preds = %58
  %67 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #32, !dbg !793
  %68 = load i32, i32* @optind, align 4, !dbg !793, !tbaa !569
  %69 = sext i32 %68 to i64, !dbg !793
  %70 = getelementptr inbounds i8*, i8** %1, i64 %69, !dbg !793
  %71 = load i8*, i8** %70, align 8, !dbg !793, !tbaa !483
  %72 = tail call i8* @quote(i8* noundef %71) #32, !dbg !793
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %67, i8* noundef %72) #32, !dbg !793
  call void @llvm.dbg.value(metadata i8 0, metadata !697, metadata !DIExpression()), !dbg !726
  br label %113, !dbg !795

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i64 0, i32 2, !dbg !796
  %75 = load i32, i32* %74, align 8, !dbg !796, !tbaa !797
  call void @llvm.dbg.value(metadata i32 %75, metadata !723, metadata !DIExpression()), !dbg !789
  %76 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i64 0, i32 3, !dbg !799
  %77 = load i32, i32* %76, align 4, !dbg !799, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %77, metadata !724, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 %77, metadata !725, metadata !DIExpression()), !dbg !789
  %78 = load i32, i32* @optind, align 4, !dbg !801, !tbaa !569
  %79 = sext i32 %78 to i64, !dbg !801
  %80 = getelementptr inbounds i8*, i8** %1, i64 %79, !dbg !801
  %81 = load i8*, i8** %80, align 8, !dbg !801, !tbaa !483
  %82 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* noundef %81) #32, !dbg !801
  %83 = load i32, i32* @optind, align 4, !dbg !802, !tbaa !569
  %84 = sext i32 %83 to i64, !dbg !804
  %85 = getelementptr inbounds i8*, i8** %1, i64 %84, !dbg !804
  %86 = load i8*, i8** %85, align 8, !dbg !804, !tbaa !483
  %87 = tail call i1 @print_group_list(i8* noundef %86, i32 noundef %75, i32 noundef %77, i32 noundef %77, i1 noundef true, i8 noundef 32) #32, !dbg !805
  %88 = select i1 %87, i1 %60, i1 false, !dbg !806
  call void @llvm.dbg.value(metadata i8 poison, metadata !697, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i32 10, metadata !773, metadata !DIExpression()) #32, !dbg !807
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !809, !tbaa !483
  %90 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %89, i64 0, i32 5, !dbg !809
  %91 = load i8*, i8** %90, align 8, !dbg !809, !tbaa !782
  %92 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %89, i64 0, i32 6, !dbg !809
  %93 = load i8*, i8** %92, align 8, !dbg !809, !tbaa !785
  %94 = icmp ult i8* %91, %93, !dbg !809
  br i1 %94, label %97, label %95, !dbg !809, !prof !786

95:                                               ; preds = %73
  %96 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %89, i32 noundef 10) #32, !dbg !809
  br label %99, !dbg !809

97:                                               ; preds = %73
  %98 = getelementptr inbounds i8, i8* %91, i64 1, !dbg !809
  store i8* %98, i8** %90, align 8, !dbg !809, !tbaa !782
  store i8 10, i8* %91, align 1, !dbg !809, !tbaa !578
  br label %99, !dbg !809

99:                                               ; preds = %95, %97
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !810, !tbaa !483
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %100, metadata !812, metadata !DIExpression()), !dbg !817
  %101 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 0, !dbg !819
  %102 = load i32, i32* %101, align 8, !dbg !819, !tbaa !820
  %103 = and i32 %102, 32, !dbg !810
  %104 = icmp eq i32 %103, 0, !dbg !810
  br i1 %104, label %113, label %105, !dbg !821

105:                                              ; preds = %99
  %106 = tail call i32* @__errno_location() #35, !dbg !822
  %107 = load i32, i32* %106, align 4, !dbg !822, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %107, metadata !825, metadata !DIExpression()) #32, !dbg !827
  %108 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef nonnull %100) #32, !dbg !828
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !829, !tbaa !483
  %110 = tail call i32 @fpurge(%struct._IO_FILE* noundef %109) #32, !dbg !830
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !831, !tbaa !483
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %111) #32, !dbg !831
  %112 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i32 noundef 5) #32, !dbg !832
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %107, i8* noundef %112) #32, !dbg !832
  unreachable, !dbg !832

113:                                              ; preds = %99, %66
  %114 = phi i1 [ false, %66 ], [ %88, %99 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !697, metadata !DIExpression()), !dbg !726
  %115 = load i32, i32* @optind, align 4, !dbg !833, !tbaa !569
  %116 = add nsw i32 %115, 1, !dbg !833
  store i32 %116, i32* @optind, align 4, !dbg !833, !tbaa !569
  %117 = icmp slt i32 %116, %0, !dbg !743
  br i1 %117, label %58, label %118, !dbg !744, !llvm.loop !834

118:                                              ; preds = %113, %19, %56, %54
  %119 = phi i1 [ %47, %54 ], [ %47, %56 ], [ true, %19 ], [ %114, %113 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !697, metadata !DIExpression()), !dbg !726
  %120 = xor i1 %119, true, !dbg !836
  %121 = zext i1 %120 to i32, !dbg !836
  ret i32 %121, !dbg !837
}

; Function Attrs: nounwind
declare !dbg !838 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !841 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !842 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !845 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !851 i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !855 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !858 i32 @getgid() local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !859 noundef %struct.passwd* @getpwnam(i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !862 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !863 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i1 @print_group_list(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef %4, i8 noundef %5) local_unnamed_addr #12 !dbg !866 {
  %7 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !870, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i32 %1, metadata !871, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i32 %2, metadata !872, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i32 %3, metadata !873, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i1 %4, metadata !874, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !893
  call void @llvm.dbg.value(metadata i8 %5, metadata !875, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i8 1, metadata !876, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !877, metadata !DIExpression()), !dbg !893
  %8 = icmp eq i8* %0, null, !dbg !894
  br i1 %8, label %12, label %9, !dbg !896

9:                                                ; preds = %6
  %10 = tail call %struct.passwd* @getpwuid(i32 noundef %1) #32, !dbg !897
  call void @llvm.dbg.value(metadata %struct.passwd* %10, metadata !877, metadata !DIExpression()), !dbg !893
  %11 = icmp ne %struct.passwd* %10, null, !dbg !899
  br label %12, !dbg !901

12:                                               ; preds = %9, %6
  %13 = phi i1 [ true, %6 ], [ %11, %9 ]
  %14 = phi %struct.passwd* [ null, %6 ], [ %10, %9 ], !dbg !893
  call void @llvm.dbg.value(metadata %struct.passwd* %14, metadata !877, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i8 poison, metadata !876, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i32 %2, metadata !902, metadata !DIExpression()) #32, !dbg !925
  call void @llvm.dbg.value(metadata i1 %4, metadata !907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !925
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !908, metadata !DIExpression()) #32, !dbg !925
  call void @llvm.dbg.value(metadata i8 1, metadata !917, metadata !DIExpression()) #32, !dbg !925
  br i1 %4, label %17, label %15, !dbg !928

15:                                               ; preds = %12
  %16 = zext i32 %2 to i64, !dbg !929
  br label %27, !dbg !928

17:                                               ; preds = %12
  %18 = tail call %struct.group* @getgrgid(i32 noundef %2) #32, !dbg !931
  call void @llvm.dbg.value(metadata %struct.group* %18, metadata !908, metadata !DIExpression()) #32, !dbg !925
  %19 = icmp eq %struct.group* %18, null, !dbg !932
  br i1 %19, label %20, label %23, !dbg !933

20:                                               ; preds = %17
  %21 = zext i32 %2 to i64, !dbg !934
  call void @llvm.dbg.value(metadata i64 %21, metadata !918, metadata !DIExpression()) #32, !dbg !935
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 noundef 5) #32, !dbg !936
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %22, i64 noundef %21) #32, !dbg !936
  call void @llvm.dbg.value(metadata i8 0, metadata !917, metadata !DIExpression()) #32, !dbg !925
  br label %27, !dbg !937

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %struct.group* %18, metadata !908, metadata !DIExpression()) #32, !dbg !925
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()) #32, !dbg !925
  %24 = getelementptr inbounds %struct.group, %struct.group* %18, i64 0, i32 0, !dbg !938
  %25 = load i8*, i8** %24, align 8, !dbg !938, !tbaa !939
  %26 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.4, i64 0, i64 0), i8* noundef %25) #32, !dbg !938
  br label %32, !dbg !938

27:                                               ; preds = %20, %15
  %28 = phi i64 [ %16, %15 ], [ %21, %20 ], !dbg !929
  %29 = xor i1 %4, true, !dbg !925
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()) #32, !dbg !925
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.5, i64 0, i64 0), i64 noundef %28) #32, !dbg !929
  %31 = select i1 %29, i1 %13, i1 false
  br label %32

32:                                               ; preds = %23, %27
  %33 = phi i1 [ %31, %27 ], [ %13, %23 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !876, metadata !DIExpression()), !dbg !893
  %34 = icmp eq i32 %3, %2, !dbg !941
  br i1 %34, label %65, label %35, !dbg !943

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i8 %5, metadata !944, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !947
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !950, !tbaa !483
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !950
  %38 = load i8*, i8** %37, align 8, !dbg !950, !tbaa !782
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !950
  %40 = load i8*, i8** %39, align 8, !dbg !950, !tbaa !785
  %41 = icmp ult i8* %38, %40, !dbg !950
  br i1 %41, label %45, label %42, !dbg !950, !prof !786

42:                                               ; preds = %35
  %43 = zext i8 %5 to i32, !dbg !951
  call void @llvm.dbg.value(metadata i32 %43, metadata !944, metadata !DIExpression()) #32, !dbg !947
  %44 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %36, i32 noundef %43) #32, !dbg !950
  br label %47, !dbg !950

45:                                               ; preds = %35
  %46 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !950
  store i8* %46, i8** %37, align 8, !dbg !950, !tbaa !782
  store i8 %5, i8* %38, align 1, !dbg !950, !tbaa !578
  br label %47, !dbg !950

47:                                               ; preds = %42, %45
  call void @llvm.dbg.value(metadata i32 %3, metadata !902, metadata !DIExpression()) #32, !dbg !952
  call void @llvm.dbg.value(metadata i1 %4, metadata !907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !952
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !908, metadata !DIExpression()) #32, !dbg !952
  call void @llvm.dbg.value(metadata i8 1, metadata !917, metadata !DIExpression()) #32, !dbg !952
  br i1 %4, label %50, label %48, !dbg !955

48:                                               ; preds = %47
  %49 = zext i32 %3 to i64, !dbg !956
  br label %60, !dbg !955

50:                                               ; preds = %47
  %51 = tail call %struct.group* @getgrgid(i32 noundef %3) #32, !dbg !957
  call void @llvm.dbg.value(metadata %struct.group* %51, metadata !908, metadata !DIExpression()) #32, !dbg !952
  %52 = icmp eq %struct.group* %51, null, !dbg !958
  br i1 %52, label %53, label %56, !dbg !959

53:                                               ; preds = %50
  %54 = zext i32 %3 to i64, !dbg !960
  call void @llvm.dbg.value(metadata i64 %54, metadata !918, metadata !DIExpression()) #32, !dbg !961
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 noundef 5) #32, !dbg !962
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %55, i64 noundef %54) #32, !dbg !962
  call void @llvm.dbg.value(metadata i8 0, metadata !917, metadata !DIExpression()) #32, !dbg !952
  br label %60, !dbg !963

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %struct.group* %51, metadata !908, metadata !DIExpression()) #32, !dbg !952
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()) #32, !dbg !952
  %57 = getelementptr inbounds %struct.group, %struct.group* %51, i64 0, i32 0, !dbg !964
  %58 = load i8*, i8** %57, align 8, !dbg !964, !tbaa !939
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.4, i64 0, i64 0), i8* noundef %58) #32, !dbg !964
  br label %65, !dbg !964

60:                                               ; preds = %53, %48
  %61 = phi i64 [ %49, %48 ], [ %54, %53 ], !dbg !956
  %62 = xor i1 %4, true, !dbg !952
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()) #32, !dbg !952
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.5, i64 0, i64 0), i64 noundef %61) #32, !dbg !956
  %64 = select i1 %62, i1 %33, i1 false
  br label %65

65:                                               ; preds = %60, %56, %32
  %66 = phi i1 [ %33, %32 ], [ %64, %60 ], [ %33, %56 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !876, metadata !DIExpression()), !dbg !893
  %67 = bitcast i32** %7 to i8*, !dbg !965
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #32, !dbg !965
  %68 = icmp eq %struct.passwd* %14, null, !dbg !966
  br i1 %68, label %72, label %69, !dbg !966

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i64 0, i32 3, !dbg !967
  %71 = load i32, i32* %70, align 4, !dbg !967, !tbaa !800
  br label %72, !dbg !966

72:                                               ; preds = %65, %69
  %73 = phi i32 [ %71, %69 ], [ %3, %65 ], !dbg !966
  call void @llvm.dbg.value(metadata i32** %7, metadata !888, metadata !DIExpression(DW_OP_deref)), !dbg !968
  %74 = call i32 @xgetgroups(i8* noundef %0, i32 noundef %73, i32** noundef nonnull %7) #32, !dbg !969
  call void @llvm.dbg.value(metadata i32 %74, metadata !890, metadata !DIExpression()), !dbg !968
  %75 = icmp slt i32 %74, 0, !dbg !970
  br i1 %75, label %123, label %76, !dbg !972

76:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !891, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i8 poison, metadata !876, metadata !DIExpression()), !dbg !893
  %77 = icmp eq i32 %74, 0, !dbg !974
  br i1 %77, label %131, label %78, !dbg !976

78:                                               ; preds = %76
  %79 = zext i8 %5 to i32
  %80 = xor i1 %4, true
  %81 = zext i32 %74 to i64, !dbg !974
  br i1 %4, label %82, label %135, !dbg !977

82:                                               ; preds = %78, %119
  %83 = phi i64 [ %121, %119 ], [ 0, %78 ]
  %84 = phi i1 [ %120, %119 ], [ %66, %78 ]
  call void @llvm.dbg.value(metadata i64 %83, metadata !891, metadata !DIExpression()), !dbg !973
  %85 = load i32*, i32** %7, align 8, !dbg !982, !tbaa !483
  call void @llvm.dbg.value(metadata i32* %85, metadata !888, metadata !DIExpression()), !dbg !968
  %86 = getelementptr inbounds i32, i32* %85, i64 %83, !dbg !982
  %87 = load i32, i32* %86, align 4, !dbg !982, !tbaa !569
  %88 = icmp eq i32 %87, %2, !dbg !983
  %89 = icmp eq i32 %87, %3
  %90 = or i1 %88, %89, !dbg !984
  br i1 %90, label %119, label %91, !dbg !984

91:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i8 %5, metadata !944, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !985
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !987, !tbaa !483
  %93 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %92, i64 0, i32 5, !dbg !987
  %94 = load i8*, i8** %93, align 8, !dbg !987, !tbaa !782
  %95 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %92, i64 0, i32 6, !dbg !987
  %96 = load i8*, i8** %95, align 8, !dbg !987, !tbaa !785
  %97 = icmp ult i8* %94, %96, !dbg !987
  br i1 %97, label %100, label %98, !dbg !987, !prof !786

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i32 %79, metadata !944, metadata !DIExpression()) #32, !dbg !985
  %99 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %92, i32 noundef %79) #32, !dbg !987
  br label %102, !dbg !987

100:                                              ; preds = %91
  %101 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !987
  store i8* %101, i8** %93, align 8, !dbg !987, !tbaa !782
  store i8 %5, i8* %94, align 1, !dbg !987, !tbaa !578
  br label %102, !dbg !987

102:                                              ; preds = %100, %98
  %103 = load i32*, i32** %7, align 8, !dbg !988, !tbaa !483
  call void @llvm.dbg.value(metadata i32* %103, metadata !888, metadata !DIExpression()), !dbg !968
  %104 = getelementptr inbounds i32, i32* %103, i64 %83, !dbg !988
  %105 = load i32, i32* %104, align 4, !dbg !988, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %105, metadata !902, metadata !DIExpression()) #32, !dbg !989
  call void @llvm.dbg.value(metadata i1 %4, metadata !907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !989
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !908, metadata !DIExpression()) #32, !dbg !989
  call void @llvm.dbg.value(metadata i8 1, metadata !917, metadata !DIExpression()) #32, !dbg !989
  %106 = call %struct.group* @getgrgid(i32 noundef %105) #32, !dbg !990
  call void @llvm.dbg.value(metadata %struct.group* %106, metadata !908, metadata !DIExpression()) #32, !dbg !989
  %107 = icmp eq %struct.group* %106, null, !dbg !991
  br i1 %107, label %112, label %108, !dbg !992

108:                                              ; preds = %102
  call void @llvm.dbg.value(metadata %struct.group* %106, metadata !908, metadata !DIExpression()) #32, !dbg !989
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()) #32, !dbg !989
  %109 = getelementptr inbounds %struct.group, %struct.group* %106, i64 0, i32 0, !dbg !993
  %110 = load i8*, i8** %109, align 8, !dbg !993, !tbaa !939
  %111 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.4, i64 0, i64 0), i8* noundef %110) #32, !dbg !993
  br label %116, !dbg !993

112:                                              ; preds = %102
  %113 = zext i32 %105 to i64, !dbg !994
  call void @llvm.dbg.value(metadata i64 %113, metadata !918, metadata !DIExpression()) #32, !dbg !995
  %114 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 noundef 5) #32, !dbg !996
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %114, i64 noundef %113) #32, !dbg !996
  call void @llvm.dbg.value(metadata i8 0, metadata !917, metadata !DIExpression()) #32, !dbg !989
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()) #32, !dbg !989
  %115 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.5, i64 0, i64 0), i64 noundef %113) #32, !dbg !997
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i1 [ %80, %112 ], [ true, %108 ]
  %118 = select i1 %117, i1 %84, i1 false, !dbg !998
  br label %119, !dbg !998

119:                                              ; preds = %116, %82
  %120 = phi i1 [ %84, %82 ], [ %118, %116 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !876, metadata !DIExpression()), !dbg !893
  %121 = add nuw nsw i64 %83, 1, !dbg !999
  call void @llvm.dbg.value(metadata i64 %121, metadata !891, metadata !DIExpression()), !dbg !973
  %122 = icmp eq i64 %121, %81, !dbg !974
  br i1 %122, label %131, label %82, !dbg !976, !llvm.loop !1000

123:                                              ; preds = %72
  %124 = tail call i32* @__errno_location() #35, !dbg !1002
  %125 = load i32, i32* %124, align 4, !dbg !1002, !tbaa !569
  br i1 %8, label %129, label %126, !dbg !1005

126:                                              ; preds = %123
  %127 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #32, !dbg !1006
  %128 = call i8* @quote(i8* noundef nonnull %0) #32, !dbg !1006
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %125, i8* noundef %127, i8* noundef %128) #32, !dbg !1006
  br label %166, !dbg !1008

129:                                              ; preds = %123
  %130 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.23, i64 0, i64 0), i32 noundef 5) #32, !dbg !1009
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %125, i8* noundef %130) #32, !dbg !1009
  br label %166

131:                                              ; preds = %162, %119, %76
  %132 = phi i1 [ %66, %76 ], [ %120, %119 ], [ %163, %162 ]
  %133 = bitcast i32** %7 to i8**, !dbg !1011
  %134 = load i8*, i8** %133, align 8, !dbg !1011, !tbaa !483
  call void @llvm.dbg.value(metadata i32* undef, metadata !888, metadata !DIExpression()), !dbg !968
  call void @free(i8* noundef %134) #32, !dbg !1012
  br label %166, !dbg !1013

135:                                              ; preds = %78, %162
  %136 = phi i64 [ %164, %162 ], [ 0, %78 ]
  %137 = phi i1 [ %163, %162 ], [ %66, %78 ]
  call void @llvm.dbg.value(metadata i64 %136, metadata !891, metadata !DIExpression()), !dbg !973
  %138 = load i32*, i32** %7, align 8, !dbg !982, !tbaa !483
  call void @llvm.dbg.value(metadata i32* %138, metadata !888, metadata !DIExpression()), !dbg !968
  %139 = getelementptr inbounds i32, i32* %138, i64 %136, !dbg !982
  %140 = load i32, i32* %139, align 4, !dbg !982, !tbaa !569
  %141 = icmp eq i32 %140, %2, !dbg !983
  %142 = icmp eq i32 %140, %3
  %143 = or i1 %141, %142, !dbg !984
  br i1 %143, label %162, label %144, !dbg !984

144:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i8 %5, metadata !944, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !985
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !987, !tbaa !483
  %146 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %145, i64 0, i32 5, !dbg !987
  %147 = load i8*, i8** %146, align 8, !dbg !987, !tbaa !782
  %148 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %145, i64 0, i32 6, !dbg !987
  %149 = load i8*, i8** %148, align 8, !dbg !987, !tbaa !785
  %150 = icmp ult i8* %147, %149, !dbg !987
  br i1 %150, label %153, label %151, !dbg !987, !prof !786

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i32 %79, metadata !944, metadata !DIExpression()) #32, !dbg !985
  %152 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %145, i32 noundef %79) #32, !dbg !987
  br label %155, !dbg !987

153:                                              ; preds = %144
  %154 = getelementptr inbounds i8, i8* %147, i64 1, !dbg !987
  store i8* %154, i8** %146, align 8, !dbg !987, !tbaa !782
  store i8 %5, i8* %147, align 1, !dbg !987, !tbaa !578
  br label %155, !dbg !987

155:                                              ; preds = %151, %153
  %156 = load i32*, i32** %7, align 8, !dbg !988, !tbaa !483
  call void @llvm.dbg.value(metadata i32* %156, metadata !888, metadata !DIExpression()), !dbg !968
  %157 = getelementptr inbounds i32, i32* %156, i64 %136, !dbg !988
  %158 = load i32, i32* %157, align 4, !dbg !988, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %158, metadata !902, metadata !DIExpression()) #32, !dbg !989
  call void @llvm.dbg.value(metadata i1 %4, metadata !907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !989
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !908, metadata !DIExpression()) #32, !dbg !989
  call void @llvm.dbg.value(metadata i8 1, metadata !917, metadata !DIExpression()) #32, !dbg !989
  %159 = zext i32 %158 to i64, !dbg !997
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()) #32, !dbg !989
  %160 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.5, i64 0, i64 0), i64 noundef %159) #32, !dbg !997
  %161 = select i1 %80, i1 %137, i1 false, !dbg !998
  br label %162, !dbg !998

162:                                              ; preds = %155, %135
  %163 = phi i1 [ %137, %135 ], [ %161, %155 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !876, metadata !DIExpression()), !dbg !893
  %164 = add nuw nsw i64 %136, 1, !dbg !999
  call void @llvm.dbg.value(metadata i64 %164, metadata !891, metadata !DIExpression()), !dbg !973
  %165 = icmp eq i64 %164, %81, !dbg !974
  br i1 %165, label %131, label %135, !dbg !976, !llvm.loop !1000

166:                                              ; preds = %126, %129, %131
  %167 = phi i1 [ %132, %131 ], [ %66, %129 ], [ %66, %126 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !876, metadata !DIExpression()), !dbg !893
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #32, !dbg !1013
  %168 = xor i1 %75, true
  %169 = select i1 %168, i1 %167, i1 false
  ret i1 %169, !dbg !1014
}

declare !dbg !1015 %struct.passwd* @getpwuid(i32 noundef) local_unnamed_addr #3

declare !dbg !1018 %struct.group* @getgrgid(i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local i1 @print_group(i32 noundef %0, i1 noundef %1) local_unnamed_addr #12 !dbg !903 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !902, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i1 %1, metadata !907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1021
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !908, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i8 1, metadata !917, metadata !DIExpression()), !dbg !1021
  br i1 %1, label %5, label %3, !dbg !1022

3:                                                ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1023
  br label %15, !dbg !1022

5:                                                ; preds = %2
  %6 = tail call %struct.group* @getgrgid(i32 noundef %0) #32, !dbg !1024
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !908, metadata !DIExpression()), !dbg !1021
  %7 = icmp eq %struct.group* %6, null, !dbg !1025
  br i1 %7, label %8, label %11, !dbg !1026

8:                                                ; preds = %5
  %9 = zext i32 %0 to i64, !dbg !1027
  call void @llvm.dbg.value(metadata i64 %9, metadata !918, metadata !DIExpression()), !dbg !1028
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 noundef 5) #32, !dbg !1029
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %10, i64 noundef %9) #32, !dbg !1029
  call void @llvm.dbg.value(metadata i8 0, metadata !917, metadata !DIExpression()), !dbg !1021
  br label %15, !dbg !1030

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !908, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()), !dbg !1021
  %12 = getelementptr inbounds %struct.group, %struct.group* %6, i64 0, i32 0, !dbg !1031
  %13 = load i8*, i8** %12, align 8, !dbg !1031, !tbaa !939
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.4, i64 0, i64 0), i8* noundef %13) #32, !dbg !1031
  br label %19, !dbg !1031

15:                                               ; preds = %3, %8
  %16 = phi i64 [ %4, %3 ], [ %9, %8 ], !dbg !1023
  %17 = xor i1 %1, true, !dbg !1021
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !908, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()), !dbg !1021
  %18 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.5, i64 0, i64 0), i64 noundef %16) #32, !dbg !1023
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ %17, %15 ], [ true, %11 ]
  ret i1 %20, !dbg !1032
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !1033 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1035, metadata !DIExpression()), !dbg !1036
  store i8* %0, i8** @file_name, align 8, !dbg !1037, !tbaa !483
  ret void, !dbg !1038
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !1039 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1043, metadata !DIExpression()), !dbg !1044
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1045, !tbaa !1046
  ret void, !dbg !1048
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1049 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1054, !tbaa !483
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !1055
  %3 = icmp eq i32 %2, 0, !dbg !1056
  br i1 %3, label %22, label %4, !dbg !1057

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1058, !tbaa !1046, !range !1059
  %6 = icmp eq i8 %5, 0, !dbg !1058
  br i1 %6, label %11, label %7, !dbg !1060

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !1061
  %9 = load i32, i32* %8, align 4, !dbg !1061, !tbaa !569
  %10 = icmp eq i32 %9, 32, !dbg !1062
  br i1 %10, label %22, label %11, !dbg !1063

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.30, i64 0, i64 0), i32 noundef 5) #32, !dbg !1064
  call void @llvm.dbg.value(metadata i8* %12, metadata !1051, metadata !DIExpression()), !dbg !1065
  %13 = load i8*, i8** @file_name, align 8, !dbg !1066, !tbaa !483
  %14 = icmp eq i8* %13, null, !dbg !1066
  %15 = tail call i32* @__errno_location() #35, !dbg !1068
  %16 = load i32, i32* %15, align 4, !dbg !1068, !tbaa !569
  br i1 %14, label %19, label %17, !dbg !1069

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !1070
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.31, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !1070
  br label %20, !dbg !1070

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.32, i64 0, i64 0), i8* noundef %12) #32, !dbg !1071
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1072, !tbaa !569
  tail call void @_exit(i32 noundef %21) #34, !dbg !1073
  unreachable, !dbg !1073

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1074, !tbaa !483
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !1076
  %25 = icmp eq i32 %24, 0, !dbg !1077
  br i1 %25, label %28, label %26, !dbg !1078

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1079, !tbaa !569
  tail call void @_exit(i32 noundef %27) #34, !dbg !1080
  unreachable, !dbg !1080

28:                                               ; preds = %22
  ret void, !dbg !1081
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1082 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1086, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i32 %1, metadata !1087, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8* %2, metadata !1088, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1089, metadata !DIExpression()), !dbg !1091
  tail call fastcc void @flush_stdout(), !dbg !1092
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1093, !tbaa !483
  %7 = icmp eq void ()* %6, null, !dbg !1093
  br i1 %7, label %9, label %8, !dbg !1095

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !1096
  br label %13, !dbg !1096

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1097, !tbaa !483
  %11 = tail call i8* @getprogname() #33, !dbg !1097
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* noundef %11) #32, !dbg !1097
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1099
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !1099
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1099
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1099, !tbaa.struct !1100
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1099
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !1099
  ret void, !dbg !1101
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1102 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1104, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i32 1, metadata !1106, metadata !DIExpression()) #32, !dbg !1109
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !1112
  %2 = icmp slt i32 %1, 0, !dbg !1113
  br i1 %2, label %6, label %3, !dbg !1114

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1115, !tbaa !483
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !1115
  br label %6, !dbg !1115

6:                                                ; preds = %3, %0
  ret void, !dbg !1116
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1117 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1119, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i32 %1, metadata !1120, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %2, metadata !1121, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1122, metadata !DIExpression()), !dbg !1124
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1125, !tbaa !483
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1126
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1127, metadata !DIExpression()) #32, !dbg !1170
  call void @llvm.dbg.value(metadata i8* %2, metadata !1168, metadata !DIExpression()) #32, !dbg !1170
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1172
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1172, !noalias !1173
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1172
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !1172
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1172, !noalias !1173
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1177, !tbaa !569
  %12 = add i32 %11, 1, !dbg !1177
  store i32 %12, i32* @error_message_count, align 4, !dbg !1177, !tbaa !569
  %13 = icmp eq i32 %1, 0, !dbg !1178
  br i1 %13, label %24, label %14, !dbg !1180

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1181, metadata !DIExpression()) #32, !dbg !1189
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1191
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !1191
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1185, metadata !DIExpression()) #32, !dbg !1192
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !1193
  call void @llvm.dbg.value(metadata i8* %16, metadata !1184, metadata !DIExpression()) #32, !dbg !1189
  %17 = icmp eq i8* %16, null, !dbg !1194
  br i1 %17, label %18, label %20, !dbg !1196

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.57, i64 0, i64 0), i32 noundef 5) #32, !dbg !1197
  call void @llvm.dbg.value(metadata i8* %19, metadata !1184, metadata !DIExpression()) #32, !dbg !1189
  br label %20, !dbg !1198

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1189
  call void @llvm.dbg.value(metadata i8* %21, metadata !1184, metadata !DIExpression()) #32, !dbg !1189
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1199, !tbaa !483
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.58, i64 0, i64 0), i8* noundef %21) #32, !dbg !1199
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !1200
  br label %24, !dbg !1201

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1202, !tbaa !483
  call void @llvm.dbg.value(metadata i32 10, metadata !1203, metadata !DIExpression()) #32, !dbg !1209
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1208, metadata !DIExpression()) #32, !dbg !1209
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1211
  %27 = load i8*, i8** %26, align 8, !dbg !1211, !tbaa !782
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1211
  %29 = load i8*, i8** %28, align 8, !dbg !1211, !tbaa !785
  %30 = icmp ult i8* %27, %29, !dbg !1211
  br i1 %30, label %33, label %31, !dbg !1211, !prof !786

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !1211
  br label %35, !dbg !1211

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1211
  store i8* %34, i8** %26, align 8, !dbg !1211, !tbaa !782
  store i8 10, i8* %27, align 1, !dbg !1211, !tbaa !578
  br label %35, !dbg !1211

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1212, !tbaa !483
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !1212
  %38 = icmp eq i32 %0, 0, !dbg !1213
  br i1 %38, label %40, label %39, !dbg !1215

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #34, !dbg !1216
  unreachable, !dbg !1216

40:                                               ; preds = %35
  ret void, !dbg !1217
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1218 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1222 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1226 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1230, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i32 %1, metadata !1231, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8* %2, metadata !1232, metadata !DIExpression()), !dbg !1234
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1235
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !1235
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1233, metadata !DIExpression()), !dbg !1236
  call void @llvm.va_start(i8* nonnull %6), !dbg !1237
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1238
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !1238
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1238, !tbaa.struct !1100
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !1238
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !1238
  call void @llvm.va_end(i8* nonnull %6), !dbg !1239
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !1240
  ret void, !dbg !1240
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !153 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !171, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 %1, metadata !172, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8* %2, metadata !173, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 %3, metadata !174, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8* %4, metadata !175, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !176, metadata !DIExpression()), !dbg !1242
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1243, !tbaa !569
  %9 = icmp eq i32 %8, 0, !dbg !1243
  br i1 %9, label %24, label %10, !dbg !1245

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1246, !tbaa !569
  %12 = icmp eq i32 %11, %3, !dbg !1249
  br i1 %12, label %13, label %23, !dbg !1250

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1251, !tbaa !483
  %15 = icmp eq i8* %14, %2, !dbg !1252
  br i1 %15, label %39, label %16, !dbg !1253

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1254
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1255
  br i1 %19, label %20, label %23, !dbg !1255

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #33, !dbg !1256
  %22 = icmp eq i32 %21, 0, !dbg !1257
  br i1 %22, label %39, label %23, !dbg !1258

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1259, !tbaa !483
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1260, !tbaa !569
  br label %24, !dbg !1261

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1262
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1263, !tbaa !483
  %26 = icmp eq void ()* %25, null, !dbg !1263
  br i1 %26, label %28, label %27, !dbg !1265

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !1266
  br label %32, !dbg !1266

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1267, !tbaa !483
  %30 = tail call i8* @getprogname() #33, !dbg !1267
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.61, i64 0, i64 0), i8* noundef %30) #32, !dbg !1267
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1269, !tbaa !483
  %34 = icmp eq i8* %2, null, !dbg !1269
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.62, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.63, i64 0, i64 0), !dbg !1269
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !1269
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1270
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1270
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1270
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1270, !tbaa.struct !1100
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1270
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1270
  br label %39, !dbg !1271

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1271
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1272 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1276, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i32 %1, metadata !1277, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i8* %2, metadata !1278, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i32 %3, metadata !1279, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i8* %4, metadata !1280, metadata !DIExpression()), !dbg !1282
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1283
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1283
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1281, metadata !DIExpression()), !dbg !1284
  call void @llvm.va_start(i8* nonnull %8), !dbg !1285
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1286
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1286
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1286, !tbaa.struct !1100
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !1286
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1286
  call void @llvm.va_end(i8* nonnull %8), !dbg !1287
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1288
  ret void, !dbg !1288
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1289 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1327, metadata !DIExpression()), !dbg !1328
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !1329
  ret i32 0, !dbg !1330
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 !dbg !1331 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1334, !tbaa !483
  ret i8* %1, !dbg !1335
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #19 !dbg !1336 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1338, metadata !DIExpression()), !dbg !1341
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #33, !dbg !1342
  call void @llvm.dbg.value(metadata i8* %2, metadata !1339, metadata !DIExpression()), !dbg !1341
  %3 = icmp eq i8* %2, null, !dbg !1343
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1343
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1343
  call void @llvm.dbg.value(metadata i8* %5, metadata !1340, metadata !DIExpression()), !dbg !1341
  %6 = ptrtoint i8* %5 to i64, !dbg !1344
  %7 = ptrtoint i8* %0 to i64, !dbg !1344
  %8 = sub i64 %6, %7, !dbg !1344
  %9 = icmp sgt i64 %8, 6, !dbg !1346
  br i1 %9, label %10, label %19, !dbg !1347

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1348
  call void @llvm.dbg.value(metadata i8* %11, metadata !1349, metadata !DIExpression()) #32, !dbg !1356
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i64 0, i64 0), metadata !1354, metadata !DIExpression()) #32, !dbg !1356
  call void @llvm.dbg.value(metadata i64 7, metadata !1355, metadata !DIExpression()) #32, !dbg !1356
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i64 0, i64 0), i64 7) #32, !dbg !1358
  %13 = icmp eq i32 %12, 0, !dbg !1359
  br i1 %13, label %14, label %19, !dbg !1360

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1338, metadata !DIExpression()), !dbg !1341
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.75, i64 0, i64 0), i64 noundef 3) #33, !dbg !1361
  %16 = icmp eq i32 %15, 0, !dbg !1364
  %17 = select i1 %16, i64 3, i64 0, !dbg !1365
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1365
  br label %19, !dbg !1365

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1341
  call void @llvm.dbg.value(metadata i8* %21, metadata !1340, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i8* %20, metadata !1338, metadata !DIExpression()), !dbg !1341
  store i8* %20, i8** @program_name, align 8, !dbg !1366, !tbaa !483
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1367, !tbaa !483
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1368, !tbaa !483
  ret void, !dbg !1369
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !194 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !201, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i8* %1, metadata !202, metadata !DIExpression()), !dbg !1370
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !1371
  call void @llvm.dbg.value(metadata i8* %5, metadata !203, metadata !DIExpression()), !dbg !1370
  %6 = icmp eq i8* %5, %0, !dbg !1372
  br i1 %6, label %7, label %17, !dbg !1374

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1375
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1375
  %10 = bitcast i64* %4 to i8*, !dbg !1376
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1376
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !209, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1378, metadata !DIExpression()) #32, !dbg !1385
  call void @llvm.dbg.value(metadata i8* %10, metadata !1387, metadata !DIExpression()) #32, !dbg !1395
  call void @llvm.dbg.value(metadata i32 0, metadata !1393, metadata !DIExpression()) #32, !dbg !1395
  call void @llvm.dbg.value(metadata i64 8, metadata !1394, metadata !DIExpression()) #32, !dbg !1395
  store i64 0, i64* %4, align 8, !dbg !1397
  call void @llvm.dbg.value(metadata i32* %3, metadata !204, metadata !DIExpression(DW_OP_deref)), !dbg !1370
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !1398
  %12 = icmp eq i64 %11, 2, !dbg !1400
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !204, metadata !DIExpression()), !dbg !1370
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1401
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1370
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1402
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1402
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1370
  ret i8* %18, !dbg !1402
}

; Function Attrs: nounwind
declare !dbg !1403 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1409 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1414, metadata !DIExpression()), !dbg !1417
  %2 = tail call i32* @__errno_location() #35, !dbg !1418
  %3 = load i32, i32* %2, align 4, !dbg !1418, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %3, metadata !1415, metadata !DIExpression()), !dbg !1417
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1419
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1419
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1419
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38, !dbg !1420
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1420
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1416, metadata !DIExpression()), !dbg !1417
  store i32 %3, i32* %2, align 4, !dbg !1421, !tbaa !569
  ret %struct.quoting_options* %8, !dbg !1422
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 !dbg !1423 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1429, metadata !DIExpression()), !dbg !1430
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1431
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1431
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1432
  %5 = load i32, i32* %4, align 8, !dbg !1432, !tbaa !1433
  ret i32 %5, !dbg !1435
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !1436 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1440, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i32 %1, metadata !1441, metadata !DIExpression()), !dbg !1442
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1443
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1443
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1444
  store i32 %1, i32* %5, align 8, !dbg !1445, !tbaa !1433
  ret void, !dbg !1446
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1447 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1451, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i8 %1, metadata !1452, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i32 %2, metadata !1453, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i8 %1, metadata !1454, metadata !DIExpression()), !dbg !1459
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1460
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1460
  %6 = lshr i8 %1, 5, !dbg !1461
  %7 = zext i8 %6 to i64, !dbg !1461
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1462
  call void @llvm.dbg.value(metadata i32* %8, metadata !1455, metadata !DIExpression()), !dbg !1459
  %9 = and i8 %1, 31, !dbg !1463
  %10 = zext i8 %9 to i32, !dbg !1463
  call void @llvm.dbg.value(metadata i32 %10, metadata !1457, metadata !DIExpression()), !dbg !1459
  %11 = load i32, i32* %8, align 4, !dbg !1464, !tbaa !569
  %12 = lshr i32 %11, %10, !dbg !1465
  %13 = and i32 %12, 1, !dbg !1466
  call void @llvm.dbg.value(metadata i32 %13, metadata !1458, metadata !DIExpression()), !dbg !1459
  %14 = and i32 %2, 1, !dbg !1467
  %15 = xor i32 %13, %14, !dbg !1468
  %16 = shl i32 %15, %10, !dbg !1469
  %17 = xor i32 %16, %11, !dbg !1470
  store i32 %17, i32* %8, align 4, !dbg !1470, !tbaa !569
  ret i32 %13, !dbg !1471
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1472 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1476, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i32 %1, metadata !1477, metadata !DIExpression()), !dbg !1479
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1480
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1482
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1476, metadata !DIExpression()), !dbg !1479
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1483
  %6 = load i32, i32* %5, align 4, !dbg !1483, !tbaa !1484
  call void @llvm.dbg.value(metadata i32 %6, metadata !1478, metadata !DIExpression()), !dbg !1479
  store i32 %1, i32* %5, align 4, !dbg !1485, !tbaa !1484
  ret i32 %6, !dbg !1486
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1487 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1491, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i8* %1, metadata !1492, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i8* %2, metadata !1493, metadata !DIExpression()), !dbg !1494
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1495
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1497
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1491, metadata !DIExpression()), !dbg !1494
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1498
  store i32 10, i32* %6, align 8, !dbg !1499, !tbaa !1433
  %7 = icmp ne i8* %1, null, !dbg !1500
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1502
  br i1 %9, label %11, label %10, !dbg !1502

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !1503
  unreachable, !dbg !1503

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1504
  store i8* %1, i8** %12, align 8, !dbg !1505, !tbaa !1506
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1507
  store i8* %2, i8** %13, align 8, !dbg !1508, !tbaa !1509
  ret void, !dbg !1510
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1511 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1515, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %1, metadata !1516, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %2, metadata !1517, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %3, metadata !1518, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1519, metadata !DIExpression()), !dbg !1523
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1524
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1524
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1520, metadata !DIExpression()), !dbg !1523
  %8 = tail call i32* @__errno_location() #35, !dbg !1525
  %9 = load i32, i32* %8, align 4, !dbg !1525, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %9, metadata !1521, metadata !DIExpression()), !dbg !1523
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1526
  %11 = load i32, i32* %10, align 8, !dbg !1526, !tbaa !1433
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1527
  %13 = load i32, i32* %12, align 4, !dbg !1527, !tbaa !1484
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1528
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1529
  %16 = load i8*, i8** %15, align 8, !dbg !1529, !tbaa !1506
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1530
  %18 = load i8*, i8** %17, align 8, !dbg !1530, !tbaa !1509
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %19, metadata !1522, metadata !DIExpression()), !dbg !1523
  store i32 %9, i32* %8, align 4, !dbg !1532, !tbaa !569
  ret i64 %19, !dbg !1533
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1534 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1540, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %1, metadata !1541, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %2, metadata !1542, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %3, metadata !1543, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %4, metadata !1544, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %5, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32* %6, metadata !1546, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %7, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %8, metadata !1548, metadata !DIExpression()), !dbg !1602
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1603
  %18 = icmp eq i64 %17, 1, !dbg !1604
  call void @llvm.dbg.value(metadata i1 %18, metadata !1549, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1602
  call void @llvm.dbg.value(metadata i64 0, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 0, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* null, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 0, metadata !1553, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %5, metadata !1555, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 1, metadata !1557, metadata !DIExpression()), !dbg !1602
  %19 = and i32 %5, 2, !dbg !1605
  %20 = icmp ne i32 %19, 0, !dbg !1605
  %21 = bitcast i64* %13 to %struct.__mbstate_t*
  %22 = bitcast i32* %12 to i8*
  %23 = bitcast i64* %13 to i8*
  %24 = bitcast i64* %11 to %struct.__mbstate_t*
  %25 = bitcast i32* %10 to i8*
  %26 = bitcast i64* %11 to i8*
  %27 = getelementptr inbounds i8, i8* %2, i64 1
  %28 = and i32 %5, 4
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %5, 1
  %31 = icmp eq i32 %30, 0
  %32 = bitcast i64* %14 to i8*
  %33 = bitcast i32* %16 to i8*
  %34 = icmp ne i32* %6, null
  %35 = icmp eq i32* %6, null
  br label %36, !dbg !1605

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1606
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1607
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1608
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1541, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1557, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %43, metadata !1553, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %42, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %41, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 0, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %40, metadata !1543, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %39, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %38, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %37, metadata !1544, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.label(metadata !1595), !dbg !1609
  call void @llvm.dbg.value(metadata i8 0, metadata !1558, metadata !DIExpression()), !dbg !1602
  switch i32 %37, label %110 [
    i32 6, label %49
    i32 5, label %50
    i32 7, label %111
    i32 0, label %109
    i32 2, label %104
    i32 4, label %101
    i32 3, label %100
    i32 1, label %102
    i32 10, label %79
    i32 8, label %54
    i32 9, label %54
  ], !dbg !1610

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 5, metadata !1544, metadata !DIExpression()), !dbg !1602
  br label %111, !dbg !1611

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 5, metadata !1544, metadata !DIExpression()), !dbg !1602
  br i1 %45, label %111, label %51, !dbg !1611

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1612
  br i1 %52, label %111, label %53, !dbg !1616

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1612, !tbaa !578
  br label %111, !dbg !1612

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.88, i64 0, i64 0), metadata !285, metadata !DIExpression()) #32, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %37, metadata !286, metadata !DIExpression()) #32, !dbg !1617
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.88, i64 0, i64 0), i32 noundef 5) #32, !dbg !1621
  call void @llvm.dbg.value(metadata i8* %55, metadata !287, metadata !DIExpression()) #32, !dbg !1617
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.88, i64 0, i64 0), !dbg !1622
  br i1 %56, label %57, label %66, !dbg !1624

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1625
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1626
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !289, metadata !DIExpression()) #32, !dbg !1627
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1628, metadata !DIExpression()) #32, !dbg !1634
  call void @llvm.dbg.value(metadata i8* %23, metadata !1636, metadata !DIExpression()) #32, !dbg !1641
  call void @llvm.dbg.value(metadata i32 0, metadata !1639, metadata !DIExpression()) #32, !dbg !1641
  call void @llvm.dbg.value(metadata i64 8, metadata !1640, metadata !DIExpression()) #32, !dbg !1641
  store i64 0, i64* %13, align 8, !dbg !1643
  call void @llvm.dbg.value(metadata i32* %12, metadata !288, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1617
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1644
  %59 = icmp eq i64 %58, 3, !dbg !1646
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !288, metadata !DIExpression()) #32, !dbg !1617
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1647
  %63 = icmp eq i32 %37, 9, !dbg !1647
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), !dbg !1647
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1647
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1648
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1648
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1617
  call void @llvm.dbg.value(metadata i8* %67, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), metadata !285, metadata !DIExpression()) #32, !dbg !1649
  call void @llvm.dbg.value(metadata i32 %37, metadata !286, metadata !DIExpression()) #32, !dbg !1649
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), i32 noundef 5) #32, !dbg !1651
  call void @llvm.dbg.value(metadata i8* %68, metadata !287, metadata !DIExpression()) #32, !dbg !1649
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), !dbg !1652
  br i1 %69, label %70, label %79, !dbg !1653

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1654
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1655
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !289, metadata !DIExpression()) #32, !dbg !1656
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1628, metadata !DIExpression()) #32, !dbg !1657
  call void @llvm.dbg.value(metadata i8* %26, metadata !1636, metadata !DIExpression()) #32, !dbg !1659
  call void @llvm.dbg.value(metadata i32 0, metadata !1639, metadata !DIExpression()) #32, !dbg !1659
  call void @llvm.dbg.value(metadata i64 8, metadata !1640, metadata !DIExpression()) #32, !dbg !1659
  store i64 0, i64* %11, align 8, !dbg !1661
  call void @llvm.dbg.value(metadata i32* %10, metadata !288, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1649
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1662
  %72 = icmp eq i64 %71, 3, !dbg !1663
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !288, metadata !DIExpression()) #32, !dbg !1649
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1664
  %76 = icmp eq i32 %37, 9, !dbg !1664
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), !dbg !1664
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1664
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1665
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1665
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %80, metadata !1547, metadata !DIExpression()), !dbg !1602
  br i1 %45, label %97, label %82, !dbg !1666

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1559, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64 0, metadata !1550, metadata !DIExpression()), !dbg !1602
  %83 = load i8, i8* %80, align 1, !dbg !1668, !tbaa !578
  %84 = icmp eq i8 %83, 0, !dbg !1670
  br i1 %84, label %97, label %85, !dbg !1670

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1559, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64 %88, metadata !1550, metadata !DIExpression()), !dbg !1602
  %89 = icmp ult i64 %88, %48, !dbg !1671
  br i1 %89, label %90, label %92, !dbg !1674

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1671
  store i8 %86, i8* %91, align 1, !dbg !1671, !tbaa !578
  br label %92, !dbg !1671

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %93, metadata !1550, metadata !DIExpression()), !dbg !1602
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1675
  call void @llvm.dbg.value(metadata i8* %94, metadata !1559, metadata !DIExpression()), !dbg !1667
  %95 = load i8, i8* %94, align 1, !dbg !1668, !tbaa !578
  %96 = icmp eq i8 %95, 0, !dbg !1670
  br i1 %96, label %97, label %85, !dbg !1670, !llvm.loop !1676

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1678
  call void @llvm.dbg.value(metadata i64 %98, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 1, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %81, metadata !1552, metadata !DIExpression()), !dbg !1602
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #33, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %99, metadata !1553, metadata !DIExpression()), !dbg !1602
  br label %111, !dbg !1680

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1554, metadata !DIExpression()), !dbg !1602
  br label %102, !dbg !1681

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1554, metadata !DIExpression()), !dbg !1602
  br i1 %45, label %102, label %105, !dbg !1682

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 2, metadata !1544, metadata !DIExpression()), !dbg !1602
  br label %111, !dbg !1683

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 2, metadata !1544, metadata !DIExpression()), !dbg !1602
  br i1 %45, label %111, label %105, !dbg !1683

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1684
  br i1 %107, label %111, label %108, !dbg !1688

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1684, !tbaa !578
  br label %111, !dbg !1684

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1555, metadata !DIExpression()), !dbg !1602
  br label %111, !dbg !1689

110:                                              ; preds = %36
  call void @abort() #34, !dbg !1690
  unreachable, !dbg !1690

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1678
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), %102 ], !dbg !1602
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1602
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %117, metadata !1553, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %116, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %115, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %114, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %113, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %112, metadata !1544, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 0, metadata !1564, metadata !DIExpression()), !dbg !1691
  %120 = icmp ne i32 %112, 2
  %121 = and i1 %120, %118
  %122 = icmp ne i64 %117, 0
  %123 = select i1 %121, i1 %122, i1 false
  %124 = icmp ugt i64 %117, 1
  %125 = xor i1 %119, true
  %126 = icmp eq i32 %112, 2
  %127 = select i1 %119, i1 %122, i1 false
  %128 = or i1 %120, %125
  %129 = and i1 %126, %119
  %130 = xor i1 %118, true
  %131 = and i1 %34, %119
  br label %132, !dbg !1692

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1678
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1606
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1691
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1541, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %139, metadata !1564, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1557, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %135, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %134, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %133, metadata !1543, metadata !DIExpression()), !dbg !1602
  %141 = icmp eq i64 %133, -1, !dbg !1693
  br i1 %141, label %142, label %146, !dbg !1694

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1695
  %144 = load i8, i8* %143, align 1, !dbg !1695, !tbaa !578
  %145 = icmp eq i8 %144, 0, !dbg !1696
  br i1 %145, label %596, label %148, !dbg !1697

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1698
  br i1 %147, label %596, label %148, !dbg !1697

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1566, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 0, metadata !1569, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 0, metadata !1570, metadata !DIExpression()), !dbg !1699
  br i1 %123, label %149, label %163, !dbg !1700

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1702
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1703
  br i1 %151, label %152, label %154, !dbg !1703

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1704
  call void @llvm.dbg.value(metadata i64 %153, metadata !1543, metadata !DIExpression()), !dbg !1602
  br label %154, !dbg !1705

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1705
  call void @llvm.dbg.value(metadata i64 %155, metadata !1543, metadata !DIExpression()), !dbg !1602
  %156 = icmp ugt i64 %150, %155, !dbg !1706
  br i1 %156, label %163, label %157, !dbg !1707

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1708
  call void @llvm.dbg.value(metadata i8* %158, metadata !1709, metadata !DIExpression()) #32, !dbg !1714
  call void @llvm.dbg.value(metadata i8* %116, metadata !1712, metadata !DIExpression()) #32, !dbg !1714
  call void @llvm.dbg.value(metadata i64 %117, metadata !1713, metadata !DIExpression()) #32, !dbg !1714
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1716
  %160 = icmp ne i32 %159, 0, !dbg !1717
  %161 = or i1 %160, %125, !dbg !1718
  %162 = xor i1 %160, true, !dbg !1718
  br i1 %161, label %163, label %647, !dbg !1718

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1566, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %164, metadata !1543, metadata !DIExpression()), !dbg !1602
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1719
  %167 = load i8, i8* %166, align 1, !dbg !1719, !tbaa !578
  call void @llvm.dbg.value(metadata i8 %167, metadata !1571, metadata !DIExpression()), !dbg !1699
  switch i8 %167, label %298 [
    i8 0, label %168
    i8 63, label %216
    i8 7, label %263
    i8 8, label %252
    i8 12, label %253
    i8 10, label %261
    i8 13, label %254
    i8 9, label %255
    i8 11, label %256
    i8 92, label %257
    i8 123, label %265
    i8 125, label %265
    i8 35, label %269
    i8 126, label %269
    i8 32, label %271
    i8 33, label %272
    i8 34, label %272
    i8 36, label %272
    i8 38, label %272
    i8 40, label %272
    i8 41, label %272
    i8 42, label %272
    i8 59, label %272
    i8 60, label %272
    i8 61, label %272
    i8 62, label %272
    i8 91, label %272
    i8 94, label %272
    i8 96, label %272
    i8 124, label %272
    i8 39, label %275
    i8 37, label %456
    i8 43, label %456
    i8 44, label %456
    i8 45, label %456
    i8 46, label %456
    i8 47, label %456
    i8 48, label %456
    i8 49, label %456
    i8 50, label %456
    i8 51, label %456
    i8 52, label %456
    i8 53, label %456
    i8 54, label %456
    i8 55, label %456
    i8 56, label %456
    i8 57, label %456
    i8 58, label %456
    i8 65, label %456
    i8 66, label %456
    i8 67, label %456
    i8 68, label %456
    i8 69, label %456
    i8 70, label %456
    i8 71, label %456
    i8 72, label %456
    i8 73, label %456
    i8 74, label %456
    i8 75, label %456
    i8 76, label %456
    i8 77, label %456
    i8 78, label %456
    i8 79, label %456
    i8 80, label %456
    i8 81, label %456
    i8 82, label %456
    i8 83, label %456
    i8 84, label %456
    i8 85, label %456
    i8 86, label %456
    i8 87, label %456
    i8 88, label %456
    i8 89, label %456
    i8 90, label %456
    i8 93, label %456
    i8 95, label %456
    i8 97, label %456
    i8 98, label %456
    i8 99, label %456
    i8 100, label %456
    i8 101, label %456
    i8 102, label %456
    i8 103, label %456
    i8 104, label %456
    i8 105, label %456
    i8 106, label %456
    i8 107, label %456
    i8 108, label %456
    i8 109, label %456
    i8 110, label %456
    i8 111, label %456
    i8 112, label %456
    i8 113, label %456
    i8 114, label %456
    i8 115, label %456
    i8 116, label %456
    i8 117, label %456
    i8 118, label %456
    i8 119, label %456
    i8 120, label %456
    i8 121, label %456
    i8 122, label %456
  ], !dbg !1720

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1721

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1722

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1569, metadata !DIExpression()), !dbg !1699
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1726
  br i1 %171, label %188, label %172, !dbg !1726

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1728
  br i1 %173, label %174, label %176, !dbg !1732

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1728
  store i8 39, i8* %175, align 1, !dbg !1728, !tbaa !578
  br label %176, !dbg !1728

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %177, metadata !1550, metadata !DIExpression()), !dbg !1602
  %178 = icmp ult i64 %177, %140, !dbg !1733
  br i1 %178, label %179, label %181, !dbg !1736

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1733
  store i8 36, i8* %180, align 1, !dbg !1733, !tbaa !578
  br label %181, !dbg !1733

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %182, metadata !1550, metadata !DIExpression()), !dbg !1602
  %183 = icmp ult i64 %182, %140, !dbg !1737
  br i1 %183, label %184, label %186, !dbg !1740

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1737
  store i8 39, i8* %185, align 1, !dbg !1737, !tbaa !578
  br label %186, !dbg !1737

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %187, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 1, metadata !1558, metadata !DIExpression()), !dbg !1602
  br label %188, !dbg !1741

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1602
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %189, metadata !1550, metadata !DIExpression()), !dbg !1602
  %191 = icmp ult i64 %189, %140, !dbg !1742
  br i1 %191, label %192, label %194, !dbg !1745

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1742
  store i8 92, i8* %193, align 1, !dbg !1742, !tbaa !578
  br label %194, !dbg !1742

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1745
  call void @llvm.dbg.value(metadata i64 %195, metadata !1550, metadata !DIExpression()), !dbg !1602
  br i1 %120, label %196, label %499, !dbg !1746

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1748
  %198 = icmp ult i64 %197, %164, !dbg !1749
  br i1 %198, label %199, label %456, !dbg !1750

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1751
  %201 = load i8, i8* %200, align 1, !dbg !1751, !tbaa !578
  %202 = add i8 %201, -48, !dbg !1752
  %203 = icmp ult i8 %202, 10, !dbg !1752
  br i1 %203, label %204, label %456, !dbg !1752

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1753
  br i1 %205, label %206, label %208, !dbg !1757

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1753
  store i8 48, i8* %207, align 1, !dbg !1753, !tbaa !578
  br label %208, !dbg !1753

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %209, metadata !1550, metadata !DIExpression()), !dbg !1602
  %210 = icmp ult i64 %209, %140, !dbg !1758
  br i1 %210, label %211, label %213, !dbg !1761

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1758
  store i8 48, i8* %212, align 1, !dbg !1758, !tbaa !578
  br label %213, !dbg !1758

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %214, metadata !1550, metadata !DIExpression()), !dbg !1602
  br label %456, !dbg !1762

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1763

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1764

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1765

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1767

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1769
  %221 = icmp ult i64 %220, %164, !dbg !1770
  br i1 %221, label %222, label %456, !dbg !1771

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1772
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1773
  %225 = load i8, i8* %224, align 1, !dbg !1773, !tbaa !578
  %226 = icmp eq i8 %225, 63, !dbg !1774
  br i1 %226, label %227, label %456, !dbg !1775

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1776
  %229 = load i8, i8* %228, align 1, !dbg !1776, !tbaa !578
  switch i8 %229, label %456 [
    i8 33, label %230
    i8 39, label %230
    i8 40, label %230
    i8 41, label %230
    i8 45, label %230
    i8 47, label %230
    i8 60, label %230
    i8 61, label %230
    i8 62, label %230
  ], !dbg !1777

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1778

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1571, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %220, metadata !1564, metadata !DIExpression()), !dbg !1691
  %232 = icmp ult i64 %134, %140, !dbg !1780
  br i1 %232, label %233, label %235, !dbg !1783

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1780
  store i8 63, i8* %234, align 1, !dbg !1780, !tbaa !578
  br label %235, !dbg !1780

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %236, metadata !1550, metadata !DIExpression()), !dbg !1602
  %237 = icmp ult i64 %236, %140, !dbg !1784
  br i1 %237, label %238, label %240, !dbg !1787

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1784
  store i8 34, i8* %239, align 1, !dbg !1784, !tbaa !578
  br label %240, !dbg !1784

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %241, metadata !1550, metadata !DIExpression()), !dbg !1602
  %242 = icmp ult i64 %241, %140, !dbg !1788
  br i1 %242, label %243, label %245, !dbg !1791

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1788
  store i8 34, i8* %244, align 1, !dbg !1788, !tbaa !578
  br label %245, !dbg !1788

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %246, metadata !1550, metadata !DIExpression()), !dbg !1602
  %247 = icmp ult i64 %246, %140, !dbg !1792
  br i1 %247, label %248, label %250, !dbg !1795

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1792
  store i8 63, i8* %249, align 1, !dbg !1792, !tbaa !578
  br label %250, !dbg !1792

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %251, metadata !1550, metadata !DIExpression()), !dbg !1602
  br label %456, !dbg !1796

252:                                              ; preds = %163
  br label %263, !dbg !1797

253:                                              ; preds = %163
  br label %263, !dbg !1798

254:                                              ; preds = %163
  br label %261, !dbg !1799

255:                                              ; preds = %163
  br label %261, !dbg !1800

256:                                              ; preds = %163
  br label %263, !dbg !1801

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1802

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1803

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1806

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1808

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1809
  call void @llvm.dbg.label(metadata !1596), !dbg !1810
  br i1 %128, label %263, label %638, !dbg !1811

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1809
  call void @llvm.dbg.label(metadata !1598), !dbg !1813
  br i1 %118, label %510, label %467, !dbg !1814

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1815

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1816, !tbaa !578
  %268 = icmp eq i8 %267, 0, !dbg !1818
  br i1 %268, label %269, label %456, !dbg !1819

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1820
  br i1 %270, label %271, label %456, !dbg !1822

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1570, metadata !DIExpression()), !dbg !1699
  br label %272, !dbg !1823

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1570, metadata !DIExpression()), !dbg !1699
  br i1 %126, label %274, label %456, !dbg !1824

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1826

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 1, metadata !1570, metadata !DIExpression()), !dbg !1699
  br i1 %126, label %276, label %456, !dbg !1827

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1828

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1831
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1833
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1833
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %282, metadata !1541, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %281, metadata !1551, metadata !DIExpression()), !dbg !1602
  %283 = icmp ult i64 %134, %282, !dbg !1834
  br i1 %283, label %284, label %286, !dbg !1837

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1834
  store i8 39, i8* %285, align 1, !dbg !1834, !tbaa !578
  br label %286, !dbg !1834

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %287, metadata !1550, metadata !DIExpression()), !dbg !1602
  %288 = icmp ult i64 %287, %282, !dbg !1838
  br i1 %288, label %289, label %291, !dbg !1841

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1838
  store i8 92, i8* %290, align 1, !dbg !1838, !tbaa !578
  br label %291, !dbg !1838

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %292, metadata !1550, metadata !DIExpression()), !dbg !1602
  %293 = icmp ult i64 %292, %282, !dbg !1842
  br i1 %293, label %294, label %296, !dbg !1845

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1842
  store i8 39, i8* %295, align 1, !dbg !1842, !tbaa !578
  br label %296, !dbg !1842

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %297, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1558, metadata !DIExpression()), !dbg !1602
  br label %456, !dbg !1846

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1847

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1572, metadata !DIExpression()), !dbg !1848
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1849
  %301 = load i16*, i16** %300, align 8, !dbg !1849, !tbaa !483
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1849
  %304 = load i16, i16* %303, align 2, !dbg !1849, !tbaa !603
  %305 = and i16 %304, 16384, !dbg !1849
  %306 = icmp ne i16 %305, 0, !dbg !1851
  call void @llvm.dbg.value(metadata i8 poison, metadata !1575, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %349, metadata !1572, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %312, metadata !1543, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i1 %350, metadata !1570, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1699
  br label %352, !dbg !1852

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1853
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1576, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1628, metadata !DIExpression()) #32, !dbg !1855
  call void @llvm.dbg.value(metadata i8* %32, metadata !1636, metadata !DIExpression()) #32, !dbg !1857
  call void @llvm.dbg.value(metadata i32 0, metadata !1639, metadata !DIExpression()) #32, !dbg !1857
  call void @llvm.dbg.value(metadata i64 8, metadata !1640, metadata !DIExpression()) #32, !dbg !1857
  store i64 0, i64* %14, align 8, !dbg !1859
  call void @llvm.dbg.value(metadata i64 0, metadata !1572, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 1, metadata !1575, metadata !DIExpression()), !dbg !1848
  %308 = icmp eq i64 %164, -1, !dbg !1860
  br i1 %308, label %309, label %311, !dbg !1862

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %310, metadata !1543, metadata !DIExpression()), !dbg !1602
  br label %311, !dbg !1864

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1699
  call void @llvm.dbg.value(metadata i64 %312, metadata !1543, metadata !DIExpression()), !dbg !1602
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1865
  %313 = sub i64 %312, %139, !dbg !1866
  call void @llvm.dbg.value(metadata i32* %16, metadata !1579, metadata !DIExpression(DW_OP_deref)), !dbg !1867
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %314, metadata !1583, metadata !DIExpression()), !dbg !1867
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1869

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1572, metadata !DIExpression()), !dbg !1848
  %316 = icmp ugt i64 %312, %139, !dbg !1870
  br i1 %316, label %319, label %317, !dbg !1872

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1575, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 0, metadata !1572, metadata !DIExpression()), !dbg !1848
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1873
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %349, metadata !1572, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %312, metadata !1543, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i1 %350, metadata !1570, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1699
  br label %352, !dbg !1852

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1575, metadata !DIExpression()), !dbg !1848
  br label %346, !dbg !1875

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1572, metadata !DIExpression()), !dbg !1848
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1877
  %323 = load i8, i8* %322, align 1, !dbg !1877, !tbaa !578
  %324 = icmp eq i8 %323, 0, !dbg !1872
  br i1 %324, label %348, label %325, !dbg !1878

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %326, metadata !1572, metadata !DIExpression()), !dbg !1848
  %327 = add i64 %326, %139, !dbg !1880
  %328 = icmp eq i64 %326, %313, !dbg !1870
  br i1 %328, label %348, label %319, !dbg !1872, !llvm.loop !1881

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1882
  call void @llvm.dbg.value(metadata i64 1, metadata !1584, metadata !DIExpression()), !dbg !1883
  br i1 %331, label %332, label %340, !dbg !1882

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1584, metadata !DIExpression()), !dbg !1883
  %334 = add i64 %333, %139, !dbg !1884
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1886
  %336 = load i8, i8* %335, align 1, !dbg !1886, !tbaa !578
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1887

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %338, metadata !1584, metadata !DIExpression()), !dbg !1883
  %339 = icmp eq i64 %338, %314, !dbg !1889
  br i1 %339, label %340, label %332, !dbg !1890, !llvm.loop !1891

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1893, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %341, metadata !1579, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %341, metadata !1895, metadata !DIExpression()) #32, !dbg !1903
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !1905
  %343 = icmp ne i32 %342, 0, !dbg !1906
  call void @llvm.dbg.value(metadata i8 poison, metadata !1575, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %314, metadata !1572, metadata !DIExpression()), !dbg !1848
  br label %348, !dbg !1907

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1575, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 0, metadata !1572, metadata !DIExpression()), !dbg !1848
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1873
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1874
  call void @llvm.dbg.label(metadata !1601), !dbg !1908
  %345 = select i1 %118, i32 4, i32 2, !dbg !1909
  br label %643, !dbg !1909

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1575, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 0, metadata !1572, metadata !DIExpression()), !dbg !1848
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1873
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %349, metadata !1572, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %312, metadata !1543, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i1 %350, metadata !1570, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1699
  br label %352, !dbg !1852

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1575, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 0, metadata !1572, metadata !DIExpression()), !dbg !1848
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1873
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %349, metadata !1572, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %312, metadata !1543, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i1 %350, metadata !1570, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1699
  %351 = icmp ugt i64 %349, 1, !dbg !1911
  br i1 %351, label %357, label %352, !dbg !1852

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1912
  br i1 %356, label %456, label %357, !dbg !1912

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1913
  call void @llvm.dbg.value(metadata i64 %361, metadata !1592, metadata !DIExpression()), !dbg !1914
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1915

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1602
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1691
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1916
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1699
  call void @llvm.dbg.value(metadata i8 %369, metadata !1571, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %368, metadata !1569, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 poison, metadata !1566, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %366, metadata !1564, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %364, metadata !1550, metadata !DIExpression()), !dbg !1602
  br i1 %362, label %414, label %370, !dbg !1917

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1922

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1569, metadata !DIExpression()), !dbg !1699
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1925
  br i1 %372, label %389, label %373, !dbg !1925

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1927
  br i1 %374, label %375, label %377, !dbg !1931

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1927
  store i8 39, i8* %376, align 1, !dbg !1927, !tbaa !578
  br label %377, !dbg !1927

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %378, metadata !1550, metadata !DIExpression()), !dbg !1602
  %379 = icmp ult i64 %378, %140, !dbg !1932
  br i1 %379, label %380, label %382, !dbg !1935

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1932
  store i8 36, i8* %381, align 1, !dbg !1932, !tbaa !578
  br label %382, !dbg !1932

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %383, metadata !1550, metadata !DIExpression()), !dbg !1602
  %384 = icmp ult i64 %383, %140, !dbg !1936
  br i1 %384, label %385, label %387, !dbg !1939

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1936
  store i8 39, i8* %386, align 1, !dbg !1936, !tbaa !578
  br label %387, !dbg !1936

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %388, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 1, metadata !1558, metadata !DIExpression()), !dbg !1602
  br label %389, !dbg !1940

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1602
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %390, metadata !1550, metadata !DIExpression()), !dbg !1602
  %392 = icmp ult i64 %390, %140, !dbg !1941
  br i1 %392, label %393, label %395, !dbg !1944

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1941
  store i8 92, i8* %394, align 1, !dbg !1941, !tbaa !578
  br label %395, !dbg !1941

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %396, metadata !1550, metadata !DIExpression()), !dbg !1602
  %397 = icmp ult i64 %396, %140, !dbg !1945
  br i1 %397, label %398, label %402, !dbg !1948

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1945
  %400 = or i8 %399, 48, !dbg !1945
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1945
  store i8 %400, i8* %401, align 1, !dbg !1945, !tbaa !578
  br label %402, !dbg !1945

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %403, metadata !1550, metadata !DIExpression()), !dbg !1602
  %404 = icmp ult i64 %403, %140, !dbg !1949
  br i1 %404, label %405, label %410, !dbg !1952

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1949
  %407 = and i8 %406, 7, !dbg !1949
  %408 = or i8 %407, 48, !dbg !1949
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1949
  store i8 %408, i8* %409, align 1, !dbg !1949, !tbaa !578
  br label %410, !dbg !1949

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %411, metadata !1550, metadata !DIExpression()), !dbg !1602
  %412 = and i8 %369, 7, !dbg !1953
  %413 = or i8 %412, 48, !dbg !1954
  call void @llvm.dbg.value(metadata i8 %413, metadata !1571, metadata !DIExpression()), !dbg !1699
  br label %421, !dbg !1955

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1956

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1957
  br i1 %416, label %417, label %419, !dbg !1962

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1957
  store i8 92, i8* %418, align 1, !dbg !1957, !tbaa !578
  br label %419, !dbg !1957

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1962
  call void @llvm.dbg.value(metadata i64 %420, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1566, metadata !DIExpression()), !dbg !1699
  br label %421, !dbg !1963

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1602
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1699
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1699
  call void @llvm.dbg.value(metadata i8 %426, metadata !1571, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %425, metadata !1569, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 poison, metadata !1566, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %422, metadata !1550, metadata !DIExpression()), !dbg !1602
  %427 = add i64 %366, 1, !dbg !1964
  %428 = icmp ugt i64 %361, %427, !dbg !1966
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1967

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1968
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1968
  br i1 %432, label %433, label %444, !dbg !1968

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1971
  br i1 %434, label %435, label %437, !dbg !1975

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1971
  store i8 39, i8* %436, align 1, !dbg !1971, !tbaa !578
  br label %437, !dbg !1971

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %438, metadata !1550, metadata !DIExpression()), !dbg !1602
  %439 = icmp ult i64 %438, %140, !dbg !1976
  br i1 %439, label %440, label %442, !dbg !1979

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1976
  store i8 39, i8* %441, align 1, !dbg !1976, !tbaa !578
  br label %442, !dbg !1976

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %443, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1558, metadata !DIExpression()), !dbg !1602
  br label %444, !dbg !1980

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1981
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %445, metadata !1550, metadata !DIExpression()), !dbg !1602
  %447 = icmp ult i64 %445, %140, !dbg !1982
  br i1 %447, label %448, label %450, !dbg !1985

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1982
  store i8 %426, i8* %449, align 1, !dbg !1982, !tbaa !578
  br label %450, !dbg !1982

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1985
  call void @llvm.dbg.value(metadata i64 %451, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %427, metadata !1564, metadata !DIExpression()), !dbg !1691
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1986
  %453 = load i8, i8* %452, align 1, !dbg !1986, !tbaa !578
  call void @llvm.dbg.value(metadata i8 %453, metadata !1571, metadata !DIExpression()), !dbg !1699
  br label %363, !dbg !1987, !llvm.loop !1988

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1571, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i1 %358, metadata !1570, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %425, metadata !1569, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 poison, metadata !1566, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %366, metadata !1564, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %422, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %360, metadata !1543, metadata !DIExpression()), !dbg !1602
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1991
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1602
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1606
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1691
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1699
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1541, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %465, metadata !1571, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 poison, metadata !1570, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 poison, metadata !1569, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 poison, metadata !1566, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %462, metadata !1564, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %459, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %458, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %457, metadata !1543, metadata !DIExpression()), !dbg !1602
  br i1 %121, label %478, label %467, !dbg !1992

467:                                              ; preds = %259, %215, %263, %456
  %468 = phi i64 [ %466, %456 ], [ %140, %263 ], [ %140, %215 ], [ %140, %259 ]
  %469 = phi i8 [ %465, %456 ], [ %167, %263 ], [ 0, %215 ], [ 92, %259 ]
  %470 = phi i1 [ %464, %456 ], [ false, %263 ], [ false, %215 ], [ false, %259 ]
  %471 = phi i1 [ %463, %456 ], [ false, %263 ], [ false, %215 ], [ false, %259 ]
  %472 = phi i64 [ %462, %456 ], [ %139, %263 ], [ %139, %215 ], [ %139, %259 ]
  %473 = phi i1 [ %461, %456 ], [ %138, %263 ], [ %138, %215 ], [ %138, %259 ]
  %474 = phi i1 [ %460, %456 ], [ %136, %263 ], [ %136, %215 ], [ %136, %259 ]
  %475 = phi i64 [ %459, %456 ], [ %135, %263 ], [ %135, %215 ], [ %135, %259 ]
  %476 = phi i64 [ %458, %456 ], [ %134, %263 ], [ %134, %215 ], [ %134, %259 ]
  %477 = phi i64 [ %457, %456 ], [ %164, %263 ], [ %164, %215 ], [ %164, %259 ]
  br i1 %131, label %479, label %499, !dbg !1994

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1995

479:                                              ; preds = %467, %478
  %480 = phi i64 [ %468, %467 ], [ %466, %478 ]
  %481 = phi i8 [ %469, %467 ], [ %465, %478 ]
  %482 = phi i1 [ %470, %467 ], [ %464, %478 ]
  %483 = phi i1 [ %471, %467 ], [ %463, %478 ]
  %484 = phi i64 [ %472, %467 ], [ %462, %478 ]
  %485 = phi i1 [ %473, %467 ], [ %461, %478 ]
  %486 = phi i1 [ %474, %467 ], [ %460, %478 ]
  %487 = phi i64 [ %475, %467 ], [ %459, %478 ]
  %488 = phi i64 [ %476, %467 ], [ %458, %478 ]
  %489 = phi i64 [ %477, %467 ], [ %457, %478 ]
  %490 = lshr i8 %481, 5, !dbg !1996
  %491 = zext i8 %490 to i64, !dbg !1996
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1997
  %493 = load i32, i32* %492, align 4, !dbg !1997, !tbaa !569
  %494 = and i8 %481, 31, !dbg !1998
  %495 = zext i8 %494 to i32, !dbg !1998
  %496 = shl nuw i32 1, %495, !dbg !1999
  %497 = and i32 %493, %496, !dbg !1999
  %498 = icmp eq i32 %497, 0, !dbg !1999
  br i1 %498, label %499, label %510, !dbg !2000

499:                                              ; preds = %194, %479, %478, %467
  %500 = phi i64 [ %480, %479 ], [ %466, %478 ], [ %468, %467 ], [ %140, %194 ]
  %501 = phi i8 [ %481, %479 ], [ %465, %478 ], [ %469, %467 ], [ 48, %194 ]
  %502 = phi i1 [ %482, %479 ], [ %464, %478 ], [ %470, %467 ], [ false, %194 ]
  %503 = phi i1 [ %483, %479 ], [ %463, %478 ], [ %471, %467 ], [ true, %194 ]
  %504 = phi i64 [ %484, %479 ], [ %462, %478 ], [ %472, %467 ], [ %139, %194 ]
  %505 = phi i1 [ %485, %479 ], [ %461, %478 ], [ %473, %467 ], [ %190, %194 ]
  %506 = phi i1 [ %486, %479 ], [ %460, %478 ], [ %474, %467 ], [ %136, %194 ]
  %507 = phi i64 [ %487, %479 ], [ %459, %478 ], [ %475, %467 ], [ %135, %194 ]
  %508 = phi i64 [ %488, %479 ], [ %458, %478 ], [ %476, %467 ], [ %195, %194 ]
  %509 = phi i64 [ %489, %479 ], [ %457, %478 ], [ %477, %467 ], [ %164, %194 ]
  br i1 %165, label %510, label %546, !dbg !2001

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1991
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1602
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1606
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2002
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1699
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1541, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %518, metadata !1571, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 poison, metadata !1570, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %516, metadata !1564, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %513, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %512, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %511, metadata !1543, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.label(metadata !1599), !dbg !2003
  br i1 %119, label %638, label %520, !dbg !2004

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1569, metadata !DIExpression()), !dbg !1699
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2006
  br i1 %521, label %538, label %522, !dbg !2006

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2008
  br i1 %523, label %524, label %526, !dbg !2012

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2008
  store i8 39, i8* %525, align 1, !dbg !2008, !tbaa !578
  br label %526, !dbg !2008

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %527, metadata !1550, metadata !DIExpression()), !dbg !1602
  %528 = icmp ult i64 %527, %519, !dbg !2013
  br i1 %528, label %529, label %531, !dbg !2016

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2013
  store i8 36, i8* %530, align 1, !dbg !2013, !tbaa !578
  br label %531, !dbg !2013

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %532, metadata !1550, metadata !DIExpression()), !dbg !1602
  %533 = icmp ult i64 %532, %519, !dbg !2017
  br i1 %533, label %534, label %536, !dbg !2020

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2017
  store i8 39, i8* %535, align 1, !dbg !2017, !tbaa !578
  br label %536, !dbg !2017

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %537, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 1, metadata !1558, metadata !DIExpression()), !dbg !1602
  br label %538, !dbg !2021

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1699
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %539, metadata !1550, metadata !DIExpression()), !dbg !1602
  %541 = icmp ult i64 %539, %519, !dbg !2022
  br i1 %541, label %542, label %544, !dbg !2025

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2022
  store i8 92, i8* %543, align 1, !dbg !2022, !tbaa !578
  br label %544, !dbg !2022

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2025
  call void @llvm.dbg.value(metadata i64 %556, metadata !1541, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %555, metadata !1571, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 poison, metadata !1570, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 poison, metadata !1569, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %552, metadata !1564, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %549, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %548, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %547, metadata !1543, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.label(metadata !1600), !dbg !2026
  br label %570, !dbg !2027

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1991
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1602
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1606
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2002
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2030
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1541, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %555, metadata !1571, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 poison, metadata !1570, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 poison, metadata !1569, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %552, metadata !1564, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %549, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %548, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %547, metadata !1543, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.label(metadata !1600), !dbg !2026
  %557 = xor i1 %551, true, !dbg !2027
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2027
  br i1 %558, label %570, label %559, !dbg !2027

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2031
  br i1 %560, label %561, label %563, !dbg !2035

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2031
  store i8 39, i8* %562, align 1, !dbg !2031, !tbaa !578
  br label %563, !dbg !2031

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %564, metadata !1550, metadata !DIExpression()), !dbg !1602
  %565 = icmp ult i64 %564, %556, !dbg !2036
  br i1 %565, label %566, label %568, !dbg !2039

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2036
  store i8 39, i8* %567, align 1, !dbg !2036, !tbaa !578
  br label %568, !dbg !2036

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %569, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1558, metadata !DIExpression()), !dbg !1602
  br label %570, !dbg !2040

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1699
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %578, metadata !1550, metadata !DIExpression()), !dbg !1602
  %580 = icmp ult i64 %578, %571, !dbg !2041
  br i1 %580, label %581, label %583, !dbg !2044

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2041
  store i8 %572, i8* %582, align 1, !dbg !2041, !tbaa !578
  br label %583, !dbg !2041

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %584, metadata !1550, metadata !DIExpression()), !dbg !1602
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2045
  call void @llvm.dbg.value(metadata i8 poison, metadata !1557, metadata !DIExpression()), !dbg !1602
  br label %586, !dbg !2046

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1991
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1602
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1606
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2002
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1541, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %593, metadata !1564, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1557, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %589, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %588, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %587, metadata !1543, metadata !DIExpression()), !dbg !1602
  %595 = add i64 %593, 1, !dbg !2047
  call void @llvm.dbg.value(metadata i64 %595, metadata !1564, metadata !DIExpression()), !dbg !1691
  br label %132, !dbg !2048, !llvm.loop !2049

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1541, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1557, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 undef, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 undef, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 undef, metadata !1543, metadata !DIExpression()), !dbg !1602
  %597 = icmp eq i64 %134, 0, !dbg !2051
  %598 = and i1 %126, %597, !dbg !2053
  %599 = and i1 %598, %119, !dbg !2053
  br i1 %599, label %638, label %600, !dbg !2053

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2054
  %602 = or i1 %119, %601, !dbg !2054
  %603 = xor i1 %136, true, !dbg !2054
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2054
  br i1 %604, label %612, label %605, !dbg !2054

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2056

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2058
  br label %653, !dbg !2060

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2061
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2063
  br i1 %611, label %36, label %612, !dbg !2063

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2064
  %615 = or i1 %614, %613, !dbg !2066
  br i1 %615, label %631, label %616, !dbg !2066

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %134, metadata !1550, metadata !DIExpression()), !dbg !1602
  %617 = load i8, i8* %116, align 1, !dbg !2067, !tbaa !578
  %618 = icmp eq i8 %617, 0, !dbg !2070
  br i1 %618, label %631, label %619, !dbg !2070

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %622, metadata !1550, metadata !DIExpression()), !dbg !1602
  %623 = icmp ult i64 %622, %140, !dbg !2071
  br i1 %623, label %624, label %626, !dbg !2074

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2071
  store i8 %620, i8* %625, align 1, !dbg !2071, !tbaa !578
  br label %626, !dbg !2071

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %627, metadata !1550, metadata !DIExpression()), !dbg !1602
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2075
  call void @llvm.dbg.value(metadata i8* %628, metadata !1552, metadata !DIExpression()), !dbg !1602
  %629 = load i8, i8* %628, align 1, !dbg !2067, !tbaa !578
  %630 = icmp eq i8 %629, 0, !dbg !2070
  br i1 %630, label %631, label %619, !dbg !2070, !llvm.loop !2076

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1678
  call void @llvm.dbg.value(metadata i64 %632, metadata !1550, metadata !DIExpression()), !dbg !1602
  %633 = icmp ult i64 %632, %140, !dbg !2078
  br i1 %633, label %634, label %653, !dbg !2080

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2081
  store i8 0, i8* %635, align 1, !dbg !2082, !tbaa !578
  br label %653, !dbg !2081

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1601), !dbg !1908
  %637 = icmp eq i32 %112, 2, !dbg !2083
  br i1 %637, label %643, label %647, !dbg !1909

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1601), !dbg !1908
  %641 = icmp eq i32 %112, 2, !dbg !2083
  %642 = select i1 %118, i32 4, i32 2, !dbg !1909
  br i1 %641, label %643, label %647, !dbg !1909

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1909

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1544, metadata !DIExpression()), !dbg !1602
  %651 = and i32 %5, -3, !dbg !2084
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2085
  br label %653, !dbg !2086

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2087
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !2088 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2090 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2094, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i64 %1, metadata !2095, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2096, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8* %0, metadata !2098, metadata !DIExpression()) #32, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %1, metadata !2103, metadata !DIExpression()) #32, !dbg !2111
  call void @llvm.dbg.value(metadata i64* null, metadata !2104, metadata !DIExpression()) #32, !dbg !2111
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2105, metadata !DIExpression()) #32, !dbg !2111
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2113
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2113
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2106, metadata !DIExpression()) #32, !dbg !2111
  %6 = tail call i32* @__errno_location() #35, !dbg !2114
  %7 = load i32, i32* %6, align 4, !dbg !2114, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %7, metadata !2107, metadata !DIExpression()) #32, !dbg !2111
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2115
  %9 = load i32, i32* %8, align 4, !dbg !2115, !tbaa !1484
  %10 = or i32 %9, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i32 %10, metadata !2108, metadata !DIExpression()) #32, !dbg !2111
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2117
  %12 = load i32, i32* %11, align 8, !dbg !2117, !tbaa !1433
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2118
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2119
  %15 = load i8*, i8** %14, align 8, !dbg !2119, !tbaa !1506
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2120
  %17 = load i8*, i8** %16, align 8, !dbg !2120, !tbaa !1509
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !2121
  %19 = add i64 %18, 1, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %19, metadata !2109, metadata !DIExpression()) #32, !dbg !2111
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !2123
  call void @llvm.dbg.value(metadata i8* %20, metadata !2110, metadata !DIExpression()) #32, !dbg !2111
  %21 = load i32, i32* %11, align 8, !dbg !2124, !tbaa !1433
  %22 = load i8*, i8** %14, align 8, !dbg !2125, !tbaa !1506
  %23 = load i8*, i8** %16, align 8, !dbg !2126, !tbaa !1509
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !2127
  store i32 %7, i32* %6, align 4, !dbg !2128, !tbaa !569
  ret i8* %20, !dbg !2129
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2099 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2098, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %1, metadata !2103, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64* %2, metadata !2104, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2105, metadata !DIExpression()), !dbg !2130
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2131
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2106, metadata !DIExpression()), !dbg !2130
  %7 = tail call i32* @__errno_location() #35, !dbg !2132
  %8 = load i32, i32* %7, align 4, !dbg !2132, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %8, metadata !2107, metadata !DIExpression()), !dbg !2130
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2133
  %10 = load i32, i32* %9, align 4, !dbg !2133, !tbaa !1484
  %11 = icmp eq i64* %2, null, !dbg !2134
  %12 = zext i1 %11 to i32, !dbg !2134
  %13 = or i32 %10, %12, !dbg !2135
  call void @llvm.dbg.value(metadata i32 %13, metadata !2108, metadata !DIExpression()), !dbg !2130
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2136
  %15 = load i32, i32* %14, align 8, !dbg !2136, !tbaa !1433
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2137
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2138
  %18 = load i8*, i8** %17, align 8, !dbg !2138, !tbaa !1506
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2139
  %20 = load i8*, i8** %19, align 8, !dbg !2139, !tbaa !1509
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2140
  %22 = add i64 %21, 1, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %22, metadata !2109, metadata !DIExpression()), !dbg !2130
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !2142
  call void @llvm.dbg.value(metadata i8* %23, metadata !2110, metadata !DIExpression()), !dbg !2130
  %24 = load i32, i32* %14, align 8, !dbg !2143, !tbaa !1433
  %25 = load i8*, i8** %17, align 8, !dbg !2144, !tbaa !1506
  %26 = load i8*, i8** %19, align 8, !dbg !2145, !tbaa !1509
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2146
  store i32 %8, i32* %7, align 4, !dbg !2147, !tbaa !569
  br i1 %11, label %29, label %28, !dbg !2148

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2149, !tbaa !2151
  br label %29, !dbg !2152

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2153
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2154 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2159, !tbaa !483
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2156, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i32 1, metadata !2157, metadata !DIExpression()), !dbg !2161
  %2 = load i32, i32* @nslots, align 4, !tbaa !569
  call void @llvm.dbg.value(metadata i32 1, metadata !2157, metadata !DIExpression()), !dbg !2161
  %3 = icmp sgt i32 %2, 1, !dbg !2162
  br i1 %3, label %4, label %6, !dbg !2164

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2162
  br label %10, !dbg !2164

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2165
  %8 = load i8*, i8** %7, align 8, !dbg !2165, !tbaa !2167
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2169
  br i1 %9, label %17, label %16, !dbg !2170

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2157, metadata !DIExpression()), !dbg !2161
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2171
  %13 = load i8*, i8** %12, align 8, !dbg !2171, !tbaa !2167
  tail call void @free(i8* noundef %13) #32, !dbg !2172
  %14 = add nuw nsw i64 %11, 1, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %14, metadata !2157, metadata !DIExpression()), !dbg !2161
  %15 = icmp eq i64 %14, %5, !dbg !2162
  br i1 %15, label %6, label %10, !dbg !2164, !llvm.loop !2174

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !2176
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2178, !tbaa !2179
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2180, !tbaa !2167
  br label %17, !dbg !2181

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2182
  br i1 %18, label %21, label %19, !dbg !2184

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2185
  tail call void @free(i8* noundef %20) #32, !dbg !2187
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2188, !tbaa !483
  br label %21, !dbg !2189

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2190, !tbaa !569
  ret void, !dbg !2191
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2192 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2194, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* %1, metadata !2195, metadata !DIExpression()), !dbg !2196
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2197
  ret i8* %3, !dbg !2198
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2199 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2203, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8* %1, metadata !2204, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i64 %2, metadata !2205, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2206, metadata !DIExpression()), !dbg !2219
  %6 = tail call i32* @__errno_location() #35, !dbg !2220
  %7 = load i32, i32* %6, align 4, !dbg !2220, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %7, metadata !2207, metadata !DIExpression()), !dbg !2219
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2221, !tbaa !483
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2208, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2209, metadata !DIExpression()), !dbg !2219
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2222
  br i1 %9, label %10, label %11, !dbg !2222

10:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2224
  unreachable, !dbg !2224

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2225, !tbaa !569
  %13 = icmp sgt i32 %12, %0, !dbg !2226
  br i1 %13, label %36, label %14, !dbg !2227

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2228
  call void @llvm.dbg.value(metadata i1 %15, metadata !2210, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2229
  %16 = bitcast i64* %5 to i8*, !dbg !2230
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !2230
  %17 = sext i32 %12 to i64, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %17, metadata !2213, metadata !DIExpression()), !dbg !2229
  store i64 %17, i64* %5, align 8, !dbg !2232, !tbaa !2151
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2233
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2233
  %20 = add nuw nsw i32 %0, 1, !dbg !2234
  %21 = sub i32 %20, %12, !dbg !2235
  %22 = sext i32 %21 to i64, !dbg !2236
  call void @llvm.dbg.value(metadata i64* %5, metadata !2213, metadata !DIExpression(DW_OP_deref)), !dbg !2229
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !2237
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2237
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2208, metadata !DIExpression()), !dbg !2219
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2238, !tbaa !483
  br i1 %15, label %25, label %26, !dbg !2239

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2240, !tbaa.struct !2242
  br label %26, !dbg !2243

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2244, !tbaa !569
  %28 = sext i32 %27 to i64, !dbg !2245
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2245
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2246
  %31 = load i64, i64* %5, align 8, !dbg !2247, !tbaa !2151
  call void @llvm.dbg.value(metadata i64 %31, metadata !2213, metadata !DIExpression()), !dbg !2229
  %32 = sub nsw i64 %31, %28, !dbg !2248
  %33 = shl i64 %32, 4, !dbg !2249
  call void @llvm.dbg.value(metadata i8* %30, metadata !1636, metadata !DIExpression()) #32, !dbg !2250
  call void @llvm.dbg.value(metadata i32 0, metadata !1639, metadata !DIExpression()) #32, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %33, metadata !1640, metadata !DIExpression()) #32, !dbg !2250
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !2252
  %34 = load i64, i64* %5, align 8, !dbg !2253, !tbaa !2151
  call void @llvm.dbg.value(metadata i64 %34, metadata !2213, metadata !DIExpression()), !dbg !2229
  %35 = trunc i64 %34 to i32, !dbg !2253
  store i32 %35, i32* @nslots, align 4, !dbg !2254, !tbaa !569
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !2255
  br label %36, !dbg !2256

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2219
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2208, metadata !DIExpression()), !dbg !2219
  %38 = zext i32 %0 to i64, !dbg !2257
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2258
  %40 = load i64, i64* %39, align 8, !dbg !2258, !tbaa !2179
  call void @llvm.dbg.value(metadata i64 %40, metadata !2214, metadata !DIExpression()), !dbg !2259
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2260
  %42 = load i8*, i8** %41, align 8, !dbg !2260, !tbaa !2167
  call void @llvm.dbg.value(metadata i8* %42, metadata !2216, metadata !DIExpression()), !dbg !2259
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2261
  %44 = load i32, i32* %43, align 4, !dbg !2261, !tbaa !1484
  %45 = or i32 %44, 1, !dbg !2262
  call void @llvm.dbg.value(metadata i32 %45, metadata !2217, metadata !DIExpression()), !dbg !2259
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2263
  %47 = load i32, i32* %46, align 8, !dbg !2263, !tbaa !1433
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2264
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2265
  %50 = load i8*, i8** %49, align 8, !dbg !2265, !tbaa !1506
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2266
  %52 = load i8*, i8** %51, align 8, !dbg !2266, !tbaa !1509
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %53, metadata !2218, metadata !DIExpression()), !dbg !2259
  %54 = icmp ugt i64 %40, %53, !dbg !2268
  br i1 %54, label %65, label %55, !dbg !2270

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %56, metadata !2214, metadata !DIExpression()), !dbg !2259
  store i64 %56, i64* %39, align 8, !dbg !2273, !tbaa !2179
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2274
  br i1 %57, label %59, label %58, !dbg !2276

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !2277
  br label %59, !dbg !2277

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !2278
  call void @llvm.dbg.value(metadata i8* %60, metadata !2216, metadata !DIExpression()), !dbg !2259
  store i8* %60, i8** %41, align 8, !dbg !2279, !tbaa !2167
  %61 = load i32, i32* %46, align 8, !dbg !2280, !tbaa !1433
  %62 = load i8*, i8** %49, align 8, !dbg !2281, !tbaa !1506
  %63 = load i8*, i8** %51, align 8, !dbg !2282, !tbaa !1509
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2283
  br label %65, !dbg !2284

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2259
  call void @llvm.dbg.value(metadata i8* %66, metadata !2216, metadata !DIExpression()), !dbg !2259
  store i32 %7, i32* %6, align 4, !dbg !2285, !tbaa !569
  ret i8* %66, !dbg !2286
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2287 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2291, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8* %1, metadata !2292, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i64 %2, metadata !2293, metadata !DIExpression()), !dbg !2294
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2295
  ret i8* %4, !dbg !2296
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2297 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2299, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i32 0, metadata !2194, metadata !DIExpression()) #32, !dbg !2301
  call void @llvm.dbg.value(metadata i8* %0, metadata !2195, metadata !DIExpression()) #32, !dbg !2301
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2303
  ret i8* %2, !dbg !2304
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2305 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2309, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %1, metadata !2310, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 0, metadata !2291, metadata !DIExpression()) #32, !dbg !2312
  call void @llvm.dbg.value(metadata i8* %0, metadata !2292, metadata !DIExpression()) #32, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %1, metadata !2293, metadata !DIExpression()) #32, !dbg !2312
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2314
  ret i8* %3, !dbg !2315
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2316 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2320, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i32 %1, metadata !2321, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8* %2, metadata !2322, metadata !DIExpression()), !dbg !2324
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2325
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2325
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2323, metadata !DIExpression()), !dbg !2326
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2327), !dbg !2330
  call void @llvm.dbg.value(metadata i32 %1, metadata !2331, metadata !DIExpression()) #32, !dbg !2337
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2336, metadata !DIExpression()) #32, !dbg !2339
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2339, !alias.scope !2327
  %6 = icmp eq i32 %1, 10, !dbg !2340
  br i1 %6, label %7, label %8, !dbg !2342

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2343, !noalias !2327
  unreachable, !dbg !2343

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2344
  store i32 %1, i32* %9, align 8, !dbg !2345, !tbaa !1433, !alias.scope !2327
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2346
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2347
  ret i8* %10, !dbg !2348
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2349 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2353, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i32 %1, metadata !2354, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8* %2, metadata !2355, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i64 %3, metadata !2356, metadata !DIExpression()), !dbg !2358
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2359
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2359
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2357, metadata !DIExpression()), !dbg !2360
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2361), !dbg !2364
  call void @llvm.dbg.value(metadata i32 %1, metadata !2331, metadata !DIExpression()) #32, !dbg !2365
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2336, metadata !DIExpression()) #32, !dbg !2367
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !2367, !alias.scope !2361
  %7 = icmp eq i32 %1, 10, !dbg !2368
  br i1 %7, label %8, label %9, !dbg !2369

8:                                                ; preds = %4
  tail call void @abort() #34, !dbg !2370, !noalias !2361
  unreachable, !dbg !2370

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2371
  store i32 %1, i32* %10, align 8, !dbg !2372, !tbaa !1433, !alias.scope !2361
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2373
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2374
  ret i8* %11, !dbg !2375
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2376 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2380, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8* %1, metadata !2381, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i32 0, metadata !2320, metadata !DIExpression()) #32, !dbg !2383
  call void @llvm.dbg.value(metadata i32 %0, metadata !2321, metadata !DIExpression()) #32, !dbg !2383
  call void @llvm.dbg.value(metadata i8* %1, metadata !2322, metadata !DIExpression()) #32, !dbg !2383
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2385
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2385
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2323, metadata !DIExpression()) #32, !dbg !2386
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2387) #32, !dbg !2390
  call void @llvm.dbg.value(metadata i32 %0, metadata !2331, metadata !DIExpression()) #32, !dbg !2391
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2336, metadata !DIExpression()) #32, !dbg !2393
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !2393, !alias.scope !2387
  %5 = icmp eq i32 %0, 10, !dbg !2394
  br i1 %5, label %6, label %7, !dbg !2395

6:                                                ; preds = %2
  tail call void @abort() #34, !dbg !2396, !noalias !2387
  unreachable, !dbg !2396

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2397
  store i32 %0, i32* %8, align 8, !dbg !2398, !tbaa !1433, !alias.scope !2387
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2399
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2400
  ret i8* %9, !dbg !2401
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2402 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2406, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8* %1, metadata !2407, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %2, metadata !2408, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 0, metadata !2353, metadata !DIExpression()) #32, !dbg !2410
  call void @llvm.dbg.value(metadata i32 %0, metadata !2354, metadata !DIExpression()) #32, !dbg !2410
  call void @llvm.dbg.value(metadata i8* %1, metadata !2355, metadata !DIExpression()) #32, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %2, metadata !2356, metadata !DIExpression()) #32, !dbg !2410
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2412
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2412
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2357, metadata !DIExpression()) #32, !dbg !2413
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2414) #32, !dbg !2417
  call void @llvm.dbg.value(metadata i32 %0, metadata !2331, metadata !DIExpression()) #32, !dbg !2418
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2336, metadata !DIExpression()) #32, !dbg !2420
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2420, !alias.scope !2414
  %6 = icmp eq i32 %0, 10, !dbg !2421
  br i1 %6, label %7, label %8, !dbg !2422

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2423, !noalias !2414
  unreachable, !dbg !2423

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2424
  store i32 %0, i32* %9, align 8, !dbg !2425, !tbaa !1433, !alias.scope !2414
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2426
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2427
  ret i8* %10, !dbg !2428
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2429 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2433, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i64 %1, metadata !2434, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 %2, metadata !2435, metadata !DIExpression()), !dbg !2437
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2438
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2438
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2436, metadata !DIExpression()), !dbg !2439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2440, !tbaa.struct !2441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1451, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8 %2, metadata !1452, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i32 1, metadata !1453, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8 %2, metadata !1454, metadata !DIExpression()), !dbg !2442
  %6 = lshr i8 %2, 5, !dbg !2444
  %7 = zext i8 %6 to i64, !dbg !2444
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2445
  call void @llvm.dbg.value(metadata i32* %8, metadata !1455, metadata !DIExpression()), !dbg !2442
  %9 = and i8 %2, 31, !dbg !2446
  %10 = zext i8 %9 to i32, !dbg !2446
  call void @llvm.dbg.value(metadata i32 %10, metadata !1457, metadata !DIExpression()), !dbg !2442
  %11 = load i32, i32* %8, align 4, !dbg !2447, !tbaa !569
  %12 = lshr i32 %11, %10, !dbg !2448
  %13 = and i32 %12, 1, !dbg !2449
  call void @llvm.dbg.value(metadata i32 %13, metadata !1458, metadata !DIExpression()), !dbg !2442
  %14 = xor i32 %13, 1, !dbg !2450
  %15 = shl i32 %14, %10, !dbg !2451
  %16 = xor i32 %15, %11, !dbg !2452
  store i32 %16, i32* %8, align 4, !dbg !2452, !tbaa !569
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2453
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2454
  ret i8* %17, !dbg !2455
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2456 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2460, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8 %1, metadata !2461, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8* %0, metadata !2433, metadata !DIExpression()) #32, !dbg !2463
  call void @llvm.dbg.value(metadata i64 -1, metadata !2434, metadata !DIExpression()) #32, !dbg !2463
  call void @llvm.dbg.value(metadata i8 %1, metadata !2435, metadata !DIExpression()) #32, !dbg !2463
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2465
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2465
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2436, metadata !DIExpression()) #32, !dbg !2466
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2467, !tbaa.struct !2441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1451, metadata !DIExpression()) #32, !dbg !2468
  call void @llvm.dbg.value(metadata i8 %1, metadata !1452, metadata !DIExpression()) #32, !dbg !2468
  call void @llvm.dbg.value(metadata i32 1, metadata !1453, metadata !DIExpression()) #32, !dbg !2468
  call void @llvm.dbg.value(metadata i8 %1, metadata !1454, metadata !DIExpression()) #32, !dbg !2468
  %5 = lshr i8 %1, 5, !dbg !2470
  %6 = zext i8 %5 to i64, !dbg !2470
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2471
  call void @llvm.dbg.value(metadata i32* %7, metadata !1455, metadata !DIExpression()) #32, !dbg !2468
  %8 = and i8 %1, 31, !dbg !2472
  %9 = zext i8 %8 to i32, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %9, metadata !1457, metadata !DIExpression()) #32, !dbg !2468
  %10 = load i32, i32* %7, align 4, !dbg !2473, !tbaa !569
  %11 = lshr i32 %10, %9, !dbg !2474
  %12 = and i32 %11, 1, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %12, metadata !1458, metadata !DIExpression()) #32, !dbg !2468
  %13 = xor i32 %12, 1, !dbg !2476
  %14 = shl i32 %13, %9, !dbg !2477
  %15 = xor i32 %14, %10, !dbg !2478
  store i32 %15, i32* %7, align 4, !dbg !2478, !tbaa !569
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2479
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2480
  ret i8* %16, !dbg !2481
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2482 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2484, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8* %0, metadata !2460, metadata !DIExpression()) #32, !dbg !2486
  call void @llvm.dbg.value(metadata i8 58, metadata !2461, metadata !DIExpression()) #32, !dbg !2486
  call void @llvm.dbg.value(metadata i8* %0, metadata !2433, metadata !DIExpression()) #32, !dbg !2488
  call void @llvm.dbg.value(metadata i64 -1, metadata !2434, metadata !DIExpression()) #32, !dbg !2488
  call void @llvm.dbg.value(metadata i8 58, metadata !2435, metadata !DIExpression()) #32, !dbg !2488
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2490
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2490
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2436, metadata !DIExpression()) #32, !dbg !2491
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2492, !tbaa.struct !2441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1451, metadata !DIExpression()) #32, !dbg !2493
  call void @llvm.dbg.value(metadata i8 58, metadata !1452, metadata !DIExpression()) #32, !dbg !2493
  call void @llvm.dbg.value(metadata i32 1, metadata !1453, metadata !DIExpression()) #32, !dbg !2493
  call void @llvm.dbg.value(metadata i8 58, metadata !1454, metadata !DIExpression()) #32, !dbg !2493
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2495
  call void @llvm.dbg.value(metadata i32* %4, metadata !1455, metadata !DIExpression()) #32, !dbg !2493
  call void @llvm.dbg.value(metadata i32 26, metadata !1457, metadata !DIExpression()) #32, !dbg !2493
  %5 = load i32, i32* %4, align 4, !dbg !2496, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %5, metadata !1458, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2493
  %6 = or i32 %5, 67108864, !dbg !2497
  store i32 %6, i32* %4, align 4, !dbg !2497, !tbaa !569
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2498
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2499
  ret i8* %7, !dbg !2500
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2501 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2503, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i64 %1, metadata !2504, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8* %0, metadata !2433, metadata !DIExpression()) #32, !dbg !2506
  call void @llvm.dbg.value(metadata i64 %1, metadata !2434, metadata !DIExpression()) #32, !dbg !2506
  call void @llvm.dbg.value(metadata i8 58, metadata !2435, metadata !DIExpression()) #32, !dbg !2506
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2508
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2508
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2436, metadata !DIExpression()) #32, !dbg !2509
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2510, !tbaa.struct !2441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1451, metadata !DIExpression()) #32, !dbg !2511
  call void @llvm.dbg.value(metadata i8 58, metadata !1452, metadata !DIExpression()) #32, !dbg !2511
  call void @llvm.dbg.value(metadata i32 1, metadata !1453, metadata !DIExpression()) #32, !dbg !2511
  call void @llvm.dbg.value(metadata i8 58, metadata !1454, metadata !DIExpression()) #32, !dbg !2511
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2513
  call void @llvm.dbg.value(metadata i32* %5, metadata !1455, metadata !DIExpression()) #32, !dbg !2511
  call void @llvm.dbg.value(metadata i32 26, metadata !1457, metadata !DIExpression()) #32, !dbg !2511
  %6 = load i32, i32* %5, align 4, !dbg !2514, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %6, metadata !1458, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2511
  %7 = or i32 %6, 67108864, !dbg !2515
  store i32 %7, i32* %5, align 4, !dbg !2515, !tbaa !569
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2516
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2517
  ret i8* %8, !dbg !2518
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2519 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2521, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %1, metadata !2522, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8* %2, metadata !2523, metadata !DIExpression()), !dbg !2525
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2526
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2526
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %1, metadata !2331, metadata !DIExpression()) #32, !dbg !2528
  call void @llvm.dbg.value(metadata i32 0, metadata !2336, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2528
  %6 = icmp eq i32 %1, 10, !dbg !2530
  br i1 %6, label %7, label %8, !dbg !2531

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2532, !noalias !2533
  unreachable, !dbg !2532

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2336, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2528
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2536
  store i32 %1, i32* %9, align 8, !dbg !2536, !tbaa.struct !2441
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2536
  %11 = bitcast i32* %10 to i8*, !dbg !2536
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2536
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1451, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 58, metadata !1452, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 1, metadata !1453, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 58, metadata !1454, metadata !DIExpression()), !dbg !2537
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2539
  call void @llvm.dbg.value(metadata i32* %12, metadata !1455, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 26, metadata !1457, metadata !DIExpression()), !dbg !2537
  %13 = load i32, i32* %12, align 4, !dbg !2540, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %13, metadata !1458, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2537
  %14 = or i32 %13, 67108864, !dbg !2541
  store i32 %14, i32* %12, align 4, !dbg !2541, !tbaa !569
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2542
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2543
  ret i8* %15, !dbg !2544
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2545 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2549, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8* %1, metadata !2550, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8* %2, metadata !2551, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8* %3, metadata !2552, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i32 %0, metadata !2554, metadata !DIExpression()) #32, !dbg !2564
  call void @llvm.dbg.value(metadata i8* %1, metadata !2559, metadata !DIExpression()) #32, !dbg !2564
  call void @llvm.dbg.value(metadata i8* %2, metadata !2560, metadata !DIExpression()) #32, !dbg !2564
  call void @llvm.dbg.value(metadata i8* %3, metadata !2561, metadata !DIExpression()) #32, !dbg !2564
  call void @llvm.dbg.value(metadata i64 -1, metadata !2562, metadata !DIExpression()) #32, !dbg !2564
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2566
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2566
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2563, metadata !DIExpression()) #32, !dbg !2567
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2568, !tbaa.struct !2441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1491, metadata !DIExpression()) #32, !dbg !2569
  call void @llvm.dbg.value(metadata i8* %1, metadata !1492, metadata !DIExpression()) #32, !dbg !2569
  call void @llvm.dbg.value(metadata i8* %2, metadata !1493, metadata !DIExpression()) #32, !dbg !2569
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1491, metadata !DIExpression()) #32, !dbg !2569
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2571
  store i32 10, i32* %7, align 8, !dbg !2572, !tbaa !1433
  %8 = icmp ne i8* %1, null, !dbg !2573
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2574
  br i1 %10, label %12, label %11, !dbg !2574

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2575
  unreachable, !dbg !2575

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2576
  store i8* %1, i8** %13, align 8, !dbg !2577, !tbaa !1506
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2578
  store i8* %2, i8** %14, align 8, !dbg !2579, !tbaa !1509
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2580
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2581
  ret i8* %15, !dbg !2582
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2555 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2554, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %1, metadata !2559, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %2, metadata !2560, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %3, metadata !2561, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i64 %4, metadata !2562, metadata !DIExpression()), !dbg !2583
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2584
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2584
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2563, metadata !DIExpression()), !dbg !2585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2586, !tbaa.struct !2441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1491, metadata !DIExpression()) #32, !dbg !2587
  call void @llvm.dbg.value(metadata i8* %1, metadata !1492, metadata !DIExpression()) #32, !dbg !2587
  call void @llvm.dbg.value(metadata i8* %2, metadata !1493, metadata !DIExpression()) #32, !dbg !2587
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1491, metadata !DIExpression()) #32, !dbg !2587
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2589
  store i32 10, i32* %8, align 8, !dbg !2590, !tbaa !1433
  %9 = icmp ne i8* %1, null, !dbg !2591
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2592
  br i1 %11, label %13, label %12, !dbg !2592

12:                                               ; preds = %5
  tail call void @abort() #34, !dbg !2593
  unreachable, !dbg !2593

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2594
  store i8* %1, i8** %14, align 8, !dbg !2595, !tbaa !1506
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2596
  store i8* %2, i8** %15, align 8, !dbg !2597, !tbaa !1509
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2598
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2599
  ret i8* %16, !dbg !2600
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2601 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2605, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8* %1, metadata !2606, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8* %2, metadata !2607, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 0, metadata !2549, metadata !DIExpression()) #32, !dbg !2609
  call void @llvm.dbg.value(metadata i8* %0, metadata !2550, metadata !DIExpression()) #32, !dbg !2609
  call void @llvm.dbg.value(metadata i8* %1, metadata !2551, metadata !DIExpression()) #32, !dbg !2609
  call void @llvm.dbg.value(metadata i8* %2, metadata !2552, metadata !DIExpression()) #32, !dbg !2609
  call void @llvm.dbg.value(metadata i32 0, metadata !2554, metadata !DIExpression()) #32, !dbg !2611
  call void @llvm.dbg.value(metadata i8* %0, metadata !2559, metadata !DIExpression()) #32, !dbg !2611
  call void @llvm.dbg.value(metadata i8* %1, metadata !2560, metadata !DIExpression()) #32, !dbg !2611
  call void @llvm.dbg.value(metadata i8* %2, metadata !2561, metadata !DIExpression()) #32, !dbg !2611
  call void @llvm.dbg.value(metadata i64 -1, metadata !2562, metadata !DIExpression()) #32, !dbg !2611
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2613
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2613
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2563, metadata !DIExpression()) #32, !dbg !2614
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2615, !tbaa.struct !2441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1491, metadata !DIExpression()) #32, !dbg !2616
  call void @llvm.dbg.value(metadata i8* %0, metadata !1492, metadata !DIExpression()) #32, !dbg !2616
  call void @llvm.dbg.value(metadata i8* %1, metadata !1493, metadata !DIExpression()) #32, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1491, metadata !DIExpression()) #32, !dbg !2616
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2618
  store i32 10, i32* %6, align 8, !dbg !2619, !tbaa !1433
  %7 = icmp ne i8* %0, null, !dbg !2620
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2621
  br i1 %9, label %11, label %10, !dbg !2621

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !2622
  unreachable, !dbg !2622

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2623
  store i8* %0, i8** %12, align 8, !dbg !2624, !tbaa !1506
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2625
  store i8* %1, i8** %13, align 8, !dbg !2626, !tbaa !1509
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2627
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2628
  ret i8* %14, !dbg !2629
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2630 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2634, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8* %1, metadata !2635, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8* %2, metadata !2636, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i64 %3, metadata !2637, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32 0, metadata !2554, metadata !DIExpression()) #32, !dbg !2639
  call void @llvm.dbg.value(metadata i8* %0, metadata !2559, metadata !DIExpression()) #32, !dbg !2639
  call void @llvm.dbg.value(metadata i8* %1, metadata !2560, metadata !DIExpression()) #32, !dbg !2639
  call void @llvm.dbg.value(metadata i8* %2, metadata !2561, metadata !DIExpression()) #32, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %3, metadata !2562, metadata !DIExpression()) #32, !dbg !2639
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2641
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2641
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2563, metadata !DIExpression()) #32, !dbg !2642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2643, !tbaa.struct !2441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1491, metadata !DIExpression()) #32, !dbg !2644
  call void @llvm.dbg.value(metadata i8* %0, metadata !1492, metadata !DIExpression()) #32, !dbg !2644
  call void @llvm.dbg.value(metadata i8* %1, metadata !1493, metadata !DIExpression()) #32, !dbg !2644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1491, metadata !DIExpression()) #32, !dbg !2644
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2646
  store i32 10, i32* %7, align 8, !dbg !2647, !tbaa !1433
  %8 = icmp ne i8* %0, null, !dbg !2648
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2649
  br i1 %10, label %12, label %11, !dbg !2649

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2650
  unreachable, !dbg !2650

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2651
  store i8* %0, i8** %13, align 8, !dbg !2652, !tbaa !1506
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2653
  store i8* %1, i8** %14, align 8, !dbg !2654, !tbaa !1509
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2655
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2656
  ret i8* %15, !dbg !2657
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2658 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2662, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8* %1, metadata !2663, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 %2, metadata !2664, metadata !DIExpression()), !dbg !2665
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2666
  ret i8* %4, !dbg !2667
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2668 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2672, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i64 %1, metadata !2673, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 0, metadata !2662, metadata !DIExpression()) #32, !dbg !2675
  call void @llvm.dbg.value(metadata i8* %0, metadata !2663, metadata !DIExpression()) #32, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %1, metadata !2664, metadata !DIExpression()) #32, !dbg !2675
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2677
  ret i8* %3, !dbg !2678
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2679 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2683, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8* %1, metadata !2684, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i32 %0, metadata !2662, metadata !DIExpression()) #32, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %1, metadata !2663, metadata !DIExpression()) #32, !dbg !2686
  call void @llvm.dbg.value(metadata i64 -1, metadata !2664, metadata !DIExpression()) #32, !dbg !2686
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2688
  ret i8* %3, !dbg !2689
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2690 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2694, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 0, metadata !2683, metadata !DIExpression()) #32, !dbg !2696
  call void @llvm.dbg.value(metadata i8* %0, metadata !2684, metadata !DIExpression()) #32, !dbg !2696
  call void @llvm.dbg.value(metadata i32 0, metadata !2662, metadata !DIExpression()) #32, !dbg !2698
  call void @llvm.dbg.value(metadata i8* %0, metadata !2663, metadata !DIExpression()) #32, !dbg !2698
  call void @llvm.dbg.value(metadata i64 -1, metadata !2664, metadata !DIExpression()) #32, !dbg !2698
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2700
  ret i8* %2, !dbg !2701
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2702 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2741, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8* %1, metadata !2742, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8* %2, metadata !2743, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8* %3, metadata !2744, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8** %4, metadata !2745, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i64 %5, metadata !2746, metadata !DIExpression()), !dbg !2747
  %7 = icmp eq i8* %1, null, !dbg !2748
  br i1 %7, label %10, label %8, !dbg !2750

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2751
  br label %12, !dbg !2751

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.97, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2752
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.99, i64 0, i64 0), i32 noundef 5) #32, !dbg !2753
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2753
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.100, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2754
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.101, i64 0, i64 0), i32 noundef 5) #32, !dbg !2755
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.102, i64 0, i64 0)) #32, !dbg !2755
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.100, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2756
  switch i64 %5, label %127 [
    i64 0, label %147
    i64 1, label %19
    i64 2, label %23
    i64 3, label %29
    i64 4, label %37
    i64 5, label %47
    i64 6, label %59
    i64 7, label %73
    i64 8, label %89
    i64 9, label %107
  ], !dbg !2757

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.103, i64 0, i64 0), i32 noundef 5) #32, !dbg !2758
  %21 = load i8*, i8** %4, align 8, !dbg !2758, !tbaa !483
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2758
  br label %147, !dbg !2760

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.104, i64 0, i64 0), i32 noundef 5) #32, !dbg !2761
  %25 = load i8*, i8** %4, align 8, !dbg !2761, !tbaa !483
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2761
  %27 = load i8*, i8** %26, align 8, !dbg !2761, !tbaa !483
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2761
  br label %147, !dbg !2762

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.105, i64 0, i64 0), i32 noundef 5) #32, !dbg !2763
  %31 = load i8*, i8** %4, align 8, !dbg !2763, !tbaa !483
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2763
  %33 = load i8*, i8** %32, align 8, !dbg !2763, !tbaa !483
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2763
  %35 = load i8*, i8** %34, align 8, !dbg !2763, !tbaa !483
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2763
  br label %147, !dbg !2764

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.106, i64 0, i64 0), i32 noundef 5) #32, !dbg !2765
  %39 = load i8*, i8** %4, align 8, !dbg !2765, !tbaa !483
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2765
  %41 = load i8*, i8** %40, align 8, !dbg !2765, !tbaa !483
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2765
  %43 = load i8*, i8** %42, align 8, !dbg !2765, !tbaa !483
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2765
  %45 = load i8*, i8** %44, align 8, !dbg !2765, !tbaa !483
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2765
  br label %147, !dbg !2766

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.107, i64 0, i64 0), i32 noundef 5) #32, !dbg !2767
  %49 = load i8*, i8** %4, align 8, !dbg !2767, !tbaa !483
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2767
  %51 = load i8*, i8** %50, align 8, !dbg !2767, !tbaa !483
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2767
  %53 = load i8*, i8** %52, align 8, !dbg !2767, !tbaa !483
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2767
  %55 = load i8*, i8** %54, align 8, !dbg !2767, !tbaa !483
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2767
  %57 = load i8*, i8** %56, align 8, !dbg !2767, !tbaa !483
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2767
  br label %147, !dbg !2768

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.108, i64 0, i64 0), i32 noundef 5) #32, !dbg !2769
  %61 = load i8*, i8** %4, align 8, !dbg !2769, !tbaa !483
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2769
  %63 = load i8*, i8** %62, align 8, !dbg !2769, !tbaa !483
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2769
  %65 = load i8*, i8** %64, align 8, !dbg !2769, !tbaa !483
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2769
  %67 = load i8*, i8** %66, align 8, !dbg !2769, !tbaa !483
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2769
  %69 = load i8*, i8** %68, align 8, !dbg !2769, !tbaa !483
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2769
  %71 = load i8*, i8** %70, align 8, !dbg !2769, !tbaa !483
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2769
  br label %147, !dbg !2770

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.109, i64 0, i64 0), i32 noundef 5) #32, !dbg !2771
  %75 = load i8*, i8** %4, align 8, !dbg !2771, !tbaa !483
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2771
  %77 = load i8*, i8** %76, align 8, !dbg !2771, !tbaa !483
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2771
  %79 = load i8*, i8** %78, align 8, !dbg !2771, !tbaa !483
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2771
  %81 = load i8*, i8** %80, align 8, !dbg !2771, !tbaa !483
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2771
  %83 = load i8*, i8** %82, align 8, !dbg !2771, !tbaa !483
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2771
  %85 = load i8*, i8** %84, align 8, !dbg !2771, !tbaa !483
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2771
  %87 = load i8*, i8** %86, align 8, !dbg !2771, !tbaa !483
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2771
  br label %147, !dbg !2772

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.110, i64 0, i64 0), i32 noundef 5) #32, !dbg !2773
  %91 = load i8*, i8** %4, align 8, !dbg !2773, !tbaa !483
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2773
  %93 = load i8*, i8** %92, align 8, !dbg !2773, !tbaa !483
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2773
  %95 = load i8*, i8** %94, align 8, !dbg !2773, !tbaa !483
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2773
  %97 = load i8*, i8** %96, align 8, !dbg !2773, !tbaa !483
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2773
  %99 = load i8*, i8** %98, align 8, !dbg !2773, !tbaa !483
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2773
  %101 = load i8*, i8** %100, align 8, !dbg !2773, !tbaa !483
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2773
  %103 = load i8*, i8** %102, align 8, !dbg !2773, !tbaa !483
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2773
  %105 = load i8*, i8** %104, align 8, !dbg !2773, !tbaa !483
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2773
  br label %147, !dbg !2774

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.111, i64 0, i64 0), i32 noundef 5) #32, !dbg !2775
  %109 = load i8*, i8** %4, align 8, !dbg !2775, !tbaa !483
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2775
  %111 = load i8*, i8** %110, align 8, !dbg !2775, !tbaa !483
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2775
  %113 = load i8*, i8** %112, align 8, !dbg !2775, !tbaa !483
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2775
  %115 = load i8*, i8** %114, align 8, !dbg !2775, !tbaa !483
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2775
  %117 = load i8*, i8** %116, align 8, !dbg !2775, !tbaa !483
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2775
  %119 = load i8*, i8** %118, align 8, !dbg !2775, !tbaa !483
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2775
  %121 = load i8*, i8** %120, align 8, !dbg !2775, !tbaa !483
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2775
  %123 = load i8*, i8** %122, align 8, !dbg !2775, !tbaa !483
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2775
  %125 = load i8*, i8** %124, align 8, !dbg !2775, !tbaa !483
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2775
  br label %147, !dbg !2776

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.112, i64 0, i64 0), i32 noundef 5) #32, !dbg !2777
  %129 = load i8*, i8** %4, align 8, !dbg !2777, !tbaa !483
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2777
  %131 = load i8*, i8** %130, align 8, !dbg !2777, !tbaa !483
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2777
  %133 = load i8*, i8** %132, align 8, !dbg !2777, !tbaa !483
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2777
  %135 = load i8*, i8** %134, align 8, !dbg !2777, !tbaa !483
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2777
  %137 = load i8*, i8** %136, align 8, !dbg !2777, !tbaa !483
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2777
  %139 = load i8*, i8** %138, align 8, !dbg !2777, !tbaa !483
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2777
  %141 = load i8*, i8** %140, align 8, !dbg !2777, !tbaa !483
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2777
  %143 = load i8*, i8** %142, align 8, !dbg !2777, !tbaa !483
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2777
  %145 = load i8*, i8** %144, align 8, !dbg !2777, !tbaa !483
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2777
  br label %147, !dbg !2778

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2779
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2780 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2784, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8* %1, metadata !2785, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8* %2, metadata !2786, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8* %3, metadata !2787, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8** %4, metadata !2788, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i64 0, metadata !2789, metadata !DIExpression()), !dbg !2790
  br label %6, !dbg !2791

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2793
  call void @llvm.dbg.value(metadata i64 %7, metadata !2789, metadata !DIExpression()), !dbg !2790
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2794
  %9 = load i8*, i8** %8, align 8, !dbg !2794, !tbaa !483
  %10 = icmp eq i8* %9, null, !dbg !2796
  %11 = add i64 %7, 1, !dbg !2797
  call void @llvm.dbg.value(metadata i64 %11, metadata !2789, metadata !DIExpression()), !dbg !2790
  br i1 %10, label %12, label %6, !dbg !2796, !llvm.loop !2798

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2800
  ret void, !dbg !2801
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2802 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2817, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8* %1, metadata !2818, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8* %2, metadata !2819, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8* %3, metadata !2820, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2821, metadata !DIExpression()), !dbg !2826
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2827
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2827
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2823, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i64 0, metadata !2822, metadata !DIExpression()), !dbg !2825
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  %11 = load i32, i32* %8, align 8, !dbg !2829
  %12 = icmp sgt i32 %11, -1, !dbg !2829
  call void @llvm.dbg.value(metadata i64 0, metadata !2822, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 0, metadata !2822, metadata !DIExpression()), !dbg !2825
  br i1 %12, label %13, label %70

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2829
  %15 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !2829
  store i8* %15, i8** %10, align 8, !dbg !2829
  %16 = bitcast i8* %14 to i8**, !dbg !2829
  %17 = load i8*, i8** %16, align 8, !dbg !2829
  %18 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2832
  store i8* %17, i8** %18, align 8, !dbg !2833, !tbaa !483
  %19 = icmp eq i8* %17, null, !dbg !2834
  br i1 %19, label %265, label %20, !dbg !2835

20:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 1, metadata !2822, metadata !DIExpression()), !dbg !2825
  %21 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !2829
  store i8* %21, i8** %10, align 8, !dbg !2829
  %22 = bitcast i8* %15 to i8**, !dbg !2829
  %23 = load i8*, i8** %22, align 8, !dbg !2829
  %24 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2832
  store i8* %23, i8** %24, align 8, !dbg !2833, !tbaa !483
  %25 = icmp eq i8* %23, null, !dbg !2834
  br i1 %25, label %265, label %26, !dbg !2835

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 2, metadata !2822, metadata !DIExpression()), !dbg !2825
  %27 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !2829
  store i8* %27, i8** %10, align 8, !dbg !2829
  %28 = bitcast i8* %21 to i8**, !dbg !2829
  %29 = load i8*, i8** %28, align 8, !dbg !2829
  %30 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2832
  store i8* %29, i8** %30, align 8, !dbg !2833, !tbaa !483
  %31 = icmp eq i8* %29, null, !dbg !2834
  br i1 %31, label %265, label %32, !dbg !2835

32:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 3, metadata !2822, metadata !DIExpression()), !dbg !2825
  %33 = getelementptr inbounds i8, i8* %14, i64 32, !dbg !2829
  store i8* %33, i8** %10, align 8, !dbg !2829
  %34 = bitcast i8* %27 to i8**, !dbg !2829
  %35 = load i8*, i8** %34, align 8, !dbg !2829
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2832
  store i8* %35, i8** %36, align 8, !dbg !2833, !tbaa !483
  %37 = icmp eq i8* %35, null, !dbg !2834
  br i1 %37, label %265, label %38, !dbg !2835

38:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 4, metadata !2822, metadata !DIExpression()), !dbg !2825
  %39 = getelementptr inbounds i8, i8* %14, i64 40, !dbg !2829
  store i8* %39, i8** %10, align 8, !dbg !2829
  %40 = bitcast i8* %33 to i8**, !dbg !2829
  %41 = load i8*, i8** %40, align 8, !dbg !2829
  %42 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2832
  store i8* %41, i8** %42, align 8, !dbg !2833, !tbaa !483
  %43 = icmp eq i8* %41, null, !dbg !2834
  br i1 %43, label %265, label %44, !dbg !2835

44:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 5, metadata !2822, metadata !DIExpression()), !dbg !2825
  %45 = getelementptr inbounds i8, i8* %14, i64 48, !dbg !2829
  store i8* %45, i8** %10, align 8, !dbg !2829
  %46 = bitcast i8* %39 to i8**, !dbg !2829
  %47 = load i8*, i8** %46, align 8, !dbg !2829
  %48 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2832
  store i8* %47, i8** %48, align 8, !dbg !2833, !tbaa !483
  %49 = icmp eq i8* %47, null, !dbg !2834
  br i1 %49, label %265, label %50, !dbg !2835

50:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 6, metadata !2822, metadata !DIExpression()), !dbg !2825
  %51 = getelementptr inbounds i8, i8* %14, i64 56, !dbg !2829
  store i8* %51, i8** %10, align 8, !dbg !2829
  %52 = bitcast i8* %45 to i8**, !dbg !2829
  %53 = load i8*, i8** %52, align 8, !dbg !2829
  %54 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2832
  store i8* %53, i8** %54, align 8, !dbg !2833, !tbaa !483
  %55 = icmp eq i8* %53, null, !dbg !2834
  br i1 %55, label %265, label %56, !dbg !2835

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 7, metadata !2822, metadata !DIExpression()), !dbg !2825
  %57 = getelementptr inbounds i8, i8* %14, i64 64, !dbg !2829
  store i8* %57, i8** %10, align 8, !dbg !2829
  %58 = bitcast i8* %51 to i8**, !dbg !2829
  %59 = load i8*, i8** %58, align 8, !dbg !2829
  %60 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2832
  store i8* %59, i8** %60, align 8, !dbg !2833, !tbaa !483
  %61 = icmp eq i8* %59, null, !dbg !2834
  br i1 %61, label %265, label %62, !dbg !2835

62:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 8, metadata !2822, metadata !DIExpression()), !dbg !2825
  %63 = getelementptr inbounds i8, i8* %14, i64 72, !dbg !2829
  store i8* %63, i8** %10, align 8, !dbg !2829
  %64 = bitcast i8* %57 to i8**, !dbg !2829
  %65 = load i8*, i8** %64, align 8, !dbg !2829
  %66 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2832
  store i8* %65, i8** %66, align 8, !dbg !2833, !tbaa !483
  %67 = icmp eq i8* %65, null, !dbg !2834
  br i1 %67, label %265, label %68, !dbg !2835

68:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i64 9, metadata !2822, metadata !DIExpression()), !dbg !2825
  %69 = getelementptr inbounds i8, i8* %14, i64 80, !dbg !2829
  store i8* %69, i8** %10, align 8, !dbg !2829
  br label %258, !dbg !2835

70:                                               ; preds = %5
  %71 = add nsw i32 %11, 8, !dbg !2829
  store i32 %71, i32* %8, align 8, !dbg !2829
  %72 = icmp ult i32 %11, -7, !dbg !2829
  br i1 %72, label %73, label %77, !dbg !2829

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8, !dbg !2829
  %75 = sext i32 %11 to i64, !dbg !2829
  %76 = getelementptr inbounds i8, i8* %74, i64 %75, !dbg !2829
  br label %80, !dbg !2829

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8, !dbg !2829
  %79 = getelementptr inbounds i8, i8* %78, i64 8, !dbg !2829
  store i8* %79, i8** %10, align 8, !dbg !2829
  br label %80, !dbg !2829

80:                                               ; preds = %77, %73
  %81 = phi i8* [ %76, %73 ], [ %78, %77 ]
  %82 = bitcast i8* %81 to i8**, !dbg !2829
  %83 = load i8*, i8** %82, align 8, !dbg !2829
  %84 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2832
  store i8* %83, i8** %84, align 8, !dbg !2833, !tbaa !483
  %85 = icmp eq i8* %83, null, !dbg !2834
  br i1 %85, label %265, label %86, !dbg !2835

86:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i64 1, metadata !2822, metadata !DIExpression()), !dbg !2825
  %87 = icmp sgt i32 %11, -9, !dbg !2829
  br i1 %87, label %95, label %88, !dbg !2829

88:                                               ; preds = %86
  %89 = add nsw i32 %11, 16, !dbg !2829
  store i32 %89, i32* %8, align 8, !dbg !2829
  %90 = icmp ult i32 %71, -7, !dbg !2829
  br i1 %90, label %91, label %95, !dbg !2829

91:                                               ; preds = %88
  %92 = load i8*, i8** %9, align 8, !dbg !2829
  %93 = sext i32 %71 to i64, !dbg !2829
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !2829
  br label %99, !dbg !2829

95:                                               ; preds = %88, %86
  %96 = phi i32 [ %89, %88 ], [ %71, %86 ]
  %97 = load i8*, i8** %10, align 8, !dbg !2829
  %98 = getelementptr inbounds i8, i8* %97, i64 8, !dbg !2829
  store i8* %98, i8** %10, align 8, !dbg !2829
  br label %99, !dbg !2829

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %89, %91 ], [ %96, %95 ]
  %101 = phi i8* [ %94, %91 ], [ %97, %95 ]
  %102 = bitcast i8* %101 to i8**, !dbg !2829
  %103 = load i8*, i8** %102, align 8, !dbg !2829
  %104 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2832
  store i8* %103, i8** %104, align 8, !dbg !2833, !tbaa !483
  %105 = icmp eq i8* %103, null, !dbg !2834
  br i1 %105, label %265, label %106, !dbg !2835

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i64 2, metadata !2822, metadata !DIExpression()), !dbg !2825
  %107 = icmp sgt i32 %100, -1, !dbg !2829
  br i1 %107, label %115, label %108, !dbg !2829

108:                                              ; preds = %106
  %109 = add nsw i32 %100, 8, !dbg !2829
  store i32 %109, i32* %8, align 8, !dbg !2829
  %110 = icmp ult i32 %100, -7, !dbg !2829
  br i1 %110, label %111, label %115, !dbg !2829

111:                                              ; preds = %108
  %112 = load i8*, i8** %9, align 8, !dbg !2829
  %113 = sext i32 %100 to i64, !dbg !2829
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !2829
  br label %119, !dbg !2829

115:                                              ; preds = %108, %106
  %116 = phi i32 [ %109, %108 ], [ %100, %106 ]
  %117 = load i8*, i8** %10, align 8, !dbg !2829
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !2829
  store i8* %118, i8** %10, align 8, !dbg !2829
  br label %119, !dbg !2829

119:                                              ; preds = %115, %111
  %120 = phi i32 [ %109, %111 ], [ %116, %115 ]
  %121 = phi i8* [ %114, %111 ], [ %117, %115 ]
  %122 = bitcast i8* %121 to i8**, !dbg !2829
  %123 = load i8*, i8** %122, align 8, !dbg !2829
  %124 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2832
  store i8* %123, i8** %124, align 8, !dbg !2833, !tbaa !483
  %125 = icmp eq i8* %123, null, !dbg !2834
  br i1 %125, label %265, label %126, !dbg !2835

126:                                              ; preds = %119
  call void @llvm.dbg.value(metadata i64 3, metadata !2822, metadata !DIExpression()), !dbg !2825
  %127 = icmp sgt i32 %120, -1, !dbg !2829
  br i1 %127, label %135, label %128, !dbg !2829

128:                                              ; preds = %126
  %129 = add nsw i32 %120, 8, !dbg !2829
  store i32 %129, i32* %8, align 8, !dbg !2829
  %130 = icmp ult i32 %120, -7, !dbg !2829
  br i1 %130, label %131, label %135, !dbg !2829

131:                                              ; preds = %128
  %132 = load i8*, i8** %9, align 8, !dbg !2829
  %133 = sext i32 %120 to i64, !dbg !2829
  %134 = getelementptr inbounds i8, i8* %132, i64 %133, !dbg !2829
  br label %139, !dbg !2829

135:                                              ; preds = %128, %126
  %136 = phi i32 [ %129, %128 ], [ %120, %126 ]
  %137 = load i8*, i8** %10, align 8, !dbg !2829
  %138 = getelementptr inbounds i8, i8* %137, i64 8, !dbg !2829
  store i8* %138, i8** %10, align 8, !dbg !2829
  br label %139, !dbg !2829

139:                                              ; preds = %135, %131
  %140 = phi i32 [ %129, %131 ], [ %136, %135 ]
  %141 = phi i8* [ %134, %131 ], [ %137, %135 ]
  %142 = bitcast i8* %141 to i8**, !dbg !2829
  %143 = load i8*, i8** %142, align 8, !dbg !2829
  %144 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2832
  store i8* %143, i8** %144, align 8, !dbg !2833, !tbaa !483
  %145 = icmp eq i8* %143, null, !dbg !2834
  br i1 %145, label %265, label %146, !dbg !2835

146:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i64 4, metadata !2822, metadata !DIExpression()), !dbg !2825
  %147 = icmp sgt i32 %140, -1, !dbg !2829
  br i1 %147, label %155, label %148, !dbg !2829

148:                                              ; preds = %146
  %149 = add nsw i32 %140, 8, !dbg !2829
  store i32 %149, i32* %8, align 8, !dbg !2829
  %150 = icmp ult i32 %140, -7, !dbg !2829
  br i1 %150, label %151, label %155, !dbg !2829

151:                                              ; preds = %148
  %152 = load i8*, i8** %9, align 8, !dbg !2829
  %153 = sext i32 %140 to i64, !dbg !2829
  %154 = getelementptr inbounds i8, i8* %152, i64 %153, !dbg !2829
  br label %159, !dbg !2829

155:                                              ; preds = %148, %146
  %156 = phi i32 [ %149, %148 ], [ %140, %146 ]
  %157 = load i8*, i8** %10, align 8, !dbg !2829
  %158 = getelementptr inbounds i8, i8* %157, i64 8, !dbg !2829
  store i8* %158, i8** %10, align 8, !dbg !2829
  br label %159, !dbg !2829

159:                                              ; preds = %155, %151
  %160 = phi i32 [ %149, %151 ], [ %156, %155 ]
  %161 = phi i8* [ %154, %151 ], [ %157, %155 ]
  %162 = bitcast i8* %161 to i8**, !dbg !2829
  %163 = load i8*, i8** %162, align 8, !dbg !2829
  %164 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2832
  store i8* %163, i8** %164, align 8, !dbg !2833, !tbaa !483
  %165 = icmp eq i8* %163, null, !dbg !2834
  br i1 %165, label %265, label %166, !dbg !2835

166:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i64 5, metadata !2822, metadata !DIExpression()), !dbg !2825
  %167 = icmp sgt i32 %160, -1, !dbg !2829
  br i1 %167, label %175, label %168, !dbg !2829

168:                                              ; preds = %166
  %169 = add nsw i32 %160, 8, !dbg !2829
  store i32 %169, i32* %8, align 8, !dbg !2829
  %170 = icmp ult i32 %160, -7, !dbg !2829
  br i1 %170, label %171, label %175, !dbg !2829

171:                                              ; preds = %168
  %172 = load i8*, i8** %9, align 8, !dbg !2829
  %173 = sext i32 %160 to i64, !dbg !2829
  %174 = getelementptr inbounds i8, i8* %172, i64 %173, !dbg !2829
  br label %179, !dbg !2829

175:                                              ; preds = %168, %166
  %176 = phi i32 [ %169, %168 ], [ %160, %166 ]
  %177 = load i8*, i8** %10, align 8, !dbg !2829
  %178 = getelementptr inbounds i8, i8* %177, i64 8, !dbg !2829
  store i8* %178, i8** %10, align 8, !dbg !2829
  br label %179, !dbg !2829

179:                                              ; preds = %175, %171
  %180 = phi i32 [ %169, %171 ], [ %176, %175 ]
  %181 = phi i8* [ %174, %171 ], [ %177, %175 ]
  %182 = bitcast i8* %181 to i8**, !dbg !2829
  %183 = load i8*, i8** %182, align 8, !dbg !2829
  %184 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2832
  store i8* %183, i8** %184, align 8, !dbg !2833, !tbaa !483
  %185 = icmp eq i8* %183, null, !dbg !2834
  br i1 %185, label %265, label %186, !dbg !2835

186:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i64 6, metadata !2822, metadata !DIExpression()), !dbg !2825
  %187 = icmp sgt i32 %180, -1, !dbg !2829
  br i1 %187, label %195, label %188, !dbg !2829

188:                                              ; preds = %186
  %189 = add nsw i32 %180, 8, !dbg !2829
  store i32 %189, i32* %8, align 8, !dbg !2829
  %190 = icmp ult i32 %180, -7, !dbg !2829
  br i1 %190, label %191, label %195, !dbg !2829

191:                                              ; preds = %188
  %192 = load i8*, i8** %9, align 8, !dbg !2829
  %193 = sext i32 %180 to i64, !dbg !2829
  %194 = getelementptr inbounds i8, i8* %192, i64 %193, !dbg !2829
  br label %199, !dbg !2829

195:                                              ; preds = %188, %186
  %196 = phi i32 [ %189, %188 ], [ %180, %186 ]
  %197 = load i8*, i8** %10, align 8, !dbg !2829
  %198 = getelementptr inbounds i8, i8* %197, i64 8, !dbg !2829
  store i8* %198, i8** %10, align 8, !dbg !2829
  br label %199, !dbg !2829

199:                                              ; preds = %195, %191
  %200 = phi i32 [ %189, %191 ], [ %196, %195 ]
  %201 = phi i8* [ %194, %191 ], [ %197, %195 ]
  %202 = bitcast i8* %201 to i8**, !dbg !2829
  %203 = load i8*, i8** %202, align 8, !dbg !2829
  %204 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2832
  store i8* %203, i8** %204, align 8, !dbg !2833, !tbaa !483
  %205 = icmp eq i8* %203, null, !dbg !2834
  br i1 %205, label %265, label %206, !dbg !2835

206:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i64 7, metadata !2822, metadata !DIExpression()), !dbg !2825
  %207 = icmp sgt i32 %200, -1, !dbg !2829
  br i1 %207, label %215, label %208, !dbg !2829

208:                                              ; preds = %206
  %209 = add nsw i32 %200, 8, !dbg !2829
  store i32 %209, i32* %8, align 8, !dbg !2829
  %210 = icmp ult i32 %200, -7, !dbg !2829
  br i1 %210, label %211, label %215, !dbg !2829

211:                                              ; preds = %208
  %212 = load i8*, i8** %9, align 8, !dbg !2829
  %213 = sext i32 %200 to i64, !dbg !2829
  %214 = getelementptr inbounds i8, i8* %212, i64 %213, !dbg !2829
  br label %219, !dbg !2829

215:                                              ; preds = %208, %206
  %216 = phi i32 [ %209, %208 ], [ %200, %206 ]
  %217 = load i8*, i8** %10, align 8, !dbg !2829
  %218 = getelementptr inbounds i8, i8* %217, i64 8, !dbg !2829
  store i8* %218, i8** %10, align 8, !dbg !2829
  br label %219, !dbg !2829

219:                                              ; preds = %215, %211
  %220 = phi i32 [ %209, %211 ], [ %216, %215 ]
  %221 = phi i8* [ %214, %211 ], [ %217, %215 ]
  %222 = bitcast i8* %221 to i8**, !dbg !2829
  %223 = load i8*, i8** %222, align 8, !dbg !2829
  %224 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2832
  store i8* %223, i8** %224, align 8, !dbg !2833, !tbaa !483
  %225 = icmp eq i8* %223, null, !dbg !2834
  br i1 %225, label %265, label %226, !dbg !2835

226:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i64 8, metadata !2822, metadata !DIExpression()), !dbg !2825
  %227 = icmp sgt i32 %220, -1, !dbg !2829
  br i1 %227, label %235, label %228, !dbg !2829

228:                                              ; preds = %226
  %229 = add nsw i32 %220, 8, !dbg !2829
  store i32 %229, i32* %8, align 8, !dbg !2829
  %230 = icmp ult i32 %220, -7, !dbg !2829
  br i1 %230, label %231, label %235, !dbg !2829

231:                                              ; preds = %228
  %232 = load i8*, i8** %9, align 8, !dbg !2829
  %233 = sext i32 %220 to i64, !dbg !2829
  %234 = getelementptr inbounds i8, i8* %232, i64 %233, !dbg !2829
  br label %239, !dbg !2829

235:                                              ; preds = %228, %226
  %236 = phi i32 [ %229, %228 ], [ %220, %226 ]
  %237 = load i8*, i8** %10, align 8, !dbg !2829
  %238 = getelementptr inbounds i8, i8* %237, i64 8, !dbg !2829
  store i8* %238, i8** %10, align 8, !dbg !2829
  br label %239, !dbg !2829

239:                                              ; preds = %235, %231
  %240 = phi i32 [ %229, %231 ], [ %236, %235 ]
  %241 = phi i8* [ %234, %231 ], [ %237, %235 ]
  %242 = bitcast i8* %241 to i8**, !dbg !2829
  %243 = load i8*, i8** %242, align 8, !dbg !2829
  %244 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2832
  store i8* %243, i8** %244, align 8, !dbg !2833, !tbaa !483
  %245 = icmp eq i8* %243, null, !dbg !2834
  br i1 %245, label %265, label %246, !dbg !2835

246:                                              ; preds = %239
  call void @llvm.dbg.value(metadata i64 9, metadata !2822, metadata !DIExpression()), !dbg !2825
  %247 = icmp sgt i32 %240, -1, !dbg !2829
  br i1 %247, label %255, label %248, !dbg !2829

248:                                              ; preds = %246
  %249 = add nsw i32 %240, 8, !dbg !2829
  store i32 %249, i32* %8, align 8, !dbg !2829
  %250 = icmp ult i32 %240, -7, !dbg !2829
  br i1 %250, label %251, label %255, !dbg !2829

251:                                              ; preds = %248
  %252 = load i8*, i8** %9, align 8, !dbg !2829
  %253 = sext i32 %240 to i64, !dbg !2829
  %254 = getelementptr inbounds i8, i8* %252, i64 %253, !dbg !2829
  br label %258, !dbg !2829

255:                                              ; preds = %248, %246
  %256 = load i8*, i8** %10, align 8, !dbg !2829
  %257 = getelementptr inbounds i8, i8* %256, i64 8, !dbg !2829
  store i8* %257, i8** %10, align 8, !dbg !2829
  br label %258, !dbg !2829

258:                                              ; preds = %251, %255, %68
  %259 = phi i8* [ %63, %68 ], [ %254, %251 ], [ %256, %255 ]
  %260 = bitcast i8* %259 to i8**, !dbg !2829
  %261 = load i8*, i8** %260, align 8, !dbg !2829
  %262 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2832
  store i8* %261, i8** %262, align 8, !dbg !2833, !tbaa !483
  %263 = icmp eq i8* %261, null, !dbg !2834
  %264 = select i1 %263, i64 9, i64 10, !dbg !2835
  br label %265, !dbg !2836

265:                                              ; preds = %258, %80, %99, %119, %139, %159, %179, %199, %219, %239, %13, %20, %26, %32, %38, %44, %50, %56, %62
  %266 = phi i64 [ 0, %13 ], [ 1, %20 ], [ 2, %26 ], [ 3, %32 ], [ 4, %38 ], [ 5, %44 ], [ 6, %50 ], [ 7, %56 ], [ 8, %62 ], [ 0, %80 ], [ 1, %99 ], [ 2, %119 ], [ 3, %139 ], [ 4, %159 ], [ 5, %179 ], [ 6, %199 ], [ 7, %219 ], [ 8, %239 ], [ %264, %258 ]
  %267 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2836
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %267, i64 noundef %266), !dbg !2837
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2838
  ret void, !dbg !2838
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2839 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2843, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8* %1, metadata !2844, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8* %2, metadata !2845, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8* %3, metadata !2846, metadata !DIExpression()), !dbg !2848
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2849
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2849
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2847, metadata !DIExpression()), !dbg !2850
  call void @llvm.va_start(i8* nonnull %7), !dbg !2851
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2852
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2852
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2852, !tbaa.struct !1100
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2852
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2852
  call void @llvm.va_end(i8* nonnull %7), !dbg !2853
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2854
  ret void, !dbg !2854
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2855 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2856, !tbaa !483
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.100, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2856
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.117, i64 0, i64 0), i32 noundef 5) #32, !dbg !2857
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.118, i64 0, i64 0)) #32, !dbg !2857
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.119, i64 0, i64 0), i32 noundef 5) #32, !dbg !2858
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.121, i64 0, i64 0)) #32, !dbg !2858
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.122, i64 0, i64 0), i32 noundef 5) #32, !dbg !2859
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #32, !dbg !2859
  ret void, !dbg !2860
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2861 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %1, metadata !2867, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %2, metadata !2868, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %0, metadata !2870, metadata !DIExpression()) #32, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %1, metadata !2873, metadata !DIExpression()) #32, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %2, metadata !2874, metadata !DIExpression()) #32, !dbg !2875
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2877
  call void @llvm.dbg.value(metadata i8* %4, metadata !2878, metadata !DIExpression()) #32, !dbg !2883
  %5 = icmp eq i8* %4, null, !dbg !2885
  br i1 %5, label %6, label %7, !dbg !2887

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2888
  unreachable, !dbg !2888

7:                                                ; preds = %3
  ret i8* %4, !dbg !2889
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2871 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2870, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 %1, metadata !2873, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 %2, metadata !2874, metadata !DIExpression()), !dbg !2890
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2891
  call void @llvm.dbg.value(metadata i8* %4, metadata !2878, metadata !DIExpression()) #32, !dbg !2892
  %5 = icmp eq i8* %4, null, !dbg !2894
  br i1 %5, label %6, label %7, !dbg !2895

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2896
  unreachable, !dbg !2896

7:                                                ; preds = %3
  ret i8* %4, !dbg !2897
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2898 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2902, metadata !DIExpression()), !dbg !2903
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2904
  call void @llvm.dbg.value(metadata i8* %2, metadata !2878, metadata !DIExpression()) #32, !dbg !2905
  %3 = icmp eq i8* %2, null, !dbg !2907
  br i1 %3, label %4, label %5, !dbg !2908

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2909
  unreachable, !dbg !2909

5:                                                ; preds = %1
  ret i8* %2, !dbg !2910
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2911 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2915, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i64 %0, metadata !2917, metadata !DIExpression()) #32, !dbg !2921
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2923
  call void @llvm.dbg.value(metadata i8* %2, metadata !2878, metadata !DIExpression()) #32, !dbg !2924
  %3 = icmp eq i8* %2, null, !dbg !2926
  br i1 %3, label %4, label %5, !dbg !2927

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2928
  unreachable, !dbg !2928

5:                                                ; preds = %1
  ret i8* %2, !dbg !2929
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2930 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2934, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %0, metadata !2902, metadata !DIExpression()) #32, !dbg !2936
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2938
  call void @llvm.dbg.value(metadata i8* %2, metadata !2878, metadata !DIExpression()) #32, !dbg !2939
  %3 = icmp eq i8* %2, null, !dbg !2941
  br i1 %3, label %4, label %5, !dbg !2942

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2943
  unreachable, !dbg !2943

5:                                                ; preds = %1
  ret i8* %2, !dbg !2944
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2945 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2949, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i64 %1, metadata !2950, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i8* %0, metadata !2952, metadata !DIExpression()) #32, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %1, metadata !2956, metadata !DIExpression()) #32, !dbg !2957
  %3 = icmp eq i64 %1, 0, !dbg !2959
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2959
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2960
  call void @llvm.dbg.value(metadata i8* %5, metadata !2878, metadata !DIExpression()) #32, !dbg !2961
  %6 = icmp eq i8* %5, null, !dbg !2963
  br i1 %6, label %7, label %8, !dbg !2964

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2965
  unreachable, !dbg !2965

8:                                                ; preds = %2
  ret i8* %5, !dbg !2966
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2967 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2971, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %1, metadata !2972, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %0, metadata !2974, metadata !DIExpression()) #32, !dbg !2978
  call void @llvm.dbg.value(metadata i64 %1, metadata !2977, metadata !DIExpression()) #32, !dbg !2978
  call void @llvm.dbg.value(metadata i8* %0, metadata !2952, metadata !DIExpression()) #32, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %1, metadata !2956, metadata !DIExpression()) #32, !dbg !2980
  %3 = icmp eq i64 %1, 0, !dbg !2982
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2982
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2983
  call void @llvm.dbg.value(metadata i8* %5, metadata !2878, metadata !DIExpression()) #32, !dbg !2984
  %6 = icmp eq i8* %5, null, !dbg !2986
  br i1 %6, label %7, label %8, !dbg !2987

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2988
  unreachable, !dbg !2988

8:                                                ; preds = %2
  ret i8* %5, !dbg !2989
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2990 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2994, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %1, metadata !2995, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %2, metadata !2996, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8* %0, metadata !2998, metadata !DIExpression()) #32, !dbg !3003
  call void @llvm.dbg.value(metadata i64 %1, metadata !3001, metadata !DIExpression()) #32, !dbg !3003
  call void @llvm.dbg.value(metadata i64 %2, metadata !3002, metadata !DIExpression()) #32, !dbg !3003
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !3005
  call void @llvm.dbg.value(metadata i8* %4, metadata !2878, metadata !DIExpression()) #32, !dbg !3006
  %5 = icmp eq i8* %4, null, !dbg !3008
  br i1 %5, label %6, label %7, !dbg !3009

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !3010
  unreachable, !dbg !3010

7:                                                ; preds = %3
  ret i8* %4, !dbg !3011
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3012 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3016, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i64 %1, metadata !3017, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i8* null, metadata !2870, metadata !DIExpression()) #32, !dbg !3019
  call void @llvm.dbg.value(metadata i64 %0, metadata !2873, metadata !DIExpression()) #32, !dbg !3019
  call void @llvm.dbg.value(metadata i64 %1, metadata !2874, metadata !DIExpression()) #32, !dbg !3019
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !3021
  call void @llvm.dbg.value(metadata i8* %3, metadata !2878, metadata !DIExpression()) #32, !dbg !3022
  %4 = icmp eq i8* %3, null, !dbg !3024
  br i1 %4, label %5, label %6, !dbg !3025

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3026
  unreachable, !dbg !3026

6:                                                ; preds = %2
  ret i8* %3, !dbg !3027
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3028 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3032, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %1, metadata !3033, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i8* null, metadata !2994, metadata !DIExpression()) #32, !dbg !3035
  call void @llvm.dbg.value(metadata i64 %0, metadata !2995, metadata !DIExpression()) #32, !dbg !3035
  call void @llvm.dbg.value(metadata i64 %1, metadata !2996, metadata !DIExpression()) #32, !dbg !3035
  call void @llvm.dbg.value(metadata i8* null, metadata !2998, metadata !DIExpression()) #32, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %0, metadata !3001, metadata !DIExpression()) #32, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %1, metadata !3002, metadata !DIExpression()) #32, !dbg !3037
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !3039
  call void @llvm.dbg.value(metadata i8* %3, metadata !2878, metadata !DIExpression()) #32, !dbg !3040
  %4 = icmp eq i8* %3, null, !dbg !3042
  br i1 %4, label %5, label %6, !dbg !3043

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3044
  unreachable, !dbg !3044

6:                                                ; preds = %2
  ret i8* %3, !dbg !3045
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3046 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3050, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i64* %1, metadata !3051, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i8* %0, metadata !373, metadata !DIExpression()) #32, !dbg !3053
  call void @llvm.dbg.value(metadata i64* %1, metadata !374, metadata !DIExpression()) #32, !dbg !3053
  call void @llvm.dbg.value(metadata i64 1, metadata !375, metadata !DIExpression()) #32, !dbg !3053
  %3 = load i64, i64* %1, align 8, !dbg !3055, !tbaa !2151
  call void @llvm.dbg.value(metadata i64 %3, metadata !376, metadata !DIExpression()) #32, !dbg !3053
  %4 = icmp eq i8* %0, null, !dbg !3056
  br i1 %4, label %5, label %8, !dbg !3058

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3059
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3062
  br label %15, !dbg !3062

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3063
  %10 = add nuw i64 %9, 1, !dbg !3063
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !3063
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3063
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %13, metadata !376, metadata !DIExpression()) #32, !dbg !3053
  br i1 %12, label %14, label %15, !dbg !3066

14:                                               ; preds = %8
  tail call void @xalloc_die() #34, !dbg !3067
  unreachable, !dbg !3067

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3053
  call void @llvm.dbg.value(metadata i64 %16, metadata !376, metadata !DIExpression()) #32, !dbg !3053
  call void @llvm.dbg.value(metadata i8* %0, metadata !2870, metadata !DIExpression()) #32, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %16, metadata !2873, metadata !DIExpression()) #32, !dbg !3068
  call void @llvm.dbg.value(metadata i64 1, metadata !2874, metadata !DIExpression()) #32, !dbg !3068
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !3070
  call void @llvm.dbg.value(metadata i8* %17, metadata !2878, metadata !DIExpression()) #32, !dbg !3071
  %18 = icmp eq i8* %17, null, !dbg !3073
  br i1 %18, label %19, label %20, !dbg !3074

19:                                               ; preds = %15
  tail call void @xalloc_die() #34, !dbg !3075
  unreachable, !dbg !3075

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !373, metadata !DIExpression()) #32, !dbg !3053
  store i64 %16, i64* %1, align 8, !dbg !3076, !tbaa !2151
  ret i8* %17, !dbg !3077
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !368 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !373, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i64* %1, metadata !374, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i64 %2, metadata !375, metadata !DIExpression()), !dbg !3078
  %4 = load i64, i64* %1, align 8, !dbg !3079, !tbaa !2151
  call void @llvm.dbg.value(metadata i64 %4, metadata !376, metadata !DIExpression()), !dbg !3078
  %5 = icmp eq i8* %0, null, !dbg !3080
  br i1 %5, label %6, label %13, !dbg !3081

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3082
  br i1 %7, label %8, label %20, !dbg !3083

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3084
  call void @llvm.dbg.value(metadata i64 %9, metadata !376, metadata !DIExpression()), !dbg !3078
  %10 = icmp ugt i64 %2, 128, !dbg !3086
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3087
  call void @llvm.dbg.value(metadata i64 %12, metadata !376, metadata !DIExpression()), !dbg !3078
  br label %20, !dbg !3088

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3089
  %15 = add nuw i64 %14, 1, !dbg !3089
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3089
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3089
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3089
  call void @llvm.dbg.value(metadata i64 %18, metadata !376, metadata !DIExpression()), !dbg !3078
  br i1 %17, label %19, label %20, !dbg !3090

19:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !3091
  unreachable, !dbg !3091

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3078
  call void @llvm.dbg.value(metadata i64 %21, metadata !376, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8* %0, metadata !2870, metadata !DIExpression()) #32, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %21, metadata !2873, metadata !DIExpression()) #32, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %2, metadata !2874, metadata !DIExpression()) #32, !dbg !3092
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !3094
  call void @llvm.dbg.value(metadata i8* %22, metadata !2878, metadata !DIExpression()) #32, !dbg !3095
  %23 = icmp eq i8* %22, null, !dbg !3097
  br i1 %23, label %24, label %25, !dbg !3098

24:                                               ; preds = %20
  tail call void @xalloc_die() #34, !dbg !3099
  unreachable, !dbg !3099

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !373, metadata !DIExpression()), !dbg !3078
  store i64 %21, i64* %1, align 8, !dbg !3100, !tbaa !2151
  ret i8* %22, !dbg !3101
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !380 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !388, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64* %1, metadata !389, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64 %2, metadata !390, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64 %3, metadata !391, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64 %4, metadata !392, metadata !DIExpression()), !dbg !3102
  %6 = load i64, i64* %1, align 8, !dbg !3103, !tbaa !2151
  call void @llvm.dbg.value(metadata i64 %6, metadata !393, metadata !DIExpression()), !dbg !3102
  %7 = ashr i64 %6, 1, !dbg !3104
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3104
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3104
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %10, metadata !394, metadata !DIExpression()), !dbg !3102
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3106
  call void @llvm.dbg.value(metadata i64 %11, metadata !394, metadata !DIExpression()), !dbg !3102
  %12 = icmp sgt i64 %3, -1, !dbg !3107
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3109
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %15, metadata !394, metadata !DIExpression()), !dbg !3102
  %16 = icmp slt i64 %4, 0, !dbg !3110
  br i1 %16, label %17, label %30, !dbg !3110

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3110
  br i1 %18, label %19, label %24, !dbg !3110

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3110
  %21 = udiv i64 9223372036854775807, %20, !dbg !3110
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3110
  br i1 %23, label %46, label %43, !dbg !3110

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3110
  br i1 %25, label %43, label %26, !dbg !3110

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3110
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3110
  %29 = icmp ult i64 %28, %15, !dbg !3110
  br i1 %29, label %46, label %43, !dbg !3110

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3110
  br i1 %31, label %43, label %32, !dbg !3110

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3110
  br i1 %33, label %34, label %40, !dbg !3110

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3110
  br i1 %35, label %43, label %36, !dbg !3110

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3110
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3110
  %39 = icmp ult i64 %38, %4, !dbg !3110
  br i1 %39, label %46, label %43, !dbg !3110

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3110
  %42 = icmp ult i64 %41, %15, !dbg !3110
  br i1 %42, label %46, label %43, !dbg !3110

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !395, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3102
  %44 = mul i64 %15, %4, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %44, metadata !395, metadata !DIExpression()), !dbg !3102
  %45 = icmp slt i64 %44, 128, !dbg !3110
  br i1 %45, label %46, label %52, !dbg !3110

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !396, metadata !DIExpression()), !dbg !3102
  %48 = sdiv i64 %47, %4, !dbg !3111
  call void @llvm.dbg.value(metadata i64 %48, metadata !394, metadata !DIExpression()), !dbg !3102
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %51, metadata !395, metadata !DIExpression()), !dbg !3102
  br label %52, !dbg !3115

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3102
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3102
  call void @llvm.dbg.value(metadata i64 %54, metadata !395, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64 %53, metadata !394, metadata !DIExpression()), !dbg !3102
  %55 = icmp eq i8* %0, null, !dbg !3116
  br i1 %55, label %56, label %57, !dbg !3118

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3119, !tbaa !2151
  br label %57, !dbg !3120

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3121
  %59 = icmp slt i64 %58, %2, !dbg !3123
  br i1 %59, label %60, label %97, !dbg !3124

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3125
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3125
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3125
  call void @llvm.dbg.value(metadata i64 %63, metadata !394, metadata !DIExpression()), !dbg !3102
  br i1 %62, label %96, label %64, !dbg !3126

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3127
  br i1 %66, label %96, label %67, !dbg !3127

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3128

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3128
  br i1 %69, label %70, label %75, !dbg !3128

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3128
  %72 = udiv i64 9223372036854775807, %71, !dbg !3128
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3128
  br i1 %74, label %96, label %94, !dbg !3128

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3128
  br i1 %76, label %94, label %77, !dbg !3128

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3128
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3128
  %80 = icmp ult i64 %79, %63, !dbg !3128
  br i1 %80, label %96, label %94, !dbg !3128

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3128
  br i1 %82, label %94, label %83, !dbg !3128

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3128
  br i1 %84, label %85, label %91, !dbg !3128

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3128
  br i1 %86, label %94, label %87, !dbg !3128

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3128
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3128
  %90 = icmp ult i64 %89, %4, !dbg !3128
  br i1 %90, label %96, label %94, !dbg !3128

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3128
  %93 = icmp ult i64 %92, %63, !dbg !3128
  br i1 %93, label %96, label %94, !dbg !3128

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !395, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3102
  %95 = mul i64 %63, %4, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %95, metadata !395, metadata !DIExpression()), !dbg !3102
  br label %97, !dbg !3129

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #34, !dbg !3130
  unreachable, !dbg !3130

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3102
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3102
  call void @llvm.dbg.value(metadata i64 %99, metadata !395, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64 %98, metadata !394, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i8* %0, metadata !2949, metadata !DIExpression()) #32, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %99, metadata !2950, metadata !DIExpression()) #32, !dbg !3131
  call void @llvm.dbg.value(metadata i8* %0, metadata !2952, metadata !DIExpression()) #32, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %99, metadata !2956, metadata !DIExpression()) #32, !dbg !3133
  %100 = icmp eq i64 %99, 0, !dbg !3135
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3135
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !3136
  call void @llvm.dbg.value(metadata i8* %102, metadata !2878, metadata !DIExpression()) #32, !dbg !3137
  %103 = icmp eq i8* %102, null, !dbg !3139
  br i1 %103, label %104, label %105, !dbg !3140

104:                                              ; preds = %97
  tail call void @xalloc_die() #34, !dbg !3141
  unreachable, !dbg !3141

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !388, metadata !DIExpression()), !dbg !3102
  store i64 %98, i64* %1, align 8, !dbg !3142, !tbaa !2151
  ret i8* %102, !dbg !3143
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3144 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3146, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %0, metadata !3148, metadata !DIExpression()) #32, !dbg !3152
  call void @llvm.dbg.value(metadata i64 1, metadata !3151, metadata !DIExpression()) #32, !dbg !3152
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !3154
  call void @llvm.dbg.value(metadata i8* %2, metadata !2878, metadata !DIExpression()) #32, !dbg !3155
  %3 = icmp eq i8* %2, null, !dbg !3157
  br i1 %3, label %4, label %5, !dbg !3158

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3159
  unreachable, !dbg !3159

5:                                                ; preds = %1
  ret i8* %2, !dbg !3160
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3149 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3148, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %1, metadata !3151, metadata !DIExpression()), !dbg !3161
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !3162
  call void @llvm.dbg.value(metadata i8* %3, metadata !2878, metadata !DIExpression()) #32, !dbg !3163
  %4 = icmp eq i8* %3, null, !dbg !3165
  br i1 %4, label %5, label %6, !dbg !3166

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3167
  unreachable, !dbg !3167

6:                                                ; preds = %2
  ret i8* %3, !dbg !3168
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3169 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3171, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i64 %0, metadata !3173, metadata !DIExpression()) #32, !dbg !3177
  call void @llvm.dbg.value(metadata i64 1, metadata !3176, metadata !DIExpression()) #32, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %0, metadata !3179, metadata !DIExpression()) #32, !dbg !3183
  call void @llvm.dbg.value(metadata i64 1, metadata !3182, metadata !DIExpression()) #32, !dbg !3183
  call void @llvm.dbg.value(metadata i64 %0, metadata !3179, metadata !DIExpression()) #32, !dbg !3183
  call void @llvm.dbg.value(metadata i64 1, metadata !3182, metadata !DIExpression()) #32, !dbg !3183
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %2, metadata !2878, metadata !DIExpression()) #32, !dbg !3186
  %3 = icmp eq i8* %2, null, !dbg !3188
  br i1 %3, label %4, label %5, !dbg !3189

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3190
  unreachable, !dbg !3190

5:                                                ; preds = %1
  ret i8* %2, !dbg !3191
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3174 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3173, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i64 %1, metadata !3176, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i64 %0, metadata !3179, metadata !DIExpression()) #32, !dbg !3193
  call void @llvm.dbg.value(metadata i64 %1, metadata !3182, metadata !DIExpression()) #32, !dbg !3193
  call void @llvm.dbg.value(metadata i64 %0, metadata !3179, metadata !DIExpression()) #32, !dbg !3193
  call void @llvm.dbg.value(metadata i64 %1, metadata !3182, metadata !DIExpression()) #32, !dbg !3193
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !3195
  call void @llvm.dbg.value(metadata i8* %3, metadata !2878, metadata !DIExpression()) #32, !dbg !3196
  %4 = icmp eq i8* %3, null, !dbg !3198
  br i1 %4, label %5, label %6, !dbg !3199

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3200
  unreachable, !dbg !3200

6:                                                ; preds = %2
  ret i8* %3, !dbg !3201
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3202 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3206, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i64 %1, metadata !3207, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i64 %1, metadata !2902, metadata !DIExpression()) #32, !dbg !3209
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %3, metadata !2878, metadata !DIExpression()) #32, !dbg !3212
  %4 = icmp eq i8* %3, null, !dbg !3214
  br i1 %4, label %5, label %6, !dbg !3215

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3216
  unreachable, !dbg !3216

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3217, metadata !DIExpression()) #32, !dbg !3225
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()) #32, !dbg !3225
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()) #32, !dbg !3225
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3227
  ret i8* %3, !dbg !3228
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3229 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3233, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i64 %1, metadata !3234, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i64 %1, metadata !2915, metadata !DIExpression()) #32, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %1, metadata !2917, metadata !DIExpression()) #32, !dbg !3238
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !3240
  call void @llvm.dbg.value(metadata i8* %3, metadata !2878, metadata !DIExpression()) #32, !dbg !3241
  %4 = icmp eq i8* %3, null, !dbg !3243
  br i1 %4, label %5, label %6, !dbg !3244

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3245
  unreachable, !dbg !3245

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3217, metadata !DIExpression()) #32, !dbg !3246
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()) #32, !dbg !3246
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()) #32, !dbg !3246
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3248
  ret i8* %3, !dbg !3249
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3250 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %1, metadata !3255, metadata !DIExpression()), !dbg !3257
  %3 = add nsw i64 %1, 1, !dbg !3258
  call void @llvm.dbg.value(metadata i64 %3, metadata !2915, metadata !DIExpression()) #32, !dbg !3259
  call void @llvm.dbg.value(metadata i64 %3, metadata !2917, metadata !DIExpression()) #32, !dbg !3261
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3263
  call void @llvm.dbg.value(metadata i8* %4, metadata !2878, metadata !DIExpression()) #32, !dbg !3264
  %5 = icmp eq i8* %4, null, !dbg !3266
  br i1 %5, label %6, label %7, !dbg !3267

6:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3268
  unreachable, !dbg !3268

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3256, metadata !DIExpression()), !dbg !3257
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3269
  store i8 0, i8* %8, align 1, !dbg !3270, !tbaa !578
  call void @llvm.dbg.value(metadata i8* %4, metadata !3217, metadata !DIExpression()) #32, !dbg !3271
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()) #32, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()) #32, !dbg !3271
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3273
  ret i8* %4, !dbg !3274
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3275 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3277, metadata !DIExpression()), !dbg !3278
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #33, !dbg !3279
  %3 = add i64 %2, 1, !dbg !3280
  call void @llvm.dbg.value(metadata i8* %0, metadata !3206, metadata !DIExpression()) #32, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %3, metadata !3207, metadata !DIExpression()) #32, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %3, metadata !2902, metadata !DIExpression()) #32, !dbg !3283
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3285
  call void @llvm.dbg.value(metadata i8* %4, metadata !2878, metadata !DIExpression()) #32, !dbg !3286
  %5 = icmp eq i8* %4, null, !dbg !3288
  br i1 %5, label %6, label %7, !dbg !3289

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3290
  unreachable, !dbg !3290

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3217, metadata !DIExpression()) #32, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()) #32, !dbg !3291
  call void @llvm.dbg.value(metadata i64 %3, metadata !3224, metadata !DIExpression()) #32, !dbg !3291
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !3293
  ret i8* %4, !dbg !3294
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3295 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3300, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %1, metadata !3297, metadata !DIExpression()), !dbg !3301
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.134, i64 0, i64 0), i32 noundef 5) #32, !dbg !3300
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i64 0, i64 0), i8* noundef %2) #32, !dbg !3300
  %3 = icmp eq i32 %1, 0, !dbg !3300
  tail call void @llvm.assume(i1 %3), !dbg !3300
  tail call void @abort() #34, !dbg !3302
  unreachable, !dbg !3302
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @xgetgroups(i8* noundef %0, i32 noundef %1, i32** noundef %2) local_unnamed_addr #12 !dbg !3303 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3305, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32 %1, metadata !3306, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32** %2, metadata !3307, metadata !DIExpression()), !dbg !3309
  %4 = tail call i32 @mgetgroups(i8* noundef %0, i32 noundef %1, i32** noundef %2) #32, !dbg !3310
  call void @llvm.dbg.value(metadata i32 %4, metadata !3308, metadata !DIExpression()), !dbg !3309
  %5 = icmp eq i32 %4, -1, !dbg !3311
  br i1 %5, label %6, label %11, !dbg !3313

6:                                                ; preds = %3
  %7 = tail call i32* @__errno_location() #35, !dbg !3314
  %8 = load i32, i32* %7, align 4, !dbg !3314, !tbaa !569
  %9 = icmp eq i32 %8, 12, !dbg !3315
  br i1 %9, label %10, label %11, !dbg !3316

10:                                               ; preds = %6
  tail call void @xalloc_die() #34, !dbg !3317
  unreachable, !dbg !3317

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !3318
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3319 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3357, metadata !DIExpression()), !dbg !3362
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !3363
  call void @llvm.dbg.value(metadata i1 undef, metadata !3358, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3362
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3364, metadata !DIExpression()), !dbg !3367
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3369
  %4 = load i32, i32* %3, align 8, !dbg !3369, !tbaa !820
  %5 = and i32 %4, 32, !dbg !3370
  %6 = icmp eq i32 %5, 0, !dbg !3370
  call void @llvm.dbg.value(metadata i1 %6, metadata !3360, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3362
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !3371
  %8 = icmp eq i32 %7, 0, !dbg !3372
  call void @llvm.dbg.value(metadata i1 %8, metadata !3361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3362
  br i1 %6, label %9, label %19, !dbg !3373

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3375
  call void @llvm.dbg.value(metadata i1 %10, metadata !3358, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3362
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3376
  %12 = xor i1 %8, true, !dbg !3376
  %13 = sext i1 %12 to i32, !dbg !3376
  br i1 %11, label %22, label %14, !dbg !3376

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !3377
  %16 = load i32, i32* %15, align 4, !dbg !3377, !tbaa !569
  %17 = icmp ne i32 %16, 9, !dbg !3378
  %18 = sext i1 %17 to i32, !dbg !3379
  br label %22, !dbg !3379

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3380

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !3382
  store i32 0, i32* %21, align 4, !dbg !3384, !tbaa !569
  br label %22, !dbg !3382

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3362
  ret i32 %23, !dbg !3385
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3386 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3424, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i32 0, metadata !3425, metadata !DIExpression()), !dbg !3428
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3429
  call void @llvm.dbg.value(metadata i32 %2, metadata !3426, metadata !DIExpression()), !dbg !3428
  %3 = icmp slt i32 %2, 0, !dbg !3430
  br i1 %3, label %4, label %6, !dbg !3432

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3433
  br label %24, !dbg !3434

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3435
  %8 = icmp eq i32 %7, 0, !dbg !3435
  br i1 %8, label %13, label %9, !dbg !3437

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3438
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3439
  %12 = icmp eq i64 %11, -1, !dbg !3440
  br i1 %12, label %16, label %13, !dbg !3441

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3442
  %15 = icmp eq i32 %14, 0, !dbg !3442
  br i1 %15, label %16, label %18, !dbg !3443

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i32 0, metadata !3427, metadata !DIExpression()), !dbg !3428
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3444
  call void @llvm.dbg.value(metadata i32 %21, metadata !3427, metadata !DIExpression()), !dbg !3428
  br label %24, !dbg !3445

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3446
  %20 = load i32, i32* %19, align 4, !dbg !3446, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %20, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i32 0, metadata !3427, metadata !DIExpression()), !dbg !3428
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3444
  call void @llvm.dbg.value(metadata i32 %21, metadata !3427, metadata !DIExpression()), !dbg !3428
  %22 = icmp eq i32 %20, 0, !dbg !3447
  br i1 %22, label %24, label %23, !dbg !3445

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3449, !tbaa !569
  call void @llvm.dbg.value(metadata i32 -1, metadata !3427, metadata !DIExpression()), !dbg !3428
  br label %24, !dbg !3451

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3428
  ret i32 %25, !dbg !3452
}

; Function Attrs: nofree nounwind
declare !dbg !3453 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3454 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3455 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3458 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3496, metadata !DIExpression()), !dbg !3497
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3498
  br i1 %2, label %6, label %3, !dbg !3500

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3501
  %5 = icmp eq i32 %4, 0, !dbg !3501
  br i1 %5, label %6, label %8, !dbg !3502

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3503
  br label %17, !dbg !3504

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3505, metadata !DIExpression()) #32, !dbg !3510
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3512
  %10 = load i32, i32* %9, align 8, !dbg !3512, !tbaa !820
  %11 = and i32 %10, 256, !dbg !3514
  %12 = icmp eq i32 %11, 0, !dbg !3514
  br i1 %12, label %15, label %13, !dbg !3515

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3516
  br label %15, !dbg !3516

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3517
  br label %17, !dbg !3518

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3497
  ret i32 %18, !dbg !3519
}

; Function Attrs: nofree nounwind
declare !dbg !3520 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3521 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3560, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 %1, metadata !3561, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 %2, metadata !3562, metadata !DIExpression()), !dbg !3566
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3567
  %5 = load i8*, i8** %4, align 8, !dbg !3567, !tbaa !3568
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3569
  %7 = load i8*, i8** %6, align 8, !dbg !3569, !tbaa !3570
  %8 = icmp eq i8* %5, %7, !dbg !3571
  br i1 %8, label %9, label %28, !dbg !3572

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3573
  %11 = load i8*, i8** %10, align 8, !dbg !3573, !tbaa !782
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3574
  %13 = load i8*, i8** %12, align 8, !dbg !3574, !tbaa !3575
  %14 = icmp eq i8* %11, %13, !dbg !3576
  br i1 %14, label %15, label %28, !dbg !3577

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3578
  %17 = load i8*, i8** %16, align 8, !dbg !3578, !tbaa !3579
  %18 = icmp eq i8* %17, null, !dbg !3580
  br i1 %18, label %19, label %28, !dbg !3581

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3582
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3583
  call void @llvm.dbg.value(metadata i64 %21, metadata !3563, metadata !DIExpression()), !dbg !3584
  %22 = icmp eq i64 %21, -1, !dbg !3585
  br i1 %22, label %30, label %23, !dbg !3587

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3588
  %25 = load i32, i32* %24, align 8, !dbg !3589, !tbaa !820
  %26 = and i32 %25, -17, !dbg !3589
  store i32 %26, i32* %24, align 8, !dbg !3589, !tbaa !820
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3590
  store i64 %21, i64* %27, align 8, !dbg !3591, !tbaa !3592
  br label %30, !dbg !3593

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3594
  br label %30, !dbg !3595

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3566
  ret i32 %31, !dbg !3596
}

; Function Attrs: nofree nounwind
declare !dbg !3597 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3600 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3605, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i8* %1, metadata !3606, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %2, metadata !3607, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3608, metadata !DIExpression()), !dbg !3610
  %5 = icmp eq i8* %1, null, !dbg !3611
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3613
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.148, i64 0, i64 0), i8* %1, !dbg !3613
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3613
  call void @llvm.dbg.value(metadata i64 %8, metadata !3607, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i8* %7, metadata !3606, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i32* %6, metadata !3605, metadata !DIExpression()), !dbg !3610
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3614
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3616
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3608, metadata !DIExpression()), !dbg !3610
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %11, metadata !3609, metadata !DIExpression()), !dbg !3610
  %12 = icmp ult i64 %11, -3, !dbg !3618
  br i1 %12, label %13, label %18, !dbg !3620

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #33, !dbg !3621
  %15 = icmp eq i32 %14, 0, !dbg !3621
  br i1 %15, label %16, label %30, !dbg !3622

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3623, metadata !DIExpression()) #32, !dbg !3628
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3630, metadata !DIExpression()) #32, !dbg !3635
  call void @llvm.dbg.value(metadata i32 0, metadata !3633, metadata !DIExpression()) #32, !dbg !3635
  call void @llvm.dbg.value(metadata i64 8, metadata !3634, metadata !DIExpression()) #32, !dbg !3635
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3637
  store i64 0, i64* %17, align 1, !dbg !3637
  br label %30, !dbg !3638

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3639
  br i1 %19, label %20, label %21, !dbg !3641

20:                                               ; preds = %18
  tail call void @abort() #34, !dbg !3642
  unreachable, !dbg !3642

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3643

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !3645
  br i1 %24, label %30, label %25, !dbg !3646

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3647
  br i1 %26, label %30, label %27, !dbg !3650

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3651, !tbaa !578
  %29 = zext i8 %28 to i32, !dbg !3652
  store i32 %29, i32* %6, align 4, !dbg !3653, !tbaa !569
  br label %30, !dbg !3654

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3610
  ret i64 %31, !dbg !3655
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3656 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable
define dso_local i32 @mgetgroups(i8* noundef %0, i32 noundef %1, i32** nocapture noundef writeonly %2) local_unnamed_addr #12 !dbg !414 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !423, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32 %1, metadata !424, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32** %2, metadata !425, metadata !DIExpression()), !dbg !3662
  %5 = icmp eq i8* %0, null, !dbg !3663
  br i1 %5, label %40, label %6, !dbg !3664

6:                                                ; preds = %3
  %7 = bitcast i32* %4 to i8*, !dbg !3665
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #32, !dbg !3665
  call void @llvm.dbg.value(metadata i32 10, metadata !426, metadata !DIExpression()), !dbg !3666
  store i32 10, i32* %4, align 4, !dbg !3667, !tbaa !569
  call void @llvm.dbg.value(metadata i32* null, metadata !3668, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i64 10, metadata !3673, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i8* null, metadata !3676, metadata !DIExpression()) #32, !dbg !3680
  call void @llvm.dbg.value(metadata i64 40, metadata !3679, metadata !DIExpression()) #32, !dbg !3680
  %8 = tail call dereferenceable_or_null(40) i8* @malloc(i64 40), !dbg !3682
  call void @llvm.dbg.value(metadata i8* %8, metadata !429, metadata !DIExpression()), !dbg !3666
  %9 = icmp eq i8* %8, null, !dbg !3683
  br i1 %9, label %38, label %10, !dbg !3685

10:                                               ; preds = %6, %34
  %11 = phi i32 [ %22, %34 ], [ 10, %6 ], !dbg !3686
  %12 = phi i8* [ %31, %34 ], [ %8, %6 ]
  %13 = bitcast i8* %12 to i32*, !dbg !3687
  call void @llvm.dbg.value(metadata i32* %13, metadata !429, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i32 %11, metadata !430, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i32* %4, metadata !426, metadata !DIExpression(DW_OP_deref)), !dbg !3666
  %14 = call i32 @getgrouplist(i8* noundef nonnull %0, i32 noundef %1, i32* noundef nonnull %13, i32* noundef nonnull %4) #32, !dbg !3689
  call void @llvm.dbg.value(metadata i32 %14, metadata !432, metadata !DIExpression()), !dbg !3688
  %15 = icmp slt i32 %14, 0, !dbg !3690
  %16 = load i32, i32* %4, align 4, !dbg !3688, !tbaa !569
  %17 = icmp eq i32 %11, %16
  %18 = select i1 %15, i1 %17, i1 false, !dbg !3692
  call void @llvm.dbg.value(metadata i32 %16, metadata !426, metadata !DIExpression()), !dbg !3666
  br i1 %18, label %19, label %21, !dbg !3692

19:                                               ; preds = %10
  %20 = shl nuw nsw i32 %11, 1, !dbg !3693
  call void @llvm.dbg.value(metadata i32 %20, metadata !426, metadata !DIExpression()), !dbg !3666
  store i32 %20, i32* %4, align 4, !dbg !3693, !tbaa !569
  br label %21, !dbg !3694

21:                                               ; preds = %10, %19
  %22 = phi i32 [ %20, %19 ], [ %16, %10 ], !dbg !3695
  call void @llvm.dbg.value(metadata i32 %22, metadata !426, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i32* %13, metadata !3668, metadata !DIExpression()) #32, !dbg !3696
  call void @llvm.dbg.value(metadata i32 %22, metadata !3673, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #32, !dbg !3696
  %23 = icmp slt i32 %22, 0, !dbg !3698
  br i1 %23, label %24, label %26, !dbg !3700

24:                                               ; preds = %21
  %25 = tail call i32* @__errno_location() #35, !dbg !3701
  store i32 12, i32* %25, align 4, !dbg !3703, !tbaa !569
  call void @llvm.dbg.value(metadata i8* %31, metadata !433, metadata !DIExpression()), !dbg !3688
  br label %33, !dbg !3704

26:                                               ; preds = %21
  %27 = zext i32 %22 to i64, !dbg !3695
  call void @llvm.dbg.value(metadata i64 %27, metadata !3673, metadata !DIExpression()) #32, !dbg !3696
  %28 = shl nuw nsw i64 %27, 2, !dbg !3705
  call void @llvm.dbg.value(metadata i8* %12, metadata !3676, metadata !DIExpression()) #32, !dbg !3706
  call void @llvm.dbg.value(metadata i64 %28, metadata !3679, metadata !DIExpression()) #32, !dbg !3706
  %29 = icmp eq i32 %22, 0, !dbg !3708
  %30 = select i1 %29, i64 1, i64 %28, !dbg !3708
  %31 = call i8* @realloc(i8* noundef nonnull %12, i64 noundef %30) #32, !dbg !3709
  call void @llvm.dbg.value(metadata i8* %31, metadata !433, metadata !DIExpression()), !dbg !3688
  %32 = icmp eq i8* %31, null, !dbg !3710
  br i1 %32, label %33, label %34, !dbg !3704

33:                                               ; preds = %26, %24
  call void @free(i8* noundef nonnull %12) #32, !dbg !3712
  br label %38, !dbg !3714

34:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8* %31, metadata !433, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i8* %31, metadata !429, metadata !DIExpression()), !dbg !3666
  %35 = icmp sgt i32 %14, -1, !dbg !3715
  br i1 %35, label %36, label %10, !dbg !3717, !llvm.loop !3718

36:                                               ; preds = %34
  %37 = bitcast i32** %2 to i8**, !dbg !3721
  store i8* %31, i8** %37, align 8, !dbg !3721, !tbaa !483
  call void @llvm.dbg.value(metadata i32 %22, metadata !426, metadata !DIExpression()), !dbg !3666
  br label %38, !dbg !3723

38:                                               ; preds = %33, %36, %6
  %39 = phi i32 [ -1, %6 ], [ -1, %33 ], [ %22, %36 ], !dbg !3666
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #32, !dbg !3724
  br label %107

40:                                               ; preds = %3
  %41 = tail call i32 @getgroups(i32 noundef 0, i32* noundef null) #32, !dbg !3725
  call void @llvm.dbg.value(metadata i32 %41, metadata !434, metadata !DIExpression()), !dbg !3662
  %42 = icmp slt i32 %41, 0, !dbg !3726
  br i1 %42, label %43, label %55, !dbg !3727

43:                                               ; preds = %40
  %44 = tail call i32* @__errno_location() #35, !dbg !3728
  %45 = load i32, i32* %44, align 4, !dbg !3728, !tbaa !569
  %46 = icmp eq i32 %45, 38, !dbg !3729
  br i1 %46, label %47, label %107, !dbg !3730

47:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i32* null, metadata !3668, metadata !DIExpression()) #32, !dbg !3731
  call void @llvm.dbg.value(metadata i64 1, metadata !3673, metadata !DIExpression()) #32, !dbg !3731
  call void @llvm.dbg.value(metadata i8* null, metadata !3676, metadata !DIExpression()) #32, !dbg !3733
  call void @llvm.dbg.value(metadata i64 4, metadata !3679, metadata !DIExpression()) #32, !dbg !3733
  %48 = tail call dereferenceable_or_null(4) i8* @malloc(i64 4), !dbg !3735
  call void @llvm.dbg.value(metadata i8* %48, metadata !435, metadata !DIExpression()), !dbg !3736
  %49 = icmp eq i8* %48, null, !dbg !3737
  br i1 %49, label %107, label %50, !dbg !3739

50:                                               ; preds = %47
  %51 = bitcast i8* %48 to i32*, !dbg !3740
  call void @llvm.dbg.value(metadata i32* %51, metadata !435, metadata !DIExpression()), !dbg !3736
  %52 = bitcast i32** %2 to i8**, !dbg !3741
  store i8* %48, i8** %52, align 8, !dbg !3741, !tbaa !483
  store i32 %1, i32* %51, align 4, !dbg !3743, !tbaa !569
  %53 = icmp ne i32 %1, -1, !dbg !3744
  %54 = zext i1 %53 to i32, !dbg !3744
  br label %107

55:                                               ; preds = %40
  %56 = icmp ne i32 %41, 0, !dbg !3745
  %57 = icmp eq i32 %1, -1
  %58 = and i1 %57, %56, !dbg !3747
  %59 = xor i1 %58, true, !dbg !3747
  %60 = zext i1 %59 to i32, !dbg !3747
  %61 = add nuw nsw i32 %41, %60, !dbg !3747
  call void @llvm.dbg.value(metadata i32 %61, metadata !434, metadata !DIExpression()), !dbg !3662
  %62 = zext i32 %61 to i64, !dbg !3748
  call void @llvm.dbg.value(metadata i32* null, metadata !3668, metadata !DIExpression()) #32, !dbg !3749
  call void @llvm.dbg.value(metadata i64 %62, metadata !3673, metadata !DIExpression()) #32, !dbg !3749
  %63 = shl nuw nsw i64 %62, 2, !dbg !3751
  call void @llvm.dbg.value(metadata i8* null, metadata !3676, metadata !DIExpression()) #32, !dbg !3752
  call void @llvm.dbg.value(metadata i64 %63, metadata !3679, metadata !DIExpression()) #32, !dbg !3752
  %64 = tail call i8* @malloc(i64 %63), !dbg !3754
  %65 = bitcast i8* %64 to i32*, !dbg !3755
  call void @llvm.dbg.value(metadata i32* %65, metadata !440, metadata !DIExpression()), !dbg !3662
  %66 = icmp eq i8* %64, null, !dbg !3756
  br i1 %66, label %107, label %67, !dbg !3758

67:                                               ; preds = %55
  %68 = icmp ne i32 %1, -1, !dbg !3759
  %69 = sext i1 %68 to i32, !dbg !3759
  %70 = add nsw i32 %61, %69, !dbg !3760
  %71 = zext i1 %68 to i64
  %72 = getelementptr inbounds i32, i32* %65, i64 %71, !dbg !3761
  %73 = tail call i32 @getgroups(i32 noundef %70, i32* noundef nonnull %72) #32, !dbg !3762
  call void @llvm.dbg.value(metadata i32 %73, metadata !441, metadata !DIExpression()), !dbg !3662
  %74 = icmp slt i32 %73, 0, !dbg !3763
  br i1 %74, label %75, label %76, !dbg !3765

75:                                               ; preds = %67
  tail call void @free(i8* noundef nonnull %64) #32, !dbg !3766
  br label %107, !dbg !3768

76:                                               ; preds = %67
  br i1 %57, label %79, label %77, !dbg !3769

77:                                               ; preds = %76
  store i32 %1, i32* %65, align 4, !dbg !3771, !tbaa !569
  %78 = add nuw nsw i32 %73, 1, !dbg !3773
  call void @llvm.dbg.value(metadata i32 %78, metadata !441, metadata !DIExpression()), !dbg !3662
  br label %79, !dbg !3774

79:                                               ; preds = %77, %76
  %80 = phi i32 [ %78, %77 ], [ %73, %76 ], !dbg !3662
  call void @llvm.dbg.value(metadata i32 %80, metadata !441, metadata !DIExpression()), !dbg !3662
  %81 = bitcast i32** %2 to i8**, !dbg !3775
  store i8* %64, i8** %81, align 8, !dbg !3775, !tbaa !483
  %82 = icmp ugt i32 %80, 1, !dbg !3776
  br i1 %82, label %83, label %107, !dbg !3777

83:                                               ; preds = %79
  %84 = load i32, i32* %65, align 4, !dbg !3778, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %84, metadata !442, metadata !DIExpression()), !dbg !3779
  %85 = zext i32 %80 to i64, !dbg !3780
  %86 = getelementptr inbounds i32, i32* %65, i64 %85, !dbg !3780
  call void @llvm.dbg.value(metadata i32* %86, metadata !445, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i32* %65, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3781
  call void @llvm.dbg.value(metadata i32 %80, metadata !441, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32* %65, metadata !440, metadata !DIExpression()), !dbg !3662
  %87 = getelementptr inbounds i32, i32* %65, i64 1, !dbg !3781
  call void @llvm.dbg.value(metadata i32* %87, metadata !446, metadata !DIExpression()), !dbg !3781
  br label %88, !dbg !3782

88:                                               ; preds = %83, %101
  %89 = phi i32 [ %102, %101 ], [ %84, %83 ]
  %90 = phi i32* [ %105, %101 ], [ %87, %83 ]
  %91 = phi i32 [ %104, %101 ], [ %80, %83 ]
  %92 = phi i32* [ %103, %101 ], [ %65, %83 ]
  call void @llvm.dbg.value(metadata i32 %91, metadata !441, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32* %92, metadata !440, metadata !DIExpression()), !dbg !3662
  %93 = load i32, i32* %90, align 4, !dbg !3783, !tbaa !569
  %94 = icmp eq i32 %93, %84, !dbg !3787
  %95 = icmp eq i32 %93, %89
  %96 = select i1 %94, i1 true, i1 %95, !dbg !3788
  br i1 %96, label %97, label %99, !dbg !3788

97:                                               ; preds = %88
  %98 = add nsw i32 %91, -1, !dbg !3789
  call void @llvm.dbg.value(metadata i32 %98, metadata !441, metadata !DIExpression()), !dbg !3662
  br label %101, !dbg !3790

99:                                               ; preds = %88
  %100 = getelementptr inbounds i32, i32* %92, i64 1, !dbg !3791
  call void @llvm.dbg.value(metadata i32* %100, metadata !440, metadata !DIExpression()), !dbg !3662
  store i32 %93, i32* %100, align 4, !dbg !3792, !tbaa !569
  br label %101

101:                                              ; preds = %97, %99
  %102 = phi i32 [ %89, %97 ], [ %93, %99 ]
  %103 = phi i32* [ %92, %97 ], [ %100, %99 ], !dbg !3662
  %104 = phi i32 [ %98, %97 ], [ %91, %99 ], !dbg !3662
  call void @llvm.dbg.value(metadata i32 %104, metadata !441, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32* %103, metadata !440, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32* %90, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3781
  %105 = getelementptr inbounds i32, i32* %90, i64 1, !dbg !3781
  call void @llvm.dbg.value(metadata i32* %105, metadata !446, metadata !DIExpression()), !dbg !3781
  %106 = icmp ult i32* %105, %86, !dbg !3793
  br i1 %106, label %88, label %107, !dbg !3782, !llvm.loop !3794

107:                                              ; preds = %101, %47, %43, %50, %75, %79, %55, %38
  %108 = phi i32 [ %39, %38 ], [ %54, %50 ], [ -1, %55 ], [ -1, %75 ], [ %80, %79 ], [ -1, %43 ], [ -1, %47 ], [ %104, %101 ], !dbg !3662
  ret i32 %108, !dbg !3796
}

declare !dbg !3797 i32 @getgrouplist(i8* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3801 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3803, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i64 %1, metadata !3804, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i64 %2, metadata !3805, metadata !DIExpression()), !dbg !3807
  %4 = icmp eq i64 %2, 0, !dbg !3808
  br i1 %4, label %8, label %5, !dbg !3808

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3808
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3808
  br i1 %7, label %13, label %8, !dbg !3808

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3806, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3807
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3806, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3807
  %9 = mul i64 %2, %1, !dbg !3808
  call void @llvm.dbg.value(metadata i64 %9, metadata !3806, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i8* %0, metadata !3810, metadata !DIExpression()) #32, !dbg !3814
  call void @llvm.dbg.value(metadata i64 %9, metadata !3813, metadata !DIExpression()) #32, !dbg !3814
  %10 = icmp eq i64 %9, 0, !dbg !3816
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3816
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !3817
  br label %15, !dbg !3818

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3806, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3807
  %14 = tail call i32* @__errno_location() #35, !dbg !3819
  store i32 12, i32* %14, align 4, !dbg !3821, !tbaa !569
  br label %15, !dbg !3822

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3807
  ret i8* %16, !dbg !3823
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3824 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3828, metadata !DIExpression()), !dbg !3833
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3834
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3834
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3829, metadata !DIExpression()), !dbg !3835
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !3836
  %5 = icmp eq i32 %4, 0, !dbg !3836
  br i1 %5, label %6, label %13, !dbg !3838

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3839, metadata !DIExpression()) #32, !dbg !3843
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i64 0, i64 0), metadata !3842, metadata !DIExpression()) #32, !dbg !3843
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i64 0, i64 0), i64 2), !dbg !3846
  %8 = icmp eq i32 %7, 0, !dbg !3847
  br i1 %8, label %12, label %9, !dbg !3848

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3839, metadata !DIExpression()) #32, !dbg !3849
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0), metadata !3842, metadata !DIExpression()) #32, !dbg !3849
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0), i64 6), !dbg !3851
  %11 = icmp eq i32 %10, 0, !dbg !3852
  br i1 %11, label %12, label %13, !dbg !3853

12:                                               ; preds = %9, %6
  br label %13, !dbg !3854

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3833
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3855
  ret i1 %14, !dbg !3855
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3856 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3860, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i8* %1, metadata !3861, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i64 %2, metadata !3862, metadata !DIExpression()), !dbg !3863
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !3864
  ret i32 %4, !dbg !3865
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3866 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3870, metadata !DIExpression()), !dbg !3871
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !3872
  ret i8* %2, !dbg !3873
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3874 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3876, metadata !DIExpression()), !dbg !3878
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3879
  call void @llvm.dbg.value(metadata i8* %2, metadata !3877, metadata !DIExpression()), !dbg !3878
  ret i8* %2, !dbg !3880
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3881 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3883, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i8* %1, metadata !3884, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i64 %2, metadata !3885, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i32 %0, metadata !3876, metadata !DIExpression()) #32, !dbg !3891
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3893
  call void @llvm.dbg.value(metadata i8* %4, metadata !3877, metadata !DIExpression()) #32, !dbg !3891
  call void @llvm.dbg.value(metadata i8* %4, metadata !3886, metadata !DIExpression()), !dbg !3890
  %5 = icmp eq i8* %4, null, !dbg !3894
  br i1 %5, label %6, label %9, !dbg !3895

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3896
  br i1 %7, label %19, label %8, !dbg !3899

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3900, !tbaa !578
  br label %19, !dbg !3901

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #33, !dbg !3902
  call void @llvm.dbg.value(metadata i64 %10, metadata !3887, metadata !DIExpression()), !dbg !3903
  %11 = icmp ult i64 %10, %2, !dbg !3904
  br i1 %11, label %12, label %14, !dbg !3906

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3907
  call void @llvm.dbg.value(metadata i8* %1, metadata !3909, metadata !DIExpression()) #32, !dbg !3914
  call void @llvm.dbg.value(metadata i8* %4, metadata !3912, metadata !DIExpression()) #32, !dbg !3914
  call void @llvm.dbg.value(metadata i64 %13, metadata !3913, metadata !DIExpression()) #32, !dbg !3914
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !3916
  br label %19, !dbg !3917

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3918
  br i1 %15, label %19, label %16, !dbg !3921

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3922
  call void @llvm.dbg.value(metadata i8* %1, metadata !3909, metadata !DIExpression()) #32, !dbg !3924
  call void @llvm.dbg.value(metadata i8* %4, metadata !3912, metadata !DIExpression()) #32, !dbg !3924
  call void @llvm.dbg.value(metadata i64 %17, metadata !3913, metadata !DIExpression()) #32, !dbg !3924
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !3926
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3927
  store i8 0, i8* %18, align 1, !dbg !3928, !tbaa !578
  br label %19, !dbg !3929

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3930
  ret i32 %20, !dbg !3931
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #5 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #9 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #10 = { nofree nounwind readonly "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { argmemonly nofree nounwind willreturn writeonly }
attributes #23 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #24 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nounwind }
attributes #33 = { nounwind readonly willreturn }
attributes #34 = { noreturn nounwind }
attributes #35 = { nounwind readnone willreturn }
attributes #36 = { noreturn }
attributes #37 = { cold }
attributes #38 = { nounwind allocsize(1) }
attributes #39 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !347, !135, !140, !147, !327, !353, !355, !188, !198, !230, !357, !319, !364, !398, !400, !402, !404, !406, !408, !333, !410, !451, !454, !456, !458}
!llvm.ident = !{!460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460}
!llvm.module.flags = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 39, type: !121, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !33, splitDebugInlining: false, nameTableKind: None)
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
!21 = !{!22, !24, !25, !26, !27, !30, !32}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34, !0}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !36, file: !37, line: 575, type: !25, isLocal: true, isDefinition: true)
!36 = distinct !DISubprogram(name: "oputs_", scope: !37, file: !37, line: 573, type: !38, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !40)
!37 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!38 = !DISubroutineType(types: !39)
!39 = !{null, !30, !30}
!40 = !{!41, !42, !43, !46, !48, !49, !50, !54, !55, !56, !57, !59, !115, !116, !117, !119, !120}
!41 = !DILocalVariable(name: "program", arg: 1, scope: !36, file: !37, line: 573, type: !30)
!42 = !DILocalVariable(name: "option", arg: 2, scope: !36, file: !37, line: 573, type: !30)
!43 = !DILocalVariable(name: "term", scope: !44, file: !37, line: 585, type: !30)
!44 = distinct !DILexicalBlock(scope: !45, file: !37, line: 582, column: 5)
!45 = distinct !DILexicalBlock(scope: !36, file: !37, line: 581, column: 7)
!46 = !DILocalVariable(name: "double_space", scope: !36, file: !37, line: 594, type: !47)
!47 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!48 = !DILocalVariable(name: "first_word", scope: !36, file: !37, line: 595, type: !30)
!49 = !DILocalVariable(name: "option_text", scope: !36, file: !37, line: 596, type: !30)
!50 = !DILocalVariable(name: "s", scope: !51, file: !37, line: 608, type: !30)
!51 = distinct !DILexicalBlock(scope: !52, file: !37, line: 605, column: 5)
!52 = distinct !DILexicalBlock(scope: !53, file: !37, line: 604, column: 12)
!53 = distinct !DILexicalBlock(scope: !36, file: !37, line: 597, column: 7)
!54 = !DILocalVariable(name: "spaces", scope: !51, file: !37, line: 609, type: !27)
!55 = !DILocalVariable(name: "anchor_len", scope: !36, file: !37, line: 620, type: !27)
!56 = !DILocalVariable(name: "desc_text", scope: !36, file: !37, line: 625, type: !30)
!57 = !DILocalVariable(name: "__ptr", scope: !58, file: !37, line: 644, type: !30)
!58 = distinct !DILexicalBlock(scope: !36, file: !37, line: 644, column: 3)
!59 = !DILocalVariable(name: "__stream", scope: !58, file: !37, line: 644, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !63)
!62 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !65)
!64 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !81, !83, !84, !85, !89, !90, !92, !96, !99, !101, !104, !107, !108, !109, !110, !111}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !63, file: !64, line: 51, baseType: !25, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !63, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !63, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !63, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !63, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !63, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !63, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !63, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !63, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !63, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !63, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !63, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !63, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !64, line: 36, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !63, file: !64, line: 70, baseType: !82, size: 64, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !63, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !63, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !63, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !87, line: 152, baseType: !88)
!87 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!88 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !63, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !63, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!91 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !63, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 1)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !63, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !64, line: 43, baseType: null)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !63, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !87, line: 153, baseType: !88)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !63, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !64, line: 37, flags: DIFlagFwdDecl)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !63, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !64, line: 38, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !63, file: !64, line: 93, baseType: !82, size: 64, offset: 1344)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !63, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !63, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !63, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !63, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 20)
!115 = !DILocalVariable(name: "__cnt", scope: !58, file: !37, line: 644, type: !27)
!116 = !DILocalVariable(name: "url_program", scope: !36, file: !37, line: 648, type: !30)
!117 = !DILocalVariable(name: "__ptr", scope: !118, file: !37, line: 686, type: !30)
!118 = distinct !DILexicalBlock(scope: !36, file: !37, line: 686, column: 3)
!119 = !DILocalVariable(name: "__stream", scope: !118, file: !37, line: 686, type: !60)
!120 = !DILocalVariable(name: "__cnt", scope: !118, file: !37, line: 686, type: !27)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 768, elements: !131)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !124, line: 50, size: 256, elements: !125)
!124 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!125 = !{!126, !127, !128, !130}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !123, file: !124, line: 52, baseType: !30, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !123, file: !124, line: 55, baseType: !25, size: 32, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !123, file: !124, line: 56, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !123, file: !124, line: 57, baseType: !25, size: 32, offset: 192)
!131 = !{!132}
!132 = !DISubrange(count: 3)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "Version", scope: !135, file: !136, line: 3, type: !30, isLocal: false, isDefinition: true)
!135 = distinct !DICompileUnit(language: DW_LANG_C99, file: !136, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !137, splitDebugInlining: false, nameTableKind: None)
!136 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!137 = !{!133}
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "file_name", scope: !140, file: !141, line: 45, type: !30, isLocal: true, isDefinition: true)
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !141, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !142, splitDebugInlining: false, nameTableKind: None)
!141 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!142 = !{!138, !143}
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !140, file: !141, line: 55, type: !47, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !147, file: !148, line: 66, type: !183, isLocal: false, isDefinition: true)
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !148, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !149, globals: !150, splitDebugInlining: false, nameTableKind: None)
!148 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!149 = !{!24, !32}
!150 = !{!151, !177, !145, !179, !181}
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "old_file_name", scope: !153, file: !148, line: 304, type: !30, isLocal: true, isDefinition: true)
!153 = distinct !DISubprogram(name: "verror_at_line", scope: !148, file: !148, line: 298, type: !154, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !170)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !25, !25, !30, !7, !30, !156}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !157, line: 52, baseType: !158)
!157 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !159, line: 32, baseType: !160)
!159 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !161, baseType: !162)
!161 = !DIFile(filename: "lib/error.c", directory: "/src")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !163, size: 256, elements: !164)
!163 = !DINamespace(name: "std", scope: null)
!164 = !{!165, !166, !167, !168, !169}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !162, file: !161, baseType: !24, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !162, file: !161, baseType: !24, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !162, file: !161, baseType: !24, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !162, file: !161, baseType: !25, size: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !162, file: !161, baseType: !25, size: 32, offset: 224)
!170 = !{!171, !172, !173, !174, !175, !176}
!171 = !DILocalVariable(name: "status", arg: 1, scope: !153, file: !148, line: 298, type: !25)
!172 = !DILocalVariable(name: "errnum", arg: 2, scope: !153, file: !148, line: 298, type: !25)
!173 = !DILocalVariable(name: "file_name", arg: 3, scope: !153, file: !148, line: 298, type: !30)
!174 = !DILocalVariable(name: "line_number", arg: 4, scope: !153, file: !148, line: 298, type: !7)
!175 = !DILocalVariable(name: "message", arg: 5, scope: !153, file: !148, line: 298, type: !30)
!176 = !DILocalVariable(name: "args", arg: 6, scope: !153, file: !148, line: 298, type: !156)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "old_line_number", scope: !153, file: !148, line: 305, type: !7, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "error_message_count", scope: !147, file: !148, line: 69, type: !7, isLocal: false, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !147, file: !148, line: 295, type: !25, isLocal: false, isDefinition: true)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null}
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "program_name", scope: !188, file: !189, line: 31, type: !30, isLocal: false, isDefinition: true)
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !190, globals: !191, splitDebugInlining: false, nameTableKind: None)
!189 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!190 = !{!22}
!191 = !{!186}
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "utf07FF", scope: !194, file: !195, line: 46, type: !225, isLocal: true, isDefinition: true)
!194 = distinct !DISubprogram(name: "proper_name_lite", scope: !195, file: !195, line: 38, type: !196, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !200)
!195 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!196 = !DISubroutineType(types: !197)
!197 = !{!30, !30, !30}
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !199, splitDebugInlining: false, nameTableKind: None)
!199 = !{!192}
!200 = !{!201, !202, !203, !204, !209}
!201 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !194, file: !195, line: 38, type: !30)
!202 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !194, file: !195, line: 38, type: !30)
!203 = !DILocalVariable(name: "translation", scope: !194, file: !195, line: 40, type: !30)
!204 = !DILocalVariable(name: "w", scope: !194, file: !195, line: 47, type: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !206, line: 37, baseType: !207)
!206 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !87, line: 57, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !87, line: 42, baseType: !7)
!209 = !DILocalVariable(name: "mbs", scope: !194, file: !195, line: 48, type: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !211, line: 6, baseType: !212)
!211 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !213, line: 21, baseType: !214)
!213 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 13, size: 64, elements: !215)
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !214, file: !213, line: 15, baseType: !25, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !214, file: !213, line: 20, baseType: !218, size: 32, offset: 32)
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !214, file: !213, line: 16, size: 32, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !218, file: !213, line: 18, baseType: !7, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !218, file: !213, line: 19, baseType: !222, size: 32)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 4)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 16, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 2)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !230, file: !231, line: 76, type: !313, isLocal: false, isDefinition: true)
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !252, globals: !253, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!232 = !{!233, !247, !5}
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !234, line: 42, baseType: !7, size: 32, elements: !235)
!234 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!236 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!237 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!238 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!239 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!240 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!241 = !DIEnumerator(name: "c_quoting_style", value: 5)
!242 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!243 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!244 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!245 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!246 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !234, line: 254, baseType: !7, size: 32, elements: !248)
!248 = !{!249, !250, !251}
!249 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!250 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!251 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!252 = !{!25, !26, !27}
!253 = !{!228, !254, !260, !272, !274, !279, !302, !309, !311}
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !230, file: !231, line: 92, type: !256, isLocal: false, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 320, elements: !258)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!258 = !{!259}
!259 = !DISubrange(count: 10)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !230, file: !231, line: 1040, type: !262, isLocal: false, isDefinition: true)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !231, line: 56, size: 448, elements: !263)
!263 = !{!264, !265, !266, !270, !271}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !262, file: !231, line: 59, baseType: !233, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !262, file: !231, line: 62, baseType: !25, size: 32, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !262, file: !231, line: 66, baseType: !267, size: 256, offset: 64)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 8)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !262, file: !231, line: 69, baseType: !30, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !262, file: !231, line: 72, baseType: !30, size: 64, offset: 384)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !230, file: !231, line: 107, type: !262, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "slot0", scope: !230, file: !231, line: 831, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 256)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "quote", scope: !281, file: !231, line: 228, type: !300, isLocal: true, isDefinition: true)
!281 = distinct !DISubprogram(name: "gettext_quote", scope: !231, file: !231, line: 197, type: !282, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !284)
!282 = !DISubroutineType(types: !283)
!283 = !{!30, !30, !233}
!284 = !{!285, !286, !287, !288, !289}
!285 = !DILocalVariable(name: "msgid", arg: 1, scope: !281, file: !231, line: 197, type: !30)
!286 = !DILocalVariable(name: "s", arg: 2, scope: !281, file: !231, line: 197, type: !233)
!287 = !DILocalVariable(name: "translation", scope: !281, file: !231, line: 199, type: !30)
!288 = !DILocalVariable(name: "w", scope: !281, file: !231, line: 229, type: !205)
!289 = !DILocalVariable(name: "mbs", scope: !281, file: !231, line: 230, type: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !211, line: 6, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !213, line: 21, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 13, size: 64, elements: !293)
!293 = !{!294, !295}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !292, file: !213, line: 15, baseType: !25, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !292, file: !213, line: 20, baseType: !296, size: 32, offset: 32)
!296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !213, line: 16, size: 32, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !296, file: !213, line: 18, baseType: !7, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !296, file: !213, line: 19, baseType: !222, size: 32)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !301)
!301 = !{!227, !224}
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "slotvec", scope: !230, file: !231, line: 834, type: !304, isLocal: true, isDefinition: true)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !231, line: 823, size: 128, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !305, file: !231, line: 825, baseType: !27, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !305, file: !231, line: 826, baseType: !22, size: 64, offset: 64)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "nslots", scope: !230, file: !231, line: 832, type: !25, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "slotvec0", scope: !230, file: !231, line: 833, type: !305, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 704, elements: !315)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!315 = !{!316}
!316 = !DISubrange(count: 11)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !319, file: !320, line: 26, type: !322, isLocal: false, isDefinition: true)
!319 = distinct !DICompileUnit(language: DW_LANG_C99, file: !320, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !321, splitDebugInlining: false, nameTableKind: None)
!320 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!321 = !{!317}
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 376, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 47)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "exit_failure", scope: !327, file: !328, line: 24, type: !330, isLocal: false, isDefinition: true)
!327 = distinct !DICompileUnit(language: DW_LANG_C99, file: !328, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !329, splitDebugInlining: false, nameTableKind: None)
!328 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!329 = !{!325}
!330 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "internal_state", scope: !333, file: !334, line: 97, type: !337, isLocal: true, isDefinition: true)
!333 = distinct !DICompileUnit(language: DW_LANG_C99, file: !334, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !335, globals: !336, splitDebugInlining: false, nameTableKind: None)
!334 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!335 = !{!24, !27, !32}
!336 = !{!331}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !211, line: 6, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !213, line: 21, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 13, size: 64, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !339, file: !213, line: 15, baseType: !25, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !339, file: !213, line: 20, baseType: !343, size: 32, offset: 32)
!343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !213, line: 16, size: 32, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !343, file: !213, line: 18, baseType: !7, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !343, file: !213, line: 19, baseType: !222, size: 32)
!347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !348, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !349, splitDebugInlining: false, nameTableKind: None)
!348 = !DIFile(filename: "src/group-list.c", directory: "/src", checksumkind: CSK_MD5, checksum: "86bc740edd29a2e1277335d35d8d331e")
!349 = !{!24, !350, !32}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !351, line: 102, baseType: !352)
!351 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !87, line: 73, baseType: !29)
!353 = distinct !DICompileUnit(language: DW_LANG_C99, file: !354, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!354 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!355 = distinct !DICompileUnit(language: DW_LANG_C99, file: !356, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!356 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!357 = distinct !DICompileUnit(language: DW_LANG_C99, file: !358, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !359, retainedTypes: !363, splitDebugInlining: false, nameTableKind: None)
!358 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!359 = !{!360}
!360 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !358, line: 40, baseType: !7, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!363 = !{!24}
!364 = distinct !DICompileUnit(language: DW_LANG_C99, file: !365, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !366, retainedTypes: !397, splitDebugInlining: false, nameTableKind: None)
!365 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!366 = !{!367, !379}
!367 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !368, file: !365, line: 188, baseType: !7, size: 32, elements: !377)
!368 = distinct !DISubprogram(name: "x2nrealloc", scope: !365, file: !365, line: 176, type: !369, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !372)
!369 = !DISubroutineType(types: !370)
!370 = !{!24, !24, !371, !27}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!372 = !{!373, !374, !375, !376}
!373 = !DILocalVariable(name: "p", arg: 1, scope: !368, file: !365, line: 176, type: !24)
!374 = !DILocalVariable(name: "pn", arg: 2, scope: !368, file: !365, line: 176, type: !371)
!375 = !DILocalVariable(name: "s", arg: 3, scope: !368, file: !365, line: 176, type: !27)
!376 = !DILocalVariable(name: "n", scope: !368, file: !365, line: 178, type: !27)
!377 = !{!378}
!378 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!379 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !380, file: !365, line: 228, baseType: !7, size: 32, elements: !377)
!380 = distinct !DISubprogram(name: "xpalloc", scope: !365, file: !365, line: 223, type: !381, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !387)
!381 = !DISubroutineType(types: !382)
!382 = !{!24, !24, !383, !384, !386, !384}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !385, line: 130, baseType: !386)
!385 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !28, line: 35, baseType: !88)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396}
!388 = !DILocalVariable(name: "pa", arg: 1, scope: !380, file: !365, line: 223, type: !24)
!389 = !DILocalVariable(name: "pn", arg: 2, scope: !380, file: !365, line: 223, type: !383)
!390 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !380, file: !365, line: 223, type: !384)
!391 = !DILocalVariable(name: "n_max", arg: 4, scope: !380, file: !365, line: 223, type: !386)
!392 = !DILocalVariable(name: "s", arg: 5, scope: !380, file: !365, line: 223, type: !384)
!393 = !DILocalVariable(name: "n0", scope: !380, file: !365, line: 230, type: !384)
!394 = !DILocalVariable(name: "n", scope: !380, file: !365, line: 237, type: !384)
!395 = !DILocalVariable(name: "nbytes", scope: !380, file: !365, line: 248, type: !384)
!396 = !DILocalVariable(name: "adjusted_nbytes", scope: !380, file: !365, line: 252, type: !384)
!397 = !{!22, !24, !47, !88, !29}
!398 = distinct !DICompileUnit(language: DW_LANG_C99, file: !399, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!399 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!400 = distinct !DICompileUnit(language: DW_LANG_C99, file: !401, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!401 = !DIFile(filename: "lib/xgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b5210c3f5d54a118d66836a8f2f46b25")
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !403, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!403 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!404 = distinct !DICompileUnit(language: DW_LANG_C99, file: !405, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!405 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !363, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!408 = distinct !DICompileUnit(language: DW_LANG_C99, file: !409, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !363, splitDebugInlining: false, nameTableKind: None)
!409 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!410 = distinct !DICompileUnit(language: DW_LANG_C99, file: !411, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !412, retainedTypes: !450, splitDebugInlining: false, nameTableKind: None)
!411 = !DIFile(filename: "lib/mgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c6d0df677a26dbd2695c193e3d6de3d1")
!412 = !{!413}
!413 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !414, file: !411, line: 79, baseType: !7, size: 32, elements: !448)
!414 = distinct !DISubprogram(name: "mgetgroups", scope: !411, file: !411, line: 66, type: !415, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !422)
!415 = !DISubroutineType(types: !416)
!416 = !{!25, !30, !417, !420}
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !418, line: 64, baseType: !419)
!418 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !87, line: 147, baseType: !7)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!422 = !{!423, !424, !425, !426, !429, !430, !432, !433, !434, !435, !440, !441, !442, !445, !446}
!423 = !DILocalVariable(name: "username", arg: 1, scope: !414, file: !411, line: 66, type: !30)
!424 = !DILocalVariable(name: "gid", arg: 2, scope: !414, file: !411, line: 66, type: !417)
!425 = !DILocalVariable(name: "groups", arg: 3, scope: !414, file: !411, line: 66, type: !420)
!426 = !DILocalVariable(name: "max_n_groups", scope: !427, file: !411, line: 80, type: !25)
!427 = distinct !DILexicalBlock(scope: !428, file: !411, line: 78, column: 5)
!428 = distinct !DILexicalBlock(scope: !414, file: !411, line: 77, column: 7)
!429 = !DILocalVariable(name: "g", scope: !427, file: !411, line: 82, type: !421)
!430 = !DILocalVariable(name: "last_n_groups", scope: !431, file: !411, line: 88, type: !25)
!431 = distinct !DILexicalBlock(scope: !427, file: !411, line: 87, column: 9)
!432 = !DILocalVariable(name: "ng", scope: !431, file: !411, line: 91, type: !25)
!433 = !DILocalVariable(name: "h", scope: !431, file: !411, line: 98, type: !421)
!434 = !DILocalVariable(name: "max_n_groups", scope: !414, file: !411, line: 118, type: !25)
!435 = !DILocalVariable(name: "g", scope: !436, file: !411, line: 129, type: !421)
!436 = distinct !DILexicalBlock(scope: !437, file: !411, line: 128, column: 9)
!437 = distinct !DILexicalBlock(scope: !438, file: !411, line: 127, column: 11)
!438 = distinct !DILexicalBlock(scope: !439, file: !411, line: 126, column: 5)
!439 = distinct !DILexicalBlock(scope: !414, file: !411, line: 125, column: 7)
!440 = !DILocalVariable(name: "g", scope: !414, file: !411, line: 142, type: !421)
!441 = !DILocalVariable(name: "ng", scope: !414, file: !411, line: 146, type: !25)
!442 = !DILocalVariable(name: "first", scope: !443, file: !411, line: 183, type: !417)
!443 = distinct !DILexicalBlock(scope: !444, file: !411, line: 182, column: 5)
!444 = distinct !DILexicalBlock(scope: !414, file: !411, line: 181, column: 7)
!445 = !DILocalVariable(name: "groups_end", scope: !443, file: !411, line: 184, type: !421)
!446 = !DILocalVariable(name: "next", scope: !447, file: !411, line: 186, type: !421)
!447 = distinct !DILexicalBlock(scope: !443, file: !411, line: 186, column: 7)
!448 = !{!449}
!449 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10)
!450 = !{!24, !417}
!451 = distinct !DICompileUnit(language: DW_LANG_C99, file: !452, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !453, splitDebugInlining: false, nameTableKind: None)
!452 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!453 = !{!47, !29, !24}
!454 = distinct !DICompileUnit(language: DW_LANG_C99, file: !455, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!455 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!456 = distinct !DICompileUnit(language: DW_LANG_C99, file: !457, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!457 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!458 = distinct !DICompileUnit(language: DW_LANG_C99, file: !459, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !363, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!460 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!461 = !{i32 7, !"Dwarf Version", i32 5}
!462 = !{i32 2, !"Debug Info Version", i32 3}
!463 = !{i32 1, !"wchar_size", i32 4}
!464 = !{i32 1, !"branch-target-enforcement", i32 0}
!465 = !{i32 1, !"sign-return-address", i32 0}
!466 = !{i32 1, !"sign-return-address-all", i32 0}
!467 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!468 = !{i32 7, !"PIC Level", i32 2}
!469 = !{i32 7, !"PIE Level", i32 2}
!470 = !{i32 7, !"uwtable", i32 1}
!471 = !{i32 7, !"frame-pointer", i32 1}
!472 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 47, type: !473, scopeLine: 48, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !25}
!475 = !{!476}
!476 = !DILocalVariable(name: "status", arg: 1, scope: !472, file: !3, line: 47, type: !25)
!477 = !DILocation(line: 0, scope: !472)
!478 = !DILocation(line: 49, column: 14, scope: !479)
!479 = distinct !DILexicalBlock(scope: !472, file: !3, line: 49, column: 7)
!480 = !DILocation(line: 49, column: 7, scope: !472)
!481 = !DILocation(line: 50, column: 5, scope: !482)
!482 = distinct !DILexicalBlock(scope: !479, file: !3, line: 50, column: 5)
!483 = !{!484, !484, i64 0}
!484 = !{!"any pointer", !485, i64 0}
!485 = !{!"omnipotent char", !486, i64 0}
!486 = !{!"Simple C/C++ TBAA"}
!487 = !DILocation(line: 53, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !479, file: !3, line: 52, column: 5)
!489 = !DILocation(line: 54, column: 7, scope: !488)
!490 = !DILocation(line: 59, column: 7, scope: !488)
!491 = !DILocation(line: 60, column: 7, scope: !488)
!492 = !DILocalVariable(name: "program", arg: 1, scope: !493, file: !37, line: 836, type: !30)
!493 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !37, file: !37, line: 836, type: !494, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !30}
!496 = !{!492, !497, !506, !507, !509, !510}
!497 = !DILocalVariable(name: "infomap", scope: !493, file: !37, line: 838, type: !498)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 896, elements: !504)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !493, file: !37, line: 838, size: 128, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !500, file: !37, line: 838, baseType: !30, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !500, file: !37, line: 838, baseType: !30, size: 64, offset: 64)
!504 = !{!505}
!505 = !DISubrange(count: 7)
!506 = !DILocalVariable(name: "node", scope: !493, file: !37, line: 848, type: !30)
!507 = !DILocalVariable(name: "map_prog", scope: !493, file: !37, line: 849, type: !508)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!509 = !DILocalVariable(name: "lc_messages", scope: !493, file: !37, line: 861, type: !30)
!510 = !DILocalVariable(name: "url_program", scope: !493, file: !37, line: 874, type: !30)
!511 = !DILocation(line: 0, scope: !493, inlinedAt: !512)
!512 = distinct !DILocation(line: 61, column: 7, scope: !488)
!513 = !DILocation(line: 838, column: 3, scope: !493, inlinedAt: !512)
!514 = !DILocation(line: 838, column: 67, scope: !493, inlinedAt: !512)
!515 = !DILocation(line: 849, column: 36, scope: !493, inlinedAt: !512)
!516 = !DILocation(line: 851, column: 3, scope: !493, inlinedAt: !512)
!517 = !DILocalVariable(name: "__s1", arg: 1, scope: !518, file: !519, line: 1359, type: !30)
!518 = distinct !DISubprogram(name: "streq", scope: !519, file: !519, line: 1359, type: !520, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !522)
!519 = !DIFile(filename: "./lib/string.h", directory: "/src")
!520 = !DISubroutineType(types: !521)
!521 = !{!47, !30, !30}
!522 = !{!517, !523}
!523 = !DILocalVariable(name: "__s2", arg: 2, scope: !518, file: !519, line: 1359, type: !30)
!524 = !DILocation(line: 0, scope: !518, inlinedAt: !525)
!525 = distinct !DILocation(line: 851, column: 33, scope: !493, inlinedAt: !512)
!526 = !DILocation(line: 1361, column: 11, scope: !518, inlinedAt: !525)
!527 = !DILocation(line: 1361, column: 10, scope: !518, inlinedAt: !525)
!528 = !DILocation(line: 852, column: 13, scope: !493, inlinedAt: !512)
!529 = !DILocation(line: 851, column: 20, scope: !493, inlinedAt: !512)
!530 = !{!531, !484, i64 0}
!531 = !{!"infomap", !484, i64 0, !484, i64 8}
!532 = !DILocation(line: 851, column: 10, scope: !493, inlinedAt: !512)
!533 = !DILocation(line: 851, column: 28, scope: !493, inlinedAt: !512)
!534 = distinct !{!534, !516, !528, !535}
!535 = !{!"llvm.loop.mustprogress"}
!536 = !DILocation(line: 854, column: 17, scope: !537, inlinedAt: !512)
!537 = distinct !DILexicalBlock(scope: !493, file: !37, line: 854, column: 7)
!538 = !{!531, !484, i64 8}
!539 = !DILocation(line: 854, column: 7, scope: !537, inlinedAt: !512)
!540 = !DILocation(line: 854, column: 7, scope: !493, inlinedAt: !512)
!541 = !DILocation(line: 857, column: 3, scope: !493, inlinedAt: !512)
!542 = !DILocation(line: 861, column: 29, scope: !493, inlinedAt: !512)
!543 = !DILocation(line: 862, column: 7, scope: !544, inlinedAt: !512)
!544 = distinct !DILexicalBlock(scope: !493, file: !37, line: 862, column: 7)
!545 = !DILocation(line: 862, column: 19, scope: !544, inlinedAt: !512)
!546 = !DILocation(line: 862, column: 22, scope: !544, inlinedAt: !512)
!547 = !DILocation(line: 862, column: 7, scope: !493, inlinedAt: !512)
!548 = !DILocation(line: 868, column: 7, scope: !549, inlinedAt: !512)
!549 = distinct !DILexicalBlock(scope: !544, file: !37, line: 863, column: 5)
!550 = !DILocation(line: 870, column: 5, scope: !549, inlinedAt: !512)
!551 = !DILocation(line: 0, scope: !518, inlinedAt: !552)
!552 = distinct !DILocation(line: 874, column: 29, scope: !493, inlinedAt: !512)
!553 = !DILocation(line: 875, column: 3, scope: !493, inlinedAt: !512)
!554 = !DILocation(line: 877, column: 3, scope: !493, inlinedAt: !512)
!555 = !DILocation(line: 879, column: 1, scope: !493, inlinedAt: !512)
!556 = !DILocation(line: 63, column: 3, scope: !472)
!557 = !DISubprogram(name: "dcgettext", scope: !558, file: !558, line: 51, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!558 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!559 = !DISubroutineType(types: !560)
!560 = !{!22, !30, !30, !25}
!561 = !{}
!562 = !DISubprogram(name: "fputs_unlocked", scope: !157, file: !157, line: 691, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!563 = !DISubroutineType(types: !564)
!564 = !{!25, !565, !566}
!565 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!566 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!567 = !DILocation(line: 0, scope: !36)
!568 = !DILocation(line: 581, column: 7, scope: !45)
!569 = !{!570, !570, i64 0}
!570 = !{!"int", !485, i64 0}
!571 = !DILocation(line: 581, column: 19, scope: !45)
!572 = !DILocation(line: 581, column: 7, scope: !36)
!573 = !DILocation(line: 585, column: 26, scope: !44)
!574 = !DILocation(line: 0, scope: !44)
!575 = !DILocation(line: 586, column: 23, scope: !44)
!576 = !DILocation(line: 586, column: 28, scope: !44)
!577 = !DILocation(line: 586, column: 32, scope: !44)
!578 = !{!485, !485, i64 0}
!579 = !DILocation(line: 586, column: 38, scope: !44)
!580 = !DILocation(line: 0, scope: !518, inlinedAt: !581)
!581 = distinct !DILocation(line: 586, column: 41, scope: !44)
!582 = !DILocation(line: 1361, column: 11, scope: !518, inlinedAt: !581)
!583 = !DILocation(line: 1361, column: 10, scope: !518, inlinedAt: !581)
!584 = !DILocation(line: 586, column: 19, scope: !44)
!585 = !DILocation(line: 587, column: 5, scope: !44)
!586 = !DILocation(line: 588, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !36, file: !37, line: 588, column: 7)
!588 = !DILocation(line: 588, column: 7, scope: !36)
!589 = !DILocation(line: 590, column: 7, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !37, line: 589, column: 5)
!591 = !DILocation(line: 591, column: 7, scope: !590)
!592 = !DILocation(line: 595, column: 37, scope: !36)
!593 = !DILocation(line: 595, column: 35, scope: !36)
!594 = !DILocation(line: 596, column: 29, scope: !36)
!595 = !DILocation(line: 597, column: 8, scope: !53)
!596 = !DILocation(line: 597, column: 7, scope: !36)
!597 = !DILocation(line: 604, column: 24, scope: !52)
!598 = !DILocation(line: 604, column: 12, scope: !53)
!599 = !DILocation(line: 0, scope: !51)
!600 = !DILocation(line: 610, column: 16, scope: !51)
!601 = !DILocation(line: 610, column: 7, scope: !51)
!602 = !DILocation(line: 611, column: 21, scope: !51)
!603 = !{!604, !604, i64 0}
!604 = !{!"short", !485, i64 0}
!605 = !DILocation(line: 611, column: 19, scope: !51)
!606 = !DILocation(line: 611, column: 16, scope: !51)
!607 = !DILocation(line: 610, column: 30, scope: !51)
!608 = distinct !{!608, !601, !602, !535}
!609 = !DILocation(line: 612, column: 18, scope: !610)
!610 = distinct !DILexicalBlock(scope: !51, file: !37, line: 612, column: 11)
!611 = !DILocation(line: 612, column: 11, scope: !51)
!612 = !DILocation(line: 620, column: 23, scope: !36)
!613 = !DILocation(line: 625, column: 39, scope: !36)
!614 = !DILocation(line: 626, column: 3, scope: !36)
!615 = !DILocation(line: 626, column: 10, scope: !36)
!616 = !DILocation(line: 626, column: 21, scope: !36)
!617 = !DILocation(line: 628, column: 44, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !37, line: 628, column: 11)
!619 = distinct !DILexicalBlock(scope: !36, file: !37, line: 627, column: 5)
!620 = !DILocation(line: 628, column: 32, scope: !618)
!621 = !DILocation(line: 628, column: 49, scope: !618)
!622 = !DILocation(line: 628, column: 11, scope: !619)
!623 = !DILocation(line: 630, column: 11, scope: !624)
!624 = distinct !DILexicalBlock(scope: !619, file: !37, line: 630, column: 11)
!625 = !DILocation(line: 630, column: 11, scope: !619)
!626 = !DILocation(line: 632, column: 26, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !37, line: 632, column: 15)
!628 = distinct !DILexicalBlock(scope: !624, file: !37, line: 631, column: 9)
!629 = !DILocation(line: 632, column: 34, scope: !627)
!630 = !DILocation(line: 632, column: 37, scope: !627)
!631 = !DILocation(line: 632, column: 15, scope: !628)
!632 = !DILocation(line: 636, column: 29, scope: !633)
!633 = distinct !DILexicalBlock(scope: !628, file: !37, line: 636, column: 15)
!634 = !DILocation(line: 640, column: 16, scope: !619)
!635 = distinct !{!635, !614, !636, !535}
!636 = !DILocation(line: 641, column: 5, scope: !36)
!637 = !DILocation(line: 644, column: 3, scope: !36)
!638 = !DILocation(line: 0, scope: !518, inlinedAt: !639)
!639 = distinct !DILocation(line: 648, column: 31, scope: !36)
!640 = !DILocation(line: 0, scope: !518, inlinedAt: !641)
!641 = distinct !DILocation(line: 649, column: 31, scope: !36)
!642 = !DILocation(line: 0, scope: !518, inlinedAt: !643)
!643 = distinct !DILocation(line: 650, column: 31, scope: !36)
!644 = !DILocation(line: 0, scope: !518, inlinedAt: !645)
!645 = distinct !DILocation(line: 651, column: 31, scope: !36)
!646 = !DILocation(line: 0, scope: !518, inlinedAt: !647)
!647 = distinct !DILocation(line: 652, column: 31, scope: !36)
!648 = !DILocation(line: 0, scope: !518, inlinedAt: !649)
!649 = distinct !DILocation(line: 653, column: 31, scope: !36)
!650 = !DILocation(line: 0, scope: !518, inlinedAt: !651)
!651 = distinct !DILocation(line: 654, column: 31, scope: !36)
!652 = !DILocation(line: 0, scope: !518, inlinedAt: !653)
!653 = distinct !DILocation(line: 655, column: 31, scope: !36)
!654 = !DILocation(line: 0, scope: !518, inlinedAt: !655)
!655 = distinct !DILocation(line: 656, column: 31, scope: !36)
!656 = !DILocation(line: 0, scope: !518, inlinedAt: !657)
!657 = distinct !DILocation(line: 657, column: 31, scope: !36)
!658 = !DILocation(line: 663, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !36, file: !37, line: 663, column: 7)
!660 = !DILocation(line: 664, column: 7, scope: !659)
!661 = !DILocation(line: 664, column: 10, scope: !659)
!662 = !DILocation(line: 663, column: 7, scope: !36)
!663 = !DILocation(line: 669, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !37, line: 665, column: 5)
!665 = !DILocation(line: 671, column: 5, scope: !664)
!666 = !DILocation(line: 676, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !659, file: !37, line: 673, column: 5)
!668 = !DILocation(line: 679, column: 3, scope: !36)
!669 = !DILocation(line: 683, column: 3, scope: !36)
!670 = !DILocation(line: 686, column: 3, scope: !36)
!671 = !DILocation(line: 688, column: 3, scope: !36)
!672 = !DILocation(line: 691, column: 3, scope: !36)
!673 = !DILocation(line: 695, column: 3, scope: !36)
!674 = !DILocation(line: 696, column: 1, scope: !36)
!675 = !DISubprogram(name: "setlocale", scope: !676, file: !676, line: 122, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!676 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!677 = !DISubroutineType(types: !678)
!678 = !{!22, !25, !30}
!679 = !DISubprogram(name: "getenv", scope: !680, file: !680, line: 641, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!680 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!681 = !DISubroutineType(types: !682)
!682 = !{!22, !30}
!683 = !DISubprogram(name: "fwrite_unlocked", scope: !157, file: !157, line: 704, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!684 = !DISubroutineType(types: !685)
!685 = !{!27, !686, !27, !27, !566}
!686 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!689 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 67, type: !690, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !693)
!690 = !DISubroutineType(types: !691)
!691 = !{!25, !25, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!693 = !{!694, !695, !696, !697, !698, !703, !704, !705, !706, !707, !723, !724, !725}
!694 = !DILocalVariable(name: "argc", arg: 1, scope: !689, file: !3, line: 67, type: !25)
!695 = !DILocalVariable(name: "argv", arg: 2, scope: !689, file: !3, line: 67, type: !692)
!696 = !DILocalVariable(name: "optc", scope: !689, file: !3, line: 79, type: !25)
!697 = !DILocalVariable(name: "ok", scope: !689, file: !3, line: 91, type: !47)
!698 = !DILocalVariable(name: "NO_UID", scope: !699, file: !3, line: 95, type: !701)
!699 = distinct !DILexicalBlock(scope: !700, file: !3, line: 93, column: 5)
!700 = distinct !DILexicalBlock(scope: !689, file: !3, line: 92, column: 7)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !418, line: 79, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !87, line: 146, baseType: !7)
!703 = !DILocalVariable(name: "NO_GID", scope: !699, file: !3, line: 96, type: !417)
!704 = !DILocalVariable(name: "ruid", scope: !699, file: !3, line: 99, type: !701)
!705 = !DILocalVariable(name: "egid", scope: !699, file: !3, line: 104, type: !417)
!706 = !DILocalVariable(name: "rgid", scope: !699, file: !3, line: 109, type: !417)
!707 = !DILocalVariable(name: "pwd", scope: !708, file: !3, line: 122, type: !712)
!708 = distinct !DILexicalBlock(scope: !709, file: !3, line: 121, column: 9)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 120, column: 7)
!710 = distinct !DILexicalBlock(scope: !711, file: !3, line: 120, column: 7)
!711 = distinct !DILexicalBlock(scope: !700, file: !3, line: 118, column: 5)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !714, line: 49, size: 384, elements: !715)
!714 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!715 = !{!716, !717, !718, !719, !720, !721, !722}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !713, file: !714, line: 51, baseType: !22, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !713, file: !714, line: 52, baseType: !22, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !713, file: !714, line: 54, baseType: !702, size: 32, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !713, file: !714, line: 55, baseType: !419, size: 32, offset: 160)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !713, file: !714, line: 56, baseType: !22, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !713, file: !714, line: 57, baseType: !22, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !713, file: !714, line: 58, baseType: !22, size: 64, offset: 320)
!723 = !DILocalVariable(name: "ruid", scope: !708, file: !3, line: 129, type: !701)
!724 = !DILocalVariable(name: "rgid", scope: !708, file: !3, line: 130, type: !417)
!725 = !DILocalVariable(name: "egid", scope: !708, file: !3, line: 131, type: !417)
!726 = !DILocation(line: 0, scope: !689)
!727 = !DILocation(line: 70, column: 21, scope: !689)
!728 = !DILocation(line: 70, column: 3, scope: !689)
!729 = !DILocation(line: 71, column: 3, scope: !689)
!730 = !DILocation(line: 72, column: 3, scope: !689)
!731 = !DILocation(line: 73, column: 3, scope: !689)
!732 = !DILocation(line: 75, column: 3, scope: !689)
!733 = !DILocation(line: 80, column: 18, scope: !689)
!734 = !DILocation(line: 80, column: 3, scope: !689)
!735 = !DILocation(line: 84, column: 9, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 83, column: 9)
!737 = distinct !DILexicalBlock(scope: !689, file: !3, line: 81, column: 5)
!738 = !DILocation(line: 85, column: 9, scope: !736)
!739 = !DILocation(line: 87, column: 11, scope: !736)
!740 = !DILocation(line: 92, column: 7, scope: !700)
!741 = !DILocation(line: 92, column: 14, scope: !700)
!742 = !DILocation(line: 92, column: 7, scope: !689)
!743 = !DILocation(line: 120, column: 22, scope: !709)
!744 = !DILocation(line: 120, column: 7, scope: !710)
!745 = !DILocation(line: 0, scope: !699)
!746 = !DILocation(line: 98, column: 7, scope: !699)
!747 = !DILocation(line: 98, column: 13, scope: !699)
!748 = !DILocation(line: 99, column: 20, scope: !699)
!749 = !DILocation(line: 100, column: 16, scope: !750)
!750 = distinct !DILexicalBlock(scope: !699, file: !3, line: 100, column: 11)
!751 = !DILocation(line: 100, column: 26, scope: !750)
!752 = !DILocation(line: 100, column: 29, scope: !750)
!753 = !DILocation(line: 100, column: 11, scope: !699)
!754 = !DILocation(line: 101, column: 9, scope: !750)
!755 = !DILocation(line: 103, column: 13, scope: !699)
!756 = !DILocation(line: 104, column: 20, scope: !699)
!757 = !DILocation(line: 105, column: 16, scope: !758)
!758 = distinct !DILexicalBlock(scope: !699, file: !3, line: 105, column: 11)
!759 = !DILocation(line: 105, column: 26, scope: !758)
!760 = !DILocation(line: 105, column: 29, scope: !758)
!761 = !DILocation(line: 105, column: 11, scope: !699)
!762 = !DILocation(line: 106, column: 9, scope: !758)
!763 = !DILocation(line: 108, column: 13, scope: !699)
!764 = !DILocation(line: 109, column: 20, scope: !699)
!765 = !DILocation(line: 110, column: 16, scope: !766)
!766 = distinct !DILexicalBlock(scope: !699, file: !3, line: 110, column: 11)
!767 = !DILocation(line: 110, column: 26, scope: !766)
!768 = !DILocation(line: 110, column: 29, scope: !766)
!769 = !DILocation(line: 110, column: 11, scope: !699)
!770 = !DILocation(line: 111, column: 9, scope: !766)
!771 = !DILocation(line: 113, column: 12, scope: !772)
!772 = distinct !DILexicalBlock(scope: !699, file: !3, line: 113, column: 11)
!773 = !DILocalVariable(name: "__c", arg: 1, scope: !774, file: !775, line: 108, type: !25)
!774 = distinct !DISubprogram(name: "putchar_unlocked", scope: !775, file: !775, line: 108, type: !776, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !778)
!775 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!776 = !DISubroutineType(types: !777)
!777 = !{!25, !25}
!778 = !{!773}
!779 = !DILocation(line: 0, scope: !774, inlinedAt: !780)
!780 = distinct !DILocation(line: 115, column: 7, scope: !699)
!781 = !DILocation(line: 110, column: 10, scope: !774, inlinedAt: !780)
!782 = !{!783, !484, i64 40}
!783 = !{!"_IO_FILE", !570, i64 0, !484, i64 8, !484, i64 16, !484, i64 24, !484, i64 32, !484, i64 40, !484, i64 48, !484, i64 56, !484, i64 64, !484, i64 72, !484, i64 80, !484, i64 88, !484, i64 96, !484, i64 104, !570, i64 112, !570, i64 116, !784, i64 120, !604, i64 128, !485, i64 130, !485, i64 131, !484, i64 136, !784, i64 144, !484, i64 152, !484, i64 160, !484, i64 168, !484, i64 176, !784, i64 184, !570, i64 192, !485, i64 196}
!784 = !{!"long", !485, i64 0}
!785 = !{!783, !484, i64 48}
!786 = !{!"branch_weights", i32 2000, i32 1}
!787 = !DILocation(line: 122, column: 42, scope: !708)
!788 = !DILocation(line: 122, column: 32, scope: !708)
!789 = !DILocation(line: 0, scope: !708)
!790 = !DILocation(line: 123, column: 19, scope: !791)
!791 = distinct !DILexicalBlock(scope: !708, file: !3, line: 123, column: 15)
!792 = !DILocation(line: 123, column: 15, scope: !708)
!793 = !DILocation(line: 125, column: 15, scope: !794)
!794 = distinct !DILexicalBlock(scope: !791, file: !3, line: 124, column: 13)
!795 = !DILocation(line: 127, column: 15, scope: !794)
!796 = !DILocation(line: 129, column: 29, scope: !708)
!797 = !{!798, !570, i64 16}
!798 = !{!"passwd", !484, i64 0, !484, i64 8, !570, i64 16, !570, i64 20, !484, i64 24, !484, i64 32, !484, i64 40}
!799 = !DILocation(line: 130, column: 29, scope: !708)
!800 = !{!798, !570, i64 20}
!801 = !DILocation(line: 133, column: 11, scope: !708)
!802 = !DILocation(line: 134, column: 39, scope: !803)
!803 = distinct !DILexicalBlock(scope: !708, file: !3, line: 134, column: 15)
!804 = !DILocation(line: 134, column: 34, scope: !803)
!805 = !DILocation(line: 134, column: 16, scope: !803)
!806 = !DILocation(line: 134, column: 15, scope: !708)
!807 = !DILocation(line: 0, scope: !774, inlinedAt: !808)
!808 = distinct !DILocation(line: 136, column: 11, scope: !708)
!809 = !DILocation(line: 110, column: 10, scope: !774, inlinedAt: !808)
!810 = !DILocation(line: 138, column: 15, scope: !811)
!811 = distinct !DILexicalBlock(scope: !708, file: !3, line: 138, column: 15)
!812 = !DILocalVariable(name: "__stream", arg: 1, scope: !813, file: !775, line: 135, type: !60)
!813 = distinct !DISubprogram(name: "ferror_unlocked", scope: !775, file: !775, line: 135, type: !814, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{!25, !60}
!816 = !{!812}
!817 = !DILocation(line: 0, scope: !813, inlinedAt: !818)
!818 = distinct !DILocation(line: 138, column: 15, scope: !811)
!819 = !DILocation(line: 137, column: 10, scope: !813, inlinedAt: !818)
!820 = !{!783, !570, i64 0}
!821 = !DILocation(line: 138, column: 15, scope: !708)
!822 = !DILocation(line: 948, column: 21, scope: !823, inlinedAt: !826)
!823 = distinct !DISubprogram(name: "write_error", scope: !37, file: !37, line: 946, type: !184, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !824)
!824 = !{!825}
!825 = !DILocalVariable(name: "saved_errno", scope: !823, file: !37, line: 948, type: !25)
!826 = distinct !DILocation(line: 139, column: 13, scope: !811)
!827 = !DILocation(line: 0, scope: !823, inlinedAt: !826)
!828 = !DILocation(line: 949, column: 3, scope: !823, inlinedAt: !826)
!829 = !DILocation(line: 950, column: 11, scope: !823, inlinedAt: !826)
!830 = !DILocation(line: 950, column: 3, scope: !823, inlinedAt: !826)
!831 = !DILocation(line: 951, column: 3, scope: !823, inlinedAt: !826)
!832 = !DILocation(line: 952, column: 3, scope: !823, inlinedAt: !826)
!833 = !DILocation(line: 120, column: 36, scope: !709)
!834 = distinct !{!834, !744, !835, !535}
!835 = !DILocation(line: 140, column: 9, scope: !710)
!836 = !DILocation(line: 143, column: 10, scope: !689)
!837 = !DILocation(line: 144, column: 1, scope: !689)
!838 = !DISubprogram(name: "bindtextdomain", scope: !558, file: !558, line: 86, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!839 = !DISubroutineType(types: !840)
!840 = !{!22, !30, !30}
!841 = !DISubprogram(name: "textdomain", scope: !558, file: !558, line: 82, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!842 = !DISubprogram(name: "atexit", scope: !680, file: !680, line: 602, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!843 = !DISubroutineType(types: !844)
!844 = !{!25, !183}
!845 = !DISubprogram(name: "getopt_long", scope: !124, file: !124, line: 66, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!846 = !DISubroutineType(types: !847)
!847 = !{!25, !25, !848, !30, !850, !129}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!851 = !DISubprogram(name: "getuid", scope: !852, file: !852, line: 697, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!852 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!853 = !DISubroutineType(types: !854)
!854 = !{!702}
!855 = !DISubprogram(name: "getegid", scope: !852, file: !852, line: 706, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!856 = !DISubroutineType(types: !857)
!857 = !{!419}
!858 = !DISubprogram(name: "getgid", scope: !852, file: !852, line: 703, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!859 = !DISubprogram(name: "getpwnam", scope: !714, file: !714, line: 116, type: !860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!860 = !DISubroutineType(types: !861)
!861 = !{!712, !30}
!862 = !DISubprogram(name: "fflush_unlocked", scope: !157, file: !157, line: 239, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!863 = !DISubprogram(name: "clearerr_unlocked", scope: !157, file: !157, line: 794, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !60}
!866 = distinct !DISubprogram(name: "print_group_list", scope: !348, file: !348, line: 35, type: !867, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !347, retainedNodes: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{!47, !30, !701, !417, !417, !47, !23}
!869 = !{!870, !871, !872, !873, !874, !875, !876, !877, !888, !890, !891}
!870 = !DILocalVariable(name: "username", arg: 1, scope: !866, file: !348, line: 35, type: !30)
!871 = !DILocalVariable(name: "ruid", arg: 2, scope: !866, file: !348, line: 36, type: !701)
!872 = !DILocalVariable(name: "rgid", arg: 3, scope: !866, file: !348, line: 36, type: !417)
!873 = !DILocalVariable(name: "egid", arg: 4, scope: !866, file: !348, line: 36, type: !417)
!874 = !DILocalVariable(name: "use_names", arg: 5, scope: !866, file: !348, line: 37, type: !47)
!875 = !DILocalVariable(name: "delim", arg: 6, scope: !866, file: !348, line: 37, type: !23)
!876 = !DILocalVariable(name: "ok", scope: !866, file: !348, line: 39, type: !47)
!877 = !DILocalVariable(name: "pwd", scope: !866, file: !348, line: 40, type: !878)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !714, line: 49, size: 384, elements: !880)
!880 = !{!881, !882, !883, !884, !885, !886, !887}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !879, file: !714, line: 51, baseType: !22, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !879, file: !714, line: 52, baseType: !22, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !879, file: !714, line: 54, baseType: !702, size: 32, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !879, file: !714, line: 55, baseType: !419, size: 32, offset: 160)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !879, file: !714, line: 56, baseType: !22, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !879, file: !714, line: 57, baseType: !22, size: 64, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !879, file: !714, line: 58, baseType: !22, size: 64, offset: 320)
!888 = !DILocalVariable(name: "groups", scope: !889, file: !348, line: 60, type: !421)
!889 = distinct !DILexicalBlock(scope: !866, file: !348, line: 59, column: 3)
!890 = !DILocalVariable(name: "n_groups", scope: !889, file: !348, line: 62, type: !25)
!891 = !DILocalVariable(name: "i", scope: !892, file: !348, line: 77, type: !25)
!892 = distinct !DILexicalBlock(scope: !889, file: !348, line: 77, column: 5)
!893 = !DILocation(line: 0, scope: !866)
!894 = !DILocation(line: 42, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !866, file: !348, line: 42, column: 7)
!896 = !DILocation(line: 42, column: 7, scope: !866)
!897 = !DILocation(line: 44, column: 13, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !348, line: 43, column: 5)
!899 = !DILocation(line: 45, column: 15, scope: !900)
!900 = distinct !DILexicalBlock(scope: !898, file: !348, line: 45, column: 11)
!901 = !DILocation(line: 45, column: 11, scope: !898)
!902 = !DILocalVariable(name: "gid", arg: 1, scope: !903, file: !348, line: 91, type: !417)
!903 = distinct !DISubprogram(name: "print_group", scope: !348, file: !348, line: 91, type: !904, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !347, retainedNodes: !906)
!904 = !DISubroutineType(types: !905)
!905 = !{!47, !417, !47}
!906 = !{!902, !907, !908, !917, !918}
!907 = !DILocalVariable(name: "use_name", arg: 2, scope: !903, file: !348, line: 91, type: !47)
!908 = !DILocalVariable(name: "grp", scope: !903, file: !348, line: 93, type: !909)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !911, line: 42, size: 256, elements: !912)
!911 = !DIFile(filename: "/usr/include/grp.h", directory: "", checksumkind: CSK_MD5, checksum: "17838c4acd24e08e5bed6821e9e2c084")
!912 = !{!913, !914, !915, !916}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !910, file: !911, line: 44, baseType: !22, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !910, file: !911, line: 45, baseType: !22, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !910, file: !911, line: 46, baseType: !419, size: 32, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !910, file: !911, line: 47, baseType: !692, size: 64, offset: 192)
!917 = !DILocalVariable(name: "ok", scope: !903, file: !348, line: 94, type: !47)
!918 = !DILocalVariable(name: "g", scope: !919, file: !348, line: 108, type: !350)
!919 = distinct !DILexicalBlock(scope: !920, file: !348, line: 107, column: 13)
!920 = distinct !DILexicalBlock(scope: !921, file: !348, line: 101, column: 15)
!921 = distinct !DILexicalBlock(scope: !922, file: !348, line: 100, column: 9)
!922 = distinct !DILexicalBlock(scope: !923, file: !348, line: 99, column: 11)
!923 = distinct !DILexicalBlock(scope: !924, file: !348, line: 97, column: 5)
!924 = distinct !DILexicalBlock(scope: !903, file: !348, line: 96, column: 7)
!925 = !DILocation(line: 0, scope: !903, inlinedAt: !926)
!926 = distinct !DILocation(line: 49, column: 8, scope: !927)
!927 = distinct !DILexicalBlock(scope: !866, file: !348, line: 49, column: 7)
!928 = !DILocation(line: 96, column: 7, scope: !903, inlinedAt: !926)
!929 = !DILocation(line: 118, column: 5, scope: !930, inlinedAt: !926)
!930 = distinct !DILexicalBlock(scope: !903, file: !348, line: 115, column: 7)
!931 = !DILocation(line: 98, column: 13, scope: !923, inlinedAt: !926)
!932 = !DILocation(line: 99, column: 15, scope: !922, inlinedAt: !926)
!933 = !DILocation(line: 99, column: 11, scope: !923, inlinedAt: !926)
!934 = !DILocation(line: 108, column: 29, scope: !919, inlinedAt: !926)
!935 = !DILocation(line: 0, scope: !919, inlinedAt: !926)
!936 = !DILocation(line: 109, column: 15, scope: !919, inlinedAt: !926)
!937 = !DILocation(line: 112, column: 9, scope: !921, inlinedAt: !926)
!938 = !DILocation(line: 116, column: 5, scope: !930, inlinedAt: !926)
!939 = !{!940, !484, i64 0}
!940 = !{!"group", !484, i64 0, !484, i64 8, !570, i64 16, !484, i64 24}
!941 = !DILocation(line: 52, column: 12, scope: !942)
!942 = distinct !DILexicalBlock(scope: !866, file: !348, line: 52, column: 7)
!943 = !DILocation(line: 52, column: 7, scope: !866)
!944 = !DILocalVariable(name: "__c", arg: 1, scope: !945, file: !775, line: 108, type: !25)
!945 = distinct !DISubprogram(name: "putchar_unlocked", scope: !775, file: !775, line: 108, type: !776, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !347, retainedNodes: !946)
!946 = !{!944}
!947 = !DILocation(line: 0, scope: !945, inlinedAt: !948)
!948 = distinct !DILocation(line: 54, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !942, file: !348, line: 53, column: 5)
!950 = !DILocation(line: 110, column: 10, scope: !945, inlinedAt: !948)
!951 = !DILocation(line: 54, column: 7, scope: !949)
!952 = !DILocation(line: 0, scope: !903, inlinedAt: !953)
!953 = distinct !DILocation(line: 55, column: 12, scope: !954)
!954 = distinct !DILexicalBlock(scope: !949, file: !348, line: 55, column: 11)
!955 = !DILocation(line: 96, column: 7, scope: !903, inlinedAt: !953)
!956 = !DILocation(line: 118, column: 5, scope: !930, inlinedAt: !953)
!957 = !DILocation(line: 98, column: 13, scope: !923, inlinedAt: !953)
!958 = !DILocation(line: 99, column: 15, scope: !922, inlinedAt: !953)
!959 = !DILocation(line: 99, column: 11, scope: !923, inlinedAt: !953)
!960 = !DILocation(line: 108, column: 29, scope: !919, inlinedAt: !953)
!961 = !DILocation(line: 0, scope: !919, inlinedAt: !953)
!962 = !DILocation(line: 109, column: 15, scope: !919, inlinedAt: !953)
!963 = !DILocation(line: 112, column: 9, scope: !921, inlinedAt: !953)
!964 = !DILocation(line: 116, column: 5, scope: !930, inlinedAt: !953)
!965 = !DILocation(line: 60, column: 5, scope: !889)
!966 = !DILocation(line: 62, column: 43, scope: !889)
!967 = !DILocation(line: 62, column: 54, scope: !889)
!968 = !DILocation(line: 0, scope: !889)
!969 = !DILocation(line: 62, column: 20, scope: !889)
!970 = !DILocation(line: 63, column: 18, scope: !971)
!971 = distinct !DILexicalBlock(scope: !889, file: !348, line: 63, column: 9)
!972 = !DILocation(line: 63, column: 9, scope: !889)
!973 = !DILocation(line: 0, scope: !892)
!974 = !DILocation(line: 77, column: 23, scope: !975)
!975 = distinct !DILexicalBlock(scope: !892, file: !348, line: 77, column: 5)
!976 = !DILocation(line: 77, column: 5, scope: !892)
!977 = !DILocation(line: 96, column: 7, scope: !903, inlinedAt: !978)
!978 = distinct !DILocation(line: 81, column: 16, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !348, line: 81, column: 15)
!980 = distinct !DILexicalBlock(scope: !981, file: !348, line: 79, column: 9)
!981 = distinct !DILexicalBlock(scope: !975, file: !348, line: 78, column: 11)
!982 = !DILocation(line: 78, column: 11, scope: !981)
!983 = !DILocation(line: 78, column: 21, scope: !981)
!984 = !DILocation(line: 78, column: 29, scope: !981)
!985 = !DILocation(line: 0, scope: !945, inlinedAt: !986)
!986 = distinct !DILocation(line: 80, column: 11, scope: !980)
!987 = !DILocation(line: 110, column: 10, scope: !945, inlinedAt: !986)
!988 = !DILocation(line: 81, column: 29, scope: !979)
!989 = !DILocation(line: 0, scope: !903, inlinedAt: !978)
!990 = !DILocation(line: 98, column: 13, scope: !923, inlinedAt: !978)
!991 = !DILocation(line: 99, column: 15, scope: !922, inlinedAt: !978)
!992 = !DILocation(line: 99, column: 11, scope: !923, inlinedAt: !978)
!993 = !DILocation(line: 116, column: 5, scope: !930, inlinedAt: !978)
!994 = !DILocation(line: 108, column: 29, scope: !919, inlinedAt: !978)
!995 = !DILocation(line: 0, scope: !919, inlinedAt: !978)
!996 = !DILocation(line: 109, column: 15, scope: !919, inlinedAt: !978)
!997 = !DILocation(line: 118, column: 5, scope: !930, inlinedAt: !978)
!998 = !DILocation(line: 81, column: 15, scope: !980)
!999 = !DILocation(line: 77, column: 36, scope: !975)
!1000 = distinct !{!1000, !976, !1001, !535}
!1001 = !DILocation(line: 83, column: 9, scope: !892)
!1002 = !DILocation(line: 0, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !348, line: 65, column: 13)
!1004 = distinct !DILexicalBlock(scope: !971, file: !348, line: 64, column: 7)
!1005 = !DILocation(line: 65, column: 13, scope: !1004)
!1006 = !DILocation(line: 67, column: 13, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !348, line: 66, column: 11)
!1008 = !DILocation(line: 69, column: 11, scope: !1007)
!1009 = !DILocation(line: 72, column: 13, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1003, file: !348, line: 71, column: 11)
!1011 = !DILocation(line: 84, column: 11, scope: !889)
!1012 = !DILocation(line: 84, column: 5, scope: !889)
!1013 = !DILocation(line: 85, column: 3, scope: !866)
!1014 = !DILocation(line: 87, column: 1, scope: !866)
!1015 = !DISubprogram(name: "getpwuid", scope: !714, file: !714, line: 110, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!878, !702}
!1018 = !DISubprogram(name: "getgrgid", scope: !911, file: !911, line: 101, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!909, !419}
!1021 = !DILocation(line: 0, scope: !903)
!1022 = !DILocation(line: 96, column: 7, scope: !903)
!1023 = !DILocation(line: 118, column: 5, scope: !930)
!1024 = !DILocation(line: 98, column: 13, scope: !923)
!1025 = !DILocation(line: 99, column: 15, scope: !922)
!1026 = !DILocation(line: 99, column: 11, scope: !923)
!1027 = !DILocation(line: 108, column: 29, scope: !919)
!1028 = !DILocation(line: 0, scope: !919)
!1029 = !DILocation(line: 109, column: 15, scope: !919)
!1030 = !DILocation(line: 112, column: 9, scope: !921)
!1031 = !DILocation(line: 116, column: 5, scope: !930)
!1032 = !DILocation(line: 119, column: 3, scope: !903)
!1033 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !141, file: !141, line: 50, type: !494, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1034)
!1034 = !{!1035}
!1035 = !DILocalVariable(name: "file", arg: 1, scope: !1033, file: !141, line: 50, type: !30)
!1036 = !DILocation(line: 0, scope: !1033)
!1037 = !DILocation(line: 52, column: 13, scope: !1033)
!1038 = !DILocation(line: 53, column: 1, scope: !1033)
!1039 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !141, file: !141, line: 87, type: !1040, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !47}
!1042 = !{!1043}
!1043 = !DILocalVariable(name: "ignore", arg: 1, scope: !1039, file: !141, line: 87, type: !47)
!1044 = !DILocation(line: 0, scope: !1039)
!1045 = !DILocation(line: 89, column: 16, scope: !1039)
!1046 = !{!1047, !1047, i64 0}
!1047 = !{!"_Bool", !485, i64 0}
!1048 = !DILocation(line: 90, column: 1, scope: !1039)
!1049 = distinct !DISubprogram(name: "close_stdout", scope: !141, file: !141, line: 116, type: !184, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1050)
!1050 = !{!1051}
!1051 = !DILocalVariable(name: "write_error", scope: !1052, file: !141, line: 121, type: !30)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !141, line: 120, column: 5)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !141, line: 118, column: 7)
!1054 = !DILocation(line: 118, column: 21, scope: !1053)
!1055 = !DILocation(line: 118, column: 7, scope: !1053)
!1056 = !DILocation(line: 118, column: 29, scope: !1053)
!1057 = !DILocation(line: 119, column: 7, scope: !1053)
!1058 = !DILocation(line: 119, column: 12, scope: !1053)
!1059 = !{i8 0, i8 2}
!1060 = !DILocation(line: 119, column: 25, scope: !1053)
!1061 = !DILocation(line: 119, column: 28, scope: !1053)
!1062 = !DILocation(line: 119, column: 34, scope: !1053)
!1063 = !DILocation(line: 118, column: 7, scope: !1049)
!1064 = !DILocation(line: 121, column: 33, scope: !1052)
!1065 = !DILocation(line: 0, scope: !1052)
!1066 = !DILocation(line: 122, column: 11, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1052, file: !141, line: 122, column: 11)
!1068 = !DILocation(line: 0, scope: !1067)
!1069 = !DILocation(line: 122, column: 11, scope: !1052)
!1070 = !DILocation(line: 123, column: 9, scope: !1067)
!1071 = !DILocation(line: 126, column: 9, scope: !1067)
!1072 = !DILocation(line: 128, column: 14, scope: !1052)
!1073 = !DILocation(line: 128, column: 7, scope: !1052)
!1074 = !DILocation(line: 133, column: 42, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1049, file: !141, line: 133, column: 7)
!1076 = !DILocation(line: 133, column: 28, scope: !1075)
!1077 = !DILocation(line: 133, column: 50, scope: !1075)
!1078 = !DILocation(line: 133, column: 7, scope: !1049)
!1079 = !DILocation(line: 134, column: 12, scope: !1075)
!1080 = !DILocation(line: 134, column: 5, scope: !1075)
!1081 = !DILocation(line: 135, column: 1, scope: !1049)
!1082 = distinct !DISubprogram(name: "verror", scope: !148, file: !148, line: 251, type: !1083, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1085)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !25, !25, !30, !156}
!1085 = !{!1086, !1087, !1088, !1089}
!1086 = !DILocalVariable(name: "status", arg: 1, scope: !1082, file: !148, line: 251, type: !25)
!1087 = !DILocalVariable(name: "errnum", arg: 2, scope: !1082, file: !148, line: 251, type: !25)
!1088 = !DILocalVariable(name: "message", arg: 3, scope: !1082, file: !148, line: 251, type: !30)
!1089 = !DILocalVariable(name: "args", arg: 4, scope: !1082, file: !148, line: 251, type: !156)
!1090 = !DILocation(line: 0, scope: !1082)
!1091 = !DILocation(line: 251, column: 1, scope: !1082)
!1092 = !DILocation(line: 261, column: 3, scope: !1082)
!1093 = !DILocation(line: 265, column: 7, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1082, file: !148, line: 265, column: 7)
!1095 = !DILocation(line: 265, column: 7, scope: !1082)
!1096 = !DILocation(line: 266, column: 5, scope: !1094)
!1097 = !DILocation(line: 272, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !148, line: 268, column: 5)
!1099 = !DILocation(line: 276, column: 3, scope: !1082)
!1100 = !{i64 0, i64 8, !483, i64 8, i64 8, !483, i64 16, i64 8, !483, i64 24, i64 4, !569, i64 28, i64 4, !569}
!1101 = !DILocation(line: 282, column: 1, scope: !1082)
!1102 = distinct !DISubprogram(name: "flush_stdout", scope: !148, file: !148, line: 163, type: !184, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1103)
!1103 = !{!1104}
!1104 = !DILocalVariable(name: "stdout_fd", scope: !1102, file: !148, line: 166, type: !25)
!1105 = !DILocation(line: 0, scope: !1102)
!1106 = !DILocalVariable(name: "fd", arg: 1, scope: !1107, file: !148, line: 145, type: !25)
!1107 = distinct !DISubprogram(name: "is_open", scope: !148, file: !148, line: 145, type: !776, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1108)
!1108 = !{!1106}
!1109 = !DILocation(line: 0, scope: !1107, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 182, column: 25, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1102, file: !148, line: 182, column: 7)
!1112 = !DILocation(line: 157, column: 15, scope: !1107, inlinedAt: !1110)
!1113 = !DILocation(line: 182, column: 25, scope: !1111)
!1114 = !DILocation(line: 182, column: 7, scope: !1102)
!1115 = !DILocation(line: 184, column: 5, scope: !1111)
!1116 = !DILocation(line: 185, column: 1, scope: !1102)
!1117 = distinct !DISubprogram(name: "error_tail", scope: !148, file: !148, line: 219, type: !1083, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1118)
!1118 = !{!1119, !1120, !1121, !1122}
!1119 = !DILocalVariable(name: "status", arg: 1, scope: !1117, file: !148, line: 219, type: !25)
!1120 = !DILocalVariable(name: "errnum", arg: 2, scope: !1117, file: !148, line: 219, type: !25)
!1121 = !DILocalVariable(name: "message", arg: 3, scope: !1117, file: !148, line: 219, type: !30)
!1122 = !DILocalVariable(name: "args", arg: 4, scope: !1117, file: !148, line: 219, type: !156)
!1123 = !DILocation(line: 0, scope: !1117)
!1124 = !DILocation(line: 219, column: 1, scope: !1117)
!1125 = !DILocation(line: 229, column: 13, scope: !1117)
!1126 = !DILocation(line: 229, column: 3, scope: !1117)
!1127 = !DILocalVariable(name: "__stream", arg: 1, scope: !1128, file: !1129, line: 132, type: !1132)
!1128 = distinct !DISubprogram(name: "vfprintf", scope: !1129, file: !1129, line: 132, type: !1130, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1167)
!1129 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!25, !1132, !565, !158}
!1132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !1135)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !1136)
!1136 = !{!1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1135, file: !64, line: 51, baseType: !25, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1135, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1135, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1135, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1135, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1135, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1135, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1135, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1135, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1135, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1135, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1135, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1135, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1135, file: !64, line: 70, baseType: !1151, size: 64, offset: 832)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1135, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1135, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1135, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1135, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1135, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1135, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1135, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1135, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1135, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1135, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1135, file: !64, line: 93, baseType: !1151, size: 64, offset: 1344)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1135, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1135, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1135, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1135, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!1167 = !{!1127, !1168, !1169}
!1168 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1128, file: !1129, line: 133, type: !565)
!1169 = !DILocalVariable(name: "__ap", arg: 3, scope: !1128, file: !1129, line: 133, type: !158)
!1170 = !DILocation(line: 0, scope: !1128, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 229, column: 3, scope: !1117)
!1172 = !DILocation(line: 135, column: 10, scope: !1128, inlinedAt: !1171)
!1173 = !{!1174, !1176}
!1174 = distinct !{!1174, !1175, !"vfprintf.inline: argument 0"}
!1175 = distinct !{!1175, !"vfprintf.inline"}
!1176 = distinct !{!1176, !1175, !"vfprintf.inline: argument 1"}
!1177 = !DILocation(line: 232, column: 3, scope: !1117)
!1178 = !DILocation(line: 233, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1117, file: !148, line: 233, column: 7)
!1180 = !DILocation(line: 233, column: 7, scope: !1117)
!1181 = !DILocalVariable(name: "errnum", arg: 1, scope: !1182, file: !148, line: 188, type: !25)
!1182 = distinct !DISubprogram(name: "print_errno_message", scope: !148, file: !148, line: 188, type: !473, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1183)
!1183 = !{!1181, !1184, !1185}
!1184 = !DILocalVariable(name: "s", scope: !1182, file: !148, line: 190, type: !30)
!1185 = !DILocalVariable(name: "errbuf", scope: !1182, file: !148, line: 193, type: !1186)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !1187)
!1187 = !{!1188}
!1188 = !DISubrange(count: 1024)
!1189 = !DILocation(line: 0, scope: !1182, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 234, column: 5, scope: !1179)
!1191 = !DILocation(line: 193, column: 3, scope: !1182, inlinedAt: !1190)
!1192 = !DILocation(line: 193, column: 8, scope: !1182, inlinedAt: !1190)
!1193 = !DILocation(line: 195, column: 7, scope: !1182, inlinedAt: !1190)
!1194 = !DILocation(line: 207, column: 9, scope: !1195, inlinedAt: !1190)
!1195 = distinct !DILexicalBlock(scope: !1182, file: !148, line: 207, column: 7)
!1196 = !DILocation(line: 207, column: 7, scope: !1182, inlinedAt: !1190)
!1197 = !DILocation(line: 208, column: 9, scope: !1195, inlinedAt: !1190)
!1198 = !DILocation(line: 208, column: 5, scope: !1195, inlinedAt: !1190)
!1199 = !DILocation(line: 214, column: 3, scope: !1182, inlinedAt: !1190)
!1200 = !DILocation(line: 216, column: 1, scope: !1182, inlinedAt: !1190)
!1201 = !DILocation(line: 234, column: 5, scope: !1179)
!1202 = !DILocation(line: 238, column: 3, scope: !1117)
!1203 = !DILocalVariable(name: "__c", arg: 1, scope: !1204, file: !775, line: 101, type: !25)
!1204 = distinct !DISubprogram(name: "putc_unlocked", scope: !775, file: !775, line: 101, type: !1205, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!25, !25, !1133}
!1207 = !{!1203, !1208}
!1208 = !DILocalVariable(name: "__stream", arg: 2, scope: !1204, file: !775, line: 101, type: !1133)
!1209 = !DILocation(line: 0, scope: !1204, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 238, column: 3, scope: !1117)
!1211 = !DILocation(line: 103, column: 10, scope: !1204, inlinedAt: !1210)
!1212 = !DILocation(line: 240, column: 3, scope: !1117)
!1213 = !DILocation(line: 241, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1117, file: !148, line: 241, column: 7)
!1215 = !DILocation(line: 241, column: 7, scope: !1117)
!1216 = !DILocation(line: 242, column: 5, scope: !1214)
!1217 = !DILocation(line: 243, column: 1, scope: !1117)
!1218 = !DISubprogram(name: "strerror_r", scope: !1219, file: !1219, line: 444, type: !1220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!1219 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!22, !25, !22, !27}
!1222 = !DISubprogram(name: "fcntl", scope: !1223, file: !1223, line: 149, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!1223 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!25, !25, !25, null}
!1226 = distinct !DISubprogram(name: "error", scope: !148, file: !148, line: 285, type: !1227, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1229)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !25, !25, !30, null}
!1229 = !{!1230, !1231, !1232, !1233}
!1230 = !DILocalVariable(name: "status", arg: 1, scope: !1226, file: !148, line: 285, type: !25)
!1231 = !DILocalVariable(name: "errnum", arg: 2, scope: !1226, file: !148, line: 285, type: !25)
!1232 = !DILocalVariable(name: "message", arg: 3, scope: !1226, file: !148, line: 285, type: !30)
!1233 = !DILocalVariable(name: "ap", scope: !1226, file: !148, line: 287, type: !156)
!1234 = !DILocation(line: 0, scope: !1226)
!1235 = !DILocation(line: 287, column: 3, scope: !1226)
!1236 = !DILocation(line: 287, column: 11, scope: !1226)
!1237 = !DILocation(line: 288, column: 3, scope: !1226)
!1238 = !DILocation(line: 289, column: 3, scope: !1226)
!1239 = !DILocation(line: 290, column: 3, scope: !1226)
!1240 = !DILocation(line: 291, column: 1, scope: !1226)
!1241 = !DILocation(line: 0, scope: !153)
!1242 = !DILocation(line: 298, column: 1, scope: !153)
!1243 = !DILocation(line: 302, column: 7, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !153, file: !148, line: 302, column: 7)
!1245 = !DILocation(line: 302, column: 7, scope: !153)
!1246 = !DILocation(line: 307, column: 11, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !148, line: 307, column: 11)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !148, line: 303, column: 5)
!1249 = !DILocation(line: 307, column: 27, scope: !1247)
!1250 = !DILocation(line: 308, column: 11, scope: !1247)
!1251 = !DILocation(line: 308, column: 28, scope: !1247)
!1252 = !DILocation(line: 308, column: 25, scope: !1247)
!1253 = !DILocation(line: 309, column: 15, scope: !1247)
!1254 = !DILocation(line: 309, column: 33, scope: !1247)
!1255 = !DILocation(line: 310, column: 19, scope: !1247)
!1256 = !DILocation(line: 311, column: 22, scope: !1247)
!1257 = !DILocation(line: 311, column: 56, scope: !1247)
!1258 = !DILocation(line: 307, column: 11, scope: !1248)
!1259 = !DILocation(line: 316, column: 21, scope: !1248)
!1260 = !DILocation(line: 317, column: 23, scope: !1248)
!1261 = !DILocation(line: 318, column: 5, scope: !1248)
!1262 = !DILocation(line: 327, column: 3, scope: !153)
!1263 = !DILocation(line: 331, column: 7, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !153, file: !148, line: 331, column: 7)
!1265 = !DILocation(line: 331, column: 7, scope: !153)
!1266 = !DILocation(line: 332, column: 5, scope: !1264)
!1267 = !DILocation(line: 338, column: 7, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !148, line: 334, column: 5)
!1269 = !DILocation(line: 346, column: 3, scope: !153)
!1270 = !DILocation(line: 350, column: 3, scope: !153)
!1271 = !DILocation(line: 356, column: 1, scope: !153)
!1272 = distinct !DISubprogram(name: "error_at_line", scope: !148, file: !148, line: 359, type: !1273, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !25, !25, !30, !7, !30, null}
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281}
!1276 = !DILocalVariable(name: "status", arg: 1, scope: !1272, file: !148, line: 359, type: !25)
!1277 = !DILocalVariable(name: "errnum", arg: 2, scope: !1272, file: !148, line: 359, type: !25)
!1278 = !DILocalVariable(name: "file_name", arg: 3, scope: !1272, file: !148, line: 359, type: !30)
!1279 = !DILocalVariable(name: "line_number", arg: 4, scope: !1272, file: !148, line: 360, type: !7)
!1280 = !DILocalVariable(name: "message", arg: 5, scope: !1272, file: !148, line: 360, type: !30)
!1281 = !DILocalVariable(name: "ap", scope: !1272, file: !148, line: 362, type: !156)
!1282 = !DILocation(line: 0, scope: !1272)
!1283 = !DILocation(line: 362, column: 3, scope: !1272)
!1284 = !DILocation(line: 362, column: 11, scope: !1272)
!1285 = !DILocation(line: 363, column: 3, scope: !1272)
!1286 = !DILocation(line: 364, column: 3, scope: !1272)
!1287 = !DILocation(line: 366, column: 3, scope: !1272)
!1288 = !DILocation(line: 367, column: 1, scope: !1272)
!1289 = distinct !DISubprogram(name: "fpurge", scope: !354, file: !354, line: 32, type: !1290, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !353, retainedNodes: !1326)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!25, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !1294)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1294, file: !64, line: 51, baseType: !25, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1294, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1294, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1294, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1294, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1294, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1294, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1294, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1294, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1294, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1294, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1294, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1294, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1294, file: !64, line: 70, baseType: !1310, size: 64, offset: 832)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1294, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1294, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1294, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1294, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1294, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1294, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1294, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1294, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1294, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1294, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1294, file: !64, line: 93, baseType: !1310, size: 64, offset: 1344)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1294, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1294, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1294, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1294, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!1326 = !{!1327}
!1327 = !DILocalVariable(name: "fp", arg: 1, scope: !1289, file: !354, line: 32, type: !1292)
!1328 = !DILocation(line: 0, scope: !1289)
!1329 = !DILocation(line: 36, column: 3, scope: !1289)
!1330 = !DILocation(line: 38, column: 3, scope: !1289)
!1331 = distinct !DISubprogram(name: "getprogname", scope: !356, file: !356, line: 54, type: !1332, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !561)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!30}
!1334 = !DILocation(line: 58, column: 10, scope: !1331)
!1335 = !DILocation(line: 58, column: 3, scope: !1331)
!1336 = distinct !DISubprogram(name: "set_program_name", scope: !189, file: !189, line: 37, type: !494, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !1337)
!1337 = !{!1338, !1339, !1340}
!1338 = !DILocalVariable(name: "argv0", arg: 1, scope: !1336, file: !189, line: 37, type: !30)
!1339 = !DILocalVariable(name: "slash", scope: !1336, file: !189, line: 44, type: !30)
!1340 = !DILocalVariable(name: "base", scope: !1336, file: !189, line: 45, type: !30)
!1341 = !DILocation(line: 0, scope: !1336)
!1342 = !DILocation(line: 44, column: 23, scope: !1336)
!1343 = !DILocation(line: 45, column: 22, scope: !1336)
!1344 = !DILocation(line: 46, column: 17, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1336, file: !189, line: 46, column: 7)
!1346 = !DILocation(line: 46, column: 9, scope: !1345)
!1347 = !DILocation(line: 46, column: 25, scope: !1345)
!1348 = !DILocation(line: 46, column: 40, scope: !1345)
!1349 = !DILocalVariable(name: "__s1", arg: 1, scope: !1350, file: !519, line: 974, type: !687)
!1350 = distinct !DISubprogram(name: "memeq", scope: !519, file: !519, line: 974, type: !1351, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !1353)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!47, !687, !687, !27}
!1353 = !{!1349, !1354, !1355}
!1354 = !DILocalVariable(name: "__s2", arg: 2, scope: !1350, file: !519, line: 974, type: !687)
!1355 = !DILocalVariable(name: "__n", arg: 3, scope: !1350, file: !519, line: 974, type: !27)
!1356 = !DILocation(line: 0, scope: !1350, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 46, column: 28, scope: !1345)
!1358 = !DILocation(line: 976, column: 11, scope: !1350, inlinedAt: !1357)
!1359 = !DILocation(line: 976, column: 10, scope: !1350, inlinedAt: !1357)
!1360 = !DILocation(line: 46, column: 7, scope: !1336)
!1361 = !DILocation(line: 49, column: 11, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !189, line: 49, column: 11)
!1363 = distinct !DILexicalBlock(scope: !1345, file: !189, line: 47, column: 5)
!1364 = !DILocation(line: 49, column: 36, scope: !1362)
!1365 = !DILocation(line: 49, column: 11, scope: !1363)
!1366 = !DILocation(line: 65, column: 16, scope: !1336)
!1367 = !DILocation(line: 71, column: 27, scope: !1336)
!1368 = !DILocation(line: 74, column: 33, scope: !1336)
!1369 = !DILocation(line: 76, column: 1, scope: !1336)
!1370 = !DILocation(line: 0, scope: !194)
!1371 = !DILocation(line: 40, column: 29, scope: !194)
!1372 = !DILocation(line: 41, column: 19, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !194, file: !195, line: 41, column: 7)
!1374 = !DILocation(line: 41, column: 7, scope: !194)
!1375 = !DILocation(line: 47, column: 3, scope: !194)
!1376 = !DILocation(line: 48, column: 3, scope: !194)
!1377 = !DILocation(line: 48, column: 13, scope: !194)
!1378 = !DILocalVariable(name: "ps", arg: 1, scope: !1379, file: !1380, line: 1135, type: !1383)
!1379 = distinct !DISubprogram(name: "mbszero", scope: !1380, file: !1380, line: 1135, type: !1381, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !1384)
!1380 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !1383}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!1384 = !{!1378}
!1385 = !DILocation(line: 0, scope: !1379, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 48, column: 18, scope: !194)
!1387 = !DILocalVariable(name: "__dest", arg: 1, scope: !1388, file: !1389, line: 57, type: !24)
!1388 = distinct !DISubprogram(name: "memset", scope: !1389, file: !1389, line: 57, type: !1390, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !1392)
!1389 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!24, !24, !25, !27}
!1392 = !{!1387, !1393, !1394}
!1393 = !DILocalVariable(name: "__ch", arg: 2, scope: !1388, file: !1389, line: 57, type: !25)
!1394 = !DILocalVariable(name: "__len", arg: 3, scope: !1388, file: !1389, line: 57, type: !27)
!1395 = !DILocation(line: 0, scope: !1388, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 1137, column: 3, scope: !1379, inlinedAt: !1386)
!1397 = !DILocation(line: 59, column: 10, scope: !1388, inlinedAt: !1396)
!1398 = !DILocation(line: 49, column: 7, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !194, file: !195, line: 49, column: 7)
!1400 = !DILocation(line: 49, column: 39, scope: !1399)
!1401 = !DILocation(line: 49, column: 44, scope: !1399)
!1402 = !DILocation(line: 54, column: 1, scope: !194)
!1403 = !DISubprogram(name: "mbrtoc32", scope: !206, file: !206, line: 57, type: !1404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!27, !1406, !565, !27, !1408}
!1406 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1383)
!1409 = distinct !DISubprogram(name: "clone_quoting_options", scope: !231, file: !231, line: 113, type: !1410, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1413)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!1412, !1412}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1413 = !{!1414, !1415, !1416}
!1414 = !DILocalVariable(name: "o", arg: 1, scope: !1409, file: !231, line: 113, type: !1412)
!1415 = !DILocalVariable(name: "saved_errno", scope: !1409, file: !231, line: 115, type: !25)
!1416 = !DILocalVariable(name: "p", scope: !1409, file: !231, line: 116, type: !1412)
!1417 = !DILocation(line: 0, scope: !1409)
!1418 = !DILocation(line: 115, column: 21, scope: !1409)
!1419 = !DILocation(line: 116, column: 40, scope: !1409)
!1420 = !DILocation(line: 116, column: 31, scope: !1409)
!1421 = !DILocation(line: 118, column: 9, scope: !1409)
!1422 = !DILocation(line: 119, column: 3, scope: !1409)
!1423 = distinct !DISubprogram(name: "get_quoting_style", scope: !231, file: !231, line: 124, type: !1424, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1428)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!233, !1426}
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!1428 = !{!1429}
!1429 = !DILocalVariable(name: "o", arg: 1, scope: !1423, file: !231, line: 124, type: !1426)
!1430 = !DILocation(line: 0, scope: !1423)
!1431 = !DILocation(line: 126, column: 11, scope: !1423)
!1432 = !DILocation(line: 126, column: 46, scope: !1423)
!1433 = !{!1434, !485, i64 0}
!1434 = !{!"quoting_options", !485, i64 0, !570, i64 4, !485, i64 8, !484, i64 40, !484, i64 48}
!1435 = !DILocation(line: 126, column: 3, scope: !1423)
!1436 = distinct !DISubprogram(name: "set_quoting_style", scope: !231, file: !231, line: 132, type: !1437, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1439)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !1412, !233}
!1439 = !{!1440, !1441}
!1440 = !DILocalVariable(name: "o", arg: 1, scope: !1436, file: !231, line: 132, type: !1412)
!1441 = !DILocalVariable(name: "s", arg: 2, scope: !1436, file: !231, line: 132, type: !233)
!1442 = !DILocation(line: 0, scope: !1436)
!1443 = !DILocation(line: 134, column: 4, scope: !1436)
!1444 = !DILocation(line: 134, column: 39, scope: !1436)
!1445 = !DILocation(line: 134, column: 45, scope: !1436)
!1446 = !DILocation(line: 135, column: 1, scope: !1436)
!1447 = distinct !DISubprogram(name: "set_char_quoting", scope: !231, file: !231, line: 143, type: !1448, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1450)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!25, !1412, !23, !25}
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1457, !1458}
!1451 = !DILocalVariable(name: "o", arg: 1, scope: !1447, file: !231, line: 143, type: !1412)
!1452 = !DILocalVariable(name: "c", arg: 2, scope: !1447, file: !231, line: 143, type: !23)
!1453 = !DILocalVariable(name: "i", arg: 3, scope: !1447, file: !231, line: 143, type: !25)
!1454 = !DILocalVariable(name: "uc", scope: !1447, file: !231, line: 145, type: !32)
!1455 = !DILocalVariable(name: "p", scope: !1447, file: !231, line: 146, type: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1457 = !DILocalVariable(name: "shift", scope: !1447, file: !231, line: 148, type: !25)
!1458 = !DILocalVariable(name: "r", scope: !1447, file: !231, line: 149, type: !7)
!1459 = !DILocation(line: 0, scope: !1447)
!1460 = !DILocation(line: 147, column: 6, scope: !1447)
!1461 = !DILocation(line: 147, column: 62, scope: !1447)
!1462 = !DILocation(line: 147, column: 57, scope: !1447)
!1463 = !DILocation(line: 148, column: 15, scope: !1447)
!1464 = !DILocation(line: 149, column: 21, scope: !1447)
!1465 = !DILocation(line: 149, column: 24, scope: !1447)
!1466 = !DILocation(line: 149, column: 34, scope: !1447)
!1467 = !DILocation(line: 150, column: 13, scope: !1447)
!1468 = !DILocation(line: 150, column: 19, scope: !1447)
!1469 = !DILocation(line: 150, column: 24, scope: !1447)
!1470 = !DILocation(line: 150, column: 6, scope: !1447)
!1471 = !DILocation(line: 151, column: 3, scope: !1447)
!1472 = distinct !DISubprogram(name: "set_quoting_flags", scope: !231, file: !231, line: 159, type: !1473, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1475)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!25, !1412, !25}
!1475 = !{!1476, !1477, !1478}
!1476 = !DILocalVariable(name: "o", arg: 1, scope: !1472, file: !231, line: 159, type: !1412)
!1477 = !DILocalVariable(name: "i", arg: 2, scope: !1472, file: !231, line: 159, type: !25)
!1478 = !DILocalVariable(name: "r", scope: !1472, file: !231, line: 163, type: !25)
!1479 = !DILocation(line: 0, scope: !1472)
!1480 = !DILocation(line: 161, column: 8, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1472, file: !231, line: 161, column: 7)
!1482 = !DILocation(line: 161, column: 7, scope: !1472)
!1483 = !DILocation(line: 163, column: 14, scope: !1472)
!1484 = !{!1434, !570, i64 4}
!1485 = !DILocation(line: 164, column: 12, scope: !1472)
!1486 = !DILocation(line: 165, column: 3, scope: !1472)
!1487 = distinct !DISubprogram(name: "set_custom_quoting", scope: !231, file: !231, line: 169, type: !1488, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{null, !1412, !30, !30}
!1490 = !{!1491, !1492, !1493}
!1491 = !DILocalVariable(name: "o", arg: 1, scope: !1487, file: !231, line: 169, type: !1412)
!1492 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1487, file: !231, line: 170, type: !30)
!1493 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1487, file: !231, line: 170, type: !30)
!1494 = !DILocation(line: 0, scope: !1487)
!1495 = !DILocation(line: 172, column: 8, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1487, file: !231, line: 172, column: 7)
!1497 = !DILocation(line: 172, column: 7, scope: !1487)
!1498 = !DILocation(line: 174, column: 6, scope: !1487)
!1499 = !DILocation(line: 174, column: 12, scope: !1487)
!1500 = !DILocation(line: 175, column: 8, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1487, file: !231, line: 175, column: 7)
!1502 = !DILocation(line: 175, column: 19, scope: !1501)
!1503 = !DILocation(line: 176, column: 5, scope: !1501)
!1504 = !DILocation(line: 177, column: 6, scope: !1487)
!1505 = !DILocation(line: 177, column: 17, scope: !1487)
!1506 = !{!1434, !484, i64 40}
!1507 = !DILocation(line: 178, column: 6, scope: !1487)
!1508 = !DILocation(line: 178, column: 18, scope: !1487)
!1509 = !{!1434, !484, i64 48}
!1510 = !DILocation(line: 179, column: 1, scope: !1487)
!1511 = distinct !DISubprogram(name: "quotearg_buffer", scope: !231, file: !231, line: 774, type: !1512, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1514)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!27, !22, !27, !30, !27, !1426}
!1514 = !{!1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1515 = !DILocalVariable(name: "buffer", arg: 1, scope: !1511, file: !231, line: 774, type: !22)
!1516 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1511, file: !231, line: 774, type: !27)
!1517 = !DILocalVariable(name: "arg", arg: 3, scope: !1511, file: !231, line: 775, type: !30)
!1518 = !DILocalVariable(name: "argsize", arg: 4, scope: !1511, file: !231, line: 775, type: !27)
!1519 = !DILocalVariable(name: "o", arg: 5, scope: !1511, file: !231, line: 776, type: !1426)
!1520 = !DILocalVariable(name: "p", scope: !1511, file: !231, line: 778, type: !1426)
!1521 = !DILocalVariable(name: "saved_errno", scope: !1511, file: !231, line: 779, type: !25)
!1522 = !DILocalVariable(name: "r", scope: !1511, file: !231, line: 780, type: !27)
!1523 = !DILocation(line: 0, scope: !1511)
!1524 = !DILocation(line: 778, column: 37, scope: !1511)
!1525 = !DILocation(line: 779, column: 21, scope: !1511)
!1526 = !DILocation(line: 781, column: 43, scope: !1511)
!1527 = !DILocation(line: 781, column: 53, scope: !1511)
!1528 = !DILocation(line: 781, column: 60, scope: !1511)
!1529 = !DILocation(line: 782, column: 43, scope: !1511)
!1530 = !DILocation(line: 782, column: 58, scope: !1511)
!1531 = !DILocation(line: 780, column: 14, scope: !1511)
!1532 = !DILocation(line: 783, column: 9, scope: !1511)
!1533 = !DILocation(line: 784, column: 3, scope: !1511)
!1534 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !231, file: !231, line: 251, type: !1535, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1539)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!27, !22, !27, !30, !27, !233, !25, !1537, !30, !30}
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1539 = !{!1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1564, !1566, !1569, !1570, !1571, !1572, !1575, !1576, !1579, !1583, !1584, !1592, !1595, !1596, !1598, !1599, !1600, !1601}
!1540 = !DILocalVariable(name: "buffer", arg: 1, scope: !1534, file: !231, line: 251, type: !22)
!1541 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1534, file: !231, line: 251, type: !27)
!1542 = !DILocalVariable(name: "arg", arg: 3, scope: !1534, file: !231, line: 252, type: !30)
!1543 = !DILocalVariable(name: "argsize", arg: 4, scope: !1534, file: !231, line: 252, type: !27)
!1544 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1534, file: !231, line: 253, type: !233)
!1545 = !DILocalVariable(name: "flags", arg: 6, scope: !1534, file: !231, line: 253, type: !25)
!1546 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1534, file: !231, line: 254, type: !1537)
!1547 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1534, file: !231, line: 255, type: !30)
!1548 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1534, file: !231, line: 256, type: !30)
!1549 = !DILocalVariable(name: "unibyte_locale", scope: !1534, file: !231, line: 258, type: !47)
!1550 = !DILocalVariable(name: "len", scope: !1534, file: !231, line: 260, type: !27)
!1551 = !DILocalVariable(name: "orig_buffersize", scope: !1534, file: !231, line: 261, type: !27)
!1552 = !DILocalVariable(name: "quote_string", scope: !1534, file: !231, line: 262, type: !30)
!1553 = !DILocalVariable(name: "quote_string_len", scope: !1534, file: !231, line: 263, type: !27)
!1554 = !DILocalVariable(name: "backslash_escapes", scope: !1534, file: !231, line: 264, type: !47)
!1555 = !DILocalVariable(name: "elide_outer_quotes", scope: !1534, file: !231, line: 265, type: !47)
!1556 = !DILocalVariable(name: "encountered_single_quote", scope: !1534, file: !231, line: 266, type: !47)
!1557 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1534, file: !231, line: 267, type: !47)
!1558 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1534, file: !231, line: 309, type: !47)
!1559 = !DILocalVariable(name: "lq", scope: !1560, file: !231, line: 361, type: !30)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !231, line: 361, column: 11)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !231, line: 360, column: 13)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !231, line: 333, column: 7)
!1563 = distinct !DILexicalBlock(scope: !1534, file: !231, line: 312, column: 5)
!1564 = !DILocalVariable(name: "i", scope: !1565, file: !231, line: 395, type: !27)
!1565 = distinct !DILexicalBlock(scope: !1534, file: !231, line: 395, column: 3)
!1566 = !DILocalVariable(name: "is_right_quote", scope: !1567, file: !231, line: 397, type: !47)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !231, line: 396, column: 5)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !231, line: 395, column: 3)
!1569 = !DILocalVariable(name: "escaping", scope: !1567, file: !231, line: 398, type: !47)
!1570 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1567, file: !231, line: 399, type: !47)
!1571 = !DILocalVariable(name: "c", scope: !1567, file: !231, line: 417, type: !32)
!1572 = !DILocalVariable(name: "m", scope: !1573, file: !231, line: 598, type: !27)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !231, line: 596, column: 11)
!1574 = distinct !DILexicalBlock(scope: !1567, file: !231, line: 419, column: 9)
!1575 = !DILocalVariable(name: "printable", scope: !1573, file: !231, line: 600, type: !47)
!1576 = !DILocalVariable(name: "mbs", scope: !1577, file: !231, line: 609, type: !290)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !231, line: 608, column: 15)
!1578 = distinct !DILexicalBlock(scope: !1573, file: !231, line: 602, column: 17)
!1579 = !DILocalVariable(name: "w", scope: !1580, file: !231, line: 618, type: !205)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !231, line: 617, column: 19)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !231, line: 616, column: 17)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !231, line: 616, column: 17)
!1583 = !DILocalVariable(name: "bytes", scope: !1580, file: !231, line: 619, type: !27)
!1584 = !DILocalVariable(name: "j", scope: !1585, file: !231, line: 648, type: !27)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !231, line: 648, column: 29)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !231, line: 647, column: 27)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !231, line: 645, column: 29)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !231, line: 636, column: 23)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !231, line: 628, column: 30)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !231, line: 623, column: 30)
!1591 = distinct !DILexicalBlock(scope: !1580, file: !231, line: 621, column: 25)
!1592 = !DILocalVariable(name: "ilim", scope: !1593, file: !231, line: 674, type: !27)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !231, line: 671, column: 15)
!1594 = distinct !DILexicalBlock(scope: !1573, file: !231, line: 670, column: 17)
!1595 = !DILabel(scope: !1534, name: "process_input", file: !231, line: 308)
!1596 = !DILabel(scope: !1597, name: "c_and_shell_escape", file: !231, line: 502)
!1597 = distinct !DILexicalBlock(scope: !1574, file: !231, line: 478, column: 9)
!1598 = !DILabel(scope: !1597, name: "c_escape", file: !231, line: 507)
!1599 = !DILabel(scope: !1567, name: "store_escape", file: !231, line: 709)
!1600 = !DILabel(scope: !1567, name: "store_c", file: !231, line: 712)
!1601 = !DILabel(scope: !1534, name: "force_outer_quoting_style", file: !231, line: 753)
!1602 = !DILocation(line: 0, scope: !1534)
!1603 = !DILocation(line: 258, column: 25, scope: !1534)
!1604 = !DILocation(line: 258, column: 36, scope: !1534)
!1605 = !DILocation(line: 267, column: 3, scope: !1534)
!1606 = !DILocation(line: 261, column: 10, scope: !1534)
!1607 = !DILocation(line: 262, column: 15, scope: !1534)
!1608 = !DILocation(line: 263, column: 10, scope: !1534)
!1609 = !DILocation(line: 308, column: 2, scope: !1534)
!1610 = !DILocation(line: 311, column: 3, scope: !1534)
!1611 = !DILocation(line: 318, column: 11, scope: !1563)
!1612 = !DILocation(line: 319, column: 9, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !231, line: 319, column: 9)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !231, line: 319, column: 9)
!1615 = distinct !DILexicalBlock(scope: !1563, file: !231, line: 318, column: 11)
!1616 = !DILocation(line: 319, column: 9, scope: !1614)
!1617 = !DILocation(line: 0, scope: !281, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 357, column: 26, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !231, line: 335, column: 11)
!1620 = distinct !DILexicalBlock(scope: !1562, file: !231, line: 334, column: 13)
!1621 = !DILocation(line: 199, column: 29, scope: !281, inlinedAt: !1618)
!1622 = !DILocation(line: 201, column: 19, scope: !1623, inlinedAt: !1618)
!1623 = distinct !DILexicalBlock(scope: !281, file: !231, line: 201, column: 7)
!1624 = !DILocation(line: 201, column: 7, scope: !281, inlinedAt: !1618)
!1625 = !DILocation(line: 229, column: 3, scope: !281, inlinedAt: !1618)
!1626 = !DILocation(line: 230, column: 3, scope: !281, inlinedAt: !1618)
!1627 = !DILocation(line: 230, column: 13, scope: !281, inlinedAt: !1618)
!1628 = !DILocalVariable(name: "ps", arg: 1, scope: !1629, file: !1380, line: 1135, type: !1632)
!1629 = distinct !DISubprogram(name: "mbszero", scope: !1380, file: !1380, line: 1135, type: !1630, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1633)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{null, !1632}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1633 = !{!1628}
!1634 = !DILocation(line: 0, scope: !1629, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 230, column: 18, scope: !281, inlinedAt: !1618)
!1636 = !DILocalVariable(name: "__dest", arg: 1, scope: !1637, file: !1389, line: 57, type: !24)
!1637 = distinct !DISubprogram(name: "memset", scope: !1389, file: !1389, line: 57, type: !1390, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1638)
!1638 = !{!1636, !1639, !1640}
!1639 = !DILocalVariable(name: "__ch", arg: 2, scope: !1637, file: !1389, line: 57, type: !25)
!1640 = !DILocalVariable(name: "__len", arg: 3, scope: !1637, file: !1389, line: 57, type: !27)
!1641 = !DILocation(line: 0, scope: !1637, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 1137, column: 3, scope: !1629, inlinedAt: !1635)
!1643 = !DILocation(line: 59, column: 10, scope: !1637, inlinedAt: !1642)
!1644 = !DILocation(line: 231, column: 7, scope: !1645, inlinedAt: !1618)
!1645 = distinct !DILexicalBlock(scope: !281, file: !231, line: 231, column: 7)
!1646 = !DILocation(line: 231, column: 40, scope: !1645, inlinedAt: !1618)
!1647 = !DILocation(line: 231, column: 45, scope: !1645, inlinedAt: !1618)
!1648 = !DILocation(line: 235, column: 1, scope: !281, inlinedAt: !1618)
!1649 = !DILocation(line: 0, scope: !281, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 358, column: 27, scope: !1619)
!1651 = !DILocation(line: 199, column: 29, scope: !281, inlinedAt: !1650)
!1652 = !DILocation(line: 201, column: 19, scope: !1623, inlinedAt: !1650)
!1653 = !DILocation(line: 201, column: 7, scope: !281, inlinedAt: !1650)
!1654 = !DILocation(line: 229, column: 3, scope: !281, inlinedAt: !1650)
!1655 = !DILocation(line: 230, column: 3, scope: !281, inlinedAt: !1650)
!1656 = !DILocation(line: 230, column: 13, scope: !281, inlinedAt: !1650)
!1657 = !DILocation(line: 0, scope: !1629, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 230, column: 18, scope: !281, inlinedAt: !1650)
!1659 = !DILocation(line: 0, scope: !1637, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 1137, column: 3, scope: !1629, inlinedAt: !1658)
!1661 = !DILocation(line: 59, column: 10, scope: !1637, inlinedAt: !1660)
!1662 = !DILocation(line: 231, column: 7, scope: !1645, inlinedAt: !1650)
!1663 = !DILocation(line: 231, column: 40, scope: !1645, inlinedAt: !1650)
!1664 = !DILocation(line: 231, column: 45, scope: !1645, inlinedAt: !1650)
!1665 = !DILocation(line: 235, column: 1, scope: !281, inlinedAt: !1650)
!1666 = !DILocation(line: 360, column: 13, scope: !1562)
!1667 = !DILocation(line: 0, scope: !1560)
!1668 = !DILocation(line: 361, column: 45, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1560, file: !231, line: 361, column: 11)
!1670 = !DILocation(line: 361, column: 11, scope: !1560)
!1671 = !DILocation(line: 362, column: 13, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !231, line: 362, column: 13)
!1673 = distinct !DILexicalBlock(scope: !1669, file: !231, line: 362, column: 13)
!1674 = !DILocation(line: 362, column: 13, scope: !1673)
!1675 = !DILocation(line: 361, column: 52, scope: !1669)
!1676 = distinct !{!1676, !1670, !1677, !535}
!1677 = !DILocation(line: 362, column: 13, scope: !1560)
!1678 = !DILocation(line: 260, column: 10, scope: !1534)
!1679 = !DILocation(line: 365, column: 28, scope: !1562)
!1680 = !DILocation(line: 367, column: 7, scope: !1563)
!1681 = !DILocation(line: 370, column: 7, scope: !1563)
!1682 = !DILocation(line: 376, column: 11, scope: !1563)
!1683 = !DILocation(line: 381, column: 11, scope: !1563)
!1684 = !DILocation(line: 382, column: 9, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !231, line: 382, column: 9)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !231, line: 382, column: 9)
!1687 = distinct !DILexicalBlock(scope: !1563, file: !231, line: 381, column: 11)
!1688 = !DILocation(line: 382, column: 9, scope: !1686)
!1689 = !DILocation(line: 389, column: 7, scope: !1563)
!1690 = !DILocation(line: 392, column: 7, scope: !1563)
!1691 = !DILocation(line: 0, scope: !1565)
!1692 = !DILocation(line: 395, column: 8, scope: !1565)
!1693 = !DILocation(line: 395, column: 34, scope: !1568)
!1694 = !DILocation(line: 395, column: 26, scope: !1568)
!1695 = !DILocation(line: 395, column: 48, scope: !1568)
!1696 = !DILocation(line: 395, column: 55, scope: !1568)
!1697 = !DILocation(line: 395, column: 3, scope: !1565)
!1698 = !DILocation(line: 395, column: 67, scope: !1568)
!1699 = !DILocation(line: 0, scope: !1567)
!1700 = !DILocation(line: 402, column: 11, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1567, file: !231, line: 401, column: 11)
!1702 = !DILocation(line: 404, column: 17, scope: !1701)
!1703 = !DILocation(line: 405, column: 39, scope: !1701)
!1704 = !DILocation(line: 409, column: 32, scope: !1701)
!1705 = !DILocation(line: 405, column: 19, scope: !1701)
!1706 = !DILocation(line: 405, column: 15, scope: !1701)
!1707 = !DILocation(line: 410, column: 11, scope: !1701)
!1708 = !DILocation(line: 410, column: 25, scope: !1701)
!1709 = !DILocalVariable(name: "__s1", arg: 1, scope: !1710, file: !519, line: 974, type: !687)
!1710 = distinct !DISubprogram(name: "memeq", scope: !519, file: !519, line: 974, type: !1351, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1711)
!1711 = !{!1709, !1712, !1713}
!1712 = !DILocalVariable(name: "__s2", arg: 2, scope: !1710, file: !519, line: 974, type: !687)
!1713 = !DILocalVariable(name: "__n", arg: 3, scope: !1710, file: !519, line: 974, type: !27)
!1714 = !DILocation(line: 0, scope: !1710, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 410, column: 14, scope: !1701)
!1716 = !DILocation(line: 976, column: 11, scope: !1710, inlinedAt: !1715)
!1717 = !DILocation(line: 976, column: 10, scope: !1710, inlinedAt: !1715)
!1718 = !DILocation(line: 401, column: 11, scope: !1567)
!1719 = !DILocation(line: 417, column: 25, scope: !1567)
!1720 = !DILocation(line: 418, column: 7, scope: !1567)
!1721 = !DILocation(line: 421, column: 15, scope: !1574)
!1722 = !DILocation(line: 423, column: 15, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !231, line: 423, column: 15)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !231, line: 422, column: 13)
!1725 = distinct !DILexicalBlock(scope: !1574, file: !231, line: 421, column: 15)
!1726 = !DILocation(line: 423, column: 15, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !231, line: 423, column: 15)
!1728 = !DILocation(line: 423, column: 15, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !231, line: 423, column: 15)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !231, line: 423, column: 15)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !231, line: 423, column: 15)
!1732 = !DILocation(line: 423, column: 15, scope: !1730)
!1733 = !DILocation(line: 423, column: 15, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !231, line: 423, column: 15)
!1735 = distinct !DILexicalBlock(scope: !1731, file: !231, line: 423, column: 15)
!1736 = !DILocation(line: 423, column: 15, scope: !1735)
!1737 = !DILocation(line: 423, column: 15, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !231, line: 423, column: 15)
!1739 = distinct !DILexicalBlock(scope: !1731, file: !231, line: 423, column: 15)
!1740 = !DILocation(line: 423, column: 15, scope: !1739)
!1741 = !DILocation(line: 423, column: 15, scope: !1731)
!1742 = !DILocation(line: 423, column: 15, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !231, line: 423, column: 15)
!1744 = distinct !DILexicalBlock(scope: !1723, file: !231, line: 423, column: 15)
!1745 = !DILocation(line: 423, column: 15, scope: !1744)
!1746 = !DILocation(line: 431, column: 19, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1724, file: !231, line: 430, column: 19)
!1748 = !DILocation(line: 431, column: 24, scope: !1747)
!1749 = !DILocation(line: 431, column: 28, scope: !1747)
!1750 = !DILocation(line: 431, column: 38, scope: !1747)
!1751 = !DILocation(line: 431, column: 48, scope: !1747)
!1752 = !DILocation(line: 431, column: 59, scope: !1747)
!1753 = !DILocation(line: 433, column: 19, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !231, line: 433, column: 19)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !231, line: 433, column: 19)
!1756 = distinct !DILexicalBlock(scope: !1747, file: !231, line: 432, column: 17)
!1757 = !DILocation(line: 433, column: 19, scope: !1755)
!1758 = !DILocation(line: 434, column: 19, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !231, line: 434, column: 19)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !231, line: 434, column: 19)
!1761 = !DILocation(line: 434, column: 19, scope: !1760)
!1762 = !DILocation(line: 435, column: 17, scope: !1756)
!1763 = !DILocation(line: 442, column: 20, scope: !1725)
!1764 = !DILocation(line: 447, column: 11, scope: !1574)
!1765 = !DILocation(line: 450, column: 19, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1574, file: !231, line: 448, column: 13)
!1767 = !DILocation(line: 456, column: 19, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1766, file: !231, line: 455, column: 19)
!1769 = !DILocation(line: 456, column: 24, scope: !1768)
!1770 = !DILocation(line: 456, column: 28, scope: !1768)
!1771 = !DILocation(line: 456, column: 38, scope: !1768)
!1772 = !DILocation(line: 456, column: 47, scope: !1768)
!1773 = !DILocation(line: 456, column: 41, scope: !1768)
!1774 = !DILocation(line: 456, column: 52, scope: !1768)
!1775 = !DILocation(line: 455, column: 19, scope: !1766)
!1776 = !DILocation(line: 457, column: 25, scope: !1768)
!1777 = !DILocation(line: 457, column: 17, scope: !1768)
!1778 = !DILocation(line: 464, column: 25, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1768, file: !231, line: 458, column: 19)
!1780 = !DILocation(line: 468, column: 21, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !231, line: 468, column: 21)
!1782 = distinct !DILexicalBlock(scope: !1779, file: !231, line: 468, column: 21)
!1783 = !DILocation(line: 468, column: 21, scope: !1782)
!1784 = !DILocation(line: 469, column: 21, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !231, line: 469, column: 21)
!1786 = distinct !DILexicalBlock(scope: !1779, file: !231, line: 469, column: 21)
!1787 = !DILocation(line: 469, column: 21, scope: !1786)
!1788 = !DILocation(line: 470, column: 21, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !231, line: 470, column: 21)
!1790 = distinct !DILexicalBlock(scope: !1779, file: !231, line: 470, column: 21)
!1791 = !DILocation(line: 470, column: 21, scope: !1790)
!1792 = !DILocation(line: 471, column: 21, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !231, line: 471, column: 21)
!1794 = distinct !DILexicalBlock(scope: !1779, file: !231, line: 471, column: 21)
!1795 = !DILocation(line: 471, column: 21, scope: !1794)
!1796 = !DILocation(line: 472, column: 21, scope: !1779)
!1797 = !DILocation(line: 482, column: 33, scope: !1597)
!1798 = !DILocation(line: 483, column: 33, scope: !1597)
!1799 = !DILocation(line: 485, column: 33, scope: !1597)
!1800 = !DILocation(line: 486, column: 33, scope: !1597)
!1801 = !DILocation(line: 487, column: 33, scope: !1597)
!1802 = !DILocation(line: 490, column: 17, scope: !1597)
!1803 = !DILocation(line: 492, column: 21, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !231, line: 491, column: 15)
!1805 = distinct !DILexicalBlock(scope: !1597, file: !231, line: 490, column: 17)
!1806 = !DILocation(line: 499, column: 35, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1597, file: !231, line: 499, column: 17)
!1808 = !DILocation(line: 499, column: 57, scope: !1807)
!1809 = !DILocation(line: 0, scope: !1597)
!1810 = !DILocation(line: 502, column: 11, scope: !1597)
!1811 = !DILocation(line: 504, column: 17, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1597, file: !231, line: 503, column: 17)
!1813 = !DILocation(line: 507, column: 11, scope: !1597)
!1814 = !DILocation(line: 508, column: 17, scope: !1597)
!1815 = !DILocation(line: 517, column: 15, scope: !1574)
!1816 = !DILocation(line: 517, column: 40, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1574, file: !231, line: 517, column: 15)
!1818 = !DILocation(line: 517, column: 47, scope: !1817)
!1819 = !DILocation(line: 517, column: 18, scope: !1817)
!1820 = !DILocation(line: 521, column: 17, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1574, file: !231, line: 521, column: 15)
!1822 = !DILocation(line: 521, column: 15, scope: !1574)
!1823 = !DILocation(line: 525, column: 11, scope: !1574)
!1824 = !DILocation(line: 537, column: 15, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1574, file: !231, line: 536, column: 15)
!1826 = !DILocation(line: 536, column: 15, scope: !1574)
!1827 = !DILocation(line: 544, column: 15, scope: !1574)
!1828 = !DILocation(line: 546, column: 19, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !231, line: 545, column: 13)
!1830 = distinct !DILexicalBlock(scope: !1574, file: !231, line: 544, column: 15)
!1831 = !DILocation(line: 549, column: 19, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1829, file: !231, line: 549, column: 19)
!1833 = !DILocation(line: 549, column: 30, scope: !1832)
!1834 = !DILocation(line: 558, column: 15, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !231, line: 558, column: 15)
!1836 = distinct !DILexicalBlock(scope: !1829, file: !231, line: 558, column: 15)
!1837 = !DILocation(line: 558, column: 15, scope: !1836)
!1838 = !DILocation(line: 559, column: 15, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !231, line: 559, column: 15)
!1840 = distinct !DILexicalBlock(scope: !1829, file: !231, line: 559, column: 15)
!1841 = !DILocation(line: 559, column: 15, scope: !1840)
!1842 = !DILocation(line: 560, column: 15, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !231, line: 560, column: 15)
!1844 = distinct !DILexicalBlock(scope: !1829, file: !231, line: 560, column: 15)
!1845 = !DILocation(line: 560, column: 15, scope: !1844)
!1846 = !DILocation(line: 562, column: 13, scope: !1829)
!1847 = !DILocation(line: 602, column: 17, scope: !1573)
!1848 = !DILocation(line: 0, scope: !1573)
!1849 = !DILocation(line: 605, column: 29, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1578, file: !231, line: 603, column: 15)
!1851 = !DILocation(line: 605, column: 41, scope: !1850)
!1852 = !DILocation(line: 670, column: 23, scope: !1594)
!1853 = !DILocation(line: 609, column: 17, scope: !1577)
!1854 = !DILocation(line: 609, column: 27, scope: !1577)
!1855 = !DILocation(line: 0, scope: !1629, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 609, column: 32, scope: !1577)
!1857 = !DILocation(line: 0, scope: !1637, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 1137, column: 3, scope: !1629, inlinedAt: !1856)
!1859 = !DILocation(line: 59, column: 10, scope: !1637, inlinedAt: !1858)
!1860 = !DILocation(line: 613, column: 29, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1577, file: !231, line: 613, column: 21)
!1862 = !DILocation(line: 613, column: 21, scope: !1577)
!1863 = !DILocation(line: 614, column: 29, scope: !1861)
!1864 = !DILocation(line: 614, column: 19, scope: !1861)
!1865 = !DILocation(line: 618, column: 21, scope: !1580)
!1866 = !DILocation(line: 620, column: 54, scope: !1580)
!1867 = !DILocation(line: 0, scope: !1580)
!1868 = !DILocation(line: 619, column: 36, scope: !1580)
!1869 = !DILocation(line: 621, column: 25, scope: !1580)
!1870 = !DILocation(line: 631, column: 38, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1589, file: !231, line: 629, column: 23)
!1872 = !DILocation(line: 631, column: 48, scope: !1871)
!1873 = !DILocation(line: 665, column: 19, scope: !1581)
!1874 = !DILocation(line: 666, column: 15, scope: !1578)
!1875 = !DILocation(line: 626, column: 25, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1590, file: !231, line: 624, column: 23)
!1877 = !DILocation(line: 631, column: 51, scope: !1871)
!1878 = !DILocation(line: 631, column: 25, scope: !1871)
!1879 = !DILocation(line: 632, column: 28, scope: !1871)
!1880 = !DILocation(line: 631, column: 34, scope: !1871)
!1881 = distinct !{!1881, !1878, !1879, !535}
!1882 = !DILocation(line: 646, column: 29, scope: !1587)
!1883 = !DILocation(line: 0, scope: !1585)
!1884 = !DILocation(line: 649, column: 49, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1585, file: !231, line: 648, column: 29)
!1886 = !DILocation(line: 649, column: 39, scope: !1885)
!1887 = !DILocation(line: 649, column: 31, scope: !1885)
!1888 = !DILocation(line: 648, column: 60, scope: !1885)
!1889 = !DILocation(line: 648, column: 50, scope: !1885)
!1890 = !DILocation(line: 648, column: 29, scope: !1585)
!1891 = distinct !{!1891, !1890, !1892, !535}
!1892 = !DILocation(line: 654, column: 33, scope: !1585)
!1893 = !DILocation(line: 657, column: 43, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1588, file: !231, line: 657, column: 29)
!1895 = !DILocalVariable(name: "wc", arg: 1, scope: !1896, file: !1897, line: 865, type: !1900)
!1896 = distinct !DISubprogram(name: "c32isprint", scope: !1897, file: !1897, line: 865, type: !1898, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1902)
!1897 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!25, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1901, line: 20, baseType: !7)
!1901 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1902 = !{!1895}
!1903 = !DILocation(line: 0, scope: !1896, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 657, column: 31, scope: !1894)
!1905 = !DILocation(line: 871, column: 10, scope: !1896, inlinedAt: !1904)
!1906 = !DILocation(line: 657, column: 31, scope: !1894)
!1907 = !DILocation(line: 664, column: 23, scope: !1580)
!1908 = !DILocation(line: 753, column: 2, scope: !1534)
!1909 = !DILocation(line: 756, column: 51, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1534, file: !231, line: 756, column: 7)
!1911 = !DILocation(line: 670, column: 19, scope: !1594)
!1912 = !DILocation(line: 670, column: 45, scope: !1594)
!1913 = !DILocation(line: 674, column: 33, scope: !1593)
!1914 = !DILocation(line: 0, scope: !1593)
!1915 = !DILocation(line: 676, column: 17, scope: !1593)
!1916 = !DILocation(line: 398, column: 12, scope: !1567)
!1917 = !DILocation(line: 678, column: 43, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !231, line: 678, column: 25)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !231, line: 677, column: 19)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !231, line: 676, column: 17)
!1921 = distinct !DILexicalBlock(scope: !1593, file: !231, line: 676, column: 17)
!1922 = !DILocation(line: 680, column: 25, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !231, line: 680, column: 25)
!1924 = distinct !DILexicalBlock(scope: !1918, file: !231, line: 679, column: 23)
!1925 = !DILocation(line: 680, column: 25, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1923, file: !231, line: 680, column: 25)
!1927 = !DILocation(line: 680, column: 25, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !231, line: 680, column: 25)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !231, line: 680, column: 25)
!1930 = distinct !DILexicalBlock(scope: !1926, file: !231, line: 680, column: 25)
!1931 = !DILocation(line: 680, column: 25, scope: !1929)
!1932 = !DILocation(line: 680, column: 25, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !231, line: 680, column: 25)
!1934 = distinct !DILexicalBlock(scope: !1930, file: !231, line: 680, column: 25)
!1935 = !DILocation(line: 680, column: 25, scope: !1934)
!1936 = !DILocation(line: 680, column: 25, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !231, line: 680, column: 25)
!1938 = distinct !DILexicalBlock(scope: !1930, file: !231, line: 680, column: 25)
!1939 = !DILocation(line: 680, column: 25, scope: !1938)
!1940 = !DILocation(line: 680, column: 25, scope: !1930)
!1941 = !DILocation(line: 680, column: 25, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !231, line: 680, column: 25)
!1943 = distinct !DILexicalBlock(scope: !1923, file: !231, line: 680, column: 25)
!1944 = !DILocation(line: 680, column: 25, scope: !1943)
!1945 = !DILocation(line: 681, column: 25, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !231, line: 681, column: 25)
!1947 = distinct !DILexicalBlock(scope: !1924, file: !231, line: 681, column: 25)
!1948 = !DILocation(line: 681, column: 25, scope: !1947)
!1949 = !DILocation(line: 682, column: 25, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !231, line: 682, column: 25)
!1951 = distinct !DILexicalBlock(scope: !1924, file: !231, line: 682, column: 25)
!1952 = !DILocation(line: 682, column: 25, scope: !1951)
!1953 = !DILocation(line: 683, column: 38, scope: !1924)
!1954 = !DILocation(line: 683, column: 33, scope: !1924)
!1955 = !DILocation(line: 684, column: 23, scope: !1924)
!1956 = !DILocation(line: 685, column: 30, scope: !1918)
!1957 = !DILocation(line: 687, column: 25, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !231, line: 687, column: 25)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !231, line: 687, column: 25)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !231, line: 686, column: 23)
!1961 = distinct !DILexicalBlock(scope: !1918, file: !231, line: 685, column: 30)
!1962 = !DILocation(line: 687, column: 25, scope: !1959)
!1963 = !DILocation(line: 689, column: 23, scope: !1960)
!1964 = !DILocation(line: 690, column: 35, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1919, file: !231, line: 690, column: 25)
!1966 = !DILocation(line: 690, column: 30, scope: !1965)
!1967 = !DILocation(line: 690, column: 25, scope: !1919)
!1968 = !DILocation(line: 692, column: 21, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !231, line: 692, column: 21)
!1970 = distinct !DILexicalBlock(scope: !1919, file: !231, line: 692, column: 21)
!1971 = !DILocation(line: 692, column: 21, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !231, line: 692, column: 21)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !231, line: 692, column: 21)
!1974 = distinct !DILexicalBlock(scope: !1969, file: !231, line: 692, column: 21)
!1975 = !DILocation(line: 692, column: 21, scope: !1973)
!1976 = !DILocation(line: 692, column: 21, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !231, line: 692, column: 21)
!1978 = distinct !DILexicalBlock(scope: !1974, file: !231, line: 692, column: 21)
!1979 = !DILocation(line: 692, column: 21, scope: !1978)
!1980 = !DILocation(line: 692, column: 21, scope: !1974)
!1981 = !DILocation(line: 0, scope: !1919)
!1982 = !DILocation(line: 693, column: 21, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !231, line: 693, column: 21)
!1984 = distinct !DILexicalBlock(scope: !1919, file: !231, line: 693, column: 21)
!1985 = !DILocation(line: 693, column: 21, scope: !1984)
!1986 = !DILocation(line: 694, column: 25, scope: !1919)
!1987 = !DILocation(line: 676, column: 17, scope: !1920)
!1988 = distinct !{!1988, !1989, !1990}
!1989 = !DILocation(line: 676, column: 17, scope: !1921)
!1990 = !DILocation(line: 695, column: 19, scope: !1921)
!1991 = !DILocation(line: 409, column: 30, scope: !1701)
!1992 = !DILocation(line: 702, column: 34, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1567, file: !231, line: 702, column: 11)
!1994 = !DILocation(line: 704, column: 14, scope: !1993)
!1995 = !DILocation(line: 705, column: 14, scope: !1993)
!1996 = !DILocation(line: 705, column: 35, scope: !1993)
!1997 = !DILocation(line: 705, column: 17, scope: !1993)
!1998 = !DILocation(line: 705, column: 47, scope: !1993)
!1999 = !DILocation(line: 705, column: 65, scope: !1993)
!2000 = !DILocation(line: 706, column: 11, scope: !1993)
!2001 = !DILocation(line: 702, column: 11, scope: !1567)
!2002 = !DILocation(line: 395, column: 15, scope: !1565)
!2003 = !DILocation(line: 709, column: 5, scope: !1567)
!2004 = !DILocation(line: 710, column: 7, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1567, file: !231, line: 710, column: 7)
!2006 = !DILocation(line: 710, column: 7, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2005, file: !231, line: 710, column: 7)
!2008 = !DILocation(line: 710, column: 7, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !231, line: 710, column: 7)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !231, line: 710, column: 7)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !231, line: 710, column: 7)
!2012 = !DILocation(line: 710, column: 7, scope: !2010)
!2013 = !DILocation(line: 710, column: 7, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !231, line: 710, column: 7)
!2015 = distinct !DILexicalBlock(scope: !2011, file: !231, line: 710, column: 7)
!2016 = !DILocation(line: 710, column: 7, scope: !2015)
!2017 = !DILocation(line: 710, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !231, line: 710, column: 7)
!2019 = distinct !DILexicalBlock(scope: !2011, file: !231, line: 710, column: 7)
!2020 = !DILocation(line: 710, column: 7, scope: !2019)
!2021 = !DILocation(line: 710, column: 7, scope: !2011)
!2022 = !DILocation(line: 710, column: 7, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !231, line: 710, column: 7)
!2024 = distinct !DILexicalBlock(scope: !2005, file: !231, line: 710, column: 7)
!2025 = !DILocation(line: 710, column: 7, scope: !2024)
!2026 = !DILocation(line: 712, column: 5, scope: !1567)
!2027 = !DILocation(line: 713, column: 7, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !231, line: 713, column: 7)
!2029 = distinct !DILexicalBlock(scope: !1567, file: !231, line: 713, column: 7)
!2030 = !DILocation(line: 417, column: 21, scope: !1567)
!2031 = !DILocation(line: 713, column: 7, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !231, line: 713, column: 7)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !231, line: 713, column: 7)
!2034 = distinct !DILexicalBlock(scope: !2028, file: !231, line: 713, column: 7)
!2035 = !DILocation(line: 713, column: 7, scope: !2033)
!2036 = !DILocation(line: 713, column: 7, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !231, line: 713, column: 7)
!2038 = distinct !DILexicalBlock(scope: !2034, file: !231, line: 713, column: 7)
!2039 = !DILocation(line: 713, column: 7, scope: !2038)
!2040 = !DILocation(line: 713, column: 7, scope: !2034)
!2041 = !DILocation(line: 714, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !231, line: 714, column: 7)
!2043 = distinct !DILexicalBlock(scope: !1567, file: !231, line: 714, column: 7)
!2044 = !DILocation(line: 714, column: 7, scope: !2043)
!2045 = !DILocation(line: 716, column: 11, scope: !1567)
!2046 = !DILocation(line: 718, column: 5, scope: !1568)
!2047 = !DILocation(line: 395, column: 82, scope: !1568)
!2048 = !DILocation(line: 395, column: 3, scope: !1568)
!2049 = distinct !{!2049, !1697, !2050, !535}
!2050 = !DILocation(line: 718, column: 5, scope: !1565)
!2051 = !DILocation(line: 720, column: 11, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1534, file: !231, line: 720, column: 7)
!2053 = !DILocation(line: 720, column: 16, scope: !2052)
!2054 = !DILocation(line: 728, column: 51, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1534, file: !231, line: 728, column: 7)
!2056 = !DILocation(line: 731, column: 11, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2055, file: !231, line: 730, column: 5)
!2058 = !DILocation(line: 732, column: 16, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2057, file: !231, line: 731, column: 11)
!2060 = !DILocation(line: 732, column: 9, scope: !2059)
!2061 = !DILocation(line: 736, column: 18, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2059, file: !231, line: 736, column: 16)
!2063 = !DILocation(line: 736, column: 29, scope: !2062)
!2064 = !DILocation(line: 745, column: 7, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1534, file: !231, line: 745, column: 7)
!2066 = !DILocation(line: 745, column: 20, scope: !2065)
!2067 = !DILocation(line: 746, column: 12, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !231, line: 746, column: 5)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !231, line: 746, column: 5)
!2070 = !DILocation(line: 746, column: 5, scope: !2069)
!2071 = !DILocation(line: 747, column: 7, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !231, line: 747, column: 7)
!2073 = distinct !DILexicalBlock(scope: !2068, file: !231, line: 747, column: 7)
!2074 = !DILocation(line: 747, column: 7, scope: !2073)
!2075 = !DILocation(line: 746, column: 39, scope: !2068)
!2076 = distinct !{!2076, !2070, !2077, !535}
!2077 = !DILocation(line: 747, column: 7, scope: !2069)
!2078 = !DILocation(line: 749, column: 11, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1534, file: !231, line: 749, column: 7)
!2080 = !DILocation(line: 749, column: 7, scope: !1534)
!2081 = !DILocation(line: 750, column: 5, scope: !2079)
!2082 = !DILocation(line: 750, column: 17, scope: !2079)
!2083 = !DILocation(line: 756, column: 21, scope: !1910)
!2084 = !DILocation(line: 760, column: 42, scope: !1534)
!2085 = !DILocation(line: 758, column: 10, scope: !1534)
!2086 = !DILocation(line: 758, column: 3, scope: !1534)
!2087 = !DILocation(line: 762, column: 1, scope: !1534)
!2088 = !DISubprogram(name: "iswprint", scope: !2089, file: !2089, line: 120, type: !1898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!2089 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2090 = distinct !DISubprogram(name: "quotearg_alloc", scope: !231, file: !231, line: 788, type: !2091, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!22, !30, !27, !1426}
!2093 = !{!2094, !2095, !2096}
!2094 = !DILocalVariable(name: "arg", arg: 1, scope: !2090, file: !231, line: 788, type: !30)
!2095 = !DILocalVariable(name: "argsize", arg: 2, scope: !2090, file: !231, line: 788, type: !27)
!2096 = !DILocalVariable(name: "o", arg: 3, scope: !2090, file: !231, line: 789, type: !1426)
!2097 = !DILocation(line: 0, scope: !2090)
!2098 = !DILocalVariable(name: "arg", arg: 1, scope: !2099, file: !231, line: 801, type: !30)
!2099 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !231, file: !231, line: 801, type: !2100, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2102)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!22, !30, !27, !371, !1426}
!2102 = !{!2098, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110}
!2103 = !DILocalVariable(name: "argsize", arg: 2, scope: !2099, file: !231, line: 801, type: !27)
!2104 = !DILocalVariable(name: "size", arg: 3, scope: !2099, file: !231, line: 801, type: !371)
!2105 = !DILocalVariable(name: "o", arg: 4, scope: !2099, file: !231, line: 802, type: !1426)
!2106 = !DILocalVariable(name: "p", scope: !2099, file: !231, line: 804, type: !1426)
!2107 = !DILocalVariable(name: "saved_errno", scope: !2099, file: !231, line: 805, type: !25)
!2108 = !DILocalVariable(name: "flags", scope: !2099, file: !231, line: 807, type: !25)
!2109 = !DILocalVariable(name: "bufsize", scope: !2099, file: !231, line: 808, type: !27)
!2110 = !DILocalVariable(name: "buf", scope: !2099, file: !231, line: 812, type: !22)
!2111 = !DILocation(line: 0, scope: !2099, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 791, column: 10, scope: !2090)
!2113 = !DILocation(line: 804, column: 37, scope: !2099, inlinedAt: !2112)
!2114 = !DILocation(line: 805, column: 21, scope: !2099, inlinedAt: !2112)
!2115 = !DILocation(line: 807, column: 18, scope: !2099, inlinedAt: !2112)
!2116 = !DILocation(line: 807, column: 24, scope: !2099, inlinedAt: !2112)
!2117 = !DILocation(line: 808, column: 72, scope: !2099, inlinedAt: !2112)
!2118 = !DILocation(line: 809, column: 53, scope: !2099, inlinedAt: !2112)
!2119 = !DILocation(line: 810, column: 49, scope: !2099, inlinedAt: !2112)
!2120 = !DILocation(line: 811, column: 49, scope: !2099, inlinedAt: !2112)
!2121 = !DILocation(line: 808, column: 20, scope: !2099, inlinedAt: !2112)
!2122 = !DILocation(line: 811, column: 62, scope: !2099, inlinedAt: !2112)
!2123 = !DILocation(line: 812, column: 15, scope: !2099, inlinedAt: !2112)
!2124 = !DILocation(line: 813, column: 60, scope: !2099, inlinedAt: !2112)
!2125 = !DILocation(line: 815, column: 32, scope: !2099, inlinedAt: !2112)
!2126 = !DILocation(line: 815, column: 47, scope: !2099, inlinedAt: !2112)
!2127 = !DILocation(line: 813, column: 3, scope: !2099, inlinedAt: !2112)
!2128 = !DILocation(line: 816, column: 9, scope: !2099, inlinedAt: !2112)
!2129 = !DILocation(line: 791, column: 3, scope: !2090)
!2130 = !DILocation(line: 0, scope: !2099)
!2131 = !DILocation(line: 804, column: 37, scope: !2099)
!2132 = !DILocation(line: 805, column: 21, scope: !2099)
!2133 = !DILocation(line: 807, column: 18, scope: !2099)
!2134 = !DILocation(line: 807, column: 27, scope: !2099)
!2135 = !DILocation(line: 807, column: 24, scope: !2099)
!2136 = !DILocation(line: 808, column: 72, scope: !2099)
!2137 = !DILocation(line: 809, column: 53, scope: !2099)
!2138 = !DILocation(line: 810, column: 49, scope: !2099)
!2139 = !DILocation(line: 811, column: 49, scope: !2099)
!2140 = !DILocation(line: 808, column: 20, scope: !2099)
!2141 = !DILocation(line: 811, column: 62, scope: !2099)
!2142 = !DILocation(line: 812, column: 15, scope: !2099)
!2143 = !DILocation(line: 813, column: 60, scope: !2099)
!2144 = !DILocation(line: 815, column: 32, scope: !2099)
!2145 = !DILocation(line: 815, column: 47, scope: !2099)
!2146 = !DILocation(line: 813, column: 3, scope: !2099)
!2147 = !DILocation(line: 816, column: 9, scope: !2099)
!2148 = !DILocation(line: 817, column: 7, scope: !2099)
!2149 = !DILocation(line: 818, column: 11, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2099, file: !231, line: 817, column: 7)
!2151 = !{!784, !784, i64 0}
!2152 = !DILocation(line: 818, column: 5, scope: !2150)
!2153 = !DILocation(line: 819, column: 3, scope: !2099)
!2154 = distinct !DISubprogram(name: "quotearg_free", scope: !231, file: !231, line: 837, type: !184, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2155)
!2155 = !{!2156, !2157}
!2156 = !DILocalVariable(name: "sv", scope: !2154, file: !231, line: 839, type: !304)
!2157 = !DILocalVariable(name: "i", scope: !2158, file: !231, line: 840, type: !25)
!2158 = distinct !DILexicalBlock(scope: !2154, file: !231, line: 840, column: 3)
!2159 = !DILocation(line: 839, column: 24, scope: !2154)
!2160 = !DILocation(line: 0, scope: !2154)
!2161 = !DILocation(line: 0, scope: !2158)
!2162 = !DILocation(line: 840, column: 21, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2158, file: !231, line: 840, column: 3)
!2164 = !DILocation(line: 840, column: 3, scope: !2158)
!2165 = !DILocation(line: 842, column: 13, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2154, file: !231, line: 842, column: 7)
!2167 = !{!2168, !484, i64 8}
!2168 = !{!"slotvec", !784, i64 0, !484, i64 8}
!2169 = !DILocation(line: 842, column: 17, scope: !2166)
!2170 = !DILocation(line: 842, column: 7, scope: !2154)
!2171 = !DILocation(line: 841, column: 17, scope: !2163)
!2172 = !DILocation(line: 841, column: 5, scope: !2163)
!2173 = !DILocation(line: 840, column: 32, scope: !2163)
!2174 = distinct !{!2174, !2164, !2175, !535}
!2175 = !DILocation(line: 841, column: 20, scope: !2158)
!2176 = !DILocation(line: 844, column: 7, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2166, file: !231, line: 843, column: 5)
!2178 = !DILocation(line: 845, column: 21, scope: !2177)
!2179 = !{!2168, !784, i64 0}
!2180 = !DILocation(line: 846, column: 20, scope: !2177)
!2181 = !DILocation(line: 847, column: 5, scope: !2177)
!2182 = !DILocation(line: 848, column: 10, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2154, file: !231, line: 848, column: 7)
!2184 = !DILocation(line: 848, column: 7, scope: !2154)
!2185 = !DILocation(line: 850, column: 13, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2183, file: !231, line: 849, column: 5)
!2187 = !DILocation(line: 850, column: 7, scope: !2186)
!2188 = !DILocation(line: 851, column: 15, scope: !2186)
!2189 = !DILocation(line: 852, column: 5, scope: !2186)
!2190 = !DILocation(line: 853, column: 10, scope: !2154)
!2191 = !DILocation(line: 854, column: 1, scope: !2154)
!2192 = distinct !DISubprogram(name: "quotearg_n", scope: !231, file: !231, line: 919, type: !677, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2193)
!2193 = !{!2194, !2195}
!2194 = !DILocalVariable(name: "n", arg: 1, scope: !2192, file: !231, line: 919, type: !25)
!2195 = !DILocalVariable(name: "arg", arg: 2, scope: !2192, file: !231, line: 919, type: !30)
!2196 = !DILocation(line: 0, scope: !2192)
!2197 = !DILocation(line: 921, column: 10, scope: !2192)
!2198 = !DILocation(line: 921, column: 3, scope: !2192)
!2199 = distinct !DISubprogram(name: "quotearg_n_options", scope: !231, file: !231, line: 866, type: !2200, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!22, !25, !30, !27, !1426}
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2213, !2214, !2216, !2217, !2218}
!2203 = !DILocalVariable(name: "n", arg: 1, scope: !2199, file: !231, line: 866, type: !25)
!2204 = !DILocalVariable(name: "arg", arg: 2, scope: !2199, file: !231, line: 866, type: !30)
!2205 = !DILocalVariable(name: "argsize", arg: 3, scope: !2199, file: !231, line: 866, type: !27)
!2206 = !DILocalVariable(name: "options", arg: 4, scope: !2199, file: !231, line: 867, type: !1426)
!2207 = !DILocalVariable(name: "saved_errno", scope: !2199, file: !231, line: 869, type: !25)
!2208 = !DILocalVariable(name: "sv", scope: !2199, file: !231, line: 871, type: !304)
!2209 = !DILocalVariable(name: "nslots_max", scope: !2199, file: !231, line: 873, type: !25)
!2210 = !DILocalVariable(name: "preallocated", scope: !2211, file: !231, line: 879, type: !47)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !231, line: 878, column: 5)
!2212 = distinct !DILexicalBlock(scope: !2199, file: !231, line: 877, column: 7)
!2213 = !DILocalVariable(name: "new_nslots", scope: !2211, file: !231, line: 880, type: !384)
!2214 = !DILocalVariable(name: "size", scope: !2215, file: !231, line: 891, type: !27)
!2215 = distinct !DILexicalBlock(scope: !2199, file: !231, line: 890, column: 3)
!2216 = !DILocalVariable(name: "val", scope: !2215, file: !231, line: 892, type: !22)
!2217 = !DILocalVariable(name: "flags", scope: !2215, file: !231, line: 894, type: !25)
!2218 = !DILocalVariable(name: "qsize", scope: !2215, file: !231, line: 895, type: !27)
!2219 = !DILocation(line: 0, scope: !2199)
!2220 = !DILocation(line: 869, column: 21, scope: !2199)
!2221 = !DILocation(line: 871, column: 24, scope: !2199)
!2222 = !DILocation(line: 874, column: 17, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2199, file: !231, line: 874, column: 7)
!2224 = !DILocation(line: 875, column: 5, scope: !2223)
!2225 = !DILocation(line: 877, column: 7, scope: !2212)
!2226 = !DILocation(line: 877, column: 14, scope: !2212)
!2227 = !DILocation(line: 877, column: 7, scope: !2199)
!2228 = !DILocation(line: 879, column: 31, scope: !2211)
!2229 = !DILocation(line: 0, scope: !2211)
!2230 = !DILocation(line: 880, column: 7, scope: !2211)
!2231 = !DILocation(line: 880, column: 26, scope: !2211)
!2232 = !DILocation(line: 880, column: 13, scope: !2211)
!2233 = !DILocation(line: 882, column: 31, scope: !2211)
!2234 = !DILocation(line: 883, column: 33, scope: !2211)
!2235 = !DILocation(line: 883, column: 42, scope: !2211)
!2236 = !DILocation(line: 883, column: 31, scope: !2211)
!2237 = !DILocation(line: 882, column: 22, scope: !2211)
!2238 = !DILocation(line: 882, column: 15, scope: !2211)
!2239 = !DILocation(line: 884, column: 11, scope: !2211)
!2240 = !DILocation(line: 885, column: 15, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2211, file: !231, line: 884, column: 11)
!2242 = !{i64 0, i64 8, !2151, i64 8, i64 8, !483}
!2243 = !DILocation(line: 885, column: 9, scope: !2241)
!2244 = !DILocation(line: 886, column: 20, scope: !2211)
!2245 = !DILocation(line: 886, column: 18, scope: !2211)
!2246 = !DILocation(line: 886, column: 15, scope: !2211)
!2247 = !DILocation(line: 886, column: 32, scope: !2211)
!2248 = !DILocation(line: 886, column: 43, scope: !2211)
!2249 = !DILocation(line: 886, column: 53, scope: !2211)
!2250 = !DILocation(line: 0, scope: !1637, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 886, column: 7, scope: !2211)
!2252 = !DILocation(line: 59, column: 10, scope: !1637, inlinedAt: !2251)
!2253 = !DILocation(line: 887, column: 16, scope: !2211)
!2254 = !DILocation(line: 887, column: 14, scope: !2211)
!2255 = !DILocation(line: 888, column: 5, scope: !2212)
!2256 = !DILocation(line: 888, column: 5, scope: !2211)
!2257 = !DILocation(line: 891, column: 19, scope: !2215)
!2258 = !DILocation(line: 891, column: 25, scope: !2215)
!2259 = !DILocation(line: 0, scope: !2215)
!2260 = !DILocation(line: 892, column: 23, scope: !2215)
!2261 = !DILocation(line: 894, column: 26, scope: !2215)
!2262 = !DILocation(line: 894, column: 32, scope: !2215)
!2263 = !DILocation(line: 896, column: 55, scope: !2215)
!2264 = !DILocation(line: 897, column: 46, scope: !2215)
!2265 = !DILocation(line: 898, column: 55, scope: !2215)
!2266 = !DILocation(line: 899, column: 55, scope: !2215)
!2267 = !DILocation(line: 895, column: 20, scope: !2215)
!2268 = !DILocation(line: 901, column: 14, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2215, file: !231, line: 901, column: 9)
!2270 = !DILocation(line: 901, column: 9, scope: !2215)
!2271 = !DILocation(line: 903, column: 35, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2269, file: !231, line: 902, column: 7)
!2273 = !DILocation(line: 903, column: 20, scope: !2272)
!2274 = !DILocation(line: 904, column: 17, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2272, file: !231, line: 904, column: 13)
!2276 = !DILocation(line: 904, column: 13, scope: !2272)
!2277 = !DILocation(line: 905, column: 11, scope: !2275)
!2278 = !DILocation(line: 906, column: 27, scope: !2272)
!2279 = !DILocation(line: 906, column: 19, scope: !2272)
!2280 = !DILocation(line: 907, column: 69, scope: !2272)
!2281 = !DILocation(line: 909, column: 44, scope: !2272)
!2282 = !DILocation(line: 910, column: 44, scope: !2272)
!2283 = !DILocation(line: 907, column: 9, scope: !2272)
!2284 = !DILocation(line: 911, column: 7, scope: !2272)
!2285 = !DILocation(line: 913, column: 11, scope: !2215)
!2286 = !DILocation(line: 914, column: 5, scope: !2215)
!2287 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !231, file: !231, line: 925, type: !2288, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!22, !25, !30, !27}
!2290 = !{!2291, !2292, !2293}
!2291 = !DILocalVariable(name: "n", arg: 1, scope: !2287, file: !231, line: 925, type: !25)
!2292 = !DILocalVariable(name: "arg", arg: 2, scope: !2287, file: !231, line: 925, type: !30)
!2293 = !DILocalVariable(name: "argsize", arg: 3, scope: !2287, file: !231, line: 925, type: !27)
!2294 = !DILocation(line: 0, scope: !2287)
!2295 = !DILocation(line: 927, column: 10, scope: !2287)
!2296 = !DILocation(line: 927, column: 3, scope: !2287)
!2297 = distinct !DISubprogram(name: "quotearg", scope: !231, file: !231, line: 931, type: !681, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2298)
!2298 = !{!2299}
!2299 = !DILocalVariable(name: "arg", arg: 1, scope: !2297, file: !231, line: 931, type: !30)
!2300 = !DILocation(line: 0, scope: !2297)
!2301 = !DILocation(line: 0, scope: !2192, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 933, column: 10, scope: !2297)
!2303 = !DILocation(line: 921, column: 10, scope: !2192, inlinedAt: !2302)
!2304 = !DILocation(line: 933, column: 3, scope: !2297)
!2305 = distinct !DISubprogram(name: "quotearg_mem", scope: !231, file: !231, line: 937, type: !2306, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2308)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!22, !30, !27}
!2308 = !{!2309, !2310}
!2309 = !DILocalVariable(name: "arg", arg: 1, scope: !2305, file: !231, line: 937, type: !30)
!2310 = !DILocalVariable(name: "argsize", arg: 2, scope: !2305, file: !231, line: 937, type: !27)
!2311 = !DILocation(line: 0, scope: !2305)
!2312 = !DILocation(line: 0, scope: !2287, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 939, column: 10, scope: !2305)
!2314 = !DILocation(line: 927, column: 10, scope: !2287, inlinedAt: !2313)
!2315 = !DILocation(line: 939, column: 3, scope: !2305)
!2316 = distinct !DISubprogram(name: "quotearg_n_style", scope: !231, file: !231, line: 943, type: !2317, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2319)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!22, !25, !233, !30}
!2319 = !{!2320, !2321, !2322, !2323}
!2320 = !DILocalVariable(name: "n", arg: 1, scope: !2316, file: !231, line: 943, type: !25)
!2321 = !DILocalVariable(name: "s", arg: 2, scope: !2316, file: !231, line: 943, type: !233)
!2322 = !DILocalVariable(name: "arg", arg: 3, scope: !2316, file: !231, line: 943, type: !30)
!2323 = !DILocalVariable(name: "o", scope: !2316, file: !231, line: 945, type: !1427)
!2324 = !DILocation(line: 0, scope: !2316)
!2325 = !DILocation(line: 945, column: 3, scope: !2316)
!2326 = !DILocation(line: 945, column: 32, scope: !2316)
!2327 = !{!2328}
!2328 = distinct !{!2328, !2329, !"quoting_options_from_style: argument 0"}
!2329 = distinct !{!2329, !"quoting_options_from_style"}
!2330 = !DILocation(line: 945, column: 36, scope: !2316)
!2331 = !DILocalVariable(name: "style", arg: 1, scope: !2332, file: !231, line: 183, type: !233)
!2332 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !231, file: !231, line: 183, type: !2333, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!262, !233}
!2335 = !{!2331, !2336}
!2336 = !DILocalVariable(name: "o", scope: !2332, file: !231, line: 185, type: !262)
!2337 = !DILocation(line: 0, scope: !2332, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 945, column: 36, scope: !2316)
!2339 = !DILocation(line: 185, column: 26, scope: !2332, inlinedAt: !2338)
!2340 = !DILocation(line: 186, column: 13, scope: !2341, inlinedAt: !2338)
!2341 = distinct !DILexicalBlock(scope: !2332, file: !231, line: 186, column: 7)
!2342 = !DILocation(line: 186, column: 7, scope: !2332, inlinedAt: !2338)
!2343 = !DILocation(line: 187, column: 5, scope: !2341, inlinedAt: !2338)
!2344 = !DILocation(line: 188, column: 5, scope: !2332, inlinedAt: !2338)
!2345 = !DILocation(line: 188, column: 11, scope: !2332, inlinedAt: !2338)
!2346 = !DILocation(line: 946, column: 10, scope: !2316)
!2347 = !DILocation(line: 947, column: 1, scope: !2316)
!2348 = !DILocation(line: 946, column: 3, scope: !2316)
!2349 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !231, file: !231, line: 950, type: !2350, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!22, !25, !233, !30, !27}
!2352 = !{!2353, !2354, !2355, !2356, !2357}
!2353 = !DILocalVariable(name: "n", arg: 1, scope: !2349, file: !231, line: 950, type: !25)
!2354 = !DILocalVariable(name: "s", arg: 2, scope: !2349, file: !231, line: 950, type: !233)
!2355 = !DILocalVariable(name: "arg", arg: 3, scope: !2349, file: !231, line: 951, type: !30)
!2356 = !DILocalVariable(name: "argsize", arg: 4, scope: !2349, file: !231, line: 951, type: !27)
!2357 = !DILocalVariable(name: "o", scope: !2349, file: !231, line: 953, type: !1427)
!2358 = !DILocation(line: 0, scope: !2349)
!2359 = !DILocation(line: 953, column: 3, scope: !2349)
!2360 = !DILocation(line: 953, column: 32, scope: !2349)
!2361 = !{!2362}
!2362 = distinct !{!2362, !2363, !"quoting_options_from_style: argument 0"}
!2363 = distinct !{!2363, !"quoting_options_from_style"}
!2364 = !DILocation(line: 953, column: 36, scope: !2349)
!2365 = !DILocation(line: 0, scope: !2332, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 953, column: 36, scope: !2349)
!2367 = !DILocation(line: 185, column: 26, scope: !2332, inlinedAt: !2366)
!2368 = !DILocation(line: 186, column: 13, scope: !2341, inlinedAt: !2366)
!2369 = !DILocation(line: 186, column: 7, scope: !2332, inlinedAt: !2366)
!2370 = !DILocation(line: 187, column: 5, scope: !2341, inlinedAt: !2366)
!2371 = !DILocation(line: 188, column: 5, scope: !2332, inlinedAt: !2366)
!2372 = !DILocation(line: 188, column: 11, scope: !2332, inlinedAt: !2366)
!2373 = !DILocation(line: 954, column: 10, scope: !2349)
!2374 = !DILocation(line: 955, column: 1, scope: !2349)
!2375 = !DILocation(line: 954, column: 3, scope: !2349)
!2376 = distinct !DISubprogram(name: "quotearg_style", scope: !231, file: !231, line: 958, type: !2377, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2379)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!22, !233, !30}
!2379 = !{!2380, !2381}
!2380 = !DILocalVariable(name: "s", arg: 1, scope: !2376, file: !231, line: 958, type: !233)
!2381 = !DILocalVariable(name: "arg", arg: 2, scope: !2376, file: !231, line: 958, type: !30)
!2382 = !DILocation(line: 0, scope: !2376)
!2383 = !DILocation(line: 0, scope: !2316, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 960, column: 10, scope: !2376)
!2385 = !DILocation(line: 945, column: 3, scope: !2316, inlinedAt: !2384)
!2386 = !DILocation(line: 945, column: 32, scope: !2316, inlinedAt: !2384)
!2387 = !{!2388}
!2388 = distinct !{!2388, !2389, !"quoting_options_from_style: argument 0"}
!2389 = distinct !{!2389, !"quoting_options_from_style"}
!2390 = !DILocation(line: 945, column: 36, scope: !2316, inlinedAt: !2384)
!2391 = !DILocation(line: 0, scope: !2332, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 945, column: 36, scope: !2316, inlinedAt: !2384)
!2393 = !DILocation(line: 185, column: 26, scope: !2332, inlinedAt: !2392)
!2394 = !DILocation(line: 186, column: 13, scope: !2341, inlinedAt: !2392)
!2395 = !DILocation(line: 186, column: 7, scope: !2332, inlinedAt: !2392)
!2396 = !DILocation(line: 187, column: 5, scope: !2341, inlinedAt: !2392)
!2397 = !DILocation(line: 188, column: 5, scope: !2332, inlinedAt: !2392)
!2398 = !DILocation(line: 188, column: 11, scope: !2332, inlinedAt: !2392)
!2399 = !DILocation(line: 946, column: 10, scope: !2316, inlinedAt: !2384)
!2400 = !DILocation(line: 947, column: 1, scope: !2316, inlinedAt: !2384)
!2401 = !DILocation(line: 960, column: 3, scope: !2376)
!2402 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !231, file: !231, line: 964, type: !2403, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!22, !233, !30, !27}
!2405 = !{!2406, !2407, !2408}
!2406 = !DILocalVariable(name: "s", arg: 1, scope: !2402, file: !231, line: 964, type: !233)
!2407 = !DILocalVariable(name: "arg", arg: 2, scope: !2402, file: !231, line: 964, type: !30)
!2408 = !DILocalVariable(name: "argsize", arg: 3, scope: !2402, file: !231, line: 964, type: !27)
!2409 = !DILocation(line: 0, scope: !2402)
!2410 = !DILocation(line: 0, scope: !2349, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 966, column: 10, scope: !2402)
!2412 = !DILocation(line: 953, column: 3, scope: !2349, inlinedAt: !2411)
!2413 = !DILocation(line: 953, column: 32, scope: !2349, inlinedAt: !2411)
!2414 = !{!2415}
!2415 = distinct !{!2415, !2416, !"quoting_options_from_style: argument 0"}
!2416 = distinct !{!2416, !"quoting_options_from_style"}
!2417 = !DILocation(line: 953, column: 36, scope: !2349, inlinedAt: !2411)
!2418 = !DILocation(line: 0, scope: !2332, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 953, column: 36, scope: !2349, inlinedAt: !2411)
!2420 = !DILocation(line: 185, column: 26, scope: !2332, inlinedAt: !2419)
!2421 = !DILocation(line: 186, column: 13, scope: !2341, inlinedAt: !2419)
!2422 = !DILocation(line: 186, column: 7, scope: !2332, inlinedAt: !2419)
!2423 = !DILocation(line: 187, column: 5, scope: !2341, inlinedAt: !2419)
!2424 = !DILocation(line: 188, column: 5, scope: !2332, inlinedAt: !2419)
!2425 = !DILocation(line: 188, column: 11, scope: !2332, inlinedAt: !2419)
!2426 = !DILocation(line: 954, column: 10, scope: !2349, inlinedAt: !2411)
!2427 = !DILocation(line: 955, column: 1, scope: !2349, inlinedAt: !2411)
!2428 = !DILocation(line: 966, column: 3, scope: !2402)
!2429 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !231, file: !231, line: 970, type: !2430, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2432)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!22, !30, !27, !23}
!2432 = !{!2433, !2434, !2435, !2436}
!2433 = !DILocalVariable(name: "arg", arg: 1, scope: !2429, file: !231, line: 970, type: !30)
!2434 = !DILocalVariable(name: "argsize", arg: 2, scope: !2429, file: !231, line: 970, type: !27)
!2435 = !DILocalVariable(name: "ch", arg: 3, scope: !2429, file: !231, line: 970, type: !23)
!2436 = !DILocalVariable(name: "options", scope: !2429, file: !231, line: 972, type: !262)
!2437 = !DILocation(line: 0, scope: !2429)
!2438 = !DILocation(line: 972, column: 3, scope: !2429)
!2439 = !DILocation(line: 972, column: 26, scope: !2429)
!2440 = !DILocation(line: 973, column: 13, scope: !2429)
!2441 = !{i64 0, i64 4, !578, i64 4, i64 4, !569, i64 8, i64 32, !578, i64 40, i64 8, !483, i64 48, i64 8, !483}
!2442 = !DILocation(line: 0, scope: !1447, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 974, column: 3, scope: !2429)
!2444 = !DILocation(line: 147, column: 62, scope: !1447, inlinedAt: !2443)
!2445 = !DILocation(line: 147, column: 57, scope: !1447, inlinedAt: !2443)
!2446 = !DILocation(line: 148, column: 15, scope: !1447, inlinedAt: !2443)
!2447 = !DILocation(line: 149, column: 21, scope: !1447, inlinedAt: !2443)
!2448 = !DILocation(line: 149, column: 24, scope: !1447, inlinedAt: !2443)
!2449 = !DILocation(line: 149, column: 34, scope: !1447, inlinedAt: !2443)
!2450 = !DILocation(line: 150, column: 19, scope: !1447, inlinedAt: !2443)
!2451 = !DILocation(line: 150, column: 24, scope: !1447, inlinedAt: !2443)
!2452 = !DILocation(line: 150, column: 6, scope: !1447, inlinedAt: !2443)
!2453 = !DILocation(line: 975, column: 10, scope: !2429)
!2454 = !DILocation(line: 976, column: 1, scope: !2429)
!2455 = !DILocation(line: 975, column: 3, scope: !2429)
!2456 = distinct !DISubprogram(name: "quotearg_char", scope: !231, file: !231, line: 979, type: !2457, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2459)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!22, !30, !23}
!2459 = !{!2460, !2461}
!2460 = !DILocalVariable(name: "arg", arg: 1, scope: !2456, file: !231, line: 979, type: !30)
!2461 = !DILocalVariable(name: "ch", arg: 2, scope: !2456, file: !231, line: 979, type: !23)
!2462 = !DILocation(line: 0, scope: !2456)
!2463 = !DILocation(line: 0, scope: !2429, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 981, column: 10, scope: !2456)
!2465 = !DILocation(line: 972, column: 3, scope: !2429, inlinedAt: !2464)
!2466 = !DILocation(line: 972, column: 26, scope: !2429, inlinedAt: !2464)
!2467 = !DILocation(line: 973, column: 13, scope: !2429, inlinedAt: !2464)
!2468 = !DILocation(line: 0, scope: !1447, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 974, column: 3, scope: !2429, inlinedAt: !2464)
!2470 = !DILocation(line: 147, column: 62, scope: !1447, inlinedAt: !2469)
!2471 = !DILocation(line: 147, column: 57, scope: !1447, inlinedAt: !2469)
!2472 = !DILocation(line: 148, column: 15, scope: !1447, inlinedAt: !2469)
!2473 = !DILocation(line: 149, column: 21, scope: !1447, inlinedAt: !2469)
!2474 = !DILocation(line: 149, column: 24, scope: !1447, inlinedAt: !2469)
!2475 = !DILocation(line: 149, column: 34, scope: !1447, inlinedAt: !2469)
!2476 = !DILocation(line: 150, column: 19, scope: !1447, inlinedAt: !2469)
!2477 = !DILocation(line: 150, column: 24, scope: !1447, inlinedAt: !2469)
!2478 = !DILocation(line: 150, column: 6, scope: !1447, inlinedAt: !2469)
!2479 = !DILocation(line: 975, column: 10, scope: !2429, inlinedAt: !2464)
!2480 = !DILocation(line: 976, column: 1, scope: !2429, inlinedAt: !2464)
!2481 = !DILocation(line: 981, column: 3, scope: !2456)
!2482 = distinct !DISubprogram(name: "quotearg_colon", scope: !231, file: !231, line: 985, type: !681, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2483)
!2483 = !{!2484}
!2484 = !DILocalVariable(name: "arg", arg: 1, scope: !2482, file: !231, line: 985, type: !30)
!2485 = !DILocation(line: 0, scope: !2482)
!2486 = !DILocation(line: 0, scope: !2456, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 987, column: 10, scope: !2482)
!2488 = !DILocation(line: 0, scope: !2429, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 981, column: 10, scope: !2456, inlinedAt: !2487)
!2490 = !DILocation(line: 972, column: 3, scope: !2429, inlinedAt: !2489)
!2491 = !DILocation(line: 972, column: 26, scope: !2429, inlinedAt: !2489)
!2492 = !DILocation(line: 973, column: 13, scope: !2429, inlinedAt: !2489)
!2493 = !DILocation(line: 0, scope: !1447, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 974, column: 3, scope: !2429, inlinedAt: !2489)
!2495 = !DILocation(line: 147, column: 57, scope: !1447, inlinedAt: !2494)
!2496 = !DILocation(line: 149, column: 21, scope: !1447, inlinedAt: !2494)
!2497 = !DILocation(line: 150, column: 6, scope: !1447, inlinedAt: !2494)
!2498 = !DILocation(line: 975, column: 10, scope: !2429, inlinedAt: !2489)
!2499 = !DILocation(line: 976, column: 1, scope: !2429, inlinedAt: !2489)
!2500 = !DILocation(line: 987, column: 3, scope: !2482)
!2501 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !231, file: !231, line: 991, type: !2306, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2502)
!2502 = !{!2503, !2504}
!2503 = !DILocalVariable(name: "arg", arg: 1, scope: !2501, file: !231, line: 991, type: !30)
!2504 = !DILocalVariable(name: "argsize", arg: 2, scope: !2501, file: !231, line: 991, type: !27)
!2505 = !DILocation(line: 0, scope: !2501)
!2506 = !DILocation(line: 0, scope: !2429, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 993, column: 10, scope: !2501)
!2508 = !DILocation(line: 972, column: 3, scope: !2429, inlinedAt: !2507)
!2509 = !DILocation(line: 972, column: 26, scope: !2429, inlinedAt: !2507)
!2510 = !DILocation(line: 973, column: 13, scope: !2429, inlinedAt: !2507)
!2511 = !DILocation(line: 0, scope: !1447, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 974, column: 3, scope: !2429, inlinedAt: !2507)
!2513 = !DILocation(line: 147, column: 57, scope: !1447, inlinedAt: !2512)
!2514 = !DILocation(line: 149, column: 21, scope: !1447, inlinedAt: !2512)
!2515 = !DILocation(line: 150, column: 6, scope: !1447, inlinedAt: !2512)
!2516 = !DILocation(line: 975, column: 10, scope: !2429, inlinedAt: !2507)
!2517 = !DILocation(line: 976, column: 1, scope: !2429, inlinedAt: !2507)
!2518 = !DILocation(line: 993, column: 3, scope: !2501)
!2519 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !231, file: !231, line: 997, type: !2317, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2520)
!2520 = !{!2521, !2522, !2523, !2524}
!2521 = !DILocalVariable(name: "n", arg: 1, scope: !2519, file: !231, line: 997, type: !25)
!2522 = !DILocalVariable(name: "s", arg: 2, scope: !2519, file: !231, line: 997, type: !233)
!2523 = !DILocalVariable(name: "arg", arg: 3, scope: !2519, file: !231, line: 997, type: !30)
!2524 = !DILocalVariable(name: "options", scope: !2519, file: !231, line: 999, type: !262)
!2525 = !DILocation(line: 0, scope: !2519)
!2526 = !DILocation(line: 999, column: 3, scope: !2519)
!2527 = !DILocation(line: 999, column: 26, scope: !2519)
!2528 = !DILocation(line: 0, scope: !2332, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 1000, column: 13, scope: !2519)
!2530 = !DILocation(line: 186, column: 13, scope: !2341, inlinedAt: !2529)
!2531 = !DILocation(line: 186, column: 7, scope: !2332, inlinedAt: !2529)
!2532 = !DILocation(line: 187, column: 5, scope: !2341, inlinedAt: !2529)
!2533 = !{!2534}
!2534 = distinct !{!2534, !2535, !"quoting_options_from_style: argument 0"}
!2535 = distinct !{!2535, !"quoting_options_from_style"}
!2536 = !DILocation(line: 1000, column: 13, scope: !2519)
!2537 = !DILocation(line: 0, scope: !1447, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 1001, column: 3, scope: !2519)
!2539 = !DILocation(line: 147, column: 57, scope: !1447, inlinedAt: !2538)
!2540 = !DILocation(line: 149, column: 21, scope: !1447, inlinedAt: !2538)
!2541 = !DILocation(line: 150, column: 6, scope: !1447, inlinedAt: !2538)
!2542 = !DILocation(line: 1002, column: 10, scope: !2519)
!2543 = !DILocation(line: 1003, column: 1, scope: !2519)
!2544 = !DILocation(line: 1002, column: 3, scope: !2519)
!2545 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !231, file: !231, line: 1006, type: !2546, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!22, !25, !30, !30, !30}
!2548 = !{!2549, !2550, !2551, !2552}
!2549 = !DILocalVariable(name: "n", arg: 1, scope: !2545, file: !231, line: 1006, type: !25)
!2550 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2545, file: !231, line: 1006, type: !30)
!2551 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2545, file: !231, line: 1007, type: !30)
!2552 = !DILocalVariable(name: "arg", arg: 4, scope: !2545, file: !231, line: 1007, type: !30)
!2553 = !DILocation(line: 0, scope: !2545)
!2554 = !DILocalVariable(name: "n", arg: 1, scope: !2555, file: !231, line: 1014, type: !25)
!2555 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !231, file: !231, line: 1014, type: !2556, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2558)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!22, !25, !30, !30, !30, !27}
!2558 = !{!2554, !2559, !2560, !2561, !2562, !2563}
!2559 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2555, file: !231, line: 1014, type: !30)
!2560 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2555, file: !231, line: 1015, type: !30)
!2561 = !DILocalVariable(name: "arg", arg: 4, scope: !2555, file: !231, line: 1016, type: !30)
!2562 = !DILocalVariable(name: "argsize", arg: 5, scope: !2555, file: !231, line: 1016, type: !27)
!2563 = !DILocalVariable(name: "o", scope: !2555, file: !231, line: 1018, type: !262)
!2564 = !DILocation(line: 0, scope: !2555, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 1009, column: 10, scope: !2545)
!2566 = !DILocation(line: 1018, column: 3, scope: !2555, inlinedAt: !2565)
!2567 = !DILocation(line: 1018, column: 26, scope: !2555, inlinedAt: !2565)
!2568 = !DILocation(line: 1018, column: 30, scope: !2555, inlinedAt: !2565)
!2569 = !DILocation(line: 0, scope: !1487, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 1019, column: 3, scope: !2555, inlinedAt: !2565)
!2571 = !DILocation(line: 174, column: 6, scope: !1487, inlinedAt: !2570)
!2572 = !DILocation(line: 174, column: 12, scope: !1487, inlinedAt: !2570)
!2573 = !DILocation(line: 175, column: 8, scope: !1501, inlinedAt: !2570)
!2574 = !DILocation(line: 175, column: 19, scope: !1501, inlinedAt: !2570)
!2575 = !DILocation(line: 176, column: 5, scope: !1501, inlinedAt: !2570)
!2576 = !DILocation(line: 177, column: 6, scope: !1487, inlinedAt: !2570)
!2577 = !DILocation(line: 177, column: 17, scope: !1487, inlinedAt: !2570)
!2578 = !DILocation(line: 178, column: 6, scope: !1487, inlinedAt: !2570)
!2579 = !DILocation(line: 178, column: 18, scope: !1487, inlinedAt: !2570)
!2580 = !DILocation(line: 1020, column: 10, scope: !2555, inlinedAt: !2565)
!2581 = !DILocation(line: 1021, column: 1, scope: !2555, inlinedAt: !2565)
!2582 = !DILocation(line: 1009, column: 3, scope: !2545)
!2583 = !DILocation(line: 0, scope: !2555)
!2584 = !DILocation(line: 1018, column: 3, scope: !2555)
!2585 = !DILocation(line: 1018, column: 26, scope: !2555)
!2586 = !DILocation(line: 1018, column: 30, scope: !2555)
!2587 = !DILocation(line: 0, scope: !1487, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 1019, column: 3, scope: !2555)
!2589 = !DILocation(line: 174, column: 6, scope: !1487, inlinedAt: !2588)
!2590 = !DILocation(line: 174, column: 12, scope: !1487, inlinedAt: !2588)
!2591 = !DILocation(line: 175, column: 8, scope: !1501, inlinedAt: !2588)
!2592 = !DILocation(line: 175, column: 19, scope: !1501, inlinedAt: !2588)
!2593 = !DILocation(line: 176, column: 5, scope: !1501, inlinedAt: !2588)
!2594 = !DILocation(line: 177, column: 6, scope: !1487, inlinedAt: !2588)
!2595 = !DILocation(line: 177, column: 17, scope: !1487, inlinedAt: !2588)
!2596 = !DILocation(line: 178, column: 6, scope: !1487, inlinedAt: !2588)
!2597 = !DILocation(line: 178, column: 18, scope: !1487, inlinedAt: !2588)
!2598 = !DILocation(line: 1020, column: 10, scope: !2555)
!2599 = !DILocation(line: 1021, column: 1, scope: !2555)
!2600 = !DILocation(line: 1020, column: 3, scope: !2555)
!2601 = distinct !DISubprogram(name: "quotearg_custom", scope: !231, file: !231, line: 1024, type: !2602, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!22, !30, !30, !30}
!2604 = !{!2605, !2606, !2607}
!2605 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2601, file: !231, line: 1024, type: !30)
!2606 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2601, file: !231, line: 1024, type: !30)
!2607 = !DILocalVariable(name: "arg", arg: 3, scope: !2601, file: !231, line: 1025, type: !30)
!2608 = !DILocation(line: 0, scope: !2601)
!2609 = !DILocation(line: 0, scope: !2545, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 1027, column: 10, scope: !2601)
!2611 = !DILocation(line: 0, scope: !2555, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 1009, column: 10, scope: !2545, inlinedAt: !2610)
!2613 = !DILocation(line: 1018, column: 3, scope: !2555, inlinedAt: !2612)
!2614 = !DILocation(line: 1018, column: 26, scope: !2555, inlinedAt: !2612)
!2615 = !DILocation(line: 1018, column: 30, scope: !2555, inlinedAt: !2612)
!2616 = !DILocation(line: 0, scope: !1487, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 1019, column: 3, scope: !2555, inlinedAt: !2612)
!2618 = !DILocation(line: 174, column: 6, scope: !1487, inlinedAt: !2617)
!2619 = !DILocation(line: 174, column: 12, scope: !1487, inlinedAt: !2617)
!2620 = !DILocation(line: 175, column: 8, scope: !1501, inlinedAt: !2617)
!2621 = !DILocation(line: 175, column: 19, scope: !1501, inlinedAt: !2617)
!2622 = !DILocation(line: 176, column: 5, scope: !1501, inlinedAt: !2617)
!2623 = !DILocation(line: 177, column: 6, scope: !1487, inlinedAt: !2617)
!2624 = !DILocation(line: 177, column: 17, scope: !1487, inlinedAt: !2617)
!2625 = !DILocation(line: 178, column: 6, scope: !1487, inlinedAt: !2617)
!2626 = !DILocation(line: 178, column: 18, scope: !1487, inlinedAt: !2617)
!2627 = !DILocation(line: 1020, column: 10, scope: !2555, inlinedAt: !2612)
!2628 = !DILocation(line: 1021, column: 1, scope: !2555, inlinedAt: !2612)
!2629 = !DILocation(line: 1027, column: 3, scope: !2601)
!2630 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !231, file: !231, line: 1031, type: !2631, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!22, !30, !30, !30, !27}
!2633 = !{!2634, !2635, !2636, !2637}
!2634 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2630, file: !231, line: 1031, type: !30)
!2635 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2630, file: !231, line: 1031, type: !30)
!2636 = !DILocalVariable(name: "arg", arg: 3, scope: !2630, file: !231, line: 1032, type: !30)
!2637 = !DILocalVariable(name: "argsize", arg: 4, scope: !2630, file: !231, line: 1032, type: !27)
!2638 = !DILocation(line: 0, scope: !2630)
!2639 = !DILocation(line: 0, scope: !2555, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 1034, column: 10, scope: !2630)
!2641 = !DILocation(line: 1018, column: 3, scope: !2555, inlinedAt: !2640)
!2642 = !DILocation(line: 1018, column: 26, scope: !2555, inlinedAt: !2640)
!2643 = !DILocation(line: 1018, column: 30, scope: !2555, inlinedAt: !2640)
!2644 = !DILocation(line: 0, scope: !1487, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 1019, column: 3, scope: !2555, inlinedAt: !2640)
!2646 = !DILocation(line: 174, column: 6, scope: !1487, inlinedAt: !2645)
!2647 = !DILocation(line: 174, column: 12, scope: !1487, inlinedAt: !2645)
!2648 = !DILocation(line: 175, column: 8, scope: !1501, inlinedAt: !2645)
!2649 = !DILocation(line: 175, column: 19, scope: !1501, inlinedAt: !2645)
!2650 = !DILocation(line: 176, column: 5, scope: !1501, inlinedAt: !2645)
!2651 = !DILocation(line: 177, column: 6, scope: !1487, inlinedAt: !2645)
!2652 = !DILocation(line: 177, column: 17, scope: !1487, inlinedAt: !2645)
!2653 = !DILocation(line: 178, column: 6, scope: !1487, inlinedAt: !2645)
!2654 = !DILocation(line: 178, column: 18, scope: !1487, inlinedAt: !2645)
!2655 = !DILocation(line: 1020, column: 10, scope: !2555, inlinedAt: !2640)
!2656 = !DILocation(line: 1021, column: 1, scope: !2555, inlinedAt: !2640)
!2657 = !DILocation(line: 1034, column: 3, scope: !2630)
!2658 = distinct !DISubprogram(name: "quote_n_mem", scope: !231, file: !231, line: 1049, type: !2659, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2661)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!30, !25, !30, !27}
!2661 = !{!2662, !2663, !2664}
!2662 = !DILocalVariable(name: "n", arg: 1, scope: !2658, file: !231, line: 1049, type: !25)
!2663 = !DILocalVariable(name: "arg", arg: 2, scope: !2658, file: !231, line: 1049, type: !30)
!2664 = !DILocalVariable(name: "argsize", arg: 3, scope: !2658, file: !231, line: 1049, type: !27)
!2665 = !DILocation(line: 0, scope: !2658)
!2666 = !DILocation(line: 1051, column: 10, scope: !2658)
!2667 = !DILocation(line: 1051, column: 3, scope: !2658)
!2668 = distinct !DISubprogram(name: "quote_mem", scope: !231, file: !231, line: 1055, type: !2669, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2671)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!30, !30, !27}
!2671 = !{!2672, !2673}
!2672 = !DILocalVariable(name: "arg", arg: 1, scope: !2668, file: !231, line: 1055, type: !30)
!2673 = !DILocalVariable(name: "argsize", arg: 2, scope: !2668, file: !231, line: 1055, type: !27)
!2674 = !DILocation(line: 0, scope: !2668)
!2675 = !DILocation(line: 0, scope: !2658, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 1057, column: 10, scope: !2668)
!2677 = !DILocation(line: 1051, column: 10, scope: !2658, inlinedAt: !2676)
!2678 = !DILocation(line: 1057, column: 3, scope: !2668)
!2679 = distinct !DISubprogram(name: "quote_n", scope: !231, file: !231, line: 1061, type: !2680, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!30, !25, !30}
!2682 = !{!2683, !2684}
!2683 = !DILocalVariable(name: "n", arg: 1, scope: !2679, file: !231, line: 1061, type: !25)
!2684 = !DILocalVariable(name: "arg", arg: 2, scope: !2679, file: !231, line: 1061, type: !30)
!2685 = !DILocation(line: 0, scope: !2679)
!2686 = !DILocation(line: 0, scope: !2658, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 1063, column: 10, scope: !2679)
!2688 = !DILocation(line: 1051, column: 10, scope: !2658, inlinedAt: !2687)
!2689 = !DILocation(line: 1063, column: 3, scope: !2679)
!2690 = distinct !DISubprogram(name: "quote", scope: !231, file: !231, line: 1067, type: !2691, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2693)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!30, !30}
!2693 = !{!2694}
!2694 = !DILocalVariable(name: "arg", arg: 1, scope: !2690, file: !231, line: 1067, type: !30)
!2695 = !DILocation(line: 0, scope: !2690)
!2696 = !DILocation(line: 0, scope: !2679, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 1069, column: 10, scope: !2690)
!2698 = !DILocation(line: 0, scope: !2658, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 1063, column: 10, scope: !2679, inlinedAt: !2697)
!2700 = !DILocation(line: 1051, column: 10, scope: !2658, inlinedAt: !2699)
!2701 = !DILocation(line: 1069, column: 3, scope: !2690)
!2702 = distinct !DISubprogram(name: "version_etc_arn", scope: !358, file: !358, line: 61, type: !2703, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2740)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{null, !2705, !30, !30, !30, !2739, !27}
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !2707)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !2708)
!2708 = !{!2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2707, file: !64, line: 51, baseType: !25, size: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2707, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2707, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2707, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2707, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2707, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2707, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2707, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2707, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2707, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2707, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2707, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2707, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2707, file: !64, line: 70, baseType: !2723, size: 64, offset: 832)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2707, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2707, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2707, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2707, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2707, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2707, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2707, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2707, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2707, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2707, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2707, file: !64, line: 93, baseType: !2723, size: 64, offset: 1344)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2707, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2707, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2707, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2707, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!2740 = !{!2741, !2742, !2743, !2744, !2745, !2746}
!2741 = !DILocalVariable(name: "stream", arg: 1, scope: !2702, file: !358, line: 61, type: !2705)
!2742 = !DILocalVariable(name: "command_name", arg: 2, scope: !2702, file: !358, line: 62, type: !30)
!2743 = !DILocalVariable(name: "package", arg: 3, scope: !2702, file: !358, line: 62, type: !30)
!2744 = !DILocalVariable(name: "version", arg: 4, scope: !2702, file: !358, line: 63, type: !30)
!2745 = !DILocalVariable(name: "authors", arg: 5, scope: !2702, file: !358, line: 64, type: !2739)
!2746 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2702, file: !358, line: 64, type: !27)
!2747 = !DILocation(line: 0, scope: !2702)
!2748 = !DILocation(line: 66, column: 7, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2702, file: !358, line: 66, column: 7)
!2750 = !DILocation(line: 66, column: 7, scope: !2702)
!2751 = !DILocation(line: 67, column: 5, scope: !2749)
!2752 = !DILocation(line: 69, column: 5, scope: !2749)
!2753 = !DILocation(line: 83, column: 3, scope: !2702)
!2754 = !DILocation(line: 85, column: 3, scope: !2702)
!2755 = !DILocation(line: 88, column: 3, scope: !2702)
!2756 = !DILocation(line: 95, column: 3, scope: !2702)
!2757 = !DILocation(line: 97, column: 3, scope: !2702)
!2758 = !DILocation(line: 105, column: 7, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2702, file: !358, line: 98, column: 5)
!2760 = !DILocation(line: 106, column: 7, scope: !2759)
!2761 = !DILocation(line: 109, column: 7, scope: !2759)
!2762 = !DILocation(line: 110, column: 7, scope: !2759)
!2763 = !DILocation(line: 113, column: 7, scope: !2759)
!2764 = !DILocation(line: 115, column: 7, scope: !2759)
!2765 = !DILocation(line: 120, column: 7, scope: !2759)
!2766 = !DILocation(line: 122, column: 7, scope: !2759)
!2767 = !DILocation(line: 127, column: 7, scope: !2759)
!2768 = !DILocation(line: 129, column: 7, scope: !2759)
!2769 = !DILocation(line: 134, column: 7, scope: !2759)
!2770 = !DILocation(line: 137, column: 7, scope: !2759)
!2771 = !DILocation(line: 142, column: 7, scope: !2759)
!2772 = !DILocation(line: 145, column: 7, scope: !2759)
!2773 = !DILocation(line: 150, column: 7, scope: !2759)
!2774 = !DILocation(line: 154, column: 7, scope: !2759)
!2775 = !DILocation(line: 159, column: 7, scope: !2759)
!2776 = !DILocation(line: 163, column: 7, scope: !2759)
!2777 = !DILocation(line: 170, column: 7, scope: !2759)
!2778 = !DILocation(line: 174, column: 7, scope: !2759)
!2779 = !DILocation(line: 176, column: 1, scope: !2702)
!2780 = distinct !DISubprogram(name: "version_etc_ar", scope: !358, file: !358, line: 183, type: !2781, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !2705, !30, !30, !30, !2739}
!2783 = !{!2784, !2785, !2786, !2787, !2788, !2789}
!2784 = !DILocalVariable(name: "stream", arg: 1, scope: !2780, file: !358, line: 183, type: !2705)
!2785 = !DILocalVariable(name: "command_name", arg: 2, scope: !2780, file: !358, line: 184, type: !30)
!2786 = !DILocalVariable(name: "package", arg: 3, scope: !2780, file: !358, line: 184, type: !30)
!2787 = !DILocalVariable(name: "version", arg: 4, scope: !2780, file: !358, line: 185, type: !30)
!2788 = !DILocalVariable(name: "authors", arg: 5, scope: !2780, file: !358, line: 185, type: !2739)
!2789 = !DILocalVariable(name: "n_authors", scope: !2780, file: !358, line: 187, type: !27)
!2790 = !DILocation(line: 0, scope: !2780)
!2791 = !DILocation(line: 189, column: 8, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2780, file: !358, line: 189, column: 3)
!2793 = !DILocation(line: 0, scope: !2792)
!2794 = !DILocation(line: 189, column: 23, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2792, file: !358, line: 189, column: 3)
!2796 = !DILocation(line: 189, column: 3, scope: !2792)
!2797 = !DILocation(line: 189, column: 52, scope: !2795)
!2798 = distinct !{!2798, !2796, !2799, !535}
!2799 = !DILocation(line: 190, column: 5, scope: !2792)
!2800 = !DILocation(line: 191, column: 3, scope: !2780)
!2801 = !DILocation(line: 192, column: 1, scope: !2780)
!2802 = distinct !DISubprogram(name: "version_etc_va", scope: !358, file: !358, line: 199, type: !2803, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2816)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{null, !2705, !30, !30, !30, !2805}
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !157, line: 52, baseType: !2806)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !159, line: 32, baseType: !2807)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2808, baseType: !2809)
!2808 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !163, size: 256, elements: !2810)
!2810 = !{!2811, !2812, !2813, !2814, !2815}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2809, file: !2808, line: 192, baseType: !24, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2809, file: !2808, line: 192, baseType: !24, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2809, file: !2808, line: 192, baseType: !24, size: 64, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2809, file: !2808, line: 192, baseType: !25, size: 32, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2809, file: !2808, line: 192, baseType: !25, size: 32, offset: 224)
!2816 = !{!2817, !2818, !2819, !2820, !2821, !2822, !2823}
!2817 = !DILocalVariable(name: "stream", arg: 1, scope: !2802, file: !358, line: 199, type: !2705)
!2818 = !DILocalVariable(name: "command_name", arg: 2, scope: !2802, file: !358, line: 200, type: !30)
!2819 = !DILocalVariable(name: "package", arg: 3, scope: !2802, file: !358, line: 200, type: !30)
!2820 = !DILocalVariable(name: "version", arg: 4, scope: !2802, file: !358, line: 201, type: !30)
!2821 = !DILocalVariable(name: "authors", arg: 5, scope: !2802, file: !358, line: 201, type: !2805)
!2822 = !DILocalVariable(name: "n_authors", scope: !2802, file: !358, line: 203, type: !27)
!2823 = !DILocalVariable(name: "authtab", scope: !2802, file: !358, line: 204, type: !2824)
!2824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 640, elements: !258)
!2825 = !DILocation(line: 0, scope: !2802)
!2826 = !DILocation(line: 201, column: 46, scope: !2802)
!2827 = !DILocation(line: 204, column: 3, scope: !2802)
!2828 = !DILocation(line: 204, column: 15, scope: !2802)
!2829 = !DILocation(line: 208, column: 35, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !358, line: 206, column: 3)
!2831 = distinct !DILexicalBlock(scope: !2802, file: !358, line: 206, column: 3)
!2832 = !DILocation(line: 208, column: 14, scope: !2830)
!2833 = !DILocation(line: 208, column: 33, scope: !2830)
!2834 = !DILocation(line: 208, column: 67, scope: !2830)
!2835 = !DILocation(line: 206, column: 3, scope: !2831)
!2836 = !DILocation(line: 212, column: 20, scope: !2802)
!2837 = !DILocation(line: 211, column: 3, scope: !2802)
!2838 = !DILocation(line: 213, column: 1, scope: !2802)
!2839 = distinct !DISubprogram(name: "version_etc", scope: !358, file: !358, line: 230, type: !2840, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{null, !2705, !30, !30, !30, null}
!2842 = !{!2843, !2844, !2845, !2846, !2847}
!2843 = !DILocalVariable(name: "stream", arg: 1, scope: !2839, file: !358, line: 230, type: !2705)
!2844 = !DILocalVariable(name: "command_name", arg: 2, scope: !2839, file: !358, line: 231, type: !30)
!2845 = !DILocalVariable(name: "package", arg: 3, scope: !2839, file: !358, line: 231, type: !30)
!2846 = !DILocalVariable(name: "version", arg: 4, scope: !2839, file: !358, line: 232, type: !30)
!2847 = !DILocalVariable(name: "authors", scope: !2839, file: !358, line: 234, type: !2805)
!2848 = !DILocation(line: 0, scope: !2839)
!2849 = !DILocation(line: 234, column: 3, scope: !2839)
!2850 = !DILocation(line: 234, column: 11, scope: !2839)
!2851 = !DILocation(line: 235, column: 3, scope: !2839)
!2852 = !DILocation(line: 236, column: 3, scope: !2839)
!2853 = !DILocation(line: 237, column: 3, scope: !2839)
!2854 = !DILocation(line: 238, column: 1, scope: !2839)
!2855 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !358, file: !358, line: 241, type: !184, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !561)
!2856 = !DILocation(line: 243, column: 3, scope: !2855)
!2857 = !DILocation(line: 248, column: 3, scope: !2855)
!2858 = !DILocation(line: 254, column: 3, scope: !2855)
!2859 = !DILocation(line: 259, column: 3, scope: !2855)
!2860 = !DILocation(line: 261, column: 1, scope: !2855)
!2861 = distinct !DISubprogram(name: "xnrealloc", scope: !2862, file: !2862, line: 147, type: !2863, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2865)
!2862 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!24, !24, !27, !27}
!2865 = !{!2866, !2867, !2868}
!2866 = !DILocalVariable(name: "p", arg: 1, scope: !2861, file: !2862, line: 147, type: !24)
!2867 = !DILocalVariable(name: "n", arg: 2, scope: !2861, file: !2862, line: 147, type: !27)
!2868 = !DILocalVariable(name: "s", arg: 3, scope: !2861, file: !2862, line: 147, type: !27)
!2869 = !DILocation(line: 0, scope: !2861)
!2870 = !DILocalVariable(name: "p", arg: 1, scope: !2871, file: !365, line: 83, type: !24)
!2871 = distinct !DISubprogram(name: "xreallocarray", scope: !365, file: !365, line: 83, type: !2863, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2872)
!2872 = !{!2870, !2873, !2874}
!2873 = !DILocalVariable(name: "n", arg: 2, scope: !2871, file: !365, line: 83, type: !27)
!2874 = !DILocalVariable(name: "s", arg: 3, scope: !2871, file: !365, line: 83, type: !27)
!2875 = !DILocation(line: 0, scope: !2871, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 149, column: 10, scope: !2861)
!2877 = !DILocation(line: 85, column: 25, scope: !2871, inlinedAt: !2876)
!2878 = !DILocalVariable(name: "p", arg: 1, scope: !2879, file: !365, line: 37, type: !24)
!2879 = distinct !DISubprogram(name: "check_nonnull", scope: !365, file: !365, line: 37, type: !2880, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2882)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!24, !24}
!2882 = !{!2878}
!2883 = !DILocation(line: 0, scope: !2879, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 85, column: 10, scope: !2871, inlinedAt: !2876)
!2885 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !2884)
!2886 = distinct !DILexicalBlock(scope: !2879, file: !365, line: 39, column: 7)
!2887 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !2884)
!2888 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !2884)
!2889 = !DILocation(line: 149, column: 3, scope: !2861)
!2890 = !DILocation(line: 0, scope: !2871)
!2891 = !DILocation(line: 85, column: 25, scope: !2871)
!2892 = !DILocation(line: 0, scope: !2879, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 85, column: 10, scope: !2871)
!2894 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !2893)
!2895 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !2893)
!2896 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !2893)
!2897 = !DILocation(line: 85, column: 3, scope: !2871)
!2898 = distinct !DISubprogram(name: "xmalloc", scope: !365, file: !365, line: 47, type: !2899, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!24, !27}
!2901 = !{!2902}
!2902 = !DILocalVariable(name: "s", arg: 1, scope: !2898, file: !365, line: 47, type: !27)
!2903 = !DILocation(line: 0, scope: !2898)
!2904 = !DILocation(line: 49, column: 25, scope: !2898)
!2905 = !DILocation(line: 0, scope: !2879, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 49, column: 10, scope: !2898)
!2907 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !2906)
!2908 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !2906)
!2909 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !2906)
!2910 = !DILocation(line: 49, column: 3, scope: !2898)
!2911 = distinct !DISubprogram(name: "ximalloc", scope: !365, file: !365, line: 53, type: !2912, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!24, !384}
!2914 = !{!2915}
!2915 = !DILocalVariable(name: "s", arg: 1, scope: !2911, file: !365, line: 53, type: !384)
!2916 = !DILocation(line: 0, scope: !2911)
!2917 = !DILocalVariable(name: "s", arg: 1, scope: !2918, file: !2919, line: 55, type: !384)
!2918 = distinct !DISubprogram(name: "imalloc", scope: !2919, file: !2919, line: 55, type: !2912, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2920)
!2919 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2920 = !{!2917}
!2921 = !DILocation(line: 0, scope: !2918, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 55, column: 25, scope: !2911)
!2923 = !DILocation(line: 57, column: 26, scope: !2918, inlinedAt: !2922)
!2924 = !DILocation(line: 0, scope: !2879, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 55, column: 10, scope: !2911)
!2926 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !2925)
!2927 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !2925)
!2928 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !2925)
!2929 = !DILocation(line: 55, column: 3, scope: !2911)
!2930 = distinct !DISubprogram(name: "xcharalloc", scope: !365, file: !365, line: 59, type: !2931, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2933)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!22, !27}
!2933 = !{!2934}
!2934 = !DILocalVariable(name: "n", arg: 1, scope: !2930, file: !365, line: 59, type: !27)
!2935 = !DILocation(line: 0, scope: !2930)
!2936 = !DILocation(line: 0, scope: !2898, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 61, column: 10, scope: !2930)
!2938 = !DILocation(line: 49, column: 25, scope: !2898, inlinedAt: !2937)
!2939 = !DILocation(line: 0, scope: !2879, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 49, column: 10, scope: !2898, inlinedAt: !2937)
!2941 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !2940)
!2942 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !2940)
!2943 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !2940)
!2944 = !DILocation(line: 61, column: 3, scope: !2930)
!2945 = distinct !DISubprogram(name: "xrealloc", scope: !365, file: !365, line: 68, type: !2946, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2948)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!24, !24, !27}
!2948 = !{!2949, !2950}
!2949 = !DILocalVariable(name: "p", arg: 1, scope: !2945, file: !365, line: 68, type: !24)
!2950 = !DILocalVariable(name: "s", arg: 2, scope: !2945, file: !365, line: 68, type: !27)
!2951 = !DILocation(line: 0, scope: !2945)
!2952 = !DILocalVariable(name: "ptr", arg: 1, scope: !2953, file: !2954, line: 2057, type: !24)
!2953 = distinct !DISubprogram(name: "rpl_realloc", scope: !2954, file: !2954, line: 2057, type: !2946, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2955)
!2954 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2955 = !{!2952, !2956}
!2956 = !DILocalVariable(name: "size", arg: 2, scope: !2953, file: !2954, line: 2057, type: !27)
!2957 = !DILocation(line: 0, scope: !2953, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 70, column: 25, scope: !2945)
!2959 = !DILocation(line: 2059, column: 24, scope: !2953, inlinedAt: !2958)
!2960 = !DILocation(line: 2059, column: 10, scope: !2953, inlinedAt: !2958)
!2961 = !DILocation(line: 0, scope: !2879, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 70, column: 10, scope: !2945)
!2963 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !2962)
!2964 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !2962)
!2965 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !2962)
!2966 = !DILocation(line: 70, column: 3, scope: !2945)
!2967 = distinct !DISubprogram(name: "xirealloc", scope: !365, file: !365, line: 74, type: !2968, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!24, !24, !384}
!2970 = !{!2971, !2972}
!2971 = !DILocalVariable(name: "p", arg: 1, scope: !2967, file: !365, line: 74, type: !24)
!2972 = !DILocalVariable(name: "s", arg: 2, scope: !2967, file: !365, line: 74, type: !384)
!2973 = !DILocation(line: 0, scope: !2967)
!2974 = !DILocalVariable(name: "p", arg: 1, scope: !2975, file: !2919, line: 66, type: !24)
!2975 = distinct !DISubprogram(name: "irealloc", scope: !2919, file: !2919, line: 66, type: !2968, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2976)
!2976 = !{!2974, !2977}
!2977 = !DILocalVariable(name: "s", arg: 2, scope: !2975, file: !2919, line: 66, type: !384)
!2978 = !DILocation(line: 0, scope: !2975, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 76, column: 25, scope: !2967)
!2980 = !DILocation(line: 0, scope: !2953, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 68, column: 26, scope: !2975, inlinedAt: !2979)
!2982 = !DILocation(line: 2059, column: 24, scope: !2953, inlinedAt: !2981)
!2983 = !DILocation(line: 2059, column: 10, scope: !2953, inlinedAt: !2981)
!2984 = !DILocation(line: 0, scope: !2879, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 76, column: 10, scope: !2967)
!2986 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !2985)
!2987 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !2985)
!2988 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !2985)
!2989 = !DILocation(line: 76, column: 3, scope: !2967)
!2990 = distinct !DISubprogram(name: "xireallocarray", scope: !365, file: !365, line: 89, type: !2991, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!24, !24, !384, !384}
!2993 = !{!2994, !2995, !2996}
!2994 = !DILocalVariable(name: "p", arg: 1, scope: !2990, file: !365, line: 89, type: !24)
!2995 = !DILocalVariable(name: "n", arg: 2, scope: !2990, file: !365, line: 89, type: !384)
!2996 = !DILocalVariable(name: "s", arg: 3, scope: !2990, file: !365, line: 89, type: !384)
!2997 = !DILocation(line: 0, scope: !2990)
!2998 = !DILocalVariable(name: "p", arg: 1, scope: !2999, file: !2919, line: 98, type: !24)
!2999 = distinct !DISubprogram(name: "ireallocarray", scope: !2919, file: !2919, line: 98, type: !2991, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3000)
!3000 = !{!2998, !3001, !3002}
!3001 = !DILocalVariable(name: "n", arg: 2, scope: !2999, file: !2919, line: 98, type: !384)
!3002 = !DILocalVariable(name: "s", arg: 3, scope: !2999, file: !2919, line: 98, type: !384)
!3003 = !DILocation(line: 0, scope: !2999, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 91, column: 25, scope: !2990)
!3005 = !DILocation(line: 101, column: 13, scope: !2999, inlinedAt: !3004)
!3006 = !DILocation(line: 0, scope: !2879, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 91, column: 10, scope: !2990)
!3008 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !3007)
!3009 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !3007)
!3010 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !3007)
!3011 = !DILocation(line: 91, column: 3, scope: !2990)
!3012 = distinct !DISubprogram(name: "xnmalloc", scope: !365, file: !365, line: 98, type: !3013, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!24, !27, !27}
!3015 = !{!3016, !3017}
!3016 = !DILocalVariable(name: "n", arg: 1, scope: !3012, file: !365, line: 98, type: !27)
!3017 = !DILocalVariable(name: "s", arg: 2, scope: !3012, file: !365, line: 98, type: !27)
!3018 = !DILocation(line: 0, scope: !3012)
!3019 = !DILocation(line: 0, scope: !2871, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 100, column: 10, scope: !3012)
!3021 = !DILocation(line: 85, column: 25, scope: !2871, inlinedAt: !3020)
!3022 = !DILocation(line: 0, scope: !2879, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 85, column: 10, scope: !2871, inlinedAt: !3020)
!3024 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !3023)
!3025 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !3023)
!3026 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !3023)
!3027 = !DILocation(line: 100, column: 3, scope: !3012)
!3028 = distinct !DISubprogram(name: "xinmalloc", scope: !365, file: !365, line: 104, type: !3029, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3031)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!24, !384, !384}
!3031 = !{!3032, !3033}
!3032 = !DILocalVariable(name: "n", arg: 1, scope: !3028, file: !365, line: 104, type: !384)
!3033 = !DILocalVariable(name: "s", arg: 2, scope: !3028, file: !365, line: 104, type: !384)
!3034 = !DILocation(line: 0, scope: !3028)
!3035 = !DILocation(line: 0, scope: !2990, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 106, column: 10, scope: !3028)
!3037 = !DILocation(line: 0, scope: !2999, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 91, column: 25, scope: !2990, inlinedAt: !3036)
!3039 = !DILocation(line: 101, column: 13, scope: !2999, inlinedAt: !3038)
!3040 = !DILocation(line: 0, scope: !2879, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 91, column: 10, scope: !2990, inlinedAt: !3036)
!3042 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !3041)
!3043 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !3041)
!3044 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !3041)
!3045 = !DILocation(line: 106, column: 3, scope: !3028)
!3046 = distinct !DISubprogram(name: "x2realloc", scope: !365, file: !365, line: 116, type: !3047, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!24, !24, !371}
!3049 = !{!3050, !3051}
!3050 = !DILocalVariable(name: "p", arg: 1, scope: !3046, file: !365, line: 116, type: !24)
!3051 = !DILocalVariable(name: "ps", arg: 2, scope: !3046, file: !365, line: 116, type: !371)
!3052 = !DILocation(line: 0, scope: !3046)
!3053 = !DILocation(line: 0, scope: !368, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 118, column: 10, scope: !3046)
!3055 = !DILocation(line: 178, column: 14, scope: !368, inlinedAt: !3054)
!3056 = !DILocation(line: 180, column: 9, scope: !3057, inlinedAt: !3054)
!3057 = distinct !DILexicalBlock(scope: !368, file: !365, line: 180, column: 7)
!3058 = !DILocation(line: 180, column: 7, scope: !368, inlinedAt: !3054)
!3059 = !DILocation(line: 182, column: 13, scope: !3060, inlinedAt: !3054)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !365, line: 182, column: 11)
!3061 = distinct !DILexicalBlock(scope: !3057, file: !365, line: 181, column: 5)
!3062 = !DILocation(line: 182, column: 11, scope: !3061, inlinedAt: !3054)
!3063 = !DILocation(line: 197, column: 11, scope: !3064, inlinedAt: !3054)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !365, line: 197, column: 11)
!3065 = distinct !DILexicalBlock(scope: !3057, file: !365, line: 195, column: 5)
!3066 = !DILocation(line: 197, column: 11, scope: !3065, inlinedAt: !3054)
!3067 = !DILocation(line: 198, column: 9, scope: !3064, inlinedAt: !3054)
!3068 = !DILocation(line: 0, scope: !2871, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 201, column: 7, scope: !368, inlinedAt: !3054)
!3070 = !DILocation(line: 85, column: 25, scope: !2871, inlinedAt: !3069)
!3071 = !DILocation(line: 0, scope: !2879, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 85, column: 10, scope: !2871, inlinedAt: !3069)
!3073 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !3072)
!3074 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !3072)
!3075 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !3072)
!3076 = !DILocation(line: 202, column: 7, scope: !368, inlinedAt: !3054)
!3077 = !DILocation(line: 118, column: 3, scope: !3046)
!3078 = !DILocation(line: 0, scope: !368)
!3079 = !DILocation(line: 178, column: 14, scope: !368)
!3080 = !DILocation(line: 180, column: 9, scope: !3057)
!3081 = !DILocation(line: 180, column: 7, scope: !368)
!3082 = !DILocation(line: 182, column: 13, scope: !3060)
!3083 = !DILocation(line: 182, column: 11, scope: !3061)
!3084 = !DILocation(line: 190, column: 30, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3060, file: !365, line: 183, column: 9)
!3086 = !DILocation(line: 191, column: 16, scope: !3085)
!3087 = !DILocation(line: 191, column: 13, scope: !3085)
!3088 = !DILocation(line: 192, column: 9, scope: !3085)
!3089 = !DILocation(line: 197, column: 11, scope: !3064)
!3090 = !DILocation(line: 197, column: 11, scope: !3065)
!3091 = !DILocation(line: 198, column: 9, scope: !3064)
!3092 = !DILocation(line: 0, scope: !2871, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 201, column: 7, scope: !368)
!3094 = !DILocation(line: 85, column: 25, scope: !2871, inlinedAt: !3093)
!3095 = !DILocation(line: 0, scope: !2879, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 85, column: 10, scope: !2871, inlinedAt: !3093)
!3097 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !3096)
!3098 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !3096)
!3099 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !3096)
!3100 = !DILocation(line: 202, column: 7, scope: !368)
!3101 = !DILocation(line: 203, column: 3, scope: !368)
!3102 = !DILocation(line: 0, scope: !380)
!3103 = !DILocation(line: 230, column: 14, scope: !380)
!3104 = !DILocation(line: 238, column: 7, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !380, file: !365, line: 238, column: 7)
!3106 = !DILocation(line: 238, column: 7, scope: !380)
!3107 = !DILocation(line: 240, column: 9, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !380, file: !365, line: 240, column: 7)
!3109 = !DILocation(line: 240, column: 18, scope: !3108)
!3110 = !DILocation(line: 253, column: 8, scope: !380)
!3111 = !DILocation(line: 258, column: 27, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !365, line: 257, column: 5)
!3113 = distinct !DILexicalBlock(scope: !380, file: !365, line: 256, column: 7)
!3114 = !DILocation(line: 259, column: 32, scope: !3112)
!3115 = !DILocation(line: 260, column: 5, scope: !3112)
!3116 = !DILocation(line: 262, column: 9, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !380, file: !365, line: 262, column: 7)
!3118 = !DILocation(line: 262, column: 7, scope: !380)
!3119 = !DILocation(line: 263, column: 9, scope: !3117)
!3120 = !DILocation(line: 263, column: 5, scope: !3117)
!3121 = !DILocation(line: 264, column: 9, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !380, file: !365, line: 264, column: 7)
!3123 = !DILocation(line: 264, column: 14, scope: !3122)
!3124 = !DILocation(line: 265, column: 7, scope: !3122)
!3125 = !DILocation(line: 265, column: 11, scope: !3122)
!3126 = !DILocation(line: 266, column: 11, scope: !3122)
!3127 = !DILocation(line: 266, column: 26, scope: !3122)
!3128 = !DILocation(line: 267, column: 14, scope: !3122)
!3129 = !DILocation(line: 264, column: 7, scope: !380)
!3130 = !DILocation(line: 268, column: 5, scope: !3122)
!3131 = !DILocation(line: 0, scope: !2945, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 269, column: 8, scope: !380)
!3133 = !DILocation(line: 0, scope: !2953, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 70, column: 25, scope: !2945, inlinedAt: !3132)
!3135 = !DILocation(line: 2059, column: 24, scope: !2953, inlinedAt: !3134)
!3136 = !DILocation(line: 2059, column: 10, scope: !2953, inlinedAt: !3134)
!3137 = !DILocation(line: 0, scope: !2879, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 70, column: 10, scope: !2945, inlinedAt: !3132)
!3139 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !3138)
!3140 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !3138)
!3141 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !3138)
!3142 = !DILocation(line: 270, column: 7, scope: !380)
!3143 = !DILocation(line: 271, column: 3, scope: !380)
!3144 = distinct !DISubprogram(name: "xzalloc", scope: !365, file: !365, line: 279, type: !2899, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3145)
!3145 = !{!3146}
!3146 = !DILocalVariable(name: "s", arg: 1, scope: !3144, file: !365, line: 279, type: !27)
!3147 = !DILocation(line: 0, scope: !3144)
!3148 = !DILocalVariable(name: "n", arg: 1, scope: !3149, file: !365, line: 294, type: !27)
!3149 = distinct !DISubprogram(name: "xcalloc", scope: !365, file: !365, line: 294, type: !3013, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3150)
!3150 = !{!3148, !3151}
!3151 = !DILocalVariable(name: "s", arg: 2, scope: !3149, file: !365, line: 294, type: !27)
!3152 = !DILocation(line: 0, scope: !3149, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 281, column: 10, scope: !3144)
!3154 = !DILocation(line: 296, column: 25, scope: !3149, inlinedAt: !3153)
!3155 = !DILocation(line: 0, scope: !2879, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 296, column: 10, scope: !3149, inlinedAt: !3153)
!3157 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !3156)
!3158 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !3156)
!3159 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !3156)
!3160 = !DILocation(line: 281, column: 3, scope: !3144)
!3161 = !DILocation(line: 0, scope: !3149)
!3162 = !DILocation(line: 296, column: 25, scope: !3149)
!3163 = !DILocation(line: 0, scope: !2879, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 296, column: 10, scope: !3149)
!3165 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !3164)
!3166 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !3164)
!3167 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !3164)
!3168 = !DILocation(line: 296, column: 3, scope: !3149)
!3169 = distinct !DISubprogram(name: "xizalloc", scope: !365, file: !365, line: 285, type: !2912, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3170)
!3170 = !{!3171}
!3171 = !DILocalVariable(name: "s", arg: 1, scope: !3169, file: !365, line: 285, type: !384)
!3172 = !DILocation(line: 0, scope: !3169)
!3173 = !DILocalVariable(name: "n", arg: 1, scope: !3174, file: !365, line: 300, type: !384)
!3174 = distinct !DISubprogram(name: "xicalloc", scope: !365, file: !365, line: 300, type: !3029, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3175)
!3175 = !{!3173, !3176}
!3176 = !DILocalVariable(name: "s", arg: 2, scope: !3174, file: !365, line: 300, type: !384)
!3177 = !DILocation(line: 0, scope: !3174, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 287, column: 10, scope: !3169)
!3179 = !DILocalVariable(name: "n", arg: 1, scope: !3180, file: !2919, line: 77, type: !384)
!3180 = distinct !DISubprogram(name: "icalloc", scope: !2919, file: !2919, line: 77, type: !3029, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3181)
!3181 = !{!3179, !3182}
!3182 = !DILocalVariable(name: "s", arg: 2, scope: !3180, file: !2919, line: 77, type: !384)
!3183 = !DILocation(line: 0, scope: !3180, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 302, column: 25, scope: !3174, inlinedAt: !3178)
!3185 = !DILocation(line: 91, column: 10, scope: !3180, inlinedAt: !3184)
!3186 = !DILocation(line: 0, scope: !2879, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 302, column: 10, scope: !3174, inlinedAt: !3178)
!3188 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !3187)
!3189 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !3187)
!3190 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !3187)
!3191 = !DILocation(line: 287, column: 3, scope: !3169)
!3192 = !DILocation(line: 0, scope: !3174)
!3193 = !DILocation(line: 0, scope: !3180, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 302, column: 25, scope: !3174)
!3195 = !DILocation(line: 91, column: 10, scope: !3180, inlinedAt: !3194)
!3196 = !DILocation(line: 0, scope: !2879, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 302, column: 10, scope: !3174)
!3198 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !3197)
!3199 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !3197)
!3200 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !3197)
!3201 = !DILocation(line: 302, column: 3, scope: !3174)
!3202 = distinct !DISubprogram(name: "xmemdup", scope: !365, file: !365, line: 310, type: !3203, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3205)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!24, !687, !27}
!3205 = !{!3206, !3207}
!3206 = !DILocalVariable(name: "p", arg: 1, scope: !3202, file: !365, line: 310, type: !687)
!3207 = !DILocalVariable(name: "s", arg: 2, scope: !3202, file: !365, line: 310, type: !27)
!3208 = !DILocation(line: 0, scope: !3202)
!3209 = !DILocation(line: 0, scope: !2898, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 312, column: 18, scope: !3202)
!3211 = !DILocation(line: 49, column: 25, scope: !2898, inlinedAt: !3210)
!3212 = !DILocation(line: 0, scope: !2879, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 49, column: 10, scope: !2898, inlinedAt: !3210)
!3214 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !3213)
!3215 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !3213)
!3216 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !3213)
!3217 = !DILocalVariable(name: "__dest", arg: 1, scope: !3218, file: !1389, line: 26, type: !3221)
!3218 = distinct !DISubprogram(name: "memcpy", scope: !1389, file: !1389, line: 26, type: !3219, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3222)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!24, !3221, !686, !27}
!3221 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!3222 = !{!3217, !3223, !3224}
!3223 = !DILocalVariable(name: "__src", arg: 2, scope: !3218, file: !1389, line: 26, type: !686)
!3224 = !DILocalVariable(name: "__len", arg: 3, scope: !3218, file: !1389, line: 26, type: !27)
!3225 = !DILocation(line: 0, scope: !3218, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 312, column: 10, scope: !3202)
!3227 = !DILocation(line: 29, column: 10, scope: !3218, inlinedAt: !3226)
!3228 = !DILocation(line: 312, column: 3, scope: !3202)
!3229 = distinct !DISubprogram(name: "ximemdup", scope: !365, file: !365, line: 316, type: !3230, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3232)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!24, !687, !384}
!3232 = !{!3233, !3234}
!3233 = !DILocalVariable(name: "p", arg: 1, scope: !3229, file: !365, line: 316, type: !687)
!3234 = !DILocalVariable(name: "s", arg: 2, scope: !3229, file: !365, line: 316, type: !384)
!3235 = !DILocation(line: 0, scope: !3229)
!3236 = !DILocation(line: 0, scope: !2911, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 318, column: 18, scope: !3229)
!3238 = !DILocation(line: 0, scope: !2918, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 55, column: 25, scope: !2911, inlinedAt: !3237)
!3240 = !DILocation(line: 57, column: 26, scope: !2918, inlinedAt: !3239)
!3241 = !DILocation(line: 0, scope: !2879, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 55, column: 10, scope: !2911, inlinedAt: !3237)
!3243 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !3242)
!3244 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !3242)
!3245 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !3242)
!3246 = !DILocation(line: 0, scope: !3218, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 318, column: 10, scope: !3229)
!3248 = !DILocation(line: 29, column: 10, scope: !3218, inlinedAt: !3247)
!3249 = !DILocation(line: 318, column: 3, scope: !3229)
!3250 = distinct !DISubprogram(name: "ximemdup0", scope: !365, file: !365, line: 325, type: !3251, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3253)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!22, !687, !384}
!3253 = !{!3254, !3255, !3256}
!3254 = !DILocalVariable(name: "p", arg: 1, scope: !3250, file: !365, line: 325, type: !687)
!3255 = !DILocalVariable(name: "s", arg: 2, scope: !3250, file: !365, line: 325, type: !384)
!3256 = !DILocalVariable(name: "result", scope: !3250, file: !365, line: 327, type: !22)
!3257 = !DILocation(line: 0, scope: !3250)
!3258 = !DILocation(line: 327, column: 30, scope: !3250)
!3259 = !DILocation(line: 0, scope: !2911, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 327, column: 18, scope: !3250)
!3261 = !DILocation(line: 0, scope: !2918, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 55, column: 25, scope: !2911, inlinedAt: !3260)
!3263 = !DILocation(line: 57, column: 26, scope: !2918, inlinedAt: !3262)
!3264 = !DILocation(line: 0, scope: !2879, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 55, column: 10, scope: !2911, inlinedAt: !3260)
!3266 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !3265)
!3267 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !3265)
!3268 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !3265)
!3269 = !DILocation(line: 328, column: 3, scope: !3250)
!3270 = !DILocation(line: 328, column: 13, scope: !3250)
!3271 = !DILocation(line: 0, scope: !3218, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 329, column: 10, scope: !3250)
!3273 = !DILocation(line: 29, column: 10, scope: !3218, inlinedAt: !3272)
!3274 = !DILocation(line: 329, column: 3, scope: !3250)
!3275 = distinct !DISubprogram(name: "xstrdup", scope: !365, file: !365, line: 335, type: !681, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3276)
!3276 = !{!3277}
!3277 = !DILocalVariable(name: "string", arg: 1, scope: !3275, file: !365, line: 335, type: !30)
!3278 = !DILocation(line: 0, scope: !3275)
!3279 = !DILocation(line: 337, column: 27, scope: !3275)
!3280 = !DILocation(line: 337, column: 43, scope: !3275)
!3281 = !DILocation(line: 0, scope: !3202, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 337, column: 10, scope: !3275)
!3283 = !DILocation(line: 0, scope: !2898, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 312, column: 18, scope: !3202, inlinedAt: !3282)
!3285 = !DILocation(line: 49, column: 25, scope: !2898, inlinedAt: !3284)
!3286 = !DILocation(line: 0, scope: !2879, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 49, column: 10, scope: !2898, inlinedAt: !3284)
!3288 = !DILocation(line: 39, column: 8, scope: !2886, inlinedAt: !3287)
!3289 = !DILocation(line: 39, column: 7, scope: !2879, inlinedAt: !3287)
!3290 = !DILocation(line: 40, column: 5, scope: !2886, inlinedAt: !3287)
!3291 = !DILocation(line: 0, scope: !3218, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 312, column: 10, scope: !3202, inlinedAt: !3282)
!3293 = !DILocation(line: 29, column: 10, scope: !3218, inlinedAt: !3292)
!3294 = !DILocation(line: 337, column: 3, scope: !3275)
!3295 = distinct !DISubprogram(name: "xalloc_die", scope: !399, file: !399, line: 32, type: !184, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !3296)
!3296 = !{!3297}
!3297 = !DILocalVariable(name: "__errstatus", scope: !3298, file: !399, line: 34, type: !3299)
!3298 = distinct !DILexicalBlock(scope: !3295, file: !399, line: 34, column: 3)
!3299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!3300 = !DILocation(line: 34, column: 3, scope: !3298)
!3301 = !DILocation(line: 0, scope: !3298)
!3302 = !DILocation(line: 40, column: 3, scope: !3295)
!3303 = distinct !DISubprogram(name: "xgetgroups", scope: !401, file: !401, line: 31, type: !415, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3304)
!3304 = !{!3305, !3306, !3307, !3308}
!3305 = !DILocalVariable(name: "username", arg: 1, scope: !3303, file: !401, line: 31, type: !30)
!3306 = !DILocalVariable(name: "gid", arg: 2, scope: !3303, file: !401, line: 31, type: !417)
!3307 = !DILocalVariable(name: "groups", arg: 3, scope: !3303, file: !401, line: 31, type: !420)
!3308 = !DILocalVariable(name: "result", scope: !3303, file: !401, line: 33, type: !25)
!3309 = !DILocation(line: 0, scope: !3303)
!3310 = !DILocation(line: 33, column: 16, scope: !3303)
!3311 = !DILocation(line: 34, column: 14, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3303, file: !401, line: 34, column: 7)
!3313 = !DILocation(line: 34, column: 20, scope: !3312)
!3314 = !DILocation(line: 34, column: 23, scope: !3312)
!3315 = !DILocation(line: 34, column: 29, scope: !3312)
!3316 = !DILocation(line: 34, column: 7, scope: !3303)
!3317 = !DILocation(line: 35, column: 5, scope: !3312)
!3318 = !DILocation(line: 36, column: 3, scope: !3303)
!3319 = distinct !DISubprogram(name: "close_stream", scope: !403, file: !403, line: 55, type: !3320, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !3356)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!25, !3322}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !3324)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !3325)
!3325 = !{!3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3324, file: !64, line: 51, baseType: !25, size: 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3324, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3324, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3324, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3324, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3324, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3324, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3324, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3324, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3324, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3324, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3324, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3324, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3324, file: !64, line: 70, baseType: !3340, size: 64, offset: 832)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3324, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3324, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3324, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3324, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3324, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3324, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3324, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3324, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3324, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3324, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3324, file: !64, line: 93, baseType: !3340, size: 64, offset: 1344)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3324, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3324, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3324, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3324, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!3356 = !{!3357, !3358, !3360, !3361}
!3357 = !DILocalVariable(name: "stream", arg: 1, scope: !3319, file: !403, line: 55, type: !3322)
!3358 = !DILocalVariable(name: "some_pending", scope: !3319, file: !403, line: 57, type: !3359)
!3359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!3360 = !DILocalVariable(name: "prev_fail", scope: !3319, file: !403, line: 58, type: !3359)
!3361 = !DILocalVariable(name: "fclose_fail", scope: !3319, file: !403, line: 59, type: !3359)
!3362 = !DILocation(line: 0, scope: !3319)
!3363 = !DILocation(line: 57, column: 30, scope: !3319)
!3364 = !DILocalVariable(name: "__stream", arg: 1, scope: !3365, file: !775, line: 135, type: !3322)
!3365 = distinct !DISubprogram(name: "ferror_unlocked", scope: !775, file: !775, line: 135, type: !3320, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !3366)
!3366 = !{!3364}
!3367 = !DILocation(line: 0, scope: !3365, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 58, column: 27, scope: !3319)
!3369 = !DILocation(line: 137, column: 10, scope: !3365, inlinedAt: !3368)
!3370 = !DILocation(line: 58, column: 43, scope: !3319)
!3371 = !DILocation(line: 59, column: 29, scope: !3319)
!3372 = !DILocation(line: 59, column: 45, scope: !3319)
!3373 = !DILocation(line: 69, column: 17, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3319, file: !403, line: 69, column: 7)
!3375 = !DILocation(line: 57, column: 50, scope: !3319)
!3376 = !DILocation(line: 69, column: 33, scope: !3374)
!3377 = !DILocation(line: 69, column: 53, scope: !3374)
!3378 = !DILocation(line: 69, column: 59, scope: !3374)
!3379 = !DILocation(line: 69, column: 7, scope: !3319)
!3380 = !DILocation(line: 71, column: 11, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3374, file: !403, line: 70, column: 5)
!3382 = !DILocation(line: 72, column: 9, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3381, file: !403, line: 71, column: 11)
!3384 = !DILocation(line: 72, column: 15, scope: !3383)
!3385 = !DILocation(line: 77, column: 1, scope: !3319)
!3386 = distinct !DISubprogram(name: "rpl_fclose", scope: !405, file: !405, line: 58, type: !3387, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3423)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!25, !3389}
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !3391)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3391, file: !64, line: 51, baseType: !25, size: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3391, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3391, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3391, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3391, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3391, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3391, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3391, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3391, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3391, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3391, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3391, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3391, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3391, file: !64, line: 70, baseType: !3407, size: 64, offset: 832)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3391, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3391, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3391, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3391, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3391, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3391, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3391, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3391, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3391, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3391, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3391, file: !64, line: 93, baseType: !3407, size: 64, offset: 1344)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3391, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3391, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3391, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3391, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!3423 = !{!3424, !3425, !3426, !3427}
!3424 = !DILocalVariable(name: "fp", arg: 1, scope: !3386, file: !405, line: 58, type: !3389)
!3425 = !DILocalVariable(name: "saved_errno", scope: !3386, file: !405, line: 60, type: !25)
!3426 = !DILocalVariable(name: "fd", scope: !3386, file: !405, line: 63, type: !25)
!3427 = !DILocalVariable(name: "result", scope: !3386, file: !405, line: 74, type: !25)
!3428 = !DILocation(line: 0, scope: !3386)
!3429 = !DILocation(line: 63, column: 12, scope: !3386)
!3430 = !DILocation(line: 64, column: 10, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3386, file: !405, line: 64, column: 7)
!3432 = !DILocation(line: 64, column: 7, scope: !3386)
!3433 = !DILocation(line: 65, column: 12, scope: !3431)
!3434 = !DILocation(line: 65, column: 5, scope: !3431)
!3435 = !DILocation(line: 70, column: 9, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3386, file: !405, line: 70, column: 7)
!3437 = !DILocation(line: 70, column: 23, scope: !3436)
!3438 = !DILocation(line: 70, column: 33, scope: !3436)
!3439 = !DILocation(line: 70, column: 26, scope: !3436)
!3440 = !DILocation(line: 70, column: 59, scope: !3436)
!3441 = !DILocation(line: 71, column: 7, scope: !3436)
!3442 = !DILocation(line: 71, column: 10, scope: !3436)
!3443 = !DILocation(line: 70, column: 7, scope: !3386)
!3444 = !DILocation(line: 100, column: 12, scope: !3386)
!3445 = !DILocation(line: 105, column: 7, scope: !3386)
!3446 = !DILocation(line: 72, column: 19, scope: !3436)
!3447 = !DILocation(line: 105, column: 19, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3386, file: !405, line: 105, column: 7)
!3449 = !DILocation(line: 107, column: 13, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3448, file: !405, line: 106, column: 5)
!3451 = !DILocation(line: 109, column: 5, scope: !3450)
!3452 = !DILocation(line: 112, column: 1, scope: !3386)
!3453 = !DISubprogram(name: "fileno", scope: !157, file: !157, line: 809, type: !3387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!3454 = !DISubprogram(name: "fclose", scope: !157, file: !157, line: 178, type: !3387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!3455 = !DISubprogram(name: "lseek", scope: !852, file: !852, line: 339, type: !3456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!86, !25, !86, !25}
!3458 = distinct !DISubprogram(name: "rpl_fflush", scope: !407, file: !407, line: 130, type: !3459, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3495)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!25, !3461}
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !3463)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !3464)
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3463, file: !64, line: 51, baseType: !25, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3463, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3463, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3463, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3463, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3463, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3463, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3463, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3463, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3463, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3463, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3463, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3463, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3463, file: !64, line: 70, baseType: !3479, size: 64, offset: 832)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3463, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3463, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3463, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3463, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3463, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3463, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3463, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3463, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3463, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3463, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3463, file: !64, line: 93, baseType: !3479, size: 64, offset: 1344)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3463, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3463, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3463, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3463, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!3495 = !{!3496}
!3496 = !DILocalVariable(name: "stream", arg: 1, scope: !3458, file: !407, line: 130, type: !3461)
!3497 = !DILocation(line: 0, scope: !3458)
!3498 = !DILocation(line: 151, column: 14, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3458, file: !407, line: 151, column: 7)
!3500 = !DILocation(line: 151, column: 22, scope: !3499)
!3501 = !DILocation(line: 151, column: 27, scope: !3499)
!3502 = !DILocation(line: 151, column: 7, scope: !3458)
!3503 = !DILocation(line: 152, column: 12, scope: !3499)
!3504 = !DILocation(line: 152, column: 5, scope: !3499)
!3505 = !DILocalVariable(name: "fp", arg: 1, scope: !3506, file: !407, line: 42, type: !3461)
!3506 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !407, file: !407, line: 42, type: !3507, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{null, !3461}
!3509 = !{!3505}
!3510 = !DILocation(line: 0, scope: !3506, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 157, column: 3, scope: !3458)
!3512 = !DILocation(line: 44, column: 12, scope: !3513, inlinedAt: !3511)
!3513 = distinct !DILexicalBlock(scope: !3506, file: !407, line: 44, column: 7)
!3514 = !DILocation(line: 44, column: 19, scope: !3513, inlinedAt: !3511)
!3515 = !DILocation(line: 44, column: 7, scope: !3506, inlinedAt: !3511)
!3516 = !DILocation(line: 46, column: 5, scope: !3513, inlinedAt: !3511)
!3517 = !DILocation(line: 159, column: 10, scope: !3458)
!3518 = !DILocation(line: 159, column: 3, scope: !3458)
!3519 = !DILocation(line: 236, column: 1, scope: !3458)
!3520 = !DISubprogram(name: "fflush", scope: !157, file: !157, line: 230, type: !3459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!3521 = distinct !DISubprogram(name: "rpl_fseeko", scope: !409, file: !409, line: 28, type: !3522, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3559)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!25, !3524, !3558, !25}
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !3526)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3526, file: !64, line: 51, baseType: !25, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3526, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3526, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3526, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3526, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3526, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3526, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3526, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3526, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3526, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3526, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3526, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3526, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3526, file: !64, line: 70, baseType: !3542, size: 64, offset: 832)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3526, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3526, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3526, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3526, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3526, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3526, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3526, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3526, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3526, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3526, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3526, file: !64, line: 93, baseType: !3542, size: 64, offset: 1344)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3526, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3526, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3526, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3526, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!3558 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !157, line: 63, baseType: !86)
!3559 = !{!3560, !3561, !3562, !3563}
!3560 = !DILocalVariable(name: "fp", arg: 1, scope: !3521, file: !409, line: 28, type: !3524)
!3561 = !DILocalVariable(name: "offset", arg: 2, scope: !3521, file: !409, line: 28, type: !3558)
!3562 = !DILocalVariable(name: "whence", arg: 3, scope: !3521, file: !409, line: 28, type: !25)
!3563 = !DILocalVariable(name: "pos", scope: !3564, file: !409, line: 123, type: !3558)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !409, line: 119, column: 5)
!3565 = distinct !DILexicalBlock(scope: !3521, file: !409, line: 55, column: 7)
!3566 = !DILocation(line: 0, scope: !3521)
!3567 = !DILocation(line: 55, column: 12, scope: !3565)
!3568 = !{!783, !484, i64 16}
!3569 = !DILocation(line: 55, column: 33, scope: !3565)
!3570 = !{!783, !484, i64 8}
!3571 = !DILocation(line: 55, column: 25, scope: !3565)
!3572 = !DILocation(line: 56, column: 7, scope: !3565)
!3573 = !DILocation(line: 56, column: 15, scope: !3565)
!3574 = !DILocation(line: 56, column: 37, scope: !3565)
!3575 = !{!783, !484, i64 32}
!3576 = !DILocation(line: 56, column: 29, scope: !3565)
!3577 = !DILocation(line: 57, column: 7, scope: !3565)
!3578 = !DILocation(line: 57, column: 15, scope: !3565)
!3579 = !{!783, !484, i64 72}
!3580 = !DILocation(line: 57, column: 29, scope: !3565)
!3581 = !DILocation(line: 55, column: 7, scope: !3521)
!3582 = !DILocation(line: 123, column: 26, scope: !3564)
!3583 = !DILocation(line: 123, column: 19, scope: !3564)
!3584 = !DILocation(line: 0, scope: !3564)
!3585 = !DILocation(line: 124, column: 15, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3564, file: !409, line: 124, column: 11)
!3587 = !DILocation(line: 124, column: 11, scope: !3564)
!3588 = !DILocation(line: 135, column: 12, scope: !3564)
!3589 = !DILocation(line: 135, column: 19, scope: !3564)
!3590 = !DILocation(line: 136, column: 12, scope: !3564)
!3591 = !DILocation(line: 136, column: 20, scope: !3564)
!3592 = !{!783, !784, i64 144}
!3593 = !DILocation(line: 167, column: 7, scope: !3564)
!3594 = !DILocation(line: 169, column: 10, scope: !3521)
!3595 = !DILocation(line: 169, column: 3, scope: !3521)
!3596 = !DILocation(line: 170, column: 1, scope: !3521)
!3597 = !DISubprogram(name: "fseeko", scope: !157, file: !157, line: 736, type: !3598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!25, !3524, !86, !25}
!3600 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !334, file: !334, line: 100, type: !3601, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3604)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!27, !1407, !30, !27, !3603}
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!3604 = !{!3605, !3606, !3607, !3608, !3609}
!3605 = !DILocalVariable(name: "pwc", arg: 1, scope: !3600, file: !334, line: 100, type: !1407)
!3606 = !DILocalVariable(name: "s", arg: 2, scope: !3600, file: !334, line: 100, type: !30)
!3607 = !DILocalVariable(name: "n", arg: 3, scope: !3600, file: !334, line: 100, type: !27)
!3608 = !DILocalVariable(name: "ps", arg: 4, scope: !3600, file: !334, line: 100, type: !3603)
!3609 = !DILocalVariable(name: "ret", scope: !3600, file: !334, line: 130, type: !27)
!3610 = !DILocation(line: 0, scope: !3600)
!3611 = !DILocation(line: 105, column: 9, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3600, file: !334, line: 105, column: 7)
!3613 = !DILocation(line: 105, column: 7, scope: !3600)
!3614 = !DILocation(line: 117, column: 10, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3600, file: !334, line: 117, column: 7)
!3616 = !DILocation(line: 117, column: 7, scope: !3600)
!3617 = !DILocation(line: 130, column: 16, scope: !3600)
!3618 = !DILocation(line: 135, column: 11, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3600, file: !334, line: 135, column: 7)
!3620 = !DILocation(line: 135, column: 25, scope: !3619)
!3621 = !DILocation(line: 135, column: 30, scope: !3619)
!3622 = !DILocation(line: 135, column: 7, scope: !3600)
!3623 = !DILocalVariable(name: "ps", arg: 1, scope: !3624, file: !1380, line: 1135, type: !3603)
!3624 = distinct !DISubprogram(name: "mbszero", scope: !1380, file: !1380, line: 1135, type: !3625, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{null, !3603}
!3627 = !{!3623}
!3628 = !DILocation(line: 0, scope: !3624, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 137, column: 5, scope: !3619)
!3630 = !DILocalVariable(name: "__dest", arg: 1, scope: !3631, file: !1389, line: 57, type: !24)
!3631 = distinct !DISubprogram(name: "memset", scope: !1389, file: !1389, line: 57, type: !1390, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3632)
!3632 = !{!3630, !3633, !3634}
!3633 = !DILocalVariable(name: "__ch", arg: 2, scope: !3631, file: !1389, line: 57, type: !25)
!3634 = !DILocalVariable(name: "__len", arg: 3, scope: !3631, file: !1389, line: 57, type: !27)
!3635 = !DILocation(line: 0, scope: !3631, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 1137, column: 3, scope: !3624, inlinedAt: !3629)
!3637 = !DILocation(line: 59, column: 10, scope: !3631, inlinedAt: !3636)
!3638 = !DILocation(line: 137, column: 5, scope: !3619)
!3639 = !DILocation(line: 138, column: 11, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3600, file: !334, line: 138, column: 7)
!3641 = !DILocation(line: 138, column: 7, scope: !3600)
!3642 = !DILocation(line: 139, column: 5, scope: !3640)
!3643 = !DILocation(line: 143, column: 26, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3600, file: !334, line: 143, column: 7)
!3645 = !DILocation(line: 143, column: 41, scope: !3644)
!3646 = !DILocation(line: 143, column: 7, scope: !3600)
!3647 = !DILocation(line: 145, column: 15, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !334, line: 145, column: 11)
!3649 = distinct !DILexicalBlock(scope: !3644, file: !334, line: 144, column: 5)
!3650 = !DILocation(line: 145, column: 11, scope: !3649)
!3651 = !DILocation(line: 146, column: 32, scope: !3648)
!3652 = !DILocation(line: 146, column: 16, scope: !3648)
!3653 = !DILocation(line: 146, column: 14, scope: !3648)
!3654 = !DILocation(line: 146, column: 9, scope: !3648)
!3655 = !DILocation(line: 286, column: 1, scope: !3600)
!3656 = !DISubprogram(name: "mbsinit", scope: !3657, file: !3657, line: 293, type: !3658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!3657 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!25, !3660}
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!3662 = !DILocation(line: 0, scope: !414)
!3663 = !DILocation(line: 77, column: 7, scope: !428)
!3664 = !DILocation(line: 77, column: 7, scope: !414)
!3665 = !DILocation(line: 80, column: 7, scope: !427)
!3666 = !DILocation(line: 0, scope: !427)
!3667 = !DILocation(line: 80, column: 11, scope: !427)
!3668 = !DILocalVariable(name: "g", arg: 1, scope: !3669, file: !411, line: 43, type: !421)
!3669 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !411, file: !411, line: 43, type: !3670, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3672)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!421, !421, !27}
!3672 = !{!3668, !3673}
!3673 = !DILocalVariable(name: "num", arg: 2, scope: !3669, file: !411, line: 43, type: !27)
!3674 = !DILocation(line: 0, scope: !3669, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 82, column: 18, scope: !427)
!3676 = !DILocalVariable(name: "ptr", arg: 1, scope: !3677, file: !2954, line: 2057, type: !24)
!3677 = distinct !DISubprogram(name: "rpl_realloc", scope: !2954, file: !2954, line: 2057, type: !2946, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3678)
!3678 = !{!3676, !3679}
!3679 = !DILocalVariable(name: "size", arg: 2, scope: !3677, file: !2954, line: 2057, type: !27)
!3680 = !DILocation(line: 0, scope: !3677, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 51, column: 10, scope: !3669, inlinedAt: !3675)
!3682 = !DILocation(line: 2059, column: 10, scope: !3677, inlinedAt: !3681)
!3683 = !DILocation(line: 83, column: 13, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !427, file: !411, line: 83, column: 11)
!3685 = !DILocation(line: 83, column: 11, scope: !427)
!3686 = !DILocation(line: 88, column: 31, scope: !431)
!3687 = !DILocation(line: 82, column: 14, scope: !427)
!3688 = !DILocation(line: 0, scope: !431)
!3689 = !DILocation(line: 91, column: 20, scope: !431)
!3690 = !DILocation(line: 95, column: 18, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !431, file: !411, line: 95, column: 15)
!3692 = !DILocation(line: 95, column: 22, scope: !3691)
!3693 = !DILocation(line: 96, column: 26, scope: !3691)
!3694 = !DILocation(line: 96, column: 13, scope: !3691)
!3695 = !DILocation(line: 98, column: 43, scope: !431)
!3696 = !DILocation(line: 0, scope: !3669, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 98, column: 22, scope: !431)
!3698 = !DILocation(line: 45, column: 7, scope: !3699, inlinedAt: !3697)
!3699 = distinct !DILexicalBlock(scope: !3669, file: !411, line: 45, column: 7)
!3700 = !DILocation(line: 45, column: 7, scope: !3669, inlinedAt: !3697)
!3701 = !DILocation(line: 47, column: 7, scope: !3702, inlinedAt: !3697)
!3702 = distinct !DILexicalBlock(scope: !3699, file: !411, line: 46, column: 5)
!3703 = !DILocation(line: 47, column: 13, scope: !3702, inlinedAt: !3697)
!3704 = !DILocation(line: 99, column: 15, scope: !431)
!3705 = !DILocation(line: 51, column: 26, scope: !3669, inlinedAt: !3697)
!3706 = !DILocation(line: 0, scope: !3677, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 51, column: 10, scope: !3669, inlinedAt: !3697)
!3708 = !DILocation(line: 2059, column: 24, scope: !3677, inlinedAt: !3707)
!3709 = !DILocation(line: 2059, column: 10, scope: !3677, inlinedAt: !3707)
!3710 = !DILocation(line: 99, column: 17, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !431, file: !411, line: 99, column: 15)
!3712 = !DILocation(line: 101, column: 15, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3711, file: !411, line: 100, column: 13)
!3714 = !DILocation(line: 102, column: 15, scope: !3713)
!3715 = !DILocation(line: 106, column: 17, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !431, file: !411, line: 106, column: 15)
!3717 = !DILocation(line: 106, column: 15, scope: !431)
!3718 = distinct !{!3718, !3719, !3720}
!3719 = !DILocation(line: 86, column: 7, scope: !427)
!3720 = !DILocation(line: 113, column: 9, scope: !427)
!3721 = !DILocation(line: 108, column: 23, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3716, file: !411, line: 107, column: 13)
!3723 = !DILocation(line: 111, column: 15, scope: !3722)
!3724 = !DILocation(line: 114, column: 5, scope: !428)
!3725 = !DILocation(line: 120, column: 25, scope: !414)
!3726 = !DILocation(line: 125, column: 20, scope: !439)
!3727 = !DILocation(line: 125, column: 7, scope: !414)
!3728 = !DILocation(line: 127, column: 11, scope: !437)
!3729 = !DILocation(line: 127, column: 17, scope: !437)
!3730 = !DILocation(line: 127, column: 11, scope: !438)
!3731 = !DILocation(line: 0, scope: !3669, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 129, column: 22, scope: !436)
!3733 = !DILocation(line: 0, scope: !3677, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 51, column: 10, scope: !3669, inlinedAt: !3732)
!3735 = !DILocation(line: 2059, column: 10, scope: !3677, inlinedAt: !3734)
!3736 = !DILocation(line: 0, scope: !436)
!3737 = !DILocation(line: 130, column: 15, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !436, file: !411, line: 130, column: 15)
!3739 = !DILocation(line: 130, column: 15, scope: !436)
!3740 = !DILocation(line: 51, column: 10, scope: !3669, inlinedAt: !3732)
!3741 = !DILocation(line: 132, column: 23, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3738, file: !411, line: 131, column: 13)
!3743 = !DILocation(line: 133, column: 18, scope: !3742)
!3744 = !DILocation(line: 134, column: 26, scope: !3742)
!3745 = !DILocation(line: 140, column: 20, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !414, file: !411, line: 140, column: 7)
!3747 = !DILocation(line: 140, column: 25, scope: !3746)
!3748 = !DILocation(line: 142, column: 38, scope: !414)
!3749 = !DILocation(line: 0, scope: !3669, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 142, column: 14, scope: !414)
!3751 = !DILocation(line: 51, column: 26, scope: !3669, inlinedAt: !3750)
!3752 = !DILocation(line: 0, scope: !3677, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 51, column: 10, scope: !3669, inlinedAt: !3750)
!3754 = !DILocation(line: 2059, column: 10, scope: !3677, inlinedAt: !3753)
!3755 = !DILocation(line: 51, column: 10, scope: !3669, inlinedAt: !3750)
!3756 = !DILocation(line: 143, column: 9, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !414, file: !411, line: 143, column: 7)
!3758 = !DILocation(line: 143, column: 7, scope: !414)
!3759 = !DILocation(line: 148, column: 46, scope: !414)
!3760 = !DILocation(line: 148, column: 39, scope: !414)
!3761 = !DILocation(line: 149, column: 39, scope: !414)
!3762 = !DILocation(line: 148, column: 15, scope: !414)
!3763 = !DILocation(line: 151, column: 10, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !414, file: !411, line: 151, column: 7)
!3765 = !DILocation(line: 151, column: 7, scope: !414)
!3766 = !DILocation(line: 154, column: 7, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3764, file: !411, line: 152, column: 5)
!3768 = !DILocation(line: 155, column: 7, scope: !3767)
!3769 = !DILocation(line: 158, column: 17, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !414, file: !411, line: 158, column: 7)
!3771 = !DILocation(line: 160, column: 10, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3770, file: !411, line: 159, column: 5)
!3773 = !DILocation(line: 161, column: 9, scope: !3772)
!3774 = !DILocation(line: 162, column: 5, scope: !3772)
!3775 = !DILocation(line: 163, column: 11, scope: !414)
!3776 = !DILocation(line: 181, column: 9, scope: !444)
!3777 = !DILocation(line: 181, column: 7, scope: !414)
!3778 = !DILocation(line: 183, column: 21, scope: !443)
!3779 = !DILocation(line: 0, scope: !443)
!3780 = !DILocation(line: 184, column: 29, scope: !443)
!3781 = !DILocation(line: 0, scope: !447)
!3782 = !DILocation(line: 186, column: 7, scope: !447)
!3783 = !DILocation(line: 188, column: 15, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !411, line: 188, column: 15)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !411, line: 187, column: 9)
!3786 = distinct !DILexicalBlock(scope: !447, file: !411, line: 186, column: 7)
!3787 = !DILocation(line: 188, column: 21, scope: !3784)
!3788 = !DILocation(line: 188, column: 30, scope: !3784)
!3789 = !DILocation(line: 189, column: 15, scope: !3784)
!3790 = !DILocation(line: 189, column: 13, scope: !3784)
!3791 = !DILocation(line: 191, column: 14, scope: !3784)
!3792 = !DILocation(line: 191, column: 18, scope: !3784)
!3793 = !DILocation(line: 186, column: 38, scope: !3786)
!3794 = distinct !{!3794, !3782, !3795, !535}
!3795 = !DILocation(line: 192, column: 9, scope: !447)
!3796 = !DILocation(line: 196, column: 1, scope: !414)
!3797 = !DISubprogram(name: "getgrouplist", scope: !911, file: !911, line: 186, type: !3798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!25, !30, !419, !3800, !129}
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!3801 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !452, file: !452, line: 27, type: !2863, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3802)
!3802 = !{!3803, !3804, !3805, !3806}
!3803 = !DILocalVariable(name: "ptr", arg: 1, scope: !3801, file: !452, line: 27, type: !24)
!3804 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3801, file: !452, line: 27, type: !27)
!3805 = !DILocalVariable(name: "size", arg: 3, scope: !3801, file: !452, line: 27, type: !27)
!3806 = !DILocalVariable(name: "nbytes", scope: !3801, file: !452, line: 29, type: !27)
!3807 = !DILocation(line: 0, scope: !3801)
!3808 = !DILocation(line: 30, column: 7, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3801, file: !452, line: 30, column: 7)
!3810 = !DILocalVariable(name: "ptr", arg: 1, scope: !3811, file: !2954, line: 2057, type: !24)
!3811 = distinct !DISubprogram(name: "rpl_realloc", scope: !2954, file: !2954, line: 2057, type: !2946, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3812)
!3812 = !{!3810, !3813}
!3813 = !DILocalVariable(name: "size", arg: 2, scope: !3811, file: !2954, line: 2057, type: !27)
!3814 = !DILocation(line: 0, scope: !3811, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 37, column: 10, scope: !3801)
!3816 = !DILocation(line: 2059, column: 24, scope: !3811, inlinedAt: !3815)
!3817 = !DILocation(line: 2059, column: 10, scope: !3811, inlinedAt: !3815)
!3818 = !DILocation(line: 37, column: 3, scope: !3801)
!3819 = !DILocation(line: 32, column: 7, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3809, file: !452, line: 31, column: 5)
!3821 = !DILocation(line: 32, column: 13, scope: !3820)
!3822 = !DILocation(line: 33, column: 7, scope: !3820)
!3823 = !DILocation(line: 38, column: 1, scope: !3801)
!3824 = distinct !DISubprogram(name: "hard_locale", scope: !455, file: !455, line: 28, type: !3825, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !3827)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!47, !25}
!3827 = !{!3828, !3829}
!3828 = !DILocalVariable(name: "category", arg: 1, scope: !3824, file: !455, line: 28, type: !25)
!3829 = !DILocalVariable(name: "locale", scope: !3824, file: !455, line: 30, type: !3830)
!3830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !3831)
!3831 = !{!3832}
!3832 = !DISubrange(count: 257)
!3833 = !DILocation(line: 0, scope: !3824)
!3834 = !DILocation(line: 30, column: 3, scope: !3824)
!3835 = !DILocation(line: 30, column: 8, scope: !3824)
!3836 = !DILocation(line: 32, column: 7, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3824, file: !455, line: 32, column: 7)
!3838 = !DILocation(line: 32, column: 7, scope: !3824)
!3839 = !DILocalVariable(name: "__s1", arg: 1, scope: !3840, file: !519, line: 1359, type: !30)
!3840 = distinct !DISubprogram(name: "streq", scope: !519, file: !519, line: 1359, type: !520, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !3841)
!3841 = !{!3839, !3842}
!3842 = !DILocalVariable(name: "__s2", arg: 2, scope: !3840, file: !519, line: 1359, type: !30)
!3843 = !DILocation(line: 0, scope: !3840, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 35, column: 9, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3824, file: !455, line: 35, column: 7)
!3846 = !DILocation(line: 1361, column: 11, scope: !3840, inlinedAt: !3844)
!3847 = !DILocation(line: 1361, column: 10, scope: !3840, inlinedAt: !3844)
!3848 = !DILocation(line: 35, column: 29, scope: !3845)
!3849 = !DILocation(line: 0, scope: !3840, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 35, column: 32, scope: !3845)
!3851 = !DILocation(line: 1361, column: 11, scope: !3840, inlinedAt: !3850)
!3852 = !DILocation(line: 1361, column: 10, scope: !3840, inlinedAt: !3850)
!3853 = !DILocation(line: 35, column: 7, scope: !3824)
!3854 = !DILocation(line: 46, column: 3, scope: !3824)
!3855 = !DILocation(line: 47, column: 1, scope: !3824)
!3856 = distinct !DISubprogram(name: "setlocale_null_r", scope: !457, file: !457, line: 154, type: !3857, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !3859)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!25, !25, !22, !27}
!3859 = !{!3860, !3861, !3862}
!3860 = !DILocalVariable(name: "category", arg: 1, scope: !3856, file: !457, line: 154, type: !25)
!3861 = !DILocalVariable(name: "buf", arg: 2, scope: !3856, file: !457, line: 154, type: !22)
!3862 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3856, file: !457, line: 154, type: !27)
!3863 = !DILocation(line: 0, scope: !3856)
!3864 = !DILocation(line: 159, column: 10, scope: !3856)
!3865 = !DILocation(line: 159, column: 3, scope: !3856)
!3866 = distinct !DISubprogram(name: "setlocale_null", scope: !457, file: !457, line: 186, type: !3867, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !3869)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!30, !25}
!3869 = !{!3870}
!3870 = !DILocalVariable(name: "category", arg: 1, scope: !3866, file: !457, line: 186, type: !25)
!3871 = !DILocation(line: 0, scope: !3866)
!3872 = !DILocation(line: 189, column: 10, scope: !3866)
!3873 = !DILocation(line: 189, column: 3, scope: !3866)
!3874 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !459, file: !459, line: 35, type: !3867, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !3875)
!3875 = !{!3876, !3877}
!3876 = !DILocalVariable(name: "category", arg: 1, scope: !3874, file: !459, line: 35, type: !25)
!3877 = !DILocalVariable(name: "result", scope: !3874, file: !459, line: 37, type: !30)
!3878 = !DILocation(line: 0, scope: !3874)
!3879 = !DILocation(line: 37, column: 24, scope: !3874)
!3880 = !DILocation(line: 62, column: 3, scope: !3874)
!3881 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !459, file: !459, line: 66, type: !3857, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !3882)
!3882 = !{!3883, !3884, !3885, !3886, !3887}
!3883 = !DILocalVariable(name: "category", arg: 1, scope: !3881, file: !459, line: 66, type: !25)
!3884 = !DILocalVariable(name: "buf", arg: 2, scope: !3881, file: !459, line: 66, type: !22)
!3885 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3881, file: !459, line: 66, type: !27)
!3886 = !DILocalVariable(name: "result", scope: !3881, file: !459, line: 111, type: !30)
!3887 = !DILocalVariable(name: "length", scope: !3888, file: !459, line: 125, type: !27)
!3888 = distinct !DILexicalBlock(scope: !3889, file: !459, line: 124, column: 5)
!3889 = distinct !DILexicalBlock(scope: !3881, file: !459, line: 113, column: 7)
!3890 = !DILocation(line: 0, scope: !3881)
!3891 = !DILocation(line: 0, scope: !3874, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 111, column: 24, scope: !3881)
!3893 = !DILocation(line: 37, column: 24, scope: !3874, inlinedAt: !3892)
!3894 = !DILocation(line: 113, column: 14, scope: !3889)
!3895 = !DILocation(line: 113, column: 7, scope: !3881)
!3896 = !DILocation(line: 116, column: 19, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !459, line: 116, column: 11)
!3898 = distinct !DILexicalBlock(scope: !3889, file: !459, line: 114, column: 5)
!3899 = !DILocation(line: 116, column: 11, scope: !3898)
!3900 = !DILocation(line: 120, column: 16, scope: !3897)
!3901 = !DILocation(line: 120, column: 9, scope: !3897)
!3902 = !DILocation(line: 125, column: 23, scope: !3888)
!3903 = !DILocation(line: 0, scope: !3888)
!3904 = !DILocation(line: 126, column: 18, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3888, file: !459, line: 126, column: 11)
!3906 = !DILocation(line: 126, column: 11, scope: !3888)
!3907 = !DILocation(line: 128, column: 39, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3905, file: !459, line: 127, column: 9)
!3909 = !DILocalVariable(name: "__dest", arg: 1, scope: !3910, file: !1389, line: 26, type: !3221)
!3910 = distinct !DISubprogram(name: "memcpy", scope: !1389, file: !1389, line: 26, type: !3219, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !3911)
!3911 = !{!3909, !3912, !3913}
!3912 = !DILocalVariable(name: "__src", arg: 2, scope: !3910, file: !1389, line: 26, type: !686)
!3913 = !DILocalVariable(name: "__len", arg: 3, scope: !3910, file: !1389, line: 26, type: !27)
!3914 = !DILocation(line: 0, scope: !3910, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 128, column: 11, scope: !3908)
!3916 = !DILocation(line: 29, column: 10, scope: !3910, inlinedAt: !3915)
!3917 = !DILocation(line: 129, column: 11, scope: !3908)
!3918 = !DILocation(line: 133, column: 23, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3920, file: !459, line: 133, column: 15)
!3920 = distinct !DILexicalBlock(scope: !3905, file: !459, line: 132, column: 9)
!3921 = !DILocation(line: 133, column: 15, scope: !3920)
!3922 = !DILocation(line: 138, column: 44, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3919, file: !459, line: 134, column: 13)
!3924 = !DILocation(line: 0, scope: !3910, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 138, column: 15, scope: !3923)
!3926 = !DILocation(line: 29, column: 10, scope: !3910, inlinedAt: !3925)
!3927 = !DILocation(line: 139, column: 15, scope: !3923)
!3928 = !DILocation(line: 139, column: 32, scope: !3923)
!3929 = !DILocation(line: 140, column: 13, scope: !3923)
!3930 = !DILocation(line: 0, scope: !3889)
!3931 = !DILocation(line: 145, column: 1, scope: !3881)
