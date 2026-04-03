; ModuleID = 'src/mkfifo.bc'
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
%struct.selabel_handle = type opaque
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Create named pipes (FIFOs) with the given NAMEs.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"mkfifo\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"  -m, --mode=MODE\0A         set file permission bits to MODE, not a=rw - umask\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"  -Z\0A         set the SELinux security context to default type\0A\00", align 1
@.str.6 = private unnamed_addr constant [127 x i8] c"      --context[=CTX]\0A         like -Z, or if CTX is specified then set the\0A         SELinux or SMACK security context to CTX\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"cannot create fifo %s\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1
@.str.22 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !48
@.str.23 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.45 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.53 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.54 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), align 8, !dbg !147
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !152
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !157
@.str.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.29 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.30 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !159
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.32 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !195
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !165
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !191
@.str.1.38 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.40 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.39 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !193
@.str.4.33 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.34 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.35 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !200
@.str.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !206
@.str.66 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.67 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.68 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.69 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.70 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.71 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.72 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.73 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.74 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.75 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.67, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.69, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.70, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.75, i32 0, i32 0), i8* null], align 8, !dbg !242
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !254
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !272
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !302
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !309
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !274
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !311
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !260
@.str.10.78 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.76 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.79 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.77 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !279
@.str.84 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.85 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.86 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.87 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.88 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.89 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.90 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.91 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.92 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.93 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.94 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.95 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.96 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.97 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.98 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.99 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.100 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.105 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.106 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.107 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.108 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.109 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.110 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.111 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !317
@exit_failure = dso_local global i32 1, align 4, !dbg !325
@.str.128 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.126 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.127 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.139 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !331
@.str.144 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.145 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !432 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !436, metadata !DIExpression()), !dbg !437
  %3 = icmp eq i32 %0, 0, !dbg !438
  br i1 %3, label %9, label %4, !dbg !440

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !441, !tbaa !443
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #32, !dbg !441
  %7 = load i8*, i8** @program_name, align 8, !dbg !441, !tbaa !443
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #32, !dbg !441
  br label %58, !dbg !441

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #32, !dbg !447
  %11 = load i8*, i8** @program_name, align 8, !dbg !447, !tbaa !443
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #32, !dbg !447
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #32, !dbg !449
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !449, !tbaa !443
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !449
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #32, !dbg !450
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !450, !tbaa !443
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #32, !dbg !450
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32, !dbg !454
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !454
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32, !dbg !455
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !455
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([127 x i8], [127 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #32, !dbg !456
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !456
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #32, !dbg !457
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !457
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #32, !dbg !458
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !458
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !459, metadata !DIExpression()) #32, !dbg !478
  %24 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !480
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %24) #32, !dbg !480
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !464, metadata !DIExpression()) #32, !dbg !481
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %24, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32, !dbg !481
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !473, metadata !DIExpression()) #32, !dbg !478
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !474, metadata !DIExpression()) #32, !dbg !478
  %25 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !482
  call void @llvm.dbg.value(metadata %struct.infomap* %25, metadata !474, metadata !DIExpression()) #32, !dbg !478
  br label %26, !dbg !483

26:                                               ; preds = %31, %9
  %27 = phi i8* [ %34, %31 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %9 ]
  %28 = phi %struct.infomap* [ %32, %31 ], [ %25, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !474, metadata !DIExpression()) #32, !dbg !478
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !491
  call void @llvm.dbg.value(metadata i8* %27, metadata !490, metadata !DIExpression()) #32, !dbg !491
  %29 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %27) #33, !dbg !493
  %30 = icmp eq i32 %29, 0, !dbg !494
  br i1 %30, label %36, label %31, !dbg !483

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.infomap, %struct.infomap* %28, i64 1, !dbg !495
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !474, metadata !DIExpression()) #32, !dbg !478
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 0, i32 0, !dbg !496
  %34 = load i8*, i8** %33, align 8, !dbg !496, !tbaa !497
  %35 = icmp eq i8* %34, null, !dbg !499
  br i1 %35, label %36, label %26, !dbg !500, !llvm.loop !501

36:                                               ; preds = %31, %26
  %37 = phi %struct.infomap* [ %28, %26 ], [ %32, %31 ]
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %37, i64 0, i32 1, !dbg !503
  %39 = load i8*, i8** %38, align 8, !dbg !503, !tbaa !505
  %40 = icmp eq i8* %39, null, !dbg !506
  %41 = select i1 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %39, !dbg !507
  call void @llvm.dbg.value(metadata i8* %41, metadata !473, metadata !DIExpression()) #32, !dbg !478
  tail call void @emit_bug_reporting_address() #32, !dbg !508
  %42 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !509
  call void @llvm.dbg.value(metadata i8* %42, metadata !476, metadata !DIExpression()) #32, !dbg !478
  %43 = icmp eq i8* %42, null, !dbg !510
  br i1 %43, label %51, label %44, !dbg !512

44:                                               ; preds = %36
  %45 = tail call i32 @strncmp(i8* noundef nonnull %42, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i64 noundef 3) #33, !dbg !513
  %46 = icmp eq i32 %45, 0, !dbg !513
  br i1 %46, label %51, label %47, !dbg !514

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.54, i64 0, i64 0), i32 noundef 5) #32, !dbg !515
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !515, !tbaa !443
  %50 = tail call i32 @fputs_unlocked(i8* noundef %48, %struct._IO_FILE* noundef %49) #32, !dbg !515
  br label %51, !dbg !517

51:                                               ; preds = %36, %44, %47
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !518
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), metadata !490, metadata !DIExpression()) #32, !dbg !518
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #32, !dbg !478
  %52 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0), i32 noundef 5) #32, !dbg !520
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %52, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !520
  %54 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.56, i64 0, i64 0), i32 noundef 5) #32, !dbg !521
  %55 = icmp eq i8* %41, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), !dbg !521
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !521
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %54, i8* noundef %41, i8* noundef %56) #32, !dbg !521
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %24) #32, !dbg !522
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 noundef %0) #34, !dbg !523
  unreachable, !dbg !523
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !524 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !528 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !50 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !55, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i8* %0, metadata !56, metadata !DIExpression()), !dbg !533
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !534, !tbaa !535
  %3 = icmp eq i32 %2, -1, !dbg !537
  br i1 %3, label %4, label %16, !dbg !538

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #32, !dbg !539
  call void @llvm.dbg.value(metadata i8* %5, metadata !57, metadata !DIExpression()), !dbg !540
  %6 = icmp eq i8* %5, null, !dbg !541
  br i1 %6, label %14, label %7, !dbg !542

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !543, !tbaa !544
  %9 = icmp eq i8 %8, 0, !dbg !543
  br i1 %9, label %14, label %10, !dbg !545

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !484, metadata !DIExpression()) #32, !dbg !546
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), metadata !490, metadata !DIExpression()) #32, !dbg !546
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #33, !dbg !548
  %12 = icmp eq i32 %11, 0, !dbg !549
  %13 = zext i1 %12 to i32, !dbg !545
  br label %14, !dbg !545

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !550, !tbaa !535
  br label %16, !dbg !551

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !552
  %18 = icmp eq i32 %17, 0, !dbg !552
  br i1 %18, label %22, label %19, !dbg !554

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !555, !tbaa !443
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !555
  br label %121, !dbg !557

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !60, metadata !DIExpression()), !dbg !533
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0)) #33, !dbg !558
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !559
  call void @llvm.dbg.value(metadata i8* %24, metadata !62, metadata !DIExpression()), !dbg !533
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #33, !dbg !560
  call void @llvm.dbg.value(metadata i8* %25, metadata !63, metadata !DIExpression()), !dbg !533
  %26 = icmp eq i8* %25, null, !dbg !561
  br i1 %26, label %53, label %27, !dbg !562

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !563
  br i1 %28, label %53, label %29, !dbg !564

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !64, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 0, metadata !68, metadata !DIExpression()), !dbg !565
  %30 = icmp ult i8* %24, %25, !dbg !566
  br i1 %30, label %31, label %53, !dbg !567

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35, !dbg !533
  %33 = load i16*, i16** %32, align 8, !tbaa !443
  br label %34, !dbg !567

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !64, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 %36, metadata !68, metadata !DIExpression()), !dbg !565
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !568
  call void @llvm.dbg.value(metadata i8* %37, metadata !64, metadata !DIExpression()), !dbg !565
  %38 = load i8, i8* %35, align 1, !dbg !568, !tbaa !544
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !568
  %41 = load i16, i16* %40, align 2, !dbg !568, !tbaa !569
  %42 = lshr i16 %41, 13, !dbg !571
  %43 = and i16 %42, 1, !dbg !571
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !572
  call void @llvm.dbg.value(metadata i64 %45, metadata !68, metadata !DIExpression()), !dbg !565
  %46 = icmp ult i8* %37, %25, !dbg !566
  %47 = icmp ult i64 %45, 2, !dbg !573
  %48 = select i1 %46, i1 %47, i1 false, !dbg !573
  br i1 %48, label %34, label %49, !dbg !567, !llvm.loop !574

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !575
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !577
  %52 = xor i1 %50, true, !dbg !577
  br label %53, !dbg !577

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !533
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !60, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i8* %54, metadata !63, metadata !DIExpression()), !dbg !533
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)) #33, !dbg !578
  call void @llvm.dbg.value(metadata i64 %56, metadata !69, metadata !DIExpression()), !dbg !533
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !579
  call void @llvm.dbg.value(metadata i8* %57, metadata !70, metadata !DIExpression()), !dbg !533
  br label %58, !dbg !580

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !533
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !60, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i8* %59, metadata !70, metadata !DIExpression()), !dbg !533
  %61 = load i8, i8* %59, align 1, !dbg !581, !tbaa !544
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !582

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !583
  %64 = load i8, i8* %63, align 1, !dbg !586, !tbaa !544
  %65 = icmp ne i8 %64, 45, !dbg !587
  %66 = select i1 %65, i1 %60, i1 false, !dbg !588
  br label %67, !dbg !588

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !60, metadata !DIExpression()), !dbg !533
  %69 = tail call i16** @__ctype_b_loc() #35, !dbg !589
  %70 = load i16*, i16** %69, align 8, !dbg !589, !tbaa !443
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !589
  %73 = load i16, i16* %72, align 2, !dbg !589, !tbaa !569
  %74 = and i16 %73, 8192, !dbg !589
  %75 = icmp eq i16 %74, 0, !dbg !589
  br i1 %75, label %89, label %76, !dbg !591

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !592
  br i1 %77, label %91, label %78, !dbg !595

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !596
  %80 = load i8, i8* %79, align 1, !dbg !596, !tbaa !544
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !596
  %83 = load i16, i16* %82, align 2, !dbg !596, !tbaa !569
  %84 = and i16 %83, 8192, !dbg !596
  %85 = icmp eq i16 %84, 0, !dbg !596
  br i1 %85, label %86, label %91, !dbg !597

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !598
  br i1 %88, label %89, label %91, !dbg !598

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !600
  call void @llvm.dbg.value(metadata i8* %90, metadata !70, metadata !DIExpression()), !dbg !533
  br label %58, !dbg !580, !llvm.loop !601

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !603
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !603, !tbaa !443
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !603
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), metadata !490, metadata !DIExpression()) #32, !dbg !604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !606
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !608
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !610
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !612
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !614
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !616
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !618
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !620
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !622
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !130, metadata !DIExpression()), !dbg !533
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i64 noundef 6) #33, !dbg !624
  %96 = icmp eq i32 %95, 0, !dbg !624
  br i1 %96, label %100, label %97, !dbg !626

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i64 noundef 9) #33, !dbg !627
  %99 = icmp eq i32 %98, 0, !dbg !627
  br i1 %99, label %100, label %103, !dbg !628

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !629
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32, !dbg !629
  br label %106, !dbg !631

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !632
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32, !dbg !632
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !443
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !634
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !635, !tbaa !443
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !635
  %111 = ptrtoint i8* %59 to i64, !dbg !636
  %112 = sub i64 %111, %92, !dbg !636
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !636, !tbaa !443
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !636
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637, !tbaa !443
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !637
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !638, !tbaa !443
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !638
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !639, !tbaa !443
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !639
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !640
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
declare !dbg !641 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !645 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !649 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !655 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !660, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i8** %1, metadata !661, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i8* null, metadata !662, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i8* null, metadata !663, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata %struct.selabel_handle* null, metadata !664, metadata !DIExpression()), !dbg !684
  %3 = load i8*, i8** %1, align 8, !dbg !685, !tbaa !443
  tail call void @set_program_name(i8* noundef %3) #32, !dbg !686
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #32, !dbg !687
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #32, !dbg !688
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #32, !dbg !689
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32, !dbg !690
  br label %8, !dbg !691

8:                                                ; preds = %12, %2
  %9 = phi i8* [ %13, %12 ], [ null, %2 ]
  br label %10, !dbg !691

10:                                               ; preds = %19, %8
  call void @llvm.dbg.value(metadata i8* %9, metadata !662, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i8* null, metadata !663, metadata !DIExpression()), !dbg !684
  %11 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #32, !dbg !692
  call void @llvm.dbg.value(metadata i32 %11, metadata !668, metadata !DIExpression()), !dbg !684
  switch i32 %11, label %25 [
    i32 -1, label %26
    i32 109, label %12
    i32 90, label %14
    i32 -2, label %20
    i32 -3, label %21
  ], !dbg !691

12:                                               ; preds = %10
  %13 = load i8*, i8** @optarg, align 8, !dbg !693, !tbaa !443
  call void @llvm.dbg.value(metadata i8* %13, metadata !662, metadata !DIExpression()), !dbg !684
  br label %8, !dbg !696, !llvm.loop !697

14:                                               ; preds = %10
  %15 = load i8*, i8** @optarg, align 8, !dbg !699, !tbaa !443
  %16 = icmp eq i8* %15, null, !dbg !699
  br i1 %16, label %19, label %17, !dbg !703

17:                                               ; preds = %14
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #32, !dbg !704
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %18) #32, !dbg !704
  br label %19, !dbg !706

19:                                               ; preds = %17, %14
  br label %10, !dbg !684, !llvm.loop !697

20:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #36, !dbg !707
  unreachable, !dbg !707

21:                                               ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !708, !tbaa !443
  %23 = load i8*, i8** @Version, align 8, !dbg !708, !tbaa !443
  %24 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #32, !dbg !708
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* noundef %23, i8* noundef %24, i8* noundef null) #32, !dbg !708
  tail call void @exit(i32 noundef 0) #34, !dbg !708
  unreachable, !dbg !708

25:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #36, !dbg !709
  unreachable, !dbg !709

26:                                               ; preds = %10
  %27 = load i32, i32* @optind, align 4, !dbg !710, !tbaa !535
  %28 = icmp eq i32 %27, %0, !dbg !712
  br i1 %28, label %29, label %31, !dbg !713

29:                                               ; preds = %26
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #32, !dbg !714
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %30) #32, !dbg !714
  tail call void @usage(i32 noundef 1) #36, !dbg !716
  unreachable, !dbg !716

31:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 438, metadata !672, metadata !DIExpression()), !dbg !684
  %32 = icmp eq i8* %9, null, !dbg !717
  br i1 %32, label %46, label %33, !dbg !718

33:                                               ; preds = %31
  %34 = tail call noalias %struct.mode_change* @mode_compile(i8* noundef nonnull %9) #32, !dbg !719
  call void @llvm.dbg.value(metadata %struct.mode_change* %34, metadata !676, metadata !DIExpression()), !dbg !720
  %35 = icmp eq %struct.mode_change* %34, null, !dbg !721
  br i1 %35, label %36, label %38, !dbg !723

36:                                               ; preds = %33
  %37 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #32, !dbg !724
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %37) #32, !dbg !724
  unreachable, !dbg !724

38:                                               ; preds = %33
  %39 = tail call i32 @umask(i32 noundef 0) #32, !dbg !725
  call void @llvm.dbg.value(metadata i32 %39, metadata !682, metadata !DIExpression()), !dbg !720
  %40 = tail call i32 @umask(i32 noundef %39) #32, !dbg !726
  %41 = tail call i32 @mode_adjust(i32 noundef 438, i1 noundef false, i32 noundef %39, %struct.mode_change* noundef nonnull %34, i32* noundef null) #33, !dbg !727
  call void @llvm.dbg.value(metadata i32 %41, metadata !672, metadata !DIExpression()), !dbg !684
  %42 = bitcast %struct.mode_change* %34 to i8*, !dbg !728
  tail call void @free(i8* noundef %42) #32, !dbg !729
  %43 = icmp ult i32 %41, 512, !dbg !730
  br i1 %43, label %48, label %44, !dbg !732

44:                                               ; preds = %38
  %45 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #32, !dbg !733
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %45) #32, !dbg !733
  unreachable, !dbg !733

46:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i32 438, metadata !672, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i32 0, metadata !683, metadata !DIExpression()), !dbg !684
  %47 = icmp slt i32 %27, %0, !dbg !734
  br i1 %47, label %51, label %103, !dbg !737

48:                                               ; preds = %38
  %49 = load i32, i32* @optind, align 4, !dbg !738, !tbaa !535
  call void @llvm.dbg.value(metadata i32 438, metadata !672, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i32 0, metadata !683, metadata !DIExpression()), !dbg !684
  %50 = icmp slt i32 %49, %0, !dbg !734
  br i1 %50, label %73, label %103, !dbg !737

51:                                               ; preds = %46, %68
  %52 = phi i32 [ %71, %68 ], [ %27, %46 ]
  %53 = phi i32 [ %69, %68 ], [ 0, %46 ]
  call void @llvm.dbg.value(metadata i32 %53, metadata !683, metadata !DIExpression()), !dbg !684
  %54 = sext i32 %52 to i64, !dbg !739
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54, !dbg !739
  %56 = load i8*, i8** %55, align 8, !dbg !739, !tbaa !443
  %57 = tail call i32 @mkfifo(i8* noundef %56, i32 noundef 438) #32, !dbg !742
  %58 = icmp eq i32 %57, 0, !dbg !743
  br i1 %58, label %68, label %59, !dbg !744

59:                                               ; preds = %51
  %60 = tail call i32* @__errno_location() #35, !dbg !745
  %61 = load i32, i32* %60, align 4, !dbg !745, !tbaa !535
  %62 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i32 noundef 5) #32, !dbg !745
  %63 = load i32, i32* @optind, align 4, !dbg !745, !tbaa !535
  %64 = sext i32 %63 to i64, !dbg !745
  %65 = getelementptr inbounds i8*, i8** %1, i64 %64, !dbg !745
  %66 = load i8*, i8** %65, align 8, !dbg !745, !tbaa !443
  %67 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %66) #32, !dbg !745
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %61, i8* noundef %62, i8* noundef %67) #32, !dbg !745
  call void @llvm.dbg.value(metadata i32 1, metadata !683, metadata !DIExpression()), !dbg !684
  br label %68, !dbg !747

68:                                               ; preds = %51, %59
  %69 = phi i32 [ 1, %59 ], [ %53, %51 ], !dbg !684
  call void @llvm.dbg.value(metadata i32 %69, metadata !683, metadata !DIExpression()), !dbg !684
  %70 = load i32, i32* @optind, align 4, !dbg !748, !tbaa !535
  %71 = add nsw i32 %70, 1, !dbg !748
  store i32 %71, i32* @optind, align 4, !dbg !748, !tbaa !535
  %72 = icmp slt i32 %71, %0, !dbg !734
  br i1 %72, label %51, label %103, !dbg !737, !llvm.loop !749

73:                                               ; preds = %48, %98
  %74 = phi i32 [ %101, %98 ], [ %49, %48 ]
  %75 = phi i32 [ %99, %98 ], [ 0, %48 ]
  call void @llvm.dbg.value(metadata i32 %75, metadata !683, metadata !DIExpression()), !dbg !684
  %76 = sext i32 %74 to i64, !dbg !739
  %77 = getelementptr inbounds i8*, i8** %1, i64 %76, !dbg !739
  %78 = load i8*, i8** %77, align 8, !dbg !739, !tbaa !443
  %79 = tail call i32 @mkfifo(i8* noundef %78, i32 noundef %41) #32, !dbg !742
  %80 = icmp eq i32 %79, 0, !dbg !743
  br i1 %80, label %81, label %88, !dbg !744

81:                                               ; preds = %73
  %82 = load i32, i32* @optind, align 4, !dbg !751, !tbaa !535
  %83 = sext i32 %82 to i64, !dbg !753
  %84 = getelementptr inbounds i8*, i8** %1, i64 %83, !dbg !753
  %85 = load i8*, i8** %84, align 8, !dbg !753, !tbaa !443
  %86 = tail call i32 @lchmod(i8* noundef %85, i32 noundef %41) #32, !dbg !754
  %87 = icmp eq i32 %86, 0, !dbg !755
  br i1 %87, label %98, label %88, !dbg !756

88:                                               ; preds = %81, %73
  %89 = phi i8* [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), %73 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), %81 ]
  %90 = tail call i32* @__errno_location() #35, !dbg !757
  %91 = load i32, i32* %90, align 4, !dbg !757, !tbaa !535
  %92 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %89, i32 noundef 5) #32, !dbg !757
  %93 = load i32, i32* @optind, align 4, !dbg !757, !tbaa !535
  %94 = sext i32 %93 to i64, !dbg !757
  %95 = getelementptr inbounds i8*, i8** %1, i64 %94, !dbg !757
  %96 = load i8*, i8** %95, align 8, !dbg !757, !tbaa !443
  %97 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %96) #32, !dbg !757
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %91, i8* noundef %92, i8* noundef %97) #32, !dbg !757
  br label %98, !dbg !748

98:                                               ; preds = %88, %81
  %99 = phi i32 [ %75, %81 ], [ 1, %88 ], !dbg !684
  call void @llvm.dbg.value(metadata i32 %99, metadata !683, metadata !DIExpression()), !dbg !684
  %100 = load i32, i32* @optind, align 4, !dbg !748, !tbaa !535
  %101 = add nsw i32 %100, 1, !dbg !748
  store i32 %101, i32* @optind, align 4, !dbg !748, !tbaa !535
  %102 = icmp slt i32 %101, %0, !dbg !734
  br i1 %102, label %73, label %103, !dbg !737, !llvm.loop !749

103:                                              ; preds = %98, %68, %48, %46
  %104 = phi i32 [ 0, %46 ], [ 0, %48 ], [ %69, %68 ], [ %99, %98 ], !dbg !684
  ret i32 %104, !dbg !758
}

; Function Attrs: nounwind
declare !dbg !759 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !762 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !763 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !766 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !772 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !776 i32 @mkfifo(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !779 i32 @lchmod(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !780 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !782, metadata !DIExpression()), !dbg !783
  store i8* %0, i8** @file_name, align 8, !dbg !784, !tbaa !443
  ret void, !dbg !785
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !786 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !790, metadata !DIExpression()), !dbg !791
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !792, !tbaa !793
  ret void, !dbg !795
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !796 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !801, !tbaa !443
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !802
  %3 = icmp eq i32 %2, 0, !dbg !803
  br i1 %3, label %22, label %4, !dbg !804

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !805, !tbaa !793, !range !806
  %6 = icmp eq i8 %5, 0, !dbg !805
  br i1 %6, label %11, label %7, !dbg !807

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !808
  %9 = load i32, i32* %8, align 4, !dbg !808, !tbaa !535
  %10 = icmp eq i32 %9, 32, !dbg !809
  br i1 %10, label %22, label %11, !dbg !810

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.29, i64 0, i64 0), i32 noundef 5) #32, !dbg !811
  call void @llvm.dbg.value(metadata i8* %12, metadata !798, metadata !DIExpression()), !dbg !812
  %13 = load i8*, i8** @file_name, align 8, !dbg !813, !tbaa !443
  %14 = icmp eq i8* %13, null, !dbg !813
  %15 = tail call i32* @__errno_location() #35, !dbg !815
  %16 = load i32, i32* %15, align 4, !dbg !815, !tbaa !535
  br i1 %14, label %19, label %17, !dbg !816

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !817
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.30, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !817
  br label %20, !dbg !817

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.31, i64 0, i64 0), i8* noundef %12) #32, !dbg !818
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !819, !tbaa !535
  tail call void @_exit(i32 noundef %21) #34, !dbg !820
  unreachable, !dbg !820

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !821, !tbaa !443
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !823
  %25 = icmp eq i32 %24, 0, !dbg !824
  br i1 %25, label %28, label %26, !dbg !825

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !826, !tbaa !535
  tail call void @_exit(i32 noundef %27) #34, !dbg !827
  unreachable, !dbg !827

28:                                               ; preds = %22
  ret void, !dbg !828
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !829 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !833, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i32 %1, metadata !834, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i8* %2, metadata !835, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !836, metadata !DIExpression()), !dbg !838
  tail call fastcc void @flush_stdout(), !dbg !839
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !840, !tbaa !443
  %7 = icmp eq void ()* %6, null, !dbg !840
  br i1 %7, label %9, label %8, !dbg !842

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !843
  br label %13, !dbg !843

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !844, !tbaa !443
  %11 = tail call i8* @getprogname() #33, !dbg !844
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8* noundef %11) #32, !dbg !844
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !846
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !846
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !846, !tbaa.struct !847
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !846
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !846
  ret void, !dbg !848
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !849 {
  call void @llvm.dbg.value(metadata i32 1, metadata !851, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i32 1, metadata !853, metadata !DIExpression()) #32, !dbg !858
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !861
  %2 = icmp slt i32 %1, 0, !dbg !862
  br i1 %2, label %6, label %3, !dbg !863

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !864, !tbaa !443
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !864
  br label %6, !dbg !864

6:                                                ; preds = %3, %0
  ret void, !dbg !865
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !866 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !868, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i32 %1, metadata !869, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8* %2, metadata !870, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !871, metadata !DIExpression()), !dbg !873
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !874, !tbaa !443
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !875
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !876, metadata !DIExpression()) #32, !dbg !919
  call void @llvm.dbg.value(metadata i8* %2, metadata !917, metadata !DIExpression()) #32, !dbg !919
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !921
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !921, !noalias !922
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !921
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !921
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !921, !noalias !922
  %11 = load i32, i32* @error_message_count, align 4, !dbg !926, !tbaa !535
  %12 = add i32 %11, 1, !dbg !926
  store i32 %12, i32* @error_message_count, align 4, !dbg !926, !tbaa !535
  %13 = icmp eq i32 %1, 0, !dbg !927
  br i1 %13, label %24, label %14, !dbg !929

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !930, metadata !DIExpression()) #32, !dbg !938
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !940
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !934, metadata !DIExpression()) #32, !dbg !941
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !942
  call void @llvm.dbg.value(metadata i8* %16, metadata !933, metadata !DIExpression()) #32, !dbg !938
  %17 = icmp eq i8* %16, null, !dbg !943
  br i1 %17, label %18, label %20, !dbg !945

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.34, i64 0, i64 0), i32 noundef 5) #32, !dbg !946
  call void @llvm.dbg.value(metadata i8* %19, metadata !933, metadata !DIExpression()) #32, !dbg !938
  br label %20, !dbg !947

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !938
  call void @llvm.dbg.value(metadata i8* %21, metadata !933, metadata !DIExpression()) #32, !dbg !938
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !948, !tbaa !443
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.35, i64 0, i64 0), i8* noundef %21) #32, !dbg !948
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !949
  br label %24, !dbg !950

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !951, !tbaa !443
  call void @llvm.dbg.value(metadata i32 10, metadata !952, metadata !DIExpression()) #32, !dbg !959
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !958, metadata !DIExpression()) #32, !dbg !959
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !961
  %27 = load i8*, i8** %26, align 8, !dbg !961, !tbaa !962
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !961
  %29 = load i8*, i8** %28, align 8, !dbg !961, !tbaa !965
  %30 = icmp ult i8* %27, %29, !dbg !961
  br i1 %30, label %33, label %31, !dbg !961, !prof !966

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !961
  br label %35, !dbg !961

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !961
  store i8* %34, i8** %26, align 8, !dbg !961, !tbaa !962
  store i8 10, i8* %27, align 1, !dbg !961, !tbaa !544
  br label %35, !dbg !961

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !967, !tbaa !443
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !967
  %38 = icmp eq i32 %0, 0, !dbg !968
  br i1 %38, label %40, label %39, !dbg !970

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #34, !dbg !971
  unreachable, !dbg !971

40:                                               ; preds = %35
  ret void, !dbg !972
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !973 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !977 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !980 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !984 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !988, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i32 %1, metadata !989, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i8* %2, metadata !990, metadata !DIExpression()), !dbg !992
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !993
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !993
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !991, metadata !DIExpression()), !dbg !994
  call void @llvm.va_start(i8* nonnull %6), !dbg !995
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !996
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !996
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !996, !tbaa.struct !847
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !996
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !996
  call void @llvm.va_end(i8* nonnull %6), !dbg !997
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !998
  ret void, !dbg !998
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !167 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !185, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i32 %1, metadata !186, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8* %2, metadata !187, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i32 %3, metadata !188, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8* %4, metadata !189, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !190, metadata !DIExpression()), !dbg !1000
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1001, !tbaa !535
  %9 = icmp eq i32 %8, 0, !dbg !1001
  br i1 %9, label %24, label %10, !dbg !1003

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1004, !tbaa !535
  %12 = icmp eq i32 %11, %3, !dbg !1007
  br i1 %12, label %13, label %23, !dbg !1008

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1009, !tbaa !443
  %15 = icmp eq i8* %14, %2, !dbg !1010
  br i1 %15, label %39, label %16, !dbg !1011

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1012
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1013
  br i1 %19, label %20, label %23, !dbg !1013

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #33, !dbg !1014
  %22 = icmp eq i32 %21, 0, !dbg !1015
  br i1 %22, label %39, label %23, !dbg !1016

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1017, !tbaa !443
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1018, !tbaa !535
  br label %24, !dbg !1019

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1020
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1021, !tbaa !443
  %26 = icmp eq void ()* %25, null, !dbg !1021
  br i1 %26, label %28, label %27, !dbg !1023

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !1024
  br label %32, !dbg !1024

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1025, !tbaa !443
  %30 = tail call i8* @getprogname() #33, !dbg !1025
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.38, i64 0, i64 0), i8* noundef %30) #32, !dbg !1025
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1027, !tbaa !443
  %34 = icmp eq i8* %2, null, !dbg !1027
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.39, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.40, i64 0, i64 0), !dbg !1027
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !1027
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1028
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1028
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1028
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1028, !tbaa.struct !847
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1028
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1028
  br label %39, !dbg !1029

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1029
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1030 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1034, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.value(metadata i32 %1, metadata !1035, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.value(metadata i8* %2, metadata !1036, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.value(metadata i32 %3, metadata !1037, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.value(metadata i8* %4, metadata !1038, metadata !DIExpression()), !dbg !1040
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1041
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1041
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1039, metadata !DIExpression()), !dbg !1042
  call void @llvm.va_start(i8* nonnull %8), !dbg !1043
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1044
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1044
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1044, !tbaa.struct !847
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !1044
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1044
  call void @llvm.va_end(i8* nonnull %8), !dbg !1045
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1046
  ret void, !dbg !1046
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 !dbg !1047 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1050, !tbaa !443
  ret i8* %1, !dbg !1051
}

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.mode_change* @mode_compile(i8* noundef %0) local_unnamed_addr #12 !dbg !1052 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1064, metadata !DIExpression()), !dbg !1094
  %2 = load i8, i8* %0, align 1, !dbg !1095, !tbaa !544
  %3 = and i8 %2, -8, !dbg !1096
  %4 = icmp eq i8 %3, 48, !dbg !1096
  br i1 %4, label %5, label %39, !dbg !1096

5:                                                ; preds = %1, %15
  %6 = phi i8 [ %16, %15 ], [ %2, %1 ], !dbg !1097
  %7 = phi i32 [ %13, %15 ], [ 0, %1 ], !dbg !1099
  %8 = phi i8* [ %10, %15 ], [ %0, %1 ], !dbg !1099
  call void @llvm.dbg.value(metadata i8* %8, metadata !1065, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %7, metadata !1068, metadata !DIExpression()), !dbg !1099
  %9 = shl i32 %7, 3, !dbg !1100
  %10 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1101
  call void @llvm.dbg.value(metadata i8* %10, metadata !1065, metadata !DIExpression()), !dbg !1099
  %11 = zext i8 %6 to i32, !dbg !1097
  %12 = add i32 %9, -48, !dbg !1102
  %13 = add i32 %12, %11, !dbg !1103
  call void @llvm.dbg.value(metadata i32 %13, metadata !1068, metadata !DIExpression()), !dbg !1099
  %14 = icmp ugt i32 %13, 4095, !dbg !1104
  br i1 %14, label %142, label %15, !dbg !1106

15:                                               ; preds = %5
  %16 = load i8, i8* %10, align 1, !dbg !1107, !tbaa !544
  %17 = and i8 %16, -8, !dbg !1108
  %18 = icmp eq i8 %17, 48, !dbg !1108
  br i1 %18, label %5, label %19, !dbg !1108, !llvm.loop !1109

19:                                               ; preds = %15
  %20 = icmp eq i8 %16, 0, !dbg !1112
  br i1 %20, label %21, label %142, !dbg !1114

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %13, metadata !1069, metadata !DIExpression()), !dbg !1099
  %22 = ptrtoint i8* %10 to i64, !dbg !1115
  %23 = ptrtoint i8* %0 to i64, !dbg !1115
  %24 = sub i64 %22, %23, !dbg !1115
  %25 = icmp slt i64 %24, 5, !dbg !1116
  %26 = and i32 %13, 3072, !dbg !1117
  %27 = or i32 %26, 1023, !dbg !1117
  %28 = select i1 %25, i32 %27, i32 4095, !dbg !1117
  call void @llvm.dbg.value(metadata i32 %28, metadata !1070, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %13, metadata !1118, metadata !DIExpression()) #32, !dbg !1125
  call void @llvm.dbg.value(metadata i32 %28, metadata !1123, metadata !DIExpression()) #32, !dbg !1125
  %29 = tail call noalias nonnull i8* @xmalloc(i64 noundef 32) #38, !dbg !1127
  %30 = bitcast i8* %29 to %struct.mode_change*, !dbg !1127
  call void @llvm.dbg.value(metadata %struct.mode_change* %30, metadata !1124, metadata !DIExpression()) #32, !dbg !1125
  store i8 61, i8* %29, align 4, !dbg !1128, !tbaa !1129
  %31 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1131
  store i8 1, i8* %31, align 1, !dbg !1132, !tbaa !1133
  %32 = getelementptr inbounds i8, i8* %29, i64 4, !dbg !1134
  %33 = bitcast i8* %32 to i32*, !dbg !1134
  store i32 4095, i32* %33, align 4, !dbg !1135, !tbaa !1136
  %34 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !1137
  %35 = bitcast i8* %34 to i32*, !dbg !1137
  store i32 %13, i32* %35, align 4, !dbg !1138, !tbaa !1139
  %36 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !1140
  %37 = bitcast i8* %36 to i32*, !dbg !1140
  store i32 %28, i32* %37, align 4, !dbg !1141, !tbaa !1142
  %38 = getelementptr inbounds i8, i8* %29, i64 17, !dbg !1143
  store i8 0, i8* %38, align 1, !dbg !1144, !tbaa !1133
  br label %142, !dbg !1145

39:                                               ; preds = %1, %47
  %40 = phi i8 [ %51, %47 ], [ %2, %1 ], !dbg !1146
  %41 = phi i64 [ %49, %47 ], [ 1, %1 ], !dbg !1148
  %42 = phi i8* [ %50, %47 ], [ %0, %1 ], !dbg !1149
  call void @llvm.dbg.value(metadata i8* %42, metadata !1074, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %41, metadata !1072, metadata !DIExpression()), !dbg !1148
  switch i8 %40, label %46 [
    i8 0, label %43
    i8 61, label %47
    i8 43, label %47
    i8 45, label %47
  ], !dbg !1150

43:                                               ; preds = %39
  %44 = tail call noalias nonnull i8* @xnmalloc(i64 noundef %41, i64 noundef 16) #39, !dbg !1151
  %45 = bitcast i8* %44 to %struct.mode_change*, !dbg !1151
  call void @llvm.dbg.value(metadata %struct.mode_change* %45, metadata !1071, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 0, metadata !1076, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %0, metadata !1077, metadata !DIExpression()), !dbg !1094
  br label %52, !dbg !1152

46:                                               ; preds = %39
  br label %47, !dbg !1153

47:                                               ; preds = %39, %39, %39, %46
  %48 = phi i64 [ 0, %46 ], [ 1, %39 ], [ 1, %39 ], [ 1, %39 ]
  %49 = add i64 %48, %41, !dbg !1154
  call void @llvm.dbg.value(metadata i64 %49, metadata !1072, metadata !DIExpression()), !dbg !1148
  %50 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1155
  call void @llvm.dbg.value(metadata i8* %50, metadata !1074, metadata !DIExpression()), !dbg !1149
  %51 = load i8, i8* %50, align 1, !dbg !1146, !tbaa !544
  br label %39, !dbg !1156, !llvm.loop !1157

52:                                               ; preds = %137, %43
  %53 = phi i64 [ 0, %43 ], [ %125, %137 ], !dbg !1159
  %54 = phi i8* [ %0, %43 ], [ %138, %137 ], !dbg !1160
  call void @llvm.dbg.value(metadata i32 undef, metadata !1084, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8* %54, metadata !1077, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %53, metadata !1076, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i32 0, metadata !1078, metadata !DIExpression()), !dbg !1162
  br label %55, !dbg !1163

55:                                               ; preds = %63, %52
  %56 = phi i8* [ %54, %52 ], [ %66, %63 ], !dbg !1160
  %57 = phi i32 [ 0, %52 ], [ %65, %63 ], !dbg !1162
  call void @llvm.dbg.value(metadata i32 %57, metadata !1078, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i8* %56, metadata !1077, metadata !DIExpression()), !dbg !1094
  %58 = load i8, i8* %56, align 1, !dbg !1164, !tbaa !544
  switch i8 %58, label %141 [
    i8 117, label %63
    i8 103, label %60
    i8 111, label %61
    i8 97, label %62
    i8 61, label %59
    i8 43, label %59
    i8 45, label %59
  ], !dbg !1167

59:                                               ; preds = %55, %55, %55
  br label %67, !dbg !1168

60:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 undef, metadata !1078, metadata !DIExpression()), !dbg !1162
  br label %63, !dbg !1169

61:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 undef, metadata !1078, metadata !DIExpression()), !dbg !1162
  br label %63, !dbg !1171

62:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 undef, metadata !1078, metadata !DIExpression()), !dbg !1162
  br label %63, !dbg !1172

63:                                               ; preds = %55, %60, %61, %62
  %64 = phi i32 [ 1080, %60 ], [ 519, %61 ], [ 4095, %62 ], [ 2496, %55 ]
  %65 = or i32 %57, %64, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %65, metadata !1078, metadata !DIExpression()), !dbg !1162
  %66 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !1174
  call void @llvm.dbg.value(metadata i8* %66, metadata !1077, metadata !DIExpression()), !dbg !1094
  br label %55, !dbg !1175, !llvm.loop !1176

67:                                               ; preds = %136, %59
  %68 = phi i8 [ %58, %59 ], [ %135, %136 ], !dbg !1179
  %69 = phi i64 [ %53, %59 ], [ %125, %136 ], !dbg !1094
  %70 = phi i8* [ %56, %59 ], [ %119, %136 ], !dbg !1160
  %71 = phi i32 [ %57, %59 ], [ %120, %136 ], !dbg !1180
  call void @llvm.dbg.value(metadata i32 undef, metadata !1084, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %71, metadata !1078, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i8* %70, metadata !1077, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %69, metadata !1076, metadata !DIExpression()), !dbg !1094
  %72 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !1181
  call void @llvm.dbg.value(metadata i8* %72, metadata !1077, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %68, metadata !1082, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 0, metadata !1085, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8 3, metadata !1086, metadata !DIExpression()), !dbg !1161
  %73 = load i8, i8* %72, align 1, !dbg !1182, !tbaa !544
  switch i8 %73, label %98 [
    i8 48, label %74
    i8 49, label %74
    i8 50, label %74
    i8 51, label %74
    i8 52, label %74
    i8 53, label %74
    i8 54, label %74
    i8 55, label %74
    i8 117, label %92
    i8 103, label %94
    i8 111, label %96
  ], !dbg !1168

74:                                               ; preds = %67, %67, %67, %67, %67, %67, %67, %67
  br label %75, !dbg !1183

75:                                               ; preds = %74, %85
  %76 = phi i8 [ %86, %85 ], [ %73, %74 ], !dbg !1184
  %77 = phi i8* [ %80, %85 ], [ %72, %74 ], !dbg !1161
  %78 = phi i32 [ %83, %85 ], [ 0, %74 ], !dbg !1186
  call void @llvm.dbg.value(metadata i32 %78, metadata !1087, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %77, metadata !1077, metadata !DIExpression()), !dbg !1094
  %79 = shl i32 %78, 3, !dbg !1187
  %80 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1188
  call void @llvm.dbg.value(metadata i8* %80, metadata !1077, metadata !DIExpression()), !dbg !1094
  %81 = zext i8 %76 to i32, !dbg !1184
  %82 = add i32 %79, -48, !dbg !1189
  %83 = add i32 %82, %81, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %83, metadata !1087, metadata !DIExpression()), !dbg !1186
  %84 = icmp ugt i32 %83, 4095, !dbg !1191
  br i1 %84, label %141, label %85, !dbg !1193

85:                                               ; preds = %75
  %86 = load i8, i8* %80, align 1, !dbg !1194, !tbaa !544
  %87 = and i8 %86, -8, !dbg !1195
  %88 = icmp eq i8 %87, 48, !dbg !1195
  br i1 %88, label %75, label %89, !dbg !1195, !llvm.loop !1196

89:                                               ; preds = %85
  %90 = icmp eq i32 %71, 0, !dbg !1198
  br i1 %90, label %91, label %141, !dbg !1200

91:                                               ; preds = %89
  switch i8 %86, label %141 [
    i8 0, label %118
    i8 44, label %118
  ], !dbg !1201

92:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i32 448, metadata !1084, metadata !DIExpression()), !dbg !1161
  %93 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !1202
  call void @llvm.dbg.value(metadata i8* %93, metadata !1077, metadata !DIExpression()), !dbg !1094
  br label %118, !dbg !1203

94:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i32 56, metadata !1084, metadata !DIExpression()), !dbg !1161
  %95 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !1204
  call void @llvm.dbg.value(metadata i8* %95, metadata !1077, metadata !DIExpression()), !dbg !1094
  br label %118, !dbg !1205

96:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i32 7, metadata !1084, metadata !DIExpression()), !dbg !1161
  %97 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !1206
  call void @llvm.dbg.value(metadata i8* %97, metadata !1077, metadata !DIExpression()), !dbg !1094
  br label %118, !dbg !1207

98:                                               ; preds = %67, %113
  %99 = phi i8 [ %117, %113 ], [ %73, %67 ], !dbg !1208
  %100 = phi i8* [ %116, %113 ], [ %72, %67 ], !dbg !1161
  %101 = phi i32 [ %114, %113 ], [ 0, %67 ], !dbg !1211
  %102 = phi i8 [ %115, %113 ], [ 1, %67 ], !dbg !1212
  call void @llvm.dbg.value(metadata i8 %102, metadata !1086, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %101, metadata !1084, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8* %100, metadata !1077, metadata !DIExpression()), !dbg !1094
  switch i8 %99, label %118 [
    i8 114, label %103
    i8 119, label %105
    i8 120, label %107
    i8 88, label %113
    i8 115, label %109
    i8 116, label %111
  ], !dbg !1213

103:                                              ; preds = %98
  %104 = or i32 %101, 292, !dbg !1214
  call void @llvm.dbg.value(metadata i32 %104, metadata !1084, metadata !DIExpression()), !dbg !1161
  br label %113, !dbg !1216

105:                                              ; preds = %98
  %106 = or i32 %101, 146, !dbg !1217
  call void @llvm.dbg.value(metadata i32 %106, metadata !1084, metadata !DIExpression()), !dbg !1161
  br label %113, !dbg !1218

107:                                              ; preds = %98
  %108 = or i32 %101, 73, !dbg !1219
  call void @llvm.dbg.value(metadata i32 %108, metadata !1084, metadata !DIExpression()), !dbg !1161
  br label %113, !dbg !1220

109:                                              ; preds = %98
  %110 = or i32 %101, 3072, !dbg !1221
  call void @llvm.dbg.value(metadata i32 %110, metadata !1084, metadata !DIExpression()), !dbg !1161
  br label %113, !dbg !1222

111:                                              ; preds = %98
  %112 = or i32 %101, 512, !dbg !1223
  call void @llvm.dbg.value(metadata i32 %112, metadata !1084, metadata !DIExpression()), !dbg !1161
  br label %113, !dbg !1224

113:                                              ; preds = %98, %103, %105, %107, %109, %111
  %114 = phi i32 [ %112, %111 ], [ %110, %109 ], [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %101, %98 ], !dbg !1211
  %115 = phi i8 [ %102, %111 ], [ %102, %109 ], [ %102, %107 ], [ %102, %105 ], [ %102, %103 ], [ 2, %98 ], !dbg !1211
  call void @llvm.dbg.value(metadata i8 %115, metadata !1086, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %114, metadata !1084, metadata !DIExpression()), !dbg !1161
  %116 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %116, metadata !1077, metadata !DIExpression()), !dbg !1094
  %117 = load i8, i8* %116, align 1, !dbg !1208, !tbaa !544
  br label %98, !dbg !1226, !llvm.loop !1227

118:                                              ; preds = %98, %91, %91, %96, %94, %92
  %119 = phi i8* [ %97, %96 ], [ %95, %94 ], [ %93, %92 ], [ %80, %91 ], [ %80, %91 ], [ %100, %98 ], !dbg !1161
  %120 = phi i32 [ %71, %96 ], [ %71, %94 ], [ %71, %92 ], [ 4095, %91 ], [ 4095, %91 ], [ %71, %98 ], !dbg !1180
  %121 = phi i32 [ 7, %96 ], [ 56, %94 ], [ 448, %92 ], [ %83, %91 ], [ %83, %91 ], [ %101, %98 ]
  %122 = phi i1 [ true, %96 ], [ true, %94 ], [ true, %92 ], [ false, %91 ], [ false, %91 ], [ true, %98 ], !dbg !1230
  %123 = phi i32 [ 0, %96 ], [ 0, %94 ], [ 0, %92 ], [ 4095, %91 ], [ 4095, %91 ], [ 0, %98 ], !dbg !1230
  %124 = phi i8 [ 3, %96 ], [ 3, %94 ], [ 3, %92 ], [ 1, %91 ], [ 1, %91 ], [ %102, %98 ], !dbg !1161
  call void @llvm.dbg.value(metadata i8 %124, metadata !1086, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %123, metadata !1085, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %121, metadata !1084, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %120, metadata !1078, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i8* %119, metadata !1077, metadata !DIExpression()), !dbg !1094
  %125 = add i64 %69, 1, !dbg !1231
  call void @llvm.dbg.value(metadata i64 %125, metadata !1076, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata !DIArgList(%struct.mode_change* %45, i64 %69), metadata !1090, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1161
  %126 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 0, !dbg !1232
  store i8 %68, i8* %126, align 4, !dbg !1233, !tbaa !1129
  %127 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 1, !dbg !1234
  store i8 %124, i8* %127, align 1, !dbg !1235, !tbaa !1133
  %128 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 2, !dbg !1236
  store i32 %120, i32* %128, align 4, !dbg !1237, !tbaa !1136
  %129 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 3, !dbg !1238
  store i32 %121, i32* %129, align 4, !dbg !1239, !tbaa !1139
  %130 = icmp eq i32 %120, 0, !dbg !1240
  %131 = select i1 %130, i32 -1, i32 %120, !dbg !1240
  %132 = and i32 %131, %121, !dbg !1240
  %133 = select i1 %122, i32 %132, i32 %123, !dbg !1240
  %134 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 4, !dbg !1241
  store i32 %133, i32* %134, align 4, !dbg !1242, !tbaa !1142
  call void @llvm.dbg.value(metadata i32 undef, metadata !1084, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %71, metadata !1078, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i8* %80, metadata !1077, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %69, metadata !1076, metadata !DIExpression()), !dbg !1094
  %135 = load i8, i8* %119, align 1, !dbg !1243, !tbaa !544
  switch i8 %135, label %141 [
    i8 61, label %136
    i8 43, label %136
    i8 45, label %136
    i8 44, label %137
    i8 0, label %139
  ], !dbg !1244

136:                                              ; preds = %118, %118, %118
  br label %67, !dbg !1161

137:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i32 undef, metadata !1084, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8* %119, metadata !1077, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %125, metadata !1076, metadata !DIExpression()), !dbg !1094
  %138 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !1245
  call void @llvm.dbg.value(metadata i8* %138, metadata !1077, metadata !DIExpression()), !dbg !1094
  br label %52, !dbg !1246, !llvm.loop !1247

139:                                              ; preds = %118
  %140 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %125, i32 1, !dbg !1250
  store i8 0, i8* %140, align 1, !dbg !1253, !tbaa !1133
  br label %142, !dbg !1254

141:                                              ; preds = %55, %89, %91, %118, %75
  call void @llvm.dbg.label(metadata !1093), !dbg !1255
  tail call void @free(i8* noundef nonnull %44) #32, !dbg !1256
  br label %142, !dbg !1257

142:                                              ; preds = %5, %139, %141, %21, %19
  %143 = phi %struct.mode_change* [ %30, %21 ], [ null, %19 ], [ null, %141 ], [ %45, %139 ], [ null, %5 ]
  ret %struct.mode_change* %143, !dbg !1258
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.mode_change* @mode_create_from_ref(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !1259 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1261, metadata !DIExpression()), !dbg !1297
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1298
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #32, !dbg !1298
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1262, metadata !DIExpression()), !dbg !1299
  %4 = call i32 @stat(i8* noundef %0, %struct.stat* noundef nonnull %2) #32, !dbg !1300
  %5 = icmp eq i32 %4, 0, !dbg !1302
  br i1 %5, label %6, label %19, !dbg !1303

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1304
  %8 = load i32, i32* %7, align 8, !dbg !1304, !tbaa !1305
  call void @llvm.dbg.value(metadata i32 %8, metadata !1118, metadata !DIExpression()) #32, !dbg !1308
  call void @llvm.dbg.value(metadata i32 4095, metadata !1123, metadata !DIExpression()) #32, !dbg !1308
  %9 = tail call noalias nonnull i8* @xmalloc(i64 noundef 32) #38, !dbg !1310
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1310
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, metadata !1124, metadata !DIExpression()) #32, !dbg !1308
  store i8 61, i8* %9, align 4, !dbg !1311, !tbaa !1129
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1312
  store i8 1, i8* %11, align 1, !dbg !1313, !tbaa !1133
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1314
  %13 = bitcast i8* %12 to i32*, !dbg !1314
  store i32 4095, i32* %13, align 4, !dbg !1315, !tbaa !1136
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1316
  %15 = bitcast i8* %14 to i32*, !dbg !1316
  store i32 %8, i32* %15, align 4, !dbg !1317, !tbaa !1139
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1318
  %17 = bitcast i8* %16 to i32*, !dbg !1318
  store i32 4095, i32* %17, align 4, !dbg !1319, !tbaa !1142
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1320
  store i8 0, i8* %18, align 1, !dbg !1321, !tbaa !1133
  br label %19, !dbg !1322

19:                                               ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ], !dbg !1297
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #32, !dbg !1323
  ret %struct.mode_change* %20, !dbg !1323
}

; Function Attrs: nofree nounwind
declare !dbg !1324 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef %1, i32 noundef %2, %struct.mode_change* nocapture noundef readonly %3, i32* noundef writeonly %4) local_unnamed_addr #18 !dbg !1329 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1336, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i1 %1, metadata !1337, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %2, metadata !1338, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1339, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32* %4, metadata !1340, metadata !DIExpression()), !dbg !1352
  %6 = and i32 %0, 4095, !dbg !1353
  call void @llvm.dbg.value(metadata i32 %6, metadata !1341, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 0, metadata !1342, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1339, metadata !DIExpression()), !dbg !1352
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1354
  %8 = load i8, i8* %7, align 1, !dbg !1354, !tbaa !1133
  %9 = icmp eq i8 %8, 0, !dbg !1355
  br i1 %9, label %79, label %10, !dbg !1356

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !1356

14:                                               ; preds = %10, %72
  %15 = phi i8 [ %8, %10 ], [ %77, %72 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %75, %72 ]
  %17 = phi i32 [ %6, %10 ], [ %74, %72 ]
  %18 = phi i32 [ 0, %10 ], [ %73, %72 ]
  call void @llvm.dbg.value(metadata %struct.mode_change* %16, metadata !1339, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %17, metadata !1341, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %18, metadata !1342, metadata !DIExpression()), !dbg !1352
  %19 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !1357
  %20 = load i32, i32* %19, align 4, !dbg !1357, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %20, metadata !1343, metadata !DIExpression()), !dbg !1358
  %21 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !1359
  %22 = load i32, i32* %21, align 4, !dbg !1359, !tbaa !1142
  %23 = xor i32 %22, -1, !dbg !1360
  %24 = and i32 %11, %23, !dbg !1361
  call void @llvm.dbg.value(metadata i32 %24, metadata !1347, metadata !DIExpression()), !dbg !1358
  %25 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !1362
  %26 = load i32, i32* %25, align 4, !dbg !1362, !tbaa !1139
  call void @llvm.dbg.value(metadata i32 %26, metadata !1348, metadata !DIExpression()), !dbg !1358
  switch i8 %15, label %47 [
    i8 2, label %41
    i8 3, label %27
  ], !dbg !1363

27:                                               ; preds = %14
  %28 = and i32 %26, %17, !dbg !1364
  call void @llvm.dbg.value(metadata i32 %28, metadata !1348, metadata !DIExpression()), !dbg !1358
  %29 = and i32 %28, 292, !dbg !1366
  %30 = icmp eq i32 %29, 0, !dbg !1367
  %31 = select i1 %30, i32 0, i32 292, !dbg !1367
  %32 = and i32 %28, 146, !dbg !1368
  %33 = icmp eq i32 %32, 0, !dbg !1369
  %34 = select i1 %33, i32 0, i32 146, !dbg !1369
  %35 = and i32 %28, 73, !dbg !1370
  %36 = icmp eq i32 %35, 0, !dbg !1371
  %37 = select i1 %36, i32 0, i32 73, !dbg !1371
  %38 = or i32 %34, %28, !dbg !1372
  %39 = or i32 %38, %31, !dbg !1373
  %40 = or i32 %39, %37, !dbg !1374
  call void @llvm.dbg.value(metadata i32 %40, metadata !1348, metadata !DIExpression()), !dbg !1358
  br label %47, !dbg !1375

41:                                               ; preds = %14
  %42 = and i32 %17, 73, !dbg !1376
  %43 = or i32 %42, %12, !dbg !1378
  %44 = icmp eq i32 %43, 0, !dbg !1378
  %45 = or i32 %26, 73
  %46 = select i1 %44, i32 %26, i32 %45, !dbg !1379
  br label %47, !dbg !1379

47:                                               ; preds = %41, %14, %27
  %48 = phi i32 [ %26, %14 ], [ %40, %27 ], [ %46, %41 ], !dbg !1358
  call void @llvm.dbg.value(metadata i32 %48, metadata !1348, metadata !DIExpression()), !dbg !1358
  %49 = icmp eq i32 %20, 0, !dbg !1380
  %50 = select i1 %49, i32 %13, i32 %20, !dbg !1380
  %51 = xor i32 %24, -1, !dbg !1381
  %52 = and i32 %50, %51, !dbg !1382
  %53 = and i32 %52, %48, !dbg !1383
  call void @llvm.dbg.value(metadata i32 %53, metadata !1348, metadata !DIExpression()), !dbg !1358
  %54 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !1384
  %55 = load i8, i8* %54, align 4, !dbg !1384, !tbaa !1129
  switch i8 %55, label %72 [
    i8 61, label %56
    i8 43, label %65
    i8 45, label %68
  ], !dbg !1385

56:                                               ; preds = %47
  %57 = xor i32 %20, -1, !dbg !1386
  %58 = select i1 %49, i32 0, i32 %57, !dbg !1386
  %59 = or i32 %58, %24, !dbg !1387
  call void @llvm.dbg.value(metadata i32 %59, metadata !1349, metadata !DIExpression()), !dbg !1388
  %60 = and i32 %59, 4095, !dbg !1389
  %61 = xor i32 %60, 4095, !dbg !1389
  %62 = or i32 %61, %18, !dbg !1390
  call void @llvm.dbg.value(metadata i32 %62, metadata !1342, metadata !DIExpression()), !dbg !1352
  %63 = and i32 %59, %17, !dbg !1391
  %64 = or i32 %53, %63, !dbg !1392
  call void @llvm.dbg.value(metadata i32 %64, metadata !1341, metadata !DIExpression()), !dbg !1352
  br label %72

65:                                               ; preds = %47
  %66 = or i32 %53, %18, !dbg !1393
  call void @llvm.dbg.value(metadata i32 %66, metadata !1342, metadata !DIExpression()), !dbg !1352
  %67 = or i32 %53, %17, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %67, metadata !1341, metadata !DIExpression()), !dbg !1352
  br label %72, !dbg !1395

68:                                               ; preds = %47
  %69 = or i32 %53, %18, !dbg !1396
  call void @llvm.dbg.value(metadata i32 %69, metadata !1342, metadata !DIExpression()), !dbg !1352
  %70 = xor i32 %53, -1, !dbg !1397
  %71 = and i32 %17, %70, !dbg !1398
  call void @llvm.dbg.value(metadata i32 %71, metadata !1341, metadata !DIExpression()), !dbg !1352
  br label %72, !dbg !1399

72:                                               ; preds = %47, %68, %65, %56
  %73 = phi i32 [ %18, %47 ], [ %69, %68 ], [ %66, %65 ], [ %62, %56 ], !dbg !1352
  %74 = phi i32 [ %17, %47 ], [ %71, %68 ], [ %67, %65 ], [ %64, %56 ], !dbg !1352
  call void @llvm.dbg.value(metadata i32 %74, metadata !1341, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %73, metadata !1342, metadata !DIExpression()), !dbg !1352
  %75 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !1400
  call void @llvm.dbg.value(metadata %struct.mode_change* %75, metadata !1339, metadata !DIExpression()), !dbg !1352
  %76 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !1354
  %77 = load i8, i8* %76, align 1, !dbg !1354, !tbaa !1133
  %78 = icmp eq i8 %77, 0, !dbg !1355
  br i1 %78, label %79, label %14, !dbg !1356, !llvm.loop !1401

79:                                               ; preds = %72, %5
  %80 = phi i32 [ 0, %5 ], [ %73, %72 ], !dbg !1403
  %81 = phi i32 [ %6, %5 ], [ %74, %72 ], !dbg !1404
  %82 = icmp eq i32* %4, null, !dbg !1405
  br i1 %82, label %84, label %83, !dbg !1407

83:                                               ; preds = %79
  store i32 %80, i32* %4, align 4, !dbg !1408, !tbaa !535
  br label %84, !dbg !1409

84:                                               ; preds = %83, %79
  ret i32 %81, !dbg !1410
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #19 !dbg !1411 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1413, metadata !DIExpression()), !dbg !1416
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #33, !dbg !1417
  call void @llvm.dbg.value(metadata i8* %2, metadata !1414, metadata !DIExpression()), !dbg !1416
  %3 = icmp eq i8* %2, null, !dbg !1418
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1418
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1418
  call void @llvm.dbg.value(metadata i8* %5, metadata !1415, metadata !DIExpression()), !dbg !1416
  %6 = ptrtoint i8* %5 to i64, !dbg !1419
  %7 = ptrtoint i8* %0 to i64, !dbg !1419
  %8 = sub i64 %6, %7, !dbg !1419
  %9 = icmp sgt i64 %8, 6, !dbg !1421
  br i1 %9, label %10, label %19, !dbg !1422

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1423
  call void @llvm.dbg.value(metadata i8* %11, metadata !1424, metadata !DIExpression()) #32, !dbg !1431
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0), metadata !1429, metadata !DIExpression()) #32, !dbg !1431
  call void @llvm.dbg.value(metadata i64 7, metadata !1430, metadata !DIExpression()) #32, !dbg !1431
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0), i64 7) #32, !dbg !1433
  %13 = icmp eq i32 %12, 0, !dbg !1434
  br i1 %13, label %14, label %19, !dbg !1435

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1413, metadata !DIExpression()), !dbg !1416
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.63, i64 0, i64 0), i64 noundef 3) #33, !dbg !1436
  %16 = icmp eq i32 %15, 0, !dbg !1439
  %17 = select i1 %16, i64 3, i64 0, !dbg !1440
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1440
  br label %19, !dbg !1440

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8* %21, metadata !1415, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %20, metadata !1413, metadata !DIExpression()), !dbg !1416
  store i8* %20, i8** @program_name, align 8, !dbg !1441, !tbaa !443
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1442, !tbaa !443
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1443, !tbaa !443
  ret void, !dbg !1444
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !208 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !215, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8* %1, metadata !216, metadata !DIExpression()), !dbg !1445
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !1446
  call void @llvm.dbg.value(metadata i8* %5, metadata !217, metadata !DIExpression()), !dbg !1445
  %6 = icmp eq i8* %5, %0, !dbg !1447
  br i1 %6, label %7, label %17, !dbg !1449

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1450
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1450
  %10 = bitcast i64* %4 to i8*, !dbg !1451
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1451
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !223, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1453, metadata !DIExpression()) #32, !dbg !1460
  call void @llvm.dbg.value(metadata i8* %10, metadata !1462, metadata !DIExpression()) #32, !dbg !1470
  call void @llvm.dbg.value(metadata i32 0, metadata !1468, metadata !DIExpression()) #32, !dbg !1470
  call void @llvm.dbg.value(metadata i64 8, metadata !1469, metadata !DIExpression()) #32, !dbg !1470
  store i64 0, i64* %4, align 8, !dbg !1472
  call void @llvm.dbg.value(metadata i32* %3, metadata !218, metadata !DIExpression(DW_OP_deref)), !dbg !1445
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !1473
  %12 = icmp eq i64 %11, 2, !dbg !1475
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !218, metadata !DIExpression()), !dbg !1445
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1476
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1445
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1477
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1477
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1445
  ret i8* %18, !dbg !1477
}

; Function Attrs: nounwind
declare !dbg !1478 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1484 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1489, metadata !DIExpression()), !dbg !1492
  %2 = tail call i32* @__errno_location() #35, !dbg !1493
  %3 = load i32, i32* %2, align 4, !dbg !1493, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %3, metadata !1490, metadata !DIExpression()), !dbg !1492
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1494
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1494
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1494
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !1495
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1495
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1491, metadata !DIExpression()), !dbg !1492
  store i32 %3, i32* %2, align 4, !dbg !1496, !tbaa !535
  ret %struct.quoting_options* %8, !dbg !1497
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 !dbg !1498 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1504, metadata !DIExpression()), !dbg !1505
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1506
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1506
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1507
  %5 = load i32, i32* %4, align 8, !dbg !1507, !tbaa !1508
  ret i32 %5, !dbg !1510
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !1511 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1515, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i32 %1, metadata !1516, metadata !DIExpression()), !dbg !1517
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1518
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1518
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1519
  store i32 %1, i32* %5, align 8, !dbg !1520, !tbaa !1508
  ret void, !dbg !1521
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1522 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1526, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i8 %1, metadata !1527, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i32 %2, metadata !1528, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i8 %1, metadata !1529, metadata !DIExpression()), !dbg !1534
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1535
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1535
  %6 = lshr i8 %1, 5, !dbg !1536
  %7 = zext i8 %6 to i64, !dbg !1536
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1537
  call void @llvm.dbg.value(metadata i32* %8, metadata !1530, metadata !DIExpression()), !dbg !1534
  %9 = and i8 %1, 31, !dbg !1538
  %10 = zext i8 %9 to i32, !dbg !1538
  call void @llvm.dbg.value(metadata i32 %10, metadata !1532, metadata !DIExpression()), !dbg !1534
  %11 = load i32, i32* %8, align 4, !dbg !1539, !tbaa !535
  %12 = lshr i32 %11, %10, !dbg !1540
  %13 = and i32 %12, 1, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %13, metadata !1533, metadata !DIExpression()), !dbg !1534
  %14 = and i32 %2, 1, !dbg !1542
  %15 = xor i32 %13, %14, !dbg !1543
  %16 = shl i32 %15, %10, !dbg !1544
  %17 = xor i32 %16, %11, !dbg !1545
  store i32 %17, i32* %8, align 4, !dbg !1545, !tbaa !535
  ret i32 %13, !dbg !1546
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1547 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1551, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 %1, metadata !1552, metadata !DIExpression()), !dbg !1554
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1555
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1557
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1551, metadata !DIExpression()), !dbg !1554
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1558
  %6 = load i32, i32* %5, align 4, !dbg !1558, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %6, metadata !1553, metadata !DIExpression()), !dbg !1554
  store i32 %1, i32* %5, align 4, !dbg !1560, !tbaa !1559
  ret i32 %6, !dbg !1561
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1562 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1566, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i8* %1, metadata !1567, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i8* %2, metadata !1568, metadata !DIExpression()), !dbg !1569
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1570
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1572
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1566, metadata !DIExpression()), !dbg !1569
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1573
  store i32 10, i32* %6, align 8, !dbg !1574, !tbaa !1508
  %7 = icmp ne i8* %1, null, !dbg !1575
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1577
  br i1 %9, label %11, label %10, !dbg !1577

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !1578
  unreachable, !dbg !1578

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1579
  store i8* %1, i8** %12, align 8, !dbg !1580, !tbaa !1581
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1582
  store i8* %2, i8** %13, align 8, !dbg !1583, !tbaa !1584
  ret void, !dbg !1585
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1586 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1590, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i64 %1, metadata !1591, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i8* %2, metadata !1592, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i64 %3, metadata !1593, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1594, metadata !DIExpression()), !dbg !1598
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1599
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1599
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1595, metadata !DIExpression()), !dbg !1598
  %8 = tail call i32* @__errno_location() #35, !dbg !1600
  %9 = load i32, i32* %8, align 4, !dbg !1600, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %9, metadata !1596, metadata !DIExpression()), !dbg !1598
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1601
  %11 = load i32, i32* %10, align 8, !dbg !1601, !tbaa !1508
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1602
  %13 = load i32, i32* %12, align 4, !dbg !1602, !tbaa !1559
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1603
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1604
  %16 = load i8*, i8** %15, align 8, !dbg !1604, !tbaa !1581
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1605
  %18 = load i8*, i8** %17, align 8, !dbg !1605, !tbaa !1584
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %19, metadata !1597, metadata !DIExpression()), !dbg !1598
  store i32 %9, i32* %8, align 4, !dbg !1607, !tbaa !535
  ret i64 %19, !dbg !1608
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1609 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1615, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %1, metadata !1616, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8* %2, metadata !1617, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %3, metadata !1618, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32 %4, metadata !1619, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32 %5, metadata !1620, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32* %6, metadata !1621, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8* %7, metadata !1622, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8* %8, metadata !1623, metadata !DIExpression()), !dbg !1677
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1678
  %18 = icmp eq i64 %17, 1, !dbg !1679
  call void @llvm.dbg.value(metadata i1 %18, metadata !1624, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1677
  call void @llvm.dbg.value(metadata i64 0, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 0, metadata !1626, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8* null, metadata !1627, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 0, metadata !1628, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32 %5, metadata !1630, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1677
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 1, metadata !1632, metadata !DIExpression()), !dbg !1677
  %19 = and i32 %5, 2, !dbg !1680
  %20 = icmp ne i32 %19, 0, !dbg !1680
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
  br label %36, !dbg !1680

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1681
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1682
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1683
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1616, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %43, metadata !1628, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8* %42, metadata !1627, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %41, metadata !1626, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 0, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %40, metadata !1618, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8* %39, metadata !1623, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8* %38, metadata !1622, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32 %37, metadata !1619, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.label(metadata !1670), !dbg !1684
  call void @llvm.dbg.value(metadata i8 0, metadata !1633, metadata !DIExpression()), !dbg !1677
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
  ], !dbg !1685

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32 5, metadata !1619, metadata !DIExpression()), !dbg !1677
  br label %111, !dbg !1686

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32 5, metadata !1619, metadata !DIExpression()), !dbg !1677
  br i1 %45, label %111, label %51, !dbg !1686

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1687
  br i1 %52, label %111, label %53, !dbg !1691

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1687, !tbaa !544
  br label %111, !dbg !1687

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.76, i64 0, i64 0), metadata !285, metadata !DIExpression()) #32, !dbg !1692
  call void @llvm.dbg.value(metadata i32 %37, metadata !286, metadata !DIExpression()) #32, !dbg !1692
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.76, i64 0, i64 0), i32 noundef 5) #32, !dbg !1696
  call void @llvm.dbg.value(metadata i8* %55, metadata !287, metadata !DIExpression()) #32, !dbg !1692
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.76, i64 0, i64 0), !dbg !1697
  br i1 %56, label %57, label %66, !dbg !1699

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1700
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1701
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !289, metadata !DIExpression()) #32, !dbg !1702
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1703, metadata !DIExpression()) #32, !dbg !1709
  call void @llvm.dbg.value(metadata i8* %23, metadata !1711, metadata !DIExpression()) #32, !dbg !1716
  call void @llvm.dbg.value(metadata i32 0, metadata !1714, metadata !DIExpression()) #32, !dbg !1716
  call void @llvm.dbg.value(metadata i64 8, metadata !1715, metadata !DIExpression()) #32, !dbg !1716
  store i64 0, i64* %13, align 8, !dbg !1718
  call void @llvm.dbg.value(metadata i32* %12, metadata !288, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1692
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1719
  %59 = icmp eq i64 %58, 3, !dbg !1721
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !288, metadata !DIExpression()) #32, !dbg !1692
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1722
  %63 = icmp eq i32 %37, 9, !dbg !1722
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), !dbg !1722
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1722
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1723
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1723
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1692
  call void @llvm.dbg.value(metadata i8* %67, metadata !1622, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), metadata !285, metadata !DIExpression()) #32, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %37, metadata !286, metadata !DIExpression()) #32, !dbg !1724
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), i32 noundef 5) #32, !dbg !1726
  call void @llvm.dbg.value(metadata i8* %68, metadata !287, metadata !DIExpression()) #32, !dbg !1724
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), !dbg !1727
  br i1 %69, label %70, label %79, !dbg !1728

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1729
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1730
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !289, metadata !DIExpression()) #32, !dbg !1731
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1703, metadata !DIExpression()) #32, !dbg !1732
  call void @llvm.dbg.value(metadata i8* %26, metadata !1711, metadata !DIExpression()) #32, !dbg !1734
  call void @llvm.dbg.value(metadata i32 0, metadata !1714, metadata !DIExpression()) #32, !dbg !1734
  call void @llvm.dbg.value(metadata i64 8, metadata !1715, metadata !DIExpression()) #32, !dbg !1734
  store i64 0, i64* %11, align 8, !dbg !1736
  call void @llvm.dbg.value(metadata i32* %10, metadata !288, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1724
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1737
  %72 = icmp eq i64 %71, 3, !dbg !1738
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !288, metadata !DIExpression()) #32, !dbg !1724
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1739
  %76 = icmp eq i32 %37, 9, !dbg !1739
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), !dbg !1739
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1739
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1740
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1740
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1623, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8* %80, metadata !1622, metadata !DIExpression()), !dbg !1677
  br i1 %45, label %97, label %82, !dbg !1741

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1634, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i64 0, metadata !1625, metadata !DIExpression()), !dbg !1677
  %83 = load i8, i8* %80, align 1, !dbg !1743, !tbaa !544
  %84 = icmp eq i8 %83, 0, !dbg !1745
  br i1 %84, label %97, label %85, !dbg !1745

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1634, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i64 %88, metadata !1625, metadata !DIExpression()), !dbg !1677
  %89 = icmp ult i64 %88, %48, !dbg !1746
  br i1 %89, label %90, label %92, !dbg !1749

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1746
  store i8 %86, i8* %91, align 1, !dbg !1746, !tbaa !544
  br label %92, !dbg !1746

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %93, metadata !1625, metadata !DIExpression()), !dbg !1677
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1750
  call void @llvm.dbg.value(metadata i8* %94, metadata !1634, metadata !DIExpression()), !dbg !1742
  %95 = load i8, i8* %94, align 1, !dbg !1743, !tbaa !544
  %96 = icmp eq i8 %95, 0, !dbg !1745
  br i1 %96, label %97, label %85, !dbg !1745, !llvm.loop !1751

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1753
  call void @llvm.dbg.value(metadata i64 %98, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 1, metadata !1629, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8* %81, metadata !1627, metadata !DIExpression()), !dbg !1677
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #33, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %99, metadata !1628, metadata !DIExpression()), !dbg !1677
  br label %111, !dbg !1755

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1629, metadata !DIExpression()), !dbg !1677
  br label %102, !dbg !1756

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1677
  br i1 %45, label %102, label %105, !dbg !1757

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32 2, metadata !1619, metadata !DIExpression()), !dbg !1677
  br label %111, !dbg !1758

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32 2, metadata !1619, metadata !DIExpression()), !dbg !1677
  br i1 %45, label %111, label %105, !dbg !1758

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1759
  br i1 %107, label %111, label %108, !dbg !1763

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1759, !tbaa !544
  br label %111, !dbg !1759

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1630, metadata !DIExpression()), !dbg !1677
  br label %111, !dbg !1764

110:                                              ; preds = %36
  call void @abort() #34, !dbg !1765
  unreachable, !dbg !1765

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1753
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %102 ], !dbg !1677
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1677
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %117, metadata !1628, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8* %116, metadata !1627, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %115, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8* %114, metadata !1623, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8* %113, metadata !1622, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32 %112, metadata !1619, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 0, metadata !1639, metadata !DIExpression()), !dbg !1766
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
  br label %132, !dbg !1767

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1753
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1681
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1766
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1616, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %139, metadata !1639, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %135, metadata !1626, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %134, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %133, metadata !1618, metadata !DIExpression()), !dbg !1677
  %141 = icmp eq i64 %133, -1, !dbg !1768
  br i1 %141, label %142, label %146, !dbg !1769

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1770
  %144 = load i8, i8* %143, align 1, !dbg !1770, !tbaa !544
  %145 = icmp eq i8 %144, 0, !dbg !1771
  br i1 %145, label %596, label %148, !dbg !1772

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1773
  br i1 %147, label %596, label %148, !dbg !1772

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1641, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 0, metadata !1644, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1774
  br i1 %123, label %149, label %163, !dbg !1775

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1777
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1778
  br i1 %151, label %152, label %154, !dbg !1778

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %153, metadata !1618, metadata !DIExpression()), !dbg !1677
  br label %154, !dbg !1780

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1780
  call void @llvm.dbg.value(metadata i64 %155, metadata !1618, metadata !DIExpression()), !dbg !1677
  %156 = icmp ugt i64 %150, %155, !dbg !1781
  br i1 %156, label %163, label %157, !dbg !1782

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1783
  call void @llvm.dbg.value(metadata i8* %158, metadata !1784, metadata !DIExpression()) #32, !dbg !1789
  call void @llvm.dbg.value(metadata i8* %116, metadata !1787, metadata !DIExpression()) #32, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %117, metadata !1788, metadata !DIExpression()) #32, !dbg !1789
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1791
  %160 = icmp ne i32 %159, 0, !dbg !1792
  %161 = or i1 %160, %125, !dbg !1793
  %162 = xor i1 %160, true, !dbg !1793
  br i1 %161, label %163, label %647, !dbg !1793

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1641, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i64 %164, metadata !1618, metadata !DIExpression()), !dbg !1677
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1794
  %167 = load i8, i8* %166, align 1, !dbg !1794, !tbaa !544
  call void @llvm.dbg.value(metadata i8 %167, metadata !1646, metadata !DIExpression()), !dbg !1774
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
  ], !dbg !1795

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1796

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1797

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1644, metadata !DIExpression()), !dbg !1774
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1801
  br i1 %171, label %188, label %172, !dbg !1801

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1803
  br i1 %173, label %174, label %176, !dbg !1807

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1803
  store i8 39, i8* %175, align 1, !dbg !1803, !tbaa !544
  br label %176, !dbg !1803

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %177, metadata !1625, metadata !DIExpression()), !dbg !1677
  %178 = icmp ult i64 %177, %140, !dbg !1808
  br i1 %178, label %179, label %181, !dbg !1811

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1808
  store i8 36, i8* %180, align 1, !dbg !1808, !tbaa !544
  br label %181, !dbg !1808

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %182, metadata !1625, metadata !DIExpression()), !dbg !1677
  %183 = icmp ult i64 %182, %140, !dbg !1812
  br i1 %183, label %184, label %186, !dbg !1815

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1812
  store i8 39, i8* %185, align 1, !dbg !1812, !tbaa !544
  br label %186, !dbg !1812

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %187, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 1, metadata !1633, metadata !DIExpression()), !dbg !1677
  br label %188, !dbg !1816

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1677
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %189, metadata !1625, metadata !DIExpression()), !dbg !1677
  %191 = icmp ult i64 %189, %140, !dbg !1817
  br i1 %191, label %192, label %194, !dbg !1820

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1817
  store i8 92, i8* %193, align 1, !dbg !1817, !tbaa !544
  br label %194, !dbg !1817

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %195, metadata !1625, metadata !DIExpression()), !dbg !1677
  br i1 %120, label %196, label %499, !dbg !1821

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1823
  %198 = icmp ult i64 %197, %164, !dbg !1824
  br i1 %198, label %199, label %456, !dbg !1825

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1826
  %201 = load i8, i8* %200, align 1, !dbg !1826, !tbaa !544
  %202 = add i8 %201, -48, !dbg !1827
  %203 = icmp ult i8 %202, 10, !dbg !1827
  br i1 %203, label %204, label %456, !dbg !1827

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1828
  br i1 %205, label %206, label %208, !dbg !1832

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1828
  store i8 48, i8* %207, align 1, !dbg !1828, !tbaa !544
  br label %208, !dbg !1828

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %209, metadata !1625, metadata !DIExpression()), !dbg !1677
  %210 = icmp ult i64 %209, %140, !dbg !1833
  br i1 %210, label %211, label %213, !dbg !1836

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1833
  store i8 48, i8* %212, align 1, !dbg !1833, !tbaa !544
  br label %213, !dbg !1833

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %214, metadata !1625, metadata !DIExpression()), !dbg !1677
  br label %456, !dbg !1837

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1838

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1839

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1840

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1842

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1844
  %221 = icmp ult i64 %220, %164, !dbg !1845
  br i1 %221, label %222, label %456, !dbg !1846

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1847
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1848
  %225 = load i8, i8* %224, align 1, !dbg !1848, !tbaa !544
  %226 = icmp eq i8 %225, 63, !dbg !1849
  br i1 %226, label %227, label %456, !dbg !1850

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1851
  %229 = load i8, i8* %228, align 1, !dbg !1851, !tbaa !544
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
  ], !dbg !1852

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1853

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1646, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i64 %220, metadata !1639, metadata !DIExpression()), !dbg !1766
  %232 = icmp ult i64 %134, %140, !dbg !1855
  br i1 %232, label %233, label %235, !dbg !1858

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1855
  store i8 63, i8* %234, align 1, !dbg !1855, !tbaa !544
  br label %235, !dbg !1855

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %236, metadata !1625, metadata !DIExpression()), !dbg !1677
  %237 = icmp ult i64 %236, %140, !dbg !1859
  br i1 %237, label %238, label %240, !dbg !1862

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1859
  store i8 34, i8* %239, align 1, !dbg !1859, !tbaa !544
  br label %240, !dbg !1859

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %241, metadata !1625, metadata !DIExpression()), !dbg !1677
  %242 = icmp ult i64 %241, %140, !dbg !1863
  br i1 %242, label %243, label %245, !dbg !1866

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1863
  store i8 34, i8* %244, align 1, !dbg !1863, !tbaa !544
  br label %245, !dbg !1863

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %246, metadata !1625, metadata !DIExpression()), !dbg !1677
  %247 = icmp ult i64 %246, %140, !dbg !1867
  br i1 %247, label %248, label %250, !dbg !1870

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1867
  store i8 63, i8* %249, align 1, !dbg !1867, !tbaa !544
  br label %250, !dbg !1867

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %251, metadata !1625, metadata !DIExpression()), !dbg !1677
  br label %456, !dbg !1871

252:                                              ; preds = %163
  br label %263, !dbg !1872

253:                                              ; preds = %163
  br label %263, !dbg !1873

254:                                              ; preds = %163
  br label %261, !dbg !1874

255:                                              ; preds = %163
  br label %261, !dbg !1875

256:                                              ; preds = %163
  br label %263, !dbg !1876

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1877

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1878

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1881

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1883

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1884
  call void @llvm.dbg.label(metadata !1671), !dbg !1885
  br i1 %128, label %263, label %638, !dbg !1886

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1884
  call void @llvm.dbg.label(metadata !1673), !dbg !1888
  br i1 %118, label %510, label %467, !dbg !1889

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1890

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1891, !tbaa !544
  %268 = icmp eq i8 %267, 0, !dbg !1893
  br i1 %268, label %269, label %456, !dbg !1894

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1895
  br i1 %270, label %271, label %456, !dbg !1897

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1774
  br label %272, !dbg !1898

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1645, metadata !DIExpression()), !dbg !1774
  br i1 %126, label %274, label %456, !dbg !1899

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1901

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1631, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1774
  br i1 %126, label %276, label %456, !dbg !1902

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1903

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1906
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1908
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1908
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %282, metadata !1616, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %281, metadata !1626, metadata !DIExpression()), !dbg !1677
  %283 = icmp ult i64 %134, %282, !dbg !1909
  br i1 %283, label %284, label %286, !dbg !1912

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1909
  store i8 39, i8* %285, align 1, !dbg !1909, !tbaa !544
  br label %286, !dbg !1909

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %287, metadata !1625, metadata !DIExpression()), !dbg !1677
  %288 = icmp ult i64 %287, %282, !dbg !1913
  br i1 %288, label %289, label %291, !dbg !1916

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1913
  store i8 92, i8* %290, align 1, !dbg !1913, !tbaa !544
  br label %291, !dbg !1913

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %292, metadata !1625, metadata !DIExpression()), !dbg !1677
  %293 = icmp ult i64 %292, %282, !dbg !1917
  br i1 %293, label %294, label %296, !dbg !1920

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1917
  store i8 39, i8* %295, align 1, !dbg !1917, !tbaa !544
  br label %296, !dbg !1917

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %297, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 0, metadata !1633, metadata !DIExpression()), !dbg !1677
  br label %456, !dbg !1921

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1922

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1647, metadata !DIExpression()), !dbg !1923
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1924
  %301 = load i16*, i16** %300, align 8, !dbg !1924, !tbaa !443
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1924
  %304 = load i16, i16* %303, align 2, !dbg !1924, !tbaa !569
  %305 = and i16 %304, 16384, !dbg !1924
  %306 = icmp ne i16 %305, 0, !dbg !1926
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %349, metadata !1647, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %312, metadata !1618, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i1 %350, metadata !1645, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1774
  br label %352, !dbg !1927

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1928
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1651, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1703, metadata !DIExpression()) #32, !dbg !1930
  call void @llvm.dbg.value(metadata i8* %32, metadata !1711, metadata !DIExpression()) #32, !dbg !1932
  call void @llvm.dbg.value(metadata i32 0, metadata !1714, metadata !DIExpression()) #32, !dbg !1932
  call void @llvm.dbg.value(metadata i64 8, metadata !1715, metadata !DIExpression()) #32, !dbg !1932
  store i64 0, i64* %14, align 8, !dbg !1934
  call void @llvm.dbg.value(metadata i64 0, metadata !1647, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 1, metadata !1650, metadata !DIExpression()), !dbg !1923
  %308 = icmp eq i64 %164, -1, !dbg !1935
  br i1 %308, label %309, label %311, !dbg !1937

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %310, metadata !1618, metadata !DIExpression()), !dbg !1677
  br label %311, !dbg !1939

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1774
  call void @llvm.dbg.value(metadata i64 %312, metadata !1618, metadata !DIExpression()), !dbg !1677
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1940
  %313 = sub i64 %312, %139, !dbg !1941
  call void @llvm.dbg.value(metadata i32* %16, metadata !1654, metadata !DIExpression(DW_OP_deref)), !dbg !1942
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %314, metadata !1658, metadata !DIExpression()), !dbg !1942
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1944

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1647, metadata !DIExpression()), !dbg !1923
  %316 = icmp ugt i64 %312, %139, !dbg !1945
  br i1 %316, label %319, label %317, !dbg !1947

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 0, metadata !1647, metadata !DIExpression()), !dbg !1923
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1948
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %349, metadata !1647, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %312, metadata !1618, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i1 %350, metadata !1645, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1774
  br label %352, !dbg !1927

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1650, metadata !DIExpression()), !dbg !1923
  br label %346, !dbg !1950

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1647, metadata !DIExpression()), !dbg !1923
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1952
  %323 = load i8, i8* %322, align 1, !dbg !1952, !tbaa !544
  %324 = icmp eq i8 %323, 0, !dbg !1947
  br i1 %324, label %348, label %325, !dbg !1953

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %326, metadata !1647, metadata !DIExpression()), !dbg !1923
  %327 = add i64 %326, %139, !dbg !1955
  %328 = icmp eq i64 %326, %313, !dbg !1945
  br i1 %328, label %348, label %319, !dbg !1947, !llvm.loop !1956

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1957
  call void @llvm.dbg.value(metadata i64 1, metadata !1659, metadata !DIExpression()), !dbg !1958
  br i1 %331, label %332, label %340, !dbg !1957

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1659, metadata !DIExpression()), !dbg !1958
  %334 = add i64 %333, %139, !dbg !1959
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1961
  %336 = load i8, i8* %335, align 1, !dbg !1961, !tbaa !544
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1962

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %338, metadata !1659, metadata !DIExpression()), !dbg !1958
  %339 = icmp eq i64 %338, %314, !dbg !1964
  br i1 %339, label %340, label %332, !dbg !1965, !llvm.loop !1966

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1968, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %341, metadata !1654, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 %341, metadata !1970, metadata !DIExpression()) #32, !dbg !1978
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !1980
  %343 = icmp ne i32 %342, 0, !dbg !1981
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %314, metadata !1647, metadata !DIExpression()), !dbg !1923
  br label %348, !dbg !1982

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 0, metadata !1647, metadata !DIExpression()), !dbg !1923
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1948
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1949
  call void @llvm.dbg.label(metadata !1676), !dbg !1983
  %345 = select i1 %118, i32 4, i32 2, !dbg !1984
  br label %643, !dbg !1984

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 0, metadata !1647, metadata !DIExpression()), !dbg !1923
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1948
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %349, metadata !1647, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %312, metadata !1618, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i1 %350, metadata !1645, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1774
  br label %352, !dbg !1927

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 0, metadata !1647, metadata !DIExpression()), !dbg !1923
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1948
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %349, metadata !1647, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %312, metadata !1618, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i1 %350, metadata !1645, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1774
  %351 = icmp ugt i64 %349, 1, !dbg !1986
  br i1 %351, label %357, label %352, !dbg !1927

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1987
  br i1 %356, label %456, label %357, !dbg !1987

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1988
  call void @llvm.dbg.value(metadata i64 %361, metadata !1667, metadata !DIExpression()), !dbg !1989
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1990

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1677
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1766
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1991
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1774
  call void @llvm.dbg.value(metadata i8 %369, metadata !1646, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 %368, metadata !1644, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 poison, metadata !1641, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i64 %366, metadata !1639, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %364, metadata !1625, metadata !DIExpression()), !dbg !1677
  br i1 %362, label %414, label %370, !dbg !1992

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1997

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1644, metadata !DIExpression()), !dbg !1774
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2000
  br i1 %372, label %389, label %373, !dbg !2000

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2002
  br i1 %374, label %375, label %377, !dbg !2006

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2002
  store i8 39, i8* %376, align 1, !dbg !2002, !tbaa !544
  br label %377, !dbg !2002

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %378, metadata !1625, metadata !DIExpression()), !dbg !1677
  %379 = icmp ult i64 %378, %140, !dbg !2007
  br i1 %379, label %380, label %382, !dbg !2010

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2007
  store i8 36, i8* %381, align 1, !dbg !2007, !tbaa !544
  br label %382, !dbg !2007

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %383, metadata !1625, metadata !DIExpression()), !dbg !1677
  %384 = icmp ult i64 %383, %140, !dbg !2011
  br i1 %384, label %385, label %387, !dbg !2014

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2011
  store i8 39, i8* %386, align 1, !dbg !2011, !tbaa !544
  br label %387, !dbg !2011

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %388, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 1, metadata !1633, metadata !DIExpression()), !dbg !1677
  br label %389, !dbg !2015

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1677
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %390, metadata !1625, metadata !DIExpression()), !dbg !1677
  %392 = icmp ult i64 %390, %140, !dbg !2016
  br i1 %392, label %393, label %395, !dbg !2019

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2016
  store i8 92, i8* %394, align 1, !dbg !2016, !tbaa !544
  br label %395, !dbg !2016

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %396, metadata !1625, metadata !DIExpression()), !dbg !1677
  %397 = icmp ult i64 %396, %140, !dbg !2020
  br i1 %397, label %398, label %402, !dbg !2023

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2020
  %400 = or i8 %399, 48, !dbg !2020
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2020
  store i8 %400, i8* %401, align 1, !dbg !2020, !tbaa !544
  br label %402, !dbg !2020

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %403, metadata !1625, metadata !DIExpression()), !dbg !1677
  %404 = icmp ult i64 %403, %140, !dbg !2024
  br i1 %404, label %405, label %410, !dbg !2027

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2024
  %407 = and i8 %406, 7, !dbg !2024
  %408 = or i8 %407, 48, !dbg !2024
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2024
  store i8 %408, i8* %409, align 1, !dbg !2024, !tbaa !544
  br label %410, !dbg !2024

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %411, metadata !1625, metadata !DIExpression()), !dbg !1677
  %412 = and i8 %369, 7, !dbg !2028
  %413 = or i8 %412, 48, !dbg !2029
  call void @llvm.dbg.value(metadata i8 %413, metadata !1646, metadata !DIExpression()), !dbg !1774
  br label %421, !dbg !2030

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2031

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2032
  br i1 %416, label %417, label %419, !dbg !2037

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2032
  store i8 92, i8* %418, align 1, !dbg !2032, !tbaa !544
  br label %419, !dbg !2032

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2037
  call void @llvm.dbg.value(metadata i64 %420, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 0, metadata !1641, metadata !DIExpression()), !dbg !1774
  br label %421, !dbg !2038

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1677
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1774
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1774
  call void @llvm.dbg.value(metadata i8 %426, metadata !1646, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 %425, metadata !1644, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 poison, metadata !1641, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %422, metadata !1625, metadata !DIExpression()), !dbg !1677
  %427 = add i64 %366, 1, !dbg !2039
  %428 = icmp ugt i64 %361, %427, !dbg !2041
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2042

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2043
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2043
  br i1 %432, label %433, label %444, !dbg !2043

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2046
  br i1 %434, label %435, label %437, !dbg !2050

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2046
  store i8 39, i8* %436, align 1, !dbg !2046, !tbaa !544
  br label %437, !dbg !2046

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2050
  call void @llvm.dbg.value(metadata i64 %438, metadata !1625, metadata !DIExpression()), !dbg !1677
  %439 = icmp ult i64 %438, %140, !dbg !2051
  br i1 %439, label %440, label %442, !dbg !2054

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2051
  store i8 39, i8* %441, align 1, !dbg !2051, !tbaa !544
  br label %442, !dbg !2051

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %443, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 0, metadata !1633, metadata !DIExpression()), !dbg !1677
  br label %444, !dbg !2055

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2056
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %445, metadata !1625, metadata !DIExpression()), !dbg !1677
  %447 = icmp ult i64 %445, %140, !dbg !2057
  br i1 %447, label %448, label %450, !dbg !2060

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2057
  store i8 %426, i8* %449, align 1, !dbg !2057, !tbaa !544
  br label %450, !dbg !2057

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %451, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %427, metadata !1639, metadata !DIExpression()), !dbg !1766
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2061
  %453 = load i8, i8* %452, align 1, !dbg !2061, !tbaa !544
  call void @llvm.dbg.value(metadata i8 %453, metadata !1646, metadata !DIExpression()), !dbg !1774
  br label %363, !dbg !2062, !llvm.loop !2063

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1646, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i1 %358, metadata !1645, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1774
  call void @llvm.dbg.value(metadata i8 %425, metadata !1644, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 poison, metadata !1641, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i64 %366, metadata !1639, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %422, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %360, metadata !1618, metadata !DIExpression()), !dbg !1677
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2066
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1677
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1681
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1766
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1774
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1616, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 %465, metadata !1646, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 poison, metadata !1645, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 poison, metadata !1644, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 poison, metadata !1641, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i64 %462, metadata !1639, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %459, metadata !1626, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %458, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %457, metadata !1618, metadata !DIExpression()), !dbg !1677
  br i1 %121, label %478, label %467, !dbg !2067

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
  br i1 %131, label %479, label %499, !dbg !2069

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2070

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
  %490 = lshr i8 %481, 5, !dbg !2071
  %491 = zext i8 %490 to i64, !dbg !2071
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2072
  %493 = load i32, i32* %492, align 4, !dbg !2072, !tbaa !535
  %494 = and i8 %481, 31, !dbg !2073
  %495 = zext i8 %494 to i32, !dbg !2073
  %496 = shl nuw i32 1, %495, !dbg !2074
  %497 = and i32 %493, %496, !dbg !2074
  %498 = icmp eq i32 %497, 0, !dbg !2074
  br i1 %498, label %499, label %510, !dbg !2075

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
  br i1 %165, label %510, label %546, !dbg !2076

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2066
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1677
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1681
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2077
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1774
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1616, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 %518, metadata !1646, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 poison, metadata !1645, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i64 %516, metadata !1639, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %513, metadata !1626, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %512, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %511, metadata !1618, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.label(metadata !1674), !dbg !2078
  br i1 %119, label %638, label %520, !dbg !2079

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1644, metadata !DIExpression()), !dbg !1774
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2081
  br i1 %521, label %538, label %522, !dbg !2081

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2083
  br i1 %523, label %524, label %526, !dbg !2087

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2083
  store i8 39, i8* %525, align 1, !dbg !2083, !tbaa !544
  br label %526, !dbg !2083

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %527, metadata !1625, metadata !DIExpression()), !dbg !1677
  %528 = icmp ult i64 %527, %519, !dbg !2088
  br i1 %528, label %529, label %531, !dbg !2091

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2088
  store i8 36, i8* %530, align 1, !dbg !2088, !tbaa !544
  br label %531, !dbg !2088

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %532, metadata !1625, metadata !DIExpression()), !dbg !1677
  %533 = icmp ult i64 %532, %519, !dbg !2092
  br i1 %533, label %534, label %536, !dbg !2095

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2092
  store i8 39, i8* %535, align 1, !dbg !2092, !tbaa !544
  br label %536, !dbg !2092

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %537, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 1, metadata !1633, metadata !DIExpression()), !dbg !1677
  br label %538, !dbg !2096

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1774
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %539, metadata !1625, metadata !DIExpression()), !dbg !1677
  %541 = icmp ult i64 %539, %519, !dbg !2097
  br i1 %541, label %542, label %544, !dbg !2100

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2097
  store i8 92, i8* %543, align 1, !dbg !2097, !tbaa !544
  br label %544, !dbg !2097

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %556, metadata !1616, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 %555, metadata !1646, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 poison, metadata !1645, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 poison, metadata !1644, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i64 %552, metadata !1639, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %549, metadata !1626, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %548, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %547, metadata !1618, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.label(metadata !1675), !dbg !2101
  br label %570, !dbg !2102

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2066
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1677
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1681
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2077
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2105
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1616, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 %555, metadata !1646, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 poison, metadata !1645, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 poison, metadata !1644, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i64 %552, metadata !1639, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %549, metadata !1626, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %548, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %547, metadata !1618, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.label(metadata !1675), !dbg !2101
  %557 = xor i1 %551, true, !dbg !2102
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2102
  br i1 %558, label %570, label %559, !dbg !2102

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2106
  br i1 %560, label %561, label %563, !dbg !2110

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2106
  store i8 39, i8* %562, align 1, !dbg !2106, !tbaa !544
  br label %563, !dbg !2106

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %564, metadata !1625, metadata !DIExpression()), !dbg !1677
  %565 = icmp ult i64 %564, %556, !dbg !2111
  br i1 %565, label %566, label %568, !dbg !2114

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2111
  store i8 39, i8* %567, align 1, !dbg !2111, !tbaa !544
  br label %568, !dbg !2111

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %569, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 0, metadata !1633, metadata !DIExpression()), !dbg !1677
  br label %570, !dbg !2115

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1774
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %578, metadata !1625, metadata !DIExpression()), !dbg !1677
  %580 = icmp ult i64 %578, %571, !dbg !2116
  br i1 %580, label %581, label %583, !dbg !2119

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2116
  store i8 %572, i8* %582, align 1, !dbg !2116, !tbaa !544
  br label %583, !dbg !2116

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %584, metadata !1625, metadata !DIExpression()), !dbg !1677
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1677
  br label %586, !dbg !2121

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2066
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1677
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1681
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2077
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1616, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %593, metadata !1639, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %589, metadata !1626, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %588, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %587, metadata !1618, metadata !DIExpression()), !dbg !1677
  %595 = add i64 %593, 1, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %595, metadata !1639, metadata !DIExpression()), !dbg !1766
  br label %132, !dbg !2123, !llvm.loop !2124

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1616, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 undef, metadata !1626, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 undef, metadata !1625, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 undef, metadata !1618, metadata !DIExpression()), !dbg !1677
  %597 = icmp eq i64 %134, 0, !dbg !2126
  %598 = and i1 %126, %597, !dbg !2128
  %599 = and i1 %598, %119, !dbg !2128
  br i1 %599, label %638, label %600, !dbg !2128

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2129
  %602 = or i1 %119, %601, !dbg !2129
  %603 = xor i1 %136, true, !dbg !2129
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2129
  br i1 %604, label %612, label %605, !dbg !2129

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2131

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2133
  br label %653, !dbg !2135

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2136
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2138
  br i1 %611, label %36, label %612, !dbg !2138

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2139
  %615 = or i1 %614, %613, !dbg !2141
  br i1 %615, label %631, label %616, !dbg !2141

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1627, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %134, metadata !1625, metadata !DIExpression()), !dbg !1677
  %617 = load i8, i8* %116, align 1, !dbg !2142, !tbaa !544
  %618 = icmp eq i8 %617, 0, !dbg !2145
  br i1 %618, label %631, label %619, !dbg !2145

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1627, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 %622, metadata !1625, metadata !DIExpression()), !dbg !1677
  %623 = icmp ult i64 %622, %140, !dbg !2146
  br i1 %623, label %624, label %626, !dbg !2149

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2146
  store i8 %620, i8* %625, align 1, !dbg !2146, !tbaa !544
  br label %626, !dbg !2146

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %627, metadata !1625, metadata !DIExpression()), !dbg !1677
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2150
  call void @llvm.dbg.value(metadata i8* %628, metadata !1627, metadata !DIExpression()), !dbg !1677
  %629 = load i8, i8* %628, align 1, !dbg !2142, !tbaa !544
  %630 = icmp eq i8 %629, 0, !dbg !2145
  br i1 %630, label %631, label %619, !dbg !2145, !llvm.loop !2151

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1753
  call void @llvm.dbg.value(metadata i64 %632, metadata !1625, metadata !DIExpression()), !dbg !1677
  %633 = icmp ult i64 %632, %140, !dbg !2153
  br i1 %633, label %634, label %653, !dbg !2155

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2156
  store i8 0, i8* %635, align 1, !dbg !2157, !tbaa !544
  br label %653, !dbg !2156

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1676), !dbg !1983
  %637 = icmp eq i32 %112, 2, !dbg !2158
  br i1 %637, label %643, label %647, !dbg !1984

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1676), !dbg !1983
  %641 = icmp eq i32 %112, 2, !dbg !2158
  %642 = select i1 %118, i32 4, i32 2, !dbg !1984
  br i1 %641, label %643, label %647, !dbg !1984

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1984

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1619, metadata !DIExpression()), !dbg !1677
  %651 = and i32 %5, -3, !dbg !2159
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2160
  br label %653, !dbg !2161

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2162
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !2163 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2165 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2169, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i64 %1, metadata !2170, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2171, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8* %0, metadata !2173, metadata !DIExpression()) #32, !dbg !2186
  call void @llvm.dbg.value(metadata i64 %1, metadata !2178, metadata !DIExpression()) #32, !dbg !2186
  call void @llvm.dbg.value(metadata i64* null, metadata !2179, metadata !DIExpression()) #32, !dbg !2186
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2180, metadata !DIExpression()) #32, !dbg !2186
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2188
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2188
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2181, metadata !DIExpression()) #32, !dbg !2186
  %6 = tail call i32* @__errno_location() #35, !dbg !2189
  %7 = load i32, i32* %6, align 4, !dbg !2189, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %7, metadata !2182, metadata !DIExpression()) #32, !dbg !2186
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2190
  %9 = load i32, i32* %8, align 4, !dbg !2190, !tbaa !1559
  %10 = or i32 %9, 1, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %10, metadata !2183, metadata !DIExpression()) #32, !dbg !2186
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2192
  %12 = load i32, i32* %11, align 8, !dbg !2192, !tbaa !1508
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2193
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2194
  %15 = load i8*, i8** %14, align 8, !dbg !2194, !tbaa !1581
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2195
  %17 = load i8*, i8** %16, align 8, !dbg !2195, !tbaa !1584
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !2196
  %19 = add i64 %18, 1, !dbg !2197
  call void @llvm.dbg.value(metadata i64 %19, metadata !2184, metadata !DIExpression()) #32, !dbg !2186
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #38, !dbg !2198
  call void @llvm.dbg.value(metadata i8* %20, metadata !2185, metadata !DIExpression()) #32, !dbg !2186
  %21 = load i32, i32* %11, align 8, !dbg !2199, !tbaa !1508
  %22 = load i8*, i8** %14, align 8, !dbg !2200, !tbaa !1581
  %23 = load i8*, i8** %16, align 8, !dbg !2201, !tbaa !1584
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !2202
  store i32 %7, i32* %6, align 4, !dbg !2203, !tbaa !535
  ret i8* %20, !dbg !2204
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2174 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2173, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i64 %1, metadata !2178, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i64* %2, metadata !2179, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2180, metadata !DIExpression()), !dbg !2205
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2206
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2206
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2181, metadata !DIExpression()), !dbg !2205
  %7 = tail call i32* @__errno_location() #35, !dbg !2207
  %8 = load i32, i32* %7, align 4, !dbg !2207, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %8, metadata !2182, metadata !DIExpression()), !dbg !2205
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2208
  %10 = load i32, i32* %9, align 4, !dbg !2208, !tbaa !1559
  %11 = icmp eq i64* %2, null, !dbg !2209
  %12 = zext i1 %11 to i32, !dbg !2209
  %13 = or i32 %10, %12, !dbg !2210
  call void @llvm.dbg.value(metadata i32 %13, metadata !2183, metadata !DIExpression()), !dbg !2205
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2211
  %15 = load i32, i32* %14, align 8, !dbg !2211, !tbaa !1508
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2212
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2213
  %18 = load i8*, i8** %17, align 8, !dbg !2213, !tbaa !1581
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2214
  %20 = load i8*, i8** %19, align 8, !dbg !2214, !tbaa !1584
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2215
  %22 = add i64 %21, 1, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %22, metadata !2184, metadata !DIExpression()), !dbg !2205
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #38, !dbg !2217
  call void @llvm.dbg.value(metadata i8* %23, metadata !2185, metadata !DIExpression()), !dbg !2205
  %24 = load i32, i32* %14, align 8, !dbg !2218, !tbaa !1508
  %25 = load i8*, i8** %17, align 8, !dbg !2219, !tbaa !1581
  %26 = load i8*, i8** %19, align 8, !dbg !2220, !tbaa !1584
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2221
  store i32 %8, i32* %7, align 4, !dbg !2222, !tbaa !535
  br i1 %11, label %29, label %28, !dbg !2223

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2224, !tbaa !2226
  br label %29, !dbg !2227

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2228
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2229 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2234, !tbaa !443
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2231, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i32 1, metadata !2232, metadata !DIExpression()), !dbg !2236
  %2 = load i32, i32* @nslots, align 4, !tbaa !535
  call void @llvm.dbg.value(metadata i32 1, metadata !2232, metadata !DIExpression()), !dbg !2236
  %3 = icmp sgt i32 %2, 1, !dbg !2237
  br i1 %3, label %4, label %6, !dbg !2239

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2237
  br label %10, !dbg !2239

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2240
  %8 = load i8*, i8** %7, align 8, !dbg !2240, !tbaa !2242
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2244
  br i1 %9, label %17, label %16, !dbg !2245

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2232, metadata !DIExpression()), !dbg !2236
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2246
  %13 = load i8*, i8** %12, align 8, !dbg !2246, !tbaa !2242
  tail call void @free(i8* noundef %13) #32, !dbg !2247
  %14 = add nuw nsw i64 %11, 1, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %14, metadata !2232, metadata !DIExpression()), !dbg !2236
  %15 = icmp eq i64 %14, %5, !dbg !2237
  br i1 %15, label %6, label %10, !dbg !2239, !llvm.loop !2249

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !2251
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2253, !tbaa !2254
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2255, !tbaa !2242
  br label %17, !dbg !2256

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2257
  br i1 %18, label %21, label %19, !dbg !2259

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2260
  tail call void @free(i8* noundef %20) #32, !dbg !2262
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2263, !tbaa !443
  br label %21, !dbg !2264

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2265, !tbaa !535
  ret void, !dbg !2266
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2267 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2269, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %1, metadata !2270, metadata !DIExpression()), !dbg !2271
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2272
  ret i8* %3, !dbg !2273
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2274 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2278, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8* %1, metadata !2279, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i64 %2, metadata !2280, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2281, metadata !DIExpression()), !dbg !2294
  %6 = tail call i32* @__errno_location() #35, !dbg !2295
  %7 = load i32, i32* %6, align 4, !dbg !2295, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %7, metadata !2282, metadata !DIExpression()), !dbg !2294
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2296, !tbaa !443
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2283, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2284, metadata !DIExpression()), !dbg !2294
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2297
  br i1 %9, label %10, label %11, !dbg !2297

10:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2299
  unreachable, !dbg !2299

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2300, !tbaa !535
  %13 = icmp sgt i32 %12, %0, !dbg !2301
  br i1 %13, label %36, label %14, !dbg !2302

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2303
  call void @llvm.dbg.value(metadata i1 %15, metadata !2285, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2304
  %16 = bitcast i64* %5 to i8*, !dbg !2305
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !2305
  %17 = sext i32 %12 to i64, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %17, metadata !2288, metadata !DIExpression()), !dbg !2304
  store i64 %17, i64* %5, align 8, !dbg !2307, !tbaa !2226
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2308
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2308
  %20 = add nuw nsw i32 %0, 1, !dbg !2309
  %21 = sub i32 %20, %12, !dbg !2310
  %22 = sext i32 %21 to i64, !dbg !2311
  call void @llvm.dbg.value(metadata i64* %5, metadata !2288, metadata !DIExpression(DW_OP_deref)), !dbg !2304
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !2312
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2312
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2283, metadata !DIExpression()), !dbg !2294
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2313, !tbaa !443
  br i1 %15, label %25, label %26, !dbg !2314

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2315, !tbaa.struct !2317
  br label %26, !dbg !2318

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2319, !tbaa !535
  %28 = sext i32 %27 to i64, !dbg !2320
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2320
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2321
  %31 = load i64, i64* %5, align 8, !dbg !2322, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 %31, metadata !2288, metadata !DIExpression()), !dbg !2304
  %32 = sub nsw i64 %31, %28, !dbg !2323
  %33 = shl i64 %32, 4, !dbg !2324
  call void @llvm.dbg.value(metadata i8* %30, metadata !1711, metadata !DIExpression()) #32, !dbg !2325
  call void @llvm.dbg.value(metadata i32 0, metadata !1714, metadata !DIExpression()) #32, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %33, metadata !1715, metadata !DIExpression()) #32, !dbg !2325
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !2327
  %34 = load i64, i64* %5, align 8, !dbg !2328, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 %34, metadata !2288, metadata !DIExpression()), !dbg !2304
  %35 = trunc i64 %34 to i32, !dbg !2328
  store i32 %35, i32* @nslots, align 4, !dbg !2329, !tbaa !535
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !2330
  br label %36, !dbg !2331

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2294
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2283, metadata !DIExpression()), !dbg !2294
  %38 = zext i32 %0 to i64, !dbg !2332
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2333
  %40 = load i64, i64* %39, align 8, !dbg !2333, !tbaa !2254
  call void @llvm.dbg.value(metadata i64 %40, metadata !2289, metadata !DIExpression()), !dbg !2334
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2335
  %42 = load i8*, i8** %41, align 8, !dbg !2335, !tbaa !2242
  call void @llvm.dbg.value(metadata i8* %42, metadata !2291, metadata !DIExpression()), !dbg !2334
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2336
  %44 = load i32, i32* %43, align 4, !dbg !2336, !tbaa !1559
  %45 = or i32 %44, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i32 %45, metadata !2292, metadata !DIExpression()), !dbg !2334
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2338
  %47 = load i32, i32* %46, align 8, !dbg !2338, !tbaa !1508
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2339
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2340
  %50 = load i8*, i8** %49, align 8, !dbg !2340, !tbaa !1581
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2341
  %52 = load i8*, i8** %51, align 8, !dbg !2341, !tbaa !1584
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2342
  call void @llvm.dbg.value(metadata i64 %53, metadata !2293, metadata !DIExpression()), !dbg !2334
  %54 = icmp ugt i64 %40, %53, !dbg !2343
  br i1 %54, label %65, label %55, !dbg !2345

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %56, metadata !2289, metadata !DIExpression()), !dbg !2334
  store i64 %56, i64* %39, align 8, !dbg !2348, !tbaa !2254
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2349
  br i1 %57, label %59, label %58, !dbg !2351

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !2352
  br label %59, !dbg !2352

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #38, !dbg !2353
  call void @llvm.dbg.value(metadata i8* %60, metadata !2291, metadata !DIExpression()), !dbg !2334
  store i8* %60, i8** %41, align 8, !dbg !2354, !tbaa !2242
  %61 = load i32, i32* %46, align 8, !dbg !2355, !tbaa !1508
  %62 = load i8*, i8** %49, align 8, !dbg !2356, !tbaa !1581
  %63 = load i8*, i8** %51, align 8, !dbg !2357, !tbaa !1584
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2358
  br label %65, !dbg !2359

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2334
  call void @llvm.dbg.value(metadata i8* %66, metadata !2291, metadata !DIExpression()), !dbg !2334
  store i32 %7, i32* %6, align 4, !dbg !2360, !tbaa !535
  ret i8* %66, !dbg !2361
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2362 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2366, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %1, metadata !2367, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i64 %2, metadata !2368, metadata !DIExpression()), !dbg !2369
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2370
  ret i8* %4, !dbg !2371
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2372 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2374, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 0, metadata !2269, metadata !DIExpression()) #32, !dbg !2376
  call void @llvm.dbg.value(metadata i8* %0, metadata !2270, metadata !DIExpression()) #32, !dbg !2376
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2378
  ret i8* %2, !dbg !2379
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2380 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2384, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %1, metadata !2385, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 0, metadata !2366, metadata !DIExpression()) #32, !dbg !2387
  call void @llvm.dbg.value(metadata i8* %0, metadata !2367, metadata !DIExpression()) #32, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %1, metadata !2368, metadata !DIExpression()) #32, !dbg !2387
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2389
  ret i8* %3, !dbg !2390
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2391 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2395, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i32 %1, metadata !2396, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8* %2, metadata !2397, metadata !DIExpression()), !dbg !2399
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2400
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2400
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2398, metadata !DIExpression()), !dbg !2401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402), !dbg !2405
  call void @llvm.dbg.value(metadata i32 %1, metadata !2406, metadata !DIExpression()) #32, !dbg !2412
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2411, metadata !DIExpression()) #32, !dbg !2414
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2414, !alias.scope !2402
  %6 = icmp eq i32 %1, 10, !dbg !2415
  br i1 %6, label %7, label %8, !dbg !2417

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2418, !noalias !2402
  unreachable, !dbg !2418

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2419
  store i32 %1, i32* %9, align 8, !dbg !2420, !tbaa !1508, !alias.scope !2402
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2421
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2422
  ret i8* %10, !dbg !2423
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2424 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2428, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %1, metadata !2429, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8* %2, metadata !2430, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i64 %3, metadata !2431, metadata !DIExpression()), !dbg !2433
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2434
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2434
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2432, metadata !DIExpression()), !dbg !2435
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2436), !dbg !2439
  call void @llvm.dbg.value(metadata i32 %1, metadata !2406, metadata !DIExpression()) #32, !dbg !2440
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2411, metadata !DIExpression()) #32, !dbg !2442
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !2442, !alias.scope !2436
  %7 = icmp eq i32 %1, 10, !dbg !2443
  br i1 %7, label %8, label %9, !dbg !2444

8:                                                ; preds = %4
  tail call void @abort() #34, !dbg !2445, !noalias !2436
  unreachable, !dbg !2445

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2446
  store i32 %1, i32* %10, align 8, !dbg !2447, !tbaa !1508, !alias.scope !2436
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2448
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2449
  ret i8* %11, !dbg !2450
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2451 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2455, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8* %1, metadata !2456, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 0, metadata !2395, metadata !DIExpression()) #32, !dbg !2458
  call void @llvm.dbg.value(metadata i32 %0, metadata !2396, metadata !DIExpression()) #32, !dbg !2458
  call void @llvm.dbg.value(metadata i8* %1, metadata !2397, metadata !DIExpression()) #32, !dbg !2458
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2460
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2460
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2398, metadata !DIExpression()) #32, !dbg !2461
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2462) #32, !dbg !2465
  call void @llvm.dbg.value(metadata i32 %0, metadata !2406, metadata !DIExpression()) #32, !dbg !2466
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2411, metadata !DIExpression()) #32, !dbg !2468
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !2468, !alias.scope !2462
  %5 = icmp eq i32 %0, 10, !dbg !2469
  br i1 %5, label %6, label %7, !dbg !2470

6:                                                ; preds = %2
  tail call void @abort() #34, !dbg !2471, !noalias !2462
  unreachable, !dbg !2471

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2472
  store i32 %0, i32* %8, align 8, !dbg !2473, !tbaa !1508, !alias.scope !2462
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2474
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2475
  ret i8* %9, !dbg !2476
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2477 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2481, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8* %1, metadata !2482, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %2, metadata !2483, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i32 0, metadata !2428, metadata !DIExpression()) #32, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %0, metadata !2429, metadata !DIExpression()) #32, !dbg !2485
  call void @llvm.dbg.value(metadata i8* %1, metadata !2430, metadata !DIExpression()) #32, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %2, metadata !2431, metadata !DIExpression()) #32, !dbg !2485
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2487
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2487
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2432, metadata !DIExpression()) #32, !dbg !2488
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2489) #32, !dbg !2492
  call void @llvm.dbg.value(metadata i32 %0, metadata !2406, metadata !DIExpression()) #32, !dbg !2493
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2411, metadata !DIExpression()) #32, !dbg !2495
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2495, !alias.scope !2489
  %6 = icmp eq i32 %0, 10, !dbg !2496
  br i1 %6, label %7, label %8, !dbg !2497

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2498, !noalias !2489
  unreachable, !dbg !2498

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2499
  store i32 %0, i32* %9, align 8, !dbg !2500, !tbaa !1508, !alias.scope !2489
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2501
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2502
  ret i8* %10, !dbg !2503
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2504 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2508, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i64 %1, metadata !2509, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 %2, metadata !2510, metadata !DIExpression()), !dbg !2512
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2513
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2513
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2511, metadata !DIExpression()), !dbg !2514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2515, !tbaa.struct !2516
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1526, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 %2, metadata !1527, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 1, metadata !1528, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 %2, metadata !1529, metadata !DIExpression()), !dbg !2517
  %6 = lshr i8 %2, 5, !dbg !2519
  %7 = zext i8 %6 to i64, !dbg !2519
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2520
  call void @llvm.dbg.value(metadata i32* %8, metadata !1530, metadata !DIExpression()), !dbg !2517
  %9 = and i8 %2, 31, !dbg !2521
  %10 = zext i8 %9 to i32, !dbg !2521
  call void @llvm.dbg.value(metadata i32 %10, metadata !1532, metadata !DIExpression()), !dbg !2517
  %11 = load i32, i32* %8, align 4, !dbg !2522, !tbaa !535
  %12 = lshr i32 %11, %10, !dbg !2523
  %13 = and i32 %12, 1, !dbg !2524
  call void @llvm.dbg.value(metadata i32 %13, metadata !1533, metadata !DIExpression()), !dbg !2517
  %14 = xor i32 %13, 1, !dbg !2525
  %15 = shl i32 %14, %10, !dbg !2526
  %16 = xor i32 %15, %11, !dbg !2527
  store i32 %16, i32* %8, align 4, !dbg !2527, !tbaa !535
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2528
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2529
  ret i8* %17, !dbg !2530
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2531 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2535, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 %1, metadata !2536, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8* %0, metadata !2508, metadata !DIExpression()) #32, !dbg !2538
  call void @llvm.dbg.value(metadata i64 -1, metadata !2509, metadata !DIExpression()) #32, !dbg !2538
  call void @llvm.dbg.value(metadata i8 %1, metadata !2510, metadata !DIExpression()) #32, !dbg !2538
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2540
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2540
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2511, metadata !DIExpression()) #32, !dbg !2541
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2542, !tbaa.struct !2516
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1526, metadata !DIExpression()) #32, !dbg !2543
  call void @llvm.dbg.value(metadata i8 %1, metadata !1527, metadata !DIExpression()) #32, !dbg !2543
  call void @llvm.dbg.value(metadata i32 1, metadata !1528, metadata !DIExpression()) #32, !dbg !2543
  call void @llvm.dbg.value(metadata i8 %1, metadata !1529, metadata !DIExpression()) #32, !dbg !2543
  %5 = lshr i8 %1, 5, !dbg !2545
  %6 = zext i8 %5 to i64, !dbg !2545
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2546
  call void @llvm.dbg.value(metadata i32* %7, metadata !1530, metadata !DIExpression()) #32, !dbg !2543
  %8 = and i8 %1, 31, !dbg !2547
  %9 = zext i8 %8 to i32, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %9, metadata !1532, metadata !DIExpression()) #32, !dbg !2543
  %10 = load i32, i32* %7, align 4, !dbg !2548, !tbaa !535
  %11 = lshr i32 %10, %9, !dbg !2549
  %12 = and i32 %11, 1, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %12, metadata !1533, metadata !DIExpression()) #32, !dbg !2543
  %13 = xor i32 %12, 1, !dbg !2551
  %14 = shl i32 %13, %9, !dbg !2552
  %15 = xor i32 %14, %10, !dbg !2553
  store i32 %15, i32* %7, align 4, !dbg !2553, !tbaa !535
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2554
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2555
  ret i8* %16, !dbg !2556
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2557 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2559, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8* %0, metadata !2535, metadata !DIExpression()) #32, !dbg !2561
  call void @llvm.dbg.value(metadata i8 58, metadata !2536, metadata !DIExpression()) #32, !dbg !2561
  call void @llvm.dbg.value(metadata i8* %0, metadata !2508, metadata !DIExpression()) #32, !dbg !2563
  call void @llvm.dbg.value(metadata i64 -1, metadata !2509, metadata !DIExpression()) #32, !dbg !2563
  call void @llvm.dbg.value(metadata i8 58, metadata !2510, metadata !DIExpression()) #32, !dbg !2563
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2565
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2565
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2511, metadata !DIExpression()) #32, !dbg !2566
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2567, !tbaa.struct !2516
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1526, metadata !DIExpression()) #32, !dbg !2568
  call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()) #32, !dbg !2568
  call void @llvm.dbg.value(metadata i32 1, metadata !1528, metadata !DIExpression()) #32, !dbg !2568
  call void @llvm.dbg.value(metadata i8 58, metadata !1529, metadata !DIExpression()) #32, !dbg !2568
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2570
  call void @llvm.dbg.value(metadata i32* %4, metadata !1530, metadata !DIExpression()) #32, !dbg !2568
  call void @llvm.dbg.value(metadata i32 26, metadata !1532, metadata !DIExpression()) #32, !dbg !2568
  %5 = load i32, i32* %4, align 4, !dbg !2571, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %5, metadata !1533, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2568
  %6 = or i32 %5, 67108864, !dbg !2572
  store i32 %6, i32* %4, align 4, !dbg !2572, !tbaa !535
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2573
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2574
  ret i8* %7, !dbg !2575
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2576 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2578, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i64 %1, metadata !2579, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8* %0, metadata !2508, metadata !DIExpression()) #32, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %1, metadata !2509, metadata !DIExpression()) #32, !dbg !2581
  call void @llvm.dbg.value(metadata i8 58, metadata !2510, metadata !DIExpression()) #32, !dbg !2581
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2583
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2583
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2511, metadata !DIExpression()) #32, !dbg !2584
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2585, !tbaa.struct !2516
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1526, metadata !DIExpression()) #32, !dbg !2586
  call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()) #32, !dbg !2586
  call void @llvm.dbg.value(metadata i32 1, metadata !1528, metadata !DIExpression()) #32, !dbg !2586
  call void @llvm.dbg.value(metadata i8 58, metadata !1529, metadata !DIExpression()) #32, !dbg !2586
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2588
  call void @llvm.dbg.value(metadata i32* %5, metadata !1530, metadata !DIExpression()) #32, !dbg !2586
  call void @llvm.dbg.value(metadata i32 26, metadata !1532, metadata !DIExpression()) #32, !dbg !2586
  %6 = load i32, i32* %5, align 4, !dbg !2589, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %6, metadata !1533, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2586
  %7 = or i32 %6, 67108864, !dbg !2590
  store i32 %7, i32* %5, align 4, !dbg !2590, !tbaa !535
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2591
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2592
  ret i8* %8, !dbg !2593
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2594 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2596, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 %1, metadata !2597, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8* %2, metadata !2598, metadata !DIExpression()), !dbg !2600
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2601
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2601
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2599, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i32 %1, metadata !2406, metadata !DIExpression()) #32, !dbg !2603
  call void @llvm.dbg.value(metadata i32 0, metadata !2411, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2603
  %6 = icmp eq i32 %1, 10, !dbg !2605
  br i1 %6, label %7, label %8, !dbg !2606

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2607, !noalias !2608
  unreachable, !dbg !2607

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2411, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2603
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2611
  store i32 %1, i32* %9, align 8, !dbg !2611, !tbaa.struct !2516
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2611
  %11 = bitcast i32* %10 to i8*, !dbg !2611
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2611
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1526, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i32 1, metadata !1528, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 58, metadata !1529, metadata !DIExpression()), !dbg !2612
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2614
  call void @llvm.dbg.value(metadata i32* %12, metadata !1530, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i32 26, metadata !1532, metadata !DIExpression()), !dbg !2612
  %13 = load i32, i32* %12, align 4, !dbg !2615, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %13, metadata !1533, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2612
  %14 = or i32 %13, 67108864, !dbg !2616
  store i32 %14, i32* %12, align 4, !dbg !2616, !tbaa !535
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2617
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2618
  ret i8* %15, !dbg !2619
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2620 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2624, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8* %1, metadata !2625, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8* %2, metadata !2626, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8* %3, metadata !2627, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %0, metadata !2629, metadata !DIExpression()) #32, !dbg !2639
  call void @llvm.dbg.value(metadata i8* %1, metadata !2634, metadata !DIExpression()) #32, !dbg !2639
  call void @llvm.dbg.value(metadata i8* %2, metadata !2635, metadata !DIExpression()) #32, !dbg !2639
  call void @llvm.dbg.value(metadata i8* %3, metadata !2636, metadata !DIExpression()) #32, !dbg !2639
  call void @llvm.dbg.value(metadata i64 -1, metadata !2637, metadata !DIExpression()) #32, !dbg !2639
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2641
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2641
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2638, metadata !DIExpression()) #32, !dbg !2642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2643, !tbaa.struct !2516
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1566, metadata !DIExpression()) #32, !dbg !2644
  call void @llvm.dbg.value(metadata i8* %1, metadata !1567, metadata !DIExpression()) #32, !dbg !2644
  call void @llvm.dbg.value(metadata i8* %2, metadata !1568, metadata !DIExpression()) #32, !dbg !2644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1566, metadata !DIExpression()) #32, !dbg !2644
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2646
  store i32 10, i32* %7, align 8, !dbg !2647, !tbaa !1508
  %8 = icmp ne i8* %1, null, !dbg !2648
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2649
  br i1 %10, label %12, label %11, !dbg !2649

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2650
  unreachable, !dbg !2650

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2651
  store i8* %1, i8** %13, align 8, !dbg !2652, !tbaa !1581
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2653
  store i8* %2, i8** %14, align 8, !dbg !2654, !tbaa !1584
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2655
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2656
  ret i8* %15, !dbg !2657
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2630 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2629, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8* %1, metadata !2634, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8* %2, metadata !2635, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8* %3, metadata !2636, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 %4, metadata !2637, metadata !DIExpression()), !dbg !2658
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2659
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2659
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2638, metadata !DIExpression()), !dbg !2660
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2661, !tbaa.struct !2516
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1566, metadata !DIExpression()) #32, !dbg !2662
  call void @llvm.dbg.value(metadata i8* %1, metadata !1567, metadata !DIExpression()) #32, !dbg !2662
  call void @llvm.dbg.value(metadata i8* %2, metadata !1568, metadata !DIExpression()) #32, !dbg !2662
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1566, metadata !DIExpression()) #32, !dbg !2662
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2664
  store i32 10, i32* %8, align 8, !dbg !2665, !tbaa !1508
  %9 = icmp ne i8* %1, null, !dbg !2666
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2667
  br i1 %11, label %13, label %12, !dbg !2667

12:                                               ; preds = %5
  tail call void @abort() #34, !dbg !2668
  unreachable, !dbg !2668

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2669
  store i8* %1, i8** %14, align 8, !dbg !2670, !tbaa !1581
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2671
  store i8* %2, i8** %15, align 8, !dbg !2672, !tbaa !1584
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2673
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2674
  ret i8* %16, !dbg !2675
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2676 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2680, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8* %1, metadata !2681, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8* %2, metadata !2682, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i32 0, metadata !2624, metadata !DIExpression()) #32, !dbg !2684
  call void @llvm.dbg.value(metadata i8* %0, metadata !2625, metadata !DIExpression()) #32, !dbg !2684
  call void @llvm.dbg.value(metadata i8* %1, metadata !2626, metadata !DIExpression()) #32, !dbg !2684
  call void @llvm.dbg.value(metadata i8* %2, metadata !2627, metadata !DIExpression()) #32, !dbg !2684
  call void @llvm.dbg.value(metadata i32 0, metadata !2629, metadata !DIExpression()) #32, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %0, metadata !2634, metadata !DIExpression()) #32, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %1, metadata !2635, metadata !DIExpression()) #32, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %2, metadata !2636, metadata !DIExpression()) #32, !dbg !2686
  call void @llvm.dbg.value(metadata i64 -1, metadata !2637, metadata !DIExpression()) #32, !dbg !2686
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2688
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2688
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2638, metadata !DIExpression()) #32, !dbg !2689
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2690, !tbaa.struct !2516
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1566, metadata !DIExpression()) #32, !dbg !2691
  call void @llvm.dbg.value(metadata i8* %0, metadata !1567, metadata !DIExpression()) #32, !dbg !2691
  call void @llvm.dbg.value(metadata i8* %1, metadata !1568, metadata !DIExpression()) #32, !dbg !2691
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1566, metadata !DIExpression()) #32, !dbg !2691
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2693
  store i32 10, i32* %6, align 8, !dbg !2694, !tbaa !1508
  %7 = icmp ne i8* %0, null, !dbg !2695
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2696
  br i1 %9, label %11, label %10, !dbg !2696

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !2697
  unreachable, !dbg !2697

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2698
  store i8* %0, i8** %12, align 8, !dbg !2699, !tbaa !1581
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2700
  store i8* %1, i8** %13, align 8, !dbg !2701, !tbaa !1584
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2702
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2703
  ret i8* %14, !dbg !2704
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2705 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2709, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8* %1, metadata !2710, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8* %2, metadata !2711, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i64 %3, metadata !2712, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i32 0, metadata !2629, metadata !DIExpression()) #32, !dbg !2714
  call void @llvm.dbg.value(metadata i8* %0, metadata !2634, metadata !DIExpression()) #32, !dbg !2714
  call void @llvm.dbg.value(metadata i8* %1, metadata !2635, metadata !DIExpression()) #32, !dbg !2714
  call void @llvm.dbg.value(metadata i8* %2, metadata !2636, metadata !DIExpression()) #32, !dbg !2714
  call void @llvm.dbg.value(metadata i64 %3, metadata !2637, metadata !DIExpression()) #32, !dbg !2714
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2716
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2716
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2638, metadata !DIExpression()) #32, !dbg !2717
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2718, !tbaa.struct !2516
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1566, metadata !DIExpression()) #32, !dbg !2719
  call void @llvm.dbg.value(metadata i8* %0, metadata !1567, metadata !DIExpression()) #32, !dbg !2719
  call void @llvm.dbg.value(metadata i8* %1, metadata !1568, metadata !DIExpression()) #32, !dbg !2719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1566, metadata !DIExpression()) #32, !dbg !2719
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2721
  store i32 10, i32* %7, align 8, !dbg !2722, !tbaa !1508
  %8 = icmp ne i8* %0, null, !dbg !2723
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2724
  br i1 %10, label %12, label %11, !dbg !2724

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2725
  unreachable, !dbg !2725

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2726
  store i8* %0, i8** %13, align 8, !dbg !2727, !tbaa !1581
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2728
  store i8* %1, i8** %14, align 8, !dbg !2729, !tbaa !1584
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2730
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2731
  ret i8* %15, !dbg !2732
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2733 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2737, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8* %1, metadata !2738, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i64 %2, metadata !2739, metadata !DIExpression()), !dbg !2740
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2741
  ret i8* %4, !dbg !2742
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2743 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2747, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %1, metadata !2748, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 0, metadata !2737, metadata !DIExpression()) #32, !dbg !2750
  call void @llvm.dbg.value(metadata i8* %0, metadata !2738, metadata !DIExpression()) #32, !dbg !2750
  call void @llvm.dbg.value(metadata i64 %1, metadata !2739, metadata !DIExpression()) #32, !dbg !2750
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2752
  ret i8* %3, !dbg !2753
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2754 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2758, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i8* %1, metadata !2759, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 %0, metadata !2737, metadata !DIExpression()) #32, !dbg !2761
  call void @llvm.dbg.value(metadata i8* %1, metadata !2738, metadata !DIExpression()) #32, !dbg !2761
  call void @llvm.dbg.value(metadata i64 -1, metadata !2739, metadata !DIExpression()) #32, !dbg !2761
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2763
  ret i8* %3, !dbg !2764
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2765 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2769, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i32 0, metadata !2758, metadata !DIExpression()) #32, !dbg !2771
  call void @llvm.dbg.value(metadata i8* %0, metadata !2759, metadata !DIExpression()) #32, !dbg !2771
  call void @llvm.dbg.value(metadata i32 0, metadata !2737, metadata !DIExpression()) #32, !dbg !2773
  call void @llvm.dbg.value(metadata i8* %0, metadata !2738, metadata !DIExpression()) #32, !dbg !2773
  call void @llvm.dbg.value(metadata i64 -1, metadata !2739, metadata !DIExpression()) #32, !dbg !2773
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2775
  ret i8* %2, !dbg !2776
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2777 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2816, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i8* %1, metadata !2817, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i8* %2, metadata !2818, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i8* %3, metadata !2819, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i8** %4, metadata !2820, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i64 %5, metadata !2821, metadata !DIExpression()), !dbg !2822
  %7 = icmp eq i8* %1, null, !dbg !2823
  br i1 %7, label %10, label %8, !dbg !2825

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2826
  br label %12, !dbg !2826

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.85, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2827
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.87, i64 0, i64 0), i32 noundef 5) #32, !dbg !2828
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2828
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.88, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2829
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.89, i64 0, i64 0), i32 noundef 5) #32, !dbg !2830
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.90, i64 0, i64 0)) #32, !dbg !2830
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.88, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2831
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
  ], !dbg !2832

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.91, i64 0, i64 0), i32 noundef 5) #32, !dbg !2833
  %21 = load i8*, i8** %4, align 8, !dbg !2833, !tbaa !443
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2833
  br label %147, !dbg !2835

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.92, i64 0, i64 0), i32 noundef 5) #32, !dbg !2836
  %25 = load i8*, i8** %4, align 8, !dbg !2836, !tbaa !443
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2836
  %27 = load i8*, i8** %26, align 8, !dbg !2836, !tbaa !443
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2836
  br label %147, !dbg !2837

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.93, i64 0, i64 0), i32 noundef 5) #32, !dbg !2838
  %31 = load i8*, i8** %4, align 8, !dbg !2838, !tbaa !443
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2838
  %33 = load i8*, i8** %32, align 8, !dbg !2838, !tbaa !443
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2838
  %35 = load i8*, i8** %34, align 8, !dbg !2838, !tbaa !443
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2838
  br label %147, !dbg !2839

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.94, i64 0, i64 0), i32 noundef 5) #32, !dbg !2840
  %39 = load i8*, i8** %4, align 8, !dbg !2840, !tbaa !443
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2840
  %41 = load i8*, i8** %40, align 8, !dbg !2840, !tbaa !443
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2840
  %43 = load i8*, i8** %42, align 8, !dbg !2840, !tbaa !443
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2840
  %45 = load i8*, i8** %44, align 8, !dbg !2840, !tbaa !443
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2840
  br label %147, !dbg !2841

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.95, i64 0, i64 0), i32 noundef 5) #32, !dbg !2842
  %49 = load i8*, i8** %4, align 8, !dbg !2842, !tbaa !443
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2842
  %51 = load i8*, i8** %50, align 8, !dbg !2842, !tbaa !443
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2842
  %53 = load i8*, i8** %52, align 8, !dbg !2842, !tbaa !443
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2842
  %55 = load i8*, i8** %54, align 8, !dbg !2842, !tbaa !443
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2842
  %57 = load i8*, i8** %56, align 8, !dbg !2842, !tbaa !443
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2842
  br label %147, !dbg !2843

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.96, i64 0, i64 0), i32 noundef 5) #32, !dbg !2844
  %61 = load i8*, i8** %4, align 8, !dbg !2844, !tbaa !443
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2844
  %63 = load i8*, i8** %62, align 8, !dbg !2844, !tbaa !443
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2844
  %65 = load i8*, i8** %64, align 8, !dbg !2844, !tbaa !443
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2844
  %67 = load i8*, i8** %66, align 8, !dbg !2844, !tbaa !443
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2844
  %69 = load i8*, i8** %68, align 8, !dbg !2844, !tbaa !443
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2844
  %71 = load i8*, i8** %70, align 8, !dbg !2844, !tbaa !443
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2844
  br label %147, !dbg !2845

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.97, i64 0, i64 0), i32 noundef 5) #32, !dbg !2846
  %75 = load i8*, i8** %4, align 8, !dbg !2846, !tbaa !443
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2846
  %77 = load i8*, i8** %76, align 8, !dbg !2846, !tbaa !443
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2846
  %79 = load i8*, i8** %78, align 8, !dbg !2846, !tbaa !443
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2846
  %81 = load i8*, i8** %80, align 8, !dbg !2846, !tbaa !443
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2846
  %83 = load i8*, i8** %82, align 8, !dbg !2846, !tbaa !443
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2846
  %85 = load i8*, i8** %84, align 8, !dbg !2846, !tbaa !443
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2846
  %87 = load i8*, i8** %86, align 8, !dbg !2846, !tbaa !443
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2846
  br label %147, !dbg !2847

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.98, i64 0, i64 0), i32 noundef 5) #32, !dbg !2848
  %91 = load i8*, i8** %4, align 8, !dbg !2848, !tbaa !443
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2848
  %93 = load i8*, i8** %92, align 8, !dbg !2848, !tbaa !443
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2848
  %95 = load i8*, i8** %94, align 8, !dbg !2848, !tbaa !443
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2848
  %97 = load i8*, i8** %96, align 8, !dbg !2848, !tbaa !443
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2848
  %99 = load i8*, i8** %98, align 8, !dbg !2848, !tbaa !443
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2848
  %101 = load i8*, i8** %100, align 8, !dbg !2848, !tbaa !443
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2848
  %103 = load i8*, i8** %102, align 8, !dbg !2848, !tbaa !443
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2848
  %105 = load i8*, i8** %104, align 8, !dbg !2848, !tbaa !443
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2848
  br label %147, !dbg !2849

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.99, i64 0, i64 0), i32 noundef 5) #32, !dbg !2850
  %109 = load i8*, i8** %4, align 8, !dbg !2850, !tbaa !443
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2850
  %111 = load i8*, i8** %110, align 8, !dbg !2850, !tbaa !443
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2850
  %113 = load i8*, i8** %112, align 8, !dbg !2850, !tbaa !443
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2850
  %115 = load i8*, i8** %114, align 8, !dbg !2850, !tbaa !443
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2850
  %117 = load i8*, i8** %116, align 8, !dbg !2850, !tbaa !443
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2850
  %119 = load i8*, i8** %118, align 8, !dbg !2850, !tbaa !443
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2850
  %121 = load i8*, i8** %120, align 8, !dbg !2850, !tbaa !443
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2850
  %123 = load i8*, i8** %122, align 8, !dbg !2850, !tbaa !443
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2850
  %125 = load i8*, i8** %124, align 8, !dbg !2850, !tbaa !443
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2850
  br label %147, !dbg !2851

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.100, i64 0, i64 0), i32 noundef 5) #32, !dbg !2852
  %129 = load i8*, i8** %4, align 8, !dbg !2852, !tbaa !443
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2852
  %131 = load i8*, i8** %130, align 8, !dbg !2852, !tbaa !443
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2852
  %133 = load i8*, i8** %132, align 8, !dbg !2852, !tbaa !443
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2852
  %135 = load i8*, i8** %134, align 8, !dbg !2852, !tbaa !443
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2852
  %137 = load i8*, i8** %136, align 8, !dbg !2852, !tbaa !443
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2852
  %139 = load i8*, i8** %138, align 8, !dbg !2852, !tbaa !443
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2852
  %141 = load i8*, i8** %140, align 8, !dbg !2852, !tbaa !443
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2852
  %143 = load i8*, i8** %142, align 8, !dbg !2852, !tbaa !443
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2852
  %145 = load i8*, i8** %144, align 8, !dbg !2852, !tbaa !443
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2852
  br label %147, !dbg !2853

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2854
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2855 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2859, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8* %1, metadata !2860, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8* %2, metadata !2861, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8* %3, metadata !2862, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8** %4, metadata !2863, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i64 0, metadata !2864, metadata !DIExpression()), !dbg !2865
  br label %6, !dbg !2866

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2868
  call void @llvm.dbg.value(metadata i64 %7, metadata !2864, metadata !DIExpression()), !dbg !2865
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2869
  %9 = load i8*, i8** %8, align 8, !dbg !2869, !tbaa !443
  %10 = icmp eq i8* %9, null, !dbg !2871
  %11 = add i64 %7, 1, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %11, metadata !2864, metadata !DIExpression()), !dbg !2865
  br i1 %10, label %12, label %6, !dbg !2871, !llvm.loop !2873

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2875
  ret void, !dbg !2876
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2877 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2892, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8* %1, metadata !2893, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8* %2, metadata !2894, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8* %3, metadata !2895, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2896, metadata !DIExpression()), !dbg !2901
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2902
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2902
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2898, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i64 0, metadata !2897, metadata !DIExpression()), !dbg !2900
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  %11 = load i32, i32* %8, align 8, !dbg !2904
  %12 = icmp sgt i32 %11, -1, !dbg !2904
  call void @llvm.dbg.value(metadata i64 0, metadata !2897, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 0, metadata !2897, metadata !DIExpression()), !dbg !2900
  br i1 %12, label %13, label %70

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2904
  %15 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !2904
  store i8* %15, i8** %10, align 8, !dbg !2904
  %16 = bitcast i8* %14 to i8**, !dbg !2904
  %17 = load i8*, i8** %16, align 8, !dbg !2904
  %18 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2907
  store i8* %17, i8** %18, align 8, !dbg !2908, !tbaa !443
  %19 = icmp eq i8* %17, null, !dbg !2909
  br i1 %19, label %265, label %20, !dbg !2910

20:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 1, metadata !2897, metadata !DIExpression()), !dbg !2900
  %21 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !2904
  store i8* %21, i8** %10, align 8, !dbg !2904
  %22 = bitcast i8* %15 to i8**, !dbg !2904
  %23 = load i8*, i8** %22, align 8, !dbg !2904
  %24 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2907
  store i8* %23, i8** %24, align 8, !dbg !2908, !tbaa !443
  %25 = icmp eq i8* %23, null, !dbg !2909
  br i1 %25, label %265, label %26, !dbg !2910

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 2, metadata !2897, metadata !DIExpression()), !dbg !2900
  %27 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !2904
  store i8* %27, i8** %10, align 8, !dbg !2904
  %28 = bitcast i8* %21 to i8**, !dbg !2904
  %29 = load i8*, i8** %28, align 8, !dbg !2904
  %30 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2907
  store i8* %29, i8** %30, align 8, !dbg !2908, !tbaa !443
  %31 = icmp eq i8* %29, null, !dbg !2909
  br i1 %31, label %265, label %32, !dbg !2910

32:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 3, metadata !2897, metadata !DIExpression()), !dbg !2900
  %33 = getelementptr inbounds i8, i8* %14, i64 32, !dbg !2904
  store i8* %33, i8** %10, align 8, !dbg !2904
  %34 = bitcast i8* %27 to i8**, !dbg !2904
  %35 = load i8*, i8** %34, align 8, !dbg !2904
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2907
  store i8* %35, i8** %36, align 8, !dbg !2908, !tbaa !443
  %37 = icmp eq i8* %35, null, !dbg !2909
  br i1 %37, label %265, label %38, !dbg !2910

38:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 4, metadata !2897, metadata !DIExpression()), !dbg !2900
  %39 = getelementptr inbounds i8, i8* %14, i64 40, !dbg !2904
  store i8* %39, i8** %10, align 8, !dbg !2904
  %40 = bitcast i8* %33 to i8**, !dbg !2904
  %41 = load i8*, i8** %40, align 8, !dbg !2904
  %42 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2907
  store i8* %41, i8** %42, align 8, !dbg !2908, !tbaa !443
  %43 = icmp eq i8* %41, null, !dbg !2909
  br i1 %43, label %265, label %44, !dbg !2910

44:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 5, metadata !2897, metadata !DIExpression()), !dbg !2900
  %45 = getelementptr inbounds i8, i8* %14, i64 48, !dbg !2904
  store i8* %45, i8** %10, align 8, !dbg !2904
  %46 = bitcast i8* %39 to i8**, !dbg !2904
  %47 = load i8*, i8** %46, align 8, !dbg !2904
  %48 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2907
  store i8* %47, i8** %48, align 8, !dbg !2908, !tbaa !443
  %49 = icmp eq i8* %47, null, !dbg !2909
  br i1 %49, label %265, label %50, !dbg !2910

50:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 6, metadata !2897, metadata !DIExpression()), !dbg !2900
  %51 = getelementptr inbounds i8, i8* %14, i64 56, !dbg !2904
  store i8* %51, i8** %10, align 8, !dbg !2904
  %52 = bitcast i8* %45 to i8**, !dbg !2904
  %53 = load i8*, i8** %52, align 8, !dbg !2904
  %54 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2907
  store i8* %53, i8** %54, align 8, !dbg !2908, !tbaa !443
  %55 = icmp eq i8* %53, null, !dbg !2909
  br i1 %55, label %265, label %56, !dbg !2910

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 7, metadata !2897, metadata !DIExpression()), !dbg !2900
  %57 = getelementptr inbounds i8, i8* %14, i64 64, !dbg !2904
  store i8* %57, i8** %10, align 8, !dbg !2904
  %58 = bitcast i8* %51 to i8**, !dbg !2904
  %59 = load i8*, i8** %58, align 8, !dbg !2904
  %60 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2907
  store i8* %59, i8** %60, align 8, !dbg !2908, !tbaa !443
  %61 = icmp eq i8* %59, null, !dbg !2909
  br i1 %61, label %265, label %62, !dbg !2910

62:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 8, metadata !2897, metadata !DIExpression()), !dbg !2900
  %63 = getelementptr inbounds i8, i8* %14, i64 72, !dbg !2904
  store i8* %63, i8** %10, align 8, !dbg !2904
  %64 = bitcast i8* %57 to i8**, !dbg !2904
  %65 = load i8*, i8** %64, align 8, !dbg !2904
  %66 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2907
  store i8* %65, i8** %66, align 8, !dbg !2908, !tbaa !443
  %67 = icmp eq i8* %65, null, !dbg !2909
  br i1 %67, label %265, label %68, !dbg !2910

68:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i64 9, metadata !2897, metadata !DIExpression()), !dbg !2900
  %69 = getelementptr inbounds i8, i8* %14, i64 80, !dbg !2904
  store i8* %69, i8** %10, align 8, !dbg !2904
  br label %258, !dbg !2910

70:                                               ; preds = %5
  %71 = add nsw i32 %11, 8, !dbg !2904
  store i32 %71, i32* %8, align 8, !dbg !2904
  %72 = icmp ult i32 %11, -7, !dbg !2904
  br i1 %72, label %73, label %77, !dbg !2904

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8, !dbg !2904
  %75 = sext i32 %11 to i64, !dbg !2904
  %76 = getelementptr inbounds i8, i8* %74, i64 %75, !dbg !2904
  br label %80, !dbg !2904

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8, !dbg !2904
  %79 = getelementptr inbounds i8, i8* %78, i64 8, !dbg !2904
  store i8* %79, i8** %10, align 8, !dbg !2904
  br label %80, !dbg !2904

80:                                               ; preds = %77, %73
  %81 = phi i8* [ %76, %73 ], [ %78, %77 ]
  %82 = bitcast i8* %81 to i8**, !dbg !2904
  %83 = load i8*, i8** %82, align 8, !dbg !2904
  %84 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2907
  store i8* %83, i8** %84, align 8, !dbg !2908, !tbaa !443
  %85 = icmp eq i8* %83, null, !dbg !2909
  br i1 %85, label %265, label %86, !dbg !2910

86:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i64 1, metadata !2897, metadata !DIExpression()), !dbg !2900
  %87 = icmp sgt i32 %11, -9, !dbg !2904
  br i1 %87, label %95, label %88, !dbg !2904

88:                                               ; preds = %86
  %89 = add nsw i32 %11, 16, !dbg !2904
  store i32 %89, i32* %8, align 8, !dbg !2904
  %90 = icmp ult i32 %71, -7, !dbg !2904
  br i1 %90, label %91, label %95, !dbg !2904

91:                                               ; preds = %88
  %92 = load i8*, i8** %9, align 8, !dbg !2904
  %93 = sext i32 %71 to i64, !dbg !2904
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !2904
  br label %99, !dbg !2904

95:                                               ; preds = %88, %86
  %96 = phi i32 [ %89, %88 ], [ %71, %86 ]
  %97 = load i8*, i8** %10, align 8, !dbg !2904
  %98 = getelementptr inbounds i8, i8* %97, i64 8, !dbg !2904
  store i8* %98, i8** %10, align 8, !dbg !2904
  br label %99, !dbg !2904

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %89, %91 ], [ %96, %95 ]
  %101 = phi i8* [ %94, %91 ], [ %97, %95 ]
  %102 = bitcast i8* %101 to i8**, !dbg !2904
  %103 = load i8*, i8** %102, align 8, !dbg !2904
  %104 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2907
  store i8* %103, i8** %104, align 8, !dbg !2908, !tbaa !443
  %105 = icmp eq i8* %103, null, !dbg !2909
  br i1 %105, label %265, label %106, !dbg !2910

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i64 2, metadata !2897, metadata !DIExpression()), !dbg !2900
  %107 = icmp sgt i32 %100, -1, !dbg !2904
  br i1 %107, label %115, label %108, !dbg !2904

108:                                              ; preds = %106
  %109 = add nsw i32 %100, 8, !dbg !2904
  store i32 %109, i32* %8, align 8, !dbg !2904
  %110 = icmp ult i32 %100, -7, !dbg !2904
  br i1 %110, label %111, label %115, !dbg !2904

111:                                              ; preds = %108
  %112 = load i8*, i8** %9, align 8, !dbg !2904
  %113 = sext i32 %100 to i64, !dbg !2904
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !2904
  br label %119, !dbg !2904

115:                                              ; preds = %108, %106
  %116 = phi i32 [ %109, %108 ], [ %100, %106 ]
  %117 = load i8*, i8** %10, align 8, !dbg !2904
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !2904
  store i8* %118, i8** %10, align 8, !dbg !2904
  br label %119, !dbg !2904

119:                                              ; preds = %115, %111
  %120 = phi i32 [ %109, %111 ], [ %116, %115 ]
  %121 = phi i8* [ %114, %111 ], [ %117, %115 ]
  %122 = bitcast i8* %121 to i8**, !dbg !2904
  %123 = load i8*, i8** %122, align 8, !dbg !2904
  %124 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2907
  store i8* %123, i8** %124, align 8, !dbg !2908, !tbaa !443
  %125 = icmp eq i8* %123, null, !dbg !2909
  br i1 %125, label %265, label %126, !dbg !2910

126:                                              ; preds = %119
  call void @llvm.dbg.value(metadata i64 3, metadata !2897, metadata !DIExpression()), !dbg !2900
  %127 = icmp sgt i32 %120, -1, !dbg !2904
  br i1 %127, label %135, label %128, !dbg !2904

128:                                              ; preds = %126
  %129 = add nsw i32 %120, 8, !dbg !2904
  store i32 %129, i32* %8, align 8, !dbg !2904
  %130 = icmp ult i32 %120, -7, !dbg !2904
  br i1 %130, label %131, label %135, !dbg !2904

131:                                              ; preds = %128
  %132 = load i8*, i8** %9, align 8, !dbg !2904
  %133 = sext i32 %120 to i64, !dbg !2904
  %134 = getelementptr inbounds i8, i8* %132, i64 %133, !dbg !2904
  br label %139, !dbg !2904

135:                                              ; preds = %128, %126
  %136 = phi i32 [ %129, %128 ], [ %120, %126 ]
  %137 = load i8*, i8** %10, align 8, !dbg !2904
  %138 = getelementptr inbounds i8, i8* %137, i64 8, !dbg !2904
  store i8* %138, i8** %10, align 8, !dbg !2904
  br label %139, !dbg !2904

139:                                              ; preds = %135, %131
  %140 = phi i32 [ %129, %131 ], [ %136, %135 ]
  %141 = phi i8* [ %134, %131 ], [ %137, %135 ]
  %142 = bitcast i8* %141 to i8**, !dbg !2904
  %143 = load i8*, i8** %142, align 8, !dbg !2904
  %144 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2907
  store i8* %143, i8** %144, align 8, !dbg !2908, !tbaa !443
  %145 = icmp eq i8* %143, null, !dbg !2909
  br i1 %145, label %265, label %146, !dbg !2910

146:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i64 4, metadata !2897, metadata !DIExpression()), !dbg !2900
  %147 = icmp sgt i32 %140, -1, !dbg !2904
  br i1 %147, label %155, label %148, !dbg !2904

148:                                              ; preds = %146
  %149 = add nsw i32 %140, 8, !dbg !2904
  store i32 %149, i32* %8, align 8, !dbg !2904
  %150 = icmp ult i32 %140, -7, !dbg !2904
  br i1 %150, label %151, label %155, !dbg !2904

151:                                              ; preds = %148
  %152 = load i8*, i8** %9, align 8, !dbg !2904
  %153 = sext i32 %140 to i64, !dbg !2904
  %154 = getelementptr inbounds i8, i8* %152, i64 %153, !dbg !2904
  br label %159, !dbg !2904

155:                                              ; preds = %148, %146
  %156 = phi i32 [ %149, %148 ], [ %140, %146 ]
  %157 = load i8*, i8** %10, align 8, !dbg !2904
  %158 = getelementptr inbounds i8, i8* %157, i64 8, !dbg !2904
  store i8* %158, i8** %10, align 8, !dbg !2904
  br label %159, !dbg !2904

159:                                              ; preds = %155, %151
  %160 = phi i32 [ %149, %151 ], [ %156, %155 ]
  %161 = phi i8* [ %154, %151 ], [ %157, %155 ]
  %162 = bitcast i8* %161 to i8**, !dbg !2904
  %163 = load i8*, i8** %162, align 8, !dbg !2904
  %164 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2907
  store i8* %163, i8** %164, align 8, !dbg !2908, !tbaa !443
  %165 = icmp eq i8* %163, null, !dbg !2909
  br i1 %165, label %265, label %166, !dbg !2910

166:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i64 5, metadata !2897, metadata !DIExpression()), !dbg !2900
  %167 = icmp sgt i32 %160, -1, !dbg !2904
  br i1 %167, label %175, label %168, !dbg !2904

168:                                              ; preds = %166
  %169 = add nsw i32 %160, 8, !dbg !2904
  store i32 %169, i32* %8, align 8, !dbg !2904
  %170 = icmp ult i32 %160, -7, !dbg !2904
  br i1 %170, label %171, label %175, !dbg !2904

171:                                              ; preds = %168
  %172 = load i8*, i8** %9, align 8, !dbg !2904
  %173 = sext i32 %160 to i64, !dbg !2904
  %174 = getelementptr inbounds i8, i8* %172, i64 %173, !dbg !2904
  br label %179, !dbg !2904

175:                                              ; preds = %168, %166
  %176 = phi i32 [ %169, %168 ], [ %160, %166 ]
  %177 = load i8*, i8** %10, align 8, !dbg !2904
  %178 = getelementptr inbounds i8, i8* %177, i64 8, !dbg !2904
  store i8* %178, i8** %10, align 8, !dbg !2904
  br label %179, !dbg !2904

179:                                              ; preds = %175, %171
  %180 = phi i32 [ %169, %171 ], [ %176, %175 ]
  %181 = phi i8* [ %174, %171 ], [ %177, %175 ]
  %182 = bitcast i8* %181 to i8**, !dbg !2904
  %183 = load i8*, i8** %182, align 8, !dbg !2904
  %184 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2907
  store i8* %183, i8** %184, align 8, !dbg !2908, !tbaa !443
  %185 = icmp eq i8* %183, null, !dbg !2909
  br i1 %185, label %265, label %186, !dbg !2910

186:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i64 6, metadata !2897, metadata !DIExpression()), !dbg !2900
  %187 = icmp sgt i32 %180, -1, !dbg !2904
  br i1 %187, label %195, label %188, !dbg !2904

188:                                              ; preds = %186
  %189 = add nsw i32 %180, 8, !dbg !2904
  store i32 %189, i32* %8, align 8, !dbg !2904
  %190 = icmp ult i32 %180, -7, !dbg !2904
  br i1 %190, label %191, label %195, !dbg !2904

191:                                              ; preds = %188
  %192 = load i8*, i8** %9, align 8, !dbg !2904
  %193 = sext i32 %180 to i64, !dbg !2904
  %194 = getelementptr inbounds i8, i8* %192, i64 %193, !dbg !2904
  br label %199, !dbg !2904

195:                                              ; preds = %188, %186
  %196 = phi i32 [ %189, %188 ], [ %180, %186 ]
  %197 = load i8*, i8** %10, align 8, !dbg !2904
  %198 = getelementptr inbounds i8, i8* %197, i64 8, !dbg !2904
  store i8* %198, i8** %10, align 8, !dbg !2904
  br label %199, !dbg !2904

199:                                              ; preds = %195, %191
  %200 = phi i32 [ %189, %191 ], [ %196, %195 ]
  %201 = phi i8* [ %194, %191 ], [ %197, %195 ]
  %202 = bitcast i8* %201 to i8**, !dbg !2904
  %203 = load i8*, i8** %202, align 8, !dbg !2904
  %204 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2907
  store i8* %203, i8** %204, align 8, !dbg !2908, !tbaa !443
  %205 = icmp eq i8* %203, null, !dbg !2909
  br i1 %205, label %265, label %206, !dbg !2910

206:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i64 7, metadata !2897, metadata !DIExpression()), !dbg !2900
  %207 = icmp sgt i32 %200, -1, !dbg !2904
  br i1 %207, label %215, label %208, !dbg !2904

208:                                              ; preds = %206
  %209 = add nsw i32 %200, 8, !dbg !2904
  store i32 %209, i32* %8, align 8, !dbg !2904
  %210 = icmp ult i32 %200, -7, !dbg !2904
  br i1 %210, label %211, label %215, !dbg !2904

211:                                              ; preds = %208
  %212 = load i8*, i8** %9, align 8, !dbg !2904
  %213 = sext i32 %200 to i64, !dbg !2904
  %214 = getelementptr inbounds i8, i8* %212, i64 %213, !dbg !2904
  br label %219, !dbg !2904

215:                                              ; preds = %208, %206
  %216 = phi i32 [ %209, %208 ], [ %200, %206 ]
  %217 = load i8*, i8** %10, align 8, !dbg !2904
  %218 = getelementptr inbounds i8, i8* %217, i64 8, !dbg !2904
  store i8* %218, i8** %10, align 8, !dbg !2904
  br label %219, !dbg !2904

219:                                              ; preds = %215, %211
  %220 = phi i32 [ %209, %211 ], [ %216, %215 ]
  %221 = phi i8* [ %214, %211 ], [ %217, %215 ]
  %222 = bitcast i8* %221 to i8**, !dbg !2904
  %223 = load i8*, i8** %222, align 8, !dbg !2904
  %224 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2907
  store i8* %223, i8** %224, align 8, !dbg !2908, !tbaa !443
  %225 = icmp eq i8* %223, null, !dbg !2909
  br i1 %225, label %265, label %226, !dbg !2910

226:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i64 8, metadata !2897, metadata !DIExpression()), !dbg !2900
  %227 = icmp sgt i32 %220, -1, !dbg !2904
  br i1 %227, label %235, label %228, !dbg !2904

228:                                              ; preds = %226
  %229 = add nsw i32 %220, 8, !dbg !2904
  store i32 %229, i32* %8, align 8, !dbg !2904
  %230 = icmp ult i32 %220, -7, !dbg !2904
  br i1 %230, label %231, label %235, !dbg !2904

231:                                              ; preds = %228
  %232 = load i8*, i8** %9, align 8, !dbg !2904
  %233 = sext i32 %220 to i64, !dbg !2904
  %234 = getelementptr inbounds i8, i8* %232, i64 %233, !dbg !2904
  br label %239, !dbg !2904

235:                                              ; preds = %228, %226
  %236 = phi i32 [ %229, %228 ], [ %220, %226 ]
  %237 = load i8*, i8** %10, align 8, !dbg !2904
  %238 = getelementptr inbounds i8, i8* %237, i64 8, !dbg !2904
  store i8* %238, i8** %10, align 8, !dbg !2904
  br label %239, !dbg !2904

239:                                              ; preds = %235, %231
  %240 = phi i32 [ %229, %231 ], [ %236, %235 ]
  %241 = phi i8* [ %234, %231 ], [ %237, %235 ]
  %242 = bitcast i8* %241 to i8**, !dbg !2904
  %243 = load i8*, i8** %242, align 8, !dbg !2904
  %244 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2907
  store i8* %243, i8** %244, align 8, !dbg !2908, !tbaa !443
  %245 = icmp eq i8* %243, null, !dbg !2909
  br i1 %245, label %265, label %246, !dbg !2910

246:                                              ; preds = %239
  call void @llvm.dbg.value(metadata i64 9, metadata !2897, metadata !DIExpression()), !dbg !2900
  %247 = icmp sgt i32 %240, -1, !dbg !2904
  br i1 %247, label %255, label %248, !dbg !2904

248:                                              ; preds = %246
  %249 = add nsw i32 %240, 8, !dbg !2904
  store i32 %249, i32* %8, align 8, !dbg !2904
  %250 = icmp ult i32 %240, -7, !dbg !2904
  br i1 %250, label %251, label %255, !dbg !2904

251:                                              ; preds = %248
  %252 = load i8*, i8** %9, align 8, !dbg !2904
  %253 = sext i32 %240 to i64, !dbg !2904
  %254 = getelementptr inbounds i8, i8* %252, i64 %253, !dbg !2904
  br label %258, !dbg !2904

255:                                              ; preds = %248, %246
  %256 = load i8*, i8** %10, align 8, !dbg !2904
  %257 = getelementptr inbounds i8, i8* %256, i64 8, !dbg !2904
  store i8* %257, i8** %10, align 8, !dbg !2904
  br label %258, !dbg !2904

258:                                              ; preds = %251, %255, %68
  %259 = phi i8* [ %63, %68 ], [ %254, %251 ], [ %256, %255 ]
  %260 = bitcast i8* %259 to i8**, !dbg !2904
  %261 = load i8*, i8** %260, align 8, !dbg !2904
  %262 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2907
  store i8* %261, i8** %262, align 8, !dbg !2908, !tbaa !443
  %263 = icmp eq i8* %261, null, !dbg !2909
  %264 = select i1 %263, i64 9, i64 10, !dbg !2910
  br label %265, !dbg !2911

265:                                              ; preds = %258, %80, %99, %119, %139, %159, %179, %199, %219, %239, %13, %20, %26, %32, %38, %44, %50, %56, %62
  %266 = phi i64 [ 0, %13 ], [ 1, %20 ], [ 2, %26 ], [ 3, %32 ], [ 4, %38 ], [ 5, %44 ], [ 6, %50 ], [ 7, %56 ], [ 8, %62 ], [ 0, %80 ], [ 1, %99 ], [ 2, %119 ], [ 3, %139 ], [ 4, %159 ], [ 5, %179 ], [ 6, %199 ], [ 7, %219 ], [ 8, %239 ], [ %264, %258 ]
  %267 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2911
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %267, i64 noundef %266), !dbg !2912
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2913
  ret void, !dbg !2913
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2914 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2918, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8* %1, metadata !2919, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8* %2, metadata !2920, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8* %3, metadata !2921, metadata !DIExpression()), !dbg !2923
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2924
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2924
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2922, metadata !DIExpression()), !dbg !2925
  call void @llvm.va_start(i8* nonnull %7), !dbg !2926
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2927
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2927
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2927, !tbaa.struct !847
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2927
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2927
  call void @llvm.va_end(i8* nonnull %7), !dbg !2928
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2929
  ret void, !dbg !2929
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2930 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2931, !tbaa !443
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.88, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2931
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.105, i64 0, i64 0), i32 noundef 5) #32, !dbg !2932
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.106, i64 0, i64 0)) #32, !dbg !2932
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.107, i64 0, i64 0), i32 noundef 5) #32, !dbg !2933
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.109, i64 0, i64 0)) #32, !dbg !2933
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.110, i64 0, i64 0), i32 noundef 5) #32, !dbg !2934
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.111, i64 0, i64 0)) #32, !dbg !2934
  ret void, !dbg !2935
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2936 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2941, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %2, metadata !2943, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8* %0, metadata !2945, metadata !DIExpression()) #32, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %1, metadata !2948, metadata !DIExpression()) #32, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %2, metadata !2949, metadata !DIExpression()) #32, !dbg !2950
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2952
  call void @llvm.dbg.value(metadata i8* %4, metadata !2953, metadata !DIExpression()) #32, !dbg !2958
  %5 = icmp eq i8* %4, null, !dbg !2960
  br i1 %5, label %6, label %7, !dbg !2962

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2963
  unreachable, !dbg !2963

7:                                                ; preds = %3
  ret i8* %4, !dbg !2964
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2946 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2945, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %1, metadata !2948, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %2, metadata !2949, metadata !DIExpression()), !dbg !2965
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2966
  call void @llvm.dbg.value(metadata i8* %4, metadata !2953, metadata !DIExpression()) #32, !dbg !2967
  %5 = icmp eq i8* %4, null, !dbg !2969
  br i1 %5, label %6, label %7, !dbg !2970

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2971
  unreachable, !dbg !2971

7:                                                ; preds = %3
  ret i8* %4, !dbg !2972
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2973 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2977, metadata !DIExpression()), !dbg !2978
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2979
  call void @llvm.dbg.value(metadata i8* %2, metadata !2953, metadata !DIExpression()) #32, !dbg !2980
  %3 = icmp eq i8* %2, null, !dbg !2982
  br i1 %3, label %4, label %5, !dbg !2983

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2984
  unreachable, !dbg !2984

5:                                                ; preds = %1
  ret i8* %2, !dbg !2985
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2986 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2990, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 %0, metadata !2992, metadata !DIExpression()) #32, !dbg !2996
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2998
  call void @llvm.dbg.value(metadata i8* %2, metadata !2953, metadata !DIExpression()) #32, !dbg !2999
  %3 = icmp eq i8* %2, null, !dbg !3001
  br i1 %3, label %4, label %5, !dbg !3002

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3003
  unreachable, !dbg !3003

5:                                                ; preds = %1
  ret i8* %2, !dbg !3004
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3005 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3009, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %0, metadata !2977, metadata !DIExpression()) #32, !dbg !3011
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !3013
  call void @llvm.dbg.value(metadata i8* %2, metadata !2953, metadata !DIExpression()) #32, !dbg !3014
  %3 = icmp eq i8* %2, null, !dbg !3016
  br i1 %3, label %4, label %5, !dbg !3017

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3018
  unreachable, !dbg !3018

5:                                                ; preds = %1
  ret i8* %2, !dbg !3019
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3020 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3024, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64 %1, metadata !3025, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i8* %0, metadata !3027, metadata !DIExpression()) #32, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %1, metadata !3031, metadata !DIExpression()) #32, !dbg !3032
  %3 = icmp eq i64 %1, 0, !dbg !3034
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3034
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !3035
  call void @llvm.dbg.value(metadata i8* %5, metadata !2953, metadata !DIExpression()) #32, !dbg !3036
  %6 = icmp eq i8* %5, null, !dbg !3038
  br i1 %6, label %7, label %8, !dbg !3039

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3040
  unreachable, !dbg !3040

8:                                                ; preds = %2
  ret i8* %5, !dbg !3041
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3042 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3046, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i64 %1, metadata !3047, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8* %0, metadata !3049, metadata !DIExpression()) #32, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %1, metadata !3052, metadata !DIExpression()) #32, !dbg !3053
  call void @llvm.dbg.value(metadata i8* %0, metadata !3027, metadata !DIExpression()) #32, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %1, metadata !3031, metadata !DIExpression()) #32, !dbg !3055
  %3 = icmp eq i64 %1, 0, !dbg !3057
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3057
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !3058
  call void @llvm.dbg.value(metadata i8* %5, metadata !2953, metadata !DIExpression()) #32, !dbg !3059
  %6 = icmp eq i8* %5, null, !dbg !3061
  br i1 %6, label %7, label %8, !dbg !3062

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3063
  unreachable, !dbg !3063

8:                                                ; preds = %2
  ret i8* %5, !dbg !3064
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3065 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3069, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i64 %1, metadata !3070, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i64 %2, metadata !3071, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8* %0, metadata !3073, metadata !DIExpression()) #32, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %1, metadata !3076, metadata !DIExpression()) #32, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %2, metadata !3077, metadata !DIExpression()) #32, !dbg !3078
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !3080
  call void @llvm.dbg.value(metadata i8* %4, metadata !2953, metadata !DIExpression()) #32, !dbg !3081
  %5 = icmp eq i8* %4, null, !dbg !3083
  br i1 %5, label %6, label %7, !dbg !3084

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !3085
  unreachable, !dbg !3085

7:                                                ; preds = %3
  ret i8* %4, !dbg !3086
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3087 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3091, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %1, metadata !3092, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i8* null, metadata !2945, metadata !DIExpression()) #32, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %0, metadata !2948, metadata !DIExpression()) #32, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %1, metadata !2949, metadata !DIExpression()) #32, !dbg !3094
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !3096
  call void @llvm.dbg.value(metadata i8* %3, metadata !2953, metadata !DIExpression()) #32, !dbg !3097
  %4 = icmp eq i8* %3, null, !dbg !3099
  br i1 %4, label %5, label %6, !dbg !3100

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3101
  unreachable, !dbg !3101

6:                                                ; preds = %2
  ret i8* %3, !dbg !3102
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3103 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3107, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 %1, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i8* null, metadata !3069, metadata !DIExpression()) #32, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %0, metadata !3070, metadata !DIExpression()) #32, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %1, metadata !3071, metadata !DIExpression()) #32, !dbg !3110
  call void @llvm.dbg.value(metadata i8* null, metadata !3073, metadata !DIExpression()) #32, !dbg !3112
  call void @llvm.dbg.value(metadata i64 %0, metadata !3076, metadata !DIExpression()) #32, !dbg !3112
  call void @llvm.dbg.value(metadata i64 %1, metadata !3077, metadata !DIExpression()) #32, !dbg !3112
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !3114
  call void @llvm.dbg.value(metadata i8* %3, metadata !2953, metadata !DIExpression()) #32, !dbg !3115
  %4 = icmp eq i8* %3, null, !dbg !3117
  br i1 %4, label %5, label %6, !dbg !3118

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3119
  unreachable, !dbg !3119

6:                                                ; preds = %2
  ret i8* %3, !dbg !3120
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3121 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3125, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i64* %1, metadata !3126, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i8* %0, metadata !376, metadata !DIExpression()) #32, !dbg !3128
  call void @llvm.dbg.value(metadata i64* %1, metadata !377, metadata !DIExpression()) #32, !dbg !3128
  call void @llvm.dbg.value(metadata i64 1, metadata !378, metadata !DIExpression()) #32, !dbg !3128
  %3 = load i64, i64* %1, align 8, !dbg !3130, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 %3, metadata !379, metadata !DIExpression()) #32, !dbg !3128
  %4 = icmp eq i8* %0, null, !dbg !3131
  br i1 %4, label %5, label %8, !dbg !3133

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3134
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3137
  br label %15, !dbg !3137

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3138
  %10 = add nuw i64 %9, 1, !dbg !3138
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !3138
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3138
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3138
  call void @llvm.dbg.value(metadata i64 %13, metadata !379, metadata !DIExpression()) #32, !dbg !3128
  br i1 %12, label %14, label %15, !dbg !3141

14:                                               ; preds = %8
  tail call void @xalloc_die() #34, !dbg !3142
  unreachable, !dbg !3142

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3128
  call void @llvm.dbg.value(metadata i64 %16, metadata !379, metadata !DIExpression()) #32, !dbg !3128
  call void @llvm.dbg.value(metadata i8* %0, metadata !2945, metadata !DIExpression()) #32, !dbg !3143
  call void @llvm.dbg.value(metadata i64 %16, metadata !2948, metadata !DIExpression()) #32, !dbg !3143
  call void @llvm.dbg.value(metadata i64 1, metadata !2949, metadata !DIExpression()) #32, !dbg !3143
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !3145
  call void @llvm.dbg.value(metadata i8* %17, metadata !2953, metadata !DIExpression()) #32, !dbg !3146
  %18 = icmp eq i8* %17, null, !dbg !3148
  br i1 %18, label %19, label %20, !dbg !3149

19:                                               ; preds = %15
  tail call void @xalloc_die() #34, !dbg !3150
  unreachable, !dbg !3150

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !376, metadata !DIExpression()) #32, !dbg !3128
  store i64 %16, i64* %1, align 8, !dbg !3151, !tbaa !2226
  ret i8* %17, !dbg !3152
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !371 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !376, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64* %1, metadata !377, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %2, metadata !378, metadata !DIExpression()), !dbg !3153
  %4 = load i64, i64* %1, align 8, !dbg !3154, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 %4, metadata !379, metadata !DIExpression()), !dbg !3153
  %5 = icmp eq i8* %0, null, !dbg !3155
  br i1 %5, label %6, label %13, !dbg !3156

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3157
  br i1 %7, label %8, label %20, !dbg !3158

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %9, metadata !379, metadata !DIExpression()), !dbg !3153
  %10 = icmp ugt i64 %2, 128, !dbg !3161
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3162
  call void @llvm.dbg.value(metadata i64 %12, metadata !379, metadata !DIExpression()), !dbg !3153
  br label %20, !dbg !3163

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3164
  %15 = add nuw i64 %14, 1, !dbg !3164
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3164
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3164
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %18, metadata !379, metadata !DIExpression()), !dbg !3153
  br i1 %17, label %19, label %20, !dbg !3165

19:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !3166
  unreachable, !dbg !3166

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3153
  call void @llvm.dbg.value(metadata i64 %21, metadata !379, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8* %0, metadata !2945, metadata !DIExpression()) #32, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %21, metadata !2948, metadata !DIExpression()) #32, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %2, metadata !2949, metadata !DIExpression()) #32, !dbg !3167
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %22, metadata !2953, metadata !DIExpression()) #32, !dbg !3170
  %23 = icmp eq i8* %22, null, !dbg !3172
  br i1 %23, label %24, label %25, !dbg !3173

24:                                               ; preds = %20
  tail call void @xalloc_die() #34, !dbg !3174
  unreachable, !dbg !3174

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !376, metadata !DIExpression()), !dbg !3153
  store i64 %21, i64* %1, align 8, !dbg !3175, !tbaa !2226
  ret i8* %22, !dbg !3176
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !383 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !391, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64* %1, metadata !392, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %2, metadata !393, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %3, metadata !394, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %4, metadata !395, metadata !DIExpression()), !dbg !3177
  %6 = load i64, i64* %1, align 8, !dbg !3178, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 %6, metadata !396, metadata !DIExpression()), !dbg !3177
  %7 = ashr i64 %6, 1, !dbg !3179
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3179
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3179
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %10, metadata !397, metadata !DIExpression()), !dbg !3177
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3181
  call void @llvm.dbg.value(metadata i64 %11, metadata !397, metadata !DIExpression()), !dbg !3177
  %12 = icmp sgt i64 %3, -1, !dbg !3182
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3184
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %15, metadata !397, metadata !DIExpression()), !dbg !3177
  %16 = icmp slt i64 %4, 0, !dbg !3185
  br i1 %16, label %17, label %30, !dbg !3185

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3185
  br i1 %18, label %19, label %24, !dbg !3185

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3185
  %21 = udiv i64 9223372036854775807, %20, !dbg !3185
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3185
  br i1 %23, label %46, label %43, !dbg !3185

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3185
  br i1 %25, label %43, label %26, !dbg !3185

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3185
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3185
  %29 = icmp ult i64 %28, %15, !dbg !3185
  br i1 %29, label %46, label %43, !dbg !3185

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3185
  br i1 %31, label %43, label %32, !dbg !3185

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3185
  br i1 %33, label %34, label %40, !dbg !3185

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3185
  br i1 %35, label %43, label %36, !dbg !3185

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3185
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3185
  %39 = icmp ult i64 %38, %4, !dbg !3185
  br i1 %39, label %46, label %43, !dbg !3185

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3185
  %42 = icmp ult i64 %41, %15, !dbg !3185
  br i1 %42, label %46, label %43, !dbg !3185

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !398, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3177
  %44 = mul i64 %15, %4, !dbg !3185
  call void @llvm.dbg.value(metadata i64 %44, metadata !398, metadata !DIExpression()), !dbg !3177
  %45 = icmp slt i64 %44, 128, !dbg !3185
  br i1 %45, label %46, label %52, !dbg !3185

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !399, metadata !DIExpression()), !dbg !3177
  %48 = sdiv i64 %47, %4, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %48, metadata !397, metadata !DIExpression()), !dbg !3177
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3189
  call void @llvm.dbg.value(metadata i64 %51, metadata !398, metadata !DIExpression()), !dbg !3177
  br label %52, !dbg !3190

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3177
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3177
  call void @llvm.dbg.value(metadata i64 %54, metadata !398, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %53, metadata !397, metadata !DIExpression()), !dbg !3177
  %55 = icmp eq i8* %0, null, !dbg !3191
  br i1 %55, label %56, label %57, !dbg !3193

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3194, !tbaa !2226
  br label %57, !dbg !3195

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3196
  %59 = icmp slt i64 %58, %2, !dbg !3198
  br i1 %59, label %60, label %97, !dbg !3199

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3200
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3200
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3200
  call void @llvm.dbg.value(metadata i64 %63, metadata !397, metadata !DIExpression()), !dbg !3177
  br i1 %62, label %96, label %64, !dbg !3201

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3202
  br i1 %66, label %96, label %67, !dbg !3202

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3203

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3203
  br i1 %69, label %70, label %75, !dbg !3203

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3203
  %72 = udiv i64 9223372036854775807, %71, !dbg !3203
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3203
  br i1 %74, label %96, label %94, !dbg !3203

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3203
  br i1 %76, label %94, label %77, !dbg !3203

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3203
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3203
  %80 = icmp ult i64 %79, %63, !dbg !3203
  br i1 %80, label %96, label %94, !dbg !3203

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3203
  br i1 %82, label %94, label %83, !dbg !3203

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3203
  br i1 %84, label %85, label %91, !dbg !3203

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3203
  br i1 %86, label %94, label %87, !dbg !3203

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3203
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3203
  %90 = icmp ult i64 %89, %4, !dbg !3203
  br i1 %90, label %96, label %94, !dbg !3203

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3203
  %93 = icmp ult i64 %92, %63, !dbg !3203
  br i1 %93, label %96, label %94, !dbg !3203

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !398, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3177
  %95 = mul i64 %63, %4, !dbg !3203
  call void @llvm.dbg.value(metadata i64 %95, metadata !398, metadata !DIExpression()), !dbg !3177
  br label %97, !dbg !3204

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #34, !dbg !3205
  unreachable, !dbg !3205

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3177
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3177
  call void @llvm.dbg.value(metadata i64 %99, metadata !398, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %98, metadata !397, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8* %0, metadata !3024, metadata !DIExpression()) #32, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %99, metadata !3025, metadata !DIExpression()) #32, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %0, metadata !3027, metadata !DIExpression()) #32, !dbg !3208
  call void @llvm.dbg.value(metadata i64 %99, metadata !3031, metadata !DIExpression()) #32, !dbg !3208
  %100 = icmp eq i64 %99, 0, !dbg !3210
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3210
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %102, metadata !2953, metadata !DIExpression()) #32, !dbg !3212
  %103 = icmp eq i8* %102, null, !dbg !3214
  br i1 %103, label %104, label %105, !dbg !3215

104:                                              ; preds = %97
  tail call void @xalloc_die() #34, !dbg !3216
  unreachable, !dbg !3216

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !391, metadata !DIExpression()), !dbg !3177
  store i64 %98, i64* %1, align 8, !dbg !3217, !tbaa !2226
  ret i8* %102, !dbg !3218
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3219 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3221, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64 %0, metadata !3223, metadata !DIExpression()) #32, !dbg !3227
  call void @llvm.dbg.value(metadata i64 1, metadata !3226, metadata !DIExpression()) #32, !dbg !3227
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !3229
  call void @llvm.dbg.value(metadata i8* %2, metadata !2953, metadata !DIExpression()) #32, !dbg !3230
  %3 = icmp eq i8* %2, null, !dbg !3232
  br i1 %3, label %4, label %5, !dbg !3233

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3234
  unreachable, !dbg !3234

5:                                                ; preds = %1
  ret i8* %2, !dbg !3235
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3224 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3223, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i64 %1, metadata !3226, metadata !DIExpression()), !dbg !3236
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !3237
  call void @llvm.dbg.value(metadata i8* %3, metadata !2953, metadata !DIExpression()) #32, !dbg !3238
  %4 = icmp eq i8* %3, null, !dbg !3240
  br i1 %4, label %5, label %6, !dbg !3241

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3242
  unreachable, !dbg !3242

6:                                                ; preds = %2
  ret i8* %3, !dbg !3243
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3244 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3246, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %0, metadata !3248, metadata !DIExpression()) #32, !dbg !3252
  call void @llvm.dbg.value(metadata i64 1, metadata !3251, metadata !DIExpression()) #32, !dbg !3252
  call void @llvm.dbg.value(metadata i64 %0, metadata !3254, metadata !DIExpression()) #32, !dbg !3258
  call void @llvm.dbg.value(metadata i64 1, metadata !3257, metadata !DIExpression()) #32, !dbg !3258
  call void @llvm.dbg.value(metadata i64 %0, metadata !3254, metadata !DIExpression()) #32, !dbg !3258
  call void @llvm.dbg.value(metadata i64 1, metadata !3257, metadata !DIExpression()) #32, !dbg !3258
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %2, metadata !2953, metadata !DIExpression()) #32, !dbg !3261
  %3 = icmp eq i8* %2, null, !dbg !3263
  br i1 %3, label %4, label %5, !dbg !3264

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3265
  unreachable, !dbg !3265

5:                                                ; preds = %1
  ret i8* %2, !dbg !3266
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3249 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3248, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 %1, metadata !3251, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 %0, metadata !3254, metadata !DIExpression()) #32, !dbg !3268
  call void @llvm.dbg.value(metadata i64 %1, metadata !3257, metadata !DIExpression()) #32, !dbg !3268
  call void @llvm.dbg.value(metadata i64 %0, metadata !3254, metadata !DIExpression()) #32, !dbg !3268
  call void @llvm.dbg.value(metadata i64 %1, metadata !3257, metadata !DIExpression()) #32, !dbg !3268
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !3270
  call void @llvm.dbg.value(metadata i8* %3, metadata !2953, metadata !DIExpression()) #32, !dbg !3271
  %4 = icmp eq i8* %3, null, !dbg !3273
  br i1 %4, label %5, label %6, !dbg !3274

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3275
  unreachable, !dbg !3275

6:                                                ; preds = %2
  ret i8* %3, !dbg !3276
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3277 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3281, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %1, metadata !3282, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %1, metadata !2977, metadata !DIExpression()) #32, !dbg !3284
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !3286
  call void @llvm.dbg.value(metadata i8* %3, metadata !2953, metadata !DIExpression()) #32, !dbg !3287
  %4 = icmp eq i8* %3, null, !dbg !3289
  br i1 %4, label %5, label %6, !dbg !3290

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3291
  unreachable, !dbg !3291

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3292, metadata !DIExpression()) #32, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %0, metadata !3298, metadata !DIExpression()) #32, !dbg !3300
  call void @llvm.dbg.value(metadata i64 %1, metadata !3299, metadata !DIExpression()) #32, !dbg !3300
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3302
  ret i8* %3, !dbg !3303
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3304 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3308, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %1, metadata !3309, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %1, metadata !2990, metadata !DIExpression()) #32, !dbg !3311
  call void @llvm.dbg.value(metadata i64 %1, metadata !2992, metadata !DIExpression()) #32, !dbg !3313
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !3315
  call void @llvm.dbg.value(metadata i8* %3, metadata !2953, metadata !DIExpression()) #32, !dbg !3316
  %4 = icmp eq i8* %3, null, !dbg !3318
  br i1 %4, label %5, label %6, !dbg !3319

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3320
  unreachable, !dbg !3320

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3292, metadata !DIExpression()) #32, !dbg !3321
  call void @llvm.dbg.value(metadata i8* %0, metadata !3298, metadata !DIExpression()) #32, !dbg !3321
  call void @llvm.dbg.value(metadata i64 %1, metadata !3299, metadata !DIExpression()) #32, !dbg !3321
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3323
  ret i8* %3, !dbg !3324
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3325 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3329, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i64 %1, metadata !3330, metadata !DIExpression()), !dbg !3332
  %3 = add nsw i64 %1, 1, !dbg !3333
  call void @llvm.dbg.value(metadata i64 %3, metadata !2990, metadata !DIExpression()) #32, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %3, metadata !2992, metadata !DIExpression()) #32, !dbg !3336
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3338
  call void @llvm.dbg.value(metadata i8* %4, metadata !2953, metadata !DIExpression()) #32, !dbg !3339
  %5 = icmp eq i8* %4, null, !dbg !3341
  br i1 %5, label %6, label %7, !dbg !3342

6:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3343
  unreachable, !dbg !3343

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3331, metadata !DIExpression()), !dbg !3332
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3344
  store i8 0, i8* %8, align 1, !dbg !3345, !tbaa !544
  call void @llvm.dbg.value(metadata i8* %4, metadata !3292, metadata !DIExpression()) #32, !dbg !3346
  call void @llvm.dbg.value(metadata i8* %0, metadata !3298, metadata !DIExpression()) #32, !dbg !3346
  call void @llvm.dbg.value(metadata i64 %1, metadata !3299, metadata !DIExpression()) #32, !dbg !3346
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3348
  ret i8* %4, !dbg !3349
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3350 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3352, metadata !DIExpression()), !dbg !3353
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #33, !dbg !3354
  %3 = add i64 %2, 1, !dbg !3355
  call void @llvm.dbg.value(metadata i8* %0, metadata !3281, metadata !DIExpression()) #32, !dbg !3356
  call void @llvm.dbg.value(metadata i64 %3, metadata !3282, metadata !DIExpression()) #32, !dbg !3356
  call void @llvm.dbg.value(metadata i64 %3, metadata !2977, metadata !DIExpression()) #32, !dbg !3358
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3360
  call void @llvm.dbg.value(metadata i8* %4, metadata !2953, metadata !DIExpression()) #32, !dbg !3361
  %5 = icmp eq i8* %4, null, !dbg !3363
  br i1 %5, label %6, label %7, !dbg !3364

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3365
  unreachable, !dbg !3365

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3292, metadata !DIExpression()) #32, !dbg !3366
  call void @llvm.dbg.value(metadata i8* %0, metadata !3298, metadata !DIExpression()) #32, !dbg !3366
  call void @llvm.dbg.value(metadata i64 %3, metadata !3299, metadata !DIExpression()) #32, !dbg !3366
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !3368
  ret i8* %4, !dbg !3369
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3370 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3375, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %1, metadata !3372, metadata !DIExpression()), !dbg !3376
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.127, i64 0, i64 0), i32 noundef 5) #32, !dbg !3375
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i64 0, i64 0), i8* noundef %2) #32, !dbg !3375
  %3 = icmp eq i32 %1, 0, !dbg !3375
  tail call void @llvm.assume(i1 %3), !dbg !3375
  tail call void @abort() #34, !dbg !3377
  unreachable, !dbg !3377
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3378 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3416, metadata !DIExpression()), !dbg !3421
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !3422
  call void @llvm.dbg.value(metadata i1 undef, metadata !3417, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3421
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3423, metadata !DIExpression()), !dbg !3426
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3428
  %4 = load i32, i32* %3, align 8, !dbg !3428, !tbaa !3429
  %5 = and i32 %4, 32, !dbg !3430
  %6 = icmp eq i32 %5, 0, !dbg !3430
  call void @llvm.dbg.value(metadata i1 %6, metadata !3419, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3421
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !3431
  %8 = icmp eq i32 %7, 0, !dbg !3432
  call void @llvm.dbg.value(metadata i1 %8, metadata !3420, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3421
  br i1 %6, label %9, label %19, !dbg !3433

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3435
  call void @llvm.dbg.value(metadata i1 %10, metadata !3417, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3421
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3436
  %12 = xor i1 %8, true, !dbg !3436
  %13 = sext i1 %12 to i32, !dbg !3436
  br i1 %11, label %22, label %14, !dbg !3436

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !3437
  %16 = load i32, i32* %15, align 4, !dbg !3437, !tbaa !535
  %17 = icmp ne i32 %16, 9, !dbg !3438
  %18 = sext i1 %17 to i32, !dbg !3439
  br label %22, !dbg !3439

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3440

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !3442
  store i32 0, i32* %21, align 4, !dbg !3444, !tbaa !535
  br label %22, !dbg !3442

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3421
  ret i32 %23, !dbg !3445
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3446 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3484, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 0, metadata !3485, metadata !DIExpression()), !dbg !3488
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3489
  call void @llvm.dbg.value(metadata i32 %2, metadata !3486, metadata !DIExpression()), !dbg !3488
  %3 = icmp slt i32 %2, 0, !dbg !3490
  br i1 %3, label %4, label %6, !dbg !3492

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3493
  br label %24, !dbg !3494

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3495
  %8 = icmp eq i32 %7, 0, !dbg !3495
  br i1 %8, label %13, label %9, !dbg !3497

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3498
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3499
  %12 = icmp eq i64 %11, -1, !dbg !3500
  br i1 %12, label %16, label %13, !dbg !3501

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3502
  %15 = icmp eq i32 %14, 0, !dbg !3502
  br i1 %15, label %16, label %18, !dbg !3503

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3485, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 0, metadata !3487, metadata !DIExpression()), !dbg !3488
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3504
  call void @llvm.dbg.value(metadata i32 %21, metadata !3487, metadata !DIExpression()), !dbg !3488
  br label %24, !dbg !3505

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3506
  %20 = load i32, i32* %19, align 4, !dbg !3506, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %20, metadata !3485, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 0, metadata !3487, metadata !DIExpression()), !dbg !3488
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3504
  call void @llvm.dbg.value(metadata i32 %21, metadata !3487, metadata !DIExpression()), !dbg !3488
  %22 = icmp eq i32 %20, 0, !dbg !3507
  br i1 %22, label %24, label %23, !dbg !3505

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3509, !tbaa !535
  call void @llvm.dbg.value(metadata i32 -1, metadata !3487, metadata !DIExpression()), !dbg !3488
  br label %24, !dbg !3511

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3488
  ret i32 %25, !dbg !3512
}

; Function Attrs: nofree nounwind
declare !dbg !3513 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3514 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3515 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3519 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3557, metadata !DIExpression()), !dbg !3558
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3559
  br i1 %2, label %6, label %3, !dbg !3561

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3562
  %5 = icmp eq i32 %4, 0, !dbg !3562
  br i1 %5, label %6, label %8, !dbg !3563

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3564
  br label %17, !dbg !3565

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3566, metadata !DIExpression()) #32, !dbg !3571
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3573
  %10 = load i32, i32* %9, align 8, !dbg !3573, !tbaa !3429
  %11 = and i32 %10, 256, !dbg !3575
  %12 = icmp eq i32 %11, 0, !dbg !3575
  br i1 %12, label %15, label %13, !dbg !3576

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3577
  br label %15, !dbg !3577

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3578
  br label %17, !dbg !3579

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3558
  ret i32 %18, !dbg !3580
}

; Function Attrs: nofree nounwind
declare !dbg !3581 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3582 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3621, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 %1, metadata !3622, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i32 %2, metadata !3623, metadata !DIExpression()), !dbg !3627
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3628
  %5 = load i8*, i8** %4, align 8, !dbg !3628, !tbaa !3629
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3630
  %7 = load i8*, i8** %6, align 8, !dbg !3630, !tbaa !3631
  %8 = icmp eq i8* %5, %7, !dbg !3632
  br i1 %8, label %9, label %28, !dbg !3633

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3634
  %11 = load i8*, i8** %10, align 8, !dbg !3634, !tbaa !962
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3635
  %13 = load i8*, i8** %12, align 8, !dbg !3635, !tbaa !3636
  %14 = icmp eq i8* %11, %13, !dbg !3637
  br i1 %14, label %15, label %28, !dbg !3638

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3639
  %17 = load i8*, i8** %16, align 8, !dbg !3639, !tbaa !3640
  %18 = icmp eq i8* %17, null, !dbg !3641
  br i1 %18, label %19, label %28, !dbg !3642

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3643
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3644
  call void @llvm.dbg.value(metadata i64 %21, metadata !3624, metadata !DIExpression()), !dbg !3645
  %22 = icmp eq i64 %21, -1, !dbg !3646
  br i1 %22, label %30, label %23, !dbg !3648

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3649
  %25 = load i32, i32* %24, align 8, !dbg !3650, !tbaa !3429
  %26 = and i32 %25, -17, !dbg !3650
  store i32 %26, i32* %24, align 8, !dbg !3650, !tbaa !3429
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3651
  store i64 %21, i64* %27, align 8, !dbg !3652, !tbaa !3653
  br label %30, !dbg !3654

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3655
  br label %30, !dbg !3656

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3627
  ret i32 %31, !dbg !3657
}

; Function Attrs: nofree nounwind
declare !dbg !3658 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3661 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3666, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i8* %1, metadata !3667, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 %2, metadata !3668, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3669, metadata !DIExpression()), !dbg !3671
  %5 = icmp eq i8* %1, null, !dbg !3672
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3674
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), i8* %1, !dbg !3674
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %8, metadata !3668, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i8* %7, metadata !3667, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i32* %6, metadata !3666, metadata !DIExpression()), !dbg !3671
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3675
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3677
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3669, metadata !DIExpression()), !dbg !3671
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %11, metadata !3670, metadata !DIExpression()), !dbg !3671
  %12 = icmp ult i64 %11, -3, !dbg !3679
  br i1 %12, label %13, label %18, !dbg !3681

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #33, !dbg !3682
  %15 = icmp eq i32 %14, 0, !dbg !3682
  br i1 %15, label %16, label %30, !dbg !3683

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3684, metadata !DIExpression()) #32, !dbg !3689
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3691, metadata !DIExpression()) #32, !dbg !3696
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression()) #32, !dbg !3696
  call void @llvm.dbg.value(metadata i64 8, metadata !3695, metadata !DIExpression()) #32, !dbg !3696
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3698
  store i64 0, i64* %17, align 1, !dbg !3698
  br label %30, !dbg !3699

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3700
  br i1 %19, label %20, label %21, !dbg !3702

20:                                               ; preds = %18
  tail call void @abort() #34, !dbg !3703
  unreachable, !dbg !3703

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3704

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !3706
  br i1 %24, label %30, label %25, !dbg !3707

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3708
  br i1 %26, label %30, label %27, !dbg !3711

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3712, !tbaa !544
  %29 = zext i8 %28 to i32, !dbg !3713
  store i32 %29, i32* %6, align 4, !dbg !3714, !tbaa !535
  br label %30, !dbg !3715

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3671
  ret i64 %31, !dbg !3716
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3717 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3723 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3725, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %1, metadata !3726, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %2, metadata !3727, metadata !DIExpression()), !dbg !3729
  %4 = icmp eq i64 %2, 0, !dbg !3730
  br i1 %4, label %8, label %5, !dbg !3730

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3730
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3730
  br i1 %7, label %13, label %8, !dbg !3730

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3728, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3729
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3728, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3729
  %9 = mul i64 %2, %1, !dbg !3730
  call void @llvm.dbg.value(metadata i64 %9, metadata !3728, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i8* %0, metadata !3732, metadata !DIExpression()) #32, !dbg !3736
  call void @llvm.dbg.value(metadata i64 %9, metadata !3735, metadata !DIExpression()) #32, !dbg !3736
  %10 = icmp eq i64 %9, 0, !dbg !3738
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3738
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !3739
  br label %15, !dbg !3740

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3728, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3729
  %14 = tail call i32* @__errno_location() #35, !dbg !3741
  store i32 12, i32* %14, align 4, !dbg !3743, !tbaa !535
  br label %15, !dbg !3744

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3729
  ret i8* %16, !dbg !3745
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3746 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3750, metadata !DIExpression()), !dbg !3755
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3756
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3756
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3751, metadata !DIExpression()), !dbg !3757
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !3758
  %5 = icmp eq i32 %4, 0, !dbg !3758
  br i1 %5, label %6, label %13, !dbg !3760

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3761, metadata !DIExpression()) #32, !dbg !3765
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.144, i64 0, i64 0), metadata !3764, metadata !DIExpression()) #32, !dbg !3765
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.144, i64 0, i64 0), i64 2), !dbg !3768
  %8 = icmp eq i32 %7, 0, !dbg !3769
  br i1 %8, label %12, label %9, !dbg !3770

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3761, metadata !DIExpression()) #32, !dbg !3771
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i64 0, i64 0), metadata !3764, metadata !DIExpression()) #32, !dbg !3771
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i64 0, i64 0), i64 6), !dbg !3773
  %11 = icmp eq i32 %10, 0, !dbg !3774
  br i1 %11, label %12, label %13, !dbg !3775

12:                                               ; preds = %9, %6
  br label %13, !dbg !3776

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3755
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3777
  ret i1 %14, !dbg !3777
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3778 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3782, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i8* %1, metadata !3783, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i64 %2, metadata !3784, metadata !DIExpression()), !dbg !3785
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !3786
  ret i32 %4, !dbg !3787
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3788 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3792, metadata !DIExpression()), !dbg !3793
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !3794
  ret i8* %2, !dbg !3795
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3796 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3798, metadata !DIExpression()), !dbg !3800
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3801
  call void @llvm.dbg.value(metadata i8* %2, metadata !3799, metadata !DIExpression()), !dbg !3800
  ret i8* %2, !dbg !3802
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3803 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3805, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i8* %1, metadata !3806, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 %2, metadata !3807, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i32 %0, metadata !3798, metadata !DIExpression()) #32, !dbg !3813
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3815
  call void @llvm.dbg.value(metadata i8* %4, metadata !3799, metadata !DIExpression()) #32, !dbg !3813
  call void @llvm.dbg.value(metadata i8* %4, metadata !3808, metadata !DIExpression()), !dbg !3812
  %5 = icmp eq i8* %4, null, !dbg !3816
  br i1 %5, label %6, label %9, !dbg !3817

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3818
  br i1 %7, label %19, label %8, !dbg !3821

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3822, !tbaa !544
  br label %19, !dbg !3823

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #33, !dbg !3824
  call void @llvm.dbg.value(metadata i64 %10, metadata !3809, metadata !DIExpression()), !dbg !3825
  %11 = icmp ult i64 %10, %2, !dbg !3826
  br i1 %11, label %12, label %14, !dbg !3828

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3829
  call void @llvm.dbg.value(metadata i8* %1, metadata !3831, metadata !DIExpression()) #32, !dbg !3836
  call void @llvm.dbg.value(metadata i8* %4, metadata !3834, metadata !DIExpression()) #32, !dbg !3836
  call void @llvm.dbg.value(metadata i64 %13, metadata !3835, metadata !DIExpression()) #32, !dbg !3836
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !3838
  br label %19, !dbg !3839

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3840
  br i1 %15, label %19, label %16, !dbg !3843

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3844
  call void @llvm.dbg.value(metadata i8* %1, metadata !3831, metadata !DIExpression()) #32, !dbg !3846
  call void @llvm.dbg.value(metadata i8* %4, metadata !3834, metadata !DIExpression()) #32, !dbg !3846
  call void @llvm.dbg.value(metadata i64 %17, metadata !3835, metadata !DIExpression()) #32, !dbg !3846
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !3848
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3849
  store i8 0, i8* %18, align 1, !dbg !3850, !tbaa !544
  br label %19, !dbg !3851

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3852
  ret i32 %20, !dbg !3853
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
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { nounwind allocsize(0,1) }
attributes #40 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2, !347, !149, !154, !161, !327, !349, !351, !202, !212, !244, !360, !319, !367, !401, !403, !405, !407, !409, !333, !411, !414, !416, !418}
!llvm.ident = !{!420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420}
!llvm.module.flags = !{!421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 36, type: !135, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !35, globals: !47, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mkfifo.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0ee63ed749703cce6fd462844f0b7c3f")
!4 = !{!5, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 42, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!10 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!11 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!12 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!13 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!14 = !DIEnumerator(name: "c_quoting_style", value: 5)
!15 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!16 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!17 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!18 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!19 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!23 = !DIEnumerator(name: "_ISupper", value: 256)
!24 = !DIEnumerator(name: "_ISlower", value: 512)
!25 = !DIEnumerator(name: "_ISalpha", value: 1024)
!26 = !DIEnumerator(name: "_ISdigit", value: 2048)
!27 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!28 = !DIEnumerator(name: "_ISspace", value: 8192)
!29 = !DIEnumerator(name: "_ISprint", value: 16384)
!30 = !DIEnumerator(name: "_ISgraph", value: 32768)
!31 = !DIEnumerator(name: "_ISblank", value: 1)
!32 = !DIEnumerator(name: "_IScntrl", value: 2)
!33 = !DIEnumerator(name: "_ISpunct", value: 4)
!34 = !DIEnumerator(name: "_ISalnum", value: 8)
!35 = !{!36, !38, !39, !40, !41, !44, !46}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 46, baseType: !43)
!42 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !{!48, !0}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !50, file: !51, line: 575, type: !39, isLocal: true, isDefinition: true)
!50 = distinct !DISubprogram(name: "oputs_", scope: !51, file: !51, line: 573, type: !52, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !54)
!51 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!52 = !DISubroutineType(types: !53)
!53 = !{null, !44, !44}
!54 = !{!55, !56, !57, !60, !62, !63, !64, !68, !69, !70, !71, !73, !129, !130, !131, !133, !134}
!55 = !DILocalVariable(name: "program", arg: 1, scope: !50, file: !51, line: 573, type: !44)
!56 = !DILocalVariable(name: "option", arg: 2, scope: !50, file: !51, line: 573, type: !44)
!57 = !DILocalVariable(name: "term", scope: !58, file: !51, line: 585, type: !44)
!58 = distinct !DILexicalBlock(scope: !59, file: !51, line: 582, column: 5)
!59 = distinct !DILexicalBlock(scope: !50, file: !51, line: 581, column: 7)
!60 = !DILocalVariable(name: "double_space", scope: !50, file: !51, line: 594, type: !61)
!61 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!62 = !DILocalVariable(name: "first_word", scope: !50, file: !51, line: 595, type: !44)
!63 = !DILocalVariable(name: "option_text", scope: !50, file: !51, line: 596, type: !44)
!64 = !DILocalVariable(name: "s", scope: !65, file: !51, line: 608, type: !44)
!65 = distinct !DILexicalBlock(scope: !66, file: !51, line: 605, column: 5)
!66 = distinct !DILexicalBlock(scope: !67, file: !51, line: 604, column: 12)
!67 = distinct !DILexicalBlock(scope: !50, file: !51, line: 597, column: 7)
!68 = !DILocalVariable(name: "spaces", scope: !65, file: !51, line: 609, type: !41)
!69 = !DILocalVariable(name: "anchor_len", scope: !50, file: !51, line: 620, type: !41)
!70 = !DILocalVariable(name: "desc_text", scope: !50, file: !51, line: 625, type: !44)
!71 = !DILocalVariable(name: "__ptr", scope: !72, file: !51, line: 644, type: !44)
!72 = distinct !DILexicalBlock(scope: !50, file: !51, line: 644, column: 3)
!73 = !DILocalVariable(name: "__stream", scope: !72, file: !51, line: 644, type: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 7, baseType: !77)
!76 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 49, size: 1728, elements: !79)
!78 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !95, !97, !98, !99, !103, !104, !106, !110, !113, !115, !118, !121, !122, !123, !124, !125}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !77, file: !78, line: 51, baseType: !39, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !77, file: !78, line: 54, baseType: !36, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !77, file: !78, line: 55, baseType: !36, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !77, file: !78, line: 56, baseType: !36, size: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !77, file: !78, line: 57, baseType: !36, size: 64, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !77, file: !78, line: 58, baseType: !36, size: 64, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !77, file: !78, line: 59, baseType: !36, size: 64, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !77, file: !78, line: 60, baseType: !36, size: 64, offset: 448)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !77, file: !78, line: 61, baseType: !36, size: 64, offset: 512)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !77, file: !78, line: 64, baseType: !36, size: 64, offset: 576)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !77, file: !78, line: 65, baseType: !36, size: 64, offset: 640)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !77, file: !78, line: 66, baseType: !36, size: 64, offset: 704)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !77, file: !78, line: 68, baseType: !93, size: 64, offset: 768)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !78, line: 36, flags: DIFlagFwdDecl)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !77, file: !78, line: 70, baseType: !96, size: 64, offset: 832)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !77, file: !78, line: 72, baseType: !39, size: 32, offset: 896)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !77, file: !78, line: 73, baseType: !39, size: 32, offset: 928)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !77, file: !78, line: 74, baseType: !100, size: 64, offset: 960)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !101, line: 152, baseType: !102)
!101 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!102 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !77, file: !78, line: 77, baseType: !40, size: 16, offset: 1024)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !77, file: !78, line: 78, baseType: !105, size: 8, offset: 1040)
!105 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !77, file: !78, line: 79, baseType: !107, size: 8, offset: 1048)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 1)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !77, file: !78, line: 81, baseType: !111, size: 64, offset: 1088)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !78, line: 43, baseType: null)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !77, file: !78, line: 89, baseType: !114, size: 64, offset: 1152)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !101, line: 153, baseType: !102)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !77, file: !78, line: 91, baseType: !116, size: 64, offset: 1216)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !78, line: 37, flags: DIFlagFwdDecl)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !77, file: !78, line: 92, baseType: !119, size: 64, offset: 1280)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !78, line: 38, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !77, file: !78, line: 93, baseType: !96, size: 64, offset: 1344)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !77, file: !78, line: 94, baseType: !38, size: 64, offset: 1408)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !77, file: !78, line: 95, baseType: !41, size: 64, offset: 1472)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !77, file: !78, line: 96, baseType: !39, size: 32, offset: 1536)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !77, file: !78, line: 98, baseType: !126, size: 160, offset: 1568)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 20)
!129 = !DILocalVariable(name: "__cnt", scope: !72, file: !51, line: 644, type: !41)
!130 = !DILocalVariable(name: "url_program", scope: !50, file: !51, line: 648, type: !44)
!131 = !DILocalVariable(name: "__ptr", scope: !132, file: !51, line: 686, type: !44)
!132 = distinct !DILexicalBlock(scope: !50, file: !51, line: 686, column: 3)
!133 = !DILocalVariable(name: "__stream", scope: !132, file: !51, line: 686, type: !74)
!134 = !DILocalVariable(name: "__cnt", scope: !132, file: !51, line: 686, type: !41)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1280, elements: !145)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !138, line: 50, size: 256, elements: !139)
!138 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!139 = !{!140, !141, !142, !144}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !137, file: !138, line: 52, baseType: !44, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !137, file: !138, line: 55, baseType: !39, size: 32, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !137, file: !138, line: 56, baseType: !143, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !137, file: !138, line: 57, baseType: !39, size: 32, offset: 192)
!145 = !{!146}
!146 = !DISubrange(count: 5)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "Version", scope: !149, file: !150, line: 3, type: !44, isLocal: false, isDefinition: true)
!149 = distinct !DICompileUnit(language: DW_LANG_C99, file: !150, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !151, splitDebugInlining: false, nameTableKind: None)
!150 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!151 = !{!147}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "file_name", scope: !154, file: !155, line: 45, type: !44, isLocal: true, isDefinition: true)
!154 = distinct !DICompileUnit(language: DW_LANG_C99, file: !155, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !156, splitDebugInlining: false, nameTableKind: None)
!155 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!156 = !{!152, !157}
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !154, file: !155, line: 55, type: !61, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !161, file: !162, line: 66, type: !197, isLocal: false, isDefinition: true)
!161 = distinct !DICompileUnit(language: DW_LANG_C99, file: !162, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !163, globals: !164, splitDebugInlining: false, nameTableKind: None)
!162 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!163 = !{!38, !46}
!164 = !{!165, !191, !159, !193, !195}
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "old_file_name", scope: !167, file: !162, line: 304, type: !44, isLocal: true, isDefinition: true)
!167 = distinct !DISubprogram(name: "verror_at_line", scope: !162, file: !162, line: 298, type: !168, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !184)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !39, !39, !44, !7, !44, !170}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !171, line: 52, baseType: !172)
!171 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !173, line: 32, baseType: !174)
!173 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !175, baseType: !176)
!175 = !DIFile(filename: "lib/error.c", directory: "/src")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !177, size: 256, elements: !178)
!177 = !DINamespace(name: "std", scope: null)
!178 = !{!179, !180, !181, !182, !183}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !176, file: !175, baseType: !38, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !176, file: !175, baseType: !38, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !176, file: !175, baseType: !38, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !176, file: !175, baseType: !39, size: 32, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !176, file: !175, baseType: !39, size: 32, offset: 224)
!184 = !{!185, !186, !187, !188, !189, !190}
!185 = !DILocalVariable(name: "status", arg: 1, scope: !167, file: !162, line: 298, type: !39)
!186 = !DILocalVariable(name: "errnum", arg: 2, scope: !167, file: !162, line: 298, type: !39)
!187 = !DILocalVariable(name: "file_name", arg: 3, scope: !167, file: !162, line: 298, type: !44)
!188 = !DILocalVariable(name: "line_number", arg: 4, scope: !167, file: !162, line: 298, type: !7)
!189 = !DILocalVariable(name: "message", arg: 5, scope: !167, file: !162, line: 298, type: !44)
!190 = !DILocalVariable(name: "args", arg: 6, scope: !167, file: !162, line: 298, type: !170)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "old_line_number", scope: !167, file: !162, line: 305, type: !7, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "error_message_count", scope: !161, file: !162, line: 69, type: !7, isLocal: false, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !161, file: !162, line: 295, type: !39, isLocal: false, isDefinition: true)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{null}
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "program_name", scope: !202, file: !203, line: 31, type: !44, isLocal: false, isDefinition: true)
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !204, globals: !205, splitDebugInlining: false, nameTableKind: None)
!203 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!204 = !{!36}
!205 = !{!200}
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "utf07FF", scope: !208, file: !209, line: 46, type: !239, isLocal: true, isDefinition: true)
!208 = distinct !DISubprogram(name: "proper_name_lite", scope: !209, file: !209, line: 38, type: !210, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !214)
!209 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!210 = !DISubroutineType(types: !211)
!211 = !{!44, !44, !44}
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !213, splitDebugInlining: false, nameTableKind: None)
!213 = !{!206}
!214 = !{!215, !216, !217, !218, !223}
!215 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !208, file: !209, line: 38, type: !44)
!216 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !208, file: !209, line: 38, type: !44)
!217 = !DILocalVariable(name: "translation", scope: !208, file: !209, line: 40, type: !44)
!218 = !DILocalVariable(name: "w", scope: !208, file: !209, line: 47, type: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !220, line: 37, baseType: !221)
!220 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !101, line: 57, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !101, line: 42, baseType: !7)
!223 = !DILocalVariable(name: "mbs", scope: !208, file: !209, line: 48, type: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !225, line: 6, baseType: !226)
!225 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !227, line: 21, baseType: !228)
!227 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 13, size: 64, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !228, file: !227, line: 15, baseType: !39, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !228, file: !227, line: 20, baseType: !232, size: 32, offset: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !228, file: !227, line: 16, size: 32, elements: !233)
!233 = !{!234, !235}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !232, file: !227, line: 18, baseType: !7, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !232, file: !227, line: 19, baseType: !236, size: 32)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 4)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 16, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 2)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !244, file: !245, line: 76, type: !313, isLocal: false, isDefinition: true)
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !252, globals: !253, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!246 = !{!5, !247, !20}
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 254, baseType: !7, size: 32, elements: !248)
!248 = !{!249, !250, !251}
!249 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!250 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!251 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!252 = !{!39, !40, !41}
!253 = !{!242, !254, !260, !272, !274, !279, !302, !309, !311}
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !244, file: !245, line: 92, type: !256, isLocal: false, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 320, elements: !258)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!258 = !{!259}
!259 = !DISubrange(count: 10)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !244, file: !245, line: 1040, type: !262, isLocal: false, isDefinition: true)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !245, line: 56, size: 448, elements: !263)
!263 = !{!264, !265, !266, !270, !271}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !262, file: !245, line: 59, baseType: !5, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !262, file: !245, line: 62, baseType: !39, size: 32, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !262, file: !245, line: 66, baseType: !267, size: 256, offset: 64)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 8)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !262, file: !245, line: 69, baseType: !44, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !262, file: !245, line: 72, baseType: !44, size: 64, offset: 384)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !244, file: !245, line: 107, type: !262, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "slot0", scope: !244, file: !245, line: 831, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2048, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 256)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "quote", scope: !281, file: !245, line: 228, type: !300, isLocal: true, isDefinition: true)
!281 = distinct !DISubprogram(name: "gettext_quote", scope: !245, file: !245, line: 197, type: !282, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !284)
!282 = !DISubroutineType(types: !283)
!283 = !{!44, !44, !5}
!284 = !{!285, !286, !287, !288, !289}
!285 = !DILocalVariable(name: "msgid", arg: 1, scope: !281, file: !245, line: 197, type: !44)
!286 = !DILocalVariable(name: "s", arg: 2, scope: !281, file: !245, line: 197, type: !5)
!287 = !DILocalVariable(name: "translation", scope: !281, file: !245, line: 199, type: !44)
!288 = !DILocalVariable(name: "w", scope: !281, file: !245, line: 229, type: !219)
!289 = !DILocalVariable(name: "mbs", scope: !281, file: !245, line: 230, type: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !225, line: 6, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !227, line: 21, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 13, size: 64, elements: !293)
!293 = !{!294, !295}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !292, file: !227, line: 15, baseType: !39, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !292, file: !227, line: 20, baseType: !296, size: 32, offset: 32)
!296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !227, line: 16, size: 32, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !296, file: !227, line: 18, baseType: !7, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !296, file: !227, line: 19, baseType: !236, size: 32)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, elements: !301)
!301 = !{!241, !238}
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "slotvec", scope: !244, file: !245, line: 834, type: !304, isLocal: true, isDefinition: true)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !245, line: 823, size: 128, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !305, file: !245, line: 825, baseType: !41, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !305, file: !245, line: 826, baseType: !36, size: 64, offset: 64)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "nslots", scope: !244, file: !245, line: 832, type: !39, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "slotvec0", scope: !244, file: !245, line: 833, type: !305, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 704, elements: !315)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!315 = !{!316}
!316 = !DISubrange(count: 11)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !319, file: !320, line: 26, type: !322, isLocal: false, isDefinition: true)
!319 = distinct !DICompileUnit(language: DW_LANG_C99, file: !320, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !321, splitDebugInlining: false, nameTableKind: None)
!320 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!321 = !{!317}
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 47)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "exit_failure", scope: !327, file: !328, line: 24, type: !330, isLocal: false, isDefinition: true)
!327 = distinct !DICompileUnit(language: DW_LANG_C99, file: !328, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !329, splitDebugInlining: false, nameTableKind: None)
!328 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!329 = !{!325}
!330 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "internal_state", scope: !333, file: !334, line: 97, type: !337, isLocal: true, isDefinition: true)
!333 = distinct !DICompileUnit(language: DW_LANG_C99, file: !334, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !335, globals: !336, splitDebugInlining: false, nameTableKind: None)
!334 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!335 = !{!38, !41, !46}
!336 = !{!331}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !225, line: 6, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !227, line: 21, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 13, size: 64, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !339, file: !227, line: 15, baseType: !39, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !339, file: !227, line: 20, baseType: !343, size: 32, offset: 32)
!343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !227, line: 16, size: 32, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !343, file: !227, line: 18, baseType: !7, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !343, file: !227, line: 19, baseType: !236, size: 32)
!347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !348, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!348 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!349 = distinct !DICompileUnit(language: DW_LANG_C99, file: !350, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!350 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!351 = distinct !DICompileUnit(language: DW_LANG_C99, file: !352, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !353, splitDebugInlining: false, nameTableKind: None)
!352 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!353 = !{!354}
!354 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !352, line: 78, baseType: !7, size: 32, elements: !355)
!355 = !{!356, !357, !358, !359}
!356 = !DIEnumerator(name: "MODE_DONE", value: 0)
!357 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!358 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!359 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !362, retainedTypes: !366, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!362 = !{!363}
!363 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !361, line: 40, baseType: !7, size: 32, elements: !364)
!364 = !{!365}
!365 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!366 = !{!38}
!367 = distinct !DICompileUnit(language: DW_LANG_C99, file: !368, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !369, retainedTypes: !400, splitDebugInlining: false, nameTableKind: None)
!368 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!369 = !{!370, !382}
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !371, file: !368, line: 188, baseType: !7, size: 32, elements: !380)
!371 = distinct !DISubprogram(name: "x2nrealloc", scope: !368, file: !368, line: 176, type: !372, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !375)
!372 = !DISubroutineType(types: !373)
!373 = !{!38, !38, !374, !41}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!375 = !{!376, !377, !378, !379}
!376 = !DILocalVariable(name: "p", arg: 1, scope: !371, file: !368, line: 176, type: !38)
!377 = !DILocalVariable(name: "pn", arg: 2, scope: !371, file: !368, line: 176, type: !374)
!378 = !DILocalVariable(name: "s", arg: 3, scope: !371, file: !368, line: 176, type: !41)
!379 = !DILocalVariable(name: "n", scope: !371, file: !368, line: 178, type: !41)
!380 = !{!381}
!381 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!382 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !383, file: !368, line: 228, baseType: !7, size: 32, elements: !380)
!383 = distinct !DISubprogram(name: "xpalloc", scope: !368, file: !368, line: 223, type: !384, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !390)
!384 = !DISubroutineType(types: !385)
!385 = !{!38, !38, !386, !387, !389, !387}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !388, line: 130, baseType: !389)
!388 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !42, line: 35, baseType: !102)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399}
!391 = !DILocalVariable(name: "pa", arg: 1, scope: !383, file: !368, line: 223, type: !38)
!392 = !DILocalVariable(name: "pn", arg: 2, scope: !383, file: !368, line: 223, type: !386)
!393 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !383, file: !368, line: 223, type: !387)
!394 = !DILocalVariable(name: "n_max", arg: 4, scope: !383, file: !368, line: 223, type: !389)
!395 = !DILocalVariable(name: "s", arg: 5, scope: !383, file: !368, line: 223, type: !387)
!396 = !DILocalVariable(name: "n0", scope: !383, file: !368, line: 230, type: !387)
!397 = !DILocalVariable(name: "n", scope: !383, file: !368, line: 237, type: !387)
!398 = !DILocalVariable(name: "nbytes", scope: !383, file: !368, line: 248, type: !387)
!399 = !DILocalVariable(name: "adjusted_nbytes", scope: !383, file: !368, line: 252, type: !387)
!400 = !{!36, !38, !61, !102, !43}
!401 = distinct !DICompileUnit(language: DW_LANG_C99, file: !402, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!402 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!403 = distinct !DICompileUnit(language: DW_LANG_C99, file: !404, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!404 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!405 = distinct !DICompileUnit(language: DW_LANG_C99, file: !406, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!406 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!407 = distinct !DICompileUnit(language: DW_LANG_C99, file: !408, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !366, splitDebugInlining: false, nameTableKind: None)
!408 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!409 = distinct !DICompileUnit(language: DW_LANG_C99, file: !410, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !366, splitDebugInlining: false, nameTableKind: None)
!410 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!411 = distinct !DICompileUnit(language: DW_LANG_C99, file: !412, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !413, splitDebugInlining: false, nameTableKind: None)
!412 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!413 = !{!61, !43, !38}
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!417 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!418 = distinct !DICompileUnit(language: DW_LANG_C99, file: !419, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !366, splitDebugInlining: false, nameTableKind: None)
!419 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!420 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!421 = !{i32 7, !"Dwarf Version", i32 5}
!422 = !{i32 2, !"Debug Info Version", i32 3}
!423 = !{i32 1, !"wchar_size", i32 4}
!424 = !{i32 1, !"branch-target-enforcement", i32 0}
!425 = !{i32 1, !"sign-return-address", i32 0}
!426 = !{i32 1, !"sign-return-address-all", i32 0}
!427 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!428 = !{i32 7, !"PIC Level", i32 2}
!429 = !{i32 7, !"PIE Level", i32 2}
!430 = !{i32 7, !"uwtable", i32 1}
!431 = !{i32 7, !"frame-pointer", i32 1}
!432 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 46, type: !433, scopeLine: 47, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !435)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !39}
!435 = !{!436}
!436 = !DILocalVariable(name: "status", arg: 1, scope: !432, file: !3, line: 46, type: !39)
!437 = !DILocation(line: 0, scope: !432)
!438 = !DILocation(line: 48, column: 14, scope: !439)
!439 = distinct !DILexicalBlock(scope: !432, file: !3, line: 48, column: 7)
!440 = !DILocation(line: 48, column: 7, scope: !432)
!441 = !DILocation(line: 49, column: 5, scope: !442)
!442 = distinct !DILexicalBlock(scope: !439, file: !3, line: 49, column: 5)
!443 = !{!444, !444, i64 0}
!444 = !{!"any pointer", !445, i64 0}
!445 = !{!"omnipotent char", !446, i64 0}
!446 = !{!"Simple C/C++ TBAA"}
!447 = !DILocation(line: 52, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !439, file: !3, line: 51, column: 5)
!449 = !DILocation(line: 53, column: 7, scope: !448)
!450 = !DILocation(line: 736, column: 3, scope: !451, inlinedAt: !453)
!451 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !51, file: !51, line: 734, type: !198, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !452)
!452 = !{}
!453 = distinct !DILocation(line: 57, column: 7, scope: !448)
!454 = !DILocation(line: 59, column: 7, scope: !448)
!455 = !DILocation(line: 63, column: 7, scope: !448)
!456 = !DILocation(line: 67, column: 7, scope: !448)
!457 = !DILocation(line: 72, column: 7, scope: !448)
!458 = !DILocation(line: 73, column: 7, scope: !448)
!459 = !DILocalVariable(name: "program", arg: 1, scope: !460, file: !51, line: 836, type: !44)
!460 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !51, file: !51, line: 836, type: !461, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !44}
!463 = !{!459, !464, !473, !474, !476, !477}
!464 = !DILocalVariable(name: "infomap", scope: !460, file: !51, line: 838, type: !465)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 896, elements: !471)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !460, file: !51, line: 838, size: 128, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !467, file: !51, line: 838, baseType: !44, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !467, file: !51, line: 838, baseType: !44, size: 64, offset: 64)
!471 = !{!472}
!472 = !DISubrange(count: 7)
!473 = !DILocalVariable(name: "node", scope: !460, file: !51, line: 848, type: !44)
!474 = !DILocalVariable(name: "map_prog", scope: !460, file: !51, line: 849, type: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!476 = !DILocalVariable(name: "lc_messages", scope: !460, file: !51, line: 861, type: !44)
!477 = !DILocalVariable(name: "url_program", scope: !460, file: !51, line: 874, type: !44)
!478 = !DILocation(line: 0, scope: !460, inlinedAt: !479)
!479 = distinct !DILocation(line: 74, column: 7, scope: !448)
!480 = !DILocation(line: 838, column: 3, scope: !460, inlinedAt: !479)
!481 = !DILocation(line: 838, column: 67, scope: !460, inlinedAt: !479)
!482 = !DILocation(line: 849, column: 36, scope: !460, inlinedAt: !479)
!483 = !DILocation(line: 851, column: 3, scope: !460, inlinedAt: !479)
!484 = !DILocalVariable(name: "__s1", arg: 1, scope: !485, file: !486, line: 1359, type: !44)
!485 = distinct !DISubprogram(name: "streq", scope: !486, file: !486, line: 1359, type: !487, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !489)
!486 = !DIFile(filename: "./lib/string.h", directory: "/src")
!487 = !DISubroutineType(types: !488)
!488 = !{!61, !44, !44}
!489 = !{!484, !490}
!490 = !DILocalVariable(name: "__s2", arg: 2, scope: !485, file: !486, line: 1359, type: !44)
!491 = !DILocation(line: 0, scope: !485, inlinedAt: !492)
!492 = distinct !DILocation(line: 851, column: 33, scope: !460, inlinedAt: !479)
!493 = !DILocation(line: 1361, column: 11, scope: !485, inlinedAt: !492)
!494 = !DILocation(line: 1361, column: 10, scope: !485, inlinedAt: !492)
!495 = !DILocation(line: 852, column: 13, scope: !460, inlinedAt: !479)
!496 = !DILocation(line: 851, column: 20, scope: !460, inlinedAt: !479)
!497 = !{!498, !444, i64 0}
!498 = !{!"infomap", !444, i64 0, !444, i64 8}
!499 = !DILocation(line: 851, column: 10, scope: !460, inlinedAt: !479)
!500 = !DILocation(line: 851, column: 28, scope: !460, inlinedAt: !479)
!501 = distinct !{!501, !483, !495, !502}
!502 = !{!"llvm.loop.mustprogress"}
!503 = !DILocation(line: 854, column: 17, scope: !504, inlinedAt: !479)
!504 = distinct !DILexicalBlock(scope: !460, file: !51, line: 854, column: 7)
!505 = !{!498, !444, i64 8}
!506 = !DILocation(line: 854, column: 7, scope: !504, inlinedAt: !479)
!507 = !DILocation(line: 854, column: 7, scope: !460, inlinedAt: !479)
!508 = !DILocation(line: 857, column: 3, scope: !460, inlinedAt: !479)
!509 = !DILocation(line: 861, column: 29, scope: !460, inlinedAt: !479)
!510 = !DILocation(line: 862, column: 7, scope: !511, inlinedAt: !479)
!511 = distinct !DILexicalBlock(scope: !460, file: !51, line: 862, column: 7)
!512 = !DILocation(line: 862, column: 19, scope: !511, inlinedAt: !479)
!513 = !DILocation(line: 862, column: 22, scope: !511, inlinedAt: !479)
!514 = !DILocation(line: 862, column: 7, scope: !460, inlinedAt: !479)
!515 = !DILocation(line: 868, column: 7, scope: !516, inlinedAt: !479)
!516 = distinct !DILexicalBlock(scope: !511, file: !51, line: 863, column: 5)
!517 = !DILocation(line: 870, column: 5, scope: !516, inlinedAt: !479)
!518 = !DILocation(line: 0, scope: !485, inlinedAt: !519)
!519 = distinct !DILocation(line: 874, column: 29, scope: !460, inlinedAt: !479)
!520 = !DILocation(line: 875, column: 3, scope: !460, inlinedAt: !479)
!521 = !DILocation(line: 877, column: 3, scope: !460, inlinedAt: !479)
!522 = !DILocation(line: 879, column: 1, scope: !460, inlinedAt: !479)
!523 = !DILocation(line: 76, column: 3, scope: !432)
!524 = !DISubprogram(name: "dcgettext", scope: !525, file: !525, line: 51, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!525 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!526 = !DISubroutineType(types: !527)
!527 = !{!36, !44, !44, !39}
!528 = !DISubprogram(name: "fputs_unlocked", scope: !171, file: !171, line: 691, type: !529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!529 = !DISubroutineType(types: !530)
!530 = !{!39, !531, !532}
!531 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!532 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!533 = !DILocation(line: 0, scope: !50)
!534 = !DILocation(line: 581, column: 7, scope: !59)
!535 = !{!536, !536, i64 0}
!536 = !{!"int", !445, i64 0}
!537 = !DILocation(line: 581, column: 19, scope: !59)
!538 = !DILocation(line: 581, column: 7, scope: !50)
!539 = !DILocation(line: 585, column: 26, scope: !58)
!540 = !DILocation(line: 0, scope: !58)
!541 = !DILocation(line: 586, column: 23, scope: !58)
!542 = !DILocation(line: 586, column: 28, scope: !58)
!543 = !DILocation(line: 586, column: 32, scope: !58)
!544 = !{!445, !445, i64 0}
!545 = !DILocation(line: 586, column: 38, scope: !58)
!546 = !DILocation(line: 0, scope: !485, inlinedAt: !547)
!547 = distinct !DILocation(line: 586, column: 41, scope: !58)
!548 = !DILocation(line: 1361, column: 11, scope: !485, inlinedAt: !547)
!549 = !DILocation(line: 1361, column: 10, scope: !485, inlinedAt: !547)
!550 = !DILocation(line: 586, column: 19, scope: !58)
!551 = !DILocation(line: 587, column: 5, scope: !58)
!552 = !DILocation(line: 588, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !50, file: !51, line: 588, column: 7)
!554 = !DILocation(line: 588, column: 7, scope: !50)
!555 = !DILocation(line: 590, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !51, line: 589, column: 5)
!557 = !DILocation(line: 591, column: 7, scope: !556)
!558 = !DILocation(line: 595, column: 37, scope: !50)
!559 = !DILocation(line: 595, column: 35, scope: !50)
!560 = !DILocation(line: 596, column: 29, scope: !50)
!561 = !DILocation(line: 597, column: 8, scope: !67)
!562 = !DILocation(line: 597, column: 7, scope: !50)
!563 = !DILocation(line: 604, column: 24, scope: !66)
!564 = !DILocation(line: 604, column: 12, scope: !67)
!565 = !DILocation(line: 0, scope: !65)
!566 = !DILocation(line: 610, column: 16, scope: !65)
!567 = !DILocation(line: 610, column: 7, scope: !65)
!568 = !DILocation(line: 611, column: 21, scope: !65)
!569 = !{!570, !570, i64 0}
!570 = !{!"short", !445, i64 0}
!571 = !DILocation(line: 611, column: 19, scope: !65)
!572 = !DILocation(line: 611, column: 16, scope: !65)
!573 = !DILocation(line: 610, column: 30, scope: !65)
!574 = distinct !{!574, !567, !568, !502}
!575 = !DILocation(line: 612, column: 18, scope: !576)
!576 = distinct !DILexicalBlock(scope: !65, file: !51, line: 612, column: 11)
!577 = !DILocation(line: 612, column: 11, scope: !65)
!578 = !DILocation(line: 620, column: 23, scope: !50)
!579 = !DILocation(line: 625, column: 39, scope: !50)
!580 = !DILocation(line: 626, column: 3, scope: !50)
!581 = !DILocation(line: 626, column: 10, scope: !50)
!582 = !DILocation(line: 626, column: 21, scope: !50)
!583 = !DILocation(line: 628, column: 44, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !51, line: 628, column: 11)
!585 = distinct !DILexicalBlock(scope: !50, file: !51, line: 627, column: 5)
!586 = !DILocation(line: 628, column: 32, scope: !584)
!587 = !DILocation(line: 628, column: 49, scope: !584)
!588 = !DILocation(line: 628, column: 11, scope: !585)
!589 = !DILocation(line: 630, column: 11, scope: !590)
!590 = distinct !DILexicalBlock(scope: !585, file: !51, line: 630, column: 11)
!591 = !DILocation(line: 630, column: 11, scope: !585)
!592 = !DILocation(line: 632, column: 26, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !51, line: 632, column: 15)
!594 = distinct !DILexicalBlock(scope: !590, file: !51, line: 631, column: 9)
!595 = !DILocation(line: 632, column: 34, scope: !593)
!596 = !DILocation(line: 632, column: 37, scope: !593)
!597 = !DILocation(line: 632, column: 15, scope: !594)
!598 = !DILocation(line: 636, column: 29, scope: !599)
!599 = distinct !DILexicalBlock(scope: !594, file: !51, line: 636, column: 15)
!600 = !DILocation(line: 640, column: 16, scope: !585)
!601 = distinct !{!601, !580, !602, !502}
!602 = !DILocation(line: 641, column: 5, scope: !50)
!603 = !DILocation(line: 644, column: 3, scope: !50)
!604 = !DILocation(line: 0, scope: !485, inlinedAt: !605)
!605 = distinct !DILocation(line: 648, column: 31, scope: !50)
!606 = !DILocation(line: 0, scope: !485, inlinedAt: !607)
!607 = distinct !DILocation(line: 649, column: 31, scope: !50)
!608 = !DILocation(line: 0, scope: !485, inlinedAt: !609)
!609 = distinct !DILocation(line: 650, column: 31, scope: !50)
!610 = !DILocation(line: 0, scope: !485, inlinedAt: !611)
!611 = distinct !DILocation(line: 651, column: 31, scope: !50)
!612 = !DILocation(line: 0, scope: !485, inlinedAt: !613)
!613 = distinct !DILocation(line: 652, column: 31, scope: !50)
!614 = !DILocation(line: 0, scope: !485, inlinedAt: !615)
!615 = distinct !DILocation(line: 653, column: 31, scope: !50)
!616 = !DILocation(line: 0, scope: !485, inlinedAt: !617)
!617 = distinct !DILocation(line: 654, column: 31, scope: !50)
!618 = !DILocation(line: 0, scope: !485, inlinedAt: !619)
!619 = distinct !DILocation(line: 655, column: 31, scope: !50)
!620 = !DILocation(line: 0, scope: !485, inlinedAt: !621)
!621 = distinct !DILocation(line: 656, column: 31, scope: !50)
!622 = !DILocation(line: 0, scope: !485, inlinedAt: !623)
!623 = distinct !DILocation(line: 657, column: 31, scope: !50)
!624 = !DILocation(line: 663, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !50, file: !51, line: 663, column: 7)
!626 = !DILocation(line: 664, column: 7, scope: !625)
!627 = !DILocation(line: 664, column: 10, scope: !625)
!628 = !DILocation(line: 663, column: 7, scope: !50)
!629 = !DILocation(line: 669, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !625, file: !51, line: 665, column: 5)
!631 = !DILocation(line: 671, column: 5, scope: !630)
!632 = !DILocation(line: 676, column: 7, scope: !633)
!633 = distinct !DILexicalBlock(scope: !625, file: !51, line: 673, column: 5)
!634 = !DILocation(line: 679, column: 3, scope: !50)
!635 = !DILocation(line: 683, column: 3, scope: !50)
!636 = !DILocation(line: 686, column: 3, scope: !50)
!637 = !DILocation(line: 688, column: 3, scope: !50)
!638 = !DILocation(line: 691, column: 3, scope: !50)
!639 = !DILocation(line: 695, column: 3, scope: !50)
!640 = !DILocation(line: 696, column: 1, scope: !50)
!641 = !DISubprogram(name: "setlocale", scope: !642, file: !642, line: 122, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!642 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!643 = !DISubroutineType(types: !644)
!644 = !{!36, !39, !44}
!645 = !DISubprogram(name: "getenv", scope: !646, file: !646, line: 641, type: !647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!646 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!647 = !DISubroutineType(types: !648)
!648 = !{!36, !44}
!649 = !DISubprogram(name: "fwrite_unlocked", scope: !171, file: !171, line: 704, type: !650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!650 = !DISubroutineType(types: !651)
!651 = !{!41, !652, !41, !41, !532}
!652 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!655 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 80, type: !656, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !659)
!656 = !DISubroutineType(types: !657)
!657 = !{!39, !39, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!659 = !{!660, !661, !662, !663, !664, !668, !669, !672, !676, !682, !683}
!660 = !DILocalVariable(name: "argc", arg: 1, scope: !655, file: !3, line: 80, type: !39)
!661 = !DILocalVariable(name: "argv", arg: 2, scope: !655, file: !3, line: 80, type: !658)
!662 = !DILocalVariable(name: "specified_mode", scope: !655, file: !3, line: 82, type: !44)
!663 = !DILocalVariable(name: "scontext", scope: !655, file: !3, line: 83, type: !44)
!664 = !DILocalVariable(name: "set_security_context", scope: !655, file: !3, line: 84, type: !665)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !667, line: 53, flags: DIFlagFwdDecl)
!667 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!668 = !DILocalVariable(name: "optc", scope: !655, file: !3, line: 94, type: !39)
!669 = !DILocalVariable(name: "ret", scope: !670, file: !3, line: 142, type: !39)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 141, column: 5)
!671 = distinct !DILexicalBlock(scope: !655, file: !3, line: 140, column: 7)
!672 = !DILocalVariable(name: "newmode", scope: !655, file: !3, line: 154, type: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !674, line: 69, baseType: !675)
!674 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !101, line: 150, baseType: !7)
!676 = !DILocalVariable(name: "change", scope: !677, file: !3, line: 157, type: !679)
!677 = distinct !DILexicalBlock(scope: !678, file: !3, line: 156, column: 5)
!678 = distinct !DILexicalBlock(scope: !655, file: !3, line: 155, column: 7)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !681, line: 35, flags: DIFlagFwdDecl)
!681 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!682 = !DILocalVariable(name: "umask_value", scope: !677, file: !3, line: 160, type: !673)
!683 = !DILocalVariable(name: "exit_status", scope: !655, file: !3, line: 169, type: !39)
!684 = !DILocation(line: 0, scope: !655)
!685 = !DILocation(line: 87, column: 21, scope: !655)
!686 = !DILocation(line: 87, column: 3, scope: !655)
!687 = !DILocation(line: 88, column: 3, scope: !655)
!688 = !DILocation(line: 89, column: 3, scope: !655)
!689 = !DILocation(line: 90, column: 3, scope: !655)
!690 = !DILocation(line: 92, column: 3, scope: !655)
!691 = !DILocation(line: 95, column: 3, scope: !655)
!692 = !DILocation(line: 95, column: 18, scope: !655)
!693 = !DILocation(line: 100, column: 28, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 98, column: 9)
!695 = distinct !DILexicalBlock(scope: !655, file: !3, line: 96, column: 5)
!696 = !DILocation(line: 101, column: 11, scope: !694)
!697 = distinct !{!697, !691, !698, !502}
!698 = !DILocation(line: 132, column: 5, scope: !655)
!699 = !DILocation(line: 120, column: 20, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 120, column: 20)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 108, column: 20)
!702 = distinct !DILexicalBlock(scope: !694, file: !3, line: 103, column: 15)
!703 = !DILocation(line: 120, column: 20, scope: !701)
!704 = !DILocation(line: 122, column: 15, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !3, line: 121, column: 13)
!706 = !DILocation(line: 125, column: 13, scope: !705)
!707 = !DILocation(line: 127, column: 9, scope: !694)
!708 = !DILocation(line: 128, column: 9, scope: !694)
!709 = !DILocation(line: 130, column: 11, scope: !694)
!710 = !DILocation(line: 134, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !655, file: !3, line: 134, column: 7)
!712 = !DILocation(line: 134, column: 14, scope: !711)
!713 = !DILocation(line: 134, column: 7, scope: !655)
!714 = !DILocation(line: 136, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !3, line: 135, column: 5)
!716 = !DILocation(line: 137, column: 7, scope: !715)
!717 = !DILocation(line: 155, column: 7, scope: !678)
!718 = !DILocation(line: 155, column: 7, scope: !655)
!719 = !DILocation(line: 157, column: 36, scope: !677)
!720 = !DILocation(line: 0, scope: !677)
!721 = !DILocation(line: 158, column: 12, scope: !722)
!722 = distinct !DILexicalBlock(scope: !677, file: !3, line: 158, column: 11)
!723 = !DILocation(line: 158, column: 11, scope: !677)
!724 = !DILocation(line: 159, column: 9, scope: !722)
!725 = !DILocation(line: 160, column: 28, scope: !677)
!726 = !DILocation(line: 161, column: 7, scope: !677)
!727 = !DILocation(line: 162, column: 17, scope: !677)
!728 = !DILocation(line: 163, column: 13, scope: !677)
!729 = !DILocation(line: 163, column: 7, scope: !677)
!730 = !DILocation(line: 164, column: 19, scope: !731)
!731 = distinct !DILexicalBlock(scope: !677, file: !3, line: 164, column: 11)
!732 = !DILocation(line: 164, column: 11, scope: !677)
!733 = !DILocation(line: 165, column: 9, scope: !731)
!734 = !DILocation(line: 170, column: 17, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !3, line: 170, column: 3)
!736 = distinct !DILexicalBlock(scope: !655, file: !3, line: 170, column: 3)
!737 = !DILocation(line: 170, column: 3, scope: !736)
!738 = !DILocation(line: 170, column: 10, scope: !735)
!739 = !DILocation(line: 174, column: 19, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !3, line: 174, column: 11)
!741 = distinct !DILexicalBlock(scope: !735, file: !3, line: 171, column: 5)
!742 = !DILocation(line: 174, column: 11, scope: !740)
!743 = !DILocation(line: 174, column: 42, scope: !740)
!744 = !DILocation(line: 174, column: 11, scope: !741)
!745 = !DILocation(line: 176, column: 11, scope: !746)
!746 = distinct !DILexicalBlock(scope: !740, file: !3, line: 175, column: 9)
!747 = !DILocation(line: 178, column: 9, scope: !746)
!748 = !DILocation(line: 170, column: 25, scope: !735)
!749 = distinct !{!749, !737, !750, !502}
!750 = !DILocation(line: 185, column: 5, scope: !736)
!751 = !DILocation(line: 179, column: 47, scope: !752)
!752 = distinct !DILexicalBlock(scope: !740, file: !3, line: 179, column: 16)
!753 = !DILocation(line: 179, column: 42, scope: !752)
!754 = !DILocation(line: 179, column: 34, scope: !752)
!755 = !DILocation(line: 179, column: 65, scope: !752)
!756 = !DILocation(line: 179, column: 16, scope: !740)
!757 = !DILocation(line: 0, scope: !740)
!758 = !DILocation(line: 187, column: 3, scope: !655)
!759 = !DISubprogram(name: "bindtextdomain", scope: !525, file: !525, line: 86, type: !760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!760 = !DISubroutineType(types: !761)
!761 = !{!36, !44, !44}
!762 = !DISubprogram(name: "textdomain", scope: !525, file: !525, line: 82, type: !647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!763 = !DISubprogram(name: "atexit", scope: !646, file: !646, line: 602, type: !764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!764 = !DISubroutineType(types: !765)
!765 = !{!39, !197}
!766 = !DISubprogram(name: "getopt_long", scope: !138, file: !138, line: 66, type: !767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!767 = !DISubroutineType(types: !768)
!768 = !{!39, !39, !769, !44, !771, !143}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!772 = !DISubprogram(name: "umask", scope: !773, file: !773, line: 380, type: !774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!773 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!774 = !DISubroutineType(types: !775)
!775 = !{!675, !675}
!776 = !DISubprogram(name: "mkfifo", scope: !773, file: !773, line: 418, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!777 = !DISubroutineType(types: !778)
!778 = !{!39, !44, !675}
!779 = !DISubprogram(name: "lchmod", scope: !773, file: !773, line: 359, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!780 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !155, file: !155, line: 50, type: !461, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !781)
!781 = !{!782}
!782 = !DILocalVariable(name: "file", arg: 1, scope: !780, file: !155, line: 50, type: !44)
!783 = !DILocation(line: 0, scope: !780)
!784 = !DILocation(line: 52, column: 13, scope: !780)
!785 = !DILocation(line: 53, column: 1, scope: !780)
!786 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !155, file: !155, line: 87, type: !787, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !789)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !61}
!789 = !{!790}
!790 = !DILocalVariable(name: "ignore", arg: 1, scope: !786, file: !155, line: 87, type: !61)
!791 = !DILocation(line: 0, scope: !786)
!792 = !DILocation(line: 89, column: 16, scope: !786)
!793 = !{!794, !794, i64 0}
!794 = !{!"_Bool", !445, i64 0}
!795 = !DILocation(line: 90, column: 1, scope: !786)
!796 = distinct !DISubprogram(name: "close_stdout", scope: !155, file: !155, line: 116, type: !198, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !797)
!797 = !{!798}
!798 = !DILocalVariable(name: "write_error", scope: !799, file: !155, line: 121, type: !44)
!799 = distinct !DILexicalBlock(scope: !800, file: !155, line: 120, column: 5)
!800 = distinct !DILexicalBlock(scope: !796, file: !155, line: 118, column: 7)
!801 = !DILocation(line: 118, column: 21, scope: !800)
!802 = !DILocation(line: 118, column: 7, scope: !800)
!803 = !DILocation(line: 118, column: 29, scope: !800)
!804 = !DILocation(line: 119, column: 7, scope: !800)
!805 = !DILocation(line: 119, column: 12, scope: !800)
!806 = !{i8 0, i8 2}
!807 = !DILocation(line: 119, column: 25, scope: !800)
!808 = !DILocation(line: 119, column: 28, scope: !800)
!809 = !DILocation(line: 119, column: 34, scope: !800)
!810 = !DILocation(line: 118, column: 7, scope: !796)
!811 = !DILocation(line: 121, column: 33, scope: !799)
!812 = !DILocation(line: 0, scope: !799)
!813 = !DILocation(line: 122, column: 11, scope: !814)
!814 = distinct !DILexicalBlock(scope: !799, file: !155, line: 122, column: 11)
!815 = !DILocation(line: 0, scope: !814)
!816 = !DILocation(line: 122, column: 11, scope: !799)
!817 = !DILocation(line: 123, column: 9, scope: !814)
!818 = !DILocation(line: 126, column: 9, scope: !814)
!819 = !DILocation(line: 128, column: 14, scope: !799)
!820 = !DILocation(line: 128, column: 7, scope: !799)
!821 = !DILocation(line: 133, column: 42, scope: !822)
!822 = distinct !DILexicalBlock(scope: !796, file: !155, line: 133, column: 7)
!823 = !DILocation(line: 133, column: 28, scope: !822)
!824 = !DILocation(line: 133, column: 50, scope: !822)
!825 = !DILocation(line: 133, column: 7, scope: !796)
!826 = !DILocation(line: 134, column: 12, scope: !822)
!827 = !DILocation(line: 134, column: 5, scope: !822)
!828 = !DILocation(line: 135, column: 1, scope: !796)
!829 = distinct !DISubprogram(name: "verror", scope: !162, file: !162, line: 251, type: !830, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !39, !39, !44, !170}
!832 = !{!833, !834, !835, !836}
!833 = !DILocalVariable(name: "status", arg: 1, scope: !829, file: !162, line: 251, type: !39)
!834 = !DILocalVariable(name: "errnum", arg: 2, scope: !829, file: !162, line: 251, type: !39)
!835 = !DILocalVariable(name: "message", arg: 3, scope: !829, file: !162, line: 251, type: !44)
!836 = !DILocalVariable(name: "args", arg: 4, scope: !829, file: !162, line: 251, type: !170)
!837 = !DILocation(line: 0, scope: !829)
!838 = !DILocation(line: 251, column: 1, scope: !829)
!839 = !DILocation(line: 261, column: 3, scope: !829)
!840 = !DILocation(line: 265, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !829, file: !162, line: 265, column: 7)
!842 = !DILocation(line: 265, column: 7, scope: !829)
!843 = !DILocation(line: 266, column: 5, scope: !841)
!844 = !DILocation(line: 272, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !162, line: 268, column: 5)
!846 = !DILocation(line: 276, column: 3, scope: !829)
!847 = !{i64 0, i64 8, !443, i64 8, i64 8, !443, i64 16, i64 8, !443, i64 24, i64 4, !535, i64 28, i64 4, !535}
!848 = !DILocation(line: 282, column: 1, scope: !829)
!849 = distinct !DISubprogram(name: "flush_stdout", scope: !162, file: !162, line: 163, type: !198, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !850)
!850 = !{!851}
!851 = !DILocalVariable(name: "stdout_fd", scope: !849, file: !162, line: 166, type: !39)
!852 = !DILocation(line: 0, scope: !849)
!853 = !DILocalVariable(name: "fd", arg: 1, scope: !854, file: !162, line: 145, type: !39)
!854 = distinct !DISubprogram(name: "is_open", scope: !162, file: !162, line: 145, type: !855, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !857)
!855 = !DISubroutineType(types: !856)
!856 = !{!39, !39}
!857 = !{!853}
!858 = !DILocation(line: 0, scope: !854, inlinedAt: !859)
!859 = distinct !DILocation(line: 182, column: 25, scope: !860)
!860 = distinct !DILexicalBlock(scope: !849, file: !162, line: 182, column: 7)
!861 = !DILocation(line: 157, column: 15, scope: !854, inlinedAt: !859)
!862 = !DILocation(line: 182, column: 25, scope: !860)
!863 = !DILocation(line: 182, column: 7, scope: !849)
!864 = !DILocation(line: 184, column: 5, scope: !860)
!865 = !DILocation(line: 185, column: 1, scope: !849)
!866 = distinct !DISubprogram(name: "error_tail", scope: !162, file: !162, line: 219, type: !830, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !867)
!867 = !{!868, !869, !870, !871}
!868 = !DILocalVariable(name: "status", arg: 1, scope: !866, file: !162, line: 219, type: !39)
!869 = !DILocalVariable(name: "errnum", arg: 2, scope: !866, file: !162, line: 219, type: !39)
!870 = !DILocalVariable(name: "message", arg: 3, scope: !866, file: !162, line: 219, type: !44)
!871 = !DILocalVariable(name: "args", arg: 4, scope: !866, file: !162, line: 219, type: !170)
!872 = !DILocation(line: 0, scope: !866)
!873 = !DILocation(line: 219, column: 1, scope: !866)
!874 = !DILocation(line: 229, column: 13, scope: !866)
!875 = !DILocation(line: 229, column: 3, scope: !866)
!876 = !DILocalVariable(name: "__stream", arg: 1, scope: !877, file: !878, line: 132, type: !881)
!877 = distinct !DISubprogram(name: "vfprintf", scope: !878, file: !878, line: 132, type: !879, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !916)
!878 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!879 = !DISubroutineType(types: !880)
!880 = !{!39, !881, !531, !172}
!881 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 7, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 49, size: 1728, elements: !885)
!885 = !{!886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !884, file: !78, line: 51, baseType: !39, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !884, file: !78, line: 54, baseType: !36, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !884, file: !78, line: 55, baseType: !36, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !884, file: !78, line: 56, baseType: !36, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !884, file: !78, line: 57, baseType: !36, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !884, file: !78, line: 58, baseType: !36, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !884, file: !78, line: 59, baseType: !36, size: 64, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !884, file: !78, line: 60, baseType: !36, size: 64, offset: 448)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !884, file: !78, line: 61, baseType: !36, size: 64, offset: 512)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !884, file: !78, line: 64, baseType: !36, size: 64, offset: 576)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !884, file: !78, line: 65, baseType: !36, size: 64, offset: 640)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !884, file: !78, line: 66, baseType: !36, size: 64, offset: 704)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !884, file: !78, line: 68, baseType: !93, size: 64, offset: 768)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !884, file: !78, line: 70, baseType: !900, size: 64, offset: 832)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !884, file: !78, line: 72, baseType: !39, size: 32, offset: 896)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !884, file: !78, line: 73, baseType: !39, size: 32, offset: 928)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !884, file: !78, line: 74, baseType: !100, size: 64, offset: 960)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !884, file: !78, line: 77, baseType: !40, size: 16, offset: 1024)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !884, file: !78, line: 78, baseType: !105, size: 8, offset: 1040)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !884, file: !78, line: 79, baseType: !107, size: 8, offset: 1048)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !884, file: !78, line: 81, baseType: !111, size: 64, offset: 1088)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !884, file: !78, line: 89, baseType: !114, size: 64, offset: 1152)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !884, file: !78, line: 91, baseType: !116, size: 64, offset: 1216)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !884, file: !78, line: 92, baseType: !119, size: 64, offset: 1280)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !884, file: !78, line: 93, baseType: !900, size: 64, offset: 1344)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !884, file: !78, line: 94, baseType: !38, size: 64, offset: 1408)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !884, file: !78, line: 95, baseType: !41, size: 64, offset: 1472)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !884, file: !78, line: 96, baseType: !39, size: 32, offset: 1536)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !884, file: !78, line: 98, baseType: !126, size: 160, offset: 1568)
!916 = !{!876, !917, !918}
!917 = !DILocalVariable(name: "__fmt", arg: 2, scope: !877, file: !878, line: 133, type: !531)
!918 = !DILocalVariable(name: "__ap", arg: 3, scope: !877, file: !878, line: 133, type: !172)
!919 = !DILocation(line: 0, scope: !877, inlinedAt: !920)
!920 = distinct !DILocation(line: 229, column: 3, scope: !866)
!921 = !DILocation(line: 135, column: 10, scope: !877, inlinedAt: !920)
!922 = !{!923, !925}
!923 = distinct !{!923, !924, !"vfprintf.inline: argument 0"}
!924 = distinct !{!924, !"vfprintf.inline"}
!925 = distinct !{!925, !924, !"vfprintf.inline: argument 1"}
!926 = !DILocation(line: 232, column: 3, scope: !866)
!927 = !DILocation(line: 233, column: 7, scope: !928)
!928 = distinct !DILexicalBlock(scope: !866, file: !162, line: 233, column: 7)
!929 = !DILocation(line: 233, column: 7, scope: !866)
!930 = !DILocalVariable(name: "errnum", arg: 1, scope: !931, file: !162, line: 188, type: !39)
!931 = distinct !DISubprogram(name: "print_errno_message", scope: !162, file: !162, line: 188, type: !433, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !932)
!932 = !{!930, !933, !934}
!933 = !DILocalVariable(name: "s", scope: !931, file: !162, line: 190, type: !44)
!934 = !DILocalVariable(name: "errbuf", scope: !931, file: !162, line: 193, type: !935)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8192, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 1024)
!938 = !DILocation(line: 0, scope: !931, inlinedAt: !939)
!939 = distinct !DILocation(line: 234, column: 5, scope: !928)
!940 = !DILocation(line: 193, column: 3, scope: !931, inlinedAt: !939)
!941 = !DILocation(line: 193, column: 8, scope: !931, inlinedAt: !939)
!942 = !DILocation(line: 195, column: 7, scope: !931, inlinedAt: !939)
!943 = !DILocation(line: 207, column: 9, scope: !944, inlinedAt: !939)
!944 = distinct !DILexicalBlock(scope: !931, file: !162, line: 207, column: 7)
!945 = !DILocation(line: 207, column: 7, scope: !931, inlinedAt: !939)
!946 = !DILocation(line: 208, column: 9, scope: !944, inlinedAt: !939)
!947 = !DILocation(line: 208, column: 5, scope: !944, inlinedAt: !939)
!948 = !DILocation(line: 214, column: 3, scope: !931, inlinedAt: !939)
!949 = !DILocation(line: 216, column: 1, scope: !931, inlinedAt: !939)
!950 = !DILocation(line: 234, column: 5, scope: !928)
!951 = !DILocation(line: 238, column: 3, scope: !866)
!952 = !DILocalVariable(name: "__c", arg: 1, scope: !953, file: !954, line: 101, type: !39)
!953 = distinct !DISubprogram(name: "putc_unlocked", scope: !954, file: !954, line: 101, type: !955, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !957)
!954 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!955 = !DISubroutineType(types: !956)
!956 = !{!39, !39, !882}
!957 = !{!952, !958}
!958 = !DILocalVariable(name: "__stream", arg: 2, scope: !953, file: !954, line: 101, type: !882)
!959 = !DILocation(line: 0, scope: !953, inlinedAt: !960)
!960 = distinct !DILocation(line: 238, column: 3, scope: !866)
!961 = !DILocation(line: 103, column: 10, scope: !953, inlinedAt: !960)
!962 = !{!963, !444, i64 40}
!963 = !{!"_IO_FILE", !536, i64 0, !444, i64 8, !444, i64 16, !444, i64 24, !444, i64 32, !444, i64 40, !444, i64 48, !444, i64 56, !444, i64 64, !444, i64 72, !444, i64 80, !444, i64 88, !444, i64 96, !444, i64 104, !536, i64 112, !536, i64 116, !964, i64 120, !570, i64 128, !445, i64 130, !445, i64 131, !444, i64 136, !964, i64 144, !444, i64 152, !444, i64 160, !444, i64 168, !444, i64 176, !964, i64 184, !536, i64 192, !445, i64 196}
!964 = !{!"long", !445, i64 0}
!965 = !{!963, !444, i64 48}
!966 = !{!"branch_weights", i32 2000, i32 1}
!967 = !DILocation(line: 240, column: 3, scope: !866)
!968 = !DILocation(line: 241, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !866, file: !162, line: 241, column: 7)
!970 = !DILocation(line: 241, column: 7, scope: !866)
!971 = !DILocation(line: 242, column: 5, scope: !969)
!972 = !DILocation(line: 243, column: 1, scope: !866)
!973 = !DISubprogram(name: "strerror_r", scope: !974, file: !974, line: 444, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!974 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!975 = !DISubroutineType(types: !976)
!976 = !{!36, !39, !36, !41}
!977 = !DISubprogram(name: "fflush_unlocked", scope: !171, file: !171, line: 239, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!978 = !DISubroutineType(types: !979)
!979 = !{!39, !882}
!980 = !DISubprogram(name: "fcntl", scope: !981, file: !981, line: 149, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!981 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!982 = !DISubroutineType(types: !983)
!983 = !{!39, !39, !39, null}
!984 = distinct !DISubprogram(name: "error", scope: !162, file: !162, line: 285, type: !985, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !39, !39, !44, null}
!987 = !{!988, !989, !990, !991}
!988 = !DILocalVariable(name: "status", arg: 1, scope: !984, file: !162, line: 285, type: !39)
!989 = !DILocalVariable(name: "errnum", arg: 2, scope: !984, file: !162, line: 285, type: !39)
!990 = !DILocalVariable(name: "message", arg: 3, scope: !984, file: !162, line: 285, type: !44)
!991 = !DILocalVariable(name: "ap", scope: !984, file: !162, line: 287, type: !170)
!992 = !DILocation(line: 0, scope: !984)
!993 = !DILocation(line: 287, column: 3, scope: !984)
!994 = !DILocation(line: 287, column: 11, scope: !984)
!995 = !DILocation(line: 288, column: 3, scope: !984)
!996 = !DILocation(line: 289, column: 3, scope: !984)
!997 = !DILocation(line: 290, column: 3, scope: !984)
!998 = !DILocation(line: 291, column: 1, scope: !984)
!999 = !DILocation(line: 0, scope: !167)
!1000 = !DILocation(line: 298, column: 1, scope: !167)
!1001 = !DILocation(line: 302, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !167, file: !162, line: 302, column: 7)
!1003 = !DILocation(line: 302, column: 7, scope: !167)
!1004 = !DILocation(line: 307, column: 11, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !162, line: 307, column: 11)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !162, line: 303, column: 5)
!1007 = !DILocation(line: 307, column: 27, scope: !1005)
!1008 = !DILocation(line: 308, column: 11, scope: !1005)
!1009 = !DILocation(line: 308, column: 28, scope: !1005)
!1010 = !DILocation(line: 308, column: 25, scope: !1005)
!1011 = !DILocation(line: 309, column: 15, scope: !1005)
!1012 = !DILocation(line: 309, column: 33, scope: !1005)
!1013 = !DILocation(line: 310, column: 19, scope: !1005)
!1014 = !DILocation(line: 311, column: 22, scope: !1005)
!1015 = !DILocation(line: 311, column: 56, scope: !1005)
!1016 = !DILocation(line: 307, column: 11, scope: !1006)
!1017 = !DILocation(line: 316, column: 21, scope: !1006)
!1018 = !DILocation(line: 317, column: 23, scope: !1006)
!1019 = !DILocation(line: 318, column: 5, scope: !1006)
!1020 = !DILocation(line: 327, column: 3, scope: !167)
!1021 = !DILocation(line: 331, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !167, file: !162, line: 331, column: 7)
!1023 = !DILocation(line: 331, column: 7, scope: !167)
!1024 = !DILocation(line: 332, column: 5, scope: !1022)
!1025 = !DILocation(line: 338, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !162, line: 334, column: 5)
!1027 = !DILocation(line: 346, column: 3, scope: !167)
!1028 = !DILocation(line: 350, column: 3, scope: !167)
!1029 = !DILocation(line: 356, column: 1, scope: !167)
!1030 = distinct !DISubprogram(name: "error_at_line", scope: !162, file: !162, line: 359, type: !1031, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1033)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !39, !39, !44, !7, !44, null}
!1033 = !{!1034, !1035, !1036, !1037, !1038, !1039}
!1034 = !DILocalVariable(name: "status", arg: 1, scope: !1030, file: !162, line: 359, type: !39)
!1035 = !DILocalVariable(name: "errnum", arg: 2, scope: !1030, file: !162, line: 359, type: !39)
!1036 = !DILocalVariable(name: "file_name", arg: 3, scope: !1030, file: !162, line: 359, type: !44)
!1037 = !DILocalVariable(name: "line_number", arg: 4, scope: !1030, file: !162, line: 360, type: !7)
!1038 = !DILocalVariable(name: "message", arg: 5, scope: !1030, file: !162, line: 360, type: !44)
!1039 = !DILocalVariable(name: "ap", scope: !1030, file: !162, line: 362, type: !170)
!1040 = !DILocation(line: 0, scope: !1030)
!1041 = !DILocation(line: 362, column: 3, scope: !1030)
!1042 = !DILocation(line: 362, column: 11, scope: !1030)
!1043 = !DILocation(line: 363, column: 3, scope: !1030)
!1044 = !DILocation(line: 364, column: 3, scope: !1030)
!1045 = !DILocation(line: 366, column: 3, scope: !1030)
!1046 = !DILocation(line: 367, column: 1, scope: !1030)
!1047 = distinct !DISubprogram(name: "getprogname", scope: !350, file: !350, line: 54, type: !1048, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !452)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!44}
!1050 = !DILocation(line: 58, column: 10, scope: !1047)
!1051 = !DILocation(line: 58, column: 3, scope: !1047)
!1052 = distinct !DISubprogram(name: "mode_compile", scope: !352, file: !352, line: 134, type: !1053, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1063)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!1055, !44}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !352, line: 98, size: 128, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1061, !1062}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1056, file: !352, line: 100, baseType: !37, size: 8)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1056, file: !352, line: 101, baseType: !37, size: 8, offset: 8)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1056, file: !352, line: 102, baseType: !673, size: 32, offset: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1056, file: !352, line: 103, baseType: !673, size: 32, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1056, file: !352, line: 104, baseType: !673, size: 32, offset: 96)
!1063 = !{!1064, !1065, !1068, !1069, !1070, !1071, !1072, !1074, !1076, !1077, !1078, !1082, !1084, !1085, !1086, !1087, !1090, !1091, !1092, !1093}
!1064 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1052, file: !352, line: 134, type: !44)
!1065 = !DILocalVariable(name: "p", scope: !1066, file: !352, line: 138, type: !44)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !352, line: 137, column: 5)
!1067 = distinct !DILexicalBlock(scope: !1052, file: !352, line: 136, column: 7)
!1068 = !DILocalVariable(name: "octal_mode", scope: !1066, file: !352, line: 139, type: !7)
!1069 = !DILocalVariable(name: "mode", scope: !1066, file: !352, line: 140, type: !673)
!1070 = !DILocalVariable(name: "mentioned", scope: !1066, file: !352, line: 141, type: !673)
!1071 = !DILocalVariable(name: "mc", scope: !1052, file: !352, line: 163, type: !1055)
!1072 = !DILocalVariable(name: "needed", scope: !1073, file: !352, line: 167, type: !41)
!1073 = distinct !DILexicalBlock(scope: !1052, file: !352, line: 166, column: 3)
!1074 = !DILocalVariable(name: "p", scope: !1075, file: !352, line: 168, type: !44)
!1075 = distinct !DILexicalBlock(scope: !1073, file: !352, line: 168, column: 5)
!1076 = !DILocalVariable(name: "used", scope: !1052, file: !352, line: 175, type: !41)
!1077 = !DILocalVariable(name: "p", scope: !1052, file: !352, line: 176, type: !44)
!1078 = !DILocalVariable(name: "affected", scope: !1079, file: !352, line: 180, type: !673)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !352, line: 178, column: 5)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !352, line: 177, column: 3)
!1081 = distinct !DILexicalBlock(scope: !1052, file: !352, line: 177, column: 3)
!1082 = !DILocalVariable(name: "op", scope: !1083, file: !352, line: 207, type: !37)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !352, line: 206, column: 9)
!1084 = !DILocalVariable(name: "value", scope: !1083, file: !352, line: 208, type: !673)
!1085 = !DILocalVariable(name: "mentioned", scope: !1083, file: !352, line: 209, type: !673)
!1086 = !DILocalVariable(name: "flag", scope: !1083, file: !352, line: 210, type: !37)
!1087 = !DILocalVariable(name: "octal_mode", scope: !1088, file: !352, line: 217, type: !7)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !352, line: 216, column: 15)
!1089 = distinct !DILexicalBlock(scope: !1083, file: !352, line: 213, column: 13)
!1090 = !DILocalVariable(name: "change", scope: !1083, file: !352, line: 287, type: !1055)
!1091 = !DILabel(scope: !1079, name: "no_more_affected", file: !352, line: 203)
!1092 = !DILabel(scope: !1089, name: "no_more_values", file: !352, line: 284)
!1093 = !DILabel(scope: !1052, name: "invalid", file: !352, line: 308)
!1094 = !DILocation(line: 0, scope: !1052)
!1095 = !DILocation(line: 136, column: 14, scope: !1067)
!1096 = !DILocation(line: 136, column: 27, scope: !1067)
!1097 = !DILocation(line: 146, column: 41, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1066, file: !352, line: 145, column: 9)
!1099 = !DILocation(line: 0, scope: !1066)
!1100 = !DILocation(line: 146, column: 26, scope: !1098)
!1101 = !DILocation(line: 146, column: 43, scope: !1098)
!1102 = !DILocation(line: 146, column: 39, scope: !1098)
!1103 = !DILocation(line: 146, column: 46, scope: !1098)
!1104 = !DILocation(line: 147, column: 20, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1098, file: !352, line: 147, column: 15)
!1106 = !DILocation(line: 147, column: 15, scope: !1098)
!1107 = !DILocation(line: 150, column: 21, scope: !1066)
!1108 = !DILocation(line: 150, column: 24, scope: !1066)
!1109 = distinct !{!1109, !1110, !1111, !502}
!1110 = !DILocation(line: 144, column: 7, scope: !1066)
!1111 = !DILocation(line: 150, column: 35, scope: !1066)
!1112 = !DILocation(line: 152, column: 11, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1066, file: !352, line: 152, column: 11)
!1114 = !DILocation(line: 152, column: 11, scope: !1066)
!1115 = !DILocation(line: 156, column: 22, scope: !1066)
!1116 = !DILocation(line: 156, column: 36, scope: !1066)
!1117 = !DILocation(line: 156, column: 20, scope: !1066)
!1118 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1119, file: !352, line: 112, type: !673)
!1119 = distinct !DISubprogram(name: "make_node_op_equals", scope: !352, file: !352, line: 112, type: !1120, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1122)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!1055, !673, !673}
!1122 = !{!1118, !1123, !1124}
!1123 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1119, file: !352, line: 112, type: !673)
!1124 = !DILocalVariable(name: "p", scope: !1119, file: !352, line: 114, type: !1055)
!1125 = !DILocation(line: 0, scope: !1119, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 159, column: 14, scope: !1066)
!1127 = !DILocation(line: 114, column: 27, scope: !1119, inlinedAt: !1126)
!1128 = !DILocation(line: 115, column: 9, scope: !1119, inlinedAt: !1126)
!1129 = !{!1130, !445, i64 0}
!1130 = !{!"mode_change", !445, i64 0, !445, i64 1, !536, i64 4, !536, i64 8, !536, i64 12}
!1131 = !DILocation(line: 116, column: 6, scope: !1119, inlinedAt: !1126)
!1132 = !DILocation(line: 116, column: 11, scope: !1119, inlinedAt: !1126)
!1133 = !{!1130, !445, i64 1}
!1134 = !DILocation(line: 117, column: 6, scope: !1119, inlinedAt: !1126)
!1135 = !DILocation(line: 117, column: 15, scope: !1119, inlinedAt: !1126)
!1136 = !{!1130, !536, i64 4}
!1137 = !DILocation(line: 118, column: 6, scope: !1119, inlinedAt: !1126)
!1138 = !DILocation(line: 118, column: 12, scope: !1119, inlinedAt: !1126)
!1139 = !{!1130, !536, i64 8}
!1140 = !DILocation(line: 119, column: 6, scope: !1119, inlinedAt: !1126)
!1141 = !DILocation(line: 119, column: 16, scope: !1119, inlinedAt: !1126)
!1142 = !{!1130, !536, i64 12}
!1143 = !DILocation(line: 120, column: 8, scope: !1119, inlinedAt: !1126)
!1144 = !DILocation(line: 120, column: 13, scope: !1119, inlinedAt: !1126)
!1145 = !DILocation(line: 159, column: 7, scope: !1066)
!1146 = !DILocation(line: 168, column: 39, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1075, file: !352, line: 168, column: 5)
!1148 = !DILocation(line: 0, scope: !1073)
!1149 = !DILocation(line: 0, scope: !1075)
!1150 = !DILocation(line: 168, column: 5, scope: !1075)
!1151 = !DILocation(line: 170, column: 10, scope: !1073)
!1152 = !DILocation(line: 177, column: 8, scope: !1081)
!1153 = !DILocation(line: 169, column: 41, scope: !1147)
!1154 = !DILocation(line: 169, column: 14, scope: !1147)
!1155 = !DILocation(line: 168, column: 44, scope: !1147)
!1156 = !DILocation(line: 168, column: 5, scope: !1147)
!1157 = distinct !{!1157, !1150, !1158, !502}
!1158 = !DILocation(line: 169, column: 53, scope: !1075)
!1159 = !DILocation(line: 175, column: 10, scope: !1052)
!1160 = !DILocation(line: 0, scope: !1081)
!1161 = !DILocation(line: 0, scope: !1083)
!1162 = !DILocation(line: 0, scope: !1079)
!1163 = !DILocation(line: 183, column: 7, scope: !1079)
!1164 = !DILocation(line: 184, column: 17, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !352, line: 183, column: 7)
!1166 = distinct !DILexicalBlock(scope: !1079, file: !352, line: 183, column: 7)
!1167 = !DILocation(line: 184, column: 9, scope: !1165)
!1168 = !DILocation(line: 212, column: 11, scope: !1083)
!1169 = !DILocation(line: 193, column: 13, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1165, file: !352, line: 185, column: 11)
!1171 = !DILocation(line: 196, column: 13, scope: !1170)
!1172 = !DILocation(line: 199, column: 13, scope: !1170)
!1173 = !DILocation(line: 0, scope: !1170)
!1174 = !DILocation(line: 183, column: 16, scope: !1165)
!1175 = !DILocation(line: 183, column: 7, scope: !1165)
!1176 = distinct !{!1176, !1177, !1178}
!1177 = !DILocation(line: 183, column: 7, scope: !1166)
!1178 = !DILocation(line: 202, column: 11, scope: !1166)
!1179 = !DILocation(line: 207, column: 21, scope: !1083)
!1180 = !DILocation(line: 180, column: 14, scope: !1079)
!1181 = !DILocation(line: 207, column: 23, scope: !1083)
!1182 = !DILocation(line: 212, column: 19, scope: !1083)
!1183 = !DILocation(line: 219, column: 17, scope: !1088)
!1184 = !DILocation(line: 221, column: 51, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1088, file: !352, line: 220, column: 19)
!1186 = !DILocation(line: 0, scope: !1088)
!1187 = !DILocation(line: 221, column: 36, scope: !1185)
!1188 = !DILocation(line: 221, column: 53, scope: !1185)
!1189 = !DILocation(line: 221, column: 49, scope: !1185)
!1190 = !DILocation(line: 221, column: 56, scope: !1185)
!1191 = !DILocation(line: 222, column: 30, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1185, file: !352, line: 222, column: 25)
!1193 = !DILocation(line: 222, column: 25, scope: !1185)
!1194 = !DILocation(line: 225, column: 31, scope: !1088)
!1195 = !DILocation(line: 225, column: 34, scope: !1088)
!1196 = distinct !{!1196, !1183, !1197, !502}
!1197 = !DILocation(line: 225, column: 45, scope: !1088)
!1198 = !DILocation(line: 227, column: 21, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1088, file: !352, line: 227, column: 21)
!1200 = !DILocation(line: 227, column: 30, scope: !1199)
!1201 = !DILocation(line: 227, column: 37, scope: !1199)
!1202 = !DILocation(line: 239, column: 16, scope: !1089)
!1203 = !DILocation(line: 240, column: 15, scope: !1089)
!1204 = !DILocation(line: 245, column: 16, scope: !1089)
!1205 = !DILocation(line: 246, column: 15, scope: !1089)
!1206 = !DILocation(line: 251, column: 16, scope: !1089)
!1207 = !DILocation(line: 252, column: 15, scope: !1089)
!1208 = !DILocation(line: 259, column: 25, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !352, line: 258, column: 15)
!1210 = distinct !DILexicalBlock(scope: !1089, file: !352, line: 258, column: 15)
!1211 = !DILocation(line: 0, scope: !1089)
!1212 = !DILocation(line: 256, column: 20, scope: !1089)
!1213 = !DILocation(line: 259, column: 17, scope: !1209)
!1214 = !DILocation(line: 262, column: 27, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1209, file: !352, line: 260, column: 19)
!1216 = !DILocation(line: 263, column: 21, scope: !1215)
!1217 = !DILocation(line: 265, column: 27, scope: !1215)
!1218 = !DILocation(line: 266, column: 21, scope: !1215)
!1219 = !DILocation(line: 268, column: 27, scope: !1215)
!1220 = !DILocation(line: 269, column: 21, scope: !1215)
!1221 = !DILocation(line: 275, column: 27, scope: !1215)
!1222 = !DILocation(line: 276, column: 21, scope: !1215)
!1223 = !DILocation(line: 279, column: 27, scope: !1215)
!1224 = !DILocation(line: 280, column: 21, scope: !1215)
!1225 = !DILocation(line: 258, column: 24, scope: !1209)
!1226 = !DILocation(line: 258, column: 15, scope: !1209)
!1227 = distinct !{!1227, !1228, !1229}
!1228 = !DILocation(line: 258, column: 15, scope: !1210)
!1229 = !DILocation(line: 283, column: 19, scope: !1210)
!1230 = !DILocation(line: 209, column: 18, scope: !1083)
!1231 = !DILocation(line: 288, column: 28, scope: !1083)
!1232 = !DILocation(line: 289, column: 19, scope: !1083)
!1233 = !DILocation(line: 289, column: 22, scope: !1083)
!1234 = !DILocation(line: 290, column: 19, scope: !1083)
!1235 = !DILocation(line: 290, column: 24, scope: !1083)
!1236 = !DILocation(line: 291, column: 19, scope: !1083)
!1237 = !DILocation(line: 291, column: 28, scope: !1083)
!1238 = !DILocation(line: 292, column: 19, scope: !1083)
!1239 = !DILocation(line: 292, column: 25, scope: !1083)
!1240 = !DILocation(line: 294, column: 14, scope: !1083)
!1241 = !DILocation(line: 293, column: 19, scope: !1083)
!1242 = !DILocation(line: 293, column: 29, scope: !1083)
!1243 = !DILocation(line: 296, column: 14, scope: !1079)
!1244 = !DILocation(line: 296, column: 24, scope: !1079)
!1245 = !DILocation(line: 177, column: 28, scope: !1080)
!1246 = !DILocation(line: 177, column: 3, scope: !1080)
!1247 = distinct !{!1247, !1248, !1249}
!1248 = !DILocation(line: 177, column: 3, scope: !1081)
!1249 = !DILocation(line: 300, column: 5, scope: !1081)
!1250 = !DILocation(line: 304, column: 16, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !352, line: 303, column: 5)
!1252 = distinct !DILexicalBlock(scope: !1052, file: !352, line: 302, column: 7)
!1253 = !DILocation(line: 304, column: 21, scope: !1251)
!1254 = !DILocation(line: 305, column: 7, scope: !1251)
!1255 = !DILocation(line: 308, column: 1, scope: !1052)
!1256 = !DILocation(line: 309, column: 3, scope: !1052)
!1257 = !DILocation(line: 310, column: 3, scope: !1052)
!1258 = !DILocation(line: 311, column: 1, scope: !1052)
!1259 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !352, file: !352, line: 317, type: !1053, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1260)
!1260 = !{!1261, !1262}
!1261 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1259, file: !352, line: 317, type: !44)
!1262 = !DILocalVariable(name: "ref_stats", scope: !1259, file: !352, line: 319, type: !1263)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1264, line: 44, size: 1024, elements: !1265)
!1264 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1265 = !{!1266, !1268, !1270, !1271, !1273, !1275, !1277, !1278, !1279, !1280, !1282, !1283, !1285, !1293, !1294, !1295}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1263, file: !1264, line: 46, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !101, line: 145, baseType: !43)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1263, file: !1264, line: 47, baseType: !1269, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !101, line: 148, baseType: !43)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1263, file: !1264, line: 48, baseType: !675, size: 32, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1263, file: !1264, line: 49, baseType: !1272, size: 32, offset: 160)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !101, line: 151, baseType: !7)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1263, file: !1264, line: 50, baseType: !1274, size: 32, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !101, line: 146, baseType: !7)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1263, file: !1264, line: 51, baseType: !1276, size: 32, offset: 224)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !101, line: 147, baseType: !7)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1263, file: !1264, line: 52, baseType: !1267, size: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1263, file: !1264, line: 53, baseType: !1267, size: 64, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1263, file: !1264, line: 54, baseType: !100, size: 64, offset: 384)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1263, file: !1264, line: 55, baseType: !1281, size: 32, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !101, line: 175, baseType: !39)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1263, file: !1264, line: 56, baseType: !39, size: 32, offset: 480)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1263, file: !1264, line: 57, baseType: !1284, size: 64, offset: 512)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !101, line: 180, baseType: !102)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1263, file: !1264, line: 65, baseType: !1286, size: 128, offset: 576)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1287, line: 11, size: 128, elements: !1288)
!1287 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1288 = !{!1289, !1291}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1286, file: !1287, line: 16, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !101, line: 160, baseType: !102)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1286, file: !1287, line: 21, baseType: !1292, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !101, line: 197, baseType: !102)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1263, file: !1264, line: 66, baseType: !1286, size: 128, offset: 704)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1263, file: !1264, line: 67, baseType: !1286, size: 128, offset: 832)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1263, file: !1264, line: 79, baseType: !1296, size: 64, offset: 960)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !240)
!1297 = !DILocation(line: 0, scope: !1259)
!1298 = !DILocation(line: 319, column: 3, scope: !1259)
!1299 = !DILocation(line: 319, column: 15, scope: !1259)
!1300 = !DILocation(line: 321, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1259, file: !352, line: 321, column: 7)
!1302 = !DILocation(line: 321, column: 35, scope: !1301)
!1303 = !DILocation(line: 321, column: 7, scope: !1259)
!1304 = !DILocation(line: 323, column: 41, scope: !1259)
!1305 = !{!1306, !536, i64 16}
!1306 = !{!"stat", !964, i64 0, !964, i64 8, !536, i64 16, !536, i64 20, !536, i64 24, !536, i64 28, !964, i64 32, !964, i64 40, !964, i64 48, !536, i64 56, !536, i64 60, !964, i64 64, !1307, i64 72, !1307, i64 88, !1307, i64 104, !445, i64 120}
!1307 = !{!"timespec", !964, i64 0, !964, i64 8}
!1308 = !DILocation(line: 0, scope: !1119, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 323, column: 10, scope: !1259)
!1310 = !DILocation(line: 114, column: 27, scope: !1119, inlinedAt: !1309)
!1311 = !DILocation(line: 115, column: 9, scope: !1119, inlinedAt: !1309)
!1312 = !DILocation(line: 116, column: 6, scope: !1119, inlinedAt: !1309)
!1313 = !DILocation(line: 116, column: 11, scope: !1119, inlinedAt: !1309)
!1314 = !DILocation(line: 117, column: 6, scope: !1119, inlinedAt: !1309)
!1315 = !DILocation(line: 117, column: 15, scope: !1119, inlinedAt: !1309)
!1316 = !DILocation(line: 118, column: 6, scope: !1119, inlinedAt: !1309)
!1317 = !DILocation(line: 118, column: 12, scope: !1119, inlinedAt: !1309)
!1318 = !DILocation(line: 119, column: 6, scope: !1119, inlinedAt: !1309)
!1319 = !DILocation(line: 119, column: 16, scope: !1119, inlinedAt: !1309)
!1320 = !DILocation(line: 120, column: 8, scope: !1119, inlinedAt: !1309)
!1321 = !DILocation(line: 120, column: 13, scope: !1119, inlinedAt: !1309)
!1322 = !DILocation(line: 323, column: 3, scope: !1259)
!1323 = !DILocation(line: 324, column: 1, scope: !1259)
!1324 = !DISubprogram(name: "stat", scope: !773, file: !773, line: 205, type: !1325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!39, !531, !1327}
!1327 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1329 = distinct !DISubprogram(name: "mode_adjust", scope: !352, file: !352, line: 340, type: !1330, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1335)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!673, !673, !61, !673, !1332, !1334}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1347, !1348, !1349}
!1336 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1329, file: !352, line: 340, type: !673)
!1337 = !DILocalVariable(name: "dir", arg: 2, scope: !1329, file: !352, line: 340, type: !61)
!1338 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1329, file: !352, line: 340, type: !673)
!1339 = !DILocalVariable(name: "changes", arg: 4, scope: !1329, file: !352, line: 341, type: !1332)
!1340 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1329, file: !352, line: 341, type: !1334)
!1341 = !DILocalVariable(name: "newmode", scope: !1329, file: !352, line: 344, type: !673)
!1342 = !DILocalVariable(name: "mode_bits", scope: !1329, file: !352, line: 347, type: !673)
!1343 = !DILocalVariable(name: "affected", scope: !1344, file: !352, line: 351, type: !673)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !352, line: 350, column: 5)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !352, line: 349, column: 3)
!1346 = distinct !DILexicalBlock(scope: !1329, file: !352, line: 349, column: 3)
!1347 = !DILocalVariable(name: "omit_change", scope: !1344, file: !352, line: 352, type: !673)
!1348 = !DILocalVariable(name: "value", scope: !1344, file: !352, line: 354, type: !673)
!1349 = !DILocalVariable(name: "preserved", scope: !1350, file: !352, line: 394, type: !673)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !352, line: 393, column: 11)
!1351 = distinct !DILexicalBlock(scope: !1344, file: !352, line: 388, column: 9)
!1352 = !DILocation(line: 0, scope: !1329)
!1353 = !DILocation(line: 344, column: 28, scope: !1329)
!1354 = !DILocation(line: 349, column: 19, scope: !1345)
!1355 = !DILocation(line: 349, column: 24, scope: !1345)
!1356 = !DILocation(line: 349, column: 3, scope: !1346)
!1357 = !DILocation(line: 351, column: 34, scope: !1344)
!1358 = !DILocation(line: 0, scope: !1344)
!1359 = !DILocation(line: 353, column: 52, scope: !1344)
!1360 = !DILocation(line: 353, column: 41, scope: !1344)
!1361 = !DILocation(line: 353, column: 39, scope: !1344)
!1362 = !DILocation(line: 354, column: 31, scope: !1344)
!1363 = !DILocation(line: 356, column: 7, scope: !1344)
!1364 = !DILocation(line: 363, column: 17, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1344, file: !352, line: 357, column: 9)
!1366 = !DILocation(line: 366, column: 28, scope: !1365)
!1367 = !DILocation(line: 366, column: 22, scope: !1365)
!1368 = !DILocation(line: 368, column: 30, scope: !1365)
!1369 = !DILocation(line: 368, column: 24, scope: !1365)
!1370 = !DILocation(line: 370, column: 30, scope: !1365)
!1371 = !DILocation(line: 370, column: 24, scope: !1365)
!1372 = !DILocation(line: 368, column: 21, scope: !1365)
!1373 = !DILocation(line: 370, column: 21, scope: !1365)
!1374 = !DILocation(line: 366, column: 17, scope: !1365)
!1375 = !DILocation(line: 372, column: 11, scope: !1365)
!1376 = !DILocation(line: 377, column: 24, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1365, file: !352, line: 377, column: 15)
!1378 = !DILocation(line: 377, column: 57, scope: !1377)
!1379 = !DILocation(line: 377, column: 15, scope: !1365)
!1380 = !DILocation(line: 385, column: 17, scope: !1344)
!1381 = !DILocation(line: 385, column: 55, scope: !1344)
!1382 = !DILocation(line: 385, column: 53, scope: !1344)
!1383 = !DILocation(line: 385, column: 13, scope: !1344)
!1384 = !DILocation(line: 387, column: 24, scope: !1344)
!1385 = !DILocation(line: 387, column: 7, scope: !1344)
!1386 = !DILocation(line: 394, column: 33, scope: !1350)
!1387 = !DILocation(line: 394, column: 59, scope: !1350)
!1388 = !DILocation(line: 0, scope: !1350)
!1389 = !DILocation(line: 395, column: 42, scope: !1350)
!1390 = !DILocation(line: 395, column: 23, scope: !1350)
!1391 = !DILocation(line: 396, column: 32, scope: !1350)
!1392 = !DILocation(line: 396, column: 45, scope: !1350)
!1393 = !DILocation(line: 401, column: 21, scope: !1351)
!1394 = !DILocation(line: 402, column: 19, scope: !1351)
!1395 = !DILocation(line: 403, column: 11, scope: !1351)
!1396 = !DILocation(line: 406, column: 21, scope: !1351)
!1397 = !DILocation(line: 407, column: 22, scope: !1351)
!1398 = !DILocation(line: 407, column: 19, scope: !1351)
!1399 = !DILocation(line: 408, column: 11, scope: !1351)
!1400 = !DILocation(line: 349, column: 45, scope: !1345)
!1401 = distinct !{!1401, !1356, !1402, !502}
!1402 = !DILocation(line: 410, column: 5, scope: !1346)
!1403 = !DILocation(line: 347, column: 10, scope: !1329)
!1404 = !DILocation(line: 344, column: 10, scope: !1329)
!1405 = !DILocation(line: 412, column: 7, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1329, file: !352, line: 412, column: 7)
!1407 = !DILocation(line: 412, column: 7, scope: !1329)
!1408 = !DILocation(line: 413, column: 17, scope: !1406)
!1409 = !DILocation(line: 413, column: 5, scope: !1406)
!1410 = !DILocation(line: 414, column: 3, scope: !1329)
!1411 = distinct !DISubprogram(name: "set_program_name", scope: !203, file: !203, line: 37, type: !461, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !1412)
!1412 = !{!1413, !1414, !1415}
!1413 = !DILocalVariable(name: "argv0", arg: 1, scope: !1411, file: !203, line: 37, type: !44)
!1414 = !DILocalVariable(name: "slash", scope: !1411, file: !203, line: 44, type: !44)
!1415 = !DILocalVariable(name: "base", scope: !1411, file: !203, line: 45, type: !44)
!1416 = !DILocation(line: 0, scope: !1411)
!1417 = !DILocation(line: 44, column: 23, scope: !1411)
!1418 = !DILocation(line: 45, column: 22, scope: !1411)
!1419 = !DILocation(line: 46, column: 17, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1411, file: !203, line: 46, column: 7)
!1421 = !DILocation(line: 46, column: 9, scope: !1420)
!1422 = !DILocation(line: 46, column: 25, scope: !1420)
!1423 = !DILocation(line: 46, column: 40, scope: !1420)
!1424 = !DILocalVariable(name: "__s1", arg: 1, scope: !1425, file: !486, line: 974, type: !653)
!1425 = distinct !DISubprogram(name: "memeq", scope: !486, file: !486, line: 974, type: !1426, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!61, !653, !653, !41}
!1428 = !{!1424, !1429, !1430}
!1429 = !DILocalVariable(name: "__s2", arg: 2, scope: !1425, file: !486, line: 974, type: !653)
!1430 = !DILocalVariable(name: "__n", arg: 3, scope: !1425, file: !486, line: 974, type: !41)
!1431 = !DILocation(line: 0, scope: !1425, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 46, column: 28, scope: !1420)
!1433 = !DILocation(line: 976, column: 11, scope: !1425, inlinedAt: !1432)
!1434 = !DILocation(line: 976, column: 10, scope: !1425, inlinedAt: !1432)
!1435 = !DILocation(line: 46, column: 7, scope: !1411)
!1436 = !DILocation(line: 49, column: 11, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !203, line: 49, column: 11)
!1438 = distinct !DILexicalBlock(scope: !1420, file: !203, line: 47, column: 5)
!1439 = !DILocation(line: 49, column: 36, scope: !1437)
!1440 = !DILocation(line: 49, column: 11, scope: !1438)
!1441 = !DILocation(line: 65, column: 16, scope: !1411)
!1442 = !DILocation(line: 71, column: 27, scope: !1411)
!1443 = !DILocation(line: 74, column: 33, scope: !1411)
!1444 = !DILocation(line: 76, column: 1, scope: !1411)
!1445 = !DILocation(line: 0, scope: !208)
!1446 = !DILocation(line: 40, column: 29, scope: !208)
!1447 = !DILocation(line: 41, column: 19, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !208, file: !209, line: 41, column: 7)
!1449 = !DILocation(line: 41, column: 7, scope: !208)
!1450 = !DILocation(line: 47, column: 3, scope: !208)
!1451 = !DILocation(line: 48, column: 3, scope: !208)
!1452 = !DILocation(line: 48, column: 13, scope: !208)
!1453 = !DILocalVariable(name: "ps", arg: 1, scope: !1454, file: !1455, line: 1135, type: !1458)
!1454 = distinct !DISubprogram(name: "mbszero", scope: !1455, file: !1455, line: 1135, type: !1456, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1459)
!1455 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!1459 = !{!1453}
!1460 = !DILocation(line: 0, scope: !1454, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 48, column: 18, scope: !208)
!1462 = !DILocalVariable(name: "__dest", arg: 1, scope: !1463, file: !1464, line: 57, type: !38)
!1463 = distinct !DISubprogram(name: "memset", scope: !1464, file: !1464, line: 57, type: !1465, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1467)
!1464 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!38, !38, !39, !41}
!1467 = !{!1462, !1468, !1469}
!1468 = !DILocalVariable(name: "__ch", arg: 2, scope: !1463, file: !1464, line: 57, type: !39)
!1469 = !DILocalVariable(name: "__len", arg: 3, scope: !1463, file: !1464, line: 57, type: !41)
!1470 = !DILocation(line: 0, scope: !1463, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 1137, column: 3, scope: !1454, inlinedAt: !1461)
!1472 = !DILocation(line: 59, column: 10, scope: !1463, inlinedAt: !1471)
!1473 = !DILocation(line: 49, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !208, file: !209, line: 49, column: 7)
!1475 = !DILocation(line: 49, column: 39, scope: !1474)
!1476 = !DILocation(line: 49, column: 44, scope: !1474)
!1477 = !DILocation(line: 54, column: 1, scope: !208)
!1478 = !DISubprogram(name: "mbrtoc32", scope: !220, file: !220, line: 57, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!41, !1481, !531, !41, !1483}
!1481 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1458)
!1484 = distinct !DISubprogram(name: "clone_quoting_options", scope: !245, file: !245, line: 113, type: !1485, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1488)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!1487, !1487}
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1488 = !{!1489, !1490, !1491}
!1489 = !DILocalVariable(name: "o", arg: 1, scope: !1484, file: !245, line: 113, type: !1487)
!1490 = !DILocalVariable(name: "saved_errno", scope: !1484, file: !245, line: 115, type: !39)
!1491 = !DILocalVariable(name: "p", scope: !1484, file: !245, line: 116, type: !1487)
!1492 = !DILocation(line: 0, scope: !1484)
!1493 = !DILocation(line: 115, column: 21, scope: !1484)
!1494 = !DILocation(line: 116, column: 40, scope: !1484)
!1495 = !DILocation(line: 116, column: 31, scope: !1484)
!1496 = !DILocation(line: 118, column: 9, scope: !1484)
!1497 = !DILocation(line: 119, column: 3, scope: !1484)
!1498 = distinct !DISubprogram(name: "get_quoting_style", scope: !245, file: !245, line: 124, type: !1499, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1503)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!5, !1501}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!1503 = !{!1504}
!1504 = !DILocalVariable(name: "o", arg: 1, scope: !1498, file: !245, line: 124, type: !1501)
!1505 = !DILocation(line: 0, scope: !1498)
!1506 = !DILocation(line: 126, column: 11, scope: !1498)
!1507 = !DILocation(line: 126, column: 46, scope: !1498)
!1508 = !{!1509, !445, i64 0}
!1509 = !{!"quoting_options", !445, i64 0, !536, i64 4, !445, i64 8, !444, i64 40, !444, i64 48}
!1510 = !DILocation(line: 126, column: 3, scope: !1498)
!1511 = distinct !DISubprogram(name: "set_quoting_style", scope: !245, file: !245, line: 132, type: !1512, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1514)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !1487, !5}
!1514 = !{!1515, !1516}
!1515 = !DILocalVariable(name: "o", arg: 1, scope: !1511, file: !245, line: 132, type: !1487)
!1516 = !DILocalVariable(name: "s", arg: 2, scope: !1511, file: !245, line: 132, type: !5)
!1517 = !DILocation(line: 0, scope: !1511)
!1518 = !DILocation(line: 134, column: 4, scope: !1511)
!1519 = !DILocation(line: 134, column: 39, scope: !1511)
!1520 = !DILocation(line: 134, column: 45, scope: !1511)
!1521 = !DILocation(line: 135, column: 1, scope: !1511)
!1522 = distinct !DISubprogram(name: "set_char_quoting", scope: !245, file: !245, line: 143, type: !1523, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1525)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!39, !1487, !37, !39}
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1532, !1533}
!1526 = !DILocalVariable(name: "o", arg: 1, scope: !1522, file: !245, line: 143, type: !1487)
!1527 = !DILocalVariable(name: "c", arg: 2, scope: !1522, file: !245, line: 143, type: !37)
!1528 = !DILocalVariable(name: "i", arg: 3, scope: !1522, file: !245, line: 143, type: !39)
!1529 = !DILocalVariable(name: "uc", scope: !1522, file: !245, line: 145, type: !46)
!1530 = !DILocalVariable(name: "p", scope: !1522, file: !245, line: 146, type: !1531)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1532 = !DILocalVariable(name: "shift", scope: !1522, file: !245, line: 148, type: !39)
!1533 = !DILocalVariable(name: "r", scope: !1522, file: !245, line: 149, type: !7)
!1534 = !DILocation(line: 0, scope: !1522)
!1535 = !DILocation(line: 147, column: 6, scope: !1522)
!1536 = !DILocation(line: 147, column: 62, scope: !1522)
!1537 = !DILocation(line: 147, column: 57, scope: !1522)
!1538 = !DILocation(line: 148, column: 15, scope: !1522)
!1539 = !DILocation(line: 149, column: 21, scope: !1522)
!1540 = !DILocation(line: 149, column: 24, scope: !1522)
!1541 = !DILocation(line: 149, column: 34, scope: !1522)
!1542 = !DILocation(line: 150, column: 13, scope: !1522)
!1543 = !DILocation(line: 150, column: 19, scope: !1522)
!1544 = !DILocation(line: 150, column: 24, scope: !1522)
!1545 = !DILocation(line: 150, column: 6, scope: !1522)
!1546 = !DILocation(line: 151, column: 3, scope: !1522)
!1547 = distinct !DISubprogram(name: "set_quoting_flags", scope: !245, file: !245, line: 159, type: !1548, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1550)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!39, !1487, !39}
!1550 = !{!1551, !1552, !1553}
!1551 = !DILocalVariable(name: "o", arg: 1, scope: !1547, file: !245, line: 159, type: !1487)
!1552 = !DILocalVariable(name: "i", arg: 2, scope: !1547, file: !245, line: 159, type: !39)
!1553 = !DILocalVariable(name: "r", scope: !1547, file: !245, line: 163, type: !39)
!1554 = !DILocation(line: 0, scope: !1547)
!1555 = !DILocation(line: 161, column: 8, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1547, file: !245, line: 161, column: 7)
!1557 = !DILocation(line: 161, column: 7, scope: !1547)
!1558 = !DILocation(line: 163, column: 14, scope: !1547)
!1559 = !{!1509, !536, i64 4}
!1560 = !DILocation(line: 164, column: 12, scope: !1547)
!1561 = !DILocation(line: 165, column: 3, scope: !1547)
!1562 = distinct !DISubprogram(name: "set_custom_quoting", scope: !245, file: !245, line: 169, type: !1563, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !1487, !44, !44}
!1565 = !{!1566, !1567, !1568}
!1566 = !DILocalVariable(name: "o", arg: 1, scope: !1562, file: !245, line: 169, type: !1487)
!1567 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1562, file: !245, line: 170, type: !44)
!1568 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1562, file: !245, line: 170, type: !44)
!1569 = !DILocation(line: 0, scope: !1562)
!1570 = !DILocation(line: 172, column: 8, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1562, file: !245, line: 172, column: 7)
!1572 = !DILocation(line: 172, column: 7, scope: !1562)
!1573 = !DILocation(line: 174, column: 6, scope: !1562)
!1574 = !DILocation(line: 174, column: 12, scope: !1562)
!1575 = !DILocation(line: 175, column: 8, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1562, file: !245, line: 175, column: 7)
!1577 = !DILocation(line: 175, column: 19, scope: !1576)
!1578 = !DILocation(line: 176, column: 5, scope: !1576)
!1579 = !DILocation(line: 177, column: 6, scope: !1562)
!1580 = !DILocation(line: 177, column: 17, scope: !1562)
!1581 = !{!1509, !444, i64 40}
!1582 = !DILocation(line: 178, column: 6, scope: !1562)
!1583 = !DILocation(line: 178, column: 18, scope: !1562)
!1584 = !{!1509, !444, i64 48}
!1585 = !DILocation(line: 179, column: 1, scope: !1562)
!1586 = distinct !DISubprogram(name: "quotearg_buffer", scope: !245, file: !245, line: 774, type: !1587, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1589)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!41, !36, !41, !44, !41, !1501}
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597}
!1590 = !DILocalVariable(name: "buffer", arg: 1, scope: !1586, file: !245, line: 774, type: !36)
!1591 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1586, file: !245, line: 774, type: !41)
!1592 = !DILocalVariable(name: "arg", arg: 3, scope: !1586, file: !245, line: 775, type: !44)
!1593 = !DILocalVariable(name: "argsize", arg: 4, scope: !1586, file: !245, line: 775, type: !41)
!1594 = !DILocalVariable(name: "o", arg: 5, scope: !1586, file: !245, line: 776, type: !1501)
!1595 = !DILocalVariable(name: "p", scope: !1586, file: !245, line: 778, type: !1501)
!1596 = !DILocalVariable(name: "saved_errno", scope: !1586, file: !245, line: 779, type: !39)
!1597 = !DILocalVariable(name: "r", scope: !1586, file: !245, line: 780, type: !41)
!1598 = !DILocation(line: 0, scope: !1586)
!1599 = !DILocation(line: 778, column: 37, scope: !1586)
!1600 = !DILocation(line: 779, column: 21, scope: !1586)
!1601 = !DILocation(line: 781, column: 43, scope: !1586)
!1602 = !DILocation(line: 781, column: 53, scope: !1586)
!1603 = !DILocation(line: 781, column: 60, scope: !1586)
!1604 = !DILocation(line: 782, column: 43, scope: !1586)
!1605 = !DILocation(line: 782, column: 58, scope: !1586)
!1606 = !DILocation(line: 780, column: 14, scope: !1586)
!1607 = !DILocation(line: 783, column: 9, scope: !1586)
!1608 = !DILocation(line: 784, column: 3, scope: !1586)
!1609 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !245, file: !245, line: 251, type: !1610, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1614)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!41, !36, !41, !44, !41, !5, !39, !1612, !44, !44}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1639, !1641, !1644, !1645, !1646, !1647, !1650, !1651, !1654, !1658, !1659, !1667, !1670, !1671, !1673, !1674, !1675, !1676}
!1615 = !DILocalVariable(name: "buffer", arg: 1, scope: !1609, file: !245, line: 251, type: !36)
!1616 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1609, file: !245, line: 251, type: !41)
!1617 = !DILocalVariable(name: "arg", arg: 3, scope: !1609, file: !245, line: 252, type: !44)
!1618 = !DILocalVariable(name: "argsize", arg: 4, scope: !1609, file: !245, line: 252, type: !41)
!1619 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1609, file: !245, line: 253, type: !5)
!1620 = !DILocalVariable(name: "flags", arg: 6, scope: !1609, file: !245, line: 253, type: !39)
!1621 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1609, file: !245, line: 254, type: !1612)
!1622 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1609, file: !245, line: 255, type: !44)
!1623 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1609, file: !245, line: 256, type: !44)
!1624 = !DILocalVariable(name: "unibyte_locale", scope: !1609, file: !245, line: 258, type: !61)
!1625 = !DILocalVariable(name: "len", scope: !1609, file: !245, line: 260, type: !41)
!1626 = !DILocalVariable(name: "orig_buffersize", scope: !1609, file: !245, line: 261, type: !41)
!1627 = !DILocalVariable(name: "quote_string", scope: !1609, file: !245, line: 262, type: !44)
!1628 = !DILocalVariable(name: "quote_string_len", scope: !1609, file: !245, line: 263, type: !41)
!1629 = !DILocalVariable(name: "backslash_escapes", scope: !1609, file: !245, line: 264, type: !61)
!1630 = !DILocalVariable(name: "elide_outer_quotes", scope: !1609, file: !245, line: 265, type: !61)
!1631 = !DILocalVariable(name: "encountered_single_quote", scope: !1609, file: !245, line: 266, type: !61)
!1632 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1609, file: !245, line: 267, type: !61)
!1633 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1609, file: !245, line: 309, type: !61)
!1634 = !DILocalVariable(name: "lq", scope: !1635, file: !245, line: 361, type: !44)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !245, line: 361, column: 11)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !245, line: 360, column: 13)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !245, line: 333, column: 7)
!1638 = distinct !DILexicalBlock(scope: !1609, file: !245, line: 312, column: 5)
!1639 = !DILocalVariable(name: "i", scope: !1640, file: !245, line: 395, type: !41)
!1640 = distinct !DILexicalBlock(scope: !1609, file: !245, line: 395, column: 3)
!1641 = !DILocalVariable(name: "is_right_quote", scope: !1642, file: !245, line: 397, type: !61)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !245, line: 396, column: 5)
!1643 = distinct !DILexicalBlock(scope: !1640, file: !245, line: 395, column: 3)
!1644 = !DILocalVariable(name: "escaping", scope: !1642, file: !245, line: 398, type: !61)
!1645 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1642, file: !245, line: 399, type: !61)
!1646 = !DILocalVariable(name: "c", scope: !1642, file: !245, line: 417, type: !46)
!1647 = !DILocalVariable(name: "m", scope: !1648, file: !245, line: 598, type: !41)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !245, line: 596, column: 11)
!1649 = distinct !DILexicalBlock(scope: !1642, file: !245, line: 419, column: 9)
!1650 = !DILocalVariable(name: "printable", scope: !1648, file: !245, line: 600, type: !61)
!1651 = !DILocalVariable(name: "mbs", scope: !1652, file: !245, line: 609, type: !290)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !245, line: 608, column: 15)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !245, line: 602, column: 17)
!1654 = !DILocalVariable(name: "w", scope: !1655, file: !245, line: 618, type: !219)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !245, line: 617, column: 19)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !245, line: 616, column: 17)
!1657 = distinct !DILexicalBlock(scope: !1652, file: !245, line: 616, column: 17)
!1658 = !DILocalVariable(name: "bytes", scope: !1655, file: !245, line: 619, type: !41)
!1659 = !DILocalVariable(name: "j", scope: !1660, file: !245, line: 648, type: !41)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !245, line: 648, column: 29)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !245, line: 647, column: 27)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !245, line: 645, column: 29)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !245, line: 636, column: 23)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !245, line: 628, column: 30)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !245, line: 623, column: 30)
!1666 = distinct !DILexicalBlock(scope: !1655, file: !245, line: 621, column: 25)
!1667 = !DILocalVariable(name: "ilim", scope: !1668, file: !245, line: 674, type: !41)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !245, line: 671, column: 15)
!1669 = distinct !DILexicalBlock(scope: !1648, file: !245, line: 670, column: 17)
!1670 = !DILabel(scope: !1609, name: "process_input", file: !245, line: 308)
!1671 = !DILabel(scope: !1672, name: "c_and_shell_escape", file: !245, line: 502)
!1672 = distinct !DILexicalBlock(scope: !1649, file: !245, line: 478, column: 9)
!1673 = !DILabel(scope: !1672, name: "c_escape", file: !245, line: 507)
!1674 = !DILabel(scope: !1642, name: "store_escape", file: !245, line: 709)
!1675 = !DILabel(scope: !1642, name: "store_c", file: !245, line: 712)
!1676 = !DILabel(scope: !1609, name: "force_outer_quoting_style", file: !245, line: 753)
!1677 = !DILocation(line: 0, scope: !1609)
!1678 = !DILocation(line: 258, column: 25, scope: !1609)
!1679 = !DILocation(line: 258, column: 36, scope: !1609)
!1680 = !DILocation(line: 267, column: 3, scope: !1609)
!1681 = !DILocation(line: 261, column: 10, scope: !1609)
!1682 = !DILocation(line: 262, column: 15, scope: !1609)
!1683 = !DILocation(line: 263, column: 10, scope: !1609)
!1684 = !DILocation(line: 308, column: 2, scope: !1609)
!1685 = !DILocation(line: 311, column: 3, scope: !1609)
!1686 = !DILocation(line: 318, column: 11, scope: !1638)
!1687 = !DILocation(line: 319, column: 9, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !245, line: 319, column: 9)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !245, line: 319, column: 9)
!1690 = distinct !DILexicalBlock(scope: !1638, file: !245, line: 318, column: 11)
!1691 = !DILocation(line: 319, column: 9, scope: !1689)
!1692 = !DILocation(line: 0, scope: !281, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 357, column: 26, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !245, line: 335, column: 11)
!1695 = distinct !DILexicalBlock(scope: !1637, file: !245, line: 334, column: 13)
!1696 = !DILocation(line: 199, column: 29, scope: !281, inlinedAt: !1693)
!1697 = !DILocation(line: 201, column: 19, scope: !1698, inlinedAt: !1693)
!1698 = distinct !DILexicalBlock(scope: !281, file: !245, line: 201, column: 7)
!1699 = !DILocation(line: 201, column: 7, scope: !281, inlinedAt: !1693)
!1700 = !DILocation(line: 229, column: 3, scope: !281, inlinedAt: !1693)
!1701 = !DILocation(line: 230, column: 3, scope: !281, inlinedAt: !1693)
!1702 = !DILocation(line: 230, column: 13, scope: !281, inlinedAt: !1693)
!1703 = !DILocalVariable(name: "ps", arg: 1, scope: !1704, file: !1455, line: 1135, type: !1707)
!1704 = distinct !DISubprogram(name: "mbszero", scope: !1455, file: !1455, line: 1135, type: !1705, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1708)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{null, !1707}
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1708 = !{!1703}
!1709 = !DILocation(line: 0, scope: !1704, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 230, column: 18, scope: !281, inlinedAt: !1693)
!1711 = !DILocalVariable(name: "__dest", arg: 1, scope: !1712, file: !1464, line: 57, type: !38)
!1712 = distinct !DISubprogram(name: "memset", scope: !1464, file: !1464, line: 57, type: !1465, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1713)
!1713 = !{!1711, !1714, !1715}
!1714 = !DILocalVariable(name: "__ch", arg: 2, scope: !1712, file: !1464, line: 57, type: !39)
!1715 = !DILocalVariable(name: "__len", arg: 3, scope: !1712, file: !1464, line: 57, type: !41)
!1716 = !DILocation(line: 0, scope: !1712, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 1137, column: 3, scope: !1704, inlinedAt: !1710)
!1718 = !DILocation(line: 59, column: 10, scope: !1712, inlinedAt: !1717)
!1719 = !DILocation(line: 231, column: 7, scope: !1720, inlinedAt: !1693)
!1720 = distinct !DILexicalBlock(scope: !281, file: !245, line: 231, column: 7)
!1721 = !DILocation(line: 231, column: 40, scope: !1720, inlinedAt: !1693)
!1722 = !DILocation(line: 231, column: 45, scope: !1720, inlinedAt: !1693)
!1723 = !DILocation(line: 235, column: 1, scope: !281, inlinedAt: !1693)
!1724 = !DILocation(line: 0, scope: !281, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 358, column: 27, scope: !1694)
!1726 = !DILocation(line: 199, column: 29, scope: !281, inlinedAt: !1725)
!1727 = !DILocation(line: 201, column: 19, scope: !1698, inlinedAt: !1725)
!1728 = !DILocation(line: 201, column: 7, scope: !281, inlinedAt: !1725)
!1729 = !DILocation(line: 229, column: 3, scope: !281, inlinedAt: !1725)
!1730 = !DILocation(line: 230, column: 3, scope: !281, inlinedAt: !1725)
!1731 = !DILocation(line: 230, column: 13, scope: !281, inlinedAt: !1725)
!1732 = !DILocation(line: 0, scope: !1704, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 230, column: 18, scope: !281, inlinedAt: !1725)
!1734 = !DILocation(line: 0, scope: !1712, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 1137, column: 3, scope: !1704, inlinedAt: !1733)
!1736 = !DILocation(line: 59, column: 10, scope: !1712, inlinedAt: !1735)
!1737 = !DILocation(line: 231, column: 7, scope: !1720, inlinedAt: !1725)
!1738 = !DILocation(line: 231, column: 40, scope: !1720, inlinedAt: !1725)
!1739 = !DILocation(line: 231, column: 45, scope: !1720, inlinedAt: !1725)
!1740 = !DILocation(line: 235, column: 1, scope: !281, inlinedAt: !1725)
!1741 = !DILocation(line: 360, column: 13, scope: !1637)
!1742 = !DILocation(line: 0, scope: !1635)
!1743 = !DILocation(line: 361, column: 45, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1635, file: !245, line: 361, column: 11)
!1745 = !DILocation(line: 361, column: 11, scope: !1635)
!1746 = !DILocation(line: 362, column: 13, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !245, line: 362, column: 13)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !245, line: 362, column: 13)
!1749 = !DILocation(line: 362, column: 13, scope: !1748)
!1750 = !DILocation(line: 361, column: 52, scope: !1744)
!1751 = distinct !{!1751, !1745, !1752, !502}
!1752 = !DILocation(line: 362, column: 13, scope: !1635)
!1753 = !DILocation(line: 260, column: 10, scope: !1609)
!1754 = !DILocation(line: 365, column: 28, scope: !1637)
!1755 = !DILocation(line: 367, column: 7, scope: !1638)
!1756 = !DILocation(line: 370, column: 7, scope: !1638)
!1757 = !DILocation(line: 376, column: 11, scope: !1638)
!1758 = !DILocation(line: 381, column: 11, scope: !1638)
!1759 = !DILocation(line: 382, column: 9, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !245, line: 382, column: 9)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !245, line: 382, column: 9)
!1762 = distinct !DILexicalBlock(scope: !1638, file: !245, line: 381, column: 11)
!1763 = !DILocation(line: 382, column: 9, scope: !1761)
!1764 = !DILocation(line: 389, column: 7, scope: !1638)
!1765 = !DILocation(line: 392, column: 7, scope: !1638)
!1766 = !DILocation(line: 0, scope: !1640)
!1767 = !DILocation(line: 395, column: 8, scope: !1640)
!1768 = !DILocation(line: 395, column: 34, scope: !1643)
!1769 = !DILocation(line: 395, column: 26, scope: !1643)
!1770 = !DILocation(line: 395, column: 48, scope: !1643)
!1771 = !DILocation(line: 395, column: 55, scope: !1643)
!1772 = !DILocation(line: 395, column: 3, scope: !1640)
!1773 = !DILocation(line: 395, column: 67, scope: !1643)
!1774 = !DILocation(line: 0, scope: !1642)
!1775 = !DILocation(line: 402, column: 11, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1642, file: !245, line: 401, column: 11)
!1777 = !DILocation(line: 404, column: 17, scope: !1776)
!1778 = !DILocation(line: 405, column: 39, scope: !1776)
!1779 = !DILocation(line: 409, column: 32, scope: !1776)
!1780 = !DILocation(line: 405, column: 19, scope: !1776)
!1781 = !DILocation(line: 405, column: 15, scope: !1776)
!1782 = !DILocation(line: 410, column: 11, scope: !1776)
!1783 = !DILocation(line: 410, column: 25, scope: !1776)
!1784 = !DILocalVariable(name: "__s1", arg: 1, scope: !1785, file: !486, line: 974, type: !653)
!1785 = distinct !DISubprogram(name: "memeq", scope: !486, file: !486, line: 974, type: !1426, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1786)
!1786 = !{!1784, !1787, !1788}
!1787 = !DILocalVariable(name: "__s2", arg: 2, scope: !1785, file: !486, line: 974, type: !653)
!1788 = !DILocalVariable(name: "__n", arg: 3, scope: !1785, file: !486, line: 974, type: !41)
!1789 = !DILocation(line: 0, scope: !1785, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 410, column: 14, scope: !1776)
!1791 = !DILocation(line: 976, column: 11, scope: !1785, inlinedAt: !1790)
!1792 = !DILocation(line: 976, column: 10, scope: !1785, inlinedAt: !1790)
!1793 = !DILocation(line: 401, column: 11, scope: !1642)
!1794 = !DILocation(line: 417, column: 25, scope: !1642)
!1795 = !DILocation(line: 418, column: 7, scope: !1642)
!1796 = !DILocation(line: 421, column: 15, scope: !1649)
!1797 = !DILocation(line: 423, column: 15, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !245, line: 423, column: 15)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !245, line: 422, column: 13)
!1800 = distinct !DILexicalBlock(scope: !1649, file: !245, line: 421, column: 15)
!1801 = !DILocation(line: 423, column: 15, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1798, file: !245, line: 423, column: 15)
!1803 = !DILocation(line: 423, column: 15, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !245, line: 423, column: 15)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !245, line: 423, column: 15)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !245, line: 423, column: 15)
!1807 = !DILocation(line: 423, column: 15, scope: !1805)
!1808 = !DILocation(line: 423, column: 15, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !245, line: 423, column: 15)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !245, line: 423, column: 15)
!1811 = !DILocation(line: 423, column: 15, scope: !1810)
!1812 = !DILocation(line: 423, column: 15, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !245, line: 423, column: 15)
!1814 = distinct !DILexicalBlock(scope: !1806, file: !245, line: 423, column: 15)
!1815 = !DILocation(line: 423, column: 15, scope: !1814)
!1816 = !DILocation(line: 423, column: 15, scope: !1806)
!1817 = !DILocation(line: 423, column: 15, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !245, line: 423, column: 15)
!1819 = distinct !DILexicalBlock(scope: !1798, file: !245, line: 423, column: 15)
!1820 = !DILocation(line: 423, column: 15, scope: !1819)
!1821 = !DILocation(line: 431, column: 19, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1799, file: !245, line: 430, column: 19)
!1823 = !DILocation(line: 431, column: 24, scope: !1822)
!1824 = !DILocation(line: 431, column: 28, scope: !1822)
!1825 = !DILocation(line: 431, column: 38, scope: !1822)
!1826 = !DILocation(line: 431, column: 48, scope: !1822)
!1827 = !DILocation(line: 431, column: 59, scope: !1822)
!1828 = !DILocation(line: 433, column: 19, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !245, line: 433, column: 19)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !245, line: 433, column: 19)
!1831 = distinct !DILexicalBlock(scope: !1822, file: !245, line: 432, column: 17)
!1832 = !DILocation(line: 433, column: 19, scope: !1830)
!1833 = !DILocation(line: 434, column: 19, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !245, line: 434, column: 19)
!1835 = distinct !DILexicalBlock(scope: !1831, file: !245, line: 434, column: 19)
!1836 = !DILocation(line: 434, column: 19, scope: !1835)
!1837 = !DILocation(line: 435, column: 17, scope: !1831)
!1838 = !DILocation(line: 442, column: 20, scope: !1800)
!1839 = !DILocation(line: 447, column: 11, scope: !1649)
!1840 = !DILocation(line: 450, column: 19, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1649, file: !245, line: 448, column: 13)
!1842 = !DILocation(line: 456, column: 19, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1841, file: !245, line: 455, column: 19)
!1844 = !DILocation(line: 456, column: 24, scope: !1843)
!1845 = !DILocation(line: 456, column: 28, scope: !1843)
!1846 = !DILocation(line: 456, column: 38, scope: !1843)
!1847 = !DILocation(line: 456, column: 47, scope: !1843)
!1848 = !DILocation(line: 456, column: 41, scope: !1843)
!1849 = !DILocation(line: 456, column: 52, scope: !1843)
!1850 = !DILocation(line: 455, column: 19, scope: !1841)
!1851 = !DILocation(line: 457, column: 25, scope: !1843)
!1852 = !DILocation(line: 457, column: 17, scope: !1843)
!1853 = !DILocation(line: 464, column: 25, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1843, file: !245, line: 458, column: 19)
!1855 = !DILocation(line: 468, column: 21, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !245, line: 468, column: 21)
!1857 = distinct !DILexicalBlock(scope: !1854, file: !245, line: 468, column: 21)
!1858 = !DILocation(line: 468, column: 21, scope: !1857)
!1859 = !DILocation(line: 469, column: 21, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !245, line: 469, column: 21)
!1861 = distinct !DILexicalBlock(scope: !1854, file: !245, line: 469, column: 21)
!1862 = !DILocation(line: 469, column: 21, scope: !1861)
!1863 = !DILocation(line: 470, column: 21, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !245, line: 470, column: 21)
!1865 = distinct !DILexicalBlock(scope: !1854, file: !245, line: 470, column: 21)
!1866 = !DILocation(line: 470, column: 21, scope: !1865)
!1867 = !DILocation(line: 471, column: 21, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !245, line: 471, column: 21)
!1869 = distinct !DILexicalBlock(scope: !1854, file: !245, line: 471, column: 21)
!1870 = !DILocation(line: 471, column: 21, scope: !1869)
!1871 = !DILocation(line: 472, column: 21, scope: !1854)
!1872 = !DILocation(line: 482, column: 33, scope: !1672)
!1873 = !DILocation(line: 483, column: 33, scope: !1672)
!1874 = !DILocation(line: 485, column: 33, scope: !1672)
!1875 = !DILocation(line: 486, column: 33, scope: !1672)
!1876 = !DILocation(line: 487, column: 33, scope: !1672)
!1877 = !DILocation(line: 490, column: 17, scope: !1672)
!1878 = !DILocation(line: 492, column: 21, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !245, line: 491, column: 15)
!1880 = distinct !DILexicalBlock(scope: !1672, file: !245, line: 490, column: 17)
!1881 = !DILocation(line: 499, column: 35, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1672, file: !245, line: 499, column: 17)
!1883 = !DILocation(line: 499, column: 57, scope: !1882)
!1884 = !DILocation(line: 0, scope: !1672)
!1885 = !DILocation(line: 502, column: 11, scope: !1672)
!1886 = !DILocation(line: 504, column: 17, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1672, file: !245, line: 503, column: 17)
!1888 = !DILocation(line: 507, column: 11, scope: !1672)
!1889 = !DILocation(line: 508, column: 17, scope: !1672)
!1890 = !DILocation(line: 517, column: 15, scope: !1649)
!1891 = !DILocation(line: 517, column: 40, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1649, file: !245, line: 517, column: 15)
!1893 = !DILocation(line: 517, column: 47, scope: !1892)
!1894 = !DILocation(line: 517, column: 18, scope: !1892)
!1895 = !DILocation(line: 521, column: 17, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1649, file: !245, line: 521, column: 15)
!1897 = !DILocation(line: 521, column: 15, scope: !1649)
!1898 = !DILocation(line: 525, column: 11, scope: !1649)
!1899 = !DILocation(line: 537, column: 15, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1649, file: !245, line: 536, column: 15)
!1901 = !DILocation(line: 536, column: 15, scope: !1649)
!1902 = !DILocation(line: 544, column: 15, scope: !1649)
!1903 = !DILocation(line: 546, column: 19, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !245, line: 545, column: 13)
!1905 = distinct !DILexicalBlock(scope: !1649, file: !245, line: 544, column: 15)
!1906 = !DILocation(line: 549, column: 19, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1904, file: !245, line: 549, column: 19)
!1908 = !DILocation(line: 549, column: 30, scope: !1907)
!1909 = !DILocation(line: 558, column: 15, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !245, line: 558, column: 15)
!1911 = distinct !DILexicalBlock(scope: !1904, file: !245, line: 558, column: 15)
!1912 = !DILocation(line: 558, column: 15, scope: !1911)
!1913 = !DILocation(line: 559, column: 15, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !245, line: 559, column: 15)
!1915 = distinct !DILexicalBlock(scope: !1904, file: !245, line: 559, column: 15)
!1916 = !DILocation(line: 559, column: 15, scope: !1915)
!1917 = !DILocation(line: 560, column: 15, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !245, line: 560, column: 15)
!1919 = distinct !DILexicalBlock(scope: !1904, file: !245, line: 560, column: 15)
!1920 = !DILocation(line: 560, column: 15, scope: !1919)
!1921 = !DILocation(line: 562, column: 13, scope: !1904)
!1922 = !DILocation(line: 602, column: 17, scope: !1648)
!1923 = !DILocation(line: 0, scope: !1648)
!1924 = !DILocation(line: 605, column: 29, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1653, file: !245, line: 603, column: 15)
!1926 = !DILocation(line: 605, column: 41, scope: !1925)
!1927 = !DILocation(line: 670, column: 23, scope: !1669)
!1928 = !DILocation(line: 609, column: 17, scope: !1652)
!1929 = !DILocation(line: 609, column: 27, scope: !1652)
!1930 = !DILocation(line: 0, scope: !1704, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 609, column: 32, scope: !1652)
!1932 = !DILocation(line: 0, scope: !1712, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 1137, column: 3, scope: !1704, inlinedAt: !1931)
!1934 = !DILocation(line: 59, column: 10, scope: !1712, inlinedAt: !1933)
!1935 = !DILocation(line: 613, column: 29, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1652, file: !245, line: 613, column: 21)
!1937 = !DILocation(line: 613, column: 21, scope: !1652)
!1938 = !DILocation(line: 614, column: 29, scope: !1936)
!1939 = !DILocation(line: 614, column: 19, scope: !1936)
!1940 = !DILocation(line: 618, column: 21, scope: !1655)
!1941 = !DILocation(line: 620, column: 54, scope: !1655)
!1942 = !DILocation(line: 0, scope: !1655)
!1943 = !DILocation(line: 619, column: 36, scope: !1655)
!1944 = !DILocation(line: 621, column: 25, scope: !1655)
!1945 = !DILocation(line: 631, column: 38, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1664, file: !245, line: 629, column: 23)
!1947 = !DILocation(line: 631, column: 48, scope: !1946)
!1948 = !DILocation(line: 665, column: 19, scope: !1656)
!1949 = !DILocation(line: 666, column: 15, scope: !1653)
!1950 = !DILocation(line: 626, column: 25, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1665, file: !245, line: 624, column: 23)
!1952 = !DILocation(line: 631, column: 51, scope: !1946)
!1953 = !DILocation(line: 631, column: 25, scope: !1946)
!1954 = !DILocation(line: 632, column: 28, scope: !1946)
!1955 = !DILocation(line: 631, column: 34, scope: !1946)
!1956 = distinct !{!1956, !1953, !1954, !502}
!1957 = !DILocation(line: 646, column: 29, scope: !1662)
!1958 = !DILocation(line: 0, scope: !1660)
!1959 = !DILocation(line: 649, column: 49, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1660, file: !245, line: 648, column: 29)
!1961 = !DILocation(line: 649, column: 39, scope: !1960)
!1962 = !DILocation(line: 649, column: 31, scope: !1960)
!1963 = !DILocation(line: 648, column: 60, scope: !1960)
!1964 = !DILocation(line: 648, column: 50, scope: !1960)
!1965 = !DILocation(line: 648, column: 29, scope: !1660)
!1966 = distinct !{!1966, !1965, !1967, !502}
!1967 = !DILocation(line: 654, column: 33, scope: !1660)
!1968 = !DILocation(line: 657, column: 43, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1663, file: !245, line: 657, column: 29)
!1970 = !DILocalVariable(name: "wc", arg: 1, scope: !1971, file: !1972, line: 865, type: !1975)
!1971 = distinct !DISubprogram(name: "c32isprint", scope: !1972, file: !1972, line: 865, type: !1973, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1977)
!1972 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!39, !1975}
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1976, line: 20, baseType: !7)
!1976 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1977 = !{!1970}
!1978 = !DILocation(line: 0, scope: !1971, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 657, column: 31, scope: !1969)
!1980 = !DILocation(line: 871, column: 10, scope: !1971, inlinedAt: !1979)
!1981 = !DILocation(line: 657, column: 31, scope: !1969)
!1982 = !DILocation(line: 664, column: 23, scope: !1655)
!1983 = !DILocation(line: 753, column: 2, scope: !1609)
!1984 = !DILocation(line: 756, column: 51, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1609, file: !245, line: 756, column: 7)
!1986 = !DILocation(line: 670, column: 19, scope: !1669)
!1987 = !DILocation(line: 670, column: 45, scope: !1669)
!1988 = !DILocation(line: 674, column: 33, scope: !1668)
!1989 = !DILocation(line: 0, scope: !1668)
!1990 = !DILocation(line: 676, column: 17, scope: !1668)
!1991 = !DILocation(line: 398, column: 12, scope: !1642)
!1992 = !DILocation(line: 678, column: 43, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !245, line: 678, column: 25)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !245, line: 677, column: 19)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !245, line: 676, column: 17)
!1996 = distinct !DILexicalBlock(scope: !1668, file: !245, line: 676, column: 17)
!1997 = !DILocation(line: 680, column: 25, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !245, line: 680, column: 25)
!1999 = distinct !DILexicalBlock(scope: !1993, file: !245, line: 679, column: 23)
!2000 = !DILocation(line: 680, column: 25, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !245, line: 680, column: 25)
!2002 = !DILocation(line: 680, column: 25, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !245, line: 680, column: 25)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !245, line: 680, column: 25)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !245, line: 680, column: 25)
!2006 = !DILocation(line: 680, column: 25, scope: !2004)
!2007 = !DILocation(line: 680, column: 25, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !245, line: 680, column: 25)
!2009 = distinct !DILexicalBlock(scope: !2005, file: !245, line: 680, column: 25)
!2010 = !DILocation(line: 680, column: 25, scope: !2009)
!2011 = !DILocation(line: 680, column: 25, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !245, line: 680, column: 25)
!2013 = distinct !DILexicalBlock(scope: !2005, file: !245, line: 680, column: 25)
!2014 = !DILocation(line: 680, column: 25, scope: !2013)
!2015 = !DILocation(line: 680, column: 25, scope: !2005)
!2016 = !DILocation(line: 680, column: 25, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !245, line: 680, column: 25)
!2018 = distinct !DILexicalBlock(scope: !1998, file: !245, line: 680, column: 25)
!2019 = !DILocation(line: 680, column: 25, scope: !2018)
!2020 = !DILocation(line: 681, column: 25, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !245, line: 681, column: 25)
!2022 = distinct !DILexicalBlock(scope: !1999, file: !245, line: 681, column: 25)
!2023 = !DILocation(line: 681, column: 25, scope: !2022)
!2024 = !DILocation(line: 682, column: 25, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !245, line: 682, column: 25)
!2026 = distinct !DILexicalBlock(scope: !1999, file: !245, line: 682, column: 25)
!2027 = !DILocation(line: 682, column: 25, scope: !2026)
!2028 = !DILocation(line: 683, column: 38, scope: !1999)
!2029 = !DILocation(line: 683, column: 33, scope: !1999)
!2030 = !DILocation(line: 684, column: 23, scope: !1999)
!2031 = !DILocation(line: 685, column: 30, scope: !1993)
!2032 = !DILocation(line: 687, column: 25, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !245, line: 687, column: 25)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !245, line: 687, column: 25)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !245, line: 686, column: 23)
!2036 = distinct !DILexicalBlock(scope: !1993, file: !245, line: 685, column: 30)
!2037 = !DILocation(line: 687, column: 25, scope: !2034)
!2038 = !DILocation(line: 689, column: 23, scope: !2035)
!2039 = !DILocation(line: 690, column: 35, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1994, file: !245, line: 690, column: 25)
!2041 = !DILocation(line: 690, column: 30, scope: !2040)
!2042 = !DILocation(line: 690, column: 25, scope: !1994)
!2043 = !DILocation(line: 692, column: 21, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !245, line: 692, column: 21)
!2045 = distinct !DILexicalBlock(scope: !1994, file: !245, line: 692, column: 21)
!2046 = !DILocation(line: 692, column: 21, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !245, line: 692, column: 21)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !245, line: 692, column: 21)
!2049 = distinct !DILexicalBlock(scope: !2044, file: !245, line: 692, column: 21)
!2050 = !DILocation(line: 692, column: 21, scope: !2048)
!2051 = !DILocation(line: 692, column: 21, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !245, line: 692, column: 21)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !245, line: 692, column: 21)
!2054 = !DILocation(line: 692, column: 21, scope: !2053)
!2055 = !DILocation(line: 692, column: 21, scope: !2049)
!2056 = !DILocation(line: 0, scope: !1994)
!2057 = !DILocation(line: 693, column: 21, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !245, line: 693, column: 21)
!2059 = distinct !DILexicalBlock(scope: !1994, file: !245, line: 693, column: 21)
!2060 = !DILocation(line: 693, column: 21, scope: !2059)
!2061 = !DILocation(line: 694, column: 25, scope: !1994)
!2062 = !DILocation(line: 676, column: 17, scope: !1995)
!2063 = distinct !{!2063, !2064, !2065}
!2064 = !DILocation(line: 676, column: 17, scope: !1996)
!2065 = !DILocation(line: 695, column: 19, scope: !1996)
!2066 = !DILocation(line: 409, column: 30, scope: !1776)
!2067 = !DILocation(line: 702, column: 34, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1642, file: !245, line: 702, column: 11)
!2069 = !DILocation(line: 704, column: 14, scope: !2068)
!2070 = !DILocation(line: 705, column: 14, scope: !2068)
!2071 = !DILocation(line: 705, column: 35, scope: !2068)
!2072 = !DILocation(line: 705, column: 17, scope: !2068)
!2073 = !DILocation(line: 705, column: 47, scope: !2068)
!2074 = !DILocation(line: 705, column: 65, scope: !2068)
!2075 = !DILocation(line: 706, column: 11, scope: !2068)
!2076 = !DILocation(line: 702, column: 11, scope: !1642)
!2077 = !DILocation(line: 395, column: 15, scope: !1640)
!2078 = !DILocation(line: 709, column: 5, scope: !1642)
!2079 = !DILocation(line: 710, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1642, file: !245, line: 710, column: 7)
!2081 = !DILocation(line: 710, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2080, file: !245, line: 710, column: 7)
!2083 = !DILocation(line: 710, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !245, line: 710, column: 7)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !245, line: 710, column: 7)
!2086 = distinct !DILexicalBlock(scope: !2082, file: !245, line: 710, column: 7)
!2087 = !DILocation(line: 710, column: 7, scope: !2085)
!2088 = !DILocation(line: 710, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !245, line: 710, column: 7)
!2090 = distinct !DILexicalBlock(scope: !2086, file: !245, line: 710, column: 7)
!2091 = !DILocation(line: 710, column: 7, scope: !2090)
!2092 = !DILocation(line: 710, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !245, line: 710, column: 7)
!2094 = distinct !DILexicalBlock(scope: !2086, file: !245, line: 710, column: 7)
!2095 = !DILocation(line: 710, column: 7, scope: !2094)
!2096 = !DILocation(line: 710, column: 7, scope: !2086)
!2097 = !DILocation(line: 710, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !245, line: 710, column: 7)
!2099 = distinct !DILexicalBlock(scope: !2080, file: !245, line: 710, column: 7)
!2100 = !DILocation(line: 710, column: 7, scope: !2099)
!2101 = !DILocation(line: 712, column: 5, scope: !1642)
!2102 = !DILocation(line: 713, column: 7, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !245, line: 713, column: 7)
!2104 = distinct !DILexicalBlock(scope: !1642, file: !245, line: 713, column: 7)
!2105 = !DILocation(line: 417, column: 21, scope: !1642)
!2106 = !DILocation(line: 713, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !245, line: 713, column: 7)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !245, line: 713, column: 7)
!2109 = distinct !DILexicalBlock(scope: !2103, file: !245, line: 713, column: 7)
!2110 = !DILocation(line: 713, column: 7, scope: !2108)
!2111 = !DILocation(line: 713, column: 7, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !245, line: 713, column: 7)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !245, line: 713, column: 7)
!2114 = !DILocation(line: 713, column: 7, scope: !2113)
!2115 = !DILocation(line: 713, column: 7, scope: !2109)
!2116 = !DILocation(line: 714, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !245, line: 714, column: 7)
!2118 = distinct !DILexicalBlock(scope: !1642, file: !245, line: 714, column: 7)
!2119 = !DILocation(line: 714, column: 7, scope: !2118)
!2120 = !DILocation(line: 716, column: 11, scope: !1642)
!2121 = !DILocation(line: 718, column: 5, scope: !1643)
!2122 = !DILocation(line: 395, column: 82, scope: !1643)
!2123 = !DILocation(line: 395, column: 3, scope: !1643)
!2124 = distinct !{!2124, !1772, !2125, !502}
!2125 = !DILocation(line: 718, column: 5, scope: !1640)
!2126 = !DILocation(line: 720, column: 11, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1609, file: !245, line: 720, column: 7)
!2128 = !DILocation(line: 720, column: 16, scope: !2127)
!2129 = !DILocation(line: 728, column: 51, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1609, file: !245, line: 728, column: 7)
!2131 = !DILocation(line: 731, column: 11, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2130, file: !245, line: 730, column: 5)
!2133 = !DILocation(line: 732, column: 16, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2132, file: !245, line: 731, column: 11)
!2135 = !DILocation(line: 732, column: 9, scope: !2134)
!2136 = !DILocation(line: 736, column: 18, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2134, file: !245, line: 736, column: 16)
!2138 = !DILocation(line: 736, column: 29, scope: !2137)
!2139 = !DILocation(line: 745, column: 7, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !1609, file: !245, line: 745, column: 7)
!2141 = !DILocation(line: 745, column: 20, scope: !2140)
!2142 = !DILocation(line: 746, column: 12, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !245, line: 746, column: 5)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !245, line: 746, column: 5)
!2145 = !DILocation(line: 746, column: 5, scope: !2144)
!2146 = !DILocation(line: 747, column: 7, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !245, line: 747, column: 7)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !245, line: 747, column: 7)
!2149 = !DILocation(line: 747, column: 7, scope: !2148)
!2150 = !DILocation(line: 746, column: 39, scope: !2143)
!2151 = distinct !{!2151, !2145, !2152, !502}
!2152 = !DILocation(line: 747, column: 7, scope: !2144)
!2153 = !DILocation(line: 749, column: 11, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !1609, file: !245, line: 749, column: 7)
!2155 = !DILocation(line: 749, column: 7, scope: !1609)
!2156 = !DILocation(line: 750, column: 5, scope: !2154)
!2157 = !DILocation(line: 750, column: 17, scope: !2154)
!2158 = !DILocation(line: 756, column: 21, scope: !1985)
!2159 = !DILocation(line: 760, column: 42, scope: !1609)
!2160 = !DILocation(line: 758, column: 10, scope: !1609)
!2161 = !DILocation(line: 758, column: 3, scope: !1609)
!2162 = !DILocation(line: 762, column: 1, scope: !1609)
!2163 = !DISubprogram(name: "iswprint", scope: !2164, file: !2164, line: 120, type: !1973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!2164 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2165 = distinct !DISubprogram(name: "quotearg_alloc", scope: !245, file: !245, line: 788, type: !2166, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2168)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!36, !44, !41, !1501}
!2168 = !{!2169, !2170, !2171}
!2169 = !DILocalVariable(name: "arg", arg: 1, scope: !2165, file: !245, line: 788, type: !44)
!2170 = !DILocalVariable(name: "argsize", arg: 2, scope: !2165, file: !245, line: 788, type: !41)
!2171 = !DILocalVariable(name: "o", arg: 3, scope: !2165, file: !245, line: 789, type: !1501)
!2172 = !DILocation(line: 0, scope: !2165)
!2173 = !DILocalVariable(name: "arg", arg: 1, scope: !2174, file: !245, line: 801, type: !44)
!2174 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !245, file: !245, line: 801, type: !2175, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!36, !44, !41, !374, !1501}
!2177 = !{!2173, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185}
!2178 = !DILocalVariable(name: "argsize", arg: 2, scope: !2174, file: !245, line: 801, type: !41)
!2179 = !DILocalVariable(name: "size", arg: 3, scope: !2174, file: !245, line: 801, type: !374)
!2180 = !DILocalVariable(name: "o", arg: 4, scope: !2174, file: !245, line: 802, type: !1501)
!2181 = !DILocalVariable(name: "p", scope: !2174, file: !245, line: 804, type: !1501)
!2182 = !DILocalVariable(name: "saved_errno", scope: !2174, file: !245, line: 805, type: !39)
!2183 = !DILocalVariable(name: "flags", scope: !2174, file: !245, line: 807, type: !39)
!2184 = !DILocalVariable(name: "bufsize", scope: !2174, file: !245, line: 808, type: !41)
!2185 = !DILocalVariable(name: "buf", scope: !2174, file: !245, line: 812, type: !36)
!2186 = !DILocation(line: 0, scope: !2174, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 791, column: 10, scope: !2165)
!2188 = !DILocation(line: 804, column: 37, scope: !2174, inlinedAt: !2187)
!2189 = !DILocation(line: 805, column: 21, scope: !2174, inlinedAt: !2187)
!2190 = !DILocation(line: 807, column: 18, scope: !2174, inlinedAt: !2187)
!2191 = !DILocation(line: 807, column: 24, scope: !2174, inlinedAt: !2187)
!2192 = !DILocation(line: 808, column: 72, scope: !2174, inlinedAt: !2187)
!2193 = !DILocation(line: 809, column: 53, scope: !2174, inlinedAt: !2187)
!2194 = !DILocation(line: 810, column: 49, scope: !2174, inlinedAt: !2187)
!2195 = !DILocation(line: 811, column: 49, scope: !2174, inlinedAt: !2187)
!2196 = !DILocation(line: 808, column: 20, scope: !2174, inlinedAt: !2187)
!2197 = !DILocation(line: 811, column: 62, scope: !2174, inlinedAt: !2187)
!2198 = !DILocation(line: 812, column: 15, scope: !2174, inlinedAt: !2187)
!2199 = !DILocation(line: 813, column: 60, scope: !2174, inlinedAt: !2187)
!2200 = !DILocation(line: 815, column: 32, scope: !2174, inlinedAt: !2187)
!2201 = !DILocation(line: 815, column: 47, scope: !2174, inlinedAt: !2187)
!2202 = !DILocation(line: 813, column: 3, scope: !2174, inlinedAt: !2187)
!2203 = !DILocation(line: 816, column: 9, scope: !2174, inlinedAt: !2187)
!2204 = !DILocation(line: 791, column: 3, scope: !2165)
!2205 = !DILocation(line: 0, scope: !2174)
!2206 = !DILocation(line: 804, column: 37, scope: !2174)
!2207 = !DILocation(line: 805, column: 21, scope: !2174)
!2208 = !DILocation(line: 807, column: 18, scope: !2174)
!2209 = !DILocation(line: 807, column: 27, scope: !2174)
!2210 = !DILocation(line: 807, column: 24, scope: !2174)
!2211 = !DILocation(line: 808, column: 72, scope: !2174)
!2212 = !DILocation(line: 809, column: 53, scope: !2174)
!2213 = !DILocation(line: 810, column: 49, scope: !2174)
!2214 = !DILocation(line: 811, column: 49, scope: !2174)
!2215 = !DILocation(line: 808, column: 20, scope: !2174)
!2216 = !DILocation(line: 811, column: 62, scope: !2174)
!2217 = !DILocation(line: 812, column: 15, scope: !2174)
!2218 = !DILocation(line: 813, column: 60, scope: !2174)
!2219 = !DILocation(line: 815, column: 32, scope: !2174)
!2220 = !DILocation(line: 815, column: 47, scope: !2174)
!2221 = !DILocation(line: 813, column: 3, scope: !2174)
!2222 = !DILocation(line: 816, column: 9, scope: !2174)
!2223 = !DILocation(line: 817, column: 7, scope: !2174)
!2224 = !DILocation(line: 818, column: 11, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2174, file: !245, line: 817, column: 7)
!2226 = !{!964, !964, i64 0}
!2227 = !DILocation(line: 818, column: 5, scope: !2225)
!2228 = !DILocation(line: 819, column: 3, scope: !2174)
!2229 = distinct !DISubprogram(name: "quotearg_free", scope: !245, file: !245, line: 837, type: !198, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2230)
!2230 = !{!2231, !2232}
!2231 = !DILocalVariable(name: "sv", scope: !2229, file: !245, line: 839, type: !304)
!2232 = !DILocalVariable(name: "i", scope: !2233, file: !245, line: 840, type: !39)
!2233 = distinct !DILexicalBlock(scope: !2229, file: !245, line: 840, column: 3)
!2234 = !DILocation(line: 839, column: 24, scope: !2229)
!2235 = !DILocation(line: 0, scope: !2229)
!2236 = !DILocation(line: 0, scope: !2233)
!2237 = !DILocation(line: 840, column: 21, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2233, file: !245, line: 840, column: 3)
!2239 = !DILocation(line: 840, column: 3, scope: !2233)
!2240 = !DILocation(line: 842, column: 13, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2229, file: !245, line: 842, column: 7)
!2242 = !{!2243, !444, i64 8}
!2243 = !{!"slotvec", !964, i64 0, !444, i64 8}
!2244 = !DILocation(line: 842, column: 17, scope: !2241)
!2245 = !DILocation(line: 842, column: 7, scope: !2229)
!2246 = !DILocation(line: 841, column: 17, scope: !2238)
!2247 = !DILocation(line: 841, column: 5, scope: !2238)
!2248 = !DILocation(line: 840, column: 32, scope: !2238)
!2249 = distinct !{!2249, !2239, !2250, !502}
!2250 = !DILocation(line: 841, column: 20, scope: !2233)
!2251 = !DILocation(line: 844, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2241, file: !245, line: 843, column: 5)
!2253 = !DILocation(line: 845, column: 21, scope: !2252)
!2254 = !{!2243, !964, i64 0}
!2255 = !DILocation(line: 846, column: 20, scope: !2252)
!2256 = !DILocation(line: 847, column: 5, scope: !2252)
!2257 = !DILocation(line: 848, column: 10, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2229, file: !245, line: 848, column: 7)
!2259 = !DILocation(line: 848, column: 7, scope: !2229)
!2260 = !DILocation(line: 850, column: 13, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2258, file: !245, line: 849, column: 5)
!2262 = !DILocation(line: 850, column: 7, scope: !2261)
!2263 = !DILocation(line: 851, column: 15, scope: !2261)
!2264 = !DILocation(line: 852, column: 5, scope: !2261)
!2265 = !DILocation(line: 853, column: 10, scope: !2229)
!2266 = !DILocation(line: 854, column: 1, scope: !2229)
!2267 = distinct !DISubprogram(name: "quotearg_n", scope: !245, file: !245, line: 919, type: !643, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2268)
!2268 = !{!2269, !2270}
!2269 = !DILocalVariable(name: "n", arg: 1, scope: !2267, file: !245, line: 919, type: !39)
!2270 = !DILocalVariable(name: "arg", arg: 2, scope: !2267, file: !245, line: 919, type: !44)
!2271 = !DILocation(line: 0, scope: !2267)
!2272 = !DILocation(line: 921, column: 10, scope: !2267)
!2273 = !DILocation(line: 921, column: 3, scope: !2267)
!2274 = distinct !DISubprogram(name: "quotearg_n_options", scope: !245, file: !245, line: 866, type: !2275, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!36, !39, !44, !41, !1501}
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2288, !2289, !2291, !2292, !2293}
!2278 = !DILocalVariable(name: "n", arg: 1, scope: !2274, file: !245, line: 866, type: !39)
!2279 = !DILocalVariable(name: "arg", arg: 2, scope: !2274, file: !245, line: 866, type: !44)
!2280 = !DILocalVariable(name: "argsize", arg: 3, scope: !2274, file: !245, line: 866, type: !41)
!2281 = !DILocalVariable(name: "options", arg: 4, scope: !2274, file: !245, line: 867, type: !1501)
!2282 = !DILocalVariable(name: "saved_errno", scope: !2274, file: !245, line: 869, type: !39)
!2283 = !DILocalVariable(name: "sv", scope: !2274, file: !245, line: 871, type: !304)
!2284 = !DILocalVariable(name: "nslots_max", scope: !2274, file: !245, line: 873, type: !39)
!2285 = !DILocalVariable(name: "preallocated", scope: !2286, file: !245, line: 879, type: !61)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !245, line: 878, column: 5)
!2287 = distinct !DILexicalBlock(scope: !2274, file: !245, line: 877, column: 7)
!2288 = !DILocalVariable(name: "new_nslots", scope: !2286, file: !245, line: 880, type: !387)
!2289 = !DILocalVariable(name: "size", scope: !2290, file: !245, line: 891, type: !41)
!2290 = distinct !DILexicalBlock(scope: !2274, file: !245, line: 890, column: 3)
!2291 = !DILocalVariable(name: "val", scope: !2290, file: !245, line: 892, type: !36)
!2292 = !DILocalVariable(name: "flags", scope: !2290, file: !245, line: 894, type: !39)
!2293 = !DILocalVariable(name: "qsize", scope: !2290, file: !245, line: 895, type: !41)
!2294 = !DILocation(line: 0, scope: !2274)
!2295 = !DILocation(line: 869, column: 21, scope: !2274)
!2296 = !DILocation(line: 871, column: 24, scope: !2274)
!2297 = !DILocation(line: 874, column: 17, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2274, file: !245, line: 874, column: 7)
!2299 = !DILocation(line: 875, column: 5, scope: !2298)
!2300 = !DILocation(line: 877, column: 7, scope: !2287)
!2301 = !DILocation(line: 877, column: 14, scope: !2287)
!2302 = !DILocation(line: 877, column: 7, scope: !2274)
!2303 = !DILocation(line: 879, column: 31, scope: !2286)
!2304 = !DILocation(line: 0, scope: !2286)
!2305 = !DILocation(line: 880, column: 7, scope: !2286)
!2306 = !DILocation(line: 880, column: 26, scope: !2286)
!2307 = !DILocation(line: 880, column: 13, scope: !2286)
!2308 = !DILocation(line: 882, column: 31, scope: !2286)
!2309 = !DILocation(line: 883, column: 33, scope: !2286)
!2310 = !DILocation(line: 883, column: 42, scope: !2286)
!2311 = !DILocation(line: 883, column: 31, scope: !2286)
!2312 = !DILocation(line: 882, column: 22, scope: !2286)
!2313 = !DILocation(line: 882, column: 15, scope: !2286)
!2314 = !DILocation(line: 884, column: 11, scope: !2286)
!2315 = !DILocation(line: 885, column: 15, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2286, file: !245, line: 884, column: 11)
!2317 = !{i64 0, i64 8, !2226, i64 8, i64 8, !443}
!2318 = !DILocation(line: 885, column: 9, scope: !2316)
!2319 = !DILocation(line: 886, column: 20, scope: !2286)
!2320 = !DILocation(line: 886, column: 18, scope: !2286)
!2321 = !DILocation(line: 886, column: 15, scope: !2286)
!2322 = !DILocation(line: 886, column: 32, scope: !2286)
!2323 = !DILocation(line: 886, column: 43, scope: !2286)
!2324 = !DILocation(line: 886, column: 53, scope: !2286)
!2325 = !DILocation(line: 0, scope: !1712, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 886, column: 7, scope: !2286)
!2327 = !DILocation(line: 59, column: 10, scope: !1712, inlinedAt: !2326)
!2328 = !DILocation(line: 887, column: 16, scope: !2286)
!2329 = !DILocation(line: 887, column: 14, scope: !2286)
!2330 = !DILocation(line: 888, column: 5, scope: !2287)
!2331 = !DILocation(line: 888, column: 5, scope: !2286)
!2332 = !DILocation(line: 891, column: 19, scope: !2290)
!2333 = !DILocation(line: 891, column: 25, scope: !2290)
!2334 = !DILocation(line: 0, scope: !2290)
!2335 = !DILocation(line: 892, column: 23, scope: !2290)
!2336 = !DILocation(line: 894, column: 26, scope: !2290)
!2337 = !DILocation(line: 894, column: 32, scope: !2290)
!2338 = !DILocation(line: 896, column: 55, scope: !2290)
!2339 = !DILocation(line: 897, column: 46, scope: !2290)
!2340 = !DILocation(line: 898, column: 55, scope: !2290)
!2341 = !DILocation(line: 899, column: 55, scope: !2290)
!2342 = !DILocation(line: 895, column: 20, scope: !2290)
!2343 = !DILocation(line: 901, column: 14, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2290, file: !245, line: 901, column: 9)
!2345 = !DILocation(line: 901, column: 9, scope: !2290)
!2346 = !DILocation(line: 903, column: 35, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2344, file: !245, line: 902, column: 7)
!2348 = !DILocation(line: 903, column: 20, scope: !2347)
!2349 = !DILocation(line: 904, column: 17, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2347, file: !245, line: 904, column: 13)
!2351 = !DILocation(line: 904, column: 13, scope: !2347)
!2352 = !DILocation(line: 905, column: 11, scope: !2350)
!2353 = !DILocation(line: 906, column: 27, scope: !2347)
!2354 = !DILocation(line: 906, column: 19, scope: !2347)
!2355 = !DILocation(line: 907, column: 69, scope: !2347)
!2356 = !DILocation(line: 909, column: 44, scope: !2347)
!2357 = !DILocation(line: 910, column: 44, scope: !2347)
!2358 = !DILocation(line: 907, column: 9, scope: !2347)
!2359 = !DILocation(line: 911, column: 7, scope: !2347)
!2360 = !DILocation(line: 913, column: 11, scope: !2290)
!2361 = !DILocation(line: 914, column: 5, scope: !2290)
!2362 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !245, file: !245, line: 925, type: !2363, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2365)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!36, !39, !44, !41}
!2365 = !{!2366, !2367, !2368}
!2366 = !DILocalVariable(name: "n", arg: 1, scope: !2362, file: !245, line: 925, type: !39)
!2367 = !DILocalVariable(name: "arg", arg: 2, scope: !2362, file: !245, line: 925, type: !44)
!2368 = !DILocalVariable(name: "argsize", arg: 3, scope: !2362, file: !245, line: 925, type: !41)
!2369 = !DILocation(line: 0, scope: !2362)
!2370 = !DILocation(line: 927, column: 10, scope: !2362)
!2371 = !DILocation(line: 927, column: 3, scope: !2362)
!2372 = distinct !DISubprogram(name: "quotearg", scope: !245, file: !245, line: 931, type: !647, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2373)
!2373 = !{!2374}
!2374 = !DILocalVariable(name: "arg", arg: 1, scope: !2372, file: !245, line: 931, type: !44)
!2375 = !DILocation(line: 0, scope: !2372)
!2376 = !DILocation(line: 0, scope: !2267, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 933, column: 10, scope: !2372)
!2378 = !DILocation(line: 921, column: 10, scope: !2267, inlinedAt: !2377)
!2379 = !DILocation(line: 933, column: 3, scope: !2372)
!2380 = distinct !DISubprogram(name: "quotearg_mem", scope: !245, file: !245, line: 937, type: !2381, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2383)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!36, !44, !41}
!2383 = !{!2384, !2385}
!2384 = !DILocalVariable(name: "arg", arg: 1, scope: !2380, file: !245, line: 937, type: !44)
!2385 = !DILocalVariable(name: "argsize", arg: 2, scope: !2380, file: !245, line: 937, type: !41)
!2386 = !DILocation(line: 0, scope: !2380)
!2387 = !DILocation(line: 0, scope: !2362, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 939, column: 10, scope: !2380)
!2389 = !DILocation(line: 927, column: 10, scope: !2362, inlinedAt: !2388)
!2390 = !DILocation(line: 939, column: 3, scope: !2380)
!2391 = distinct !DISubprogram(name: "quotearg_n_style", scope: !245, file: !245, line: 943, type: !2392, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!36, !39, !5, !44}
!2394 = !{!2395, !2396, !2397, !2398}
!2395 = !DILocalVariable(name: "n", arg: 1, scope: !2391, file: !245, line: 943, type: !39)
!2396 = !DILocalVariable(name: "s", arg: 2, scope: !2391, file: !245, line: 943, type: !5)
!2397 = !DILocalVariable(name: "arg", arg: 3, scope: !2391, file: !245, line: 943, type: !44)
!2398 = !DILocalVariable(name: "o", scope: !2391, file: !245, line: 945, type: !1502)
!2399 = !DILocation(line: 0, scope: !2391)
!2400 = !DILocation(line: 945, column: 3, scope: !2391)
!2401 = !DILocation(line: 945, column: 32, scope: !2391)
!2402 = !{!2403}
!2403 = distinct !{!2403, !2404, !"quoting_options_from_style: argument 0"}
!2404 = distinct !{!2404, !"quoting_options_from_style"}
!2405 = !DILocation(line: 945, column: 36, scope: !2391)
!2406 = !DILocalVariable(name: "style", arg: 1, scope: !2407, file: !245, line: 183, type: !5)
!2407 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !245, file: !245, line: 183, type: !2408, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!262, !5}
!2410 = !{!2406, !2411}
!2411 = !DILocalVariable(name: "o", scope: !2407, file: !245, line: 185, type: !262)
!2412 = !DILocation(line: 0, scope: !2407, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 945, column: 36, scope: !2391)
!2414 = !DILocation(line: 185, column: 26, scope: !2407, inlinedAt: !2413)
!2415 = !DILocation(line: 186, column: 13, scope: !2416, inlinedAt: !2413)
!2416 = distinct !DILexicalBlock(scope: !2407, file: !245, line: 186, column: 7)
!2417 = !DILocation(line: 186, column: 7, scope: !2407, inlinedAt: !2413)
!2418 = !DILocation(line: 187, column: 5, scope: !2416, inlinedAt: !2413)
!2419 = !DILocation(line: 188, column: 5, scope: !2407, inlinedAt: !2413)
!2420 = !DILocation(line: 188, column: 11, scope: !2407, inlinedAt: !2413)
!2421 = !DILocation(line: 946, column: 10, scope: !2391)
!2422 = !DILocation(line: 947, column: 1, scope: !2391)
!2423 = !DILocation(line: 946, column: 3, scope: !2391)
!2424 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !245, file: !245, line: 950, type: !2425, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!36, !39, !5, !44, !41}
!2427 = !{!2428, !2429, !2430, !2431, !2432}
!2428 = !DILocalVariable(name: "n", arg: 1, scope: !2424, file: !245, line: 950, type: !39)
!2429 = !DILocalVariable(name: "s", arg: 2, scope: !2424, file: !245, line: 950, type: !5)
!2430 = !DILocalVariable(name: "arg", arg: 3, scope: !2424, file: !245, line: 951, type: !44)
!2431 = !DILocalVariable(name: "argsize", arg: 4, scope: !2424, file: !245, line: 951, type: !41)
!2432 = !DILocalVariable(name: "o", scope: !2424, file: !245, line: 953, type: !1502)
!2433 = !DILocation(line: 0, scope: !2424)
!2434 = !DILocation(line: 953, column: 3, scope: !2424)
!2435 = !DILocation(line: 953, column: 32, scope: !2424)
!2436 = !{!2437}
!2437 = distinct !{!2437, !2438, !"quoting_options_from_style: argument 0"}
!2438 = distinct !{!2438, !"quoting_options_from_style"}
!2439 = !DILocation(line: 953, column: 36, scope: !2424)
!2440 = !DILocation(line: 0, scope: !2407, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 953, column: 36, scope: !2424)
!2442 = !DILocation(line: 185, column: 26, scope: !2407, inlinedAt: !2441)
!2443 = !DILocation(line: 186, column: 13, scope: !2416, inlinedAt: !2441)
!2444 = !DILocation(line: 186, column: 7, scope: !2407, inlinedAt: !2441)
!2445 = !DILocation(line: 187, column: 5, scope: !2416, inlinedAt: !2441)
!2446 = !DILocation(line: 188, column: 5, scope: !2407, inlinedAt: !2441)
!2447 = !DILocation(line: 188, column: 11, scope: !2407, inlinedAt: !2441)
!2448 = !DILocation(line: 954, column: 10, scope: !2424)
!2449 = !DILocation(line: 955, column: 1, scope: !2424)
!2450 = !DILocation(line: 954, column: 3, scope: !2424)
!2451 = distinct !DISubprogram(name: "quotearg_style", scope: !245, file: !245, line: 958, type: !2452, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!36, !5, !44}
!2454 = !{!2455, !2456}
!2455 = !DILocalVariable(name: "s", arg: 1, scope: !2451, file: !245, line: 958, type: !5)
!2456 = !DILocalVariable(name: "arg", arg: 2, scope: !2451, file: !245, line: 958, type: !44)
!2457 = !DILocation(line: 0, scope: !2451)
!2458 = !DILocation(line: 0, scope: !2391, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 960, column: 10, scope: !2451)
!2460 = !DILocation(line: 945, column: 3, scope: !2391, inlinedAt: !2459)
!2461 = !DILocation(line: 945, column: 32, scope: !2391, inlinedAt: !2459)
!2462 = !{!2463}
!2463 = distinct !{!2463, !2464, !"quoting_options_from_style: argument 0"}
!2464 = distinct !{!2464, !"quoting_options_from_style"}
!2465 = !DILocation(line: 945, column: 36, scope: !2391, inlinedAt: !2459)
!2466 = !DILocation(line: 0, scope: !2407, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 945, column: 36, scope: !2391, inlinedAt: !2459)
!2468 = !DILocation(line: 185, column: 26, scope: !2407, inlinedAt: !2467)
!2469 = !DILocation(line: 186, column: 13, scope: !2416, inlinedAt: !2467)
!2470 = !DILocation(line: 186, column: 7, scope: !2407, inlinedAt: !2467)
!2471 = !DILocation(line: 187, column: 5, scope: !2416, inlinedAt: !2467)
!2472 = !DILocation(line: 188, column: 5, scope: !2407, inlinedAt: !2467)
!2473 = !DILocation(line: 188, column: 11, scope: !2407, inlinedAt: !2467)
!2474 = !DILocation(line: 946, column: 10, scope: !2391, inlinedAt: !2459)
!2475 = !DILocation(line: 947, column: 1, scope: !2391, inlinedAt: !2459)
!2476 = !DILocation(line: 960, column: 3, scope: !2451)
!2477 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !245, file: !245, line: 964, type: !2478, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!36, !5, !44, !41}
!2480 = !{!2481, !2482, !2483}
!2481 = !DILocalVariable(name: "s", arg: 1, scope: !2477, file: !245, line: 964, type: !5)
!2482 = !DILocalVariable(name: "arg", arg: 2, scope: !2477, file: !245, line: 964, type: !44)
!2483 = !DILocalVariable(name: "argsize", arg: 3, scope: !2477, file: !245, line: 964, type: !41)
!2484 = !DILocation(line: 0, scope: !2477)
!2485 = !DILocation(line: 0, scope: !2424, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 966, column: 10, scope: !2477)
!2487 = !DILocation(line: 953, column: 3, scope: !2424, inlinedAt: !2486)
!2488 = !DILocation(line: 953, column: 32, scope: !2424, inlinedAt: !2486)
!2489 = !{!2490}
!2490 = distinct !{!2490, !2491, !"quoting_options_from_style: argument 0"}
!2491 = distinct !{!2491, !"quoting_options_from_style"}
!2492 = !DILocation(line: 953, column: 36, scope: !2424, inlinedAt: !2486)
!2493 = !DILocation(line: 0, scope: !2407, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 953, column: 36, scope: !2424, inlinedAt: !2486)
!2495 = !DILocation(line: 185, column: 26, scope: !2407, inlinedAt: !2494)
!2496 = !DILocation(line: 186, column: 13, scope: !2416, inlinedAt: !2494)
!2497 = !DILocation(line: 186, column: 7, scope: !2407, inlinedAt: !2494)
!2498 = !DILocation(line: 187, column: 5, scope: !2416, inlinedAt: !2494)
!2499 = !DILocation(line: 188, column: 5, scope: !2407, inlinedAt: !2494)
!2500 = !DILocation(line: 188, column: 11, scope: !2407, inlinedAt: !2494)
!2501 = !DILocation(line: 954, column: 10, scope: !2424, inlinedAt: !2486)
!2502 = !DILocation(line: 955, column: 1, scope: !2424, inlinedAt: !2486)
!2503 = !DILocation(line: 966, column: 3, scope: !2477)
!2504 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !245, file: !245, line: 970, type: !2505, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!36, !44, !41, !37}
!2507 = !{!2508, !2509, !2510, !2511}
!2508 = !DILocalVariable(name: "arg", arg: 1, scope: !2504, file: !245, line: 970, type: !44)
!2509 = !DILocalVariable(name: "argsize", arg: 2, scope: !2504, file: !245, line: 970, type: !41)
!2510 = !DILocalVariable(name: "ch", arg: 3, scope: !2504, file: !245, line: 970, type: !37)
!2511 = !DILocalVariable(name: "options", scope: !2504, file: !245, line: 972, type: !262)
!2512 = !DILocation(line: 0, scope: !2504)
!2513 = !DILocation(line: 972, column: 3, scope: !2504)
!2514 = !DILocation(line: 972, column: 26, scope: !2504)
!2515 = !DILocation(line: 973, column: 13, scope: !2504)
!2516 = !{i64 0, i64 4, !544, i64 4, i64 4, !535, i64 8, i64 32, !544, i64 40, i64 8, !443, i64 48, i64 8, !443}
!2517 = !DILocation(line: 0, scope: !1522, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 974, column: 3, scope: !2504)
!2519 = !DILocation(line: 147, column: 62, scope: !1522, inlinedAt: !2518)
!2520 = !DILocation(line: 147, column: 57, scope: !1522, inlinedAt: !2518)
!2521 = !DILocation(line: 148, column: 15, scope: !1522, inlinedAt: !2518)
!2522 = !DILocation(line: 149, column: 21, scope: !1522, inlinedAt: !2518)
!2523 = !DILocation(line: 149, column: 24, scope: !1522, inlinedAt: !2518)
!2524 = !DILocation(line: 149, column: 34, scope: !1522, inlinedAt: !2518)
!2525 = !DILocation(line: 150, column: 19, scope: !1522, inlinedAt: !2518)
!2526 = !DILocation(line: 150, column: 24, scope: !1522, inlinedAt: !2518)
!2527 = !DILocation(line: 150, column: 6, scope: !1522, inlinedAt: !2518)
!2528 = !DILocation(line: 975, column: 10, scope: !2504)
!2529 = !DILocation(line: 976, column: 1, scope: !2504)
!2530 = !DILocation(line: 975, column: 3, scope: !2504)
!2531 = distinct !DISubprogram(name: "quotearg_char", scope: !245, file: !245, line: 979, type: !2532, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!36, !44, !37}
!2534 = !{!2535, !2536}
!2535 = !DILocalVariable(name: "arg", arg: 1, scope: !2531, file: !245, line: 979, type: !44)
!2536 = !DILocalVariable(name: "ch", arg: 2, scope: !2531, file: !245, line: 979, type: !37)
!2537 = !DILocation(line: 0, scope: !2531)
!2538 = !DILocation(line: 0, scope: !2504, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 981, column: 10, scope: !2531)
!2540 = !DILocation(line: 972, column: 3, scope: !2504, inlinedAt: !2539)
!2541 = !DILocation(line: 972, column: 26, scope: !2504, inlinedAt: !2539)
!2542 = !DILocation(line: 973, column: 13, scope: !2504, inlinedAt: !2539)
!2543 = !DILocation(line: 0, scope: !1522, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 974, column: 3, scope: !2504, inlinedAt: !2539)
!2545 = !DILocation(line: 147, column: 62, scope: !1522, inlinedAt: !2544)
!2546 = !DILocation(line: 147, column: 57, scope: !1522, inlinedAt: !2544)
!2547 = !DILocation(line: 148, column: 15, scope: !1522, inlinedAt: !2544)
!2548 = !DILocation(line: 149, column: 21, scope: !1522, inlinedAt: !2544)
!2549 = !DILocation(line: 149, column: 24, scope: !1522, inlinedAt: !2544)
!2550 = !DILocation(line: 149, column: 34, scope: !1522, inlinedAt: !2544)
!2551 = !DILocation(line: 150, column: 19, scope: !1522, inlinedAt: !2544)
!2552 = !DILocation(line: 150, column: 24, scope: !1522, inlinedAt: !2544)
!2553 = !DILocation(line: 150, column: 6, scope: !1522, inlinedAt: !2544)
!2554 = !DILocation(line: 975, column: 10, scope: !2504, inlinedAt: !2539)
!2555 = !DILocation(line: 976, column: 1, scope: !2504, inlinedAt: !2539)
!2556 = !DILocation(line: 981, column: 3, scope: !2531)
!2557 = distinct !DISubprogram(name: "quotearg_colon", scope: !245, file: !245, line: 985, type: !647, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2558)
!2558 = !{!2559}
!2559 = !DILocalVariable(name: "arg", arg: 1, scope: !2557, file: !245, line: 985, type: !44)
!2560 = !DILocation(line: 0, scope: !2557)
!2561 = !DILocation(line: 0, scope: !2531, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 987, column: 10, scope: !2557)
!2563 = !DILocation(line: 0, scope: !2504, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 981, column: 10, scope: !2531, inlinedAt: !2562)
!2565 = !DILocation(line: 972, column: 3, scope: !2504, inlinedAt: !2564)
!2566 = !DILocation(line: 972, column: 26, scope: !2504, inlinedAt: !2564)
!2567 = !DILocation(line: 973, column: 13, scope: !2504, inlinedAt: !2564)
!2568 = !DILocation(line: 0, scope: !1522, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 974, column: 3, scope: !2504, inlinedAt: !2564)
!2570 = !DILocation(line: 147, column: 57, scope: !1522, inlinedAt: !2569)
!2571 = !DILocation(line: 149, column: 21, scope: !1522, inlinedAt: !2569)
!2572 = !DILocation(line: 150, column: 6, scope: !1522, inlinedAt: !2569)
!2573 = !DILocation(line: 975, column: 10, scope: !2504, inlinedAt: !2564)
!2574 = !DILocation(line: 976, column: 1, scope: !2504, inlinedAt: !2564)
!2575 = !DILocation(line: 987, column: 3, scope: !2557)
!2576 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !245, file: !245, line: 991, type: !2381, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2577)
!2577 = !{!2578, !2579}
!2578 = !DILocalVariable(name: "arg", arg: 1, scope: !2576, file: !245, line: 991, type: !44)
!2579 = !DILocalVariable(name: "argsize", arg: 2, scope: !2576, file: !245, line: 991, type: !41)
!2580 = !DILocation(line: 0, scope: !2576)
!2581 = !DILocation(line: 0, scope: !2504, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 993, column: 10, scope: !2576)
!2583 = !DILocation(line: 972, column: 3, scope: !2504, inlinedAt: !2582)
!2584 = !DILocation(line: 972, column: 26, scope: !2504, inlinedAt: !2582)
!2585 = !DILocation(line: 973, column: 13, scope: !2504, inlinedAt: !2582)
!2586 = !DILocation(line: 0, scope: !1522, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 974, column: 3, scope: !2504, inlinedAt: !2582)
!2588 = !DILocation(line: 147, column: 57, scope: !1522, inlinedAt: !2587)
!2589 = !DILocation(line: 149, column: 21, scope: !1522, inlinedAt: !2587)
!2590 = !DILocation(line: 150, column: 6, scope: !1522, inlinedAt: !2587)
!2591 = !DILocation(line: 975, column: 10, scope: !2504, inlinedAt: !2582)
!2592 = !DILocation(line: 976, column: 1, scope: !2504, inlinedAt: !2582)
!2593 = !DILocation(line: 993, column: 3, scope: !2576)
!2594 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !245, file: !245, line: 997, type: !2392, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2595)
!2595 = !{!2596, !2597, !2598, !2599}
!2596 = !DILocalVariable(name: "n", arg: 1, scope: !2594, file: !245, line: 997, type: !39)
!2597 = !DILocalVariable(name: "s", arg: 2, scope: !2594, file: !245, line: 997, type: !5)
!2598 = !DILocalVariable(name: "arg", arg: 3, scope: !2594, file: !245, line: 997, type: !44)
!2599 = !DILocalVariable(name: "options", scope: !2594, file: !245, line: 999, type: !262)
!2600 = !DILocation(line: 0, scope: !2594)
!2601 = !DILocation(line: 999, column: 3, scope: !2594)
!2602 = !DILocation(line: 999, column: 26, scope: !2594)
!2603 = !DILocation(line: 0, scope: !2407, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 1000, column: 13, scope: !2594)
!2605 = !DILocation(line: 186, column: 13, scope: !2416, inlinedAt: !2604)
!2606 = !DILocation(line: 186, column: 7, scope: !2407, inlinedAt: !2604)
!2607 = !DILocation(line: 187, column: 5, scope: !2416, inlinedAt: !2604)
!2608 = !{!2609}
!2609 = distinct !{!2609, !2610, !"quoting_options_from_style: argument 0"}
!2610 = distinct !{!2610, !"quoting_options_from_style"}
!2611 = !DILocation(line: 1000, column: 13, scope: !2594)
!2612 = !DILocation(line: 0, scope: !1522, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 1001, column: 3, scope: !2594)
!2614 = !DILocation(line: 147, column: 57, scope: !1522, inlinedAt: !2613)
!2615 = !DILocation(line: 149, column: 21, scope: !1522, inlinedAt: !2613)
!2616 = !DILocation(line: 150, column: 6, scope: !1522, inlinedAt: !2613)
!2617 = !DILocation(line: 1002, column: 10, scope: !2594)
!2618 = !DILocation(line: 1003, column: 1, scope: !2594)
!2619 = !DILocation(line: 1002, column: 3, scope: !2594)
!2620 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !245, file: !245, line: 1006, type: !2621, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2623)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!36, !39, !44, !44, !44}
!2623 = !{!2624, !2625, !2626, !2627}
!2624 = !DILocalVariable(name: "n", arg: 1, scope: !2620, file: !245, line: 1006, type: !39)
!2625 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2620, file: !245, line: 1006, type: !44)
!2626 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2620, file: !245, line: 1007, type: !44)
!2627 = !DILocalVariable(name: "arg", arg: 4, scope: !2620, file: !245, line: 1007, type: !44)
!2628 = !DILocation(line: 0, scope: !2620)
!2629 = !DILocalVariable(name: "n", arg: 1, scope: !2630, file: !245, line: 1014, type: !39)
!2630 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !245, file: !245, line: 1014, type: !2631, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!36, !39, !44, !44, !44, !41}
!2633 = !{!2629, !2634, !2635, !2636, !2637, !2638}
!2634 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2630, file: !245, line: 1014, type: !44)
!2635 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2630, file: !245, line: 1015, type: !44)
!2636 = !DILocalVariable(name: "arg", arg: 4, scope: !2630, file: !245, line: 1016, type: !44)
!2637 = !DILocalVariable(name: "argsize", arg: 5, scope: !2630, file: !245, line: 1016, type: !41)
!2638 = !DILocalVariable(name: "o", scope: !2630, file: !245, line: 1018, type: !262)
!2639 = !DILocation(line: 0, scope: !2630, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 1009, column: 10, scope: !2620)
!2641 = !DILocation(line: 1018, column: 3, scope: !2630, inlinedAt: !2640)
!2642 = !DILocation(line: 1018, column: 26, scope: !2630, inlinedAt: !2640)
!2643 = !DILocation(line: 1018, column: 30, scope: !2630, inlinedAt: !2640)
!2644 = !DILocation(line: 0, scope: !1562, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 1019, column: 3, scope: !2630, inlinedAt: !2640)
!2646 = !DILocation(line: 174, column: 6, scope: !1562, inlinedAt: !2645)
!2647 = !DILocation(line: 174, column: 12, scope: !1562, inlinedAt: !2645)
!2648 = !DILocation(line: 175, column: 8, scope: !1576, inlinedAt: !2645)
!2649 = !DILocation(line: 175, column: 19, scope: !1576, inlinedAt: !2645)
!2650 = !DILocation(line: 176, column: 5, scope: !1576, inlinedAt: !2645)
!2651 = !DILocation(line: 177, column: 6, scope: !1562, inlinedAt: !2645)
!2652 = !DILocation(line: 177, column: 17, scope: !1562, inlinedAt: !2645)
!2653 = !DILocation(line: 178, column: 6, scope: !1562, inlinedAt: !2645)
!2654 = !DILocation(line: 178, column: 18, scope: !1562, inlinedAt: !2645)
!2655 = !DILocation(line: 1020, column: 10, scope: !2630, inlinedAt: !2640)
!2656 = !DILocation(line: 1021, column: 1, scope: !2630, inlinedAt: !2640)
!2657 = !DILocation(line: 1009, column: 3, scope: !2620)
!2658 = !DILocation(line: 0, scope: !2630)
!2659 = !DILocation(line: 1018, column: 3, scope: !2630)
!2660 = !DILocation(line: 1018, column: 26, scope: !2630)
!2661 = !DILocation(line: 1018, column: 30, scope: !2630)
!2662 = !DILocation(line: 0, scope: !1562, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 1019, column: 3, scope: !2630)
!2664 = !DILocation(line: 174, column: 6, scope: !1562, inlinedAt: !2663)
!2665 = !DILocation(line: 174, column: 12, scope: !1562, inlinedAt: !2663)
!2666 = !DILocation(line: 175, column: 8, scope: !1576, inlinedAt: !2663)
!2667 = !DILocation(line: 175, column: 19, scope: !1576, inlinedAt: !2663)
!2668 = !DILocation(line: 176, column: 5, scope: !1576, inlinedAt: !2663)
!2669 = !DILocation(line: 177, column: 6, scope: !1562, inlinedAt: !2663)
!2670 = !DILocation(line: 177, column: 17, scope: !1562, inlinedAt: !2663)
!2671 = !DILocation(line: 178, column: 6, scope: !1562, inlinedAt: !2663)
!2672 = !DILocation(line: 178, column: 18, scope: !1562, inlinedAt: !2663)
!2673 = !DILocation(line: 1020, column: 10, scope: !2630)
!2674 = !DILocation(line: 1021, column: 1, scope: !2630)
!2675 = !DILocation(line: 1020, column: 3, scope: !2630)
!2676 = distinct !DISubprogram(name: "quotearg_custom", scope: !245, file: !245, line: 1024, type: !2677, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!36, !44, !44, !44}
!2679 = !{!2680, !2681, !2682}
!2680 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2676, file: !245, line: 1024, type: !44)
!2681 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2676, file: !245, line: 1024, type: !44)
!2682 = !DILocalVariable(name: "arg", arg: 3, scope: !2676, file: !245, line: 1025, type: !44)
!2683 = !DILocation(line: 0, scope: !2676)
!2684 = !DILocation(line: 0, scope: !2620, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 1027, column: 10, scope: !2676)
!2686 = !DILocation(line: 0, scope: !2630, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 1009, column: 10, scope: !2620, inlinedAt: !2685)
!2688 = !DILocation(line: 1018, column: 3, scope: !2630, inlinedAt: !2687)
!2689 = !DILocation(line: 1018, column: 26, scope: !2630, inlinedAt: !2687)
!2690 = !DILocation(line: 1018, column: 30, scope: !2630, inlinedAt: !2687)
!2691 = !DILocation(line: 0, scope: !1562, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 1019, column: 3, scope: !2630, inlinedAt: !2687)
!2693 = !DILocation(line: 174, column: 6, scope: !1562, inlinedAt: !2692)
!2694 = !DILocation(line: 174, column: 12, scope: !1562, inlinedAt: !2692)
!2695 = !DILocation(line: 175, column: 8, scope: !1576, inlinedAt: !2692)
!2696 = !DILocation(line: 175, column: 19, scope: !1576, inlinedAt: !2692)
!2697 = !DILocation(line: 176, column: 5, scope: !1576, inlinedAt: !2692)
!2698 = !DILocation(line: 177, column: 6, scope: !1562, inlinedAt: !2692)
!2699 = !DILocation(line: 177, column: 17, scope: !1562, inlinedAt: !2692)
!2700 = !DILocation(line: 178, column: 6, scope: !1562, inlinedAt: !2692)
!2701 = !DILocation(line: 178, column: 18, scope: !1562, inlinedAt: !2692)
!2702 = !DILocation(line: 1020, column: 10, scope: !2630, inlinedAt: !2687)
!2703 = !DILocation(line: 1021, column: 1, scope: !2630, inlinedAt: !2687)
!2704 = !DILocation(line: 1027, column: 3, scope: !2676)
!2705 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !245, file: !245, line: 1031, type: !2706, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2708)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!36, !44, !44, !44, !41}
!2708 = !{!2709, !2710, !2711, !2712}
!2709 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2705, file: !245, line: 1031, type: !44)
!2710 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2705, file: !245, line: 1031, type: !44)
!2711 = !DILocalVariable(name: "arg", arg: 3, scope: !2705, file: !245, line: 1032, type: !44)
!2712 = !DILocalVariable(name: "argsize", arg: 4, scope: !2705, file: !245, line: 1032, type: !41)
!2713 = !DILocation(line: 0, scope: !2705)
!2714 = !DILocation(line: 0, scope: !2630, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 1034, column: 10, scope: !2705)
!2716 = !DILocation(line: 1018, column: 3, scope: !2630, inlinedAt: !2715)
!2717 = !DILocation(line: 1018, column: 26, scope: !2630, inlinedAt: !2715)
!2718 = !DILocation(line: 1018, column: 30, scope: !2630, inlinedAt: !2715)
!2719 = !DILocation(line: 0, scope: !1562, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 1019, column: 3, scope: !2630, inlinedAt: !2715)
!2721 = !DILocation(line: 174, column: 6, scope: !1562, inlinedAt: !2720)
!2722 = !DILocation(line: 174, column: 12, scope: !1562, inlinedAt: !2720)
!2723 = !DILocation(line: 175, column: 8, scope: !1576, inlinedAt: !2720)
!2724 = !DILocation(line: 175, column: 19, scope: !1576, inlinedAt: !2720)
!2725 = !DILocation(line: 176, column: 5, scope: !1576, inlinedAt: !2720)
!2726 = !DILocation(line: 177, column: 6, scope: !1562, inlinedAt: !2720)
!2727 = !DILocation(line: 177, column: 17, scope: !1562, inlinedAt: !2720)
!2728 = !DILocation(line: 178, column: 6, scope: !1562, inlinedAt: !2720)
!2729 = !DILocation(line: 178, column: 18, scope: !1562, inlinedAt: !2720)
!2730 = !DILocation(line: 1020, column: 10, scope: !2630, inlinedAt: !2715)
!2731 = !DILocation(line: 1021, column: 1, scope: !2630, inlinedAt: !2715)
!2732 = !DILocation(line: 1034, column: 3, scope: !2705)
!2733 = distinct !DISubprogram(name: "quote_n_mem", scope: !245, file: !245, line: 1049, type: !2734, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2736)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!44, !39, !44, !41}
!2736 = !{!2737, !2738, !2739}
!2737 = !DILocalVariable(name: "n", arg: 1, scope: !2733, file: !245, line: 1049, type: !39)
!2738 = !DILocalVariable(name: "arg", arg: 2, scope: !2733, file: !245, line: 1049, type: !44)
!2739 = !DILocalVariable(name: "argsize", arg: 3, scope: !2733, file: !245, line: 1049, type: !41)
!2740 = !DILocation(line: 0, scope: !2733)
!2741 = !DILocation(line: 1051, column: 10, scope: !2733)
!2742 = !DILocation(line: 1051, column: 3, scope: !2733)
!2743 = distinct !DISubprogram(name: "quote_mem", scope: !245, file: !245, line: 1055, type: !2744, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!44, !44, !41}
!2746 = !{!2747, !2748}
!2747 = !DILocalVariable(name: "arg", arg: 1, scope: !2743, file: !245, line: 1055, type: !44)
!2748 = !DILocalVariable(name: "argsize", arg: 2, scope: !2743, file: !245, line: 1055, type: !41)
!2749 = !DILocation(line: 0, scope: !2743)
!2750 = !DILocation(line: 0, scope: !2733, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 1057, column: 10, scope: !2743)
!2752 = !DILocation(line: 1051, column: 10, scope: !2733, inlinedAt: !2751)
!2753 = !DILocation(line: 1057, column: 3, scope: !2743)
!2754 = distinct !DISubprogram(name: "quote_n", scope: !245, file: !245, line: 1061, type: !2755, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!44, !39, !44}
!2757 = !{!2758, !2759}
!2758 = !DILocalVariable(name: "n", arg: 1, scope: !2754, file: !245, line: 1061, type: !39)
!2759 = !DILocalVariable(name: "arg", arg: 2, scope: !2754, file: !245, line: 1061, type: !44)
!2760 = !DILocation(line: 0, scope: !2754)
!2761 = !DILocation(line: 0, scope: !2733, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 1063, column: 10, scope: !2754)
!2763 = !DILocation(line: 1051, column: 10, scope: !2733, inlinedAt: !2762)
!2764 = !DILocation(line: 1063, column: 3, scope: !2754)
!2765 = distinct !DISubprogram(name: "quote", scope: !245, file: !245, line: 1067, type: !2766, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!44, !44}
!2768 = !{!2769}
!2769 = !DILocalVariable(name: "arg", arg: 1, scope: !2765, file: !245, line: 1067, type: !44)
!2770 = !DILocation(line: 0, scope: !2765)
!2771 = !DILocation(line: 0, scope: !2754, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 1069, column: 10, scope: !2765)
!2773 = !DILocation(line: 0, scope: !2733, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 1063, column: 10, scope: !2754, inlinedAt: !2772)
!2775 = !DILocation(line: 1051, column: 10, scope: !2733, inlinedAt: !2774)
!2776 = !DILocation(line: 1069, column: 3, scope: !2765)
!2777 = distinct !DISubprogram(name: "version_etc_arn", scope: !361, file: !361, line: 61, type: !2778, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2815)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{null, !2780, !44, !44, !44, !2814, !41}
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 7, baseType: !2782)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 49, size: 1728, elements: !2783)
!2783 = !{!2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2782, file: !78, line: 51, baseType: !39, size: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2782, file: !78, line: 54, baseType: !36, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2782, file: !78, line: 55, baseType: !36, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2782, file: !78, line: 56, baseType: !36, size: 64, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2782, file: !78, line: 57, baseType: !36, size: 64, offset: 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2782, file: !78, line: 58, baseType: !36, size: 64, offset: 320)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2782, file: !78, line: 59, baseType: !36, size: 64, offset: 384)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2782, file: !78, line: 60, baseType: !36, size: 64, offset: 448)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2782, file: !78, line: 61, baseType: !36, size: 64, offset: 512)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2782, file: !78, line: 64, baseType: !36, size: 64, offset: 576)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2782, file: !78, line: 65, baseType: !36, size: 64, offset: 640)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2782, file: !78, line: 66, baseType: !36, size: 64, offset: 704)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2782, file: !78, line: 68, baseType: !93, size: 64, offset: 768)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2782, file: !78, line: 70, baseType: !2798, size: 64, offset: 832)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2782, file: !78, line: 72, baseType: !39, size: 32, offset: 896)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2782, file: !78, line: 73, baseType: !39, size: 32, offset: 928)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2782, file: !78, line: 74, baseType: !100, size: 64, offset: 960)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2782, file: !78, line: 77, baseType: !40, size: 16, offset: 1024)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2782, file: !78, line: 78, baseType: !105, size: 8, offset: 1040)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2782, file: !78, line: 79, baseType: !107, size: 8, offset: 1048)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2782, file: !78, line: 81, baseType: !111, size: 64, offset: 1088)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2782, file: !78, line: 89, baseType: !114, size: 64, offset: 1152)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2782, file: !78, line: 91, baseType: !116, size: 64, offset: 1216)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2782, file: !78, line: 92, baseType: !119, size: 64, offset: 1280)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2782, file: !78, line: 93, baseType: !2798, size: 64, offset: 1344)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2782, file: !78, line: 94, baseType: !38, size: 64, offset: 1408)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2782, file: !78, line: 95, baseType: !41, size: 64, offset: 1472)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2782, file: !78, line: 96, baseType: !39, size: 32, offset: 1536)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2782, file: !78, line: 98, baseType: !126, size: 160, offset: 1568)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!2815 = !{!2816, !2817, !2818, !2819, !2820, !2821}
!2816 = !DILocalVariable(name: "stream", arg: 1, scope: !2777, file: !361, line: 61, type: !2780)
!2817 = !DILocalVariable(name: "command_name", arg: 2, scope: !2777, file: !361, line: 62, type: !44)
!2818 = !DILocalVariable(name: "package", arg: 3, scope: !2777, file: !361, line: 62, type: !44)
!2819 = !DILocalVariable(name: "version", arg: 4, scope: !2777, file: !361, line: 63, type: !44)
!2820 = !DILocalVariable(name: "authors", arg: 5, scope: !2777, file: !361, line: 64, type: !2814)
!2821 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2777, file: !361, line: 64, type: !41)
!2822 = !DILocation(line: 0, scope: !2777)
!2823 = !DILocation(line: 66, column: 7, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2777, file: !361, line: 66, column: 7)
!2825 = !DILocation(line: 66, column: 7, scope: !2777)
!2826 = !DILocation(line: 67, column: 5, scope: !2824)
!2827 = !DILocation(line: 69, column: 5, scope: !2824)
!2828 = !DILocation(line: 83, column: 3, scope: !2777)
!2829 = !DILocation(line: 85, column: 3, scope: !2777)
!2830 = !DILocation(line: 88, column: 3, scope: !2777)
!2831 = !DILocation(line: 95, column: 3, scope: !2777)
!2832 = !DILocation(line: 97, column: 3, scope: !2777)
!2833 = !DILocation(line: 105, column: 7, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2777, file: !361, line: 98, column: 5)
!2835 = !DILocation(line: 106, column: 7, scope: !2834)
!2836 = !DILocation(line: 109, column: 7, scope: !2834)
!2837 = !DILocation(line: 110, column: 7, scope: !2834)
!2838 = !DILocation(line: 113, column: 7, scope: !2834)
!2839 = !DILocation(line: 115, column: 7, scope: !2834)
!2840 = !DILocation(line: 120, column: 7, scope: !2834)
!2841 = !DILocation(line: 122, column: 7, scope: !2834)
!2842 = !DILocation(line: 127, column: 7, scope: !2834)
!2843 = !DILocation(line: 129, column: 7, scope: !2834)
!2844 = !DILocation(line: 134, column: 7, scope: !2834)
!2845 = !DILocation(line: 137, column: 7, scope: !2834)
!2846 = !DILocation(line: 142, column: 7, scope: !2834)
!2847 = !DILocation(line: 145, column: 7, scope: !2834)
!2848 = !DILocation(line: 150, column: 7, scope: !2834)
!2849 = !DILocation(line: 154, column: 7, scope: !2834)
!2850 = !DILocation(line: 159, column: 7, scope: !2834)
!2851 = !DILocation(line: 163, column: 7, scope: !2834)
!2852 = !DILocation(line: 170, column: 7, scope: !2834)
!2853 = !DILocation(line: 174, column: 7, scope: !2834)
!2854 = !DILocation(line: 176, column: 1, scope: !2777)
!2855 = distinct !DISubprogram(name: "version_etc_ar", scope: !361, file: !361, line: 183, type: !2856, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{null, !2780, !44, !44, !44, !2814}
!2858 = !{!2859, !2860, !2861, !2862, !2863, !2864}
!2859 = !DILocalVariable(name: "stream", arg: 1, scope: !2855, file: !361, line: 183, type: !2780)
!2860 = !DILocalVariable(name: "command_name", arg: 2, scope: !2855, file: !361, line: 184, type: !44)
!2861 = !DILocalVariable(name: "package", arg: 3, scope: !2855, file: !361, line: 184, type: !44)
!2862 = !DILocalVariable(name: "version", arg: 4, scope: !2855, file: !361, line: 185, type: !44)
!2863 = !DILocalVariable(name: "authors", arg: 5, scope: !2855, file: !361, line: 185, type: !2814)
!2864 = !DILocalVariable(name: "n_authors", scope: !2855, file: !361, line: 187, type: !41)
!2865 = !DILocation(line: 0, scope: !2855)
!2866 = !DILocation(line: 189, column: 8, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2855, file: !361, line: 189, column: 3)
!2868 = !DILocation(line: 0, scope: !2867)
!2869 = !DILocation(line: 189, column: 23, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2867, file: !361, line: 189, column: 3)
!2871 = !DILocation(line: 189, column: 3, scope: !2867)
!2872 = !DILocation(line: 189, column: 52, scope: !2870)
!2873 = distinct !{!2873, !2871, !2874, !502}
!2874 = !DILocation(line: 190, column: 5, scope: !2867)
!2875 = !DILocation(line: 191, column: 3, scope: !2855)
!2876 = !DILocation(line: 192, column: 1, scope: !2855)
!2877 = distinct !DISubprogram(name: "version_etc_va", scope: !361, file: !361, line: 199, type: !2878, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2891)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{null, !2780, !44, !44, !44, !2880}
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !171, line: 52, baseType: !2881)
!2881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !173, line: 32, baseType: !2882)
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2883, baseType: !2884)
!2883 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !177, size: 256, elements: !2885)
!2885 = !{!2886, !2887, !2888, !2889, !2890}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2884, file: !2883, line: 192, baseType: !38, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2884, file: !2883, line: 192, baseType: !38, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2884, file: !2883, line: 192, baseType: !38, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2884, file: !2883, line: 192, baseType: !39, size: 32, offset: 192)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2884, file: !2883, line: 192, baseType: !39, size: 32, offset: 224)
!2891 = !{!2892, !2893, !2894, !2895, !2896, !2897, !2898}
!2892 = !DILocalVariable(name: "stream", arg: 1, scope: !2877, file: !361, line: 199, type: !2780)
!2893 = !DILocalVariable(name: "command_name", arg: 2, scope: !2877, file: !361, line: 200, type: !44)
!2894 = !DILocalVariable(name: "package", arg: 3, scope: !2877, file: !361, line: 200, type: !44)
!2895 = !DILocalVariable(name: "version", arg: 4, scope: !2877, file: !361, line: 201, type: !44)
!2896 = !DILocalVariable(name: "authors", arg: 5, scope: !2877, file: !361, line: 201, type: !2880)
!2897 = !DILocalVariable(name: "n_authors", scope: !2877, file: !361, line: 203, type: !41)
!2898 = !DILocalVariable(name: "authtab", scope: !2877, file: !361, line: 204, type: !2899)
!2899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 640, elements: !258)
!2900 = !DILocation(line: 0, scope: !2877)
!2901 = !DILocation(line: 201, column: 46, scope: !2877)
!2902 = !DILocation(line: 204, column: 3, scope: !2877)
!2903 = !DILocation(line: 204, column: 15, scope: !2877)
!2904 = !DILocation(line: 208, column: 35, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !361, line: 206, column: 3)
!2906 = distinct !DILexicalBlock(scope: !2877, file: !361, line: 206, column: 3)
!2907 = !DILocation(line: 208, column: 14, scope: !2905)
!2908 = !DILocation(line: 208, column: 33, scope: !2905)
!2909 = !DILocation(line: 208, column: 67, scope: !2905)
!2910 = !DILocation(line: 206, column: 3, scope: !2906)
!2911 = !DILocation(line: 212, column: 20, scope: !2877)
!2912 = !DILocation(line: 211, column: 3, scope: !2877)
!2913 = !DILocation(line: 213, column: 1, scope: !2877)
!2914 = distinct !DISubprogram(name: "version_etc", scope: !361, file: !361, line: 230, type: !2915, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{null, !2780, !44, !44, !44, null}
!2917 = !{!2918, !2919, !2920, !2921, !2922}
!2918 = !DILocalVariable(name: "stream", arg: 1, scope: !2914, file: !361, line: 230, type: !2780)
!2919 = !DILocalVariable(name: "command_name", arg: 2, scope: !2914, file: !361, line: 231, type: !44)
!2920 = !DILocalVariable(name: "package", arg: 3, scope: !2914, file: !361, line: 231, type: !44)
!2921 = !DILocalVariable(name: "version", arg: 4, scope: !2914, file: !361, line: 232, type: !44)
!2922 = !DILocalVariable(name: "authors", scope: !2914, file: !361, line: 234, type: !2880)
!2923 = !DILocation(line: 0, scope: !2914)
!2924 = !DILocation(line: 234, column: 3, scope: !2914)
!2925 = !DILocation(line: 234, column: 11, scope: !2914)
!2926 = !DILocation(line: 235, column: 3, scope: !2914)
!2927 = !DILocation(line: 236, column: 3, scope: !2914)
!2928 = !DILocation(line: 237, column: 3, scope: !2914)
!2929 = !DILocation(line: 238, column: 1, scope: !2914)
!2930 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !361, file: !361, line: 241, type: !198, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !452)
!2931 = !DILocation(line: 243, column: 3, scope: !2930)
!2932 = !DILocation(line: 248, column: 3, scope: !2930)
!2933 = !DILocation(line: 254, column: 3, scope: !2930)
!2934 = !DILocation(line: 259, column: 3, scope: !2930)
!2935 = !DILocation(line: 261, column: 1, scope: !2930)
!2936 = distinct !DISubprogram(name: "xnrealloc", scope: !2937, file: !2937, line: 147, type: !2938, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !2940)
!2937 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!38, !38, !41, !41}
!2940 = !{!2941, !2942, !2943}
!2941 = !DILocalVariable(name: "p", arg: 1, scope: !2936, file: !2937, line: 147, type: !38)
!2942 = !DILocalVariable(name: "n", arg: 2, scope: !2936, file: !2937, line: 147, type: !41)
!2943 = !DILocalVariable(name: "s", arg: 3, scope: !2936, file: !2937, line: 147, type: !41)
!2944 = !DILocation(line: 0, scope: !2936)
!2945 = !DILocalVariable(name: "p", arg: 1, scope: !2946, file: !368, line: 83, type: !38)
!2946 = distinct !DISubprogram(name: "xreallocarray", scope: !368, file: !368, line: 83, type: !2938, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !2947)
!2947 = !{!2945, !2948, !2949}
!2948 = !DILocalVariable(name: "n", arg: 2, scope: !2946, file: !368, line: 83, type: !41)
!2949 = !DILocalVariable(name: "s", arg: 3, scope: !2946, file: !368, line: 83, type: !41)
!2950 = !DILocation(line: 0, scope: !2946, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 149, column: 10, scope: !2936)
!2952 = !DILocation(line: 85, column: 25, scope: !2946, inlinedAt: !2951)
!2953 = !DILocalVariable(name: "p", arg: 1, scope: !2954, file: !368, line: 37, type: !38)
!2954 = distinct !DISubprogram(name: "check_nonnull", scope: !368, file: !368, line: 37, type: !2955, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!38, !38}
!2957 = !{!2953}
!2958 = !DILocation(line: 0, scope: !2954, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 85, column: 10, scope: !2946, inlinedAt: !2951)
!2960 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !2959)
!2961 = distinct !DILexicalBlock(scope: !2954, file: !368, line: 39, column: 7)
!2962 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !2959)
!2963 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !2959)
!2964 = !DILocation(line: 149, column: 3, scope: !2936)
!2965 = !DILocation(line: 0, scope: !2946)
!2966 = !DILocation(line: 85, column: 25, scope: !2946)
!2967 = !DILocation(line: 0, scope: !2954, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 85, column: 10, scope: !2946)
!2969 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !2968)
!2970 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !2968)
!2971 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !2968)
!2972 = !DILocation(line: 85, column: 3, scope: !2946)
!2973 = distinct !DISubprogram(name: "xmalloc", scope: !368, file: !368, line: 47, type: !2974, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!38, !41}
!2976 = !{!2977}
!2977 = !DILocalVariable(name: "s", arg: 1, scope: !2973, file: !368, line: 47, type: !41)
!2978 = !DILocation(line: 0, scope: !2973)
!2979 = !DILocation(line: 49, column: 25, scope: !2973)
!2980 = !DILocation(line: 0, scope: !2954, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 49, column: 10, scope: !2973)
!2982 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !2981)
!2983 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !2981)
!2984 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !2981)
!2985 = !DILocation(line: 49, column: 3, scope: !2973)
!2986 = distinct !DISubprogram(name: "ximalloc", scope: !368, file: !368, line: 53, type: !2987, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!38, !387}
!2989 = !{!2990}
!2990 = !DILocalVariable(name: "s", arg: 1, scope: !2986, file: !368, line: 53, type: !387)
!2991 = !DILocation(line: 0, scope: !2986)
!2992 = !DILocalVariable(name: "s", arg: 1, scope: !2993, file: !2994, line: 55, type: !387)
!2993 = distinct !DISubprogram(name: "imalloc", scope: !2994, file: !2994, line: 55, type: !2987, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !2995)
!2994 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2995 = !{!2992}
!2996 = !DILocation(line: 0, scope: !2993, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 55, column: 25, scope: !2986)
!2998 = !DILocation(line: 57, column: 26, scope: !2993, inlinedAt: !2997)
!2999 = !DILocation(line: 0, scope: !2954, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 55, column: 10, scope: !2986)
!3001 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3000)
!3002 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3000)
!3003 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3000)
!3004 = !DILocation(line: 55, column: 3, scope: !2986)
!3005 = distinct !DISubprogram(name: "xcharalloc", scope: !368, file: !368, line: 59, type: !3006, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!36, !41}
!3008 = !{!3009}
!3009 = !DILocalVariable(name: "n", arg: 1, scope: !3005, file: !368, line: 59, type: !41)
!3010 = !DILocation(line: 0, scope: !3005)
!3011 = !DILocation(line: 0, scope: !2973, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 61, column: 10, scope: !3005)
!3013 = !DILocation(line: 49, column: 25, scope: !2973, inlinedAt: !3012)
!3014 = !DILocation(line: 0, scope: !2954, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 49, column: 10, scope: !2973, inlinedAt: !3012)
!3016 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3015)
!3017 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3015)
!3018 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3015)
!3019 = !DILocation(line: 61, column: 3, scope: !3005)
!3020 = distinct !DISubprogram(name: "xrealloc", scope: !368, file: !368, line: 68, type: !3021, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3023)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!38, !38, !41}
!3023 = !{!3024, !3025}
!3024 = !DILocalVariable(name: "p", arg: 1, scope: !3020, file: !368, line: 68, type: !38)
!3025 = !DILocalVariable(name: "s", arg: 2, scope: !3020, file: !368, line: 68, type: !41)
!3026 = !DILocation(line: 0, scope: !3020)
!3027 = !DILocalVariable(name: "ptr", arg: 1, scope: !3028, file: !3029, line: 2057, type: !38)
!3028 = distinct !DISubprogram(name: "rpl_realloc", scope: !3029, file: !3029, line: 2057, type: !3021, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3030)
!3029 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3030 = !{!3027, !3031}
!3031 = !DILocalVariable(name: "size", arg: 2, scope: !3028, file: !3029, line: 2057, type: !41)
!3032 = !DILocation(line: 0, scope: !3028, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 70, column: 25, scope: !3020)
!3034 = !DILocation(line: 2059, column: 24, scope: !3028, inlinedAt: !3033)
!3035 = !DILocation(line: 2059, column: 10, scope: !3028, inlinedAt: !3033)
!3036 = !DILocation(line: 0, scope: !2954, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 70, column: 10, scope: !3020)
!3038 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3037)
!3039 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3037)
!3040 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3037)
!3041 = !DILocation(line: 70, column: 3, scope: !3020)
!3042 = distinct !DISubprogram(name: "xirealloc", scope: !368, file: !368, line: 74, type: !3043, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3045)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!38, !38, !387}
!3045 = !{!3046, !3047}
!3046 = !DILocalVariable(name: "p", arg: 1, scope: !3042, file: !368, line: 74, type: !38)
!3047 = !DILocalVariable(name: "s", arg: 2, scope: !3042, file: !368, line: 74, type: !387)
!3048 = !DILocation(line: 0, scope: !3042)
!3049 = !DILocalVariable(name: "p", arg: 1, scope: !3050, file: !2994, line: 66, type: !38)
!3050 = distinct !DISubprogram(name: "irealloc", scope: !2994, file: !2994, line: 66, type: !3043, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3051)
!3051 = !{!3049, !3052}
!3052 = !DILocalVariable(name: "s", arg: 2, scope: !3050, file: !2994, line: 66, type: !387)
!3053 = !DILocation(line: 0, scope: !3050, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 76, column: 25, scope: !3042)
!3055 = !DILocation(line: 0, scope: !3028, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 68, column: 26, scope: !3050, inlinedAt: !3054)
!3057 = !DILocation(line: 2059, column: 24, scope: !3028, inlinedAt: !3056)
!3058 = !DILocation(line: 2059, column: 10, scope: !3028, inlinedAt: !3056)
!3059 = !DILocation(line: 0, scope: !2954, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 76, column: 10, scope: !3042)
!3061 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3060)
!3062 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3060)
!3063 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3060)
!3064 = !DILocation(line: 76, column: 3, scope: !3042)
!3065 = distinct !DISubprogram(name: "xireallocarray", scope: !368, file: !368, line: 89, type: !3066, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!38, !38, !387, !387}
!3068 = !{!3069, !3070, !3071}
!3069 = !DILocalVariable(name: "p", arg: 1, scope: !3065, file: !368, line: 89, type: !38)
!3070 = !DILocalVariable(name: "n", arg: 2, scope: !3065, file: !368, line: 89, type: !387)
!3071 = !DILocalVariable(name: "s", arg: 3, scope: !3065, file: !368, line: 89, type: !387)
!3072 = !DILocation(line: 0, scope: !3065)
!3073 = !DILocalVariable(name: "p", arg: 1, scope: !3074, file: !2994, line: 98, type: !38)
!3074 = distinct !DISubprogram(name: "ireallocarray", scope: !2994, file: !2994, line: 98, type: !3066, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3075)
!3075 = !{!3073, !3076, !3077}
!3076 = !DILocalVariable(name: "n", arg: 2, scope: !3074, file: !2994, line: 98, type: !387)
!3077 = !DILocalVariable(name: "s", arg: 3, scope: !3074, file: !2994, line: 98, type: !387)
!3078 = !DILocation(line: 0, scope: !3074, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 91, column: 25, scope: !3065)
!3080 = !DILocation(line: 101, column: 13, scope: !3074, inlinedAt: !3079)
!3081 = !DILocation(line: 0, scope: !2954, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 91, column: 10, scope: !3065)
!3083 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3082)
!3084 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3082)
!3085 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3082)
!3086 = !DILocation(line: 91, column: 3, scope: !3065)
!3087 = distinct !DISubprogram(name: "xnmalloc", scope: !368, file: !368, line: 98, type: !3088, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!38, !41, !41}
!3090 = !{!3091, !3092}
!3091 = !DILocalVariable(name: "n", arg: 1, scope: !3087, file: !368, line: 98, type: !41)
!3092 = !DILocalVariable(name: "s", arg: 2, scope: !3087, file: !368, line: 98, type: !41)
!3093 = !DILocation(line: 0, scope: !3087)
!3094 = !DILocation(line: 0, scope: !2946, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 100, column: 10, scope: !3087)
!3096 = !DILocation(line: 85, column: 25, scope: !2946, inlinedAt: !3095)
!3097 = !DILocation(line: 0, scope: !2954, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 85, column: 10, scope: !2946, inlinedAt: !3095)
!3099 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3098)
!3100 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3098)
!3101 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3098)
!3102 = !DILocation(line: 100, column: 3, scope: !3087)
!3103 = distinct !DISubprogram(name: "xinmalloc", scope: !368, file: !368, line: 104, type: !3104, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!38, !387, !387}
!3106 = !{!3107, !3108}
!3107 = !DILocalVariable(name: "n", arg: 1, scope: !3103, file: !368, line: 104, type: !387)
!3108 = !DILocalVariable(name: "s", arg: 2, scope: !3103, file: !368, line: 104, type: !387)
!3109 = !DILocation(line: 0, scope: !3103)
!3110 = !DILocation(line: 0, scope: !3065, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 106, column: 10, scope: !3103)
!3112 = !DILocation(line: 0, scope: !3074, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 91, column: 25, scope: !3065, inlinedAt: !3111)
!3114 = !DILocation(line: 101, column: 13, scope: !3074, inlinedAt: !3113)
!3115 = !DILocation(line: 0, scope: !2954, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 91, column: 10, scope: !3065, inlinedAt: !3111)
!3117 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3116)
!3118 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3116)
!3119 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3116)
!3120 = !DILocation(line: 106, column: 3, scope: !3103)
!3121 = distinct !DISubprogram(name: "x2realloc", scope: !368, file: !368, line: 116, type: !3122, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!38, !38, !374}
!3124 = !{!3125, !3126}
!3125 = !DILocalVariable(name: "p", arg: 1, scope: !3121, file: !368, line: 116, type: !38)
!3126 = !DILocalVariable(name: "ps", arg: 2, scope: !3121, file: !368, line: 116, type: !374)
!3127 = !DILocation(line: 0, scope: !3121)
!3128 = !DILocation(line: 0, scope: !371, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 118, column: 10, scope: !3121)
!3130 = !DILocation(line: 178, column: 14, scope: !371, inlinedAt: !3129)
!3131 = !DILocation(line: 180, column: 9, scope: !3132, inlinedAt: !3129)
!3132 = distinct !DILexicalBlock(scope: !371, file: !368, line: 180, column: 7)
!3133 = !DILocation(line: 180, column: 7, scope: !371, inlinedAt: !3129)
!3134 = !DILocation(line: 182, column: 13, scope: !3135, inlinedAt: !3129)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !368, line: 182, column: 11)
!3136 = distinct !DILexicalBlock(scope: !3132, file: !368, line: 181, column: 5)
!3137 = !DILocation(line: 182, column: 11, scope: !3136, inlinedAt: !3129)
!3138 = !DILocation(line: 197, column: 11, scope: !3139, inlinedAt: !3129)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !368, line: 197, column: 11)
!3140 = distinct !DILexicalBlock(scope: !3132, file: !368, line: 195, column: 5)
!3141 = !DILocation(line: 197, column: 11, scope: !3140, inlinedAt: !3129)
!3142 = !DILocation(line: 198, column: 9, scope: !3139, inlinedAt: !3129)
!3143 = !DILocation(line: 0, scope: !2946, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 201, column: 7, scope: !371, inlinedAt: !3129)
!3145 = !DILocation(line: 85, column: 25, scope: !2946, inlinedAt: !3144)
!3146 = !DILocation(line: 0, scope: !2954, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 85, column: 10, scope: !2946, inlinedAt: !3144)
!3148 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3147)
!3149 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3147)
!3150 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3147)
!3151 = !DILocation(line: 202, column: 7, scope: !371, inlinedAt: !3129)
!3152 = !DILocation(line: 118, column: 3, scope: !3121)
!3153 = !DILocation(line: 0, scope: !371)
!3154 = !DILocation(line: 178, column: 14, scope: !371)
!3155 = !DILocation(line: 180, column: 9, scope: !3132)
!3156 = !DILocation(line: 180, column: 7, scope: !371)
!3157 = !DILocation(line: 182, column: 13, scope: !3135)
!3158 = !DILocation(line: 182, column: 11, scope: !3136)
!3159 = !DILocation(line: 190, column: 30, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3135, file: !368, line: 183, column: 9)
!3161 = !DILocation(line: 191, column: 16, scope: !3160)
!3162 = !DILocation(line: 191, column: 13, scope: !3160)
!3163 = !DILocation(line: 192, column: 9, scope: !3160)
!3164 = !DILocation(line: 197, column: 11, scope: !3139)
!3165 = !DILocation(line: 197, column: 11, scope: !3140)
!3166 = !DILocation(line: 198, column: 9, scope: !3139)
!3167 = !DILocation(line: 0, scope: !2946, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 201, column: 7, scope: !371)
!3169 = !DILocation(line: 85, column: 25, scope: !2946, inlinedAt: !3168)
!3170 = !DILocation(line: 0, scope: !2954, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 85, column: 10, scope: !2946, inlinedAt: !3168)
!3172 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3171)
!3173 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3171)
!3174 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3171)
!3175 = !DILocation(line: 202, column: 7, scope: !371)
!3176 = !DILocation(line: 203, column: 3, scope: !371)
!3177 = !DILocation(line: 0, scope: !383)
!3178 = !DILocation(line: 230, column: 14, scope: !383)
!3179 = !DILocation(line: 238, column: 7, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !383, file: !368, line: 238, column: 7)
!3181 = !DILocation(line: 238, column: 7, scope: !383)
!3182 = !DILocation(line: 240, column: 9, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !383, file: !368, line: 240, column: 7)
!3184 = !DILocation(line: 240, column: 18, scope: !3183)
!3185 = !DILocation(line: 253, column: 8, scope: !383)
!3186 = !DILocation(line: 258, column: 27, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !368, line: 257, column: 5)
!3188 = distinct !DILexicalBlock(scope: !383, file: !368, line: 256, column: 7)
!3189 = !DILocation(line: 259, column: 32, scope: !3187)
!3190 = !DILocation(line: 260, column: 5, scope: !3187)
!3191 = !DILocation(line: 262, column: 9, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !383, file: !368, line: 262, column: 7)
!3193 = !DILocation(line: 262, column: 7, scope: !383)
!3194 = !DILocation(line: 263, column: 9, scope: !3192)
!3195 = !DILocation(line: 263, column: 5, scope: !3192)
!3196 = !DILocation(line: 264, column: 9, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !383, file: !368, line: 264, column: 7)
!3198 = !DILocation(line: 264, column: 14, scope: !3197)
!3199 = !DILocation(line: 265, column: 7, scope: !3197)
!3200 = !DILocation(line: 265, column: 11, scope: !3197)
!3201 = !DILocation(line: 266, column: 11, scope: !3197)
!3202 = !DILocation(line: 266, column: 26, scope: !3197)
!3203 = !DILocation(line: 267, column: 14, scope: !3197)
!3204 = !DILocation(line: 264, column: 7, scope: !383)
!3205 = !DILocation(line: 268, column: 5, scope: !3197)
!3206 = !DILocation(line: 0, scope: !3020, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 269, column: 8, scope: !383)
!3208 = !DILocation(line: 0, scope: !3028, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 70, column: 25, scope: !3020, inlinedAt: !3207)
!3210 = !DILocation(line: 2059, column: 24, scope: !3028, inlinedAt: !3209)
!3211 = !DILocation(line: 2059, column: 10, scope: !3028, inlinedAt: !3209)
!3212 = !DILocation(line: 0, scope: !2954, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 70, column: 10, scope: !3020, inlinedAt: !3207)
!3214 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3213)
!3215 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3213)
!3216 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3213)
!3217 = !DILocation(line: 270, column: 7, scope: !383)
!3218 = !DILocation(line: 271, column: 3, scope: !383)
!3219 = distinct !DISubprogram(name: "xzalloc", scope: !368, file: !368, line: 279, type: !2974, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3220)
!3220 = !{!3221}
!3221 = !DILocalVariable(name: "s", arg: 1, scope: !3219, file: !368, line: 279, type: !41)
!3222 = !DILocation(line: 0, scope: !3219)
!3223 = !DILocalVariable(name: "n", arg: 1, scope: !3224, file: !368, line: 294, type: !41)
!3224 = distinct !DISubprogram(name: "xcalloc", scope: !368, file: !368, line: 294, type: !3088, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3225)
!3225 = !{!3223, !3226}
!3226 = !DILocalVariable(name: "s", arg: 2, scope: !3224, file: !368, line: 294, type: !41)
!3227 = !DILocation(line: 0, scope: !3224, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 281, column: 10, scope: !3219)
!3229 = !DILocation(line: 296, column: 25, scope: !3224, inlinedAt: !3228)
!3230 = !DILocation(line: 0, scope: !2954, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 296, column: 10, scope: !3224, inlinedAt: !3228)
!3232 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3231)
!3233 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3231)
!3234 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3231)
!3235 = !DILocation(line: 281, column: 3, scope: !3219)
!3236 = !DILocation(line: 0, scope: !3224)
!3237 = !DILocation(line: 296, column: 25, scope: !3224)
!3238 = !DILocation(line: 0, scope: !2954, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 296, column: 10, scope: !3224)
!3240 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3239)
!3241 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3239)
!3242 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3239)
!3243 = !DILocation(line: 296, column: 3, scope: !3224)
!3244 = distinct !DISubprogram(name: "xizalloc", scope: !368, file: !368, line: 285, type: !2987, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3245)
!3245 = !{!3246}
!3246 = !DILocalVariable(name: "s", arg: 1, scope: !3244, file: !368, line: 285, type: !387)
!3247 = !DILocation(line: 0, scope: !3244)
!3248 = !DILocalVariable(name: "n", arg: 1, scope: !3249, file: !368, line: 300, type: !387)
!3249 = distinct !DISubprogram(name: "xicalloc", scope: !368, file: !368, line: 300, type: !3104, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3250)
!3250 = !{!3248, !3251}
!3251 = !DILocalVariable(name: "s", arg: 2, scope: !3249, file: !368, line: 300, type: !387)
!3252 = !DILocation(line: 0, scope: !3249, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 287, column: 10, scope: !3244)
!3254 = !DILocalVariable(name: "n", arg: 1, scope: !3255, file: !2994, line: 77, type: !387)
!3255 = distinct !DISubprogram(name: "icalloc", scope: !2994, file: !2994, line: 77, type: !3104, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3256)
!3256 = !{!3254, !3257}
!3257 = !DILocalVariable(name: "s", arg: 2, scope: !3255, file: !2994, line: 77, type: !387)
!3258 = !DILocation(line: 0, scope: !3255, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 302, column: 25, scope: !3249, inlinedAt: !3253)
!3260 = !DILocation(line: 91, column: 10, scope: !3255, inlinedAt: !3259)
!3261 = !DILocation(line: 0, scope: !2954, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 302, column: 10, scope: !3249, inlinedAt: !3253)
!3263 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3262)
!3264 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3262)
!3265 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3262)
!3266 = !DILocation(line: 287, column: 3, scope: !3244)
!3267 = !DILocation(line: 0, scope: !3249)
!3268 = !DILocation(line: 0, scope: !3255, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 302, column: 25, scope: !3249)
!3270 = !DILocation(line: 91, column: 10, scope: !3255, inlinedAt: !3269)
!3271 = !DILocation(line: 0, scope: !2954, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 302, column: 10, scope: !3249)
!3273 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3272)
!3274 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3272)
!3275 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3272)
!3276 = !DILocation(line: 302, column: 3, scope: !3249)
!3277 = distinct !DISubprogram(name: "xmemdup", scope: !368, file: !368, line: 310, type: !3278, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3280)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!38, !653, !41}
!3280 = !{!3281, !3282}
!3281 = !DILocalVariable(name: "p", arg: 1, scope: !3277, file: !368, line: 310, type: !653)
!3282 = !DILocalVariable(name: "s", arg: 2, scope: !3277, file: !368, line: 310, type: !41)
!3283 = !DILocation(line: 0, scope: !3277)
!3284 = !DILocation(line: 0, scope: !2973, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 312, column: 18, scope: !3277)
!3286 = !DILocation(line: 49, column: 25, scope: !2973, inlinedAt: !3285)
!3287 = !DILocation(line: 0, scope: !2954, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 49, column: 10, scope: !2973, inlinedAt: !3285)
!3289 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3288)
!3290 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3288)
!3291 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3288)
!3292 = !DILocalVariable(name: "__dest", arg: 1, scope: !3293, file: !1464, line: 26, type: !3296)
!3293 = distinct !DISubprogram(name: "memcpy", scope: !1464, file: !1464, line: 26, type: !3294, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3297)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!38, !3296, !652, !41}
!3296 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!3297 = !{!3292, !3298, !3299}
!3298 = !DILocalVariable(name: "__src", arg: 2, scope: !3293, file: !1464, line: 26, type: !652)
!3299 = !DILocalVariable(name: "__len", arg: 3, scope: !3293, file: !1464, line: 26, type: !41)
!3300 = !DILocation(line: 0, scope: !3293, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 312, column: 10, scope: !3277)
!3302 = !DILocation(line: 29, column: 10, scope: !3293, inlinedAt: !3301)
!3303 = !DILocation(line: 312, column: 3, scope: !3277)
!3304 = distinct !DISubprogram(name: "ximemdup", scope: !368, file: !368, line: 316, type: !3305, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3307)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!38, !653, !387}
!3307 = !{!3308, !3309}
!3308 = !DILocalVariable(name: "p", arg: 1, scope: !3304, file: !368, line: 316, type: !653)
!3309 = !DILocalVariable(name: "s", arg: 2, scope: !3304, file: !368, line: 316, type: !387)
!3310 = !DILocation(line: 0, scope: !3304)
!3311 = !DILocation(line: 0, scope: !2986, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 318, column: 18, scope: !3304)
!3313 = !DILocation(line: 0, scope: !2993, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 55, column: 25, scope: !2986, inlinedAt: !3312)
!3315 = !DILocation(line: 57, column: 26, scope: !2993, inlinedAt: !3314)
!3316 = !DILocation(line: 0, scope: !2954, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 55, column: 10, scope: !2986, inlinedAt: !3312)
!3318 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3317)
!3319 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3317)
!3320 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3317)
!3321 = !DILocation(line: 0, scope: !3293, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 318, column: 10, scope: !3304)
!3323 = !DILocation(line: 29, column: 10, scope: !3293, inlinedAt: !3322)
!3324 = !DILocation(line: 318, column: 3, scope: !3304)
!3325 = distinct !DISubprogram(name: "ximemdup0", scope: !368, file: !368, line: 325, type: !3326, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3328)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!36, !653, !387}
!3328 = !{!3329, !3330, !3331}
!3329 = !DILocalVariable(name: "p", arg: 1, scope: !3325, file: !368, line: 325, type: !653)
!3330 = !DILocalVariable(name: "s", arg: 2, scope: !3325, file: !368, line: 325, type: !387)
!3331 = !DILocalVariable(name: "result", scope: !3325, file: !368, line: 327, type: !36)
!3332 = !DILocation(line: 0, scope: !3325)
!3333 = !DILocation(line: 327, column: 30, scope: !3325)
!3334 = !DILocation(line: 0, scope: !2986, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 327, column: 18, scope: !3325)
!3336 = !DILocation(line: 0, scope: !2993, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 55, column: 25, scope: !2986, inlinedAt: !3335)
!3338 = !DILocation(line: 57, column: 26, scope: !2993, inlinedAt: !3337)
!3339 = !DILocation(line: 0, scope: !2954, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 55, column: 10, scope: !2986, inlinedAt: !3335)
!3341 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3340)
!3342 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3340)
!3343 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3340)
!3344 = !DILocation(line: 328, column: 3, scope: !3325)
!3345 = !DILocation(line: 328, column: 13, scope: !3325)
!3346 = !DILocation(line: 0, scope: !3293, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 329, column: 10, scope: !3325)
!3348 = !DILocation(line: 29, column: 10, scope: !3293, inlinedAt: !3347)
!3349 = !DILocation(line: 329, column: 3, scope: !3325)
!3350 = distinct !DISubprogram(name: "xstrdup", scope: !368, file: !368, line: 335, type: !647, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3351)
!3351 = !{!3352}
!3352 = !DILocalVariable(name: "string", arg: 1, scope: !3350, file: !368, line: 335, type: !44)
!3353 = !DILocation(line: 0, scope: !3350)
!3354 = !DILocation(line: 337, column: 27, scope: !3350)
!3355 = !DILocation(line: 337, column: 43, scope: !3350)
!3356 = !DILocation(line: 0, scope: !3277, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 337, column: 10, scope: !3350)
!3358 = !DILocation(line: 0, scope: !2973, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 312, column: 18, scope: !3277, inlinedAt: !3357)
!3360 = !DILocation(line: 49, column: 25, scope: !2973, inlinedAt: !3359)
!3361 = !DILocation(line: 0, scope: !2954, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 49, column: 10, scope: !2973, inlinedAt: !3359)
!3363 = !DILocation(line: 39, column: 8, scope: !2961, inlinedAt: !3362)
!3364 = !DILocation(line: 39, column: 7, scope: !2954, inlinedAt: !3362)
!3365 = !DILocation(line: 40, column: 5, scope: !2961, inlinedAt: !3362)
!3366 = !DILocation(line: 0, scope: !3293, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 312, column: 10, scope: !3277, inlinedAt: !3357)
!3368 = !DILocation(line: 29, column: 10, scope: !3293, inlinedAt: !3367)
!3369 = !DILocation(line: 337, column: 3, scope: !3350)
!3370 = distinct !DISubprogram(name: "xalloc_die", scope: !402, file: !402, line: 32, type: !198, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !3371)
!3371 = !{!3372}
!3372 = !DILocalVariable(name: "__errstatus", scope: !3373, file: !402, line: 34, type: !3374)
!3373 = distinct !DILexicalBlock(scope: !3370, file: !402, line: 34, column: 3)
!3374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!3375 = !DILocation(line: 34, column: 3, scope: !3373)
!3376 = !DILocation(line: 0, scope: !3373)
!3377 = !DILocation(line: 40, column: 3, scope: !3370)
!3378 = distinct !DISubprogram(name: "close_stream", scope: !404, file: !404, line: 55, type: !3379, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3415)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!39, !3381}
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 7, baseType: !3383)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 49, size: 1728, elements: !3384)
!3384 = !{!3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3383, file: !78, line: 51, baseType: !39, size: 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3383, file: !78, line: 54, baseType: !36, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3383, file: !78, line: 55, baseType: !36, size: 64, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3383, file: !78, line: 56, baseType: !36, size: 64, offset: 192)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3383, file: !78, line: 57, baseType: !36, size: 64, offset: 256)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3383, file: !78, line: 58, baseType: !36, size: 64, offset: 320)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3383, file: !78, line: 59, baseType: !36, size: 64, offset: 384)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3383, file: !78, line: 60, baseType: !36, size: 64, offset: 448)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3383, file: !78, line: 61, baseType: !36, size: 64, offset: 512)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3383, file: !78, line: 64, baseType: !36, size: 64, offset: 576)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3383, file: !78, line: 65, baseType: !36, size: 64, offset: 640)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3383, file: !78, line: 66, baseType: !36, size: 64, offset: 704)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3383, file: !78, line: 68, baseType: !93, size: 64, offset: 768)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3383, file: !78, line: 70, baseType: !3399, size: 64, offset: 832)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3383, file: !78, line: 72, baseType: !39, size: 32, offset: 896)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3383, file: !78, line: 73, baseType: !39, size: 32, offset: 928)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3383, file: !78, line: 74, baseType: !100, size: 64, offset: 960)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3383, file: !78, line: 77, baseType: !40, size: 16, offset: 1024)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3383, file: !78, line: 78, baseType: !105, size: 8, offset: 1040)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3383, file: !78, line: 79, baseType: !107, size: 8, offset: 1048)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3383, file: !78, line: 81, baseType: !111, size: 64, offset: 1088)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3383, file: !78, line: 89, baseType: !114, size: 64, offset: 1152)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3383, file: !78, line: 91, baseType: !116, size: 64, offset: 1216)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3383, file: !78, line: 92, baseType: !119, size: 64, offset: 1280)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3383, file: !78, line: 93, baseType: !3399, size: 64, offset: 1344)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3383, file: !78, line: 94, baseType: !38, size: 64, offset: 1408)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3383, file: !78, line: 95, baseType: !41, size: 64, offset: 1472)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3383, file: !78, line: 96, baseType: !39, size: 32, offset: 1536)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3383, file: !78, line: 98, baseType: !126, size: 160, offset: 1568)
!3415 = !{!3416, !3417, !3419, !3420}
!3416 = !DILocalVariable(name: "stream", arg: 1, scope: !3378, file: !404, line: 55, type: !3381)
!3417 = !DILocalVariable(name: "some_pending", scope: !3378, file: !404, line: 57, type: !3418)
!3418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!3419 = !DILocalVariable(name: "prev_fail", scope: !3378, file: !404, line: 58, type: !3418)
!3420 = !DILocalVariable(name: "fclose_fail", scope: !3378, file: !404, line: 59, type: !3418)
!3421 = !DILocation(line: 0, scope: !3378)
!3422 = !DILocation(line: 57, column: 30, scope: !3378)
!3423 = !DILocalVariable(name: "__stream", arg: 1, scope: !3424, file: !954, line: 135, type: !3381)
!3424 = distinct !DISubprogram(name: "ferror_unlocked", scope: !954, file: !954, line: 135, type: !3379, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3425)
!3425 = !{!3423}
!3426 = !DILocation(line: 0, scope: !3424, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 58, column: 27, scope: !3378)
!3428 = !DILocation(line: 137, column: 10, scope: !3424, inlinedAt: !3427)
!3429 = !{!963, !536, i64 0}
!3430 = !DILocation(line: 58, column: 43, scope: !3378)
!3431 = !DILocation(line: 59, column: 29, scope: !3378)
!3432 = !DILocation(line: 59, column: 45, scope: !3378)
!3433 = !DILocation(line: 69, column: 17, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3378, file: !404, line: 69, column: 7)
!3435 = !DILocation(line: 57, column: 50, scope: !3378)
!3436 = !DILocation(line: 69, column: 33, scope: !3434)
!3437 = !DILocation(line: 69, column: 53, scope: !3434)
!3438 = !DILocation(line: 69, column: 59, scope: !3434)
!3439 = !DILocation(line: 69, column: 7, scope: !3378)
!3440 = !DILocation(line: 71, column: 11, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3434, file: !404, line: 70, column: 5)
!3442 = !DILocation(line: 72, column: 9, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3441, file: !404, line: 71, column: 11)
!3444 = !DILocation(line: 72, column: 15, scope: !3443)
!3445 = !DILocation(line: 77, column: 1, scope: !3378)
!3446 = distinct !DISubprogram(name: "rpl_fclose", scope: !406, file: !406, line: 58, type: !3447, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !3483)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!39, !3449}
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 7, baseType: !3451)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 49, size: 1728, elements: !3452)
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3451, file: !78, line: 51, baseType: !39, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3451, file: !78, line: 54, baseType: !36, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3451, file: !78, line: 55, baseType: !36, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3451, file: !78, line: 56, baseType: !36, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3451, file: !78, line: 57, baseType: !36, size: 64, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3451, file: !78, line: 58, baseType: !36, size: 64, offset: 320)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3451, file: !78, line: 59, baseType: !36, size: 64, offset: 384)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3451, file: !78, line: 60, baseType: !36, size: 64, offset: 448)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3451, file: !78, line: 61, baseType: !36, size: 64, offset: 512)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3451, file: !78, line: 64, baseType: !36, size: 64, offset: 576)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3451, file: !78, line: 65, baseType: !36, size: 64, offset: 640)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3451, file: !78, line: 66, baseType: !36, size: 64, offset: 704)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3451, file: !78, line: 68, baseType: !93, size: 64, offset: 768)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3451, file: !78, line: 70, baseType: !3467, size: 64, offset: 832)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3451, file: !78, line: 72, baseType: !39, size: 32, offset: 896)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3451, file: !78, line: 73, baseType: !39, size: 32, offset: 928)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3451, file: !78, line: 74, baseType: !100, size: 64, offset: 960)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3451, file: !78, line: 77, baseType: !40, size: 16, offset: 1024)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3451, file: !78, line: 78, baseType: !105, size: 8, offset: 1040)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3451, file: !78, line: 79, baseType: !107, size: 8, offset: 1048)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3451, file: !78, line: 81, baseType: !111, size: 64, offset: 1088)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3451, file: !78, line: 89, baseType: !114, size: 64, offset: 1152)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3451, file: !78, line: 91, baseType: !116, size: 64, offset: 1216)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3451, file: !78, line: 92, baseType: !119, size: 64, offset: 1280)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3451, file: !78, line: 93, baseType: !3467, size: 64, offset: 1344)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3451, file: !78, line: 94, baseType: !38, size: 64, offset: 1408)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3451, file: !78, line: 95, baseType: !41, size: 64, offset: 1472)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3451, file: !78, line: 96, baseType: !39, size: 32, offset: 1536)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3451, file: !78, line: 98, baseType: !126, size: 160, offset: 1568)
!3483 = !{!3484, !3485, !3486, !3487}
!3484 = !DILocalVariable(name: "fp", arg: 1, scope: !3446, file: !406, line: 58, type: !3449)
!3485 = !DILocalVariable(name: "saved_errno", scope: !3446, file: !406, line: 60, type: !39)
!3486 = !DILocalVariable(name: "fd", scope: !3446, file: !406, line: 63, type: !39)
!3487 = !DILocalVariable(name: "result", scope: !3446, file: !406, line: 74, type: !39)
!3488 = !DILocation(line: 0, scope: !3446)
!3489 = !DILocation(line: 63, column: 12, scope: !3446)
!3490 = !DILocation(line: 64, column: 10, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3446, file: !406, line: 64, column: 7)
!3492 = !DILocation(line: 64, column: 7, scope: !3446)
!3493 = !DILocation(line: 65, column: 12, scope: !3491)
!3494 = !DILocation(line: 65, column: 5, scope: !3491)
!3495 = !DILocation(line: 70, column: 9, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3446, file: !406, line: 70, column: 7)
!3497 = !DILocation(line: 70, column: 23, scope: !3496)
!3498 = !DILocation(line: 70, column: 33, scope: !3496)
!3499 = !DILocation(line: 70, column: 26, scope: !3496)
!3500 = !DILocation(line: 70, column: 59, scope: !3496)
!3501 = !DILocation(line: 71, column: 7, scope: !3496)
!3502 = !DILocation(line: 71, column: 10, scope: !3496)
!3503 = !DILocation(line: 70, column: 7, scope: !3446)
!3504 = !DILocation(line: 100, column: 12, scope: !3446)
!3505 = !DILocation(line: 105, column: 7, scope: !3446)
!3506 = !DILocation(line: 72, column: 19, scope: !3496)
!3507 = !DILocation(line: 105, column: 19, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3446, file: !406, line: 105, column: 7)
!3509 = !DILocation(line: 107, column: 13, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3508, file: !406, line: 106, column: 5)
!3511 = !DILocation(line: 109, column: 5, scope: !3510)
!3512 = !DILocation(line: 112, column: 1, scope: !3446)
!3513 = !DISubprogram(name: "fileno", scope: !171, file: !171, line: 809, type: !3447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!3514 = !DISubprogram(name: "fclose", scope: !171, file: !171, line: 178, type: !3447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!3515 = !DISubprogram(name: "lseek", scope: !3516, file: !3516, line: 339, type: !3517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!3516 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!100, !39, !100, !39}
!3519 = distinct !DISubprogram(name: "rpl_fflush", scope: !408, file: !408, line: 130, type: !3520, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3556)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!39, !3522}
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 7, baseType: !3524)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 49, size: 1728, elements: !3525)
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3524, file: !78, line: 51, baseType: !39, size: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3524, file: !78, line: 54, baseType: !36, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3524, file: !78, line: 55, baseType: !36, size: 64, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3524, file: !78, line: 56, baseType: !36, size: 64, offset: 192)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3524, file: !78, line: 57, baseType: !36, size: 64, offset: 256)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3524, file: !78, line: 58, baseType: !36, size: 64, offset: 320)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3524, file: !78, line: 59, baseType: !36, size: 64, offset: 384)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3524, file: !78, line: 60, baseType: !36, size: 64, offset: 448)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3524, file: !78, line: 61, baseType: !36, size: 64, offset: 512)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3524, file: !78, line: 64, baseType: !36, size: 64, offset: 576)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3524, file: !78, line: 65, baseType: !36, size: 64, offset: 640)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3524, file: !78, line: 66, baseType: !36, size: 64, offset: 704)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3524, file: !78, line: 68, baseType: !93, size: 64, offset: 768)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3524, file: !78, line: 70, baseType: !3540, size: 64, offset: 832)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3524, file: !78, line: 72, baseType: !39, size: 32, offset: 896)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3524, file: !78, line: 73, baseType: !39, size: 32, offset: 928)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3524, file: !78, line: 74, baseType: !100, size: 64, offset: 960)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3524, file: !78, line: 77, baseType: !40, size: 16, offset: 1024)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3524, file: !78, line: 78, baseType: !105, size: 8, offset: 1040)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3524, file: !78, line: 79, baseType: !107, size: 8, offset: 1048)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3524, file: !78, line: 81, baseType: !111, size: 64, offset: 1088)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3524, file: !78, line: 89, baseType: !114, size: 64, offset: 1152)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3524, file: !78, line: 91, baseType: !116, size: 64, offset: 1216)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3524, file: !78, line: 92, baseType: !119, size: 64, offset: 1280)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3524, file: !78, line: 93, baseType: !3540, size: 64, offset: 1344)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3524, file: !78, line: 94, baseType: !38, size: 64, offset: 1408)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3524, file: !78, line: 95, baseType: !41, size: 64, offset: 1472)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3524, file: !78, line: 96, baseType: !39, size: 32, offset: 1536)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3524, file: !78, line: 98, baseType: !126, size: 160, offset: 1568)
!3556 = !{!3557}
!3557 = !DILocalVariable(name: "stream", arg: 1, scope: !3519, file: !408, line: 130, type: !3522)
!3558 = !DILocation(line: 0, scope: !3519)
!3559 = !DILocation(line: 151, column: 14, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3519, file: !408, line: 151, column: 7)
!3561 = !DILocation(line: 151, column: 22, scope: !3560)
!3562 = !DILocation(line: 151, column: 27, scope: !3560)
!3563 = !DILocation(line: 151, column: 7, scope: !3519)
!3564 = !DILocation(line: 152, column: 12, scope: !3560)
!3565 = !DILocation(line: 152, column: 5, scope: !3560)
!3566 = !DILocalVariable(name: "fp", arg: 1, scope: !3567, file: !408, line: 42, type: !3522)
!3567 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !408, file: !408, line: 42, type: !3568, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3570)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{null, !3522}
!3570 = !{!3566}
!3571 = !DILocation(line: 0, scope: !3567, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 157, column: 3, scope: !3519)
!3573 = !DILocation(line: 44, column: 12, scope: !3574, inlinedAt: !3572)
!3574 = distinct !DILexicalBlock(scope: !3567, file: !408, line: 44, column: 7)
!3575 = !DILocation(line: 44, column: 19, scope: !3574, inlinedAt: !3572)
!3576 = !DILocation(line: 44, column: 7, scope: !3567, inlinedAt: !3572)
!3577 = !DILocation(line: 46, column: 5, scope: !3574, inlinedAt: !3572)
!3578 = !DILocation(line: 159, column: 10, scope: !3519)
!3579 = !DILocation(line: 159, column: 3, scope: !3519)
!3580 = !DILocation(line: 236, column: 1, scope: !3519)
!3581 = !DISubprogram(name: "fflush", scope: !171, file: !171, line: 230, type: !3520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!3582 = distinct !DISubprogram(name: "rpl_fseeko", scope: !410, file: !410, line: 28, type: !3583, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !3620)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!39, !3585, !3619, !39}
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 7, baseType: !3587)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 49, size: 1728, elements: !3588)
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3587, file: !78, line: 51, baseType: !39, size: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3587, file: !78, line: 54, baseType: !36, size: 64, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3587, file: !78, line: 55, baseType: !36, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3587, file: !78, line: 56, baseType: !36, size: 64, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3587, file: !78, line: 57, baseType: !36, size: 64, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3587, file: !78, line: 58, baseType: !36, size: 64, offset: 320)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3587, file: !78, line: 59, baseType: !36, size: 64, offset: 384)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3587, file: !78, line: 60, baseType: !36, size: 64, offset: 448)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3587, file: !78, line: 61, baseType: !36, size: 64, offset: 512)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3587, file: !78, line: 64, baseType: !36, size: 64, offset: 576)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3587, file: !78, line: 65, baseType: !36, size: 64, offset: 640)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3587, file: !78, line: 66, baseType: !36, size: 64, offset: 704)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3587, file: !78, line: 68, baseType: !93, size: 64, offset: 768)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3587, file: !78, line: 70, baseType: !3603, size: 64, offset: 832)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3587, file: !78, line: 72, baseType: !39, size: 32, offset: 896)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3587, file: !78, line: 73, baseType: !39, size: 32, offset: 928)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3587, file: !78, line: 74, baseType: !100, size: 64, offset: 960)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3587, file: !78, line: 77, baseType: !40, size: 16, offset: 1024)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3587, file: !78, line: 78, baseType: !105, size: 8, offset: 1040)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3587, file: !78, line: 79, baseType: !107, size: 8, offset: 1048)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3587, file: !78, line: 81, baseType: !111, size: 64, offset: 1088)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3587, file: !78, line: 89, baseType: !114, size: 64, offset: 1152)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3587, file: !78, line: 91, baseType: !116, size: 64, offset: 1216)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3587, file: !78, line: 92, baseType: !119, size: 64, offset: 1280)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3587, file: !78, line: 93, baseType: !3603, size: 64, offset: 1344)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3587, file: !78, line: 94, baseType: !38, size: 64, offset: 1408)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3587, file: !78, line: 95, baseType: !41, size: 64, offset: 1472)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3587, file: !78, line: 96, baseType: !39, size: 32, offset: 1536)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3587, file: !78, line: 98, baseType: !126, size: 160, offset: 1568)
!3619 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !171, line: 63, baseType: !100)
!3620 = !{!3621, !3622, !3623, !3624}
!3621 = !DILocalVariable(name: "fp", arg: 1, scope: !3582, file: !410, line: 28, type: !3585)
!3622 = !DILocalVariable(name: "offset", arg: 2, scope: !3582, file: !410, line: 28, type: !3619)
!3623 = !DILocalVariable(name: "whence", arg: 3, scope: !3582, file: !410, line: 28, type: !39)
!3624 = !DILocalVariable(name: "pos", scope: !3625, file: !410, line: 123, type: !3619)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !410, line: 119, column: 5)
!3626 = distinct !DILexicalBlock(scope: !3582, file: !410, line: 55, column: 7)
!3627 = !DILocation(line: 0, scope: !3582)
!3628 = !DILocation(line: 55, column: 12, scope: !3626)
!3629 = !{!963, !444, i64 16}
!3630 = !DILocation(line: 55, column: 33, scope: !3626)
!3631 = !{!963, !444, i64 8}
!3632 = !DILocation(line: 55, column: 25, scope: !3626)
!3633 = !DILocation(line: 56, column: 7, scope: !3626)
!3634 = !DILocation(line: 56, column: 15, scope: !3626)
!3635 = !DILocation(line: 56, column: 37, scope: !3626)
!3636 = !{!963, !444, i64 32}
!3637 = !DILocation(line: 56, column: 29, scope: !3626)
!3638 = !DILocation(line: 57, column: 7, scope: !3626)
!3639 = !DILocation(line: 57, column: 15, scope: !3626)
!3640 = !{!963, !444, i64 72}
!3641 = !DILocation(line: 57, column: 29, scope: !3626)
!3642 = !DILocation(line: 55, column: 7, scope: !3582)
!3643 = !DILocation(line: 123, column: 26, scope: !3625)
!3644 = !DILocation(line: 123, column: 19, scope: !3625)
!3645 = !DILocation(line: 0, scope: !3625)
!3646 = !DILocation(line: 124, column: 15, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3625, file: !410, line: 124, column: 11)
!3648 = !DILocation(line: 124, column: 11, scope: !3625)
!3649 = !DILocation(line: 135, column: 12, scope: !3625)
!3650 = !DILocation(line: 135, column: 19, scope: !3625)
!3651 = !DILocation(line: 136, column: 12, scope: !3625)
!3652 = !DILocation(line: 136, column: 20, scope: !3625)
!3653 = !{!963, !964, i64 144}
!3654 = !DILocation(line: 167, column: 7, scope: !3625)
!3655 = !DILocation(line: 169, column: 10, scope: !3582)
!3656 = !DILocation(line: 169, column: 3, scope: !3582)
!3657 = !DILocation(line: 170, column: 1, scope: !3582)
!3658 = !DISubprogram(name: "fseeko", scope: !171, file: !171, line: 736, type: !3659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!39, !3585, !100, !39}
!3661 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !334, file: !334, line: 100, type: !3662, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3665)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!41, !1482, !44, !41, !3664}
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!3665 = !{!3666, !3667, !3668, !3669, !3670}
!3666 = !DILocalVariable(name: "pwc", arg: 1, scope: !3661, file: !334, line: 100, type: !1482)
!3667 = !DILocalVariable(name: "s", arg: 2, scope: !3661, file: !334, line: 100, type: !44)
!3668 = !DILocalVariable(name: "n", arg: 3, scope: !3661, file: !334, line: 100, type: !41)
!3669 = !DILocalVariable(name: "ps", arg: 4, scope: !3661, file: !334, line: 100, type: !3664)
!3670 = !DILocalVariable(name: "ret", scope: !3661, file: !334, line: 130, type: !41)
!3671 = !DILocation(line: 0, scope: !3661)
!3672 = !DILocation(line: 105, column: 9, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3661, file: !334, line: 105, column: 7)
!3674 = !DILocation(line: 105, column: 7, scope: !3661)
!3675 = !DILocation(line: 117, column: 10, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3661, file: !334, line: 117, column: 7)
!3677 = !DILocation(line: 117, column: 7, scope: !3661)
!3678 = !DILocation(line: 130, column: 16, scope: !3661)
!3679 = !DILocation(line: 135, column: 11, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3661, file: !334, line: 135, column: 7)
!3681 = !DILocation(line: 135, column: 25, scope: !3680)
!3682 = !DILocation(line: 135, column: 30, scope: !3680)
!3683 = !DILocation(line: 135, column: 7, scope: !3661)
!3684 = !DILocalVariable(name: "ps", arg: 1, scope: !3685, file: !1455, line: 1135, type: !3664)
!3685 = distinct !DISubprogram(name: "mbszero", scope: !1455, file: !1455, line: 1135, type: !3686, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3688)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{null, !3664}
!3688 = !{!3684}
!3689 = !DILocation(line: 0, scope: !3685, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 137, column: 5, scope: !3680)
!3691 = !DILocalVariable(name: "__dest", arg: 1, scope: !3692, file: !1464, line: 57, type: !38)
!3692 = distinct !DISubprogram(name: "memset", scope: !1464, file: !1464, line: 57, type: !1465, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3693)
!3693 = !{!3691, !3694, !3695}
!3694 = !DILocalVariable(name: "__ch", arg: 2, scope: !3692, file: !1464, line: 57, type: !39)
!3695 = !DILocalVariable(name: "__len", arg: 3, scope: !3692, file: !1464, line: 57, type: !41)
!3696 = !DILocation(line: 0, scope: !3692, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 1137, column: 3, scope: !3685, inlinedAt: !3690)
!3698 = !DILocation(line: 59, column: 10, scope: !3692, inlinedAt: !3697)
!3699 = !DILocation(line: 137, column: 5, scope: !3680)
!3700 = !DILocation(line: 138, column: 11, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3661, file: !334, line: 138, column: 7)
!3702 = !DILocation(line: 138, column: 7, scope: !3661)
!3703 = !DILocation(line: 139, column: 5, scope: !3701)
!3704 = !DILocation(line: 143, column: 26, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3661, file: !334, line: 143, column: 7)
!3706 = !DILocation(line: 143, column: 41, scope: !3705)
!3707 = !DILocation(line: 143, column: 7, scope: !3661)
!3708 = !DILocation(line: 145, column: 15, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !334, line: 145, column: 11)
!3710 = distinct !DILexicalBlock(scope: !3705, file: !334, line: 144, column: 5)
!3711 = !DILocation(line: 145, column: 11, scope: !3710)
!3712 = !DILocation(line: 146, column: 32, scope: !3709)
!3713 = !DILocation(line: 146, column: 16, scope: !3709)
!3714 = !DILocation(line: 146, column: 14, scope: !3709)
!3715 = !DILocation(line: 146, column: 9, scope: !3709)
!3716 = !DILocation(line: 286, column: 1, scope: !3661)
!3717 = !DISubprogram(name: "mbsinit", scope: !3718, file: !3718, line: 293, type: !3719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!3718 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!39, !3721}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!3723 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !412, file: !412, line: 27, type: !2938, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !3724)
!3724 = !{!3725, !3726, !3727, !3728}
!3725 = !DILocalVariable(name: "ptr", arg: 1, scope: !3723, file: !412, line: 27, type: !38)
!3726 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3723, file: !412, line: 27, type: !41)
!3727 = !DILocalVariable(name: "size", arg: 3, scope: !3723, file: !412, line: 27, type: !41)
!3728 = !DILocalVariable(name: "nbytes", scope: !3723, file: !412, line: 29, type: !41)
!3729 = !DILocation(line: 0, scope: !3723)
!3730 = !DILocation(line: 30, column: 7, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3723, file: !412, line: 30, column: 7)
!3732 = !DILocalVariable(name: "ptr", arg: 1, scope: !3733, file: !3029, line: 2057, type: !38)
!3733 = distinct !DISubprogram(name: "rpl_realloc", scope: !3029, file: !3029, line: 2057, type: !3021, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !3734)
!3734 = !{!3732, !3735}
!3735 = !DILocalVariable(name: "size", arg: 2, scope: !3733, file: !3029, line: 2057, type: !41)
!3736 = !DILocation(line: 0, scope: !3733, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 37, column: 10, scope: !3723)
!3738 = !DILocation(line: 2059, column: 24, scope: !3733, inlinedAt: !3737)
!3739 = !DILocation(line: 2059, column: 10, scope: !3733, inlinedAt: !3737)
!3740 = !DILocation(line: 37, column: 3, scope: !3723)
!3741 = !DILocation(line: 32, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3731, file: !412, line: 31, column: 5)
!3743 = !DILocation(line: 32, column: 13, scope: !3742)
!3744 = !DILocation(line: 33, column: 7, scope: !3742)
!3745 = !DILocation(line: 38, column: 1, scope: !3723)
!3746 = distinct !DISubprogram(name: "hard_locale", scope: !415, file: !415, line: 28, type: !3747, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3749)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!61, !39}
!3749 = !{!3750, !3751}
!3750 = !DILocalVariable(name: "category", arg: 1, scope: !3746, file: !415, line: 28, type: !39)
!3751 = !DILocalVariable(name: "locale", scope: !3746, file: !415, line: 30, type: !3752)
!3752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2056, elements: !3753)
!3753 = !{!3754}
!3754 = !DISubrange(count: 257)
!3755 = !DILocation(line: 0, scope: !3746)
!3756 = !DILocation(line: 30, column: 3, scope: !3746)
!3757 = !DILocation(line: 30, column: 8, scope: !3746)
!3758 = !DILocation(line: 32, column: 7, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3746, file: !415, line: 32, column: 7)
!3760 = !DILocation(line: 32, column: 7, scope: !3746)
!3761 = !DILocalVariable(name: "__s1", arg: 1, scope: !3762, file: !486, line: 1359, type: !44)
!3762 = distinct !DISubprogram(name: "streq", scope: !486, file: !486, line: 1359, type: !487, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3763)
!3763 = !{!3761, !3764}
!3764 = !DILocalVariable(name: "__s2", arg: 2, scope: !3762, file: !486, line: 1359, type: !44)
!3765 = !DILocation(line: 0, scope: !3762, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 35, column: 9, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3746, file: !415, line: 35, column: 7)
!3768 = !DILocation(line: 1361, column: 11, scope: !3762, inlinedAt: !3766)
!3769 = !DILocation(line: 1361, column: 10, scope: !3762, inlinedAt: !3766)
!3770 = !DILocation(line: 35, column: 29, scope: !3767)
!3771 = !DILocation(line: 0, scope: !3762, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 35, column: 32, scope: !3767)
!3773 = !DILocation(line: 1361, column: 11, scope: !3762, inlinedAt: !3772)
!3774 = !DILocation(line: 1361, column: 10, scope: !3762, inlinedAt: !3772)
!3775 = !DILocation(line: 35, column: 7, scope: !3746)
!3776 = !DILocation(line: 46, column: 3, scope: !3746)
!3777 = !DILocation(line: 47, column: 1, scope: !3746)
!3778 = distinct !DISubprogram(name: "setlocale_null_r", scope: !417, file: !417, line: 154, type: !3779, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!39, !39, !36, !41}
!3781 = !{!3782, !3783, !3784}
!3782 = !DILocalVariable(name: "category", arg: 1, scope: !3778, file: !417, line: 154, type: !39)
!3783 = !DILocalVariable(name: "buf", arg: 2, scope: !3778, file: !417, line: 154, type: !36)
!3784 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3778, file: !417, line: 154, type: !41)
!3785 = !DILocation(line: 0, scope: !3778)
!3786 = !DILocation(line: 159, column: 10, scope: !3778)
!3787 = !DILocation(line: 159, column: 3, scope: !3778)
!3788 = distinct !DISubprogram(name: "setlocale_null", scope: !417, file: !417, line: 186, type: !3789, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!44, !39}
!3791 = !{!3792}
!3792 = !DILocalVariable(name: "category", arg: 1, scope: !3788, file: !417, line: 186, type: !39)
!3793 = !DILocation(line: 0, scope: !3788)
!3794 = !DILocation(line: 189, column: 10, scope: !3788)
!3795 = !DILocation(line: 189, column: 3, scope: !3788)
!3796 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !419, file: !419, line: 35, type: !3789, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3797)
!3797 = !{!3798, !3799}
!3798 = !DILocalVariable(name: "category", arg: 1, scope: !3796, file: !419, line: 35, type: !39)
!3799 = !DILocalVariable(name: "result", scope: !3796, file: !419, line: 37, type: !44)
!3800 = !DILocation(line: 0, scope: !3796)
!3801 = !DILocation(line: 37, column: 24, scope: !3796)
!3802 = !DILocation(line: 62, column: 3, scope: !3796)
!3803 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !419, file: !419, line: 66, type: !3779, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3804)
!3804 = !{!3805, !3806, !3807, !3808, !3809}
!3805 = !DILocalVariable(name: "category", arg: 1, scope: !3803, file: !419, line: 66, type: !39)
!3806 = !DILocalVariable(name: "buf", arg: 2, scope: !3803, file: !419, line: 66, type: !36)
!3807 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3803, file: !419, line: 66, type: !41)
!3808 = !DILocalVariable(name: "result", scope: !3803, file: !419, line: 111, type: !44)
!3809 = !DILocalVariable(name: "length", scope: !3810, file: !419, line: 125, type: !41)
!3810 = distinct !DILexicalBlock(scope: !3811, file: !419, line: 124, column: 5)
!3811 = distinct !DILexicalBlock(scope: !3803, file: !419, line: 113, column: 7)
!3812 = !DILocation(line: 0, scope: !3803)
!3813 = !DILocation(line: 0, scope: !3796, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 111, column: 24, scope: !3803)
!3815 = !DILocation(line: 37, column: 24, scope: !3796, inlinedAt: !3814)
!3816 = !DILocation(line: 113, column: 14, scope: !3811)
!3817 = !DILocation(line: 113, column: 7, scope: !3803)
!3818 = !DILocation(line: 116, column: 19, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3820, file: !419, line: 116, column: 11)
!3820 = distinct !DILexicalBlock(scope: !3811, file: !419, line: 114, column: 5)
!3821 = !DILocation(line: 116, column: 11, scope: !3820)
!3822 = !DILocation(line: 120, column: 16, scope: !3819)
!3823 = !DILocation(line: 120, column: 9, scope: !3819)
!3824 = !DILocation(line: 125, column: 23, scope: !3810)
!3825 = !DILocation(line: 0, scope: !3810)
!3826 = !DILocation(line: 126, column: 18, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3810, file: !419, line: 126, column: 11)
!3828 = !DILocation(line: 126, column: 11, scope: !3810)
!3829 = !DILocation(line: 128, column: 39, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3827, file: !419, line: 127, column: 9)
!3831 = !DILocalVariable(name: "__dest", arg: 1, scope: !3832, file: !1464, line: 26, type: !3296)
!3832 = distinct !DISubprogram(name: "memcpy", scope: !1464, file: !1464, line: 26, type: !3294, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3833)
!3833 = !{!3831, !3834, !3835}
!3834 = !DILocalVariable(name: "__src", arg: 2, scope: !3832, file: !1464, line: 26, type: !652)
!3835 = !DILocalVariable(name: "__len", arg: 3, scope: !3832, file: !1464, line: 26, type: !41)
!3836 = !DILocation(line: 0, scope: !3832, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 128, column: 11, scope: !3830)
!3838 = !DILocation(line: 29, column: 10, scope: !3832, inlinedAt: !3837)
!3839 = !DILocation(line: 129, column: 11, scope: !3830)
!3840 = !DILocation(line: 133, column: 23, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !419, line: 133, column: 15)
!3842 = distinct !DILexicalBlock(scope: !3827, file: !419, line: 132, column: 9)
!3843 = !DILocation(line: 133, column: 15, scope: !3842)
!3844 = !DILocation(line: 138, column: 44, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3841, file: !419, line: 134, column: 13)
!3846 = !DILocation(line: 0, scope: !3832, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 138, column: 15, scope: !3845)
!3848 = !DILocation(line: 29, column: 10, scope: !3832, inlinedAt: !3847)
!3849 = !DILocation(line: 139, column: 15, scope: !3845)
!3850 = !DILocation(line: 139, column: 32, scope: !3845)
!3851 = !DILocation(line: 140, column: 13, scope: !3845)
!3852 = !DILocation(line: 0, scope: !3811)
!3853 = !DILocation(line: 145, column: 1, scope: !3803)
