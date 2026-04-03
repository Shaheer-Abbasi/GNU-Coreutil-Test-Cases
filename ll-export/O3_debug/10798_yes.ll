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
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !0
@.str.13 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
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
@.str.18 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), align 8, !dbg !122
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !127
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !132
@.str.21 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !134
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !170
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !140
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !166
@.str.1.31 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.33 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.32 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !168
@.str.4.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.27 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.28 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !175
@opterr = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.49, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.50, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !193
@optind = external local_unnamed_addr global i32, align 4
@.str.1.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.49 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.50 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !210
@.str.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !216
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.73, i32 0, i32 0), i8* null], align 8, !dbg !252
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !278
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !296
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !326
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !333
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !298
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !335
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !284
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !303
@.str.82 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.83 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.84 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.85 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.86 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.87 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.88 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.89 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.90 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.91 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.92 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.93 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.94 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.95 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.96 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.97 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.98 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.103 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.104 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.105 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !341
@exit_failure = dso_local global i32 1, align 4, !dbg !349
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.118 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.135 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !355
@rpl_pipe2.have_pipe2_really = internal unnamed_addr global i32 0, align 4, !dbg !371
@.str.142 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.143 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !490 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !494, metadata !DIExpression()), !dbg !495
  %3 = icmp eq i32 %0, 0, !dbg !496
  br i1 %3, label %9, label %4, !dbg !498

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !499, !tbaa !501
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #34, !dbg !499
  %7 = load i8*, i8** @program_name, align 8, !dbg !499, !tbaa !501
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #34, !dbg !499
  br label %52, !dbg !499

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #34, !dbg !505
  %11 = load i8*, i8** @program_name, align 8, !dbg !505, !tbaa !501
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11, i8* noundef %11) #34, !dbg !505
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #34, !dbg !507
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !507, !tbaa !501
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !507
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #34, !dbg !508
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !508
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #34, !dbg !509
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !509
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !510, metadata !DIExpression()) #34, !dbg !529
  %18 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !531
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %18) #34, !dbg !531
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !515, metadata !DIExpression()) #34, !dbg !532
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %18, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #34, !dbg !532
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !524, metadata !DIExpression()) #34, !dbg !529
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !525, metadata !DIExpression()) #34, !dbg !529
  %19 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !533
  call void @llvm.dbg.value(metadata %struct.infomap* %19, metadata !525, metadata !DIExpression()) #34, !dbg !529
  br label %20, !dbg !534

20:                                               ; preds = %25, %9
  %21 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %22 = phi %struct.infomap* [ %26, %25 ], [ %19, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %22, metadata !525, metadata !DIExpression()) #34, !dbg !529
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !542
  call void @llvm.dbg.value(metadata i8* %21, metadata !541, metadata !DIExpression()) #34, !dbg !542
  %23 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %21) #35, !dbg !544
  %24 = icmp eq i32 %23, 0, !dbg !545
  br i1 %24, label %30, label %25, !dbg !534

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.infomap, %struct.infomap* %22, i64 1, !dbg !546
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !525, metadata !DIExpression()) #34, !dbg !529
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 0, i32 0, !dbg !547
  %28 = load i8*, i8** %27, align 8, !dbg !547, !tbaa !548
  %29 = icmp eq i8* %28, null, !dbg !550
  br i1 %29, label %30, label %20, !dbg !551, !llvm.loop !552

30:                                               ; preds = %25, %20
  %31 = phi %struct.infomap* [ %22, %20 ], [ %26, %25 ]
  %32 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 0, i32 1, !dbg !554
  %33 = load i8*, i8** %32, align 8, !dbg !554, !tbaa !556
  %34 = icmp eq i8* %33, null, !dbg !557
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %33, !dbg !558
  call void @llvm.dbg.value(metadata i8* %35, metadata !524, metadata !DIExpression()) #34, !dbg !529
  tail call void @emit_bug_reporting_address() #34, !dbg !559
  %36 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #34, !dbg !560
  call void @llvm.dbg.value(metadata i8* %36, metadata !527, metadata !DIExpression()) #34, !dbg !529
  %37 = icmp eq i8* %36, null, !dbg !561
  br i1 %37, label %45, label %38, !dbg !563

38:                                               ; preds = %30
  %39 = tail call i32 @strncmp(i8* noundef nonnull %36, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i64 noundef 3) #35, !dbg !564
  %40 = icmp eq i32 %39, 0, !dbg !564
  br i1 %40, label %45, label %41, !dbg !565

41:                                               ; preds = %38
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.44, i64 0, i64 0), i32 noundef 5) #34, !dbg !566
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !566, !tbaa !501
  %44 = tail call i32 @fputs_unlocked(i8* noundef %42, %struct._IO_FILE* noundef %43) #34, !dbg !566
  br label %45, !dbg !568

45:                                               ; preds = %30, %38, %41
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !569
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !541, metadata !DIExpression()) #34, !dbg !569
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !528, metadata !DIExpression()) #34, !dbg !529
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i32 noundef 5) #34, !dbg !571
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %46, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #34, !dbg !571
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0), i32 noundef 5) #34, !dbg !572
  %49 = icmp eq i8* %35, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), !dbg !572
  %50 = select i1 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !572
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %48, i8* noundef %35, i8* noundef %50) #34, !dbg !572
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %18) #34, !dbg !573
  br label %52

52:                                               ; preds = %45, %4
  tail call void @exit(i32 noundef %0) #36, !dbg !574
  unreachable, !dbg !574
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !575 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !580 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !2 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !42, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i8* %0, metadata !43, metadata !DIExpression()), !dbg !585
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !586, !tbaa !587
  %3 = icmp eq i32 %2, -1, !dbg !589
  br i1 %3, label %4, label %16, !dbg !590

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #34, !dbg !591
  call void @llvm.dbg.value(metadata i8* %5, metadata !44, metadata !DIExpression()), !dbg !592
  %6 = icmp eq i8* %5, null, !dbg !593
  br i1 %6, label %14, label %7, !dbg !594

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !595, !tbaa !596
  %9 = icmp eq i8 %8, 0, !dbg !595
  br i1 %9, label %14, label %10, !dbg !597

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !535, metadata !DIExpression()) #34, !dbg !598
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), metadata !541, metadata !DIExpression()) #34, !dbg !598
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #35, !dbg !600
  %12 = icmp eq i32 %11, 0, !dbg !601
  %13 = zext i1 %12 to i32, !dbg !597
  br label %14, !dbg !597

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !602, !tbaa !587
  br label %16, !dbg !603

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !604
  %18 = icmp eq i32 %17, 0, !dbg !604
  br i1 %18, label %22, label %19, !dbg !606

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !607, !tbaa !501
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !607
  br label %121, !dbg !609

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !47, metadata !DIExpression()), !dbg !585
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #35, !dbg !610
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !611
  call void @llvm.dbg.value(metadata i8* %24, metadata !49, metadata !DIExpression()), !dbg !585
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #35, !dbg !612
  call void @llvm.dbg.value(metadata i8* %25, metadata !50, metadata !DIExpression()), !dbg !585
  %26 = icmp eq i8* %25, null, !dbg !613
  br i1 %26, label %53, label %27, !dbg !614

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !615
  br i1 %28, label %53, label %29, !dbg !616

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !51, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()), !dbg !617
  %30 = icmp ult i8* %24, %25, !dbg !618
  br i1 %30, label %31, label %53, !dbg !619

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #37, !dbg !585
  %33 = load i16*, i16** %32, align 8, !tbaa !501
  br label %34, !dbg !619

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !51, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i64 %36, metadata !55, metadata !DIExpression()), !dbg !617
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !620
  call void @llvm.dbg.value(metadata i8* %37, metadata !51, metadata !DIExpression()), !dbg !617
  %38 = load i8, i8* %35, align 1, !dbg !620, !tbaa !596
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !620
  %41 = load i16, i16* %40, align 2, !dbg !620, !tbaa !621
  %42 = lshr i16 %41, 13, !dbg !623
  %43 = and i16 %42, 1, !dbg !623
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !624
  call void @llvm.dbg.value(metadata i64 %45, metadata !55, metadata !DIExpression()), !dbg !617
  %46 = icmp ult i8* %37, %25, !dbg !618
  %47 = icmp ult i64 %45, 2, !dbg !625
  %48 = select i1 %46, i1 %47, i1 false, !dbg !625
  br i1 %48, label %34, label %49, !dbg !619, !llvm.loop !626

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !627
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !629
  %52 = xor i1 %50, true, !dbg !629
  br label %53, !dbg !629

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !585
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !47, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i8* %54, metadata !50, metadata !DIExpression()), !dbg !585
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #35, !dbg !630
  call void @llvm.dbg.value(metadata i64 %56, metadata !56, metadata !DIExpression()), !dbg !585
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !631
  call void @llvm.dbg.value(metadata i8* %57, metadata !57, metadata !DIExpression()), !dbg !585
  br label %58, !dbg !632

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !585
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !47, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i8* %59, metadata !57, metadata !DIExpression()), !dbg !585
  %61 = load i8, i8* %59, align 1, !dbg !633, !tbaa !596
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !634

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !635
  %64 = load i8, i8* %63, align 1, !dbg !638, !tbaa !596
  %65 = icmp ne i8 %64, 45, !dbg !639
  %66 = select i1 %65, i1 %60, i1 false, !dbg !640
  br label %67, !dbg !640

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !47, metadata !DIExpression()), !dbg !585
  %69 = tail call i16** @__ctype_b_loc() #37, !dbg !641
  %70 = load i16*, i16** %69, align 8, !dbg !641, !tbaa !501
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !641
  %73 = load i16, i16* %72, align 2, !dbg !641, !tbaa !621
  %74 = and i16 %73, 8192, !dbg !641
  %75 = icmp eq i16 %74, 0, !dbg !641
  br i1 %75, label %89, label %76, !dbg !643

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !644
  br i1 %77, label %91, label %78, !dbg !647

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !648
  %80 = load i8, i8* %79, align 1, !dbg !648, !tbaa !596
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !648
  %83 = load i16, i16* %82, align 2, !dbg !648, !tbaa !621
  %84 = and i16 %83, 8192, !dbg !648
  %85 = icmp eq i16 %84, 0, !dbg !648
  br i1 %85, label %86, label %91, !dbg !649

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !650
  br i1 %88, label %89, label %91, !dbg !650

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !652
  call void @llvm.dbg.value(metadata i8* %90, metadata !57, metadata !DIExpression()), !dbg !585
  br label %58, !dbg !632, !llvm.loop !653

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !655
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !655, !tbaa !501
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !655
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !541, metadata !DIExpression()) #34, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !658
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !660
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !662
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !664
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !666
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !668
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !670
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !672
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !674
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !117, metadata !DIExpression()), !dbg !585
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i64 noundef 6) #35, !dbg !676
  %96 = icmp eq i32 %95, 0, !dbg !676
  br i1 %96, label %100, label %97, !dbg !678

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i64 noundef 9) #35, !dbg !679
  %99 = icmp eq i32 %98, 0, !dbg !679
  br i1 %99, label %100, label %103, !dbg !680

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !681
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #34, !dbg !681
  br label %106, !dbg !683

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !684
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #34, !dbg !684
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !501
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !686
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !687, !tbaa !501
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !687
  %111 = ptrtoint i8* %59 to i64, !dbg !688
  %112 = sub i64 %111, %92, !dbg !688
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !501
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !688
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !689, !tbaa !501
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !689
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !690, !tbaa !501
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !690
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !691, !tbaa !501
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !691
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !692
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
declare !dbg !693 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !697 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !701 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !707 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.iovec, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !712, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8** %1, metadata !713, metadata !DIExpression()), !dbg !726
  %5 = load i8*, i8** %1, align 8, !dbg !727, !tbaa !501
  tail call void @set_program_name(i8* noundef %5) #34, !dbg !728
  %6 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #34, !dbg !729
  %7 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #34, !dbg !730
  %8 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #34, !dbg !731
  %9 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #34, !dbg !732
  %10 = load i8*, i8** @Version, align 8, !dbg !733, !tbaa !501
  %11 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)) #34, !dbg !734
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %10, i1 noundef true, void (i32)* noundef nonnull @usage, i8* noundef %11, i8* noundef null) #34, !dbg !735
  %12 = load i32, i32* @optind, align 4, !dbg !736, !tbaa !587
  %13 = sext i32 %12 to i64, !dbg !737
  %14 = getelementptr inbounds i8*, i8** %1, i64 %13, !dbg !737
  call void @llvm.dbg.value(metadata i8** %14, metadata !714, metadata !DIExpression()), !dbg !726
  %15 = sext i32 %0 to i64, !dbg !738
  %16 = getelementptr inbounds i8*, i8** %1, i64 %15, !dbg !738
  call void @llvm.dbg.value(metadata i8** %16, metadata !715, metadata !DIExpression()), !dbg !726
  %17 = icmp eq i32 %12, %0, !dbg !739
  br i1 %17, label %18, label %20, !dbg !741

18:                                               ; preds = %2
  %19 = getelementptr inbounds i8*, i8** %16, i64 1, !dbg !742
  call void @llvm.dbg.value(metadata i8** %19, metadata !715, metadata !DIExpression()), !dbg !726
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %16, align 8, !dbg !743, !tbaa !501
  br label %20, !dbg !744

20:                                               ; preds = %18, %2
  %21 = phi i8** [ %19, %18 ], [ %16, %2 ], !dbg !726
  call void @llvm.dbg.value(metadata i8** %21, metadata !715, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i64 0, metadata !716, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8 1, metadata !717, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8** %14, metadata !718, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8 poison, metadata !717, metadata !DIExpression()), !dbg !726
  %22 = load i8*, i8** %14, align 8, !dbg !745, !tbaa !501
  %23 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %22) #35, !dbg !746
  call void @llvm.dbg.value(metadata i64 %23, metadata !719, metadata !DIExpression()), !dbg !747
  %24 = add i64 %23, 1, !dbg !748
  call void @llvm.dbg.value(metadata i64 %24, metadata !716, metadata !DIExpression()), !dbg !726
  %25 = getelementptr inbounds i8*, i8** %14, i64 1, !dbg !749
  %26 = icmp ult i8** %25, %21, !dbg !751
  br i1 %26, label %27, label %43, !dbg !752

27:                                               ; preds = %20, %27
  %28 = phi i8** [ %41, %27 ], [ %25, %20 ]
  %29 = phi i64 [ %40, %27 ], [ %24, %20 ]
  %30 = phi i64 [ %38, %27 ], [ %23, %20 ]
  %31 = phi i8* [ %35, %27 ], [ %22, %20 ]
  %32 = phi i1 [ %37, %27 ], [ true, %20 ]
  %33 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !753
  %34 = getelementptr inbounds i8, i8* %33, i64 %30, !dbg !754
  %35 = load i8*, i8** %28, align 8, !dbg !755, !tbaa !501
  %36 = icmp eq i8* %34, %35, !dbg !756
  %37 = select i1 %36, i1 %32, i1 false, !dbg !757
  call void @llvm.dbg.value(metadata i64 %29, metadata !716, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8 poison, metadata !717, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8** %28, metadata !718, metadata !DIExpression()), !dbg !726
  %38 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %35) #35, !dbg !746
  call void @llvm.dbg.value(metadata i64 %38, metadata !719, metadata !DIExpression()), !dbg !747
  %39 = add i64 %29, 1, !dbg !758
  %40 = add i64 %39, %38, !dbg !748
  call void @llvm.dbg.value(metadata i64 %40, metadata !716, metadata !DIExpression()), !dbg !726
  %41 = getelementptr inbounds i8*, i8** %28, i64 1, !dbg !749
  %42 = icmp ult i8** %41, %21, !dbg !751
  br i1 %42, label %27, label %43, !dbg !752

43:                                               ; preds = %27, %20
  %44 = phi i1 [ true, %20 ], [ %37, %27 ]
  %45 = phi i64 [ %24, %20 ], [ %40, %27 ], !dbg !748
  call void @llvm.dbg.value(metadata i8 poison, metadata !717, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8** undef, metadata !718, metadata !DIExpression()), !dbg !726
  %46 = icmp ult i64 %45, 4097, !dbg !759
  %47 = xor i1 %46, true, !dbg !761
  %48 = select i1 %47, i1 %44, i1 false, !dbg !761
  %49 = select i1 %46, i64 8192, i64 %45, !dbg !761
  call void @llvm.dbg.value(metadata i64 %49, metadata !716, metadata !DIExpression()), !dbg !726
  br i1 %48, label %52, label %50, !dbg !762

50:                                               ; preds = %43
  %51 = tail call noalias nonnull i8* @xmalloc(i64 noundef %49) #38, !dbg !763
  call void @llvm.dbg.value(metadata i8* %51, metadata !721, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i64 0, metadata !722, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8** %14, metadata !718, metadata !DIExpression()), !dbg !726
  br label %62, !dbg !764

52:                                               ; preds = %43, %52
  %53 = phi i8** [ %60, %52 ], [ %14, %43 ], !dbg !726
  %54 = phi i64 [ %58, %52 ], [ 0, %43 ], !dbg !726
  call void @llvm.dbg.value(metadata i64 %54, metadata !722, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8** %53, metadata !718, metadata !DIExpression()), !dbg !726
  %55 = load i8*, i8** %53, align 8, !dbg !765, !tbaa !501
  %56 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %55) #35, !dbg !766
  call void @llvm.dbg.value(metadata i64 %56, metadata !723, metadata !DIExpression()), !dbg !767
  %57 = add i64 %56, %54, !dbg !768
  call void @llvm.dbg.value(metadata i64 %57, metadata !722, metadata !DIExpression()), !dbg !726
  %58 = add i64 %57, 1, !dbg !769
  call void @llvm.dbg.value(metadata i64 %58, metadata !722, metadata !DIExpression()), !dbg !726
  %59 = getelementptr inbounds i8, i8* %22, i64 %57, !dbg !770
  store i8 32, i8* %59, align 1, !dbg !771, !tbaa !596
  %60 = getelementptr inbounds i8*, i8** %53, i64 1, !dbg !772
  call void @llvm.dbg.value(metadata i8** %60, metadata !718, metadata !DIExpression()), !dbg !726
  %61 = icmp ult i8** %60, %21, !dbg !773
  br i1 %61, label %52, label %73, !dbg !774, !llvm.loop !775

62:                                               ; preds = %50, %62
  %63 = phi i8** [ %71, %62 ], [ %14, %50 ], !dbg !726
  %64 = phi i64 [ %69, %62 ], [ 0, %50 ], !dbg !726
  call void @llvm.dbg.value(metadata i64 %64, metadata !722, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8** %63, metadata !718, metadata !DIExpression()), !dbg !726
  %65 = load i8*, i8** %63, align 8, !dbg !765, !tbaa !501
  %66 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %65) #35, !dbg !766
  call void @llvm.dbg.value(metadata i64 %66, metadata !723, metadata !DIExpression()), !dbg !767
  %67 = getelementptr inbounds i8, i8* %51, i64 %64, !dbg !777
  call void @llvm.dbg.value(metadata i8* %67, metadata !779, metadata !DIExpression()) #34, !dbg !788
  call void @llvm.dbg.value(metadata i8* %65, metadata !786, metadata !DIExpression()) #34, !dbg !788
  call void @llvm.dbg.value(metadata i64 %66, metadata !787, metadata !DIExpression()) #34, !dbg !788
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %67, i8* noundef nonnull align 1 %65, i64 noundef %66, i1 noundef false) #34, !dbg !790
  %68 = add i64 %66, %64, !dbg !768
  call void @llvm.dbg.value(metadata i64 %68, metadata !722, metadata !DIExpression()), !dbg !726
  %69 = add i64 %68, 1, !dbg !769
  call void @llvm.dbg.value(metadata i64 %69, metadata !722, metadata !DIExpression()), !dbg !726
  %70 = getelementptr inbounds i8, i8* %51, i64 %68, !dbg !770
  store i8 32, i8* %70, align 1, !dbg !771, !tbaa !596
  %71 = getelementptr inbounds i8*, i8** %63, i64 1, !dbg !772
  call void @llvm.dbg.value(metadata i8** %71, metadata !718, metadata !DIExpression()), !dbg !726
  %72 = icmp ult i8** %71, %21, !dbg !773
  br i1 %72, label %62, label %73, !dbg !774, !llvm.loop !775

73:                                               ; preds = %62, %52
  %74 = phi i8* [ %22, %52 ], [ %51, %62 ]
  %75 = phi i64 [ %57, %52 ], [ %68, %62 ]
  %76 = phi i64 [ %58, %52 ], [ %69, %62 ]
  %77 = getelementptr inbounds i8, i8* %74, i64 %75, !dbg !770
  store i8 10, i8* %77, align 1, !dbg !791, !tbaa !596
  call void @llvm.dbg.value(metadata i64 %76, metadata !725, metadata !DIExpression()), !dbg !726
  %78 = tail call i64 @full_write(i32 noundef 1, i8* noundef nonnull %74, i64 noundef %76) #34, !dbg !792
  %79 = icmp eq i64 %78, %76, !dbg !794
  br i1 %79, label %80, label %249, !dbg !795

80:                                               ; preds = %73
  %81 = bitcast i64* %3 to [2 x i32]*
  call void @llvm.dbg.value(metadata i8* %51, metadata !796, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.dbg.value(metadata i64 %76, metadata !801, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.dbg.value(metadata i8 0, metadata !802, metadata !DIExpression()) #34, !dbg !832
  %82 = tail call i32 @getpagesize() #37, !dbg !834
  %83 = sext i32 %82 to i64, !dbg !834
  call void @llvm.dbg.value(metadata i64 %83, metadata !803, metadata !DIExpression()) #34, !dbg !832
  %84 = tail call i32 @isapipe(i32 noundef 1) #34, !dbg !835
  %85 = icmp sgt i32 %84, 0, !dbg !836
  call void @llvm.dbg.value(metadata i1 %85, metadata !804, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !832
  %86 = bitcast i64* %3 to i8*, !dbg !837
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %86) #34, !dbg !837
  call void @llvm.dbg.declare(metadata [2 x i32]* %81, metadata !805, metadata !DIExpression()) #34, !dbg !838
  store i64 -1, i64* %3, align 8, !dbg !838
  call void @llvm.dbg.value(metadata i8* null, metadata !807, metadata !DIExpression()) #34, !dbg !832
  br i1 %85, label %87, label %92, !dbg !839

87:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i32 1, metadata !840, metadata !DIExpression()) #34, !dbg !848
  call void @llvm.dbg.value(metadata i64 %76, metadata !845, metadata !DIExpression()) #34, !dbg !848
  call void @llvm.dbg.value(metadata i32 0, metadata !846, metadata !DIExpression()) #34, !dbg !848
  %88 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 1031, i32 noundef 524288) #34, !dbg !851
  call void @llvm.dbg.value(metadata i32 %88, metadata !846, metadata !DIExpression()) #34, !dbg !848
  %89 = icmp slt i32 %88, 0, !dbg !853
  br i1 %89, label %90, label %103, !dbg !854

90:                                               ; preds = %87
  %91 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 1032) #34, !dbg !855
  call void @llvm.dbg.value(metadata i32 %91, metadata !846, metadata !DIExpression()) #34, !dbg !848
  br label %103, !dbg !856

92:                                               ; preds = %80
  %93 = bitcast i64* %3 to i32*, !dbg !857
  %94 = call i32 @pipe2_safer(i32* noundef nonnull %93, i32 noundef 0) #34, !dbg !860
  %95 = icmp slt i32 %94, 0, !dbg !861
  br i1 %95, label %96, label %97, !dbg !862

96:                                               ; preds = %92
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %86) #34, !dbg !863
  br label %231, !dbg !864

97:                                               ; preds = %92
  %98 = load i32, i32* %93, align 8, !dbg !865, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %98, metadata !840, metadata !DIExpression()) #34, !dbg !866
  call void @llvm.dbg.value(metadata i64 %76, metadata !845, metadata !DIExpression()) #34, !dbg !866
  call void @llvm.dbg.value(metadata i32 0, metadata !846, metadata !DIExpression()) #34, !dbg !866
  %99 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %98, i32 noundef 1031, i32 noundef 524288) #34, !dbg !868
  call void @llvm.dbg.value(metadata i32 %99, metadata !846, metadata !DIExpression()) #34, !dbg !866
  %100 = icmp slt i32 %99, 0, !dbg !869
  br i1 %100, label %101, label %103, !dbg !870

101:                                              ; preds = %97
  %102 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %98, i32 noundef 1032) #34, !dbg !871
  call void @llvm.dbg.value(metadata i32 %102, metadata !846, metadata !DIExpression()) #34, !dbg !866
  br label %103, !dbg !872

103:                                              ; preds = %101, %97, %90, %87
  %104 = phi i32 [ %91, %90 ], [ %88, %87 ], [ %102, %101 ], [ %99, %97 ]
  %105 = icmp slt i32 %104, 1, !dbg !873
  %106 = sdiv i32 %104, 4, !dbg !873
  %107 = select i1 %105, i32 16384, i32 %106, !dbg !873
  %108 = sext i32 %107 to i64, !dbg !873
  %109 = urem i64 %108, %76, !dbg !873
  %110 = sub i64 %108, %109, !dbg !873
  call void @llvm.dbg.value(metadata i64 %110, metadata !806, metadata !DIExpression()) #34, !dbg !832
  %111 = icmp eq i64 %110, 0, !dbg !874
  br i1 %111, label %217, label %112, !dbg !876

112:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 %83, metadata !877, metadata !DIExpression()) #34, !dbg !884
  call void @llvm.dbg.value(metadata i64 %110, metadata !883, metadata !DIExpression()) #34, !dbg !884
  %113 = call noalias i8* @aligned_alloc(i64 noundef %83, i64 noundef %110) #34, !dbg !887
  call void @llvm.assume(i1 true) #34 [ "align"(i8* %113, i64 %83) ], !dbg !887
  call void @llvm.dbg.value(metadata i8* %113, metadata !807, metadata !DIExpression()) #34, !dbg !832
  %114 = icmp eq i8* %113, null, !dbg !888
  br i1 %114, label %217, label %115, !dbg !889

115:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8* %113, metadata !890, metadata !DIExpression()) #34, !dbg !903
  call void @llvm.dbg.value(metadata i8* %51, metadata !895, metadata !DIExpression()) #34, !dbg !903
  call void @llvm.dbg.value(metadata i64 %76, metadata !896, metadata !DIExpression()) #34, !dbg !903
  call void @llvm.dbg.value(metadata i64 %110, metadata !897, metadata !DIExpression()) #34, !dbg !903
  %116 = icmp eq i8* %113, %74, !dbg !905
  br i1 %116, label %118, label %117, !dbg !907

117:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i8* %113, metadata !779, metadata !DIExpression()) #34, !dbg !908
  call void @llvm.dbg.value(metadata i8* %51, metadata !786, metadata !DIExpression()) #34, !dbg !908
  call void @llvm.dbg.value(metadata i64 %76, metadata !787, metadata !DIExpression()) #34, !dbg !908
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %113, i8* noundef nonnull align 1 %74, i64 noundef %76, i1 noundef false) #34, !dbg !910
  br label %118, !dbg !911

118:                                              ; preds = %117, %115
  call void @llvm.dbg.value(metadata i64 %76, metadata !898, metadata !DIExpression()) #34, !dbg !912
  %119 = icmp sgt i64 %110, %76, !dbg !913
  br i1 %119, label %120, label %128, !dbg !914

120:                                              ; preds = %118, %120
  %121 = phi i64 [ %126, %120 ], [ %76, %118 ]
  call void @llvm.dbg.value(metadata i64 %121, metadata !898, metadata !DIExpression()) #34, !dbg !912
  %122 = sub nsw i64 %110, %121, !dbg !915
  %123 = icmp slt i64 %121, %122, !dbg !915
  %124 = select i1 %123, i64 %121, i64 %122, !dbg !915
  call void @llvm.dbg.value(metadata i64 %124, metadata !900, metadata !DIExpression()) #34, !dbg !916
  %125 = getelementptr inbounds i8, i8* %113, i64 %121, !dbg !917
  call void @llvm.dbg.value(metadata i8* %125, metadata !779, metadata !DIExpression()) #34, !dbg !918
  call void @llvm.dbg.value(metadata i8* %113, metadata !786, metadata !DIExpression()) #34, !dbg !918
  call void @llvm.dbg.value(metadata i64 %124, metadata !787, metadata !DIExpression()) #34, !dbg !918
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %125, i8* noundef nonnull align 1 %113, i64 noundef %124, i1 noundef false) #34, !dbg !920
  %126 = add nsw i64 %124, %121, !dbg !921
  call void @llvm.dbg.value(metadata i64 %126, metadata !898, metadata !DIExpression()) #34, !dbg !912
  %127 = icmp slt i64 %126, %110, !dbg !913
  br i1 %127, label %120, label %128, !dbg !914, !llvm.loop !922

128:                                              ; preds = %120, %118
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %81, i64 0, i64 1, !dbg !924
  %130 = load i32, i32* %129, align 4, !dbg !924
  %131 = select i1 %85, i32 1, i32 %130, !dbg !924
  call void @llvm.dbg.value(metadata i32 %131, metadata !808, metadata !DIExpression()) #34, !dbg !832
  %132 = bitcast %struct.iovec* %4 to i8*
  %133 = getelementptr inbounds %struct.iovec, %struct.iovec* %4, i64 0, i32 0
  %134 = getelementptr inbounds %struct.iovec, %struct.iovec* %4, i64 0, i32 1
  %135 = bitcast i64* %3 to i32*
  br i1 %85, label %136, label %160, !dbg !925

136:                                              ; preds = %128
  %137 = urem i64 %110, %83
  %138 = icmp eq i64 %137, 0
  %139 = select i1 %138, i32 8, i32 0
  call void @llvm.dbg.value(metadata i8 0, metadata !802, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %132) #34, !dbg !926
  call void @llvm.dbg.declare(metadata %struct.iovec* %4, metadata !809, metadata !DIExpression()) #34, !dbg !927
  store i8* %113, i8** %133, align 8, !dbg !928, !tbaa !929
  store i64 %110, i64* %134, align 8, !dbg !932, !tbaa !933
  call void @llvm.dbg.value(metadata i32 %139, metadata !818, metadata !DIExpression()) #34, !dbg !934
  %140 = call i64 @vmsplice(i32 noundef %131, %struct.iovec* noundef nonnull %4, i64 noundef 1, i32 noundef %139) #34, !dbg !935
  call void @llvm.dbg.value(metadata i64 %140, metadata !820, metadata !DIExpression()) #34, !dbg !934
  %141 = icmp slt i64 %140, 1, !dbg !936
  br i1 %141, label %208, label %150, !dbg !938

142:                                              ; preds = %150
  call void @llvm.dbg.value(metadata i8 1, metadata !802, metadata !DIExpression()) #34, !dbg !832
  %143 = urem i64 %155, %83, !dbg !939
  %144 = icmp eq i64 %143, 0, !dbg !940
  %145 = select i1 %144, i32 8, i32 0, !dbg !940
  call void @llvm.dbg.value(metadata i32 %145, metadata !818, metadata !DIExpression()) #34, !dbg !934
  %146 = call i64 @vmsplice(i32 noundef %131, %struct.iovec* noundef nonnull %4, i64 noundef 1, i32 noundef %145) #34, !dbg !935
  call void @llvm.dbg.value(metadata i64 %146, metadata !820, metadata !DIExpression()) #34, !dbg !934
  %147 = icmp slt i64 %146, 1, !dbg !936
  br i1 %147, label %208, label %148, !dbg !938

148:                                              ; preds = %142, %157
  %149 = phi i64 [ %146, %142 ], [ %158, %157 ]
  br label %150, !dbg !832

150:                                              ; preds = %136, %148
  %151 = phi i64 [ %149, %148 ], [ %140, %136 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !802, metadata !DIExpression()) #34, !dbg !832
  %152 = load i8*, i8** %133, align 8, !dbg !941, !tbaa !929
  %153 = getelementptr inbounds i8, i8* %152, i64 %151, !dbg !942
  store i8* %153, i8** %133, align 8, !dbg !943, !tbaa !929
  %154 = load i64, i64* %134, align 8, !dbg !944, !tbaa !933
  %155 = sub i64 %154, %151, !dbg !944
  store i64 %155, i64* %134, align 8, !dbg !932, !tbaa !933
  %156 = icmp eq i64 %155, 0, !dbg !945
  br i1 %156, label %157, label %142, !dbg !946

157:                                              ; preds = %150
  call void @llvm.dbg.value(metadata i8 undef, metadata !802, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %132) #34, !dbg !947
  call void @llvm.dbg.value(metadata i8 1, metadata !802, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %132) #34, !dbg !926
  call void @llvm.dbg.declare(metadata %struct.iovec* %4, metadata !809, metadata !DIExpression()) #34, !dbg !927
  store i8* %113, i8** %133, align 8, !dbg !928, !tbaa !929
  store i64 %110, i64* %134, align 8, !dbg !932, !tbaa !933
  call void @llvm.dbg.value(metadata i32 %139, metadata !818, metadata !DIExpression()) #34, !dbg !934
  %158 = call i64 @vmsplice(i32 noundef %131, %struct.iovec* noundef nonnull %4, i64 noundef 1, i32 noundef %139) #34, !dbg !935
  call void @llvm.dbg.value(metadata i64 %158, metadata !820, metadata !DIExpression()) #34, !dbg !934
  %159 = icmp slt i64 %158, 1, !dbg !936
  br i1 %159, label %208, label %148, !dbg !938

160:                                              ; preds = %128
  %161 = icmp sgt i64 %110, 0
  br i1 %161, label %162, label %194, !dbg !948

162:                                              ; preds = %160, %186
  %163 = phi i8 [ 1, %186 ], [ 0, %160 ], !dbg !949
  call void @llvm.dbg.value(metadata i8 %163, metadata !802, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %132) #34, !dbg !926
  call void @llvm.dbg.declare(metadata %struct.iovec* %4, metadata !809, metadata !DIExpression()) #34, !dbg !927
  store i8* %113, i8** %133, align 8, !dbg !928, !tbaa !929
  store i64 %110, i64* %134, align 8, !dbg !932, !tbaa !933
  br label %164, !dbg !946

164:                                              ; preds = %171, %162
  %165 = phi i64 [ %110, %162 ], [ %175, %171 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !802, metadata !DIExpression()) #34, !dbg !832
  %166 = urem i64 %165, %83, !dbg !939
  %167 = icmp eq i64 %166, 0, !dbg !940
  %168 = select i1 %167, i32 8, i32 0, !dbg !940
  call void @llvm.dbg.value(metadata i32 %168, metadata !818, metadata !DIExpression()) #34, !dbg !934
  %169 = call i64 @vmsplice(i32 noundef %131, %struct.iovec* noundef nonnull %4, i64 noundef 1, i32 noundef %168) #34, !dbg !935
  call void @llvm.dbg.value(metadata i64 %169, metadata !820, metadata !DIExpression()) #34, !dbg !934
  %170 = icmp slt i64 %169, 1, !dbg !936
  br i1 %170, label %208, label %171, !dbg !938

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i8 undef, metadata !802, metadata !DIExpression()) #34, !dbg !832
  %172 = load i8*, i8** %133, align 8, !dbg !941, !tbaa !929
  %173 = getelementptr inbounds i8, i8* %172, i64 %169, !dbg !942
  store i8* %173, i8** %133, align 8, !dbg !943, !tbaa !929
  %174 = load i64, i64* %134, align 8, !dbg !944, !tbaa !933
  %175 = sub i64 %174, %169, !dbg !944
  store i64 %175, i64* %134, align 8, !dbg !932, !tbaa !933
  %176 = icmp eq i64 %175, 0, !dbg !945
  br i1 %176, label %187, label %164, !dbg !946

177:                                              ; preds = %192, %180
  %178 = phi i64 [ %184, %180 ], [ %193, %192 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !802, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.dbg.value(metadata i64 undef, metadata !823, metadata !DIExpression()) #34, !dbg !950
  %179 = icmp sgt i64 %178, 0, !dbg !951
  br i1 %179, label %180, label %186, !dbg !948, !llvm.loop !952

180:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !802, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.dbg.value(metadata i64 undef, metadata !823, metadata !DIExpression()) #34, !dbg !950
  %181 = load i32, i32* %135, align 8, !dbg !954, !tbaa !587
  %182 = call i64 @splice(i32 noundef %181, i64* noundef null, i32 noundef 1, i64* noundef null, i64 noundef %178, i32 noundef 1) #34, !dbg !955
  call void @llvm.dbg.value(metadata i64 %182, metadata !826, metadata !DIExpression()) #34, !dbg !956
  %183 = icmp slt i64 %182, 1, !dbg !957
  %184 = sub nsw i64 %178, %182, !dbg !959
  call void @llvm.dbg.value(metadata i8 undef, metadata !802, metadata !DIExpression()) #34, !dbg !832
  br i1 %183, label %185, label %177, !llvm.loop !960

185:                                              ; preds = %180
  call void @llvm.dbg.value(metadata i8 undef, metadata !802, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %132) #34, !dbg !947
  br label %213

186:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 undef, metadata !802, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %132) #34, !dbg !947
  br label %162

187:                                              ; preds = %171
  call void @llvm.dbg.value(metadata i8 %163, metadata !802, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.dbg.value(metadata i64 %110, metadata !823, metadata !DIExpression()) #34, !dbg !950
  %188 = load i32, i32* %135, align 8, !dbg !954, !tbaa !587
  %189 = call i64 @splice(i32 noundef %188, i64* noundef null, i32 noundef 1, i64* noundef null, i64 noundef %110, i32 noundef 1) #34, !dbg !955
  call void @llvm.dbg.value(metadata i64 %189, metadata !826, metadata !DIExpression()) #34, !dbg !956
  %190 = icmp slt i64 %189, 1, !dbg !957
  call void @llvm.dbg.value(metadata i8 undef, metadata !802, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.dbg.value(metadata i64 undef, metadata !823, metadata !DIExpression()) #34, !dbg !950
  br i1 %190, label %191, label %192, !llvm.loop !961

191:                                              ; preds = %187
  call void @llvm.dbg.value(metadata i8 undef, metadata !802, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %132) #34, !dbg !947
  br label %213

192:                                              ; preds = %187
  %193 = sub nsw i64 %110, %189, !dbg !959
  br label %177, !dbg !948

194:                                              ; preds = %160, %212
  call void @llvm.dbg.value(metadata i8 undef, metadata !802, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %132) #34, !dbg !926
  call void @llvm.dbg.declare(metadata %struct.iovec* %4, metadata !809, metadata !DIExpression()) #34, !dbg !927
  store i8* %113, i8** %133, align 8, !dbg !928, !tbaa !929
  store i64 %110, i64* %134, align 8, !dbg !932, !tbaa !933
  br label %201, !dbg !946

195:                                              ; preds = %201
  call void @llvm.dbg.value(metadata i8 undef, metadata !802, metadata !DIExpression()) #34, !dbg !832
  %196 = load i8*, i8** %133, align 8, !dbg !941, !tbaa !929
  %197 = getelementptr inbounds i8, i8* %196, i64 %206, !dbg !942
  store i8* %197, i8** %133, align 8, !dbg !943, !tbaa !929
  %198 = load i64, i64* %134, align 8, !dbg !944, !tbaa !933
  %199 = sub i64 %198, %206, !dbg !944
  store i64 %199, i64* %134, align 8, !dbg !932, !tbaa !933
  %200 = icmp eq i64 %199, 0, !dbg !945
  br i1 %200, label %212, label %201, !dbg !946

201:                                              ; preds = %195, %194
  %202 = phi i64 [ %110, %194 ], [ %199, %195 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !802, metadata !DIExpression()) #34, !dbg !832
  %203 = urem i64 %202, %83, !dbg !939
  %204 = icmp eq i64 %203, 0, !dbg !940
  %205 = select i1 %204, i32 8, i32 0, !dbg !940
  call void @llvm.dbg.value(metadata i32 %205, metadata !818, metadata !DIExpression()) #34, !dbg !934
  %206 = call i64 @vmsplice(i32 noundef %131, %struct.iovec* noundef nonnull %4, i64 noundef 1, i32 noundef %205) #34, !dbg !935
  call void @llvm.dbg.value(metadata i64 %206, metadata !820, metadata !DIExpression()) #34, !dbg !934
  %207 = icmp slt i64 %206, 1, !dbg !936
  br i1 %207, label %208, label %195, !dbg !938

208:                                              ; preds = %201, %164, %157, %142, %136
  %209 = phi i8 [ 0, %136 ], [ 1, %142 ], [ 1, %157 ], [ %163, %164 ], [ 0, %201 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !802, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %132) #34, !dbg !947
  %210 = and i8 %209, 1
  %211 = icmp ne i8 %210, 0
  br label %217

212:                                              ; preds = %195
  call void @llvm.dbg.value(metadata i64 %110, metadata !823, metadata !DIExpression()) #34, !dbg !950
  call void @llvm.dbg.value(metadata i8 undef, metadata !802, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %132) #34, !dbg !947
  br label %194

213:                                              ; preds = %191, %185
  %214 = phi i8 [ %163, %191 ], [ 1, %185 ]
  %215 = and i8 %214, 1
  %216 = icmp ne i8 %215, 0
  br label %217, !dbg !962

217:                                              ; preds = %213, %208, %112, %103
  %218 = phi i8* [ null, %103 ], [ null, %112 ], [ %113, %208 ], [ %113, %213 ], !dbg !832
  %219 = phi i1 [ false, %103 ], [ false, %112 ], [ %211, %208 ], [ %216, %213 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !802, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.dbg.value(metadata i8* %218, metadata !807, metadata !DIExpression()) #34, !dbg !832
  call void @llvm.dbg.label(metadata !831) #34, !dbg !963
  %220 = bitcast i64* %3 to i32*, !dbg !962
  %221 = load i32, i32* %220, align 8, !dbg !962, !tbaa !587
  %222 = icmp sgt i32 %221, -1, !dbg !964
  br i1 %222, label %223, label %230, !dbg !965

223:                                              ; preds = %217
  %224 = tail call i32* @__errno_location() #37, !dbg !966
  %225 = load i32, i32* %224, align 4, !dbg !966, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %225, metadata !828, metadata !DIExpression()) #34, !dbg !967
  %226 = call i32 @close(i32 noundef %221) #34, !dbg !968
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %81, i64 0, i64 1, !dbg !969
  %228 = load i32, i32* %227, align 4, !dbg !969, !tbaa !587
  %229 = call i32 @close(i32 noundef %228) #34, !dbg !970
  store i32 %225, i32* %224, align 4, !dbg !971, !tbaa !587
  br label %230, !dbg !972

230:                                              ; preds = %217, %223
  call void @llvm.dbg.value(metadata i8* %218, metadata !973, metadata !DIExpression()) #34, !dbg !978
  call void @free(i8* noundef %218) #34, !dbg !980
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %86) #34, !dbg !863
  br i1 %219, label %249, label %231, !dbg !864

231:                                              ; preds = %96, %230
  %232 = urem i64 %49, %76, !dbg !981
  %233 = sub i64 %49, %232, !dbg !981
  call void @llvm.dbg.value(metadata i64 %233, metadata !722, metadata !DIExpression()), !dbg !726
  %234 = icmp ugt i64 %233, %76, !dbg !983
  %235 = icmp slt i64 %76, %233
  %236 = and i1 %234, %235, !dbg !985
  call void @llvm.dbg.value(metadata i8* %51, metadata !890, metadata !DIExpression()) #34, !dbg !986
  call void @llvm.dbg.value(metadata i8* %51, metadata !895, metadata !DIExpression()) #34, !dbg !986
  call void @llvm.dbg.value(metadata i64 %76, metadata !896, metadata !DIExpression()) #34, !dbg !986
  call void @llvm.dbg.value(metadata i64 %233, metadata !897, metadata !DIExpression()) #34, !dbg !986
  call void @llvm.dbg.value(metadata i64 %76, metadata !898, metadata !DIExpression()) #34, !dbg !988
  br i1 %236, label %237, label %245, !dbg !985

237:                                              ; preds = %231, %237
  %238 = phi i64 [ %243, %237 ], [ %76, %231 ]
  call void @llvm.dbg.value(metadata i64 %238, metadata !898, metadata !DIExpression()) #34, !dbg !988
  %239 = sub nsw i64 %233, %238, !dbg !989
  %240 = icmp slt i64 %238, %239, !dbg !989
  %241 = select i1 %240, i64 %238, i64 %239, !dbg !989
  call void @llvm.dbg.value(metadata i64 %241, metadata !900, metadata !DIExpression()) #34, !dbg !990
  %242 = getelementptr inbounds i8, i8* %74, i64 %238, !dbg !991
  call void @llvm.dbg.value(metadata i8* %242, metadata !779, metadata !DIExpression()) #34, !dbg !992
  call void @llvm.dbg.value(metadata i8* %51, metadata !786, metadata !DIExpression()) #34, !dbg !992
  call void @llvm.dbg.value(metadata i64 %241, metadata !787, metadata !DIExpression()) #34, !dbg !992
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %242, i8* noundef nonnull align 1 %74, i64 noundef %241, i1 noundef false) #34, !dbg !994
  %243 = add nsw i64 %241, %238, !dbg !995
  call void @llvm.dbg.value(metadata i64 %243, metadata !898, metadata !DIExpression()) #34, !dbg !988
  %244 = icmp slt i64 %243, %233, !dbg !996
  br i1 %244, label %237, label %245, !dbg !997, !llvm.loop !998

245:                                              ; preds = %237, %231
  br label %246, !dbg !1000

246:                                              ; preds = %245, %246
  %247 = call i64 @full_write(i32 noundef 1, i8* noundef %74, i64 noundef %233) #34, !dbg !1001
  %248 = icmp eq i64 %247, %233, !dbg !1002
  br i1 %248, label %246, label %249, !dbg !1000, !llvm.loop !1003

249:                                              ; preds = %246, %230, %73
  %250 = tail call i32* @__errno_location() #37, !dbg !1005
  %251 = load i32, i32* %250, align 4, !dbg !1005, !tbaa !587
  %252 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #34, !dbg !1005
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %251, i8* noundef %252) #34, !dbg !1005
  ret i32 1, !dbg !1006
}

; Function Attrs: nounwind
declare !dbg !1007 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1010 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1011 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare !dbg !1014 i32 @getpagesize() local_unnamed_addr #11

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @aligned_alloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #14

declare !dbg !1018 i64 @vmsplice(i32 noundef, %struct.iovec* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1024 i64 @splice(i32 noundef, i64* noundef, i32 noundef, i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

declare !dbg !1028 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #16 !dbg !1031 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1033, metadata !DIExpression()), !dbg !1034
  store i8* %0, i8** @file_name, align 8, !dbg !1035, !tbaa !501
  ret void, !dbg !1036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1037 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1041, metadata !DIExpression()), !dbg !1042
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1043, !tbaa !1044
  ret void, !dbg !1046
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1047 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1052, !tbaa !501
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #34, !dbg !1053
  %3 = icmp eq i32 %2, 0, !dbg !1054
  br i1 %3, label %22, label %4, !dbg !1055

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1056, !tbaa !1044, !range !1057
  %6 = icmp eq i8 %5, 0, !dbg !1056
  br i1 %6, label %11, label %7, !dbg !1058

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #37, !dbg !1059
  %9 = load i32, i32* %8, align 4, !dbg !1059, !tbaa !587
  %10 = icmp eq i32 %9, 32, !dbg !1060
  br i1 %10, label %22, label %11, !dbg !1061

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.22, i64 0, i64 0), i32 noundef 5) #34, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %12, metadata !1049, metadata !DIExpression()), !dbg !1063
  %13 = load i8*, i8** @file_name, align 8, !dbg !1064, !tbaa !501
  %14 = icmp eq i8* %13, null, !dbg !1064
  %15 = tail call i32* @__errno_location() #37, !dbg !1066
  %16 = load i32, i32* %15, align 4, !dbg !1066, !tbaa !587
  br i1 %14, label %19, label %17, !dbg !1067

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #34, !dbg !1068
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.23, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #34, !dbg !1068
  br label %20, !dbg !1068

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.24, i64 0, i64 0), i8* noundef %12) #34, !dbg !1069
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1070, !tbaa !587
  tail call void @_exit(i32 noundef %21) #36, !dbg !1071
  unreachable, !dbg !1071

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1072, !tbaa !501
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #34, !dbg !1074
  %25 = icmp eq i32 %24, 0, !dbg !1075
  br i1 %25, label %28, label %26, !dbg !1076

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1077, !tbaa !587
  tail call void @_exit(i32 noundef %27) #36, !dbg !1078
  unreachable, !dbg !1078

28:                                               ; preds = %22
  ret void, !dbg !1079
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !1080 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1084, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i32 %1, metadata !1085, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %2, metadata !1086, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1087, metadata !DIExpression()), !dbg !1089
  tail call fastcc void @flush_stdout(), !dbg !1090
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1091, !tbaa !501
  %7 = icmp eq void ()* %6, null, !dbg !1091
  br i1 %7, label %9, label %8, !dbg !1093

8:                                                ; preds = %4
  tail call void %6() #34, !dbg !1094
  br label %13, !dbg !1094

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1095, !tbaa !501
  %11 = tail call i8* @getprogname() #35, !dbg !1095
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* noundef %11) #34, !dbg !1095
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1097
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1097
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1097
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1097, !tbaa.struct !1098
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1097
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1097
  ret void, !dbg !1099
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1100 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1102, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i32 1, metadata !1104, metadata !DIExpression()) #34, !dbg !1107
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #34, !dbg !1110
  %2 = icmp slt i32 %1, 0, !dbg !1111
  br i1 %2, label %6, label %3, !dbg !1112

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1113, !tbaa !501
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #34, !dbg !1113
  br label %6, !dbg !1113

6:                                                ; preds = %3, %0
  ret void, !dbg !1114
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1115 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1117, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i32 %1, metadata !1118, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8* %2, metadata !1119, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1120, metadata !DIExpression()), !dbg !1122
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1123, !tbaa !501
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1124
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1125, metadata !DIExpression()) #34, !dbg !1168
  call void @llvm.dbg.value(metadata i8* %2, metadata !1166, metadata !DIExpression()) #34, !dbg !1168
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1170
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1170, !noalias !1171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1170
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #34, !dbg !1170
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1170, !noalias !1171
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1175, !tbaa !587
  %12 = add i32 %11, 1, !dbg !1175
  store i32 %12, i32* @error_message_count, align 4, !dbg !1175, !tbaa !587
  %13 = icmp eq i32 %1, 0, !dbg !1176
  br i1 %13, label %24, label %14, !dbg !1178

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1179, metadata !DIExpression()) #34, !dbg !1187
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1189
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1189
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1183, metadata !DIExpression()) #34, !dbg !1190
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #34, !dbg !1191
  call void @llvm.dbg.value(metadata i8* %16, metadata !1182, metadata !DIExpression()) #34, !dbg !1187
  %17 = icmp eq i8* %16, null, !dbg !1192
  br i1 %17, label %18, label %20, !dbg !1194

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.27, i64 0, i64 0), i32 noundef 5) #34, !dbg !1195
  call void @llvm.dbg.value(metadata i8* %19, metadata !1182, metadata !DIExpression()) #34, !dbg !1187
  br label %20, !dbg !1196

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1187
  call void @llvm.dbg.value(metadata i8* %21, metadata !1182, metadata !DIExpression()) #34, !dbg !1187
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1197, !tbaa !501
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.28, i64 0, i64 0), i8* noundef %21) #34, !dbg !1197
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1198
  br label %24, !dbg !1199

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1200, !tbaa !501
  call void @llvm.dbg.value(metadata i32 10, metadata !1201, metadata !DIExpression()) #34, !dbg !1208
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1207, metadata !DIExpression()) #34, !dbg !1208
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1210
  %27 = load i8*, i8** %26, align 8, !dbg !1210, !tbaa !1211
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1210
  %29 = load i8*, i8** %28, align 8, !dbg !1210, !tbaa !1213
  %30 = icmp ult i8* %27, %29, !dbg !1210
  br i1 %30, label %33, label %31, !dbg !1210, !prof !1214

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #34, !dbg !1210
  br label %35, !dbg !1210

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1210
  store i8* %34, i8** %26, align 8, !dbg !1210, !tbaa !1211
  store i8 10, i8* %27, align 1, !dbg !1210, !tbaa !596
  br label %35, !dbg !1210

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1215, !tbaa !501
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #34, !dbg !1215
  %38 = icmp eq i32 %0, 0, !dbg !1216
  br i1 %38, label %40, label %39, !dbg !1218

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #36, !dbg !1219
  unreachable, !dbg !1219

40:                                               ; preds = %35
  ret void, !dbg !1220
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1221 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1225 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1228 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1232 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1236, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i32 %1, metadata !1237, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %2, metadata !1238, metadata !DIExpression()), !dbg !1240
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1241
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1241
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1239, metadata !DIExpression()), !dbg !1242
  call void @llvm.va_start(i8* nonnull %6), !dbg !1243
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1244
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1244, !tbaa.struct !1098
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #39, !dbg !1244
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1244
  call void @llvm.va_end(i8* nonnull %6), !dbg !1245
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1246
  ret void, !dbg !1246
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #19

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !142 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 %1, metadata !161, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8* %2, metadata !162, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 %3, metadata !163, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8* %4, metadata !164, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !165, metadata !DIExpression()), !dbg !1248
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1249, !tbaa !587
  %9 = icmp eq i32 %8, 0, !dbg !1249
  br i1 %9, label %24, label %10, !dbg !1251

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1252, !tbaa !587
  %12 = icmp eq i32 %11, %3, !dbg !1255
  br i1 %12, label %13, label %23, !dbg !1256

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1257, !tbaa !501
  %15 = icmp eq i8* %14, %2, !dbg !1258
  br i1 %15, label %39, label %16, !dbg !1259

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1260
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1261
  br i1 %19, label %20, label %23, !dbg !1261

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #35, !dbg !1262
  %22 = icmp eq i32 %21, 0, !dbg !1263
  br i1 %22, label %39, label %23, !dbg !1264

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1265, !tbaa !501
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1266, !tbaa !587
  br label %24, !dbg !1267

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1268
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1269, !tbaa !501
  %26 = icmp eq void ()* %25, null, !dbg !1269
  br i1 %26, label %28, label %27, !dbg !1271

27:                                               ; preds = %24
  tail call void %25() #34, !dbg !1272
  br label %32, !dbg !1272

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1273, !tbaa !501
  %30 = tail call i8* @getprogname() #35, !dbg !1273
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.31, i64 0, i64 0), i8* noundef %30) #34, !dbg !1273
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1275, !tbaa !501
  %34 = icmp eq i8* %2, null, !dbg !1275
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.32, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.33, i64 0, i64 0), !dbg !1275
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #34, !dbg !1275
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1276
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1276
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1276
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1276, !tbaa.struct !1098
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1276
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1276
  br label %39, !dbg !1277

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1277
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1278 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1282, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i32 %1, metadata !1283, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i8* %2, metadata !1284, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i32 %3, metadata !1285, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i8* %4, metadata !1286, metadata !DIExpression()), !dbg !1288
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1289
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1289
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1287, metadata !DIExpression()), !dbg !1290
  call void @llvm.va_start(i8* nonnull %8), !dbg !1291
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1292
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1292
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1292, !tbaa.struct !1098
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #39, !dbg !1292
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1292
  call void @llvm.va_end(i8* nonnull %8), !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1294
  ret void, !dbg !1294
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #12 !dbg !1295 {
  %3 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1297, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %1, metadata !1298, metadata !DIExpression()), !dbg !1322
  %4 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1323
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #34, !dbg !1323
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1299, metadata !DIExpression()), !dbg !1324
  call void @llvm.va_start(i8* nonnull %4), !dbg !1325
  call void @llvm.dbg.value(metadata i32 -1, metadata !1310, metadata !DIExpression()), !dbg !1322
  switch i32 %1, label %103 [
    i32 0, label %5
    i32 1030, label %26
    i32 1, label %80
    i32 3, label %80
    i32 1025, label %80
    i32 9, label %80
    i32 1032, label %80
    i32 1034, label %80
    i32 11, label %80
    i32 1033, label %82
    i32 1031, label %82
    i32 10, label %82
    i32 1026, label %82
    i32 2, label %82
    i32 4, label %82
    i32 1024, label %82
    i32 8, label %82
  ], !dbg !1326

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1327
  %7 = load i32, i32* %6, align 8, !dbg !1327
  %8 = icmp sgt i32 %7, -1, !dbg !1327
  br i1 %8, label %17, label %9, !dbg !1327

9:                                                ; preds = %5
  %10 = add nsw i32 %7, 8, !dbg !1327
  store i32 %10, i32* %6, align 8, !dbg !1327
  %11 = icmp ult i32 %7, -7, !dbg !1327
  br i1 %11, label %12, label %17, !dbg !1327

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1327
  %14 = load i8*, i8** %13, align 8, !dbg !1327
  %15 = sext i32 %7 to i64, !dbg !1327
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !1327
  br label %21, !dbg !1327

17:                                               ; preds = %9, %5
  %18 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1327
  %19 = load i8*, i8** %18, align 8, !dbg !1327
  %20 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !1327
  store i8* %20, i8** %18, align 8, !dbg !1327
  br label %21, !dbg !1327

21:                                               ; preds = %17, %12
  %22 = phi i8* [ %16, %12 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*, !dbg !1327
  %24 = load i32, i32* %23, align 8, !dbg !1327
  call void @llvm.dbg.value(metadata i32 %24, metadata !1311, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i32 %0, metadata !1329, metadata !DIExpression()) #34, !dbg !1334
  call void @llvm.dbg.value(metadata i32 %24, metadata !1332, metadata !DIExpression()) #34, !dbg !1334
  %25 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %24) #34, !dbg !1336
  call void @llvm.dbg.value(metadata i32 %25, metadata !1333, metadata !DIExpression()) #34, !dbg !1334
  call void @llvm.dbg.value(metadata i32 %25, metadata !1310, metadata !DIExpression()), !dbg !1322
  br label %124

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1337
  %28 = load i32, i32* %27, align 8, !dbg !1337
  %29 = icmp sgt i32 %28, -1, !dbg !1337
  br i1 %29, label %38, label %30, !dbg !1337

30:                                               ; preds = %26
  %31 = add nsw i32 %28, 8, !dbg !1337
  store i32 %31, i32* %27, align 8, !dbg !1337
  %32 = icmp ult i32 %28, -7, !dbg !1337
  br i1 %32, label %33, label %38, !dbg !1337

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1337
  %35 = load i8*, i8** %34, align 8, !dbg !1337
  %36 = sext i32 %28 to i64, !dbg !1337
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !1337
  br label %42, !dbg !1337

38:                                               ; preds = %30, %26
  %39 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1337
  %40 = load i8*, i8** %39, align 8, !dbg !1337
  %41 = getelementptr inbounds i8, i8* %40, i64 8, !dbg !1337
  store i8* %41, i8** %39, align 8, !dbg !1337
  br label %42, !dbg !1337

42:                                               ; preds = %38, %33
  %43 = phi i8* [ %37, %33 ], [ %40, %38 ]
  %44 = bitcast i8* %43 to i32*, !dbg !1337
  %45 = load i32, i32* %44, align 8, !dbg !1337
  call void @llvm.dbg.value(metadata i32 %45, metadata !1314, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.value(metadata i32 %0, metadata !184, metadata !DIExpression()) #34, !dbg !1339
  call void @llvm.dbg.value(metadata i32 %45, metadata !185, metadata !DIExpression()) #34, !dbg !1339
  %46 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1341, !tbaa !587
  %47 = icmp sgt i32 %46, -1, !dbg !1343
  br i1 %47, label %48, label %60, !dbg !1344

48:                                               ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %45) #34, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %49, metadata !186, metadata !DIExpression()) #34, !dbg !1339
  %50 = icmp sgt i32 %49, -1, !dbg !1347
  br i1 %50, label %55, label %51, !dbg !1349

51:                                               ; preds = %48
  %52 = tail call i32* @__errno_location() #37, !dbg !1350
  %53 = load i32, i32* %52, align 4, !dbg !1350, !tbaa !587
  %54 = icmp eq i32 %53, 22, !dbg !1351
  br i1 %54, label %56, label %55, !dbg !1352

55:                                               ; preds = %51, %48
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1353, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %66, metadata !186, metadata !DIExpression()) #34, !dbg !1339
  br label %124, !dbg !1355

56:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %0, metadata !1329, metadata !DIExpression()) #34, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %45, metadata !1332, metadata !DIExpression()) #34, !dbg !1356
  %57 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #34, !dbg !1359
  call void @llvm.dbg.value(metadata i32 %57, metadata !1333, metadata !DIExpression()) #34, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %57, metadata !186, metadata !DIExpression()) #34, !dbg !1339
  %58 = icmp sgt i32 %57, -1, !dbg !1360
  br i1 %58, label %59, label %124, !dbg !1362

59:                                               ; preds = %56
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1363, !tbaa !587
  br label %64, !dbg !1364

60:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !1329, metadata !DIExpression()) #34, !dbg !1365
  call void @llvm.dbg.value(metadata i32 %45, metadata !1332, metadata !DIExpression()) #34, !dbg !1365
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #34, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %61, metadata !1333, metadata !DIExpression()) #34, !dbg !1365
  call void @llvm.dbg.value(metadata i32 %61, metadata !186, metadata !DIExpression()) #34, !dbg !1339
  %62 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %63 = icmp eq i32 %62, -1
  br label %64

64:                                               ; preds = %60, %59
  %65 = phi i1 [ true, %59 ], [ %63, %60 ]
  %66 = phi i32 [ %57, %59 ], [ %61, %60 ], !dbg !1368
  call void @llvm.dbg.value(metadata i32 %66, metadata !186, metadata !DIExpression()) #34, !dbg !1339
  %67 = icmp sgt i32 %66, -1, !dbg !1369
  %68 = select i1 %67, i1 %65, i1 false, !dbg !1355
  br i1 %68, label %69, label %124, !dbg !1355

69:                                               ; preds = %64
  %70 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 1) #34, !dbg !1370
  call void @llvm.dbg.value(metadata i32 %70, metadata !187, metadata !DIExpression()) #34, !dbg !1371
  %71 = icmp slt i32 %70, 0, !dbg !1372
  br i1 %71, label %76, label %72, !dbg !1373

72:                                               ; preds = %69
  %73 = or i32 %70, 1, !dbg !1374
  %74 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 2, i32 noundef %73) #34, !dbg !1375
  %75 = icmp eq i32 %74, -1, !dbg !1376
  br i1 %75, label %76, label %124, !dbg !1377

76:                                               ; preds = %72, %69
  %77 = tail call i32* @__errno_location() #37, !dbg !1378
  %78 = load i32, i32* %77, align 4, !dbg !1378, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %78, metadata !190, metadata !DIExpression()) #34, !dbg !1379
  %79 = call i32 @close(i32 noundef %66) #34, !dbg !1380
  store i32 %78, i32* %77, align 4, !dbg !1381, !tbaa !587
  call void @llvm.dbg.value(metadata i32 -1, metadata !186, metadata !DIExpression()) #34, !dbg !1339
  br label %124, !dbg !1382

80:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %81 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #34, !dbg !1383
  call void @llvm.dbg.value(metadata i32 %81, metadata !1310, metadata !DIExpression()), !dbg !1322
  br label %124, !dbg !1384

82:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %83 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1385
  %84 = load i32, i32* %83, align 8, !dbg !1385
  %85 = icmp sgt i32 %84, -1, !dbg !1385
  br i1 %85, label %94, label %86, !dbg !1385

86:                                               ; preds = %82
  %87 = add nsw i32 %84, 8, !dbg !1385
  store i32 %87, i32* %83, align 8, !dbg !1385
  %88 = icmp ult i32 %84, -7, !dbg !1385
  br i1 %88, label %89, label %94, !dbg !1385

89:                                               ; preds = %86
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1385
  %91 = load i8*, i8** %90, align 8, !dbg !1385
  %92 = sext i32 %84 to i64, !dbg !1385
  %93 = getelementptr inbounds i8, i8* %91, i64 %92, !dbg !1385
  br label %98, !dbg !1385

94:                                               ; preds = %86, %82
  %95 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1385
  %96 = load i8*, i8** %95, align 8, !dbg !1385
  %97 = getelementptr inbounds i8, i8* %96, i64 8, !dbg !1385
  store i8* %97, i8** %95, align 8, !dbg !1385
  br label %98, !dbg !1385

98:                                               ; preds = %94, %89
  %99 = phi i8* [ %93, %89 ], [ %96, %94 ]
  %100 = bitcast i8* %99 to i32*, !dbg !1385
  %101 = load i32, i32* %100, align 8, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %101, metadata !1316, metadata !DIExpression()), !dbg !1386
  %102 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %101) #34, !dbg !1387
  call void @llvm.dbg.value(metadata i32 %102, metadata !1310, metadata !DIExpression()), !dbg !1322
  br label %124, !dbg !1388

103:                                              ; preds = %2
  %104 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1389
  %105 = load i32, i32* %104, align 8, !dbg !1389
  %106 = icmp sgt i32 %105, -1, !dbg !1389
  br i1 %106, label %115, label %107, !dbg !1389

107:                                              ; preds = %103
  %108 = add nsw i32 %105, 8, !dbg !1389
  store i32 %108, i32* %104, align 8, !dbg !1389
  %109 = icmp ult i32 %105, -7, !dbg !1389
  br i1 %109, label %110, label %115, !dbg !1389

110:                                              ; preds = %107
  %111 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1389
  %112 = load i8*, i8** %111, align 8, !dbg !1389
  %113 = sext i32 %105 to i64, !dbg !1389
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !1389
  br label %119, !dbg !1389

115:                                              ; preds = %107, %103
  %116 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1389
  %117 = load i8*, i8** %116, align 8, !dbg !1389
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !1389
  store i8* %118, i8** %116, align 8, !dbg !1389
  br label %119, !dbg !1389

119:                                              ; preds = %115, %110
  %120 = phi i8* [ %114, %110 ], [ %117, %115 ]
  %121 = bitcast i8* %120 to i8**, !dbg !1389
  %122 = load i8*, i8** %121, align 8, !dbg !1389
  call void @llvm.dbg.value(metadata i8* %122, metadata !1320, metadata !DIExpression()), !dbg !1390
  %123 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i8* noundef %122) #34, !dbg !1391
  call void @llvm.dbg.value(metadata i32 %123, metadata !1310, metadata !DIExpression()), !dbg !1322
  br label %124, !dbg !1392

124:                                              ; preds = %76, %72, %64, %56, %55, %80, %98, %119, %21
  %125 = phi i32 [ %123, %119 ], [ %102, %98 ], [ %81, %80 ], [ %25, %21 ], [ %66, %64 ], [ -1, %76 ], [ %66, %72 ], [ %57, %56 ], [ %49, %55 ], !dbg !1393
  call void @llvm.dbg.value(metadata i32 %125, metadata !1310, metadata !DIExpression()), !dbg !1322
  call void @llvm.va_end(i8* nonnull %4), !dbg !1394
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #34, !dbg !1395
  ret i32 %125, !dbg !1396
}

; Function Attrs: nounwind uwtable
define dso_local i64 @full_write(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !1397 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1401, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %1, metadata !1402, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %2, metadata !1403, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 0, metadata !1404, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %1, metadata !1405, metadata !DIExpression()), !dbg !1408
  %4 = icmp sgt i64 %2, 0, !dbg !1409
  br i1 %4, label %5, label %20, !dbg !1410

5:                                                ; preds = %3, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %3 ]
  %7 = phi i8* [ %17, %15 ], [ %1, %3 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !1403, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8* %7, metadata !1405, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %8, metadata !1404, metadata !DIExpression()), !dbg !1408
  %9 = tail call i64 @safe_write(i32 noundef %0, i8* noundef %7, i64 noundef %6) #34, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %9, metadata !1406, metadata !DIExpression()), !dbg !1412
  %10 = icmp slt i64 %9, 0, !dbg !1413
  br i1 %10, label %20, label %11, !dbg !1415

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !1416
  br i1 %12, label %13, label %15, !dbg !1418

13:                                               ; preds = %11
  %14 = tail call i32* @__errno_location() #37, !dbg !1419
  store i32 28, i32* %14, align 4, !dbg !1421, !tbaa !587
  br label %20, !dbg !1422

15:                                               ; preds = %11
  %16 = add nsw i64 %9, %8, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %16, metadata !1404, metadata !DIExpression()), !dbg !1408
  %17 = getelementptr inbounds i8, i8* %7, i64 %9, !dbg !1424
  call void @llvm.dbg.value(metadata i8* %17, metadata !1405, metadata !DIExpression()), !dbg !1408
  %18 = sub nsw i64 %6, %9, !dbg !1425
  call void @llvm.dbg.value(metadata i64 %18, metadata !1403, metadata !DIExpression()), !dbg !1408
  %19 = icmp sgt i64 %18, 0, !dbg !1409
  br i1 %19, label %5, label %20, !dbg !1410

20:                                               ; preds = %15, %5, %3, %13
  %21 = phi i64 [ %8, %13 ], [ 0, %3 ], [ %16, %15 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !1404, metadata !DIExpression()), !dbg !1408
  ret i64 %21, !dbg !1426
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #20 !dbg !1427 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1429, !tbaa !501
  ret i8* %1, !dbg !1430
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @isapipe(i32 noundef %0) local_unnamed_addr #21 !dbg !1431 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1433, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 1, metadata !1434, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i8 1, metadata !1438, metadata !DIExpression()), !dbg !1474
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1475
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #34, !dbg !1475
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1439, metadata !DIExpression()), !dbg !1476
  %4 = call i32 @fstat(i32 noundef %0, %struct.stat* noundef nonnull %2) #34, !dbg !1477
  call void @llvm.dbg.value(metadata i32 %4, metadata !1473, metadata !DIExpression()), !dbg !1474
  %5 = icmp eq i32 %4, 0, !dbg !1478
  br i1 %5, label %6, label %16, !dbg !1480

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1481
  %8 = load i32, i32* %7, align 4, !dbg !1481, !tbaa !1482
  %9 = icmp ult i32 %8, 2, !dbg !1485
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1486
  %11 = load i32, i32* %10, align 8, !dbg !1486
  %12 = and i32 %11, 61440, !dbg !1486
  %13 = icmp eq i32 %12, 4096, !dbg !1486
  %14 = select i1 %9, i1 %13, i1 false, !dbg !1486
  %15 = zext i1 %14 to i32, !dbg !1486
  br label %16, !dbg !1487

16:                                               ; preds = %1, %6
  %17 = phi i32 [ %15, %6 ], [ %4, %1 ], !dbg !1474
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #34, !dbg !1488
  ret i32 %17, !dbg !1488
}

; Function Attrs: nofree nounwind
declare !dbg !1489 noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* nocapture noundef readonly %5, ...) local_unnamed_addr #12 !dbg !1494 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1499, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8** %1, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8* %2, metadata !1501, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8* %3, metadata !1502, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8* %4, metadata !1503, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1504, metadata !DIExpression()), !dbg !1525
  %9 = load i32, i32* @opterr, align 4, !dbg !1526, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %9, metadata !1505, metadata !DIExpression()), !dbg !1525
  store i32 0, i32* @opterr, align 4, !dbg !1527, !tbaa !587
  %10 = icmp eq i32 %0, 2, !dbg !1528
  br i1 %10, label %11, label %18, !dbg !1529

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, i8** noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #34, !dbg !1530
  call void @llvm.dbg.value(metadata i32 %12, metadata !1506, metadata !DIExpression()), !dbg !1531
  switch i32 %12, label %18 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1532

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #34, !dbg !1533
  br label %18, !dbg !1534

14:                                               ; preds = %11
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1535
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #34, !dbg !1535
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1509, metadata !DIExpression()), !dbg !1536
  call void @llvm.va_start(i8* nonnull %15), !dbg !1537
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1538, !tbaa !501
  %17 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1539
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #34, !dbg !1539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %17, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1539, !tbaa.struct !1098
  call void @version_etc_va(%struct._IO_FILE* noundef %16, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %8) #34, !dbg !1539
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #34, !dbg !1539
  call void @exit(i32 noundef 0) #36, !dbg !1540
  unreachable, !dbg !1540

18:                                               ; preds = %13, %11, %6
  store i32 %9, i32* @opterr, align 4, !dbg !1541, !tbaa !587
  store i32 0, i32* @optind, align 4, !dbg !1542, !tbaa !587
  ret void, !dbg !1543
}

; Function Attrs: nounwind
declare !dbg !1544 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* nocapture noundef readonly %6, ...) local_unnamed_addr #12 !dbg !1550 {
  %8 = alloca %"struct.std::__va_list", align 8
  %9 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1554, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i8** %1, metadata !1555, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i8* %2, metadata !1556, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i8* %3, metadata !1557, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i8* %4, metadata !1558, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i1 %5, metadata !1559, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1569
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1560, metadata !DIExpression()), !dbg !1569
  %10 = load i32, i32* @opterr, align 4, !dbg !1570, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %10, metadata !1561, metadata !DIExpression()), !dbg !1569
  store i32 1, i32* @opterr, align 4, !dbg !1571, !tbaa !587
  %11 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.53, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), !dbg !1572
  call void @llvm.dbg.value(metadata i8* %11, metadata !1562, metadata !DIExpression()), !dbg !1569
  %12 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef %1, i8* noundef %11, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #34, !dbg !1573
  call void @llvm.dbg.value(metadata i32 %12, metadata !1563, metadata !DIExpression()), !dbg !1569
  switch i32 %12, label %17 [
    i32 -1, label %21
    i32 104, label %19
    i32 118, label %13
  ], !dbg !1574

13:                                               ; preds = %7
  %14 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1575
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1575
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %8, metadata !1564, metadata !DIExpression()), !dbg !1576
  call void @llvm.va_start(i8* nonnull %14), !dbg !1577
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1578, !tbaa !501
  %16 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !1579
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #34, !dbg !1579
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %16, i8* noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !dbg !1579, !tbaa.struct !1098
  call void @version_etc_va(%struct._IO_FILE* noundef %15, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %9) #34, !dbg !1579
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #34, !dbg !1579
  call void @exit(i32 noundef 0) #36, !dbg !1580
  unreachable, !dbg !1580

17:                                               ; preds = %7
  %18 = load volatile i32, i32* @exit_failure, align 4, !dbg !1581, !tbaa !587
  br label %19, !dbg !1582

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %7 ]
  tail call void %6(i32 noundef %20) #34, !dbg !1583
  br label %21, !dbg !1584

21:                                               ; preds = %19, %7
  store i32 %10, i32* @opterr, align 4, !dbg !1584, !tbaa !587
  ret void, !dbg !1585
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pipe2_safer(i32* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !1586 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1588, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 %1, metadata !1589, metadata !DIExpression()), !dbg !1599
  %3 = tail call i32 @rpl_pipe2(i32* noundef %0, i32 noundef %1) #34, !dbg !1600
  %4 = icmp eq i32 %3, 0, !dbg !1601
  br i1 %4, label %5, label %21, !dbg !1602

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 0, metadata !1590, metadata !DIExpression()), !dbg !1603
  %6 = load i32, i32* %0, align 4, !dbg !1604, !tbaa !587
  %7 = tail call i32 @fd_safer_flag(i32 noundef %6, i32 noundef %1) #34, !dbg !1605
  store i32 %7, i32* %0, align 4, !dbg !1606, !tbaa !587
  %8 = icmp slt i32 %7, 0, !dbg !1607
  br i1 %8, label %9, label %16, !dbg !1608

9:                                                ; preds = %16, %5
  %10 = phi i64 [ 1, %5 ], [ 0, %16 ]
  %11 = tail call i32* @__errno_location() #37, !dbg !1609
  %12 = load i32, i32* %11, align 4, !dbg !1609, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %12, metadata !1594, metadata !DIExpression()), !dbg !1610
  %13 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !1611
  %14 = load i32, i32* %13, align 4, !dbg !1611, !tbaa !587
  %15 = tail call i32 @close(i32 noundef %14) #34, !dbg !1612
  store i32 %12, i32* %11, align 4, !dbg !1613, !tbaa !587
  br label %21

16:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64 1, metadata !1590, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 1, metadata !1590, metadata !DIExpression()), !dbg !1603
  %17 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1604
  %18 = load i32, i32* %17, align 4, !dbg !1604, !tbaa !587
  %19 = tail call i32 @fd_safer_flag(i32 noundef %18, i32 noundef %1) #34, !dbg !1605
  store i32 %19, i32* %17, align 4, !dbg !1606, !tbaa !587
  %20 = icmp slt i32 %19, 0, !dbg !1607
  br i1 %20, label %9, label %21, !dbg !1608

21:                                               ; preds = %9, %16, %2
  %22 = phi i32 [ -1, %2 ], [ -1, %9 ], [ 0, %16 ], !dbg !1599
  ret i32 %22, !dbg !1614
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #22 !dbg !1615 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1617, metadata !DIExpression()), !dbg !1620
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #35, !dbg !1621
  call void @llvm.dbg.value(metadata i8* %2, metadata !1618, metadata !DIExpression()), !dbg !1620
  %3 = icmp eq i8* %2, null, !dbg !1622
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1622
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1622
  call void @llvm.dbg.value(metadata i8* %5, metadata !1619, metadata !DIExpression()), !dbg !1620
  %6 = ptrtoint i8* %5 to i64, !dbg !1623
  %7 = ptrtoint i8* %0 to i64, !dbg !1623
  %8 = sub i64 %6, %7, !dbg !1623
  %9 = icmp sgt i64 %8, 6, !dbg !1625
  br i1 %9, label %10, label %19, !dbg !1626

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1627
  call void @llvm.dbg.value(metadata i8* %11, metadata !1628, metadata !DIExpression()) #34, !dbg !1635
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), metadata !1633, metadata !DIExpression()) #34, !dbg !1635
  call void @llvm.dbg.value(metadata i64 7, metadata !1634, metadata !DIExpression()) #34, !dbg !1635
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), i64 7) #34, !dbg !1637
  %13 = icmp eq i32 %12, 0, !dbg !1638
  br i1 %13, label %14, label %19, !dbg !1639

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1617, metadata !DIExpression()), !dbg !1620
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.61, i64 0, i64 0), i64 noundef 3) #35, !dbg !1640
  %16 = icmp eq i32 %15, 0, !dbg !1643
  %17 = select i1 %16, i64 3, i64 0, !dbg !1644
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1644
  br label %19, !dbg !1644

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1620
  call void @llvm.dbg.value(metadata i8* %21, metadata !1619, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8* %20, metadata !1617, metadata !DIExpression()), !dbg !1620
  store i8* %20, i8** @program_name, align 8, !dbg !1645, !tbaa !501
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1646, !tbaa !501
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1647, !tbaa !501
  ret void, !dbg !1648
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !218 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !225, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %1, metadata !226, metadata !DIExpression()), !dbg !1649
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #34, !dbg !1650
  call void @llvm.dbg.value(metadata i8* %5, metadata !227, metadata !DIExpression()), !dbg !1649
  %6 = icmp eq i8* %5, %0, !dbg !1651
  br i1 %6, label %7, label %17, !dbg !1653

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1654
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #34, !dbg !1654
  %10 = bitcast i64* %4 to i8*, !dbg !1655
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !1655
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !233, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1657, metadata !DIExpression()) #34, !dbg !1664
  call void @llvm.dbg.value(metadata i8* %10, metadata !1666, metadata !DIExpression()) #34, !dbg !1673
  call void @llvm.dbg.value(metadata i32 0, metadata !1671, metadata !DIExpression()) #34, !dbg !1673
  call void @llvm.dbg.value(metadata i64 8, metadata !1672, metadata !DIExpression()) #34, !dbg !1673
  store i64 0, i64* %4, align 8, !dbg !1675
  call void @llvm.dbg.value(metadata i32* %3, metadata !228, metadata !DIExpression(DW_OP_deref)), !dbg !1649
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #34, !dbg !1676
  %12 = icmp eq i64 %11, 2, !dbg !1678
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !228, metadata !DIExpression()), !dbg !1649
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1679
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1649
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !1680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #34, !dbg !1680
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1649
  ret i8* %18, !dbg !1680
}

; Function Attrs: nounwind
declare !dbg !1681 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1687 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1692, metadata !DIExpression()), !dbg !1695
  %2 = tail call i32* @__errno_location() #37, !dbg !1696
  %3 = load i32, i32* %2, align 4, !dbg !1696, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %3, metadata !1693, metadata !DIExpression()), !dbg !1695
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1697
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1697
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1697
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !1698
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1698
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1694, metadata !DIExpression()), !dbg !1695
  store i32 %3, i32* %2, align 4, !dbg !1699, !tbaa !587
  ret %struct.quoting_options* %8, !dbg !1700
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #20 !dbg !1701 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1707, metadata !DIExpression()), !dbg !1708
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1709
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1709
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1710
  %5 = load i32, i32* %4, align 8, !dbg !1710, !tbaa !1711
  ret i32 %5, !dbg !1713
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #16 !dbg !1714 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1718, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i32 %1, metadata !1719, metadata !DIExpression()), !dbg !1720
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1721
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1721
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1722
  store i32 %1, i32* %5, align 8, !dbg !1723, !tbaa !1711
  ret void, !dbg !1724
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !1725 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1729, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i8 %1, metadata !1730, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i32 %2, metadata !1731, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i8 %1, metadata !1732, metadata !DIExpression()), !dbg !1737
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1738
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1738
  %6 = lshr i8 %1, 5, !dbg !1739
  %7 = zext i8 %6 to i64, !dbg !1739
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1740
  call void @llvm.dbg.value(metadata i32* %8, metadata !1733, metadata !DIExpression()), !dbg !1737
  %9 = and i8 %1, 31, !dbg !1741
  %10 = zext i8 %9 to i32, !dbg !1741
  call void @llvm.dbg.value(metadata i32 %10, metadata !1735, metadata !DIExpression()), !dbg !1737
  %11 = load i32, i32* %8, align 4, !dbg !1742, !tbaa !587
  %12 = lshr i32 %11, %10, !dbg !1743
  %13 = and i32 %12, 1, !dbg !1744
  call void @llvm.dbg.value(metadata i32 %13, metadata !1736, metadata !DIExpression()), !dbg !1737
  %14 = and i32 %2, 1, !dbg !1745
  %15 = xor i32 %13, %14, !dbg !1746
  %16 = shl i32 %15, %10, !dbg !1747
  %17 = xor i32 %16, %11, !dbg !1748
  store i32 %17, i32* %8, align 4, !dbg !1748, !tbaa !587
  ret i32 %13, !dbg !1749
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1750 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1754, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i32 %1, metadata !1755, metadata !DIExpression()), !dbg !1757
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1758
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1760
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1754, metadata !DIExpression()), !dbg !1757
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1761
  %6 = load i32, i32* %5, align 4, !dbg !1761, !tbaa !1762
  call void @llvm.dbg.value(metadata i32 %6, metadata !1756, metadata !DIExpression()), !dbg !1757
  store i32 %1, i32* %5, align 4, !dbg !1763, !tbaa !1762
  ret i32 %6, !dbg !1764
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1765 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1769, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8* %1, metadata !1770, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8* %2, metadata !1771, metadata !DIExpression()), !dbg !1772
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1773
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1775
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1769, metadata !DIExpression()), !dbg !1772
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1776
  store i32 10, i32* %6, align 8, !dbg !1777, !tbaa !1711
  %7 = icmp ne i8* %1, null, !dbg !1778
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1780
  br i1 %9, label %11, label %10, !dbg !1780

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !1781
  unreachable, !dbg !1781

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1782
  store i8* %1, i8** %12, align 8, !dbg !1783, !tbaa !1784
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1785
  store i8* %2, i8** %13, align 8, !dbg !1786, !tbaa !1787
  ret void, !dbg !1788
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1789 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1793, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 %1, metadata !1794, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i8* %2, metadata !1795, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 %3, metadata !1796, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1797, metadata !DIExpression()), !dbg !1801
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1802
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1802
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1798, metadata !DIExpression()), !dbg !1801
  %8 = tail call i32* @__errno_location() #37, !dbg !1803
  %9 = load i32, i32* %8, align 4, !dbg !1803, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %9, metadata !1799, metadata !DIExpression()), !dbg !1801
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1804
  %11 = load i32, i32* %10, align 8, !dbg !1804, !tbaa !1711
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1805
  %13 = load i32, i32* %12, align 4, !dbg !1805, !tbaa !1762
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1806
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1807
  %16 = load i8*, i8** %15, align 8, !dbg !1807, !tbaa !1784
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1808
  %18 = load i8*, i8** %17, align 8, !dbg !1808, !tbaa !1787
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %19, metadata !1800, metadata !DIExpression()), !dbg !1801
  store i32 %9, i32* %8, align 4, !dbg !1810, !tbaa !587
  ret i64 %19, !dbg !1811
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1812 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1818, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %1, metadata !1819, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* %2, metadata !1820, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %3, metadata !1821, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 %4, metadata !1822, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 %5, metadata !1823, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32* %6, metadata !1824, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* %7, metadata !1825, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* %8, metadata !1826, metadata !DIExpression()), !dbg !1880
  %17 = tail call i64 @__ctype_get_mb_cur_max() #34, !dbg !1881
  %18 = icmp eq i64 %17, 1, !dbg !1882
  call void @llvm.dbg.value(metadata i1 %18, metadata !1827, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1880
  call void @llvm.dbg.value(metadata i64 0, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 0, metadata !1829, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* null, metadata !1830, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 0, metadata !1831, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 0, metadata !1832, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 %5, metadata !1833, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1880
  call void @llvm.dbg.value(metadata i8 0, metadata !1834, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 1, metadata !1835, metadata !DIExpression()), !dbg !1880
  %19 = and i32 %5, 2, !dbg !1883
  %20 = icmp ne i32 %19, 0, !dbg !1883
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
  br label %36, !dbg !1883

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1884
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1885
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1886
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1819, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1835, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1834, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1833, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1832, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %43, metadata !1831, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* %42, metadata !1830, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %41, metadata !1829, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 0, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %40, metadata !1821, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* %39, metadata !1826, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* %38, metadata !1825, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 %37, metadata !1822, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.label(metadata !1873), !dbg !1887
  call void @llvm.dbg.value(metadata i8 0, metadata !1836, metadata !DIExpression()), !dbg !1880
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
  ], !dbg !1888

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1833, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 5, metadata !1822, metadata !DIExpression()), !dbg !1880
  br label %111, !dbg !1889

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1833, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 5, metadata !1822, metadata !DIExpression()), !dbg !1880
  br i1 %45, label %111, label %51, !dbg !1889

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1890
  br i1 %52, label %111, label %53, !dbg !1894

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1890, !tbaa !596
  br label %111, !dbg !1890

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), metadata !309, metadata !DIExpression()) #34, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %37, metadata !310, metadata !DIExpression()) #34, !dbg !1895
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), i32 noundef 5) #34, !dbg !1899
  call void @llvm.dbg.value(metadata i8* %55, metadata !311, metadata !DIExpression()) #34, !dbg !1895
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), !dbg !1900
  br i1 %56, label %57, label %66, !dbg !1902

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #34, !dbg !1903
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #34, !dbg !1904
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !313, metadata !DIExpression()) #34, !dbg !1905
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1906, metadata !DIExpression()) #34, !dbg !1912
  call void @llvm.dbg.value(metadata i8* %23, metadata !1914, metadata !DIExpression()) #34, !dbg !1919
  call void @llvm.dbg.value(metadata i32 0, metadata !1917, metadata !DIExpression()) #34, !dbg !1919
  call void @llvm.dbg.value(metadata i64 8, metadata !1918, metadata !DIExpression()) #34, !dbg !1919
  store i64 0, i64* %13, align 8, !dbg !1921
  call void @llvm.dbg.value(metadata i32* %12, metadata !312, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1895
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #34, !dbg !1922
  %59 = icmp eq i64 %58, 3, !dbg !1924
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !312, metadata !DIExpression()) #34, !dbg !1895
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1925
  %63 = icmp eq i32 %37, 9, !dbg !1925
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !1925
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1925
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #34, !dbg !1926
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #34, !dbg !1926
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1895
  call void @llvm.dbg.value(metadata i8* %67, metadata !1825, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), metadata !309, metadata !DIExpression()) #34, !dbg !1927
  call void @llvm.dbg.value(metadata i32 %37, metadata !310, metadata !DIExpression()) #34, !dbg !1927
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), i32 noundef 5) #34, !dbg !1929
  call void @llvm.dbg.value(metadata i8* %68, metadata !311, metadata !DIExpression()) #34, !dbg !1927
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !1930
  br i1 %69, label %70, label %79, !dbg !1931

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #34, !dbg !1932
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #34, !dbg !1933
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !313, metadata !DIExpression()) #34, !dbg !1934
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1906, metadata !DIExpression()) #34, !dbg !1935
  call void @llvm.dbg.value(metadata i8* %26, metadata !1914, metadata !DIExpression()) #34, !dbg !1937
  call void @llvm.dbg.value(metadata i32 0, metadata !1917, metadata !DIExpression()) #34, !dbg !1937
  call void @llvm.dbg.value(metadata i64 8, metadata !1918, metadata !DIExpression()) #34, !dbg !1937
  store i64 0, i64* %11, align 8, !dbg !1939
  call void @llvm.dbg.value(metadata i32* %10, metadata !312, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1927
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #34, !dbg !1940
  %72 = icmp eq i64 %71, 3, !dbg !1941
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !312, metadata !DIExpression()) #34, !dbg !1927
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1942
  %76 = icmp eq i32 %37, 9, !dbg !1942
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !1942
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1942
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #34, !dbg !1943
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #34, !dbg !1943
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1826, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* %80, metadata !1825, metadata !DIExpression()), !dbg !1880
  br i1 %45, label %97, label %82, !dbg !1944

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1837, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 0, metadata !1828, metadata !DIExpression()), !dbg !1880
  %83 = load i8, i8* %80, align 1, !dbg !1946, !tbaa !596
  %84 = icmp eq i8 %83, 0, !dbg !1948
  br i1 %84, label %97, label %85, !dbg !1948

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1837, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 %88, metadata !1828, metadata !DIExpression()), !dbg !1880
  %89 = icmp ult i64 %88, %48, !dbg !1949
  br i1 %89, label %90, label %92, !dbg !1952

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1949
  store i8 %86, i8* %91, align 1, !dbg !1949, !tbaa !596
  br label %92, !dbg !1949

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %93, metadata !1828, metadata !DIExpression()), !dbg !1880
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1953
  call void @llvm.dbg.value(metadata i8* %94, metadata !1837, metadata !DIExpression()), !dbg !1945
  %95 = load i8, i8* %94, align 1, !dbg !1946, !tbaa !596
  %96 = icmp eq i8 %95, 0, !dbg !1948
  br i1 %96, label %97, label %85, !dbg !1948, !llvm.loop !1954

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1956
  call void @llvm.dbg.value(metadata i64 %98, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 1, metadata !1832, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* %81, metadata !1830, metadata !DIExpression()), !dbg !1880
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #35, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %99, metadata !1831, metadata !DIExpression()), !dbg !1880
  br label %111, !dbg !1958

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1832, metadata !DIExpression()), !dbg !1880
  br label %102, !dbg !1959

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1833, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1832, metadata !DIExpression()), !dbg !1880
  br i1 %45, label %102, label %105, !dbg !1960

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1833, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1832, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 2, metadata !1822, metadata !DIExpression()), !dbg !1880
  br label %111, !dbg !1961

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1833, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1832, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 2, metadata !1822, metadata !DIExpression()), !dbg !1880
  br i1 %45, label %111, label %105, !dbg !1961

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1962
  br i1 %107, label %111, label %108, !dbg !1966

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1962, !tbaa !596
  br label %111, !dbg !1962

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1833, metadata !DIExpression()), !dbg !1880
  br label %111, !dbg !1967

110:                                              ; preds = %36
  call void @abort() #36, !dbg !1968
  unreachable, !dbg !1968

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1956
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %102 ], !dbg !1880
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1880
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1833, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1832, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %117, metadata !1831, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* %116, metadata !1830, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %115, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* %114, metadata !1826, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* %113, metadata !1825, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 %112, metadata !1822, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 0, metadata !1842, metadata !DIExpression()), !dbg !1969
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
  br label %132, !dbg !1970

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1956
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1884
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1969
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1819, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %139, metadata !1842, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1835, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1834, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %135, metadata !1829, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %134, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %133, metadata !1821, metadata !DIExpression()), !dbg !1880
  %141 = icmp eq i64 %133, -1, !dbg !1971
  br i1 %141, label %142, label %146, !dbg !1972

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1973
  %144 = load i8, i8* %143, align 1, !dbg !1973, !tbaa !596
  %145 = icmp eq i8 %144, 0, !dbg !1974
  br i1 %145, label %596, label %148, !dbg !1975

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1976
  br i1 %147, label %596, label %148, !dbg !1975

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1844, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 0, metadata !1847, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 0, metadata !1848, metadata !DIExpression()), !dbg !1977
  br i1 %123, label %149, label %163, !dbg !1978

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1980
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1981
  br i1 %151, label %152, label %154, !dbg !1981

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %153, metadata !1821, metadata !DIExpression()), !dbg !1880
  br label %154, !dbg !1983

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1983
  call void @llvm.dbg.value(metadata i64 %155, metadata !1821, metadata !DIExpression()), !dbg !1880
  %156 = icmp ugt i64 %150, %155, !dbg !1984
  br i1 %156, label %163, label %157, !dbg !1985

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1986
  call void @llvm.dbg.value(metadata i8* %158, metadata !1987, metadata !DIExpression()) #34, !dbg !1992
  call void @llvm.dbg.value(metadata i8* %116, metadata !1990, metadata !DIExpression()) #34, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %117, metadata !1991, metadata !DIExpression()) #34, !dbg !1992
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #34, !dbg !1994
  %160 = icmp ne i32 %159, 0, !dbg !1995
  %161 = or i1 %160, %125, !dbg !1996
  %162 = xor i1 %160, true, !dbg !1996
  br i1 %161, label %163, label %647, !dbg !1996

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1844, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %164, metadata !1821, metadata !DIExpression()), !dbg !1880
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1997
  %167 = load i8, i8* %166, align 1, !dbg !1997, !tbaa !596
  call void @llvm.dbg.value(metadata i8 %167, metadata !1849, metadata !DIExpression()), !dbg !1977
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
  ], !dbg !1998

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1999

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2000

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1847, metadata !DIExpression()), !dbg !1977
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2004
  br i1 %171, label %188, label %172, !dbg !2004

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2006
  br i1 %173, label %174, label %176, !dbg !2010

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2006
  store i8 39, i8* %175, align 1, !dbg !2006, !tbaa !596
  br label %176, !dbg !2006

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %177, metadata !1828, metadata !DIExpression()), !dbg !1880
  %178 = icmp ult i64 %177, %140, !dbg !2011
  br i1 %178, label %179, label %181, !dbg !2014

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2011
  store i8 36, i8* %180, align 1, !dbg !2011, !tbaa !596
  br label %181, !dbg !2011

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %182, metadata !1828, metadata !DIExpression()), !dbg !1880
  %183 = icmp ult i64 %182, %140, !dbg !2015
  br i1 %183, label %184, label %186, !dbg !2018

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2015
  store i8 39, i8* %185, align 1, !dbg !2015, !tbaa !596
  br label %186, !dbg !2015

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %187, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 1, metadata !1836, metadata !DIExpression()), !dbg !1880
  br label %188, !dbg !2019

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1880
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %189, metadata !1828, metadata !DIExpression()), !dbg !1880
  %191 = icmp ult i64 %189, %140, !dbg !2020
  br i1 %191, label %192, label %194, !dbg !2023

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2020
  store i8 92, i8* %193, align 1, !dbg !2020, !tbaa !596
  br label %194, !dbg !2020

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %195, metadata !1828, metadata !DIExpression()), !dbg !1880
  br i1 %120, label %196, label %499, !dbg !2024

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2026
  %198 = icmp ult i64 %197, %164, !dbg !2027
  br i1 %198, label %199, label %456, !dbg !2028

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2029
  %201 = load i8, i8* %200, align 1, !dbg !2029, !tbaa !596
  %202 = add i8 %201, -48, !dbg !2030
  %203 = icmp ult i8 %202, 10, !dbg !2030
  br i1 %203, label %204, label %456, !dbg !2030

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2031
  br i1 %205, label %206, label %208, !dbg !2035

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2031
  store i8 48, i8* %207, align 1, !dbg !2031, !tbaa !596
  br label %208, !dbg !2031

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %209, metadata !1828, metadata !DIExpression()), !dbg !1880
  %210 = icmp ult i64 %209, %140, !dbg !2036
  br i1 %210, label %211, label %213, !dbg !2039

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2036
  store i8 48, i8* %212, align 1, !dbg !2036, !tbaa !596
  br label %213, !dbg !2036

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %214, metadata !1828, metadata !DIExpression()), !dbg !1880
  br label %456, !dbg !2040

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2041

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2042

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2043

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2045

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2047
  %221 = icmp ult i64 %220, %164, !dbg !2048
  br i1 %221, label %222, label %456, !dbg !2049

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2050
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2051
  %225 = load i8, i8* %224, align 1, !dbg !2051, !tbaa !596
  %226 = icmp eq i8 %225, 63, !dbg !2052
  br i1 %226, label %227, label %456, !dbg !2053

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2054
  %229 = load i8, i8* %228, align 1, !dbg !2054, !tbaa !596
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
  ], !dbg !2055

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2056

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1849, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %220, metadata !1842, metadata !DIExpression()), !dbg !1969
  %232 = icmp ult i64 %134, %140, !dbg !2058
  br i1 %232, label %233, label %235, !dbg !2061

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2058
  store i8 63, i8* %234, align 1, !dbg !2058, !tbaa !596
  br label %235, !dbg !2058

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %236, metadata !1828, metadata !DIExpression()), !dbg !1880
  %237 = icmp ult i64 %236, %140, !dbg !2062
  br i1 %237, label %238, label %240, !dbg !2065

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2062
  store i8 34, i8* %239, align 1, !dbg !2062, !tbaa !596
  br label %240, !dbg !2062

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %241, metadata !1828, metadata !DIExpression()), !dbg !1880
  %242 = icmp ult i64 %241, %140, !dbg !2066
  br i1 %242, label %243, label %245, !dbg !2069

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2066
  store i8 34, i8* %244, align 1, !dbg !2066, !tbaa !596
  br label %245, !dbg !2066

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %246, metadata !1828, metadata !DIExpression()), !dbg !1880
  %247 = icmp ult i64 %246, %140, !dbg !2070
  br i1 %247, label %248, label %250, !dbg !2073

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2070
  store i8 63, i8* %249, align 1, !dbg !2070, !tbaa !596
  br label %250, !dbg !2070

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %251, metadata !1828, metadata !DIExpression()), !dbg !1880
  br label %456, !dbg !2074

252:                                              ; preds = %163
  br label %263, !dbg !2075

253:                                              ; preds = %163
  br label %263, !dbg !2076

254:                                              ; preds = %163
  br label %261, !dbg !2077

255:                                              ; preds = %163
  br label %261, !dbg !2078

256:                                              ; preds = %163
  br label %263, !dbg !2079

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2080

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2081

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2084

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2086

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2087
  call void @llvm.dbg.label(metadata !1874), !dbg !2088
  br i1 %128, label %263, label %638, !dbg !2089

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2087
  call void @llvm.dbg.label(metadata !1876), !dbg !2091
  br i1 %118, label %510, label %467, !dbg !2092

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2093

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2094, !tbaa !596
  %268 = icmp eq i8 %267, 0, !dbg !2096
  br i1 %268, label %269, label %456, !dbg !2097

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2098
  br i1 %270, label %271, label %456, !dbg !2100

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1848, metadata !DIExpression()), !dbg !1977
  br label %272, !dbg !2101

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1848, metadata !DIExpression()), !dbg !1977
  br i1 %126, label %274, label %456, !dbg !2102

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2104

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1834, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 1, metadata !1848, metadata !DIExpression()), !dbg !1977
  br i1 %126, label %276, label %456, !dbg !2105

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2106

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2109
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2111
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2111
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %282, metadata !1819, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %281, metadata !1829, metadata !DIExpression()), !dbg !1880
  %283 = icmp ult i64 %134, %282, !dbg !2112
  br i1 %283, label %284, label %286, !dbg !2115

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2112
  store i8 39, i8* %285, align 1, !dbg !2112, !tbaa !596
  br label %286, !dbg !2112

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2115
  call void @llvm.dbg.value(metadata i64 %287, metadata !1828, metadata !DIExpression()), !dbg !1880
  %288 = icmp ult i64 %287, %282, !dbg !2116
  br i1 %288, label %289, label %291, !dbg !2119

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2116
  store i8 92, i8* %290, align 1, !dbg !2116, !tbaa !596
  br label %291, !dbg !2116

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %292, metadata !1828, metadata !DIExpression()), !dbg !1880
  %293 = icmp ult i64 %292, %282, !dbg !2120
  br i1 %293, label %294, label %296, !dbg !2123

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2120
  store i8 39, i8* %295, align 1, !dbg !2120, !tbaa !596
  br label %296, !dbg !2120

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %297, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 0, metadata !1836, metadata !DIExpression()), !dbg !1880
  br label %456, !dbg !2124

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2125

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1850, metadata !DIExpression()), !dbg !2126
  %300 = tail call i16** @__ctype_b_loc() #37, !dbg !2127
  %301 = load i16*, i16** %300, align 8, !dbg !2127, !tbaa !501
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2127
  %304 = load i16, i16* %303, align 2, !dbg !2127, !tbaa !621
  %305 = and i16 %304, 16384, !dbg !2127
  %306 = icmp ne i16 %305, 0, !dbg !2129
  call void @llvm.dbg.value(metadata i8 poison, metadata !1853, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i64 %349, metadata !1850, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i64 %312, metadata !1821, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i1 %350, metadata !1848, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1977
  br label %352, !dbg !2130

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2131
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1854, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1906, metadata !DIExpression()) #34, !dbg !2133
  call void @llvm.dbg.value(metadata i8* %32, metadata !1914, metadata !DIExpression()) #34, !dbg !2135
  call void @llvm.dbg.value(metadata i32 0, metadata !1917, metadata !DIExpression()) #34, !dbg !2135
  call void @llvm.dbg.value(metadata i64 8, metadata !1918, metadata !DIExpression()) #34, !dbg !2135
  store i64 0, i64* %14, align 8, !dbg !2137
  call void @llvm.dbg.value(metadata i64 0, metadata !1850, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8 1, metadata !1853, metadata !DIExpression()), !dbg !2126
  %308 = icmp eq i64 %164, -1, !dbg !2138
  br i1 %308, label %309, label %311, !dbg !2140

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %310, metadata !1821, metadata !DIExpression()), !dbg !1880
  br label %311, !dbg !2142

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1977
  call void @llvm.dbg.value(metadata i64 %312, metadata !1821, metadata !DIExpression()), !dbg !1880
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2143
  %313 = sub i64 %312, %139, !dbg !2144
  call void @llvm.dbg.value(metadata i32* %16, metadata !1857, metadata !DIExpression(DW_OP_deref)), !dbg !2145
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #34, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %314, metadata !1861, metadata !DIExpression()), !dbg !2145
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2147

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1850, metadata !DIExpression()), !dbg !2126
  %316 = icmp ugt i64 %312, %139, !dbg !2148
  br i1 %316, label %319, label %317, !dbg !2150

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1853, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i64 0, metadata !1850, metadata !DIExpression()), !dbg !2126
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2151
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2152
  call void @llvm.dbg.value(metadata i64 %349, metadata !1850, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i64 %312, metadata !1821, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i1 %350, metadata !1848, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1977
  br label %352, !dbg !2130

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1853, metadata !DIExpression()), !dbg !2126
  br label %346, !dbg !2153

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1850, metadata !DIExpression()), !dbg !2126
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2155
  %323 = load i8, i8* %322, align 1, !dbg !2155, !tbaa !596
  %324 = icmp eq i8 %323, 0, !dbg !2150
  br i1 %324, label %348, label %325, !dbg !2156

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %326, metadata !1850, metadata !DIExpression()), !dbg !2126
  %327 = add i64 %326, %139, !dbg !2158
  %328 = icmp eq i64 %326, %313, !dbg !2148
  br i1 %328, label %348, label %319, !dbg !2150, !llvm.loop !2159

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2160
  call void @llvm.dbg.value(metadata i64 1, metadata !1862, metadata !DIExpression()), !dbg !2161
  br i1 %331, label %332, label %340, !dbg !2160

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1862, metadata !DIExpression()), !dbg !2161
  %334 = add i64 %333, %139, !dbg !2162
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2164
  %336 = load i8, i8* %335, align 1, !dbg !2164, !tbaa !596
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2165

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %338, metadata !1862, metadata !DIExpression()), !dbg !2161
  %339 = icmp eq i64 %338, %314, !dbg !2167
  br i1 %339, label %340, label %332, !dbg !2168, !llvm.loop !2169

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2171, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %341, metadata !1857, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32 %341, metadata !2173, metadata !DIExpression()) #34, !dbg !2181
  %342 = call i32 @iswprint(i32 noundef %341) #34, !dbg !2183
  %343 = icmp ne i32 %342, 0, !dbg !2184
  call void @llvm.dbg.value(metadata i8 poison, metadata !1853, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i64 %314, metadata !1850, metadata !DIExpression()), !dbg !2126
  br label %348, !dbg !2185

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1853, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i64 0, metadata !1850, metadata !DIExpression()), !dbg !2126
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2151
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2152
  call void @llvm.dbg.label(metadata !1879), !dbg !2186
  %345 = select i1 %118, i32 4, i32 2, !dbg !2187
  br label %643, !dbg !2187

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1853, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i64 0, metadata !1850, metadata !DIExpression()), !dbg !2126
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2151
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2152
  call void @llvm.dbg.value(metadata i64 %349, metadata !1850, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i64 %312, metadata !1821, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i1 %350, metadata !1848, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1977
  br label %352, !dbg !2130

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1853, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i64 0, metadata !1850, metadata !DIExpression()), !dbg !2126
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2151
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2152
  call void @llvm.dbg.value(metadata i64 %349, metadata !1850, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i64 %312, metadata !1821, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i1 %350, metadata !1848, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1977
  %351 = icmp ugt i64 %349, 1, !dbg !2189
  br i1 %351, label %357, label %352, !dbg !2130

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2190
  br i1 %356, label %456, label %357, !dbg !2190

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %361, metadata !1870, metadata !DIExpression()), !dbg !2192
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2193

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1880
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1969
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2194
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1977
  call void @llvm.dbg.value(metadata i8 %369, metadata !1849, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %368, metadata !1847, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 poison, metadata !1844, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %366, metadata !1842, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %364, metadata !1828, metadata !DIExpression()), !dbg !1880
  br i1 %362, label %414, label %370, !dbg !2195

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2200

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1847, metadata !DIExpression()), !dbg !1977
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2203
  br i1 %372, label %389, label %373, !dbg !2203

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2205
  br i1 %374, label %375, label %377, !dbg !2209

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2205
  store i8 39, i8* %376, align 1, !dbg !2205, !tbaa !596
  br label %377, !dbg !2205

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %378, metadata !1828, metadata !DIExpression()), !dbg !1880
  %379 = icmp ult i64 %378, %140, !dbg !2210
  br i1 %379, label %380, label %382, !dbg !2213

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2210
  store i8 36, i8* %381, align 1, !dbg !2210, !tbaa !596
  br label %382, !dbg !2210

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %383, metadata !1828, metadata !DIExpression()), !dbg !1880
  %384 = icmp ult i64 %383, %140, !dbg !2214
  br i1 %384, label %385, label %387, !dbg !2217

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2214
  store i8 39, i8* %386, align 1, !dbg !2214, !tbaa !596
  br label %387, !dbg !2214

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %388, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 1, metadata !1836, metadata !DIExpression()), !dbg !1880
  br label %389, !dbg !2218

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1880
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %390, metadata !1828, metadata !DIExpression()), !dbg !1880
  %392 = icmp ult i64 %390, %140, !dbg !2219
  br i1 %392, label %393, label %395, !dbg !2222

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2219
  store i8 92, i8* %394, align 1, !dbg !2219, !tbaa !596
  br label %395, !dbg !2219

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %396, metadata !1828, metadata !DIExpression()), !dbg !1880
  %397 = icmp ult i64 %396, %140, !dbg !2223
  br i1 %397, label %398, label %402, !dbg !2226

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2223
  %400 = or i8 %399, 48, !dbg !2223
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2223
  store i8 %400, i8* %401, align 1, !dbg !2223, !tbaa !596
  br label %402, !dbg !2223

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %403, metadata !1828, metadata !DIExpression()), !dbg !1880
  %404 = icmp ult i64 %403, %140, !dbg !2227
  br i1 %404, label %405, label %410, !dbg !2230

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2227
  %407 = and i8 %406, 7, !dbg !2227
  %408 = or i8 %407, 48, !dbg !2227
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2227
  store i8 %408, i8* %409, align 1, !dbg !2227, !tbaa !596
  br label %410, !dbg !2227

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %411, metadata !1828, metadata !DIExpression()), !dbg !1880
  %412 = and i8 %369, 7, !dbg !2231
  %413 = or i8 %412, 48, !dbg !2232
  call void @llvm.dbg.value(metadata i8 %413, metadata !1849, metadata !DIExpression()), !dbg !1977
  br label %421, !dbg !2233

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2234

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2235
  br i1 %416, label %417, label %419, !dbg !2240

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2235
  store i8 92, i8* %418, align 1, !dbg !2235, !tbaa !596
  br label %419, !dbg !2235

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %420, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 0, metadata !1844, metadata !DIExpression()), !dbg !1977
  br label %421, !dbg !2241

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1880
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1977
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1977
  call void @llvm.dbg.value(metadata i8 %426, metadata !1849, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %425, metadata !1847, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 poison, metadata !1844, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %422, metadata !1828, metadata !DIExpression()), !dbg !1880
  %427 = add i64 %366, 1, !dbg !2242
  %428 = icmp ugt i64 %361, %427, !dbg !2244
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2245

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2246
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2246
  br i1 %432, label %433, label %444, !dbg !2246

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2249
  br i1 %434, label %435, label %437, !dbg !2253

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2249
  store i8 39, i8* %436, align 1, !dbg !2249, !tbaa !596
  br label %437, !dbg !2249

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %438, metadata !1828, metadata !DIExpression()), !dbg !1880
  %439 = icmp ult i64 %438, %140, !dbg !2254
  br i1 %439, label %440, label %442, !dbg !2257

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2254
  store i8 39, i8* %441, align 1, !dbg !2254, !tbaa !596
  br label %442, !dbg !2254

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %443, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 0, metadata !1836, metadata !DIExpression()), !dbg !1880
  br label %444, !dbg !2258

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2259
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %445, metadata !1828, metadata !DIExpression()), !dbg !1880
  %447 = icmp ult i64 %445, %140, !dbg !2260
  br i1 %447, label %448, label %450, !dbg !2263

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2260
  store i8 %426, i8* %449, align 1, !dbg !2260, !tbaa !596
  br label %450, !dbg !2260

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %451, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %427, metadata !1842, metadata !DIExpression()), !dbg !1969
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2264
  %453 = load i8, i8* %452, align 1, !dbg !2264, !tbaa !596
  call void @llvm.dbg.value(metadata i8 %453, metadata !1849, metadata !DIExpression()), !dbg !1977
  br label %363, !dbg !2265, !llvm.loop !2266

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1849, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i1 %358, metadata !1848, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %425, metadata !1847, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 poison, metadata !1844, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %366, metadata !1842, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %422, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %360, metadata !1821, metadata !DIExpression()), !dbg !1880
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2269
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1880
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1884
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1969
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1977
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1819, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %465, metadata !1849, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 poison, metadata !1848, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 poison, metadata !1847, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 poison, metadata !1844, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %462, metadata !1842, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1834, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %459, metadata !1829, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %458, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %457, metadata !1821, metadata !DIExpression()), !dbg !1880
  br i1 %121, label %478, label %467, !dbg !2270

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
  br i1 %131, label %479, label %499, !dbg !2272

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2273

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
  %490 = lshr i8 %481, 5, !dbg !2274
  %491 = zext i8 %490 to i64, !dbg !2274
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2275
  %493 = load i32, i32* %492, align 4, !dbg !2275, !tbaa !587
  %494 = and i8 %481, 31, !dbg !2276
  %495 = zext i8 %494 to i32, !dbg !2276
  %496 = shl nuw i32 1, %495, !dbg !2277
  %497 = and i32 %493, %496, !dbg !2277
  %498 = icmp eq i32 %497, 0, !dbg !2277
  br i1 %498, label %499, label %510, !dbg !2278

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
  br i1 %165, label %510, label %546, !dbg !2279

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2269
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1880
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1884
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2280
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1977
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1819, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %518, metadata !1849, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 poison, metadata !1848, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %516, metadata !1842, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1834, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %513, metadata !1829, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %512, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %511, metadata !1821, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.label(metadata !1877), !dbg !2281
  br i1 %119, label %638, label %520, !dbg !2282

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1847, metadata !DIExpression()), !dbg !1977
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2284
  br i1 %521, label %538, label %522, !dbg !2284

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2286
  br i1 %523, label %524, label %526, !dbg !2290

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2286
  store i8 39, i8* %525, align 1, !dbg !2286, !tbaa !596
  br label %526, !dbg !2286

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %527, metadata !1828, metadata !DIExpression()), !dbg !1880
  %528 = icmp ult i64 %527, %519, !dbg !2291
  br i1 %528, label %529, label %531, !dbg !2294

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2291
  store i8 36, i8* %530, align 1, !dbg !2291, !tbaa !596
  br label %531, !dbg !2291

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2294
  call void @llvm.dbg.value(metadata i64 %532, metadata !1828, metadata !DIExpression()), !dbg !1880
  %533 = icmp ult i64 %532, %519, !dbg !2295
  br i1 %533, label %534, label %536, !dbg !2298

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2295
  store i8 39, i8* %535, align 1, !dbg !2295, !tbaa !596
  br label %536, !dbg !2295

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %537, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 1, metadata !1836, metadata !DIExpression()), !dbg !1880
  br label %538, !dbg !2299

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1977
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %539, metadata !1828, metadata !DIExpression()), !dbg !1880
  %541 = icmp ult i64 %539, %519, !dbg !2300
  br i1 %541, label %542, label %544, !dbg !2303

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2300
  store i8 92, i8* %543, align 1, !dbg !2300, !tbaa !596
  br label %544, !dbg !2300

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2303
  call void @llvm.dbg.value(metadata i64 %556, metadata !1819, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %555, metadata !1849, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 poison, metadata !1848, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 poison, metadata !1847, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %552, metadata !1842, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1834, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %549, metadata !1829, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %548, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %547, metadata !1821, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.label(metadata !1878), !dbg !2304
  br label %570, !dbg !2305

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2269
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1880
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1884
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2280
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2308
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1819, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %555, metadata !1849, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 poison, metadata !1848, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 poison, metadata !1847, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %552, metadata !1842, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1834, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %549, metadata !1829, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %548, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %547, metadata !1821, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.label(metadata !1878), !dbg !2304
  %557 = xor i1 %551, true, !dbg !2305
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2305
  br i1 %558, label %570, label %559, !dbg !2305

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2309
  br i1 %560, label %561, label %563, !dbg !2313

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2309
  store i8 39, i8* %562, align 1, !dbg !2309, !tbaa !596
  br label %563, !dbg !2309

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %564, metadata !1828, metadata !DIExpression()), !dbg !1880
  %565 = icmp ult i64 %564, %556, !dbg !2314
  br i1 %565, label %566, label %568, !dbg !2317

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2314
  store i8 39, i8* %567, align 1, !dbg !2314, !tbaa !596
  br label %568, !dbg !2314

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %569, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 0, metadata !1836, metadata !DIExpression()), !dbg !1880
  br label %570, !dbg !2318

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1977
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %578, metadata !1828, metadata !DIExpression()), !dbg !1880
  %580 = icmp ult i64 %578, %571, !dbg !2319
  br i1 %580, label %581, label %583, !dbg !2322

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2319
  store i8 %572, i8* %582, align 1, !dbg !2319, !tbaa !596
  br label %583, !dbg !2319

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %584, metadata !1828, metadata !DIExpression()), !dbg !1880
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2323
  call void @llvm.dbg.value(metadata i8 poison, metadata !1835, metadata !DIExpression()), !dbg !1880
  br label %586, !dbg !2324

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2269
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1880
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1884
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2280
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1819, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %593, metadata !1842, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1835, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1834, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %589, metadata !1829, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %588, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %587, metadata !1821, metadata !DIExpression()), !dbg !1880
  %595 = add i64 %593, 1, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %595, metadata !1842, metadata !DIExpression()), !dbg !1969
  br label %132, !dbg !2326, !llvm.loop !2327

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1819, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1835, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 poison, metadata !1834, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 undef, metadata !1829, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 undef, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 undef, metadata !1821, metadata !DIExpression()), !dbg !1880
  %597 = icmp eq i64 %134, 0, !dbg !2329
  %598 = and i1 %126, %597, !dbg !2331
  %599 = and i1 %598, %119, !dbg !2331
  br i1 %599, label %638, label %600, !dbg !2331

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2332
  %602 = or i1 %119, %601, !dbg !2332
  %603 = xor i1 %136, true, !dbg !2332
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2332
  br i1 %604, label %612, label %605, !dbg !2332

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2334

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2336
  br label %653, !dbg !2338

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2339
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2341
  br i1 %611, label %36, label %612, !dbg !2341

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2342
  %615 = or i1 %614, %613, !dbg !2344
  br i1 %615, label %631, label %616, !dbg !2344

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1830, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %134, metadata !1828, metadata !DIExpression()), !dbg !1880
  %617 = load i8, i8* %116, align 1, !dbg !2345, !tbaa !596
  %618 = icmp eq i8 %617, 0, !dbg !2348
  br i1 %618, label %631, label %619, !dbg !2348

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1830, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %622, metadata !1828, metadata !DIExpression()), !dbg !1880
  %623 = icmp ult i64 %622, %140, !dbg !2349
  br i1 %623, label %624, label %626, !dbg !2352

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2349
  store i8 %620, i8* %625, align 1, !dbg !2349, !tbaa !596
  br label %626, !dbg !2349

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2352
  call void @llvm.dbg.value(metadata i64 %627, metadata !1828, metadata !DIExpression()), !dbg !1880
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2353
  call void @llvm.dbg.value(metadata i8* %628, metadata !1830, metadata !DIExpression()), !dbg !1880
  %629 = load i8, i8* %628, align 1, !dbg !2345, !tbaa !596
  %630 = icmp eq i8 %629, 0, !dbg !2348
  br i1 %630, label %631, label %619, !dbg !2348, !llvm.loop !2354

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1956
  call void @llvm.dbg.value(metadata i64 %632, metadata !1828, metadata !DIExpression()), !dbg !1880
  %633 = icmp ult i64 %632, %140, !dbg !2356
  br i1 %633, label %634, label %653, !dbg !2358

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2359
  store i8 0, i8* %635, align 1, !dbg !2360, !tbaa !596
  br label %653, !dbg !2359

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1879), !dbg !2186
  %637 = icmp eq i32 %112, 2, !dbg !2361
  br i1 %637, label %643, label %647, !dbg !2187

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1879), !dbg !2186
  %641 = icmp eq i32 %112, 2, !dbg !2361
  %642 = select i1 %118, i32 4, i32 2, !dbg !2187
  br i1 %641, label %643, label %647, !dbg !2187

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2187

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1822, metadata !DIExpression()), !dbg !1880
  %651 = and i32 %5, -3, !dbg !2362
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2363
  br label %653, !dbg !2364

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2365
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2366 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2368 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2372, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %1, metadata !2373, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2374, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i8* %0, metadata !2376, metadata !DIExpression()) #34, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %1, metadata !2381, metadata !DIExpression()) #34, !dbg !2389
  call void @llvm.dbg.value(metadata i64* null, metadata !2382, metadata !DIExpression()) #34, !dbg !2389
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2383, metadata !DIExpression()) #34, !dbg !2389
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2391
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2391
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2384, metadata !DIExpression()) #34, !dbg !2389
  %6 = tail call i32* @__errno_location() #37, !dbg !2392
  %7 = load i32, i32* %6, align 4, !dbg !2392, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %7, metadata !2385, metadata !DIExpression()) #34, !dbg !2389
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2393
  %9 = load i32, i32* %8, align 4, !dbg !2393, !tbaa !1762
  %10 = or i32 %9, 1, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %10, metadata !2386, metadata !DIExpression()) #34, !dbg !2389
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2395
  %12 = load i32, i32* %11, align 8, !dbg !2395, !tbaa !1711
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2396
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2397
  %15 = load i8*, i8** %14, align 8, !dbg !2397, !tbaa !1784
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2398
  %17 = load i8*, i8** %16, align 8, !dbg !2398, !tbaa !1787
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #34, !dbg !2399
  %19 = add i64 %18, 1, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %19, metadata !2387, metadata !DIExpression()) #34, !dbg !2389
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #38, !dbg !2401
  call void @llvm.dbg.value(metadata i8* %20, metadata !2388, metadata !DIExpression()) #34, !dbg !2389
  %21 = load i32, i32* %11, align 8, !dbg !2402, !tbaa !1711
  %22 = load i8*, i8** %14, align 8, !dbg !2403, !tbaa !1784
  %23 = load i8*, i8** %16, align 8, !dbg !2404, !tbaa !1787
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #34, !dbg !2405
  store i32 %7, i32* %6, align 4, !dbg !2406, !tbaa !587
  ret i8* %20, !dbg !2407
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2377 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2376, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i64 %1, metadata !2381, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i64* %2, metadata !2382, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2383, metadata !DIExpression()), !dbg !2408
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2409
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2409
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2384, metadata !DIExpression()), !dbg !2408
  %7 = tail call i32* @__errno_location() #37, !dbg !2410
  %8 = load i32, i32* %7, align 4, !dbg !2410, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %8, metadata !2385, metadata !DIExpression()), !dbg !2408
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2411
  %10 = load i32, i32* %9, align 4, !dbg !2411, !tbaa !1762
  %11 = icmp eq i64* %2, null, !dbg !2412
  %12 = zext i1 %11 to i32, !dbg !2412
  %13 = or i32 %10, %12, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %13, metadata !2386, metadata !DIExpression()), !dbg !2408
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2414
  %15 = load i32, i32* %14, align 8, !dbg !2414, !tbaa !1711
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2415
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2416
  %18 = load i8*, i8** %17, align 8, !dbg !2416, !tbaa !1784
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2417
  %20 = load i8*, i8** %19, align 8, !dbg !2417, !tbaa !1787
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2418
  %22 = add i64 %21, 1, !dbg !2419
  call void @llvm.dbg.value(metadata i64 %22, metadata !2387, metadata !DIExpression()), !dbg !2408
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #38, !dbg !2420
  call void @llvm.dbg.value(metadata i8* %23, metadata !2388, metadata !DIExpression()), !dbg !2408
  %24 = load i32, i32* %14, align 8, !dbg !2421, !tbaa !1711
  %25 = load i8*, i8** %17, align 8, !dbg !2422, !tbaa !1784
  %26 = load i8*, i8** %19, align 8, !dbg !2423, !tbaa !1787
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2424
  store i32 %8, i32* %7, align 4, !dbg !2425, !tbaa !587
  br i1 %11, label %29, label %28, !dbg !2426

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2427, !tbaa !2429
  br label %29, !dbg !2430

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2431
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2432 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2437, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2434, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i32 1, metadata !2435, metadata !DIExpression()), !dbg !2439
  %2 = load i32, i32* @nslots, align 4, !tbaa !587
  call void @llvm.dbg.value(metadata i32 1, metadata !2435, metadata !DIExpression()), !dbg !2439
  %3 = icmp sgt i32 %2, 1, !dbg !2440
  br i1 %3, label %4, label %6, !dbg !2442

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2440
  br label %10, !dbg !2442

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2443
  %8 = load i8*, i8** %7, align 8, !dbg !2443, !tbaa !2445
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2447
  br i1 %9, label %17, label %16, !dbg !2448

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2435, metadata !DIExpression()), !dbg !2439
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2449
  %13 = load i8*, i8** %12, align 8, !dbg !2449, !tbaa !2445
  tail call void @free(i8* noundef %13) #34, !dbg !2450
  %14 = add nuw nsw i64 %11, 1, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %14, metadata !2435, metadata !DIExpression()), !dbg !2439
  %15 = icmp eq i64 %14, %5, !dbg !2440
  br i1 %15, label %6, label %10, !dbg !2442, !llvm.loop !2452

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #34, !dbg !2454
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2456, !tbaa !2457
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2458, !tbaa !2445
  br label %17, !dbg !2459

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2460
  br i1 %18, label %21, label %19, !dbg !2462

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2463
  tail call void @free(i8* noundef %20) #34, !dbg !2465
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2466, !tbaa !501
  br label %21, !dbg !2467

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2468, !tbaa !587
  ret void, !dbg !2469
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2470 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2472, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %1, metadata !2473, metadata !DIExpression()), !dbg !2474
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2475
  ret i8* %3, !dbg !2476
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2477 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2481, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8* %1, metadata !2482, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i64 %2, metadata !2483, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2484, metadata !DIExpression()), !dbg !2497
  %6 = tail call i32* @__errno_location() #37, !dbg !2498
  %7 = load i32, i32* %6, align 4, !dbg !2498, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %7, metadata !2485, metadata !DIExpression()), !dbg !2497
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2499, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2486, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2487, metadata !DIExpression()), !dbg !2497
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2500
  br i1 %9, label %10, label %11, !dbg !2500

10:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2502
  unreachable, !dbg !2502

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2503, !tbaa !587
  %13 = icmp sgt i32 %12, %0, !dbg !2504
  br i1 %13, label %36, label %14, !dbg !2505

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2506
  call void @llvm.dbg.value(metadata i1 %15, metadata !2488, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2507
  %16 = bitcast i64* %5 to i8*, !dbg !2508
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2508
  %17 = sext i32 %12 to i64, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %17, metadata !2491, metadata !DIExpression()), !dbg !2507
  store i64 %17, i64* %5, align 8, !dbg !2510, !tbaa !2429
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2511
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2511
  %20 = add nuw nsw i32 %0, 1, !dbg !2512
  %21 = sub i32 %20, %12, !dbg !2513
  %22 = sext i32 %21 to i64, !dbg !2514
  call void @llvm.dbg.value(metadata i64* %5, metadata !2491, metadata !DIExpression(DW_OP_deref)), !dbg !2507
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #34, !dbg !2515
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2515
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2486, metadata !DIExpression()), !dbg !2497
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2516, !tbaa !501
  br i1 %15, label %25, label %26, !dbg !2517

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2518, !tbaa.struct !2520
  br label %26, !dbg !2521

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2522, !tbaa !587
  %28 = sext i32 %27 to i64, !dbg !2523
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2523
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2524
  %31 = load i64, i64* %5, align 8, !dbg !2525, !tbaa !2429
  call void @llvm.dbg.value(metadata i64 %31, metadata !2491, metadata !DIExpression()), !dbg !2507
  %32 = sub nsw i64 %31, %28, !dbg !2526
  %33 = shl i64 %32, 4, !dbg !2527
  call void @llvm.dbg.value(metadata i8* %30, metadata !1914, metadata !DIExpression()) #34, !dbg !2528
  call void @llvm.dbg.value(metadata i32 0, metadata !1917, metadata !DIExpression()) #34, !dbg !2528
  call void @llvm.dbg.value(metadata i64 %33, metadata !1918, metadata !DIExpression()) #34, !dbg !2528
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #34, !dbg !2530
  %34 = load i64, i64* %5, align 8, !dbg !2531, !tbaa !2429
  call void @llvm.dbg.value(metadata i64 %34, metadata !2491, metadata !DIExpression()), !dbg !2507
  %35 = trunc i64 %34 to i32, !dbg !2531
  store i32 %35, i32* @nslots, align 4, !dbg !2532, !tbaa !587
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2533
  br label %36, !dbg !2534

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2497
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2486, metadata !DIExpression()), !dbg !2497
  %38 = zext i32 %0 to i64, !dbg !2535
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2536
  %40 = load i64, i64* %39, align 8, !dbg !2536, !tbaa !2457
  call void @llvm.dbg.value(metadata i64 %40, metadata !2492, metadata !DIExpression()), !dbg !2537
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2538
  %42 = load i8*, i8** %41, align 8, !dbg !2538, !tbaa !2445
  call void @llvm.dbg.value(metadata i8* %42, metadata !2494, metadata !DIExpression()), !dbg !2537
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2539
  %44 = load i32, i32* %43, align 4, !dbg !2539, !tbaa !1762
  %45 = or i32 %44, 1, !dbg !2540
  call void @llvm.dbg.value(metadata i32 %45, metadata !2495, metadata !DIExpression()), !dbg !2537
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2541
  %47 = load i32, i32* %46, align 8, !dbg !2541, !tbaa !1711
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2542
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2543
  %50 = load i8*, i8** %49, align 8, !dbg !2543, !tbaa !1784
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2544
  %52 = load i8*, i8** %51, align 8, !dbg !2544, !tbaa !1787
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2545
  call void @llvm.dbg.value(metadata i64 %53, metadata !2496, metadata !DIExpression()), !dbg !2537
  %54 = icmp ugt i64 %40, %53, !dbg !2546
  br i1 %54, label %65, label %55, !dbg !2548

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2549
  call void @llvm.dbg.value(metadata i64 %56, metadata !2492, metadata !DIExpression()), !dbg !2537
  store i64 %56, i64* %39, align 8, !dbg !2551, !tbaa !2457
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2552
  br i1 %57, label %59, label %58, !dbg !2554

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #34, !dbg !2555
  br label %59, !dbg !2555

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #38, !dbg !2556
  call void @llvm.dbg.value(metadata i8* %60, metadata !2494, metadata !DIExpression()), !dbg !2537
  store i8* %60, i8** %41, align 8, !dbg !2557, !tbaa !2445
  %61 = load i32, i32* %46, align 8, !dbg !2558, !tbaa !1711
  %62 = load i8*, i8** %49, align 8, !dbg !2559, !tbaa !1784
  %63 = load i8*, i8** %51, align 8, !dbg !2560, !tbaa !1787
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2561
  br label %65, !dbg !2562

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2537
  call void @llvm.dbg.value(metadata i8* %66, metadata !2494, metadata !DIExpression()), !dbg !2537
  store i32 %7, i32* %6, align 4, !dbg !2563, !tbaa !587
  ret i8* %66, !dbg !2564
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2565 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2569, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* %1, metadata !2570, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %2, metadata !2571, metadata !DIExpression()), !dbg !2572
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2573
  ret i8* %4, !dbg !2574
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2575 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2577, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i32 0, metadata !2472, metadata !DIExpression()) #34, !dbg !2579
  call void @llvm.dbg.value(metadata i8* %0, metadata !2473, metadata !DIExpression()) #34, !dbg !2579
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2581
  ret i8* %2, !dbg !2582
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2583 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2587, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %1, metadata !2588, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i32 0, metadata !2569, metadata !DIExpression()) #34, !dbg !2590
  call void @llvm.dbg.value(metadata i8* %0, metadata !2570, metadata !DIExpression()) #34, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %1, metadata !2571, metadata !DIExpression()) #34, !dbg !2590
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2592
  ret i8* %3, !dbg !2593
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2594 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2598, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i32 %1, metadata !2599, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8* %2, metadata !2600, metadata !DIExpression()), !dbg !2602
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2603
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2603
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2601, metadata !DIExpression()), !dbg !2604
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605), !dbg !2608
  call void @llvm.dbg.value(metadata i32 %1, metadata !2609, metadata !DIExpression()) #34, !dbg !2615
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2614, metadata !DIExpression()) #34, !dbg !2617
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !2617, !alias.scope !2605
  %6 = icmp eq i32 %1, 10, !dbg !2618
  br i1 %6, label %7, label %8, !dbg !2620

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2621, !noalias !2605
  unreachable, !dbg !2621

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2622
  store i32 %1, i32* %9, align 8, !dbg !2623, !tbaa !1711, !alias.scope !2605
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2624
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2625
  ret i8* %10, !dbg !2626
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2627 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2631, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i32 %1, metadata !2632, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8* %2, metadata !2633, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i64 %3, metadata !2634, metadata !DIExpression()), !dbg !2636
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2637
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2637
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2635, metadata !DIExpression()), !dbg !2638
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2639), !dbg !2642
  call void @llvm.dbg.value(metadata i32 %1, metadata !2609, metadata !DIExpression()) #34, !dbg !2643
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2614, metadata !DIExpression()) #34, !dbg !2645
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #34, !dbg !2645, !alias.scope !2639
  %7 = icmp eq i32 %1, 10, !dbg !2646
  br i1 %7, label %8, label %9, !dbg !2647

8:                                                ; preds = %4
  tail call void @abort() #36, !dbg !2648, !noalias !2639
  unreachable, !dbg !2648

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2649
  store i32 %1, i32* %10, align 8, !dbg !2650, !tbaa !1711, !alias.scope !2639
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2651
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2652
  ret i8* %11, !dbg !2653
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2654 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2658, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* %1, metadata !2659, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i32 0, metadata !2598, metadata !DIExpression()) #34, !dbg !2661
  call void @llvm.dbg.value(metadata i32 %0, metadata !2599, metadata !DIExpression()) #34, !dbg !2661
  call void @llvm.dbg.value(metadata i8* %1, metadata !2600, metadata !DIExpression()) #34, !dbg !2661
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2663
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2663
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2601, metadata !DIExpression()) #34, !dbg !2664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2665) #34, !dbg !2668
  call void @llvm.dbg.value(metadata i32 %0, metadata !2609, metadata !DIExpression()) #34, !dbg !2669
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2614, metadata !DIExpression()) #34, !dbg !2671
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #34, !dbg !2671, !alias.scope !2665
  %5 = icmp eq i32 %0, 10, !dbg !2672
  br i1 %5, label %6, label %7, !dbg !2673

6:                                                ; preds = %2
  tail call void @abort() #36, !dbg !2674, !noalias !2665
  unreachable, !dbg !2674

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2675
  store i32 %0, i32* %8, align 8, !dbg !2676, !tbaa !1711, !alias.scope !2665
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2677
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2678
  ret i8* %9, !dbg !2679
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2680 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2684, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %1, metadata !2685, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i64 %2, metadata !2686, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i32 0, metadata !2631, metadata !DIExpression()) #34, !dbg !2688
  call void @llvm.dbg.value(metadata i32 %0, metadata !2632, metadata !DIExpression()) #34, !dbg !2688
  call void @llvm.dbg.value(metadata i8* %1, metadata !2633, metadata !DIExpression()) #34, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %2, metadata !2634, metadata !DIExpression()) #34, !dbg !2688
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2690
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2690
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2635, metadata !DIExpression()) #34, !dbg !2691
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2692) #34, !dbg !2695
  call void @llvm.dbg.value(metadata i32 %0, metadata !2609, metadata !DIExpression()) #34, !dbg !2696
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2614, metadata !DIExpression()) #34, !dbg !2698
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !2698, !alias.scope !2692
  %6 = icmp eq i32 %0, 10, !dbg !2699
  br i1 %6, label %7, label %8, !dbg !2700

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2701, !noalias !2692
  unreachable, !dbg !2701

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2702
  store i32 %0, i32* %9, align 8, !dbg !2703, !tbaa !1711, !alias.scope !2692
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #34, !dbg !2704
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2705
  ret i8* %10, !dbg !2706
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2707 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2711, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i64 %1, metadata !2712, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 %2, metadata !2713, metadata !DIExpression()), !dbg !2715
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2716
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2716
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2714, metadata !DIExpression()), !dbg !2717
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2718, !tbaa.struct !2719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1729, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8 %2, metadata !1730, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i32 1, metadata !1731, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8 %2, metadata !1732, metadata !DIExpression()), !dbg !2720
  %6 = lshr i8 %2, 5, !dbg !2722
  %7 = zext i8 %6 to i64, !dbg !2722
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2723
  call void @llvm.dbg.value(metadata i32* %8, metadata !1733, metadata !DIExpression()), !dbg !2720
  %9 = and i8 %2, 31, !dbg !2724
  %10 = zext i8 %9 to i32, !dbg !2724
  call void @llvm.dbg.value(metadata i32 %10, metadata !1735, metadata !DIExpression()), !dbg !2720
  %11 = load i32, i32* %8, align 4, !dbg !2725, !tbaa !587
  %12 = lshr i32 %11, %10, !dbg !2726
  %13 = and i32 %12, 1, !dbg !2727
  call void @llvm.dbg.value(metadata i32 %13, metadata !1736, metadata !DIExpression()), !dbg !2720
  %14 = xor i32 %13, 1, !dbg !2728
  %15 = shl i32 %14, %10, !dbg !2729
  %16 = xor i32 %15, %11, !dbg !2730
  store i32 %16, i32* %8, align 4, !dbg !2730, !tbaa !587
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2731
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2732
  ret i8* %17, !dbg !2733
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2734 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2738, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8 %1, metadata !2739, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8* %0, metadata !2711, metadata !DIExpression()) #34, !dbg !2741
  call void @llvm.dbg.value(metadata i64 -1, metadata !2712, metadata !DIExpression()) #34, !dbg !2741
  call void @llvm.dbg.value(metadata i8 %1, metadata !2713, metadata !DIExpression()) #34, !dbg !2741
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2743
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2743
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2714, metadata !DIExpression()) #34, !dbg !2744
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2745, !tbaa.struct !2719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1729, metadata !DIExpression()) #34, !dbg !2746
  call void @llvm.dbg.value(metadata i8 %1, metadata !1730, metadata !DIExpression()) #34, !dbg !2746
  call void @llvm.dbg.value(metadata i32 1, metadata !1731, metadata !DIExpression()) #34, !dbg !2746
  call void @llvm.dbg.value(metadata i8 %1, metadata !1732, metadata !DIExpression()) #34, !dbg !2746
  %5 = lshr i8 %1, 5, !dbg !2748
  %6 = zext i8 %5 to i64, !dbg !2748
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2749
  call void @llvm.dbg.value(metadata i32* %7, metadata !1733, metadata !DIExpression()) #34, !dbg !2746
  %8 = and i8 %1, 31, !dbg !2750
  %9 = zext i8 %8 to i32, !dbg !2750
  call void @llvm.dbg.value(metadata i32 %9, metadata !1735, metadata !DIExpression()) #34, !dbg !2746
  %10 = load i32, i32* %7, align 4, !dbg !2751, !tbaa !587
  %11 = lshr i32 %10, %9, !dbg !2752
  %12 = and i32 %11, 1, !dbg !2753
  call void @llvm.dbg.value(metadata i32 %12, metadata !1736, metadata !DIExpression()) #34, !dbg !2746
  %13 = xor i32 %12, 1, !dbg !2754
  %14 = shl i32 %13, %9, !dbg !2755
  %15 = xor i32 %14, %10, !dbg !2756
  store i32 %15, i32* %7, align 4, !dbg !2756, !tbaa !587
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2757
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2758
  ret i8* %16, !dbg !2759
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2760 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2762, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8* %0, metadata !2738, metadata !DIExpression()) #34, !dbg !2764
  call void @llvm.dbg.value(metadata i8 58, metadata !2739, metadata !DIExpression()) #34, !dbg !2764
  call void @llvm.dbg.value(metadata i8* %0, metadata !2711, metadata !DIExpression()) #34, !dbg !2766
  call void @llvm.dbg.value(metadata i64 -1, metadata !2712, metadata !DIExpression()) #34, !dbg !2766
  call void @llvm.dbg.value(metadata i8 58, metadata !2713, metadata !DIExpression()) #34, !dbg !2766
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2768
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #34, !dbg !2768
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2714, metadata !DIExpression()) #34, !dbg !2769
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2770, !tbaa.struct !2719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1729, metadata !DIExpression()) #34, !dbg !2771
  call void @llvm.dbg.value(metadata i8 58, metadata !1730, metadata !DIExpression()) #34, !dbg !2771
  call void @llvm.dbg.value(metadata i32 1, metadata !1731, metadata !DIExpression()) #34, !dbg !2771
  call void @llvm.dbg.value(metadata i8 58, metadata !1732, metadata !DIExpression()) #34, !dbg !2771
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2773
  call void @llvm.dbg.value(metadata i32* %4, metadata !1733, metadata !DIExpression()) #34, !dbg !2771
  call void @llvm.dbg.value(metadata i32 26, metadata !1735, metadata !DIExpression()) #34, !dbg !2771
  %5 = load i32, i32* %4, align 4, !dbg !2774, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %5, metadata !1736, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !2771
  %6 = or i32 %5, 67108864, !dbg !2775
  store i32 %6, i32* %4, align 4, !dbg !2775, !tbaa !587
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #34, !dbg !2776
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #34, !dbg !2777
  ret i8* %7, !dbg !2778
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2779 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2781, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 %1, metadata !2782, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i8* %0, metadata !2711, metadata !DIExpression()) #34, !dbg !2784
  call void @llvm.dbg.value(metadata i64 %1, metadata !2712, metadata !DIExpression()) #34, !dbg !2784
  call void @llvm.dbg.value(metadata i8 58, metadata !2713, metadata !DIExpression()) #34, !dbg !2784
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2786
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2786
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2714, metadata !DIExpression()) #34, !dbg !2787
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2788, !tbaa.struct !2719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1729, metadata !DIExpression()) #34, !dbg !2789
  call void @llvm.dbg.value(metadata i8 58, metadata !1730, metadata !DIExpression()) #34, !dbg !2789
  call void @llvm.dbg.value(metadata i32 1, metadata !1731, metadata !DIExpression()) #34, !dbg !2789
  call void @llvm.dbg.value(metadata i8 58, metadata !1732, metadata !DIExpression()) #34, !dbg !2789
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2791
  call void @llvm.dbg.value(metadata i32* %5, metadata !1733, metadata !DIExpression()) #34, !dbg !2789
  call void @llvm.dbg.value(metadata i32 26, metadata !1735, metadata !DIExpression()) #34, !dbg !2789
  %6 = load i32, i32* %5, align 4, !dbg !2792, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %6, metadata !1736, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !2789
  %7 = or i32 %6, 67108864, !dbg !2793
  store i32 %7, i32* %5, align 4, !dbg !2793, !tbaa !587
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2794
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2795
  ret i8* %8, !dbg !2796
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2797 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2799, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i32 %1, metadata !2800, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i8* %2, metadata !2801, metadata !DIExpression()), !dbg !2803
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2804
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2804
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2802, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i32 %1, metadata !2609, metadata !DIExpression()) #34, !dbg !2806
  call void @llvm.dbg.value(metadata i32 0, metadata !2614, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2806
  %6 = icmp eq i32 %1, 10, !dbg !2808
  br i1 %6, label %7, label %8, !dbg !2809

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2810, !noalias !2811
  unreachable, !dbg !2810

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2614, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2806
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2814
  store i32 %1, i32* %9, align 8, !dbg !2814, !tbaa.struct !2719
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2814
  %11 = bitcast i32* %10 to i8*, !dbg !2814
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2814
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1729, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8 58, metadata !1730, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 1, metadata !1731, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8 58, metadata !1732, metadata !DIExpression()), !dbg !2815
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2817
  call void @llvm.dbg.value(metadata i32* %12, metadata !1733, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 26, metadata !1735, metadata !DIExpression()), !dbg !2815
  %13 = load i32, i32* %12, align 4, !dbg !2818, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %13, metadata !1736, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2815
  %14 = or i32 %13, 67108864, !dbg !2819
  store i32 %14, i32* %12, align 4, !dbg !2819, !tbaa !587
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2820
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2821
  ret i8* %15, !dbg !2822
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2823 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2827, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8* %1, metadata !2828, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8* %2, metadata !2829, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8* %3, metadata !2830, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i32 %0, metadata !2832, metadata !DIExpression()) #34, !dbg !2842
  call void @llvm.dbg.value(metadata i8* %1, metadata !2837, metadata !DIExpression()) #34, !dbg !2842
  call void @llvm.dbg.value(metadata i8* %2, metadata !2838, metadata !DIExpression()) #34, !dbg !2842
  call void @llvm.dbg.value(metadata i8* %3, metadata !2839, metadata !DIExpression()) #34, !dbg !2842
  call void @llvm.dbg.value(metadata i64 -1, metadata !2840, metadata !DIExpression()) #34, !dbg !2842
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2844
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2844
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2841, metadata !DIExpression()) #34, !dbg !2845
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2846, !tbaa.struct !2719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1769, metadata !DIExpression()) #34, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %1, metadata !1770, metadata !DIExpression()) #34, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %2, metadata !1771, metadata !DIExpression()) #34, !dbg !2847
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1769, metadata !DIExpression()) #34, !dbg !2847
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2849
  store i32 10, i32* %7, align 8, !dbg !2850, !tbaa !1711
  %8 = icmp ne i8* %1, null, !dbg !2851
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2852
  br i1 %10, label %12, label %11, !dbg !2852

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2853
  unreachable, !dbg !2853

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2854
  store i8* %1, i8** %13, align 8, !dbg !2855, !tbaa !1784
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2856
  store i8* %2, i8** %14, align 8, !dbg !2857, !tbaa !1787
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #34, !dbg !2858
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2859
  ret i8* %15, !dbg !2860
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2833 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2832, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8* %1, metadata !2837, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8* %2, metadata !2838, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8* %3, metadata !2839, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 %4, metadata !2840, metadata !DIExpression()), !dbg !2861
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2862
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #34, !dbg !2862
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2841, metadata !DIExpression()), !dbg !2863
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2864, !tbaa.struct !2719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1769, metadata !DIExpression()) #34, !dbg !2865
  call void @llvm.dbg.value(metadata i8* %1, metadata !1770, metadata !DIExpression()) #34, !dbg !2865
  call void @llvm.dbg.value(metadata i8* %2, metadata !1771, metadata !DIExpression()) #34, !dbg !2865
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1769, metadata !DIExpression()) #34, !dbg !2865
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2867
  store i32 10, i32* %8, align 8, !dbg !2868, !tbaa !1711
  %9 = icmp ne i8* %1, null, !dbg !2869
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2870
  br i1 %11, label %13, label %12, !dbg !2870

12:                                               ; preds = %5
  tail call void @abort() #36, !dbg !2871
  unreachable, !dbg !2871

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2872
  store i8* %1, i8** %14, align 8, !dbg !2873, !tbaa !1784
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2874
  store i8* %2, i8** %15, align 8, !dbg !2875, !tbaa !1787
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2876
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #34, !dbg !2877
  ret i8* %16, !dbg !2878
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2879 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2883, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8* %1, metadata !2884, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8* %2, metadata !2885, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i32 0, metadata !2827, metadata !DIExpression()) #34, !dbg !2887
  call void @llvm.dbg.value(metadata i8* %0, metadata !2828, metadata !DIExpression()) #34, !dbg !2887
  call void @llvm.dbg.value(metadata i8* %1, metadata !2829, metadata !DIExpression()) #34, !dbg !2887
  call void @llvm.dbg.value(metadata i8* %2, metadata !2830, metadata !DIExpression()) #34, !dbg !2887
  call void @llvm.dbg.value(metadata i32 0, metadata !2832, metadata !DIExpression()) #34, !dbg !2889
  call void @llvm.dbg.value(metadata i8* %0, metadata !2837, metadata !DIExpression()) #34, !dbg !2889
  call void @llvm.dbg.value(metadata i8* %1, metadata !2838, metadata !DIExpression()) #34, !dbg !2889
  call void @llvm.dbg.value(metadata i8* %2, metadata !2839, metadata !DIExpression()) #34, !dbg !2889
  call void @llvm.dbg.value(metadata i64 -1, metadata !2840, metadata !DIExpression()) #34, !dbg !2889
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2891
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2891
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2841, metadata !DIExpression()) #34, !dbg !2892
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2893, !tbaa.struct !2719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1769, metadata !DIExpression()) #34, !dbg !2894
  call void @llvm.dbg.value(metadata i8* %0, metadata !1770, metadata !DIExpression()) #34, !dbg !2894
  call void @llvm.dbg.value(metadata i8* %1, metadata !1771, metadata !DIExpression()) #34, !dbg !2894
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1769, metadata !DIExpression()) #34, !dbg !2894
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2896
  store i32 10, i32* %6, align 8, !dbg !2897, !tbaa !1711
  %7 = icmp ne i8* %0, null, !dbg !2898
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2899
  br i1 %9, label %11, label %10, !dbg !2899

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !2900
  unreachable, !dbg !2900

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2901
  store i8* %0, i8** %12, align 8, !dbg !2902, !tbaa !1784
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2903
  store i8* %1, i8** %13, align 8, !dbg !2904, !tbaa !1787
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #34, !dbg !2905
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2906
  ret i8* %14, !dbg !2907
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2908 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2912, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8* %1, metadata !2913, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8* %2, metadata !2914, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i64 %3, metadata !2915, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i32 0, metadata !2832, metadata !DIExpression()) #34, !dbg !2917
  call void @llvm.dbg.value(metadata i8* %0, metadata !2837, metadata !DIExpression()) #34, !dbg !2917
  call void @llvm.dbg.value(metadata i8* %1, metadata !2838, metadata !DIExpression()) #34, !dbg !2917
  call void @llvm.dbg.value(metadata i8* %2, metadata !2839, metadata !DIExpression()) #34, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %3, metadata !2840, metadata !DIExpression()) #34, !dbg !2917
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2919
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2919
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2841, metadata !DIExpression()) #34, !dbg !2920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2921, !tbaa.struct !2719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1769, metadata !DIExpression()) #34, !dbg !2922
  call void @llvm.dbg.value(metadata i8* %0, metadata !1770, metadata !DIExpression()) #34, !dbg !2922
  call void @llvm.dbg.value(metadata i8* %1, metadata !1771, metadata !DIExpression()) #34, !dbg !2922
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1769, metadata !DIExpression()) #34, !dbg !2922
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2924
  store i32 10, i32* %7, align 8, !dbg !2925, !tbaa !1711
  %8 = icmp ne i8* %0, null, !dbg !2926
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2927
  br i1 %10, label %12, label %11, !dbg !2927

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2928
  unreachable, !dbg !2928

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2929
  store i8* %0, i8** %13, align 8, !dbg !2930, !tbaa !1784
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2931
  store i8* %1, i8** %14, align 8, !dbg !2932, !tbaa !1787
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #34, !dbg !2933
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2934
  ret i8* %15, !dbg !2935
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2936 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2940, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i8* %1, metadata !2941, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 %2, metadata !2942, metadata !DIExpression()), !dbg !2943
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2944
  ret i8* %4, !dbg !2945
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2946 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2950, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i64 %1, metadata !2951, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i32 0, metadata !2940, metadata !DIExpression()) #34, !dbg !2953
  call void @llvm.dbg.value(metadata i8* %0, metadata !2941, metadata !DIExpression()) #34, !dbg !2953
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()) #34, !dbg !2953
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2955
  ret i8* %3, !dbg !2956
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2957 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2961, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %1, metadata !2962, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i32 %0, metadata !2940, metadata !DIExpression()) #34, !dbg !2964
  call void @llvm.dbg.value(metadata i8* %1, metadata !2941, metadata !DIExpression()) #34, !dbg !2964
  call void @llvm.dbg.value(metadata i64 -1, metadata !2942, metadata !DIExpression()) #34, !dbg !2964
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2966
  ret i8* %3, !dbg !2967
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2968 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2972, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i32 0, metadata !2961, metadata !DIExpression()) #34, !dbg !2974
  call void @llvm.dbg.value(metadata i8* %0, metadata !2962, metadata !DIExpression()) #34, !dbg !2974
  call void @llvm.dbg.value(metadata i32 0, metadata !2940, metadata !DIExpression()) #34, !dbg !2976
  call void @llvm.dbg.value(metadata i8* %0, metadata !2941, metadata !DIExpression()) #34, !dbg !2976
  call void @llvm.dbg.value(metadata i64 -1, metadata !2942, metadata !DIExpression()) #34, !dbg !2976
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2978
  ret i8* %2, !dbg !2979
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @safe_write(i32 noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #21 !dbg !2980 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2986, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8* %1, metadata !2987, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i64 %2, metadata !2988, metadata !DIExpression()), !dbg !2994
  br label %4, !dbg !2995

4:                                                ; preds = %22, %3
  %5 = phi i64 [ %2, %3 ], [ %23, %22 ]
  %6 = phi i64 [ undef, %3 ], [ %24, %22 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2988, metadata !DIExpression()), !dbg !2994
  %7 = tail call i64 @write(i32 noundef %0, i8* noundef %1, i64 noundef %5) #34, !dbg !2996
  call void @llvm.dbg.value(metadata i64 %7, metadata !2989, metadata !DIExpression()), !dbg !2997
  %8 = icmp sgt i64 %7, -1, !dbg !2998
  br i1 %8, label %27, label %9, !dbg !3000

9:                                                ; preds = %4
  %10 = tail call i32* @__errno_location() #37, !dbg !3001
  %11 = load i32, i32* %10, align 4, !dbg !3001, !tbaa !587
  %12 = icmp eq i32 %11, 4, !dbg !3001
  br i1 %12, label %22, label %13, !dbg !3003, !llvm.loop !3004

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3007
  %15 = icmp sgt i64 %5, 2146435072
  %16 = and i1 %15, %14, !dbg !3009
  %17 = select i1 %16, i64 2146435072, i64 %5, !dbg !3010
  %18 = select i1 %16, i64 %6, i64 %7, !dbg !3010
  %19 = and i1 %15, %14, !dbg !3010
  %20 = xor i1 %19, true, !dbg !3010
  %21 = zext i1 %20 to i32, !dbg !3010
  br label %22, !dbg !3010

22:                                               ; preds = %13, %9
  %23 = phi i64 [ %5, %9 ], [ %17, %13 ]
  %24 = phi i64 [ %6, %9 ], [ %18, %13 ]
  %25 = phi i32 [ 3, %9 ], [ %21, %13 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !2988, metadata !DIExpression()), !dbg !2994
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %4

27:                                               ; preds = %4, %22
  %28 = phi i64 [ %24, %22 ], [ %7, %4 ]
  ret i64 %28, !dbg !3011
}

; Function Attrs: nofree
declare !dbg !3012 noundef i64 @write(i32 noundef, i8* nocapture noundef readonly, i64 noundef) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3015 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3054, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8* %1, metadata !3055, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8* %2, metadata !3056, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8* %3, metadata !3057, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8** %4, metadata !3058, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i64 %5, metadata !3059, metadata !DIExpression()), !dbg !3060
  %7 = icmp eq i8* %1, null, !dbg !3061
  br i1 %7, label %10, label %8, !dbg !3063

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #34, !dbg !3064
  br label %12, !dbg !3064

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.83, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #34, !dbg !3065
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.85, i64 0, i64 0), i32 noundef 5) #34, !dbg !3066
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #34, !dbg !3066
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.86, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3067
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.87, i64 0, i64 0), i32 noundef 5) #34, !dbg !3068
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.88, i64 0, i64 0)) #34, !dbg !3068
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.86, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3069
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
  ], !dbg !3070

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.89, i64 0, i64 0), i32 noundef 5) #34, !dbg !3071
  %21 = load i8*, i8** %4, align 8, !dbg !3071, !tbaa !501
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #34, !dbg !3071
  br label %147, !dbg !3073

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.90, i64 0, i64 0), i32 noundef 5) #34, !dbg !3074
  %25 = load i8*, i8** %4, align 8, !dbg !3074, !tbaa !501
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3074
  %27 = load i8*, i8** %26, align 8, !dbg !3074, !tbaa !501
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #34, !dbg !3074
  br label %147, !dbg !3075

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.91, i64 0, i64 0), i32 noundef 5) #34, !dbg !3076
  %31 = load i8*, i8** %4, align 8, !dbg !3076, !tbaa !501
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3076
  %33 = load i8*, i8** %32, align 8, !dbg !3076, !tbaa !501
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3076
  %35 = load i8*, i8** %34, align 8, !dbg !3076, !tbaa !501
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #34, !dbg !3076
  br label %147, !dbg !3077

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.92, i64 0, i64 0), i32 noundef 5) #34, !dbg !3078
  %39 = load i8*, i8** %4, align 8, !dbg !3078, !tbaa !501
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3078
  %41 = load i8*, i8** %40, align 8, !dbg !3078, !tbaa !501
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3078
  %43 = load i8*, i8** %42, align 8, !dbg !3078, !tbaa !501
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3078
  %45 = load i8*, i8** %44, align 8, !dbg !3078, !tbaa !501
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #34, !dbg !3078
  br label %147, !dbg !3079

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.93, i64 0, i64 0), i32 noundef 5) #34, !dbg !3080
  %49 = load i8*, i8** %4, align 8, !dbg !3080, !tbaa !501
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3080
  %51 = load i8*, i8** %50, align 8, !dbg !3080, !tbaa !501
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3080
  %53 = load i8*, i8** %52, align 8, !dbg !3080, !tbaa !501
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3080
  %55 = load i8*, i8** %54, align 8, !dbg !3080, !tbaa !501
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3080
  %57 = load i8*, i8** %56, align 8, !dbg !3080, !tbaa !501
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #34, !dbg !3080
  br label %147, !dbg !3081

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.94, i64 0, i64 0), i32 noundef 5) #34, !dbg !3082
  %61 = load i8*, i8** %4, align 8, !dbg !3082, !tbaa !501
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3082
  %63 = load i8*, i8** %62, align 8, !dbg !3082, !tbaa !501
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3082
  %65 = load i8*, i8** %64, align 8, !dbg !3082, !tbaa !501
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3082
  %67 = load i8*, i8** %66, align 8, !dbg !3082, !tbaa !501
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3082
  %69 = load i8*, i8** %68, align 8, !dbg !3082, !tbaa !501
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3082
  %71 = load i8*, i8** %70, align 8, !dbg !3082, !tbaa !501
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #34, !dbg !3082
  br label %147, !dbg !3083

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.95, i64 0, i64 0), i32 noundef 5) #34, !dbg !3084
  %75 = load i8*, i8** %4, align 8, !dbg !3084, !tbaa !501
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3084
  %77 = load i8*, i8** %76, align 8, !dbg !3084, !tbaa !501
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3084
  %79 = load i8*, i8** %78, align 8, !dbg !3084, !tbaa !501
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3084
  %81 = load i8*, i8** %80, align 8, !dbg !3084, !tbaa !501
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3084
  %83 = load i8*, i8** %82, align 8, !dbg !3084, !tbaa !501
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3084
  %85 = load i8*, i8** %84, align 8, !dbg !3084, !tbaa !501
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3084
  %87 = load i8*, i8** %86, align 8, !dbg !3084, !tbaa !501
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #34, !dbg !3084
  br label %147, !dbg !3085

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.96, i64 0, i64 0), i32 noundef 5) #34, !dbg !3086
  %91 = load i8*, i8** %4, align 8, !dbg !3086, !tbaa !501
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3086
  %93 = load i8*, i8** %92, align 8, !dbg !3086, !tbaa !501
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3086
  %95 = load i8*, i8** %94, align 8, !dbg !3086, !tbaa !501
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3086
  %97 = load i8*, i8** %96, align 8, !dbg !3086, !tbaa !501
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3086
  %99 = load i8*, i8** %98, align 8, !dbg !3086, !tbaa !501
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3086
  %101 = load i8*, i8** %100, align 8, !dbg !3086, !tbaa !501
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3086
  %103 = load i8*, i8** %102, align 8, !dbg !3086, !tbaa !501
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3086
  %105 = load i8*, i8** %104, align 8, !dbg !3086, !tbaa !501
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #34, !dbg !3086
  br label %147, !dbg !3087

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.97, i64 0, i64 0), i32 noundef 5) #34, !dbg !3088
  %109 = load i8*, i8** %4, align 8, !dbg !3088, !tbaa !501
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3088
  %111 = load i8*, i8** %110, align 8, !dbg !3088, !tbaa !501
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3088
  %113 = load i8*, i8** %112, align 8, !dbg !3088, !tbaa !501
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3088
  %115 = load i8*, i8** %114, align 8, !dbg !3088, !tbaa !501
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3088
  %117 = load i8*, i8** %116, align 8, !dbg !3088, !tbaa !501
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3088
  %119 = load i8*, i8** %118, align 8, !dbg !3088, !tbaa !501
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3088
  %121 = load i8*, i8** %120, align 8, !dbg !3088, !tbaa !501
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3088
  %123 = load i8*, i8** %122, align 8, !dbg !3088, !tbaa !501
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3088
  %125 = load i8*, i8** %124, align 8, !dbg !3088, !tbaa !501
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #34, !dbg !3088
  br label %147, !dbg !3089

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.98, i64 0, i64 0), i32 noundef 5) #34, !dbg !3090
  %129 = load i8*, i8** %4, align 8, !dbg !3090, !tbaa !501
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3090
  %131 = load i8*, i8** %130, align 8, !dbg !3090, !tbaa !501
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3090
  %133 = load i8*, i8** %132, align 8, !dbg !3090, !tbaa !501
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3090
  %135 = load i8*, i8** %134, align 8, !dbg !3090, !tbaa !501
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3090
  %137 = load i8*, i8** %136, align 8, !dbg !3090, !tbaa !501
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3090
  %139 = load i8*, i8** %138, align 8, !dbg !3090, !tbaa !501
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3090
  %141 = load i8*, i8** %140, align 8, !dbg !3090, !tbaa !501
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3090
  %143 = load i8*, i8** %142, align 8, !dbg !3090, !tbaa !501
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3090
  %145 = load i8*, i8** %144, align 8, !dbg !3090, !tbaa !501
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #34, !dbg !3090
  br label %147, !dbg !3091

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3092
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3093 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3097, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8* %1, metadata !3098, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8* %2, metadata !3099, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8* %3, metadata !3100, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8** %4, metadata !3101, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 0, metadata !3102, metadata !DIExpression()), !dbg !3103
  br label %6, !dbg !3104

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3106
  call void @llvm.dbg.value(metadata i64 %7, metadata !3102, metadata !DIExpression()), !dbg !3103
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3107
  %9 = load i8*, i8** %8, align 8, !dbg !3107, !tbaa !501
  %10 = icmp eq i8* %9, null, !dbg !3109
  %11 = add i64 %7, 1, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %11, metadata !3102, metadata !DIExpression()), !dbg !3103
  br i1 %10, label %12, label %6, !dbg !3109, !llvm.loop !3111

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3113
  ret void, !dbg !3114
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3115 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3130, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %1, metadata !3131, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %2, metadata !3132, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %3, metadata !3133, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3134, metadata !DIExpression()), !dbg !3139
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3140
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3140
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3136, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 0, metadata !3135, metadata !DIExpression()), !dbg !3138
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  %11 = load i32, i32* %8, align 8, !dbg !3142
  %12 = icmp sgt i32 %11, -1, !dbg !3142
  call void @llvm.dbg.value(metadata i64 0, metadata !3135, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 0, metadata !3135, metadata !DIExpression()), !dbg !3138
  br i1 %12, label %13, label %70

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3142
  %15 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !3142
  store i8* %15, i8** %10, align 8, !dbg !3142
  %16 = bitcast i8* %14 to i8**, !dbg !3142
  %17 = load i8*, i8** %16, align 8, !dbg !3142
  %18 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3145
  store i8* %17, i8** %18, align 8, !dbg !3146, !tbaa !501
  %19 = icmp eq i8* %17, null, !dbg !3147
  br i1 %19, label %265, label %20, !dbg !3148

20:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 1, metadata !3135, metadata !DIExpression()), !dbg !3138
  %21 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !3142
  store i8* %21, i8** %10, align 8, !dbg !3142
  %22 = bitcast i8* %15 to i8**, !dbg !3142
  %23 = load i8*, i8** %22, align 8, !dbg !3142
  %24 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3145
  store i8* %23, i8** %24, align 8, !dbg !3146, !tbaa !501
  %25 = icmp eq i8* %23, null, !dbg !3147
  br i1 %25, label %265, label %26, !dbg !3148

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 2, metadata !3135, metadata !DIExpression()), !dbg !3138
  %27 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !3142
  store i8* %27, i8** %10, align 8, !dbg !3142
  %28 = bitcast i8* %21 to i8**, !dbg !3142
  %29 = load i8*, i8** %28, align 8, !dbg !3142
  %30 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3145
  store i8* %29, i8** %30, align 8, !dbg !3146, !tbaa !501
  %31 = icmp eq i8* %29, null, !dbg !3147
  br i1 %31, label %265, label %32, !dbg !3148

32:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 3, metadata !3135, metadata !DIExpression()), !dbg !3138
  %33 = getelementptr inbounds i8, i8* %14, i64 32, !dbg !3142
  store i8* %33, i8** %10, align 8, !dbg !3142
  %34 = bitcast i8* %27 to i8**, !dbg !3142
  %35 = load i8*, i8** %34, align 8, !dbg !3142
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3145
  store i8* %35, i8** %36, align 8, !dbg !3146, !tbaa !501
  %37 = icmp eq i8* %35, null, !dbg !3147
  br i1 %37, label %265, label %38, !dbg !3148

38:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 4, metadata !3135, metadata !DIExpression()), !dbg !3138
  %39 = getelementptr inbounds i8, i8* %14, i64 40, !dbg !3142
  store i8* %39, i8** %10, align 8, !dbg !3142
  %40 = bitcast i8* %33 to i8**, !dbg !3142
  %41 = load i8*, i8** %40, align 8, !dbg !3142
  %42 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3145
  store i8* %41, i8** %42, align 8, !dbg !3146, !tbaa !501
  %43 = icmp eq i8* %41, null, !dbg !3147
  br i1 %43, label %265, label %44, !dbg !3148

44:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 5, metadata !3135, metadata !DIExpression()), !dbg !3138
  %45 = getelementptr inbounds i8, i8* %14, i64 48, !dbg !3142
  store i8* %45, i8** %10, align 8, !dbg !3142
  %46 = bitcast i8* %39 to i8**, !dbg !3142
  %47 = load i8*, i8** %46, align 8, !dbg !3142
  %48 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3145
  store i8* %47, i8** %48, align 8, !dbg !3146, !tbaa !501
  %49 = icmp eq i8* %47, null, !dbg !3147
  br i1 %49, label %265, label %50, !dbg !3148

50:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 6, metadata !3135, metadata !DIExpression()), !dbg !3138
  %51 = getelementptr inbounds i8, i8* %14, i64 56, !dbg !3142
  store i8* %51, i8** %10, align 8, !dbg !3142
  %52 = bitcast i8* %45 to i8**, !dbg !3142
  %53 = load i8*, i8** %52, align 8, !dbg !3142
  %54 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3145
  store i8* %53, i8** %54, align 8, !dbg !3146, !tbaa !501
  %55 = icmp eq i8* %53, null, !dbg !3147
  br i1 %55, label %265, label %56, !dbg !3148

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 7, metadata !3135, metadata !DIExpression()), !dbg !3138
  %57 = getelementptr inbounds i8, i8* %14, i64 64, !dbg !3142
  store i8* %57, i8** %10, align 8, !dbg !3142
  %58 = bitcast i8* %51 to i8**, !dbg !3142
  %59 = load i8*, i8** %58, align 8, !dbg !3142
  %60 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3145
  store i8* %59, i8** %60, align 8, !dbg !3146, !tbaa !501
  %61 = icmp eq i8* %59, null, !dbg !3147
  br i1 %61, label %265, label %62, !dbg !3148

62:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 8, metadata !3135, metadata !DIExpression()), !dbg !3138
  %63 = getelementptr inbounds i8, i8* %14, i64 72, !dbg !3142
  store i8* %63, i8** %10, align 8, !dbg !3142
  %64 = bitcast i8* %57 to i8**, !dbg !3142
  %65 = load i8*, i8** %64, align 8, !dbg !3142
  %66 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3145
  store i8* %65, i8** %66, align 8, !dbg !3146, !tbaa !501
  %67 = icmp eq i8* %65, null, !dbg !3147
  br i1 %67, label %265, label %68, !dbg !3148

68:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i64 9, metadata !3135, metadata !DIExpression()), !dbg !3138
  %69 = getelementptr inbounds i8, i8* %14, i64 80, !dbg !3142
  store i8* %69, i8** %10, align 8, !dbg !3142
  br label %258, !dbg !3148

70:                                               ; preds = %5
  %71 = add nsw i32 %11, 8, !dbg !3142
  store i32 %71, i32* %8, align 8, !dbg !3142
  %72 = icmp ult i32 %11, -7, !dbg !3142
  br i1 %72, label %73, label %77, !dbg !3142

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8, !dbg !3142
  %75 = sext i32 %11 to i64, !dbg !3142
  %76 = getelementptr inbounds i8, i8* %74, i64 %75, !dbg !3142
  br label %80, !dbg !3142

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8, !dbg !3142
  %79 = getelementptr inbounds i8, i8* %78, i64 8, !dbg !3142
  store i8* %79, i8** %10, align 8, !dbg !3142
  br label %80, !dbg !3142

80:                                               ; preds = %77, %73
  %81 = phi i8* [ %76, %73 ], [ %78, %77 ]
  %82 = bitcast i8* %81 to i8**, !dbg !3142
  %83 = load i8*, i8** %82, align 8, !dbg !3142
  %84 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3145
  store i8* %83, i8** %84, align 8, !dbg !3146, !tbaa !501
  %85 = icmp eq i8* %83, null, !dbg !3147
  br i1 %85, label %265, label %86, !dbg !3148

86:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i64 1, metadata !3135, metadata !DIExpression()), !dbg !3138
  %87 = icmp sgt i32 %11, -9, !dbg !3142
  br i1 %87, label %95, label %88, !dbg !3142

88:                                               ; preds = %86
  %89 = add nsw i32 %11, 16, !dbg !3142
  store i32 %89, i32* %8, align 8, !dbg !3142
  %90 = icmp ult i32 %71, -7, !dbg !3142
  br i1 %90, label %91, label %95, !dbg !3142

91:                                               ; preds = %88
  %92 = load i8*, i8** %9, align 8, !dbg !3142
  %93 = sext i32 %71 to i64, !dbg !3142
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !3142
  br label %99, !dbg !3142

95:                                               ; preds = %88, %86
  %96 = phi i32 [ %89, %88 ], [ %71, %86 ]
  %97 = load i8*, i8** %10, align 8, !dbg !3142
  %98 = getelementptr inbounds i8, i8* %97, i64 8, !dbg !3142
  store i8* %98, i8** %10, align 8, !dbg !3142
  br label %99, !dbg !3142

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %89, %91 ], [ %96, %95 ]
  %101 = phi i8* [ %94, %91 ], [ %97, %95 ]
  %102 = bitcast i8* %101 to i8**, !dbg !3142
  %103 = load i8*, i8** %102, align 8, !dbg !3142
  %104 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3145
  store i8* %103, i8** %104, align 8, !dbg !3146, !tbaa !501
  %105 = icmp eq i8* %103, null, !dbg !3147
  br i1 %105, label %265, label %106, !dbg !3148

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i64 2, metadata !3135, metadata !DIExpression()), !dbg !3138
  %107 = icmp sgt i32 %100, -1, !dbg !3142
  br i1 %107, label %115, label %108, !dbg !3142

108:                                              ; preds = %106
  %109 = add nsw i32 %100, 8, !dbg !3142
  store i32 %109, i32* %8, align 8, !dbg !3142
  %110 = icmp ult i32 %100, -7, !dbg !3142
  br i1 %110, label %111, label %115, !dbg !3142

111:                                              ; preds = %108
  %112 = load i8*, i8** %9, align 8, !dbg !3142
  %113 = sext i32 %100 to i64, !dbg !3142
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !3142
  br label %119, !dbg !3142

115:                                              ; preds = %108, %106
  %116 = phi i32 [ %109, %108 ], [ %100, %106 ]
  %117 = load i8*, i8** %10, align 8, !dbg !3142
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !3142
  store i8* %118, i8** %10, align 8, !dbg !3142
  br label %119, !dbg !3142

119:                                              ; preds = %115, %111
  %120 = phi i32 [ %109, %111 ], [ %116, %115 ]
  %121 = phi i8* [ %114, %111 ], [ %117, %115 ]
  %122 = bitcast i8* %121 to i8**, !dbg !3142
  %123 = load i8*, i8** %122, align 8, !dbg !3142
  %124 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3145
  store i8* %123, i8** %124, align 8, !dbg !3146, !tbaa !501
  %125 = icmp eq i8* %123, null, !dbg !3147
  br i1 %125, label %265, label %126, !dbg !3148

126:                                              ; preds = %119
  call void @llvm.dbg.value(metadata i64 3, metadata !3135, metadata !DIExpression()), !dbg !3138
  %127 = icmp sgt i32 %120, -1, !dbg !3142
  br i1 %127, label %135, label %128, !dbg !3142

128:                                              ; preds = %126
  %129 = add nsw i32 %120, 8, !dbg !3142
  store i32 %129, i32* %8, align 8, !dbg !3142
  %130 = icmp ult i32 %120, -7, !dbg !3142
  br i1 %130, label %131, label %135, !dbg !3142

131:                                              ; preds = %128
  %132 = load i8*, i8** %9, align 8, !dbg !3142
  %133 = sext i32 %120 to i64, !dbg !3142
  %134 = getelementptr inbounds i8, i8* %132, i64 %133, !dbg !3142
  br label %139, !dbg !3142

135:                                              ; preds = %128, %126
  %136 = phi i32 [ %129, %128 ], [ %120, %126 ]
  %137 = load i8*, i8** %10, align 8, !dbg !3142
  %138 = getelementptr inbounds i8, i8* %137, i64 8, !dbg !3142
  store i8* %138, i8** %10, align 8, !dbg !3142
  br label %139, !dbg !3142

139:                                              ; preds = %135, %131
  %140 = phi i32 [ %129, %131 ], [ %136, %135 ]
  %141 = phi i8* [ %134, %131 ], [ %137, %135 ]
  %142 = bitcast i8* %141 to i8**, !dbg !3142
  %143 = load i8*, i8** %142, align 8, !dbg !3142
  %144 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3145
  store i8* %143, i8** %144, align 8, !dbg !3146, !tbaa !501
  %145 = icmp eq i8* %143, null, !dbg !3147
  br i1 %145, label %265, label %146, !dbg !3148

146:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i64 4, metadata !3135, metadata !DIExpression()), !dbg !3138
  %147 = icmp sgt i32 %140, -1, !dbg !3142
  br i1 %147, label %155, label %148, !dbg !3142

148:                                              ; preds = %146
  %149 = add nsw i32 %140, 8, !dbg !3142
  store i32 %149, i32* %8, align 8, !dbg !3142
  %150 = icmp ult i32 %140, -7, !dbg !3142
  br i1 %150, label %151, label %155, !dbg !3142

151:                                              ; preds = %148
  %152 = load i8*, i8** %9, align 8, !dbg !3142
  %153 = sext i32 %140 to i64, !dbg !3142
  %154 = getelementptr inbounds i8, i8* %152, i64 %153, !dbg !3142
  br label %159, !dbg !3142

155:                                              ; preds = %148, %146
  %156 = phi i32 [ %149, %148 ], [ %140, %146 ]
  %157 = load i8*, i8** %10, align 8, !dbg !3142
  %158 = getelementptr inbounds i8, i8* %157, i64 8, !dbg !3142
  store i8* %158, i8** %10, align 8, !dbg !3142
  br label %159, !dbg !3142

159:                                              ; preds = %155, %151
  %160 = phi i32 [ %149, %151 ], [ %156, %155 ]
  %161 = phi i8* [ %154, %151 ], [ %157, %155 ]
  %162 = bitcast i8* %161 to i8**, !dbg !3142
  %163 = load i8*, i8** %162, align 8, !dbg !3142
  %164 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3145
  store i8* %163, i8** %164, align 8, !dbg !3146, !tbaa !501
  %165 = icmp eq i8* %163, null, !dbg !3147
  br i1 %165, label %265, label %166, !dbg !3148

166:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i64 5, metadata !3135, metadata !DIExpression()), !dbg !3138
  %167 = icmp sgt i32 %160, -1, !dbg !3142
  br i1 %167, label %175, label %168, !dbg !3142

168:                                              ; preds = %166
  %169 = add nsw i32 %160, 8, !dbg !3142
  store i32 %169, i32* %8, align 8, !dbg !3142
  %170 = icmp ult i32 %160, -7, !dbg !3142
  br i1 %170, label %171, label %175, !dbg !3142

171:                                              ; preds = %168
  %172 = load i8*, i8** %9, align 8, !dbg !3142
  %173 = sext i32 %160 to i64, !dbg !3142
  %174 = getelementptr inbounds i8, i8* %172, i64 %173, !dbg !3142
  br label %179, !dbg !3142

175:                                              ; preds = %168, %166
  %176 = phi i32 [ %169, %168 ], [ %160, %166 ]
  %177 = load i8*, i8** %10, align 8, !dbg !3142
  %178 = getelementptr inbounds i8, i8* %177, i64 8, !dbg !3142
  store i8* %178, i8** %10, align 8, !dbg !3142
  br label %179, !dbg !3142

179:                                              ; preds = %175, %171
  %180 = phi i32 [ %169, %171 ], [ %176, %175 ]
  %181 = phi i8* [ %174, %171 ], [ %177, %175 ]
  %182 = bitcast i8* %181 to i8**, !dbg !3142
  %183 = load i8*, i8** %182, align 8, !dbg !3142
  %184 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3145
  store i8* %183, i8** %184, align 8, !dbg !3146, !tbaa !501
  %185 = icmp eq i8* %183, null, !dbg !3147
  br i1 %185, label %265, label %186, !dbg !3148

186:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i64 6, metadata !3135, metadata !DIExpression()), !dbg !3138
  %187 = icmp sgt i32 %180, -1, !dbg !3142
  br i1 %187, label %195, label %188, !dbg !3142

188:                                              ; preds = %186
  %189 = add nsw i32 %180, 8, !dbg !3142
  store i32 %189, i32* %8, align 8, !dbg !3142
  %190 = icmp ult i32 %180, -7, !dbg !3142
  br i1 %190, label %191, label %195, !dbg !3142

191:                                              ; preds = %188
  %192 = load i8*, i8** %9, align 8, !dbg !3142
  %193 = sext i32 %180 to i64, !dbg !3142
  %194 = getelementptr inbounds i8, i8* %192, i64 %193, !dbg !3142
  br label %199, !dbg !3142

195:                                              ; preds = %188, %186
  %196 = phi i32 [ %189, %188 ], [ %180, %186 ]
  %197 = load i8*, i8** %10, align 8, !dbg !3142
  %198 = getelementptr inbounds i8, i8* %197, i64 8, !dbg !3142
  store i8* %198, i8** %10, align 8, !dbg !3142
  br label %199, !dbg !3142

199:                                              ; preds = %195, %191
  %200 = phi i32 [ %189, %191 ], [ %196, %195 ]
  %201 = phi i8* [ %194, %191 ], [ %197, %195 ]
  %202 = bitcast i8* %201 to i8**, !dbg !3142
  %203 = load i8*, i8** %202, align 8, !dbg !3142
  %204 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3145
  store i8* %203, i8** %204, align 8, !dbg !3146, !tbaa !501
  %205 = icmp eq i8* %203, null, !dbg !3147
  br i1 %205, label %265, label %206, !dbg !3148

206:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i64 7, metadata !3135, metadata !DIExpression()), !dbg !3138
  %207 = icmp sgt i32 %200, -1, !dbg !3142
  br i1 %207, label %215, label %208, !dbg !3142

208:                                              ; preds = %206
  %209 = add nsw i32 %200, 8, !dbg !3142
  store i32 %209, i32* %8, align 8, !dbg !3142
  %210 = icmp ult i32 %200, -7, !dbg !3142
  br i1 %210, label %211, label %215, !dbg !3142

211:                                              ; preds = %208
  %212 = load i8*, i8** %9, align 8, !dbg !3142
  %213 = sext i32 %200 to i64, !dbg !3142
  %214 = getelementptr inbounds i8, i8* %212, i64 %213, !dbg !3142
  br label %219, !dbg !3142

215:                                              ; preds = %208, %206
  %216 = phi i32 [ %209, %208 ], [ %200, %206 ]
  %217 = load i8*, i8** %10, align 8, !dbg !3142
  %218 = getelementptr inbounds i8, i8* %217, i64 8, !dbg !3142
  store i8* %218, i8** %10, align 8, !dbg !3142
  br label %219, !dbg !3142

219:                                              ; preds = %215, %211
  %220 = phi i32 [ %209, %211 ], [ %216, %215 ]
  %221 = phi i8* [ %214, %211 ], [ %217, %215 ]
  %222 = bitcast i8* %221 to i8**, !dbg !3142
  %223 = load i8*, i8** %222, align 8, !dbg !3142
  %224 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3145
  store i8* %223, i8** %224, align 8, !dbg !3146, !tbaa !501
  %225 = icmp eq i8* %223, null, !dbg !3147
  br i1 %225, label %265, label %226, !dbg !3148

226:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i64 8, metadata !3135, metadata !DIExpression()), !dbg !3138
  %227 = icmp sgt i32 %220, -1, !dbg !3142
  br i1 %227, label %235, label %228, !dbg !3142

228:                                              ; preds = %226
  %229 = add nsw i32 %220, 8, !dbg !3142
  store i32 %229, i32* %8, align 8, !dbg !3142
  %230 = icmp ult i32 %220, -7, !dbg !3142
  br i1 %230, label %231, label %235, !dbg !3142

231:                                              ; preds = %228
  %232 = load i8*, i8** %9, align 8, !dbg !3142
  %233 = sext i32 %220 to i64, !dbg !3142
  %234 = getelementptr inbounds i8, i8* %232, i64 %233, !dbg !3142
  br label %239, !dbg !3142

235:                                              ; preds = %228, %226
  %236 = phi i32 [ %229, %228 ], [ %220, %226 ]
  %237 = load i8*, i8** %10, align 8, !dbg !3142
  %238 = getelementptr inbounds i8, i8* %237, i64 8, !dbg !3142
  store i8* %238, i8** %10, align 8, !dbg !3142
  br label %239, !dbg !3142

239:                                              ; preds = %235, %231
  %240 = phi i32 [ %229, %231 ], [ %236, %235 ]
  %241 = phi i8* [ %234, %231 ], [ %237, %235 ]
  %242 = bitcast i8* %241 to i8**, !dbg !3142
  %243 = load i8*, i8** %242, align 8, !dbg !3142
  %244 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3145
  store i8* %243, i8** %244, align 8, !dbg !3146, !tbaa !501
  %245 = icmp eq i8* %243, null, !dbg !3147
  br i1 %245, label %265, label %246, !dbg !3148

246:                                              ; preds = %239
  call void @llvm.dbg.value(metadata i64 9, metadata !3135, metadata !DIExpression()), !dbg !3138
  %247 = icmp sgt i32 %240, -1, !dbg !3142
  br i1 %247, label %255, label %248, !dbg !3142

248:                                              ; preds = %246
  %249 = add nsw i32 %240, 8, !dbg !3142
  store i32 %249, i32* %8, align 8, !dbg !3142
  %250 = icmp ult i32 %240, -7, !dbg !3142
  br i1 %250, label %251, label %255, !dbg !3142

251:                                              ; preds = %248
  %252 = load i8*, i8** %9, align 8, !dbg !3142
  %253 = sext i32 %240 to i64, !dbg !3142
  %254 = getelementptr inbounds i8, i8* %252, i64 %253, !dbg !3142
  br label %258, !dbg !3142

255:                                              ; preds = %248, %246
  %256 = load i8*, i8** %10, align 8, !dbg !3142
  %257 = getelementptr inbounds i8, i8* %256, i64 8, !dbg !3142
  store i8* %257, i8** %10, align 8, !dbg !3142
  br label %258, !dbg !3142

258:                                              ; preds = %251, %255, %68
  %259 = phi i8* [ %63, %68 ], [ %254, %251 ], [ %256, %255 ]
  %260 = bitcast i8* %259 to i8**, !dbg !3142
  %261 = load i8*, i8** %260, align 8, !dbg !3142
  %262 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3145
  store i8* %261, i8** %262, align 8, !dbg !3146, !tbaa !501
  %263 = icmp eq i8* %261, null, !dbg !3147
  %264 = select i1 %263, i64 9, i64 10, !dbg !3148
  br label %265, !dbg !3149

265:                                              ; preds = %258, %80, %99, %119, %139, %159, %179, %199, %219, %239, %13, %20, %26, %32, %38, %44, %50, %56, %62
  %266 = phi i64 [ 0, %13 ], [ 1, %20 ], [ 2, %26 ], [ 3, %32 ], [ 4, %38 ], [ 5, %44 ], [ 6, %50 ], [ 7, %56 ], [ 8, %62 ], [ 0, %80 ], [ 1, %99 ], [ 2, %119 ], [ 3, %139 ], [ 4, %159 ], [ 5, %179 ], [ 6, %199 ], [ 7, %219 ], [ 8, %239 ], [ %264, %258 ]
  %267 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3149
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %267, i64 noundef %266), !dbg !3150
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3151
  ret void, !dbg !3151
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3152 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3156, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i8* %1, metadata !3157, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i8* %2, metadata !3158, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i8* %3, metadata !3159, metadata !DIExpression()), !dbg !3161
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3162
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3162
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3160, metadata !DIExpression()), !dbg !3163
  call void @llvm.va_start(i8* nonnull %7), !dbg !3164
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3165
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3165
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3165, !tbaa.struct !1098
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3165
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3165
  call void @llvm.va_end(i8* nonnull %7), !dbg !3166
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3167
  ret void, !dbg !3167
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3168 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3169, !tbaa !501
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.86, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3169
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.103, i64 0, i64 0), i32 noundef 5) #34, !dbg !3170
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.104, i64 0, i64 0)) #34, !dbg !3170
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #34, !dbg !3171
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.105, i64 0, i64 0)) #34, !dbg !3171
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #34, !dbg !3172
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #34, !dbg !3172
  ret void, !dbg !3173
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3174 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3179, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %1, metadata !3180, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %2, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i8* %0, metadata !3183, metadata !DIExpression()) #34, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %1, metadata !3186, metadata !DIExpression()) #34, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %2, metadata !3187, metadata !DIExpression()) #34, !dbg !3188
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3190
  call void @llvm.dbg.value(metadata i8* %4, metadata !3191, metadata !DIExpression()) #34, !dbg !3196
  %5 = icmp eq i8* %4, null, !dbg !3198
  br i1 %5, label %6, label %7, !dbg !3200

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3201
  unreachable, !dbg !3201

7:                                                ; preds = %3
  ret i8* %4, !dbg !3202
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3184 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3183, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %1, metadata !3186, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %2, metadata !3187, metadata !DIExpression()), !dbg !3203
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %4, metadata !3191, metadata !DIExpression()) #34, !dbg !3205
  %5 = icmp eq i8* %4, null, !dbg !3207
  br i1 %5, label %6, label %7, !dbg !3208

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3209
  unreachable, !dbg !3209

7:                                                ; preds = %3
  ret i8* %4, !dbg !3210
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3211 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3215, metadata !DIExpression()), !dbg !3216
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3217
  call void @llvm.dbg.value(metadata i8* %2, metadata !3191, metadata !DIExpression()) #34, !dbg !3218
  %3 = icmp eq i8* %2, null, !dbg !3220
  br i1 %3, label %4, label %5, !dbg !3221

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3222
  unreachable, !dbg !3222

5:                                                ; preds = %1
  ret i8* %2, !dbg !3223
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3224 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3228, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %0, metadata !3230, metadata !DIExpression()) #34, !dbg !3234
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %2, metadata !3191, metadata !DIExpression()) #34, !dbg !3237
  %3 = icmp eq i8* %2, null, !dbg !3239
  br i1 %3, label %4, label %5, !dbg !3240

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3241
  unreachable, !dbg !3241

5:                                                ; preds = %1
  ret i8* %2, !dbg !3242
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3243 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3247, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %0, metadata !3215, metadata !DIExpression()) #34, !dbg !3249
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3251
  call void @llvm.dbg.value(metadata i8* %2, metadata !3191, metadata !DIExpression()) #34, !dbg !3252
  %3 = icmp eq i8* %2, null, !dbg !3254
  br i1 %3, label %4, label %5, !dbg !3255

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3256
  unreachable, !dbg !3256

5:                                                ; preds = %1
  ret i8* %2, !dbg !3257
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3258 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3262, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 %1, metadata !3263, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i8* %0, metadata !3265, metadata !DIExpression()) #34, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %1, metadata !3269, metadata !DIExpression()) #34, !dbg !3270
  %3 = icmp eq i64 %1, 0, !dbg !3272
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3272
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !3273
  call void @llvm.dbg.value(metadata i8* %5, metadata !3191, metadata !DIExpression()) #34, !dbg !3274
  %6 = icmp eq i8* %5, null, !dbg !3276
  br i1 %6, label %7, label %8, !dbg !3277

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3278
  unreachable, !dbg !3278

8:                                                ; preds = %2
  ret i8* %5, !dbg !3279
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3280 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3284, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %1, metadata !3285, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8* %0, metadata !3287, metadata !DIExpression()) #34, !dbg !3291
  call void @llvm.dbg.value(metadata i64 %1, metadata !3290, metadata !DIExpression()) #34, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %0, metadata !3265, metadata !DIExpression()) #34, !dbg !3293
  call void @llvm.dbg.value(metadata i64 %1, metadata !3269, metadata !DIExpression()) #34, !dbg !3293
  %3 = icmp eq i64 %1, 0, !dbg !3295
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3295
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %5, metadata !3191, metadata !DIExpression()) #34, !dbg !3297
  %6 = icmp eq i8* %5, null, !dbg !3299
  br i1 %6, label %7, label %8, !dbg !3300

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3301
  unreachable, !dbg !3301

8:                                                ; preds = %2
  ret i8* %5, !dbg !3302
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3303 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %1, metadata !3308, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %2, metadata !3309, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8* %0, metadata !3311, metadata !DIExpression()) #34, !dbg !3316
  call void @llvm.dbg.value(metadata i64 %1, metadata !3314, metadata !DIExpression()) #34, !dbg !3316
  call void @llvm.dbg.value(metadata i64 %2, metadata !3315, metadata !DIExpression()) #34, !dbg !3316
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3318
  call void @llvm.dbg.value(metadata i8* %4, metadata !3191, metadata !DIExpression()) #34, !dbg !3319
  %5 = icmp eq i8* %4, null, !dbg !3321
  br i1 %5, label %6, label %7, !dbg !3322

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3323
  unreachable, !dbg !3323

7:                                                ; preds = %3
  ret i8* %4, !dbg !3324
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3325 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3329, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i64 %1, metadata !3330, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i8* null, metadata !3183, metadata !DIExpression()) #34, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %0, metadata !3186, metadata !DIExpression()) #34, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %1, metadata !3187, metadata !DIExpression()) #34, !dbg !3332
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !3334
  call void @llvm.dbg.value(metadata i8* %3, metadata !3191, metadata !DIExpression()) #34, !dbg !3335
  %4 = icmp eq i8* %3, null, !dbg !3337
  br i1 %4, label %5, label %6, !dbg !3338

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3339
  unreachable, !dbg !3339

6:                                                ; preds = %2
  ret i8* %3, !dbg !3340
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3341 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3343, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i64 %1, metadata !3344, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i8* null, metadata !3307, metadata !DIExpression()) #34, !dbg !3346
  call void @llvm.dbg.value(metadata i64 %0, metadata !3308, metadata !DIExpression()) #34, !dbg !3346
  call void @llvm.dbg.value(metadata i64 %1, metadata !3309, metadata !DIExpression()) #34, !dbg !3346
  call void @llvm.dbg.value(metadata i8* null, metadata !3311, metadata !DIExpression()) #34, !dbg !3348
  call void @llvm.dbg.value(metadata i64 %0, metadata !3314, metadata !DIExpression()) #34, !dbg !3348
  call void @llvm.dbg.value(metadata i64 %1, metadata !3315, metadata !DIExpression()) #34, !dbg !3348
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !3350
  call void @llvm.dbg.value(metadata i8* %3, metadata !3191, metadata !DIExpression()) #34, !dbg !3351
  %4 = icmp eq i8* %3, null, !dbg !3353
  br i1 %4, label %5, label %6, !dbg !3354

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3355
  unreachable, !dbg !3355

6:                                                ; preds = %2
  ret i8* %3, !dbg !3356
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3357 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3361, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64* %1, metadata !3362, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8* %0, metadata !430, metadata !DIExpression()) #34, !dbg !3364
  call void @llvm.dbg.value(metadata i64* %1, metadata !431, metadata !DIExpression()) #34, !dbg !3364
  call void @llvm.dbg.value(metadata i64 1, metadata !432, metadata !DIExpression()) #34, !dbg !3364
  %3 = load i64, i64* %1, align 8, !dbg !3366, !tbaa !2429
  call void @llvm.dbg.value(metadata i64 %3, metadata !433, metadata !DIExpression()) #34, !dbg !3364
  %4 = icmp eq i8* %0, null, !dbg !3367
  br i1 %4, label %5, label %8, !dbg !3369

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3370
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3373
  br label %15, !dbg !3373

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3374
  %10 = add nuw i64 %9, 1, !dbg !3374
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #34, !dbg !3374
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3374
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3374
  call void @llvm.dbg.value(metadata i64 %13, metadata !433, metadata !DIExpression()) #34, !dbg !3364
  br i1 %12, label %14, label %15, !dbg !3377

14:                                               ; preds = %8
  tail call void @xalloc_die() #36, !dbg !3378
  unreachable, !dbg !3378

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3364
  call void @llvm.dbg.value(metadata i64 %16, metadata !433, metadata !DIExpression()) #34, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %0, metadata !3183, metadata !DIExpression()) #34, !dbg !3379
  call void @llvm.dbg.value(metadata i64 %16, metadata !3186, metadata !DIExpression()) #34, !dbg !3379
  call void @llvm.dbg.value(metadata i64 1, metadata !3187, metadata !DIExpression()) #34, !dbg !3379
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #34, !dbg !3381
  call void @llvm.dbg.value(metadata i8* %17, metadata !3191, metadata !DIExpression()) #34, !dbg !3382
  %18 = icmp eq i8* %17, null, !dbg !3384
  br i1 %18, label %19, label %20, !dbg !3385

19:                                               ; preds = %15
  tail call void @xalloc_die() #36, !dbg !3386
  unreachable, !dbg !3386

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !430, metadata !DIExpression()) #34, !dbg !3364
  store i64 %16, i64* %1, align 8, !dbg !3387, !tbaa !2429
  ret i8* %17, !dbg !3388
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !425 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !430, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64* %1, metadata !431, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64 %2, metadata !432, metadata !DIExpression()), !dbg !3389
  %4 = load i64, i64* %1, align 8, !dbg !3390, !tbaa !2429
  call void @llvm.dbg.value(metadata i64 %4, metadata !433, metadata !DIExpression()), !dbg !3389
  %5 = icmp eq i8* %0, null, !dbg !3391
  br i1 %5, label %6, label %13, !dbg !3392

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3393
  br i1 %7, label %8, label %20, !dbg !3394

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %9, metadata !433, metadata !DIExpression()), !dbg !3389
  %10 = icmp ugt i64 %2, 128, !dbg !3397
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3398
  call void @llvm.dbg.value(metadata i64 %12, metadata !433, metadata !DIExpression()), !dbg !3389
  br label %20, !dbg !3399

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3400
  %15 = add nuw i64 %14, 1, !dbg !3400
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3400
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3400
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %18, metadata !433, metadata !DIExpression()), !dbg !3389
  br i1 %17, label %19, label %20, !dbg !3401

19:                                               ; preds = %13
  tail call void @xalloc_die() #36, !dbg !3402
  unreachable, !dbg !3402

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3389
  call void @llvm.dbg.value(metadata i64 %21, metadata !433, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8* %0, metadata !3183, metadata !DIExpression()) #34, !dbg !3403
  call void @llvm.dbg.value(metadata i64 %21, metadata !3186, metadata !DIExpression()) #34, !dbg !3403
  call void @llvm.dbg.value(metadata i64 %2, metadata !3187, metadata !DIExpression()) #34, !dbg !3403
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #34, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %22, metadata !3191, metadata !DIExpression()) #34, !dbg !3406
  %23 = icmp eq i8* %22, null, !dbg !3408
  br i1 %23, label %24, label %25, !dbg !3409

24:                                               ; preds = %20
  tail call void @xalloc_die() #36, !dbg !3410
  unreachable, !dbg !3410

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !430, metadata !DIExpression()), !dbg !3389
  store i64 %21, i64* %1, align 8, !dbg !3411, !tbaa !2429
  ret i8* %22, !dbg !3412
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !437 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !445, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64* %1, metadata !446, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 %2, metadata !447, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 %3, metadata !448, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 %4, metadata !449, metadata !DIExpression()), !dbg !3413
  %6 = load i64, i64* %1, align 8, !dbg !3414, !tbaa !2429
  call void @llvm.dbg.value(metadata i64 %6, metadata !450, metadata !DIExpression()), !dbg !3413
  %7 = ashr i64 %6, 1, !dbg !3415
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3415
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3415
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3415
  call void @llvm.dbg.value(metadata i64 %10, metadata !451, metadata !DIExpression()), !dbg !3413
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3417
  call void @llvm.dbg.value(metadata i64 %11, metadata !451, metadata !DIExpression()), !dbg !3413
  %12 = icmp sgt i64 %3, -1, !dbg !3418
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3420
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3420
  call void @llvm.dbg.value(metadata i64 %15, metadata !451, metadata !DIExpression()), !dbg !3413
  %16 = icmp slt i64 %4, 0, !dbg !3421
  br i1 %16, label %17, label %30, !dbg !3421

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3421
  br i1 %18, label %19, label %24, !dbg !3421

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3421
  %21 = udiv i64 9223372036854775807, %20, !dbg !3421
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3421
  br i1 %23, label %46, label %43, !dbg !3421

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3421
  br i1 %25, label %43, label %26, !dbg !3421

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3421
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3421
  %29 = icmp ult i64 %28, %15, !dbg !3421
  br i1 %29, label %46, label %43, !dbg !3421

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3421
  br i1 %31, label %43, label %32, !dbg !3421

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3421
  br i1 %33, label %34, label %40, !dbg !3421

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3421
  br i1 %35, label %43, label %36, !dbg !3421

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3421
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3421
  %39 = icmp ult i64 %38, %4, !dbg !3421
  br i1 %39, label %46, label %43, !dbg !3421

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3421
  %42 = icmp ult i64 %41, %15, !dbg !3421
  br i1 %42, label %46, label %43, !dbg !3421

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !452, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3413
  %44 = mul i64 %15, %4, !dbg !3421
  call void @llvm.dbg.value(metadata i64 %44, metadata !452, metadata !DIExpression()), !dbg !3413
  %45 = icmp slt i64 %44, 128, !dbg !3421
  br i1 %45, label %46, label %52, !dbg !3421

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !453, metadata !DIExpression()), !dbg !3413
  %48 = sdiv i64 %47, %4, !dbg !3422
  call void @llvm.dbg.value(metadata i64 %48, metadata !451, metadata !DIExpression()), !dbg !3413
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3425
  call void @llvm.dbg.value(metadata i64 %51, metadata !452, metadata !DIExpression()), !dbg !3413
  br label %52, !dbg !3426

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3413
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3413
  call void @llvm.dbg.value(metadata i64 %54, metadata !452, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 %53, metadata !451, metadata !DIExpression()), !dbg !3413
  %55 = icmp eq i8* %0, null, !dbg !3427
  br i1 %55, label %56, label %57, !dbg !3429

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3430, !tbaa !2429
  br label %57, !dbg !3431

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3432
  %59 = icmp slt i64 %58, %2, !dbg !3434
  br i1 %59, label %60, label %97, !dbg !3435

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3436
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3436
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %63, metadata !451, metadata !DIExpression()), !dbg !3413
  br i1 %62, label %96, label %64, !dbg !3437

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3438
  br i1 %66, label %96, label %67, !dbg !3438

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3439

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3439
  br i1 %69, label %70, label %75, !dbg !3439

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3439
  %72 = udiv i64 9223372036854775807, %71, !dbg !3439
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3439
  br i1 %74, label %96, label %94, !dbg !3439

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3439
  br i1 %76, label %94, label %77, !dbg !3439

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3439
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3439
  %80 = icmp ult i64 %79, %63, !dbg !3439
  br i1 %80, label %96, label %94, !dbg !3439

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3439
  br i1 %82, label %94, label %83, !dbg !3439

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3439
  br i1 %84, label %85, label %91, !dbg !3439

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3439
  br i1 %86, label %94, label %87, !dbg !3439

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3439
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3439
  %90 = icmp ult i64 %89, %4, !dbg !3439
  br i1 %90, label %96, label %94, !dbg !3439

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3439
  %93 = icmp ult i64 %92, %63, !dbg !3439
  br i1 %93, label %96, label %94, !dbg !3439

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !452, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3413
  %95 = mul i64 %63, %4, !dbg !3439
  call void @llvm.dbg.value(metadata i64 %95, metadata !452, metadata !DIExpression()), !dbg !3413
  br label %97, !dbg !3440

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #36, !dbg !3441
  unreachable, !dbg !3441

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3413
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3413
  call void @llvm.dbg.value(metadata i64 %99, metadata !452, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 %98, metadata !451, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i8* %0, metadata !3262, metadata !DIExpression()) #34, !dbg !3442
  call void @llvm.dbg.value(metadata i64 %99, metadata !3263, metadata !DIExpression()) #34, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %0, metadata !3265, metadata !DIExpression()) #34, !dbg !3444
  call void @llvm.dbg.value(metadata i64 %99, metadata !3269, metadata !DIExpression()) #34, !dbg !3444
  %100 = icmp eq i64 %99, 0, !dbg !3446
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3446
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #34, !dbg !3447
  call void @llvm.dbg.value(metadata i8* %102, metadata !3191, metadata !DIExpression()) #34, !dbg !3448
  %103 = icmp eq i8* %102, null, !dbg !3450
  br i1 %103, label %104, label %105, !dbg !3451

104:                                              ; preds = %97
  tail call void @xalloc_die() #36, !dbg !3452
  unreachable, !dbg !3452

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !445, metadata !DIExpression()), !dbg !3413
  store i64 %98, i64* %1, align 8, !dbg !3453, !tbaa !2429
  ret i8* %102, !dbg !3454
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3455 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3457, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i64 %0, metadata !3459, metadata !DIExpression()) #34, !dbg !3463
  call void @llvm.dbg.value(metadata i64 1, metadata !3462, metadata !DIExpression()) #34, !dbg !3463
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !3465
  call void @llvm.dbg.value(metadata i8* %2, metadata !3191, metadata !DIExpression()) #34, !dbg !3466
  %3 = icmp eq i8* %2, null, !dbg !3468
  br i1 %3, label %4, label %5, !dbg !3469

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3470
  unreachable, !dbg !3470

5:                                                ; preds = %1
  ret i8* %2, !dbg !3471
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3460 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3459, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 %1, metadata !3462, metadata !DIExpression()), !dbg !3472
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !3473
  call void @llvm.dbg.value(metadata i8* %3, metadata !3191, metadata !DIExpression()) #34, !dbg !3474
  %4 = icmp eq i8* %3, null, !dbg !3476
  br i1 %4, label %5, label %6, !dbg !3477

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3478
  unreachable, !dbg !3478

6:                                                ; preds = %2
  ret i8* %3, !dbg !3479
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3480 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3482, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 %0, metadata !3484, metadata !DIExpression()) #34, !dbg !3488
  call void @llvm.dbg.value(metadata i64 1, metadata !3487, metadata !DIExpression()) #34, !dbg !3488
  call void @llvm.dbg.value(metadata i64 %0, metadata !3490, metadata !DIExpression()) #34, !dbg !3494
  call void @llvm.dbg.value(metadata i64 1, metadata !3493, metadata !DIExpression()) #34, !dbg !3494
  call void @llvm.dbg.value(metadata i64 %0, metadata !3490, metadata !DIExpression()) #34, !dbg !3494
  call void @llvm.dbg.value(metadata i64 1, metadata !3493, metadata !DIExpression()) #34, !dbg !3494
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !3496
  call void @llvm.dbg.value(metadata i8* %2, metadata !3191, metadata !DIExpression()) #34, !dbg !3497
  %3 = icmp eq i8* %2, null, !dbg !3499
  br i1 %3, label %4, label %5, !dbg !3500

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3501
  unreachable, !dbg !3501

5:                                                ; preds = %1
  ret i8* %2, !dbg !3502
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3485 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3484, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i64 %1, metadata !3487, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i64 %0, metadata !3490, metadata !DIExpression()) #34, !dbg !3504
  call void @llvm.dbg.value(metadata i64 %1, metadata !3493, metadata !DIExpression()) #34, !dbg !3504
  call void @llvm.dbg.value(metadata i64 %0, metadata !3490, metadata !DIExpression()) #34, !dbg !3504
  call void @llvm.dbg.value(metadata i64 %1, metadata !3493, metadata !DIExpression()) #34, !dbg !3504
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !3506
  call void @llvm.dbg.value(metadata i8* %3, metadata !3191, metadata !DIExpression()) #34, !dbg !3507
  %4 = icmp eq i8* %3, null, !dbg !3509
  br i1 %4, label %5, label %6, !dbg !3510

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3511
  unreachable, !dbg !3511

6:                                                ; preds = %2
  ret i8* %3, !dbg !3512
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3513 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3517, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i64 %1, metadata !3518, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i64 %1, metadata !3215, metadata !DIExpression()) #34, !dbg !3520
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !3522
  call void @llvm.dbg.value(metadata i8* %3, metadata !3191, metadata !DIExpression()) #34, !dbg !3523
  %4 = icmp eq i8* %3, null, !dbg !3525
  br i1 %4, label %5, label %6, !dbg !3526

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3527
  unreachable, !dbg !3527

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3528, metadata !DIExpression()) #34, !dbg !3533
  call void @llvm.dbg.value(metadata i8* %0, metadata !3531, metadata !DIExpression()) #34, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %1, metadata !3532, metadata !DIExpression()) #34, !dbg !3533
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3535
  ret i8* %3, !dbg !3536
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3537 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3541, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i64 %1, metadata !3542, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i64 %1, metadata !3228, metadata !DIExpression()) #34, !dbg !3544
  call void @llvm.dbg.value(metadata i64 %1, metadata !3230, metadata !DIExpression()) #34, !dbg !3546
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !3548
  call void @llvm.dbg.value(metadata i8* %3, metadata !3191, metadata !DIExpression()) #34, !dbg !3549
  %4 = icmp eq i8* %3, null, !dbg !3551
  br i1 %4, label %5, label %6, !dbg !3552

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3553
  unreachable, !dbg !3553

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3528, metadata !DIExpression()) #34, !dbg !3554
  call void @llvm.dbg.value(metadata i8* %0, metadata !3531, metadata !DIExpression()) #34, !dbg !3554
  call void @llvm.dbg.value(metadata i64 %1, metadata !3532, metadata !DIExpression()) #34, !dbg !3554
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3556
  ret i8* %3, !dbg !3557
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3558 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3562, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %1, metadata !3563, metadata !DIExpression()), !dbg !3565
  %3 = add nsw i64 %1, 1, !dbg !3566
  call void @llvm.dbg.value(metadata i64 %3, metadata !3228, metadata !DIExpression()) #34, !dbg !3567
  call void @llvm.dbg.value(metadata i64 %3, metadata !3230, metadata !DIExpression()) #34, !dbg !3569
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !3571
  call void @llvm.dbg.value(metadata i8* %4, metadata !3191, metadata !DIExpression()) #34, !dbg !3572
  %5 = icmp eq i8* %4, null, !dbg !3574
  br i1 %5, label %6, label %7, !dbg !3575

6:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3576
  unreachable, !dbg !3576

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3564, metadata !DIExpression()), !dbg !3565
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3577
  store i8 0, i8* %8, align 1, !dbg !3578, !tbaa !596
  call void @llvm.dbg.value(metadata i8* %4, metadata !3528, metadata !DIExpression()) #34, !dbg !3579
  call void @llvm.dbg.value(metadata i8* %0, metadata !3531, metadata !DIExpression()) #34, !dbg !3579
  call void @llvm.dbg.value(metadata i64 %1, metadata !3532, metadata !DIExpression()) #34, !dbg !3579
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3581
  ret i8* %4, !dbg !3582
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3583 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3585, metadata !DIExpression()), !dbg !3586
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #35, !dbg !3587
  %3 = add i64 %2, 1, !dbg !3588
  call void @llvm.dbg.value(metadata i8* %0, metadata !3517, metadata !DIExpression()) #34, !dbg !3589
  call void @llvm.dbg.value(metadata i64 %3, metadata !3518, metadata !DIExpression()) #34, !dbg !3589
  call void @llvm.dbg.value(metadata i64 %3, metadata !3215, metadata !DIExpression()) #34, !dbg !3591
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !3593
  call void @llvm.dbg.value(metadata i8* %4, metadata !3191, metadata !DIExpression()) #34, !dbg !3594
  %5 = icmp eq i8* %4, null, !dbg !3596
  br i1 %5, label %6, label %7, !dbg !3597

6:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3598
  unreachable, !dbg !3598

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3528, metadata !DIExpression()) #34, !dbg !3599
  call void @llvm.dbg.value(metadata i8* %0, metadata !3531, metadata !DIExpression()) #34, !dbg !3599
  call void @llvm.dbg.value(metadata i64 %3, metadata !3532, metadata !DIExpression()) #34, !dbg !3599
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #34, !dbg !3601
  ret i8* %4, !dbg !3602
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3603 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3608, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %1, metadata !3605, metadata !DIExpression()), !dbg !3609
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.119, i64 0, i64 0), i32 noundef 5) #34, !dbg !3608
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i64 0, i64 0), i8* noundef %2) #34, !dbg !3608
  %3 = icmp eq i32 %1, 0, !dbg !3608
  tail call void @llvm.assume(i1 %3), !dbg !3608
  tail call void @abort() #36, !dbg !3610
  unreachable, !dbg !3610
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3611 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3649, metadata !DIExpression()), !dbg !3654
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #34, !dbg !3655
  call void @llvm.dbg.value(metadata i1 undef, metadata !3650, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3654
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3656, metadata !DIExpression()), !dbg !3659
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3661
  %4 = load i32, i32* %3, align 8, !dbg !3661, !tbaa !3662
  %5 = and i32 %4, 32, !dbg !3663
  %6 = icmp eq i32 %5, 0, !dbg !3663
  call void @llvm.dbg.value(metadata i1 %6, metadata !3652, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3654
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #34, !dbg !3664
  %8 = icmp eq i32 %7, 0, !dbg !3665
  call void @llvm.dbg.value(metadata i1 %8, metadata !3653, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3654
  br i1 %6, label %9, label %19, !dbg !3666

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3668
  call void @llvm.dbg.value(metadata i1 %10, metadata !3650, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3654
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3669
  %12 = xor i1 %8, true, !dbg !3669
  %13 = sext i1 %12 to i32, !dbg !3669
  br i1 %11, label %22, label %14, !dbg !3669

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #37, !dbg !3670
  %16 = load i32, i32* %15, align 4, !dbg !3670, !tbaa !587
  %17 = icmp ne i32 %16, 9, !dbg !3671
  %18 = sext i1 %17 to i32, !dbg !3672
  br label %22, !dbg !3672

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3673

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #37, !dbg !3675
  store i32 0, i32* %21, align 4, !dbg !3677, !tbaa !587
  br label %22, !dbg !3675

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3654
  ret i32 %23, !dbg !3678
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3679 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3717, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i32 0, metadata !3718, metadata !DIExpression()), !dbg !3721
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3722
  call void @llvm.dbg.value(metadata i32 %2, metadata !3719, metadata !DIExpression()), !dbg !3721
  %3 = icmp slt i32 %2, 0, !dbg !3723
  br i1 %3, label %4, label %6, !dbg !3725

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3726
  br label %24, !dbg !3727

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3728
  %8 = icmp eq i32 %7, 0, !dbg !3728
  br i1 %8, label %13, label %9, !dbg !3730

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3731
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #34, !dbg !3732
  %12 = icmp eq i64 %11, -1, !dbg !3733
  br i1 %12, label %16, label %13, !dbg !3734

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3735
  %15 = icmp eq i32 %14, 0, !dbg !3735
  br i1 %15, label %16, label %18, !dbg !3736

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3718, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i32 0, metadata !3720, metadata !DIExpression()), !dbg !3721
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3737
  call void @llvm.dbg.value(metadata i32 %21, metadata !3720, metadata !DIExpression()), !dbg !3721
  br label %24, !dbg !3738

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #37, !dbg !3739
  %20 = load i32, i32* %19, align 4, !dbg !3739, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %20, metadata !3718, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i32 0, metadata !3720, metadata !DIExpression()), !dbg !3721
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3737
  call void @llvm.dbg.value(metadata i32 %21, metadata !3720, metadata !DIExpression()), !dbg !3721
  %22 = icmp eq i32 %20, 0, !dbg !3740
  br i1 %22, label %24, label %23, !dbg !3738

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3742, !tbaa !587
  call void @llvm.dbg.value(metadata i32 -1, metadata !3720, metadata !DIExpression()), !dbg !3721
  br label %24, !dbg !3744

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3721
  ret i32 %25, !dbg !3745
}

; Function Attrs: nofree nounwind
declare !dbg !3746 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3747 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3748 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !3751 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3753, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i32 %1, metadata !3754, metadata !DIExpression()), !dbg !3759
  %3 = icmp ult i32 %0, 3, !dbg !3760
  br i1 %3, label %4, label %9, !dbg !3760

4:                                                ; preds = %2
  %5 = tail call i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) #34, !dbg !3761
  call void @llvm.dbg.value(metadata i32 %5, metadata !3755, metadata !DIExpression()), !dbg !3762
  %6 = tail call i32* @__errno_location() #37, !dbg !3763
  %7 = load i32, i32* %6, align 4, !dbg !3763, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %7, metadata !3758, metadata !DIExpression()), !dbg !3762
  %8 = tail call i32 @close(i32 noundef %0) #34, !dbg !3764
  store i32 %7, i32* %6, align 4, !dbg !3765, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %5, metadata !3753, metadata !DIExpression()), !dbg !3759
  br label %9, !dbg !3766

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %5, %4 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !3753, metadata !DIExpression()), !dbg !3759
  ret i32 %10, !dbg !3767
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !3768 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3770, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i32 %1, metadata !3771, metadata !DIExpression()), !dbg !3772
  %3 = and i32 %1, 524288, !dbg !3773
  %4 = icmp eq i32 %3, 0, !dbg !3774
  %5 = select i1 %4, i32 0, i32 1030, !dbg !3774
  %6 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef %5, i32 noundef 3) #34, !dbg !3775
  ret i32 %6, !dbg !3776
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3777 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3815, metadata !DIExpression()), !dbg !3816
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3817
  br i1 %2, label %6, label %3, !dbg !3819

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3820
  %5 = icmp eq i32 %4, 0, !dbg !3820
  br i1 %5, label %6, label %8, !dbg !3821

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3822
  br label %17, !dbg !3823

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3824, metadata !DIExpression()) #34, !dbg !3829
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3831
  %10 = load i32, i32* %9, align 8, !dbg !3831, !tbaa !3662
  %11 = and i32 %10, 256, !dbg !3833
  %12 = icmp eq i32 %11, 0, !dbg !3833
  br i1 %12, label %15, label %13, !dbg !3834

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #34, !dbg !3835
  br label %15, !dbg !3835

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3836
  br label %17, !dbg !3837

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3816
  ret i32 %18, !dbg !3838
}

; Function Attrs: nofree nounwind
declare !dbg !3839 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3840 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3879, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i64 %1, metadata !3880, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i32 %2, metadata !3881, metadata !DIExpression()), !dbg !3885
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3886
  %5 = load i8*, i8** %4, align 8, !dbg !3886, !tbaa !3887
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3888
  %7 = load i8*, i8** %6, align 8, !dbg !3888, !tbaa !3889
  %8 = icmp eq i8* %5, %7, !dbg !3890
  br i1 %8, label %9, label %28, !dbg !3891

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3892
  %11 = load i8*, i8** %10, align 8, !dbg !3892, !tbaa !1211
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3893
  %13 = load i8*, i8** %12, align 8, !dbg !3893, !tbaa !3894
  %14 = icmp eq i8* %11, %13, !dbg !3895
  br i1 %14, label %15, label %28, !dbg !3896

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3897
  %17 = load i8*, i8** %16, align 8, !dbg !3897, !tbaa !3898
  %18 = icmp eq i8* %17, null, !dbg !3899
  br i1 %18, label %19, label %28, !dbg !3900

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3901
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #34, !dbg !3902
  call void @llvm.dbg.value(metadata i64 %21, metadata !3882, metadata !DIExpression()), !dbg !3903
  %22 = icmp eq i64 %21, -1, !dbg !3904
  br i1 %22, label %30, label %23, !dbg !3906

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3907
  %25 = load i32, i32* %24, align 8, !dbg !3908, !tbaa !3662
  %26 = and i32 %25, -17, !dbg !3908
  store i32 %26, i32* %24, align 8, !dbg !3908, !tbaa !3662
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3909
  store i64 %21, i64* %27, align 8, !dbg !3910, !tbaa !3911
  br label %30, !dbg !3912

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3913
  br label %30, !dbg !3914

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3885
  ret i32 %31, !dbg !3915
}

; Function Attrs: nofree nounwind
declare !dbg !3916 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3919 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3924, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i8* %1, metadata !3925, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i64 %2, metadata !3926, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3927, metadata !DIExpression()), !dbg !3929
  %5 = icmp eq i8* %1, null, !dbg !3930
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3932
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), i8* %1, !dbg !3932
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %8, metadata !3926, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i8* %7, metadata !3925, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i32* %6, metadata !3924, metadata !DIExpression()), !dbg !3929
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3933
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3935
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3927, metadata !DIExpression()), !dbg !3929
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #34, !dbg !3936
  call void @llvm.dbg.value(metadata i64 %11, metadata !3928, metadata !DIExpression()), !dbg !3929
  %12 = icmp ult i64 %11, -3, !dbg !3937
  br i1 %12, label %13, label %18, !dbg !3939

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #35, !dbg !3940
  %15 = icmp eq i32 %14, 0, !dbg !3940
  br i1 %15, label %16, label %30, !dbg !3941

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3942, metadata !DIExpression()) #34, !dbg !3947
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3949, metadata !DIExpression()) #34, !dbg !3954
  call void @llvm.dbg.value(metadata i32 0, metadata !3952, metadata !DIExpression()) #34, !dbg !3954
  call void @llvm.dbg.value(metadata i64 8, metadata !3953, metadata !DIExpression()) #34, !dbg !3954
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3956
  store i64 0, i64* %17, align 1, !dbg !3956
  br label %30, !dbg !3957

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3958
  br i1 %19, label %20, label %21, !dbg !3960

20:                                               ; preds = %18
  tail call void @abort() #36, !dbg !3961
  unreachable, !dbg !3961

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3962

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #34, !dbg !3964
  br i1 %24, label %30, label %25, !dbg !3965

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3966
  br i1 %26, label %30, label %27, !dbg !3969

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3970, !tbaa !596
  %29 = zext i8 %28 to i32, !dbg !3971
  store i32 %29, i32* %6, align 4, !dbg !3972, !tbaa !587
  br label %30, !dbg !3973

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3929
  ret i64 %31, !dbg !3974
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3975 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #32

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_pipe2(i32* noundef nonnull %0, i32 noundef %1) local_unnamed_addr #12 !dbg !373 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !380, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i32 %1, metadata !381, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i32 undef, metadata !382, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3981
  %3 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !3982
  %4 = bitcast i32* %0 to <2 x i32>*, !dbg !3983
  %5 = load <2 x i32>, <2 x i32>* %4, align 4, !dbg !3983, !tbaa !587
  call void @llvm.dbg.value(metadata i32 undef, metadata !382, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !3981
  %6 = load i32, i32* @rpl_pipe2.have_pipe2_really, align 4, !dbg !3984, !tbaa !587
  %7 = icmp sgt i32 %6, -1, !dbg !3985
  br i1 %7, label %8, label %17, !dbg !3986

8:                                                ; preds = %2
  %9 = tail call i32 @pipe2(i32* noundef nonnull %0, i32 noundef %1) #34, !dbg !3987
  call void @llvm.dbg.value(metadata i32 %9, metadata !384, metadata !DIExpression()), !dbg !3988
  %10 = icmp slt i32 %9, 0, !dbg !3989
  br i1 %10, label %11, label %15, !dbg !3991

11:                                               ; preds = %8
  %12 = tail call i32* @__errno_location() #37, !dbg !3992
  %13 = load i32, i32* %12, align 4, !dbg !3992, !tbaa !587
  %14 = icmp eq i32 %13, 38, !dbg !3993
  br i1 %14, label %16, label %15, !dbg !3994

15:                                               ; preds = %8, %11
  store i32 1, i32* @rpl_pipe2.have_pipe2_really, align 4, !dbg !3988, !tbaa !587
  br label %75

16:                                               ; preds = %11
  store i32 -1, i32* @rpl_pipe2.have_pipe2_really, align 4, !dbg !3988, !tbaa !587
  br label %17

17:                                               ; preds = %16, %2
  %18 = and i32 %1, -526337, !dbg !3995
  %19 = icmp eq i32 %18, 0, !dbg !3997
  br i1 %19, label %22, label %20, !dbg !3998

20:                                               ; preds = %17
  %21 = tail call i32* @__errno_location() #37, !dbg !3999
  store i32 22, i32* %21, align 4, !dbg !4001, !tbaa !587
  br label %75, !dbg !4002

22:                                               ; preds = %17
  %23 = tail call i32 @pipe(i32* noundef nonnull %0) #34, !dbg !4003
  %24 = icmp slt i32 %23, 0, !dbg !4005
  br i1 %24, label %75, label %25, !dbg !4006

25:                                               ; preds = %22
  %26 = and i32 %1, 2048, !dbg !4007
  %27 = icmp eq i32 %26, 0, !dbg !4007
  br i1 %27, label %46, label %28, !dbg !4008

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4, !dbg !4009, !tbaa !587
  %30 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %29, i32 noundef 3, i32 noundef 0) #34, !dbg !4011
  call void @llvm.dbg.value(metadata i32 %30, metadata !388, metadata !DIExpression()), !dbg !4012
  %31 = icmp slt i32 %30, 0, !dbg !4013
  br i1 %31, label %67, label %32, !dbg !4014

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4, !dbg !4015, !tbaa !587
  %34 = or i32 %30, 2048, !dbg !4016
  %35 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %33, i32 noundef 4, i32 noundef %34) #34, !dbg !4017
  %36 = icmp eq i32 %35, -1, !dbg !4018
  br i1 %36, label %67, label %37, !dbg !4019

37:                                               ; preds = %32
  %38 = load i32, i32* %0, align 4, !dbg !4020, !tbaa !587
  %39 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %38, i32 noundef 3, i32 noundef 0) #34, !dbg !4021
  call void @llvm.dbg.value(metadata i32 %39, metadata !388, metadata !DIExpression()), !dbg !4012
  %40 = icmp slt i32 %39, 0, !dbg !4022
  br i1 %40, label %67, label %41, !dbg !4023

41:                                               ; preds = %37
  %42 = load i32, i32* %0, align 4, !dbg !4024, !tbaa !587
  %43 = or i32 %39, 2048, !dbg !4025
  %44 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %42, i32 noundef 4, i32 noundef %43) #34, !dbg !4026
  %45 = icmp eq i32 %44, -1, !dbg !4027
  br i1 %45, label %67, label %46, !dbg !4028

46:                                               ; preds = %41, %25
  %47 = and i32 %1, 524288, !dbg !4029
  %48 = icmp eq i32 %47, 0, !dbg !4029
  br i1 %48, label %75, label %49, !dbg !4030

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4, !dbg !4031, !tbaa !587
  %51 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %50, i32 noundef 1, i32 noundef 0) #34, !dbg !4033
  call void @llvm.dbg.value(metadata i32 %51, metadata !391, metadata !DIExpression()), !dbg !4034
  %52 = icmp slt i32 %51, 0, !dbg !4035
  br i1 %52, label %67, label %53, !dbg !4036

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4, !dbg !4037, !tbaa !587
  %55 = or i32 %51, 1, !dbg !4038
  %56 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %54, i32 noundef 2, i32 noundef %55) #34, !dbg !4039
  %57 = icmp eq i32 %56, -1, !dbg !4040
  br i1 %57, label %67, label %58, !dbg !4041

58:                                               ; preds = %53
  %59 = load i32, i32* %0, align 4, !dbg !4042, !tbaa !587
  %60 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %59, i32 noundef 1, i32 noundef 0) #34, !dbg !4043
  call void @llvm.dbg.value(metadata i32 %60, metadata !391, metadata !DIExpression()), !dbg !4034
  %61 = icmp slt i32 %60, 0, !dbg !4044
  br i1 %61, label %67, label %62, !dbg !4045

62:                                               ; preds = %58
  %63 = load i32, i32* %0, align 4, !dbg !4046, !tbaa !587
  %64 = or i32 %60, 1, !dbg !4047
  %65 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %63, i32 noundef 2, i32 noundef %64) #34, !dbg !4048
  %66 = icmp eq i32 %65, -1, !dbg !4049
  br i1 %66, label %67, label %75, !dbg !4050

67:                                               ; preds = %62, %49, %53, %58, %41, %28, %32, %37
  call void @llvm.dbg.label(metadata !396), !dbg !4051
  %68 = tail call i32* @__errno_location() #37, !dbg !4052
  %69 = load i32, i32* %68, align 4, !dbg !4052, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %69, metadata !394, metadata !DIExpression()), !dbg !4053
  %70 = load i32, i32* %0, align 4, !dbg !4054, !tbaa !587
  %71 = tail call i32 @close(i32 noundef %70) #34, !dbg !4055
  %72 = load i32, i32* %3, align 4, !dbg !4056, !tbaa !587
  %73 = tail call i32 @close(i32 noundef %72) #34, !dbg !4057
  %74 = bitcast i32* %0 to <2 x i32>*, !dbg !4058
  store <2 x i32> %5, <2 x i32>* %74, align 4, !dbg !4058, !tbaa !587
  store i32 %69, i32* %68, align 4, !dbg !4059, !tbaa !587
  br label %75

75:                                               ; preds = %62, %46, %22, %15, %67, %20
  %76 = phi i32 [ -1, %20 ], [ -1, %67 ], [ %9, %15 ], [ -1, %22 ], [ 0, %46 ], [ 0, %62 ]
  ret i32 %76, !dbg !4060
}

; Function Attrs: nounwind
declare !dbg !4061 i32 @pipe2(i32* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4062 i32 @pipe(i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4065 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4067, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %1, metadata !4068, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %2, metadata !4069, metadata !DIExpression()), !dbg !4071
  %4 = icmp eq i64 %2, 0, !dbg !4072
  br i1 %4, label %8, label %5, !dbg !4072

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4072
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4072
  br i1 %7, label %13, label %8, !dbg !4072

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4070, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4071
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4070, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4071
  %9 = mul i64 %2, %1, !dbg !4072
  call void @llvm.dbg.value(metadata i64 %9, metadata !4070, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i8* %0, metadata !4074, metadata !DIExpression()) #34, !dbg !4078
  call void @llvm.dbg.value(metadata i64 %9, metadata !4077, metadata !DIExpression()) #34, !dbg !4078
  %10 = icmp eq i64 %9, 0, !dbg !4080
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4080
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #34, !dbg !4081
  br label %15, !dbg !4082

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4070, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4071
  %14 = tail call i32* @__errno_location() #37, !dbg !4083
  store i32 12, i32* %14, align 4, !dbg !4085, !tbaa !587
  br label %15, !dbg !4086

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4071
  ret i8* %16, !dbg !4087
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4088 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4092, metadata !DIExpression()), !dbg !4097
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4098
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4098
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4093, metadata !DIExpression()), !dbg !4099
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #34, !dbg !4100
  %5 = icmp eq i32 %4, 0, !dbg !4100
  br i1 %5, label %6, label %13, !dbg !4102

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4103, metadata !DIExpression()) #34, !dbg !4107
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0), metadata !4106, metadata !DIExpression()) #34, !dbg !4107
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0), i64 2), !dbg !4110
  %8 = icmp eq i32 %7, 0, !dbg !4111
  br i1 %8, label %12, label %9, !dbg !4112

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4103, metadata !DIExpression()) #34, !dbg !4113
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), metadata !4106, metadata !DIExpression()) #34, !dbg !4113
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i64 6), !dbg !4115
  %11 = icmp eq i32 %10, 0, !dbg !4116
  br i1 %11, label %12, label %13, !dbg !4117

12:                                               ; preds = %9, %6
  br label %13, !dbg !4118

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4097
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4119
  ret i1 %14, !dbg !4119
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4120 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4124, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i8* %1, metadata !4125, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i64 %2, metadata !4126, metadata !DIExpression()), !dbg !4127
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #34, !dbg !4128
  ret i32 %4, !dbg !4129
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4130 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4134, metadata !DIExpression()), !dbg !4135
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #34, !dbg !4136
  ret i8* %2, !dbg !4137
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4138 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4140, metadata !DIExpression()), !dbg !4142
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4143
  call void @llvm.dbg.value(metadata i8* %2, metadata !4141, metadata !DIExpression()), !dbg !4142
  ret i8* %2, !dbg !4144
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4145 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4147, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i8* %1, metadata !4148, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i64 %2, metadata !4149, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i32 %0, metadata !4140, metadata !DIExpression()) #34, !dbg !4155
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i8* %4, metadata !4141, metadata !DIExpression()) #34, !dbg !4155
  call void @llvm.dbg.value(metadata i8* %4, metadata !4150, metadata !DIExpression()), !dbg !4154
  %5 = icmp eq i8* %4, null, !dbg !4158
  br i1 %5, label %6, label %9, !dbg !4159

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4160
  br i1 %7, label %19, label %8, !dbg !4163

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4164, !tbaa !596
  br label %19, !dbg !4165

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #35, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %10, metadata !4151, metadata !DIExpression()), !dbg !4167
  %11 = icmp ult i64 %10, %2, !dbg !4168
  br i1 %11, label %12, label %14, !dbg !4170

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4171
  call void @llvm.dbg.value(metadata i8* %1, metadata !4173, metadata !DIExpression()) #34, !dbg !4178
  call void @llvm.dbg.value(metadata i8* %4, metadata !4176, metadata !DIExpression()) #34, !dbg !4178
  call void @llvm.dbg.value(metadata i64 %13, metadata !4177, metadata !DIExpression()) #34, !dbg !4178
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #34, !dbg !4180
  br label %19, !dbg !4181

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4182
  br i1 %15, label %19, label %16, !dbg !4185

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4186
  call void @llvm.dbg.value(metadata i8* %1, metadata !4173, metadata !DIExpression()) #34, !dbg !4188
  call void @llvm.dbg.value(metadata i8* %4, metadata !4176, metadata !DIExpression()) #34, !dbg !4188
  call void @llvm.dbg.value(metadata i64 %17, metadata !4177, metadata !DIExpression()) #34, !dbg !4188
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #34, !dbg !4190
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4191
  store i8 0, i8* %18, align 1, !dbg !4192, !tbaa !596
  br label %19, !dbg !4193

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4194
  ret i32 %20, !dbg !4195
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
attributes #13 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #15 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind readonly willreturn }
attributes #24 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { argmemonly nofree nounwind willreturn writeonly }
attributes #26 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { nounwind }
attributes #35 = { nounwind readonly willreturn }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind readnone willreturn }
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { cold }
attributes #40 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!9, !124, !129, !136, !351, !181, !397, !400, !402, !195, !404, !212, !222, !254, !406, !414, !343, !421, !455, !457, !459, !461, !463, !465, !467, !357, !377, !469, !472, !474, !476}
!llvm.ident = !{!478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478}
!llvm.module.flags = !{!479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !41)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !31, globals: !40, splitDebugInlining: false, nameTableKind: None)
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
!31 = !{!6, !32, !33, !34, !35, !38, !39}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!40 = !{!0}
!41 = !{!42, !43, !44, !47, !49, !50, !51, !55, !56, !57, !58, !60, !116, !117, !118, !120, !121}
!42 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!43 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!44 = !DILocalVariable(name: "term", scope: !45, file: !3, line: 585, type: !6)
!45 = distinct !DILexicalBlock(scope: !46, file: !3, line: 582, column: 5)
!46 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!47 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !48)
!48 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!49 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!50 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!51 = !DILocalVariable(name: "s", scope: !52, file: !3, line: 608, type: !6)
!52 = distinct !DILexicalBlock(scope: !53, file: !3, line: 605, column: 5)
!53 = distinct !DILexicalBlock(scope: !54, file: !3, line: 604, column: 12)
!54 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!55 = !DILocalVariable(name: "spaces", scope: !52, file: !3, line: 609, type: !35)
!56 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !35)
!57 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!58 = !DILocalVariable(name: "__ptr", scope: !59, file: !3, line: 644, type: !6)
!59 = distinct !DILexicalBlock(scope: !2, file: !3, line: 644, column: 3)
!60 = !DILocalVariable(name: "__stream", scope: !59, file: !3, line: 644, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !64)
!63 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !66)
!65 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !82, !84, !85, !86, !90, !91, !93, !97, !100, !102, !105, !108, !109, !110, !111, !112}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !64, file: !65, line: 51, baseType: !33, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !64, file: !65, line: 54, baseType: !39, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !64, file: !65, line: 55, baseType: !39, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !64, file: !65, line: 56, baseType: !39, size: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !64, file: !65, line: 57, baseType: !39, size: 64, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !64, file: !65, line: 58, baseType: !39, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !64, file: !65, line: 59, baseType: !39, size: 64, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !64, file: !65, line: 60, baseType: !39, size: 64, offset: 448)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !64, file: !65, line: 61, baseType: !39, size: 64, offset: 512)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !64, file: !65, line: 64, baseType: !39, size: 64, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !64, file: !65, line: 65, baseType: !39, size: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !64, file: !65, line: 66, baseType: !39, size: 64, offset: 704)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !64, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !65, line: 36, flags: DIFlagFwdDecl)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !64, file: !65, line: 70, baseType: !83, size: 64, offset: 832)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !64, file: !65, line: 72, baseType: !33, size: 32, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !64, file: !65, line: 73, baseType: !33, size: 32, offset: 928)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !64, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !88, line: 152, baseType: !89)
!88 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!89 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !64, file: !65, line: 77, baseType: !34, size: 16, offset: 1024)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !64, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!92 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !64, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 1)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !64, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !65, line: 43, baseType: null)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !64, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !88, line: 153, baseType: !89)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !64, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !65, line: 37, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !64, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !65, line: 38, flags: DIFlagFwdDecl)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !64, file: !65, line: 93, baseType: !83, size: 64, offset: 1344)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !64, file: !65, line: 94, baseType: !32, size: 64, offset: 1408)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !64, file: !65, line: 95, baseType: !35, size: 64, offset: 1472)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !64, file: !65, line: 96, baseType: !33, size: 32, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !64, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DILocalVariable(name: "__cnt", scope: !59, file: !3, line: 644, type: !35)
!117 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!118 = !DILocalVariable(name: "__ptr", scope: !119, file: !3, line: 686, type: !6)
!119 = distinct !DILexicalBlock(scope: !2, file: !3, line: 686, column: 3)
!120 = !DILocalVariable(name: "__stream", scope: !119, file: !3, line: 686, type: !61)
!121 = !DILocalVariable(name: "__cnt", scope: !119, file: !3, line: 686, type: !35)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "Version", scope: !124, file: !125, line: 3, type: !6, isLocal: false, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !126, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!126 = !{!122}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "file_name", scope: !129, file: !130, line: 45, type: !6, isLocal: true, isDefinition: true)
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !131, splitDebugInlining: false, nameTableKind: None)
!130 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!131 = !{!127, !132}
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !129, file: !130, line: 55, type: !48, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !136, file: !137, line: 66, type: !172, isLocal: false, isDefinition: true)
!136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !137, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !138, globals: !139, splitDebugInlining: false, nameTableKind: None)
!137 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!138 = !{!32, !38}
!139 = !{!140, !166, !134, !168, !170}
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "old_file_name", scope: !142, file: !137, line: 304, type: !6, isLocal: true, isDefinition: true)
!142 = distinct !DISubprogram(name: "verror_at_line", scope: !137, file: !137, line: 298, type: !143, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !159)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !33, !33, !6, !14, !6, !145}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !146, line: 52, baseType: !147)
!146 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !148, line: 32, baseType: !149)
!148 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !150, baseType: !151)
!150 = !DIFile(filename: "lib/error.c", directory: "/src")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !152, size: 256, elements: !153)
!152 = !DINamespace(name: "std", scope: null)
!153 = !{!154, !155, !156, !157, !158}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !151, file: !150, baseType: !32, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !151, file: !150, baseType: !32, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !151, file: !150, baseType: !32, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !151, file: !150, baseType: !33, size: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !151, file: !150, baseType: !33, size: 32, offset: 224)
!159 = !{!160, !161, !162, !163, !164, !165}
!160 = !DILocalVariable(name: "status", arg: 1, scope: !142, file: !137, line: 298, type: !33)
!161 = !DILocalVariable(name: "errnum", arg: 2, scope: !142, file: !137, line: 298, type: !33)
!162 = !DILocalVariable(name: "file_name", arg: 3, scope: !142, file: !137, line: 298, type: !6)
!163 = !DILocalVariable(name: "line_number", arg: 4, scope: !142, file: !137, line: 298, type: !14)
!164 = !DILocalVariable(name: "message", arg: 5, scope: !142, file: !137, line: 298, type: !6)
!165 = !DILocalVariable(name: "args", arg: 6, scope: !142, file: !137, line: 298, type: !145)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "old_line_number", scope: !142, file: !137, line: 305, type: !14, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "error_message_count", scope: !136, file: !137, line: 69, type: !14, isLocal: false, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !136, file: !137, line: 295, type: !33, isLocal: false, isDefinition: true)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{null}
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !177, file: !178, line: 506, type: !33, isLocal: true, isDefinition: true)
!177 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !178, file: !178, line: 485, type: !179, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !183)
!178 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!179 = !DISubroutineType(types: !180)
!180 = !{!33, !33, !33}
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !182, splitDebugInlining: false, nameTableKind: None)
!182 = !{!175}
!183 = !{!184, !185, !186, !187, !190}
!184 = !DILocalVariable(name: "fd", arg: 1, scope: !177, file: !178, line: 485, type: !33)
!185 = !DILocalVariable(name: "target", arg: 2, scope: !177, file: !178, line: 485, type: !33)
!186 = !DILocalVariable(name: "result", scope: !177, file: !178, line: 487, type: !33)
!187 = !DILocalVariable(name: "flags", scope: !188, file: !178, line: 530, type: !33)
!188 = distinct !DILexicalBlock(scope: !189, file: !178, line: 529, column: 5)
!189 = distinct !DILexicalBlock(scope: !177, file: !178, line: 528, column: 7)
!190 = !DILocalVariable(name: "saved_errno", scope: !191, file: !178, line: 533, type: !33)
!191 = distinct !DILexicalBlock(scope: !192, file: !178, line: 532, column: 9)
!192 = distinct !DILexicalBlock(scope: !188, file: !178, line: 531, column: 11)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "long_options", scope: !195, file: !196, line: 34, type: !198, isLocal: true, isDefinition: true)
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !197, splitDebugInlining: false, nameTableKind: None)
!196 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!197 = !{!193}
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 768, elements: !208)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !201, line: 50, size: 256, elements: !202)
!201 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!202 = !{!203, !204, !205, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !201, line: 52, baseType: !6, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !200, file: !201, line: 55, baseType: !33, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !200, file: !201, line: 56, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !200, file: !201, line: 57, baseType: !33, size: 32, offset: 192)
!208 = !{!209}
!209 = !DISubrange(count: 3)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "program_name", scope: !212, file: !213, line: 31, type: !6, isLocal: false, isDefinition: true)
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !214, globals: !215, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!214 = !{!39}
!215 = !{!210}
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "utf07FF", scope: !218, file: !219, line: 46, type: !249, isLocal: true, isDefinition: true)
!218 = distinct !DISubprogram(name: "proper_name_lite", scope: !219, file: !219, line: 38, type: !220, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !224)
!219 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!220 = !DISubroutineType(types: !221)
!221 = !{!6, !6, !6}
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !223, splitDebugInlining: false, nameTableKind: None)
!223 = !{!216}
!224 = !{!225, !226, !227, !228, !233}
!225 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !218, file: !219, line: 38, type: !6)
!226 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !218, file: !219, line: 38, type: !6)
!227 = !DILocalVariable(name: "translation", scope: !218, file: !219, line: 40, type: !6)
!228 = !DILocalVariable(name: "w", scope: !218, file: !219, line: 47, type: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !230, line: 37, baseType: !231)
!230 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !88, line: 57, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !88, line: 42, baseType: !14)
!233 = !DILocalVariable(name: "mbs", scope: !218, file: !219, line: 48, type: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !235, line: 6, baseType: !236)
!235 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !237, line: 21, baseType: !238)
!237 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 13, size: 64, elements: !239)
!239 = !{!240, !241}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !238, file: !237, line: 15, baseType: !33, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !238, file: !237, line: 20, baseType: !242, size: 32, offset: 32)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !237, line: 16, size: 32, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !242, file: !237, line: 18, baseType: !14, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !242, file: !237, line: 19, baseType: !246, size: 32)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 4)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 2)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !254, file: !255, line: 76, type: !337, isLocal: false, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, retainedTypes: !276, globals: !277, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!256 = !{!257, !271, !12}
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !258, line: 42, baseType: !14, size: 32, elements: !259)
!258 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!260 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!261 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!262 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!263 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!264 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!265 = !DIEnumerator(name: "c_quoting_style", value: 5)
!266 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!267 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!268 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!269 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!270 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !258, line: 254, baseType: !14, size: 32, elements: !272)
!272 = !{!273, !274, !275}
!273 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!274 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!275 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!276 = !{!33, !34, !35}
!277 = !{!252, !278, !284, !296, !298, !303, !326, !333, !335}
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !254, file: !255, line: 92, type: !280, isLocal: false, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 320, elements: !282)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!282 = !{!283}
!283 = !DISubrange(count: 10)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !254, file: !255, line: 1040, type: !286, isLocal: false, isDefinition: true)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !255, line: 56, size: 448, elements: !287)
!287 = !{!288, !289, !290, !294, !295}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !286, file: !255, line: 59, baseType: !257, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !255, line: 62, baseType: !33, size: 32, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !286, file: !255, line: 66, baseType: !291, size: 256, offset: 64)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 8)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !286, file: !255, line: 69, baseType: !6, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !286, file: !255, line: 72, baseType: !6, size: 64, offset: 384)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !254, file: !255, line: 107, type: !286, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "slot0", scope: !254, file: !255, line: 831, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 256)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "quote", scope: !305, file: !255, line: 228, type: !324, isLocal: true, isDefinition: true)
!305 = distinct !DISubprogram(name: "gettext_quote", scope: !255, file: !255, line: 197, type: !306, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{!6, !6, !257}
!308 = !{!309, !310, !311, !312, !313}
!309 = !DILocalVariable(name: "msgid", arg: 1, scope: !305, file: !255, line: 197, type: !6)
!310 = !DILocalVariable(name: "s", arg: 2, scope: !305, file: !255, line: 197, type: !257)
!311 = !DILocalVariable(name: "translation", scope: !305, file: !255, line: 199, type: !6)
!312 = !DILocalVariable(name: "w", scope: !305, file: !255, line: 229, type: !229)
!313 = !DILocalVariable(name: "mbs", scope: !305, file: !255, line: 230, type: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !235, line: 6, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !237, line: 21, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 13, size: 64, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !316, file: !237, line: 15, baseType: !33, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !316, file: !237, line: 20, baseType: !320, size: 32, offset: 32)
!320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !237, line: 16, size: 32, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !320, file: !237, line: 18, baseType: !14, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !320, file: !237, line: 19, baseType: !246, size: 32)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !325)
!325 = !{!251, !248}
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "slotvec", scope: !254, file: !255, line: 834, type: !328, isLocal: true, isDefinition: true)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !255, line: 823, size: 128, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !329, file: !255, line: 825, baseType: !35, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !329, file: !255, line: 826, baseType: !39, size: 64, offset: 64)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "nslots", scope: !254, file: !255, line: 832, type: !33, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "slotvec0", scope: !254, file: !255, line: 833, type: !329, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 704, elements: !339)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!339 = !{!340}
!340 = !DISubrange(count: 11)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !343, file: !344, line: 26, type: !346, isLocal: false, isDefinition: true)
!343 = distinct !DICompileUnit(language: DW_LANG_C99, file: !344, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !345, splitDebugInlining: false, nameTableKind: None)
!344 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!345 = !{!341}
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 47)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "exit_failure", scope: !351, file: !352, line: 24, type: !354, isLocal: false, isDefinition: true)
!351 = distinct !DICompileUnit(language: DW_LANG_C99, file: !352, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !353, splitDebugInlining: false, nameTableKind: None)
!352 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!353 = !{!349}
!354 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "internal_state", scope: !357, file: !358, line: 97, type: !361, isLocal: true, isDefinition: true)
!357 = distinct !DICompileUnit(language: DW_LANG_C99, file: !358, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !359, globals: !360, splitDebugInlining: false, nameTableKind: None)
!358 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!359 = !{!32, !35, !38}
!360 = !{!355}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !235, line: 6, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !237, line: 21, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 13, size: 64, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !363, file: !237, line: 15, baseType: !33, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !363, file: !237, line: 20, baseType: !367, size: 32, offset: 32)
!367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !237, line: 16, size: 32, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !367, file: !237, line: 18, baseType: !14, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !367, file: !237, line: 19, baseType: !246, size: 32)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "have_pipe2_really", scope: !373, file: !374, line: 54, type: !33, isLocal: true, isDefinition: true)
!373 = distinct !DISubprogram(name: "rpl_pipe2", scope: !374, file: !374, line: 39, type: !375, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !379)
!374 = !DIFile(filename: "lib/pipe2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b2941420442dd7afd7b1a45758b7ccee")
!375 = !DISubroutineType(types: !376)
!376 = !{!33, !206, !33}
!377 = distinct !DICompileUnit(language: DW_LANG_C99, file: !374, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !378, splitDebugInlining: false, nameTableKind: None)
!378 = !{!371}
!379 = !{!380, !381, !382, !384, !388, !391, !394, !396}
!380 = !DILocalVariable(name: "fd", arg: 1, scope: !373, file: !374, line: 39, type: !206)
!381 = !DILocalVariable(name: "flags", arg: 2, scope: !373, file: !374, line: 39, type: !33)
!382 = !DILocalVariable(name: "tmp", scope: !373, file: !374, line: 44, type: !383)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !250)
!384 = !DILocalVariable(name: "result", scope: !385, file: !374, line: 57, type: !33)
!385 = distinct !DILexicalBlock(scope: !386, file: !374, line: 56, column: 7)
!386 = distinct !DILexicalBlock(scope: !387, file: !374, line: 55, column: 9)
!387 = distinct !DILexicalBlock(scope: !373, file: !374, line: 52, column: 3)
!388 = !DILocalVariable(name: "fcntl_flags", scope: !389, file: !374, line: 117, type: !33)
!389 = distinct !DILexicalBlock(scope: !390, file: !374, line: 116, column: 5)
!390 = distinct !DILexicalBlock(scope: !373, file: !374, line: 115, column: 7)
!391 = !DILocalVariable(name: "fcntl_flags", scope: !392, file: !374, line: 128, type: !33)
!392 = distinct !DILexicalBlock(scope: !393, file: !374, line: 127, column: 5)
!393 = distinct !DILexicalBlock(scope: !373, file: !374, line: 126, column: 7)
!394 = !DILocalVariable(name: "saved_errno", scope: !395, file: !374, line: 157, type: !33)
!395 = distinct !DILexicalBlock(scope: !373, file: !374, line: 156, column: 3)
!396 = !DILabel(scope: !373, name: "fail", file: !374, line: 155)
!397 = distinct !DICompileUnit(language: DW_LANG_C99, file: !398, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !399, splitDebugInlining: false, nameTableKind: None)
!398 = !DIFile(filename: "lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!399 = !{!6}
!400 = distinct !DICompileUnit(language: DW_LANG_C99, file: !401, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!401 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !403, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!403 = !DIFile(filename: "lib/isapipe.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5445de1f00883805631d924b7433dad7")
!404 = distinct !DICompileUnit(language: DW_LANG_C99, file: !405, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!405 = !DIFile(filename: "lib/pipe2-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f5a0d0feff89b6f036d8f7a6e8480abb")
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !408, retainedTypes: !413, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "lib/safe-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "868d9fdfbe37109ce7387a63f56e5cc3")
!408 = !{!409}
!409 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !410, line: 36, baseType: !14, size: 32, elements: !411)
!410 = !DIFile(filename: "./lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!411 = !{!412}
!412 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072)
!413 = !{!35}
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !416, retainedTypes: !420, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!416 = !{!417}
!417 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !415, line: 40, baseType: !14, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!420 = !{!32}
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !423, retainedTypes: !454, splitDebugInlining: false, nameTableKind: None)
!422 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!423 = !{!424, !436}
!424 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !425, file: !422, line: 188, baseType: !14, size: 32, elements: !434)
!425 = distinct !DISubprogram(name: "x2nrealloc", scope: !422, file: !422, line: 176, type: !426, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !429)
!426 = !DISubroutineType(types: !427)
!427 = !{!32, !32, !428, !35}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!429 = !{!430, !431, !432, !433}
!430 = !DILocalVariable(name: "p", arg: 1, scope: !425, file: !422, line: 176, type: !32)
!431 = !DILocalVariable(name: "pn", arg: 2, scope: !425, file: !422, line: 176, type: !428)
!432 = !DILocalVariable(name: "s", arg: 3, scope: !425, file: !422, line: 176, type: !35)
!433 = !DILocalVariable(name: "n", scope: !425, file: !422, line: 178, type: !35)
!434 = !{!435}
!435 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!436 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !437, file: !422, line: 228, baseType: !14, size: 32, elements: !434)
!437 = distinct !DISubprogram(name: "xpalloc", scope: !422, file: !422, line: 223, type: !438, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !444)
!438 = !DISubroutineType(types: !439)
!439 = !{!32, !32, !440, !441, !443, !441}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !442, line: 130, baseType: !443)
!442 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !36, line: 35, baseType: !89)
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453}
!445 = !DILocalVariable(name: "pa", arg: 1, scope: !437, file: !422, line: 223, type: !32)
!446 = !DILocalVariable(name: "pn", arg: 2, scope: !437, file: !422, line: 223, type: !440)
!447 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !437, file: !422, line: 223, type: !441)
!448 = !DILocalVariable(name: "n_max", arg: 4, scope: !437, file: !422, line: 223, type: !443)
!449 = !DILocalVariable(name: "s", arg: 5, scope: !437, file: !422, line: 223, type: !441)
!450 = !DILocalVariable(name: "n0", scope: !437, file: !422, line: 230, type: !441)
!451 = !DILocalVariable(name: "n", scope: !437, file: !422, line: 237, type: !441)
!452 = !DILocalVariable(name: "nbytes", scope: !437, file: !422, line: 248, type: !441)
!453 = !DILocalVariable(name: "adjusted_nbytes", scope: !437, file: !422, line: 252, type: !441)
!454 = !{!39, !32, !48, !89, !37}
!455 = distinct !DICompileUnit(language: DW_LANG_C99, file: !456, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!456 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!457 = distinct !DICompileUnit(language: DW_LANG_C99, file: !458, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!458 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!459 = distinct !DICompileUnit(language: DW_LANG_C99, file: !460, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!460 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!461 = distinct !DICompileUnit(language: DW_LANG_C99, file: !462, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!462 = !DIFile(filename: "lib/fd-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "63ab878cf4b441e9798f87a8e3963108")
!463 = distinct !DICompileUnit(language: DW_LANG_C99, file: !464, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!464 = !DIFile(filename: "lib/dup-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad0f64dd333db5cafacb6809a74d5848")
!465 = distinct !DICompileUnit(language: DW_LANG_C99, file: !466, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !420, splitDebugInlining: false, nameTableKind: None)
!466 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!467 = distinct !DICompileUnit(language: DW_LANG_C99, file: !468, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !420, splitDebugInlining: false, nameTableKind: None)
!468 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!469 = distinct !DICompileUnit(language: DW_LANG_C99, file: !470, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !471, splitDebugInlining: false, nameTableKind: None)
!470 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!471 = !{!48, !37, !32}
!472 = distinct !DICompileUnit(language: DW_LANG_C99, file: !473, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!473 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!474 = distinct !DICompileUnit(language: DW_LANG_C99, file: !475, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!475 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!476 = distinct !DICompileUnit(language: DW_LANG_C99, file: !477, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !420, splitDebugInlining: false, nameTableKind: None)
!477 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!478 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!479 = !{i32 7, !"Dwarf Version", i32 5}
!480 = !{i32 2, !"Debug Info Version", i32 3}
!481 = !{i32 1, !"wchar_size", i32 4}
!482 = !{i32 1, !"branch-target-enforcement", i32 0}
!483 = !{i32 1, !"sign-return-address", i32 0}
!484 = !{i32 1, !"sign-return-address-all", i32 0}
!485 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!486 = !{i32 7, !"PIC Level", i32 2}
!487 = !{i32 7, !"PIE Level", i32 2}
!488 = !{i32 7, !"uwtable", i32 1}
!489 = !{i32 7, !"frame-pointer", i32 1}
!490 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 38, type: !491, scopeLine: 39, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !33}
!493 = !{!494}
!494 = !DILocalVariable(name: "status", arg: 1, scope: !490, file: !10, line: 38, type: !33)
!495 = !DILocation(line: 0, scope: !490)
!496 = !DILocation(line: 40, column: 14, scope: !497)
!497 = distinct !DILexicalBlock(scope: !490, file: !10, line: 40, column: 7)
!498 = !DILocation(line: 40, column: 7, scope: !490)
!499 = !DILocation(line: 41, column: 5, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !10, line: 41, column: 5)
!501 = !{!502, !502, i64 0}
!502 = !{!"any pointer", !503, i64 0}
!503 = !{!"omnipotent char", !504, i64 0}
!504 = !{!"Simple C/C++ TBAA"}
!505 = !DILocation(line: 44, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !497, file: !10, line: 43, column: 5)
!507 = !DILocation(line: 50, column: 7, scope: !506)
!508 = !DILocation(line: 54, column: 7, scope: !506)
!509 = !DILocation(line: 55, column: 7, scope: !506)
!510 = !DILocalVariable(name: "program", arg: 1, scope: !511, file: !3, line: 836, type: !6)
!511 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !512, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !6}
!514 = !{!510, !515, !524, !525, !527, !528}
!515 = !DILocalVariable(name: "infomap", scope: !511, file: !3, line: 838, type: !516)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 896, elements: !522)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !511, file: !3, line: 838, size: 128, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !518, file: !3, line: 838, baseType: !6, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !518, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!522 = !{!523}
!523 = !DISubrange(count: 7)
!524 = !DILocalVariable(name: "node", scope: !511, file: !3, line: 848, type: !6)
!525 = !DILocalVariable(name: "map_prog", scope: !511, file: !3, line: 849, type: !526)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!527 = !DILocalVariable(name: "lc_messages", scope: !511, file: !3, line: 861, type: !6)
!528 = !DILocalVariable(name: "url_program", scope: !511, file: !3, line: 874, type: !6)
!529 = !DILocation(line: 0, scope: !511, inlinedAt: !530)
!530 = distinct !DILocation(line: 56, column: 7, scope: !506)
!531 = !DILocation(line: 838, column: 3, scope: !511, inlinedAt: !530)
!532 = !DILocation(line: 838, column: 67, scope: !511, inlinedAt: !530)
!533 = !DILocation(line: 849, column: 36, scope: !511, inlinedAt: !530)
!534 = !DILocation(line: 851, column: 3, scope: !511, inlinedAt: !530)
!535 = !DILocalVariable(name: "__s1", arg: 1, scope: !536, file: !537, line: 1359, type: !6)
!536 = distinct !DISubprogram(name: "streq", scope: !537, file: !537, line: 1359, type: !538, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !540)
!537 = !DIFile(filename: "./lib/string.h", directory: "/src")
!538 = !DISubroutineType(types: !539)
!539 = !{!48, !6, !6}
!540 = !{!535, !541}
!541 = !DILocalVariable(name: "__s2", arg: 2, scope: !536, file: !537, line: 1359, type: !6)
!542 = !DILocation(line: 0, scope: !536, inlinedAt: !543)
!543 = distinct !DILocation(line: 851, column: 33, scope: !511, inlinedAt: !530)
!544 = !DILocation(line: 1361, column: 11, scope: !536, inlinedAt: !543)
!545 = !DILocation(line: 1361, column: 10, scope: !536, inlinedAt: !543)
!546 = !DILocation(line: 852, column: 13, scope: !511, inlinedAt: !530)
!547 = !DILocation(line: 851, column: 20, scope: !511, inlinedAt: !530)
!548 = !{!549, !502, i64 0}
!549 = !{!"infomap", !502, i64 0, !502, i64 8}
!550 = !DILocation(line: 851, column: 10, scope: !511, inlinedAt: !530)
!551 = !DILocation(line: 851, column: 28, scope: !511, inlinedAt: !530)
!552 = distinct !{!552, !534, !546, !553}
!553 = !{!"llvm.loop.mustprogress"}
!554 = !DILocation(line: 854, column: 17, scope: !555, inlinedAt: !530)
!555 = distinct !DILexicalBlock(scope: !511, file: !3, line: 854, column: 7)
!556 = !{!549, !502, i64 8}
!557 = !DILocation(line: 854, column: 7, scope: !555, inlinedAt: !530)
!558 = !DILocation(line: 854, column: 7, scope: !511, inlinedAt: !530)
!559 = !DILocation(line: 857, column: 3, scope: !511, inlinedAt: !530)
!560 = !DILocation(line: 861, column: 29, scope: !511, inlinedAt: !530)
!561 = !DILocation(line: 862, column: 7, scope: !562, inlinedAt: !530)
!562 = distinct !DILexicalBlock(scope: !511, file: !3, line: 862, column: 7)
!563 = !DILocation(line: 862, column: 19, scope: !562, inlinedAt: !530)
!564 = !DILocation(line: 862, column: 22, scope: !562, inlinedAt: !530)
!565 = !DILocation(line: 862, column: 7, scope: !511, inlinedAt: !530)
!566 = !DILocation(line: 868, column: 7, scope: !567, inlinedAt: !530)
!567 = distinct !DILexicalBlock(scope: !562, file: !3, line: 863, column: 5)
!568 = !DILocation(line: 870, column: 5, scope: !567, inlinedAt: !530)
!569 = !DILocation(line: 0, scope: !536, inlinedAt: !570)
!570 = distinct !DILocation(line: 874, column: 29, scope: !511, inlinedAt: !530)
!571 = !DILocation(line: 875, column: 3, scope: !511, inlinedAt: !530)
!572 = !DILocation(line: 877, column: 3, scope: !511, inlinedAt: !530)
!573 = !DILocation(line: 879, column: 1, scope: !511, inlinedAt: !530)
!574 = !DILocation(line: 58, column: 3, scope: !490)
!575 = !DISubprogram(name: "dcgettext", scope: !576, file: !576, line: 51, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!576 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!577 = !DISubroutineType(types: !578)
!578 = !{!39, !6, !6, !33}
!579 = !{}
!580 = !DISubprogram(name: "fputs_unlocked", scope: !146, file: !146, line: 691, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!581 = !DISubroutineType(types: !582)
!582 = !{!33, !583, !584}
!583 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!584 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!585 = !DILocation(line: 0, scope: !2)
!586 = !DILocation(line: 581, column: 7, scope: !46)
!587 = !{!588, !588, i64 0}
!588 = !{!"int", !503, i64 0}
!589 = !DILocation(line: 581, column: 19, scope: !46)
!590 = !DILocation(line: 581, column: 7, scope: !2)
!591 = !DILocation(line: 585, column: 26, scope: !45)
!592 = !DILocation(line: 0, scope: !45)
!593 = !DILocation(line: 586, column: 23, scope: !45)
!594 = !DILocation(line: 586, column: 28, scope: !45)
!595 = !DILocation(line: 586, column: 32, scope: !45)
!596 = !{!503, !503, i64 0}
!597 = !DILocation(line: 586, column: 38, scope: !45)
!598 = !DILocation(line: 0, scope: !536, inlinedAt: !599)
!599 = distinct !DILocation(line: 586, column: 41, scope: !45)
!600 = !DILocation(line: 1361, column: 11, scope: !536, inlinedAt: !599)
!601 = !DILocation(line: 1361, column: 10, scope: !536, inlinedAt: !599)
!602 = !DILocation(line: 586, column: 19, scope: !45)
!603 = !DILocation(line: 587, column: 5, scope: !45)
!604 = !DILocation(line: 588, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!606 = !DILocation(line: 588, column: 7, scope: !2)
!607 = !DILocation(line: 590, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !3, line: 589, column: 5)
!609 = !DILocation(line: 591, column: 7, scope: !608)
!610 = !DILocation(line: 595, column: 37, scope: !2)
!611 = !DILocation(line: 595, column: 35, scope: !2)
!612 = !DILocation(line: 596, column: 29, scope: !2)
!613 = !DILocation(line: 597, column: 8, scope: !54)
!614 = !DILocation(line: 597, column: 7, scope: !2)
!615 = !DILocation(line: 604, column: 24, scope: !53)
!616 = !DILocation(line: 604, column: 12, scope: !54)
!617 = !DILocation(line: 0, scope: !52)
!618 = !DILocation(line: 610, column: 16, scope: !52)
!619 = !DILocation(line: 610, column: 7, scope: !52)
!620 = !DILocation(line: 611, column: 21, scope: !52)
!621 = !{!622, !622, i64 0}
!622 = !{!"short", !503, i64 0}
!623 = !DILocation(line: 611, column: 19, scope: !52)
!624 = !DILocation(line: 611, column: 16, scope: !52)
!625 = !DILocation(line: 610, column: 30, scope: !52)
!626 = distinct !{!626, !619, !620, !553}
!627 = !DILocation(line: 612, column: 18, scope: !628)
!628 = distinct !DILexicalBlock(scope: !52, file: !3, line: 612, column: 11)
!629 = !DILocation(line: 612, column: 11, scope: !52)
!630 = !DILocation(line: 620, column: 23, scope: !2)
!631 = !DILocation(line: 625, column: 39, scope: !2)
!632 = !DILocation(line: 626, column: 3, scope: !2)
!633 = !DILocation(line: 626, column: 10, scope: !2)
!634 = !DILocation(line: 626, column: 21, scope: !2)
!635 = !DILocation(line: 628, column: 44, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 628, column: 11)
!637 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!638 = !DILocation(line: 628, column: 32, scope: !636)
!639 = !DILocation(line: 628, column: 49, scope: !636)
!640 = !DILocation(line: 628, column: 11, scope: !637)
!641 = !DILocation(line: 630, column: 11, scope: !642)
!642 = distinct !DILexicalBlock(scope: !637, file: !3, line: 630, column: 11)
!643 = !DILocation(line: 630, column: 11, scope: !637)
!644 = !DILocation(line: 632, column: 26, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 632, column: 15)
!646 = distinct !DILexicalBlock(scope: !642, file: !3, line: 631, column: 9)
!647 = !DILocation(line: 632, column: 34, scope: !645)
!648 = !DILocation(line: 632, column: 37, scope: !645)
!649 = !DILocation(line: 632, column: 15, scope: !646)
!650 = !DILocation(line: 636, column: 29, scope: !651)
!651 = distinct !DILexicalBlock(scope: !646, file: !3, line: 636, column: 15)
!652 = !DILocation(line: 640, column: 16, scope: !637)
!653 = distinct !{!653, !632, !654, !553}
!654 = !DILocation(line: 641, column: 5, scope: !2)
!655 = !DILocation(line: 644, column: 3, scope: !2)
!656 = !DILocation(line: 0, scope: !536, inlinedAt: !657)
!657 = distinct !DILocation(line: 648, column: 31, scope: !2)
!658 = !DILocation(line: 0, scope: !536, inlinedAt: !659)
!659 = distinct !DILocation(line: 649, column: 31, scope: !2)
!660 = !DILocation(line: 0, scope: !536, inlinedAt: !661)
!661 = distinct !DILocation(line: 650, column: 31, scope: !2)
!662 = !DILocation(line: 0, scope: !536, inlinedAt: !663)
!663 = distinct !DILocation(line: 651, column: 31, scope: !2)
!664 = !DILocation(line: 0, scope: !536, inlinedAt: !665)
!665 = distinct !DILocation(line: 652, column: 31, scope: !2)
!666 = !DILocation(line: 0, scope: !536, inlinedAt: !667)
!667 = distinct !DILocation(line: 653, column: 31, scope: !2)
!668 = !DILocation(line: 0, scope: !536, inlinedAt: !669)
!669 = distinct !DILocation(line: 654, column: 31, scope: !2)
!670 = !DILocation(line: 0, scope: !536, inlinedAt: !671)
!671 = distinct !DILocation(line: 655, column: 31, scope: !2)
!672 = !DILocation(line: 0, scope: !536, inlinedAt: !673)
!673 = distinct !DILocation(line: 656, column: 31, scope: !2)
!674 = !DILocation(line: 0, scope: !536, inlinedAt: !675)
!675 = distinct !DILocation(line: 657, column: 31, scope: !2)
!676 = !DILocation(line: 663, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!678 = !DILocation(line: 664, column: 7, scope: !677)
!679 = !DILocation(line: 664, column: 10, scope: !677)
!680 = !DILocation(line: 663, column: 7, scope: !2)
!681 = !DILocation(line: 669, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !677, file: !3, line: 665, column: 5)
!683 = !DILocation(line: 671, column: 5, scope: !682)
!684 = !DILocation(line: 676, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !677, file: !3, line: 673, column: 5)
!686 = !DILocation(line: 679, column: 3, scope: !2)
!687 = !DILocation(line: 683, column: 3, scope: !2)
!688 = !DILocation(line: 686, column: 3, scope: !2)
!689 = !DILocation(line: 688, column: 3, scope: !2)
!690 = !DILocation(line: 691, column: 3, scope: !2)
!691 = !DILocation(line: 695, column: 3, scope: !2)
!692 = !DILocation(line: 696, column: 1, scope: !2)
!693 = !DISubprogram(name: "setlocale", scope: !694, file: !694, line: 122, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!694 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!695 = !DISubroutineType(types: !696)
!696 = !{!39, !33, !6}
!697 = !DISubprogram(name: "getenv", scope: !698, file: !698, line: 641, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!698 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!699 = !DISubroutineType(types: !700)
!700 = !{!39, !6}
!701 = !DISubprogram(name: "fwrite_unlocked", scope: !146, file: !146, line: 704, type: !702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!702 = !DISubroutineType(types: !703)
!703 = !{!35, !704, !35, !35, !584}
!704 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!707 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 201, type: !708, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !711)
!708 = !DISubroutineType(types: !709)
!709 = !{!33, !33, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !721, !722, !723, !725}
!712 = !DILocalVariable(name: "argc", arg: 1, scope: !707, file: !10, line: 201, type: !33)
!713 = !DILocalVariable(name: "argv", arg: 2, scope: !707, file: !10, line: 201, type: !710)
!714 = !DILocalVariable(name: "operands", scope: !707, file: !10, line: 215, type: !710)
!715 = !DILocalVariable(name: "operand_lim", scope: !707, file: !10, line: 216, type: !710)
!716 = !DILocalVariable(name: "bufalloc", scope: !707, file: !10, line: 222, type: !35)
!717 = !DILocalVariable(name: "reuse_operand_strings", scope: !707, file: !10, line: 223, type: !48)
!718 = !DILocalVariable(name: "operandp", scope: !707, file: !10, line: 224, type: !710)
!719 = !DILocalVariable(name: "operand_len", scope: !720, file: !10, line: 227, type: !35)
!720 = distinct !DILexicalBlock(scope: !707, file: !10, line: 226, column: 5)
!721 = !DILocalVariable(name: "buf", scope: !707, file: !10, line: 249, type: !39)
!722 = !DILocalVariable(name: "bufused", scope: !707, file: !10, line: 250, type: !35)
!723 = !DILocalVariable(name: "operand_len", scope: !724, file: !10, line: 254, type: !35)
!724 = distinct !DILexicalBlock(scope: !707, file: !10, line: 253, column: 5)
!725 = !DILocalVariable(name: "copysize", scope: !707, file: !10, line: 263, type: !441)
!726 = !DILocation(line: 0, scope: !707)
!727 = !DILocation(line: 204, column: 21, scope: !707)
!728 = !DILocation(line: 204, column: 3, scope: !707)
!729 = !DILocation(line: 205, column: 3, scope: !707)
!730 = !DILocation(line: 206, column: 3, scope: !707)
!731 = !DILocation(line: 207, column: 3, scope: !707)
!732 = !DILocation(line: 209, column: 3, scope: !707)
!733 = !DILocation(line: 212, column: 36, scope: !707)
!734 = !DILocation(line: 212, column: 58, scope: !707)
!735 = !DILocation(line: 211, column: 3, scope: !707)
!736 = !DILocation(line: 215, column: 28, scope: !707)
!737 = !DILocation(line: 215, column: 26, scope: !707)
!738 = !DILocation(line: 216, column: 29, scope: !707)
!739 = !DILocation(line: 217, column: 14, scope: !740)
!740 = distinct !DILexicalBlock(scope: !707, file: !10, line: 217, column: 7)
!741 = !DILocation(line: 217, column: 7, scope: !707)
!742 = !DILocation(line: 218, column: 17, scope: !740)
!743 = !DILocation(line: 218, column: 20, scope: !740)
!744 = !DILocation(line: 218, column: 5, scope: !740)
!745 = !DILocation(line: 227, column: 36, scope: !720)
!746 = !DILocation(line: 227, column: 28, scope: !720)
!747 = !DILocation(line: 0, scope: !720)
!748 = !DILocation(line: 228, column: 16, scope: !720)
!749 = !DILocation(line: 229, column: 20, scope: !750)
!750 = distinct !DILexicalBlock(scope: !720, file: !10, line: 229, column: 11)
!751 = !DILocation(line: 229, column: 24, scope: !750)
!752 = !DILocation(line: 230, column: 11, scope: !750)
!753 = !DILocation(line: 230, column: 24, scope: !750)
!754 = !DILocation(line: 230, column: 38, scope: !750)
!755 = !DILocation(line: 230, column: 45, scope: !750)
!756 = !DILocation(line: 230, column: 42, scope: !750)
!757 = !DILocation(line: 229, column: 11, scope: !720)
!758 = !DILocation(line: 228, column: 31, scope: !720)
!759 = !DILocation(line: 236, column: 16, scope: !760)
!760 = distinct !DILexicalBlock(scope: !707, file: !10, line: 236, column: 7)
!761 = !DILocation(line: 236, column: 7, scope: !707)
!762 = !DILocation(line: 249, column: 15, scope: !707)
!763 = !DILocation(line: 249, column: 51, scope: !707)
!764 = !DILocation(line: 252, column: 3, scope: !707)
!765 = !DILocation(line: 254, column: 36, scope: !724)
!766 = !DILocation(line: 254, column: 28, scope: !724)
!767 = !DILocation(line: 0, scope: !724)
!768 = !DILocation(line: 257, column: 15, scope: !724)
!769 = !DILocation(line: 258, column: 18, scope: !724)
!770 = !DILocation(line: 258, column: 7, scope: !724)
!771 = !DILocation(line: 258, column: 22, scope: !724)
!772 = !DILocation(line: 260, column: 10, scope: !707)
!773 = !DILocation(line: 260, column: 21, scope: !707)
!774 = !DILocation(line: 259, column: 5, scope: !724)
!775 = distinct !{!775, !764, !776, !553}
!776 = !DILocation(line: 260, column: 34, scope: !707)
!777 = !DILocation(line: 256, column: 21, scope: !778)
!778 = distinct !DILexicalBlock(scope: !724, file: !10, line: 255, column: 11)
!779 = !DILocalVariable(name: "__dest", arg: 1, scope: !780, file: !781, line: 26, type: !784)
!780 = distinct !DISubprogram(name: "memcpy", scope: !781, file: !781, line: 26, type: !782, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !785)
!781 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!782 = !DISubroutineType(types: !783)
!783 = !{!32, !784, !704, !35}
!784 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!785 = !{!779, !786, !787}
!786 = !DILocalVariable(name: "__src", arg: 2, scope: !780, file: !781, line: 26, type: !704)
!787 = !DILocalVariable(name: "__len", arg: 3, scope: !780, file: !781, line: 26, type: !35)
!788 = !DILocation(line: 0, scope: !780, inlinedAt: !789)
!789 = distinct !DILocation(line: 256, column: 9, scope: !778)
!790 = !DILocation(line: 29, column: 10, scope: !780, inlinedAt: !789)
!791 = !DILocation(line: 261, column: 20, scope: !707)
!792 = !DILocation(line: 268, column: 7, scope: !793)
!793 = distinct !DILexicalBlock(scope: !707, file: !10, line: 268, column: 7)
!794 = !DILocation(line: 268, column: 49, scope: !793)
!795 = !DILocation(line: 269, column: 7, scope: !793)
!796 = !DILocalVariable(name: "buf", arg: 1, scope: !797, file: !10, line: 113, type: !6)
!797 = distinct !DISubprogram(name: "splice_write", scope: !10, file: !10, line: 113, type: !798, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{!48, !6, !441}
!800 = !{!796, !801, !802, !803, !804, !805, !806, !807, !808, !809, !818, !820, !823, !826, !828, !831}
!801 = !DILocalVariable(name: "copysize", arg: 2, scope: !797, file: !10, line: 113, type: !441)
!802 = !DILocalVariable(name: "output_started", scope: !797, file: !10, line: 115, type: !48)
!803 = !DILocalVariable(name: "page_size", scope: !797, file: !10, line: 117, type: !441)
!804 = !DILocalVariable(name: "stdout_is_pipe", scope: !797, file: !10, line: 119, type: !48)
!805 = !DILocalVariable(name: "pipefd", scope: !797, file: !10, line: 123, type: !383)
!806 = !DILocalVariable(name: "splice_bufsize", scope: !797, file: !10, line: 124, type: !441)
!807 = !DILocalVariable(name: "splice_buf", scope: !797, file: !10, line: 125, type: !39)
!808 = !DILocalVariable(name: "vmsplice_fd", scope: !797, file: !10, line: 149, type: !33)
!809 = !DILocalVariable(name: "iov", scope: !810, file: !10, line: 153, type: !813)
!810 = distinct !DILexicalBlock(scope: !811, file: !10, line: 152, column: 5)
!811 = distinct !DILexicalBlock(scope: !812, file: !10, line: 151, column: 3)
!812 = distinct !DILexicalBlock(scope: !797, file: !10, line: 151, column: 3)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !814, line: 26, size: 128, elements: !815)
!814 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !813, file: !814, line: 28, baseType: !32, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !813, file: !814, line: 29, baseType: !35, size: 64, offset: 64)
!818 = !DILocalVariable(name: "flags", scope: !819, file: !10, line: 161, type: !14)
!819 = distinct !DILexicalBlock(scope: !810, file: !10, line: 157, column: 9)
!820 = !DILocalVariable(name: "n", scope: !819, file: !10, line: 162, type: !821)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !146, line: 77, baseType: !822)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !88, line: 194, baseType: !89)
!823 = !DILocalVariable(name: "remaining", scope: !824, file: !10, line: 174, type: !441)
!824 = distinct !DILexicalBlock(scope: !825, file: !10, line: 173, column: 9)
!825 = distinct !DILexicalBlock(scope: !810, file: !10, line: 172, column: 11)
!826 = !DILocalVariable(name: "s", scope: !827, file: !10, line: 177, type: !821)
!827 = distinct !DILexicalBlock(scope: !824, file: !10, line: 176, column: 13)
!828 = !DILocalVariable(name: "saved_errno", scope: !829, file: !10, line: 190, type: !33)
!829 = distinct !DILexicalBlock(scope: !830, file: !10, line: 189, column: 5)
!830 = distinct !DILexicalBlock(scope: !797, file: !10, line: 188, column: 7)
!831 = !DILabel(scope: !797, name: "done", file: !10, line: 187)
!832 = !DILocation(line: 0, scope: !797, inlinedAt: !833)
!833 = distinct !DILocation(line: 269, column: 10, scope: !793)
!834 = !DILocation(line: 117, column: 21, scope: !797, inlinedAt: !833)
!835 = !DILocation(line: 119, column: 25, scope: !797, inlinedAt: !833)
!836 = !DILocation(line: 119, column: 49, scope: !797, inlinedAt: !833)
!837 = !DILocation(line: 123, column: 3, scope: !797, inlinedAt: !833)
!838 = !DILocation(line: 123, column: 7, scope: !797, inlinedAt: !833)
!839 = !DILocation(line: 127, column: 7, scope: !797, inlinedAt: !833)
!840 = !DILocalVariable(name: "fd", arg: 1, scope: !841, file: !10, line: 89, type: !33)
!841 = distinct !DISubprogram(name: "pipe_splice_size", scope: !10, file: !10, line: 89, type: !842, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{!441, !33, !441}
!844 = !{!840, !845, !846, !847}
!845 = !DILocalVariable(name: "copysize", arg: 2, scope: !841, file: !10, line: 89, type: !441)
!846 = !DILocalVariable(name: "pipe_cap", scope: !841, file: !10, line: 91, type: !33)
!847 = !DILocalVariable(name: "buf_cap", scope: !841, file: !10, line: 99, type: !35)
!848 = !DILocation(line: 0, scope: !841, inlinedAt: !849)
!849 = distinct !DILocation(line: 128, column: 22, scope: !850, inlinedAt: !833)
!850 = distinct !DILexicalBlock(scope: !797, file: !10, line: 127, column: 7)
!851 = !DILocation(line: 93, column: 19, scope: !852, inlinedAt: !849)
!852 = distinct !DILexicalBlock(scope: !841, file: !10, line: 93, column: 7)
!853 = !DILocation(line: 93, column: 63, scope: !852, inlinedAt: !849)
!854 = !DILocation(line: 93, column: 7, scope: !841, inlinedAt: !849)
!855 = !DILocation(line: 94, column: 16, scope: !852, inlinedAt: !849)
!856 = !DILocation(line: 94, column: 5, scope: !852, inlinedAt: !849)
!857 = !DILocation(line: 131, column: 18, scope: !858, inlinedAt: !833)
!858 = distinct !DILexicalBlock(scope: !859, file: !10, line: 131, column: 11)
!859 = distinct !DILexicalBlock(scope: !850, file: !10, line: 130, column: 5)
!860 = !DILocation(line: 131, column: 11, scope: !858, inlinedAt: !833)
!861 = !DILocation(line: 131, column: 29, scope: !858, inlinedAt: !833)
!862 = !DILocation(line: 131, column: 11, scope: !859, inlinedAt: !833)
!863 = !DILocation(line: 198, column: 1, scope: !797, inlinedAt: !833)
!864 = !DILocation(line: 268, column: 7, scope: !707)
!865 = !DILocation(line: 133, column: 42, scope: !859, inlinedAt: !833)
!866 = !DILocation(line: 0, scope: !841, inlinedAt: !867)
!867 = distinct !DILocation(line: 133, column: 24, scope: !859, inlinedAt: !833)
!868 = !DILocation(line: 93, column: 19, scope: !852, inlinedAt: !867)
!869 = !DILocation(line: 93, column: 63, scope: !852, inlinedAt: !867)
!870 = !DILocation(line: 93, column: 7, scope: !841, inlinedAt: !867)
!871 = !DILocation(line: 94, column: 16, scope: !852, inlinedAt: !867)
!872 = !DILocation(line: 94, column: 5, scope: !852, inlinedAt: !867)
!873 = !DILocation(line: 0, scope: !850, inlinedAt: !833)
!874 = !DILocation(line: 136, column: 22, scope: !875, inlinedAt: !833)
!875 = distinct !DILexicalBlock(scope: !797, file: !10, line: 136, column: 7)
!876 = !DILocation(line: 136, column: 7, scope: !797, inlinedAt: !833)
!877 = !DILocalVariable(name: "alignment", arg: 1, scope: !878, file: !879, line: 90, type: !441)
!878 = distinct !DISubprogram(name: "alignalloc", scope: !879, file: !879, line: 90, type: !880, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !882)
!879 = !DIFile(filename: "./lib/alignalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0a7d01653c1483fdd96283992acf95d0")
!880 = !DISubroutineType(types: !881)
!881 = !{!32, !441, !441}
!882 = !{!877, !883}
!883 = !DILocalVariable(name: "size", arg: 2, scope: !878, file: !879, line: 90, type: !441)
!884 = !DILocation(line: 0, scope: !878, inlinedAt: !885)
!885 = distinct !DILocation(line: 141, column: 23, scope: !886, inlinedAt: !833)
!886 = distinct !DILexicalBlock(scope: !797, file: !10, line: 141, column: 7)
!887 = !DILocation(line: 98, column: 10, scope: !878, inlinedAt: !885)
!888 = !DILocation(line: 141, column: 21, scope: !886, inlinedAt: !833)
!889 = !DILocation(line: 141, column: 7, scope: !797, inlinedAt: !833)
!890 = !DILocalVariable(name: "dest", arg: 1, scope: !891, file: !10, line: 65, type: !39)
!891 = distinct !DISubprogram(name: "repeat_pattern", scope: !10, file: !10, line: 65, type: !892, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !894)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !39, !6, !441, !441}
!894 = !{!890, !895, !896, !897, !898, !900}
!895 = !DILocalVariable(name: "src", arg: 2, scope: !891, file: !10, line: 65, type: !6)
!896 = !DILocalVariable(name: "srcsize", arg: 3, scope: !891, file: !10, line: 65, type: !441)
!897 = !DILocalVariable(name: "bufsize", arg: 4, scope: !891, file: !10, line: 65, type: !441)
!898 = !DILocalVariable(name: "filled", scope: !899, file: !10, line: 69, type: !441)
!899 = distinct !DILexicalBlock(scope: !891, file: !10, line: 69, column: 3)
!900 = !DILocalVariable(name: "chunk", scope: !901, file: !10, line: 71, type: !441)
!901 = distinct !DILexicalBlock(scope: !902, file: !10, line: 70, column: 5)
!902 = distinct !DILexicalBlock(scope: !899, file: !10, line: 69, column: 3)
!903 = !DILocation(line: 0, scope: !891, inlinedAt: !904)
!904 = distinct !DILocation(line: 144, column: 3, scope: !797, inlinedAt: !833)
!905 = !DILocation(line: 67, column: 12, scope: !906, inlinedAt: !904)
!906 = distinct !DILexicalBlock(scope: !891, file: !10, line: 67, column: 7)
!907 = !DILocation(line: 67, column: 7, scope: !891, inlinedAt: !904)
!908 = !DILocation(line: 0, scope: !780, inlinedAt: !909)
!909 = distinct !DILocation(line: 68, column: 5, scope: !906, inlinedAt: !904)
!910 = !DILocation(line: 29, column: 10, scope: !780, inlinedAt: !909)
!911 = !DILocation(line: 68, column: 5, scope: !906, inlinedAt: !904)
!912 = !DILocation(line: 0, scope: !899, inlinedAt: !904)
!913 = !DILocation(line: 69, column: 39, scope: !902, inlinedAt: !904)
!914 = !DILocation(line: 69, column: 3, scope: !899, inlinedAt: !904)
!915 = !DILocation(line: 71, column: 21, scope: !901, inlinedAt: !904)
!916 = !DILocation(line: 0, scope: !901, inlinedAt: !904)
!917 = !DILocation(line: 72, column: 20, scope: !901, inlinedAt: !904)
!918 = !DILocation(line: 0, scope: !780, inlinedAt: !919)
!919 = distinct !DILocation(line: 72, column: 7, scope: !901, inlinedAt: !904)
!920 = !DILocation(line: 29, column: 10, scope: !780, inlinedAt: !919)
!921 = !DILocation(line: 73, column: 14, scope: !901, inlinedAt: !904)
!922 = distinct !{!922, !914, !923, !553}
!923 = !DILocation(line: 74, column: 5, scope: !899, inlinedAt: !904)
!924 = !DILocation(line: 149, column: 21, scope: !797, inlinedAt: !833)
!925 = !DILocation(line: 172, column: 11, scope: !810, inlinedAt: !833)
!926 = !DILocation(line: 153, column: 7, scope: !810, inlinedAt: !833)
!927 = !DILocation(line: 153, column: 20, scope: !810, inlinedAt: !833)
!928 = !DILocation(line: 153, column: 26, scope: !810, inlinedAt: !833)
!929 = !{!930, !502, i64 0}
!930 = !{!"iovec", !502, i64 0, !931, i64 8}
!931 = !{!"long", !503, i64 0}
!932 = !DILocation(line: 0, scope: !810, inlinedAt: !833)
!933 = !{!930, !931, i64 8}
!934 = !DILocation(line: 0, scope: !819, inlinedAt: !833)
!935 = !DILocation(line: 162, column: 23, scope: !819, inlinedAt: !833)
!936 = !DILocation(line: 163, column: 17, scope: !937, inlinedAt: !833)
!937 = distinct !DILexicalBlock(scope: !819, file: !10, line: 163, column: 15)
!938 = !DILocation(line: 163, column: 15, scope: !819, inlinedAt: !833)
!939 = !DILocation(line: 161, column: 44, scope: !819, inlinedAt: !833)
!940 = !DILocation(line: 161, column: 32, scope: !819, inlinedAt: !833)
!941 = !DILocation(line: 167, column: 39, scope: !819, inlinedAt: !833)
!942 = !DILocation(line: 167, column: 48, scope: !819, inlinedAt: !833)
!943 = !DILocation(line: 167, column: 24, scope: !819, inlinedAt: !833)
!944 = !DILocation(line: 168, column: 23, scope: !819, inlinedAt: !833)
!945 = !DILocation(line: 156, column: 26, scope: !810, inlinedAt: !833)
!946 = !DILocation(line: 156, column: 7, scope: !810, inlinedAt: !833)
!947 = !DILocation(line: 185, column: 5, scope: !811, inlinedAt: !833)
!948 = !DILocation(line: 175, column: 11, scope: !824, inlinedAt: !833)
!949 = !DILocation(line: 115, column: 8, scope: !797, inlinedAt: !833)
!950 = !DILocation(line: 0, scope: !824, inlinedAt: !833)
!951 = !DILocation(line: 175, column: 28, scope: !824, inlinedAt: !833)
!952 = distinct !{!952, !948, !953, !553}
!953 = !DILocation(line: 183, column: 13, scope: !824, inlinedAt: !833)
!954 = !DILocation(line: 177, column: 35, scope: !827, inlinedAt: !833)
!955 = !DILocation(line: 177, column: 27, scope: !827, inlinedAt: !833)
!956 = !DILocation(line: 0, scope: !827, inlinedAt: !833)
!957 = !DILocation(line: 179, column: 21, scope: !958, inlinedAt: !833)
!958 = distinct !DILexicalBlock(scope: !827, file: !10, line: 179, column: 19)
!959 = !DILocation(line: 179, column: 19, scope: !827, inlinedAt: !833)
!960 = distinct !{!960, !948, !953, !553}
!961 = distinct !{!961, !948, !953, !553}
!962 = !DILocation(line: 188, column: 7, scope: !830, inlinedAt: !833)
!963 = !DILocation(line: 187, column: 1, scope: !797, inlinedAt: !833)
!964 = !DILocation(line: 188, column: 17, scope: !830, inlinedAt: !833)
!965 = !DILocation(line: 188, column: 7, scope: !797, inlinedAt: !833)
!966 = !DILocation(line: 190, column: 25, scope: !829, inlinedAt: !833)
!967 = !DILocation(line: 0, scope: !829, inlinedAt: !833)
!968 = !DILocation(line: 191, column: 7, scope: !829, inlinedAt: !833)
!969 = !DILocation(line: 192, column: 14, scope: !829, inlinedAt: !833)
!970 = !DILocation(line: 192, column: 7, scope: !829, inlinedAt: !833)
!971 = !DILocation(line: 193, column: 13, scope: !829, inlinedAt: !833)
!972 = !DILocation(line: 194, column: 5, scope: !829, inlinedAt: !833)
!973 = !DILocalVariable(name: "ptr", arg: 1, scope: !974, file: !879, line: 75, type: !32)
!974 = distinct !DISubprogram(name: "alignfree", scope: !879, file: !879, line: 75, type: !975, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !977)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !32}
!977 = !{!973}
!978 = !DILocation(line: 0, scope: !974, inlinedAt: !979)
!979 = distinct !DILocation(line: 195, column: 3, scope: !797, inlinedAt: !833)
!980 = !DILocation(line: 77, column: 3, scope: !974, inlinedAt: !979)
!981 = !DILocation(line: 272, column: 37, scope: !982)
!982 = distinct !DILexicalBlock(scope: !793, file: !10, line: 270, column: 5)
!983 = !DILocation(line: 273, column: 19, scope: !984)
!984 = distinct !DILexicalBlock(scope: !982, file: !10, line: 273, column: 11)
!985 = !DILocation(line: 273, column: 11, scope: !982)
!986 = !DILocation(line: 0, scope: !891, inlinedAt: !987)
!987 = distinct !DILocation(line: 274, column: 9, scope: !984)
!988 = !DILocation(line: 0, scope: !899, inlinedAt: !987)
!989 = !DILocation(line: 71, column: 21, scope: !901, inlinedAt: !987)
!990 = !DILocation(line: 0, scope: !901, inlinedAt: !987)
!991 = !DILocation(line: 72, column: 20, scope: !901, inlinedAt: !987)
!992 = !DILocation(line: 0, scope: !780, inlinedAt: !993)
!993 = distinct !DILocation(line: 72, column: 7, scope: !901, inlinedAt: !987)
!994 = !DILocation(line: 29, column: 10, scope: !780, inlinedAt: !993)
!995 = !DILocation(line: 73, column: 14, scope: !901, inlinedAt: !987)
!996 = !DILocation(line: 69, column: 39, scope: !902, inlinedAt: !987)
!997 = !DILocation(line: 69, column: 3, scope: !899, inlinedAt: !987)
!998 = distinct !{!998, !997, !999, !553}
!999 = !DILocation(line: 74, column: 5, scope: !899, inlinedAt: !987)
!1000 = !DILocation(line: 275, column: 7, scope: !982)
!1001 = !DILocation(line: 275, column: 14, scope: !982)
!1002 = !DILocation(line: 275, column: 55, scope: !982)
!1003 = distinct !{!1003, !1000, !1004, !553}
!1004 = !DILocation(line: 276, column: 9, scope: !982)
!1005 = !DILocation(line: 279, column: 3, scope: !707)
!1006 = !DILocation(line: 281, column: 1, scope: !707)
!1007 = !DISubprogram(name: "bindtextdomain", scope: !576, file: !576, line: 86, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!39, !6, !6}
!1010 = !DISubprogram(name: "textdomain", scope: !576, file: !576, line: 82, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1011 = !DISubprogram(name: "atexit", scope: !698, file: !698, line: 602, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!33, !172}
!1014 = !DISubprogram(name: "getpagesize", scope: !1015, file: !1015, line: 1011, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1015 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!33}
!1018 = !DISubprogram(name: "vmsplice", scope: !1019, file: !1019, line: 414, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1019 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/fcntl-linux.h", directory: "", checksumkind: CSK_MD5, checksum: "1c3bf9fc3309d17651ecfc421f385bcf")
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!822, !33, !1022, !35, !14}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !813)
!1024 = !DISubprogram(name: "splice", scope: !1019, file: !1019, line: 421, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!822, !33, !1027, !33, !1027, !35, !14}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!1028 = !DISubprogram(name: "close", scope: !1015, file: !1015, line: 358, type: !1029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!33, !33}
!1031 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !130, file: !130, line: 50, type: !512, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !1032)
!1032 = !{!1033}
!1033 = !DILocalVariable(name: "file", arg: 1, scope: !1031, file: !130, line: 50, type: !6)
!1034 = !DILocation(line: 0, scope: !1031)
!1035 = !DILocation(line: 52, column: 13, scope: !1031)
!1036 = !DILocation(line: 53, column: 1, scope: !1031)
!1037 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !130, file: !130, line: 87, type: !1038, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !1040)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !48}
!1040 = !{!1041}
!1041 = !DILocalVariable(name: "ignore", arg: 1, scope: !1037, file: !130, line: 87, type: !48)
!1042 = !DILocation(line: 0, scope: !1037)
!1043 = !DILocation(line: 89, column: 16, scope: !1037)
!1044 = !{!1045, !1045, i64 0}
!1045 = !{!"_Bool", !503, i64 0}
!1046 = !DILocation(line: 90, column: 1, scope: !1037)
!1047 = distinct !DISubprogram(name: "close_stdout", scope: !130, file: !130, line: 116, type: !173, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !1048)
!1048 = !{!1049}
!1049 = !DILocalVariable(name: "write_error", scope: !1050, file: !130, line: 121, type: !6)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !130, line: 120, column: 5)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !130, line: 118, column: 7)
!1052 = !DILocation(line: 118, column: 21, scope: !1051)
!1053 = !DILocation(line: 118, column: 7, scope: !1051)
!1054 = !DILocation(line: 118, column: 29, scope: !1051)
!1055 = !DILocation(line: 119, column: 7, scope: !1051)
!1056 = !DILocation(line: 119, column: 12, scope: !1051)
!1057 = !{i8 0, i8 2}
!1058 = !DILocation(line: 119, column: 25, scope: !1051)
!1059 = !DILocation(line: 119, column: 28, scope: !1051)
!1060 = !DILocation(line: 119, column: 34, scope: !1051)
!1061 = !DILocation(line: 118, column: 7, scope: !1047)
!1062 = !DILocation(line: 121, column: 33, scope: !1050)
!1063 = !DILocation(line: 0, scope: !1050)
!1064 = !DILocation(line: 122, column: 11, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1050, file: !130, line: 122, column: 11)
!1066 = !DILocation(line: 0, scope: !1065)
!1067 = !DILocation(line: 122, column: 11, scope: !1050)
!1068 = !DILocation(line: 123, column: 9, scope: !1065)
!1069 = !DILocation(line: 126, column: 9, scope: !1065)
!1070 = !DILocation(line: 128, column: 14, scope: !1050)
!1071 = !DILocation(line: 128, column: 7, scope: !1050)
!1072 = !DILocation(line: 133, column: 42, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1047, file: !130, line: 133, column: 7)
!1074 = !DILocation(line: 133, column: 28, scope: !1073)
!1075 = !DILocation(line: 133, column: 50, scope: !1073)
!1076 = !DILocation(line: 133, column: 7, scope: !1047)
!1077 = !DILocation(line: 134, column: 12, scope: !1073)
!1078 = !DILocation(line: 134, column: 5, scope: !1073)
!1079 = !DILocation(line: 135, column: 1, scope: !1047)
!1080 = distinct !DISubprogram(name: "verror", scope: !137, file: !137, line: 251, type: !1081, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1083)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !33, !33, !6, !145}
!1083 = !{!1084, !1085, !1086, !1087}
!1084 = !DILocalVariable(name: "status", arg: 1, scope: !1080, file: !137, line: 251, type: !33)
!1085 = !DILocalVariable(name: "errnum", arg: 2, scope: !1080, file: !137, line: 251, type: !33)
!1086 = !DILocalVariable(name: "message", arg: 3, scope: !1080, file: !137, line: 251, type: !6)
!1087 = !DILocalVariable(name: "args", arg: 4, scope: !1080, file: !137, line: 251, type: !145)
!1088 = !DILocation(line: 0, scope: !1080)
!1089 = !DILocation(line: 251, column: 1, scope: !1080)
!1090 = !DILocation(line: 261, column: 3, scope: !1080)
!1091 = !DILocation(line: 265, column: 7, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1080, file: !137, line: 265, column: 7)
!1093 = !DILocation(line: 265, column: 7, scope: !1080)
!1094 = !DILocation(line: 266, column: 5, scope: !1092)
!1095 = !DILocation(line: 272, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1092, file: !137, line: 268, column: 5)
!1097 = !DILocation(line: 276, column: 3, scope: !1080)
!1098 = !{i64 0, i64 8, !501, i64 8, i64 8, !501, i64 16, i64 8, !501, i64 24, i64 4, !587, i64 28, i64 4, !587}
!1099 = !DILocation(line: 282, column: 1, scope: !1080)
!1100 = distinct !DISubprogram(name: "flush_stdout", scope: !137, file: !137, line: 163, type: !173, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1101)
!1101 = !{!1102}
!1102 = !DILocalVariable(name: "stdout_fd", scope: !1100, file: !137, line: 166, type: !33)
!1103 = !DILocation(line: 0, scope: !1100)
!1104 = !DILocalVariable(name: "fd", arg: 1, scope: !1105, file: !137, line: 145, type: !33)
!1105 = distinct !DISubprogram(name: "is_open", scope: !137, file: !137, line: 145, type: !1029, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1106)
!1106 = !{!1104}
!1107 = !DILocation(line: 0, scope: !1105, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 182, column: 25, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1100, file: !137, line: 182, column: 7)
!1110 = !DILocation(line: 157, column: 15, scope: !1105, inlinedAt: !1108)
!1111 = !DILocation(line: 182, column: 25, scope: !1109)
!1112 = !DILocation(line: 182, column: 7, scope: !1100)
!1113 = !DILocation(line: 184, column: 5, scope: !1109)
!1114 = !DILocation(line: 185, column: 1, scope: !1100)
!1115 = distinct !DISubprogram(name: "error_tail", scope: !137, file: !137, line: 219, type: !1081, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1116)
!1116 = !{!1117, !1118, !1119, !1120}
!1117 = !DILocalVariable(name: "status", arg: 1, scope: !1115, file: !137, line: 219, type: !33)
!1118 = !DILocalVariable(name: "errnum", arg: 2, scope: !1115, file: !137, line: 219, type: !33)
!1119 = !DILocalVariable(name: "message", arg: 3, scope: !1115, file: !137, line: 219, type: !6)
!1120 = !DILocalVariable(name: "args", arg: 4, scope: !1115, file: !137, line: 219, type: !145)
!1121 = !DILocation(line: 0, scope: !1115)
!1122 = !DILocation(line: 219, column: 1, scope: !1115)
!1123 = !DILocation(line: 229, column: 13, scope: !1115)
!1124 = !DILocation(line: 229, column: 3, scope: !1115)
!1125 = !DILocalVariable(name: "__stream", arg: 1, scope: !1126, file: !1127, line: 132, type: !1130)
!1126 = distinct !DISubprogram(name: "vfprintf", scope: !1127, file: !1127, line: 132, type: !1128, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1165)
!1127 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!33, !1130, !583, !147}
!1130 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !1133)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1133, file: !65, line: 51, baseType: !33, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1133, file: !65, line: 54, baseType: !39, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1133, file: !65, line: 55, baseType: !39, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1133, file: !65, line: 56, baseType: !39, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1133, file: !65, line: 57, baseType: !39, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1133, file: !65, line: 58, baseType: !39, size: 64, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1133, file: !65, line: 59, baseType: !39, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1133, file: !65, line: 60, baseType: !39, size: 64, offset: 448)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1133, file: !65, line: 61, baseType: !39, size: 64, offset: 512)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1133, file: !65, line: 64, baseType: !39, size: 64, offset: 576)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1133, file: !65, line: 65, baseType: !39, size: 64, offset: 640)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1133, file: !65, line: 66, baseType: !39, size: 64, offset: 704)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1133, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1133, file: !65, line: 70, baseType: !1149, size: 64, offset: 832)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1133, file: !65, line: 72, baseType: !33, size: 32, offset: 896)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1133, file: !65, line: 73, baseType: !33, size: 32, offset: 928)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1133, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1133, file: !65, line: 77, baseType: !34, size: 16, offset: 1024)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1133, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1133, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1133, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1133, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1133, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1133, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1133, file: !65, line: 93, baseType: !1149, size: 64, offset: 1344)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1133, file: !65, line: 94, baseType: !32, size: 64, offset: 1408)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1133, file: !65, line: 95, baseType: !35, size: 64, offset: 1472)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1133, file: !65, line: 96, baseType: !33, size: 32, offset: 1536)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1133, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!1165 = !{!1125, !1166, !1167}
!1166 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1126, file: !1127, line: 133, type: !583)
!1167 = !DILocalVariable(name: "__ap", arg: 3, scope: !1126, file: !1127, line: 133, type: !147)
!1168 = !DILocation(line: 0, scope: !1126, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 229, column: 3, scope: !1115)
!1170 = !DILocation(line: 135, column: 10, scope: !1126, inlinedAt: !1169)
!1171 = !{!1172, !1174}
!1172 = distinct !{!1172, !1173, !"vfprintf.inline: argument 0"}
!1173 = distinct !{!1173, !"vfprintf.inline"}
!1174 = distinct !{!1174, !1173, !"vfprintf.inline: argument 1"}
!1175 = !DILocation(line: 232, column: 3, scope: !1115)
!1176 = !DILocation(line: 233, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1115, file: !137, line: 233, column: 7)
!1178 = !DILocation(line: 233, column: 7, scope: !1115)
!1179 = !DILocalVariable(name: "errnum", arg: 1, scope: !1180, file: !137, line: 188, type: !33)
!1180 = distinct !DISubprogram(name: "print_errno_message", scope: !137, file: !137, line: 188, type: !491, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1181)
!1181 = !{!1179, !1182, !1183}
!1182 = !DILocalVariable(name: "s", scope: !1180, file: !137, line: 190, type: !6)
!1183 = !DILocalVariable(name: "errbuf", scope: !1180, file: !137, line: 193, type: !1184)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 1024)
!1187 = !DILocation(line: 0, scope: !1180, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 234, column: 5, scope: !1177)
!1189 = !DILocation(line: 193, column: 3, scope: !1180, inlinedAt: !1188)
!1190 = !DILocation(line: 193, column: 8, scope: !1180, inlinedAt: !1188)
!1191 = !DILocation(line: 195, column: 7, scope: !1180, inlinedAt: !1188)
!1192 = !DILocation(line: 207, column: 9, scope: !1193, inlinedAt: !1188)
!1193 = distinct !DILexicalBlock(scope: !1180, file: !137, line: 207, column: 7)
!1194 = !DILocation(line: 207, column: 7, scope: !1180, inlinedAt: !1188)
!1195 = !DILocation(line: 208, column: 9, scope: !1193, inlinedAt: !1188)
!1196 = !DILocation(line: 208, column: 5, scope: !1193, inlinedAt: !1188)
!1197 = !DILocation(line: 214, column: 3, scope: !1180, inlinedAt: !1188)
!1198 = !DILocation(line: 216, column: 1, scope: !1180, inlinedAt: !1188)
!1199 = !DILocation(line: 234, column: 5, scope: !1177)
!1200 = !DILocation(line: 238, column: 3, scope: !1115)
!1201 = !DILocalVariable(name: "__c", arg: 1, scope: !1202, file: !1203, line: 101, type: !33)
!1202 = distinct !DISubprogram(name: "putc_unlocked", scope: !1203, file: !1203, line: 101, type: !1204, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1206)
!1203 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!33, !33, !1131}
!1206 = !{!1201, !1207}
!1207 = !DILocalVariable(name: "__stream", arg: 2, scope: !1202, file: !1203, line: 101, type: !1131)
!1208 = !DILocation(line: 0, scope: !1202, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 238, column: 3, scope: !1115)
!1210 = !DILocation(line: 103, column: 10, scope: !1202, inlinedAt: !1209)
!1211 = !{!1212, !502, i64 40}
!1212 = !{!"_IO_FILE", !588, i64 0, !502, i64 8, !502, i64 16, !502, i64 24, !502, i64 32, !502, i64 40, !502, i64 48, !502, i64 56, !502, i64 64, !502, i64 72, !502, i64 80, !502, i64 88, !502, i64 96, !502, i64 104, !588, i64 112, !588, i64 116, !931, i64 120, !622, i64 128, !503, i64 130, !503, i64 131, !502, i64 136, !931, i64 144, !502, i64 152, !502, i64 160, !502, i64 168, !502, i64 176, !931, i64 184, !588, i64 192, !503, i64 196}
!1213 = !{!1212, !502, i64 48}
!1214 = !{!"branch_weights", i32 2000, i32 1}
!1215 = !DILocation(line: 240, column: 3, scope: !1115)
!1216 = !DILocation(line: 241, column: 7, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1115, file: !137, line: 241, column: 7)
!1218 = !DILocation(line: 241, column: 7, scope: !1115)
!1219 = !DILocation(line: 242, column: 5, scope: !1217)
!1220 = !DILocation(line: 243, column: 1, scope: !1115)
!1221 = !DISubprogram(name: "strerror_r", scope: !1222, file: !1222, line: 444, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1222 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!39, !33, !39, !35}
!1225 = !DISubprogram(name: "fflush_unlocked", scope: !146, file: !146, line: 239, type: !1226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!33, !1131}
!1228 = !DISubprogram(name: "fcntl", scope: !1229, file: !1229, line: 149, type: !1230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1229 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!33, !33, !33, null}
!1232 = distinct !DISubprogram(name: "error", scope: !137, file: !137, line: 285, type: !1233, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1235)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !33, !33, !6, null}
!1235 = !{!1236, !1237, !1238, !1239}
!1236 = !DILocalVariable(name: "status", arg: 1, scope: !1232, file: !137, line: 285, type: !33)
!1237 = !DILocalVariable(name: "errnum", arg: 2, scope: !1232, file: !137, line: 285, type: !33)
!1238 = !DILocalVariable(name: "message", arg: 3, scope: !1232, file: !137, line: 285, type: !6)
!1239 = !DILocalVariable(name: "ap", scope: !1232, file: !137, line: 287, type: !145)
!1240 = !DILocation(line: 0, scope: !1232)
!1241 = !DILocation(line: 287, column: 3, scope: !1232)
!1242 = !DILocation(line: 287, column: 11, scope: !1232)
!1243 = !DILocation(line: 288, column: 3, scope: !1232)
!1244 = !DILocation(line: 289, column: 3, scope: !1232)
!1245 = !DILocation(line: 290, column: 3, scope: !1232)
!1246 = !DILocation(line: 291, column: 1, scope: !1232)
!1247 = !DILocation(line: 0, scope: !142)
!1248 = !DILocation(line: 298, column: 1, scope: !142)
!1249 = !DILocation(line: 302, column: 7, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !142, file: !137, line: 302, column: 7)
!1251 = !DILocation(line: 302, column: 7, scope: !142)
!1252 = !DILocation(line: 307, column: 11, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !137, line: 307, column: 11)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !137, line: 303, column: 5)
!1255 = !DILocation(line: 307, column: 27, scope: !1253)
!1256 = !DILocation(line: 308, column: 11, scope: !1253)
!1257 = !DILocation(line: 308, column: 28, scope: !1253)
!1258 = !DILocation(line: 308, column: 25, scope: !1253)
!1259 = !DILocation(line: 309, column: 15, scope: !1253)
!1260 = !DILocation(line: 309, column: 33, scope: !1253)
!1261 = !DILocation(line: 310, column: 19, scope: !1253)
!1262 = !DILocation(line: 311, column: 22, scope: !1253)
!1263 = !DILocation(line: 311, column: 56, scope: !1253)
!1264 = !DILocation(line: 307, column: 11, scope: !1254)
!1265 = !DILocation(line: 316, column: 21, scope: !1254)
!1266 = !DILocation(line: 317, column: 23, scope: !1254)
!1267 = !DILocation(line: 318, column: 5, scope: !1254)
!1268 = !DILocation(line: 327, column: 3, scope: !142)
!1269 = !DILocation(line: 331, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !142, file: !137, line: 331, column: 7)
!1271 = !DILocation(line: 331, column: 7, scope: !142)
!1272 = !DILocation(line: 332, column: 5, scope: !1270)
!1273 = !DILocation(line: 338, column: 7, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !137, line: 334, column: 5)
!1275 = !DILocation(line: 346, column: 3, scope: !142)
!1276 = !DILocation(line: 350, column: 3, scope: !142)
!1277 = !DILocation(line: 356, column: 1, scope: !142)
!1278 = distinct !DISubprogram(name: "error_at_line", scope: !137, file: !137, line: 359, type: !1279, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !33, !33, !6, !14, !6, null}
!1281 = !{!1282, !1283, !1284, !1285, !1286, !1287}
!1282 = !DILocalVariable(name: "status", arg: 1, scope: !1278, file: !137, line: 359, type: !33)
!1283 = !DILocalVariable(name: "errnum", arg: 2, scope: !1278, file: !137, line: 359, type: !33)
!1284 = !DILocalVariable(name: "file_name", arg: 3, scope: !1278, file: !137, line: 359, type: !6)
!1285 = !DILocalVariable(name: "line_number", arg: 4, scope: !1278, file: !137, line: 360, type: !14)
!1286 = !DILocalVariable(name: "message", arg: 5, scope: !1278, file: !137, line: 360, type: !6)
!1287 = !DILocalVariable(name: "ap", scope: !1278, file: !137, line: 362, type: !145)
!1288 = !DILocation(line: 0, scope: !1278)
!1289 = !DILocation(line: 362, column: 3, scope: !1278)
!1290 = !DILocation(line: 362, column: 11, scope: !1278)
!1291 = !DILocation(line: 363, column: 3, scope: !1278)
!1292 = !DILocation(line: 364, column: 3, scope: !1278)
!1293 = !DILocation(line: 366, column: 3, scope: !1278)
!1294 = !DILocation(line: 367, column: 1, scope: !1278)
!1295 = distinct !DISubprogram(name: "rpl_fcntl", scope: !178, file: !178, line: 202, type: !1230, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1296)
!1296 = !{!1297, !1298, !1299, !1310, !1311, !1314, !1316, !1320}
!1297 = !DILocalVariable(name: "fd", arg: 1, scope: !1295, file: !178, line: 202, type: !33)
!1298 = !DILocalVariable(name: "action", arg: 2, scope: !1295, file: !178, line: 202, type: !33)
!1299 = !DILocalVariable(name: "arg", scope: !1295, file: !178, line: 208, type: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !148, line: 14, baseType: !1301)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1302, baseType: !1303)
!1302 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !152, size: 256, elements: !1304)
!1304 = !{!1305, !1306, !1307, !1308, !1309}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1303, file: !1302, line: 208, baseType: !32, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1303, file: !1302, line: 208, baseType: !32, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1303, file: !1302, line: 208, baseType: !32, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1303, file: !1302, line: 208, baseType: !33, size: 32, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1303, file: !1302, line: 208, baseType: !33, size: 32, offset: 224)
!1310 = !DILocalVariable(name: "result", scope: !1295, file: !178, line: 211, type: !33)
!1311 = !DILocalVariable(name: "target", scope: !1312, file: !178, line: 216, type: !33)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !178, line: 215, column: 7)
!1313 = distinct !DILexicalBlock(scope: !1295, file: !178, line: 213, column: 5)
!1314 = !DILocalVariable(name: "target", scope: !1315, file: !178, line: 223, type: !33)
!1315 = distinct !DILexicalBlock(scope: !1313, file: !178, line: 222, column: 7)
!1316 = !DILocalVariable(name: "x", scope: !1317, file: !178, line: 418, type: !33)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !178, line: 417, column: 13)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !178, line: 261, column: 11)
!1319 = distinct !DILexicalBlock(scope: !1313, file: !178, line: 258, column: 7)
!1320 = !DILocalVariable(name: "p", scope: !1321, file: !178, line: 426, type: !32)
!1321 = distinct !DILexicalBlock(scope: !1318, file: !178, line: 425, column: 13)
!1322 = !DILocation(line: 0, scope: !1295)
!1323 = !DILocation(line: 208, column: 3, scope: !1295)
!1324 = !DILocation(line: 208, column: 11, scope: !1295)
!1325 = !DILocation(line: 209, column: 3, scope: !1295)
!1326 = !DILocation(line: 212, column: 3, scope: !1295)
!1327 = !DILocation(line: 216, column: 22, scope: !1312)
!1328 = !DILocation(line: 0, scope: !1312)
!1329 = !DILocalVariable(name: "fd", arg: 1, scope: !1330, file: !178, line: 444, type: !33)
!1330 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !178, file: !178, line: 444, type: !179, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1331)
!1331 = !{!1329, !1332, !1333}
!1332 = !DILocalVariable(name: "target", arg: 2, scope: !1330, file: !178, line: 444, type: !33)
!1333 = !DILocalVariable(name: "result", scope: !1330, file: !178, line: 446, type: !33)
!1334 = !DILocation(line: 0, scope: !1330, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 217, column: 18, scope: !1312)
!1336 = !DILocation(line: 479, column: 12, scope: !1330, inlinedAt: !1335)
!1337 = !DILocation(line: 223, column: 22, scope: !1315)
!1338 = !DILocation(line: 0, scope: !1315)
!1339 = !DILocation(line: 0, scope: !177, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 224, column: 18, scope: !1315)
!1341 = !DILocation(line: 507, column: 12, scope: !1342, inlinedAt: !1340)
!1342 = distinct !DILexicalBlock(scope: !177, file: !178, line: 507, column: 7)
!1343 = !DILocation(line: 507, column: 9, scope: !1342, inlinedAt: !1340)
!1344 = !DILocation(line: 507, column: 7, scope: !177, inlinedAt: !1340)
!1345 = !DILocation(line: 509, column: 16, scope: !1346, inlinedAt: !1340)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !178, line: 508, column: 5)
!1347 = !DILocation(line: 510, column: 13, scope: !1348, inlinedAt: !1340)
!1348 = distinct !DILexicalBlock(scope: !1346, file: !178, line: 510, column: 11)
!1349 = !DILocation(line: 510, column: 23, scope: !1348, inlinedAt: !1340)
!1350 = !DILocation(line: 510, column: 26, scope: !1348, inlinedAt: !1340)
!1351 = !DILocation(line: 510, column: 32, scope: !1348, inlinedAt: !1340)
!1352 = !DILocation(line: 510, column: 11, scope: !1346, inlinedAt: !1340)
!1353 = !DILocation(line: 512, column: 30, scope: !1354, inlinedAt: !1340)
!1354 = distinct !DILexicalBlock(scope: !1348, file: !178, line: 511, column: 9)
!1355 = !DILocation(line: 528, column: 19, scope: !189, inlinedAt: !1340)
!1356 = !DILocation(line: 0, scope: !1330, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 520, column: 20, scope: !1358, inlinedAt: !1340)
!1358 = distinct !DILexicalBlock(scope: !1348, file: !178, line: 519, column: 9)
!1359 = !DILocation(line: 479, column: 12, scope: !1330, inlinedAt: !1357)
!1360 = !DILocation(line: 521, column: 22, scope: !1361, inlinedAt: !1340)
!1361 = distinct !DILexicalBlock(scope: !1358, file: !178, line: 521, column: 15)
!1362 = !DILocation(line: 521, column: 15, scope: !1358, inlinedAt: !1340)
!1363 = !DILocation(line: 522, column: 32, scope: !1361, inlinedAt: !1340)
!1364 = !DILocation(line: 522, column: 13, scope: !1361, inlinedAt: !1340)
!1365 = !DILocation(line: 0, scope: !1330, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 527, column: 14, scope: !1342, inlinedAt: !1340)
!1367 = !DILocation(line: 479, column: 12, scope: !1330, inlinedAt: !1366)
!1368 = !DILocation(line: 0, scope: !1342, inlinedAt: !1340)
!1369 = !DILocation(line: 528, column: 9, scope: !189, inlinedAt: !1340)
!1370 = !DILocation(line: 530, column: 19, scope: !188, inlinedAt: !1340)
!1371 = !DILocation(line: 0, scope: !188, inlinedAt: !1340)
!1372 = !DILocation(line: 531, column: 17, scope: !192, inlinedAt: !1340)
!1373 = !DILocation(line: 531, column: 21, scope: !192, inlinedAt: !1340)
!1374 = !DILocation(line: 531, column: 54, scope: !192, inlinedAt: !1340)
!1375 = !DILocation(line: 531, column: 24, scope: !192, inlinedAt: !1340)
!1376 = !DILocation(line: 531, column: 68, scope: !192, inlinedAt: !1340)
!1377 = !DILocation(line: 531, column: 11, scope: !188, inlinedAt: !1340)
!1378 = !DILocation(line: 533, column: 29, scope: !191, inlinedAt: !1340)
!1379 = !DILocation(line: 0, scope: !191, inlinedAt: !1340)
!1380 = !DILocation(line: 534, column: 11, scope: !191, inlinedAt: !1340)
!1381 = !DILocation(line: 535, column: 17, scope: !191, inlinedAt: !1340)
!1382 = !DILocation(line: 537, column: 9, scope: !191, inlinedAt: !1340)
!1383 = !DILocation(line: 329, column: 22, scope: !1318)
!1384 = !DILocation(line: 330, column: 13, scope: !1318)
!1385 = !DILocation(line: 418, column: 23, scope: !1317)
!1386 = !DILocation(line: 0, scope: !1317)
!1387 = !DILocation(line: 419, column: 24, scope: !1317)
!1388 = !DILocation(line: 421, column: 13, scope: !1318)
!1389 = !DILocation(line: 426, column: 25, scope: !1321)
!1390 = !DILocation(line: 0, scope: !1321)
!1391 = !DILocation(line: 427, column: 24, scope: !1321)
!1392 = !DILocation(line: 429, column: 13, scope: !1318)
!1393 = !DILocation(line: 0, scope: !1313)
!1394 = !DILocation(line: 438, column: 3, scope: !1295)
!1395 = !DILocation(line: 441, column: 1, scope: !1295)
!1396 = !DILocation(line: 440, column: 3, scope: !1295)
!1397 = distinct !DISubprogram(name: "full_write", scope: !398, file: !398, line: 58, type: !1398, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!441, !33, !705, !441}
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1406}
!1401 = !DILocalVariable(name: "fd", arg: 1, scope: !1397, file: !398, line: 58, type: !33)
!1402 = !DILocalVariable(name: "buf", arg: 2, scope: !1397, file: !398, line: 58, type: !705)
!1403 = !DILocalVariable(name: "count", arg: 3, scope: !1397, file: !398, line: 58, type: !441)
!1404 = !DILocalVariable(name: "total", scope: !1397, file: !398, line: 60, type: !441)
!1405 = !DILocalVariable(name: "ptr", scope: !1397, file: !398, line: 61, type: !6)
!1406 = !DILocalVariable(name: "n_rw", scope: !1407, file: !398, line: 65, type: !443)
!1407 = distinct !DILexicalBlock(scope: !1397, file: !398, line: 64, column: 5)
!1408 = !DILocation(line: 0, scope: !1397)
!1409 = !DILocation(line: 63, column: 16, scope: !1397)
!1410 = !DILocation(line: 63, column: 3, scope: !1397)
!1411 = !DILocation(line: 65, column: 24, scope: !1407)
!1412 = !DILocation(line: 0, scope: !1407)
!1413 = !DILocation(line: 66, column: 16, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1407, file: !398, line: 66, column: 11)
!1415 = !DILocation(line: 66, column: 11, scope: !1407)
!1416 = !DILocation(line: 68, column: 16, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1407, file: !398, line: 68, column: 11)
!1418 = !DILocation(line: 68, column: 11, scope: !1407)
!1419 = !DILocation(line: 70, column: 11, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1417, file: !398, line: 69, column: 9)
!1421 = !DILocation(line: 70, column: 17, scope: !1420)
!1422 = !DILocation(line: 71, column: 11, scope: !1420)
!1423 = !DILocation(line: 73, column: 13, scope: !1407)
!1424 = !DILocation(line: 74, column: 11, scope: !1407)
!1425 = !DILocation(line: 75, column: 13, scope: !1407)
!1426 = !DILocation(line: 78, column: 3, scope: !1397)
!1427 = distinct !DISubprogram(name: "getprogname", scope: !401, file: !401, line: 54, type: !1428, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !579)
!1428 = !DISubroutineType(types: !399)
!1429 = !DILocation(line: 58, column: 10, scope: !1427)
!1430 = !DILocation(line: 58, column: 3, scope: !1427)
!1431 = distinct !DISubprogram(name: "isapipe", scope: !403, file: !403, line: 72, type: !1029, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !1432)
!1432 = !{!1433, !1434, !1438, !1439, !1473}
!1433 = !DILocalVariable(name: "fd", arg: 1, scope: !1431, file: !403, line: 72, type: !33)
!1434 = !DILocalVariable(name: "pipe_link_count_max", scope: !1431, file: !403, line: 74, type: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !1436, line: 74, baseType: !1437)
!1436 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !88, line: 151, baseType: !14)
!1438 = !DILocalVariable(name: "check_for_fifo", scope: !1431, file: !403, line: 75, type: !48)
!1439 = !DILocalVariable(name: "st", scope: !1431, file: !403, line: 77, type: !1440)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1441, line: 44, size: 1024, elements: !1442)
!1441 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1442 = !{!1443, !1445, !1447, !1449, !1450, !1452, !1454, !1455, !1456, !1457, !1459, !1460, !1462, !1470, !1471, !1472}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1440, file: !1441, line: 46, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !88, line: 145, baseType: !37)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1440, file: !1441, line: 47, baseType: !1446, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !88, line: 148, baseType: !37)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1440, file: !1441, line: 48, baseType: !1448, size: 32, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !88, line: 150, baseType: !14)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1440, file: !1441, line: 49, baseType: !1437, size: 32, offset: 160)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1440, file: !1441, line: 50, baseType: !1451, size: 32, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !88, line: 146, baseType: !14)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1440, file: !1441, line: 51, baseType: !1453, size: 32, offset: 224)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !88, line: 147, baseType: !14)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1440, file: !1441, line: 52, baseType: !1444, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1440, file: !1441, line: 53, baseType: !1444, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1440, file: !1441, line: 54, baseType: !87, size: 64, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1440, file: !1441, line: 55, baseType: !1458, size: 32, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !88, line: 175, baseType: !33)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1440, file: !1441, line: 56, baseType: !33, size: 32, offset: 480)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1440, file: !1441, line: 57, baseType: !1461, size: 64, offset: 512)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !88, line: 180, baseType: !89)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1440, file: !1441, line: 65, baseType: !1463, size: 128, offset: 576)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1464, line: 11, size: 128, elements: !1465)
!1464 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1465 = !{!1466, !1468}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1463, file: !1464, line: 16, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !88, line: 160, baseType: !89)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1463, file: !1464, line: 21, baseType: !1469, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !88, line: 197, baseType: !89)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1440, file: !1441, line: 66, baseType: !1463, size: 128, offset: 704)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1440, file: !1441, line: 67, baseType: !1463, size: 128, offset: 832)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1440, file: !1441, line: 79, baseType: !383, size: 64, offset: 960)
!1473 = !DILocalVariable(name: "fstat_result", scope: !1431, file: !403, line: 78, type: !33)
!1474 = !DILocation(line: 0, scope: !1431)
!1475 = !DILocation(line: 77, column: 3, scope: !1431)
!1476 = !DILocation(line: 77, column: 15, scope: !1431)
!1477 = !DILocation(line: 78, column: 22, scope: !1431)
!1478 = !DILocation(line: 79, column: 20, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1431, file: !403, line: 79, column: 7)
!1480 = !DILocation(line: 79, column: 7, scope: !1431)
!1481 = !DILocation(line: 118, column: 9, scope: !1431)
!1482 = !{!1483, !588, i64 20}
!1483 = !{!"stat", !931, i64 0, !931, i64 8, !588, i64 16, !588, i64 20, !588, i64 24, !588, i64 28, !931, i64 32, !931, i64 40, !931, i64 48, !588, i64 56, !588, i64 60, !931, i64 64, !1484, i64 72, !1484, i64 88, !1484, i64 104, !503, i64 120}
!1484 = !{!"timespec", !931, i64 0, !931, i64 8}
!1485 = !DILocation(line: 118, column: 18, scope: !1431)
!1486 = !DILocation(line: 119, column: 6, scope: !1431)
!1487 = !DILocation(line: 117, column: 3, scope: !1431)
!1488 = !DILocation(line: 120, column: 1, scope: !1431)
!1489 = !DISubprogram(name: "fstat", scope: !1490, file: !1490, line: 210, type: !1491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1490 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!33, !33, !1493}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1494 = distinct !DISubprogram(name: "parse_long_options", scope: !196, file: !196, line: 45, type: !1495, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !1498)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{null, !33, !710, !6, !6, !6, !1497, null}
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!1498 = !{!1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1509}
!1499 = !DILocalVariable(name: "argc", arg: 1, scope: !1494, file: !196, line: 45, type: !33)
!1500 = !DILocalVariable(name: "argv", arg: 2, scope: !1494, file: !196, line: 46, type: !710)
!1501 = !DILocalVariable(name: "command_name", arg: 3, scope: !1494, file: !196, line: 47, type: !6)
!1502 = !DILocalVariable(name: "package", arg: 4, scope: !1494, file: !196, line: 48, type: !6)
!1503 = !DILocalVariable(name: "version", arg: 5, scope: !1494, file: !196, line: 49, type: !6)
!1504 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1494, file: !196, line: 50, type: !1497)
!1505 = !DILocalVariable(name: "saved_opterr", scope: !1494, file: !196, line: 53, type: !33)
!1506 = !DILocalVariable(name: "c", scope: !1507, file: !196, line: 60, type: !33)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !196, line: 59, column: 5)
!1508 = distinct !DILexicalBlock(scope: !1494, file: !196, line: 58, column: 7)
!1509 = !DILocalVariable(name: "authors", scope: !1510, file: !196, line: 71, type: !1514)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !196, line: 70, column: 15)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !196, line: 64, column: 13)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !196, line: 62, column: 9)
!1513 = distinct !DILexicalBlock(scope: !1507, file: !196, line: 61, column: 11)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !146, line: 52, baseType: !1515)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !148, line: 32, baseType: !1516)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1517, baseType: !1518)
!1517 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !152, size: 256, elements: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1524}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1518, file: !1517, line: 71, baseType: !32, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1518, file: !1517, line: 71, baseType: !32, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1518, file: !1517, line: 71, baseType: !32, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1518, file: !1517, line: 71, baseType: !33, size: 32, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1518, file: !1517, line: 71, baseType: !33, size: 32, offset: 224)
!1525 = !DILocation(line: 0, scope: !1494)
!1526 = !DILocation(line: 53, column: 22, scope: !1494)
!1527 = !DILocation(line: 56, column: 10, scope: !1494)
!1528 = !DILocation(line: 58, column: 12, scope: !1508)
!1529 = !DILocation(line: 58, column: 7, scope: !1494)
!1530 = !DILocation(line: 60, column: 15, scope: !1507)
!1531 = !DILocation(line: 0, scope: !1507)
!1532 = !DILocation(line: 61, column: 11, scope: !1507)
!1533 = !DILocation(line: 66, column: 15, scope: !1511)
!1534 = !DILocation(line: 67, column: 15, scope: !1511)
!1535 = !DILocation(line: 71, column: 17, scope: !1510)
!1536 = !DILocation(line: 71, column: 25, scope: !1510)
!1537 = !DILocation(line: 72, column: 17, scope: !1510)
!1538 = !DILocation(line: 73, column: 33, scope: !1510)
!1539 = !DILocation(line: 73, column: 17, scope: !1510)
!1540 = !DILocation(line: 74, column: 17, scope: !1510)
!1541 = !DILocation(line: 85, column: 10, scope: !1494)
!1542 = !DILocation(line: 89, column: 10, scope: !1494)
!1543 = !DILocation(line: 90, column: 1, scope: !1494)
!1544 = !DISubprogram(name: "getopt_long", scope: !201, file: !201, line: 66, type: !1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!33, !33, !1547, !6, !1549, !206}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1550 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !196, file: !196, line: 98, type: !1551, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !1553)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !33, !710, !6, !6, !6, !48, !1497, null}
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564}
!1554 = !DILocalVariable(name: "argc", arg: 1, scope: !1550, file: !196, line: 98, type: !33)
!1555 = !DILocalVariable(name: "argv", arg: 2, scope: !1550, file: !196, line: 99, type: !710)
!1556 = !DILocalVariable(name: "command_name", arg: 3, scope: !1550, file: !196, line: 100, type: !6)
!1557 = !DILocalVariable(name: "package", arg: 4, scope: !1550, file: !196, line: 101, type: !6)
!1558 = !DILocalVariable(name: "version", arg: 5, scope: !1550, file: !196, line: 102, type: !6)
!1559 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1550, file: !196, line: 103, type: !48)
!1560 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1550, file: !196, line: 104, type: !1497)
!1561 = !DILocalVariable(name: "saved_opterr", scope: !1550, file: !196, line: 107, type: !33)
!1562 = !DILocalVariable(name: "optstring", scope: !1550, file: !196, line: 112, type: !6)
!1563 = !DILocalVariable(name: "c", scope: !1550, file: !196, line: 114, type: !33)
!1564 = !DILocalVariable(name: "authors", scope: !1565, file: !196, line: 125, type: !1514)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !196, line: 124, column: 11)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !196, line: 118, column: 9)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !196, line: 116, column: 5)
!1568 = distinct !DILexicalBlock(scope: !1550, file: !196, line: 115, column: 7)
!1569 = !DILocation(line: 0, scope: !1550)
!1570 = !DILocation(line: 107, column: 22, scope: !1550)
!1571 = !DILocation(line: 110, column: 10, scope: !1550)
!1572 = !DILocation(line: 112, column: 27, scope: !1550)
!1573 = !DILocation(line: 114, column: 11, scope: !1550)
!1574 = !DILocation(line: 115, column: 7, scope: !1550)
!1575 = !DILocation(line: 125, column: 13, scope: !1565)
!1576 = !DILocation(line: 125, column: 21, scope: !1565)
!1577 = !DILocation(line: 126, column: 13, scope: !1565)
!1578 = !DILocation(line: 127, column: 29, scope: !1565)
!1579 = !DILocation(line: 127, column: 13, scope: !1565)
!1580 = !DILocation(line: 128, column: 13, scope: !1565)
!1581 = !DILocation(line: 132, column: 26, scope: !1566)
!1582 = !DILocation(line: 133, column: 11, scope: !1566)
!1583 = !DILocation(line: 0, scope: !1566)
!1584 = !DILocation(line: 138, column: 10, scope: !1550)
!1585 = !DILocation(line: 139, column: 1, scope: !1550)
!1586 = distinct !DISubprogram(name: "pipe2_safer", scope: !405, file: !405, line: 31, type: !375, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !1587)
!1587 = !{!1588, !1589, !1590, !1594}
!1588 = !DILocalVariable(name: "fd", arg: 1, scope: !1586, file: !405, line: 31, type: !206)
!1589 = !DILocalVariable(name: "flags", arg: 2, scope: !1586, file: !405, line: 31, type: !33)
!1590 = !DILocalVariable(name: "i", scope: !1591, file: !405, line: 36, type: !33)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !405, line: 36, column: 7)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !405, line: 35, column: 5)
!1593 = distinct !DILexicalBlock(scope: !1586, file: !405, line: 34, column: 7)
!1594 = !DILocalVariable(name: "saved_errno", scope: !1595, file: !405, line: 41, type: !33)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !405, line: 40, column: 13)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !405, line: 39, column: 15)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !405, line: 37, column: 9)
!1598 = distinct !DILexicalBlock(scope: !1591, file: !405, line: 36, column: 7)
!1599 = !DILocation(line: 0, scope: !1586)
!1600 = !DILocation(line: 34, column: 7, scope: !1593)
!1601 = !DILocation(line: 34, column: 25, scope: !1593)
!1602 = !DILocation(line: 34, column: 7, scope: !1586)
!1603 = !DILocation(line: 0, scope: !1591)
!1604 = !DILocation(line: 38, column: 34, scope: !1597)
!1605 = !DILocation(line: 38, column: 19, scope: !1597)
!1606 = !DILocation(line: 38, column: 17, scope: !1597)
!1607 = !DILocation(line: 39, column: 21, scope: !1596)
!1608 = !DILocation(line: 39, column: 15, scope: !1597)
!1609 = !DILocation(line: 41, column: 33, scope: !1595)
!1610 = !DILocation(line: 0, scope: !1595)
!1611 = !DILocation(line: 42, column: 22, scope: !1595)
!1612 = !DILocation(line: 42, column: 15, scope: !1595)
!1613 = !DILocation(line: 43, column: 21, scope: !1595)
!1614 = !DILocation(line: 51, column: 1, scope: !1586)
!1615 = distinct !DISubprogram(name: "set_program_name", scope: !213, file: !213, line: 37, type: !512, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1616)
!1616 = !{!1617, !1618, !1619}
!1617 = !DILocalVariable(name: "argv0", arg: 1, scope: !1615, file: !213, line: 37, type: !6)
!1618 = !DILocalVariable(name: "slash", scope: !1615, file: !213, line: 44, type: !6)
!1619 = !DILocalVariable(name: "base", scope: !1615, file: !213, line: 45, type: !6)
!1620 = !DILocation(line: 0, scope: !1615)
!1621 = !DILocation(line: 44, column: 23, scope: !1615)
!1622 = !DILocation(line: 45, column: 22, scope: !1615)
!1623 = !DILocation(line: 46, column: 17, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1615, file: !213, line: 46, column: 7)
!1625 = !DILocation(line: 46, column: 9, scope: !1624)
!1626 = !DILocation(line: 46, column: 25, scope: !1624)
!1627 = !DILocation(line: 46, column: 40, scope: !1624)
!1628 = !DILocalVariable(name: "__s1", arg: 1, scope: !1629, file: !537, line: 974, type: !705)
!1629 = distinct !DISubprogram(name: "memeq", scope: !537, file: !537, line: 974, type: !1630, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1632)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!48, !705, !705, !35}
!1632 = !{!1628, !1633, !1634}
!1633 = !DILocalVariable(name: "__s2", arg: 2, scope: !1629, file: !537, line: 974, type: !705)
!1634 = !DILocalVariable(name: "__n", arg: 3, scope: !1629, file: !537, line: 974, type: !35)
!1635 = !DILocation(line: 0, scope: !1629, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 46, column: 28, scope: !1624)
!1637 = !DILocation(line: 976, column: 11, scope: !1629, inlinedAt: !1636)
!1638 = !DILocation(line: 976, column: 10, scope: !1629, inlinedAt: !1636)
!1639 = !DILocation(line: 46, column: 7, scope: !1615)
!1640 = !DILocation(line: 49, column: 11, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !213, line: 49, column: 11)
!1642 = distinct !DILexicalBlock(scope: !1624, file: !213, line: 47, column: 5)
!1643 = !DILocation(line: 49, column: 36, scope: !1641)
!1644 = !DILocation(line: 49, column: 11, scope: !1642)
!1645 = !DILocation(line: 65, column: 16, scope: !1615)
!1646 = !DILocation(line: 71, column: 27, scope: !1615)
!1647 = !DILocation(line: 74, column: 33, scope: !1615)
!1648 = !DILocation(line: 76, column: 1, scope: !1615)
!1649 = !DILocation(line: 0, scope: !218)
!1650 = !DILocation(line: 40, column: 29, scope: !218)
!1651 = !DILocation(line: 41, column: 19, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !218, file: !219, line: 41, column: 7)
!1653 = !DILocation(line: 41, column: 7, scope: !218)
!1654 = !DILocation(line: 47, column: 3, scope: !218)
!1655 = !DILocation(line: 48, column: 3, scope: !218)
!1656 = !DILocation(line: 48, column: 13, scope: !218)
!1657 = !DILocalVariable(name: "ps", arg: 1, scope: !1658, file: !1659, line: 1135, type: !1662)
!1658 = distinct !DISubprogram(name: "mbszero", scope: !1659, file: !1659, line: 1135, type: !1660, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !1663)
!1659 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1660 = !DISubroutineType(types: !1661)
!1661 = !{null, !1662}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!1663 = !{!1657}
!1664 = !DILocation(line: 0, scope: !1658, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 48, column: 18, scope: !218)
!1666 = !DILocalVariable(name: "__dest", arg: 1, scope: !1667, file: !781, line: 57, type: !32)
!1667 = distinct !DISubprogram(name: "memset", scope: !781, file: !781, line: 57, type: !1668, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !1670)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!32, !32, !33, !35}
!1670 = !{!1666, !1671, !1672}
!1671 = !DILocalVariable(name: "__ch", arg: 2, scope: !1667, file: !781, line: 57, type: !33)
!1672 = !DILocalVariable(name: "__len", arg: 3, scope: !1667, file: !781, line: 57, type: !35)
!1673 = !DILocation(line: 0, scope: !1667, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 1137, column: 3, scope: !1658, inlinedAt: !1665)
!1675 = !DILocation(line: 59, column: 10, scope: !1667, inlinedAt: !1674)
!1676 = !DILocation(line: 49, column: 7, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !218, file: !219, line: 49, column: 7)
!1678 = !DILocation(line: 49, column: 39, scope: !1677)
!1679 = !DILocation(line: 49, column: 44, scope: !1677)
!1680 = !DILocation(line: 54, column: 1, scope: !218)
!1681 = !DISubprogram(name: "mbrtoc32", scope: !230, file: !230, line: 57, type: !1682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!35, !1684, !583, !35, !1686}
!1684 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1685)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1662)
!1687 = distinct !DISubprogram(name: "clone_quoting_options", scope: !255, file: !255, line: 113, type: !1688, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1691)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!1690, !1690}
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!1691 = !{!1692, !1693, !1694}
!1692 = !DILocalVariable(name: "o", arg: 1, scope: !1687, file: !255, line: 113, type: !1690)
!1693 = !DILocalVariable(name: "saved_errno", scope: !1687, file: !255, line: 115, type: !33)
!1694 = !DILocalVariable(name: "p", scope: !1687, file: !255, line: 116, type: !1690)
!1695 = !DILocation(line: 0, scope: !1687)
!1696 = !DILocation(line: 115, column: 21, scope: !1687)
!1697 = !DILocation(line: 116, column: 40, scope: !1687)
!1698 = !DILocation(line: 116, column: 31, scope: !1687)
!1699 = !DILocation(line: 118, column: 9, scope: !1687)
!1700 = !DILocation(line: 119, column: 3, scope: !1687)
!1701 = distinct !DISubprogram(name: "get_quoting_style", scope: !255, file: !255, line: 124, type: !1702, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1706)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!257, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!1706 = !{!1707}
!1707 = !DILocalVariable(name: "o", arg: 1, scope: !1701, file: !255, line: 124, type: !1704)
!1708 = !DILocation(line: 0, scope: !1701)
!1709 = !DILocation(line: 126, column: 11, scope: !1701)
!1710 = !DILocation(line: 126, column: 46, scope: !1701)
!1711 = !{!1712, !503, i64 0}
!1712 = !{!"quoting_options", !503, i64 0, !588, i64 4, !503, i64 8, !502, i64 40, !502, i64 48}
!1713 = !DILocation(line: 126, column: 3, scope: !1701)
!1714 = distinct !DISubprogram(name: "set_quoting_style", scope: !255, file: !255, line: 132, type: !1715, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1717)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{null, !1690, !257}
!1717 = !{!1718, !1719}
!1718 = !DILocalVariable(name: "o", arg: 1, scope: !1714, file: !255, line: 132, type: !1690)
!1719 = !DILocalVariable(name: "s", arg: 2, scope: !1714, file: !255, line: 132, type: !257)
!1720 = !DILocation(line: 0, scope: !1714)
!1721 = !DILocation(line: 134, column: 4, scope: !1714)
!1722 = !DILocation(line: 134, column: 39, scope: !1714)
!1723 = !DILocation(line: 134, column: 45, scope: !1714)
!1724 = !DILocation(line: 135, column: 1, scope: !1714)
!1725 = distinct !DISubprogram(name: "set_char_quoting", scope: !255, file: !255, line: 143, type: !1726, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1728)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!33, !1690, !8, !33}
!1728 = !{!1729, !1730, !1731, !1732, !1733, !1735, !1736}
!1729 = !DILocalVariable(name: "o", arg: 1, scope: !1725, file: !255, line: 143, type: !1690)
!1730 = !DILocalVariable(name: "c", arg: 2, scope: !1725, file: !255, line: 143, type: !8)
!1731 = !DILocalVariable(name: "i", arg: 3, scope: !1725, file: !255, line: 143, type: !33)
!1732 = !DILocalVariable(name: "uc", scope: !1725, file: !255, line: 145, type: !38)
!1733 = !DILocalVariable(name: "p", scope: !1725, file: !255, line: 146, type: !1734)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1735 = !DILocalVariable(name: "shift", scope: !1725, file: !255, line: 148, type: !33)
!1736 = !DILocalVariable(name: "r", scope: !1725, file: !255, line: 149, type: !14)
!1737 = !DILocation(line: 0, scope: !1725)
!1738 = !DILocation(line: 147, column: 6, scope: !1725)
!1739 = !DILocation(line: 147, column: 62, scope: !1725)
!1740 = !DILocation(line: 147, column: 57, scope: !1725)
!1741 = !DILocation(line: 148, column: 15, scope: !1725)
!1742 = !DILocation(line: 149, column: 21, scope: !1725)
!1743 = !DILocation(line: 149, column: 24, scope: !1725)
!1744 = !DILocation(line: 149, column: 34, scope: !1725)
!1745 = !DILocation(line: 150, column: 13, scope: !1725)
!1746 = !DILocation(line: 150, column: 19, scope: !1725)
!1747 = !DILocation(line: 150, column: 24, scope: !1725)
!1748 = !DILocation(line: 150, column: 6, scope: !1725)
!1749 = !DILocation(line: 151, column: 3, scope: !1725)
!1750 = distinct !DISubprogram(name: "set_quoting_flags", scope: !255, file: !255, line: 159, type: !1751, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1753)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!33, !1690, !33}
!1753 = !{!1754, !1755, !1756}
!1754 = !DILocalVariable(name: "o", arg: 1, scope: !1750, file: !255, line: 159, type: !1690)
!1755 = !DILocalVariable(name: "i", arg: 2, scope: !1750, file: !255, line: 159, type: !33)
!1756 = !DILocalVariable(name: "r", scope: !1750, file: !255, line: 163, type: !33)
!1757 = !DILocation(line: 0, scope: !1750)
!1758 = !DILocation(line: 161, column: 8, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1750, file: !255, line: 161, column: 7)
!1760 = !DILocation(line: 161, column: 7, scope: !1750)
!1761 = !DILocation(line: 163, column: 14, scope: !1750)
!1762 = !{!1712, !588, i64 4}
!1763 = !DILocation(line: 164, column: 12, scope: !1750)
!1764 = !DILocation(line: 165, column: 3, scope: !1750)
!1765 = distinct !DISubprogram(name: "set_custom_quoting", scope: !255, file: !255, line: 169, type: !1766, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1768)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null, !1690, !6, !6}
!1768 = !{!1769, !1770, !1771}
!1769 = !DILocalVariable(name: "o", arg: 1, scope: !1765, file: !255, line: 169, type: !1690)
!1770 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1765, file: !255, line: 170, type: !6)
!1771 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1765, file: !255, line: 170, type: !6)
!1772 = !DILocation(line: 0, scope: !1765)
!1773 = !DILocation(line: 172, column: 8, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1765, file: !255, line: 172, column: 7)
!1775 = !DILocation(line: 172, column: 7, scope: !1765)
!1776 = !DILocation(line: 174, column: 6, scope: !1765)
!1777 = !DILocation(line: 174, column: 12, scope: !1765)
!1778 = !DILocation(line: 175, column: 8, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1765, file: !255, line: 175, column: 7)
!1780 = !DILocation(line: 175, column: 19, scope: !1779)
!1781 = !DILocation(line: 176, column: 5, scope: !1779)
!1782 = !DILocation(line: 177, column: 6, scope: !1765)
!1783 = !DILocation(line: 177, column: 17, scope: !1765)
!1784 = !{!1712, !502, i64 40}
!1785 = !DILocation(line: 178, column: 6, scope: !1765)
!1786 = !DILocation(line: 178, column: 18, scope: !1765)
!1787 = !{!1712, !502, i64 48}
!1788 = !DILocation(line: 179, column: 1, scope: !1765)
!1789 = distinct !DISubprogram(name: "quotearg_buffer", scope: !255, file: !255, line: 774, type: !1790, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1792)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!35, !39, !35, !6, !35, !1704}
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800}
!1793 = !DILocalVariable(name: "buffer", arg: 1, scope: !1789, file: !255, line: 774, type: !39)
!1794 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1789, file: !255, line: 774, type: !35)
!1795 = !DILocalVariable(name: "arg", arg: 3, scope: !1789, file: !255, line: 775, type: !6)
!1796 = !DILocalVariable(name: "argsize", arg: 4, scope: !1789, file: !255, line: 775, type: !35)
!1797 = !DILocalVariable(name: "o", arg: 5, scope: !1789, file: !255, line: 776, type: !1704)
!1798 = !DILocalVariable(name: "p", scope: !1789, file: !255, line: 778, type: !1704)
!1799 = !DILocalVariable(name: "saved_errno", scope: !1789, file: !255, line: 779, type: !33)
!1800 = !DILocalVariable(name: "r", scope: !1789, file: !255, line: 780, type: !35)
!1801 = !DILocation(line: 0, scope: !1789)
!1802 = !DILocation(line: 778, column: 37, scope: !1789)
!1803 = !DILocation(line: 779, column: 21, scope: !1789)
!1804 = !DILocation(line: 781, column: 43, scope: !1789)
!1805 = !DILocation(line: 781, column: 53, scope: !1789)
!1806 = !DILocation(line: 781, column: 60, scope: !1789)
!1807 = !DILocation(line: 782, column: 43, scope: !1789)
!1808 = !DILocation(line: 782, column: 58, scope: !1789)
!1809 = !DILocation(line: 780, column: 14, scope: !1789)
!1810 = !DILocation(line: 783, column: 9, scope: !1789)
!1811 = !DILocation(line: 784, column: 3, scope: !1789)
!1812 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !255, file: !255, line: 251, type: !1813, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1817)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!35, !39, !35, !6, !35, !257, !33, !1815, !6, !6}
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1842, !1844, !1847, !1848, !1849, !1850, !1853, !1854, !1857, !1861, !1862, !1870, !1873, !1874, !1876, !1877, !1878, !1879}
!1818 = !DILocalVariable(name: "buffer", arg: 1, scope: !1812, file: !255, line: 251, type: !39)
!1819 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1812, file: !255, line: 251, type: !35)
!1820 = !DILocalVariable(name: "arg", arg: 3, scope: !1812, file: !255, line: 252, type: !6)
!1821 = !DILocalVariable(name: "argsize", arg: 4, scope: !1812, file: !255, line: 252, type: !35)
!1822 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1812, file: !255, line: 253, type: !257)
!1823 = !DILocalVariable(name: "flags", arg: 6, scope: !1812, file: !255, line: 253, type: !33)
!1824 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1812, file: !255, line: 254, type: !1815)
!1825 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1812, file: !255, line: 255, type: !6)
!1826 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1812, file: !255, line: 256, type: !6)
!1827 = !DILocalVariable(name: "unibyte_locale", scope: !1812, file: !255, line: 258, type: !48)
!1828 = !DILocalVariable(name: "len", scope: !1812, file: !255, line: 260, type: !35)
!1829 = !DILocalVariable(name: "orig_buffersize", scope: !1812, file: !255, line: 261, type: !35)
!1830 = !DILocalVariable(name: "quote_string", scope: !1812, file: !255, line: 262, type: !6)
!1831 = !DILocalVariable(name: "quote_string_len", scope: !1812, file: !255, line: 263, type: !35)
!1832 = !DILocalVariable(name: "backslash_escapes", scope: !1812, file: !255, line: 264, type: !48)
!1833 = !DILocalVariable(name: "elide_outer_quotes", scope: !1812, file: !255, line: 265, type: !48)
!1834 = !DILocalVariable(name: "encountered_single_quote", scope: !1812, file: !255, line: 266, type: !48)
!1835 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1812, file: !255, line: 267, type: !48)
!1836 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1812, file: !255, line: 309, type: !48)
!1837 = !DILocalVariable(name: "lq", scope: !1838, file: !255, line: 361, type: !6)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !255, line: 361, column: 11)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !255, line: 360, column: 13)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !255, line: 333, column: 7)
!1841 = distinct !DILexicalBlock(scope: !1812, file: !255, line: 312, column: 5)
!1842 = !DILocalVariable(name: "i", scope: !1843, file: !255, line: 395, type: !35)
!1843 = distinct !DILexicalBlock(scope: !1812, file: !255, line: 395, column: 3)
!1844 = !DILocalVariable(name: "is_right_quote", scope: !1845, file: !255, line: 397, type: !48)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !255, line: 396, column: 5)
!1846 = distinct !DILexicalBlock(scope: !1843, file: !255, line: 395, column: 3)
!1847 = !DILocalVariable(name: "escaping", scope: !1845, file: !255, line: 398, type: !48)
!1848 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1845, file: !255, line: 399, type: !48)
!1849 = !DILocalVariable(name: "c", scope: !1845, file: !255, line: 417, type: !38)
!1850 = !DILocalVariable(name: "m", scope: !1851, file: !255, line: 598, type: !35)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !255, line: 596, column: 11)
!1852 = distinct !DILexicalBlock(scope: !1845, file: !255, line: 419, column: 9)
!1853 = !DILocalVariable(name: "printable", scope: !1851, file: !255, line: 600, type: !48)
!1854 = !DILocalVariable(name: "mbs", scope: !1855, file: !255, line: 609, type: !314)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !255, line: 608, column: 15)
!1856 = distinct !DILexicalBlock(scope: !1851, file: !255, line: 602, column: 17)
!1857 = !DILocalVariable(name: "w", scope: !1858, file: !255, line: 618, type: !229)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !255, line: 617, column: 19)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !255, line: 616, column: 17)
!1860 = distinct !DILexicalBlock(scope: !1855, file: !255, line: 616, column: 17)
!1861 = !DILocalVariable(name: "bytes", scope: !1858, file: !255, line: 619, type: !35)
!1862 = !DILocalVariable(name: "j", scope: !1863, file: !255, line: 648, type: !35)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !255, line: 648, column: 29)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !255, line: 647, column: 27)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !255, line: 645, column: 29)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !255, line: 636, column: 23)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !255, line: 628, column: 30)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !255, line: 623, column: 30)
!1869 = distinct !DILexicalBlock(scope: !1858, file: !255, line: 621, column: 25)
!1870 = !DILocalVariable(name: "ilim", scope: !1871, file: !255, line: 674, type: !35)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !255, line: 671, column: 15)
!1872 = distinct !DILexicalBlock(scope: !1851, file: !255, line: 670, column: 17)
!1873 = !DILabel(scope: !1812, name: "process_input", file: !255, line: 308)
!1874 = !DILabel(scope: !1875, name: "c_and_shell_escape", file: !255, line: 502)
!1875 = distinct !DILexicalBlock(scope: !1852, file: !255, line: 478, column: 9)
!1876 = !DILabel(scope: !1875, name: "c_escape", file: !255, line: 507)
!1877 = !DILabel(scope: !1845, name: "store_escape", file: !255, line: 709)
!1878 = !DILabel(scope: !1845, name: "store_c", file: !255, line: 712)
!1879 = !DILabel(scope: !1812, name: "force_outer_quoting_style", file: !255, line: 753)
!1880 = !DILocation(line: 0, scope: !1812)
!1881 = !DILocation(line: 258, column: 25, scope: !1812)
!1882 = !DILocation(line: 258, column: 36, scope: !1812)
!1883 = !DILocation(line: 267, column: 3, scope: !1812)
!1884 = !DILocation(line: 261, column: 10, scope: !1812)
!1885 = !DILocation(line: 262, column: 15, scope: !1812)
!1886 = !DILocation(line: 263, column: 10, scope: !1812)
!1887 = !DILocation(line: 308, column: 2, scope: !1812)
!1888 = !DILocation(line: 311, column: 3, scope: !1812)
!1889 = !DILocation(line: 318, column: 11, scope: !1841)
!1890 = !DILocation(line: 319, column: 9, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !255, line: 319, column: 9)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !255, line: 319, column: 9)
!1893 = distinct !DILexicalBlock(scope: !1841, file: !255, line: 318, column: 11)
!1894 = !DILocation(line: 319, column: 9, scope: !1892)
!1895 = !DILocation(line: 0, scope: !305, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 357, column: 26, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !255, line: 335, column: 11)
!1898 = distinct !DILexicalBlock(scope: !1840, file: !255, line: 334, column: 13)
!1899 = !DILocation(line: 199, column: 29, scope: !305, inlinedAt: !1896)
!1900 = !DILocation(line: 201, column: 19, scope: !1901, inlinedAt: !1896)
!1901 = distinct !DILexicalBlock(scope: !305, file: !255, line: 201, column: 7)
!1902 = !DILocation(line: 201, column: 7, scope: !305, inlinedAt: !1896)
!1903 = !DILocation(line: 229, column: 3, scope: !305, inlinedAt: !1896)
!1904 = !DILocation(line: 230, column: 3, scope: !305, inlinedAt: !1896)
!1905 = !DILocation(line: 230, column: 13, scope: !305, inlinedAt: !1896)
!1906 = !DILocalVariable(name: "ps", arg: 1, scope: !1907, file: !1659, line: 1135, type: !1910)
!1907 = distinct !DISubprogram(name: "mbszero", scope: !1659, file: !1659, line: 1135, type: !1908, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1911)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!1911 = !{!1906}
!1912 = !DILocation(line: 0, scope: !1907, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 230, column: 18, scope: !305, inlinedAt: !1896)
!1914 = !DILocalVariable(name: "__dest", arg: 1, scope: !1915, file: !781, line: 57, type: !32)
!1915 = distinct !DISubprogram(name: "memset", scope: !781, file: !781, line: 57, type: !1668, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1916)
!1916 = !{!1914, !1917, !1918}
!1917 = !DILocalVariable(name: "__ch", arg: 2, scope: !1915, file: !781, line: 57, type: !33)
!1918 = !DILocalVariable(name: "__len", arg: 3, scope: !1915, file: !781, line: 57, type: !35)
!1919 = !DILocation(line: 0, scope: !1915, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 1137, column: 3, scope: !1907, inlinedAt: !1913)
!1921 = !DILocation(line: 59, column: 10, scope: !1915, inlinedAt: !1920)
!1922 = !DILocation(line: 231, column: 7, scope: !1923, inlinedAt: !1896)
!1923 = distinct !DILexicalBlock(scope: !305, file: !255, line: 231, column: 7)
!1924 = !DILocation(line: 231, column: 40, scope: !1923, inlinedAt: !1896)
!1925 = !DILocation(line: 231, column: 45, scope: !1923, inlinedAt: !1896)
!1926 = !DILocation(line: 235, column: 1, scope: !305, inlinedAt: !1896)
!1927 = !DILocation(line: 0, scope: !305, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 358, column: 27, scope: !1897)
!1929 = !DILocation(line: 199, column: 29, scope: !305, inlinedAt: !1928)
!1930 = !DILocation(line: 201, column: 19, scope: !1901, inlinedAt: !1928)
!1931 = !DILocation(line: 201, column: 7, scope: !305, inlinedAt: !1928)
!1932 = !DILocation(line: 229, column: 3, scope: !305, inlinedAt: !1928)
!1933 = !DILocation(line: 230, column: 3, scope: !305, inlinedAt: !1928)
!1934 = !DILocation(line: 230, column: 13, scope: !305, inlinedAt: !1928)
!1935 = !DILocation(line: 0, scope: !1907, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 230, column: 18, scope: !305, inlinedAt: !1928)
!1937 = !DILocation(line: 0, scope: !1915, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 1137, column: 3, scope: !1907, inlinedAt: !1936)
!1939 = !DILocation(line: 59, column: 10, scope: !1915, inlinedAt: !1938)
!1940 = !DILocation(line: 231, column: 7, scope: !1923, inlinedAt: !1928)
!1941 = !DILocation(line: 231, column: 40, scope: !1923, inlinedAt: !1928)
!1942 = !DILocation(line: 231, column: 45, scope: !1923, inlinedAt: !1928)
!1943 = !DILocation(line: 235, column: 1, scope: !305, inlinedAt: !1928)
!1944 = !DILocation(line: 360, column: 13, scope: !1840)
!1945 = !DILocation(line: 0, scope: !1838)
!1946 = !DILocation(line: 361, column: 45, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1838, file: !255, line: 361, column: 11)
!1948 = !DILocation(line: 361, column: 11, scope: !1838)
!1949 = !DILocation(line: 362, column: 13, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !255, line: 362, column: 13)
!1951 = distinct !DILexicalBlock(scope: !1947, file: !255, line: 362, column: 13)
!1952 = !DILocation(line: 362, column: 13, scope: !1951)
!1953 = !DILocation(line: 361, column: 52, scope: !1947)
!1954 = distinct !{!1954, !1948, !1955, !553}
!1955 = !DILocation(line: 362, column: 13, scope: !1838)
!1956 = !DILocation(line: 260, column: 10, scope: !1812)
!1957 = !DILocation(line: 365, column: 28, scope: !1840)
!1958 = !DILocation(line: 367, column: 7, scope: !1841)
!1959 = !DILocation(line: 370, column: 7, scope: !1841)
!1960 = !DILocation(line: 376, column: 11, scope: !1841)
!1961 = !DILocation(line: 381, column: 11, scope: !1841)
!1962 = !DILocation(line: 382, column: 9, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !255, line: 382, column: 9)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !255, line: 382, column: 9)
!1965 = distinct !DILexicalBlock(scope: !1841, file: !255, line: 381, column: 11)
!1966 = !DILocation(line: 382, column: 9, scope: !1964)
!1967 = !DILocation(line: 389, column: 7, scope: !1841)
!1968 = !DILocation(line: 392, column: 7, scope: !1841)
!1969 = !DILocation(line: 0, scope: !1843)
!1970 = !DILocation(line: 395, column: 8, scope: !1843)
!1971 = !DILocation(line: 395, column: 34, scope: !1846)
!1972 = !DILocation(line: 395, column: 26, scope: !1846)
!1973 = !DILocation(line: 395, column: 48, scope: !1846)
!1974 = !DILocation(line: 395, column: 55, scope: !1846)
!1975 = !DILocation(line: 395, column: 3, scope: !1843)
!1976 = !DILocation(line: 395, column: 67, scope: !1846)
!1977 = !DILocation(line: 0, scope: !1845)
!1978 = !DILocation(line: 402, column: 11, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1845, file: !255, line: 401, column: 11)
!1980 = !DILocation(line: 404, column: 17, scope: !1979)
!1981 = !DILocation(line: 405, column: 39, scope: !1979)
!1982 = !DILocation(line: 409, column: 32, scope: !1979)
!1983 = !DILocation(line: 405, column: 19, scope: !1979)
!1984 = !DILocation(line: 405, column: 15, scope: !1979)
!1985 = !DILocation(line: 410, column: 11, scope: !1979)
!1986 = !DILocation(line: 410, column: 25, scope: !1979)
!1987 = !DILocalVariable(name: "__s1", arg: 1, scope: !1988, file: !537, line: 974, type: !705)
!1988 = distinct !DISubprogram(name: "memeq", scope: !537, file: !537, line: 974, type: !1630, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1989)
!1989 = !{!1987, !1990, !1991}
!1990 = !DILocalVariable(name: "__s2", arg: 2, scope: !1988, file: !537, line: 974, type: !705)
!1991 = !DILocalVariable(name: "__n", arg: 3, scope: !1988, file: !537, line: 974, type: !35)
!1992 = !DILocation(line: 0, scope: !1988, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 410, column: 14, scope: !1979)
!1994 = !DILocation(line: 976, column: 11, scope: !1988, inlinedAt: !1993)
!1995 = !DILocation(line: 976, column: 10, scope: !1988, inlinedAt: !1993)
!1996 = !DILocation(line: 401, column: 11, scope: !1845)
!1997 = !DILocation(line: 417, column: 25, scope: !1845)
!1998 = !DILocation(line: 418, column: 7, scope: !1845)
!1999 = !DILocation(line: 421, column: 15, scope: !1852)
!2000 = !DILocation(line: 423, column: 15, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !255, line: 423, column: 15)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !255, line: 422, column: 13)
!2003 = distinct !DILexicalBlock(scope: !1852, file: !255, line: 421, column: 15)
!2004 = !DILocation(line: 423, column: 15, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !255, line: 423, column: 15)
!2006 = !DILocation(line: 423, column: 15, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !255, line: 423, column: 15)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !255, line: 423, column: 15)
!2009 = distinct !DILexicalBlock(scope: !2005, file: !255, line: 423, column: 15)
!2010 = !DILocation(line: 423, column: 15, scope: !2008)
!2011 = !DILocation(line: 423, column: 15, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !255, line: 423, column: 15)
!2013 = distinct !DILexicalBlock(scope: !2009, file: !255, line: 423, column: 15)
!2014 = !DILocation(line: 423, column: 15, scope: !2013)
!2015 = !DILocation(line: 423, column: 15, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !255, line: 423, column: 15)
!2017 = distinct !DILexicalBlock(scope: !2009, file: !255, line: 423, column: 15)
!2018 = !DILocation(line: 423, column: 15, scope: !2017)
!2019 = !DILocation(line: 423, column: 15, scope: !2009)
!2020 = !DILocation(line: 423, column: 15, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !255, line: 423, column: 15)
!2022 = distinct !DILexicalBlock(scope: !2001, file: !255, line: 423, column: 15)
!2023 = !DILocation(line: 423, column: 15, scope: !2022)
!2024 = !DILocation(line: 431, column: 19, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2002, file: !255, line: 430, column: 19)
!2026 = !DILocation(line: 431, column: 24, scope: !2025)
!2027 = !DILocation(line: 431, column: 28, scope: !2025)
!2028 = !DILocation(line: 431, column: 38, scope: !2025)
!2029 = !DILocation(line: 431, column: 48, scope: !2025)
!2030 = !DILocation(line: 431, column: 59, scope: !2025)
!2031 = !DILocation(line: 433, column: 19, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !255, line: 433, column: 19)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !255, line: 433, column: 19)
!2034 = distinct !DILexicalBlock(scope: !2025, file: !255, line: 432, column: 17)
!2035 = !DILocation(line: 433, column: 19, scope: !2033)
!2036 = !DILocation(line: 434, column: 19, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !255, line: 434, column: 19)
!2038 = distinct !DILexicalBlock(scope: !2034, file: !255, line: 434, column: 19)
!2039 = !DILocation(line: 434, column: 19, scope: !2038)
!2040 = !DILocation(line: 435, column: 17, scope: !2034)
!2041 = !DILocation(line: 442, column: 20, scope: !2003)
!2042 = !DILocation(line: 447, column: 11, scope: !1852)
!2043 = !DILocation(line: 450, column: 19, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1852, file: !255, line: 448, column: 13)
!2045 = !DILocation(line: 456, column: 19, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2044, file: !255, line: 455, column: 19)
!2047 = !DILocation(line: 456, column: 24, scope: !2046)
!2048 = !DILocation(line: 456, column: 28, scope: !2046)
!2049 = !DILocation(line: 456, column: 38, scope: !2046)
!2050 = !DILocation(line: 456, column: 47, scope: !2046)
!2051 = !DILocation(line: 456, column: 41, scope: !2046)
!2052 = !DILocation(line: 456, column: 52, scope: !2046)
!2053 = !DILocation(line: 455, column: 19, scope: !2044)
!2054 = !DILocation(line: 457, column: 25, scope: !2046)
!2055 = !DILocation(line: 457, column: 17, scope: !2046)
!2056 = !DILocation(line: 464, column: 25, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2046, file: !255, line: 458, column: 19)
!2058 = !DILocation(line: 468, column: 21, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !255, line: 468, column: 21)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !255, line: 468, column: 21)
!2061 = !DILocation(line: 468, column: 21, scope: !2060)
!2062 = !DILocation(line: 469, column: 21, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !255, line: 469, column: 21)
!2064 = distinct !DILexicalBlock(scope: !2057, file: !255, line: 469, column: 21)
!2065 = !DILocation(line: 469, column: 21, scope: !2064)
!2066 = !DILocation(line: 470, column: 21, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !255, line: 470, column: 21)
!2068 = distinct !DILexicalBlock(scope: !2057, file: !255, line: 470, column: 21)
!2069 = !DILocation(line: 470, column: 21, scope: !2068)
!2070 = !DILocation(line: 471, column: 21, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !255, line: 471, column: 21)
!2072 = distinct !DILexicalBlock(scope: !2057, file: !255, line: 471, column: 21)
!2073 = !DILocation(line: 471, column: 21, scope: !2072)
!2074 = !DILocation(line: 472, column: 21, scope: !2057)
!2075 = !DILocation(line: 482, column: 33, scope: !1875)
!2076 = !DILocation(line: 483, column: 33, scope: !1875)
!2077 = !DILocation(line: 485, column: 33, scope: !1875)
!2078 = !DILocation(line: 486, column: 33, scope: !1875)
!2079 = !DILocation(line: 487, column: 33, scope: !1875)
!2080 = !DILocation(line: 490, column: 17, scope: !1875)
!2081 = !DILocation(line: 492, column: 21, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !255, line: 491, column: 15)
!2083 = distinct !DILexicalBlock(scope: !1875, file: !255, line: 490, column: 17)
!2084 = !DILocation(line: 499, column: 35, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1875, file: !255, line: 499, column: 17)
!2086 = !DILocation(line: 499, column: 57, scope: !2085)
!2087 = !DILocation(line: 0, scope: !1875)
!2088 = !DILocation(line: 502, column: 11, scope: !1875)
!2089 = !DILocation(line: 504, column: 17, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1875, file: !255, line: 503, column: 17)
!2091 = !DILocation(line: 507, column: 11, scope: !1875)
!2092 = !DILocation(line: 508, column: 17, scope: !1875)
!2093 = !DILocation(line: 517, column: 15, scope: !1852)
!2094 = !DILocation(line: 517, column: 40, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1852, file: !255, line: 517, column: 15)
!2096 = !DILocation(line: 517, column: 47, scope: !2095)
!2097 = !DILocation(line: 517, column: 18, scope: !2095)
!2098 = !DILocation(line: 521, column: 17, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1852, file: !255, line: 521, column: 15)
!2100 = !DILocation(line: 521, column: 15, scope: !1852)
!2101 = !DILocation(line: 525, column: 11, scope: !1852)
!2102 = !DILocation(line: 537, column: 15, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1852, file: !255, line: 536, column: 15)
!2104 = !DILocation(line: 536, column: 15, scope: !1852)
!2105 = !DILocation(line: 544, column: 15, scope: !1852)
!2106 = !DILocation(line: 546, column: 19, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !255, line: 545, column: 13)
!2108 = distinct !DILexicalBlock(scope: !1852, file: !255, line: 544, column: 15)
!2109 = !DILocation(line: 549, column: 19, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2107, file: !255, line: 549, column: 19)
!2111 = !DILocation(line: 549, column: 30, scope: !2110)
!2112 = !DILocation(line: 558, column: 15, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !255, line: 558, column: 15)
!2114 = distinct !DILexicalBlock(scope: !2107, file: !255, line: 558, column: 15)
!2115 = !DILocation(line: 558, column: 15, scope: !2114)
!2116 = !DILocation(line: 559, column: 15, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !255, line: 559, column: 15)
!2118 = distinct !DILexicalBlock(scope: !2107, file: !255, line: 559, column: 15)
!2119 = !DILocation(line: 559, column: 15, scope: !2118)
!2120 = !DILocation(line: 560, column: 15, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !255, line: 560, column: 15)
!2122 = distinct !DILexicalBlock(scope: !2107, file: !255, line: 560, column: 15)
!2123 = !DILocation(line: 560, column: 15, scope: !2122)
!2124 = !DILocation(line: 562, column: 13, scope: !2107)
!2125 = !DILocation(line: 602, column: 17, scope: !1851)
!2126 = !DILocation(line: 0, scope: !1851)
!2127 = !DILocation(line: 605, column: 29, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !1856, file: !255, line: 603, column: 15)
!2129 = !DILocation(line: 605, column: 41, scope: !2128)
!2130 = !DILocation(line: 670, column: 23, scope: !1872)
!2131 = !DILocation(line: 609, column: 17, scope: !1855)
!2132 = !DILocation(line: 609, column: 27, scope: !1855)
!2133 = !DILocation(line: 0, scope: !1907, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 609, column: 32, scope: !1855)
!2135 = !DILocation(line: 0, scope: !1915, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 1137, column: 3, scope: !1907, inlinedAt: !2134)
!2137 = !DILocation(line: 59, column: 10, scope: !1915, inlinedAt: !2136)
!2138 = !DILocation(line: 613, column: 29, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1855, file: !255, line: 613, column: 21)
!2140 = !DILocation(line: 613, column: 21, scope: !1855)
!2141 = !DILocation(line: 614, column: 29, scope: !2139)
!2142 = !DILocation(line: 614, column: 19, scope: !2139)
!2143 = !DILocation(line: 618, column: 21, scope: !1858)
!2144 = !DILocation(line: 620, column: 54, scope: !1858)
!2145 = !DILocation(line: 0, scope: !1858)
!2146 = !DILocation(line: 619, column: 36, scope: !1858)
!2147 = !DILocation(line: 621, column: 25, scope: !1858)
!2148 = !DILocation(line: 631, column: 38, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !1867, file: !255, line: 629, column: 23)
!2150 = !DILocation(line: 631, column: 48, scope: !2149)
!2151 = !DILocation(line: 665, column: 19, scope: !1859)
!2152 = !DILocation(line: 666, column: 15, scope: !1856)
!2153 = !DILocation(line: 626, column: 25, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !1868, file: !255, line: 624, column: 23)
!2155 = !DILocation(line: 631, column: 51, scope: !2149)
!2156 = !DILocation(line: 631, column: 25, scope: !2149)
!2157 = !DILocation(line: 632, column: 28, scope: !2149)
!2158 = !DILocation(line: 631, column: 34, scope: !2149)
!2159 = distinct !{!2159, !2156, !2157, !553}
!2160 = !DILocation(line: 646, column: 29, scope: !1865)
!2161 = !DILocation(line: 0, scope: !1863)
!2162 = !DILocation(line: 649, column: 49, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !1863, file: !255, line: 648, column: 29)
!2164 = !DILocation(line: 649, column: 39, scope: !2163)
!2165 = !DILocation(line: 649, column: 31, scope: !2163)
!2166 = !DILocation(line: 648, column: 60, scope: !2163)
!2167 = !DILocation(line: 648, column: 50, scope: !2163)
!2168 = !DILocation(line: 648, column: 29, scope: !1863)
!2169 = distinct !{!2169, !2168, !2170, !553}
!2170 = !DILocation(line: 654, column: 33, scope: !1863)
!2171 = !DILocation(line: 657, column: 43, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !1866, file: !255, line: 657, column: 29)
!2173 = !DILocalVariable(name: "wc", arg: 1, scope: !2174, file: !2175, line: 865, type: !2178)
!2174 = distinct !DISubprogram(name: "c32isprint", scope: !2175, file: !2175, line: 865, type: !2176, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2180)
!2175 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!33, !2178}
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2179, line: 20, baseType: !14)
!2179 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2180 = !{!2173}
!2181 = !DILocation(line: 0, scope: !2174, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 657, column: 31, scope: !2172)
!2183 = !DILocation(line: 871, column: 10, scope: !2174, inlinedAt: !2182)
!2184 = !DILocation(line: 657, column: 31, scope: !2172)
!2185 = !DILocation(line: 664, column: 23, scope: !1858)
!2186 = !DILocation(line: 753, column: 2, scope: !1812)
!2187 = !DILocation(line: 756, column: 51, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !1812, file: !255, line: 756, column: 7)
!2189 = !DILocation(line: 670, column: 19, scope: !1872)
!2190 = !DILocation(line: 670, column: 45, scope: !1872)
!2191 = !DILocation(line: 674, column: 33, scope: !1871)
!2192 = !DILocation(line: 0, scope: !1871)
!2193 = !DILocation(line: 676, column: 17, scope: !1871)
!2194 = !DILocation(line: 398, column: 12, scope: !1845)
!2195 = !DILocation(line: 678, column: 43, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !255, line: 678, column: 25)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !255, line: 677, column: 19)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !255, line: 676, column: 17)
!2199 = distinct !DILexicalBlock(scope: !1871, file: !255, line: 676, column: 17)
!2200 = !DILocation(line: 680, column: 25, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !255, line: 680, column: 25)
!2202 = distinct !DILexicalBlock(scope: !2196, file: !255, line: 679, column: 23)
!2203 = !DILocation(line: 680, column: 25, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !255, line: 680, column: 25)
!2205 = !DILocation(line: 680, column: 25, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !255, line: 680, column: 25)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !255, line: 680, column: 25)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !255, line: 680, column: 25)
!2209 = !DILocation(line: 680, column: 25, scope: !2207)
!2210 = !DILocation(line: 680, column: 25, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !255, line: 680, column: 25)
!2212 = distinct !DILexicalBlock(scope: !2208, file: !255, line: 680, column: 25)
!2213 = !DILocation(line: 680, column: 25, scope: !2212)
!2214 = !DILocation(line: 680, column: 25, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !255, line: 680, column: 25)
!2216 = distinct !DILexicalBlock(scope: !2208, file: !255, line: 680, column: 25)
!2217 = !DILocation(line: 680, column: 25, scope: !2216)
!2218 = !DILocation(line: 680, column: 25, scope: !2208)
!2219 = !DILocation(line: 680, column: 25, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !255, line: 680, column: 25)
!2221 = distinct !DILexicalBlock(scope: !2201, file: !255, line: 680, column: 25)
!2222 = !DILocation(line: 680, column: 25, scope: !2221)
!2223 = !DILocation(line: 681, column: 25, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !255, line: 681, column: 25)
!2225 = distinct !DILexicalBlock(scope: !2202, file: !255, line: 681, column: 25)
!2226 = !DILocation(line: 681, column: 25, scope: !2225)
!2227 = !DILocation(line: 682, column: 25, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !255, line: 682, column: 25)
!2229 = distinct !DILexicalBlock(scope: !2202, file: !255, line: 682, column: 25)
!2230 = !DILocation(line: 682, column: 25, scope: !2229)
!2231 = !DILocation(line: 683, column: 38, scope: !2202)
!2232 = !DILocation(line: 683, column: 33, scope: !2202)
!2233 = !DILocation(line: 684, column: 23, scope: !2202)
!2234 = !DILocation(line: 685, column: 30, scope: !2196)
!2235 = !DILocation(line: 687, column: 25, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !255, line: 687, column: 25)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !255, line: 687, column: 25)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !255, line: 686, column: 23)
!2239 = distinct !DILexicalBlock(scope: !2196, file: !255, line: 685, column: 30)
!2240 = !DILocation(line: 687, column: 25, scope: !2237)
!2241 = !DILocation(line: 689, column: 23, scope: !2238)
!2242 = !DILocation(line: 690, column: 35, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2197, file: !255, line: 690, column: 25)
!2244 = !DILocation(line: 690, column: 30, scope: !2243)
!2245 = !DILocation(line: 690, column: 25, scope: !2197)
!2246 = !DILocation(line: 692, column: 21, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !255, line: 692, column: 21)
!2248 = distinct !DILexicalBlock(scope: !2197, file: !255, line: 692, column: 21)
!2249 = !DILocation(line: 692, column: 21, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !255, line: 692, column: 21)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !255, line: 692, column: 21)
!2252 = distinct !DILexicalBlock(scope: !2247, file: !255, line: 692, column: 21)
!2253 = !DILocation(line: 692, column: 21, scope: !2251)
!2254 = !DILocation(line: 692, column: 21, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !255, line: 692, column: 21)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !255, line: 692, column: 21)
!2257 = !DILocation(line: 692, column: 21, scope: !2256)
!2258 = !DILocation(line: 692, column: 21, scope: !2252)
!2259 = !DILocation(line: 0, scope: !2197)
!2260 = !DILocation(line: 693, column: 21, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !255, line: 693, column: 21)
!2262 = distinct !DILexicalBlock(scope: !2197, file: !255, line: 693, column: 21)
!2263 = !DILocation(line: 693, column: 21, scope: !2262)
!2264 = !DILocation(line: 694, column: 25, scope: !2197)
!2265 = !DILocation(line: 676, column: 17, scope: !2198)
!2266 = distinct !{!2266, !2267, !2268}
!2267 = !DILocation(line: 676, column: 17, scope: !2199)
!2268 = !DILocation(line: 695, column: 19, scope: !2199)
!2269 = !DILocation(line: 409, column: 30, scope: !1979)
!2270 = !DILocation(line: 702, column: 34, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !1845, file: !255, line: 702, column: 11)
!2272 = !DILocation(line: 704, column: 14, scope: !2271)
!2273 = !DILocation(line: 705, column: 14, scope: !2271)
!2274 = !DILocation(line: 705, column: 35, scope: !2271)
!2275 = !DILocation(line: 705, column: 17, scope: !2271)
!2276 = !DILocation(line: 705, column: 47, scope: !2271)
!2277 = !DILocation(line: 705, column: 65, scope: !2271)
!2278 = !DILocation(line: 706, column: 11, scope: !2271)
!2279 = !DILocation(line: 702, column: 11, scope: !1845)
!2280 = !DILocation(line: 395, column: 15, scope: !1843)
!2281 = !DILocation(line: 709, column: 5, scope: !1845)
!2282 = !DILocation(line: 710, column: 7, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !1845, file: !255, line: 710, column: 7)
!2284 = !DILocation(line: 710, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2283, file: !255, line: 710, column: 7)
!2286 = !DILocation(line: 710, column: 7, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !255, line: 710, column: 7)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !255, line: 710, column: 7)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !255, line: 710, column: 7)
!2290 = !DILocation(line: 710, column: 7, scope: !2288)
!2291 = !DILocation(line: 710, column: 7, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !255, line: 710, column: 7)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !255, line: 710, column: 7)
!2294 = !DILocation(line: 710, column: 7, scope: !2293)
!2295 = !DILocation(line: 710, column: 7, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !255, line: 710, column: 7)
!2297 = distinct !DILexicalBlock(scope: !2289, file: !255, line: 710, column: 7)
!2298 = !DILocation(line: 710, column: 7, scope: !2297)
!2299 = !DILocation(line: 710, column: 7, scope: !2289)
!2300 = !DILocation(line: 710, column: 7, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !255, line: 710, column: 7)
!2302 = distinct !DILexicalBlock(scope: !2283, file: !255, line: 710, column: 7)
!2303 = !DILocation(line: 710, column: 7, scope: !2302)
!2304 = !DILocation(line: 712, column: 5, scope: !1845)
!2305 = !DILocation(line: 713, column: 7, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !255, line: 713, column: 7)
!2307 = distinct !DILexicalBlock(scope: !1845, file: !255, line: 713, column: 7)
!2308 = !DILocation(line: 417, column: 21, scope: !1845)
!2309 = !DILocation(line: 713, column: 7, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !255, line: 713, column: 7)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !255, line: 713, column: 7)
!2312 = distinct !DILexicalBlock(scope: !2306, file: !255, line: 713, column: 7)
!2313 = !DILocation(line: 713, column: 7, scope: !2311)
!2314 = !DILocation(line: 713, column: 7, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !255, line: 713, column: 7)
!2316 = distinct !DILexicalBlock(scope: !2312, file: !255, line: 713, column: 7)
!2317 = !DILocation(line: 713, column: 7, scope: !2316)
!2318 = !DILocation(line: 713, column: 7, scope: !2312)
!2319 = !DILocation(line: 714, column: 7, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !255, line: 714, column: 7)
!2321 = distinct !DILexicalBlock(scope: !1845, file: !255, line: 714, column: 7)
!2322 = !DILocation(line: 714, column: 7, scope: !2321)
!2323 = !DILocation(line: 716, column: 11, scope: !1845)
!2324 = !DILocation(line: 718, column: 5, scope: !1846)
!2325 = !DILocation(line: 395, column: 82, scope: !1846)
!2326 = !DILocation(line: 395, column: 3, scope: !1846)
!2327 = distinct !{!2327, !1975, !2328, !553}
!2328 = !DILocation(line: 718, column: 5, scope: !1843)
!2329 = !DILocation(line: 720, column: 11, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !1812, file: !255, line: 720, column: 7)
!2331 = !DILocation(line: 720, column: 16, scope: !2330)
!2332 = !DILocation(line: 728, column: 51, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !1812, file: !255, line: 728, column: 7)
!2334 = !DILocation(line: 731, column: 11, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2333, file: !255, line: 730, column: 5)
!2336 = !DILocation(line: 732, column: 16, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2335, file: !255, line: 731, column: 11)
!2338 = !DILocation(line: 732, column: 9, scope: !2337)
!2339 = !DILocation(line: 736, column: 18, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2337, file: !255, line: 736, column: 16)
!2341 = !DILocation(line: 736, column: 29, scope: !2340)
!2342 = !DILocation(line: 745, column: 7, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !1812, file: !255, line: 745, column: 7)
!2344 = !DILocation(line: 745, column: 20, scope: !2343)
!2345 = !DILocation(line: 746, column: 12, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !255, line: 746, column: 5)
!2347 = distinct !DILexicalBlock(scope: !2343, file: !255, line: 746, column: 5)
!2348 = !DILocation(line: 746, column: 5, scope: !2347)
!2349 = !DILocation(line: 747, column: 7, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !255, line: 747, column: 7)
!2351 = distinct !DILexicalBlock(scope: !2346, file: !255, line: 747, column: 7)
!2352 = !DILocation(line: 747, column: 7, scope: !2351)
!2353 = !DILocation(line: 746, column: 39, scope: !2346)
!2354 = distinct !{!2354, !2348, !2355, !553}
!2355 = !DILocation(line: 747, column: 7, scope: !2347)
!2356 = !DILocation(line: 749, column: 11, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !1812, file: !255, line: 749, column: 7)
!2358 = !DILocation(line: 749, column: 7, scope: !1812)
!2359 = !DILocation(line: 750, column: 5, scope: !2357)
!2360 = !DILocation(line: 750, column: 17, scope: !2357)
!2361 = !DILocation(line: 756, column: 21, scope: !2188)
!2362 = !DILocation(line: 760, column: 42, scope: !1812)
!2363 = !DILocation(line: 758, column: 10, scope: !1812)
!2364 = !DILocation(line: 758, column: 3, scope: !1812)
!2365 = !DILocation(line: 762, column: 1, scope: !1812)
!2366 = !DISubprogram(name: "iswprint", scope: !2367, file: !2367, line: 120, type: !2176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!2367 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2368 = distinct !DISubprogram(name: "quotearg_alloc", scope: !255, file: !255, line: 788, type: !2369, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!39, !6, !35, !1704}
!2371 = !{!2372, !2373, !2374}
!2372 = !DILocalVariable(name: "arg", arg: 1, scope: !2368, file: !255, line: 788, type: !6)
!2373 = !DILocalVariable(name: "argsize", arg: 2, scope: !2368, file: !255, line: 788, type: !35)
!2374 = !DILocalVariable(name: "o", arg: 3, scope: !2368, file: !255, line: 789, type: !1704)
!2375 = !DILocation(line: 0, scope: !2368)
!2376 = !DILocalVariable(name: "arg", arg: 1, scope: !2377, file: !255, line: 801, type: !6)
!2377 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !255, file: !255, line: 801, type: !2378, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2380)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!39, !6, !35, !428, !1704}
!2380 = !{!2376, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388}
!2381 = !DILocalVariable(name: "argsize", arg: 2, scope: !2377, file: !255, line: 801, type: !35)
!2382 = !DILocalVariable(name: "size", arg: 3, scope: !2377, file: !255, line: 801, type: !428)
!2383 = !DILocalVariable(name: "o", arg: 4, scope: !2377, file: !255, line: 802, type: !1704)
!2384 = !DILocalVariable(name: "p", scope: !2377, file: !255, line: 804, type: !1704)
!2385 = !DILocalVariable(name: "saved_errno", scope: !2377, file: !255, line: 805, type: !33)
!2386 = !DILocalVariable(name: "flags", scope: !2377, file: !255, line: 807, type: !33)
!2387 = !DILocalVariable(name: "bufsize", scope: !2377, file: !255, line: 808, type: !35)
!2388 = !DILocalVariable(name: "buf", scope: !2377, file: !255, line: 812, type: !39)
!2389 = !DILocation(line: 0, scope: !2377, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 791, column: 10, scope: !2368)
!2391 = !DILocation(line: 804, column: 37, scope: !2377, inlinedAt: !2390)
!2392 = !DILocation(line: 805, column: 21, scope: !2377, inlinedAt: !2390)
!2393 = !DILocation(line: 807, column: 18, scope: !2377, inlinedAt: !2390)
!2394 = !DILocation(line: 807, column: 24, scope: !2377, inlinedAt: !2390)
!2395 = !DILocation(line: 808, column: 72, scope: !2377, inlinedAt: !2390)
!2396 = !DILocation(line: 809, column: 53, scope: !2377, inlinedAt: !2390)
!2397 = !DILocation(line: 810, column: 49, scope: !2377, inlinedAt: !2390)
!2398 = !DILocation(line: 811, column: 49, scope: !2377, inlinedAt: !2390)
!2399 = !DILocation(line: 808, column: 20, scope: !2377, inlinedAt: !2390)
!2400 = !DILocation(line: 811, column: 62, scope: !2377, inlinedAt: !2390)
!2401 = !DILocation(line: 812, column: 15, scope: !2377, inlinedAt: !2390)
!2402 = !DILocation(line: 813, column: 60, scope: !2377, inlinedAt: !2390)
!2403 = !DILocation(line: 815, column: 32, scope: !2377, inlinedAt: !2390)
!2404 = !DILocation(line: 815, column: 47, scope: !2377, inlinedAt: !2390)
!2405 = !DILocation(line: 813, column: 3, scope: !2377, inlinedAt: !2390)
!2406 = !DILocation(line: 816, column: 9, scope: !2377, inlinedAt: !2390)
!2407 = !DILocation(line: 791, column: 3, scope: !2368)
!2408 = !DILocation(line: 0, scope: !2377)
!2409 = !DILocation(line: 804, column: 37, scope: !2377)
!2410 = !DILocation(line: 805, column: 21, scope: !2377)
!2411 = !DILocation(line: 807, column: 18, scope: !2377)
!2412 = !DILocation(line: 807, column: 27, scope: !2377)
!2413 = !DILocation(line: 807, column: 24, scope: !2377)
!2414 = !DILocation(line: 808, column: 72, scope: !2377)
!2415 = !DILocation(line: 809, column: 53, scope: !2377)
!2416 = !DILocation(line: 810, column: 49, scope: !2377)
!2417 = !DILocation(line: 811, column: 49, scope: !2377)
!2418 = !DILocation(line: 808, column: 20, scope: !2377)
!2419 = !DILocation(line: 811, column: 62, scope: !2377)
!2420 = !DILocation(line: 812, column: 15, scope: !2377)
!2421 = !DILocation(line: 813, column: 60, scope: !2377)
!2422 = !DILocation(line: 815, column: 32, scope: !2377)
!2423 = !DILocation(line: 815, column: 47, scope: !2377)
!2424 = !DILocation(line: 813, column: 3, scope: !2377)
!2425 = !DILocation(line: 816, column: 9, scope: !2377)
!2426 = !DILocation(line: 817, column: 7, scope: !2377)
!2427 = !DILocation(line: 818, column: 11, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2377, file: !255, line: 817, column: 7)
!2429 = !{!931, !931, i64 0}
!2430 = !DILocation(line: 818, column: 5, scope: !2428)
!2431 = !DILocation(line: 819, column: 3, scope: !2377)
!2432 = distinct !DISubprogram(name: "quotearg_free", scope: !255, file: !255, line: 837, type: !173, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2433)
!2433 = !{!2434, !2435}
!2434 = !DILocalVariable(name: "sv", scope: !2432, file: !255, line: 839, type: !328)
!2435 = !DILocalVariable(name: "i", scope: !2436, file: !255, line: 840, type: !33)
!2436 = distinct !DILexicalBlock(scope: !2432, file: !255, line: 840, column: 3)
!2437 = !DILocation(line: 839, column: 24, scope: !2432)
!2438 = !DILocation(line: 0, scope: !2432)
!2439 = !DILocation(line: 0, scope: !2436)
!2440 = !DILocation(line: 840, column: 21, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2436, file: !255, line: 840, column: 3)
!2442 = !DILocation(line: 840, column: 3, scope: !2436)
!2443 = !DILocation(line: 842, column: 13, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2432, file: !255, line: 842, column: 7)
!2445 = !{!2446, !502, i64 8}
!2446 = !{!"slotvec", !931, i64 0, !502, i64 8}
!2447 = !DILocation(line: 842, column: 17, scope: !2444)
!2448 = !DILocation(line: 842, column: 7, scope: !2432)
!2449 = !DILocation(line: 841, column: 17, scope: !2441)
!2450 = !DILocation(line: 841, column: 5, scope: !2441)
!2451 = !DILocation(line: 840, column: 32, scope: !2441)
!2452 = distinct !{!2452, !2442, !2453, !553}
!2453 = !DILocation(line: 841, column: 20, scope: !2436)
!2454 = !DILocation(line: 844, column: 7, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2444, file: !255, line: 843, column: 5)
!2456 = !DILocation(line: 845, column: 21, scope: !2455)
!2457 = !{!2446, !931, i64 0}
!2458 = !DILocation(line: 846, column: 20, scope: !2455)
!2459 = !DILocation(line: 847, column: 5, scope: !2455)
!2460 = !DILocation(line: 848, column: 10, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2432, file: !255, line: 848, column: 7)
!2462 = !DILocation(line: 848, column: 7, scope: !2432)
!2463 = !DILocation(line: 850, column: 13, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2461, file: !255, line: 849, column: 5)
!2465 = !DILocation(line: 850, column: 7, scope: !2464)
!2466 = !DILocation(line: 851, column: 15, scope: !2464)
!2467 = !DILocation(line: 852, column: 5, scope: !2464)
!2468 = !DILocation(line: 853, column: 10, scope: !2432)
!2469 = !DILocation(line: 854, column: 1, scope: !2432)
!2470 = distinct !DISubprogram(name: "quotearg_n", scope: !255, file: !255, line: 919, type: !695, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2471)
!2471 = !{!2472, !2473}
!2472 = !DILocalVariable(name: "n", arg: 1, scope: !2470, file: !255, line: 919, type: !33)
!2473 = !DILocalVariable(name: "arg", arg: 2, scope: !2470, file: !255, line: 919, type: !6)
!2474 = !DILocation(line: 0, scope: !2470)
!2475 = !DILocation(line: 921, column: 10, scope: !2470)
!2476 = !DILocation(line: 921, column: 3, scope: !2470)
!2477 = distinct !DISubprogram(name: "quotearg_n_options", scope: !255, file: !255, line: 866, type: !2478, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!39, !33, !6, !35, !1704}
!2480 = !{!2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2491, !2492, !2494, !2495, !2496}
!2481 = !DILocalVariable(name: "n", arg: 1, scope: !2477, file: !255, line: 866, type: !33)
!2482 = !DILocalVariable(name: "arg", arg: 2, scope: !2477, file: !255, line: 866, type: !6)
!2483 = !DILocalVariable(name: "argsize", arg: 3, scope: !2477, file: !255, line: 866, type: !35)
!2484 = !DILocalVariable(name: "options", arg: 4, scope: !2477, file: !255, line: 867, type: !1704)
!2485 = !DILocalVariable(name: "saved_errno", scope: !2477, file: !255, line: 869, type: !33)
!2486 = !DILocalVariable(name: "sv", scope: !2477, file: !255, line: 871, type: !328)
!2487 = !DILocalVariable(name: "nslots_max", scope: !2477, file: !255, line: 873, type: !33)
!2488 = !DILocalVariable(name: "preallocated", scope: !2489, file: !255, line: 879, type: !48)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !255, line: 878, column: 5)
!2490 = distinct !DILexicalBlock(scope: !2477, file: !255, line: 877, column: 7)
!2491 = !DILocalVariable(name: "new_nslots", scope: !2489, file: !255, line: 880, type: !441)
!2492 = !DILocalVariable(name: "size", scope: !2493, file: !255, line: 891, type: !35)
!2493 = distinct !DILexicalBlock(scope: !2477, file: !255, line: 890, column: 3)
!2494 = !DILocalVariable(name: "val", scope: !2493, file: !255, line: 892, type: !39)
!2495 = !DILocalVariable(name: "flags", scope: !2493, file: !255, line: 894, type: !33)
!2496 = !DILocalVariable(name: "qsize", scope: !2493, file: !255, line: 895, type: !35)
!2497 = !DILocation(line: 0, scope: !2477)
!2498 = !DILocation(line: 869, column: 21, scope: !2477)
!2499 = !DILocation(line: 871, column: 24, scope: !2477)
!2500 = !DILocation(line: 874, column: 17, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2477, file: !255, line: 874, column: 7)
!2502 = !DILocation(line: 875, column: 5, scope: !2501)
!2503 = !DILocation(line: 877, column: 7, scope: !2490)
!2504 = !DILocation(line: 877, column: 14, scope: !2490)
!2505 = !DILocation(line: 877, column: 7, scope: !2477)
!2506 = !DILocation(line: 879, column: 31, scope: !2489)
!2507 = !DILocation(line: 0, scope: !2489)
!2508 = !DILocation(line: 880, column: 7, scope: !2489)
!2509 = !DILocation(line: 880, column: 26, scope: !2489)
!2510 = !DILocation(line: 880, column: 13, scope: !2489)
!2511 = !DILocation(line: 882, column: 31, scope: !2489)
!2512 = !DILocation(line: 883, column: 33, scope: !2489)
!2513 = !DILocation(line: 883, column: 42, scope: !2489)
!2514 = !DILocation(line: 883, column: 31, scope: !2489)
!2515 = !DILocation(line: 882, column: 22, scope: !2489)
!2516 = !DILocation(line: 882, column: 15, scope: !2489)
!2517 = !DILocation(line: 884, column: 11, scope: !2489)
!2518 = !DILocation(line: 885, column: 15, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2489, file: !255, line: 884, column: 11)
!2520 = !{i64 0, i64 8, !2429, i64 8, i64 8, !501}
!2521 = !DILocation(line: 885, column: 9, scope: !2519)
!2522 = !DILocation(line: 886, column: 20, scope: !2489)
!2523 = !DILocation(line: 886, column: 18, scope: !2489)
!2524 = !DILocation(line: 886, column: 15, scope: !2489)
!2525 = !DILocation(line: 886, column: 32, scope: !2489)
!2526 = !DILocation(line: 886, column: 43, scope: !2489)
!2527 = !DILocation(line: 886, column: 53, scope: !2489)
!2528 = !DILocation(line: 0, scope: !1915, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 886, column: 7, scope: !2489)
!2530 = !DILocation(line: 59, column: 10, scope: !1915, inlinedAt: !2529)
!2531 = !DILocation(line: 887, column: 16, scope: !2489)
!2532 = !DILocation(line: 887, column: 14, scope: !2489)
!2533 = !DILocation(line: 888, column: 5, scope: !2490)
!2534 = !DILocation(line: 888, column: 5, scope: !2489)
!2535 = !DILocation(line: 891, column: 19, scope: !2493)
!2536 = !DILocation(line: 891, column: 25, scope: !2493)
!2537 = !DILocation(line: 0, scope: !2493)
!2538 = !DILocation(line: 892, column: 23, scope: !2493)
!2539 = !DILocation(line: 894, column: 26, scope: !2493)
!2540 = !DILocation(line: 894, column: 32, scope: !2493)
!2541 = !DILocation(line: 896, column: 55, scope: !2493)
!2542 = !DILocation(line: 897, column: 46, scope: !2493)
!2543 = !DILocation(line: 898, column: 55, scope: !2493)
!2544 = !DILocation(line: 899, column: 55, scope: !2493)
!2545 = !DILocation(line: 895, column: 20, scope: !2493)
!2546 = !DILocation(line: 901, column: 14, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2493, file: !255, line: 901, column: 9)
!2548 = !DILocation(line: 901, column: 9, scope: !2493)
!2549 = !DILocation(line: 903, column: 35, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2547, file: !255, line: 902, column: 7)
!2551 = !DILocation(line: 903, column: 20, scope: !2550)
!2552 = !DILocation(line: 904, column: 17, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2550, file: !255, line: 904, column: 13)
!2554 = !DILocation(line: 904, column: 13, scope: !2550)
!2555 = !DILocation(line: 905, column: 11, scope: !2553)
!2556 = !DILocation(line: 906, column: 27, scope: !2550)
!2557 = !DILocation(line: 906, column: 19, scope: !2550)
!2558 = !DILocation(line: 907, column: 69, scope: !2550)
!2559 = !DILocation(line: 909, column: 44, scope: !2550)
!2560 = !DILocation(line: 910, column: 44, scope: !2550)
!2561 = !DILocation(line: 907, column: 9, scope: !2550)
!2562 = !DILocation(line: 911, column: 7, scope: !2550)
!2563 = !DILocation(line: 913, column: 11, scope: !2493)
!2564 = !DILocation(line: 914, column: 5, scope: !2493)
!2565 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !255, file: !255, line: 925, type: !2566, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2568)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!39, !33, !6, !35}
!2568 = !{!2569, !2570, !2571}
!2569 = !DILocalVariable(name: "n", arg: 1, scope: !2565, file: !255, line: 925, type: !33)
!2570 = !DILocalVariable(name: "arg", arg: 2, scope: !2565, file: !255, line: 925, type: !6)
!2571 = !DILocalVariable(name: "argsize", arg: 3, scope: !2565, file: !255, line: 925, type: !35)
!2572 = !DILocation(line: 0, scope: !2565)
!2573 = !DILocation(line: 927, column: 10, scope: !2565)
!2574 = !DILocation(line: 927, column: 3, scope: !2565)
!2575 = distinct !DISubprogram(name: "quotearg", scope: !255, file: !255, line: 931, type: !699, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2576)
!2576 = !{!2577}
!2577 = !DILocalVariable(name: "arg", arg: 1, scope: !2575, file: !255, line: 931, type: !6)
!2578 = !DILocation(line: 0, scope: !2575)
!2579 = !DILocation(line: 0, scope: !2470, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 933, column: 10, scope: !2575)
!2581 = !DILocation(line: 921, column: 10, scope: !2470, inlinedAt: !2580)
!2582 = !DILocation(line: 933, column: 3, scope: !2575)
!2583 = distinct !DISubprogram(name: "quotearg_mem", scope: !255, file: !255, line: 937, type: !2584, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!39, !6, !35}
!2586 = !{!2587, !2588}
!2587 = !DILocalVariable(name: "arg", arg: 1, scope: !2583, file: !255, line: 937, type: !6)
!2588 = !DILocalVariable(name: "argsize", arg: 2, scope: !2583, file: !255, line: 937, type: !35)
!2589 = !DILocation(line: 0, scope: !2583)
!2590 = !DILocation(line: 0, scope: !2565, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 939, column: 10, scope: !2583)
!2592 = !DILocation(line: 927, column: 10, scope: !2565, inlinedAt: !2591)
!2593 = !DILocation(line: 939, column: 3, scope: !2583)
!2594 = distinct !DISubprogram(name: "quotearg_n_style", scope: !255, file: !255, line: 943, type: !2595, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!39, !33, !257, !6}
!2597 = !{!2598, !2599, !2600, !2601}
!2598 = !DILocalVariable(name: "n", arg: 1, scope: !2594, file: !255, line: 943, type: !33)
!2599 = !DILocalVariable(name: "s", arg: 2, scope: !2594, file: !255, line: 943, type: !257)
!2600 = !DILocalVariable(name: "arg", arg: 3, scope: !2594, file: !255, line: 943, type: !6)
!2601 = !DILocalVariable(name: "o", scope: !2594, file: !255, line: 945, type: !1705)
!2602 = !DILocation(line: 0, scope: !2594)
!2603 = !DILocation(line: 945, column: 3, scope: !2594)
!2604 = !DILocation(line: 945, column: 32, scope: !2594)
!2605 = !{!2606}
!2606 = distinct !{!2606, !2607, !"quoting_options_from_style: argument 0"}
!2607 = distinct !{!2607, !"quoting_options_from_style"}
!2608 = !DILocation(line: 945, column: 36, scope: !2594)
!2609 = !DILocalVariable(name: "style", arg: 1, scope: !2610, file: !255, line: 183, type: !257)
!2610 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !255, file: !255, line: 183, type: !2611, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!286, !257}
!2613 = !{!2609, !2614}
!2614 = !DILocalVariable(name: "o", scope: !2610, file: !255, line: 185, type: !286)
!2615 = !DILocation(line: 0, scope: !2610, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 945, column: 36, scope: !2594)
!2617 = !DILocation(line: 185, column: 26, scope: !2610, inlinedAt: !2616)
!2618 = !DILocation(line: 186, column: 13, scope: !2619, inlinedAt: !2616)
!2619 = distinct !DILexicalBlock(scope: !2610, file: !255, line: 186, column: 7)
!2620 = !DILocation(line: 186, column: 7, scope: !2610, inlinedAt: !2616)
!2621 = !DILocation(line: 187, column: 5, scope: !2619, inlinedAt: !2616)
!2622 = !DILocation(line: 188, column: 5, scope: !2610, inlinedAt: !2616)
!2623 = !DILocation(line: 188, column: 11, scope: !2610, inlinedAt: !2616)
!2624 = !DILocation(line: 946, column: 10, scope: !2594)
!2625 = !DILocation(line: 947, column: 1, scope: !2594)
!2626 = !DILocation(line: 946, column: 3, scope: !2594)
!2627 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !255, file: !255, line: 950, type: !2628, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!39, !33, !257, !6, !35}
!2630 = !{!2631, !2632, !2633, !2634, !2635}
!2631 = !DILocalVariable(name: "n", arg: 1, scope: !2627, file: !255, line: 950, type: !33)
!2632 = !DILocalVariable(name: "s", arg: 2, scope: !2627, file: !255, line: 950, type: !257)
!2633 = !DILocalVariable(name: "arg", arg: 3, scope: !2627, file: !255, line: 951, type: !6)
!2634 = !DILocalVariable(name: "argsize", arg: 4, scope: !2627, file: !255, line: 951, type: !35)
!2635 = !DILocalVariable(name: "o", scope: !2627, file: !255, line: 953, type: !1705)
!2636 = !DILocation(line: 0, scope: !2627)
!2637 = !DILocation(line: 953, column: 3, scope: !2627)
!2638 = !DILocation(line: 953, column: 32, scope: !2627)
!2639 = !{!2640}
!2640 = distinct !{!2640, !2641, !"quoting_options_from_style: argument 0"}
!2641 = distinct !{!2641, !"quoting_options_from_style"}
!2642 = !DILocation(line: 953, column: 36, scope: !2627)
!2643 = !DILocation(line: 0, scope: !2610, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 953, column: 36, scope: !2627)
!2645 = !DILocation(line: 185, column: 26, scope: !2610, inlinedAt: !2644)
!2646 = !DILocation(line: 186, column: 13, scope: !2619, inlinedAt: !2644)
!2647 = !DILocation(line: 186, column: 7, scope: !2610, inlinedAt: !2644)
!2648 = !DILocation(line: 187, column: 5, scope: !2619, inlinedAt: !2644)
!2649 = !DILocation(line: 188, column: 5, scope: !2610, inlinedAt: !2644)
!2650 = !DILocation(line: 188, column: 11, scope: !2610, inlinedAt: !2644)
!2651 = !DILocation(line: 954, column: 10, scope: !2627)
!2652 = !DILocation(line: 955, column: 1, scope: !2627)
!2653 = !DILocation(line: 954, column: 3, scope: !2627)
!2654 = distinct !DISubprogram(name: "quotearg_style", scope: !255, file: !255, line: 958, type: !2655, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!39, !257, !6}
!2657 = !{!2658, !2659}
!2658 = !DILocalVariable(name: "s", arg: 1, scope: !2654, file: !255, line: 958, type: !257)
!2659 = !DILocalVariable(name: "arg", arg: 2, scope: !2654, file: !255, line: 958, type: !6)
!2660 = !DILocation(line: 0, scope: !2654)
!2661 = !DILocation(line: 0, scope: !2594, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 960, column: 10, scope: !2654)
!2663 = !DILocation(line: 945, column: 3, scope: !2594, inlinedAt: !2662)
!2664 = !DILocation(line: 945, column: 32, scope: !2594, inlinedAt: !2662)
!2665 = !{!2666}
!2666 = distinct !{!2666, !2667, !"quoting_options_from_style: argument 0"}
!2667 = distinct !{!2667, !"quoting_options_from_style"}
!2668 = !DILocation(line: 945, column: 36, scope: !2594, inlinedAt: !2662)
!2669 = !DILocation(line: 0, scope: !2610, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 945, column: 36, scope: !2594, inlinedAt: !2662)
!2671 = !DILocation(line: 185, column: 26, scope: !2610, inlinedAt: !2670)
!2672 = !DILocation(line: 186, column: 13, scope: !2619, inlinedAt: !2670)
!2673 = !DILocation(line: 186, column: 7, scope: !2610, inlinedAt: !2670)
!2674 = !DILocation(line: 187, column: 5, scope: !2619, inlinedAt: !2670)
!2675 = !DILocation(line: 188, column: 5, scope: !2610, inlinedAt: !2670)
!2676 = !DILocation(line: 188, column: 11, scope: !2610, inlinedAt: !2670)
!2677 = !DILocation(line: 946, column: 10, scope: !2594, inlinedAt: !2662)
!2678 = !DILocation(line: 947, column: 1, scope: !2594, inlinedAt: !2662)
!2679 = !DILocation(line: 960, column: 3, scope: !2654)
!2680 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !255, file: !255, line: 964, type: !2681, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2683)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!39, !257, !6, !35}
!2683 = !{!2684, !2685, !2686}
!2684 = !DILocalVariable(name: "s", arg: 1, scope: !2680, file: !255, line: 964, type: !257)
!2685 = !DILocalVariable(name: "arg", arg: 2, scope: !2680, file: !255, line: 964, type: !6)
!2686 = !DILocalVariable(name: "argsize", arg: 3, scope: !2680, file: !255, line: 964, type: !35)
!2687 = !DILocation(line: 0, scope: !2680)
!2688 = !DILocation(line: 0, scope: !2627, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 966, column: 10, scope: !2680)
!2690 = !DILocation(line: 953, column: 3, scope: !2627, inlinedAt: !2689)
!2691 = !DILocation(line: 953, column: 32, scope: !2627, inlinedAt: !2689)
!2692 = !{!2693}
!2693 = distinct !{!2693, !2694, !"quoting_options_from_style: argument 0"}
!2694 = distinct !{!2694, !"quoting_options_from_style"}
!2695 = !DILocation(line: 953, column: 36, scope: !2627, inlinedAt: !2689)
!2696 = !DILocation(line: 0, scope: !2610, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 953, column: 36, scope: !2627, inlinedAt: !2689)
!2698 = !DILocation(line: 185, column: 26, scope: !2610, inlinedAt: !2697)
!2699 = !DILocation(line: 186, column: 13, scope: !2619, inlinedAt: !2697)
!2700 = !DILocation(line: 186, column: 7, scope: !2610, inlinedAt: !2697)
!2701 = !DILocation(line: 187, column: 5, scope: !2619, inlinedAt: !2697)
!2702 = !DILocation(line: 188, column: 5, scope: !2610, inlinedAt: !2697)
!2703 = !DILocation(line: 188, column: 11, scope: !2610, inlinedAt: !2697)
!2704 = !DILocation(line: 954, column: 10, scope: !2627, inlinedAt: !2689)
!2705 = !DILocation(line: 955, column: 1, scope: !2627, inlinedAt: !2689)
!2706 = !DILocation(line: 966, column: 3, scope: !2680)
!2707 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !255, file: !255, line: 970, type: !2708, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!39, !6, !35, !8}
!2710 = !{!2711, !2712, !2713, !2714}
!2711 = !DILocalVariable(name: "arg", arg: 1, scope: !2707, file: !255, line: 970, type: !6)
!2712 = !DILocalVariable(name: "argsize", arg: 2, scope: !2707, file: !255, line: 970, type: !35)
!2713 = !DILocalVariable(name: "ch", arg: 3, scope: !2707, file: !255, line: 970, type: !8)
!2714 = !DILocalVariable(name: "options", scope: !2707, file: !255, line: 972, type: !286)
!2715 = !DILocation(line: 0, scope: !2707)
!2716 = !DILocation(line: 972, column: 3, scope: !2707)
!2717 = !DILocation(line: 972, column: 26, scope: !2707)
!2718 = !DILocation(line: 973, column: 13, scope: !2707)
!2719 = !{i64 0, i64 4, !596, i64 4, i64 4, !587, i64 8, i64 32, !596, i64 40, i64 8, !501, i64 48, i64 8, !501}
!2720 = !DILocation(line: 0, scope: !1725, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 974, column: 3, scope: !2707)
!2722 = !DILocation(line: 147, column: 62, scope: !1725, inlinedAt: !2721)
!2723 = !DILocation(line: 147, column: 57, scope: !1725, inlinedAt: !2721)
!2724 = !DILocation(line: 148, column: 15, scope: !1725, inlinedAt: !2721)
!2725 = !DILocation(line: 149, column: 21, scope: !1725, inlinedAt: !2721)
!2726 = !DILocation(line: 149, column: 24, scope: !1725, inlinedAt: !2721)
!2727 = !DILocation(line: 149, column: 34, scope: !1725, inlinedAt: !2721)
!2728 = !DILocation(line: 150, column: 19, scope: !1725, inlinedAt: !2721)
!2729 = !DILocation(line: 150, column: 24, scope: !1725, inlinedAt: !2721)
!2730 = !DILocation(line: 150, column: 6, scope: !1725, inlinedAt: !2721)
!2731 = !DILocation(line: 975, column: 10, scope: !2707)
!2732 = !DILocation(line: 976, column: 1, scope: !2707)
!2733 = !DILocation(line: 975, column: 3, scope: !2707)
!2734 = distinct !DISubprogram(name: "quotearg_char", scope: !255, file: !255, line: 979, type: !2735, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2737)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!39, !6, !8}
!2737 = !{!2738, !2739}
!2738 = !DILocalVariable(name: "arg", arg: 1, scope: !2734, file: !255, line: 979, type: !6)
!2739 = !DILocalVariable(name: "ch", arg: 2, scope: !2734, file: !255, line: 979, type: !8)
!2740 = !DILocation(line: 0, scope: !2734)
!2741 = !DILocation(line: 0, scope: !2707, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 981, column: 10, scope: !2734)
!2743 = !DILocation(line: 972, column: 3, scope: !2707, inlinedAt: !2742)
!2744 = !DILocation(line: 972, column: 26, scope: !2707, inlinedAt: !2742)
!2745 = !DILocation(line: 973, column: 13, scope: !2707, inlinedAt: !2742)
!2746 = !DILocation(line: 0, scope: !1725, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 974, column: 3, scope: !2707, inlinedAt: !2742)
!2748 = !DILocation(line: 147, column: 62, scope: !1725, inlinedAt: !2747)
!2749 = !DILocation(line: 147, column: 57, scope: !1725, inlinedAt: !2747)
!2750 = !DILocation(line: 148, column: 15, scope: !1725, inlinedAt: !2747)
!2751 = !DILocation(line: 149, column: 21, scope: !1725, inlinedAt: !2747)
!2752 = !DILocation(line: 149, column: 24, scope: !1725, inlinedAt: !2747)
!2753 = !DILocation(line: 149, column: 34, scope: !1725, inlinedAt: !2747)
!2754 = !DILocation(line: 150, column: 19, scope: !1725, inlinedAt: !2747)
!2755 = !DILocation(line: 150, column: 24, scope: !1725, inlinedAt: !2747)
!2756 = !DILocation(line: 150, column: 6, scope: !1725, inlinedAt: !2747)
!2757 = !DILocation(line: 975, column: 10, scope: !2707, inlinedAt: !2742)
!2758 = !DILocation(line: 976, column: 1, scope: !2707, inlinedAt: !2742)
!2759 = !DILocation(line: 981, column: 3, scope: !2734)
!2760 = distinct !DISubprogram(name: "quotearg_colon", scope: !255, file: !255, line: 985, type: !699, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2761)
!2761 = !{!2762}
!2762 = !DILocalVariable(name: "arg", arg: 1, scope: !2760, file: !255, line: 985, type: !6)
!2763 = !DILocation(line: 0, scope: !2760)
!2764 = !DILocation(line: 0, scope: !2734, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 987, column: 10, scope: !2760)
!2766 = !DILocation(line: 0, scope: !2707, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 981, column: 10, scope: !2734, inlinedAt: !2765)
!2768 = !DILocation(line: 972, column: 3, scope: !2707, inlinedAt: !2767)
!2769 = !DILocation(line: 972, column: 26, scope: !2707, inlinedAt: !2767)
!2770 = !DILocation(line: 973, column: 13, scope: !2707, inlinedAt: !2767)
!2771 = !DILocation(line: 0, scope: !1725, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 974, column: 3, scope: !2707, inlinedAt: !2767)
!2773 = !DILocation(line: 147, column: 57, scope: !1725, inlinedAt: !2772)
!2774 = !DILocation(line: 149, column: 21, scope: !1725, inlinedAt: !2772)
!2775 = !DILocation(line: 150, column: 6, scope: !1725, inlinedAt: !2772)
!2776 = !DILocation(line: 975, column: 10, scope: !2707, inlinedAt: !2767)
!2777 = !DILocation(line: 976, column: 1, scope: !2707, inlinedAt: !2767)
!2778 = !DILocation(line: 987, column: 3, scope: !2760)
!2779 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !255, file: !255, line: 991, type: !2584, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2780)
!2780 = !{!2781, !2782}
!2781 = !DILocalVariable(name: "arg", arg: 1, scope: !2779, file: !255, line: 991, type: !6)
!2782 = !DILocalVariable(name: "argsize", arg: 2, scope: !2779, file: !255, line: 991, type: !35)
!2783 = !DILocation(line: 0, scope: !2779)
!2784 = !DILocation(line: 0, scope: !2707, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 993, column: 10, scope: !2779)
!2786 = !DILocation(line: 972, column: 3, scope: !2707, inlinedAt: !2785)
!2787 = !DILocation(line: 972, column: 26, scope: !2707, inlinedAt: !2785)
!2788 = !DILocation(line: 973, column: 13, scope: !2707, inlinedAt: !2785)
!2789 = !DILocation(line: 0, scope: !1725, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 974, column: 3, scope: !2707, inlinedAt: !2785)
!2791 = !DILocation(line: 147, column: 57, scope: !1725, inlinedAt: !2790)
!2792 = !DILocation(line: 149, column: 21, scope: !1725, inlinedAt: !2790)
!2793 = !DILocation(line: 150, column: 6, scope: !1725, inlinedAt: !2790)
!2794 = !DILocation(line: 975, column: 10, scope: !2707, inlinedAt: !2785)
!2795 = !DILocation(line: 976, column: 1, scope: !2707, inlinedAt: !2785)
!2796 = !DILocation(line: 993, column: 3, scope: !2779)
!2797 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !255, file: !255, line: 997, type: !2595, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2798)
!2798 = !{!2799, !2800, !2801, !2802}
!2799 = !DILocalVariable(name: "n", arg: 1, scope: !2797, file: !255, line: 997, type: !33)
!2800 = !DILocalVariable(name: "s", arg: 2, scope: !2797, file: !255, line: 997, type: !257)
!2801 = !DILocalVariable(name: "arg", arg: 3, scope: !2797, file: !255, line: 997, type: !6)
!2802 = !DILocalVariable(name: "options", scope: !2797, file: !255, line: 999, type: !286)
!2803 = !DILocation(line: 0, scope: !2797)
!2804 = !DILocation(line: 999, column: 3, scope: !2797)
!2805 = !DILocation(line: 999, column: 26, scope: !2797)
!2806 = !DILocation(line: 0, scope: !2610, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 1000, column: 13, scope: !2797)
!2808 = !DILocation(line: 186, column: 13, scope: !2619, inlinedAt: !2807)
!2809 = !DILocation(line: 186, column: 7, scope: !2610, inlinedAt: !2807)
!2810 = !DILocation(line: 187, column: 5, scope: !2619, inlinedAt: !2807)
!2811 = !{!2812}
!2812 = distinct !{!2812, !2813, !"quoting_options_from_style: argument 0"}
!2813 = distinct !{!2813, !"quoting_options_from_style"}
!2814 = !DILocation(line: 1000, column: 13, scope: !2797)
!2815 = !DILocation(line: 0, scope: !1725, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 1001, column: 3, scope: !2797)
!2817 = !DILocation(line: 147, column: 57, scope: !1725, inlinedAt: !2816)
!2818 = !DILocation(line: 149, column: 21, scope: !1725, inlinedAt: !2816)
!2819 = !DILocation(line: 150, column: 6, scope: !1725, inlinedAt: !2816)
!2820 = !DILocation(line: 1002, column: 10, scope: !2797)
!2821 = !DILocation(line: 1003, column: 1, scope: !2797)
!2822 = !DILocation(line: 1002, column: 3, scope: !2797)
!2823 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !255, file: !255, line: 1006, type: !2824, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!39, !33, !6, !6, !6}
!2826 = !{!2827, !2828, !2829, !2830}
!2827 = !DILocalVariable(name: "n", arg: 1, scope: !2823, file: !255, line: 1006, type: !33)
!2828 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2823, file: !255, line: 1006, type: !6)
!2829 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2823, file: !255, line: 1007, type: !6)
!2830 = !DILocalVariable(name: "arg", arg: 4, scope: !2823, file: !255, line: 1007, type: !6)
!2831 = !DILocation(line: 0, scope: !2823)
!2832 = !DILocalVariable(name: "n", arg: 1, scope: !2833, file: !255, line: 1014, type: !33)
!2833 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !255, file: !255, line: 1014, type: !2834, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!39, !33, !6, !6, !6, !35}
!2836 = !{!2832, !2837, !2838, !2839, !2840, !2841}
!2837 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2833, file: !255, line: 1014, type: !6)
!2838 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2833, file: !255, line: 1015, type: !6)
!2839 = !DILocalVariable(name: "arg", arg: 4, scope: !2833, file: !255, line: 1016, type: !6)
!2840 = !DILocalVariable(name: "argsize", arg: 5, scope: !2833, file: !255, line: 1016, type: !35)
!2841 = !DILocalVariable(name: "o", scope: !2833, file: !255, line: 1018, type: !286)
!2842 = !DILocation(line: 0, scope: !2833, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 1009, column: 10, scope: !2823)
!2844 = !DILocation(line: 1018, column: 3, scope: !2833, inlinedAt: !2843)
!2845 = !DILocation(line: 1018, column: 26, scope: !2833, inlinedAt: !2843)
!2846 = !DILocation(line: 1018, column: 30, scope: !2833, inlinedAt: !2843)
!2847 = !DILocation(line: 0, scope: !1765, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 1019, column: 3, scope: !2833, inlinedAt: !2843)
!2849 = !DILocation(line: 174, column: 6, scope: !1765, inlinedAt: !2848)
!2850 = !DILocation(line: 174, column: 12, scope: !1765, inlinedAt: !2848)
!2851 = !DILocation(line: 175, column: 8, scope: !1779, inlinedAt: !2848)
!2852 = !DILocation(line: 175, column: 19, scope: !1779, inlinedAt: !2848)
!2853 = !DILocation(line: 176, column: 5, scope: !1779, inlinedAt: !2848)
!2854 = !DILocation(line: 177, column: 6, scope: !1765, inlinedAt: !2848)
!2855 = !DILocation(line: 177, column: 17, scope: !1765, inlinedAt: !2848)
!2856 = !DILocation(line: 178, column: 6, scope: !1765, inlinedAt: !2848)
!2857 = !DILocation(line: 178, column: 18, scope: !1765, inlinedAt: !2848)
!2858 = !DILocation(line: 1020, column: 10, scope: !2833, inlinedAt: !2843)
!2859 = !DILocation(line: 1021, column: 1, scope: !2833, inlinedAt: !2843)
!2860 = !DILocation(line: 1009, column: 3, scope: !2823)
!2861 = !DILocation(line: 0, scope: !2833)
!2862 = !DILocation(line: 1018, column: 3, scope: !2833)
!2863 = !DILocation(line: 1018, column: 26, scope: !2833)
!2864 = !DILocation(line: 1018, column: 30, scope: !2833)
!2865 = !DILocation(line: 0, scope: !1765, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 1019, column: 3, scope: !2833)
!2867 = !DILocation(line: 174, column: 6, scope: !1765, inlinedAt: !2866)
!2868 = !DILocation(line: 174, column: 12, scope: !1765, inlinedAt: !2866)
!2869 = !DILocation(line: 175, column: 8, scope: !1779, inlinedAt: !2866)
!2870 = !DILocation(line: 175, column: 19, scope: !1779, inlinedAt: !2866)
!2871 = !DILocation(line: 176, column: 5, scope: !1779, inlinedAt: !2866)
!2872 = !DILocation(line: 177, column: 6, scope: !1765, inlinedAt: !2866)
!2873 = !DILocation(line: 177, column: 17, scope: !1765, inlinedAt: !2866)
!2874 = !DILocation(line: 178, column: 6, scope: !1765, inlinedAt: !2866)
!2875 = !DILocation(line: 178, column: 18, scope: !1765, inlinedAt: !2866)
!2876 = !DILocation(line: 1020, column: 10, scope: !2833)
!2877 = !DILocation(line: 1021, column: 1, scope: !2833)
!2878 = !DILocation(line: 1020, column: 3, scope: !2833)
!2879 = distinct !DISubprogram(name: "quotearg_custom", scope: !255, file: !255, line: 1024, type: !2880, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2882)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!39, !6, !6, !6}
!2882 = !{!2883, !2884, !2885}
!2883 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2879, file: !255, line: 1024, type: !6)
!2884 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2879, file: !255, line: 1024, type: !6)
!2885 = !DILocalVariable(name: "arg", arg: 3, scope: !2879, file: !255, line: 1025, type: !6)
!2886 = !DILocation(line: 0, scope: !2879)
!2887 = !DILocation(line: 0, scope: !2823, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 1027, column: 10, scope: !2879)
!2889 = !DILocation(line: 0, scope: !2833, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 1009, column: 10, scope: !2823, inlinedAt: !2888)
!2891 = !DILocation(line: 1018, column: 3, scope: !2833, inlinedAt: !2890)
!2892 = !DILocation(line: 1018, column: 26, scope: !2833, inlinedAt: !2890)
!2893 = !DILocation(line: 1018, column: 30, scope: !2833, inlinedAt: !2890)
!2894 = !DILocation(line: 0, scope: !1765, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 1019, column: 3, scope: !2833, inlinedAt: !2890)
!2896 = !DILocation(line: 174, column: 6, scope: !1765, inlinedAt: !2895)
!2897 = !DILocation(line: 174, column: 12, scope: !1765, inlinedAt: !2895)
!2898 = !DILocation(line: 175, column: 8, scope: !1779, inlinedAt: !2895)
!2899 = !DILocation(line: 175, column: 19, scope: !1779, inlinedAt: !2895)
!2900 = !DILocation(line: 176, column: 5, scope: !1779, inlinedAt: !2895)
!2901 = !DILocation(line: 177, column: 6, scope: !1765, inlinedAt: !2895)
!2902 = !DILocation(line: 177, column: 17, scope: !1765, inlinedAt: !2895)
!2903 = !DILocation(line: 178, column: 6, scope: !1765, inlinedAt: !2895)
!2904 = !DILocation(line: 178, column: 18, scope: !1765, inlinedAt: !2895)
!2905 = !DILocation(line: 1020, column: 10, scope: !2833, inlinedAt: !2890)
!2906 = !DILocation(line: 1021, column: 1, scope: !2833, inlinedAt: !2890)
!2907 = !DILocation(line: 1027, column: 3, scope: !2879)
!2908 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !255, file: !255, line: 1031, type: !2909, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!39, !6, !6, !6, !35}
!2911 = !{!2912, !2913, !2914, !2915}
!2912 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2908, file: !255, line: 1031, type: !6)
!2913 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2908, file: !255, line: 1031, type: !6)
!2914 = !DILocalVariable(name: "arg", arg: 3, scope: !2908, file: !255, line: 1032, type: !6)
!2915 = !DILocalVariable(name: "argsize", arg: 4, scope: !2908, file: !255, line: 1032, type: !35)
!2916 = !DILocation(line: 0, scope: !2908)
!2917 = !DILocation(line: 0, scope: !2833, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 1034, column: 10, scope: !2908)
!2919 = !DILocation(line: 1018, column: 3, scope: !2833, inlinedAt: !2918)
!2920 = !DILocation(line: 1018, column: 26, scope: !2833, inlinedAt: !2918)
!2921 = !DILocation(line: 1018, column: 30, scope: !2833, inlinedAt: !2918)
!2922 = !DILocation(line: 0, scope: !1765, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 1019, column: 3, scope: !2833, inlinedAt: !2918)
!2924 = !DILocation(line: 174, column: 6, scope: !1765, inlinedAt: !2923)
!2925 = !DILocation(line: 174, column: 12, scope: !1765, inlinedAt: !2923)
!2926 = !DILocation(line: 175, column: 8, scope: !1779, inlinedAt: !2923)
!2927 = !DILocation(line: 175, column: 19, scope: !1779, inlinedAt: !2923)
!2928 = !DILocation(line: 176, column: 5, scope: !1779, inlinedAt: !2923)
!2929 = !DILocation(line: 177, column: 6, scope: !1765, inlinedAt: !2923)
!2930 = !DILocation(line: 177, column: 17, scope: !1765, inlinedAt: !2923)
!2931 = !DILocation(line: 178, column: 6, scope: !1765, inlinedAt: !2923)
!2932 = !DILocation(line: 178, column: 18, scope: !1765, inlinedAt: !2923)
!2933 = !DILocation(line: 1020, column: 10, scope: !2833, inlinedAt: !2918)
!2934 = !DILocation(line: 1021, column: 1, scope: !2833, inlinedAt: !2918)
!2935 = !DILocation(line: 1034, column: 3, scope: !2908)
!2936 = distinct !DISubprogram(name: "quote_n_mem", scope: !255, file: !255, line: 1049, type: !2937, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!6, !33, !6, !35}
!2939 = !{!2940, !2941, !2942}
!2940 = !DILocalVariable(name: "n", arg: 1, scope: !2936, file: !255, line: 1049, type: !33)
!2941 = !DILocalVariable(name: "arg", arg: 2, scope: !2936, file: !255, line: 1049, type: !6)
!2942 = !DILocalVariable(name: "argsize", arg: 3, scope: !2936, file: !255, line: 1049, type: !35)
!2943 = !DILocation(line: 0, scope: !2936)
!2944 = !DILocation(line: 1051, column: 10, scope: !2936)
!2945 = !DILocation(line: 1051, column: 3, scope: !2936)
!2946 = distinct !DISubprogram(name: "quote_mem", scope: !255, file: !255, line: 1055, type: !2947, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2949)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!6, !6, !35}
!2949 = !{!2950, !2951}
!2950 = !DILocalVariable(name: "arg", arg: 1, scope: !2946, file: !255, line: 1055, type: !6)
!2951 = !DILocalVariable(name: "argsize", arg: 2, scope: !2946, file: !255, line: 1055, type: !35)
!2952 = !DILocation(line: 0, scope: !2946)
!2953 = !DILocation(line: 0, scope: !2936, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 1057, column: 10, scope: !2946)
!2955 = !DILocation(line: 1051, column: 10, scope: !2936, inlinedAt: !2954)
!2956 = !DILocation(line: 1057, column: 3, scope: !2946)
!2957 = distinct !DISubprogram(name: "quote_n", scope: !255, file: !255, line: 1061, type: !2958, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!6, !33, !6}
!2960 = !{!2961, !2962}
!2961 = !DILocalVariable(name: "n", arg: 1, scope: !2957, file: !255, line: 1061, type: !33)
!2962 = !DILocalVariable(name: "arg", arg: 2, scope: !2957, file: !255, line: 1061, type: !6)
!2963 = !DILocation(line: 0, scope: !2957)
!2964 = !DILocation(line: 0, scope: !2936, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 1063, column: 10, scope: !2957)
!2966 = !DILocation(line: 1051, column: 10, scope: !2936, inlinedAt: !2965)
!2967 = !DILocation(line: 1063, column: 3, scope: !2957)
!2968 = distinct !DISubprogram(name: "quote", scope: !255, file: !255, line: 1067, type: !2969, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2971)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!6, !6}
!2971 = !{!2972}
!2972 = !DILocalVariable(name: "arg", arg: 1, scope: !2968, file: !255, line: 1067, type: !6)
!2973 = !DILocation(line: 0, scope: !2968)
!2974 = !DILocation(line: 0, scope: !2957, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 1069, column: 10, scope: !2968)
!2976 = !DILocation(line: 0, scope: !2936, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 1063, column: 10, scope: !2957, inlinedAt: !2975)
!2978 = !DILocation(line: 1051, column: 10, scope: !2936, inlinedAt: !2977)
!2979 = !DILocation(line: 1069, column: 3, scope: !2968)
!2980 = distinct !DISubprogram(name: "safe_write", scope: !2981, file: !2981, line: 56, type: !2982, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !2985)
!2981 = !DIFile(filename: "./lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!443, !33, !2984, !441}
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !2981, line: 45, baseType: !705)
!2985 = !{!2986, !2987, !2988, !2989}
!2986 = !DILocalVariable(name: "fd", arg: 1, scope: !2980, file: !2981, line: 56, type: !33)
!2987 = !DILocalVariable(name: "buf", arg: 2, scope: !2980, file: !2981, line: 56, type: !2984)
!2988 = !DILocalVariable(name: "count", arg: 3, scope: !2980, file: !2981, line: 56, type: !441)
!2989 = !DILocalVariable(name: "result", scope: !2990, file: !2981, line: 60, type: !2993)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !2981, line: 59, column: 5)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !2981, line: 58, column: 3)
!2992 = distinct !DILexicalBlock(scope: !2980, file: !2981, line: 58, column: 3)
!2993 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1436, line: 108, baseType: !822)
!2994 = !DILocation(line: 0, scope: !2980)
!2995 = !DILocation(line: 58, column: 3, scope: !2980)
!2996 = !DILocation(line: 60, column: 24, scope: !2990)
!2997 = !DILocation(line: 0, scope: !2990)
!2998 = !DILocation(line: 62, column: 13, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2990, file: !2981, line: 62, column: 11)
!3000 = !DILocation(line: 62, column: 11, scope: !2990)
!3001 = !DILocation(line: 64, column: 16, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2999, file: !2981, line: 64, column: 16)
!3003 = !DILocation(line: 64, column: 16, scope: !2999)
!3004 = distinct !{!3004, !3005, !3006}
!3005 = !DILocation(line: 58, column: 3, scope: !2992)
!3006 = !DILocation(line: 70, column: 5, scope: !2992)
!3007 = !DILocation(line: 66, column: 22, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3002, file: !2981, line: 66, column: 16)
!3009 = !DILocation(line: 66, column: 32, scope: !3008)
!3010 = !DILocation(line: 0, scope: !2991)
!3011 = !DILocation(line: 71, column: 1, scope: !2980)
!3012 = !DISubprogram(name: "write", scope: !1015, file: !1015, line: 378, type: !3013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!2993, !33, !705, !35}
!3015 = distinct !DISubprogram(name: "version_etc_arn", scope: !415, file: !415, line: 61, type: !3016, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3053)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !3018, !6, !6, !6, !3052, !35}
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3020)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3021)
!3021 = !{!3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3020, file: !65, line: 51, baseType: !33, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3020, file: !65, line: 54, baseType: !39, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3020, file: !65, line: 55, baseType: !39, size: 64, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3020, file: !65, line: 56, baseType: !39, size: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3020, file: !65, line: 57, baseType: !39, size: 64, offset: 256)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3020, file: !65, line: 58, baseType: !39, size: 64, offset: 320)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3020, file: !65, line: 59, baseType: !39, size: 64, offset: 384)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3020, file: !65, line: 60, baseType: !39, size: 64, offset: 448)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3020, file: !65, line: 61, baseType: !39, size: 64, offset: 512)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3020, file: !65, line: 64, baseType: !39, size: 64, offset: 576)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3020, file: !65, line: 65, baseType: !39, size: 64, offset: 640)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3020, file: !65, line: 66, baseType: !39, size: 64, offset: 704)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3020, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3020, file: !65, line: 70, baseType: !3036, size: 64, offset: 832)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3020, file: !65, line: 72, baseType: !33, size: 32, offset: 896)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3020, file: !65, line: 73, baseType: !33, size: 32, offset: 928)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3020, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3020, file: !65, line: 77, baseType: !34, size: 16, offset: 1024)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3020, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3020, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3020, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3020, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3020, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3020, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3020, file: !65, line: 93, baseType: !3036, size: 64, offset: 1344)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3020, file: !65, line: 94, baseType: !32, size: 64, offset: 1408)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3020, file: !65, line: 95, baseType: !35, size: 64, offset: 1472)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3020, file: !65, line: 96, baseType: !33, size: 32, offset: 1536)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3020, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!3053 = !{!3054, !3055, !3056, !3057, !3058, !3059}
!3054 = !DILocalVariable(name: "stream", arg: 1, scope: !3015, file: !415, line: 61, type: !3018)
!3055 = !DILocalVariable(name: "command_name", arg: 2, scope: !3015, file: !415, line: 62, type: !6)
!3056 = !DILocalVariable(name: "package", arg: 3, scope: !3015, file: !415, line: 62, type: !6)
!3057 = !DILocalVariable(name: "version", arg: 4, scope: !3015, file: !415, line: 63, type: !6)
!3058 = !DILocalVariable(name: "authors", arg: 5, scope: !3015, file: !415, line: 64, type: !3052)
!3059 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3015, file: !415, line: 64, type: !35)
!3060 = !DILocation(line: 0, scope: !3015)
!3061 = !DILocation(line: 66, column: 7, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3015, file: !415, line: 66, column: 7)
!3063 = !DILocation(line: 66, column: 7, scope: !3015)
!3064 = !DILocation(line: 67, column: 5, scope: !3062)
!3065 = !DILocation(line: 69, column: 5, scope: !3062)
!3066 = !DILocation(line: 83, column: 3, scope: !3015)
!3067 = !DILocation(line: 85, column: 3, scope: !3015)
!3068 = !DILocation(line: 88, column: 3, scope: !3015)
!3069 = !DILocation(line: 95, column: 3, scope: !3015)
!3070 = !DILocation(line: 97, column: 3, scope: !3015)
!3071 = !DILocation(line: 105, column: 7, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3015, file: !415, line: 98, column: 5)
!3073 = !DILocation(line: 106, column: 7, scope: !3072)
!3074 = !DILocation(line: 109, column: 7, scope: !3072)
!3075 = !DILocation(line: 110, column: 7, scope: !3072)
!3076 = !DILocation(line: 113, column: 7, scope: !3072)
!3077 = !DILocation(line: 115, column: 7, scope: !3072)
!3078 = !DILocation(line: 120, column: 7, scope: !3072)
!3079 = !DILocation(line: 122, column: 7, scope: !3072)
!3080 = !DILocation(line: 127, column: 7, scope: !3072)
!3081 = !DILocation(line: 129, column: 7, scope: !3072)
!3082 = !DILocation(line: 134, column: 7, scope: !3072)
!3083 = !DILocation(line: 137, column: 7, scope: !3072)
!3084 = !DILocation(line: 142, column: 7, scope: !3072)
!3085 = !DILocation(line: 145, column: 7, scope: !3072)
!3086 = !DILocation(line: 150, column: 7, scope: !3072)
!3087 = !DILocation(line: 154, column: 7, scope: !3072)
!3088 = !DILocation(line: 159, column: 7, scope: !3072)
!3089 = !DILocation(line: 163, column: 7, scope: !3072)
!3090 = !DILocation(line: 170, column: 7, scope: !3072)
!3091 = !DILocation(line: 174, column: 7, scope: !3072)
!3092 = !DILocation(line: 176, column: 1, scope: !3015)
!3093 = distinct !DISubprogram(name: "version_etc_ar", scope: !415, file: !415, line: 183, type: !3094, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{null, !3018, !6, !6, !6, !3052}
!3096 = !{!3097, !3098, !3099, !3100, !3101, !3102}
!3097 = !DILocalVariable(name: "stream", arg: 1, scope: !3093, file: !415, line: 183, type: !3018)
!3098 = !DILocalVariable(name: "command_name", arg: 2, scope: !3093, file: !415, line: 184, type: !6)
!3099 = !DILocalVariable(name: "package", arg: 3, scope: !3093, file: !415, line: 184, type: !6)
!3100 = !DILocalVariable(name: "version", arg: 4, scope: !3093, file: !415, line: 185, type: !6)
!3101 = !DILocalVariable(name: "authors", arg: 5, scope: !3093, file: !415, line: 185, type: !3052)
!3102 = !DILocalVariable(name: "n_authors", scope: !3093, file: !415, line: 187, type: !35)
!3103 = !DILocation(line: 0, scope: !3093)
!3104 = !DILocation(line: 189, column: 8, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3093, file: !415, line: 189, column: 3)
!3106 = !DILocation(line: 0, scope: !3105)
!3107 = !DILocation(line: 189, column: 23, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3105, file: !415, line: 189, column: 3)
!3109 = !DILocation(line: 189, column: 3, scope: !3105)
!3110 = !DILocation(line: 189, column: 52, scope: !3108)
!3111 = distinct !{!3111, !3109, !3112, !553}
!3112 = !DILocation(line: 190, column: 5, scope: !3105)
!3113 = !DILocation(line: 191, column: 3, scope: !3093)
!3114 = !DILocation(line: 192, column: 1, scope: !3093)
!3115 = distinct !DISubprogram(name: "version_etc_va", scope: !415, file: !415, line: 199, type: !3116, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3129)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{null, !3018, !6, !6, !6, !3118}
!3118 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !146, line: 52, baseType: !3119)
!3119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !148, line: 32, baseType: !3120)
!3120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3121, baseType: !3122)
!3121 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !152, size: 256, elements: !3123)
!3123 = !{!3124, !3125, !3126, !3127, !3128}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3122, file: !3121, line: 192, baseType: !32, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3122, file: !3121, line: 192, baseType: !32, size: 64, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3122, file: !3121, line: 192, baseType: !32, size: 64, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3122, file: !3121, line: 192, baseType: !33, size: 32, offset: 192)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3122, file: !3121, line: 192, baseType: !33, size: 32, offset: 224)
!3129 = !{!3130, !3131, !3132, !3133, !3134, !3135, !3136}
!3130 = !DILocalVariable(name: "stream", arg: 1, scope: !3115, file: !415, line: 199, type: !3018)
!3131 = !DILocalVariable(name: "command_name", arg: 2, scope: !3115, file: !415, line: 200, type: !6)
!3132 = !DILocalVariable(name: "package", arg: 3, scope: !3115, file: !415, line: 200, type: !6)
!3133 = !DILocalVariable(name: "version", arg: 4, scope: !3115, file: !415, line: 201, type: !6)
!3134 = !DILocalVariable(name: "authors", arg: 5, scope: !3115, file: !415, line: 201, type: !3118)
!3135 = !DILocalVariable(name: "n_authors", scope: !3115, file: !415, line: 203, type: !35)
!3136 = !DILocalVariable(name: "authtab", scope: !3115, file: !415, line: 204, type: !3137)
!3137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !282)
!3138 = !DILocation(line: 0, scope: !3115)
!3139 = !DILocation(line: 201, column: 46, scope: !3115)
!3140 = !DILocation(line: 204, column: 3, scope: !3115)
!3141 = !DILocation(line: 204, column: 15, scope: !3115)
!3142 = !DILocation(line: 208, column: 35, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !415, line: 206, column: 3)
!3144 = distinct !DILexicalBlock(scope: !3115, file: !415, line: 206, column: 3)
!3145 = !DILocation(line: 208, column: 14, scope: !3143)
!3146 = !DILocation(line: 208, column: 33, scope: !3143)
!3147 = !DILocation(line: 208, column: 67, scope: !3143)
!3148 = !DILocation(line: 206, column: 3, scope: !3144)
!3149 = !DILocation(line: 212, column: 20, scope: !3115)
!3150 = !DILocation(line: 211, column: 3, scope: !3115)
!3151 = !DILocation(line: 213, column: 1, scope: !3115)
!3152 = distinct !DISubprogram(name: "version_etc", scope: !415, file: !415, line: 230, type: !3153, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{null, !3018, !6, !6, !6, null}
!3155 = !{!3156, !3157, !3158, !3159, !3160}
!3156 = !DILocalVariable(name: "stream", arg: 1, scope: !3152, file: !415, line: 230, type: !3018)
!3157 = !DILocalVariable(name: "command_name", arg: 2, scope: !3152, file: !415, line: 231, type: !6)
!3158 = !DILocalVariable(name: "package", arg: 3, scope: !3152, file: !415, line: 231, type: !6)
!3159 = !DILocalVariable(name: "version", arg: 4, scope: !3152, file: !415, line: 232, type: !6)
!3160 = !DILocalVariable(name: "authors", scope: !3152, file: !415, line: 234, type: !3118)
!3161 = !DILocation(line: 0, scope: !3152)
!3162 = !DILocation(line: 234, column: 3, scope: !3152)
!3163 = !DILocation(line: 234, column: 11, scope: !3152)
!3164 = !DILocation(line: 235, column: 3, scope: !3152)
!3165 = !DILocation(line: 236, column: 3, scope: !3152)
!3166 = !DILocation(line: 237, column: 3, scope: !3152)
!3167 = !DILocation(line: 238, column: 1, scope: !3152)
!3168 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !415, file: !415, line: 241, type: !173, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !579)
!3169 = !DILocation(line: 243, column: 3, scope: !3168)
!3170 = !DILocation(line: 248, column: 3, scope: !3168)
!3171 = !DILocation(line: 254, column: 3, scope: !3168)
!3172 = !DILocation(line: 259, column: 3, scope: !3168)
!3173 = !DILocation(line: 261, column: 1, scope: !3168)
!3174 = distinct !DISubprogram(name: "xnrealloc", scope: !3175, file: !3175, line: 147, type: !3176, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3178)
!3175 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!32, !32, !35, !35}
!3178 = !{!3179, !3180, !3181}
!3179 = !DILocalVariable(name: "p", arg: 1, scope: !3174, file: !3175, line: 147, type: !32)
!3180 = !DILocalVariable(name: "n", arg: 2, scope: !3174, file: !3175, line: 147, type: !35)
!3181 = !DILocalVariable(name: "s", arg: 3, scope: !3174, file: !3175, line: 147, type: !35)
!3182 = !DILocation(line: 0, scope: !3174)
!3183 = !DILocalVariable(name: "p", arg: 1, scope: !3184, file: !422, line: 83, type: !32)
!3184 = distinct !DISubprogram(name: "xreallocarray", scope: !422, file: !422, line: 83, type: !3176, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3185)
!3185 = !{!3183, !3186, !3187}
!3186 = !DILocalVariable(name: "n", arg: 2, scope: !3184, file: !422, line: 83, type: !35)
!3187 = !DILocalVariable(name: "s", arg: 3, scope: !3184, file: !422, line: 83, type: !35)
!3188 = !DILocation(line: 0, scope: !3184, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 149, column: 10, scope: !3174)
!3190 = !DILocation(line: 85, column: 25, scope: !3184, inlinedAt: !3189)
!3191 = !DILocalVariable(name: "p", arg: 1, scope: !3192, file: !422, line: 37, type: !32)
!3192 = distinct !DISubprogram(name: "check_nonnull", scope: !422, file: !422, line: 37, type: !3193, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3195)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!32, !32}
!3195 = !{!3191}
!3196 = !DILocation(line: 0, scope: !3192, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 85, column: 10, scope: !3184, inlinedAt: !3189)
!3198 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3197)
!3199 = distinct !DILexicalBlock(scope: !3192, file: !422, line: 39, column: 7)
!3200 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3197)
!3201 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3197)
!3202 = !DILocation(line: 149, column: 3, scope: !3174)
!3203 = !DILocation(line: 0, scope: !3184)
!3204 = !DILocation(line: 85, column: 25, scope: !3184)
!3205 = !DILocation(line: 0, scope: !3192, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 85, column: 10, scope: !3184)
!3207 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3206)
!3208 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3206)
!3209 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3206)
!3210 = !DILocation(line: 85, column: 3, scope: !3184)
!3211 = distinct !DISubprogram(name: "xmalloc", scope: !422, file: !422, line: 47, type: !3212, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3214)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!32, !35}
!3214 = !{!3215}
!3215 = !DILocalVariable(name: "s", arg: 1, scope: !3211, file: !422, line: 47, type: !35)
!3216 = !DILocation(line: 0, scope: !3211)
!3217 = !DILocation(line: 49, column: 25, scope: !3211)
!3218 = !DILocation(line: 0, scope: !3192, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 49, column: 10, scope: !3211)
!3220 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3219)
!3221 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3219)
!3222 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3219)
!3223 = !DILocation(line: 49, column: 3, scope: !3211)
!3224 = distinct !DISubprogram(name: "ximalloc", scope: !422, file: !422, line: 53, type: !3225, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3227)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!32, !441}
!3227 = !{!3228}
!3228 = !DILocalVariable(name: "s", arg: 1, scope: !3224, file: !422, line: 53, type: !441)
!3229 = !DILocation(line: 0, scope: !3224)
!3230 = !DILocalVariable(name: "s", arg: 1, scope: !3231, file: !3232, line: 55, type: !441)
!3231 = distinct !DISubprogram(name: "imalloc", scope: !3232, file: !3232, line: 55, type: !3225, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3233)
!3232 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3233 = !{!3230}
!3234 = !DILocation(line: 0, scope: !3231, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 55, column: 25, scope: !3224)
!3236 = !DILocation(line: 57, column: 26, scope: !3231, inlinedAt: !3235)
!3237 = !DILocation(line: 0, scope: !3192, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 55, column: 10, scope: !3224)
!3239 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3238)
!3240 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3238)
!3241 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3238)
!3242 = !DILocation(line: 55, column: 3, scope: !3224)
!3243 = distinct !DISubprogram(name: "xcharalloc", scope: !422, file: !422, line: 59, type: !3244, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!39, !35}
!3246 = !{!3247}
!3247 = !DILocalVariable(name: "n", arg: 1, scope: !3243, file: !422, line: 59, type: !35)
!3248 = !DILocation(line: 0, scope: !3243)
!3249 = !DILocation(line: 0, scope: !3211, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 61, column: 10, scope: !3243)
!3251 = !DILocation(line: 49, column: 25, scope: !3211, inlinedAt: !3250)
!3252 = !DILocation(line: 0, scope: !3192, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 49, column: 10, scope: !3211, inlinedAt: !3250)
!3254 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3253)
!3255 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3253)
!3256 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3253)
!3257 = !DILocation(line: 61, column: 3, scope: !3243)
!3258 = distinct !DISubprogram(name: "xrealloc", scope: !422, file: !422, line: 68, type: !3259, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!32, !32, !35}
!3261 = !{!3262, !3263}
!3262 = !DILocalVariable(name: "p", arg: 1, scope: !3258, file: !422, line: 68, type: !32)
!3263 = !DILocalVariable(name: "s", arg: 2, scope: !3258, file: !422, line: 68, type: !35)
!3264 = !DILocation(line: 0, scope: !3258)
!3265 = !DILocalVariable(name: "ptr", arg: 1, scope: !3266, file: !3267, line: 2057, type: !32)
!3266 = distinct !DISubprogram(name: "rpl_realloc", scope: !3267, file: !3267, line: 2057, type: !3259, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3268)
!3267 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3268 = !{!3265, !3269}
!3269 = !DILocalVariable(name: "size", arg: 2, scope: !3266, file: !3267, line: 2057, type: !35)
!3270 = !DILocation(line: 0, scope: !3266, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 70, column: 25, scope: !3258)
!3272 = !DILocation(line: 2059, column: 24, scope: !3266, inlinedAt: !3271)
!3273 = !DILocation(line: 2059, column: 10, scope: !3266, inlinedAt: !3271)
!3274 = !DILocation(line: 0, scope: !3192, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 70, column: 10, scope: !3258)
!3276 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3275)
!3277 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3275)
!3278 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3275)
!3279 = !DILocation(line: 70, column: 3, scope: !3258)
!3280 = distinct !DISubprogram(name: "xirealloc", scope: !422, file: !422, line: 74, type: !3281, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3283)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!32, !32, !441}
!3283 = !{!3284, !3285}
!3284 = !DILocalVariable(name: "p", arg: 1, scope: !3280, file: !422, line: 74, type: !32)
!3285 = !DILocalVariable(name: "s", arg: 2, scope: !3280, file: !422, line: 74, type: !441)
!3286 = !DILocation(line: 0, scope: !3280)
!3287 = !DILocalVariable(name: "p", arg: 1, scope: !3288, file: !3232, line: 66, type: !32)
!3288 = distinct !DISubprogram(name: "irealloc", scope: !3232, file: !3232, line: 66, type: !3281, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3289)
!3289 = !{!3287, !3290}
!3290 = !DILocalVariable(name: "s", arg: 2, scope: !3288, file: !3232, line: 66, type: !441)
!3291 = !DILocation(line: 0, scope: !3288, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 76, column: 25, scope: !3280)
!3293 = !DILocation(line: 0, scope: !3266, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 68, column: 26, scope: !3288, inlinedAt: !3292)
!3295 = !DILocation(line: 2059, column: 24, scope: !3266, inlinedAt: !3294)
!3296 = !DILocation(line: 2059, column: 10, scope: !3266, inlinedAt: !3294)
!3297 = !DILocation(line: 0, scope: !3192, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 76, column: 10, scope: !3280)
!3299 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3298)
!3300 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3298)
!3301 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3298)
!3302 = !DILocation(line: 76, column: 3, scope: !3280)
!3303 = distinct !DISubprogram(name: "xireallocarray", scope: !422, file: !422, line: 89, type: !3304, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!32, !32, !441, !441}
!3306 = !{!3307, !3308, !3309}
!3307 = !DILocalVariable(name: "p", arg: 1, scope: !3303, file: !422, line: 89, type: !32)
!3308 = !DILocalVariable(name: "n", arg: 2, scope: !3303, file: !422, line: 89, type: !441)
!3309 = !DILocalVariable(name: "s", arg: 3, scope: !3303, file: !422, line: 89, type: !441)
!3310 = !DILocation(line: 0, scope: !3303)
!3311 = !DILocalVariable(name: "p", arg: 1, scope: !3312, file: !3232, line: 98, type: !32)
!3312 = distinct !DISubprogram(name: "ireallocarray", scope: !3232, file: !3232, line: 98, type: !3304, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3313)
!3313 = !{!3311, !3314, !3315}
!3314 = !DILocalVariable(name: "n", arg: 2, scope: !3312, file: !3232, line: 98, type: !441)
!3315 = !DILocalVariable(name: "s", arg: 3, scope: !3312, file: !3232, line: 98, type: !441)
!3316 = !DILocation(line: 0, scope: !3312, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 91, column: 25, scope: !3303)
!3318 = !DILocation(line: 101, column: 13, scope: !3312, inlinedAt: !3317)
!3319 = !DILocation(line: 0, scope: !3192, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 91, column: 10, scope: !3303)
!3321 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3320)
!3322 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3320)
!3323 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3320)
!3324 = !DILocation(line: 91, column: 3, scope: !3303)
!3325 = distinct !DISubprogram(name: "xnmalloc", scope: !422, file: !422, line: 98, type: !3326, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3328)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!32, !35, !35}
!3328 = !{!3329, !3330}
!3329 = !DILocalVariable(name: "n", arg: 1, scope: !3325, file: !422, line: 98, type: !35)
!3330 = !DILocalVariable(name: "s", arg: 2, scope: !3325, file: !422, line: 98, type: !35)
!3331 = !DILocation(line: 0, scope: !3325)
!3332 = !DILocation(line: 0, scope: !3184, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 100, column: 10, scope: !3325)
!3334 = !DILocation(line: 85, column: 25, scope: !3184, inlinedAt: !3333)
!3335 = !DILocation(line: 0, scope: !3192, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 85, column: 10, scope: !3184, inlinedAt: !3333)
!3337 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3336)
!3338 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3336)
!3339 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3336)
!3340 = !DILocation(line: 100, column: 3, scope: !3325)
!3341 = distinct !DISubprogram(name: "xinmalloc", scope: !422, file: !422, line: 104, type: !880, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3342)
!3342 = !{!3343, !3344}
!3343 = !DILocalVariable(name: "n", arg: 1, scope: !3341, file: !422, line: 104, type: !441)
!3344 = !DILocalVariable(name: "s", arg: 2, scope: !3341, file: !422, line: 104, type: !441)
!3345 = !DILocation(line: 0, scope: !3341)
!3346 = !DILocation(line: 0, scope: !3303, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 106, column: 10, scope: !3341)
!3348 = !DILocation(line: 0, scope: !3312, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 91, column: 25, scope: !3303, inlinedAt: !3347)
!3350 = !DILocation(line: 101, column: 13, scope: !3312, inlinedAt: !3349)
!3351 = !DILocation(line: 0, scope: !3192, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 91, column: 10, scope: !3303, inlinedAt: !3347)
!3353 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3352)
!3354 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3352)
!3355 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3352)
!3356 = !DILocation(line: 106, column: 3, scope: !3341)
!3357 = distinct !DISubprogram(name: "x2realloc", scope: !422, file: !422, line: 116, type: !3358, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3360)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!32, !32, !428}
!3360 = !{!3361, !3362}
!3361 = !DILocalVariable(name: "p", arg: 1, scope: !3357, file: !422, line: 116, type: !32)
!3362 = !DILocalVariable(name: "ps", arg: 2, scope: !3357, file: !422, line: 116, type: !428)
!3363 = !DILocation(line: 0, scope: !3357)
!3364 = !DILocation(line: 0, scope: !425, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 118, column: 10, scope: !3357)
!3366 = !DILocation(line: 178, column: 14, scope: !425, inlinedAt: !3365)
!3367 = !DILocation(line: 180, column: 9, scope: !3368, inlinedAt: !3365)
!3368 = distinct !DILexicalBlock(scope: !425, file: !422, line: 180, column: 7)
!3369 = !DILocation(line: 180, column: 7, scope: !425, inlinedAt: !3365)
!3370 = !DILocation(line: 182, column: 13, scope: !3371, inlinedAt: !3365)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !422, line: 182, column: 11)
!3372 = distinct !DILexicalBlock(scope: !3368, file: !422, line: 181, column: 5)
!3373 = !DILocation(line: 182, column: 11, scope: !3372, inlinedAt: !3365)
!3374 = !DILocation(line: 197, column: 11, scope: !3375, inlinedAt: !3365)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !422, line: 197, column: 11)
!3376 = distinct !DILexicalBlock(scope: !3368, file: !422, line: 195, column: 5)
!3377 = !DILocation(line: 197, column: 11, scope: !3376, inlinedAt: !3365)
!3378 = !DILocation(line: 198, column: 9, scope: !3375, inlinedAt: !3365)
!3379 = !DILocation(line: 0, scope: !3184, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 201, column: 7, scope: !425, inlinedAt: !3365)
!3381 = !DILocation(line: 85, column: 25, scope: !3184, inlinedAt: !3380)
!3382 = !DILocation(line: 0, scope: !3192, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 85, column: 10, scope: !3184, inlinedAt: !3380)
!3384 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3383)
!3385 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3383)
!3386 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3383)
!3387 = !DILocation(line: 202, column: 7, scope: !425, inlinedAt: !3365)
!3388 = !DILocation(line: 118, column: 3, scope: !3357)
!3389 = !DILocation(line: 0, scope: !425)
!3390 = !DILocation(line: 178, column: 14, scope: !425)
!3391 = !DILocation(line: 180, column: 9, scope: !3368)
!3392 = !DILocation(line: 180, column: 7, scope: !425)
!3393 = !DILocation(line: 182, column: 13, scope: !3371)
!3394 = !DILocation(line: 182, column: 11, scope: !3372)
!3395 = !DILocation(line: 190, column: 30, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3371, file: !422, line: 183, column: 9)
!3397 = !DILocation(line: 191, column: 16, scope: !3396)
!3398 = !DILocation(line: 191, column: 13, scope: !3396)
!3399 = !DILocation(line: 192, column: 9, scope: !3396)
!3400 = !DILocation(line: 197, column: 11, scope: !3375)
!3401 = !DILocation(line: 197, column: 11, scope: !3376)
!3402 = !DILocation(line: 198, column: 9, scope: !3375)
!3403 = !DILocation(line: 0, scope: !3184, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 201, column: 7, scope: !425)
!3405 = !DILocation(line: 85, column: 25, scope: !3184, inlinedAt: !3404)
!3406 = !DILocation(line: 0, scope: !3192, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 85, column: 10, scope: !3184, inlinedAt: !3404)
!3408 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3407)
!3409 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3407)
!3410 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3407)
!3411 = !DILocation(line: 202, column: 7, scope: !425)
!3412 = !DILocation(line: 203, column: 3, scope: !425)
!3413 = !DILocation(line: 0, scope: !437)
!3414 = !DILocation(line: 230, column: 14, scope: !437)
!3415 = !DILocation(line: 238, column: 7, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !437, file: !422, line: 238, column: 7)
!3417 = !DILocation(line: 238, column: 7, scope: !437)
!3418 = !DILocation(line: 240, column: 9, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !437, file: !422, line: 240, column: 7)
!3420 = !DILocation(line: 240, column: 18, scope: !3419)
!3421 = !DILocation(line: 253, column: 8, scope: !437)
!3422 = !DILocation(line: 258, column: 27, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !422, line: 257, column: 5)
!3424 = distinct !DILexicalBlock(scope: !437, file: !422, line: 256, column: 7)
!3425 = !DILocation(line: 259, column: 32, scope: !3423)
!3426 = !DILocation(line: 260, column: 5, scope: !3423)
!3427 = !DILocation(line: 262, column: 9, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !437, file: !422, line: 262, column: 7)
!3429 = !DILocation(line: 262, column: 7, scope: !437)
!3430 = !DILocation(line: 263, column: 9, scope: !3428)
!3431 = !DILocation(line: 263, column: 5, scope: !3428)
!3432 = !DILocation(line: 264, column: 9, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !437, file: !422, line: 264, column: 7)
!3434 = !DILocation(line: 264, column: 14, scope: !3433)
!3435 = !DILocation(line: 265, column: 7, scope: !3433)
!3436 = !DILocation(line: 265, column: 11, scope: !3433)
!3437 = !DILocation(line: 266, column: 11, scope: !3433)
!3438 = !DILocation(line: 266, column: 26, scope: !3433)
!3439 = !DILocation(line: 267, column: 14, scope: !3433)
!3440 = !DILocation(line: 264, column: 7, scope: !437)
!3441 = !DILocation(line: 268, column: 5, scope: !3433)
!3442 = !DILocation(line: 0, scope: !3258, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 269, column: 8, scope: !437)
!3444 = !DILocation(line: 0, scope: !3266, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 70, column: 25, scope: !3258, inlinedAt: !3443)
!3446 = !DILocation(line: 2059, column: 24, scope: !3266, inlinedAt: !3445)
!3447 = !DILocation(line: 2059, column: 10, scope: !3266, inlinedAt: !3445)
!3448 = !DILocation(line: 0, scope: !3192, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 70, column: 10, scope: !3258, inlinedAt: !3443)
!3450 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3449)
!3451 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3449)
!3452 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3449)
!3453 = !DILocation(line: 270, column: 7, scope: !437)
!3454 = !DILocation(line: 271, column: 3, scope: !437)
!3455 = distinct !DISubprogram(name: "xzalloc", scope: !422, file: !422, line: 279, type: !3212, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3456)
!3456 = !{!3457}
!3457 = !DILocalVariable(name: "s", arg: 1, scope: !3455, file: !422, line: 279, type: !35)
!3458 = !DILocation(line: 0, scope: !3455)
!3459 = !DILocalVariable(name: "n", arg: 1, scope: !3460, file: !422, line: 294, type: !35)
!3460 = distinct !DISubprogram(name: "xcalloc", scope: !422, file: !422, line: 294, type: !3326, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3461)
!3461 = !{!3459, !3462}
!3462 = !DILocalVariable(name: "s", arg: 2, scope: !3460, file: !422, line: 294, type: !35)
!3463 = !DILocation(line: 0, scope: !3460, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 281, column: 10, scope: !3455)
!3465 = !DILocation(line: 296, column: 25, scope: !3460, inlinedAt: !3464)
!3466 = !DILocation(line: 0, scope: !3192, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 296, column: 10, scope: !3460, inlinedAt: !3464)
!3468 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3467)
!3469 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3467)
!3470 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3467)
!3471 = !DILocation(line: 281, column: 3, scope: !3455)
!3472 = !DILocation(line: 0, scope: !3460)
!3473 = !DILocation(line: 296, column: 25, scope: !3460)
!3474 = !DILocation(line: 0, scope: !3192, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 296, column: 10, scope: !3460)
!3476 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3475)
!3477 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3475)
!3478 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3475)
!3479 = !DILocation(line: 296, column: 3, scope: !3460)
!3480 = distinct !DISubprogram(name: "xizalloc", scope: !422, file: !422, line: 285, type: !3225, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3481)
!3481 = !{!3482}
!3482 = !DILocalVariable(name: "s", arg: 1, scope: !3480, file: !422, line: 285, type: !441)
!3483 = !DILocation(line: 0, scope: !3480)
!3484 = !DILocalVariable(name: "n", arg: 1, scope: !3485, file: !422, line: 300, type: !441)
!3485 = distinct !DISubprogram(name: "xicalloc", scope: !422, file: !422, line: 300, type: !880, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3486)
!3486 = !{!3484, !3487}
!3487 = !DILocalVariable(name: "s", arg: 2, scope: !3485, file: !422, line: 300, type: !441)
!3488 = !DILocation(line: 0, scope: !3485, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 287, column: 10, scope: !3480)
!3490 = !DILocalVariable(name: "n", arg: 1, scope: !3491, file: !3232, line: 77, type: !441)
!3491 = distinct !DISubprogram(name: "icalloc", scope: !3232, file: !3232, line: 77, type: !880, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3492)
!3492 = !{!3490, !3493}
!3493 = !DILocalVariable(name: "s", arg: 2, scope: !3491, file: !3232, line: 77, type: !441)
!3494 = !DILocation(line: 0, scope: !3491, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 302, column: 25, scope: !3485, inlinedAt: !3489)
!3496 = !DILocation(line: 91, column: 10, scope: !3491, inlinedAt: !3495)
!3497 = !DILocation(line: 0, scope: !3192, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 302, column: 10, scope: !3485, inlinedAt: !3489)
!3499 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3498)
!3500 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3498)
!3501 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3498)
!3502 = !DILocation(line: 287, column: 3, scope: !3480)
!3503 = !DILocation(line: 0, scope: !3485)
!3504 = !DILocation(line: 0, scope: !3491, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 302, column: 25, scope: !3485)
!3506 = !DILocation(line: 91, column: 10, scope: !3491, inlinedAt: !3505)
!3507 = !DILocation(line: 0, scope: !3192, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 302, column: 10, scope: !3485)
!3509 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3508)
!3510 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3508)
!3511 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3508)
!3512 = !DILocation(line: 302, column: 3, scope: !3485)
!3513 = distinct !DISubprogram(name: "xmemdup", scope: !422, file: !422, line: 310, type: !3514, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3516)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!32, !705, !35}
!3516 = !{!3517, !3518}
!3517 = !DILocalVariable(name: "p", arg: 1, scope: !3513, file: !422, line: 310, type: !705)
!3518 = !DILocalVariable(name: "s", arg: 2, scope: !3513, file: !422, line: 310, type: !35)
!3519 = !DILocation(line: 0, scope: !3513)
!3520 = !DILocation(line: 0, scope: !3211, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 312, column: 18, scope: !3513)
!3522 = !DILocation(line: 49, column: 25, scope: !3211, inlinedAt: !3521)
!3523 = !DILocation(line: 0, scope: !3192, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 49, column: 10, scope: !3211, inlinedAt: !3521)
!3525 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3524)
!3526 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3524)
!3527 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3524)
!3528 = !DILocalVariable(name: "__dest", arg: 1, scope: !3529, file: !781, line: 26, type: !784)
!3529 = distinct !DISubprogram(name: "memcpy", scope: !781, file: !781, line: 26, type: !782, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3530)
!3530 = !{!3528, !3531, !3532}
!3531 = !DILocalVariable(name: "__src", arg: 2, scope: !3529, file: !781, line: 26, type: !704)
!3532 = !DILocalVariable(name: "__len", arg: 3, scope: !3529, file: !781, line: 26, type: !35)
!3533 = !DILocation(line: 0, scope: !3529, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 312, column: 10, scope: !3513)
!3535 = !DILocation(line: 29, column: 10, scope: !3529, inlinedAt: !3534)
!3536 = !DILocation(line: 312, column: 3, scope: !3513)
!3537 = distinct !DISubprogram(name: "ximemdup", scope: !422, file: !422, line: 316, type: !3538, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3540)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!32, !705, !441}
!3540 = !{!3541, !3542}
!3541 = !DILocalVariable(name: "p", arg: 1, scope: !3537, file: !422, line: 316, type: !705)
!3542 = !DILocalVariable(name: "s", arg: 2, scope: !3537, file: !422, line: 316, type: !441)
!3543 = !DILocation(line: 0, scope: !3537)
!3544 = !DILocation(line: 0, scope: !3224, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 318, column: 18, scope: !3537)
!3546 = !DILocation(line: 0, scope: !3231, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 55, column: 25, scope: !3224, inlinedAt: !3545)
!3548 = !DILocation(line: 57, column: 26, scope: !3231, inlinedAt: !3547)
!3549 = !DILocation(line: 0, scope: !3192, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 55, column: 10, scope: !3224, inlinedAt: !3545)
!3551 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3550)
!3552 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3550)
!3553 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3550)
!3554 = !DILocation(line: 0, scope: !3529, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 318, column: 10, scope: !3537)
!3556 = !DILocation(line: 29, column: 10, scope: !3529, inlinedAt: !3555)
!3557 = !DILocation(line: 318, column: 3, scope: !3537)
!3558 = distinct !DISubprogram(name: "ximemdup0", scope: !422, file: !422, line: 325, type: !3559, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3561)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!39, !705, !441}
!3561 = !{!3562, !3563, !3564}
!3562 = !DILocalVariable(name: "p", arg: 1, scope: !3558, file: !422, line: 325, type: !705)
!3563 = !DILocalVariable(name: "s", arg: 2, scope: !3558, file: !422, line: 325, type: !441)
!3564 = !DILocalVariable(name: "result", scope: !3558, file: !422, line: 327, type: !39)
!3565 = !DILocation(line: 0, scope: !3558)
!3566 = !DILocation(line: 327, column: 30, scope: !3558)
!3567 = !DILocation(line: 0, scope: !3224, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 327, column: 18, scope: !3558)
!3569 = !DILocation(line: 0, scope: !3231, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 55, column: 25, scope: !3224, inlinedAt: !3568)
!3571 = !DILocation(line: 57, column: 26, scope: !3231, inlinedAt: !3570)
!3572 = !DILocation(line: 0, scope: !3192, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 55, column: 10, scope: !3224, inlinedAt: !3568)
!3574 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3573)
!3575 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3573)
!3576 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3573)
!3577 = !DILocation(line: 328, column: 3, scope: !3558)
!3578 = !DILocation(line: 328, column: 13, scope: !3558)
!3579 = !DILocation(line: 0, scope: !3529, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 329, column: 10, scope: !3558)
!3581 = !DILocation(line: 29, column: 10, scope: !3529, inlinedAt: !3580)
!3582 = !DILocation(line: 329, column: 3, scope: !3558)
!3583 = distinct !DISubprogram(name: "xstrdup", scope: !422, file: !422, line: 335, type: !699, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3584)
!3584 = !{!3585}
!3585 = !DILocalVariable(name: "string", arg: 1, scope: !3583, file: !422, line: 335, type: !6)
!3586 = !DILocation(line: 0, scope: !3583)
!3587 = !DILocation(line: 337, column: 27, scope: !3583)
!3588 = !DILocation(line: 337, column: 43, scope: !3583)
!3589 = !DILocation(line: 0, scope: !3513, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 337, column: 10, scope: !3583)
!3591 = !DILocation(line: 0, scope: !3211, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 312, column: 18, scope: !3513, inlinedAt: !3590)
!3593 = !DILocation(line: 49, column: 25, scope: !3211, inlinedAt: !3592)
!3594 = !DILocation(line: 0, scope: !3192, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 49, column: 10, scope: !3211, inlinedAt: !3592)
!3596 = !DILocation(line: 39, column: 8, scope: !3199, inlinedAt: !3595)
!3597 = !DILocation(line: 39, column: 7, scope: !3192, inlinedAt: !3595)
!3598 = !DILocation(line: 40, column: 5, scope: !3199, inlinedAt: !3595)
!3599 = !DILocation(line: 0, scope: !3529, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 312, column: 10, scope: !3513, inlinedAt: !3590)
!3601 = !DILocation(line: 29, column: 10, scope: !3529, inlinedAt: !3600)
!3602 = !DILocation(line: 337, column: 3, scope: !3583)
!3603 = distinct !DISubprogram(name: "xalloc_die", scope: !456, file: !456, line: 32, type: !173, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !455, retainedNodes: !3604)
!3604 = !{!3605}
!3605 = !DILocalVariable(name: "__errstatus", scope: !3606, file: !456, line: 34, type: !3607)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !456, line: 34, column: 3)
!3607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!3608 = !DILocation(line: 34, column: 3, scope: !3606)
!3609 = !DILocation(line: 0, scope: !3606)
!3610 = !DILocation(line: 40, column: 3, scope: !3603)
!3611 = distinct !DISubprogram(name: "close_stream", scope: !458, file: !458, line: 55, type: !3612, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !3648)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!33, !3614}
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3616)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3617)
!3617 = !{!3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3616, file: !65, line: 51, baseType: !33, size: 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3616, file: !65, line: 54, baseType: !39, size: 64, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3616, file: !65, line: 55, baseType: !39, size: 64, offset: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3616, file: !65, line: 56, baseType: !39, size: 64, offset: 192)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3616, file: !65, line: 57, baseType: !39, size: 64, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3616, file: !65, line: 58, baseType: !39, size: 64, offset: 320)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3616, file: !65, line: 59, baseType: !39, size: 64, offset: 384)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3616, file: !65, line: 60, baseType: !39, size: 64, offset: 448)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3616, file: !65, line: 61, baseType: !39, size: 64, offset: 512)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3616, file: !65, line: 64, baseType: !39, size: 64, offset: 576)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3616, file: !65, line: 65, baseType: !39, size: 64, offset: 640)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3616, file: !65, line: 66, baseType: !39, size: 64, offset: 704)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3616, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3616, file: !65, line: 70, baseType: !3632, size: 64, offset: 832)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3616, file: !65, line: 72, baseType: !33, size: 32, offset: 896)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3616, file: !65, line: 73, baseType: !33, size: 32, offset: 928)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3616, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3616, file: !65, line: 77, baseType: !34, size: 16, offset: 1024)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3616, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3616, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3616, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3616, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3616, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3616, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3616, file: !65, line: 93, baseType: !3632, size: 64, offset: 1344)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3616, file: !65, line: 94, baseType: !32, size: 64, offset: 1408)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3616, file: !65, line: 95, baseType: !35, size: 64, offset: 1472)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3616, file: !65, line: 96, baseType: !33, size: 32, offset: 1536)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3616, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3648 = !{!3649, !3650, !3652, !3653}
!3649 = !DILocalVariable(name: "stream", arg: 1, scope: !3611, file: !458, line: 55, type: !3614)
!3650 = !DILocalVariable(name: "some_pending", scope: !3611, file: !458, line: 57, type: !3651)
!3651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!3652 = !DILocalVariable(name: "prev_fail", scope: !3611, file: !458, line: 58, type: !3651)
!3653 = !DILocalVariable(name: "fclose_fail", scope: !3611, file: !458, line: 59, type: !3651)
!3654 = !DILocation(line: 0, scope: !3611)
!3655 = !DILocation(line: 57, column: 30, scope: !3611)
!3656 = !DILocalVariable(name: "__stream", arg: 1, scope: !3657, file: !1203, line: 135, type: !3614)
!3657 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1203, file: !1203, line: 135, type: !3612, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !3658)
!3658 = !{!3656}
!3659 = !DILocation(line: 0, scope: !3657, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 58, column: 27, scope: !3611)
!3661 = !DILocation(line: 137, column: 10, scope: !3657, inlinedAt: !3660)
!3662 = !{!1212, !588, i64 0}
!3663 = !DILocation(line: 58, column: 43, scope: !3611)
!3664 = !DILocation(line: 59, column: 29, scope: !3611)
!3665 = !DILocation(line: 59, column: 45, scope: !3611)
!3666 = !DILocation(line: 69, column: 17, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3611, file: !458, line: 69, column: 7)
!3668 = !DILocation(line: 57, column: 50, scope: !3611)
!3669 = !DILocation(line: 69, column: 33, scope: !3667)
!3670 = !DILocation(line: 69, column: 53, scope: !3667)
!3671 = !DILocation(line: 69, column: 59, scope: !3667)
!3672 = !DILocation(line: 69, column: 7, scope: !3611)
!3673 = !DILocation(line: 71, column: 11, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3667, file: !458, line: 70, column: 5)
!3675 = !DILocation(line: 72, column: 9, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3674, file: !458, line: 71, column: 11)
!3677 = !DILocation(line: 72, column: 15, scope: !3676)
!3678 = !DILocation(line: 77, column: 1, scope: !3611)
!3679 = distinct !DISubprogram(name: "rpl_fclose", scope: !460, file: !460, line: 58, type: !3680, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !3716)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!33, !3682}
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3684)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3685)
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3684, file: !65, line: 51, baseType: !33, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3684, file: !65, line: 54, baseType: !39, size: 64, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3684, file: !65, line: 55, baseType: !39, size: 64, offset: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3684, file: !65, line: 56, baseType: !39, size: 64, offset: 192)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3684, file: !65, line: 57, baseType: !39, size: 64, offset: 256)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3684, file: !65, line: 58, baseType: !39, size: 64, offset: 320)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3684, file: !65, line: 59, baseType: !39, size: 64, offset: 384)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3684, file: !65, line: 60, baseType: !39, size: 64, offset: 448)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3684, file: !65, line: 61, baseType: !39, size: 64, offset: 512)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3684, file: !65, line: 64, baseType: !39, size: 64, offset: 576)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3684, file: !65, line: 65, baseType: !39, size: 64, offset: 640)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3684, file: !65, line: 66, baseType: !39, size: 64, offset: 704)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3684, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3684, file: !65, line: 70, baseType: !3700, size: 64, offset: 832)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3684, file: !65, line: 72, baseType: !33, size: 32, offset: 896)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3684, file: !65, line: 73, baseType: !33, size: 32, offset: 928)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3684, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3684, file: !65, line: 77, baseType: !34, size: 16, offset: 1024)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3684, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3684, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3684, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3684, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3684, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3684, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3684, file: !65, line: 93, baseType: !3700, size: 64, offset: 1344)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3684, file: !65, line: 94, baseType: !32, size: 64, offset: 1408)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3684, file: !65, line: 95, baseType: !35, size: 64, offset: 1472)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3684, file: !65, line: 96, baseType: !33, size: 32, offset: 1536)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3684, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3716 = !{!3717, !3718, !3719, !3720}
!3717 = !DILocalVariable(name: "fp", arg: 1, scope: !3679, file: !460, line: 58, type: !3682)
!3718 = !DILocalVariable(name: "saved_errno", scope: !3679, file: !460, line: 60, type: !33)
!3719 = !DILocalVariable(name: "fd", scope: !3679, file: !460, line: 63, type: !33)
!3720 = !DILocalVariable(name: "result", scope: !3679, file: !460, line: 74, type: !33)
!3721 = !DILocation(line: 0, scope: !3679)
!3722 = !DILocation(line: 63, column: 12, scope: !3679)
!3723 = !DILocation(line: 64, column: 10, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3679, file: !460, line: 64, column: 7)
!3725 = !DILocation(line: 64, column: 7, scope: !3679)
!3726 = !DILocation(line: 65, column: 12, scope: !3724)
!3727 = !DILocation(line: 65, column: 5, scope: !3724)
!3728 = !DILocation(line: 70, column: 9, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3679, file: !460, line: 70, column: 7)
!3730 = !DILocation(line: 70, column: 23, scope: !3729)
!3731 = !DILocation(line: 70, column: 33, scope: !3729)
!3732 = !DILocation(line: 70, column: 26, scope: !3729)
!3733 = !DILocation(line: 70, column: 59, scope: !3729)
!3734 = !DILocation(line: 71, column: 7, scope: !3729)
!3735 = !DILocation(line: 71, column: 10, scope: !3729)
!3736 = !DILocation(line: 70, column: 7, scope: !3679)
!3737 = !DILocation(line: 100, column: 12, scope: !3679)
!3738 = !DILocation(line: 105, column: 7, scope: !3679)
!3739 = !DILocation(line: 72, column: 19, scope: !3729)
!3740 = !DILocation(line: 105, column: 19, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3679, file: !460, line: 105, column: 7)
!3742 = !DILocation(line: 107, column: 13, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3741, file: !460, line: 106, column: 5)
!3744 = !DILocation(line: 109, column: 5, scope: !3743)
!3745 = !DILocation(line: 112, column: 1, scope: !3679)
!3746 = !DISubprogram(name: "fileno", scope: !146, file: !146, line: 809, type: !3680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!3747 = !DISubprogram(name: "fclose", scope: !146, file: !146, line: 178, type: !3680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!3748 = !DISubprogram(name: "lseek", scope: !1015, file: !1015, line: 339, type: !3749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!87, !33, !87, !33}
!3751 = distinct !DISubprogram(name: "fd_safer_flag", scope: !462, file: !462, line: 40, type: !179, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !3752)
!3752 = !{!3753, !3754, !3755, !3758}
!3753 = !DILocalVariable(name: "fd", arg: 1, scope: !3751, file: !462, line: 40, type: !33)
!3754 = !DILocalVariable(name: "flag", arg: 2, scope: !3751, file: !462, line: 40, type: !33)
!3755 = !DILocalVariable(name: "f", scope: !3756, file: !462, line: 44, type: !33)
!3756 = distinct !DILexicalBlock(scope: !3757, file: !462, line: 43, column: 5)
!3757 = distinct !DILexicalBlock(scope: !3751, file: !462, line: 42, column: 7)
!3758 = !DILocalVariable(name: "saved_errno", scope: !3756, file: !462, line: 45, type: !33)
!3759 = !DILocation(line: 0, scope: !3751)
!3760 = !DILocation(line: 42, column: 26, scope: !3757)
!3761 = !DILocation(line: 44, column: 15, scope: !3756)
!3762 = !DILocation(line: 0, scope: !3756)
!3763 = !DILocation(line: 45, column: 25, scope: !3756)
!3764 = !DILocation(line: 46, column: 7, scope: !3756)
!3765 = !DILocation(line: 47, column: 13, scope: !3756)
!3766 = !DILocation(line: 49, column: 5, scope: !3756)
!3767 = !DILocation(line: 51, column: 3, scope: !3751)
!3768 = distinct !DISubprogram(name: "dup_safer_flag", scope: !464, file: !464, line: 34, type: !179, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3769)
!3769 = !{!3770, !3771}
!3770 = !DILocalVariable(name: "fd", arg: 1, scope: !3768, file: !464, line: 34, type: !33)
!3771 = !DILocalVariable(name: "flag", arg: 2, scope: !3768, file: !464, line: 34, type: !33)
!3772 = !DILocation(line: 0, scope: !3768)
!3773 = !DILocation(line: 36, column: 27, scope: !3768)
!3774 = !DILocation(line: 36, column: 21, scope: !3768)
!3775 = !DILocation(line: 36, column: 10, scope: !3768)
!3776 = !DILocation(line: 36, column: 3, scope: !3768)
!3777 = distinct !DISubprogram(name: "rpl_fflush", scope: !466, file: !466, line: 130, type: !3778, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !3814)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!33, !3780}
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3782)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3783)
!3783 = !{!3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3782, file: !65, line: 51, baseType: !33, size: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3782, file: !65, line: 54, baseType: !39, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3782, file: !65, line: 55, baseType: !39, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3782, file: !65, line: 56, baseType: !39, size: 64, offset: 192)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3782, file: !65, line: 57, baseType: !39, size: 64, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3782, file: !65, line: 58, baseType: !39, size: 64, offset: 320)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3782, file: !65, line: 59, baseType: !39, size: 64, offset: 384)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3782, file: !65, line: 60, baseType: !39, size: 64, offset: 448)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3782, file: !65, line: 61, baseType: !39, size: 64, offset: 512)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3782, file: !65, line: 64, baseType: !39, size: 64, offset: 576)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3782, file: !65, line: 65, baseType: !39, size: 64, offset: 640)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3782, file: !65, line: 66, baseType: !39, size: 64, offset: 704)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3782, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3782, file: !65, line: 70, baseType: !3798, size: 64, offset: 832)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3782, file: !65, line: 72, baseType: !33, size: 32, offset: 896)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3782, file: !65, line: 73, baseType: !33, size: 32, offset: 928)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3782, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3782, file: !65, line: 77, baseType: !34, size: 16, offset: 1024)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3782, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3782, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3782, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3782, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3782, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3782, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3782, file: !65, line: 93, baseType: !3798, size: 64, offset: 1344)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3782, file: !65, line: 94, baseType: !32, size: 64, offset: 1408)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3782, file: !65, line: 95, baseType: !35, size: 64, offset: 1472)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3782, file: !65, line: 96, baseType: !33, size: 32, offset: 1536)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3782, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3814 = !{!3815}
!3815 = !DILocalVariable(name: "stream", arg: 1, scope: !3777, file: !466, line: 130, type: !3780)
!3816 = !DILocation(line: 0, scope: !3777)
!3817 = !DILocation(line: 151, column: 14, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3777, file: !466, line: 151, column: 7)
!3819 = !DILocation(line: 151, column: 22, scope: !3818)
!3820 = !DILocation(line: 151, column: 27, scope: !3818)
!3821 = !DILocation(line: 151, column: 7, scope: !3777)
!3822 = !DILocation(line: 152, column: 12, scope: !3818)
!3823 = !DILocation(line: 152, column: 5, scope: !3818)
!3824 = !DILocalVariable(name: "fp", arg: 1, scope: !3825, file: !466, line: 42, type: !3780)
!3825 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !466, file: !466, line: 42, type: !3826, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !3828)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{null, !3780}
!3828 = !{!3824}
!3829 = !DILocation(line: 0, scope: !3825, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 157, column: 3, scope: !3777)
!3831 = !DILocation(line: 44, column: 12, scope: !3832, inlinedAt: !3830)
!3832 = distinct !DILexicalBlock(scope: !3825, file: !466, line: 44, column: 7)
!3833 = !DILocation(line: 44, column: 19, scope: !3832, inlinedAt: !3830)
!3834 = !DILocation(line: 44, column: 7, scope: !3825, inlinedAt: !3830)
!3835 = !DILocation(line: 46, column: 5, scope: !3832, inlinedAt: !3830)
!3836 = !DILocation(line: 159, column: 10, scope: !3777)
!3837 = !DILocation(line: 159, column: 3, scope: !3777)
!3838 = !DILocation(line: 236, column: 1, scope: !3777)
!3839 = !DISubprogram(name: "fflush", scope: !146, file: !146, line: 230, type: !3778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!3840 = distinct !DISubprogram(name: "rpl_fseeko", scope: !468, file: !468, line: 28, type: !3841, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !3878)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!33, !3843, !3877, !33}
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3845)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3846)
!3846 = !{!3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3845, file: !65, line: 51, baseType: !33, size: 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3845, file: !65, line: 54, baseType: !39, size: 64, offset: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3845, file: !65, line: 55, baseType: !39, size: 64, offset: 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3845, file: !65, line: 56, baseType: !39, size: 64, offset: 192)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3845, file: !65, line: 57, baseType: !39, size: 64, offset: 256)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3845, file: !65, line: 58, baseType: !39, size: 64, offset: 320)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3845, file: !65, line: 59, baseType: !39, size: 64, offset: 384)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3845, file: !65, line: 60, baseType: !39, size: 64, offset: 448)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3845, file: !65, line: 61, baseType: !39, size: 64, offset: 512)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3845, file: !65, line: 64, baseType: !39, size: 64, offset: 576)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3845, file: !65, line: 65, baseType: !39, size: 64, offset: 640)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3845, file: !65, line: 66, baseType: !39, size: 64, offset: 704)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3845, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3845, file: !65, line: 70, baseType: !3861, size: 64, offset: 832)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3845, file: !65, line: 72, baseType: !33, size: 32, offset: 896)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3845, file: !65, line: 73, baseType: !33, size: 32, offset: 928)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3845, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3845, file: !65, line: 77, baseType: !34, size: 16, offset: 1024)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3845, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3845, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3845, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3845, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3845, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3845, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3845, file: !65, line: 93, baseType: !3861, size: 64, offset: 1344)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3845, file: !65, line: 94, baseType: !32, size: 64, offset: 1408)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3845, file: !65, line: 95, baseType: !35, size: 64, offset: 1472)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3845, file: !65, line: 96, baseType: !33, size: 32, offset: 1536)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3845, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3877 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !146, line: 63, baseType: !87)
!3878 = !{!3879, !3880, !3881, !3882}
!3879 = !DILocalVariable(name: "fp", arg: 1, scope: !3840, file: !468, line: 28, type: !3843)
!3880 = !DILocalVariable(name: "offset", arg: 2, scope: !3840, file: !468, line: 28, type: !3877)
!3881 = !DILocalVariable(name: "whence", arg: 3, scope: !3840, file: !468, line: 28, type: !33)
!3882 = !DILocalVariable(name: "pos", scope: !3883, file: !468, line: 123, type: !3877)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !468, line: 119, column: 5)
!3884 = distinct !DILexicalBlock(scope: !3840, file: !468, line: 55, column: 7)
!3885 = !DILocation(line: 0, scope: !3840)
!3886 = !DILocation(line: 55, column: 12, scope: !3884)
!3887 = !{!1212, !502, i64 16}
!3888 = !DILocation(line: 55, column: 33, scope: !3884)
!3889 = !{!1212, !502, i64 8}
!3890 = !DILocation(line: 55, column: 25, scope: !3884)
!3891 = !DILocation(line: 56, column: 7, scope: !3884)
!3892 = !DILocation(line: 56, column: 15, scope: !3884)
!3893 = !DILocation(line: 56, column: 37, scope: !3884)
!3894 = !{!1212, !502, i64 32}
!3895 = !DILocation(line: 56, column: 29, scope: !3884)
!3896 = !DILocation(line: 57, column: 7, scope: !3884)
!3897 = !DILocation(line: 57, column: 15, scope: !3884)
!3898 = !{!1212, !502, i64 72}
!3899 = !DILocation(line: 57, column: 29, scope: !3884)
!3900 = !DILocation(line: 55, column: 7, scope: !3840)
!3901 = !DILocation(line: 123, column: 26, scope: !3883)
!3902 = !DILocation(line: 123, column: 19, scope: !3883)
!3903 = !DILocation(line: 0, scope: !3883)
!3904 = !DILocation(line: 124, column: 15, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3883, file: !468, line: 124, column: 11)
!3906 = !DILocation(line: 124, column: 11, scope: !3883)
!3907 = !DILocation(line: 135, column: 12, scope: !3883)
!3908 = !DILocation(line: 135, column: 19, scope: !3883)
!3909 = !DILocation(line: 136, column: 12, scope: !3883)
!3910 = !DILocation(line: 136, column: 20, scope: !3883)
!3911 = !{!1212, !931, i64 144}
!3912 = !DILocation(line: 167, column: 7, scope: !3883)
!3913 = !DILocation(line: 169, column: 10, scope: !3840)
!3914 = !DILocation(line: 169, column: 3, scope: !3840)
!3915 = !DILocation(line: 170, column: 1, scope: !3840)
!3916 = !DISubprogram(name: "fseeko", scope: !146, file: !146, line: 736, type: !3917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!33, !3843, !87, !33}
!3919 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !358, file: !358, line: 100, type: !3920, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !3923)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!35, !1685, !6, !35, !3922}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!3923 = !{!3924, !3925, !3926, !3927, !3928}
!3924 = !DILocalVariable(name: "pwc", arg: 1, scope: !3919, file: !358, line: 100, type: !1685)
!3925 = !DILocalVariable(name: "s", arg: 2, scope: !3919, file: !358, line: 100, type: !6)
!3926 = !DILocalVariable(name: "n", arg: 3, scope: !3919, file: !358, line: 100, type: !35)
!3927 = !DILocalVariable(name: "ps", arg: 4, scope: !3919, file: !358, line: 100, type: !3922)
!3928 = !DILocalVariable(name: "ret", scope: !3919, file: !358, line: 130, type: !35)
!3929 = !DILocation(line: 0, scope: !3919)
!3930 = !DILocation(line: 105, column: 9, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3919, file: !358, line: 105, column: 7)
!3932 = !DILocation(line: 105, column: 7, scope: !3919)
!3933 = !DILocation(line: 117, column: 10, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3919, file: !358, line: 117, column: 7)
!3935 = !DILocation(line: 117, column: 7, scope: !3919)
!3936 = !DILocation(line: 130, column: 16, scope: !3919)
!3937 = !DILocation(line: 135, column: 11, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3919, file: !358, line: 135, column: 7)
!3939 = !DILocation(line: 135, column: 25, scope: !3938)
!3940 = !DILocation(line: 135, column: 30, scope: !3938)
!3941 = !DILocation(line: 135, column: 7, scope: !3919)
!3942 = !DILocalVariable(name: "ps", arg: 1, scope: !3943, file: !1659, line: 1135, type: !3922)
!3943 = distinct !DISubprogram(name: "mbszero", scope: !1659, file: !1659, line: 1135, type: !3944, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !3946)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{null, !3922}
!3946 = !{!3942}
!3947 = !DILocation(line: 0, scope: !3943, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 137, column: 5, scope: !3938)
!3949 = !DILocalVariable(name: "__dest", arg: 1, scope: !3950, file: !781, line: 57, type: !32)
!3950 = distinct !DISubprogram(name: "memset", scope: !781, file: !781, line: 57, type: !1668, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !3951)
!3951 = !{!3949, !3952, !3953}
!3952 = !DILocalVariable(name: "__ch", arg: 2, scope: !3950, file: !781, line: 57, type: !33)
!3953 = !DILocalVariable(name: "__len", arg: 3, scope: !3950, file: !781, line: 57, type: !35)
!3954 = !DILocation(line: 0, scope: !3950, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 1137, column: 3, scope: !3943, inlinedAt: !3948)
!3956 = !DILocation(line: 59, column: 10, scope: !3950, inlinedAt: !3955)
!3957 = !DILocation(line: 137, column: 5, scope: !3938)
!3958 = !DILocation(line: 138, column: 11, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3919, file: !358, line: 138, column: 7)
!3960 = !DILocation(line: 138, column: 7, scope: !3919)
!3961 = !DILocation(line: 139, column: 5, scope: !3959)
!3962 = !DILocation(line: 143, column: 26, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3919, file: !358, line: 143, column: 7)
!3964 = !DILocation(line: 143, column: 41, scope: !3963)
!3965 = !DILocation(line: 143, column: 7, scope: !3919)
!3966 = !DILocation(line: 145, column: 15, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3968, file: !358, line: 145, column: 11)
!3968 = distinct !DILexicalBlock(scope: !3963, file: !358, line: 144, column: 5)
!3969 = !DILocation(line: 145, column: 11, scope: !3968)
!3970 = !DILocation(line: 146, column: 32, scope: !3967)
!3971 = !DILocation(line: 146, column: 16, scope: !3967)
!3972 = !DILocation(line: 146, column: 14, scope: !3967)
!3973 = !DILocation(line: 146, column: 9, scope: !3967)
!3974 = !DILocation(line: 286, column: 1, scope: !3919)
!3975 = !DISubprogram(name: "mbsinit", scope: !3976, file: !3976, line: 293, type: !3977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!3976 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!33, !3979}
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!3981 = !DILocation(line: 0, scope: !373)
!3982 = !DILocation(line: 46, column: 12, scope: !373)
!3983 = !DILocation(line: 45, column: 12, scope: !373)
!3984 = !DILocation(line: 55, column: 9, scope: !386)
!3985 = !DILocation(line: 55, column: 27, scope: !386)
!3986 = !DILocation(line: 55, column: 9, scope: !387)
!3987 = !DILocation(line: 57, column: 22, scope: !385)
!3988 = !DILocation(line: 0, scope: !385)
!3989 = !DILocation(line: 58, column: 22, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !385, file: !374, line: 58, column: 13)
!3991 = !DILocation(line: 58, column: 26, scope: !3990)
!3992 = !DILocation(line: 58, column: 29, scope: !3990)
!3993 = !DILocation(line: 58, column: 35, scope: !3990)
!3994 = !DILocation(line: 58, column: 13, scope: !385)
!3995 = !DILocation(line: 69, column: 14, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !373, file: !374, line: 69, column: 7)
!3997 = !DILocation(line: 69, column: 63, scope: !3996)
!3998 = !DILocation(line: 69, column: 7, scope: !373)
!3999 = !DILocation(line: 71, column: 7, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3996, file: !374, line: 70, column: 5)
!4001 = !DILocation(line: 71, column: 13, scope: !4000)
!4002 = !DILocation(line: 72, column: 7, scope: !4000)
!4003 = !DILocation(line: 106, column: 7, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !373, file: !374, line: 106, column: 7)
!4005 = !DILocation(line: 106, column: 17, scope: !4004)
!4006 = !DILocation(line: 106, column: 7, scope: !373)
!4007 = !DILocation(line: 115, column: 13, scope: !390)
!4008 = !DILocation(line: 115, column: 7, scope: !373)
!4009 = !DILocation(line: 119, column: 33, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !389, file: !374, line: 119, column: 11)
!4011 = !DILocation(line: 119, column: 26, scope: !4010)
!4012 = !DILocation(line: 0, scope: !389)
!4013 = !DILocation(line: 119, column: 53, scope: !4010)
!4014 = !DILocation(line: 120, column: 11, scope: !4010)
!4015 = !DILocation(line: 120, column: 21, scope: !4010)
!4016 = !DILocation(line: 120, column: 49, scope: !4010)
!4017 = !DILocation(line: 120, column: 14, scope: !4010)
!4018 = !DILocation(line: 120, column: 63, scope: !4010)
!4019 = !DILocation(line: 121, column: 11, scope: !4010)
!4020 = !DILocation(line: 121, column: 36, scope: !4010)
!4021 = !DILocation(line: 121, column: 29, scope: !4010)
!4022 = !DILocation(line: 121, column: 56, scope: !4010)
!4023 = !DILocation(line: 122, column: 11, scope: !4010)
!4024 = !DILocation(line: 122, column: 21, scope: !4010)
!4025 = !DILocation(line: 122, column: 49, scope: !4010)
!4026 = !DILocation(line: 122, column: 14, scope: !4010)
!4027 = !DILocation(line: 122, column: 63, scope: !4010)
!4028 = !DILocation(line: 119, column: 11, scope: !389)
!4029 = !DILocation(line: 126, column: 13, scope: !393)
!4030 = !DILocation(line: 126, column: 7, scope: !373)
!4031 = !DILocation(line: 130, column: 33, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !392, file: !374, line: 130, column: 11)
!4033 = !DILocation(line: 130, column: 26, scope: !4032)
!4034 = !DILocation(line: 0, scope: !392)
!4035 = !DILocation(line: 130, column: 53, scope: !4032)
!4036 = !DILocation(line: 131, column: 11, scope: !4032)
!4037 = !DILocation(line: 131, column: 21, scope: !4032)
!4038 = !DILocation(line: 131, column: 49, scope: !4032)
!4039 = !DILocation(line: 131, column: 14, scope: !4032)
!4040 = !DILocation(line: 131, column: 63, scope: !4032)
!4041 = !DILocation(line: 132, column: 11, scope: !4032)
!4042 = !DILocation(line: 132, column: 36, scope: !4032)
!4043 = !DILocation(line: 132, column: 29, scope: !4032)
!4044 = !DILocation(line: 132, column: 56, scope: !4032)
!4045 = !DILocation(line: 133, column: 11, scope: !4032)
!4046 = !DILocation(line: 133, column: 21, scope: !4032)
!4047 = !DILocation(line: 133, column: 49, scope: !4032)
!4048 = !DILocation(line: 133, column: 14, scope: !4032)
!4049 = !DILocation(line: 133, column: 63, scope: !4032)
!4050 = !DILocation(line: 130, column: 11, scope: !392)
!4051 = !DILocation(line: 155, column: 2, scope: !373)
!4052 = !DILocation(line: 157, column: 23, scope: !395)
!4053 = !DILocation(line: 0, scope: !395)
!4054 = !DILocation(line: 158, column: 12, scope: !395)
!4055 = !DILocation(line: 158, column: 5, scope: !395)
!4056 = !DILocation(line: 159, column: 12, scope: !395)
!4057 = !DILocation(line: 159, column: 5, scope: !395)
!4058 = !DILocation(line: 160, column: 11, scope: !395)
!4059 = !DILocation(line: 162, column: 11, scope: !395)
!4060 = !DILocation(line: 166, column: 1, scope: !373)
!4061 = !DISubprogram(name: "pipe2", scope: !1015, file: !1015, line: 442, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!4062 = !DISubprogram(name: "pipe", scope: !1015, file: !1015, line: 437, type: !4063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!33, !206}
!4065 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !470, file: !470, line: 27, type: !3176, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !4066)
!4066 = !{!4067, !4068, !4069, !4070}
!4067 = !DILocalVariable(name: "ptr", arg: 1, scope: !4065, file: !470, line: 27, type: !32)
!4068 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4065, file: !470, line: 27, type: !35)
!4069 = !DILocalVariable(name: "size", arg: 3, scope: !4065, file: !470, line: 27, type: !35)
!4070 = !DILocalVariable(name: "nbytes", scope: !4065, file: !470, line: 29, type: !35)
!4071 = !DILocation(line: 0, scope: !4065)
!4072 = !DILocation(line: 30, column: 7, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4065, file: !470, line: 30, column: 7)
!4074 = !DILocalVariable(name: "ptr", arg: 1, scope: !4075, file: !3267, line: 2057, type: !32)
!4075 = distinct !DISubprogram(name: "rpl_realloc", scope: !3267, file: !3267, line: 2057, type: !3259, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !4076)
!4076 = !{!4074, !4077}
!4077 = !DILocalVariable(name: "size", arg: 2, scope: !4075, file: !3267, line: 2057, type: !35)
!4078 = !DILocation(line: 0, scope: !4075, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 37, column: 10, scope: !4065)
!4080 = !DILocation(line: 2059, column: 24, scope: !4075, inlinedAt: !4079)
!4081 = !DILocation(line: 2059, column: 10, scope: !4075, inlinedAt: !4079)
!4082 = !DILocation(line: 37, column: 3, scope: !4065)
!4083 = !DILocation(line: 32, column: 7, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4073, file: !470, line: 31, column: 5)
!4085 = !DILocation(line: 32, column: 13, scope: !4084)
!4086 = !DILocation(line: 33, column: 7, scope: !4084)
!4087 = !DILocation(line: 38, column: 1, scope: !4065)
!4088 = distinct !DISubprogram(name: "hard_locale", scope: !473, file: !473, line: 28, type: !4089, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !4091)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!48, !33}
!4091 = !{!4092, !4093}
!4092 = !DILocalVariable(name: "category", arg: 1, scope: !4088, file: !473, line: 28, type: !33)
!4093 = !DILocalVariable(name: "locale", scope: !4088, file: !473, line: 30, type: !4094)
!4094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !4095)
!4095 = !{!4096}
!4096 = !DISubrange(count: 257)
!4097 = !DILocation(line: 0, scope: !4088)
!4098 = !DILocation(line: 30, column: 3, scope: !4088)
!4099 = !DILocation(line: 30, column: 8, scope: !4088)
!4100 = !DILocation(line: 32, column: 7, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4088, file: !473, line: 32, column: 7)
!4102 = !DILocation(line: 32, column: 7, scope: !4088)
!4103 = !DILocalVariable(name: "__s1", arg: 1, scope: !4104, file: !537, line: 1359, type: !6)
!4104 = distinct !DISubprogram(name: "streq", scope: !537, file: !537, line: 1359, type: !538, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !4105)
!4105 = !{!4103, !4106}
!4106 = !DILocalVariable(name: "__s2", arg: 2, scope: !4104, file: !537, line: 1359, type: !6)
!4107 = !DILocation(line: 0, scope: !4104, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 35, column: 9, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4088, file: !473, line: 35, column: 7)
!4110 = !DILocation(line: 1361, column: 11, scope: !4104, inlinedAt: !4108)
!4111 = !DILocation(line: 1361, column: 10, scope: !4104, inlinedAt: !4108)
!4112 = !DILocation(line: 35, column: 29, scope: !4109)
!4113 = !DILocation(line: 0, scope: !4104, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 35, column: 32, scope: !4109)
!4115 = !DILocation(line: 1361, column: 11, scope: !4104, inlinedAt: !4114)
!4116 = !DILocation(line: 1361, column: 10, scope: !4104, inlinedAt: !4114)
!4117 = !DILocation(line: 35, column: 7, scope: !4088)
!4118 = !DILocation(line: 46, column: 3, scope: !4088)
!4119 = !DILocation(line: 47, column: 1, scope: !4088)
!4120 = distinct !DISubprogram(name: "setlocale_null_r", scope: !475, file: !475, line: 154, type: !4121, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !4123)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!33, !33, !39, !35}
!4123 = !{!4124, !4125, !4126}
!4124 = !DILocalVariable(name: "category", arg: 1, scope: !4120, file: !475, line: 154, type: !33)
!4125 = !DILocalVariable(name: "buf", arg: 2, scope: !4120, file: !475, line: 154, type: !39)
!4126 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4120, file: !475, line: 154, type: !35)
!4127 = !DILocation(line: 0, scope: !4120)
!4128 = !DILocation(line: 159, column: 10, scope: !4120)
!4129 = !DILocation(line: 159, column: 3, scope: !4120)
!4130 = distinct !DISubprogram(name: "setlocale_null", scope: !475, file: !475, line: 186, type: !4131, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !4133)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!6, !33}
!4133 = !{!4134}
!4134 = !DILocalVariable(name: "category", arg: 1, scope: !4130, file: !475, line: 186, type: !33)
!4135 = !DILocation(line: 0, scope: !4130)
!4136 = !DILocation(line: 189, column: 10, scope: !4130)
!4137 = !DILocation(line: 189, column: 3, scope: !4130)
!4138 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !477, file: !477, line: 35, type: !4131, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4139)
!4139 = !{!4140, !4141}
!4140 = !DILocalVariable(name: "category", arg: 1, scope: !4138, file: !477, line: 35, type: !33)
!4141 = !DILocalVariable(name: "result", scope: !4138, file: !477, line: 37, type: !6)
!4142 = !DILocation(line: 0, scope: !4138)
!4143 = !DILocation(line: 37, column: 24, scope: !4138)
!4144 = !DILocation(line: 62, column: 3, scope: !4138)
!4145 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !477, file: !477, line: 66, type: !4121, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4146)
!4146 = !{!4147, !4148, !4149, !4150, !4151}
!4147 = !DILocalVariable(name: "category", arg: 1, scope: !4145, file: !477, line: 66, type: !33)
!4148 = !DILocalVariable(name: "buf", arg: 2, scope: !4145, file: !477, line: 66, type: !39)
!4149 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4145, file: !477, line: 66, type: !35)
!4150 = !DILocalVariable(name: "result", scope: !4145, file: !477, line: 111, type: !6)
!4151 = !DILocalVariable(name: "length", scope: !4152, file: !477, line: 125, type: !35)
!4152 = distinct !DILexicalBlock(scope: !4153, file: !477, line: 124, column: 5)
!4153 = distinct !DILexicalBlock(scope: !4145, file: !477, line: 113, column: 7)
!4154 = !DILocation(line: 0, scope: !4145)
!4155 = !DILocation(line: 0, scope: !4138, inlinedAt: !4156)
!4156 = distinct !DILocation(line: 111, column: 24, scope: !4145)
!4157 = !DILocation(line: 37, column: 24, scope: !4138, inlinedAt: !4156)
!4158 = !DILocation(line: 113, column: 14, scope: !4153)
!4159 = !DILocation(line: 113, column: 7, scope: !4145)
!4160 = !DILocation(line: 116, column: 19, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !477, line: 116, column: 11)
!4162 = distinct !DILexicalBlock(scope: !4153, file: !477, line: 114, column: 5)
!4163 = !DILocation(line: 116, column: 11, scope: !4162)
!4164 = !DILocation(line: 120, column: 16, scope: !4161)
!4165 = !DILocation(line: 120, column: 9, scope: !4161)
!4166 = !DILocation(line: 125, column: 23, scope: !4152)
!4167 = !DILocation(line: 0, scope: !4152)
!4168 = !DILocation(line: 126, column: 18, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4152, file: !477, line: 126, column: 11)
!4170 = !DILocation(line: 126, column: 11, scope: !4152)
!4171 = !DILocation(line: 128, column: 39, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4169, file: !477, line: 127, column: 9)
!4173 = !DILocalVariable(name: "__dest", arg: 1, scope: !4174, file: !781, line: 26, type: !784)
!4174 = distinct !DISubprogram(name: "memcpy", scope: !781, file: !781, line: 26, type: !782, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4175)
!4175 = !{!4173, !4176, !4177}
!4176 = !DILocalVariable(name: "__src", arg: 2, scope: !4174, file: !781, line: 26, type: !704)
!4177 = !DILocalVariable(name: "__len", arg: 3, scope: !4174, file: !781, line: 26, type: !35)
!4178 = !DILocation(line: 0, scope: !4174, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 128, column: 11, scope: !4172)
!4180 = !DILocation(line: 29, column: 10, scope: !4174, inlinedAt: !4179)
!4181 = !DILocation(line: 129, column: 11, scope: !4172)
!4182 = !DILocation(line: 133, column: 23, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4184, file: !477, line: 133, column: 15)
!4184 = distinct !DILexicalBlock(scope: !4169, file: !477, line: 132, column: 9)
!4185 = !DILocation(line: 133, column: 15, scope: !4184)
!4186 = !DILocation(line: 138, column: 44, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4183, file: !477, line: 134, column: 13)
!4188 = !DILocation(line: 0, scope: !4174, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 138, column: 15, scope: !4187)
!4190 = !DILocation(line: 29, column: 10, scope: !4174, inlinedAt: !4189)
!4191 = !DILocation(line: 139, column: 15, scope: !4187)
!4192 = !DILocation(line: 139, column: 32, scope: !4187)
!4193 = !DILocation(line: 140, column: 13, scope: !4187)
!4194 = !DILocation(line: 0, scope: !4153)
!4195 = !DILocation(line: 145, column: 1, scope: !4145)
