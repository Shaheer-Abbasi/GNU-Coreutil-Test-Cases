; ModuleID = 'src/printenv.stripped.bc'
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
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [164 x i8] c"Usage: %s [OPTION] [VARIABLE]...\0APrint the values of the specified environment VARIABLE(s).\0AIf no VARIABLE is specified, print name and value pairs for them all.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"printenv\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"  -0, --null\0A         end each output line with NUL, not newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"+iu:0\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@environ = external local_unnamed_addr global i8**, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
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
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.46 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), align 8
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4
@.str.23 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8
@.str.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.58 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.59 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.60 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.61 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.62 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.63 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.64 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.65 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.66 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.60, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.61, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.66, i32 0, i32 0), i8* null], align 8
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 1
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@.str.10.69 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.67 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.70 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.68 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.76 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.77 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.78 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.79 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.94 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.98 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1
@exit_failure = dso_local global i32 1, align 4
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.109 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4
@.str.127 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [7 x %struct.infomap], align 8
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #32
  %7 = load i8*, i8** @program_name, align 8, !tbaa !12
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #32
  br label %52

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([164 x i8], [164 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #32
  %11 = load i8*, i8** @program_name, align 8, !tbaa !12
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #32
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 noundef 5) #32
  tail call fastcc void @oputs_(i8* noundef %13)
  %14 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32
  tail call fastcc void @oputs_(i8* noundef %14)
  %15 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32
  tail call fastcc void @oputs_(i8* noundef %15)
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #32
  %17 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #32
  %18 = bitcast [7 x %struct.infomap]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %18) #32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %18, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32
  %19 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0
  br label %20

20:                                               ; preds = %25, %9
  %21 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %9 ]
  %22 = phi %struct.infomap* [ %26, %25 ], [ %19, %9 ]
  %23 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %21) #33
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.infomap, %struct.infomap* %22, i64 1
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 0, i32 0
  %28 = load i8*, i8** %27, align 8, !tbaa !16
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %20, !llvm.loop !18

30:                                               ; preds = %25, %20
  %31 = phi %struct.infomap* [ %22, %20 ], [ %26, %25 ]
  %32 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 0, i32 1
  %33 = load i8*, i8** %32, align 8, !tbaa !20
  %34 = icmp eq i8* %33, null
  %35 = select i1 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %33
  tail call void @emit_bug_reporting_address() #32
  %36 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32
  %37 = icmp eq i8* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %30
  %39 = tail call i32 @strncmp(i8* noundef nonnull %36, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i64 noundef 3) #33
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.46, i64 0, i64 0), i32 noundef 5) #32
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %44 = tail call i32 @fputs_unlocked(i8* noundef %42, %struct._IO_FILE* noundef %43) #32
  br label %45

45:                                               ; preds = %30, %38, %41
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0), i32 noundef 5) #32
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %46, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #32
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 noundef 5) #32
  %49 = icmp eq i8* %35, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %50 = select i1 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %48, i8* noundef %35, i8* noundef %50) #32
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %18) #32
  br label %52

52:                                               ; preds = %45, %4
  tail call void @exit(i32 noundef %0) #34
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #4 {
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !tbaa !21
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #32
  %6 = icmp eq i8* %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !tbaa !23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #33
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !tbaa !21
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ]
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20)
  br label %121

22:                                               ; preds = %16
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #33
  %24 = getelementptr inbounds i8, i8* %0, i64 %23
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #33
  %26 = icmp eq i8* %25, null
  br i1 %26, label %53, label %27

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24
  br i1 %28, label %53, label %29

29:                                               ; preds = %27
  %30 = icmp ult i8* %24, %25
  br i1 %30, label %31, label %53

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35
  %33 = load i16*, i16** %32, align 8, !tbaa !12
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  %37 = getelementptr inbounds i8, i8* %35, i64 1
  %38 = load i8, i8* %35, align 1, !tbaa !23
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39
  %41 = load i16, i16* %40, align 2, !tbaa !24
  %42 = lshr i16 %41, 13
  %43 = and i16 %42, 1
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44
  %46 = icmp ult i8* %37, %25
  %47 = icmp ult i64 %45, 2
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %34, label %49, !llvm.loop !26

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2
  %51 = select i1 %50, i8* %24, i8* %25
  %52 = xor i1 %50, true
  br label %53

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ]
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #33
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  br label %58

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ]
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  %61 = load i8, i8* %59, align 1, !tbaa !23
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ]

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1
  %64 = load i8, i8* %63, align 1, !tbaa !23
  %65 = icmp ne i8 %64, 45
  %66 = select i1 %65, i1 %60, i1 false
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  %69 = tail call i16** @__ctype_b_loc() #35
  %70 = load i16*, i16** %69, align 8, !tbaa !12
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71
  %73 = load i16, i16* %72, align 2, !tbaa !24
  %74 = and i16 %73, 8192
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9
  br i1 %77, label %91, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1
  %80 = load i8, i8* %79, align 1, !tbaa !23
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81
  %83 = load i16, i16* %82, align 2, !tbaa !24
  %84 = and i16 %83, 8192
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1
  br label %58, !llvm.loop !27

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93)
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i64 noundef 6) #33
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i64 noundef 9) #33
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32
  br label %106

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %107)
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %109)
  %111 = ptrtoint i8* %59 to i64
  %112 = sub i64 %111, %92
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113)
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %115)
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %117)
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119)
  br label %121

121:                                              ; preds = %106, %19
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 {
  %3 = load i8*, i8** %1, align 8, !tbaa !12
  tail call void @set_program_name(i8* noundef %3) #32
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #32
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #32
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #32
  store volatile i32 2, i32* @exit_failure, align 4, !tbaa !21
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi i32 [ 10, %2 ], [ 0, %8 ]
  %10 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #32
  switch i32 %10, label %17 [
    i32 -1, label %18
    i32 48, label %8
    i32 -2, label %11
    i32 -3, label %12
  ], !llvm.loop !28

11:                                               ; preds = %8
  tail call void @usage(i32 noundef 0) #36
  unreachable

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %14 = load i8*, i8** @Version, align 8, !tbaa !12
  %15 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #32
  %16 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #32
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef %14, i8* noundef %15, i8* noundef %16, i8* noundef null) #32
  tail call void @exit(i32 noundef 0) #34
  unreachable

17:                                               ; preds = %8
  tail call void @usage(i32 noundef 2) #36
  unreachable

18:                                               ; preds = %8
  %19 = load i32, i32* @optind, align 4, !tbaa !21
  %20 = icmp slt i32 %19, %0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = sext i32 %19 to i64
  br label %39

23:                                               ; preds = %18
  %24 = load i8**, i8*** @environ, align 8, !tbaa !12
  %25 = load i8*, i8** %24, align 8, !tbaa !12
  %26 = icmp eq i8* %25, null
  br i1 %26, label %97, label %27

27:                                               ; preds = %23, %27
  %28 = phi i8* [ %32, %27 ], [ %25, %23 ]
  %29 = phi i8** [ %31, %27 ], [ %24, %23 ]
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %28, i32 noundef %9) #32
  %31 = getelementptr inbounds i8*, i8** %29, i64 1
  %32 = load i8*, i8** %31, align 8, !tbaa !12
  %33 = icmp eq i8* %32, null
  br i1 %33, label %97, label %27, !llvm.loop !29

34:                                               ; preds = %92
  %35 = load i32, i32* @optind, align 4, !tbaa !21
  %36 = sub nsw i32 %0, %35
  %37 = icmp ne i32 %93, %36
  %38 = zext i1 %37 to i32
  br label %97

39:                                               ; preds = %21, %92
  %40 = phi i64 [ %22, %21 ], [ %94, %92 ]
  %41 = phi i32 [ 0, %21 ], [ %93, %92 ]
  %42 = getelementptr inbounds i8*, i8** %1, i64 %40
  %43 = load i8*, i8** %42, align 8, !tbaa !12
  %44 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %43, i32 noundef 61) #33
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %92

46:                                               ; preds = %39
  %47 = load i8**, i8*** @environ, align 8, !tbaa !12
  %48 = load i8*, i8** %47, align 8, !tbaa !12
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %85, %46
  %51 = phi i1 [ false, %46 ], [ %86, %85 ]
  %52 = zext i1 %51 to i32
  %53 = add nsw i32 %41, %52
  br label %92

54:                                               ; preds = %46, %90
  %55 = phi i8* [ %91, %90 ], [ %43, %46 ]
  %56 = phi i8* [ %88, %90 ], [ %48, %46 ]
  %57 = phi i8** [ %87, %90 ], [ %47, %46 ]
  %58 = phi i1 [ %86, %90 ], [ false, %46 ]
  %59 = load i8, i8* %56, align 1, !tbaa !23
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %85, label %61

61:                                               ; preds = %54
  %62 = load i8, i8* %55, align 1, !tbaa !23
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %61, %82
  %65 = phi i8 [ %83, %82 ], [ %62, %61 ]
  %66 = phi i8* [ %69, %82 ], [ %56, %61 ]
  %67 = phi i8* [ %70, %82 ], [ %55, %61 ]
  %68 = phi i8 [ %73, %82 ], [ %59, %61 ]
  %69 = getelementptr inbounds i8, i8* %66, i64 1
  %70 = getelementptr inbounds i8, i8* %67, i64 1
  %71 = icmp eq i8 %68, %65
  br i1 %71, label %72, label %85

72:                                               ; preds = %64
  %73 = load i8, i8* %69, align 1, !tbaa !23
  switch i8 %73, label %82 [
    i8 61, label %74
    i8 0, label %85
  ]

74:                                               ; preds = %72
  %75 = load i8, i8* %70, align 1, !tbaa !23
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = getelementptr inbounds i8, i8* %66, i64 2
  %79 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %78, i32 noundef %9) #32
  br label %85

80:                                               ; preds = %74
  %81 = icmp eq i8 %73, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %80, %72
  %83 = load i8, i8* %70, align 1, !tbaa !23
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %64, !llvm.loop !30

85:                                               ; preds = %72, %80, %82, %64, %61, %54, %77
  %86 = phi i1 [ true, %77 ], [ %58, %54 ], [ %58, %61 ], [ %58, %64 ], [ %58, %82 ], [ %58, %80 ], [ %58, %72 ]
  %87 = getelementptr inbounds i8*, i8** %57, i64 1
  %88 = load i8*, i8** %87, align 8, !tbaa !12
  %89 = icmp eq i8* %88, null
  br i1 %89, label %50, label %90, !llvm.loop !31

90:                                               ; preds = %85
  %91 = load i8*, i8** %42, align 8, !tbaa !12
  br label %54

92:                                               ; preds = %39, %50
  %93 = phi i32 [ %53, %50 ], [ %41, %39 ]
  %94 = add nsw i64 %40, 1
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %95, %0
  br i1 %96, label %34, label %39, !llvm.loop !32

97:                                               ; preds = %27, %23, %34
  %98 = phi i32 [ %38, %34 ], [ 0, %23 ], [ 0, %27 ]
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #13 {
  store i8* %0, i8** @file_name, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 {
  %2 = zext i1 %0 to i8
  store i8 %2, i8* @ignore_EPIPE, align 4, !tbaa !33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !tbaa !33, !range !35
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35
  %9 = load i32, i32* %8, align 4, !tbaa !21
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.24, i64 0, i64 0), i32 noundef 5) #32
  %13 = load i8*, i8** @file_name, align 8, !tbaa !12
  %14 = icmp eq i8* %13, null
  %15 = tail call i32* @__errno_location() #35
  %16 = load i32, i32* %15, align 4, !tbaa !21
  br i1 %14, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.25, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32
  br label %20

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.26, i64 0, i64 0), i8* noundef %12) #32
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  tail call void @_exit(i32 noundef %21) #34
  unreachable

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  tail call void @_exit(i32 noundef %27) #34
  unreachable

28:                                               ; preds = %22
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #15 {
  %5 = alloca %"struct.std::__va_list", align 8
  tail call fastcc void @flush_stdout()
  %6 = load void ()*, void ()** @error_print_progname, align 8, !tbaa !12
  %7 = icmp eq void ()* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6() #32
  br label %13

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %11 = tail call i8* @getprogname() #33
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* noundef %11) #32
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !tbaa.struct !36
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 {
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !noalias !37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !noalias !37
  %11 = load i32, i32* @error_message_count, align 4, !tbaa !21
  %12 = add i32 %11, 1
  store i32 %12, i32* @error_message_count, align 4, !tbaa !21
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.29, i64 0, i64 0), i32 noundef 5) #32
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ]
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.30, i64 0, i64 0), i8* noundef %21) #32
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5
  %27 = load i8*, i8** %26, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6
  %29 = load i8*, i8** %28, align 8, !tbaa !44
  %30 = icmp ult i8* %27, %29
  br i1 %30, label %33, label %31, !prof !45

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32
  br label %35

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %34, i8** %26, align 8, !tbaa !41
  store i8 10, i8* %27, align 1, !tbaa !23
  br label %35

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32
  %38 = icmp eq i32 %0, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #34
  unreachable

40:                                               ; preds = %35
  ret void
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32
  call void @llvm.va_start(i8* nonnull %6)
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !36
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #15 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = load i32, i32* @error_one_per_line, align 4, !tbaa !21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !tbaa !21
  %12 = icmp eq i32 %11, %3
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !tbaa !12
  %15 = icmp eq i8* %14, %2
  br i1 %15, label %39, label %16

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #33
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !tbaa !12
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !tbaa !21
  br label %24

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout()
  %25 = load void ()*, void ()** @error_print_progname, align 8, !tbaa !12
  %26 = icmp eq void ()* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void %25() #32
  br label %32

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %30 = tail call i8* @getprogname() #33
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.33, i64 0, i64 0), i8* noundef %30) #32
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %34 = icmp eq i8* %2, null
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.34, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.35, i64 0, i64 0)
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !tbaa.struct !36
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32
  br label %39

39:                                               ; preds = %13, %20, %32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32
  call void @llvm.va_start(i8* nonnull %8)
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !36
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32
  call void @llvm.va_end(i8* nonnull %8)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #17 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !tbaa !12
  ret i8* %1
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #18 {
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #33
  %3 = icmp eq i8* %2, null
  %4 = getelementptr inbounds i8, i8* %2, i64 1
  %5 = select i1 %3, i8* %0, i8* %4
  %6 = ptrtoint i8* %5 to i64
  %7 = ptrtoint i8* %0 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 6
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i64 7) #32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.54, i64 0, i64 0), i64 noundef 3) #33
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i64 3, i64 0
  %18 = getelementptr i8, i8* %5, i64 %17
  br label %19

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ]
  store i8* %20, i8** @program_name, align 8, !tbaa !12
  store i8* %20, i8** @program_invocation_name, align 8, !tbaa !12
  store i8* %21, i8** @program_invocation_short_name, align 8, !tbaa !12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32
  %6 = icmp eq i8* %5, %0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32
  %10 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32
  store i64 0, i64* %4, align 8
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32
  %12 = icmp eq i64 %11, 2
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false
  %16 = select i1 %15, i8* %1, i8* %0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ]
  ret i8* %18
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 {
  %2 = tail call i32* @__errno_location() #35
  %3 = load i32, i32* %2, align 4, !tbaa !21
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = bitcast %struct.quoting_options* %5 to i8*
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4, !tbaa !21
  ret %struct.quoting_options* %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #17 {
  %2 = icmp eq %struct.quoting_options* %0, null
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !46
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #20 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = lshr i8 %1, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7
  %9 = and i8 %1, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4, !tbaa !21
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = and i32 %2, 1
  %15 = xor i32 %13, %14
  %16 = shl i32 %15, %10
  %17 = xor i32 %16, %11
  store i32 %17, i32* %8, align 4, !tbaa !21
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #20 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4, !tbaa !48
  store i32 %1, i32* %5, align 4, !tbaa !48
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %6, align 8, !tbaa !46
  %7 = icmp ne i8* %1, null
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @abort() #34
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %12, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %13, align 8, !tbaa !50
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 {
  %6 = icmp eq %struct.quoting_options* %4, null
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4
  %8 = tail call i32* @__errno_location() #35
  %9 = load i32, i32* %8, align 4, !tbaa !21
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !48
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3
  %16 = load i8*, i8** %15, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4
  %18 = load i8*, i8** %17, align 8, !tbaa !50
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18)
  store i32 %9, i32* %8, align 4, !tbaa !21
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32
  %18 = icmp eq i64 %17, 1
  %19 = and i32 %5, 2
  %20 = icmp ne i32 %19, 0
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
  br label %36

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ]
  %42 = phi i8* [ null, %9 ], [ %116, %608 ]
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ]
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
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
  ]

49:                                               ; preds = %36
  br label %111

50:                                               ; preds = %36
  br i1 %45, label %111, label %51

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0
  br i1 %52, label %111, label %53

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !tbaa !23
  br label %111

54:                                               ; preds = %36, %36
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.67, i64 0, i64 0), i32 noundef 5) #32
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.67, i64 0, i64 0)
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32
  store i64 0, i64* %13, align 8
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32
  %59 = icmp eq i64 %58, 3
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false
  %63 = icmp eq i32 %37, 9
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0)
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ]
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), i32 noundef 5) #32
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0)
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32
  store i64 0, i64* %11, align 8
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32
  %72 = icmp eq i64 %71, 3
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false
  %76 = icmp eq i32 %37, 9
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0)
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  br i1 %45, label %97, label %82

82:                                               ; preds = %79
  %83 = load i8, i8* %80, align 1, !tbaa !23
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  %89 = icmp ult i64 %88, %48
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88
  store i8 %86, i8* %91, align 1, !tbaa !23
  br label %92

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1
  %94 = getelementptr inbounds i8, i8* %87, i64 1
  %95 = load i8, i8* %94, align 1, !tbaa !23
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %85, !llvm.loop !51

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ]
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #33
  br label %111

100:                                              ; preds = %36
  br label %102

101:                                              ; preds = %36
  br i1 %45, label %102, label %105

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  br label %111

104:                                              ; preds = %36
  br i1 %45, label %111, label %105

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !tbaa !23
  br label %111

109:                                              ; preds = %36
  br label %111

110:                                              ; preds = %36
  call void @abort() #34
  unreachable

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ]
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %102 ]
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ]
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
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
  br label %132

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ]
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ]
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ]
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  %141 = icmp eq i64 %133, -1
  br i1 %141, label %142, label %146

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139
  %144 = load i8, i8* %143, align 1, !tbaa !23
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %596, label %148

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133
  br i1 %147, label %596, label %148

148:                                              ; preds = %142, %146
  br i1 %123, label %149, label %163

149:                                              ; preds = %148
  %150 = add i64 %139, %117
  %151 = select i1 %141, i1 %124, i1 false
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33
  br label %154

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ]
  %156 = icmp ugt i64 %150, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32
  %160 = icmp ne i32 %159, 0
  %161 = or i1 %160, %125
  %162 = xor i1 %160, true
  br i1 %161, label %163, label %647

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  %166 = getelementptr inbounds i8, i8* %2, i64 %139
  %167 = load i8, i8* %166, align 1, !tbaa !23
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
  ]

168:                                              ; preds = %163
  br i1 %118, label %169, label %215

169:                                              ; preds = %168
  br i1 %119, label %636, label %170

170:                                              ; preds = %169
  %171 = select i1 %120, i1 true, i1 %138
  br i1 %171, label %188, label %172

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140
  br i1 %173, label %174, label %176

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134
  store i8 39, i8* %175, align 1, !tbaa !23
  br label %176

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1
  %178 = icmp ult i64 %177, %140
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177
  store i8 36, i8* %180, align 1, !tbaa !23
  br label %181

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2
  %183 = icmp ult i64 %182, %140
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182
  store i8 39, i8* %185, align 1, !tbaa !23
  br label %186

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3
  br label %188

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ]
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  %191 = icmp ult i64 %189, %140
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189
  store i8 92, i8* %193, align 1, !tbaa !23
  br label %194

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1
  br i1 %120, label %196, label %499

196:                                              ; preds = %194
  %197 = add i64 %139, 1
  %198 = icmp ult i64 %197, %164
  br i1 %198, label %199, label %456

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197
  %201 = load i8, i8* %200, align 1, !tbaa !23
  %202 = add i8 %201, -48
  %203 = icmp ult i8 %202, 10
  br i1 %203, label %204, label %456

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140
  br i1 %205, label %206, label %208

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195
  store i8 48, i8* %207, align 1, !tbaa !23
  br label %208

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2
  %210 = icmp ult i64 %209, %140
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209
  store i8 48, i8* %212, align 1, !tbaa !23
  br label %213

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3
  br label %456

215:                                              ; preds = %168
  br i1 %31, label %467, label %586

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ]

217:                                              ; preds = %216
  br i1 %119, label %638, label %456

218:                                              ; preds = %216
  br i1 %29, label %456, label %219

219:                                              ; preds = %218
  %220 = add i64 %139, 2
  %221 = icmp ult i64 %220, %164
  br i1 %221, label %222, label %456

222:                                              ; preds = %219
  %223 = add i64 %139, 1
  %224 = getelementptr inbounds i8, i8* %2, i64 %223
  %225 = load i8, i8* %224, align 1, !tbaa !23
  %226 = icmp eq i8 %225, 63
  br i1 %226, label %227, label %456

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220
  %229 = load i8, i8* %228, align 1, !tbaa !23
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
  ]

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231

231:                                              ; preds = %230
  %232 = icmp ult i64 %134, %140
  br i1 %232, label %233, label %235

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134
  store i8 63, i8* %234, align 1, !tbaa !23
  br label %235

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1
  %237 = icmp ult i64 %236, %140
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236
  store i8 34, i8* %239, align 1, !tbaa !23
  br label %240

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2
  %242 = icmp ult i64 %241, %140
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241
  store i8 34, i8* %244, align 1, !tbaa !23
  br label %245

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3
  %247 = icmp ult i64 %246, %140
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246
  store i8 63, i8* %249, align 1, !tbaa !23
  br label %250

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4
  br label %456

252:                                              ; preds = %163
  br label %263

253:                                              ; preds = %163
  br label %263

254:                                              ; preds = %163
  br label %261

255:                                              ; preds = %163
  br label %261

256:                                              ; preds = %163
  br label %263

257:                                              ; preds = %163
  br i1 %126, label %258, label %259

258:                                              ; preds = %257
  br i1 %119, label %638, label %546

259:                                              ; preds = %257
  br i1 %118, label %260, label %467

260:                                              ; preds = %259
  br i1 %127, label %546, label %510

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ]
  br i1 %128, label %263, label %638

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ]
  br i1 %118, label %510, label %467

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ]

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !tbaa !23
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %456

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0
  br i1 %270, label %271, label %456

271:                                              ; preds = %269, %163
  br label %272

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  br i1 %126, label %274, label %456

274:                                              ; preds = %272
  br i1 %119, label %638, label %456

275:                                              ; preds = %163
  br i1 %126, label %276, label %456

276:                                              ; preds = %275
  br i1 %119, label %638, label %277

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279
  %281 = select i1 %280, i64 %135, i64 %140
  %282 = select i1 %280, i64 %140, i64 0
  %283 = icmp ult i64 %134, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134
  store i8 39, i8* %285, align 1, !tbaa !23
  br label %286

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1
  %288 = icmp ult i64 %287, %282
  br i1 %288, label %289, label %291

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287
  store i8 92, i8* %290, align 1, !tbaa !23
  br label %291

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2
  %293 = icmp ult i64 %292, %282
  br i1 %293, label %294, label %296

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292
  store i8 39, i8* %295, align 1, !tbaa !23
  br label %296

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3
  br label %456

298:                                              ; preds = %163
  br i1 %18, label %299, label %307

299:                                              ; preds = %298
  %300 = tail call i16** @__ctype_b_loc() #35
  %301 = load i16*, i16** %300, align 8, !tbaa !12
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302
  %304 = load i16, i16* %303, align 2, !tbaa !24
  %305 = and i16 %304, 16384
  %306 = icmp ne i16 %305, 0
  br label %352

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32
  store i64 0, i64* %14, align 8
  %308 = icmp eq i64 %164, -1
  br i1 %308, label %309, label %311

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33
  br label %311

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32
  %313 = sub i64 %312, %139
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ]

315:                                              ; preds = %311
  %316 = icmp ugt i64 %312, %139
  br i1 %316, label %319, label %317

317:                                              ; preds = %315
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32
  br label %352

318:                                              ; preds = %311
  br label %346

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  %322 = getelementptr inbounds i8, i8* %2, i64 %320
  %323 = load i8, i8* %322, align 1, !tbaa !23
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %348, label %325

325:                                              ; preds = %319
  %326 = add i64 %321, 1
  %327 = add i64 %326, %139
  %328 = icmp eq i64 %326, %313
  br i1 %328, label %348, label %319, !llvm.loop !52

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false
  br i1 %331, label %332, label %340

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  %334 = add i64 %333, %139
  %335 = getelementptr inbounds i8, i8* %2, i64 %334
  %336 = load i8, i8* %335, align 1, !tbaa !23
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ]

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1
  %339 = icmp eq i64 %338, %314
  br i1 %339, label %340, label %332, !llvm.loop !53

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !tbaa !21
  %342 = call i32 @iswprint(i32 noundef %341) #32
  %343 = icmp ne i32 %342, 0
  br label %348

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32
  %345 = select i1 %118, i32 4, i32 2
  br label %643

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32
  br label %352

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32
  %351 = icmp ugt i64 %349, 1
  br i1 %351, label %357, label %352

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353
  br i1 %356, label %456, label %357

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139
  %362 = select i1 %130, i1 true, i1 %358
  br label %363

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ]
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ]
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ]
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ]
  br i1 %362, label %414, label %370

370:                                              ; preds = %363
  br i1 %119, label %638, label %371

371:                                              ; preds = %370
  %372 = select i1 %120, i1 true, i1 %365
  br i1 %372, label %389, label %373

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140
  br i1 %374, label %375, label %377

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364
  store i8 39, i8* %376, align 1, !tbaa !23
  br label %377

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1
  %379 = icmp ult i64 %378, %140
  br i1 %379, label %380, label %382

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378
  store i8 36, i8* %381, align 1, !tbaa !23
  br label %382

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2
  %384 = icmp ult i64 %383, %140
  br i1 %384, label %385, label %387

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383
  store i8 39, i8* %386, align 1, !tbaa !23
  br label %387

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3
  br label %389

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ]
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  %392 = icmp ult i64 %390, %140
  br i1 %392, label %393, label %395

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390
  store i8 92, i8* %394, align 1, !tbaa !23
  br label %395

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1
  %397 = icmp ult i64 %396, %140
  br i1 %397, label %398, label %402

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6
  %400 = or i8 %399, 48
  %401 = getelementptr inbounds i8, i8* %0, i64 %396
  store i8 %400, i8* %401, align 1, !tbaa !23
  br label %402

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2
  %404 = icmp ult i64 %403, %140
  br i1 %404, label %405, label %410

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3
  %407 = and i8 %406, 7
  %408 = or i8 %407, 48
  %409 = getelementptr inbounds i8, i8* %0, i64 %403
  store i8 %408, i8* %409, align 1, !tbaa !23
  br label %410

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3
  %412 = and i8 %369, 7
  %413 = or i8 %412, 48
  br label %421

414:                                              ; preds = %363
  br i1 %367, label %415, label %421

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140
  br i1 %416, label %417, label %419

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364
  store i8 92, i8* %418, align 1, !tbaa !23
  br label %419

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1
  br label %421

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ]
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ]
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ]
  %427 = add i64 %366, 1
  %428 = icmp ugt i64 %361, %427
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0
  %432 = select i1 %423, i1 %431, i1 false
  br i1 %432, label %433, label %444

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140
  br i1 %434, label %435, label %437

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422
  store i8 39, i8* %436, align 1, !tbaa !23
  br label %437

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1
  %439 = icmp ult i64 %438, %140
  br i1 %439, label %440, label %442

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438
  store i8 39, i8* %441, align 1, !tbaa !23
  br label %442

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2
  br label %444

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ]
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  %447 = icmp ult i64 %445, %140
  br i1 %447, label %448, label %450

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445
  store i8 %426, i8* %449, align 1, !tbaa !23
  br label %450

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1
  %452 = getelementptr inbounds i8, i8* %2, i64 %427
  %453 = load i8, i8* %452, align 1, !tbaa !23
  br label %363

454:                                              ; preds = %421
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ]
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ]
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ]
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ]
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ]
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  br i1 %121, label %478, label %467

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
  br i1 %131, label %479, label %499

478:                                              ; preds = %456
  br i1 %35, label %499, label %479

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
  %490 = lshr i8 %481, 5
  %491 = zext i8 %490 to i64
  %492 = getelementptr inbounds i32, i32* %6, i64 %491
  %493 = load i32, i32* %492, align 4, !tbaa !21
  %494 = and i8 %481, 31
  %495 = zext i8 %494 to i32
  %496 = shl nuw i32 1, %495
  %497 = and i32 %493, %496
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %510

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
  br i1 %165, label %510, label %546

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ]
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ]
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ]
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ]
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ]
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  br i1 %119, label %638, label %520

520:                                              ; preds = %510
  %521 = select i1 %120, i1 true, i1 %515
  br i1 %521, label %538, label %522

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519
  br i1 %523, label %524, label %526

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512
  store i8 39, i8* %525, align 1, !tbaa !23
  br label %526

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1
  %528 = icmp ult i64 %527, %519
  br i1 %528, label %529, label %531

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527
  store i8 36, i8* %530, align 1, !tbaa !23
  br label %531

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2
  %533 = icmp ult i64 %532, %519
  br i1 %533, label %534, label %536

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532
  store i8 39, i8* %535, align 1, !tbaa !23
  br label %536

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3
  br label %538

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ]
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  %541 = icmp ult i64 %539, %519
  br i1 %541, label %542, label %544

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539
  store i8 92, i8* %543, align 1, !tbaa !23
  br label %544

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1
  br label %570

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ]
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ]
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ]
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ]
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ]
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  %557 = xor i1 %551, true
  %558 = select i1 %557, i1 true, i1 %553
  br i1 %558, label %570, label %559

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556
  br i1 %560, label %561, label %563

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548
  store i8 39, i8* %562, align 1, !tbaa !23
  br label %563

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1
  %565 = icmp ult i64 %564, %556
  br i1 %565, label %566, label %568

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564
  store i8 39, i8* %567, align 1, !tbaa !23
  br label %568

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2
  br label %570

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ]
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  %580 = icmp ult i64 %578, %571
  br i1 %580, label %581, label %583

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578
  store i8 %572, i8* %582, align 1, !tbaa !23
  br label %583

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1
  %585 = select i1 %573, i1 %137, i1 false
  br label %586

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ]
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ]
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ]
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ]
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  %595 = add i64 %593, 1
  br label %132, !llvm.loop !54

596:                                              ; preds = %146, %142
  %597 = icmp eq i64 %134, 0
  %598 = and i1 %126, %597
  %599 = and i1 %598, %119
  br i1 %599, label %638, label %600

600:                                              ; preds = %596
  %601 = xor i1 %126, true
  %602 = or i1 %119, %601
  %603 = xor i1 %136, true
  %604 = select i1 %602, i1 true, i1 %603
  br i1 %604, label %612, label %605

605:                                              ; preds = %600
  br i1 %137, label %606, label %608

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114)
  br label %653

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false
  br i1 %611, label %36, label %612

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null
  %615 = or i1 %614, %613
  br i1 %615, label %631, label %616

616:                                              ; preds = %612
  %617 = load i8, i8* %116, align 1, !tbaa !23
  %618 = icmp eq i8 %617, 0
  br i1 %618, label %631, label %619

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  %623 = icmp ult i64 %622, %140
  br i1 %623, label %624, label %626

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622
  store i8 %620, i8* %625, align 1, !tbaa !23
  br label %626

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1
  %628 = getelementptr inbounds i8, i8* %621, i64 1
  %629 = load i8, i8* %628, align 1, !tbaa !23
  %630 = icmp eq i8 %629, 0
  br i1 %630, label %631, label %619, !llvm.loop !55

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ]
  %633 = icmp ult i64 %632, %140
  br i1 %633, label %634, label %653

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632
  store i8 0, i8* %635, align 1, !tbaa !23
  br label %653

636:                                              ; preds = %169
  %637 = icmp eq i32 %112, 2
  br i1 %637, label %643, label %647

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  %641 = icmp eq i32 %112, 2
  %642 = select i1 %118, i32 4, i32 2
  br i1 %641, label %643, label %647

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  %651 = and i32 %5, -3
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114)
  br label %653

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq %struct.quoting_options* %2, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2
  %6 = tail call i32* @__errno_location() #35
  %7 = load i32, i32* %6, align 4, !tbaa !21
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !48
  %10 = or i32 %9, 1
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  %15 = load i8*, i8** %14, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  %17 = load i8*, i8** %16, align 8, !tbaa !50
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32
  %19 = add i64 %18, 1
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39
  %21 = load i32, i32* %11, align 8, !tbaa !46
  %22 = load i8*, i8** %14, align 8, !tbaa !49
  %23 = load i8*, i8** %16, align 8, !tbaa !50
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32
  store i32 %7, i32* %6, align 4, !tbaa !21
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 {
  %5 = icmp eq %struct.quoting_options* %3, null
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3
  %7 = tail call i32* @__errno_location() #35
  %8 = load i32, i32* %7, align 4, !tbaa !21
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !48
  %11 = icmp eq i64* %2, null
  %12 = zext i1 %11 to i32
  %13 = or i32 %10, %12
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  %15 = load i32, i32* %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  %18 = load i8*, i8** %17, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  %20 = load i8*, i8** %19, align 8, !tbaa !50
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20)
  %22 = add i64 %21, 1
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39
  %24 = load i32, i32* %14, align 8, !tbaa !46
  %25 = load i8*, i8** %17, align 8, !tbaa !49
  %26 = load i8*, i8** %19, align 8, !tbaa !50
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26)
  store i32 %8, i32* %7, align 4, !tbaa !21
  br i1 %11, label %29, label %28

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !tbaa !56
  br label %29

29:                                               ; preds = %28, %4
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !tbaa !12
  %2 = load i32, i32* @nslots, align 4, !tbaa !21
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64
  br label %10

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1
  %8 = load i8*, i8** %7, align 8, !tbaa !57
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %9, label %17, label %16

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1
  %13 = load i8*, i8** %12, align 8, !tbaa !57
  tail call void @free(i8* noundef %13) #32
  %14 = add nuw nsw i64 %11, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %6, label %10, !llvm.loop !59

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !tbaa !60
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !tbaa !57
  br label %17

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* noundef %20) #32
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !tbaa !12
  br label %21

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !tbaa !21
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options)
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 {
  %5 = alloca i64, align 8
  %6 = tail call i32* @__errno_location() #35
  %7 = load i32, i32* %6, align 4, !tbaa !21
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !tbaa !12
  %9 = icmp ugt i32 %0, 2147483646
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @abort() #34
  unreachable

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !tbaa !21
  %13 = icmp sgt i32 %12, %0
  br i1 %13, label %36, label %14

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0
  %16 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32
  %17 = sext i32 %12 to i64
  store i64 %17, i64* %5, align 8, !tbaa !56
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8
  %19 = bitcast %struct.slotvec* %18 to i8*
  %20 = add nuw nsw i32 %0, 1
  %21 = sub i32 %20, %12
  %22 = sext i32 %21 to i64
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32
  %24 = bitcast i8* %23 to %struct.slotvec*
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !tbaa !12
  br i1 %15, label %25, label %26

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !tbaa.struct !61
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !tbaa !21
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28
  %30 = bitcast %struct.slotvec* %29 to i8*
  %31 = load i64, i64* %5, align 8, !tbaa !56
  %32 = sub nsw i64 %31, %28
  %33 = shl i64 %32, 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32
  %34 = load i64, i64* %5, align 8, !tbaa !56
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* @nslots, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32
  br label %36

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ]
  %38 = zext i32 %0 to i64
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !60
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1
  %42 = load i8*, i8** %41, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1
  %44 = load i32, i32* %43, align 4, !tbaa !48
  %45 = or i32 %44, 1
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %47 = load i32, i32* %46, align 8, !tbaa !46
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3
  %50 = load i8*, i8** %49, align 8, !tbaa !49
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4
  %52 = load i8*, i8** %51, align 8, !tbaa !50
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52)
  %54 = icmp ugt i64 %40, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %36
  %56 = add i64 %53, 1
  store i64 %56, i64* %39, align 8, !tbaa !60
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32
  br label %59

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39
  store i8* %60, i8** %41, align 8, !tbaa !57
  %61 = load i32, i32* %46, align 8, !tbaa !46
  %62 = load i8*, i8** %49, align 8, !tbaa !49
  %63 = load i8*, i8** %51, align 8, !tbaa !50
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63)
  br label %65

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ]
  store i32 %7, i32* %6, align 4, !tbaa !21
  ret i8* %66
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !alias.scope !62
  %6 = icmp eq i32 %1, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #34, !noalias !62
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %9, align 8, !tbaa !46, !alias.scope !62
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32
  ret i8* %10
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !alias.scope !65
  %7 = icmp eq i32 %1, 10
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @abort() #34, !noalias !65
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %10, align 8, !tbaa !46, !alias.scope !65
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68) #32
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !alias.scope !68
  %5 = icmp eq i32 %0, 10
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @abort() #34, !noalias !68
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  store i32 %0, i32* %8, align 8, !tbaa !46, !alias.scope !68
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71) #32
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !alias.scope !71
  %6 = icmp eq i32 %0, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #34, !noalias !71
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %9, align 8, !tbaa !46, !alias.scope !71
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !tbaa.struct !74
  %6 = lshr i8 %2, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7
  %9 = and i8 %2, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4, !tbaa !21
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = shl i32 %14, %10
  %16 = xor i32 %15, %11
  store i32 %16, i32* %8, align 4, !tbaa !21
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !tbaa.struct !74
  %5 = lshr i8 %1, 5
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6
  %8 = and i8 %1, 31
  %9 = zext i8 %8 to i32
  %10 = load i32, i32* %7, align 4, !tbaa !21
  %11 = lshr i32 %10, %9
  %12 = and i32 %11, 1
  %13 = xor i32 %12, 1
  %14 = shl i32 %13, %9
  %15 = xor i32 %14, %10
  store i32 %15, i32* %7, align 4, !tbaa !21
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !tbaa.struct !74
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4, !tbaa !21
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4, !tbaa !21
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !tbaa.struct !74
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4, !tbaa !21
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4, !tbaa !21
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32
  %6 = icmp eq i32 %1, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #34, !noalias !75
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %9, align 8, !tbaa.struct !74
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %11 = bitcast i32* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false)
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1
  %13 = load i32, i32* %12, align 4, !tbaa !21
  %14 = or i32 %13, 67108864
  store i32 %14, i32* %12, align 4, !tbaa !21
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !tbaa.struct !74
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8, !tbaa !46
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @abort() #34
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8, !tbaa !50
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !tbaa.struct !74
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8, !tbaa !46
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @abort() #34
  unreachable

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8, !tbaa !50
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !tbaa.struct !74
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8, !tbaa !46
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @abort() #34
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8, !tbaa !50
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !tbaa.struct !74
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8, !tbaa !46
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @abort() #34
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8, !tbaa !50
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32
  br label %12

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.74, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.76, i64 0, i64 0), i32 noundef 5) #32
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.77, i64 0, i64 0), %struct._IO_FILE* noundef %0)
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.78, i64 0, i64 0), i32 noundef 5) #32
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.79, i64 0, i64 0)) #32
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.77, i64 0, i64 0), %struct._IO_FILE* noundef %0)
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
  ]

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.80, i64 0, i64 0), i32 noundef 5) #32
  %21 = load i8*, i8** %4, align 8, !tbaa !12
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32
  br label %147

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.81, i64 0, i64 0), i32 noundef 5) #32
  %25 = load i8*, i8** %4, align 8, !tbaa !12
  %26 = getelementptr inbounds i8*, i8** %4, i64 1
  %27 = load i8*, i8** %26, align 8, !tbaa !12
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32
  br label %147

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.82, i64 0, i64 0), i32 noundef 5) #32
  %31 = load i8*, i8** %4, align 8, !tbaa !12
  %32 = getelementptr inbounds i8*, i8** %4, i64 1
  %33 = load i8*, i8** %32, align 8, !tbaa !12
  %34 = getelementptr inbounds i8*, i8** %4, i64 2
  %35 = load i8*, i8** %34, align 8, !tbaa !12
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32
  br label %147

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.83, i64 0, i64 0), i32 noundef 5) #32
  %39 = load i8*, i8** %4, align 8, !tbaa !12
  %40 = getelementptr inbounds i8*, i8** %4, i64 1
  %41 = load i8*, i8** %40, align 8, !tbaa !12
  %42 = getelementptr inbounds i8*, i8** %4, i64 2
  %43 = load i8*, i8** %42, align 8, !tbaa !12
  %44 = getelementptr inbounds i8*, i8** %4, i64 3
  %45 = load i8*, i8** %44, align 8, !tbaa !12
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32
  br label %147

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.84, i64 0, i64 0), i32 noundef 5) #32
  %49 = load i8*, i8** %4, align 8, !tbaa !12
  %50 = getelementptr inbounds i8*, i8** %4, i64 1
  %51 = load i8*, i8** %50, align 8, !tbaa !12
  %52 = getelementptr inbounds i8*, i8** %4, i64 2
  %53 = load i8*, i8** %52, align 8, !tbaa !12
  %54 = getelementptr inbounds i8*, i8** %4, i64 3
  %55 = load i8*, i8** %54, align 8, !tbaa !12
  %56 = getelementptr inbounds i8*, i8** %4, i64 4
  %57 = load i8*, i8** %56, align 8, !tbaa !12
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32
  br label %147

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.85, i64 0, i64 0), i32 noundef 5) #32
  %61 = load i8*, i8** %4, align 8, !tbaa !12
  %62 = getelementptr inbounds i8*, i8** %4, i64 1
  %63 = load i8*, i8** %62, align 8, !tbaa !12
  %64 = getelementptr inbounds i8*, i8** %4, i64 2
  %65 = load i8*, i8** %64, align 8, !tbaa !12
  %66 = getelementptr inbounds i8*, i8** %4, i64 3
  %67 = load i8*, i8** %66, align 8, !tbaa !12
  %68 = getelementptr inbounds i8*, i8** %4, i64 4
  %69 = load i8*, i8** %68, align 8, !tbaa !12
  %70 = getelementptr inbounds i8*, i8** %4, i64 5
  %71 = load i8*, i8** %70, align 8, !tbaa !12
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32
  br label %147

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.86, i64 0, i64 0), i32 noundef 5) #32
  %75 = load i8*, i8** %4, align 8, !tbaa !12
  %76 = getelementptr inbounds i8*, i8** %4, i64 1
  %77 = load i8*, i8** %76, align 8, !tbaa !12
  %78 = getelementptr inbounds i8*, i8** %4, i64 2
  %79 = load i8*, i8** %78, align 8, !tbaa !12
  %80 = getelementptr inbounds i8*, i8** %4, i64 3
  %81 = load i8*, i8** %80, align 8, !tbaa !12
  %82 = getelementptr inbounds i8*, i8** %4, i64 4
  %83 = load i8*, i8** %82, align 8, !tbaa !12
  %84 = getelementptr inbounds i8*, i8** %4, i64 5
  %85 = load i8*, i8** %84, align 8, !tbaa !12
  %86 = getelementptr inbounds i8*, i8** %4, i64 6
  %87 = load i8*, i8** %86, align 8, !tbaa !12
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32
  br label %147

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.87, i64 0, i64 0), i32 noundef 5) #32
  %91 = load i8*, i8** %4, align 8, !tbaa !12
  %92 = getelementptr inbounds i8*, i8** %4, i64 1
  %93 = load i8*, i8** %92, align 8, !tbaa !12
  %94 = getelementptr inbounds i8*, i8** %4, i64 2
  %95 = load i8*, i8** %94, align 8, !tbaa !12
  %96 = getelementptr inbounds i8*, i8** %4, i64 3
  %97 = load i8*, i8** %96, align 8, !tbaa !12
  %98 = getelementptr inbounds i8*, i8** %4, i64 4
  %99 = load i8*, i8** %98, align 8, !tbaa !12
  %100 = getelementptr inbounds i8*, i8** %4, i64 5
  %101 = load i8*, i8** %100, align 8, !tbaa !12
  %102 = getelementptr inbounds i8*, i8** %4, i64 6
  %103 = load i8*, i8** %102, align 8, !tbaa !12
  %104 = getelementptr inbounds i8*, i8** %4, i64 7
  %105 = load i8*, i8** %104, align 8, !tbaa !12
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32
  br label %147

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.88, i64 0, i64 0), i32 noundef 5) #32
  %109 = load i8*, i8** %4, align 8, !tbaa !12
  %110 = getelementptr inbounds i8*, i8** %4, i64 1
  %111 = load i8*, i8** %110, align 8, !tbaa !12
  %112 = getelementptr inbounds i8*, i8** %4, i64 2
  %113 = load i8*, i8** %112, align 8, !tbaa !12
  %114 = getelementptr inbounds i8*, i8** %4, i64 3
  %115 = load i8*, i8** %114, align 8, !tbaa !12
  %116 = getelementptr inbounds i8*, i8** %4, i64 4
  %117 = load i8*, i8** %116, align 8, !tbaa !12
  %118 = getelementptr inbounds i8*, i8** %4, i64 5
  %119 = load i8*, i8** %118, align 8, !tbaa !12
  %120 = getelementptr inbounds i8*, i8** %4, i64 6
  %121 = load i8*, i8** %120, align 8, !tbaa !12
  %122 = getelementptr inbounds i8*, i8** %4, i64 7
  %123 = load i8*, i8** %122, align 8, !tbaa !12
  %124 = getelementptr inbounds i8*, i8** %4, i64 8
  %125 = load i8*, i8** %124, align 8, !tbaa !12
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32
  br label %147

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.89, i64 0, i64 0), i32 noundef 5) #32
  %129 = load i8*, i8** %4, align 8, !tbaa !12
  %130 = getelementptr inbounds i8*, i8** %4, i64 1
  %131 = load i8*, i8** %130, align 8, !tbaa !12
  %132 = getelementptr inbounds i8*, i8** %4, i64 2
  %133 = load i8*, i8** %132, align 8, !tbaa !12
  %134 = getelementptr inbounds i8*, i8** %4, i64 3
  %135 = load i8*, i8** %134, align 8, !tbaa !12
  %136 = getelementptr inbounds i8*, i8** %4, i64 4
  %137 = load i8*, i8** %136, align 8, !tbaa !12
  %138 = getelementptr inbounds i8*, i8** %4, i64 5
  %139 = load i8*, i8** %138, align 8, !tbaa !12
  %140 = getelementptr inbounds i8*, i8** %4, i64 6
  %141 = load i8*, i8** %140, align 8, !tbaa !12
  %142 = getelementptr inbounds i8*, i8** %4, i64 7
  %143 = load i8*, i8** %142, align 8, !tbaa !12
  %144 = getelementptr inbounds i8*, i8** %4, i64 8
  %145 = load i8*, i8** %144, align 8, !tbaa !12
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32
  br label %147

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 {
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7
  %9 = load i8*, i8** %8, align 8, !tbaa !12
  %10 = icmp eq i8* %9, null
  %11 = add i64 %7, 1
  br i1 %10, label %12, label %6, !llvm.loop !78

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 {
  %6 = alloca [10 x i8*], align 8
  %7 = bitcast [10 x i8*]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  %11 = load i32, i32* %8, align 8
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %70

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 8
  store i8* %15, i8** %10, align 8
  %16 = bitcast i8* %14 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  store i8* %17, i8** %18, align 8, !tbaa !12
  %19 = icmp eq i8* %17, null
  br i1 %19, label %265, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, i8* %14, i64 16
  store i8* %21, i8** %10, align 8
  %22 = bitcast i8* %15 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1
  store i8* %23, i8** %24, align 8, !tbaa !12
  %25 = icmp eq i8* %23, null
  br i1 %25, label %265, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, i8* %14, i64 24
  store i8* %27, i8** %10, align 8
  %28 = bitcast i8* %21 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2
  store i8* %29, i8** %30, align 8, !tbaa !12
  %31 = icmp eq i8* %29, null
  br i1 %31, label %265, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds i8, i8* %14, i64 32
  store i8* %33, i8** %10, align 8
  %34 = bitcast i8* %27 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3
  store i8* %35, i8** %36, align 8, !tbaa !12
  %37 = icmp eq i8* %35, null
  br i1 %37, label %265, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds i8, i8* %14, i64 40
  store i8* %39, i8** %10, align 8
  %40 = bitcast i8* %33 to i8**
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4
  store i8* %41, i8** %42, align 8, !tbaa !12
  %43 = icmp eq i8* %41, null
  br i1 %43, label %265, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds i8, i8* %14, i64 48
  store i8* %45, i8** %10, align 8
  %46 = bitcast i8* %39 to i8**
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5
  store i8* %47, i8** %48, align 8, !tbaa !12
  %49 = icmp eq i8* %47, null
  br i1 %49, label %265, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds i8, i8* %14, i64 56
  store i8* %51, i8** %10, align 8
  %52 = bitcast i8* %45 to i8**
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6
  store i8* %53, i8** %54, align 8, !tbaa !12
  %55 = icmp eq i8* %53, null
  br i1 %55, label %265, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds i8, i8* %14, i64 64
  store i8* %57, i8** %10, align 8
  %58 = bitcast i8* %51 to i8**
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7
  store i8* %59, i8** %60, align 8, !tbaa !12
  %61 = icmp eq i8* %59, null
  br i1 %61, label %265, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds i8, i8* %14, i64 72
  store i8* %63, i8** %10, align 8
  %64 = bitcast i8* %57 to i8**
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8
  store i8* %65, i8** %66, align 8, !tbaa !12
  %67 = icmp eq i8* %65, null
  br i1 %67, label %265, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds i8, i8* %14, i64 80
  store i8* %69, i8** %10, align 8
  br label %258

70:                                               ; preds = %5
  %71 = add nsw i32 %11, 8
  store i32 %71, i32* %8, align 8
  %72 = icmp ult i32 %11, -7
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = sext i32 %11 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  br label %80

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 8
  store i8* %79, i8** %10, align 8
  br label %80

80:                                               ; preds = %77, %73
  %81 = phi i8* [ %76, %73 ], [ %78, %77 ]
  %82 = bitcast i8* %81 to i8**
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  store i8* %83, i8** %84, align 8, !tbaa !12
  %85 = icmp eq i8* %83, null
  br i1 %85, label %265, label %86

86:                                               ; preds = %80
  %87 = icmp sgt i32 %11, -9
  br i1 %87, label %95, label %88

88:                                               ; preds = %86
  %89 = add nsw i32 %11, 16
  store i32 %89, i32* %8, align 8
  %90 = icmp ult i32 %71, -7
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i8*, i8** %9, align 8
  %93 = sext i32 %71 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  br label %99

95:                                               ; preds = %88, %86
  %96 = phi i32 [ %89, %88 ], [ %71, %86 ]
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 8
  store i8* %98, i8** %10, align 8
  br label %99

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %89, %91 ], [ %96, %95 ]
  %101 = phi i8* [ %94, %91 ], [ %97, %95 ]
  %102 = bitcast i8* %101 to i8**
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1
  store i8* %103, i8** %104, align 8, !tbaa !12
  %105 = icmp eq i8* %103, null
  br i1 %105, label %265, label %106

106:                                              ; preds = %99
  %107 = icmp sgt i32 %100, -1
  br i1 %107, label %115, label %108

108:                                              ; preds = %106
  %109 = add nsw i32 %100, 8
  store i32 %109, i32* %8, align 8
  %110 = icmp ult i32 %100, -7
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i8*, i8** %9, align 8
  %113 = sext i32 %100 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  br label %119

115:                                              ; preds = %108, %106
  %116 = phi i32 [ %109, %108 ], [ %100, %106 ]
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 8
  store i8* %118, i8** %10, align 8
  br label %119

119:                                              ; preds = %115, %111
  %120 = phi i32 [ %109, %111 ], [ %116, %115 ]
  %121 = phi i8* [ %114, %111 ], [ %117, %115 ]
  %122 = bitcast i8* %121 to i8**
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2
  store i8* %123, i8** %124, align 8, !tbaa !12
  %125 = icmp eq i8* %123, null
  br i1 %125, label %265, label %126

126:                                              ; preds = %119
  %127 = icmp sgt i32 %120, -1
  br i1 %127, label %135, label %128

128:                                              ; preds = %126
  %129 = add nsw i32 %120, 8
  store i32 %129, i32* %8, align 8
  %130 = icmp ult i32 %120, -7
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i8*, i8** %9, align 8
  %133 = sext i32 %120 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  br label %139

135:                                              ; preds = %128, %126
  %136 = phi i32 [ %129, %128 ], [ %120, %126 ]
  %137 = load i8*, i8** %10, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 8
  store i8* %138, i8** %10, align 8
  br label %139

139:                                              ; preds = %135, %131
  %140 = phi i32 [ %129, %131 ], [ %136, %135 ]
  %141 = phi i8* [ %134, %131 ], [ %137, %135 ]
  %142 = bitcast i8* %141 to i8**
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3
  store i8* %143, i8** %144, align 8, !tbaa !12
  %145 = icmp eq i8* %143, null
  br i1 %145, label %265, label %146

146:                                              ; preds = %139
  %147 = icmp sgt i32 %140, -1
  br i1 %147, label %155, label %148

148:                                              ; preds = %146
  %149 = add nsw i32 %140, 8
  store i32 %149, i32* %8, align 8
  %150 = icmp ult i32 %140, -7
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i8*, i8** %9, align 8
  %153 = sext i32 %140 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  br label %159

155:                                              ; preds = %148, %146
  %156 = phi i32 [ %149, %148 ], [ %140, %146 ]
  %157 = load i8*, i8** %10, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 8
  store i8* %158, i8** %10, align 8
  br label %159

159:                                              ; preds = %155, %151
  %160 = phi i32 [ %149, %151 ], [ %156, %155 ]
  %161 = phi i8* [ %154, %151 ], [ %157, %155 ]
  %162 = bitcast i8* %161 to i8**
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4
  store i8* %163, i8** %164, align 8, !tbaa !12
  %165 = icmp eq i8* %163, null
  br i1 %165, label %265, label %166

166:                                              ; preds = %159
  %167 = icmp sgt i32 %160, -1
  br i1 %167, label %175, label %168

168:                                              ; preds = %166
  %169 = add nsw i32 %160, 8
  store i32 %169, i32* %8, align 8
  %170 = icmp ult i32 %160, -7
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i8*, i8** %9, align 8
  %173 = sext i32 %160 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  br label %179

175:                                              ; preds = %168, %166
  %176 = phi i32 [ %169, %168 ], [ %160, %166 ]
  %177 = load i8*, i8** %10, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 8
  store i8* %178, i8** %10, align 8
  br label %179

179:                                              ; preds = %175, %171
  %180 = phi i32 [ %169, %171 ], [ %176, %175 ]
  %181 = phi i8* [ %174, %171 ], [ %177, %175 ]
  %182 = bitcast i8* %181 to i8**
  %183 = load i8*, i8** %182, align 8
  %184 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5
  store i8* %183, i8** %184, align 8, !tbaa !12
  %185 = icmp eq i8* %183, null
  br i1 %185, label %265, label %186

186:                                              ; preds = %179
  %187 = icmp sgt i32 %180, -1
  br i1 %187, label %195, label %188

188:                                              ; preds = %186
  %189 = add nsw i32 %180, 8
  store i32 %189, i32* %8, align 8
  %190 = icmp ult i32 %180, -7
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load i8*, i8** %9, align 8
  %193 = sext i32 %180 to i64
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  br label %199

195:                                              ; preds = %188, %186
  %196 = phi i32 [ %189, %188 ], [ %180, %186 ]
  %197 = load i8*, i8** %10, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 8
  store i8* %198, i8** %10, align 8
  br label %199

199:                                              ; preds = %195, %191
  %200 = phi i32 [ %189, %191 ], [ %196, %195 ]
  %201 = phi i8* [ %194, %191 ], [ %197, %195 ]
  %202 = bitcast i8* %201 to i8**
  %203 = load i8*, i8** %202, align 8
  %204 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6
  store i8* %203, i8** %204, align 8, !tbaa !12
  %205 = icmp eq i8* %203, null
  br i1 %205, label %265, label %206

206:                                              ; preds = %199
  %207 = icmp sgt i32 %200, -1
  br i1 %207, label %215, label %208

208:                                              ; preds = %206
  %209 = add nsw i32 %200, 8
  store i32 %209, i32* %8, align 8
  %210 = icmp ult i32 %200, -7
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = load i8*, i8** %9, align 8
  %213 = sext i32 %200 to i64
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  br label %219

215:                                              ; preds = %208, %206
  %216 = phi i32 [ %209, %208 ], [ %200, %206 ]
  %217 = load i8*, i8** %10, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 8
  store i8* %218, i8** %10, align 8
  br label %219

219:                                              ; preds = %215, %211
  %220 = phi i32 [ %209, %211 ], [ %216, %215 ]
  %221 = phi i8* [ %214, %211 ], [ %217, %215 ]
  %222 = bitcast i8* %221 to i8**
  %223 = load i8*, i8** %222, align 8
  %224 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7
  store i8* %223, i8** %224, align 8, !tbaa !12
  %225 = icmp eq i8* %223, null
  br i1 %225, label %265, label %226

226:                                              ; preds = %219
  %227 = icmp sgt i32 %220, -1
  br i1 %227, label %235, label %228

228:                                              ; preds = %226
  %229 = add nsw i32 %220, 8
  store i32 %229, i32* %8, align 8
  %230 = icmp ult i32 %220, -7
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load i8*, i8** %9, align 8
  %233 = sext i32 %220 to i64
  %234 = getelementptr inbounds i8, i8* %232, i64 %233
  br label %239

235:                                              ; preds = %228, %226
  %236 = phi i32 [ %229, %228 ], [ %220, %226 ]
  %237 = load i8*, i8** %10, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 8
  store i8* %238, i8** %10, align 8
  br label %239

239:                                              ; preds = %235, %231
  %240 = phi i32 [ %229, %231 ], [ %236, %235 ]
  %241 = phi i8* [ %234, %231 ], [ %237, %235 ]
  %242 = bitcast i8* %241 to i8**
  %243 = load i8*, i8** %242, align 8
  %244 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8
  store i8* %243, i8** %244, align 8, !tbaa !12
  %245 = icmp eq i8* %243, null
  br i1 %245, label %265, label %246

246:                                              ; preds = %239
  %247 = icmp sgt i32 %240, -1
  br i1 %247, label %255, label %248

248:                                              ; preds = %246
  %249 = add nsw i32 %240, 8
  store i32 %249, i32* %8, align 8
  %250 = icmp ult i32 %240, -7
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = load i8*, i8** %9, align 8
  %253 = sext i32 %240 to i64
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  br label %258

255:                                              ; preds = %248, %246
  %256 = load i8*, i8** %10, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 8
  store i8* %257, i8** %10, align 8
  br label %258

258:                                              ; preds = %251, %255, %68
  %259 = phi i8* [ %63, %68 ], [ %254, %251 ], [ %256, %255 ]
  %260 = bitcast i8* %259 to i8**
  %261 = load i8*, i8** %260, align 8
  %262 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9
  store i8* %261, i8** %262, align 8, !tbaa !12
  %263 = icmp eq i8* %261, null
  %264 = select i1 %263, i64 9, i64 10
  br label %265

265:                                              ; preds = %258, %80, %99, %119, %139, %159, %179, %199, %219, %239, %13, %20, %26, %32, %38, %44, %50, %56, %62
  %266 = phi i64 [ 0, %13 ], [ 1, %20 ], [ 2, %26 ], [ 3, %32 ], [ 4, %38 ], [ 5, %44 ], [ 6, %50 ], [ 7, %56 ], [ 8, %62 ], [ 0, %80 ], [ 1, %99 ], [ 2, %119 ], [ 3, %139 ], [ 4, %159 ], [ 5, %179 ], [ 6, %199 ], [ 7, %219 ], [ 8, %239 ], [ %264, %258 ]
  %267 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %267, i64 noundef %266)
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32
  call void @llvm.va_start(i8* nonnull %7)
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !36
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32
  call void @llvm.va_end(i8* nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.77, i64 0, i64 0), %struct._IO_FILE* noundef %1)
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.94, i64 0, i64 0), i32 noundef 5) #32
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.95, i64 0, i64 0)) #32
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.96, i64 0, i64 0), i32 noundef 5) #32
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #32
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #32
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.98, i64 0, i64 0)) #32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #34
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #34
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #34
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #34
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #34
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 {
  %3 = icmp eq i64 %1, 0
  %4 = select i1 %3, i64 1, i64 %1
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @xalloc_die() #34
  unreachable

8:                                                ; preds = %2
  ret i8* %5
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 {
  %3 = icmp eq i64 %1, 0
  %4 = select i1 %3, i64 1, i64 %1
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @xalloc_die() #34
  unreachable

8:                                                ; preds = %2
  ret i8* %5
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #34
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 {
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #34
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 {
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #34
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 {
  %3 = load i64, i64* %1, align 8, !tbaa !56
  %4 = icmp eq i8* %0, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0
  %7 = select i1 %6, i64 128, i64 %3
  br label %15

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1
  %10 = add nuw i64 %9, 1
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32
  %12 = extractvalue { i64, i1 } %11, 1
  %13 = extractvalue { i64, i1 } %11, 0
  br i1 %12, label %14, label %15

14:                                               ; preds = %8
  tail call void @xalloc_die() #34
  unreachable

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ]
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @xalloc_die() #34
  unreachable

20:                                               ; preds = %15
  store i64 %16, i64* %1, align 8, !tbaa !56
  ret i8* %17
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = load i64, i64* %1, align 8, !tbaa !56
  %5 = icmp eq i8* %0, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %6
  %9 = udiv i64 128, %2
  %10 = icmp ugt i64 %2, 128
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11
  br label %20

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1
  %15 = add nuw i64 %14, 1
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15)
  %17 = extractvalue { i64, i1 } %16, 1
  %18 = extractvalue { i64, i1 } %16, 0
  br i1 %17, label %19, label %20

19:                                               ; preds = %13
  tail call void @xalloc_die() #34
  unreachable

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ]
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @xalloc_die() #34
  unreachable

25:                                               ; preds = %20
  store i64 %21, i64* %1, align 8, !tbaa !56
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 {
  %6 = load i64, i64* %1, align 8, !tbaa !56
  %7 = ashr i64 %6, 1
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7)
  %9 = extractvalue { i64, i1 } %8, 1
  %10 = extractvalue { i64, i1 } %8, 0
  %11 = select i1 %9, i64 9223372036854775807, i64 %10
  %12 = icmp sgt i64 %3, -1
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false
  %15 = select i1 %14, i64 %3, i64 %11
  %16 = icmp slt i64 %4, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = sub i64 0, %4
  %21 = udiv i64 9223372036854775807, %20
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22
  br i1 %23, label %46, label %43

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1
  br i1 %25, label %43, label %26

26:                                               ; preds = %24
  %27 = sub i64 0, %4
  %28 = udiv i64 -9223372036854775808, %27
  %29 = icmp ult i64 %28, %15
  br i1 %29, label %46, label %43

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1
  br i1 %35, label %43, label %36

36:                                               ; preds = %34
  %37 = sub i64 0, %15
  %38 = udiv i64 -9223372036854775808, %37
  %39 = icmp ult i64 %38, %4
  br i1 %39, label %46, label %43

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15
  br i1 %42, label %46, label %43

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  %44 = mul i64 %15, %4
  %45 = icmp slt i64 %44, 128
  br i1 %45, label %46, label %52

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  %48 = sdiv i64 %47, %4
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50
  br label %52

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ]
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ]
  %55 = icmp eq i8* %0, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !tbaa !56
  br label %57

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6
  %59 = icmp slt i64 %58, %2
  br i1 %59, label %60, label %97

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2)
  %62 = extractvalue { i64, i1 } %61, 1
  %63 = extractvalue { i64, i1 } %61, 0
  br i1 %62, label %96, label %64

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false
  br i1 %66, label %96, label %67

67:                                               ; preds = %64
  br i1 %16, label %68, label %81

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = sub i64 0, %4
  %72 = udiv i64 9223372036854775807, %71
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73
  br i1 %74, label %96, label %94

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1
  br i1 %76, label %94, label %77

77:                                               ; preds = %75
  %78 = sub i64 0, %4
  %79 = udiv i64 -9223372036854775808, %78
  %80 = icmp ult i64 %79, %63
  br i1 %80, label %96, label %94

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1
  br i1 %86, label %94, label %87

87:                                               ; preds = %85
  %88 = sub i64 0, %63
  %89 = udiv i64 -9223372036854775808, %88
  %90 = icmp ult i64 %89, %4
  br i1 %90, label %96, label %94

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63
  br i1 %93, label %96, label %94

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  %95 = mul i64 %63, %4
  br label %97

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #34
  unreachable

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ]
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ]
  %100 = icmp eq i64 %99, 0
  %101 = select i1 %100, i64 1, i64 %99
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  tail call void @xalloc_die() #34
  unreachable

105:                                              ; preds = %97
  store i64 %98, i64* %1, align 8, !tbaa !56
  ret i8* %102
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 {
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #34
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 {
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #34
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 {
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #34
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 {
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #34
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 {
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #34
  unreachable

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 {
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #34
  unreachable

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = add nsw i64 %1, 1
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @xalloc_die() #34
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %4, i64 %1
  store i8 0, i8* %8, align 1, !tbaa !23
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #33
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @xalloc_die() #34
  unreachable

7:                                                ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32
  ret i8* %4
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.110, i64 0, i64 0), i32 noundef 5) #32
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8* noundef %2) #32
  %3 = icmp eq i32 %1, 0
  tail call void @llvm.assume(i1 %3)
  tail call void @abort() #34
  unreachable
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !79
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32
  %8 = icmp eq i32 %7, 0
  br i1 %6, label %9, label %19

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0
  %11 = select i1 %8, i1 true, i1 %10
  %12 = xor i1 %8, true
  %13 = sext i1 %12 to i32
  br i1 %11, label %22, label %14

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35
  %16 = load i32, i32* %15, align 4, !tbaa !21
  %17 = icmp ne i32 %16, 9
  %18 = sext i1 %17 to i32
  br label %22

19:                                               ; preds = %1
  br i1 %8, label %20, label %22

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35
  store i32 0, i32* %21, align 4, !tbaa !21
  br label %22

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  br label %24

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %9
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  br label %24

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35
  %20 = load i32, i32* %19, align 4, !tbaa !21
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !tbaa !21
  br label %24

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25
}

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0)
  br label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !79
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32
  br label %15

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0)
  br label %17

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8, !tbaa !80
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8, !tbaa !81
  %8 = icmp eq i8* %5, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %11 = load i8*, i8** %10, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8, !tbaa !82
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %17 = load i8*, i8** %16, align 8, !tbaa !83
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %25 = load i32, i32* %24, align 8, !tbaa !79
  %26 = and i32 %25, -17
  store i32 %26, i32* %24, align 8, !tbaa !79
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21
  store i64 %21, i64* %27, align 8, !tbaa !84
  br label %30

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2)
  br label %30

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 {
  %5 = icmp eq i8* %1, null
  %6 = select i1 %5, i32* null, i32* %0
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.122, i64 0, i64 0), i8* %1
  %8 = select i1 %5, i64 1, i64 %2
  %9 = icmp eq %struct.__mbstate_t* %3, null
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32
  %12 = icmp ult i64 %11, -3
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #33
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = bitcast %struct.__mbstate_t* %10 to i64*
  store i64 0, i64* %17, align 1
  br label %30

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @abort() #34
  unreachable

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !tbaa !23
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %6, align 4, !tbaa !21
  br label %30

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ]
  ret i64 %31
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1)
  %7 = extractvalue { i64, i1 } %6, 1
  br i1 %7, label %13, label %8

8:                                                ; preds = %3, %5
  %9 = mul i64 %2, %1
  %10 = icmp eq i64 %9, 0
  %11 = select i1 %10, i64 1, i64 %9
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32
  br label %15

13:                                               ; preds = %5
  %14 = tail call i32* @__errno_location() #35
  store i32 12, i32* %14, align 4, !tbaa !21
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ]
  ret i8* %16
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 {
  %2 = alloca [257 x i8], align 1
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i64 0, i64 0), i64 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i64 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %6
  br label %13

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ]
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32
  ret i1 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 {
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 {
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !tbaa !23
  br label %19

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #33
  %11 = icmp ult i64 %10, %2
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32
  br label %19

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = add i64 %2, -1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32
  %18 = getelementptr inbounds i8, i8* %1, i64 %17
  store i8 0, i8* %18, align 1, !tbaa !23
  br label %19

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ]
  ret i32 %20
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #4 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #8 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #9 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #10 = { nofree nounwind readonly "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11}

!0 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 1, !"branch-target-enforcement", i32 0}
!5 = !{i32 1, !"sign-return-address", i32 0}
!6 = !{i32 1, !"sign-return-address-all", i32 0}
!7 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17, !13, i64 0}
!17 = !{!"infomap", !13, i64 0, !13, i64 8}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!17, !13, i64 8}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !14, i64 0}
!23 = !{!14, !14, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !14, i64 0}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = !{!34, !34, i64 0}
!34 = !{!"_Bool", !14, i64 0}
!35 = !{i8 0, i8 2}
!36 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 8, !12, i64 24, i64 4, !21, i64 28, i64 4, !21}
!37 = !{!38, !40}
!38 = distinct !{!38, !39, !"vfprintf.inline: argument 0"}
!39 = distinct !{!39, !"vfprintf.inline"}
!40 = distinct !{!40, !39, !"vfprintf.inline: argument 1"}
!41 = !{!42, !13, i64 40}
!42 = !{!"_IO_FILE", !22, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !22, i64 112, !22, i64 116, !43, i64 120, !25, i64 128, !14, i64 130, !14, i64 131, !13, i64 136, !43, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !43, i64 184, !22, i64 192, !14, i64 196}
!43 = !{!"long", !14, i64 0}
!44 = !{!42, !13, i64 48}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!47, !14, i64 0}
!47 = !{!"quoting_options", !14, i64 0, !22, i64 4, !14, i64 8, !13, i64 40, !13, i64 48}
!48 = !{!47, !22, i64 4}
!49 = !{!47, !13, i64 40}
!50 = !{!47, !13, i64 48}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = !{!43, !43, i64 0}
!57 = !{!58, !13, i64 8}
!58 = !{!"slotvec", !43, i64 0, !13, i64 8}
!59 = distinct !{!59, !19}
!60 = !{!58, !43, i64 0}
!61 = !{i64 0, i64 8, !56, i64 8, i64 8, !12}
!62 = !{!63}
!63 = distinct !{!63, !64, !"quoting_options_from_style: argument 0"}
!64 = distinct !{!64, !"quoting_options_from_style"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"quoting_options_from_style: argument 0"}
!67 = distinct !{!67, !"quoting_options_from_style"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"quoting_options_from_style: argument 0"}
!70 = distinct !{!70, !"quoting_options_from_style"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"quoting_options_from_style: argument 0"}
!73 = distinct !{!73, !"quoting_options_from_style"}
!74 = !{i64 0, i64 4, !23, i64 4, i64 4, !21, i64 8, i64 32, !23, i64 40, i64 8, !12, i64 48, i64 8, !12}
!75 = !{!76}
!76 = distinct !{!76, !77, !"quoting_options_from_style: argument 0"}
!77 = distinct !{!77, !"quoting_options_from_style"}
!78 = distinct !{!78, !19}
!79 = !{!42, !22, i64 0}
!80 = !{!42, !13, i64 16}
!81 = !{!42, !13, i64 8}
!82 = !{!42, !13, i64 32}
!83 = !{!42, !13, i64 72}
!84 = !{!42, !43, i64 144}
