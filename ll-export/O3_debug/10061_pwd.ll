; ModuleID = 'src/pwd.bc'
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
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Print the full filename of the current working directory.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"  -L, --logical\0A         use PWD from environment, even if it contains symlinks\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"  -P, --physical\0A         resolve all symlinks\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"\0AIf no option is specified, -P is assumed.\0A\00", align 1
@.str.9 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"LP\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 80 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"ignoring non-option arguments\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !52
@.str.18 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.40 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.48 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.49 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"physical\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"failed to stat %s\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"cannot open directory %s\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"failed to chdir to %s\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"reading directory %s\00", align 1
@.str.67 = private unnamed_addr constant [57 x i8] c"couldn't find directory entry in %s with matching i-node\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), align 8, !dbg !150
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !155
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !160
@.str.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !162
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !198
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !168
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !194
@.str.1.36 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.38 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.37 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !196
@.str.4.31 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.32 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.33 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !203
@.str.69 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.70 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !209
@.str.73 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.74 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.75 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.76 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.77 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.78 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.79 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.80 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.81 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.82 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.74, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.75, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.76, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.77, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.79, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.80, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.82, i32 0, i32 0), i8* null], align 8, !dbg !245
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !257
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !275
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !305
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !312
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !277
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !314
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !263
@.str.10.85 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.83 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.86 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.84 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !282
@.str.95 = private unnamed_addr constant [2 x i8] c"/\00", align 1
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
@.str.23.123 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !320
@exit_failure = dso_local global i32 1, align 4, !dbg !328
@.str.140 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.138 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.139 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !334
@.str.158 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.159 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !428 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !432, metadata !DIExpression()), !dbg !433
  %3 = icmp eq i32 %0, 0, !dbg !434
  br i1 %3, label %9, label %4, !dbg !436

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !437, !tbaa !439
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #33, !dbg !437
  %7 = load i8*, i8** @program_name, align 8, !dbg !437, !tbaa !439
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #33, !dbg !437
  br label %59, !dbg !437

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #33, !dbg !443
  %11 = load i8*, i8** @program_name, align 8, !dbg !443, !tbaa !439
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #33, !dbg !443
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #33, !dbg !445
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !445, !tbaa !439
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !445
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #33, !dbg !446
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !446
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #33, !dbg !447
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !447
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #33, !dbg !448
  tail call fastcc void @oputs_(i8* noundef %18), !dbg !448
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #33, !dbg !449
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !449
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #33, !dbg !450
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !450, !tbaa !439
  %22 = tail call i32 @fputs_unlocked(i8* noundef %20, %struct._IO_FILE* noundef %21), !dbg !450
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #33, !dbg !451
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #33, !dbg !451
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !452, metadata !DIExpression()) #33, !dbg !471
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !473
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #33, !dbg !473
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !457, metadata !DIExpression()) #33, !dbg !474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %25, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #33, !dbg !474
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !466, metadata !DIExpression()) #33, !dbg !471
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !467, metadata !DIExpression()) #33, !dbg !471
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !475
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !467, metadata !DIExpression()) #33, !dbg !471
  br label %27, !dbg !476

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !467, metadata !DIExpression()) #33, !dbg !471
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !484
  call void @llvm.dbg.value(metadata i8* %28, metadata !483, metadata !DIExpression()) #33, !dbg !484
  %30 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %28) #34, !dbg !486
  %31 = icmp eq i32 %30, 0, !dbg !487
  br i1 %31, label %37, label %32, !dbg !476

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !488
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !467, metadata !DIExpression()) #33, !dbg !471
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !489
  %35 = load i8*, i8** %34, align 8, !dbg !489, !tbaa !490
  %36 = icmp eq i8* %35, null, !dbg !492
  br i1 %36, label %37, label %27, !dbg !493, !llvm.loop !494

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %29, %27 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !496
  %40 = load i8*, i8** %39, align 8, !dbg !496, !tbaa !498
  %41 = icmp eq i8* %40, null, !dbg !499
  %42 = select i1 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %40, !dbg !500
  call void @llvm.dbg.value(metadata i8* %42, metadata !466, metadata !DIExpression()) #33, !dbg !471
  tail call void @emit_bug_reporting_address() #33, !dbg !501
  %43 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #33, !dbg !502
  call void @llvm.dbg.value(metadata i8* %43, metadata !469, metadata !DIExpression()) #33, !dbg !471
  %44 = icmp eq i8* %43, null, !dbg !503
  br i1 %44, label %52, label %45, !dbg !505

45:                                               ; preds = %37
  %46 = tail call i32 @strncmp(i8* noundef nonnull %43, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i64 noundef 3) #34, !dbg !506
  %47 = icmp eq i32 %46, 0, !dbg !506
  br i1 %47, label %52, label %48, !dbg !507

48:                                               ; preds = %45
  %49 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.49, i64 0, i64 0), i32 noundef 5) #33, !dbg !508
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !508, !tbaa !439
  %51 = tail call i32 @fputs_unlocked(i8* noundef %49, %struct._IO_FILE* noundef %50) #33, !dbg !508
  br label %52, !dbg !510

52:                                               ; preds = %37, %45, %48
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !511
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), metadata !483, metadata !DIExpression()) #33, !dbg !511
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !470, metadata !DIExpression()) #33, !dbg !471
  %53 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 noundef 5) #33, !dbg !513
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %53, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #33, !dbg !513
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i64 0, i64 0), i32 noundef 5) #33, !dbg !514
  %56 = icmp eq i8* %42, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), !dbg !514
  %57 = select i1 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !514
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %55, i8* noundef %42, i8* noundef %57) #33, !dbg !514
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #33, !dbg !515
  br label %59

59:                                               ; preds = %52, %4
  tail call void @exit(i32 noundef %0) #35, !dbg !516
  unreachable, !dbg !516
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !517 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !522 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !54 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !58, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i8* %0, metadata !59, metadata !DIExpression()), !dbg !527
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !528, !tbaa !529
  %3 = icmp eq i32 %2, -1, !dbg !531
  br i1 %3, label %4, label %16, !dbg !532

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #33, !dbg !533
  call void @llvm.dbg.value(metadata i8* %5, metadata !60, metadata !DIExpression()), !dbg !534
  %6 = icmp eq i8* %5, null, !dbg !535
  br i1 %6, label %14, label %7, !dbg !536

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !537, !tbaa !538
  %9 = icmp eq i8 %8, 0, !dbg !537
  br i1 %9, label %14, label %10, !dbg !539

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !477, metadata !DIExpression()) #33, !dbg !540
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !483, metadata !DIExpression()) #33, !dbg !540
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #34, !dbg !542
  %12 = icmp eq i32 %11, 0, !dbg !543
  %13 = zext i1 %12 to i32, !dbg !539
  br label %14, !dbg !539

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !544, !tbaa !529
  br label %16, !dbg !545

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !546
  %18 = icmp eq i32 %17, 0, !dbg !546
  br i1 %18, label %22, label %19, !dbg !548

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !549, !tbaa !439
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !549
  br label %121, !dbg !551

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !63, metadata !DIExpression()), !dbg !527
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #34, !dbg !552
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !553
  call void @llvm.dbg.value(metadata i8* %24, metadata !65, metadata !DIExpression()), !dbg !527
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #34, !dbg !554
  call void @llvm.dbg.value(metadata i8* %25, metadata !66, metadata !DIExpression()), !dbg !527
  %26 = icmp eq i8* %25, null, !dbg !555
  br i1 %26, label %53, label %27, !dbg !556

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !557
  br i1 %28, label %53, label %29, !dbg !558

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !67, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i64 0, metadata !71, metadata !DIExpression()), !dbg !559
  %30 = icmp ult i8* %24, %25, !dbg !560
  br i1 %30, label %31, label %53, !dbg !561

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #36, !dbg !527
  %33 = load i16*, i16** %32, align 8, !tbaa !439
  br label %34, !dbg !561

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !67, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i64 %36, metadata !71, metadata !DIExpression()), !dbg !559
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !562
  call void @llvm.dbg.value(metadata i8* %37, metadata !67, metadata !DIExpression()), !dbg !559
  %38 = load i8, i8* %35, align 1, !dbg !562, !tbaa !538
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !562
  %41 = load i16, i16* %40, align 2, !dbg !562, !tbaa !563
  %42 = lshr i16 %41, 13, !dbg !565
  %43 = and i16 %42, 1, !dbg !565
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !566
  call void @llvm.dbg.value(metadata i64 %45, metadata !71, metadata !DIExpression()), !dbg !559
  %46 = icmp ult i8* %37, %25, !dbg !560
  %47 = icmp ult i64 %45, 2, !dbg !567
  %48 = select i1 %46, i1 %47, i1 false, !dbg !567
  br i1 %48, label %34, label %49, !dbg !561, !llvm.loop !568

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !569
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !571
  %52 = xor i1 %50, true, !dbg !571
  br label %53, !dbg !571

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !527
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !63, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i8* %54, metadata !66, metadata !DIExpression()), !dbg !527
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #34, !dbg !572
  call void @llvm.dbg.value(metadata i64 %56, metadata !72, metadata !DIExpression()), !dbg !527
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !573
  call void @llvm.dbg.value(metadata i8* %57, metadata !73, metadata !DIExpression()), !dbg !527
  br label %58, !dbg !574

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !527
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !63, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i8* %59, metadata !73, metadata !DIExpression()), !dbg !527
  %61 = load i8, i8* %59, align 1, !dbg !575, !tbaa !538
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !576

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !577
  %64 = load i8, i8* %63, align 1, !dbg !580, !tbaa !538
  %65 = icmp ne i8 %64, 45, !dbg !581
  %66 = select i1 %65, i1 %60, i1 false, !dbg !582
  br label %67, !dbg !582

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !63, metadata !DIExpression()), !dbg !527
  %69 = tail call i16** @__ctype_b_loc() #36, !dbg !583
  %70 = load i16*, i16** %69, align 8, !dbg !583, !tbaa !439
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !583
  %73 = load i16, i16* %72, align 2, !dbg !583, !tbaa !563
  %74 = and i16 %73, 8192, !dbg !583
  %75 = icmp eq i16 %74, 0, !dbg !583
  br i1 %75, label %89, label %76, !dbg !585

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !586
  br i1 %77, label %91, label %78, !dbg !589

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !590
  %80 = load i8, i8* %79, align 1, !dbg !590, !tbaa !538
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !590
  %83 = load i16, i16* %82, align 2, !dbg !590, !tbaa !563
  %84 = and i16 %83, 8192, !dbg !590
  %85 = icmp eq i16 %84, 0, !dbg !590
  br i1 %85, label %86, label %91, !dbg !591

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !592
  br i1 %88, label %89, label %91, !dbg !592

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !594
  call void @llvm.dbg.value(metadata i8* %90, metadata !73, metadata !DIExpression()), !dbg !527
  br label %58, !dbg !574, !llvm.loop !595

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !597
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !597, !tbaa !439
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !597
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !598
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), metadata !483, metadata !DIExpression()) #33, !dbg !598
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !600
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !602
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !606
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !608
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !610
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !612
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !614
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !616
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !133, metadata !DIExpression()), !dbg !527
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i64 noundef 6) #34, !dbg !618
  %96 = icmp eq i32 %95, 0, !dbg !618
  br i1 %96, label %100, label %97, !dbg !620

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i64 noundef 9) #34, !dbg !621
  %99 = icmp eq i32 %98, 0, !dbg !621
  br i1 %99, label %100, label %103, !dbg !622

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !623
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #33, !dbg !623
  br label %106, !dbg !625

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !626
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #33, !dbg !626
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !439
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !628
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !439
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !629
  %111 = ptrtoint i8* %59 to i64, !dbg !630
  %112 = sub i64 %111, %92, !dbg !630
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !439
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !630
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !439
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !631
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !632, !tbaa !439
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !632
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !633, !tbaa !439
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !633
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !634
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
declare !dbg !635 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !639 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !643 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !649 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !654, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i8** %1, metadata !655, metadata !DIExpression()), !dbg !672
  %9 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)) #33, !dbg !673
  %10 = icmp ne i8* %9, null, !dbg !674
  call void @llvm.dbg.value(metadata i1 %10, metadata !656, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !672
  %11 = load i8*, i8** %1, align 8, !dbg !675, !tbaa !439
  tail call void @set_program_name(i8* noundef %11) #33, !dbg !676
  %12 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #33, !dbg !677
  %13 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #33, !dbg !678
  %14 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #33, !dbg !679
  %15 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #33, !dbg !680
  br label %16, !dbg !681

16:                                               ; preds = %20, %2
  %17 = phi i1 [ %10, %2 ], [ %21, %20 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !656, metadata !DIExpression()), !dbg !672
  %18 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #33, !dbg !682
  call void @llvm.dbg.value(metadata i32 %18, metadata !657, metadata !DIExpression()), !dbg !683
  switch i32 %18, label %27 [
    i32 -1, label %28
    i32 76, label %20
    i32 80, label %19
    i32 -2, label %22
    i32 -3, label %23
  ], !dbg !684

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 0, metadata !656, metadata !DIExpression()), !dbg !672
  br label %20, !dbg !685

20:                                               ; preds = %19, %16
  %21 = phi i1 [ false, %19 ], [ true, %16 ]
  br label %16, !dbg !672

22:                                               ; preds = %16
  tail call void @usage(i32 noundef 0) #37, !dbg !687
  unreachable, !dbg !687

23:                                               ; preds = %16
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !439
  %25 = load i8*, i8** @Version, align 8, !dbg !688, !tbaa !439
  %26 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)) #33, !dbg !688
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* noundef %25, i8* noundef %26, i8* noundef null) #33, !dbg !688
  tail call void @exit(i32 noundef 0) #35, !dbg !688
  unreachable, !dbg !688

27:                                               ; preds = %16
  tail call void @usage(i32 noundef 1) #37, !dbg !689
  unreachable, !dbg !689

28:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 poison, metadata !656, metadata !DIExpression()), !dbg !672
  %29 = load i32, i32* @optind, align 4, !dbg !690, !tbaa !529
  %30 = icmp slt i32 %29, %0, !dbg !692
  br i1 %30, label %31, label %33, !dbg !693

31:                                               ; preds = %28
  %32 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #33, !dbg !694
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %32) #33, !dbg !694
  br label %33, !dbg !694

33:                                               ; preds = %31, %28
  br i1 %17, label %34, label %77, !dbg !695

34:                                               ; preds = %33
  %35 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #33, !dbg !696
  call void @llvm.dbg.value(metadata i8* %35, metadata !701, metadata !DIExpression()) #33, !dbg !741
  %36 = icmp eq i8* %35, null, !dbg !742
  br i1 %36, label %77, label %37, !dbg !744

37:                                               ; preds = %34
  %38 = load i8, i8* %35, align 1, !dbg !745, !tbaa !538
  %39 = icmp eq i8 %38, 47, !dbg !746
  br i1 %39, label %40, label %77, !dbg !747

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i8* %35, metadata !702, metadata !DIExpression()) #33, !dbg !741
  %41 = tail call i8* @strstr(i8* noundef nonnull %35, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0)) #34, !dbg !748
  call void @llvm.dbg.value(metadata i8* %41, metadata !702, metadata !DIExpression()) #33, !dbg !741
  %42 = icmp eq i8* %41, null, !dbg !749
  br i1 %42, label %54, label %43, !dbg !749

43:                                               ; preds = %40, %50
  %44 = phi i8* [ %52, %50 ], [ %41, %40 ]
  %45 = getelementptr inbounds i8, i8* %44, i64 2, !dbg !750
  %46 = load i8, i8* %45, align 1, !dbg !750, !tbaa !538
  switch i8 %46, label %50 [
    i8 0, label %77
    i8 47, label %77
    i8 46, label %47
  ], !dbg !753

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, i8* %44, i64 3, !dbg !754
  %49 = load i8, i8* %48, align 1, !dbg !754, !tbaa !538
  switch i8 %49, label %50 [
    i8 0, label %77
    i8 47, label %77
  ], !dbg !755

50:                                               ; preds = %47, %43
  %51 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !756
  call void @llvm.dbg.value(metadata i8* %51, metadata !702, metadata !DIExpression()) #33, !dbg !741
  %52 = tail call i8* @strstr(i8* noundef nonnull %51, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0)) #34, !dbg !748
  call void @llvm.dbg.value(metadata i8* %52, metadata !702, metadata !DIExpression()) #33, !dbg !741
  %53 = icmp eq i8* %52, null, !dbg !749
  br i1 %53, label %54, label %43, !dbg !749, !llvm.loop !757

54:                                               ; preds = %50, %40
  %55 = bitcast %struct.stat* %7 to i8*, !dbg !759
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %55) #33, !dbg !759
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !703, metadata !DIExpression()) #33, !dbg !760
  %56 = bitcast %struct.stat* %8 to i8*, !dbg !761
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %56) #33, !dbg !761
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !739, metadata !DIExpression()) #33, !dbg !762
  %57 = call i32 @stat(i8* noundef nonnull %35, %struct.stat* noundef nonnull %7) #33, !dbg !763
  %58 = icmp eq i32 %57, 0, !dbg !765
  br i1 %58, label %59, label %74, !dbg !766

59:                                               ; preds = %54
  %60 = call i32 @stat(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %struct.stat* noundef nonnull %8) #33, !dbg !767
  %61 = icmp eq i32 %60, 0, !dbg !768
  br i1 %61, label %62, label %74, !dbg !769

62:                                               ; preds = %59
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !770, metadata !DIExpression()) #33, !dbg !779
  call void @llvm.dbg.value(metadata %struct.stat* %8, metadata !778, metadata !DIExpression()) #33, !dbg !779
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !781
  %64 = load i64, i64* %63, align 8, !dbg !781, !tbaa !782
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 0, !dbg !781
  %66 = load i64, i64* %65, align 8, !dbg !781, !tbaa !782
  %67 = icmp eq i64 %64, %66, !dbg !781
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !781
  %69 = load i64, i64* %68, align 8, !dbg !781, !tbaa !786
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 1, !dbg !781
  %71 = load i64, i64* %70, align 8, !dbg !781, !tbaa !786
  %72 = icmp eq i64 %69, %71, !dbg !781
  %73 = and i1 %67, %72, !dbg !781
  br i1 %73, label %75, label %74, !dbg !787

74:                                               ; preds = %54, %59, %62
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %56) #33, !dbg !788
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %55) #33, !dbg !788
  call void @llvm.dbg.value(metadata i8* %35, metadata !659, metadata !DIExpression()), !dbg !789
  br label %77, !dbg !790

75:                                               ; preds = %62
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %56) #33, !dbg !788
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %55) #33, !dbg !788
  call void @llvm.dbg.value(metadata i8* %35, metadata !659, metadata !DIExpression()), !dbg !789
  %76 = tail call i32 @puts(i8* noundef nonnull %35), !dbg !791
  br label %319

77:                                               ; preds = %47, %47, %43, %43, %34, %37, %74, %33
  %78 = tail call noalias i8* @xgetcwd() #33, !dbg !794
  call void @llvm.dbg.value(metadata i8* %78, metadata !662, metadata !DIExpression()), !dbg !672
  %79 = icmp eq i8* %78, null, !dbg !795
  br i1 %79, label %82, label %80, !dbg !796

80:                                               ; preds = %77
  %81 = tail call i32 @puts(i8* noundef nonnull %78), !dbg !797
  tail call void @free(i8* noundef nonnull %78) #33, !dbg !799
  br label %319, !dbg !800

82:                                               ; preds = %77
  %83 = tail call noalias nonnull i8* @xmalloc(i64 noundef 24) #38, !dbg !801
  call void @llvm.dbg.value(metadata i8* %83, metadata !806, metadata !DIExpression()) #33, !dbg !809
  call void @llvm.dbg.value(metadata i32 8192, metadata !807, metadata !DIExpression()) #33, !dbg !809
  %84 = getelementptr inbounds i8, i8* %83, i64 8, !dbg !810
  %85 = bitcast i8* %84 to i64*, !dbg !810
  store i64 8192, i64* %85, align 8, !dbg !811, !tbaa !812
  %86 = tail call noalias nonnull i8* @xmalloc(i64 noundef 8192) #38, !dbg !814
  %87 = bitcast i8* %83 to i8**, !dbg !815
  store i8* %86, i8** %87, align 8, !dbg !816, !tbaa !817
  %88 = getelementptr inbounds i8, i8* %86, i64 8191, !dbg !818
  %89 = getelementptr inbounds i8, i8* %83, i64 16, !dbg !819
  %90 = bitcast i8* %89 to i8**, !dbg !819
  store i8* %88, i8** %90, align 8, !dbg !820, !tbaa !821
  store i8 0, i8* %88, align 1, !dbg !822, !tbaa !538
  call void @llvm.dbg.value(metadata i8* %83, metadata !663, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i8* %83, metadata !824, metadata !DIExpression()) #33, !dbg !842
  call void @llvm.dbg.value(metadata i64 1, metadata !829, metadata !DIExpression()) #33, !dbg !842
  %91 = bitcast %struct.timespec* %5 to i8*, !dbg !844
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %91) #33, !dbg !844
  call void @llvm.dbg.declare(metadata %struct.timespec* %5, metadata !830, metadata !DIExpression()) #33, !dbg !845
  %92 = call %struct.timespec* @get_root_dev_ino(%struct.timespec* noundef nonnull %5) #33, !dbg !846
  call void @llvm.dbg.value(metadata %struct.timespec* %92, metadata !839, metadata !DIExpression()) #33, !dbg !842
  %93 = icmp eq %struct.timespec* %92, null, !dbg !847
  br i1 %93, label %94, label %99, !dbg !849

94:                                               ; preds = %82
  %95 = tail call i32* @__errno_location() #36, !dbg !850
  %96 = load i32, i32* %95, align 4, !dbg !850, !tbaa !529
  %97 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i64 0, i64 0), i32 noundef 5) #33, !dbg !850
  %98 = call i8* @quotearg_style(i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #33, !dbg !850
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %96, i8* noundef %97, i8* noundef %98) #33, !dbg !850
  unreachable, !dbg !850

99:                                               ; preds = %82
  %100 = bitcast %struct.stat* %6 to i8*, !dbg !851
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %100) #33, !dbg !851
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !841, metadata !DIExpression()) #33, !dbg !852
  %101 = call i32 @stat(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %struct.stat* noundef nonnull %6) #33, !dbg !853
  %102 = icmp slt i32 %101, 0, !dbg !855
  br i1 %102, label %121, label %103, !dbg !856

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0
  %105 = getelementptr inbounds %struct.timespec, %struct.timespec* %92, i64 0, i32 1
  %106 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1
  %107 = getelementptr inbounds %struct.timespec, %struct.timespec* %92, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 1, metadata !829, metadata !DIExpression()) #33, !dbg !842
  %108 = load i64, i64* %104, align 8, !dbg !857, !tbaa !782
  %109 = load i64, i64* %105, align 8, !dbg !857, !tbaa !860
  %110 = load i64, i64* %106, align 8, !dbg !857, !tbaa !786
  %111 = load i64, i64* %107, align 8, !dbg !857, !tbaa !862
  %112 = icmp eq i64 %108, %109, !dbg !857
  %113 = icmp eq i64 %110, %111, !dbg !857
  %114 = and i1 %112, %113, !dbg !857
  br i1 %114, label %294, label %115, !dbg !863

115:                                              ; preds = %103
  %116 = bitcast %struct.stat* %3 to i8*
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 0
  %118 = bitcast %struct.stat* %4 to i8*
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0
  br label %126, !dbg !863

121:                                              ; preds = %99
  %122 = tail call i32* @__errno_location() #36, !dbg !864
  %123 = load i32, i32* %122, align 4, !dbg !864, !tbaa !529
  %124 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i32 noundef 5) #33, !dbg !864
  %125 = call i8* @quotearg_style(i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0)) #33, !dbg !864
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %123, i8* noundef %124, i8* noundef %125) #33, !dbg !864
  unreachable, !dbg !864

126:                                              ; preds = %286, %115
  %127 = phi i64 [ %110, %115 ], [ %289, %286 ]
  %128 = phi i64 [ %108, %115 ], [ %287, %286 ]
  %129 = phi i64 [ 1, %115 ], [ %130, %286 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !829, metadata !DIExpression()) #33, !dbg !842
  %130 = add i64 %129, 1, !dbg !865
  call void @llvm.dbg.value(metadata i64 %130, metadata !829, metadata !DIExpression()) #33, !dbg !842
  call void @llvm.dbg.value(metadata %struct.stat* %6, metadata !866, metadata !DIExpression()) #33, !dbg !902
  call void @llvm.dbg.value(metadata i8* %83, metadata !872, metadata !DIExpression()) #33, !dbg !902
  call void @llvm.dbg.value(metadata i64 %129, metadata !873, metadata !DIExpression()) #33, !dbg !902
  %131 = call %struct.__dirstream* @opendir(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0)) #33, !dbg !904
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !874, metadata !DIExpression()) #33, !dbg !902
  %132 = icmp eq %struct.__dirstream* %131, null, !dbg !905
  br i1 %132, label %133, label %139, !dbg !907

133:                                              ; preds = %126
  %134 = tail call i32* @__errno_location() #36, !dbg !908
  %135 = load i32, i32* %134, align 4, !dbg !908, !tbaa !529
  %136 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #33, !dbg !908
  %137 = call fastcc i8* @nth_parent(i64 noundef %129) #33, !dbg !908
  %138 = call i8* @quote(i8* noundef nonnull %137) #33, !dbg !908
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %135, i8* noundef %136, i8* noundef %138) #33, !dbg !908
  unreachable, !dbg !908

139:                                              ; preds = %126
  %140 = call i32 @dirfd(%struct.__dirstream* noundef nonnull %131) #33, !dbg !909
  call void @llvm.dbg.value(metadata i32 %140, metadata !879, metadata !DIExpression()) #33, !dbg !902
  %141 = icmp sgt i32 %140, -1, !dbg !910
  br i1 %141, label %142, label %145, !dbg !912

142:                                              ; preds = %139
  %143 = call i32 @fchdir(i32 noundef %140) #33, !dbg !913
  %144 = icmp slt i32 %143, 0, !dbg !914
  br i1 %144, label %148, label %154, !dbg !915

145:                                              ; preds = %139
  %146 = call i32 @chdir(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0)) #33, !dbg !916
  %147 = icmp slt i32 %146, 0, !dbg !914
  br i1 %147, label %148, label %156, !dbg !915

148:                                              ; preds = %145, %142
  %149 = tail call i32* @__errno_location() #36, !dbg !917
  %150 = load i32, i32* %149, align 4, !dbg !917, !tbaa !529
  %151 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0), i32 noundef 5) #33, !dbg !917
  %152 = call fastcc i8* @nth_parent(i64 noundef %129) #33, !dbg !917
  %153 = call i8* @quote(i8* noundef nonnull %152) #33, !dbg !917
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %150, i8* noundef %151, i8* noundef %153) #33, !dbg !917
  unreachable, !dbg !917

154:                                              ; preds = %142
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %116) #33, !dbg !918
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !880, metadata !DIExpression()) #33, !dbg !919
  %155 = call i32 @fstat(i32 noundef %140, %struct.stat* noundef nonnull %3) #33, !dbg !920
  br label %158, !dbg !922

156:                                              ; preds = %145
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %116) #33, !dbg !918
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !880, metadata !DIExpression()) #33, !dbg !919
  %157 = call i32 @stat(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %struct.stat* noundef nonnull %3) #33, !dbg !923
  br label %158, !dbg !922

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ], !dbg !922
  %160 = icmp slt i32 %159, 0, !dbg !924
  br i1 %160, label %161, label %167, !dbg !925

161:                                              ; preds = %158
  %162 = tail call i32* @__errno_location() #36, !dbg !926
  %163 = load i32, i32* %162, align 4, !dbg !926, !tbaa !529
  %164 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i32 noundef 5) #33, !dbg !926
  %165 = call fastcc i8* @nth_parent(i64 noundef %129) #33, !dbg !926
  %166 = call i8* @quote(i8* noundef nonnull %165) #33, !dbg !926
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %163, i8* noundef %164, i8* noundef %166) #33, !dbg !926
  unreachable, !dbg !926

167:                                              ; preds = %158
  %168 = load i64, i64* %117, align 8, !dbg !927, !tbaa !782
  call void @llvm.dbg.value(metadata i1 undef, metadata !881, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !902
  call void @llvm.dbg.value(metadata i8 0, metadata !882, metadata !DIExpression()) #33, !dbg !902
  %169 = tail call i32* @__errno_location() #36, !dbg !902
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !874, metadata !DIExpression()) #33, !dbg !902
  call void @llvm.dbg.value(metadata i8 poison, metadata !882, metadata !DIExpression()) #33, !dbg !902
  store i32 0, i32* %169, align 4, !dbg !928, !tbaa !529
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !929, metadata !DIExpression()) #33, !dbg !936
  %170 = call %struct.dirent* @readdir(%struct.__dirstream* noundef nonnull %131) #33, !dbg !938
  call void @llvm.dbg.value(metadata %struct.dirent* %170, metadata !934, metadata !DIExpression()) #33, !dbg !939
  %171 = icmp eq %struct.dirent* %170, null, !dbg !940
  br i1 %171, label %237, label %172, !dbg !942

172:                                              ; preds = %167
  %173 = icmp eq i64 %168, %128, !dbg !943
  call void @llvm.dbg.value(metadata i1 %173, metadata !881, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !902
  br i1 %173, label %174, label %207, !dbg !944

174:                                              ; preds = %172, %189
  %175 = phi %struct.dirent* [ %190, %189 ], [ %170, %172 ]
  %176 = getelementptr inbounds %struct.dirent, %struct.dirent* %175, i64 0, i32 4, i64 0, !dbg !946
  call void @llvm.dbg.value(metadata i8* %176, metadata !947, metadata !DIExpression()) #33, !dbg !955
  %177 = load i8, i8* %176, align 1, !dbg !957, !tbaa !538
  %178 = icmp eq i8 %177, 46, !dbg !958
  br i1 %178, label %179, label %191, !dbg !959

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.dirent, %struct.dirent* %175, i64 0, i32 4, i64 1, !dbg !960
  %181 = load i8, i8* %180, align 1, !dbg !960, !tbaa !538
  %182 = icmp eq i8 %181, 46, !dbg !961
  %183 = select i1 %182, i64 2, i64 1, !dbg !962
  %184 = getelementptr inbounds %struct.dirent, %struct.dirent* %175, i64 0, i32 4, i64 %183, !dbg !963
  %185 = load i8, i8* %184, align 1, !dbg !963, !tbaa !538
  call void @llvm.dbg.value(metadata i8 %185, metadata !952, metadata !DIExpression()) #33, !dbg !964
  switch i8 %185, label %191 [
    i8 47, label %186
    i8 0, label %186
  ], !dbg !965

186:                                              ; preds = %179, %179
  %187 = call %struct.dirent* @readdir(%struct.__dirstream* noundef nonnull %131) #33, !dbg !938
  call void @llvm.dbg.value(metadata %struct.dirent* %187, metadata !934, metadata !DIExpression()) #33, !dbg !939
  %188 = icmp eq %struct.dirent* %187, null, !dbg !940
  br i1 %188, label %237, label %189, !dbg !942

189:                                              ; preds = %186, %204
  %190 = phi %struct.dirent* [ %187, %186 ], [ %205, %204 ]
  br label %174, !dbg !946

191:                                              ; preds = %179, %174
  call void @llvm.dbg.value(metadata %struct.dirent* %175, metadata !883, metadata !DIExpression()) #33, !dbg !966
  %192 = getelementptr inbounds %struct.dirent, %struct.dirent* %175, i64 0, i32 0, !dbg !967
  %193 = load i64, i64* %192, align 8, !dbg !967, !tbaa !968
  call void @llvm.dbg.value(metadata i64 %193, metadata !900, metadata !DIExpression()) #33, !dbg !966
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %118) #33, !dbg !970
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !901, metadata !DIExpression()) #33, !dbg !971
  %194 = icmp eq i64 %193, 0, !dbg !972
  br i1 %194, label %195, label %201, !dbg !974

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.dirent, %struct.dirent* %175, i64 0, i32 4, i64 0, !dbg !946
  %197 = call i32 @lstat(i8* noundef nonnull %196, %struct.stat* noundef nonnull %4) #33, !dbg !975
  %198 = icmp slt i32 %197, 0, !dbg !978
  br i1 %198, label %204, label %199, !dbg !979, !llvm.loop !980

199:                                              ; preds = %195
  %200 = load i64, i64* %119, align 8, !dbg !983, !tbaa !786
  call void @llvm.dbg.value(metadata i64 %200, metadata !900, metadata !DIExpression()) #33, !dbg !966
  br label %201, !dbg !984

201:                                              ; preds = %199, %191
  %202 = phi i64 [ %200, %199 ], [ %193, %191 ], !dbg !966
  call void @llvm.dbg.value(metadata i64 %202, metadata !900, metadata !DIExpression()) #33, !dbg !966
  %203 = icmp eq i64 %202, %127, !dbg !985
  br i1 %203, label %242, label %204, !dbg !987, !llvm.loop !988

204:                                              ; preds = %201, %195
  call void @llvm.dbg.value(metadata i8 poison, metadata !882, metadata !DIExpression()) #33, !dbg !902
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %118) #33, !dbg !982
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !874, metadata !DIExpression()) #33, !dbg !902
  store i32 0, i32* %169, align 4, !dbg !928, !tbaa !529
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !929, metadata !DIExpression()) #33, !dbg !936
  %205 = call %struct.dirent* @readdir(%struct.__dirstream* noundef nonnull %131) #33, !dbg !938
  call void @llvm.dbg.value(metadata %struct.dirent* %205, metadata !934, metadata !DIExpression()) #33, !dbg !939
  %206 = icmp eq %struct.dirent* %205, null, !dbg !940
  br i1 %206, label %237, label %189, !dbg !942

207:                                              ; preds = %172, %222
  %208 = phi %struct.dirent* [ %223, %222 ], [ %170, %172 ]
  %209 = getelementptr inbounds %struct.dirent, %struct.dirent* %208, i64 0, i32 4, i64 0, !dbg !946
  call void @llvm.dbg.value(metadata i8* %209, metadata !947, metadata !DIExpression()) #33, !dbg !955
  %210 = load i8, i8* %209, align 1, !dbg !957, !tbaa !538
  %211 = icmp eq i8 %210, 46, !dbg !958
  br i1 %211, label %212, label %224, !dbg !959

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.dirent, %struct.dirent* %208, i64 0, i32 4, i64 1, !dbg !960
  %214 = load i8, i8* %213, align 1, !dbg !960, !tbaa !538
  %215 = icmp eq i8 %214, 46, !dbg !961
  %216 = select i1 %215, i64 2, i64 1, !dbg !962
  %217 = getelementptr inbounds %struct.dirent, %struct.dirent* %208, i64 0, i32 4, i64 %216, !dbg !963
  %218 = load i8, i8* %217, align 1, !dbg !963, !tbaa !538
  call void @llvm.dbg.value(metadata i8 %218, metadata !952, metadata !DIExpression()) #33, !dbg !964
  switch i8 %218, label %224 [
    i8 47, label %219
    i8 0, label %219
  ], !dbg !965

219:                                              ; preds = %212, %212
  %220 = call %struct.dirent* @readdir(%struct.__dirstream* noundef nonnull %131) #33, !dbg !938
  call void @llvm.dbg.value(metadata %struct.dirent* %220, metadata !934, metadata !DIExpression()) #33, !dbg !939
  %221 = icmp eq %struct.dirent* %220, null, !dbg !940
  br i1 %221, label %237, label %222, !dbg !942

222:                                              ; preds = %219, %234
  %223 = phi %struct.dirent* [ %220, %219 ], [ %235, %234 ]
  br label %207, !dbg !946

224:                                              ; preds = %212, %207
  %225 = getelementptr inbounds %struct.dirent, %struct.dirent* %208, i64 0, i32 4, i64 0, !dbg !946
  call void @llvm.dbg.value(metadata %struct.dirent* %208, metadata !883, metadata !DIExpression()) #33, !dbg !966
  call void @llvm.dbg.value(metadata i64 undef, metadata !900, metadata !DIExpression()) #33, !dbg !966
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %118) #33, !dbg !970
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !901, metadata !DIExpression()) #33, !dbg !971
  %226 = call i32 @lstat(i8* noundef nonnull %225, %struct.stat* noundef nonnull %4) #33, !dbg !975
  %227 = icmp sgt i32 %226, -1, !dbg !978
  %228 = load i64, i64* %119, align 8
  %229 = icmp eq i64 %228, %127
  %230 = select i1 %227, i1 %229, i1 false, !dbg !979
  %231 = load i64, i64* %120, align 8
  %232 = icmp eq i64 %231, %128
  %233 = select i1 %230, i1 %232, i1 false, !dbg !979
  br i1 %233, label %242, label %234, !dbg !979, !llvm.loop !989

234:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 poison, metadata !882, metadata !DIExpression()) #33, !dbg !902
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %118) #33, !dbg !982
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !874, metadata !DIExpression()) #33, !dbg !902
  store i32 0, i32* %169, align 4, !dbg !928, !tbaa !529
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !929, metadata !DIExpression()) #33, !dbg !936
  %235 = call %struct.dirent* @readdir(%struct.__dirstream* noundef nonnull %131) #33, !dbg !938
  call void @llvm.dbg.value(metadata %struct.dirent* %235, metadata !934, metadata !DIExpression()) #33, !dbg !939
  %236 = icmp eq %struct.dirent* %235, null, !dbg !940
  br i1 %236, label %237, label %222, !dbg !942

237:                                              ; preds = %167, %234, %219, %204, %186
  call void @llvm.dbg.value(metadata %struct.dirent* undef, metadata !883, metadata !DIExpression()) #33, !dbg !966
  %238 = load i32, i32* %169, align 4, !dbg !990, !tbaa !529
  %239 = icmp eq i32 %238, 0, !dbg !990
  %240 = call i32 @closedir(%struct.__dirstream* noundef nonnull %131) #33, !dbg !902
  br i1 %239, label %273, label %241, !dbg !991

241:                                              ; preds = %237
  call void @llvm.dbg.value(metadata i32 %238, metadata !895, metadata !DIExpression()) #33, !dbg !992
  store i32 %238, i32* %169, align 4, !dbg !993, !tbaa !529
  call void @llvm.dbg.value(metadata %struct.__dirstream* null, metadata !874, metadata !DIExpression()) #33, !dbg !902
  br label %277, !dbg !994

242:                                              ; preds = %224, %201
  %243 = phi %struct.dirent* [ %175, %201 ], [ %208, %224 ]
  %244 = getelementptr inbounds %struct.dirent, %struct.dirent* %243, i64 0, i32 4, i64 0, !dbg !996
  %245 = call i64 @strlen(i8* noundef nonnull %244) #34, !dbg !998
  call void @llvm.dbg.value(metadata i8* %83, metadata !999, metadata !DIExpression()) #33, !dbg !1011
  call void @llvm.dbg.value(metadata i8* %244, metadata !1004, metadata !DIExpression()) #33, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %245, metadata !1005, metadata !DIExpression()) #33, !dbg !1011
  %246 = load i8*, i8** %90, align 8, !dbg !1013, !tbaa !821
  %247 = load i8*, i8** %87, align 8, !dbg !1014, !tbaa !817
  %248 = ptrtoint i8* %246 to i64, !dbg !1015
  %249 = ptrtoint i8* %247 to i64, !dbg !1015
  %250 = sub i64 %248, %249, !dbg !1015
  call void @llvm.dbg.value(metadata i64 %250, metadata !1006, metadata !DIExpression()) #33, !dbg !1011
  %251 = add i64 %245, 1, !dbg !1016
  %252 = icmp ugt i64 %251, %250, !dbg !1017
  br i1 %252, label %253, label %265, !dbg !1018

253:                                              ; preds = %242
  %254 = load i64, i64* %85, align 8, !dbg !1019, !tbaa !812
  %255 = sub nsw i64 %254, %250, !dbg !1020
  call void @llvm.dbg.value(metadata i64 %255, metadata !1007, metadata !DIExpression()) #33, !dbg !1021
  %256 = sub i64 %251, %250, !dbg !1022
  %257 = call nonnull i8* @xpalloc(i8* noundef null, i64* noundef nonnull %85, i64 noundef %256, i64 noundef -1, i64 noundef 1) #33, !dbg !1023
  call void @llvm.dbg.value(metadata i8* %257, metadata !1010, metadata !DIExpression()) #33, !dbg !1021
  %258 = load i64, i64* %85, align 8, !dbg !1024, !tbaa !812
  %259 = getelementptr inbounds i8, i8* %257, i64 %258, !dbg !1025
  %260 = sub i64 0, %255, !dbg !1026
  %261 = getelementptr inbounds i8, i8* %259, i64 %260, !dbg !1026
  %262 = load i8*, i8** %90, align 8, !dbg !1027, !tbaa !821
  call void @llvm.dbg.value(metadata i8* %261, metadata !1028, metadata !DIExpression()) #33, !dbg !1037
  call void @llvm.dbg.value(metadata i8* %262, metadata !1035, metadata !DIExpression()) #33, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %255, metadata !1036, metadata !DIExpression()) #33, !dbg !1037
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %261, i8* noundef nonnull align 1 %262, i64 noundef %255, i1 noundef false) #33, !dbg !1039
  store i8* %261, i8** %90, align 8, !dbg !1040, !tbaa !821
  %263 = load i8*, i8** %87, align 8, !dbg !1041, !tbaa !817
  call void @free(i8* noundef %263) #33, !dbg !1042
  store i8* %257, i8** %87, align 8, !dbg !1043, !tbaa !817
  %264 = load i8*, i8** %90, align 8, !dbg !1044, !tbaa !821
  br label %265, !dbg !1045

265:                                              ; preds = %253, %242
  %266 = phi i8* [ %264, %253 ], [ %246, %242 ], !dbg !1044
  %267 = xor i64 %245, -1, !dbg !1044
  %268 = getelementptr inbounds i8, i8* %266, i64 %267, !dbg !1044
  store i8* %268, i8** %90, align 8, !dbg !1044, !tbaa !821
  store i8 47, i8* %268, align 1, !dbg !1046, !tbaa !538
  %269 = load i8*, i8** %90, align 8, !dbg !1047, !tbaa !821
  %270 = getelementptr inbounds i8, i8* %269, i64 1, !dbg !1048
  call void @llvm.dbg.value(metadata i8* %270, metadata !1028, metadata !DIExpression()) #33, !dbg !1049
  call void @llvm.dbg.value(metadata i8* %244, metadata !1035, metadata !DIExpression()) #33, !dbg !1049
  call void @llvm.dbg.value(metadata i64 %245, metadata !1036, metadata !DIExpression()) #33, !dbg !1049
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %270, i8* noundef nonnull align 1 %244, i64 noundef %245, i1 noundef false) #33, !dbg !1051
  call void @llvm.dbg.value(metadata i8 poison, metadata !882, metadata !DIExpression()) #33, !dbg !902
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %118) #33, !dbg !982
  call void @llvm.dbg.value(metadata %struct.__dirstream* %131, metadata !874, metadata !DIExpression()) #33, !dbg !902
  %271 = call i32 @closedir(%struct.__dirstream* noundef nonnull %131) #33, !dbg !1052
  %272 = icmp eq i32 %271, 0, !dbg !1053
  br i1 %272, label %286, label %275, !dbg !1054

273:                                              ; preds = %237
  %274 = icmp eq i32 %240, 0, !dbg !1053
  br i1 %274, label %282, label %275, !dbg !1054

275:                                              ; preds = %265, %273
  %276 = load i32, i32* %169, align 4, !dbg !1055, !tbaa !529
  br label %277, !dbg !1054

277:                                              ; preds = %275, %241
  %278 = phi i32 [ %276, %275 ], [ %238, %241 ], !dbg !1055
  %279 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0), i32 noundef 5) #33, !dbg !1055
  %280 = call fastcc i8* @nth_parent(i64 noundef %129) #33, !dbg !1055
  %281 = call i8* @quote(i8* noundef nonnull %280) #33, !dbg !1055
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %278, i8* noundef %279, i8* noundef %281) #33, !dbg !1055
  unreachable, !dbg !1055

282:                                              ; preds = %273
  %283 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.67, i64 0, i64 0), i32 noundef 5) #33, !dbg !1057
  %284 = call fastcc i8* @nth_parent(i64 noundef %129) #33, !dbg !1057
  %285 = call i8* @quote(i8* noundef nonnull %284) #33, !dbg !1057
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %283, i8* noundef %285) #33, !dbg !1057
  unreachable, !dbg !1057

286:                                              ; preds = %265
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %100, i8* noundef nonnull align 8 dereferenceable(128) %116, i64 128, i1 false) #33, !dbg !1059, !tbaa.struct !1060
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %116) #33, !dbg !1062
  call void @llvm.dbg.value(metadata i64 %130, metadata !829, metadata !DIExpression()) #33, !dbg !842
  %287 = load i64, i64* %104, align 8, !dbg !857, !tbaa !782
  %288 = load i64, i64* %105, align 8, !dbg !857, !tbaa !860
  %289 = load i64, i64* %106, align 8, !dbg !857, !tbaa !786
  %290 = load i64, i64* %107, align 8, !dbg !857, !tbaa !862
  %291 = icmp eq i64 %287, %288, !dbg !857
  %292 = icmp eq i64 %289, %290, !dbg !857
  %293 = and i1 %291, %292, !dbg !857
  br i1 %293, label %294, label %126, !dbg !863, !llvm.loop !1063

294:                                              ; preds = %286, %103
  %295 = load i8*, i8** %90, align 8, !dbg !1066, !tbaa !821
  %296 = load i8, i8* %295, align 1, !dbg !1068, !tbaa !538
  %297 = icmp eq i8 %296, 0, !dbg !1069
  br i1 %297, label %298, label %315, !dbg !1070

298:                                              ; preds = %294
  call void @llvm.dbg.value(metadata i8* %83, metadata !999, metadata !DIExpression()) #33, !dbg !1071
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), metadata !1004, metadata !DIExpression()) #33, !dbg !1071
  call void @llvm.dbg.value(metadata i64 0, metadata !1005, metadata !DIExpression()) #33, !dbg !1071
  %299 = load i8*, i8** %87, align 8, !dbg !1073, !tbaa !817
  call void @llvm.dbg.value(metadata !DIArgList(i8* %295, i8* %299), metadata !1006, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #33, !dbg !1071
  %300 = icmp eq i8* %295, %299, !dbg !1074
  br i1 %300, label %301, label %311, !dbg !1075

301:                                              ; preds = %298
  %302 = load i64, i64* %85, align 8, !dbg !1076, !tbaa !812
  call void @llvm.dbg.value(metadata i64 %302, metadata !1007, metadata !DIExpression()) #33, !dbg !1077
  %303 = call nonnull i8* @xpalloc(i8* noundef null, i64* noundef nonnull %85, i64 noundef 1, i64 noundef -1, i64 noundef 1) #33, !dbg !1078
  call void @llvm.dbg.value(metadata i8* %303, metadata !1010, metadata !DIExpression()) #33, !dbg !1077
  %304 = load i64, i64* %85, align 8, !dbg !1079, !tbaa !812
  %305 = getelementptr inbounds i8, i8* %303, i64 %304, !dbg !1080
  %306 = sub i64 0, %302, !dbg !1081
  %307 = getelementptr inbounds i8, i8* %305, i64 %306, !dbg !1081
  %308 = load i8*, i8** %90, align 8, !dbg !1082, !tbaa !821
  call void @llvm.dbg.value(metadata i8* %307, metadata !1028, metadata !DIExpression()) #33, !dbg !1083
  call void @llvm.dbg.value(metadata i8* %308, metadata !1035, metadata !DIExpression()) #33, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %302, metadata !1036, metadata !DIExpression()) #33, !dbg !1083
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %307, i8* noundef nonnull align 1 %308, i64 noundef %302, i1 noundef false) #33, !dbg !1085
  store i8* %307, i8** %90, align 8, !dbg !1086, !tbaa !821
  %309 = load i8*, i8** %87, align 8, !dbg !1087, !tbaa !817
  call void @free(i8* noundef %309) #33, !dbg !1088
  store i8* %303, i8** %87, align 8, !dbg !1089, !tbaa !817
  %310 = load i8*, i8** %90, align 8, !dbg !1090, !tbaa !821
  br label %311, !dbg !1091

311:                                              ; preds = %301, %298
  %312 = phi i8* [ %310, %301 ], [ %295, %298 ], !dbg !1090
  %313 = getelementptr inbounds i8, i8* %312, i64 -1, !dbg !1090
  store i8* %313, i8** %90, align 8, !dbg !1090, !tbaa !821
  store i8 47, i8* %313, align 1, !dbg !1092, !tbaa !538
  call void @llvm.dbg.value(metadata i8* undef, metadata !1028, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #33, !dbg !1093
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), metadata !1035, metadata !DIExpression()) #33, !dbg !1093
  call void @llvm.dbg.value(metadata i64 0, metadata !1036, metadata !DIExpression()) #33, !dbg !1093
  %314 = load i8*, i8** %90, align 8, !dbg !1095, !tbaa !821
  br label %315, !dbg !1096

315:                                              ; preds = %294, %311
  %316 = phi i8* [ %295, %294 ], [ %314, %311 ], !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %100) #33, !dbg !1097
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %91) #33, !dbg !1097
  %317 = call i32 @puts(i8* noundef nonnull dereferenceable(1) %316), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %83, metadata !1099, metadata !DIExpression()) #33, !dbg !1102
  %318 = load i8*, i8** %87, align 8, !dbg !1104, !tbaa !817
  call void @free(i8* noundef %318) #33, !dbg !1105
  call void @free(i8* noundef nonnull %83) #33, !dbg !1106
  br label %319

319:                                              ; preds = %75, %80, %315
  ret i32 0, !dbg !1107
}

; Function Attrs: nounwind
declare !dbg !1108 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1111 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1112 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1115 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !1121 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1126 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare !dbg !1129 noalias noundef %struct.__dirstream* @opendir(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc nonnull i8* @nth_parent(i64 noundef %0) unnamed_addr #12 !dbg !1132 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1136, metadata !DIExpression()), !dbg !1141
  %2 = tail call noalias nonnull i8* @xnmalloc(i64 noundef 3, i64 noundef %0) #39, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %2, metadata !1137, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %2, metadata !1138, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i64 0, metadata !1139, metadata !DIExpression()), !dbg !1143
  %3 = icmp eq i64 %0, 0, !dbg !1144
  br i1 %3, label %4, label %7, !dbg !1146

4:                                                ; preds = %7, %1
  %5 = phi i8* [ %2, %1 ], [ %10, %7 ], !dbg !1141
  %6 = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !1147
  store i8 0, i8* %6, align 1, !dbg !1148, !tbaa !538
  ret i8* %2, !dbg !1149

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %11, %7 ], [ 0, %1 ]
  %9 = phi i8* [ %10, %7 ], [ %2, %1 ]
  call void @llvm.dbg.value(metadata i64 %8, metadata !1139, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i8* %9, metadata !1138, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %9, metadata !1028, metadata !DIExpression()) #33, !dbg !1150
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), metadata !1035, metadata !DIExpression()) #33, !dbg !1150
  call void @llvm.dbg.value(metadata i64 3, metadata !1036, metadata !DIExpression()) #33, !dbg !1150
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %9, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i64 noundef 3, i1 noundef false) #33, !dbg !1153
  %10 = getelementptr inbounds i8, i8* %9, i64 3, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %10, metadata !1138, metadata !DIExpression()), !dbg !1141
  %11 = add nuw i64 %8, 1, !dbg !1155
  call void @llvm.dbg.value(metadata i64 %11, metadata !1139, metadata !DIExpression()), !dbg !1143
  %12 = icmp eq i64 %11, %0, !dbg !1144
  br i1 %12, label %4, label %7, !dbg !1146, !llvm.loop !1156
}

; Function Attrs: nounwind
declare !dbg !1158 i32 @dirfd(%struct.__dirstream* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1161 i32 @fchdir(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1165 i32 @chdir(i8* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1166 noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

declare !dbg !1169 %struct.dirent* @readdir(%struct.__dirstream* noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1173 noundef i32 @lstat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1174 noundef i32 @closedir(%struct.__dirstream* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !1175 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1177, metadata !DIExpression()), !dbg !1178
  store i8* %0, i8** @file_name, align 8, !dbg !1179, !tbaa !439
  ret void, !dbg !1180
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !1181 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1185, metadata !DIExpression()), !dbg !1186
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1187, !tbaa !1188
  ret void, !dbg !1190
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1191 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1196, !tbaa !439
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #33, !dbg !1197
  %3 = icmp eq i32 %2, 0, !dbg !1198
  br i1 %3, label %22, label %4, !dbg !1199

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1200, !tbaa !1188, !range !1201
  %6 = icmp eq i8 %5, 0, !dbg !1200
  br i1 %6, label %11, label %7, !dbg !1202

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #36, !dbg !1203
  %9 = load i32, i32* %8, align 4, !dbg !1203, !tbaa !529
  %10 = icmp eq i32 %9, 32, !dbg !1204
  br i1 %10, label %22, label %11, !dbg !1205

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.27, i64 0, i64 0), i32 noundef 5) #33, !dbg !1206
  call void @llvm.dbg.value(metadata i8* %12, metadata !1193, metadata !DIExpression()), !dbg !1207
  %13 = load i8*, i8** @file_name, align 8, !dbg !1208, !tbaa !439
  %14 = icmp eq i8* %13, null, !dbg !1208
  %15 = tail call i32* @__errno_location() #36, !dbg !1210
  %16 = load i32, i32* %15, align 4, !dbg !1210, !tbaa !529
  br i1 %14, label %19, label %17, !dbg !1211

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #33, !dbg !1212
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.28, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #33, !dbg !1212
  br label %20, !dbg !1212

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.29, i64 0, i64 0), i8* noundef %12) #33, !dbg !1213
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1214, !tbaa !529
  tail call void @_exit(i32 noundef %21) #35, !dbg !1215
  unreachable, !dbg !1215

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1216, !tbaa !439
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #33, !dbg !1218
  %25 = icmp eq i32 %24, 0, !dbg !1219
  br i1 %25, label %28, label %26, !dbg !1220

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1221, !tbaa !529
  tail call void @_exit(i32 noundef %27) #35, !dbg !1222
  unreachable, !dbg !1222

28:                                               ; preds = %22
  ret void, !dbg !1223
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1224 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1228, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 %1, metadata !1229, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8* %2, metadata !1230, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1231, metadata !DIExpression()), !dbg !1233
  tail call fastcc void @flush_stdout(), !dbg !1234
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1235, !tbaa !439
  %7 = icmp eq void ()* %6, null, !dbg !1235
  br i1 %7, label %9, label %8, !dbg !1237

8:                                                ; preds = %4
  tail call void %6() #33, !dbg !1238
  br label %13, !dbg !1238

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1239, !tbaa !439
  %11 = tail call i8* @getprogname() #34, !dbg !1239
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* noundef %11) #33, !dbg !1239
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1241
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1241
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1241
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1241, !tbaa.struct !1242
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1241
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1241
  ret void, !dbg !1243
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1244 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1246, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 1, metadata !1248, metadata !DIExpression()) #33, !dbg !1251
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #33, !dbg !1254
  %2 = icmp slt i32 %1, 0, !dbg !1255
  br i1 %2, label %6, label %3, !dbg !1256

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1257, !tbaa !439
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #33, !dbg !1257
  br label %6, !dbg !1257

6:                                                ; preds = %3, %0
  ret void, !dbg !1258
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1259 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1261, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i32 %1, metadata !1262, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i8* %2, metadata !1263, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1264, metadata !DIExpression()), !dbg !1266
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1267, !tbaa !439
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1268
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1269, metadata !DIExpression()) #33, !dbg !1312
  call void @llvm.dbg.value(metadata i8* %2, metadata !1310, metadata !DIExpression()) #33, !dbg !1312
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1314
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1314, !noalias !1315
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1314
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #33, !dbg !1314
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1314, !noalias !1315
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1319, !tbaa !529
  %12 = add i32 %11, 1, !dbg !1319
  store i32 %12, i32* @error_message_count, align 4, !dbg !1319, !tbaa !529
  %13 = icmp eq i32 %1, 0, !dbg !1320
  br i1 %13, label %24, label %14, !dbg !1322

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1323, metadata !DIExpression()) #33, !dbg !1331
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1333
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1333
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1327, metadata !DIExpression()) #33, !dbg !1334
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #33, !dbg !1335
  call void @llvm.dbg.value(metadata i8* %16, metadata !1326, metadata !DIExpression()) #33, !dbg !1331
  %17 = icmp eq i8* %16, null, !dbg !1336
  br i1 %17, label %18, label %20, !dbg !1338

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.32, i64 0, i64 0), i32 noundef 5) #33, !dbg !1339
  call void @llvm.dbg.value(metadata i8* %19, metadata !1326, metadata !DIExpression()) #33, !dbg !1331
  br label %20, !dbg !1340

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1331
  call void @llvm.dbg.value(metadata i8* %21, metadata !1326, metadata !DIExpression()) #33, !dbg !1331
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1341, !tbaa !439
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.33, i64 0, i64 0), i8* noundef %21) #33, !dbg !1341
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1342
  br label %24, !dbg !1343

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1344, !tbaa !439
  call void @llvm.dbg.value(metadata i32 10, metadata !1345, metadata !DIExpression()) #33, !dbg !1352
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1351, metadata !DIExpression()) #33, !dbg !1352
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1354
  %27 = load i8*, i8** %26, align 8, !dbg !1354, !tbaa !1355
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1354
  %29 = load i8*, i8** %28, align 8, !dbg !1354, !tbaa !1357
  %30 = icmp ult i8* %27, %29, !dbg !1354
  br i1 %30, label %33, label %31, !dbg !1354, !prof !1358

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #33, !dbg !1354
  br label %35, !dbg !1354

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1354
  store i8* %34, i8** %26, align 8, !dbg !1354, !tbaa !1355
  store i8 10, i8* %27, align 1, !dbg !1354, !tbaa !538
  br label %35, !dbg !1354

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1359, !tbaa !439
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #33, !dbg !1359
  %38 = icmp eq i32 %0, 0, !dbg !1360
  br i1 %38, label %40, label %39, !dbg !1362

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #35, !dbg !1363
  unreachable, !dbg !1363

40:                                               ; preds = %35
  ret void, !dbg !1364
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1365 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1369 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1372 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1376 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1380, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i32 %1, metadata !1381, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i8* %2, metadata !1382, metadata !DIExpression()), !dbg !1384
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1385
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1385
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1383, metadata !DIExpression()), !dbg !1386
  call void @llvm.va_start(i8* nonnull %6), !dbg !1387
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1388
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1388
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1388, !tbaa.struct !1242
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #40, !dbg !1388
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1388
  call void @llvm.va_end(i8* nonnull %6), !dbg !1389
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1390
  ret void, !dbg !1390
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !170 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !188, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i32 %1, metadata !189, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8* %2, metadata !190, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i32 %3, metadata !191, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8* %4, metadata !192, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !193, metadata !DIExpression()), !dbg !1392
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1393, !tbaa !529
  %9 = icmp eq i32 %8, 0, !dbg !1393
  br i1 %9, label %24, label %10, !dbg !1395

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1396, !tbaa !529
  %12 = icmp eq i32 %11, %3, !dbg !1399
  br i1 %12, label %13, label %23, !dbg !1400

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1401, !tbaa !439
  %15 = icmp eq i8* %14, %2, !dbg !1402
  br i1 %15, label %39, label %16, !dbg !1403

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1404
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1405
  br i1 %19, label %20, label %23, !dbg !1405

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #34, !dbg !1406
  %22 = icmp eq i32 %21, 0, !dbg !1407
  br i1 %22, label %39, label %23, !dbg !1408

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1409, !tbaa !439
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1410, !tbaa !529
  br label %24, !dbg !1411

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1412
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1413, !tbaa !439
  %26 = icmp eq void ()* %25, null, !dbg !1413
  br i1 %26, label %28, label %27, !dbg !1415

27:                                               ; preds = %24
  tail call void %25() #33, !dbg !1416
  br label %32, !dbg !1416

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1417, !tbaa !439
  %30 = tail call i8* @getprogname() #34, !dbg !1417
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.36, i64 0, i64 0), i8* noundef %30) #33, !dbg !1417
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1419, !tbaa !439
  %34 = icmp eq i8* %2, null, !dbg !1419
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.37, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.38, i64 0, i64 0), !dbg !1419
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #33, !dbg !1419
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1420
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1420
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1420
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1420, !tbaa.struct !1242
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1420
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1420
  br label %39, !dbg !1421

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1421
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1422 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1426, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i32 %1, metadata !1427, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i8* %2, metadata !1428, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i32 %3, metadata !1429, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i8* %4, metadata !1430, metadata !DIExpression()), !dbg !1432
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1433
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1433
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1431, metadata !DIExpression()), !dbg !1434
  call void @llvm.va_start(i8* nonnull %8), !dbg !1435
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1436
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1436
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1436, !tbaa.struct !1242
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #40, !dbg !1436
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1436
  call void @llvm.va_end(i8* nonnull %8), !dbg !1437
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1438
  ret void, !dbg !1438
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 !dbg !1439 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1440, !tbaa !439
  ret i8* %1, !dbg !1441
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #19 !dbg !1442 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1444, metadata !DIExpression()), !dbg !1447
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #34, !dbg !1448
  call void @llvm.dbg.value(metadata i8* %2, metadata !1445, metadata !DIExpression()), !dbg !1447
  %3 = icmp eq i8* %2, null, !dbg !1449
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1449
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1449
  call void @llvm.dbg.value(metadata i8* %5, metadata !1446, metadata !DIExpression()), !dbg !1447
  %6 = ptrtoint i8* %5 to i64, !dbg !1450
  %7 = ptrtoint i8* %0 to i64, !dbg !1450
  %8 = sub i64 %6, %7, !dbg !1450
  %9 = icmp sgt i64 %8, 6, !dbg !1452
  br i1 %9, label %10, label %19, !dbg !1453

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %11, metadata !1455, metadata !DIExpression()) #33, !dbg !1462
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0), metadata !1460, metadata !DIExpression()) #33, !dbg !1462
  call void @llvm.dbg.value(metadata i64 7, metadata !1461, metadata !DIExpression()) #33, !dbg !1462
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0), i64 7) #33, !dbg !1464
  %13 = icmp eq i32 %12, 0, !dbg !1465
  br i1 %13, label %14, label %19, !dbg !1466

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1444, metadata !DIExpression()), !dbg !1447
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.70, i64 0, i64 0), i64 noundef 3) #34, !dbg !1467
  %16 = icmp eq i32 %15, 0, !dbg !1470
  %17 = select i1 %16, i64 3, i64 0, !dbg !1471
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1471
  br label %19, !dbg !1471

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1447
  call void @llvm.dbg.value(metadata i8* %21, metadata !1446, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8* %20, metadata !1444, metadata !DIExpression()), !dbg !1447
  store i8* %20, i8** @program_name, align 8, !dbg !1472, !tbaa !439
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1473, !tbaa !439
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1474, !tbaa !439
  ret void, !dbg !1475
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !211 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !218, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8* %1, metadata !219, metadata !DIExpression()), !dbg !1476
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #33, !dbg !1477
  call void @llvm.dbg.value(metadata i8* %5, metadata !220, metadata !DIExpression()), !dbg !1476
  %6 = icmp eq i8* %5, %0, !dbg !1478
  br i1 %6, label %7, label %17, !dbg !1480

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1481
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1481
  %10 = bitcast i64* %4 to i8*, !dbg !1482
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1482
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !226, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1484, metadata !DIExpression()) #33, !dbg !1491
  call void @llvm.dbg.value(metadata i8* %10, metadata !1493, metadata !DIExpression()) #33, !dbg !1500
  call void @llvm.dbg.value(metadata i32 0, metadata !1498, metadata !DIExpression()) #33, !dbg !1500
  call void @llvm.dbg.value(metadata i64 8, metadata !1499, metadata !DIExpression()) #33, !dbg !1500
  store i64 0, i64* %4, align 8, !dbg !1502
  call void @llvm.dbg.value(metadata i32* %3, metadata !221, metadata !DIExpression(DW_OP_deref)), !dbg !1476
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #33, !dbg !1503
  %12 = icmp eq i64 %11, 2, !dbg !1505
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !221, metadata !DIExpression()), !dbg !1476
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1506
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1476
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1507
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1507
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1476
  ret i8* %18, !dbg !1507
}

; Function Attrs: nounwind
declare !dbg !1508 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1514 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1519, metadata !DIExpression()), !dbg !1522
  %2 = tail call i32* @__errno_location() #36, !dbg !1523
  %3 = load i32, i32* %2, align 4, !dbg !1523, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %3, metadata !1520, metadata !DIExpression()), !dbg !1522
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1524
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1524
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1524
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #41, !dbg !1525
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1525
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1521, metadata !DIExpression()), !dbg !1522
  store i32 %3, i32* %2, align 4, !dbg !1526, !tbaa !529
  ret %struct.quoting_options* %8, !dbg !1527
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 !dbg !1528 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1534, metadata !DIExpression()), !dbg !1535
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1536
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1536
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1537
  %5 = load i32, i32* %4, align 8, !dbg !1537, !tbaa !1538
  ret i32 %5, !dbg !1540
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !1541 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1545, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 %1, metadata !1546, metadata !DIExpression()), !dbg !1547
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1548
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1548
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1549
  store i32 %1, i32* %5, align 8, !dbg !1550, !tbaa !1538
  ret void, !dbg !1551
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1552 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1556, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %1, metadata !1557, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 %2, metadata !1558, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %1, metadata !1559, metadata !DIExpression()), !dbg !1564
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1565
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1565
  %6 = lshr i8 %1, 5, !dbg !1566
  %7 = zext i8 %6 to i64, !dbg !1566
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1567
  call void @llvm.dbg.value(metadata i32* %8, metadata !1560, metadata !DIExpression()), !dbg !1564
  %9 = and i8 %1, 31, !dbg !1568
  %10 = zext i8 %9 to i32, !dbg !1568
  call void @llvm.dbg.value(metadata i32 %10, metadata !1562, metadata !DIExpression()), !dbg !1564
  %11 = load i32, i32* %8, align 4, !dbg !1569, !tbaa !529
  %12 = lshr i32 %11, %10, !dbg !1570
  %13 = and i32 %12, 1, !dbg !1571
  call void @llvm.dbg.value(metadata i32 %13, metadata !1563, metadata !DIExpression()), !dbg !1564
  %14 = and i32 %2, 1, !dbg !1572
  %15 = xor i32 %13, %14, !dbg !1573
  %16 = shl i32 %15, %10, !dbg !1574
  %17 = xor i32 %16, %11, !dbg !1575
  store i32 %17, i32* %8, align 4, !dbg !1575, !tbaa !529
  ret i32 %13, !dbg !1576
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1577 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1581, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i32 %1, metadata !1582, metadata !DIExpression()), !dbg !1584
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1585
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1587
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1581, metadata !DIExpression()), !dbg !1584
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1588
  %6 = load i32, i32* %5, align 4, !dbg !1588, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %6, metadata !1583, metadata !DIExpression()), !dbg !1584
  store i32 %1, i32* %5, align 4, !dbg !1590, !tbaa !1589
  ret i32 %6, !dbg !1591
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1592 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1596, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i8* %1, metadata !1597, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i8* %2, metadata !1598, metadata !DIExpression()), !dbg !1599
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1600
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1602
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1596, metadata !DIExpression()), !dbg !1599
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1603
  store i32 10, i32* %6, align 8, !dbg !1604, !tbaa !1538
  %7 = icmp ne i8* %1, null, !dbg !1605
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1607
  br i1 %9, label %11, label %10, !dbg !1607

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !1608
  unreachable, !dbg !1608

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1609
  store i8* %1, i8** %12, align 8, !dbg !1610, !tbaa !1611
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1612
  store i8* %2, i8** %13, align 8, !dbg !1613, !tbaa !1614
  ret void, !dbg !1615
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1616 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1620, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %1, metadata !1621, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8* %2, metadata !1622, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %3, metadata !1623, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1624, metadata !DIExpression()), !dbg !1628
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1629
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1629
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1625, metadata !DIExpression()), !dbg !1628
  %8 = tail call i32* @__errno_location() #36, !dbg !1630
  %9 = load i32, i32* %8, align 4, !dbg !1630, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %9, metadata !1626, metadata !DIExpression()), !dbg !1628
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1631
  %11 = load i32, i32* %10, align 8, !dbg !1631, !tbaa !1538
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1632
  %13 = load i32, i32* %12, align 4, !dbg !1632, !tbaa !1589
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1633
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1634
  %16 = load i8*, i8** %15, align 8, !dbg !1634, !tbaa !1611
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1635
  %18 = load i8*, i8** %17, align 8, !dbg !1635, !tbaa !1614
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %19, metadata !1627, metadata !DIExpression()), !dbg !1628
  store i32 %9, i32* %8, align 4, !dbg !1637, !tbaa !529
  ret i64 %19, !dbg !1638
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1639 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1645, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %1, metadata !1646, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %2, metadata !1647, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %3, metadata !1648, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %4, metadata !1649, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %5, metadata !1650, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32* %6, metadata !1651, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %7, metadata !1652, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %8, metadata !1653, metadata !DIExpression()), !dbg !1707
  %17 = tail call i64 @__ctype_get_mb_cur_max() #33, !dbg !1708
  %18 = icmp eq i64 %17, 1, !dbg !1709
  call void @llvm.dbg.value(metadata i1 %18, metadata !1654, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1707
  call void @llvm.dbg.value(metadata i64 0, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 0, metadata !1656, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* null, metadata !1657, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 0, metadata !1658, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 0, metadata !1659, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %5, metadata !1660, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1707
  call void @llvm.dbg.value(metadata i8 0, metadata !1661, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 1, metadata !1662, metadata !DIExpression()), !dbg !1707
  %19 = and i32 %5, 2, !dbg !1710
  %20 = icmp ne i32 %19, 0, !dbg !1710
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
  br label %36, !dbg !1710

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1711
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1712
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1713
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1646, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1662, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1661, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1660, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1659, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %43, metadata !1658, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %42, metadata !1657, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %41, metadata !1656, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 0, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %40, metadata !1648, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %39, metadata !1653, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %38, metadata !1652, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %37, metadata !1649, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.label(metadata !1700), !dbg !1714
  call void @llvm.dbg.value(metadata i8 0, metadata !1663, metadata !DIExpression()), !dbg !1707
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
  ], !dbg !1715

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1660, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 5, metadata !1649, metadata !DIExpression()), !dbg !1707
  br label %111, !dbg !1716

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1660, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 5, metadata !1649, metadata !DIExpression()), !dbg !1707
  br i1 %45, label %111, label %51, !dbg !1716

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1717
  br i1 %52, label %111, label %53, !dbg !1721

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1717, !tbaa !538
  br label %111, !dbg !1717

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.83, i64 0, i64 0), metadata !288, metadata !DIExpression()) #33, !dbg !1722
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #33, !dbg !1722
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.83, i64 0, i64 0), i32 noundef 5) #33, !dbg !1726
  call void @llvm.dbg.value(metadata i8* %55, metadata !290, metadata !DIExpression()) #33, !dbg !1722
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.83, i64 0, i64 0), !dbg !1727
  br i1 %56, label %57, label %66, !dbg !1729

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #33, !dbg !1730
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #33, !dbg !1731
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !292, metadata !DIExpression()) #33, !dbg !1732
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1733, metadata !DIExpression()) #33, !dbg !1739
  call void @llvm.dbg.value(metadata i8* %23, metadata !1741, metadata !DIExpression()) #33, !dbg !1746
  call void @llvm.dbg.value(metadata i32 0, metadata !1744, metadata !DIExpression()) #33, !dbg !1746
  call void @llvm.dbg.value(metadata i64 8, metadata !1745, metadata !DIExpression()) #33, !dbg !1746
  store i64 0, i64* %13, align 8, !dbg !1748
  call void @llvm.dbg.value(metadata i32* %12, metadata !291, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1722
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #33, !dbg !1749
  %59 = icmp eq i64 %58, 3, !dbg !1751
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !291, metadata !DIExpression()) #33, !dbg !1722
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1752
  %63 = icmp eq i32 %37, 9, !dbg !1752
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.85, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), !dbg !1752
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1752
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #33, !dbg !1753
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #33, !dbg !1753
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1722
  call void @llvm.dbg.value(metadata i8* %67, metadata !1652, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), metadata !288, metadata !DIExpression()) #33, !dbg !1754
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #33, !dbg !1754
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), i32 noundef 5) #33, !dbg !1756
  call void @llvm.dbg.value(metadata i8* %68, metadata !290, metadata !DIExpression()) #33, !dbg !1754
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), !dbg !1757
  br i1 %69, label %70, label %79, !dbg !1758

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #33, !dbg !1759
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #33, !dbg !1760
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !292, metadata !DIExpression()) #33, !dbg !1761
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1733, metadata !DIExpression()) #33, !dbg !1762
  call void @llvm.dbg.value(metadata i8* %26, metadata !1741, metadata !DIExpression()) #33, !dbg !1764
  call void @llvm.dbg.value(metadata i32 0, metadata !1744, metadata !DIExpression()) #33, !dbg !1764
  call void @llvm.dbg.value(metadata i64 8, metadata !1745, metadata !DIExpression()) #33, !dbg !1764
  store i64 0, i64* %11, align 8, !dbg !1766
  call void @llvm.dbg.value(metadata i32* %10, metadata !291, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1754
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #33, !dbg !1767
  %72 = icmp eq i64 %71, 3, !dbg !1768
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !291, metadata !DIExpression()) #33, !dbg !1754
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1769
  %76 = icmp eq i32 %37, 9, !dbg !1769
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.85, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), !dbg !1769
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1769
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #33, !dbg !1770
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #33, !dbg !1770
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1653, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %80, metadata !1652, metadata !DIExpression()), !dbg !1707
  br i1 %45, label %97, label %82, !dbg !1771

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1664, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 0, metadata !1655, metadata !DIExpression()), !dbg !1707
  %83 = load i8, i8* %80, align 1, !dbg !1773, !tbaa !538
  %84 = icmp eq i8 %83, 0, !dbg !1775
  br i1 %84, label %97, label %85, !dbg !1775

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1664, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %88, metadata !1655, metadata !DIExpression()), !dbg !1707
  %89 = icmp ult i64 %88, %48, !dbg !1776
  br i1 %89, label %90, label %92, !dbg !1779

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1776
  store i8 %86, i8* %91, align 1, !dbg !1776, !tbaa !538
  br label %92, !dbg !1776

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %93, metadata !1655, metadata !DIExpression()), !dbg !1707
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1780
  call void @llvm.dbg.value(metadata i8* %94, metadata !1664, metadata !DIExpression()), !dbg !1772
  %95 = load i8, i8* %94, align 1, !dbg !1773, !tbaa !538
  %96 = icmp eq i8 %95, 0, !dbg !1775
  br i1 %96, label %97, label %85, !dbg !1775, !llvm.loop !1781

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1783
  call void @llvm.dbg.value(metadata i64 %98, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 1, metadata !1659, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %81, metadata !1657, metadata !DIExpression()), !dbg !1707
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #34, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %99, metadata !1658, metadata !DIExpression()), !dbg !1707
  br label %111, !dbg !1785

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1659, metadata !DIExpression()), !dbg !1707
  br label %102, !dbg !1786

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1660, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1659, metadata !DIExpression()), !dbg !1707
  br i1 %45, label %102, label %105, !dbg !1787

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1660, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1659, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 2, metadata !1649, metadata !DIExpression()), !dbg !1707
  br label %111, !dbg !1788

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1660, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1659, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 2, metadata !1649, metadata !DIExpression()), !dbg !1707
  br i1 %45, label %111, label %105, !dbg !1788

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1789
  br i1 %107, label %111, label %108, !dbg !1793

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1789, !tbaa !538
  br label %111, !dbg !1789

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1660, metadata !DIExpression()), !dbg !1707
  br label %111, !dbg !1794

110:                                              ; preds = %36
  call void @abort() #35, !dbg !1795
  unreachable, !dbg !1795

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1783
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.85, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.85, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.85, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.85, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %102 ], !dbg !1707
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1707
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1660, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1659, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %117, metadata !1658, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %116, metadata !1657, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %115, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %114, metadata !1653, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %113, metadata !1652, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %112, metadata !1649, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 0, metadata !1669, metadata !DIExpression()), !dbg !1796
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
  br label %132, !dbg !1797

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1783
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1711
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1796
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1646, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %139, metadata !1669, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1663, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1662, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1661, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %135, metadata !1656, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %134, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %133, metadata !1648, metadata !DIExpression()), !dbg !1707
  %141 = icmp eq i64 %133, -1, !dbg !1798
  br i1 %141, label %142, label %146, !dbg !1799

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1800
  %144 = load i8, i8* %143, align 1, !dbg !1800, !tbaa !538
  %145 = icmp eq i8 %144, 0, !dbg !1801
  br i1 %145, label %596, label %148, !dbg !1802

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1803
  br i1 %147, label %596, label %148, !dbg !1802

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1671, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 0, metadata !1674, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 0, metadata !1675, metadata !DIExpression()), !dbg !1804
  br i1 %123, label %149, label %163, !dbg !1805

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1807
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1808
  br i1 %151, label %152, label %154, !dbg !1808

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %153, metadata !1648, metadata !DIExpression()), !dbg !1707
  br label %154, !dbg !1810

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1810
  call void @llvm.dbg.value(metadata i64 %155, metadata !1648, metadata !DIExpression()), !dbg !1707
  %156 = icmp ugt i64 %150, %155, !dbg !1811
  br i1 %156, label %163, label %157, !dbg !1812

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1813
  call void @llvm.dbg.value(metadata i8* %158, metadata !1814, metadata !DIExpression()) #33, !dbg !1819
  call void @llvm.dbg.value(metadata i8* %116, metadata !1817, metadata !DIExpression()) #33, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %117, metadata !1818, metadata !DIExpression()) #33, !dbg !1819
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #33, !dbg !1821
  %160 = icmp ne i32 %159, 0, !dbg !1822
  %161 = or i1 %160, %125, !dbg !1823
  %162 = xor i1 %160, true, !dbg !1823
  br i1 %161, label %163, label %647, !dbg !1823

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1671, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %164, metadata !1648, metadata !DIExpression()), !dbg !1707
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1824
  %167 = load i8, i8* %166, align 1, !dbg !1824, !tbaa !538
  call void @llvm.dbg.value(metadata i8 %167, metadata !1676, metadata !DIExpression()), !dbg !1804
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
  ], !dbg !1825

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1826

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1827

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1674, metadata !DIExpression()), !dbg !1804
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1831
  br i1 %171, label %188, label %172, !dbg !1831

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1833
  br i1 %173, label %174, label %176, !dbg !1837

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1833
  store i8 39, i8* %175, align 1, !dbg !1833, !tbaa !538
  br label %176, !dbg !1833

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %177, metadata !1655, metadata !DIExpression()), !dbg !1707
  %178 = icmp ult i64 %177, %140, !dbg !1838
  br i1 %178, label %179, label %181, !dbg !1841

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1838
  store i8 36, i8* %180, align 1, !dbg !1838, !tbaa !538
  br label %181, !dbg !1838

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %182, metadata !1655, metadata !DIExpression()), !dbg !1707
  %183 = icmp ult i64 %182, %140, !dbg !1842
  br i1 %183, label %184, label %186, !dbg !1845

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1842
  store i8 39, i8* %185, align 1, !dbg !1842, !tbaa !538
  br label %186, !dbg !1842

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %187, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 1, metadata !1663, metadata !DIExpression()), !dbg !1707
  br label %188, !dbg !1846

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1707
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1663, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %189, metadata !1655, metadata !DIExpression()), !dbg !1707
  %191 = icmp ult i64 %189, %140, !dbg !1847
  br i1 %191, label %192, label %194, !dbg !1850

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1847
  store i8 92, i8* %193, align 1, !dbg !1847, !tbaa !538
  br label %194, !dbg !1847

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %195, metadata !1655, metadata !DIExpression()), !dbg !1707
  br i1 %120, label %196, label %499, !dbg !1851

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1853
  %198 = icmp ult i64 %197, %164, !dbg !1854
  br i1 %198, label %199, label %456, !dbg !1855

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1856
  %201 = load i8, i8* %200, align 1, !dbg !1856, !tbaa !538
  %202 = add i8 %201, -48, !dbg !1857
  %203 = icmp ult i8 %202, 10, !dbg !1857
  br i1 %203, label %204, label %456, !dbg !1857

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1858
  br i1 %205, label %206, label %208, !dbg !1862

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1858
  store i8 48, i8* %207, align 1, !dbg !1858, !tbaa !538
  br label %208, !dbg !1858

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %209, metadata !1655, metadata !DIExpression()), !dbg !1707
  %210 = icmp ult i64 %209, %140, !dbg !1863
  br i1 %210, label %211, label %213, !dbg !1866

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1863
  store i8 48, i8* %212, align 1, !dbg !1863, !tbaa !538
  br label %213, !dbg !1863

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %214, metadata !1655, metadata !DIExpression()), !dbg !1707
  br label %456, !dbg !1867

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1868

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1869

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1870

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1872

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1874
  %221 = icmp ult i64 %220, %164, !dbg !1875
  br i1 %221, label %222, label %456, !dbg !1876

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1877
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1878
  %225 = load i8, i8* %224, align 1, !dbg !1878, !tbaa !538
  %226 = icmp eq i8 %225, 63, !dbg !1879
  br i1 %226, label %227, label %456, !dbg !1880

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1881
  %229 = load i8, i8* %228, align 1, !dbg !1881, !tbaa !538
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
  ], !dbg !1882

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1883

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1676, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %220, metadata !1669, metadata !DIExpression()), !dbg !1796
  %232 = icmp ult i64 %134, %140, !dbg !1885
  br i1 %232, label %233, label %235, !dbg !1888

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1885
  store i8 63, i8* %234, align 1, !dbg !1885, !tbaa !538
  br label %235, !dbg !1885

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %236, metadata !1655, metadata !DIExpression()), !dbg !1707
  %237 = icmp ult i64 %236, %140, !dbg !1889
  br i1 %237, label %238, label %240, !dbg !1892

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1889
  store i8 34, i8* %239, align 1, !dbg !1889, !tbaa !538
  br label %240, !dbg !1889

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %241, metadata !1655, metadata !DIExpression()), !dbg !1707
  %242 = icmp ult i64 %241, %140, !dbg !1893
  br i1 %242, label %243, label %245, !dbg !1896

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1893
  store i8 34, i8* %244, align 1, !dbg !1893, !tbaa !538
  br label %245, !dbg !1893

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %246, metadata !1655, metadata !DIExpression()), !dbg !1707
  %247 = icmp ult i64 %246, %140, !dbg !1897
  br i1 %247, label %248, label %250, !dbg !1900

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1897
  store i8 63, i8* %249, align 1, !dbg !1897, !tbaa !538
  br label %250, !dbg !1897

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %251, metadata !1655, metadata !DIExpression()), !dbg !1707
  br label %456, !dbg !1901

252:                                              ; preds = %163
  br label %263, !dbg !1902

253:                                              ; preds = %163
  br label %263, !dbg !1903

254:                                              ; preds = %163
  br label %261, !dbg !1904

255:                                              ; preds = %163
  br label %261, !dbg !1905

256:                                              ; preds = %163
  br label %263, !dbg !1906

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1907

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1908

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1911

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1913

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1914
  call void @llvm.dbg.label(metadata !1701), !dbg !1915
  br i1 %128, label %263, label %638, !dbg !1916

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1914
  call void @llvm.dbg.label(metadata !1703), !dbg !1918
  br i1 %118, label %510, label %467, !dbg !1919

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1920

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1921, !tbaa !538
  %268 = icmp eq i8 %267, 0, !dbg !1923
  br i1 %268, label %269, label %456, !dbg !1924

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1925
  br i1 %270, label %271, label %456, !dbg !1927

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1675, metadata !DIExpression()), !dbg !1804
  br label %272, !dbg !1928

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1675, metadata !DIExpression()), !dbg !1804
  br i1 %126, label %274, label %456, !dbg !1929

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1931

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1661, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 1, metadata !1675, metadata !DIExpression()), !dbg !1804
  br i1 %126, label %276, label %456, !dbg !1932

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1933

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1936
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1938
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1938
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %282, metadata !1646, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %281, metadata !1656, metadata !DIExpression()), !dbg !1707
  %283 = icmp ult i64 %134, %282, !dbg !1939
  br i1 %283, label %284, label %286, !dbg !1942

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1939
  store i8 39, i8* %285, align 1, !dbg !1939, !tbaa !538
  br label %286, !dbg !1939

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %287, metadata !1655, metadata !DIExpression()), !dbg !1707
  %288 = icmp ult i64 %287, %282, !dbg !1943
  br i1 %288, label %289, label %291, !dbg !1946

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1943
  store i8 92, i8* %290, align 1, !dbg !1943, !tbaa !538
  br label %291, !dbg !1943

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1946
  call void @llvm.dbg.value(metadata i64 %292, metadata !1655, metadata !DIExpression()), !dbg !1707
  %293 = icmp ult i64 %292, %282, !dbg !1947
  br i1 %293, label %294, label %296, !dbg !1950

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1947
  store i8 39, i8* %295, align 1, !dbg !1947, !tbaa !538
  br label %296, !dbg !1947

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %297, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 0, metadata !1663, metadata !DIExpression()), !dbg !1707
  br label %456, !dbg !1951

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1952

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1677, metadata !DIExpression()), !dbg !1953
  %300 = tail call i16** @__ctype_b_loc() #36, !dbg !1954
  %301 = load i16*, i16** %300, align 8, !dbg !1954, !tbaa !439
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1954
  %304 = load i16, i16* %303, align 2, !dbg !1954, !tbaa !563
  %305 = and i16 %304, 16384, !dbg !1954
  %306 = icmp ne i16 %305, 0, !dbg !1956
  call void @llvm.dbg.value(metadata i8 poison, metadata !1680, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %349, metadata !1677, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %312, metadata !1648, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i1 %350, metadata !1675, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1804
  br label %352, !dbg !1957

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1958
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1681, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1733, metadata !DIExpression()) #33, !dbg !1960
  call void @llvm.dbg.value(metadata i8* %32, metadata !1741, metadata !DIExpression()) #33, !dbg !1962
  call void @llvm.dbg.value(metadata i32 0, metadata !1744, metadata !DIExpression()) #33, !dbg !1962
  call void @llvm.dbg.value(metadata i64 8, metadata !1745, metadata !DIExpression()) #33, !dbg !1962
  store i64 0, i64* %14, align 8, !dbg !1964
  call void @llvm.dbg.value(metadata i64 0, metadata !1677, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 1, metadata !1680, metadata !DIExpression()), !dbg !1953
  %308 = icmp eq i64 %164, -1, !dbg !1965
  br i1 %308, label %309, label %311, !dbg !1967

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %310, metadata !1648, metadata !DIExpression()), !dbg !1707
  br label %311, !dbg !1969

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1804
  call void @llvm.dbg.value(metadata i64 %312, metadata !1648, metadata !DIExpression()), !dbg !1707
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1970
  %313 = sub i64 %312, %139, !dbg !1971
  call void @llvm.dbg.value(metadata i32* %16, metadata !1684, metadata !DIExpression(DW_OP_deref)), !dbg !1972
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #33, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %314, metadata !1688, metadata !DIExpression()), !dbg !1972
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1974

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1677, metadata !DIExpression()), !dbg !1953
  %316 = icmp ugt i64 %312, %139, !dbg !1975
  br i1 %316, label %319, label %317, !dbg !1977

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1680, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 0, metadata !1677, metadata !DIExpression()), !dbg !1953
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %349, metadata !1677, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %312, metadata !1648, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i1 %350, metadata !1675, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1804
  br label %352, !dbg !1957

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1680, metadata !DIExpression()), !dbg !1953
  br label %346, !dbg !1980

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1677, metadata !DIExpression()), !dbg !1953
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1982
  %323 = load i8, i8* %322, align 1, !dbg !1982, !tbaa !538
  %324 = icmp eq i8 %323, 0, !dbg !1977
  br i1 %324, label %348, label %325, !dbg !1983

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %326, metadata !1677, metadata !DIExpression()), !dbg !1953
  %327 = add i64 %326, %139, !dbg !1985
  %328 = icmp eq i64 %326, %313, !dbg !1975
  br i1 %328, label %348, label %319, !dbg !1977, !llvm.loop !1986

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1987
  call void @llvm.dbg.value(metadata i64 1, metadata !1689, metadata !DIExpression()), !dbg !1988
  br i1 %331, label %332, label %340, !dbg !1987

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1689, metadata !DIExpression()), !dbg !1988
  %334 = add i64 %333, %139, !dbg !1989
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1991
  %336 = load i8, i8* %335, align 1, !dbg !1991, !tbaa !538
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1992

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %338, metadata !1689, metadata !DIExpression()), !dbg !1988
  %339 = icmp eq i64 %338, %314, !dbg !1994
  br i1 %339, label %340, label %332, !dbg !1995, !llvm.loop !1996

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1998, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %341, metadata !1684, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i32 %341, metadata !2000, metadata !DIExpression()) #33, !dbg !2008
  %342 = call i32 @iswprint(i32 noundef %341) #33, !dbg !2010
  %343 = icmp ne i32 %342, 0, !dbg !2011
  call void @llvm.dbg.value(metadata i8 poison, metadata !1680, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %314, metadata !1677, metadata !DIExpression()), !dbg !1953
  br label %348, !dbg !2012

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1680, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 0, metadata !1677, metadata !DIExpression()), !dbg !1953
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1979
  call void @llvm.dbg.label(metadata !1706), !dbg !2013
  %345 = select i1 %118, i32 4, i32 2, !dbg !2014
  br label %643, !dbg !2014

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1680, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 0, metadata !1677, metadata !DIExpression()), !dbg !1953
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %349, metadata !1677, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %312, metadata !1648, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i1 %350, metadata !1675, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1804
  br label %352, !dbg !1957

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1680, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 0, metadata !1677, metadata !DIExpression()), !dbg !1953
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1978
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %349, metadata !1677, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %312, metadata !1648, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i1 %350, metadata !1675, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1804
  %351 = icmp ugt i64 %349, 1, !dbg !2016
  br i1 %351, label %357, label %352, !dbg !1957

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2017
  br i1 %356, label %456, label %357, !dbg !2017

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %361, metadata !1697, metadata !DIExpression()), !dbg !2019
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2020

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1707
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1796
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2021
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1804
  call void @llvm.dbg.value(metadata i8 %369, metadata !1676, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 %368, metadata !1674, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 poison, metadata !1671, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %366, metadata !1669, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1663, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %364, metadata !1655, metadata !DIExpression()), !dbg !1707
  br i1 %362, label %414, label %370, !dbg !2022

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2027

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1674, metadata !DIExpression()), !dbg !1804
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2030
  br i1 %372, label %389, label %373, !dbg !2030

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2032
  br i1 %374, label %375, label %377, !dbg !2036

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2032
  store i8 39, i8* %376, align 1, !dbg !2032, !tbaa !538
  br label %377, !dbg !2032

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %378, metadata !1655, metadata !DIExpression()), !dbg !1707
  %379 = icmp ult i64 %378, %140, !dbg !2037
  br i1 %379, label %380, label %382, !dbg !2040

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2037
  store i8 36, i8* %381, align 1, !dbg !2037, !tbaa !538
  br label %382, !dbg !2037

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %383, metadata !1655, metadata !DIExpression()), !dbg !1707
  %384 = icmp ult i64 %383, %140, !dbg !2041
  br i1 %384, label %385, label %387, !dbg !2044

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2041
  store i8 39, i8* %386, align 1, !dbg !2041, !tbaa !538
  br label %387, !dbg !2041

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %388, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 1, metadata !1663, metadata !DIExpression()), !dbg !1707
  br label %389, !dbg !2045

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1707
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1663, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %390, metadata !1655, metadata !DIExpression()), !dbg !1707
  %392 = icmp ult i64 %390, %140, !dbg !2046
  br i1 %392, label %393, label %395, !dbg !2049

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2046
  store i8 92, i8* %394, align 1, !dbg !2046, !tbaa !538
  br label %395, !dbg !2046

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %396, metadata !1655, metadata !DIExpression()), !dbg !1707
  %397 = icmp ult i64 %396, %140, !dbg !2050
  br i1 %397, label %398, label %402, !dbg !2053

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2050
  %400 = or i8 %399, 48, !dbg !2050
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2050
  store i8 %400, i8* %401, align 1, !dbg !2050, !tbaa !538
  br label %402, !dbg !2050

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %403, metadata !1655, metadata !DIExpression()), !dbg !1707
  %404 = icmp ult i64 %403, %140, !dbg !2054
  br i1 %404, label %405, label %410, !dbg !2057

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2054
  %407 = and i8 %406, 7, !dbg !2054
  %408 = or i8 %407, 48, !dbg !2054
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2054
  store i8 %408, i8* %409, align 1, !dbg !2054, !tbaa !538
  br label %410, !dbg !2054

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %411, metadata !1655, metadata !DIExpression()), !dbg !1707
  %412 = and i8 %369, 7, !dbg !2058
  %413 = or i8 %412, 48, !dbg !2059
  call void @llvm.dbg.value(metadata i8 %413, metadata !1676, metadata !DIExpression()), !dbg !1804
  br label %421, !dbg !2060

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2061

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2062
  br i1 %416, label %417, label %419, !dbg !2067

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2062
  store i8 92, i8* %418, align 1, !dbg !2062, !tbaa !538
  br label %419, !dbg !2062

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2067
  call void @llvm.dbg.value(metadata i64 %420, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 0, metadata !1671, metadata !DIExpression()), !dbg !1804
  br label %421, !dbg !2068

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1707
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1804
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1804
  call void @llvm.dbg.value(metadata i8 %426, metadata !1676, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 %425, metadata !1674, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 poison, metadata !1671, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 poison, metadata !1663, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %422, metadata !1655, metadata !DIExpression()), !dbg !1707
  %427 = add i64 %366, 1, !dbg !2069
  %428 = icmp ugt i64 %361, %427, !dbg !2071
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2072

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2073
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2073
  br i1 %432, label %433, label %444, !dbg !2073

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2076
  br i1 %434, label %435, label %437, !dbg !2080

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2076
  store i8 39, i8* %436, align 1, !dbg !2076, !tbaa !538
  br label %437, !dbg !2076

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %438, metadata !1655, metadata !DIExpression()), !dbg !1707
  %439 = icmp ult i64 %438, %140, !dbg !2081
  br i1 %439, label %440, label %442, !dbg !2084

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2081
  store i8 39, i8* %441, align 1, !dbg !2081, !tbaa !538
  br label %442, !dbg !2081

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2084
  call void @llvm.dbg.value(metadata i64 %443, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 0, metadata !1663, metadata !DIExpression()), !dbg !1707
  br label %444, !dbg !2085

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2086
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1663, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %445, metadata !1655, metadata !DIExpression()), !dbg !1707
  %447 = icmp ult i64 %445, %140, !dbg !2087
  br i1 %447, label %448, label %450, !dbg !2090

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2087
  store i8 %426, i8* %449, align 1, !dbg !2087, !tbaa !538
  br label %450, !dbg !2087

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %451, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %427, metadata !1669, metadata !DIExpression()), !dbg !1796
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2091
  %453 = load i8, i8* %452, align 1, !dbg !2091, !tbaa !538
  call void @llvm.dbg.value(metadata i8 %453, metadata !1676, metadata !DIExpression()), !dbg !1804
  br label %363, !dbg !2092, !llvm.loop !2093

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1676, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i1 %358, metadata !1675, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1804
  call void @llvm.dbg.value(metadata i8 %425, metadata !1674, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 poison, metadata !1671, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %366, metadata !1669, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1663, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %422, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %360, metadata !1648, metadata !DIExpression()), !dbg !1707
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2096
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1707
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1711
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1796
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1804
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1646, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %465, metadata !1676, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 poison, metadata !1675, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 poison, metadata !1674, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 poison, metadata !1671, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %462, metadata !1669, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1663, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1661, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %459, metadata !1656, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %458, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %457, metadata !1648, metadata !DIExpression()), !dbg !1707
  br i1 %121, label %478, label %467, !dbg !2097

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
  br i1 %131, label %479, label %499, !dbg !2099

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2100

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
  %490 = lshr i8 %481, 5, !dbg !2101
  %491 = zext i8 %490 to i64, !dbg !2101
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2102
  %493 = load i32, i32* %492, align 4, !dbg !2102, !tbaa !529
  %494 = and i8 %481, 31, !dbg !2103
  %495 = zext i8 %494 to i32, !dbg !2103
  %496 = shl nuw i32 1, %495, !dbg !2104
  %497 = and i32 %493, %496, !dbg !2104
  %498 = icmp eq i32 %497, 0, !dbg !2104
  br i1 %498, label %499, label %510, !dbg !2105

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
  br i1 %165, label %510, label %546, !dbg !2106

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2096
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1707
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1711
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2107
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1804
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1646, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %518, metadata !1676, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 poison, metadata !1675, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %516, metadata !1669, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1663, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1661, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %513, metadata !1656, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %512, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %511, metadata !1648, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.label(metadata !1704), !dbg !2108
  br i1 %119, label %638, label %520, !dbg !2109

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1674, metadata !DIExpression()), !dbg !1804
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2111
  br i1 %521, label %538, label %522, !dbg !2111

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2113
  br i1 %523, label %524, label %526, !dbg !2117

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2113
  store i8 39, i8* %525, align 1, !dbg !2113, !tbaa !538
  br label %526, !dbg !2113

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %527, metadata !1655, metadata !DIExpression()), !dbg !1707
  %528 = icmp ult i64 %527, %519, !dbg !2118
  br i1 %528, label %529, label %531, !dbg !2121

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2118
  store i8 36, i8* %530, align 1, !dbg !2118, !tbaa !538
  br label %531, !dbg !2118

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2121
  call void @llvm.dbg.value(metadata i64 %532, metadata !1655, metadata !DIExpression()), !dbg !1707
  %533 = icmp ult i64 %532, %519, !dbg !2122
  br i1 %533, label %534, label %536, !dbg !2125

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2122
  store i8 39, i8* %535, align 1, !dbg !2122, !tbaa !538
  br label %536, !dbg !2122

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %537, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 1, metadata !1663, metadata !DIExpression()), !dbg !1707
  br label %538, !dbg !2126

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1804
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1663, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %539, metadata !1655, metadata !DIExpression()), !dbg !1707
  %541 = icmp ult i64 %539, %519, !dbg !2127
  br i1 %541, label %542, label %544, !dbg !2130

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2127
  store i8 92, i8* %543, align 1, !dbg !2127, !tbaa !538
  br label %544, !dbg !2127

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %556, metadata !1646, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %555, metadata !1676, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 poison, metadata !1675, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 poison, metadata !1674, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %552, metadata !1669, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1663, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1661, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %549, metadata !1656, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %548, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %547, metadata !1648, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.label(metadata !1705), !dbg !2131
  br label %570, !dbg !2132

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2096
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1707
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1711
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2107
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2135
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1646, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %555, metadata !1676, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 poison, metadata !1675, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 poison, metadata !1674, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %552, metadata !1669, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1663, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1661, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %549, metadata !1656, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %548, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %547, metadata !1648, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.label(metadata !1705), !dbg !2131
  %557 = xor i1 %551, true, !dbg !2132
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2132
  br i1 %558, label %570, label %559, !dbg !2132

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2136
  br i1 %560, label %561, label %563, !dbg !2140

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2136
  store i8 39, i8* %562, align 1, !dbg !2136, !tbaa !538
  br label %563, !dbg !2136

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %564, metadata !1655, metadata !DIExpression()), !dbg !1707
  %565 = icmp ult i64 %564, %556, !dbg !2141
  br i1 %565, label %566, label %568, !dbg !2144

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2141
  store i8 39, i8* %567, align 1, !dbg !2141, !tbaa !538
  br label %568, !dbg !2141

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2144
  call void @llvm.dbg.value(metadata i64 %569, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 0, metadata !1663, metadata !DIExpression()), !dbg !1707
  br label %570, !dbg !2145

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1804
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1663, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %578, metadata !1655, metadata !DIExpression()), !dbg !1707
  %580 = icmp ult i64 %578, %571, !dbg !2146
  br i1 %580, label %581, label %583, !dbg !2149

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2146
  store i8 %572, i8* %582, align 1, !dbg !2146, !tbaa !538
  br label %583, !dbg !2146

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %584, metadata !1655, metadata !DIExpression()), !dbg !1707
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2150
  call void @llvm.dbg.value(metadata i8 poison, metadata !1662, metadata !DIExpression()), !dbg !1707
  br label %586, !dbg !2151

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2096
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1707
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1711
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2107
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1646, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %593, metadata !1669, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1663, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1662, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1661, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %589, metadata !1656, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %588, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %587, metadata !1648, metadata !DIExpression()), !dbg !1707
  %595 = add i64 %593, 1, !dbg !2152
  call void @llvm.dbg.value(metadata i64 %595, metadata !1669, metadata !DIExpression()), !dbg !1796
  br label %132, !dbg !2153, !llvm.loop !2154

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1646, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1662, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 poison, metadata !1661, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 undef, metadata !1656, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 undef, metadata !1655, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 undef, metadata !1648, metadata !DIExpression()), !dbg !1707
  %597 = icmp eq i64 %134, 0, !dbg !2156
  %598 = and i1 %126, %597, !dbg !2158
  %599 = and i1 %598, %119, !dbg !2158
  br i1 %599, label %638, label %600, !dbg !2158

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2159
  %602 = or i1 %119, %601, !dbg !2159
  %603 = xor i1 %136, true, !dbg !2159
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2159
  br i1 %604, label %612, label %605, !dbg !2159

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2161

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2163
  br label %653, !dbg !2165

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2166
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2168
  br i1 %611, label %36, label %612, !dbg !2168

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2169
  %615 = or i1 %614, %613, !dbg !2171
  br i1 %615, label %631, label %616, !dbg !2171

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1657, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %134, metadata !1655, metadata !DIExpression()), !dbg !1707
  %617 = load i8, i8* %116, align 1, !dbg !2172, !tbaa !538
  %618 = icmp eq i8 %617, 0, !dbg !2175
  br i1 %618, label %631, label %619, !dbg !2175

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1657, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %622, metadata !1655, metadata !DIExpression()), !dbg !1707
  %623 = icmp ult i64 %622, %140, !dbg !2176
  br i1 %623, label %624, label %626, !dbg !2179

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2176
  store i8 %620, i8* %625, align 1, !dbg !2176, !tbaa !538
  br label %626, !dbg !2176

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %627, metadata !1655, metadata !DIExpression()), !dbg !1707
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2180
  call void @llvm.dbg.value(metadata i8* %628, metadata !1657, metadata !DIExpression()), !dbg !1707
  %629 = load i8, i8* %628, align 1, !dbg !2172, !tbaa !538
  %630 = icmp eq i8 %629, 0, !dbg !2175
  br i1 %630, label %631, label %619, !dbg !2175, !llvm.loop !2181

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1783
  call void @llvm.dbg.value(metadata i64 %632, metadata !1655, metadata !DIExpression()), !dbg !1707
  %633 = icmp ult i64 %632, %140, !dbg !2183
  br i1 %633, label %634, label %653, !dbg !2185

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2186
  store i8 0, i8* %635, align 1, !dbg !2187, !tbaa !538
  br label %653, !dbg !2186

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1706), !dbg !2013
  %637 = icmp eq i32 %112, 2, !dbg !2188
  br i1 %637, label %643, label %647, !dbg !2014

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1706), !dbg !2013
  %641 = icmp eq i32 %112, 2, !dbg !2188
  %642 = select i1 %118, i32 4, i32 2, !dbg !2014
  br i1 %641, label %643, label %647, !dbg !2014

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2014

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1649, metadata !DIExpression()), !dbg !1707
  %651 = and i32 %5, -3, !dbg !2189
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2190
  br label %653, !dbg !2191

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2192
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2193 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2195 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2199, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %1, metadata !2200, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2201, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %0, metadata !2203, metadata !DIExpression()) #33, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %1, metadata !2208, metadata !DIExpression()) #33, !dbg !2216
  call void @llvm.dbg.value(metadata i64* null, metadata !2209, metadata !DIExpression()) #33, !dbg !2216
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2210, metadata !DIExpression()) #33, !dbg !2216
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2218
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2218
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2211, metadata !DIExpression()) #33, !dbg !2216
  %6 = tail call i32* @__errno_location() #36, !dbg !2219
  %7 = load i32, i32* %6, align 4, !dbg !2219, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %7, metadata !2212, metadata !DIExpression()) #33, !dbg !2216
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2220
  %9 = load i32, i32* %8, align 4, !dbg !2220, !tbaa !1589
  %10 = or i32 %9, 1, !dbg !2221
  call void @llvm.dbg.value(metadata i32 %10, metadata !2213, metadata !DIExpression()) #33, !dbg !2216
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2222
  %12 = load i32, i32* %11, align 8, !dbg !2222, !tbaa !1538
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2223
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2224
  %15 = load i8*, i8** %14, align 8, !dbg !2224, !tbaa !1611
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2225
  %17 = load i8*, i8** %16, align 8, !dbg !2225, !tbaa !1614
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #33, !dbg !2226
  %19 = add i64 %18, 1, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %19, metadata !2214, metadata !DIExpression()) #33, !dbg !2216
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #38, !dbg !2228
  call void @llvm.dbg.value(metadata i8* %20, metadata !2215, metadata !DIExpression()) #33, !dbg !2216
  %21 = load i32, i32* %11, align 8, !dbg !2229, !tbaa !1538
  %22 = load i8*, i8** %14, align 8, !dbg !2230, !tbaa !1611
  %23 = load i8*, i8** %16, align 8, !dbg !2231, !tbaa !1614
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #33, !dbg !2232
  store i32 %7, i32* %6, align 4, !dbg !2233, !tbaa !529
  ret i8* %20, !dbg !2234
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2204 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2203, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i64 %1, metadata !2208, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i64* %2, metadata !2209, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2210, metadata !DIExpression()), !dbg !2235
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2236
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2236
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2211, metadata !DIExpression()), !dbg !2235
  %7 = tail call i32* @__errno_location() #36, !dbg !2237
  %8 = load i32, i32* %7, align 4, !dbg !2237, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %8, metadata !2212, metadata !DIExpression()), !dbg !2235
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2238
  %10 = load i32, i32* %9, align 4, !dbg !2238, !tbaa !1589
  %11 = icmp eq i64* %2, null, !dbg !2239
  %12 = zext i1 %11 to i32, !dbg !2239
  %13 = or i32 %10, %12, !dbg !2240
  call void @llvm.dbg.value(metadata i32 %13, metadata !2213, metadata !DIExpression()), !dbg !2235
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2241
  %15 = load i32, i32* %14, align 8, !dbg !2241, !tbaa !1538
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2242
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2243
  %18 = load i8*, i8** %17, align 8, !dbg !2243, !tbaa !1611
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2244
  %20 = load i8*, i8** %19, align 8, !dbg !2244, !tbaa !1614
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2245
  %22 = add i64 %21, 1, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %22, metadata !2214, metadata !DIExpression()), !dbg !2235
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #38, !dbg !2247
  call void @llvm.dbg.value(metadata i8* %23, metadata !2215, metadata !DIExpression()), !dbg !2235
  %24 = load i32, i32* %14, align 8, !dbg !2248, !tbaa !1538
  %25 = load i8*, i8** %17, align 8, !dbg !2249, !tbaa !1611
  %26 = load i8*, i8** %19, align 8, !dbg !2250, !tbaa !1614
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2251
  store i32 %8, i32* %7, align 4, !dbg !2252, !tbaa !529
  br i1 %11, label %29, label %28, !dbg !2253

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2254, !tbaa !1061
  br label %29, !dbg !2256

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2257
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2258 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2263, !tbaa !439
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2260, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i32 1, metadata !2261, metadata !DIExpression()), !dbg !2265
  %2 = load i32, i32* @nslots, align 4, !tbaa !529
  call void @llvm.dbg.value(metadata i32 1, metadata !2261, metadata !DIExpression()), !dbg !2265
  %3 = icmp sgt i32 %2, 1, !dbg !2266
  br i1 %3, label %4, label %6, !dbg !2268

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2266
  br label %10, !dbg !2268

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2269
  %8 = load i8*, i8** %7, align 8, !dbg !2269, !tbaa !2271
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2273
  br i1 %9, label %17, label %16, !dbg !2274

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2261, metadata !DIExpression()), !dbg !2265
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2275
  %13 = load i8*, i8** %12, align 8, !dbg !2275, !tbaa !2271
  tail call void @free(i8* noundef %13) #33, !dbg !2276
  %14 = add nuw nsw i64 %11, 1, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %14, metadata !2261, metadata !DIExpression()), !dbg !2265
  %15 = icmp eq i64 %14, %5, !dbg !2266
  br i1 %15, label %6, label %10, !dbg !2268, !llvm.loop !2278

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #33, !dbg !2280
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2282, !tbaa !2283
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2284, !tbaa !2271
  br label %17, !dbg !2285

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2286
  br i1 %18, label %21, label %19, !dbg !2288

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2289
  tail call void @free(i8* noundef %20) #33, !dbg !2291
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2292, !tbaa !439
  br label %21, !dbg !2293

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2294, !tbaa !529
  ret void, !dbg !2295
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2296 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2298, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8* %1, metadata !2299, metadata !DIExpression()), !dbg !2300
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2301
  ret i8* %3, !dbg !2302
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2303 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2307, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8* %1, metadata !2308, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i64 %2, metadata !2309, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2310, metadata !DIExpression()), !dbg !2323
  %6 = tail call i32* @__errno_location() #36, !dbg !2324
  %7 = load i32, i32* %6, align 4, !dbg !2324, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %7, metadata !2311, metadata !DIExpression()), !dbg !2323
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2325, !tbaa !439
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2312, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2313, metadata !DIExpression()), !dbg !2323
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2326
  br i1 %9, label %10, label %11, !dbg !2326

10:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2328
  unreachable, !dbg !2328

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2329, !tbaa !529
  %13 = icmp sgt i32 %12, %0, !dbg !2330
  br i1 %13, label %36, label %14, !dbg !2331

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2332
  call void @llvm.dbg.value(metadata i1 %15, metadata !2314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2333
  %16 = bitcast i64* %5 to i8*, !dbg !2334
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2334
  %17 = sext i32 %12 to i64, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %17, metadata !2317, metadata !DIExpression()), !dbg !2333
  store i64 %17, i64* %5, align 8, !dbg !2336, !tbaa !1061
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2337
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2337
  %20 = add nuw nsw i32 %0, 1, !dbg !2338
  %21 = sub i32 %20, %12, !dbg !2339
  %22 = sext i32 %21 to i64, !dbg !2340
  call void @llvm.dbg.value(metadata i64* %5, metadata !2317, metadata !DIExpression(DW_OP_deref)), !dbg !2333
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #33, !dbg !2341
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2341
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2312, metadata !DIExpression()), !dbg !2323
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2342, !tbaa !439
  br i1 %15, label %25, label %26, !dbg !2343

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2344, !tbaa.struct !2346
  br label %26, !dbg !2347

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2348, !tbaa !529
  %28 = sext i32 %27 to i64, !dbg !2349
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2349
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2350
  %31 = load i64, i64* %5, align 8, !dbg !2351, !tbaa !1061
  call void @llvm.dbg.value(metadata i64 %31, metadata !2317, metadata !DIExpression()), !dbg !2333
  %32 = sub nsw i64 %31, %28, !dbg !2352
  %33 = shl i64 %32, 4, !dbg !2353
  call void @llvm.dbg.value(metadata i8* %30, metadata !1741, metadata !DIExpression()) #33, !dbg !2354
  call void @llvm.dbg.value(metadata i32 0, metadata !1744, metadata !DIExpression()) #33, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %33, metadata !1745, metadata !DIExpression()) #33, !dbg !2354
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #33, !dbg !2356
  %34 = load i64, i64* %5, align 8, !dbg !2357, !tbaa !1061
  call void @llvm.dbg.value(metadata i64 %34, metadata !2317, metadata !DIExpression()), !dbg !2333
  %35 = trunc i64 %34 to i32, !dbg !2357
  store i32 %35, i32* @nslots, align 4, !dbg !2358, !tbaa !529
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2359
  br label %36, !dbg !2360

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2323
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2312, metadata !DIExpression()), !dbg !2323
  %38 = zext i32 %0 to i64, !dbg !2361
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2362
  %40 = load i64, i64* %39, align 8, !dbg !2362, !tbaa !2283
  call void @llvm.dbg.value(metadata i64 %40, metadata !2318, metadata !DIExpression()), !dbg !2363
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2364
  %42 = load i8*, i8** %41, align 8, !dbg !2364, !tbaa !2271
  call void @llvm.dbg.value(metadata i8* %42, metadata !2320, metadata !DIExpression()), !dbg !2363
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2365
  %44 = load i32, i32* %43, align 4, !dbg !2365, !tbaa !1589
  %45 = or i32 %44, 1, !dbg !2366
  call void @llvm.dbg.value(metadata i32 %45, metadata !2321, metadata !DIExpression()), !dbg !2363
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2367
  %47 = load i32, i32* %46, align 8, !dbg !2367, !tbaa !1538
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2368
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2369
  %50 = load i8*, i8** %49, align 8, !dbg !2369, !tbaa !1611
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2370
  %52 = load i8*, i8** %51, align 8, !dbg !2370, !tbaa !1614
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %53, metadata !2322, metadata !DIExpression()), !dbg !2363
  %54 = icmp ugt i64 %40, %53, !dbg !2372
  br i1 %54, label %65, label %55, !dbg !2374

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %56, metadata !2318, metadata !DIExpression()), !dbg !2363
  store i64 %56, i64* %39, align 8, !dbg !2377, !tbaa !2283
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2378
  br i1 %57, label %59, label %58, !dbg !2380

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #33, !dbg !2381
  br label %59, !dbg !2381

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #38, !dbg !2382
  call void @llvm.dbg.value(metadata i8* %60, metadata !2320, metadata !DIExpression()), !dbg !2363
  store i8* %60, i8** %41, align 8, !dbg !2383, !tbaa !2271
  %61 = load i32, i32* %46, align 8, !dbg !2384, !tbaa !1538
  %62 = load i8*, i8** %49, align 8, !dbg !2385, !tbaa !1611
  %63 = load i8*, i8** %51, align 8, !dbg !2386, !tbaa !1614
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2387
  br label %65, !dbg !2388

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2363
  call void @llvm.dbg.value(metadata i8* %66, metadata !2320, metadata !DIExpression()), !dbg !2363
  store i32 %7, i32* %6, align 4, !dbg !2389, !tbaa !529
  ret i8* %66, !dbg !2390
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2391 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2395, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8* %1, metadata !2396, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i64 %2, metadata !2397, metadata !DIExpression()), !dbg !2398
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2399
  ret i8* %4, !dbg !2400
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2401 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2403, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 0, metadata !2298, metadata !DIExpression()) #33, !dbg !2405
  call void @llvm.dbg.value(metadata i8* %0, metadata !2299, metadata !DIExpression()) #33, !dbg !2405
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2407
  ret i8* %2, !dbg !2408
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2409 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2413, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i64 %1, metadata !2414, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i32 0, metadata !2395, metadata !DIExpression()) #33, !dbg !2416
  call void @llvm.dbg.value(metadata i8* %0, metadata !2396, metadata !DIExpression()) #33, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %1, metadata !2397, metadata !DIExpression()) #33, !dbg !2416
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2418
  ret i8* %3, !dbg !2419
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2420 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2424, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i32 %1, metadata !2425, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8* %2, metadata !2426, metadata !DIExpression()), !dbg !2428
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2429
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2429
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2427, metadata !DIExpression()), !dbg !2430
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2431), !dbg !2434
  call void @llvm.dbg.value(metadata i32 %1, metadata !2435, metadata !DIExpression()) #33, !dbg !2441
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2440, metadata !DIExpression()) #33, !dbg !2443
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !2443, !alias.scope !2431
  %6 = icmp eq i32 %1, 10, !dbg !2444
  br i1 %6, label %7, label %8, !dbg !2446

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2447, !noalias !2431
  unreachable, !dbg !2447

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2448
  store i32 %1, i32* %9, align 8, !dbg !2449, !tbaa !1538, !alias.scope !2431
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2450
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2451
  ret i8* %10, !dbg !2452
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2453 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2457, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %1, metadata !2458, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8* %2, metadata !2459, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i64 %3, metadata !2460, metadata !DIExpression()), !dbg !2462
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2463
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2463
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2461, metadata !DIExpression()), !dbg !2464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2465), !dbg !2468
  call void @llvm.dbg.value(metadata i32 %1, metadata !2435, metadata !DIExpression()) #33, !dbg !2469
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2440, metadata !DIExpression()) #33, !dbg !2471
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #33, !dbg !2471, !alias.scope !2465
  %7 = icmp eq i32 %1, 10, !dbg !2472
  br i1 %7, label %8, label %9, !dbg !2473

8:                                                ; preds = %4
  tail call void @abort() #35, !dbg !2474, !noalias !2465
  unreachable, !dbg !2474

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2475
  store i32 %1, i32* %10, align 8, !dbg !2476, !tbaa !1538, !alias.scope !2465
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2477
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2478
  ret i8* %11, !dbg !2479
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2480 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2484, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8* %1, metadata !2485, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 0, metadata !2424, metadata !DIExpression()) #33, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %0, metadata !2425, metadata !DIExpression()) #33, !dbg !2487
  call void @llvm.dbg.value(metadata i8* %1, metadata !2426, metadata !DIExpression()) #33, !dbg !2487
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2489
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2489
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2427, metadata !DIExpression()) #33, !dbg !2490
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2491) #33, !dbg !2494
  call void @llvm.dbg.value(metadata i32 %0, metadata !2435, metadata !DIExpression()) #33, !dbg !2495
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2440, metadata !DIExpression()) #33, !dbg !2497
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #33, !dbg !2497, !alias.scope !2491
  %5 = icmp eq i32 %0, 10, !dbg !2498
  br i1 %5, label %6, label %7, !dbg !2499

6:                                                ; preds = %2
  tail call void @abort() #35, !dbg !2500, !noalias !2491
  unreachable, !dbg !2500

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2501
  store i32 %0, i32* %8, align 8, !dbg !2502, !tbaa !1538, !alias.scope !2491
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2503
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2504
  ret i8* %9, !dbg !2505
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2506 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2510, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8* %1, metadata !2511, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i64 %2, metadata !2512, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i32 0, metadata !2457, metadata !DIExpression()) #33, !dbg !2514
  call void @llvm.dbg.value(metadata i32 %0, metadata !2458, metadata !DIExpression()) #33, !dbg !2514
  call void @llvm.dbg.value(metadata i8* %1, metadata !2459, metadata !DIExpression()) #33, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %2, metadata !2460, metadata !DIExpression()) #33, !dbg !2514
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2516
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2516
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2461, metadata !DIExpression()) #33, !dbg !2517
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2518) #33, !dbg !2521
  call void @llvm.dbg.value(metadata i32 %0, metadata !2435, metadata !DIExpression()) #33, !dbg !2522
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2440, metadata !DIExpression()) #33, !dbg !2524
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !2524, !alias.scope !2518
  %6 = icmp eq i32 %0, 10, !dbg !2525
  br i1 %6, label %7, label %8, !dbg !2526

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2527, !noalias !2518
  unreachable, !dbg !2527

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2528
  store i32 %0, i32* %9, align 8, !dbg !2529, !tbaa !1538, !alias.scope !2518
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #33, !dbg !2530
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2531
  ret i8* %10, !dbg !2532
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2533 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2537, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %1, metadata !2538, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 %2, metadata !2539, metadata !DIExpression()), !dbg !2541
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2542
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2542
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2544, !tbaa.struct !2545
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1556, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 %2, metadata !1557, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i32 1, metadata !1558, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 %2, metadata !1559, metadata !DIExpression()), !dbg !2546
  %6 = lshr i8 %2, 5, !dbg !2548
  %7 = zext i8 %6 to i64, !dbg !2548
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2549
  call void @llvm.dbg.value(metadata i32* %8, metadata !1560, metadata !DIExpression()), !dbg !2546
  %9 = and i8 %2, 31, !dbg !2550
  %10 = zext i8 %9 to i32, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %10, metadata !1562, metadata !DIExpression()), !dbg !2546
  %11 = load i32, i32* %8, align 4, !dbg !2551, !tbaa !529
  %12 = lshr i32 %11, %10, !dbg !2552
  %13 = and i32 %12, 1, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %13, metadata !1563, metadata !DIExpression()), !dbg !2546
  %14 = xor i32 %13, 1, !dbg !2554
  %15 = shl i32 %14, %10, !dbg !2555
  %16 = xor i32 %15, %11, !dbg !2556
  store i32 %16, i32* %8, align 4, !dbg !2556, !tbaa !529
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2557
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2558
  ret i8* %17, !dbg !2559
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2560 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2564, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %1, metadata !2565, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %0, metadata !2537, metadata !DIExpression()) #33, !dbg !2567
  call void @llvm.dbg.value(metadata i64 -1, metadata !2538, metadata !DIExpression()) #33, !dbg !2567
  call void @llvm.dbg.value(metadata i8 %1, metadata !2539, metadata !DIExpression()) #33, !dbg !2567
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2569
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2569
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2540, metadata !DIExpression()) #33, !dbg !2570
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2571, !tbaa.struct !2545
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1556, metadata !DIExpression()) #33, !dbg !2572
  call void @llvm.dbg.value(metadata i8 %1, metadata !1557, metadata !DIExpression()) #33, !dbg !2572
  call void @llvm.dbg.value(metadata i32 1, metadata !1558, metadata !DIExpression()) #33, !dbg !2572
  call void @llvm.dbg.value(metadata i8 %1, metadata !1559, metadata !DIExpression()) #33, !dbg !2572
  %5 = lshr i8 %1, 5, !dbg !2574
  %6 = zext i8 %5 to i64, !dbg !2574
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2575
  call void @llvm.dbg.value(metadata i32* %7, metadata !1560, metadata !DIExpression()) #33, !dbg !2572
  %8 = and i8 %1, 31, !dbg !2576
  %9 = zext i8 %8 to i32, !dbg !2576
  call void @llvm.dbg.value(metadata i32 %9, metadata !1562, metadata !DIExpression()) #33, !dbg !2572
  %10 = load i32, i32* %7, align 4, !dbg !2577, !tbaa !529
  %11 = lshr i32 %10, %9, !dbg !2578
  %12 = and i32 %11, 1, !dbg !2579
  call void @llvm.dbg.value(metadata i32 %12, metadata !1563, metadata !DIExpression()) #33, !dbg !2572
  %13 = xor i32 %12, 1, !dbg !2580
  %14 = shl i32 %13, %9, !dbg !2581
  %15 = xor i32 %14, %10, !dbg !2582
  store i32 %15, i32* %7, align 4, !dbg !2582, !tbaa !529
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2583
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2584
  ret i8* %16, !dbg !2585
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2586 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2588, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8* %0, metadata !2564, metadata !DIExpression()) #33, !dbg !2590
  call void @llvm.dbg.value(metadata i8 58, metadata !2565, metadata !DIExpression()) #33, !dbg !2590
  call void @llvm.dbg.value(metadata i8* %0, metadata !2537, metadata !DIExpression()) #33, !dbg !2592
  call void @llvm.dbg.value(metadata i64 -1, metadata !2538, metadata !DIExpression()) #33, !dbg !2592
  call void @llvm.dbg.value(metadata i8 58, metadata !2539, metadata !DIExpression()) #33, !dbg !2592
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2594
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #33, !dbg !2594
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2540, metadata !DIExpression()) #33, !dbg !2595
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2596, !tbaa.struct !2545
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1556, metadata !DIExpression()) #33, !dbg !2597
  call void @llvm.dbg.value(metadata i8 58, metadata !1557, metadata !DIExpression()) #33, !dbg !2597
  call void @llvm.dbg.value(metadata i32 1, metadata !1558, metadata !DIExpression()) #33, !dbg !2597
  call void @llvm.dbg.value(metadata i8 58, metadata !1559, metadata !DIExpression()) #33, !dbg !2597
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2599
  call void @llvm.dbg.value(metadata i32* %4, metadata !1560, metadata !DIExpression()) #33, !dbg !2597
  call void @llvm.dbg.value(metadata i32 26, metadata !1562, metadata !DIExpression()) #33, !dbg !2597
  %5 = load i32, i32* %4, align 4, !dbg !2600, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %5, metadata !1563, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !2597
  %6 = or i32 %5, 67108864, !dbg !2601
  store i32 %6, i32* %4, align 4, !dbg !2601, !tbaa !529
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #33, !dbg !2602
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #33, !dbg !2603
  ret i8* %7, !dbg !2604
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2605 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2607, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i64 %1, metadata !2608, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8* %0, metadata !2537, metadata !DIExpression()) #33, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %1, metadata !2538, metadata !DIExpression()) #33, !dbg !2610
  call void @llvm.dbg.value(metadata i8 58, metadata !2539, metadata !DIExpression()) #33, !dbg !2610
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2612
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2612
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2540, metadata !DIExpression()) #33, !dbg !2613
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2614, !tbaa.struct !2545
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1556, metadata !DIExpression()) #33, !dbg !2615
  call void @llvm.dbg.value(metadata i8 58, metadata !1557, metadata !DIExpression()) #33, !dbg !2615
  call void @llvm.dbg.value(metadata i32 1, metadata !1558, metadata !DIExpression()) #33, !dbg !2615
  call void @llvm.dbg.value(metadata i8 58, metadata !1559, metadata !DIExpression()) #33, !dbg !2615
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2617
  call void @llvm.dbg.value(metadata i32* %5, metadata !1560, metadata !DIExpression()) #33, !dbg !2615
  call void @llvm.dbg.value(metadata i32 26, metadata !1562, metadata !DIExpression()) #33, !dbg !2615
  %6 = load i32, i32* %5, align 4, !dbg !2618, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %6, metadata !1563, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !2615
  %7 = or i32 %6, 67108864, !dbg !2619
  store i32 %7, i32* %5, align 4, !dbg !2619, !tbaa !529
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2620
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2621
  ret i8* %8, !dbg !2622
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2623 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2625, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i32 %1, metadata !2626, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8* %2, metadata !2627, metadata !DIExpression()), !dbg !2629
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2630
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2630
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i32 %1, metadata !2435, metadata !DIExpression()) #33, !dbg !2632
  call void @llvm.dbg.value(metadata i32 0, metadata !2440, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2632
  %6 = icmp eq i32 %1, 10, !dbg !2634
  br i1 %6, label %7, label %8, !dbg !2635

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2636, !noalias !2637
  unreachable, !dbg !2636

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2440, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2632
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2640
  store i32 %1, i32* %9, align 8, !dbg !2640, !tbaa.struct !2545
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2640
  %11 = bitcast i32* %10 to i8*, !dbg !2640
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2640
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1556, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8 58, metadata !1557, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32 1, metadata !1558, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8 58, metadata !1559, metadata !DIExpression()), !dbg !2641
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2643
  call void @llvm.dbg.value(metadata i32* %12, metadata !1560, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32 26, metadata !1562, metadata !DIExpression()), !dbg !2641
  %13 = load i32, i32* %12, align 4, !dbg !2644, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %13, metadata !1563, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2641
  %14 = or i32 %13, 67108864, !dbg !2645
  store i32 %14, i32* %12, align 4, !dbg !2645, !tbaa !529
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2646
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2647
  ret i8* %15, !dbg !2648
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2649 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2653, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i8* %1, metadata !2654, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i8* %2, metadata !2655, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i8* %3, metadata !2656, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 %0, metadata !2658, metadata !DIExpression()) #33, !dbg !2668
  call void @llvm.dbg.value(metadata i8* %1, metadata !2663, metadata !DIExpression()) #33, !dbg !2668
  call void @llvm.dbg.value(metadata i8* %2, metadata !2664, metadata !DIExpression()) #33, !dbg !2668
  call void @llvm.dbg.value(metadata i8* %3, metadata !2665, metadata !DIExpression()) #33, !dbg !2668
  call void @llvm.dbg.value(metadata i64 -1, metadata !2666, metadata !DIExpression()) #33, !dbg !2668
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2670
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2670
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2667, metadata !DIExpression()) #33, !dbg !2671
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2672, !tbaa.struct !2545
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1596, metadata !DIExpression()) #33, !dbg !2673
  call void @llvm.dbg.value(metadata i8* %1, metadata !1597, metadata !DIExpression()) #33, !dbg !2673
  call void @llvm.dbg.value(metadata i8* %2, metadata !1598, metadata !DIExpression()) #33, !dbg !2673
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1596, metadata !DIExpression()) #33, !dbg !2673
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2675
  store i32 10, i32* %7, align 8, !dbg !2676, !tbaa !1538
  %8 = icmp ne i8* %1, null, !dbg !2677
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2678
  br i1 %10, label %12, label %11, !dbg !2678

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2679
  unreachable, !dbg !2679

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2680
  store i8* %1, i8** %13, align 8, !dbg !2681, !tbaa !1611
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2682
  store i8* %2, i8** %14, align 8, !dbg !2683, !tbaa !1614
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #33, !dbg !2684
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2685
  ret i8* %15, !dbg !2686
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2659 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2658, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %1, metadata !2663, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %2, metadata !2664, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %3, metadata !2665, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i64 %4, metadata !2666, metadata !DIExpression()), !dbg !2687
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2688
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #33, !dbg !2688
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2667, metadata !DIExpression()), !dbg !2689
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2690, !tbaa.struct !2545
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1596, metadata !DIExpression()) #33, !dbg !2691
  call void @llvm.dbg.value(metadata i8* %1, metadata !1597, metadata !DIExpression()) #33, !dbg !2691
  call void @llvm.dbg.value(metadata i8* %2, metadata !1598, metadata !DIExpression()) #33, !dbg !2691
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1596, metadata !DIExpression()) #33, !dbg !2691
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2693
  store i32 10, i32* %8, align 8, !dbg !2694, !tbaa !1538
  %9 = icmp ne i8* %1, null, !dbg !2695
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2696
  br i1 %11, label %13, label %12, !dbg !2696

12:                                               ; preds = %5
  tail call void @abort() #35, !dbg !2697
  unreachable, !dbg !2697

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2698
  store i8* %1, i8** %14, align 8, !dbg !2699, !tbaa !1611
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2700
  store i8* %2, i8** %15, align 8, !dbg !2701, !tbaa !1614
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2702
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #33, !dbg !2703
  ret i8* %16, !dbg !2704
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2705 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2709, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8* %1, metadata !2710, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8* %2, metadata !2711, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i32 0, metadata !2653, metadata !DIExpression()) #33, !dbg !2713
  call void @llvm.dbg.value(metadata i8* %0, metadata !2654, metadata !DIExpression()) #33, !dbg !2713
  call void @llvm.dbg.value(metadata i8* %1, metadata !2655, metadata !DIExpression()) #33, !dbg !2713
  call void @llvm.dbg.value(metadata i8* %2, metadata !2656, metadata !DIExpression()) #33, !dbg !2713
  call void @llvm.dbg.value(metadata i32 0, metadata !2658, metadata !DIExpression()) #33, !dbg !2715
  call void @llvm.dbg.value(metadata i8* %0, metadata !2663, metadata !DIExpression()) #33, !dbg !2715
  call void @llvm.dbg.value(metadata i8* %1, metadata !2664, metadata !DIExpression()) #33, !dbg !2715
  call void @llvm.dbg.value(metadata i8* %2, metadata !2665, metadata !DIExpression()) #33, !dbg !2715
  call void @llvm.dbg.value(metadata i64 -1, metadata !2666, metadata !DIExpression()) #33, !dbg !2715
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2717
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2717
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2667, metadata !DIExpression()) #33, !dbg !2718
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2719, !tbaa.struct !2545
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1596, metadata !DIExpression()) #33, !dbg !2720
  call void @llvm.dbg.value(metadata i8* %0, metadata !1597, metadata !DIExpression()) #33, !dbg !2720
  call void @llvm.dbg.value(metadata i8* %1, metadata !1598, metadata !DIExpression()) #33, !dbg !2720
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1596, metadata !DIExpression()) #33, !dbg !2720
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2722
  store i32 10, i32* %6, align 8, !dbg !2723, !tbaa !1538
  %7 = icmp ne i8* %0, null, !dbg !2724
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2725
  br i1 %9, label %11, label %10, !dbg !2725

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !2726
  unreachable, !dbg !2726

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2727
  store i8* %0, i8** %12, align 8, !dbg !2728, !tbaa !1611
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2729
  store i8* %1, i8** %13, align 8, !dbg !2730, !tbaa !1614
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #33, !dbg !2731
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2732
  ret i8* %14, !dbg !2733
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2734 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2738, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i8* %1, metadata !2739, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i8* %2, metadata !2740, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i64 %3, metadata !2741, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i32 0, metadata !2658, metadata !DIExpression()) #33, !dbg !2743
  call void @llvm.dbg.value(metadata i8* %0, metadata !2663, metadata !DIExpression()) #33, !dbg !2743
  call void @llvm.dbg.value(metadata i8* %1, metadata !2664, metadata !DIExpression()) #33, !dbg !2743
  call void @llvm.dbg.value(metadata i8* %2, metadata !2665, metadata !DIExpression()) #33, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %3, metadata !2666, metadata !DIExpression()) #33, !dbg !2743
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2745
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2745
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2667, metadata !DIExpression()) #33, !dbg !2746
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2747, !tbaa.struct !2545
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1596, metadata !DIExpression()) #33, !dbg !2748
  call void @llvm.dbg.value(metadata i8* %0, metadata !1597, metadata !DIExpression()) #33, !dbg !2748
  call void @llvm.dbg.value(metadata i8* %1, metadata !1598, metadata !DIExpression()) #33, !dbg !2748
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1596, metadata !DIExpression()) #33, !dbg !2748
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2750
  store i32 10, i32* %7, align 8, !dbg !2751, !tbaa !1538
  %8 = icmp ne i8* %0, null, !dbg !2752
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2753
  br i1 %10, label %12, label %11, !dbg !2753

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2754
  unreachable, !dbg !2754

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2755
  store i8* %0, i8** %13, align 8, !dbg !2756, !tbaa !1611
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2757
  store i8* %1, i8** %14, align 8, !dbg !2758, !tbaa !1614
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #33, !dbg !2759
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2760
  ret i8* %15, !dbg !2761
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2762 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2766, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8* %1, metadata !2767, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i64 %2, metadata !2768, metadata !DIExpression()), !dbg !2769
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2770
  ret i8* %4, !dbg !2771
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2772 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2776, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i64 %1, metadata !2777, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i32 0, metadata !2766, metadata !DIExpression()) #33, !dbg !2779
  call void @llvm.dbg.value(metadata i8* %0, metadata !2767, metadata !DIExpression()) #33, !dbg !2779
  call void @llvm.dbg.value(metadata i64 %1, metadata !2768, metadata !DIExpression()) #33, !dbg !2779
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2781
  ret i8* %3, !dbg !2782
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2783 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2787, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8* %1, metadata !2788, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i32 %0, metadata !2766, metadata !DIExpression()) #33, !dbg !2790
  call void @llvm.dbg.value(metadata i8* %1, metadata !2767, metadata !DIExpression()) #33, !dbg !2790
  call void @llvm.dbg.value(metadata i64 -1, metadata !2768, metadata !DIExpression()) #33, !dbg !2790
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2792
  ret i8* %3, !dbg !2793
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2794 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2798, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 0, metadata !2787, metadata !DIExpression()) #33, !dbg !2800
  call void @llvm.dbg.value(metadata i8* %0, metadata !2788, metadata !DIExpression()) #33, !dbg !2800
  call void @llvm.dbg.value(metadata i32 0, metadata !2766, metadata !DIExpression()) #33, !dbg !2802
  call void @llvm.dbg.value(metadata i8* %0, metadata !2767, metadata !DIExpression()) #33, !dbg !2802
  call void @llvm.dbg.value(metadata i64 -1, metadata !2768, metadata !DIExpression()) #33, !dbg !2802
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2804
  ret i8* %2, !dbg !2805
}

; Function Attrs: nofree nounwind uwtable
define dso_local %struct.timespec* @get_root_dev_ino(%struct.timespec* noundef nonnull writeonly %0) local_unnamed_addr #24 !dbg !2806 {
  %2 = alloca %struct.stat, align 16
  call void @llvm.dbg.value(metadata %struct.timespec* %0, metadata !2815, metadata !DIExpression()), !dbg !2839
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !2840
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #33, !dbg !2840
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !2816, metadata !DIExpression()), !dbg !2841
  %4 = call i32 @lstat(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i64 0, i64 0), %struct.stat* noundef nonnull %2) #33, !dbg !2842
  %5 = icmp eq i32 %4, 0, !dbg !2842
  br i1 %5, label %6, label %11, !dbg !2844

6:                                                ; preds = %1
  %7 = bitcast %struct.stat* %2 to <2 x i64>*, !dbg !2845
  %8 = load <2 x i64>, <2 x i64>* %7, align 16, !dbg !2845, !tbaa !1061
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !2846
  %10 = bitcast %struct.timespec* %0 to <2 x i64>*, !dbg !2846
  store <2 x i64> %9, <2 x i64>* %10, align 8, !dbg !2846, !tbaa !1061
  br label %11, !dbg !2847

11:                                               ; preds = %1, %6
  %12 = phi %struct.timespec* [ %0, %6 ], [ null, %1 ], !dbg !2839
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #33, !dbg !2848
  ret %struct.timespec* %12, !dbg !2848
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2849 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2888, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8* %1, metadata !2889, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8* %2, metadata !2890, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8* %3, metadata !2891, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8** %4, metadata !2892, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %5, metadata !2893, metadata !DIExpression()), !dbg !2894
  %7 = icmp eq i8* %1, null, !dbg !2895
  br i1 %7, label %10, label %8, !dbg !2897

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #33, !dbg !2898
  br label %12, !dbg !2898

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.97, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #33, !dbg !2899
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.99, i64 0, i64 0), i32 noundef 5) #33, !dbg !2900
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #33, !dbg !2900
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.100, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2901
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.101, i64 0, i64 0), i32 noundef 5) #33, !dbg !2902
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.102, i64 0, i64 0)) #33, !dbg !2902
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.100, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2903
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
  ], !dbg !2904

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.103, i64 0, i64 0), i32 noundef 5) #33, !dbg !2905
  %21 = load i8*, i8** %4, align 8, !dbg !2905, !tbaa !439
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #33, !dbg !2905
  br label %147, !dbg !2907

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.104, i64 0, i64 0), i32 noundef 5) #33, !dbg !2908
  %25 = load i8*, i8** %4, align 8, !dbg !2908, !tbaa !439
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2908
  %27 = load i8*, i8** %26, align 8, !dbg !2908, !tbaa !439
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #33, !dbg !2908
  br label %147, !dbg !2909

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.105, i64 0, i64 0), i32 noundef 5) #33, !dbg !2910
  %31 = load i8*, i8** %4, align 8, !dbg !2910, !tbaa !439
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2910
  %33 = load i8*, i8** %32, align 8, !dbg !2910, !tbaa !439
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2910
  %35 = load i8*, i8** %34, align 8, !dbg !2910, !tbaa !439
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #33, !dbg !2910
  br label %147, !dbg !2911

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.106, i64 0, i64 0), i32 noundef 5) #33, !dbg !2912
  %39 = load i8*, i8** %4, align 8, !dbg !2912, !tbaa !439
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2912
  %41 = load i8*, i8** %40, align 8, !dbg !2912, !tbaa !439
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2912
  %43 = load i8*, i8** %42, align 8, !dbg !2912, !tbaa !439
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2912
  %45 = load i8*, i8** %44, align 8, !dbg !2912, !tbaa !439
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #33, !dbg !2912
  br label %147, !dbg !2913

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.107, i64 0, i64 0), i32 noundef 5) #33, !dbg !2914
  %49 = load i8*, i8** %4, align 8, !dbg !2914, !tbaa !439
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2914
  %51 = load i8*, i8** %50, align 8, !dbg !2914, !tbaa !439
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2914
  %53 = load i8*, i8** %52, align 8, !dbg !2914, !tbaa !439
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2914
  %55 = load i8*, i8** %54, align 8, !dbg !2914, !tbaa !439
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2914
  %57 = load i8*, i8** %56, align 8, !dbg !2914, !tbaa !439
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #33, !dbg !2914
  br label %147, !dbg !2915

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.108, i64 0, i64 0), i32 noundef 5) #33, !dbg !2916
  %61 = load i8*, i8** %4, align 8, !dbg !2916, !tbaa !439
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2916
  %63 = load i8*, i8** %62, align 8, !dbg !2916, !tbaa !439
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2916
  %65 = load i8*, i8** %64, align 8, !dbg !2916, !tbaa !439
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2916
  %67 = load i8*, i8** %66, align 8, !dbg !2916, !tbaa !439
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2916
  %69 = load i8*, i8** %68, align 8, !dbg !2916, !tbaa !439
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2916
  %71 = load i8*, i8** %70, align 8, !dbg !2916, !tbaa !439
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #33, !dbg !2916
  br label %147, !dbg !2917

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.109, i64 0, i64 0), i32 noundef 5) #33, !dbg !2918
  %75 = load i8*, i8** %4, align 8, !dbg !2918, !tbaa !439
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2918
  %77 = load i8*, i8** %76, align 8, !dbg !2918, !tbaa !439
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2918
  %79 = load i8*, i8** %78, align 8, !dbg !2918, !tbaa !439
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2918
  %81 = load i8*, i8** %80, align 8, !dbg !2918, !tbaa !439
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2918
  %83 = load i8*, i8** %82, align 8, !dbg !2918, !tbaa !439
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2918
  %85 = load i8*, i8** %84, align 8, !dbg !2918, !tbaa !439
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2918
  %87 = load i8*, i8** %86, align 8, !dbg !2918, !tbaa !439
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #33, !dbg !2918
  br label %147, !dbg !2919

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.110, i64 0, i64 0), i32 noundef 5) #33, !dbg !2920
  %91 = load i8*, i8** %4, align 8, !dbg !2920, !tbaa !439
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2920
  %93 = load i8*, i8** %92, align 8, !dbg !2920, !tbaa !439
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2920
  %95 = load i8*, i8** %94, align 8, !dbg !2920, !tbaa !439
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2920
  %97 = load i8*, i8** %96, align 8, !dbg !2920, !tbaa !439
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2920
  %99 = load i8*, i8** %98, align 8, !dbg !2920, !tbaa !439
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2920
  %101 = load i8*, i8** %100, align 8, !dbg !2920, !tbaa !439
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2920
  %103 = load i8*, i8** %102, align 8, !dbg !2920, !tbaa !439
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2920
  %105 = load i8*, i8** %104, align 8, !dbg !2920, !tbaa !439
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #33, !dbg !2920
  br label %147, !dbg !2921

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.111, i64 0, i64 0), i32 noundef 5) #33, !dbg !2922
  %109 = load i8*, i8** %4, align 8, !dbg !2922, !tbaa !439
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2922
  %111 = load i8*, i8** %110, align 8, !dbg !2922, !tbaa !439
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2922
  %113 = load i8*, i8** %112, align 8, !dbg !2922, !tbaa !439
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2922
  %115 = load i8*, i8** %114, align 8, !dbg !2922, !tbaa !439
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2922
  %117 = load i8*, i8** %116, align 8, !dbg !2922, !tbaa !439
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2922
  %119 = load i8*, i8** %118, align 8, !dbg !2922, !tbaa !439
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2922
  %121 = load i8*, i8** %120, align 8, !dbg !2922, !tbaa !439
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2922
  %123 = load i8*, i8** %122, align 8, !dbg !2922, !tbaa !439
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2922
  %125 = load i8*, i8** %124, align 8, !dbg !2922, !tbaa !439
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #33, !dbg !2922
  br label %147, !dbg !2923

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.112, i64 0, i64 0), i32 noundef 5) #33, !dbg !2924
  %129 = load i8*, i8** %4, align 8, !dbg !2924, !tbaa !439
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2924
  %131 = load i8*, i8** %130, align 8, !dbg !2924, !tbaa !439
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2924
  %133 = load i8*, i8** %132, align 8, !dbg !2924, !tbaa !439
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2924
  %135 = load i8*, i8** %134, align 8, !dbg !2924, !tbaa !439
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2924
  %137 = load i8*, i8** %136, align 8, !dbg !2924, !tbaa !439
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2924
  %139 = load i8*, i8** %138, align 8, !dbg !2924, !tbaa !439
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2924
  %141 = load i8*, i8** %140, align 8, !dbg !2924, !tbaa !439
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2924
  %143 = load i8*, i8** %142, align 8, !dbg !2924, !tbaa !439
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2924
  %145 = load i8*, i8** %144, align 8, !dbg !2924, !tbaa !439
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #33, !dbg !2924
  br label %147, !dbg !2925

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2926
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2927 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2931, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8* %1, metadata !2932, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8* %2, metadata !2933, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8* %3, metadata !2934, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8** %4, metadata !2935, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 0, metadata !2936, metadata !DIExpression()), !dbg !2937
  br label %6, !dbg !2938

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2940
  call void @llvm.dbg.value(metadata i64 %7, metadata !2936, metadata !DIExpression()), !dbg !2937
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2941
  %9 = load i8*, i8** %8, align 8, !dbg !2941, !tbaa !439
  %10 = icmp eq i8* %9, null, !dbg !2943
  %11 = add i64 %7, 1, !dbg !2944
  call void @llvm.dbg.value(metadata i64 %11, metadata !2936, metadata !DIExpression()), !dbg !2937
  br i1 %10, label %12, label %6, !dbg !2943, !llvm.loop !2945

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2947
  ret void, !dbg !2948
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2949 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2964, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* %1, metadata !2965, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* %2, metadata !2966, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* %3, metadata !2967, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2968, metadata !DIExpression()), !dbg !2973
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2974
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #33, !dbg !2974
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2970, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 0, metadata !2969, metadata !DIExpression()), !dbg !2972
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  %11 = load i32, i32* %8, align 8, !dbg !2976
  %12 = icmp sgt i32 %11, -1, !dbg !2976
  call void @llvm.dbg.value(metadata i64 0, metadata !2969, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i64 0, metadata !2969, metadata !DIExpression()), !dbg !2972
  br i1 %12, label %13, label %70

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2976
  %15 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !2976
  store i8* %15, i8** %10, align 8, !dbg !2976
  %16 = bitcast i8* %14 to i8**, !dbg !2976
  %17 = load i8*, i8** %16, align 8, !dbg !2976
  %18 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2979
  store i8* %17, i8** %18, align 8, !dbg !2980, !tbaa !439
  %19 = icmp eq i8* %17, null, !dbg !2981
  br i1 %19, label %265, label %20, !dbg !2982

20:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 1, metadata !2969, metadata !DIExpression()), !dbg !2972
  %21 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !2976
  store i8* %21, i8** %10, align 8, !dbg !2976
  %22 = bitcast i8* %15 to i8**, !dbg !2976
  %23 = load i8*, i8** %22, align 8, !dbg !2976
  %24 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2979
  store i8* %23, i8** %24, align 8, !dbg !2980, !tbaa !439
  %25 = icmp eq i8* %23, null, !dbg !2981
  br i1 %25, label %265, label %26, !dbg !2982

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 2, metadata !2969, metadata !DIExpression()), !dbg !2972
  %27 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !2976
  store i8* %27, i8** %10, align 8, !dbg !2976
  %28 = bitcast i8* %21 to i8**, !dbg !2976
  %29 = load i8*, i8** %28, align 8, !dbg !2976
  %30 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2979
  store i8* %29, i8** %30, align 8, !dbg !2980, !tbaa !439
  %31 = icmp eq i8* %29, null, !dbg !2981
  br i1 %31, label %265, label %32, !dbg !2982

32:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 3, metadata !2969, metadata !DIExpression()), !dbg !2972
  %33 = getelementptr inbounds i8, i8* %14, i64 32, !dbg !2976
  store i8* %33, i8** %10, align 8, !dbg !2976
  %34 = bitcast i8* %27 to i8**, !dbg !2976
  %35 = load i8*, i8** %34, align 8, !dbg !2976
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2979
  store i8* %35, i8** %36, align 8, !dbg !2980, !tbaa !439
  %37 = icmp eq i8* %35, null, !dbg !2981
  br i1 %37, label %265, label %38, !dbg !2982

38:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 4, metadata !2969, metadata !DIExpression()), !dbg !2972
  %39 = getelementptr inbounds i8, i8* %14, i64 40, !dbg !2976
  store i8* %39, i8** %10, align 8, !dbg !2976
  %40 = bitcast i8* %33 to i8**, !dbg !2976
  %41 = load i8*, i8** %40, align 8, !dbg !2976
  %42 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2979
  store i8* %41, i8** %42, align 8, !dbg !2980, !tbaa !439
  %43 = icmp eq i8* %41, null, !dbg !2981
  br i1 %43, label %265, label %44, !dbg !2982

44:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 5, metadata !2969, metadata !DIExpression()), !dbg !2972
  %45 = getelementptr inbounds i8, i8* %14, i64 48, !dbg !2976
  store i8* %45, i8** %10, align 8, !dbg !2976
  %46 = bitcast i8* %39 to i8**, !dbg !2976
  %47 = load i8*, i8** %46, align 8, !dbg !2976
  %48 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2979
  store i8* %47, i8** %48, align 8, !dbg !2980, !tbaa !439
  %49 = icmp eq i8* %47, null, !dbg !2981
  br i1 %49, label %265, label %50, !dbg !2982

50:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 6, metadata !2969, metadata !DIExpression()), !dbg !2972
  %51 = getelementptr inbounds i8, i8* %14, i64 56, !dbg !2976
  store i8* %51, i8** %10, align 8, !dbg !2976
  %52 = bitcast i8* %45 to i8**, !dbg !2976
  %53 = load i8*, i8** %52, align 8, !dbg !2976
  %54 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2979
  store i8* %53, i8** %54, align 8, !dbg !2980, !tbaa !439
  %55 = icmp eq i8* %53, null, !dbg !2981
  br i1 %55, label %265, label %56, !dbg !2982

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 7, metadata !2969, metadata !DIExpression()), !dbg !2972
  %57 = getelementptr inbounds i8, i8* %14, i64 64, !dbg !2976
  store i8* %57, i8** %10, align 8, !dbg !2976
  %58 = bitcast i8* %51 to i8**, !dbg !2976
  %59 = load i8*, i8** %58, align 8, !dbg !2976
  %60 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2979
  store i8* %59, i8** %60, align 8, !dbg !2980, !tbaa !439
  %61 = icmp eq i8* %59, null, !dbg !2981
  br i1 %61, label %265, label %62, !dbg !2982

62:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 8, metadata !2969, metadata !DIExpression()), !dbg !2972
  %63 = getelementptr inbounds i8, i8* %14, i64 72, !dbg !2976
  store i8* %63, i8** %10, align 8, !dbg !2976
  %64 = bitcast i8* %57 to i8**, !dbg !2976
  %65 = load i8*, i8** %64, align 8, !dbg !2976
  %66 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2979
  store i8* %65, i8** %66, align 8, !dbg !2980, !tbaa !439
  %67 = icmp eq i8* %65, null, !dbg !2981
  br i1 %67, label %265, label %68, !dbg !2982

68:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i64 9, metadata !2969, metadata !DIExpression()), !dbg !2972
  %69 = getelementptr inbounds i8, i8* %14, i64 80, !dbg !2976
  store i8* %69, i8** %10, align 8, !dbg !2976
  br label %258, !dbg !2982

70:                                               ; preds = %5
  %71 = add nsw i32 %11, 8, !dbg !2976
  store i32 %71, i32* %8, align 8, !dbg !2976
  %72 = icmp ult i32 %11, -7, !dbg !2976
  br i1 %72, label %73, label %77, !dbg !2976

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8, !dbg !2976
  %75 = sext i32 %11 to i64, !dbg !2976
  %76 = getelementptr inbounds i8, i8* %74, i64 %75, !dbg !2976
  br label %80, !dbg !2976

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8, !dbg !2976
  %79 = getelementptr inbounds i8, i8* %78, i64 8, !dbg !2976
  store i8* %79, i8** %10, align 8, !dbg !2976
  br label %80, !dbg !2976

80:                                               ; preds = %77, %73
  %81 = phi i8* [ %76, %73 ], [ %78, %77 ]
  %82 = bitcast i8* %81 to i8**, !dbg !2976
  %83 = load i8*, i8** %82, align 8, !dbg !2976
  %84 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2979
  store i8* %83, i8** %84, align 8, !dbg !2980, !tbaa !439
  %85 = icmp eq i8* %83, null, !dbg !2981
  br i1 %85, label %265, label %86, !dbg !2982

86:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i64 1, metadata !2969, metadata !DIExpression()), !dbg !2972
  %87 = icmp sgt i32 %11, -9, !dbg !2976
  br i1 %87, label %95, label %88, !dbg !2976

88:                                               ; preds = %86
  %89 = add nsw i32 %11, 16, !dbg !2976
  store i32 %89, i32* %8, align 8, !dbg !2976
  %90 = icmp ult i32 %71, -7, !dbg !2976
  br i1 %90, label %91, label %95, !dbg !2976

91:                                               ; preds = %88
  %92 = load i8*, i8** %9, align 8, !dbg !2976
  %93 = sext i32 %71 to i64, !dbg !2976
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !2976
  br label %99, !dbg !2976

95:                                               ; preds = %88, %86
  %96 = phi i32 [ %89, %88 ], [ %71, %86 ]
  %97 = load i8*, i8** %10, align 8, !dbg !2976
  %98 = getelementptr inbounds i8, i8* %97, i64 8, !dbg !2976
  store i8* %98, i8** %10, align 8, !dbg !2976
  br label %99, !dbg !2976

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %89, %91 ], [ %96, %95 ]
  %101 = phi i8* [ %94, %91 ], [ %97, %95 ]
  %102 = bitcast i8* %101 to i8**, !dbg !2976
  %103 = load i8*, i8** %102, align 8, !dbg !2976
  %104 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2979
  store i8* %103, i8** %104, align 8, !dbg !2980, !tbaa !439
  %105 = icmp eq i8* %103, null, !dbg !2981
  br i1 %105, label %265, label %106, !dbg !2982

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i64 2, metadata !2969, metadata !DIExpression()), !dbg !2972
  %107 = icmp sgt i32 %100, -1, !dbg !2976
  br i1 %107, label %115, label %108, !dbg !2976

108:                                              ; preds = %106
  %109 = add nsw i32 %100, 8, !dbg !2976
  store i32 %109, i32* %8, align 8, !dbg !2976
  %110 = icmp ult i32 %100, -7, !dbg !2976
  br i1 %110, label %111, label %115, !dbg !2976

111:                                              ; preds = %108
  %112 = load i8*, i8** %9, align 8, !dbg !2976
  %113 = sext i32 %100 to i64, !dbg !2976
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !2976
  br label %119, !dbg !2976

115:                                              ; preds = %108, %106
  %116 = phi i32 [ %109, %108 ], [ %100, %106 ]
  %117 = load i8*, i8** %10, align 8, !dbg !2976
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !2976
  store i8* %118, i8** %10, align 8, !dbg !2976
  br label %119, !dbg !2976

119:                                              ; preds = %115, %111
  %120 = phi i32 [ %109, %111 ], [ %116, %115 ]
  %121 = phi i8* [ %114, %111 ], [ %117, %115 ]
  %122 = bitcast i8* %121 to i8**, !dbg !2976
  %123 = load i8*, i8** %122, align 8, !dbg !2976
  %124 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2979
  store i8* %123, i8** %124, align 8, !dbg !2980, !tbaa !439
  %125 = icmp eq i8* %123, null, !dbg !2981
  br i1 %125, label %265, label %126, !dbg !2982

126:                                              ; preds = %119
  call void @llvm.dbg.value(metadata i64 3, metadata !2969, metadata !DIExpression()), !dbg !2972
  %127 = icmp sgt i32 %120, -1, !dbg !2976
  br i1 %127, label %135, label %128, !dbg !2976

128:                                              ; preds = %126
  %129 = add nsw i32 %120, 8, !dbg !2976
  store i32 %129, i32* %8, align 8, !dbg !2976
  %130 = icmp ult i32 %120, -7, !dbg !2976
  br i1 %130, label %131, label %135, !dbg !2976

131:                                              ; preds = %128
  %132 = load i8*, i8** %9, align 8, !dbg !2976
  %133 = sext i32 %120 to i64, !dbg !2976
  %134 = getelementptr inbounds i8, i8* %132, i64 %133, !dbg !2976
  br label %139, !dbg !2976

135:                                              ; preds = %128, %126
  %136 = phi i32 [ %129, %128 ], [ %120, %126 ]
  %137 = load i8*, i8** %10, align 8, !dbg !2976
  %138 = getelementptr inbounds i8, i8* %137, i64 8, !dbg !2976
  store i8* %138, i8** %10, align 8, !dbg !2976
  br label %139, !dbg !2976

139:                                              ; preds = %135, %131
  %140 = phi i32 [ %129, %131 ], [ %136, %135 ]
  %141 = phi i8* [ %134, %131 ], [ %137, %135 ]
  %142 = bitcast i8* %141 to i8**, !dbg !2976
  %143 = load i8*, i8** %142, align 8, !dbg !2976
  %144 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2979
  store i8* %143, i8** %144, align 8, !dbg !2980, !tbaa !439
  %145 = icmp eq i8* %143, null, !dbg !2981
  br i1 %145, label %265, label %146, !dbg !2982

146:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i64 4, metadata !2969, metadata !DIExpression()), !dbg !2972
  %147 = icmp sgt i32 %140, -1, !dbg !2976
  br i1 %147, label %155, label %148, !dbg !2976

148:                                              ; preds = %146
  %149 = add nsw i32 %140, 8, !dbg !2976
  store i32 %149, i32* %8, align 8, !dbg !2976
  %150 = icmp ult i32 %140, -7, !dbg !2976
  br i1 %150, label %151, label %155, !dbg !2976

151:                                              ; preds = %148
  %152 = load i8*, i8** %9, align 8, !dbg !2976
  %153 = sext i32 %140 to i64, !dbg !2976
  %154 = getelementptr inbounds i8, i8* %152, i64 %153, !dbg !2976
  br label %159, !dbg !2976

155:                                              ; preds = %148, %146
  %156 = phi i32 [ %149, %148 ], [ %140, %146 ]
  %157 = load i8*, i8** %10, align 8, !dbg !2976
  %158 = getelementptr inbounds i8, i8* %157, i64 8, !dbg !2976
  store i8* %158, i8** %10, align 8, !dbg !2976
  br label %159, !dbg !2976

159:                                              ; preds = %155, %151
  %160 = phi i32 [ %149, %151 ], [ %156, %155 ]
  %161 = phi i8* [ %154, %151 ], [ %157, %155 ]
  %162 = bitcast i8* %161 to i8**, !dbg !2976
  %163 = load i8*, i8** %162, align 8, !dbg !2976
  %164 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2979
  store i8* %163, i8** %164, align 8, !dbg !2980, !tbaa !439
  %165 = icmp eq i8* %163, null, !dbg !2981
  br i1 %165, label %265, label %166, !dbg !2982

166:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i64 5, metadata !2969, metadata !DIExpression()), !dbg !2972
  %167 = icmp sgt i32 %160, -1, !dbg !2976
  br i1 %167, label %175, label %168, !dbg !2976

168:                                              ; preds = %166
  %169 = add nsw i32 %160, 8, !dbg !2976
  store i32 %169, i32* %8, align 8, !dbg !2976
  %170 = icmp ult i32 %160, -7, !dbg !2976
  br i1 %170, label %171, label %175, !dbg !2976

171:                                              ; preds = %168
  %172 = load i8*, i8** %9, align 8, !dbg !2976
  %173 = sext i32 %160 to i64, !dbg !2976
  %174 = getelementptr inbounds i8, i8* %172, i64 %173, !dbg !2976
  br label %179, !dbg !2976

175:                                              ; preds = %168, %166
  %176 = phi i32 [ %169, %168 ], [ %160, %166 ]
  %177 = load i8*, i8** %10, align 8, !dbg !2976
  %178 = getelementptr inbounds i8, i8* %177, i64 8, !dbg !2976
  store i8* %178, i8** %10, align 8, !dbg !2976
  br label %179, !dbg !2976

179:                                              ; preds = %175, %171
  %180 = phi i32 [ %169, %171 ], [ %176, %175 ]
  %181 = phi i8* [ %174, %171 ], [ %177, %175 ]
  %182 = bitcast i8* %181 to i8**, !dbg !2976
  %183 = load i8*, i8** %182, align 8, !dbg !2976
  %184 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2979
  store i8* %183, i8** %184, align 8, !dbg !2980, !tbaa !439
  %185 = icmp eq i8* %183, null, !dbg !2981
  br i1 %185, label %265, label %186, !dbg !2982

186:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i64 6, metadata !2969, metadata !DIExpression()), !dbg !2972
  %187 = icmp sgt i32 %180, -1, !dbg !2976
  br i1 %187, label %195, label %188, !dbg !2976

188:                                              ; preds = %186
  %189 = add nsw i32 %180, 8, !dbg !2976
  store i32 %189, i32* %8, align 8, !dbg !2976
  %190 = icmp ult i32 %180, -7, !dbg !2976
  br i1 %190, label %191, label %195, !dbg !2976

191:                                              ; preds = %188
  %192 = load i8*, i8** %9, align 8, !dbg !2976
  %193 = sext i32 %180 to i64, !dbg !2976
  %194 = getelementptr inbounds i8, i8* %192, i64 %193, !dbg !2976
  br label %199, !dbg !2976

195:                                              ; preds = %188, %186
  %196 = phi i32 [ %189, %188 ], [ %180, %186 ]
  %197 = load i8*, i8** %10, align 8, !dbg !2976
  %198 = getelementptr inbounds i8, i8* %197, i64 8, !dbg !2976
  store i8* %198, i8** %10, align 8, !dbg !2976
  br label %199, !dbg !2976

199:                                              ; preds = %195, %191
  %200 = phi i32 [ %189, %191 ], [ %196, %195 ]
  %201 = phi i8* [ %194, %191 ], [ %197, %195 ]
  %202 = bitcast i8* %201 to i8**, !dbg !2976
  %203 = load i8*, i8** %202, align 8, !dbg !2976
  %204 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2979
  store i8* %203, i8** %204, align 8, !dbg !2980, !tbaa !439
  %205 = icmp eq i8* %203, null, !dbg !2981
  br i1 %205, label %265, label %206, !dbg !2982

206:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i64 7, metadata !2969, metadata !DIExpression()), !dbg !2972
  %207 = icmp sgt i32 %200, -1, !dbg !2976
  br i1 %207, label %215, label %208, !dbg !2976

208:                                              ; preds = %206
  %209 = add nsw i32 %200, 8, !dbg !2976
  store i32 %209, i32* %8, align 8, !dbg !2976
  %210 = icmp ult i32 %200, -7, !dbg !2976
  br i1 %210, label %211, label %215, !dbg !2976

211:                                              ; preds = %208
  %212 = load i8*, i8** %9, align 8, !dbg !2976
  %213 = sext i32 %200 to i64, !dbg !2976
  %214 = getelementptr inbounds i8, i8* %212, i64 %213, !dbg !2976
  br label %219, !dbg !2976

215:                                              ; preds = %208, %206
  %216 = phi i32 [ %209, %208 ], [ %200, %206 ]
  %217 = load i8*, i8** %10, align 8, !dbg !2976
  %218 = getelementptr inbounds i8, i8* %217, i64 8, !dbg !2976
  store i8* %218, i8** %10, align 8, !dbg !2976
  br label %219, !dbg !2976

219:                                              ; preds = %215, %211
  %220 = phi i32 [ %209, %211 ], [ %216, %215 ]
  %221 = phi i8* [ %214, %211 ], [ %217, %215 ]
  %222 = bitcast i8* %221 to i8**, !dbg !2976
  %223 = load i8*, i8** %222, align 8, !dbg !2976
  %224 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2979
  store i8* %223, i8** %224, align 8, !dbg !2980, !tbaa !439
  %225 = icmp eq i8* %223, null, !dbg !2981
  br i1 %225, label %265, label %226, !dbg !2982

226:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i64 8, metadata !2969, metadata !DIExpression()), !dbg !2972
  %227 = icmp sgt i32 %220, -1, !dbg !2976
  br i1 %227, label %235, label %228, !dbg !2976

228:                                              ; preds = %226
  %229 = add nsw i32 %220, 8, !dbg !2976
  store i32 %229, i32* %8, align 8, !dbg !2976
  %230 = icmp ult i32 %220, -7, !dbg !2976
  br i1 %230, label %231, label %235, !dbg !2976

231:                                              ; preds = %228
  %232 = load i8*, i8** %9, align 8, !dbg !2976
  %233 = sext i32 %220 to i64, !dbg !2976
  %234 = getelementptr inbounds i8, i8* %232, i64 %233, !dbg !2976
  br label %239, !dbg !2976

235:                                              ; preds = %228, %226
  %236 = phi i32 [ %229, %228 ], [ %220, %226 ]
  %237 = load i8*, i8** %10, align 8, !dbg !2976
  %238 = getelementptr inbounds i8, i8* %237, i64 8, !dbg !2976
  store i8* %238, i8** %10, align 8, !dbg !2976
  br label %239, !dbg !2976

239:                                              ; preds = %235, %231
  %240 = phi i32 [ %229, %231 ], [ %236, %235 ]
  %241 = phi i8* [ %234, %231 ], [ %237, %235 ]
  %242 = bitcast i8* %241 to i8**, !dbg !2976
  %243 = load i8*, i8** %242, align 8, !dbg !2976
  %244 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2979
  store i8* %243, i8** %244, align 8, !dbg !2980, !tbaa !439
  %245 = icmp eq i8* %243, null, !dbg !2981
  br i1 %245, label %265, label %246, !dbg !2982

246:                                              ; preds = %239
  call void @llvm.dbg.value(metadata i64 9, metadata !2969, metadata !DIExpression()), !dbg !2972
  %247 = icmp sgt i32 %240, -1, !dbg !2976
  br i1 %247, label %255, label %248, !dbg !2976

248:                                              ; preds = %246
  %249 = add nsw i32 %240, 8, !dbg !2976
  store i32 %249, i32* %8, align 8, !dbg !2976
  %250 = icmp ult i32 %240, -7, !dbg !2976
  br i1 %250, label %251, label %255, !dbg !2976

251:                                              ; preds = %248
  %252 = load i8*, i8** %9, align 8, !dbg !2976
  %253 = sext i32 %240 to i64, !dbg !2976
  %254 = getelementptr inbounds i8, i8* %252, i64 %253, !dbg !2976
  br label %258, !dbg !2976

255:                                              ; preds = %248, %246
  %256 = load i8*, i8** %10, align 8, !dbg !2976
  %257 = getelementptr inbounds i8, i8* %256, i64 8, !dbg !2976
  store i8* %257, i8** %10, align 8, !dbg !2976
  br label %258, !dbg !2976

258:                                              ; preds = %251, %255, %68
  %259 = phi i8* [ %63, %68 ], [ %254, %251 ], [ %256, %255 ]
  %260 = bitcast i8* %259 to i8**, !dbg !2976
  %261 = load i8*, i8** %260, align 8, !dbg !2976
  %262 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2979
  store i8* %261, i8** %262, align 8, !dbg !2980, !tbaa !439
  %263 = icmp eq i8* %261, null, !dbg !2981
  %264 = select i1 %263, i64 9, i64 10, !dbg !2982
  br label %265, !dbg !2983

265:                                              ; preds = %258, %80, %99, %119, %139, %159, %179, %199, %219, %239, %13, %20, %26, %32, %38, %44, %50, %56, %62
  %266 = phi i64 [ 0, %13 ], [ 1, %20 ], [ 2, %26 ], [ 3, %32 ], [ 4, %38 ], [ 5, %44 ], [ 6, %50 ], [ 7, %56 ], [ 8, %62 ], [ 0, %80 ], [ 1, %99 ], [ 2, %119 ], [ 3, %139 ], [ 4, %159 ], [ 5, %179 ], [ 6, %199 ], [ 7, %219 ], [ 8, %239 ], [ %264, %258 ]
  %267 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2983
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %267, i64 noundef %266), !dbg !2984
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #33, !dbg !2985
  ret void, !dbg !2985
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2986 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2990, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8* %1, metadata !2991, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8* %2, metadata !2992, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8* %3, metadata !2993, metadata !DIExpression()), !dbg !2995
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2996
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2996
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2994, metadata !DIExpression()), !dbg !2997
  call void @llvm.va_start(i8* nonnull %7), !dbg !2998
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2999
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2999
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2999, !tbaa.struct !1242
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2999
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2999
  call void @llvm.va_end(i8* nonnull %7), !dbg !3000
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !3001
  ret void, !dbg !3001
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3002 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3003, !tbaa !439
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.100, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3003
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.117, i64 0, i64 0), i32 noundef 5) #33, !dbg !3004
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.118, i64 0, i64 0)) #33, !dbg !3004
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.119, i64 0, i64 0), i32 noundef 5) #33, !dbg !3005
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.121, i64 0, i64 0)) #33, !dbg !3005
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.122, i64 0, i64 0), i32 noundef 5) #33, !dbg !3006
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.123, i64 0, i64 0)) #33, !dbg !3006
  ret void, !dbg !3007
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3008 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3013, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %1, metadata !3014, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %2, metadata !3015, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8* %0, metadata !3017, metadata !DIExpression()) #33, !dbg !3022
  call void @llvm.dbg.value(metadata i64 %1, metadata !3020, metadata !DIExpression()) #33, !dbg !3022
  call void @llvm.dbg.value(metadata i64 %2, metadata !3021, metadata !DIExpression()) #33, !dbg !3022
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3024
  call void @llvm.dbg.value(metadata i8* %4, metadata !3025, metadata !DIExpression()) #33, !dbg !3030
  %5 = icmp eq i8* %4, null, !dbg !3032
  br i1 %5, label %6, label %7, !dbg !3034

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3035
  unreachable, !dbg !3035

7:                                                ; preds = %3
  ret i8* %4, !dbg !3036
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3018 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3017, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64 %1, metadata !3020, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64 %2, metadata !3021, metadata !DIExpression()), !dbg !3037
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %4, metadata !3025, metadata !DIExpression()) #33, !dbg !3039
  %5 = icmp eq i8* %4, null, !dbg !3041
  br i1 %5, label %6, label %7, !dbg !3042

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3043
  unreachable, !dbg !3043

7:                                                ; preds = %3
  ret i8* %4, !dbg !3044
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3045 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3049, metadata !DIExpression()), !dbg !3050
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3051
  call void @llvm.dbg.value(metadata i8* %2, metadata !3025, metadata !DIExpression()) #33, !dbg !3052
  %3 = icmp eq i8* %2, null, !dbg !3054
  br i1 %3, label %4, label %5, !dbg !3055

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3056
  unreachable, !dbg !3056

5:                                                ; preds = %1
  ret i8* %2, !dbg !3057
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3058 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3062, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %0, metadata !3064, metadata !DIExpression()) #33, !dbg !3068
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3070
  call void @llvm.dbg.value(metadata i8* %2, metadata !3025, metadata !DIExpression()) #33, !dbg !3071
  %3 = icmp eq i8* %2, null, !dbg !3073
  br i1 %3, label %4, label %5, !dbg !3074

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3075
  unreachable, !dbg !3075

5:                                                ; preds = %1
  ret i8* %2, !dbg !3076
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3077 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3079, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %0, metadata !3049, metadata !DIExpression()) #33, !dbg !3081
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %2, metadata !3025, metadata !DIExpression()) #33, !dbg !3084
  %3 = icmp eq i8* %2, null, !dbg !3086
  br i1 %3, label %4, label %5, !dbg !3087

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3088
  unreachable, !dbg !3088

5:                                                ; preds = %1
  ret i8* %2, !dbg !3089
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3090 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3094, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %1, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8* %0, metadata !3097, metadata !DIExpression()) #33, !dbg !3102
  call void @llvm.dbg.value(metadata i64 %1, metadata !3101, metadata !DIExpression()) #33, !dbg !3102
  %3 = icmp eq i64 %1, 0, !dbg !3104
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3104
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !3105
  call void @llvm.dbg.value(metadata i8* %5, metadata !3025, metadata !DIExpression()) #33, !dbg !3106
  %6 = icmp eq i8* %5, null, !dbg !3108
  br i1 %6, label %7, label %8, !dbg !3109

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3110
  unreachable, !dbg !3110

8:                                                ; preds = %2
  ret i8* %5, !dbg !3111
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3112 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3116, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 %1, metadata !3117, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()) #33, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %1, metadata !3122, metadata !DIExpression()) #33, !dbg !3123
  call void @llvm.dbg.value(metadata i8* %0, metadata !3097, metadata !DIExpression()) #33, !dbg !3125
  call void @llvm.dbg.value(metadata i64 %1, metadata !3101, metadata !DIExpression()) #33, !dbg !3125
  %3 = icmp eq i64 %1, 0, !dbg !3127
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3127
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !3128
  call void @llvm.dbg.value(metadata i8* %5, metadata !3025, metadata !DIExpression()) #33, !dbg !3129
  %6 = icmp eq i8* %5, null, !dbg !3131
  br i1 %6, label %7, label %8, !dbg !3132

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3133
  unreachable, !dbg !3133

8:                                                ; preds = %2
  ret i8* %5, !dbg !3134
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3135 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3139, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %1, metadata !3140, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %2, metadata !3141, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8* %0, metadata !3143, metadata !DIExpression()) #33, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %1, metadata !3146, metadata !DIExpression()) #33, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %2, metadata !3147, metadata !DIExpression()) #33, !dbg !3148
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3150
  call void @llvm.dbg.value(metadata i8* %4, metadata !3025, metadata !DIExpression()) #33, !dbg !3151
  %5 = icmp eq i8* %4, null, !dbg !3153
  br i1 %5, label %6, label %7, !dbg !3154

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3155
  unreachable, !dbg !3155

7:                                                ; preds = %3
  ret i8* %4, !dbg !3156
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3157 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3161, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %1, metadata !3162, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i8* null, metadata !3017, metadata !DIExpression()) #33, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %0, metadata !3020, metadata !DIExpression()) #33, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %1, metadata !3021, metadata !DIExpression()) #33, !dbg !3164
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !3166
  call void @llvm.dbg.value(metadata i8* %3, metadata !3025, metadata !DIExpression()) #33, !dbg !3167
  %4 = icmp eq i8* %3, null, !dbg !3169
  br i1 %4, label %5, label %6, !dbg !3170

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3171
  unreachable, !dbg !3171

6:                                                ; preds = %2
  ret i8* %3, !dbg !3172
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3173 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3177, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i64 %1, metadata !3178, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i8* null, metadata !3139, metadata !DIExpression()) #33, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %0, metadata !3140, metadata !DIExpression()) #33, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %1, metadata !3141, metadata !DIExpression()) #33, !dbg !3180
  call void @llvm.dbg.value(metadata i8* null, metadata !3143, metadata !DIExpression()) #33, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %0, metadata !3146, metadata !DIExpression()) #33, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %1, metadata !3147, metadata !DIExpression()) #33, !dbg !3182
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !3184
  call void @llvm.dbg.value(metadata i8* %3, metadata !3025, metadata !DIExpression()) #33, !dbg !3185
  %4 = icmp eq i8* %3, null, !dbg !3187
  br i1 %4, label %5, label %6, !dbg !3188

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3189
  unreachable, !dbg !3189

6:                                                ; preds = %2
  ret i8* %3, !dbg !3190
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3191 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3195, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64* %1, metadata !3196, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i8* %0, metadata !370, metadata !DIExpression()) #33, !dbg !3198
  call void @llvm.dbg.value(metadata i64* %1, metadata !371, metadata !DIExpression()) #33, !dbg !3198
  call void @llvm.dbg.value(metadata i64 1, metadata !372, metadata !DIExpression()) #33, !dbg !3198
  %3 = load i64, i64* %1, align 8, !dbg !3200, !tbaa !1061
  call void @llvm.dbg.value(metadata i64 %3, metadata !373, metadata !DIExpression()) #33, !dbg !3198
  %4 = icmp eq i8* %0, null, !dbg !3201
  br i1 %4, label %5, label %8, !dbg !3203

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3204
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3207
  br label %15, !dbg !3207

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3208
  %10 = add nuw i64 %9, 1, !dbg !3208
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #33, !dbg !3208
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3208
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3208
  call void @llvm.dbg.value(metadata i64 %13, metadata !373, metadata !DIExpression()) #33, !dbg !3198
  br i1 %12, label %14, label %15, !dbg !3211

14:                                               ; preds = %8
  tail call void @xalloc_die() #35, !dbg !3212
  unreachable, !dbg !3212

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3198
  call void @llvm.dbg.value(metadata i64 %16, metadata !373, metadata !DIExpression()) #33, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %0, metadata !3017, metadata !DIExpression()) #33, !dbg !3213
  call void @llvm.dbg.value(metadata i64 %16, metadata !3020, metadata !DIExpression()) #33, !dbg !3213
  call void @llvm.dbg.value(metadata i64 1, metadata !3021, metadata !DIExpression()) #33, !dbg !3213
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #33, !dbg !3215
  call void @llvm.dbg.value(metadata i8* %17, metadata !3025, metadata !DIExpression()) #33, !dbg !3216
  %18 = icmp eq i8* %17, null, !dbg !3218
  br i1 %18, label %19, label %20, !dbg !3219

19:                                               ; preds = %15
  tail call void @xalloc_die() #35, !dbg !3220
  unreachable, !dbg !3220

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !370, metadata !DIExpression()) #33, !dbg !3198
  store i64 %16, i64* %1, align 8, !dbg !3221, !tbaa !1061
  ret i8* %17, !dbg !3222
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !365 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !370, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64* %1, metadata !371, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %2, metadata !372, metadata !DIExpression()), !dbg !3223
  %4 = load i64, i64* %1, align 8, !dbg !3224, !tbaa !1061
  call void @llvm.dbg.value(metadata i64 %4, metadata !373, metadata !DIExpression()), !dbg !3223
  %5 = icmp eq i8* %0, null, !dbg !3225
  br i1 %5, label %6, label %13, !dbg !3226

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3227
  br i1 %7, label %8, label %20, !dbg !3228

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %9, metadata !373, metadata !DIExpression()), !dbg !3223
  %10 = icmp ugt i64 %2, 128, !dbg !3231
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3232
  call void @llvm.dbg.value(metadata i64 %12, metadata !373, metadata !DIExpression()), !dbg !3223
  br label %20, !dbg !3233

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3234
  %15 = add nuw i64 %14, 1, !dbg !3234
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3234
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3234
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %18, metadata !373, metadata !DIExpression()), !dbg !3223
  br i1 %17, label %19, label %20, !dbg !3235

19:                                               ; preds = %13
  tail call void @xalloc_die() #35, !dbg !3236
  unreachable, !dbg !3236

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3223
  call void @llvm.dbg.value(metadata i64 %21, metadata !373, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i8* %0, metadata !3017, metadata !DIExpression()) #33, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %21, metadata !3020, metadata !DIExpression()) #33, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %2, metadata !3021, metadata !DIExpression()) #33, !dbg !3237
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #33, !dbg !3239
  call void @llvm.dbg.value(metadata i8* %22, metadata !3025, metadata !DIExpression()) #33, !dbg !3240
  %23 = icmp eq i8* %22, null, !dbg !3242
  br i1 %23, label %24, label %25, !dbg !3243

24:                                               ; preds = %20
  tail call void @xalloc_die() #35, !dbg !3244
  unreachable, !dbg !3244

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !370, metadata !DIExpression()), !dbg !3223
  store i64 %21, i64* %1, align 8, !dbg !3245, !tbaa !1061
  ret i8* %22, !dbg !3246
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !377 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !385, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64* %1, metadata !386, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %2, metadata !387, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %3, metadata !388, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %4, metadata !389, metadata !DIExpression()), !dbg !3247
  %6 = load i64, i64* %1, align 8, !dbg !3248, !tbaa !1061
  call void @llvm.dbg.value(metadata i64 %6, metadata !390, metadata !DIExpression()), !dbg !3247
  %7 = ashr i64 %6, 1, !dbg !3249
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3249
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3249
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3249
  call void @llvm.dbg.value(metadata i64 %10, metadata !391, metadata !DIExpression()), !dbg !3247
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3251
  call void @llvm.dbg.value(metadata i64 %11, metadata !391, metadata !DIExpression()), !dbg !3247
  %12 = icmp sgt i64 %3, -1, !dbg !3252
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3254
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3254
  call void @llvm.dbg.value(metadata i64 %15, metadata !391, metadata !DIExpression()), !dbg !3247
  %16 = icmp slt i64 %4, 0, !dbg !3255
  br i1 %16, label %17, label %30, !dbg !3255

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3255
  br i1 %18, label %19, label %24, !dbg !3255

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3255
  %21 = udiv i64 9223372036854775807, %20, !dbg !3255
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3255
  br i1 %23, label %46, label %43, !dbg !3255

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3255
  br i1 %25, label %43, label %26, !dbg !3255

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3255
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3255
  %29 = icmp ult i64 %28, %15, !dbg !3255
  br i1 %29, label %46, label %43, !dbg !3255

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3255
  br i1 %31, label %43, label %32, !dbg !3255

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3255
  br i1 %33, label %34, label %40, !dbg !3255

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3255
  br i1 %35, label %43, label %36, !dbg !3255

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3255
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3255
  %39 = icmp ult i64 %38, %4, !dbg !3255
  br i1 %39, label %46, label %43, !dbg !3255

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3255
  %42 = icmp ult i64 %41, %15, !dbg !3255
  br i1 %42, label %46, label %43, !dbg !3255

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !392, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3247
  %44 = mul i64 %15, %4, !dbg !3255
  call void @llvm.dbg.value(metadata i64 %44, metadata !392, metadata !DIExpression()), !dbg !3247
  %45 = icmp slt i64 %44, 128, !dbg !3255
  br i1 %45, label %46, label %52, !dbg !3255

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !393, metadata !DIExpression()), !dbg !3247
  %48 = sdiv i64 %47, %4, !dbg !3256
  call void @llvm.dbg.value(metadata i64 %48, metadata !391, metadata !DIExpression()), !dbg !3247
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3259
  call void @llvm.dbg.value(metadata i64 %51, metadata !392, metadata !DIExpression()), !dbg !3247
  br label %52, !dbg !3260

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3247
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3247
  call void @llvm.dbg.value(metadata i64 %54, metadata !392, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %53, metadata !391, metadata !DIExpression()), !dbg !3247
  %55 = icmp eq i8* %0, null, !dbg !3261
  br i1 %55, label %56, label %57, !dbg !3263

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3264, !tbaa !1061
  br label %57, !dbg !3265

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3266
  %59 = icmp slt i64 %58, %2, !dbg !3268
  br i1 %59, label %60, label %97, !dbg !3269

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3270
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3270
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %63, metadata !391, metadata !DIExpression()), !dbg !3247
  br i1 %62, label %96, label %64, !dbg !3271

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3272
  br i1 %66, label %96, label %67, !dbg !3272

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3273

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3273
  br i1 %69, label %70, label %75, !dbg !3273

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3273
  %72 = udiv i64 9223372036854775807, %71, !dbg !3273
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3273
  br i1 %74, label %96, label %94, !dbg !3273

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3273
  br i1 %76, label %94, label %77, !dbg !3273

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3273
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3273
  %80 = icmp ult i64 %79, %63, !dbg !3273
  br i1 %80, label %96, label %94, !dbg !3273

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3273
  br i1 %82, label %94, label %83, !dbg !3273

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3273
  br i1 %84, label %85, label %91, !dbg !3273

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3273
  br i1 %86, label %94, label %87, !dbg !3273

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3273
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3273
  %90 = icmp ult i64 %89, %4, !dbg !3273
  br i1 %90, label %96, label %94, !dbg !3273

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3273
  %93 = icmp ult i64 %92, %63, !dbg !3273
  br i1 %93, label %96, label %94, !dbg !3273

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !392, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3247
  %95 = mul i64 %63, %4, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %95, metadata !392, metadata !DIExpression()), !dbg !3247
  br label %97, !dbg !3274

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #35, !dbg !3275
  unreachable, !dbg !3275

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3247
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3247
  call void @llvm.dbg.value(metadata i64 %99, metadata !392, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %98, metadata !391, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i8* %0, metadata !3094, metadata !DIExpression()) #33, !dbg !3276
  call void @llvm.dbg.value(metadata i64 %99, metadata !3095, metadata !DIExpression()) #33, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %0, metadata !3097, metadata !DIExpression()) #33, !dbg !3278
  call void @llvm.dbg.value(metadata i64 %99, metadata !3101, metadata !DIExpression()) #33, !dbg !3278
  %100 = icmp eq i64 %99, 0, !dbg !3280
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3280
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #33, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %102, metadata !3025, metadata !DIExpression()) #33, !dbg !3282
  %103 = icmp eq i8* %102, null, !dbg !3284
  br i1 %103, label %104, label %105, !dbg !3285

104:                                              ; preds = %97
  tail call void @xalloc_die() #35, !dbg !3286
  unreachable, !dbg !3286

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !385, metadata !DIExpression()), !dbg !3247
  store i64 %98, i64* %1, align 8, !dbg !3287, !tbaa !1061
  ret i8* %102, !dbg !3288
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3289 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3291, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %0, metadata !3293, metadata !DIExpression()) #33, !dbg !3297
  call void @llvm.dbg.value(metadata i64 1, metadata !3296, metadata !DIExpression()) #33, !dbg !3297
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %2, metadata !3025, metadata !DIExpression()) #33, !dbg !3300
  %3 = icmp eq i8* %2, null, !dbg !3302
  br i1 %3, label %4, label %5, !dbg !3303

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3304
  unreachable, !dbg !3304

5:                                                ; preds = %1
  ret i8* %2, !dbg !3305
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3294 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3293, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %1, metadata !3296, metadata !DIExpression()), !dbg !3306
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !3307
  call void @llvm.dbg.value(metadata i8* %3, metadata !3025, metadata !DIExpression()) #33, !dbg !3308
  %4 = icmp eq i8* %3, null, !dbg !3310
  br i1 %4, label %5, label %6, !dbg !3311

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3312
  unreachable, !dbg !3312

6:                                                ; preds = %2
  ret i8* %3, !dbg !3313
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3314 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3316, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %0, metadata !3318, metadata !DIExpression()) #33, !dbg !3322
  call void @llvm.dbg.value(metadata i64 1, metadata !3321, metadata !DIExpression()) #33, !dbg !3322
  call void @llvm.dbg.value(metadata i64 %0, metadata !3324, metadata !DIExpression()) #33, !dbg !3328
  call void @llvm.dbg.value(metadata i64 1, metadata !3327, metadata !DIExpression()) #33, !dbg !3328
  call void @llvm.dbg.value(metadata i64 %0, metadata !3324, metadata !DIExpression()) #33, !dbg !3328
  call void @llvm.dbg.value(metadata i64 1, metadata !3327, metadata !DIExpression()) #33, !dbg !3328
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !3330
  call void @llvm.dbg.value(metadata i8* %2, metadata !3025, metadata !DIExpression()) #33, !dbg !3331
  %3 = icmp eq i8* %2, null, !dbg !3333
  br i1 %3, label %4, label %5, !dbg !3334

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3335
  unreachable, !dbg !3335

5:                                                ; preds = %1
  ret i8* %2, !dbg !3336
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3319 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3318, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i64 %1, metadata !3321, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i64 %0, metadata !3324, metadata !DIExpression()) #33, !dbg !3338
  call void @llvm.dbg.value(metadata i64 %1, metadata !3327, metadata !DIExpression()) #33, !dbg !3338
  call void @llvm.dbg.value(metadata i64 %0, metadata !3324, metadata !DIExpression()) #33, !dbg !3338
  call void @llvm.dbg.value(metadata i64 %1, metadata !3327, metadata !DIExpression()) #33, !dbg !3338
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !3340
  call void @llvm.dbg.value(metadata i8* %3, metadata !3025, metadata !DIExpression()) #33, !dbg !3341
  %4 = icmp eq i8* %3, null, !dbg !3343
  br i1 %4, label %5, label %6, !dbg !3344

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3345
  unreachable, !dbg !3345

6:                                                ; preds = %2
  ret i8* %3, !dbg !3346
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3347 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3351, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %1, metadata !3352, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %1, metadata !3049, metadata !DIExpression()) #33, !dbg !3354
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !3356
  call void @llvm.dbg.value(metadata i8* %3, metadata !3025, metadata !DIExpression()) #33, !dbg !3357
  %4 = icmp eq i8* %3, null, !dbg !3359
  br i1 %4, label %5, label %6, !dbg !3360

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3361
  unreachable, !dbg !3361

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3362, metadata !DIExpression()) #33, !dbg !3367
  call void @llvm.dbg.value(metadata i8* %0, metadata !3365, metadata !DIExpression()) #33, !dbg !3367
  call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()) #33, !dbg !3367
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3369
  ret i8* %3, !dbg !3370
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3371 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3375, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64 %1, metadata !3376, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64 %1, metadata !3062, metadata !DIExpression()) #33, !dbg !3378
  call void @llvm.dbg.value(metadata i64 %1, metadata !3064, metadata !DIExpression()) #33, !dbg !3380
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !3382
  call void @llvm.dbg.value(metadata i8* %3, metadata !3025, metadata !DIExpression()) #33, !dbg !3383
  %4 = icmp eq i8* %3, null, !dbg !3385
  br i1 %4, label %5, label %6, !dbg !3386

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3387
  unreachable, !dbg !3387

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3362, metadata !DIExpression()) #33, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %0, metadata !3365, metadata !DIExpression()) #33, !dbg !3388
  call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()) #33, !dbg !3388
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3390
  ret i8* %3, !dbg !3391
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3396, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %1, metadata !3397, metadata !DIExpression()), !dbg !3399
  %3 = add nsw i64 %1, 1, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %3, metadata !3062, metadata !DIExpression()) #33, !dbg !3401
  call void @llvm.dbg.value(metadata i64 %3, metadata !3064, metadata !DIExpression()) #33, !dbg !3403
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %4, metadata !3025, metadata !DIExpression()) #33, !dbg !3406
  %5 = icmp eq i8* %4, null, !dbg !3408
  br i1 %5, label %6, label %7, !dbg !3409

6:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3410
  unreachable, !dbg !3410

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3398, metadata !DIExpression()), !dbg !3399
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3411
  store i8 0, i8* %8, align 1, !dbg !3412, !tbaa !538
  call void @llvm.dbg.value(metadata i8* %4, metadata !3362, metadata !DIExpression()) #33, !dbg !3413
  call void @llvm.dbg.value(metadata i8* %0, metadata !3365, metadata !DIExpression()) #33, !dbg !3413
  call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()) #33, !dbg !3413
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3415
  ret i8* %4, !dbg !3416
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3417 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3419, metadata !DIExpression()), !dbg !3420
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !3421
  %3 = add i64 %2, 1, !dbg !3422
  call void @llvm.dbg.value(metadata i8* %0, metadata !3351, metadata !DIExpression()) #33, !dbg !3423
  call void @llvm.dbg.value(metadata i64 %3, metadata !3352, metadata !DIExpression()) #33, !dbg !3423
  call void @llvm.dbg.value(metadata i64 %3, metadata !3049, metadata !DIExpression()) #33, !dbg !3425
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3427
  call void @llvm.dbg.value(metadata i8* %4, metadata !3025, metadata !DIExpression()) #33, !dbg !3428
  %5 = icmp eq i8* %4, null, !dbg !3430
  br i1 %5, label %6, label %7, !dbg !3431

6:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3432
  unreachable, !dbg !3432

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3362, metadata !DIExpression()) #33, !dbg !3433
  call void @llvm.dbg.value(metadata i8* %0, metadata !3365, metadata !DIExpression()) #33, !dbg !3433
  call void @llvm.dbg.value(metadata i64 %3, metadata !3366, metadata !DIExpression()) #33, !dbg !3433
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #33, !dbg !3435
  ret i8* %4, !dbg !3436
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3437 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3442, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %1, metadata !3439, metadata !DIExpression()), !dbg !3443
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.138, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.139, i64 0, i64 0), i32 noundef 5) #33, !dbg !3442
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), i8* noundef %2) #33, !dbg !3442
  %3 = icmp eq i32 %1, 0, !dbg !3442
  tail call void @llvm.assume(i1 %3), !dbg !3442
  tail call void @abort() #35, !dbg !3444
  unreachable, !dbg !3444
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @xgetcwd() local_unnamed_addr #12 !dbg !3445 {
  %1 = tail call i8* @getcwd(i8* noundef null, i64 noundef 0) #33, !dbg !3449
  call void @llvm.dbg.value(metadata i8* %1, metadata !3448, metadata !DIExpression()), !dbg !3450
  %2 = icmp eq i8* %1, null, !dbg !3451
  br i1 %2, label %3, label %8, !dbg !3453

3:                                                ; preds = %0
  %4 = tail call i32* @__errno_location() #36, !dbg !3454
  %5 = load i32, i32* %4, align 4, !dbg !3454, !tbaa !529
  %6 = icmp eq i32 %5, 12, !dbg !3455
  br i1 %6, label %7, label %8, !dbg !3456

7:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3457
  unreachable, !dbg !3457

8:                                                ; preds = %3, %0
  ret i8* %1, !dbg !3458
}

; Function Attrs: nounwind
declare i8* @getcwd(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3459 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3497, metadata !DIExpression()), !dbg !3502
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #33, !dbg !3503
  call void @llvm.dbg.value(metadata i1 undef, metadata !3498, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3502
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3504, metadata !DIExpression()), !dbg !3507
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3509
  %4 = load i32, i32* %3, align 8, !dbg !3509, !tbaa !3510
  %5 = and i32 %4, 32, !dbg !3511
  %6 = icmp eq i32 %5, 0, !dbg !3511
  call void @llvm.dbg.value(metadata i1 %6, metadata !3500, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3502
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #33, !dbg !3512
  %8 = icmp eq i32 %7, 0, !dbg !3513
  call void @llvm.dbg.value(metadata i1 %8, metadata !3501, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3502
  br i1 %6, label %9, label %19, !dbg !3514

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3516
  call void @llvm.dbg.value(metadata i1 %10, metadata !3498, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3502
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3517
  %12 = xor i1 %8, true, !dbg !3517
  %13 = sext i1 %12 to i32, !dbg !3517
  br i1 %11, label %22, label %14, !dbg !3517

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #36, !dbg !3518
  %16 = load i32, i32* %15, align 4, !dbg !3518, !tbaa !529
  %17 = icmp ne i32 %16, 9, !dbg !3519
  %18 = sext i1 %17 to i32, !dbg !3520
  br label %22, !dbg !3520

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3521

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #36, !dbg !3523
  store i32 0, i32* %21, align 4, !dbg !3525, !tbaa !529
  br label %22, !dbg !3523

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3502
  ret i32 %23, !dbg !3526
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3527 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3565, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i32 0, metadata !3566, metadata !DIExpression()), !dbg !3569
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3570
  call void @llvm.dbg.value(metadata i32 %2, metadata !3567, metadata !DIExpression()), !dbg !3569
  %3 = icmp slt i32 %2, 0, !dbg !3571
  br i1 %3, label %4, label %6, !dbg !3573

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3574
  br label %24, !dbg !3575

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3576
  %8 = icmp eq i32 %7, 0, !dbg !3576
  br i1 %8, label %13, label %9, !dbg !3578

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3579
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #33, !dbg !3580
  %12 = icmp eq i64 %11, -1, !dbg !3581
  br i1 %12, label %16, label %13, !dbg !3582

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3583
  %15 = icmp eq i32 %14, 0, !dbg !3583
  br i1 %15, label %16, label %18, !dbg !3584

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3566, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i32 0, metadata !3568, metadata !DIExpression()), !dbg !3569
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %21, metadata !3568, metadata !DIExpression()), !dbg !3569
  br label %24, !dbg !3586

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #36, !dbg !3587
  %20 = load i32, i32* %19, align 4, !dbg !3587, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %20, metadata !3566, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i32 0, metadata !3568, metadata !DIExpression()), !dbg !3569
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %21, metadata !3568, metadata !DIExpression()), !dbg !3569
  %22 = icmp eq i32 %20, 0, !dbg !3588
  br i1 %22, label %24, label %23, !dbg !3586

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3590, !tbaa !529
  call void @llvm.dbg.value(metadata i32 -1, metadata !3568, metadata !DIExpression()), !dbg !3569
  br label %24, !dbg !3592

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3569
  ret i32 %25, !dbg !3593
}

; Function Attrs: nofree nounwind
declare !dbg !3594 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3595 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3596 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3599 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3637, metadata !DIExpression()), !dbg !3638
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3639
  br i1 %2, label %6, label %3, !dbg !3641

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3642
  %5 = icmp eq i32 %4, 0, !dbg !3642
  br i1 %5, label %6, label %8, !dbg !3643

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3644
  br label %17, !dbg !3645

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3646, metadata !DIExpression()) #33, !dbg !3651
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3653
  %10 = load i32, i32* %9, align 8, !dbg !3653, !tbaa !3510
  %11 = and i32 %10, 256, !dbg !3655
  %12 = icmp eq i32 %11, 0, !dbg !3655
  br i1 %12, label %15, label %13, !dbg !3656

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #33, !dbg !3657
  br label %15, !dbg !3657

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3658
  br label %17, !dbg !3659

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3638
  ret i32 %18, !dbg !3660
}

; Function Attrs: nofree nounwind
declare !dbg !3661 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3662 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3701, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %1, metadata !3702, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 %2, metadata !3703, metadata !DIExpression()), !dbg !3707
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3708
  %5 = load i8*, i8** %4, align 8, !dbg !3708, !tbaa !3709
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3710
  %7 = load i8*, i8** %6, align 8, !dbg !3710, !tbaa !3711
  %8 = icmp eq i8* %5, %7, !dbg !3712
  br i1 %8, label %9, label %28, !dbg !3713

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3714
  %11 = load i8*, i8** %10, align 8, !dbg !3714, !tbaa !1355
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3715
  %13 = load i8*, i8** %12, align 8, !dbg !3715, !tbaa !3716
  %14 = icmp eq i8* %11, %13, !dbg !3717
  br i1 %14, label %15, label %28, !dbg !3718

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3719
  %17 = load i8*, i8** %16, align 8, !dbg !3719, !tbaa !3720
  %18 = icmp eq i8* %17, null, !dbg !3721
  br i1 %18, label %19, label %28, !dbg !3722

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3723
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #33, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %21, metadata !3704, metadata !DIExpression()), !dbg !3725
  %22 = icmp eq i64 %21, -1, !dbg !3726
  br i1 %22, label %30, label %23, !dbg !3728

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3729
  %25 = load i32, i32* %24, align 8, !dbg !3730, !tbaa !3510
  %26 = and i32 %25, -17, !dbg !3730
  store i32 %26, i32* %24, align 8, !dbg !3730, !tbaa !3510
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3731
  store i64 %21, i64* %27, align 8, !dbg !3732, !tbaa !3733
  br label %30, !dbg !3734

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3735
  br label %30, !dbg !3736

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3707
  ret i32 %31, !dbg !3737
}

; Function Attrs: nofree nounwind
declare !dbg !3738 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3741 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3746, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i8* %1, metadata !3747, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 %2, metadata !3748, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3749, metadata !DIExpression()), !dbg !3751
  %5 = icmp eq i8* %1, null, !dbg !3752
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3754
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), i8* %1, !dbg !3754
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3754
  call void @llvm.dbg.value(metadata i64 %8, metadata !3748, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i8* %7, metadata !3747, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32* %6, metadata !3746, metadata !DIExpression()), !dbg !3751
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3755
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3757
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3749, metadata !DIExpression()), !dbg !3751
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #33, !dbg !3758
  call void @llvm.dbg.value(metadata i64 %11, metadata !3750, metadata !DIExpression()), !dbg !3751
  %12 = icmp ult i64 %11, -3, !dbg !3759
  br i1 %12, label %13, label %18, !dbg !3761

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #34, !dbg !3762
  %15 = icmp eq i32 %14, 0, !dbg !3762
  br i1 %15, label %16, label %30, !dbg !3763

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3764, metadata !DIExpression()) #33, !dbg !3769
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3771, metadata !DIExpression()) #33, !dbg !3776
  call void @llvm.dbg.value(metadata i32 0, metadata !3774, metadata !DIExpression()) #33, !dbg !3776
  call void @llvm.dbg.value(metadata i64 8, metadata !3775, metadata !DIExpression()) #33, !dbg !3776
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3778
  store i64 0, i64* %17, align 1, !dbg !3778
  br label %30, !dbg !3779

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3780
  br i1 %19, label %20, label %21, !dbg !3782

20:                                               ; preds = %18
  tail call void @abort() #35, !dbg !3783
  unreachable, !dbg !3783

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3784

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #33, !dbg !3786
  br i1 %24, label %30, label %25, !dbg !3787

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3788
  br i1 %26, label %30, label %27, !dbg !3791

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3792, !tbaa !538
  %29 = zext i8 %28 to i32, !dbg !3793
  store i32 %29, i32* %6, align 4, !dbg !3794, !tbaa !529
  br label %30, !dbg !3795

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3751
  ret i64 %31, !dbg !3796
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3797 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !3803 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3805, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i64 %1, metadata !3806, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i64 %2, metadata !3807, metadata !DIExpression()), !dbg !3809
  %4 = icmp eq i64 %2, 0, !dbg !3810
  br i1 %4, label %8, label %5, !dbg !3810

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3810
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3810
  br i1 %7, label %13, label %8, !dbg !3810

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3808, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3809
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3808, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3809
  %9 = mul i64 %2, %1, !dbg !3810
  call void @llvm.dbg.value(metadata i64 %9, metadata !3808, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i8* %0, metadata !3812, metadata !DIExpression()) #33, !dbg !3816
  call void @llvm.dbg.value(metadata i64 %9, metadata !3815, metadata !DIExpression()) #33, !dbg !3816
  %10 = icmp eq i64 %9, 0, !dbg !3818
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3818
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #33, !dbg !3819
  br label %15, !dbg !3820

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3808, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3809
  %14 = tail call i32* @__errno_location() #36, !dbg !3821
  store i32 12, i32* %14, align 4, !dbg !3823, !tbaa !529
  br label %15, !dbg !3824

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3809
  ret i8* %16, !dbg !3825
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3826 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3830, metadata !DIExpression()), !dbg !3835
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3836
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #33, !dbg !3836
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3831, metadata !DIExpression()), !dbg !3837
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #33, !dbg !3838
  %5 = icmp eq i32 %4, 0, !dbg !3838
  br i1 %5, label %6, label %13, !dbg !3840

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3841, metadata !DIExpression()) #33, !dbg !3845
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i64 0, i64 0), metadata !3844, metadata !DIExpression()) #33, !dbg !3845
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i64 0, i64 0), i64 2), !dbg !3848
  %8 = icmp eq i32 %7, 0, !dbg !3849
  br i1 %8, label %12, label %9, !dbg !3850

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3841, metadata !DIExpression()) #33, !dbg !3851
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0), metadata !3844, metadata !DIExpression()) #33, !dbg !3851
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0), i64 6), !dbg !3853
  %11 = icmp eq i32 %10, 0, !dbg !3854
  br i1 %11, label %12, label %13, !dbg !3855

12:                                               ; preds = %9, %6
  br label %13, !dbg !3856

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3835
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #33, !dbg !3857
  ret i1 %14, !dbg !3857
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3858 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3862, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i8* %1, metadata !3863, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i64 %2, metadata !3864, metadata !DIExpression()), !dbg !3865
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #33, !dbg !3866
  ret i32 %4, !dbg !3867
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3868 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3872, metadata !DIExpression()), !dbg !3873
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #33, !dbg !3874
  ret i8* %2, !dbg !3875
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3876 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3878, metadata !DIExpression()), !dbg !3880
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !3881
  call void @llvm.dbg.value(metadata i8* %2, metadata !3879, metadata !DIExpression()), !dbg !3880
  ret i8* %2, !dbg !3882
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3883 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3885, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i8* %1, metadata !3886, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %2, metadata !3887, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i32 %0, metadata !3878, metadata !DIExpression()) #33, !dbg !3893
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !3895
  call void @llvm.dbg.value(metadata i8* %4, metadata !3879, metadata !DIExpression()) #33, !dbg !3893
  call void @llvm.dbg.value(metadata i8* %4, metadata !3888, metadata !DIExpression()), !dbg !3892
  %5 = icmp eq i8* %4, null, !dbg !3896
  br i1 %5, label %6, label %9, !dbg !3897

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3898
  br i1 %7, label %19, label %8, !dbg !3901

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3902, !tbaa !538
  br label %19, !dbg !3903

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #34, !dbg !3904
  call void @llvm.dbg.value(metadata i64 %10, metadata !3889, metadata !DIExpression()), !dbg !3905
  %11 = icmp ult i64 %10, %2, !dbg !3906
  br i1 %11, label %12, label %14, !dbg !3908

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3909
  call void @llvm.dbg.value(metadata i8* %1, metadata !3911, metadata !DIExpression()) #33, !dbg !3916
  call void @llvm.dbg.value(metadata i8* %4, metadata !3914, metadata !DIExpression()) #33, !dbg !3916
  call void @llvm.dbg.value(metadata i64 %13, metadata !3915, metadata !DIExpression()) #33, !dbg !3916
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #33, !dbg !3918
  br label %19, !dbg !3919

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3920
  br i1 %15, label %19, label %16, !dbg !3923

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3924
  call void @llvm.dbg.value(metadata i8* %1, metadata !3911, metadata !DIExpression()) #33, !dbg !3926
  call void @llvm.dbg.value(metadata i8* %4, metadata !3914, metadata !DIExpression()) #33, !dbg !3926
  call void @llvm.dbg.value(metadata i64 %17, metadata !3915, metadata !DIExpression()) #33, !dbg !3926
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #33, !dbg !3928
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3929
  store i8 0, i8* %18, align 1, !dbg !3930, !tbaa !538
  br label %19, !dbg !3931

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3932
  ret i32 %20, !dbg !3933
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
attributes #24 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { nounwind }
attributes #34 = { nounwind readonly willreturn }
attributes #35 = { noreturn nounwind }
attributes #36 = { nounwind readnone willreturn }
attributes #37 = { noreturn }
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { nounwind allocsize(0,1) }
attributes #40 = { cold }
attributes #41 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2, !152, !157, !164, !330, !350, !205, !215, !247, !352, !354, !322, !361, !395, !397, !399, !401, !403, !405, !336, !407, !410, !412, !414}
!llvm.ident = !{!416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416}
!llvm.module.flags = !{!417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 39, type: !138, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !39, globals: !51, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/pwd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "706e724ab654cd1fe336b61765fe7047")
!4 = !{!5, !21, !35}
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
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !22, line: 42, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!24 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!25 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!26 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!27 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!28 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!29 = !DIEnumerator(name: "c_quoting_style", value: 5)
!30 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!31 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!32 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!33 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!34 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 120, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!37 = !{!38}
!38 = !DIEnumerator(name: "NOT_AN_INODE_NUMBER", value: 0)
!39 = !{!40, !41, !43, !44, !45, !48, !50}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 46, baseType: !47)
!46 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !{!52, !0}
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !54, file: !36, line: 575, type: !43, isLocal: true, isDefinition: true)
!54 = distinct !DISubprogram(name: "oputs_", scope: !36, file: !36, line: 573, type: !55, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !48, !48}
!57 = !{!58, !59, !60, !63, !65, !66, !67, !71, !72, !73, !74, !76, !132, !133, !134, !136, !137}
!58 = !DILocalVariable(name: "program", arg: 1, scope: !54, file: !36, line: 573, type: !48)
!59 = !DILocalVariable(name: "option", arg: 2, scope: !54, file: !36, line: 573, type: !48)
!60 = !DILocalVariable(name: "term", scope: !61, file: !36, line: 585, type: !48)
!61 = distinct !DILexicalBlock(scope: !62, file: !36, line: 582, column: 5)
!62 = distinct !DILexicalBlock(scope: !54, file: !36, line: 581, column: 7)
!63 = !DILocalVariable(name: "double_space", scope: !54, file: !36, line: 594, type: !64)
!64 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!65 = !DILocalVariable(name: "first_word", scope: !54, file: !36, line: 595, type: !48)
!66 = !DILocalVariable(name: "option_text", scope: !54, file: !36, line: 596, type: !48)
!67 = !DILocalVariable(name: "s", scope: !68, file: !36, line: 608, type: !48)
!68 = distinct !DILexicalBlock(scope: !69, file: !36, line: 605, column: 5)
!69 = distinct !DILexicalBlock(scope: !70, file: !36, line: 604, column: 12)
!70 = distinct !DILexicalBlock(scope: !54, file: !36, line: 597, column: 7)
!71 = !DILocalVariable(name: "spaces", scope: !68, file: !36, line: 609, type: !45)
!72 = !DILocalVariable(name: "anchor_len", scope: !54, file: !36, line: 620, type: !45)
!73 = !DILocalVariable(name: "desc_text", scope: !54, file: !36, line: 625, type: !48)
!74 = !DILocalVariable(name: "__ptr", scope: !75, file: !36, line: 644, type: !48)
!75 = distinct !DILexicalBlock(scope: !54, file: !36, line: 644, column: 3)
!76 = !DILocalVariable(name: "__stream", scope: !75, file: !36, line: 644, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !80)
!79 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !82)
!81 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !98, !100, !101, !102, !106, !107, !109, !113, !116, !118, !121, !124, !125, !126, !127, !128}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !80, file: !81, line: 51, baseType: !43, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !80, file: !81, line: 54, baseType: !41, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !80, file: !81, line: 55, baseType: !41, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !80, file: !81, line: 56, baseType: !41, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !80, file: !81, line: 57, baseType: !41, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !80, file: !81, line: 58, baseType: !41, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !80, file: !81, line: 59, baseType: !41, size: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !80, file: !81, line: 60, baseType: !41, size: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !80, file: !81, line: 61, baseType: !41, size: 64, offset: 512)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !80, file: !81, line: 64, baseType: !41, size: 64, offset: 576)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !80, file: !81, line: 65, baseType: !41, size: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !80, file: !81, line: 66, baseType: !41, size: 64, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !80, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !81, line: 36, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !80, file: !81, line: 70, baseType: !99, size: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !80, file: !81, line: 72, baseType: !43, size: 32, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !80, file: !81, line: 73, baseType: !43, size: 32, offset: 928)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !80, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !104, line: 152, baseType: !105)
!104 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!105 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !80, file: !81, line: 77, baseType: !44, size: 16, offset: 1024)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !80, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!108 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !80, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 1)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !80, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !81, line: 43, baseType: null)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !80, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !104, line: 153, baseType: !105)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !80, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !81, line: 37, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !80, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !81, line: 38, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !80, file: !81, line: 93, baseType: !99, size: 64, offset: 1344)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !80, file: !81, line: 94, baseType: !40, size: 64, offset: 1408)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !80, file: !81, line: 95, baseType: !45, size: 64, offset: 1472)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !80, file: !81, line: 96, baseType: !43, size: 32, offset: 1536)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !80, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 160, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 20)
!132 = !DILocalVariable(name: "__cnt", scope: !75, file: !36, line: 644, type: !45)
!133 = !DILocalVariable(name: "url_program", scope: !54, file: !36, line: 648, type: !48)
!134 = !DILocalVariable(name: "__ptr", scope: !135, file: !36, line: 686, type: !48)
!135 = distinct !DILexicalBlock(scope: !54, file: !36, line: 686, column: 3)
!136 = !DILocalVariable(name: "__stream", scope: !135, file: !36, line: 686, type: !77)
!137 = !DILocalVariable(name: "__cnt", scope: !135, file: !36, line: 686, type: !45)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 1280, elements: !148)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !141, line: 50, size: 256, elements: !142)
!141 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!142 = !{!143, !144, !145, !147}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !141, line: 52, baseType: !48, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !140, file: !141, line: 55, baseType: !43, size: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !140, file: !141, line: 56, baseType: !146, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !140, file: !141, line: 57, baseType: !43, size: 32, offset: 192)
!148 = !{!149}
!149 = !DISubrange(count: 5)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "Version", scope: !152, file: !153, line: 3, type: !48, isLocal: false, isDefinition: true)
!152 = distinct !DICompileUnit(language: DW_LANG_C99, file: !153, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !154, splitDebugInlining: false, nameTableKind: None)
!153 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!154 = !{!150}
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "file_name", scope: !157, file: !158, line: 45, type: !48, isLocal: true, isDefinition: true)
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !159, splitDebugInlining: false, nameTableKind: None)
!158 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!159 = !{!155, !160}
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !157, file: !158, line: 55, type: !64, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !164, file: !165, line: 66, type: !200, isLocal: false, isDefinition: true)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !166, globals: !167, splitDebugInlining: false, nameTableKind: None)
!165 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!166 = !{!40, !50}
!167 = !{!168, !194, !162, !196, !198}
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "old_file_name", scope: !170, file: !165, line: 304, type: !48, isLocal: true, isDefinition: true)
!170 = distinct !DISubprogram(name: "verror_at_line", scope: !165, file: !165, line: 298, type: !171, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !187)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !43, !43, !48, !7, !48, !173}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !174, line: 52, baseType: !175)
!174 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !176, line: 32, baseType: !177)
!176 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !178, baseType: !179)
!178 = !DIFile(filename: "lib/error.c", directory: "/src")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !180, size: 256, elements: !181)
!180 = !DINamespace(name: "std", scope: null)
!181 = !{!182, !183, !184, !185, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !179, file: !178, baseType: !40, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !179, file: !178, baseType: !40, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !179, file: !178, baseType: !40, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !179, file: !178, baseType: !43, size: 32, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !179, file: !178, baseType: !43, size: 32, offset: 224)
!187 = !{!188, !189, !190, !191, !192, !193}
!188 = !DILocalVariable(name: "status", arg: 1, scope: !170, file: !165, line: 298, type: !43)
!189 = !DILocalVariable(name: "errnum", arg: 2, scope: !170, file: !165, line: 298, type: !43)
!190 = !DILocalVariable(name: "file_name", arg: 3, scope: !170, file: !165, line: 298, type: !48)
!191 = !DILocalVariable(name: "line_number", arg: 4, scope: !170, file: !165, line: 298, type: !7)
!192 = !DILocalVariable(name: "message", arg: 5, scope: !170, file: !165, line: 298, type: !48)
!193 = !DILocalVariable(name: "args", arg: 6, scope: !170, file: !165, line: 298, type: !173)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "old_line_number", scope: !170, file: !165, line: 305, type: !7, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "error_message_count", scope: !164, file: !165, line: 69, type: !7, isLocal: false, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !164, file: !165, line: 295, type: !43, isLocal: false, isDefinition: true)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null}
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "program_name", scope: !205, file: !206, line: 31, type: !48, isLocal: false, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !207, globals: !208, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!207 = !{!41}
!208 = !{!203}
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "utf07FF", scope: !211, file: !212, line: 46, type: !242, isLocal: true, isDefinition: true)
!211 = distinct !DISubprogram(name: "proper_name_lite", scope: !212, file: !212, line: 38, type: !213, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !217)
!212 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!213 = !DISubroutineType(types: !214)
!214 = !{!48, !48, !48}
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !216, splitDebugInlining: false, nameTableKind: None)
!216 = !{!209}
!217 = !{!218, !219, !220, !221, !226}
!218 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !211, file: !212, line: 38, type: !48)
!219 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !211, file: !212, line: 38, type: !48)
!220 = !DILocalVariable(name: "translation", scope: !211, file: !212, line: 40, type: !48)
!221 = !DILocalVariable(name: "w", scope: !211, file: !212, line: 47, type: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !223, line: 37, baseType: !224)
!223 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !104, line: 57, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !104, line: 42, baseType: !7)
!226 = !DILocalVariable(name: "mbs", scope: !211, file: !212, line: 48, type: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !228, line: 6, baseType: !229)
!228 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !230, line: 21, baseType: !231)
!230 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 13, size: 64, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !231, file: !230, line: 15, baseType: !43, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !231, file: !230, line: 20, baseType: !235, size: 32, offset: 32)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !230, line: 16, size: 32, elements: !236)
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !235, file: !230, line: 18, baseType: !7, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !235, file: !230, line: 19, baseType: !239, size: 32)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 4)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 16, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 2)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !247, file: !248, line: 76, type: !316, isLocal: false, isDefinition: true)
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !249, retainedTypes: !255, globals: !256, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!249 = !{!21, !250, !5}
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !22, line: 254, baseType: !7, size: 32, elements: !251)
!251 = !{!252, !253, !254}
!252 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!253 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!254 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!255 = !{!43, !44, !45}
!256 = !{!245, !257, !263, !275, !277, !282, !305, !312, !314}
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !247, file: !248, line: 92, type: !259, isLocal: false, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 320, elements: !261)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!261 = !{!262}
!262 = !DISubrange(count: 10)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !247, file: !248, line: 1040, type: !265, isLocal: false, isDefinition: true)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !248, line: 56, size: 448, elements: !266)
!266 = !{!267, !268, !269, !273, !274}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !265, file: !248, line: 59, baseType: !21, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !248, line: 62, baseType: !43, size: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !265, file: !248, line: 66, baseType: !270, size: 256, offset: 64)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 8)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !265, file: !248, line: 69, baseType: !48, size: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !265, file: !248, line: 72, baseType: !48, size: 64, offset: 384)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !247, file: !248, line: 107, type: !265, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "slot0", scope: !247, file: !248, line: 831, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2048, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 256)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "quote", scope: !284, file: !248, line: 228, type: !303, isLocal: true, isDefinition: true)
!284 = distinct !DISubprogram(name: "gettext_quote", scope: !248, file: !248, line: 197, type: !285, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{!48, !48, !21}
!287 = !{!288, !289, !290, !291, !292}
!288 = !DILocalVariable(name: "msgid", arg: 1, scope: !284, file: !248, line: 197, type: !48)
!289 = !DILocalVariable(name: "s", arg: 2, scope: !284, file: !248, line: 197, type: !21)
!290 = !DILocalVariable(name: "translation", scope: !284, file: !248, line: 199, type: !48)
!291 = !DILocalVariable(name: "w", scope: !284, file: !248, line: 229, type: !222)
!292 = !DILocalVariable(name: "mbs", scope: !284, file: !248, line: 230, type: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !228, line: 6, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !230, line: 21, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 13, size: 64, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !295, file: !230, line: 15, baseType: !43, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !295, file: !230, line: 20, baseType: !299, size: 32, offset: 32)
!299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !230, line: 16, size: 32, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !299, file: !230, line: 18, baseType: !7, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !299, file: !230, line: 19, baseType: !239, size: 32)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 64, elements: !304)
!304 = !{!244, !241}
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "slotvec", scope: !247, file: !248, line: 834, type: !307, isLocal: true, isDefinition: true)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !248, line: 823, size: 128, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !308, file: !248, line: 825, baseType: !45, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !308, file: !248, line: 826, baseType: !41, size: 64, offset: 64)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "nslots", scope: !247, file: !248, line: 832, type: !43, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "slotvec0", scope: !247, file: !248, line: 833, type: !308, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 704, elements: !318)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!318 = !{!319}
!319 = !DISubrange(count: 11)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !322, file: !323, line: 26, type: !325, isLocal: false, isDefinition: true)
!322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !323, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !324, splitDebugInlining: false, nameTableKind: None)
!323 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!324 = !{!320}
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 376, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 47)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "exit_failure", scope: !330, file: !331, line: 24, type: !333, isLocal: false, isDefinition: true)
!330 = distinct !DICompileUnit(language: DW_LANG_C99, file: !331, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !332, splitDebugInlining: false, nameTableKind: None)
!331 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!332 = !{!328}
!333 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(name: "internal_state", scope: !336, file: !337, line: 97, type: !340, isLocal: true, isDefinition: true)
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !338, globals: !339, splitDebugInlining: false, nameTableKind: None)
!337 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!338 = !{!40, !45, !50}
!339 = !{!334}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !228, line: 6, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !230, line: 21, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 13, size: 64, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !342, file: !230, line: 15, baseType: !43, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !342, file: !230, line: 20, baseType: !346, size: 32, offset: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !230, line: 16, size: 32, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !346, file: !230, line: 18, baseType: !7, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !346, file: !230, line: 19, baseType: !239, size: 32)
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!351 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!352 = distinct !DICompileUnit(language: DW_LANG_C99, file: !353, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!353 = !DIFile(filename: "lib/root-dev-ino.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b0632229108c1521929601778d55996f")
!354 = distinct !DICompileUnit(language: DW_LANG_C99, file: !355, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !356, retainedTypes: !360, splitDebugInlining: false, nameTableKind: None)
!355 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!356 = !{!357}
!357 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !355, line: 40, baseType: !7, size: 32, elements: !358)
!358 = !{!359}
!359 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!360 = !{!40}
!361 = distinct !DICompileUnit(language: DW_LANG_C99, file: !362, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !363, retainedTypes: !394, splitDebugInlining: false, nameTableKind: None)
!362 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!363 = !{!364, !376}
!364 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !365, file: !362, line: 188, baseType: !7, size: 32, elements: !374)
!365 = distinct !DISubprogram(name: "x2nrealloc", scope: !362, file: !362, line: 176, type: !366, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !369)
!366 = !DISubroutineType(types: !367)
!367 = !{!40, !40, !368, !45}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!369 = !{!370, !371, !372, !373}
!370 = !DILocalVariable(name: "p", arg: 1, scope: !365, file: !362, line: 176, type: !40)
!371 = !DILocalVariable(name: "pn", arg: 2, scope: !365, file: !362, line: 176, type: !368)
!372 = !DILocalVariable(name: "s", arg: 3, scope: !365, file: !362, line: 176, type: !45)
!373 = !DILocalVariable(name: "n", scope: !365, file: !362, line: 178, type: !45)
!374 = !{!375}
!375 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!376 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !377, file: !362, line: 228, baseType: !7, size: 32, elements: !374)
!377 = distinct !DISubprogram(name: "xpalloc", scope: !362, file: !362, line: 223, type: !378, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !384)
!378 = !DISubroutineType(types: !379)
!379 = !{!40, !40, !380, !381, !383, !381}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !382, line: 130, baseType: !383)
!382 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !46, line: 35, baseType: !105)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393}
!385 = !DILocalVariable(name: "pa", arg: 1, scope: !377, file: !362, line: 223, type: !40)
!386 = !DILocalVariable(name: "pn", arg: 2, scope: !377, file: !362, line: 223, type: !380)
!387 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !377, file: !362, line: 223, type: !381)
!388 = !DILocalVariable(name: "n_max", arg: 4, scope: !377, file: !362, line: 223, type: !383)
!389 = !DILocalVariable(name: "s", arg: 5, scope: !377, file: !362, line: 223, type: !381)
!390 = !DILocalVariable(name: "n0", scope: !377, file: !362, line: 230, type: !381)
!391 = !DILocalVariable(name: "n", scope: !377, file: !362, line: 237, type: !381)
!392 = !DILocalVariable(name: "nbytes", scope: !377, file: !362, line: 248, type: !381)
!393 = !DILocalVariable(name: "adjusted_nbytes", scope: !377, file: !362, line: 252, type: !381)
!394 = !{!41, !40, !64, !105, !47}
!395 = distinct !DICompileUnit(language: DW_LANG_C99, file: !396, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!396 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!397 = distinct !DICompileUnit(language: DW_LANG_C99, file: !398, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!398 = !DIFile(filename: "lib/xgetcwd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3727157833d2e1ec9b24b353bc14eccb")
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !400, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!400 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!401 = distinct !DICompileUnit(language: DW_LANG_C99, file: !402, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!402 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!403 = distinct !DICompileUnit(language: DW_LANG_C99, file: !404, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !360, splitDebugInlining: false, nameTableKind: None)
!404 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!405 = distinct !DICompileUnit(language: DW_LANG_C99, file: !406, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !360, splitDebugInlining: false, nameTableKind: None)
!406 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!407 = distinct !DICompileUnit(language: DW_LANG_C99, file: !408, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !409, splitDebugInlining: false, nameTableKind: None)
!408 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!409 = !{!64, !47, !40}
!410 = distinct !DICompileUnit(language: DW_LANG_C99, file: !411, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!411 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!412 = distinct !DICompileUnit(language: DW_LANG_C99, file: !413, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !360, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!416 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!417 = !{i32 7, !"Dwarf Version", i32 5}
!418 = !{i32 2, !"Debug Info Version", i32 3}
!419 = !{i32 1, !"wchar_size", i32 4}
!420 = !{i32 1, !"branch-target-enforcement", i32 0}
!421 = !{i32 1, !"sign-return-address", i32 0}
!422 = !{i32 1, !"sign-return-address-all", i32 0}
!423 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!424 = !{i32 7, !"PIC Level", i32 2}
!425 = !{i32 7, !"PIE Level", i32 2}
!426 = !{i32 7, !"uwtable", i32 1}
!427 = !{i32 7, !"frame-pointer", i32 1}
!428 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 49, type: !429, scopeLine: 50, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !43}
!431 = !{!432}
!432 = !DILocalVariable(name: "status", arg: 1, scope: !428, file: !3, line: 49, type: !43)
!433 = !DILocation(line: 0, scope: !428)
!434 = !DILocation(line: 51, column: 14, scope: !435)
!435 = distinct !DILexicalBlock(scope: !428, file: !3, line: 51, column: 7)
!436 = !DILocation(line: 51, column: 7, scope: !428)
!437 = !DILocation(line: 52, column: 5, scope: !438)
!438 = distinct !DILexicalBlock(scope: !435, file: !3, line: 52, column: 5)
!439 = !{!440, !440, i64 0}
!440 = !{!"any pointer", !441, i64 0}
!441 = !{!"omnipotent char", !442, i64 0}
!442 = !{!"Simple C/C++ TBAA"}
!443 = !DILocation(line: 55, column: 7, scope: !444)
!444 = distinct !DILexicalBlock(scope: !435, file: !3, line: 54, column: 5)
!445 = !DILocation(line: 56, column: 7, scope: !444)
!446 = !DILocation(line: 60, column: 7, scope: !444)
!447 = !DILocation(line: 64, column: 7, scope: !444)
!448 = !DILocation(line: 68, column: 7, scope: !444)
!449 = !DILocation(line: 69, column: 7, scope: !444)
!450 = !DILocation(line: 70, column: 7, scope: !444)
!451 = !DILocation(line: 73, column: 7, scope: !444)
!452 = !DILocalVariable(name: "program", arg: 1, scope: !453, file: !36, line: 836, type: !48)
!453 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !36, file: !36, line: 836, type: !454, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !48}
!456 = !{!452, !457, !466, !467, !469, !470}
!457 = !DILocalVariable(name: "infomap", scope: !453, file: !36, line: 838, type: !458)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 896, elements: !464)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !453, file: !36, line: 838, size: 128, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !460, file: !36, line: 838, baseType: !48, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !460, file: !36, line: 838, baseType: !48, size: 64, offset: 64)
!464 = !{!465}
!465 = !DISubrange(count: 7)
!466 = !DILocalVariable(name: "node", scope: !453, file: !36, line: 848, type: !48)
!467 = !DILocalVariable(name: "map_prog", scope: !453, file: !36, line: 849, type: !468)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!469 = !DILocalVariable(name: "lc_messages", scope: !453, file: !36, line: 861, type: !48)
!470 = !DILocalVariable(name: "url_program", scope: !453, file: !36, line: 874, type: !48)
!471 = !DILocation(line: 0, scope: !453, inlinedAt: !472)
!472 = distinct !DILocation(line: 74, column: 7, scope: !444)
!473 = !DILocation(line: 838, column: 3, scope: !453, inlinedAt: !472)
!474 = !DILocation(line: 838, column: 67, scope: !453, inlinedAt: !472)
!475 = !DILocation(line: 849, column: 36, scope: !453, inlinedAt: !472)
!476 = !DILocation(line: 851, column: 3, scope: !453, inlinedAt: !472)
!477 = !DILocalVariable(name: "__s1", arg: 1, scope: !478, file: !479, line: 1359, type: !48)
!478 = distinct !DISubprogram(name: "streq", scope: !479, file: !479, line: 1359, type: !480, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !482)
!479 = !DIFile(filename: "./lib/string.h", directory: "/src")
!480 = !DISubroutineType(types: !481)
!481 = !{!64, !48, !48}
!482 = !{!477, !483}
!483 = !DILocalVariable(name: "__s2", arg: 2, scope: !478, file: !479, line: 1359, type: !48)
!484 = !DILocation(line: 0, scope: !478, inlinedAt: !485)
!485 = distinct !DILocation(line: 851, column: 33, scope: !453, inlinedAt: !472)
!486 = !DILocation(line: 1361, column: 11, scope: !478, inlinedAt: !485)
!487 = !DILocation(line: 1361, column: 10, scope: !478, inlinedAt: !485)
!488 = !DILocation(line: 852, column: 13, scope: !453, inlinedAt: !472)
!489 = !DILocation(line: 851, column: 20, scope: !453, inlinedAt: !472)
!490 = !{!491, !440, i64 0}
!491 = !{!"infomap", !440, i64 0, !440, i64 8}
!492 = !DILocation(line: 851, column: 10, scope: !453, inlinedAt: !472)
!493 = !DILocation(line: 851, column: 28, scope: !453, inlinedAt: !472)
!494 = distinct !{!494, !476, !488, !495}
!495 = !{!"llvm.loop.mustprogress"}
!496 = !DILocation(line: 854, column: 17, scope: !497, inlinedAt: !472)
!497 = distinct !DILexicalBlock(scope: !453, file: !36, line: 854, column: 7)
!498 = !{!491, !440, i64 8}
!499 = !DILocation(line: 854, column: 7, scope: !497, inlinedAt: !472)
!500 = !DILocation(line: 854, column: 7, scope: !453, inlinedAt: !472)
!501 = !DILocation(line: 857, column: 3, scope: !453, inlinedAt: !472)
!502 = !DILocation(line: 861, column: 29, scope: !453, inlinedAt: !472)
!503 = !DILocation(line: 862, column: 7, scope: !504, inlinedAt: !472)
!504 = distinct !DILexicalBlock(scope: !453, file: !36, line: 862, column: 7)
!505 = !DILocation(line: 862, column: 19, scope: !504, inlinedAt: !472)
!506 = !DILocation(line: 862, column: 22, scope: !504, inlinedAt: !472)
!507 = !DILocation(line: 862, column: 7, scope: !453, inlinedAt: !472)
!508 = !DILocation(line: 868, column: 7, scope: !509, inlinedAt: !472)
!509 = distinct !DILexicalBlock(scope: !504, file: !36, line: 863, column: 5)
!510 = !DILocation(line: 870, column: 5, scope: !509, inlinedAt: !472)
!511 = !DILocation(line: 0, scope: !478, inlinedAt: !512)
!512 = distinct !DILocation(line: 874, column: 29, scope: !453, inlinedAt: !472)
!513 = !DILocation(line: 875, column: 3, scope: !453, inlinedAt: !472)
!514 = !DILocation(line: 877, column: 3, scope: !453, inlinedAt: !472)
!515 = !DILocation(line: 879, column: 1, scope: !453, inlinedAt: !472)
!516 = !DILocation(line: 76, column: 3, scope: !428)
!517 = !DISubprogram(name: "dcgettext", scope: !518, file: !518, line: 51, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!518 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!519 = !DISubroutineType(types: !520)
!520 = !{!41, !48, !48, !43}
!521 = !{}
!522 = !DISubprogram(name: "fputs_unlocked", scope: !174, file: !174, line: 691, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!523 = !DISubroutineType(types: !524)
!524 = !{!43, !525, !526}
!525 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!526 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!527 = !DILocation(line: 0, scope: !54)
!528 = !DILocation(line: 581, column: 7, scope: !62)
!529 = !{!530, !530, i64 0}
!530 = !{!"int", !441, i64 0}
!531 = !DILocation(line: 581, column: 19, scope: !62)
!532 = !DILocation(line: 581, column: 7, scope: !54)
!533 = !DILocation(line: 585, column: 26, scope: !61)
!534 = !DILocation(line: 0, scope: !61)
!535 = !DILocation(line: 586, column: 23, scope: !61)
!536 = !DILocation(line: 586, column: 28, scope: !61)
!537 = !DILocation(line: 586, column: 32, scope: !61)
!538 = !{!441, !441, i64 0}
!539 = !DILocation(line: 586, column: 38, scope: !61)
!540 = !DILocation(line: 0, scope: !478, inlinedAt: !541)
!541 = distinct !DILocation(line: 586, column: 41, scope: !61)
!542 = !DILocation(line: 1361, column: 11, scope: !478, inlinedAt: !541)
!543 = !DILocation(line: 1361, column: 10, scope: !478, inlinedAt: !541)
!544 = !DILocation(line: 586, column: 19, scope: !61)
!545 = !DILocation(line: 587, column: 5, scope: !61)
!546 = !DILocation(line: 588, column: 7, scope: !547)
!547 = distinct !DILexicalBlock(scope: !54, file: !36, line: 588, column: 7)
!548 = !DILocation(line: 588, column: 7, scope: !54)
!549 = !DILocation(line: 590, column: 7, scope: !550)
!550 = distinct !DILexicalBlock(scope: !547, file: !36, line: 589, column: 5)
!551 = !DILocation(line: 591, column: 7, scope: !550)
!552 = !DILocation(line: 595, column: 37, scope: !54)
!553 = !DILocation(line: 595, column: 35, scope: !54)
!554 = !DILocation(line: 596, column: 29, scope: !54)
!555 = !DILocation(line: 597, column: 8, scope: !70)
!556 = !DILocation(line: 597, column: 7, scope: !54)
!557 = !DILocation(line: 604, column: 24, scope: !69)
!558 = !DILocation(line: 604, column: 12, scope: !70)
!559 = !DILocation(line: 0, scope: !68)
!560 = !DILocation(line: 610, column: 16, scope: !68)
!561 = !DILocation(line: 610, column: 7, scope: !68)
!562 = !DILocation(line: 611, column: 21, scope: !68)
!563 = !{!564, !564, i64 0}
!564 = !{!"short", !441, i64 0}
!565 = !DILocation(line: 611, column: 19, scope: !68)
!566 = !DILocation(line: 611, column: 16, scope: !68)
!567 = !DILocation(line: 610, column: 30, scope: !68)
!568 = distinct !{!568, !561, !562, !495}
!569 = !DILocation(line: 612, column: 18, scope: !570)
!570 = distinct !DILexicalBlock(scope: !68, file: !36, line: 612, column: 11)
!571 = !DILocation(line: 612, column: 11, scope: !68)
!572 = !DILocation(line: 620, column: 23, scope: !54)
!573 = !DILocation(line: 625, column: 39, scope: !54)
!574 = !DILocation(line: 626, column: 3, scope: !54)
!575 = !DILocation(line: 626, column: 10, scope: !54)
!576 = !DILocation(line: 626, column: 21, scope: !54)
!577 = !DILocation(line: 628, column: 44, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !36, line: 628, column: 11)
!579 = distinct !DILexicalBlock(scope: !54, file: !36, line: 627, column: 5)
!580 = !DILocation(line: 628, column: 32, scope: !578)
!581 = !DILocation(line: 628, column: 49, scope: !578)
!582 = !DILocation(line: 628, column: 11, scope: !579)
!583 = !DILocation(line: 630, column: 11, scope: !584)
!584 = distinct !DILexicalBlock(scope: !579, file: !36, line: 630, column: 11)
!585 = !DILocation(line: 630, column: 11, scope: !579)
!586 = !DILocation(line: 632, column: 26, scope: !587)
!587 = distinct !DILexicalBlock(scope: !588, file: !36, line: 632, column: 15)
!588 = distinct !DILexicalBlock(scope: !584, file: !36, line: 631, column: 9)
!589 = !DILocation(line: 632, column: 34, scope: !587)
!590 = !DILocation(line: 632, column: 37, scope: !587)
!591 = !DILocation(line: 632, column: 15, scope: !588)
!592 = !DILocation(line: 636, column: 29, scope: !593)
!593 = distinct !DILexicalBlock(scope: !588, file: !36, line: 636, column: 15)
!594 = !DILocation(line: 640, column: 16, scope: !579)
!595 = distinct !{!595, !574, !596, !495}
!596 = !DILocation(line: 641, column: 5, scope: !54)
!597 = !DILocation(line: 644, column: 3, scope: !54)
!598 = !DILocation(line: 0, scope: !478, inlinedAt: !599)
!599 = distinct !DILocation(line: 648, column: 31, scope: !54)
!600 = !DILocation(line: 0, scope: !478, inlinedAt: !601)
!601 = distinct !DILocation(line: 649, column: 31, scope: !54)
!602 = !DILocation(line: 0, scope: !478, inlinedAt: !603)
!603 = distinct !DILocation(line: 650, column: 31, scope: !54)
!604 = !DILocation(line: 0, scope: !478, inlinedAt: !605)
!605 = distinct !DILocation(line: 651, column: 31, scope: !54)
!606 = !DILocation(line: 0, scope: !478, inlinedAt: !607)
!607 = distinct !DILocation(line: 652, column: 31, scope: !54)
!608 = !DILocation(line: 0, scope: !478, inlinedAt: !609)
!609 = distinct !DILocation(line: 653, column: 31, scope: !54)
!610 = !DILocation(line: 0, scope: !478, inlinedAt: !611)
!611 = distinct !DILocation(line: 654, column: 31, scope: !54)
!612 = !DILocation(line: 0, scope: !478, inlinedAt: !613)
!613 = distinct !DILocation(line: 655, column: 31, scope: !54)
!614 = !DILocation(line: 0, scope: !478, inlinedAt: !615)
!615 = distinct !DILocation(line: 656, column: 31, scope: !54)
!616 = !DILocation(line: 0, scope: !478, inlinedAt: !617)
!617 = distinct !DILocation(line: 657, column: 31, scope: !54)
!618 = !DILocation(line: 663, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !54, file: !36, line: 663, column: 7)
!620 = !DILocation(line: 664, column: 7, scope: !619)
!621 = !DILocation(line: 664, column: 10, scope: !619)
!622 = !DILocation(line: 663, column: 7, scope: !54)
!623 = !DILocation(line: 669, column: 7, scope: !624)
!624 = distinct !DILexicalBlock(scope: !619, file: !36, line: 665, column: 5)
!625 = !DILocation(line: 671, column: 5, scope: !624)
!626 = !DILocation(line: 676, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !619, file: !36, line: 673, column: 5)
!628 = !DILocation(line: 679, column: 3, scope: !54)
!629 = !DILocation(line: 683, column: 3, scope: !54)
!630 = !DILocation(line: 686, column: 3, scope: !54)
!631 = !DILocation(line: 688, column: 3, scope: !54)
!632 = !DILocation(line: 691, column: 3, scope: !54)
!633 = !DILocation(line: 695, column: 3, scope: !54)
!634 = !DILocation(line: 696, column: 1, scope: !54)
!635 = !DISubprogram(name: "setlocale", scope: !636, file: !636, line: 122, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!636 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!637 = !DISubroutineType(types: !638)
!638 = !{!41, !43, !48}
!639 = !DISubprogram(name: "getenv", scope: !640, file: !640, line: 641, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!640 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!641 = !DISubroutineType(types: !642)
!642 = !{!41, !48}
!643 = !DISubprogram(name: "fwrite_unlocked", scope: !174, file: !174, line: 704, type: !644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!644 = !DISubroutineType(types: !645)
!645 = !{!45, !646, !45, !45, !526}
!646 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!649 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 320, type: !650, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !653)
!650 = !DISubroutineType(types: !651)
!651 = !{!43, !43, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!653 = !{!654, !655, !656, !657, !659, !662, !663}
!654 = !DILocalVariable(name: "argc", arg: 1, scope: !649, file: !3, line: 320, type: !43)
!655 = !DILocalVariable(name: "argv", arg: 2, scope: !649, file: !3, line: 320, type: !652)
!656 = !DILocalVariable(name: "logical", scope: !649, file: !3, line: 325, type: !64)
!657 = !DILocalVariable(name: "c", scope: !658, file: !3, line: 337, type: !43)
!658 = distinct !DILexicalBlock(scope: !649, file: !3, line: 336, column: 5)
!659 = !DILocalVariable(name: "wd", scope: !660, file: !3, line: 363, type: !48)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 362, column: 5)
!661 = distinct !DILexicalBlock(scope: !649, file: !3, line: 361, column: 7)
!662 = !DILocalVariable(name: "wd", scope: !649, file: !3, line: 371, type: !41)
!663 = !DILocalVariable(name: "file_name", scope: !664, file: !3, line: 379, type: !666)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 378, column: 5)
!665 = distinct !DILexicalBlock(scope: !649, file: !3, line: 372, column: 7)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_name", file: !3, line: 32, size: 192, elements: !668)
!668 = !{!669, !670, !671}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !667, file: !3, line: 34, baseType: !41, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "n_alloc", scope: !667, file: !3, line: 35, baseType: !381, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !667, file: !3, line: 36, baseType: !41, size: 64, offset: 128)
!672 = !DILocation(line: 0, scope: !649)
!673 = !DILocation(line: 325, column: 19, scope: !649)
!674 = !DILocation(line: 325, column: 46, scope: !649)
!675 = !DILocation(line: 328, column: 21, scope: !649)
!676 = !DILocation(line: 328, column: 3, scope: !649)
!677 = !DILocation(line: 329, column: 3, scope: !649)
!678 = !DILocation(line: 330, column: 3, scope: !649)
!679 = !DILocation(line: 331, column: 3, scope: !649)
!680 = !DILocation(line: 333, column: 3, scope: !649)
!681 = !DILocation(line: 335, column: 3, scope: !649)
!682 = !DILocation(line: 337, column: 15, scope: !658)
!683 = !DILocation(line: 0, scope: !658)
!684 = !DILocation(line: 338, column: 11, scope: !658)
!685 = !DILocation(line: 347, column: 11, scope: !686)
!686 = distinct !DILexicalBlock(scope: !658, file: !3, line: 341, column: 9)
!687 = !DILocation(line: 349, column: 9, scope: !686)
!688 = !DILocation(line: 351, column: 9, scope: !686)
!689 = !DILocation(line: 354, column: 11, scope: !686)
!690 = !DILocation(line: 358, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !649, file: !3, line: 358, column: 7)
!692 = !DILocation(line: 358, column: 14, scope: !691)
!693 = !DILocation(line: 358, column: 7, scope: !649)
!694 = !DILocation(line: 359, column: 5, scope: !691)
!695 = !DILocation(line: 361, column: 7, scope: !649)
!696 = !DILocation(line: 296, column: 20, scope: !697, inlinedAt: !740)
!697 = distinct !DISubprogram(name: "logical_getcwd", scope: !3, file: !3, line: 294, type: !698, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{!48}
!700 = !{!701, !702, !703, !739}
!701 = !DILocalVariable(name: "wd", scope: !697, file: !3, line: 296, type: !48)
!702 = !DILocalVariable(name: "p", scope: !697, file: !3, line: 301, type: !48)
!703 = !DILocalVariable(name: "st1", scope: !697, file: !3, line: 311, type: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !705, line: 44, size: 1024, elements: !706)
!705 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!706 = !{!707, !709, !711, !713, !715, !717, !719, !720, !721, !722, !724, !725, !727, !735, !736, !737}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !704, file: !705, line: 46, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !104, line: 145, baseType: !47)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !704, file: !705, line: 47, baseType: !710, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !104, line: 148, baseType: !47)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !704, file: !705, line: 48, baseType: !712, size: 32, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !104, line: 150, baseType: !7)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !704, file: !705, line: 49, baseType: !714, size: 32, offset: 160)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !104, line: 151, baseType: !7)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !704, file: !705, line: 50, baseType: !716, size: 32, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !104, line: 146, baseType: !7)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !704, file: !705, line: 51, baseType: !718, size: 32, offset: 224)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !104, line: 147, baseType: !7)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !704, file: !705, line: 52, baseType: !708, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !704, file: !705, line: 53, baseType: !708, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !704, file: !705, line: 54, baseType: !103, size: 64, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !704, file: !705, line: 55, baseType: !723, size: 32, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !104, line: 175, baseType: !43)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !704, file: !705, line: 56, baseType: !43, size: 32, offset: 480)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !704, file: !705, line: 57, baseType: !726, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !104, line: 180, baseType: !105)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !704, file: !705, line: 65, baseType: !728, size: 128, offset: 576)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !729, line: 11, size: 128, elements: !730)
!729 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!730 = !{!731, !733}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !728, file: !729, line: 16, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !104, line: 160, baseType: !105)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !728, file: !729, line: 21, baseType: !734, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !104, line: 197, baseType: !105)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !704, file: !705, line: 66, baseType: !728, size: 128, offset: 704)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !704, file: !705, line: 67, baseType: !728, size: 128, offset: 832)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !704, file: !705, line: 79, baseType: !738, size: 64, offset: 960)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !243)
!739 = !DILocalVariable(name: "st2", scope: !697, file: !3, line: 312, type: !704)
!740 = distinct !DILocation(line: 363, column: 24, scope: !660)
!741 = !DILocation(line: 0, scope: !697, inlinedAt: !740)
!742 = !DILocation(line: 299, column: 8, scope: !743, inlinedAt: !740)
!743 = distinct !DILexicalBlock(scope: !697, file: !3, line: 299, column: 7)
!744 = !DILocation(line: 299, column: 11, scope: !743, inlinedAt: !740)
!745 = !DILocation(line: 299, column: 14, scope: !743, inlinedAt: !740)
!746 = !DILocation(line: 299, column: 20, scope: !743, inlinedAt: !740)
!747 = !DILocation(line: 299, column: 7, scope: !697, inlinedAt: !740)
!748 = !DILocation(line: 302, column: 15, scope: !697, inlinedAt: !740)
!749 = !DILocation(line: 302, column: 3, scope: !697, inlinedAt: !740)
!750 = !DILocation(line: 304, column: 12, scope: !751, inlinedAt: !740)
!751 = distinct !DILexicalBlock(scope: !752, file: !3, line: 304, column: 11)
!752 = distinct !DILexicalBlock(scope: !697, file: !3, line: 303, column: 5)
!753 = !DILocation(line: 304, column: 17, scope: !751, inlinedAt: !740)
!754 = !DILocation(line: 305, column: 32, scope: !751, inlinedAt: !740)
!755 = !DILocation(line: 305, column: 37, scope: !751, inlinedAt: !740)
!756 = !DILocation(line: 307, column: 8, scope: !752, inlinedAt: !740)
!757 = distinct !{!757, !749, !758, !495}
!758 = !DILocation(line: 308, column: 5, scope: !697, inlinedAt: !740)
!759 = !DILocation(line: 311, column: 3, scope: !697, inlinedAt: !740)
!760 = !DILocation(line: 311, column: 15, scope: !697, inlinedAt: !740)
!761 = !DILocation(line: 312, column: 3, scope: !697, inlinedAt: !740)
!762 = !DILocation(line: 312, column: 15, scope: !697, inlinedAt: !740)
!763 = !DILocation(line: 313, column: 7, scope: !764, inlinedAt: !740)
!764 = distinct !DILexicalBlock(scope: !697, file: !3, line: 313, column: 7)
!765 = !DILocation(line: 313, column: 23, scope: !764, inlinedAt: !740)
!766 = !DILocation(line: 313, column: 28, scope: !764, inlinedAt: !740)
!767 = !DILocation(line: 313, column: 31, scope: !764, inlinedAt: !740)
!768 = !DILocation(line: 313, column: 48, scope: !764, inlinedAt: !740)
!769 = !DILocation(line: 313, column: 53, scope: !764, inlinedAt: !740)
!770 = !DILocalVariable(name: "a", arg: 1, scope: !771, file: !772, line: 86, type: !775)
!771 = distinct !DISubprogram(name: "psame_inode", scope: !772, file: !772, line: 86, type: !773, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !777)
!772 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!773 = !DISubroutineType(types: !774)
!774 = !{!64, !775, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!777 = !{!770, !778}
!778 = !DILocalVariable(name: "b", arg: 2, scope: !771, file: !772, line: 86, type: !775)
!779 = !DILocation(line: 0, scope: !771, inlinedAt: !780)
!780 = distinct !DILocation(line: 313, column: 56, scope: !764, inlinedAt: !740)
!781 = !DILocation(line: 90, column: 14, scope: !771, inlinedAt: !780)
!782 = !{!783, !784, i64 0}
!783 = !{!"stat", !784, i64 0, !784, i64 8, !530, i64 16, !530, i64 20, !530, i64 24, !530, i64 28, !784, i64 32, !784, i64 40, !784, i64 48, !530, i64 56, !530, i64 60, !784, i64 64, !785, i64 72, !785, i64 88, !785, i64 104, !441, i64 120}
!784 = !{!"long", !441, i64 0}
!785 = !{!"timespec", !784, i64 0, !784, i64 8}
!786 = !{!783, !784, i64 8}
!787 = !DILocation(line: 313, column: 7, scope: !697, inlinedAt: !740)
!788 = !DILocation(line: 316, column: 1, scope: !697, inlinedAt: !740)
!789 = !DILocation(line: 0, scope: !660)
!790 = !DILocation(line: 364, column: 11, scope: !660)
!791 = !DILocation(line: 366, column: 11, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 365, column: 9)
!793 = distinct !DILexicalBlock(scope: !660, file: !3, line: 364, column: 11)
!794 = !DILocation(line: 371, column: 14, scope: !649)
!795 = !DILocation(line: 372, column: 10, scope: !665)
!796 = !DILocation(line: 372, column: 7, scope: !649)
!797 = !DILocation(line: 374, column: 7, scope: !798)
!798 = distinct !DILexicalBlock(scope: !665, file: !3, line: 373, column: 5)
!799 = !DILocation(line: 375, column: 7, scope: !798)
!800 = !DILocation(line: 376, column: 5, scope: !798)
!801 = !DILocation(line: 89, column: 25, scope: !802, inlinedAt: !808)
!802 = distinct !DISubprogram(name: "file_name_init", scope: !3, file: !3, line: 87, type: !803, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !805)
!803 = !DISubroutineType(types: !804)
!804 = !{!666}
!805 = !{!806, !807}
!806 = !DILocalVariable(name: "p", scope: !802, file: !3, line: 89, type: !666)
!807 = !DILocalVariable(name: "init_alloc", scope: !802, file: !3, line: 93, type: !43)
!808 = distinct !DILocation(line: 379, column: 37, scope: !664)
!809 = !DILocation(line: 0, scope: !802, inlinedAt: !808)
!810 = !DILocation(line: 94, column: 6, scope: !802, inlinedAt: !808)
!811 = !DILocation(line: 94, column: 14, scope: !802, inlinedAt: !808)
!812 = !{!813, !784, i64 8}
!813 = !{!"file_name", !440, i64 0, !784, i64 8, !440, i64 16}
!814 = !DILocation(line: 96, column: 12, scope: !802, inlinedAt: !808)
!815 = !DILocation(line: 96, column: 6, scope: !802, inlinedAt: !808)
!816 = !DILocation(line: 96, column: 10, scope: !802, inlinedAt: !808)
!817 = !{!813, !440, i64 0}
!818 = !DILocation(line: 97, column: 34, scope: !802, inlinedAt: !808)
!819 = !DILocation(line: 97, column: 6, scope: !802, inlinedAt: !808)
!820 = !DILocation(line: 97, column: 12, scope: !802, inlinedAt: !808)
!821 = !{!813, !440, i64 16}
!822 = !DILocation(line: 98, column: 15, scope: !802, inlinedAt: !808)
!823 = !DILocation(line: 0, scope: !664)
!824 = !DILocalVariable(name: "file_name", arg: 1, scope: !825, file: !3, line: 262, type: !666)
!825 = distinct !DISubprogram(name: "robust_getcwd", scope: !3, file: !3, line: 262, type: !826, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !828)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !666}
!828 = !{!824, !829, !830, !839, !841}
!829 = !DILocalVariable(name: "height", scope: !825, file: !3, line: 264, type: !45)
!830 = !DILocalVariable(name: "dev_ino_buf", scope: !825, file: !3, line: 265, type: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !832, line: 30, size: 128, elements: !833)
!832 = !DIFile(filename: "./lib/dev-ino.h", directory: "/src", checksumkind: CSK_MD5, checksum: "7eae2ded9ac0c200760eafd719dd996d")
!833 = !{!834, !837}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !831, file: !832, line: 32, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !836, line: 47, baseType: !710)
!836 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!837 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !831, file: !832, line: 33, baseType: !838, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !836, line: 59, baseType: !708)
!839 = !DILocalVariable(name: "root_dev_ino", scope: !825, file: !3, line: 266, type: !840)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!841 = !DILocalVariable(name: "dot_sb", scope: !825, file: !3, line: 272, type: !704)
!842 = !DILocation(line: 0, scope: !825, inlinedAt: !843)
!843 = distinct !DILocation(line: 380, column: 7, scope: !664)
!844 = !DILocation(line: 265, column: 3, scope: !825, inlinedAt: !843)
!845 = !DILocation(line: 265, column: 18, scope: !825, inlinedAt: !843)
!846 = !DILocation(line: 266, column: 34, scope: !825, inlinedAt: !843)
!847 = !DILocation(line: 268, column: 20, scope: !848, inlinedAt: !843)
!848 = distinct !DILexicalBlock(scope: !825, file: !3, line: 268, column: 7)
!849 = !DILocation(line: 268, column: 7, scope: !825, inlinedAt: !843)
!850 = !DILocation(line: 269, column: 5, scope: !848, inlinedAt: !843)
!851 = !DILocation(line: 272, column: 3, scope: !825, inlinedAt: !843)
!852 = !DILocation(line: 272, column: 15, scope: !825, inlinedAt: !843)
!853 = !DILocation(line: 273, column: 7, scope: !854, inlinedAt: !843)
!854 = distinct !DILexicalBlock(scope: !825, file: !3, line: 273, column: 7)
!855 = !DILocation(line: 273, column: 27, scope: !854, inlinedAt: !843)
!856 = !DILocation(line: 273, column: 7, scope: !825, inlinedAt: !843)
!857 = !DILocation(line: 279, column: 11, scope: !858, inlinedAt: !843)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 279, column: 11)
!859 = distinct !DILexicalBlock(scope: !825, file: !3, line: 277, column: 5)
!860 = !{!861, !784, i64 8}
!861 = !{!"dev_ino", !784, i64 0, !784, i64 8}
!862 = !{!861, !784, i64 0}
!863 = !DILocation(line: 279, column: 11, scope: !859, inlinedAt: !843)
!864 = !DILocation(line: 274, column: 5, scope: !854, inlinedAt: !843)
!865 = !DILocation(line: 282, column: 49, scope: !859, inlinedAt: !843)
!866 = !DILocalVariable(name: "dot_sb", arg: 1, scope: !867, file: !3, line: 153, type: !870)
!867 = distinct !DISubprogram(name: "find_dir_entry", scope: !3, file: !3, line: 153, type: !868, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !871)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !870, !666, !45}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!871 = !{!866, !872, !873, !874, !879, !880, !881, !882, !883, !895, !900, !901}
!872 = !DILocalVariable(name: "file_name", arg: 2, scope: !867, file: !3, line: 153, type: !666)
!873 = !DILocalVariable(name: "parent_height", arg: 3, scope: !867, file: !3, line: 154, type: !45)
!874 = !DILocalVariable(name: "dirp", scope: !867, file: !3, line: 156, type: !875)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !877, line: 127, baseType: !878)
!877 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !877, line: 127, flags: DIFlagFwdDecl)
!879 = !DILocalVariable(name: "fd", scope: !867, file: !3, line: 161, type: !43)
!880 = !DILocalVariable(name: "parent_sb", scope: !867, file: !3, line: 166, type: !704)
!881 = !DILocalVariable(name: "use_lstat", scope: !867, file: !3, line: 173, type: !64)
!882 = !DILocalVariable(name: "found", scope: !867, file: !3, line: 175, type: !64)
!883 = !DILocalVariable(name: "dp", scope: !884, file: !3, line: 178, type: !885)
!884 = distinct !DILexicalBlock(scope: !867, file: !3, line: 177, column: 5)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !888, line: 22, size: 2240, elements: !889)
!888 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!889 = !{!890, !891, !892, !893, !894}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !887, file: !888, line: 25, baseType: !710, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !887, file: !888, line: 26, baseType: !103, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !887, file: !888, line: 31, baseType: !44, size: 16, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !887, file: !888, line: 32, baseType: !50, size: 8, offset: 144)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !887, file: !888, line: 33, baseType: !279, size: 2048, offset: 152)
!895 = !DILocalVariable(name: "e", scope: !896, file: !3, line: 186, type: !43)
!896 = distinct !DILexicalBlock(scope: !897, file: !3, line: 184, column: 13)
!897 = distinct !DILexicalBlock(scope: !898, file: !3, line: 183, column: 15)
!898 = distinct !DILexicalBlock(scope: !899, file: !3, line: 182, column: 9)
!899 = distinct !DILexicalBlock(scope: !884, file: !3, line: 181, column: 11)
!900 = !DILocalVariable(name: "ino", scope: !884, file: !3, line: 196, type: !835)
!901 = !DILocalVariable(name: "ent_sb", scope: !884, file: !3, line: 198, type: !704)
!902 = !DILocation(line: 0, scope: !867, inlinedAt: !903)
!903 = distinct !DILocation(line: 282, column: 7, scope: !859, inlinedAt: !843)
!904 = !DILocation(line: 156, column: 15, scope: !867, inlinedAt: !903)
!905 = !DILocation(line: 157, column: 12, scope: !906, inlinedAt: !903)
!906 = distinct !DILexicalBlock(scope: !867, file: !3, line: 157, column: 7)
!907 = !DILocation(line: 157, column: 7, scope: !867, inlinedAt: !903)
!908 = !DILocation(line: 158, column: 5, scope: !906, inlinedAt: !903)
!909 = !DILocation(line: 161, column: 12, scope: !867, inlinedAt: !903)
!910 = !DILocation(line: 162, column: 10, scope: !911, inlinedAt: !903)
!911 = distinct !DILexicalBlock(scope: !867, file: !3, line: 162, column: 7)
!912 = !DILocation(line: 162, column: 8, scope: !911, inlinedAt: !903)
!913 = !DILocation(line: 162, column: 18, scope: !911, inlinedAt: !903)
!914 = !DILocation(line: 162, column: 46, scope: !911, inlinedAt: !903)
!915 = !DILocation(line: 162, column: 7, scope: !867, inlinedAt: !903)
!916 = !DILocation(line: 162, column: 32, scope: !911, inlinedAt: !903)
!917 = !DILocation(line: 163, column: 5, scope: !911, inlinedAt: !903)
!918 = !DILocation(line: 166, column: 3, scope: !867, inlinedAt: !903)
!919 = !DILocation(line: 166, column: 15, scope: !867, inlinedAt: !903)
!920 = !DILocation(line: 167, column: 18, scope: !921, inlinedAt: !903)
!921 = distinct !DILexicalBlock(scope: !867, file: !3, line: 167, column: 7)
!922 = !DILocation(line: 167, column: 8, scope: !921, inlinedAt: !903)
!923 = !DILocation(line: 167, column: 43, scope: !921, inlinedAt: !903)
!924 = !DILocation(line: 167, column: 67, scope: !921, inlinedAt: !903)
!925 = !DILocation(line: 167, column: 7, scope: !867, inlinedAt: !903)
!926 = !DILocation(line: 168, column: 5, scope: !921, inlinedAt: !903)
!927 = !DILocation(line: 173, column: 31, scope: !867, inlinedAt: !903)
!928 = !DILocation(line: 180, column: 13, scope: !884, inlinedAt: !903)
!929 = !DILocalVariable(name: "dirp", arg: 1, scope: !930, file: !36, line: 285, type: !875)
!930 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !36, file: !36, line: 285, type: !931, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !933)
!931 = !DISubroutineType(types: !932)
!932 = !{!885, !875}
!933 = !{!929, !934}
!934 = !DILocalVariable(name: "dp", scope: !935, file: !36, line: 289, type: !885)
!935 = distinct !DILexicalBlock(scope: !930, file: !36, line: 288, column: 5)
!936 = !DILocation(line: 0, scope: !930, inlinedAt: !937)
!937 = distinct !DILocation(line: 181, column: 17, scope: !899, inlinedAt: !903)
!938 = !DILocation(line: 289, column: 33, scope: !935, inlinedAt: !937)
!939 = !DILocation(line: 0, scope: !935, inlinedAt: !937)
!940 = !DILocation(line: 290, column: 14, scope: !941, inlinedAt: !937)
!941 = distinct !DILexicalBlock(scope: !935, file: !36, line: 290, column: 11)
!942 = !DILocation(line: 290, column: 22, scope: !941, inlinedAt: !937)
!943 = !DILocation(line: 173, column: 38, scope: !867, inlinedAt: !903)
!944 = !DILocation(line: 214, column: 24, scope: !945, inlinedAt: !903)
!945 = distinct !DILexicalBlock(scope: !884, file: !3, line: 214, column: 12)
!946 = !DILocation(line: 290, column: 42, scope: !941, inlinedAt: !937)
!947 = !DILocalVariable(name: "file_name", arg: 1, scope: !948, file: !36, line: 272, type: !48)
!948 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !36, file: !36, line: 272, type: !949, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!64, !48}
!951 = !{!947, !952}
!952 = !DILocalVariable(name: "sep", scope: !953, file: !36, line: 276, type: !42)
!953 = distinct !DILexicalBlock(scope: !954, file: !36, line: 275, column: 5)
!954 = distinct !DILexicalBlock(scope: !948, file: !36, line: 274, column: 7)
!955 = !DILocation(line: 0, scope: !948, inlinedAt: !956)
!956 = distinct !DILocation(line: 290, column: 27, scope: !941, inlinedAt: !937)
!957 = !DILocation(line: 274, column: 7, scope: !954, inlinedAt: !956)
!958 = !DILocation(line: 274, column: 20, scope: !954, inlinedAt: !956)
!959 = !DILocation(line: 274, column: 7, scope: !948, inlinedAt: !956)
!960 = !DILocation(line: 276, column: 29, scope: !953, inlinedAt: !956)
!961 = !DILocation(line: 276, column: 42, scope: !953, inlinedAt: !956)
!962 = !DILocation(line: 276, column: 50, scope: !953, inlinedAt: !956)
!963 = !DILocation(line: 276, column: 18, scope: !953, inlinedAt: !956)
!964 = !DILocation(line: 0, scope: !953, inlinedAt: !956)
!965 = !DILocation(line: 290, column: 11, scope: !935, inlinedAt: !937)
!966 = !DILocation(line: 0, scope: !884, inlinedAt: !903)
!967 = !DILocation(line: 196, column: 19, scope: !884, inlinedAt: !903)
!968 = !{!969, !784, i64 0}
!969 = !{!"dirent", !784, i64 0, !784, i64 8, !564, i64 16, !441, i64 18, !441, i64 19}
!970 = !DILocation(line: 198, column: 7, scope: !884, inlinedAt: !903)
!971 = !DILocation(line: 198, column: 19, scope: !884, inlinedAt: !903)
!972 = !DILocation(line: 199, column: 15, scope: !973, inlinedAt: !903)
!973 = distinct !DILexicalBlock(scope: !884, file: !3, line: 199, column: 11)
!974 = !DILocation(line: 199, column: 38, scope: !973, inlinedAt: !903)
!975 = !DILocation(line: 201, column: 15, scope: !976, inlinedAt: !903)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 201, column: 15)
!977 = distinct !DILexicalBlock(scope: !973, file: !3, line: 200, column: 9)
!978 = !DILocation(line: 201, column: 43, scope: !976, inlinedAt: !903)
!979 = !DILocation(line: 201, column: 15, scope: !977, inlinedAt: !903)
!980 = distinct !{!980, !981, !982}
!981 = !DILocation(line: 176, column: 3, scope: !867, inlinedAt: !903)
!982 = !DILocation(line: 220, column: 5, scope: !867, inlinedAt: !903)
!983 = !DILocation(line: 206, column: 24, scope: !977, inlinedAt: !903)
!984 = !DILocation(line: 207, column: 9, scope: !977, inlinedAt: !903)
!985 = !DILocation(line: 209, column: 15, scope: !986, inlinedAt: !903)
!986 = distinct !DILexicalBlock(scope: !884, file: !3, line: 209, column: 11)
!987 = !DILocation(line: 209, column: 11, scope: !884, inlinedAt: !903)
!988 = distinct !{!988, !981, !982}
!989 = distinct !{!989, !981, !982}
!990 = !DILocation(line: 183, column: 15, scope: !897, inlinedAt: !903)
!991 = !DILocation(line: 183, column: 15, scope: !898, inlinedAt: !903)
!992 = !DILocation(line: 0, scope: !896, inlinedAt: !903)
!993 = !DILocation(line: 188, column: 21, scope: !896, inlinedAt: !903)
!994 = !DILocation(line: 222, column: 20, scope: !995, inlinedAt: !903)
!995 = distinct !DILexicalBlock(scope: !867, file: !3, line: 222, column: 7)
!996 = !DILocation(line: 216, column: 41, scope: !997, inlinedAt: !903)
!997 = distinct !DILexicalBlock(scope: !945, file: !3, line: 215, column: 9)
!998 = !DILocation(line: 216, column: 53, scope: !997, inlinedAt: !903)
!999 = !DILocalVariable(name: "p", arg: 1, scope: !1000, file: !3, line: 104, type: !666)
!1000 = distinct !DISubprogram(name: "file_name_prepend", scope: !3, file: !3, line: 104, type: !1001, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1003)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !666, !48, !45}
!1003 = !{!999, !1004, !1005, !1006, !1007, !1010}
!1004 = !DILocalVariable(name: "s", arg: 2, scope: !1000, file: !3, line: 104, type: !48)
!1005 = !DILocalVariable(name: "s_len", arg: 3, scope: !1000, file: !3, line: 104, type: !45)
!1006 = !DILocalVariable(name: "n_free", scope: !1000, file: !3, line: 106, type: !381)
!1007 = !DILocalVariable(name: "n_used", scope: !1008, file: !3, line: 113, type: !381)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 108, column: 5)
!1009 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 107, column: 7)
!1010 = !DILocalVariable(name: "buf", scope: !1008, file: !3, line: 114, type: !41)
!1011 = !DILocation(line: 0, scope: !1000, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 216, column: 11, scope: !997, inlinedAt: !903)
!1013 = !DILocation(line: 106, column: 21, scope: !1000, inlinedAt: !1012)
!1014 = !DILocation(line: 106, column: 32, scope: !1000, inlinedAt: !1012)
!1015 = !DILocation(line: 106, column: 27, scope: !1000, inlinedAt: !1012)
!1016 = !DILocation(line: 107, column: 18, scope: !1009, inlinedAt: !1012)
!1017 = !DILocation(line: 107, column: 14, scope: !1009, inlinedAt: !1012)
!1018 = !DILocation(line: 107, column: 7, scope: !1000, inlinedAt: !1012)
!1019 = !DILocation(line: 113, column: 25, scope: !1008, inlinedAt: !1012)
!1020 = !DILocation(line: 113, column: 33, scope: !1008, inlinedAt: !1012)
!1021 = !DILocation(line: 0, scope: !1008, inlinedAt: !1012)
!1022 = !DILocation(line: 114, column: 57, scope: !1008, inlinedAt: !1012)
!1023 = !DILocation(line: 114, column: 19, scope: !1008, inlinedAt: !1012)
!1024 = !DILocation(line: 115, column: 35, scope: !1008, inlinedAt: !1012)
!1025 = !DILocation(line: 115, column: 30, scope: !1008, inlinedAt: !1012)
!1026 = !DILocation(line: 115, column: 43, scope: !1008, inlinedAt: !1012)
!1027 = !DILocation(line: 115, column: 56, scope: !1008, inlinedAt: !1012)
!1028 = !DILocalVariable(name: "__dest", arg: 1, scope: !1029, file: !1030, line: 26, type: !1033)
!1029 = distinct !DISubprogram(name: "memcpy", scope: !1030, file: !1030, line: 26, type: !1031, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1034)
!1030 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!40, !1033, !646, !45}
!1033 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!1034 = !{!1028, !1035, !1036}
!1035 = !DILocalVariable(name: "__src", arg: 2, scope: !1029, file: !1030, line: 26, type: !646)
!1036 = !DILocalVariable(name: "__len", arg: 3, scope: !1029, file: !1030, line: 26, type: !45)
!1037 = !DILocation(line: 0, scope: !1029, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 115, column: 18, scope: !1008, inlinedAt: !1012)
!1039 = !DILocation(line: 29, column: 10, scope: !1029, inlinedAt: !1038)
!1040 = !DILocation(line: 115, column: 16, scope: !1008, inlinedAt: !1012)
!1041 = !DILocation(line: 116, column: 16, scope: !1008, inlinedAt: !1012)
!1042 = !DILocation(line: 116, column: 7, scope: !1008, inlinedAt: !1012)
!1043 = !DILocation(line: 117, column: 14, scope: !1008, inlinedAt: !1012)
!1044 = !DILocation(line: 120, column: 12, scope: !1000, inlinedAt: !1012)
!1045 = !DILocation(line: 118, column: 5, scope: !1008, inlinedAt: !1012)
!1046 = !DILocation(line: 121, column: 15, scope: !1000, inlinedAt: !1012)
!1047 = !DILocation(line: 122, column: 14, scope: !1000, inlinedAt: !1012)
!1048 = !DILocation(line: 122, column: 20, scope: !1000, inlinedAt: !1012)
!1049 = !DILocation(line: 0, scope: !1029, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 122, column: 3, scope: !1000, inlinedAt: !1012)
!1051 = !DILocation(line: 29, column: 10, scope: !1029, inlinedAt: !1050)
!1052 = !DILocation(line: 222, column: 23, scope: !995, inlinedAt: !903)
!1053 = !DILocation(line: 222, column: 39, scope: !995, inlinedAt: !903)
!1054 = !DILocation(line: 222, column: 7, scope: !867, inlinedAt: !903)
!1055 = !DILocation(line: 226, column: 7, scope: !1056, inlinedAt: !903)
!1056 = distinct !DILexicalBlock(scope: !995, file: !3, line: 223, column: 5)
!1057 = !DILocation(line: 231, column: 5, scope: !1058, inlinedAt: !903)
!1058 = distinct !DILexicalBlock(scope: !867, file: !3, line: 230, column: 8)
!1059 = !DILocation(line: 235, column: 13, scope: !867, inlinedAt: !903)
!1060 = !{i64 0, i64 8, !1061, i64 8, i64 8, !1061, i64 16, i64 4, !529, i64 20, i64 4, !529, i64 24, i64 4, !529, i64 28, i64 4, !529, i64 32, i64 8, !1061, i64 40, i64 8, !1061, i64 48, i64 8, !1061, i64 56, i64 4, !529, i64 60, i64 4, !529, i64 64, i64 8, !1061, i64 72, i64 8, !1061, i64 80, i64 8, !1061, i64 88, i64 8, !1061, i64 96, i64 8, !1061, i64 104, i64 8, !1061, i64 112, i64 8, !1061, i64 120, i64 8, !538}
!1061 = !{!784, !784, i64 0}
!1062 = !DILocation(line: 236, column: 1, scope: !867, inlinedAt: !903)
!1063 = distinct !{!1063, !1064, !1065}
!1064 = !DILocation(line: 276, column: 3, scope: !825, inlinedAt: !843)
!1065 = !DILocation(line: 283, column: 5, scope: !825, inlinedAt: !843)
!1066 = !DILocation(line: 286, column: 18, scope: !1067, inlinedAt: !843)
!1067 = distinct !DILexicalBlock(scope: !825, file: !3, line: 286, column: 7)
!1068 = !DILocation(line: 286, column: 7, scope: !1067, inlinedAt: !843)
!1069 = !DILocation(line: 286, column: 27, scope: !1067, inlinedAt: !843)
!1070 = !DILocation(line: 286, column: 7, scope: !825, inlinedAt: !843)
!1071 = !DILocation(line: 0, scope: !1000, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 287, column: 5, scope: !1067, inlinedAt: !843)
!1073 = !DILocation(line: 106, column: 32, scope: !1000, inlinedAt: !1072)
!1074 = !DILocation(line: 107, column: 14, scope: !1009, inlinedAt: !1072)
!1075 = !DILocation(line: 107, column: 7, scope: !1000, inlinedAt: !1072)
!1076 = !DILocation(line: 113, column: 25, scope: !1008, inlinedAt: !1072)
!1077 = !DILocation(line: 0, scope: !1008, inlinedAt: !1072)
!1078 = !DILocation(line: 114, column: 19, scope: !1008, inlinedAt: !1072)
!1079 = !DILocation(line: 115, column: 35, scope: !1008, inlinedAt: !1072)
!1080 = !DILocation(line: 115, column: 30, scope: !1008, inlinedAt: !1072)
!1081 = !DILocation(line: 115, column: 43, scope: !1008, inlinedAt: !1072)
!1082 = !DILocation(line: 115, column: 56, scope: !1008, inlinedAt: !1072)
!1083 = !DILocation(line: 0, scope: !1029, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 115, column: 18, scope: !1008, inlinedAt: !1072)
!1085 = !DILocation(line: 29, column: 10, scope: !1029, inlinedAt: !1084)
!1086 = !DILocation(line: 115, column: 16, scope: !1008, inlinedAt: !1072)
!1087 = !DILocation(line: 116, column: 16, scope: !1008, inlinedAt: !1072)
!1088 = !DILocation(line: 116, column: 7, scope: !1008, inlinedAt: !1072)
!1089 = !DILocation(line: 117, column: 14, scope: !1008, inlinedAt: !1072)
!1090 = !DILocation(line: 120, column: 12, scope: !1000, inlinedAt: !1072)
!1091 = !DILocation(line: 118, column: 5, scope: !1008, inlinedAt: !1072)
!1092 = !DILocation(line: 121, column: 15, scope: !1000, inlinedAt: !1072)
!1093 = !DILocation(line: 0, scope: !1029, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 122, column: 3, scope: !1000, inlinedAt: !1072)
!1095 = !DILocation(line: 381, column: 24, scope: !664)
!1096 = !DILocation(line: 287, column: 5, scope: !1067, inlinedAt: !843)
!1097 = !DILocation(line: 288, column: 1, scope: !825, inlinedAt: !843)
!1098 = !DILocation(line: 381, column: 7, scope: !664)
!1099 = !DILocalVariable(name: "p", arg: 1, scope: !1100, file: !3, line: 80, type: !666)
!1100 = distinct !DISubprogram(name: "file_name_free", scope: !3, file: !3, line: 80, type: !826, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1101)
!1101 = !{!1099}
!1102 = !DILocation(line: 0, scope: !1100, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 382, column: 7, scope: !664)
!1104 = !DILocation(line: 82, column: 12, scope: !1100, inlinedAt: !1103)
!1105 = !DILocation(line: 82, column: 3, scope: !1100, inlinedAt: !1103)
!1106 = !DILocation(line: 83, column: 3, scope: !1100, inlinedAt: !1103)
!1107 = !DILocation(line: 386, column: 1, scope: !649)
!1108 = !DISubprogram(name: "bindtextdomain", scope: !518, file: !518, line: 86, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!41, !48, !48}
!1111 = !DISubprogram(name: "textdomain", scope: !518, file: !518, line: 82, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1112 = !DISubprogram(name: "atexit", scope: !640, file: !640, line: 602, type: !1113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!43, !200}
!1115 = !DISubprogram(name: "getopt_long", scope: !141, file: !141, line: 66, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!43, !43, !1118, !48, !1120, !146}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1121 = !DISubprogram(name: "stat", scope: !1122, file: !1122, line: 205, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1122 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!43, !525, !1125}
!1125 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !870)
!1126 = !DISubprogram(name: "puts", scope: !174, file: !174, line: 661, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!43, !48}
!1129 = !DISubprogram(name: "opendir", scope: !877, file: !877, line: 134, type: !1130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!875, !48}
!1132 = distinct !DISubprogram(name: "nth_parent", scope: !3, file: !3, line: 127, type: !1133, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1135)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!41, !45}
!1135 = !{!1136, !1137, !1138, !1139}
!1136 = !DILocalVariable(name: "n", arg: 1, scope: !1132, file: !3, line: 127, type: !45)
!1137 = !DILocalVariable(name: "buf", scope: !1132, file: !3, line: 129, type: !41)
!1138 = !DILocalVariable(name: "p", scope: !1132, file: !3, line: 130, type: !41)
!1139 = !DILocalVariable(name: "i", scope: !1140, file: !3, line: 132, type: !45)
!1140 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 132, column: 3)
!1141 = !DILocation(line: 0, scope: !1132)
!1142 = !DILocation(line: 129, column: 15, scope: !1132)
!1143 = !DILocation(line: 0, scope: !1140)
!1144 = !DILocation(line: 132, column: 24, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 132, column: 3)
!1146 = !DILocation(line: 132, column: 3, scope: !1140)
!1147 = !DILocation(line: 137, column: 3, scope: !1132)
!1148 = !DILocation(line: 137, column: 9, scope: !1132)
!1149 = !DILocation(line: 138, column: 3, scope: !1132)
!1150 = !DILocation(line: 0, scope: !1029, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 134, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 133, column: 5)
!1153 = !DILocation(line: 29, column: 10, scope: !1029, inlinedAt: !1151)
!1154 = !DILocation(line: 135, column: 9, scope: !1152)
!1155 = !DILocation(line: 132, column: 30, scope: !1145)
!1156 = distinct !{!1156, !1146, !1157, !495}
!1157 = !DILocation(line: 136, column: 5, scope: !1140)
!1158 = !DISubprogram(name: "dirfd", scope: !877, file: !877, line: 224, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!43, !875}
!1161 = !DISubprogram(name: "fchdir", scope: !1162, file: !1162, line: 521, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1162 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!43, !43}
!1165 = !DISubprogram(name: "chdir", scope: !1162, file: !1162, line: 517, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1166 = !DISubprogram(name: "fstat", scope: !1122, file: !1122, line: 210, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!43, !43, !870}
!1169 = !DISubprogram(name: "readdir", scope: !877, file: !877, line: 162, type: !1170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!1172, !875}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!1173 = !DISubprogram(name: "lstat", scope: !1122, file: !1122, line: 313, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1174 = !DISubprogram(name: "closedir", scope: !877, file: !877, line: 149, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1175 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !158, file: !158, line: 50, type: !454, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !1176)
!1176 = !{!1177}
!1177 = !DILocalVariable(name: "file", arg: 1, scope: !1175, file: !158, line: 50, type: !48)
!1178 = !DILocation(line: 0, scope: !1175)
!1179 = !DILocation(line: 52, column: 13, scope: !1175)
!1180 = !DILocation(line: 53, column: 1, scope: !1175)
!1181 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !158, file: !158, line: 87, type: !1182, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !1184)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !64}
!1184 = !{!1185}
!1185 = !DILocalVariable(name: "ignore", arg: 1, scope: !1181, file: !158, line: 87, type: !64)
!1186 = !DILocation(line: 0, scope: !1181)
!1187 = !DILocation(line: 89, column: 16, scope: !1181)
!1188 = !{!1189, !1189, i64 0}
!1189 = !{!"_Bool", !441, i64 0}
!1190 = !DILocation(line: 90, column: 1, scope: !1181)
!1191 = distinct !DISubprogram(name: "close_stdout", scope: !158, file: !158, line: 116, type: !201, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !1192)
!1192 = !{!1193}
!1193 = !DILocalVariable(name: "write_error", scope: !1194, file: !158, line: 121, type: !48)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !158, line: 120, column: 5)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !158, line: 118, column: 7)
!1196 = !DILocation(line: 118, column: 21, scope: !1195)
!1197 = !DILocation(line: 118, column: 7, scope: !1195)
!1198 = !DILocation(line: 118, column: 29, scope: !1195)
!1199 = !DILocation(line: 119, column: 7, scope: !1195)
!1200 = !DILocation(line: 119, column: 12, scope: !1195)
!1201 = !{i8 0, i8 2}
!1202 = !DILocation(line: 119, column: 25, scope: !1195)
!1203 = !DILocation(line: 119, column: 28, scope: !1195)
!1204 = !DILocation(line: 119, column: 34, scope: !1195)
!1205 = !DILocation(line: 118, column: 7, scope: !1191)
!1206 = !DILocation(line: 121, column: 33, scope: !1194)
!1207 = !DILocation(line: 0, scope: !1194)
!1208 = !DILocation(line: 122, column: 11, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1194, file: !158, line: 122, column: 11)
!1210 = !DILocation(line: 0, scope: !1209)
!1211 = !DILocation(line: 122, column: 11, scope: !1194)
!1212 = !DILocation(line: 123, column: 9, scope: !1209)
!1213 = !DILocation(line: 126, column: 9, scope: !1209)
!1214 = !DILocation(line: 128, column: 14, scope: !1194)
!1215 = !DILocation(line: 128, column: 7, scope: !1194)
!1216 = !DILocation(line: 133, column: 42, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1191, file: !158, line: 133, column: 7)
!1218 = !DILocation(line: 133, column: 28, scope: !1217)
!1219 = !DILocation(line: 133, column: 50, scope: !1217)
!1220 = !DILocation(line: 133, column: 7, scope: !1191)
!1221 = !DILocation(line: 134, column: 12, scope: !1217)
!1222 = !DILocation(line: 134, column: 5, scope: !1217)
!1223 = !DILocation(line: 135, column: 1, scope: !1191)
!1224 = distinct !DISubprogram(name: "verror", scope: !165, file: !165, line: 251, type: !1225, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !43, !43, !48, !173}
!1227 = !{!1228, !1229, !1230, !1231}
!1228 = !DILocalVariable(name: "status", arg: 1, scope: !1224, file: !165, line: 251, type: !43)
!1229 = !DILocalVariable(name: "errnum", arg: 2, scope: !1224, file: !165, line: 251, type: !43)
!1230 = !DILocalVariable(name: "message", arg: 3, scope: !1224, file: !165, line: 251, type: !48)
!1231 = !DILocalVariable(name: "args", arg: 4, scope: !1224, file: !165, line: 251, type: !173)
!1232 = !DILocation(line: 0, scope: !1224)
!1233 = !DILocation(line: 251, column: 1, scope: !1224)
!1234 = !DILocation(line: 261, column: 3, scope: !1224)
!1235 = !DILocation(line: 265, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1224, file: !165, line: 265, column: 7)
!1237 = !DILocation(line: 265, column: 7, scope: !1224)
!1238 = !DILocation(line: 266, column: 5, scope: !1236)
!1239 = !DILocation(line: 272, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1236, file: !165, line: 268, column: 5)
!1241 = !DILocation(line: 276, column: 3, scope: !1224)
!1242 = !{i64 0, i64 8, !439, i64 8, i64 8, !439, i64 16, i64 8, !439, i64 24, i64 4, !529, i64 28, i64 4, !529}
!1243 = !DILocation(line: 282, column: 1, scope: !1224)
!1244 = distinct !DISubprogram(name: "flush_stdout", scope: !165, file: !165, line: 163, type: !201, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1245)
!1245 = !{!1246}
!1246 = !DILocalVariable(name: "stdout_fd", scope: !1244, file: !165, line: 166, type: !43)
!1247 = !DILocation(line: 0, scope: !1244)
!1248 = !DILocalVariable(name: "fd", arg: 1, scope: !1249, file: !165, line: 145, type: !43)
!1249 = distinct !DISubprogram(name: "is_open", scope: !165, file: !165, line: 145, type: !1163, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1250)
!1250 = !{!1248}
!1251 = !DILocation(line: 0, scope: !1249, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 182, column: 25, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1244, file: !165, line: 182, column: 7)
!1254 = !DILocation(line: 157, column: 15, scope: !1249, inlinedAt: !1252)
!1255 = !DILocation(line: 182, column: 25, scope: !1253)
!1256 = !DILocation(line: 182, column: 7, scope: !1244)
!1257 = !DILocation(line: 184, column: 5, scope: !1253)
!1258 = !DILocation(line: 185, column: 1, scope: !1244)
!1259 = distinct !DISubprogram(name: "error_tail", scope: !165, file: !165, line: 219, type: !1225, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1260)
!1260 = !{!1261, !1262, !1263, !1264}
!1261 = !DILocalVariable(name: "status", arg: 1, scope: !1259, file: !165, line: 219, type: !43)
!1262 = !DILocalVariable(name: "errnum", arg: 2, scope: !1259, file: !165, line: 219, type: !43)
!1263 = !DILocalVariable(name: "message", arg: 3, scope: !1259, file: !165, line: 219, type: !48)
!1264 = !DILocalVariable(name: "args", arg: 4, scope: !1259, file: !165, line: 219, type: !173)
!1265 = !DILocation(line: 0, scope: !1259)
!1266 = !DILocation(line: 219, column: 1, scope: !1259)
!1267 = !DILocation(line: 229, column: 13, scope: !1259)
!1268 = !DILocation(line: 229, column: 3, scope: !1259)
!1269 = !DILocalVariable(name: "__stream", arg: 1, scope: !1270, file: !1271, line: 132, type: !1274)
!1270 = distinct !DISubprogram(name: "vfprintf", scope: !1271, file: !1271, line: 132, type: !1272, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1309)
!1271 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!43, !1274, !525, !175}
!1274 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1277, file: !81, line: 51, baseType: !43, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1277, file: !81, line: 54, baseType: !41, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1277, file: !81, line: 55, baseType: !41, size: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1277, file: !81, line: 56, baseType: !41, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1277, file: !81, line: 57, baseType: !41, size: 64, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1277, file: !81, line: 58, baseType: !41, size: 64, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1277, file: !81, line: 59, baseType: !41, size: 64, offset: 384)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1277, file: !81, line: 60, baseType: !41, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1277, file: !81, line: 61, baseType: !41, size: 64, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1277, file: !81, line: 64, baseType: !41, size: 64, offset: 576)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1277, file: !81, line: 65, baseType: !41, size: 64, offset: 640)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1277, file: !81, line: 66, baseType: !41, size: 64, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1277, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1277, file: !81, line: 70, baseType: !1293, size: 64, offset: 832)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1277, file: !81, line: 72, baseType: !43, size: 32, offset: 896)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1277, file: !81, line: 73, baseType: !43, size: 32, offset: 928)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1277, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1277, file: !81, line: 77, baseType: !44, size: 16, offset: 1024)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1277, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1277, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1277, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1277, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1277, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1277, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1277, file: !81, line: 93, baseType: !1293, size: 64, offset: 1344)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1277, file: !81, line: 94, baseType: !40, size: 64, offset: 1408)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1277, file: !81, line: 95, baseType: !45, size: 64, offset: 1472)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1277, file: !81, line: 96, baseType: !43, size: 32, offset: 1536)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1277, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!1309 = !{!1269, !1310, !1311}
!1310 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1270, file: !1271, line: 133, type: !525)
!1311 = !DILocalVariable(name: "__ap", arg: 3, scope: !1270, file: !1271, line: 133, type: !175)
!1312 = !DILocation(line: 0, scope: !1270, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 229, column: 3, scope: !1259)
!1314 = !DILocation(line: 135, column: 10, scope: !1270, inlinedAt: !1313)
!1315 = !{!1316, !1318}
!1316 = distinct !{!1316, !1317, !"vfprintf.inline: argument 0"}
!1317 = distinct !{!1317, !"vfprintf.inline"}
!1318 = distinct !{!1318, !1317, !"vfprintf.inline: argument 1"}
!1319 = !DILocation(line: 232, column: 3, scope: !1259)
!1320 = !DILocation(line: 233, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1259, file: !165, line: 233, column: 7)
!1322 = !DILocation(line: 233, column: 7, scope: !1259)
!1323 = !DILocalVariable(name: "errnum", arg: 1, scope: !1324, file: !165, line: 188, type: !43)
!1324 = distinct !DISubprogram(name: "print_errno_message", scope: !165, file: !165, line: 188, type: !429, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1325)
!1325 = !{!1323, !1326, !1327}
!1326 = !DILocalVariable(name: "s", scope: !1324, file: !165, line: 190, type: !48)
!1327 = !DILocalVariable(name: "errbuf", scope: !1324, file: !165, line: 193, type: !1328)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8192, elements: !1329)
!1329 = !{!1330}
!1330 = !DISubrange(count: 1024)
!1331 = !DILocation(line: 0, scope: !1324, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 234, column: 5, scope: !1321)
!1333 = !DILocation(line: 193, column: 3, scope: !1324, inlinedAt: !1332)
!1334 = !DILocation(line: 193, column: 8, scope: !1324, inlinedAt: !1332)
!1335 = !DILocation(line: 195, column: 7, scope: !1324, inlinedAt: !1332)
!1336 = !DILocation(line: 207, column: 9, scope: !1337, inlinedAt: !1332)
!1337 = distinct !DILexicalBlock(scope: !1324, file: !165, line: 207, column: 7)
!1338 = !DILocation(line: 207, column: 7, scope: !1324, inlinedAt: !1332)
!1339 = !DILocation(line: 208, column: 9, scope: !1337, inlinedAt: !1332)
!1340 = !DILocation(line: 208, column: 5, scope: !1337, inlinedAt: !1332)
!1341 = !DILocation(line: 214, column: 3, scope: !1324, inlinedAt: !1332)
!1342 = !DILocation(line: 216, column: 1, scope: !1324, inlinedAt: !1332)
!1343 = !DILocation(line: 234, column: 5, scope: !1321)
!1344 = !DILocation(line: 238, column: 3, scope: !1259)
!1345 = !DILocalVariable(name: "__c", arg: 1, scope: !1346, file: !1347, line: 101, type: !43)
!1346 = distinct !DISubprogram(name: "putc_unlocked", scope: !1347, file: !1347, line: 101, type: !1348, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1350)
!1347 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!43, !43, !1275}
!1350 = !{!1345, !1351}
!1351 = !DILocalVariable(name: "__stream", arg: 2, scope: !1346, file: !1347, line: 101, type: !1275)
!1352 = !DILocation(line: 0, scope: !1346, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 238, column: 3, scope: !1259)
!1354 = !DILocation(line: 103, column: 10, scope: !1346, inlinedAt: !1353)
!1355 = !{!1356, !440, i64 40}
!1356 = !{!"_IO_FILE", !530, i64 0, !440, i64 8, !440, i64 16, !440, i64 24, !440, i64 32, !440, i64 40, !440, i64 48, !440, i64 56, !440, i64 64, !440, i64 72, !440, i64 80, !440, i64 88, !440, i64 96, !440, i64 104, !530, i64 112, !530, i64 116, !784, i64 120, !564, i64 128, !441, i64 130, !441, i64 131, !440, i64 136, !784, i64 144, !440, i64 152, !440, i64 160, !440, i64 168, !440, i64 176, !784, i64 184, !530, i64 192, !441, i64 196}
!1357 = !{!1356, !440, i64 48}
!1358 = !{!"branch_weights", i32 2000, i32 1}
!1359 = !DILocation(line: 240, column: 3, scope: !1259)
!1360 = !DILocation(line: 241, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1259, file: !165, line: 241, column: 7)
!1362 = !DILocation(line: 241, column: 7, scope: !1259)
!1363 = !DILocation(line: 242, column: 5, scope: !1361)
!1364 = !DILocation(line: 243, column: 1, scope: !1259)
!1365 = !DISubprogram(name: "strerror_r", scope: !1366, file: !1366, line: 444, type: !1367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1366 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!41, !43, !41, !45}
!1369 = !DISubprogram(name: "fflush_unlocked", scope: !174, file: !174, line: 239, type: !1370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!43, !1275}
!1372 = !DISubprogram(name: "fcntl", scope: !1373, file: !1373, line: 149, type: !1374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1373 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!43, !43, !43, null}
!1376 = distinct !DISubprogram(name: "error", scope: !165, file: !165, line: 285, type: !1377, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1379)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !43, !43, !48, null}
!1379 = !{!1380, !1381, !1382, !1383}
!1380 = !DILocalVariable(name: "status", arg: 1, scope: !1376, file: !165, line: 285, type: !43)
!1381 = !DILocalVariable(name: "errnum", arg: 2, scope: !1376, file: !165, line: 285, type: !43)
!1382 = !DILocalVariable(name: "message", arg: 3, scope: !1376, file: !165, line: 285, type: !48)
!1383 = !DILocalVariable(name: "ap", scope: !1376, file: !165, line: 287, type: !173)
!1384 = !DILocation(line: 0, scope: !1376)
!1385 = !DILocation(line: 287, column: 3, scope: !1376)
!1386 = !DILocation(line: 287, column: 11, scope: !1376)
!1387 = !DILocation(line: 288, column: 3, scope: !1376)
!1388 = !DILocation(line: 289, column: 3, scope: !1376)
!1389 = !DILocation(line: 290, column: 3, scope: !1376)
!1390 = !DILocation(line: 291, column: 1, scope: !1376)
!1391 = !DILocation(line: 0, scope: !170)
!1392 = !DILocation(line: 298, column: 1, scope: !170)
!1393 = !DILocation(line: 302, column: 7, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !170, file: !165, line: 302, column: 7)
!1395 = !DILocation(line: 302, column: 7, scope: !170)
!1396 = !DILocation(line: 307, column: 11, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !165, line: 307, column: 11)
!1398 = distinct !DILexicalBlock(scope: !1394, file: !165, line: 303, column: 5)
!1399 = !DILocation(line: 307, column: 27, scope: !1397)
!1400 = !DILocation(line: 308, column: 11, scope: !1397)
!1401 = !DILocation(line: 308, column: 28, scope: !1397)
!1402 = !DILocation(line: 308, column: 25, scope: !1397)
!1403 = !DILocation(line: 309, column: 15, scope: !1397)
!1404 = !DILocation(line: 309, column: 33, scope: !1397)
!1405 = !DILocation(line: 310, column: 19, scope: !1397)
!1406 = !DILocation(line: 311, column: 22, scope: !1397)
!1407 = !DILocation(line: 311, column: 56, scope: !1397)
!1408 = !DILocation(line: 307, column: 11, scope: !1398)
!1409 = !DILocation(line: 316, column: 21, scope: !1398)
!1410 = !DILocation(line: 317, column: 23, scope: !1398)
!1411 = !DILocation(line: 318, column: 5, scope: !1398)
!1412 = !DILocation(line: 327, column: 3, scope: !170)
!1413 = !DILocation(line: 331, column: 7, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !170, file: !165, line: 331, column: 7)
!1415 = !DILocation(line: 331, column: 7, scope: !170)
!1416 = !DILocation(line: 332, column: 5, scope: !1414)
!1417 = !DILocation(line: 338, column: 7, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !165, line: 334, column: 5)
!1419 = !DILocation(line: 346, column: 3, scope: !170)
!1420 = !DILocation(line: 350, column: 3, scope: !170)
!1421 = !DILocation(line: 356, column: 1, scope: !170)
!1422 = distinct !DISubprogram(name: "error_at_line", scope: !165, file: !165, line: 359, type: !1423, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1425)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !43, !43, !48, !7, !48, null}
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431}
!1426 = !DILocalVariable(name: "status", arg: 1, scope: !1422, file: !165, line: 359, type: !43)
!1427 = !DILocalVariable(name: "errnum", arg: 2, scope: !1422, file: !165, line: 359, type: !43)
!1428 = !DILocalVariable(name: "file_name", arg: 3, scope: !1422, file: !165, line: 359, type: !48)
!1429 = !DILocalVariable(name: "line_number", arg: 4, scope: !1422, file: !165, line: 360, type: !7)
!1430 = !DILocalVariable(name: "message", arg: 5, scope: !1422, file: !165, line: 360, type: !48)
!1431 = !DILocalVariable(name: "ap", scope: !1422, file: !165, line: 362, type: !173)
!1432 = !DILocation(line: 0, scope: !1422)
!1433 = !DILocation(line: 362, column: 3, scope: !1422)
!1434 = !DILocation(line: 362, column: 11, scope: !1422)
!1435 = !DILocation(line: 363, column: 3, scope: !1422)
!1436 = !DILocation(line: 364, column: 3, scope: !1422)
!1437 = !DILocation(line: 366, column: 3, scope: !1422)
!1438 = !DILocation(line: 367, column: 1, scope: !1422)
!1439 = distinct !DISubprogram(name: "getprogname", scope: !351, file: !351, line: 54, type: !698, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !521)
!1440 = !DILocation(line: 58, column: 10, scope: !1439)
!1441 = !DILocation(line: 58, column: 3, scope: !1439)
!1442 = distinct !DISubprogram(name: "set_program_name", scope: !206, file: !206, line: 37, type: !454, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1443)
!1443 = !{!1444, !1445, !1446}
!1444 = !DILocalVariable(name: "argv0", arg: 1, scope: !1442, file: !206, line: 37, type: !48)
!1445 = !DILocalVariable(name: "slash", scope: !1442, file: !206, line: 44, type: !48)
!1446 = !DILocalVariable(name: "base", scope: !1442, file: !206, line: 45, type: !48)
!1447 = !DILocation(line: 0, scope: !1442)
!1448 = !DILocation(line: 44, column: 23, scope: !1442)
!1449 = !DILocation(line: 45, column: 22, scope: !1442)
!1450 = !DILocation(line: 46, column: 17, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1442, file: !206, line: 46, column: 7)
!1452 = !DILocation(line: 46, column: 9, scope: !1451)
!1453 = !DILocation(line: 46, column: 25, scope: !1451)
!1454 = !DILocation(line: 46, column: 40, scope: !1451)
!1455 = !DILocalVariable(name: "__s1", arg: 1, scope: !1456, file: !479, line: 974, type: !647)
!1456 = distinct !DISubprogram(name: "memeq", scope: !479, file: !479, line: 974, type: !1457, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1459)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!64, !647, !647, !45}
!1459 = !{!1455, !1460, !1461}
!1460 = !DILocalVariable(name: "__s2", arg: 2, scope: !1456, file: !479, line: 974, type: !647)
!1461 = !DILocalVariable(name: "__n", arg: 3, scope: !1456, file: !479, line: 974, type: !45)
!1462 = !DILocation(line: 0, scope: !1456, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 46, column: 28, scope: !1451)
!1464 = !DILocation(line: 976, column: 11, scope: !1456, inlinedAt: !1463)
!1465 = !DILocation(line: 976, column: 10, scope: !1456, inlinedAt: !1463)
!1466 = !DILocation(line: 46, column: 7, scope: !1442)
!1467 = !DILocation(line: 49, column: 11, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !206, line: 49, column: 11)
!1469 = distinct !DILexicalBlock(scope: !1451, file: !206, line: 47, column: 5)
!1470 = !DILocation(line: 49, column: 36, scope: !1468)
!1471 = !DILocation(line: 49, column: 11, scope: !1469)
!1472 = !DILocation(line: 65, column: 16, scope: !1442)
!1473 = !DILocation(line: 71, column: 27, scope: !1442)
!1474 = !DILocation(line: 74, column: 33, scope: !1442)
!1475 = !DILocation(line: 76, column: 1, scope: !1442)
!1476 = !DILocation(line: 0, scope: !211)
!1477 = !DILocation(line: 40, column: 29, scope: !211)
!1478 = !DILocation(line: 41, column: 19, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !211, file: !212, line: 41, column: 7)
!1480 = !DILocation(line: 41, column: 7, scope: !211)
!1481 = !DILocation(line: 47, column: 3, scope: !211)
!1482 = !DILocation(line: 48, column: 3, scope: !211)
!1483 = !DILocation(line: 48, column: 13, scope: !211)
!1484 = !DILocalVariable(name: "ps", arg: 1, scope: !1485, file: !1486, line: 1135, type: !1489)
!1485 = distinct !DISubprogram(name: "mbszero", scope: !1486, file: !1486, line: 1135, type: !1487, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !1490)
!1486 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1487 = !DISubroutineType(types: !1488)
!1488 = !{null, !1489}
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!1490 = !{!1484}
!1491 = !DILocation(line: 0, scope: !1485, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 48, column: 18, scope: !211)
!1493 = !DILocalVariable(name: "__dest", arg: 1, scope: !1494, file: !1030, line: 57, type: !40)
!1494 = distinct !DISubprogram(name: "memset", scope: !1030, file: !1030, line: 57, type: !1495, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !1497)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!40, !40, !43, !45}
!1497 = !{!1493, !1498, !1499}
!1498 = !DILocalVariable(name: "__ch", arg: 2, scope: !1494, file: !1030, line: 57, type: !43)
!1499 = !DILocalVariable(name: "__len", arg: 3, scope: !1494, file: !1030, line: 57, type: !45)
!1500 = !DILocation(line: 0, scope: !1494, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 1137, column: 3, scope: !1485, inlinedAt: !1492)
!1502 = !DILocation(line: 59, column: 10, scope: !1494, inlinedAt: !1501)
!1503 = !DILocation(line: 49, column: 7, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !211, file: !212, line: 49, column: 7)
!1505 = !DILocation(line: 49, column: 39, scope: !1504)
!1506 = !DILocation(line: 49, column: 44, scope: !1504)
!1507 = !DILocation(line: 54, column: 1, scope: !211)
!1508 = !DISubprogram(name: "mbrtoc32", scope: !223, file: !223, line: 57, type: !1509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!45, !1511, !525, !45, !1513}
!1511 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1512)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1489)
!1514 = distinct !DISubprogram(name: "clone_quoting_options", scope: !248, file: !248, line: 113, type: !1515, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1518)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!1517, !1517}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1518 = !{!1519, !1520, !1521}
!1519 = !DILocalVariable(name: "o", arg: 1, scope: !1514, file: !248, line: 113, type: !1517)
!1520 = !DILocalVariable(name: "saved_errno", scope: !1514, file: !248, line: 115, type: !43)
!1521 = !DILocalVariable(name: "p", scope: !1514, file: !248, line: 116, type: !1517)
!1522 = !DILocation(line: 0, scope: !1514)
!1523 = !DILocation(line: 115, column: 21, scope: !1514)
!1524 = !DILocation(line: 116, column: 40, scope: !1514)
!1525 = !DILocation(line: 116, column: 31, scope: !1514)
!1526 = !DILocation(line: 118, column: 9, scope: !1514)
!1527 = !DILocation(line: 119, column: 3, scope: !1514)
!1528 = distinct !DISubprogram(name: "get_quoting_style", scope: !248, file: !248, line: 124, type: !1529, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1533)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!21, !1531}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!1533 = !{!1534}
!1534 = !DILocalVariable(name: "o", arg: 1, scope: !1528, file: !248, line: 124, type: !1531)
!1535 = !DILocation(line: 0, scope: !1528)
!1536 = !DILocation(line: 126, column: 11, scope: !1528)
!1537 = !DILocation(line: 126, column: 46, scope: !1528)
!1538 = !{!1539, !441, i64 0}
!1539 = !{!"quoting_options", !441, i64 0, !530, i64 4, !441, i64 8, !440, i64 40, !440, i64 48}
!1540 = !DILocation(line: 126, column: 3, scope: !1528)
!1541 = distinct !DISubprogram(name: "set_quoting_style", scope: !248, file: !248, line: 132, type: !1542, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1544)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{null, !1517, !21}
!1544 = !{!1545, !1546}
!1545 = !DILocalVariable(name: "o", arg: 1, scope: !1541, file: !248, line: 132, type: !1517)
!1546 = !DILocalVariable(name: "s", arg: 2, scope: !1541, file: !248, line: 132, type: !21)
!1547 = !DILocation(line: 0, scope: !1541)
!1548 = !DILocation(line: 134, column: 4, scope: !1541)
!1549 = !DILocation(line: 134, column: 39, scope: !1541)
!1550 = !DILocation(line: 134, column: 45, scope: !1541)
!1551 = !DILocation(line: 135, column: 1, scope: !1541)
!1552 = distinct !DISubprogram(name: "set_char_quoting", scope: !248, file: !248, line: 143, type: !1553, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1555)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!43, !1517, !42, !43}
!1555 = !{!1556, !1557, !1558, !1559, !1560, !1562, !1563}
!1556 = !DILocalVariable(name: "o", arg: 1, scope: !1552, file: !248, line: 143, type: !1517)
!1557 = !DILocalVariable(name: "c", arg: 2, scope: !1552, file: !248, line: 143, type: !42)
!1558 = !DILocalVariable(name: "i", arg: 3, scope: !1552, file: !248, line: 143, type: !43)
!1559 = !DILocalVariable(name: "uc", scope: !1552, file: !248, line: 145, type: !50)
!1560 = !DILocalVariable(name: "p", scope: !1552, file: !248, line: 146, type: !1561)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1562 = !DILocalVariable(name: "shift", scope: !1552, file: !248, line: 148, type: !43)
!1563 = !DILocalVariable(name: "r", scope: !1552, file: !248, line: 149, type: !7)
!1564 = !DILocation(line: 0, scope: !1552)
!1565 = !DILocation(line: 147, column: 6, scope: !1552)
!1566 = !DILocation(line: 147, column: 62, scope: !1552)
!1567 = !DILocation(line: 147, column: 57, scope: !1552)
!1568 = !DILocation(line: 148, column: 15, scope: !1552)
!1569 = !DILocation(line: 149, column: 21, scope: !1552)
!1570 = !DILocation(line: 149, column: 24, scope: !1552)
!1571 = !DILocation(line: 149, column: 34, scope: !1552)
!1572 = !DILocation(line: 150, column: 13, scope: !1552)
!1573 = !DILocation(line: 150, column: 19, scope: !1552)
!1574 = !DILocation(line: 150, column: 24, scope: !1552)
!1575 = !DILocation(line: 150, column: 6, scope: !1552)
!1576 = !DILocation(line: 151, column: 3, scope: !1552)
!1577 = distinct !DISubprogram(name: "set_quoting_flags", scope: !248, file: !248, line: 159, type: !1578, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1580)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!43, !1517, !43}
!1580 = !{!1581, !1582, !1583}
!1581 = !DILocalVariable(name: "o", arg: 1, scope: !1577, file: !248, line: 159, type: !1517)
!1582 = !DILocalVariable(name: "i", arg: 2, scope: !1577, file: !248, line: 159, type: !43)
!1583 = !DILocalVariable(name: "r", scope: !1577, file: !248, line: 163, type: !43)
!1584 = !DILocation(line: 0, scope: !1577)
!1585 = !DILocation(line: 161, column: 8, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1577, file: !248, line: 161, column: 7)
!1587 = !DILocation(line: 161, column: 7, scope: !1577)
!1588 = !DILocation(line: 163, column: 14, scope: !1577)
!1589 = !{!1539, !530, i64 4}
!1590 = !DILocation(line: 164, column: 12, scope: !1577)
!1591 = !DILocation(line: 165, column: 3, scope: !1577)
!1592 = distinct !DISubprogram(name: "set_custom_quoting", scope: !248, file: !248, line: 169, type: !1593, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !1517, !48, !48}
!1595 = !{!1596, !1597, !1598}
!1596 = !DILocalVariable(name: "o", arg: 1, scope: !1592, file: !248, line: 169, type: !1517)
!1597 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1592, file: !248, line: 170, type: !48)
!1598 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1592, file: !248, line: 170, type: !48)
!1599 = !DILocation(line: 0, scope: !1592)
!1600 = !DILocation(line: 172, column: 8, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1592, file: !248, line: 172, column: 7)
!1602 = !DILocation(line: 172, column: 7, scope: !1592)
!1603 = !DILocation(line: 174, column: 6, scope: !1592)
!1604 = !DILocation(line: 174, column: 12, scope: !1592)
!1605 = !DILocation(line: 175, column: 8, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1592, file: !248, line: 175, column: 7)
!1607 = !DILocation(line: 175, column: 19, scope: !1606)
!1608 = !DILocation(line: 176, column: 5, scope: !1606)
!1609 = !DILocation(line: 177, column: 6, scope: !1592)
!1610 = !DILocation(line: 177, column: 17, scope: !1592)
!1611 = !{!1539, !440, i64 40}
!1612 = !DILocation(line: 178, column: 6, scope: !1592)
!1613 = !DILocation(line: 178, column: 18, scope: !1592)
!1614 = !{!1539, !440, i64 48}
!1615 = !DILocation(line: 179, column: 1, scope: !1592)
!1616 = distinct !DISubprogram(name: "quotearg_buffer", scope: !248, file: !248, line: 774, type: !1617, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1619)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!45, !41, !45, !48, !45, !1531}
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627}
!1620 = !DILocalVariable(name: "buffer", arg: 1, scope: !1616, file: !248, line: 774, type: !41)
!1621 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1616, file: !248, line: 774, type: !45)
!1622 = !DILocalVariable(name: "arg", arg: 3, scope: !1616, file: !248, line: 775, type: !48)
!1623 = !DILocalVariable(name: "argsize", arg: 4, scope: !1616, file: !248, line: 775, type: !45)
!1624 = !DILocalVariable(name: "o", arg: 5, scope: !1616, file: !248, line: 776, type: !1531)
!1625 = !DILocalVariable(name: "p", scope: !1616, file: !248, line: 778, type: !1531)
!1626 = !DILocalVariable(name: "saved_errno", scope: !1616, file: !248, line: 779, type: !43)
!1627 = !DILocalVariable(name: "r", scope: !1616, file: !248, line: 780, type: !45)
!1628 = !DILocation(line: 0, scope: !1616)
!1629 = !DILocation(line: 778, column: 37, scope: !1616)
!1630 = !DILocation(line: 779, column: 21, scope: !1616)
!1631 = !DILocation(line: 781, column: 43, scope: !1616)
!1632 = !DILocation(line: 781, column: 53, scope: !1616)
!1633 = !DILocation(line: 781, column: 60, scope: !1616)
!1634 = !DILocation(line: 782, column: 43, scope: !1616)
!1635 = !DILocation(line: 782, column: 58, scope: !1616)
!1636 = !DILocation(line: 780, column: 14, scope: !1616)
!1637 = !DILocation(line: 783, column: 9, scope: !1616)
!1638 = !DILocation(line: 784, column: 3, scope: !1616)
!1639 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !248, file: !248, line: 251, type: !1640, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1644)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!45, !41, !45, !48, !45, !21, !43, !1642, !48, !48}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1669, !1671, !1674, !1675, !1676, !1677, !1680, !1681, !1684, !1688, !1689, !1697, !1700, !1701, !1703, !1704, !1705, !1706}
!1645 = !DILocalVariable(name: "buffer", arg: 1, scope: !1639, file: !248, line: 251, type: !41)
!1646 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1639, file: !248, line: 251, type: !45)
!1647 = !DILocalVariable(name: "arg", arg: 3, scope: !1639, file: !248, line: 252, type: !48)
!1648 = !DILocalVariable(name: "argsize", arg: 4, scope: !1639, file: !248, line: 252, type: !45)
!1649 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1639, file: !248, line: 253, type: !21)
!1650 = !DILocalVariable(name: "flags", arg: 6, scope: !1639, file: !248, line: 253, type: !43)
!1651 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1639, file: !248, line: 254, type: !1642)
!1652 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1639, file: !248, line: 255, type: !48)
!1653 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1639, file: !248, line: 256, type: !48)
!1654 = !DILocalVariable(name: "unibyte_locale", scope: !1639, file: !248, line: 258, type: !64)
!1655 = !DILocalVariable(name: "len", scope: !1639, file: !248, line: 260, type: !45)
!1656 = !DILocalVariable(name: "orig_buffersize", scope: !1639, file: !248, line: 261, type: !45)
!1657 = !DILocalVariable(name: "quote_string", scope: !1639, file: !248, line: 262, type: !48)
!1658 = !DILocalVariable(name: "quote_string_len", scope: !1639, file: !248, line: 263, type: !45)
!1659 = !DILocalVariable(name: "backslash_escapes", scope: !1639, file: !248, line: 264, type: !64)
!1660 = !DILocalVariable(name: "elide_outer_quotes", scope: !1639, file: !248, line: 265, type: !64)
!1661 = !DILocalVariable(name: "encountered_single_quote", scope: !1639, file: !248, line: 266, type: !64)
!1662 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1639, file: !248, line: 267, type: !64)
!1663 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1639, file: !248, line: 309, type: !64)
!1664 = !DILocalVariable(name: "lq", scope: !1665, file: !248, line: 361, type: !48)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !248, line: 361, column: 11)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !248, line: 360, column: 13)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !248, line: 333, column: 7)
!1668 = distinct !DILexicalBlock(scope: !1639, file: !248, line: 312, column: 5)
!1669 = !DILocalVariable(name: "i", scope: !1670, file: !248, line: 395, type: !45)
!1670 = distinct !DILexicalBlock(scope: !1639, file: !248, line: 395, column: 3)
!1671 = !DILocalVariable(name: "is_right_quote", scope: !1672, file: !248, line: 397, type: !64)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !248, line: 396, column: 5)
!1673 = distinct !DILexicalBlock(scope: !1670, file: !248, line: 395, column: 3)
!1674 = !DILocalVariable(name: "escaping", scope: !1672, file: !248, line: 398, type: !64)
!1675 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1672, file: !248, line: 399, type: !64)
!1676 = !DILocalVariable(name: "c", scope: !1672, file: !248, line: 417, type: !50)
!1677 = !DILocalVariable(name: "m", scope: !1678, file: !248, line: 598, type: !45)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !248, line: 596, column: 11)
!1679 = distinct !DILexicalBlock(scope: !1672, file: !248, line: 419, column: 9)
!1680 = !DILocalVariable(name: "printable", scope: !1678, file: !248, line: 600, type: !64)
!1681 = !DILocalVariable(name: "mbs", scope: !1682, file: !248, line: 609, type: !293)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !248, line: 608, column: 15)
!1683 = distinct !DILexicalBlock(scope: !1678, file: !248, line: 602, column: 17)
!1684 = !DILocalVariable(name: "w", scope: !1685, file: !248, line: 618, type: !222)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !248, line: 617, column: 19)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !248, line: 616, column: 17)
!1687 = distinct !DILexicalBlock(scope: !1682, file: !248, line: 616, column: 17)
!1688 = !DILocalVariable(name: "bytes", scope: !1685, file: !248, line: 619, type: !45)
!1689 = !DILocalVariable(name: "j", scope: !1690, file: !248, line: 648, type: !45)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !248, line: 648, column: 29)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !248, line: 647, column: 27)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !248, line: 645, column: 29)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !248, line: 636, column: 23)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !248, line: 628, column: 30)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !248, line: 623, column: 30)
!1696 = distinct !DILexicalBlock(scope: !1685, file: !248, line: 621, column: 25)
!1697 = !DILocalVariable(name: "ilim", scope: !1698, file: !248, line: 674, type: !45)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !248, line: 671, column: 15)
!1699 = distinct !DILexicalBlock(scope: !1678, file: !248, line: 670, column: 17)
!1700 = !DILabel(scope: !1639, name: "process_input", file: !248, line: 308)
!1701 = !DILabel(scope: !1702, name: "c_and_shell_escape", file: !248, line: 502)
!1702 = distinct !DILexicalBlock(scope: !1679, file: !248, line: 478, column: 9)
!1703 = !DILabel(scope: !1702, name: "c_escape", file: !248, line: 507)
!1704 = !DILabel(scope: !1672, name: "store_escape", file: !248, line: 709)
!1705 = !DILabel(scope: !1672, name: "store_c", file: !248, line: 712)
!1706 = !DILabel(scope: !1639, name: "force_outer_quoting_style", file: !248, line: 753)
!1707 = !DILocation(line: 0, scope: !1639)
!1708 = !DILocation(line: 258, column: 25, scope: !1639)
!1709 = !DILocation(line: 258, column: 36, scope: !1639)
!1710 = !DILocation(line: 267, column: 3, scope: !1639)
!1711 = !DILocation(line: 261, column: 10, scope: !1639)
!1712 = !DILocation(line: 262, column: 15, scope: !1639)
!1713 = !DILocation(line: 263, column: 10, scope: !1639)
!1714 = !DILocation(line: 308, column: 2, scope: !1639)
!1715 = !DILocation(line: 311, column: 3, scope: !1639)
!1716 = !DILocation(line: 318, column: 11, scope: !1668)
!1717 = !DILocation(line: 319, column: 9, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !248, line: 319, column: 9)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !248, line: 319, column: 9)
!1720 = distinct !DILexicalBlock(scope: !1668, file: !248, line: 318, column: 11)
!1721 = !DILocation(line: 319, column: 9, scope: !1719)
!1722 = !DILocation(line: 0, scope: !284, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 357, column: 26, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !248, line: 335, column: 11)
!1725 = distinct !DILexicalBlock(scope: !1667, file: !248, line: 334, column: 13)
!1726 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1723)
!1727 = !DILocation(line: 201, column: 19, scope: !1728, inlinedAt: !1723)
!1728 = distinct !DILexicalBlock(scope: !284, file: !248, line: 201, column: 7)
!1729 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1723)
!1730 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1723)
!1731 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1723)
!1732 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1723)
!1733 = !DILocalVariable(name: "ps", arg: 1, scope: !1734, file: !1486, line: 1135, type: !1737)
!1734 = distinct !DISubprogram(name: "mbszero", scope: !1486, file: !1486, line: 1135, type: !1735, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1738)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1738 = !{!1733}
!1739 = !DILocation(line: 0, scope: !1734, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1723)
!1741 = !DILocalVariable(name: "__dest", arg: 1, scope: !1742, file: !1030, line: 57, type: !40)
!1742 = distinct !DISubprogram(name: "memset", scope: !1030, file: !1030, line: 57, type: !1495, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1743)
!1743 = !{!1741, !1744, !1745}
!1744 = !DILocalVariable(name: "__ch", arg: 2, scope: !1742, file: !1030, line: 57, type: !43)
!1745 = !DILocalVariable(name: "__len", arg: 3, scope: !1742, file: !1030, line: 57, type: !45)
!1746 = !DILocation(line: 0, scope: !1742, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 1137, column: 3, scope: !1734, inlinedAt: !1740)
!1748 = !DILocation(line: 59, column: 10, scope: !1742, inlinedAt: !1747)
!1749 = !DILocation(line: 231, column: 7, scope: !1750, inlinedAt: !1723)
!1750 = distinct !DILexicalBlock(scope: !284, file: !248, line: 231, column: 7)
!1751 = !DILocation(line: 231, column: 40, scope: !1750, inlinedAt: !1723)
!1752 = !DILocation(line: 231, column: 45, scope: !1750, inlinedAt: !1723)
!1753 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1723)
!1754 = !DILocation(line: 0, scope: !284, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 358, column: 27, scope: !1724)
!1756 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1755)
!1757 = !DILocation(line: 201, column: 19, scope: !1728, inlinedAt: !1755)
!1758 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1755)
!1759 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1755)
!1760 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1755)
!1761 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1755)
!1762 = !DILocation(line: 0, scope: !1734, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1755)
!1764 = !DILocation(line: 0, scope: !1742, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 1137, column: 3, scope: !1734, inlinedAt: !1763)
!1766 = !DILocation(line: 59, column: 10, scope: !1742, inlinedAt: !1765)
!1767 = !DILocation(line: 231, column: 7, scope: !1750, inlinedAt: !1755)
!1768 = !DILocation(line: 231, column: 40, scope: !1750, inlinedAt: !1755)
!1769 = !DILocation(line: 231, column: 45, scope: !1750, inlinedAt: !1755)
!1770 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1755)
!1771 = !DILocation(line: 360, column: 13, scope: !1667)
!1772 = !DILocation(line: 0, scope: !1665)
!1773 = !DILocation(line: 361, column: 45, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1665, file: !248, line: 361, column: 11)
!1775 = !DILocation(line: 361, column: 11, scope: !1665)
!1776 = !DILocation(line: 362, column: 13, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !248, line: 362, column: 13)
!1778 = distinct !DILexicalBlock(scope: !1774, file: !248, line: 362, column: 13)
!1779 = !DILocation(line: 362, column: 13, scope: !1778)
!1780 = !DILocation(line: 361, column: 52, scope: !1774)
!1781 = distinct !{!1781, !1775, !1782, !495}
!1782 = !DILocation(line: 362, column: 13, scope: !1665)
!1783 = !DILocation(line: 260, column: 10, scope: !1639)
!1784 = !DILocation(line: 365, column: 28, scope: !1667)
!1785 = !DILocation(line: 367, column: 7, scope: !1668)
!1786 = !DILocation(line: 370, column: 7, scope: !1668)
!1787 = !DILocation(line: 376, column: 11, scope: !1668)
!1788 = !DILocation(line: 381, column: 11, scope: !1668)
!1789 = !DILocation(line: 382, column: 9, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !248, line: 382, column: 9)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !248, line: 382, column: 9)
!1792 = distinct !DILexicalBlock(scope: !1668, file: !248, line: 381, column: 11)
!1793 = !DILocation(line: 382, column: 9, scope: !1791)
!1794 = !DILocation(line: 389, column: 7, scope: !1668)
!1795 = !DILocation(line: 392, column: 7, scope: !1668)
!1796 = !DILocation(line: 0, scope: !1670)
!1797 = !DILocation(line: 395, column: 8, scope: !1670)
!1798 = !DILocation(line: 395, column: 34, scope: !1673)
!1799 = !DILocation(line: 395, column: 26, scope: !1673)
!1800 = !DILocation(line: 395, column: 48, scope: !1673)
!1801 = !DILocation(line: 395, column: 55, scope: !1673)
!1802 = !DILocation(line: 395, column: 3, scope: !1670)
!1803 = !DILocation(line: 395, column: 67, scope: !1673)
!1804 = !DILocation(line: 0, scope: !1672)
!1805 = !DILocation(line: 402, column: 11, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1672, file: !248, line: 401, column: 11)
!1807 = !DILocation(line: 404, column: 17, scope: !1806)
!1808 = !DILocation(line: 405, column: 39, scope: !1806)
!1809 = !DILocation(line: 409, column: 32, scope: !1806)
!1810 = !DILocation(line: 405, column: 19, scope: !1806)
!1811 = !DILocation(line: 405, column: 15, scope: !1806)
!1812 = !DILocation(line: 410, column: 11, scope: !1806)
!1813 = !DILocation(line: 410, column: 25, scope: !1806)
!1814 = !DILocalVariable(name: "__s1", arg: 1, scope: !1815, file: !479, line: 974, type: !647)
!1815 = distinct !DISubprogram(name: "memeq", scope: !479, file: !479, line: 974, type: !1457, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1816)
!1816 = !{!1814, !1817, !1818}
!1817 = !DILocalVariable(name: "__s2", arg: 2, scope: !1815, file: !479, line: 974, type: !647)
!1818 = !DILocalVariable(name: "__n", arg: 3, scope: !1815, file: !479, line: 974, type: !45)
!1819 = !DILocation(line: 0, scope: !1815, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 410, column: 14, scope: !1806)
!1821 = !DILocation(line: 976, column: 11, scope: !1815, inlinedAt: !1820)
!1822 = !DILocation(line: 976, column: 10, scope: !1815, inlinedAt: !1820)
!1823 = !DILocation(line: 401, column: 11, scope: !1672)
!1824 = !DILocation(line: 417, column: 25, scope: !1672)
!1825 = !DILocation(line: 418, column: 7, scope: !1672)
!1826 = !DILocation(line: 421, column: 15, scope: !1679)
!1827 = !DILocation(line: 423, column: 15, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !248, line: 423, column: 15)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !248, line: 422, column: 13)
!1830 = distinct !DILexicalBlock(scope: !1679, file: !248, line: 421, column: 15)
!1831 = !DILocation(line: 423, column: 15, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !248, line: 423, column: 15)
!1833 = !DILocation(line: 423, column: 15, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !248, line: 423, column: 15)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !248, line: 423, column: 15)
!1836 = distinct !DILexicalBlock(scope: !1832, file: !248, line: 423, column: 15)
!1837 = !DILocation(line: 423, column: 15, scope: !1835)
!1838 = !DILocation(line: 423, column: 15, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !248, line: 423, column: 15)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !248, line: 423, column: 15)
!1841 = !DILocation(line: 423, column: 15, scope: !1840)
!1842 = !DILocation(line: 423, column: 15, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !248, line: 423, column: 15)
!1844 = distinct !DILexicalBlock(scope: !1836, file: !248, line: 423, column: 15)
!1845 = !DILocation(line: 423, column: 15, scope: !1844)
!1846 = !DILocation(line: 423, column: 15, scope: !1836)
!1847 = !DILocation(line: 423, column: 15, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !248, line: 423, column: 15)
!1849 = distinct !DILexicalBlock(scope: !1828, file: !248, line: 423, column: 15)
!1850 = !DILocation(line: 423, column: 15, scope: !1849)
!1851 = !DILocation(line: 431, column: 19, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1829, file: !248, line: 430, column: 19)
!1853 = !DILocation(line: 431, column: 24, scope: !1852)
!1854 = !DILocation(line: 431, column: 28, scope: !1852)
!1855 = !DILocation(line: 431, column: 38, scope: !1852)
!1856 = !DILocation(line: 431, column: 48, scope: !1852)
!1857 = !DILocation(line: 431, column: 59, scope: !1852)
!1858 = !DILocation(line: 433, column: 19, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !248, line: 433, column: 19)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !248, line: 433, column: 19)
!1861 = distinct !DILexicalBlock(scope: !1852, file: !248, line: 432, column: 17)
!1862 = !DILocation(line: 433, column: 19, scope: !1860)
!1863 = !DILocation(line: 434, column: 19, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !248, line: 434, column: 19)
!1865 = distinct !DILexicalBlock(scope: !1861, file: !248, line: 434, column: 19)
!1866 = !DILocation(line: 434, column: 19, scope: !1865)
!1867 = !DILocation(line: 435, column: 17, scope: !1861)
!1868 = !DILocation(line: 442, column: 20, scope: !1830)
!1869 = !DILocation(line: 447, column: 11, scope: !1679)
!1870 = !DILocation(line: 450, column: 19, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1679, file: !248, line: 448, column: 13)
!1872 = !DILocation(line: 456, column: 19, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1871, file: !248, line: 455, column: 19)
!1874 = !DILocation(line: 456, column: 24, scope: !1873)
!1875 = !DILocation(line: 456, column: 28, scope: !1873)
!1876 = !DILocation(line: 456, column: 38, scope: !1873)
!1877 = !DILocation(line: 456, column: 47, scope: !1873)
!1878 = !DILocation(line: 456, column: 41, scope: !1873)
!1879 = !DILocation(line: 456, column: 52, scope: !1873)
!1880 = !DILocation(line: 455, column: 19, scope: !1871)
!1881 = !DILocation(line: 457, column: 25, scope: !1873)
!1882 = !DILocation(line: 457, column: 17, scope: !1873)
!1883 = !DILocation(line: 464, column: 25, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1873, file: !248, line: 458, column: 19)
!1885 = !DILocation(line: 468, column: 21, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !248, line: 468, column: 21)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !248, line: 468, column: 21)
!1888 = !DILocation(line: 468, column: 21, scope: !1887)
!1889 = !DILocation(line: 469, column: 21, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !248, line: 469, column: 21)
!1891 = distinct !DILexicalBlock(scope: !1884, file: !248, line: 469, column: 21)
!1892 = !DILocation(line: 469, column: 21, scope: !1891)
!1893 = !DILocation(line: 470, column: 21, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !248, line: 470, column: 21)
!1895 = distinct !DILexicalBlock(scope: !1884, file: !248, line: 470, column: 21)
!1896 = !DILocation(line: 470, column: 21, scope: !1895)
!1897 = !DILocation(line: 471, column: 21, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !248, line: 471, column: 21)
!1899 = distinct !DILexicalBlock(scope: !1884, file: !248, line: 471, column: 21)
!1900 = !DILocation(line: 471, column: 21, scope: !1899)
!1901 = !DILocation(line: 472, column: 21, scope: !1884)
!1902 = !DILocation(line: 482, column: 33, scope: !1702)
!1903 = !DILocation(line: 483, column: 33, scope: !1702)
!1904 = !DILocation(line: 485, column: 33, scope: !1702)
!1905 = !DILocation(line: 486, column: 33, scope: !1702)
!1906 = !DILocation(line: 487, column: 33, scope: !1702)
!1907 = !DILocation(line: 490, column: 17, scope: !1702)
!1908 = !DILocation(line: 492, column: 21, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !248, line: 491, column: 15)
!1910 = distinct !DILexicalBlock(scope: !1702, file: !248, line: 490, column: 17)
!1911 = !DILocation(line: 499, column: 35, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1702, file: !248, line: 499, column: 17)
!1913 = !DILocation(line: 499, column: 57, scope: !1912)
!1914 = !DILocation(line: 0, scope: !1702)
!1915 = !DILocation(line: 502, column: 11, scope: !1702)
!1916 = !DILocation(line: 504, column: 17, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1702, file: !248, line: 503, column: 17)
!1918 = !DILocation(line: 507, column: 11, scope: !1702)
!1919 = !DILocation(line: 508, column: 17, scope: !1702)
!1920 = !DILocation(line: 517, column: 15, scope: !1679)
!1921 = !DILocation(line: 517, column: 40, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1679, file: !248, line: 517, column: 15)
!1923 = !DILocation(line: 517, column: 47, scope: !1922)
!1924 = !DILocation(line: 517, column: 18, scope: !1922)
!1925 = !DILocation(line: 521, column: 17, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1679, file: !248, line: 521, column: 15)
!1927 = !DILocation(line: 521, column: 15, scope: !1679)
!1928 = !DILocation(line: 525, column: 11, scope: !1679)
!1929 = !DILocation(line: 537, column: 15, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1679, file: !248, line: 536, column: 15)
!1931 = !DILocation(line: 536, column: 15, scope: !1679)
!1932 = !DILocation(line: 544, column: 15, scope: !1679)
!1933 = !DILocation(line: 546, column: 19, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !248, line: 545, column: 13)
!1935 = distinct !DILexicalBlock(scope: !1679, file: !248, line: 544, column: 15)
!1936 = !DILocation(line: 549, column: 19, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1934, file: !248, line: 549, column: 19)
!1938 = !DILocation(line: 549, column: 30, scope: !1937)
!1939 = !DILocation(line: 558, column: 15, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !248, line: 558, column: 15)
!1941 = distinct !DILexicalBlock(scope: !1934, file: !248, line: 558, column: 15)
!1942 = !DILocation(line: 558, column: 15, scope: !1941)
!1943 = !DILocation(line: 559, column: 15, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !248, line: 559, column: 15)
!1945 = distinct !DILexicalBlock(scope: !1934, file: !248, line: 559, column: 15)
!1946 = !DILocation(line: 559, column: 15, scope: !1945)
!1947 = !DILocation(line: 560, column: 15, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !248, line: 560, column: 15)
!1949 = distinct !DILexicalBlock(scope: !1934, file: !248, line: 560, column: 15)
!1950 = !DILocation(line: 560, column: 15, scope: !1949)
!1951 = !DILocation(line: 562, column: 13, scope: !1934)
!1952 = !DILocation(line: 602, column: 17, scope: !1678)
!1953 = !DILocation(line: 0, scope: !1678)
!1954 = !DILocation(line: 605, column: 29, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1683, file: !248, line: 603, column: 15)
!1956 = !DILocation(line: 605, column: 41, scope: !1955)
!1957 = !DILocation(line: 670, column: 23, scope: !1699)
!1958 = !DILocation(line: 609, column: 17, scope: !1682)
!1959 = !DILocation(line: 609, column: 27, scope: !1682)
!1960 = !DILocation(line: 0, scope: !1734, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 609, column: 32, scope: !1682)
!1962 = !DILocation(line: 0, scope: !1742, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 1137, column: 3, scope: !1734, inlinedAt: !1961)
!1964 = !DILocation(line: 59, column: 10, scope: !1742, inlinedAt: !1963)
!1965 = !DILocation(line: 613, column: 29, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1682, file: !248, line: 613, column: 21)
!1967 = !DILocation(line: 613, column: 21, scope: !1682)
!1968 = !DILocation(line: 614, column: 29, scope: !1966)
!1969 = !DILocation(line: 614, column: 19, scope: !1966)
!1970 = !DILocation(line: 618, column: 21, scope: !1685)
!1971 = !DILocation(line: 620, column: 54, scope: !1685)
!1972 = !DILocation(line: 0, scope: !1685)
!1973 = !DILocation(line: 619, column: 36, scope: !1685)
!1974 = !DILocation(line: 621, column: 25, scope: !1685)
!1975 = !DILocation(line: 631, column: 38, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1694, file: !248, line: 629, column: 23)
!1977 = !DILocation(line: 631, column: 48, scope: !1976)
!1978 = !DILocation(line: 665, column: 19, scope: !1686)
!1979 = !DILocation(line: 666, column: 15, scope: !1683)
!1980 = !DILocation(line: 626, column: 25, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1695, file: !248, line: 624, column: 23)
!1982 = !DILocation(line: 631, column: 51, scope: !1976)
!1983 = !DILocation(line: 631, column: 25, scope: !1976)
!1984 = !DILocation(line: 632, column: 28, scope: !1976)
!1985 = !DILocation(line: 631, column: 34, scope: !1976)
!1986 = distinct !{!1986, !1983, !1984, !495}
!1987 = !DILocation(line: 646, column: 29, scope: !1692)
!1988 = !DILocation(line: 0, scope: !1690)
!1989 = !DILocation(line: 649, column: 49, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1690, file: !248, line: 648, column: 29)
!1991 = !DILocation(line: 649, column: 39, scope: !1990)
!1992 = !DILocation(line: 649, column: 31, scope: !1990)
!1993 = !DILocation(line: 648, column: 60, scope: !1990)
!1994 = !DILocation(line: 648, column: 50, scope: !1990)
!1995 = !DILocation(line: 648, column: 29, scope: !1690)
!1996 = distinct !{!1996, !1995, !1997, !495}
!1997 = !DILocation(line: 654, column: 33, scope: !1690)
!1998 = !DILocation(line: 657, column: 43, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1693, file: !248, line: 657, column: 29)
!2000 = !DILocalVariable(name: "wc", arg: 1, scope: !2001, file: !2002, line: 865, type: !2005)
!2001 = distinct !DISubprogram(name: "c32isprint", scope: !2002, file: !2002, line: 865, type: !2003, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2007)
!2002 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!43, !2005}
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2006, line: 20, baseType: !7)
!2006 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2007 = !{!2000}
!2008 = !DILocation(line: 0, scope: !2001, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 657, column: 31, scope: !1999)
!2010 = !DILocation(line: 871, column: 10, scope: !2001, inlinedAt: !2009)
!2011 = !DILocation(line: 657, column: 31, scope: !1999)
!2012 = !DILocation(line: 664, column: 23, scope: !1685)
!2013 = !DILocation(line: 753, column: 2, scope: !1639)
!2014 = !DILocation(line: 756, column: 51, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1639, file: !248, line: 756, column: 7)
!2016 = !DILocation(line: 670, column: 19, scope: !1699)
!2017 = !DILocation(line: 670, column: 45, scope: !1699)
!2018 = !DILocation(line: 674, column: 33, scope: !1698)
!2019 = !DILocation(line: 0, scope: !1698)
!2020 = !DILocation(line: 676, column: 17, scope: !1698)
!2021 = !DILocation(line: 398, column: 12, scope: !1672)
!2022 = !DILocation(line: 678, column: 43, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !248, line: 678, column: 25)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !248, line: 677, column: 19)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !248, line: 676, column: 17)
!2026 = distinct !DILexicalBlock(scope: !1698, file: !248, line: 676, column: 17)
!2027 = !DILocation(line: 680, column: 25, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !248, line: 680, column: 25)
!2029 = distinct !DILexicalBlock(scope: !2023, file: !248, line: 679, column: 23)
!2030 = !DILocation(line: 680, column: 25, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2028, file: !248, line: 680, column: 25)
!2032 = !DILocation(line: 680, column: 25, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !248, line: 680, column: 25)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !248, line: 680, column: 25)
!2035 = distinct !DILexicalBlock(scope: !2031, file: !248, line: 680, column: 25)
!2036 = !DILocation(line: 680, column: 25, scope: !2034)
!2037 = !DILocation(line: 680, column: 25, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !248, line: 680, column: 25)
!2039 = distinct !DILexicalBlock(scope: !2035, file: !248, line: 680, column: 25)
!2040 = !DILocation(line: 680, column: 25, scope: !2039)
!2041 = !DILocation(line: 680, column: 25, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !248, line: 680, column: 25)
!2043 = distinct !DILexicalBlock(scope: !2035, file: !248, line: 680, column: 25)
!2044 = !DILocation(line: 680, column: 25, scope: !2043)
!2045 = !DILocation(line: 680, column: 25, scope: !2035)
!2046 = !DILocation(line: 680, column: 25, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !248, line: 680, column: 25)
!2048 = distinct !DILexicalBlock(scope: !2028, file: !248, line: 680, column: 25)
!2049 = !DILocation(line: 680, column: 25, scope: !2048)
!2050 = !DILocation(line: 681, column: 25, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !248, line: 681, column: 25)
!2052 = distinct !DILexicalBlock(scope: !2029, file: !248, line: 681, column: 25)
!2053 = !DILocation(line: 681, column: 25, scope: !2052)
!2054 = !DILocation(line: 682, column: 25, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !248, line: 682, column: 25)
!2056 = distinct !DILexicalBlock(scope: !2029, file: !248, line: 682, column: 25)
!2057 = !DILocation(line: 682, column: 25, scope: !2056)
!2058 = !DILocation(line: 683, column: 38, scope: !2029)
!2059 = !DILocation(line: 683, column: 33, scope: !2029)
!2060 = !DILocation(line: 684, column: 23, scope: !2029)
!2061 = !DILocation(line: 685, column: 30, scope: !2023)
!2062 = !DILocation(line: 687, column: 25, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !248, line: 687, column: 25)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !248, line: 687, column: 25)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !248, line: 686, column: 23)
!2066 = distinct !DILexicalBlock(scope: !2023, file: !248, line: 685, column: 30)
!2067 = !DILocation(line: 687, column: 25, scope: !2064)
!2068 = !DILocation(line: 689, column: 23, scope: !2065)
!2069 = !DILocation(line: 690, column: 35, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2024, file: !248, line: 690, column: 25)
!2071 = !DILocation(line: 690, column: 30, scope: !2070)
!2072 = !DILocation(line: 690, column: 25, scope: !2024)
!2073 = !DILocation(line: 692, column: 21, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !248, line: 692, column: 21)
!2075 = distinct !DILexicalBlock(scope: !2024, file: !248, line: 692, column: 21)
!2076 = !DILocation(line: 692, column: 21, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !248, line: 692, column: 21)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !248, line: 692, column: 21)
!2079 = distinct !DILexicalBlock(scope: !2074, file: !248, line: 692, column: 21)
!2080 = !DILocation(line: 692, column: 21, scope: !2078)
!2081 = !DILocation(line: 692, column: 21, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !248, line: 692, column: 21)
!2083 = distinct !DILexicalBlock(scope: !2079, file: !248, line: 692, column: 21)
!2084 = !DILocation(line: 692, column: 21, scope: !2083)
!2085 = !DILocation(line: 692, column: 21, scope: !2079)
!2086 = !DILocation(line: 0, scope: !2024)
!2087 = !DILocation(line: 693, column: 21, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !248, line: 693, column: 21)
!2089 = distinct !DILexicalBlock(scope: !2024, file: !248, line: 693, column: 21)
!2090 = !DILocation(line: 693, column: 21, scope: !2089)
!2091 = !DILocation(line: 694, column: 25, scope: !2024)
!2092 = !DILocation(line: 676, column: 17, scope: !2025)
!2093 = distinct !{!2093, !2094, !2095}
!2094 = !DILocation(line: 676, column: 17, scope: !2026)
!2095 = !DILocation(line: 695, column: 19, scope: !2026)
!2096 = !DILocation(line: 409, column: 30, scope: !1806)
!2097 = !DILocation(line: 702, column: 34, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1672, file: !248, line: 702, column: 11)
!2099 = !DILocation(line: 704, column: 14, scope: !2098)
!2100 = !DILocation(line: 705, column: 14, scope: !2098)
!2101 = !DILocation(line: 705, column: 35, scope: !2098)
!2102 = !DILocation(line: 705, column: 17, scope: !2098)
!2103 = !DILocation(line: 705, column: 47, scope: !2098)
!2104 = !DILocation(line: 705, column: 65, scope: !2098)
!2105 = !DILocation(line: 706, column: 11, scope: !2098)
!2106 = !DILocation(line: 702, column: 11, scope: !1672)
!2107 = !DILocation(line: 395, column: 15, scope: !1670)
!2108 = !DILocation(line: 709, column: 5, scope: !1672)
!2109 = !DILocation(line: 710, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !1672, file: !248, line: 710, column: 7)
!2111 = !DILocation(line: 710, column: 7, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2110, file: !248, line: 710, column: 7)
!2113 = !DILocation(line: 710, column: 7, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !248, line: 710, column: 7)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !248, line: 710, column: 7)
!2116 = distinct !DILexicalBlock(scope: !2112, file: !248, line: 710, column: 7)
!2117 = !DILocation(line: 710, column: 7, scope: !2115)
!2118 = !DILocation(line: 710, column: 7, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !248, line: 710, column: 7)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !248, line: 710, column: 7)
!2121 = !DILocation(line: 710, column: 7, scope: !2120)
!2122 = !DILocation(line: 710, column: 7, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !248, line: 710, column: 7)
!2124 = distinct !DILexicalBlock(scope: !2116, file: !248, line: 710, column: 7)
!2125 = !DILocation(line: 710, column: 7, scope: !2124)
!2126 = !DILocation(line: 710, column: 7, scope: !2116)
!2127 = !DILocation(line: 710, column: 7, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !248, line: 710, column: 7)
!2129 = distinct !DILexicalBlock(scope: !2110, file: !248, line: 710, column: 7)
!2130 = !DILocation(line: 710, column: 7, scope: !2129)
!2131 = !DILocation(line: 712, column: 5, scope: !1672)
!2132 = !DILocation(line: 713, column: 7, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !248, line: 713, column: 7)
!2134 = distinct !DILexicalBlock(scope: !1672, file: !248, line: 713, column: 7)
!2135 = !DILocation(line: 417, column: 21, scope: !1672)
!2136 = !DILocation(line: 713, column: 7, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !248, line: 713, column: 7)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !248, line: 713, column: 7)
!2139 = distinct !DILexicalBlock(scope: !2133, file: !248, line: 713, column: 7)
!2140 = !DILocation(line: 713, column: 7, scope: !2138)
!2141 = !DILocation(line: 713, column: 7, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !248, line: 713, column: 7)
!2143 = distinct !DILexicalBlock(scope: !2139, file: !248, line: 713, column: 7)
!2144 = !DILocation(line: 713, column: 7, scope: !2143)
!2145 = !DILocation(line: 713, column: 7, scope: !2139)
!2146 = !DILocation(line: 714, column: 7, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !248, line: 714, column: 7)
!2148 = distinct !DILexicalBlock(scope: !1672, file: !248, line: 714, column: 7)
!2149 = !DILocation(line: 714, column: 7, scope: !2148)
!2150 = !DILocation(line: 716, column: 11, scope: !1672)
!2151 = !DILocation(line: 718, column: 5, scope: !1673)
!2152 = !DILocation(line: 395, column: 82, scope: !1673)
!2153 = !DILocation(line: 395, column: 3, scope: !1673)
!2154 = distinct !{!2154, !1802, !2155, !495}
!2155 = !DILocation(line: 718, column: 5, scope: !1670)
!2156 = !DILocation(line: 720, column: 11, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !1639, file: !248, line: 720, column: 7)
!2158 = !DILocation(line: 720, column: 16, scope: !2157)
!2159 = !DILocation(line: 728, column: 51, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1639, file: !248, line: 728, column: 7)
!2161 = !DILocation(line: 731, column: 11, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2160, file: !248, line: 730, column: 5)
!2163 = !DILocation(line: 732, column: 16, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2162, file: !248, line: 731, column: 11)
!2165 = !DILocation(line: 732, column: 9, scope: !2164)
!2166 = !DILocation(line: 736, column: 18, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2164, file: !248, line: 736, column: 16)
!2168 = !DILocation(line: 736, column: 29, scope: !2167)
!2169 = !DILocation(line: 745, column: 7, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !1639, file: !248, line: 745, column: 7)
!2171 = !DILocation(line: 745, column: 20, scope: !2170)
!2172 = !DILocation(line: 746, column: 12, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !248, line: 746, column: 5)
!2174 = distinct !DILexicalBlock(scope: !2170, file: !248, line: 746, column: 5)
!2175 = !DILocation(line: 746, column: 5, scope: !2174)
!2176 = !DILocation(line: 747, column: 7, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !248, line: 747, column: 7)
!2178 = distinct !DILexicalBlock(scope: !2173, file: !248, line: 747, column: 7)
!2179 = !DILocation(line: 747, column: 7, scope: !2178)
!2180 = !DILocation(line: 746, column: 39, scope: !2173)
!2181 = distinct !{!2181, !2175, !2182, !495}
!2182 = !DILocation(line: 747, column: 7, scope: !2174)
!2183 = !DILocation(line: 749, column: 11, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !1639, file: !248, line: 749, column: 7)
!2185 = !DILocation(line: 749, column: 7, scope: !1639)
!2186 = !DILocation(line: 750, column: 5, scope: !2184)
!2187 = !DILocation(line: 750, column: 17, scope: !2184)
!2188 = !DILocation(line: 756, column: 21, scope: !2015)
!2189 = !DILocation(line: 760, column: 42, scope: !1639)
!2190 = !DILocation(line: 758, column: 10, scope: !1639)
!2191 = !DILocation(line: 758, column: 3, scope: !1639)
!2192 = !DILocation(line: 762, column: 1, scope: !1639)
!2193 = !DISubprogram(name: "iswprint", scope: !2194, file: !2194, line: 120, type: !2003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!2194 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2195 = distinct !DISubprogram(name: "quotearg_alloc", scope: !248, file: !248, line: 788, type: !2196, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!41, !48, !45, !1531}
!2198 = !{!2199, !2200, !2201}
!2199 = !DILocalVariable(name: "arg", arg: 1, scope: !2195, file: !248, line: 788, type: !48)
!2200 = !DILocalVariable(name: "argsize", arg: 2, scope: !2195, file: !248, line: 788, type: !45)
!2201 = !DILocalVariable(name: "o", arg: 3, scope: !2195, file: !248, line: 789, type: !1531)
!2202 = !DILocation(line: 0, scope: !2195)
!2203 = !DILocalVariable(name: "arg", arg: 1, scope: !2204, file: !248, line: 801, type: !48)
!2204 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !248, file: !248, line: 801, type: !2205, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!41, !48, !45, !368, !1531}
!2207 = !{!2203, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215}
!2208 = !DILocalVariable(name: "argsize", arg: 2, scope: !2204, file: !248, line: 801, type: !45)
!2209 = !DILocalVariable(name: "size", arg: 3, scope: !2204, file: !248, line: 801, type: !368)
!2210 = !DILocalVariable(name: "o", arg: 4, scope: !2204, file: !248, line: 802, type: !1531)
!2211 = !DILocalVariable(name: "p", scope: !2204, file: !248, line: 804, type: !1531)
!2212 = !DILocalVariable(name: "saved_errno", scope: !2204, file: !248, line: 805, type: !43)
!2213 = !DILocalVariable(name: "flags", scope: !2204, file: !248, line: 807, type: !43)
!2214 = !DILocalVariable(name: "bufsize", scope: !2204, file: !248, line: 808, type: !45)
!2215 = !DILocalVariable(name: "buf", scope: !2204, file: !248, line: 812, type: !41)
!2216 = !DILocation(line: 0, scope: !2204, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 791, column: 10, scope: !2195)
!2218 = !DILocation(line: 804, column: 37, scope: !2204, inlinedAt: !2217)
!2219 = !DILocation(line: 805, column: 21, scope: !2204, inlinedAt: !2217)
!2220 = !DILocation(line: 807, column: 18, scope: !2204, inlinedAt: !2217)
!2221 = !DILocation(line: 807, column: 24, scope: !2204, inlinedAt: !2217)
!2222 = !DILocation(line: 808, column: 72, scope: !2204, inlinedAt: !2217)
!2223 = !DILocation(line: 809, column: 53, scope: !2204, inlinedAt: !2217)
!2224 = !DILocation(line: 810, column: 49, scope: !2204, inlinedAt: !2217)
!2225 = !DILocation(line: 811, column: 49, scope: !2204, inlinedAt: !2217)
!2226 = !DILocation(line: 808, column: 20, scope: !2204, inlinedAt: !2217)
!2227 = !DILocation(line: 811, column: 62, scope: !2204, inlinedAt: !2217)
!2228 = !DILocation(line: 812, column: 15, scope: !2204, inlinedAt: !2217)
!2229 = !DILocation(line: 813, column: 60, scope: !2204, inlinedAt: !2217)
!2230 = !DILocation(line: 815, column: 32, scope: !2204, inlinedAt: !2217)
!2231 = !DILocation(line: 815, column: 47, scope: !2204, inlinedAt: !2217)
!2232 = !DILocation(line: 813, column: 3, scope: !2204, inlinedAt: !2217)
!2233 = !DILocation(line: 816, column: 9, scope: !2204, inlinedAt: !2217)
!2234 = !DILocation(line: 791, column: 3, scope: !2195)
!2235 = !DILocation(line: 0, scope: !2204)
!2236 = !DILocation(line: 804, column: 37, scope: !2204)
!2237 = !DILocation(line: 805, column: 21, scope: !2204)
!2238 = !DILocation(line: 807, column: 18, scope: !2204)
!2239 = !DILocation(line: 807, column: 27, scope: !2204)
!2240 = !DILocation(line: 807, column: 24, scope: !2204)
!2241 = !DILocation(line: 808, column: 72, scope: !2204)
!2242 = !DILocation(line: 809, column: 53, scope: !2204)
!2243 = !DILocation(line: 810, column: 49, scope: !2204)
!2244 = !DILocation(line: 811, column: 49, scope: !2204)
!2245 = !DILocation(line: 808, column: 20, scope: !2204)
!2246 = !DILocation(line: 811, column: 62, scope: !2204)
!2247 = !DILocation(line: 812, column: 15, scope: !2204)
!2248 = !DILocation(line: 813, column: 60, scope: !2204)
!2249 = !DILocation(line: 815, column: 32, scope: !2204)
!2250 = !DILocation(line: 815, column: 47, scope: !2204)
!2251 = !DILocation(line: 813, column: 3, scope: !2204)
!2252 = !DILocation(line: 816, column: 9, scope: !2204)
!2253 = !DILocation(line: 817, column: 7, scope: !2204)
!2254 = !DILocation(line: 818, column: 11, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2204, file: !248, line: 817, column: 7)
!2256 = !DILocation(line: 818, column: 5, scope: !2255)
!2257 = !DILocation(line: 819, column: 3, scope: !2204)
!2258 = distinct !DISubprogram(name: "quotearg_free", scope: !248, file: !248, line: 837, type: !201, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2259)
!2259 = !{!2260, !2261}
!2260 = !DILocalVariable(name: "sv", scope: !2258, file: !248, line: 839, type: !307)
!2261 = !DILocalVariable(name: "i", scope: !2262, file: !248, line: 840, type: !43)
!2262 = distinct !DILexicalBlock(scope: !2258, file: !248, line: 840, column: 3)
!2263 = !DILocation(line: 839, column: 24, scope: !2258)
!2264 = !DILocation(line: 0, scope: !2258)
!2265 = !DILocation(line: 0, scope: !2262)
!2266 = !DILocation(line: 840, column: 21, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2262, file: !248, line: 840, column: 3)
!2268 = !DILocation(line: 840, column: 3, scope: !2262)
!2269 = !DILocation(line: 842, column: 13, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2258, file: !248, line: 842, column: 7)
!2271 = !{!2272, !440, i64 8}
!2272 = !{!"slotvec", !784, i64 0, !440, i64 8}
!2273 = !DILocation(line: 842, column: 17, scope: !2270)
!2274 = !DILocation(line: 842, column: 7, scope: !2258)
!2275 = !DILocation(line: 841, column: 17, scope: !2267)
!2276 = !DILocation(line: 841, column: 5, scope: !2267)
!2277 = !DILocation(line: 840, column: 32, scope: !2267)
!2278 = distinct !{!2278, !2268, !2279, !495}
!2279 = !DILocation(line: 841, column: 20, scope: !2262)
!2280 = !DILocation(line: 844, column: 7, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2270, file: !248, line: 843, column: 5)
!2282 = !DILocation(line: 845, column: 21, scope: !2281)
!2283 = !{!2272, !784, i64 0}
!2284 = !DILocation(line: 846, column: 20, scope: !2281)
!2285 = !DILocation(line: 847, column: 5, scope: !2281)
!2286 = !DILocation(line: 848, column: 10, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2258, file: !248, line: 848, column: 7)
!2288 = !DILocation(line: 848, column: 7, scope: !2258)
!2289 = !DILocation(line: 850, column: 13, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2287, file: !248, line: 849, column: 5)
!2291 = !DILocation(line: 850, column: 7, scope: !2290)
!2292 = !DILocation(line: 851, column: 15, scope: !2290)
!2293 = !DILocation(line: 852, column: 5, scope: !2290)
!2294 = !DILocation(line: 853, column: 10, scope: !2258)
!2295 = !DILocation(line: 854, column: 1, scope: !2258)
!2296 = distinct !DISubprogram(name: "quotearg_n", scope: !248, file: !248, line: 919, type: !637, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2297)
!2297 = !{!2298, !2299}
!2298 = !DILocalVariable(name: "n", arg: 1, scope: !2296, file: !248, line: 919, type: !43)
!2299 = !DILocalVariable(name: "arg", arg: 2, scope: !2296, file: !248, line: 919, type: !48)
!2300 = !DILocation(line: 0, scope: !2296)
!2301 = !DILocation(line: 921, column: 10, scope: !2296)
!2302 = !DILocation(line: 921, column: 3, scope: !2296)
!2303 = distinct !DISubprogram(name: "quotearg_n_options", scope: !248, file: !248, line: 866, type: !2304, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2306)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!41, !43, !48, !45, !1531}
!2306 = !{!2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2317, !2318, !2320, !2321, !2322}
!2307 = !DILocalVariable(name: "n", arg: 1, scope: !2303, file: !248, line: 866, type: !43)
!2308 = !DILocalVariable(name: "arg", arg: 2, scope: !2303, file: !248, line: 866, type: !48)
!2309 = !DILocalVariable(name: "argsize", arg: 3, scope: !2303, file: !248, line: 866, type: !45)
!2310 = !DILocalVariable(name: "options", arg: 4, scope: !2303, file: !248, line: 867, type: !1531)
!2311 = !DILocalVariable(name: "saved_errno", scope: !2303, file: !248, line: 869, type: !43)
!2312 = !DILocalVariable(name: "sv", scope: !2303, file: !248, line: 871, type: !307)
!2313 = !DILocalVariable(name: "nslots_max", scope: !2303, file: !248, line: 873, type: !43)
!2314 = !DILocalVariable(name: "preallocated", scope: !2315, file: !248, line: 879, type: !64)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !248, line: 878, column: 5)
!2316 = distinct !DILexicalBlock(scope: !2303, file: !248, line: 877, column: 7)
!2317 = !DILocalVariable(name: "new_nslots", scope: !2315, file: !248, line: 880, type: !381)
!2318 = !DILocalVariable(name: "size", scope: !2319, file: !248, line: 891, type: !45)
!2319 = distinct !DILexicalBlock(scope: !2303, file: !248, line: 890, column: 3)
!2320 = !DILocalVariable(name: "val", scope: !2319, file: !248, line: 892, type: !41)
!2321 = !DILocalVariable(name: "flags", scope: !2319, file: !248, line: 894, type: !43)
!2322 = !DILocalVariable(name: "qsize", scope: !2319, file: !248, line: 895, type: !45)
!2323 = !DILocation(line: 0, scope: !2303)
!2324 = !DILocation(line: 869, column: 21, scope: !2303)
!2325 = !DILocation(line: 871, column: 24, scope: !2303)
!2326 = !DILocation(line: 874, column: 17, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2303, file: !248, line: 874, column: 7)
!2328 = !DILocation(line: 875, column: 5, scope: !2327)
!2329 = !DILocation(line: 877, column: 7, scope: !2316)
!2330 = !DILocation(line: 877, column: 14, scope: !2316)
!2331 = !DILocation(line: 877, column: 7, scope: !2303)
!2332 = !DILocation(line: 879, column: 31, scope: !2315)
!2333 = !DILocation(line: 0, scope: !2315)
!2334 = !DILocation(line: 880, column: 7, scope: !2315)
!2335 = !DILocation(line: 880, column: 26, scope: !2315)
!2336 = !DILocation(line: 880, column: 13, scope: !2315)
!2337 = !DILocation(line: 882, column: 31, scope: !2315)
!2338 = !DILocation(line: 883, column: 33, scope: !2315)
!2339 = !DILocation(line: 883, column: 42, scope: !2315)
!2340 = !DILocation(line: 883, column: 31, scope: !2315)
!2341 = !DILocation(line: 882, column: 22, scope: !2315)
!2342 = !DILocation(line: 882, column: 15, scope: !2315)
!2343 = !DILocation(line: 884, column: 11, scope: !2315)
!2344 = !DILocation(line: 885, column: 15, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2315, file: !248, line: 884, column: 11)
!2346 = !{i64 0, i64 8, !1061, i64 8, i64 8, !439}
!2347 = !DILocation(line: 885, column: 9, scope: !2345)
!2348 = !DILocation(line: 886, column: 20, scope: !2315)
!2349 = !DILocation(line: 886, column: 18, scope: !2315)
!2350 = !DILocation(line: 886, column: 15, scope: !2315)
!2351 = !DILocation(line: 886, column: 32, scope: !2315)
!2352 = !DILocation(line: 886, column: 43, scope: !2315)
!2353 = !DILocation(line: 886, column: 53, scope: !2315)
!2354 = !DILocation(line: 0, scope: !1742, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 886, column: 7, scope: !2315)
!2356 = !DILocation(line: 59, column: 10, scope: !1742, inlinedAt: !2355)
!2357 = !DILocation(line: 887, column: 16, scope: !2315)
!2358 = !DILocation(line: 887, column: 14, scope: !2315)
!2359 = !DILocation(line: 888, column: 5, scope: !2316)
!2360 = !DILocation(line: 888, column: 5, scope: !2315)
!2361 = !DILocation(line: 891, column: 19, scope: !2319)
!2362 = !DILocation(line: 891, column: 25, scope: !2319)
!2363 = !DILocation(line: 0, scope: !2319)
!2364 = !DILocation(line: 892, column: 23, scope: !2319)
!2365 = !DILocation(line: 894, column: 26, scope: !2319)
!2366 = !DILocation(line: 894, column: 32, scope: !2319)
!2367 = !DILocation(line: 896, column: 55, scope: !2319)
!2368 = !DILocation(line: 897, column: 46, scope: !2319)
!2369 = !DILocation(line: 898, column: 55, scope: !2319)
!2370 = !DILocation(line: 899, column: 55, scope: !2319)
!2371 = !DILocation(line: 895, column: 20, scope: !2319)
!2372 = !DILocation(line: 901, column: 14, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2319, file: !248, line: 901, column: 9)
!2374 = !DILocation(line: 901, column: 9, scope: !2319)
!2375 = !DILocation(line: 903, column: 35, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2373, file: !248, line: 902, column: 7)
!2377 = !DILocation(line: 903, column: 20, scope: !2376)
!2378 = !DILocation(line: 904, column: 17, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2376, file: !248, line: 904, column: 13)
!2380 = !DILocation(line: 904, column: 13, scope: !2376)
!2381 = !DILocation(line: 905, column: 11, scope: !2379)
!2382 = !DILocation(line: 906, column: 27, scope: !2376)
!2383 = !DILocation(line: 906, column: 19, scope: !2376)
!2384 = !DILocation(line: 907, column: 69, scope: !2376)
!2385 = !DILocation(line: 909, column: 44, scope: !2376)
!2386 = !DILocation(line: 910, column: 44, scope: !2376)
!2387 = !DILocation(line: 907, column: 9, scope: !2376)
!2388 = !DILocation(line: 911, column: 7, scope: !2376)
!2389 = !DILocation(line: 913, column: 11, scope: !2319)
!2390 = !DILocation(line: 914, column: 5, scope: !2319)
!2391 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !248, file: !248, line: 925, type: !2392, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!41, !43, !48, !45}
!2394 = !{!2395, !2396, !2397}
!2395 = !DILocalVariable(name: "n", arg: 1, scope: !2391, file: !248, line: 925, type: !43)
!2396 = !DILocalVariable(name: "arg", arg: 2, scope: !2391, file: !248, line: 925, type: !48)
!2397 = !DILocalVariable(name: "argsize", arg: 3, scope: !2391, file: !248, line: 925, type: !45)
!2398 = !DILocation(line: 0, scope: !2391)
!2399 = !DILocation(line: 927, column: 10, scope: !2391)
!2400 = !DILocation(line: 927, column: 3, scope: !2391)
!2401 = distinct !DISubprogram(name: "quotearg", scope: !248, file: !248, line: 931, type: !641, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2402)
!2402 = !{!2403}
!2403 = !DILocalVariable(name: "arg", arg: 1, scope: !2401, file: !248, line: 931, type: !48)
!2404 = !DILocation(line: 0, scope: !2401)
!2405 = !DILocation(line: 0, scope: !2296, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 933, column: 10, scope: !2401)
!2407 = !DILocation(line: 921, column: 10, scope: !2296, inlinedAt: !2406)
!2408 = !DILocation(line: 933, column: 3, scope: !2401)
!2409 = distinct !DISubprogram(name: "quotearg_mem", scope: !248, file: !248, line: 937, type: !2410, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2412)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!41, !48, !45}
!2412 = !{!2413, !2414}
!2413 = !DILocalVariable(name: "arg", arg: 1, scope: !2409, file: !248, line: 937, type: !48)
!2414 = !DILocalVariable(name: "argsize", arg: 2, scope: !2409, file: !248, line: 937, type: !45)
!2415 = !DILocation(line: 0, scope: !2409)
!2416 = !DILocation(line: 0, scope: !2391, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 939, column: 10, scope: !2409)
!2418 = !DILocation(line: 927, column: 10, scope: !2391, inlinedAt: !2417)
!2419 = !DILocation(line: 939, column: 3, scope: !2409)
!2420 = distinct !DISubprogram(name: "quotearg_n_style", scope: !248, file: !248, line: 943, type: !2421, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!41, !43, !21, !48}
!2423 = !{!2424, !2425, !2426, !2427}
!2424 = !DILocalVariable(name: "n", arg: 1, scope: !2420, file: !248, line: 943, type: !43)
!2425 = !DILocalVariable(name: "s", arg: 2, scope: !2420, file: !248, line: 943, type: !21)
!2426 = !DILocalVariable(name: "arg", arg: 3, scope: !2420, file: !248, line: 943, type: !48)
!2427 = !DILocalVariable(name: "o", scope: !2420, file: !248, line: 945, type: !1532)
!2428 = !DILocation(line: 0, scope: !2420)
!2429 = !DILocation(line: 945, column: 3, scope: !2420)
!2430 = !DILocation(line: 945, column: 32, scope: !2420)
!2431 = !{!2432}
!2432 = distinct !{!2432, !2433, !"quoting_options_from_style: argument 0"}
!2433 = distinct !{!2433, !"quoting_options_from_style"}
!2434 = !DILocation(line: 945, column: 36, scope: !2420)
!2435 = !DILocalVariable(name: "style", arg: 1, scope: !2436, file: !248, line: 183, type: !21)
!2436 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !248, file: !248, line: 183, type: !2437, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!265, !21}
!2439 = !{!2435, !2440}
!2440 = !DILocalVariable(name: "o", scope: !2436, file: !248, line: 185, type: !265)
!2441 = !DILocation(line: 0, scope: !2436, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 945, column: 36, scope: !2420)
!2443 = !DILocation(line: 185, column: 26, scope: !2436, inlinedAt: !2442)
!2444 = !DILocation(line: 186, column: 13, scope: !2445, inlinedAt: !2442)
!2445 = distinct !DILexicalBlock(scope: !2436, file: !248, line: 186, column: 7)
!2446 = !DILocation(line: 186, column: 7, scope: !2436, inlinedAt: !2442)
!2447 = !DILocation(line: 187, column: 5, scope: !2445, inlinedAt: !2442)
!2448 = !DILocation(line: 188, column: 5, scope: !2436, inlinedAt: !2442)
!2449 = !DILocation(line: 188, column: 11, scope: !2436, inlinedAt: !2442)
!2450 = !DILocation(line: 946, column: 10, scope: !2420)
!2451 = !DILocation(line: 947, column: 1, scope: !2420)
!2452 = !DILocation(line: 946, column: 3, scope: !2420)
!2453 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !248, file: !248, line: 950, type: !2454, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2456)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!41, !43, !21, !48, !45}
!2456 = !{!2457, !2458, !2459, !2460, !2461}
!2457 = !DILocalVariable(name: "n", arg: 1, scope: !2453, file: !248, line: 950, type: !43)
!2458 = !DILocalVariable(name: "s", arg: 2, scope: !2453, file: !248, line: 950, type: !21)
!2459 = !DILocalVariable(name: "arg", arg: 3, scope: !2453, file: !248, line: 951, type: !48)
!2460 = !DILocalVariable(name: "argsize", arg: 4, scope: !2453, file: !248, line: 951, type: !45)
!2461 = !DILocalVariable(name: "o", scope: !2453, file: !248, line: 953, type: !1532)
!2462 = !DILocation(line: 0, scope: !2453)
!2463 = !DILocation(line: 953, column: 3, scope: !2453)
!2464 = !DILocation(line: 953, column: 32, scope: !2453)
!2465 = !{!2466}
!2466 = distinct !{!2466, !2467, !"quoting_options_from_style: argument 0"}
!2467 = distinct !{!2467, !"quoting_options_from_style"}
!2468 = !DILocation(line: 953, column: 36, scope: !2453)
!2469 = !DILocation(line: 0, scope: !2436, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 953, column: 36, scope: !2453)
!2471 = !DILocation(line: 185, column: 26, scope: !2436, inlinedAt: !2470)
!2472 = !DILocation(line: 186, column: 13, scope: !2445, inlinedAt: !2470)
!2473 = !DILocation(line: 186, column: 7, scope: !2436, inlinedAt: !2470)
!2474 = !DILocation(line: 187, column: 5, scope: !2445, inlinedAt: !2470)
!2475 = !DILocation(line: 188, column: 5, scope: !2436, inlinedAt: !2470)
!2476 = !DILocation(line: 188, column: 11, scope: !2436, inlinedAt: !2470)
!2477 = !DILocation(line: 954, column: 10, scope: !2453)
!2478 = !DILocation(line: 955, column: 1, scope: !2453)
!2479 = !DILocation(line: 954, column: 3, scope: !2453)
!2480 = distinct !DISubprogram(name: "quotearg_style", scope: !248, file: !248, line: 958, type: !2481, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!41, !21, !48}
!2483 = !{!2484, !2485}
!2484 = !DILocalVariable(name: "s", arg: 1, scope: !2480, file: !248, line: 958, type: !21)
!2485 = !DILocalVariable(name: "arg", arg: 2, scope: !2480, file: !248, line: 958, type: !48)
!2486 = !DILocation(line: 0, scope: !2480)
!2487 = !DILocation(line: 0, scope: !2420, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 960, column: 10, scope: !2480)
!2489 = !DILocation(line: 945, column: 3, scope: !2420, inlinedAt: !2488)
!2490 = !DILocation(line: 945, column: 32, scope: !2420, inlinedAt: !2488)
!2491 = !{!2492}
!2492 = distinct !{!2492, !2493, !"quoting_options_from_style: argument 0"}
!2493 = distinct !{!2493, !"quoting_options_from_style"}
!2494 = !DILocation(line: 945, column: 36, scope: !2420, inlinedAt: !2488)
!2495 = !DILocation(line: 0, scope: !2436, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 945, column: 36, scope: !2420, inlinedAt: !2488)
!2497 = !DILocation(line: 185, column: 26, scope: !2436, inlinedAt: !2496)
!2498 = !DILocation(line: 186, column: 13, scope: !2445, inlinedAt: !2496)
!2499 = !DILocation(line: 186, column: 7, scope: !2436, inlinedAt: !2496)
!2500 = !DILocation(line: 187, column: 5, scope: !2445, inlinedAt: !2496)
!2501 = !DILocation(line: 188, column: 5, scope: !2436, inlinedAt: !2496)
!2502 = !DILocation(line: 188, column: 11, scope: !2436, inlinedAt: !2496)
!2503 = !DILocation(line: 946, column: 10, scope: !2420, inlinedAt: !2488)
!2504 = !DILocation(line: 947, column: 1, scope: !2420, inlinedAt: !2488)
!2505 = !DILocation(line: 960, column: 3, scope: !2480)
!2506 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !248, file: !248, line: 964, type: !2507, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!41, !21, !48, !45}
!2509 = !{!2510, !2511, !2512}
!2510 = !DILocalVariable(name: "s", arg: 1, scope: !2506, file: !248, line: 964, type: !21)
!2511 = !DILocalVariable(name: "arg", arg: 2, scope: !2506, file: !248, line: 964, type: !48)
!2512 = !DILocalVariable(name: "argsize", arg: 3, scope: !2506, file: !248, line: 964, type: !45)
!2513 = !DILocation(line: 0, scope: !2506)
!2514 = !DILocation(line: 0, scope: !2453, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 966, column: 10, scope: !2506)
!2516 = !DILocation(line: 953, column: 3, scope: !2453, inlinedAt: !2515)
!2517 = !DILocation(line: 953, column: 32, scope: !2453, inlinedAt: !2515)
!2518 = !{!2519}
!2519 = distinct !{!2519, !2520, !"quoting_options_from_style: argument 0"}
!2520 = distinct !{!2520, !"quoting_options_from_style"}
!2521 = !DILocation(line: 953, column: 36, scope: !2453, inlinedAt: !2515)
!2522 = !DILocation(line: 0, scope: !2436, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 953, column: 36, scope: !2453, inlinedAt: !2515)
!2524 = !DILocation(line: 185, column: 26, scope: !2436, inlinedAt: !2523)
!2525 = !DILocation(line: 186, column: 13, scope: !2445, inlinedAt: !2523)
!2526 = !DILocation(line: 186, column: 7, scope: !2436, inlinedAt: !2523)
!2527 = !DILocation(line: 187, column: 5, scope: !2445, inlinedAt: !2523)
!2528 = !DILocation(line: 188, column: 5, scope: !2436, inlinedAt: !2523)
!2529 = !DILocation(line: 188, column: 11, scope: !2436, inlinedAt: !2523)
!2530 = !DILocation(line: 954, column: 10, scope: !2453, inlinedAt: !2515)
!2531 = !DILocation(line: 955, column: 1, scope: !2453, inlinedAt: !2515)
!2532 = !DILocation(line: 966, column: 3, scope: !2506)
!2533 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !248, file: !248, line: 970, type: !2534, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!41, !48, !45, !42}
!2536 = !{!2537, !2538, !2539, !2540}
!2537 = !DILocalVariable(name: "arg", arg: 1, scope: !2533, file: !248, line: 970, type: !48)
!2538 = !DILocalVariable(name: "argsize", arg: 2, scope: !2533, file: !248, line: 970, type: !45)
!2539 = !DILocalVariable(name: "ch", arg: 3, scope: !2533, file: !248, line: 970, type: !42)
!2540 = !DILocalVariable(name: "options", scope: !2533, file: !248, line: 972, type: !265)
!2541 = !DILocation(line: 0, scope: !2533)
!2542 = !DILocation(line: 972, column: 3, scope: !2533)
!2543 = !DILocation(line: 972, column: 26, scope: !2533)
!2544 = !DILocation(line: 973, column: 13, scope: !2533)
!2545 = !{i64 0, i64 4, !538, i64 4, i64 4, !529, i64 8, i64 32, !538, i64 40, i64 8, !439, i64 48, i64 8, !439}
!2546 = !DILocation(line: 0, scope: !1552, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 974, column: 3, scope: !2533)
!2548 = !DILocation(line: 147, column: 62, scope: !1552, inlinedAt: !2547)
!2549 = !DILocation(line: 147, column: 57, scope: !1552, inlinedAt: !2547)
!2550 = !DILocation(line: 148, column: 15, scope: !1552, inlinedAt: !2547)
!2551 = !DILocation(line: 149, column: 21, scope: !1552, inlinedAt: !2547)
!2552 = !DILocation(line: 149, column: 24, scope: !1552, inlinedAt: !2547)
!2553 = !DILocation(line: 149, column: 34, scope: !1552, inlinedAt: !2547)
!2554 = !DILocation(line: 150, column: 19, scope: !1552, inlinedAt: !2547)
!2555 = !DILocation(line: 150, column: 24, scope: !1552, inlinedAt: !2547)
!2556 = !DILocation(line: 150, column: 6, scope: !1552, inlinedAt: !2547)
!2557 = !DILocation(line: 975, column: 10, scope: !2533)
!2558 = !DILocation(line: 976, column: 1, scope: !2533)
!2559 = !DILocation(line: 975, column: 3, scope: !2533)
!2560 = distinct !DISubprogram(name: "quotearg_char", scope: !248, file: !248, line: 979, type: !2561, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!41, !48, !42}
!2563 = !{!2564, !2565}
!2564 = !DILocalVariable(name: "arg", arg: 1, scope: !2560, file: !248, line: 979, type: !48)
!2565 = !DILocalVariable(name: "ch", arg: 2, scope: !2560, file: !248, line: 979, type: !42)
!2566 = !DILocation(line: 0, scope: !2560)
!2567 = !DILocation(line: 0, scope: !2533, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 981, column: 10, scope: !2560)
!2569 = !DILocation(line: 972, column: 3, scope: !2533, inlinedAt: !2568)
!2570 = !DILocation(line: 972, column: 26, scope: !2533, inlinedAt: !2568)
!2571 = !DILocation(line: 973, column: 13, scope: !2533, inlinedAt: !2568)
!2572 = !DILocation(line: 0, scope: !1552, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 974, column: 3, scope: !2533, inlinedAt: !2568)
!2574 = !DILocation(line: 147, column: 62, scope: !1552, inlinedAt: !2573)
!2575 = !DILocation(line: 147, column: 57, scope: !1552, inlinedAt: !2573)
!2576 = !DILocation(line: 148, column: 15, scope: !1552, inlinedAt: !2573)
!2577 = !DILocation(line: 149, column: 21, scope: !1552, inlinedAt: !2573)
!2578 = !DILocation(line: 149, column: 24, scope: !1552, inlinedAt: !2573)
!2579 = !DILocation(line: 149, column: 34, scope: !1552, inlinedAt: !2573)
!2580 = !DILocation(line: 150, column: 19, scope: !1552, inlinedAt: !2573)
!2581 = !DILocation(line: 150, column: 24, scope: !1552, inlinedAt: !2573)
!2582 = !DILocation(line: 150, column: 6, scope: !1552, inlinedAt: !2573)
!2583 = !DILocation(line: 975, column: 10, scope: !2533, inlinedAt: !2568)
!2584 = !DILocation(line: 976, column: 1, scope: !2533, inlinedAt: !2568)
!2585 = !DILocation(line: 981, column: 3, scope: !2560)
!2586 = distinct !DISubprogram(name: "quotearg_colon", scope: !248, file: !248, line: 985, type: !641, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2587)
!2587 = !{!2588}
!2588 = !DILocalVariable(name: "arg", arg: 1, scope: !2586, file: !248, line: 985, type: !48)
!2589 = !DILocation(line: 0, scope: !2586)
!2590 = !DILocation(line: 0, scope: !2560, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 987, column: 10, scope: !2586)
!2592 = !DILocation(line: 0, scope: !2533, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 981, column: 10, scope: !2560, inlinedAt: !2591)
!2594 = !DILocation(line: 972, column: 3, scope: !2533, inlinedAt: !2593)
!2595 = !DILocation(line: 972, column: 26, scope: !2533, inlinedAt: !2593)
!2596 = !DILocation(line: 973, column: 13, scope: !2533, inlinedAt: !2593)
!2597 = !DILocation(line: 0, scope: !1552, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 974, column: 3, scope: !2533, inlinedAt: !2593)
!2599 = !DILocation(line: 147, column: 57, scope: !1552, inlinedAt: !2598)
!2600 = !DILocation(line: 149, column: 21, scope: !1552, inlinedAt: !2598)
!2601 = !DILocation(line: 150, column: 6, scope: !1552, inlinedAt: !2598)
!2602 = !DILocation(line: 975, column: 10, scope: !2533, inlinedAt: !2593)
!2603 = !DILocation(line: 976, column: 1, scope: !2533, inlinedAt: !2593)
!2604 = !DILocation(line: 987, column: 3, scope: !2586)
!2605 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !248, file: !248, line: 991, type: !2410, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2606)
!2606 = !{!2607, !2608}
!2607 = !DILocalVariable(name: "arg", arg: 1, scope: !2605, file: !248, line: 991, type: !48)
!2608 = !DILocalVariable(name: "argsize", arg: 2, scope: !2605, file: !248, line: 991, type: !45)
!2609 = !DILocation(line: 0, scope: !2605)
!2610 = !DILocation(line: 0, scope: !2533, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 993, column: 10, scope: !2605)
!2612 = !DILocation(line: 972, column: 3, scope: !2533, inlinedAt: !2611)
!2613 = !DILocation(line: 972, column: 26, scope: !2533, inlinedAt: !2611)
!2614 = !DILocation(line: 973, column: 13, scope: !2533, inlinedAt: !2611)
!2615 = !DILocation(line: 0, scope: !1552, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 974, column: 3, scope: !2533, inlinedAt: !2611)
!2617 = !DILocation(line: 147, column: 57, scope: !1552, inlinedAt: !2616)
!2618 = !DILocation(line: 149, column: 21, scope: !1552, inlinedAt: !2616)
!2619 = !DILocation(line: 150, column: 6, scope: !1552, inlinedAt: !2616)
!2620 = !DILocation(line: 975, column: 10, scope: !2533, inlinedAt: !2611)
!2621 = !DILocation(line: 976, column: 1, scope: !2533, inlinedAt: !2611)
!2622 = !DILocation(line: 993, column: 3, scope: !2605)
!2623 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !248, file: !248, line: 997, type: !2421, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2624)
!2624 = !{!2625, !2626, !2627, !2628}
!2625 = !DILocalVariable(name: "n", arg: 1, scope: !2623, file: !248, line: 997, type: !43)
!2626 = !DILocalVariable(name: "s", arg: 2, scope: !2623, file: !248, line: 997, type: !21)
!2627 = !DILocalVariable(name: "arg", arg: 3, scope: !2623, file: !248, line: 997, type: !48)
!2628 = !DILocalVariable(name: "options", scope: !2623, file: !248, line: 999, type: !265)
!2629 = !DILocation(line: 0, scope: !2623)
!2630 = !DILocation(line: 999, column: 3, scope: !2623)
!2631 = !DILocation(line: 999, column: 26, scope: !2623)
!2632 = !DILocation(line: 0, scope: !2436, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 1000, column: 13, scope: !2623)
!2634 = !DILocation(line: 186, column: 13, scope: !2445, inlinedAt: !2633)
!2635 = !DILocation(line: 186, column: 7, scope: !2436, inlinedAt: !2633)
!2636 = !DILocation(line: 187, column: 5, scope: !2445, inlinedAt: !2633)
!2637 = !{!2638}
!2638 = distinct !{!2638, !2639, !"quoting_options_from_style: argument 0"}
!2639 = distinct !{!2639, !"quoting_options_from_style"}
!2640 = !DILocation(line: 1000, column: 13, scope: !2623)
!2641 = !DILocation(line: 0, scope: !1552, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 1001, column: 3, scope: !2623)
!2643 = !DILocation(line: 147, column: 57, scope: !1552, inlinedAt: !2642)
!2644 = !DILocation(line: 149, column: 21, scope: !1552, inlinedAt: !2642)
!2645 = !DILocation(line: 150, column: 6, scope: !1552, inlinedAt: !2642)
!2646 = !DILocation(line: 1002, column: 10, scope: !2623)
!2647 = !DILocation(line: 1003, column: 1, scope: !2623)
!2648 = !DILocation(line: 1002, column: 3, scope: !2623)
!2649 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !248, file: !248, line: 1006, type: !2650, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2652)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!41, !43, !48, !48, !48}
!2652 = !{!2653, !2654, !2655, !2656}
!2653 = !DILocalVariable(name: "n", arg: 1, scope: !2649, file: !248, line: 1006, type: !43)
!2654 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2649, file: !248, line: 1006, type: !48)
!2655 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2649, file: !248, line: 1007, type: !48)
!2656 = !DILocalVariable(name: "arg", arg: 4, scope: !2649, file: !248, line: 1007, type: !48)
!2657 = !DILocation(line: 0, scope: !2649)
!2658 = !DILocalVariable(name: "n", arg: 1, scope: !2659, file: !248, line: 1014, type: !43)
!2659 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !248, file: !248, line: 1014, type: !2660, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2662)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!41, !43, !48, !48, !48, !45}
!2662 = !{!2658, !2663, !2664, !2665, !2666, !2667}
!2663 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2659, file: !248, line: 1014, type: !48)
!2664 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2659, file: !248, line: 1015, type: !48)
!2665 = !DILocalVariable(name: "arg", arg: 4, scope: !2659, file: !248, line: 1016, type: !48)
!2666 = !DILocalVariable(name: "argsize", arg: 5, scope: !2659, file: !248, line: 1016, type: !45)
!2667 = !DILocalVariable(name: "o", scope: !2659, file: !248, line: 1018, type: !265)
!2668 = !DILocation(line: 0, scope: !2659, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 1009, column: 10, scope: !2649)
!2670 = !DILocation(line: 1018, column: 3, scope: !2659, inlinedAt: !2669)
!2671 = !DILocation(line: 1018, column: 26, scope: !2659, inlinedAt: !2669)
!2672 = !DILocation(line: 1018, column: 30, scope: !2659, inlinedAt: !2669)
!2673 = !DILocation(line: 0, scope: !1592, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 1019, column: 3, scope: !2659, inlinedAt: !2669)
!2675 = !DILocation(line: 174, column: 6, scope: !1592, inlinedAt: !2674)
!2676 = !DILocation(line: 174, column: 12, scope: !1592, inlinedAt: !2674)
!2677 = !DILocation(line: 175, column: 8, scope: !1606, inlinedAt: !2674)
!2678 = !DILocation(line: 175, column: 19, scope: !1606, inlinedAt: !2674)
!2679 = !DILocation(line: 176, column: 5, scope: !1606, inlinedAt: !2674)
!2680 = !DILocation(line: 177, column: 6, scope: !1592, inlinedAt: !2674)
!2681 = !DILocation(line: 177, column: 17, scope: !1592, inlinedAt: !2674)
!2682 = !DILocation(line: 178, column: 6, scope: !1592, inlinedAt: !2674)
!2683 = !DILocation(line: 178, column: 18, scope: !1592, inlinedAt: !2674)
!2684 = !DILocation(line: 1020, column: 10, scope: !2659, inlinedAt: !2669)
!2685 = !DILocation(line: 1021, column: 1, scope: !2659, inlinedAt: !2669)
!2686 = !DILocation(line: 1009, column: 3, scope: !2649)
!2687 = !DILocation(line: 0, scope: !2659)
!2688 = !DILocation(line: 1018, column: 3, scope: !2659)
!2689 = !DILocation(line: 1018, column: 26, scope: !2659)
!2690 = !DILocation(line: 1018, column: 30, scope: !2659)
!2691 = !DILocation(line: 0, scope: !1592, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 1019, column: 3, scope: !2659)
!2693 = !DILocation(line: 174, column: 6, scope: !1592, inlinedAt: !2692)
!2694 = !DILocation(line: 174, column: 12, scope: !1592, inlinedAt: !2692)
!2695 = !DILocation(line: 175, column: 8, scope: !1606, inlinedAt: !2692)
!2696 = !DILocation(line: 175, column: 19, scope: !1606, inlinedAt: !2692)
!2697 = !DILocation(line: 176, column: 5, scope: !1606, inlinedAt: !2692)
!2698 = !DILocation(line: 177, column: 6, scope: !1592, inlinedAt: !2692)
!2699 = !DILocation(line: 177, column: 17, scope: !1592, inlinedAt: !2692)
!2700 = !DILocation(line: 178, column: 6, scope: !1592, inlinedAt: !2692)
!2701 = !DILocation(line: 178, column: 18, scope: !1592, inlinedAt: !2692)
!2702 = !DILocation(line: 1020, column: 10, scope: !2659)
!2703 = !DILocation(line: 1021, column: 1, scope: !2659)
!2704 = !DILocation(line: 1020, column: 3, scope: !2659)
!2705 = distinct !DISubprogram(name: "quotearg_custom", scope: !248, file: !248, line: 1024, type: !2706, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2708)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!41, !48, !48, !48}
!2708 = !{!2709, !2710, !2711}
!2709 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2705, file: !248, line: 1024, type: !48)
!2710 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2705, file: !248, line: 1024, type: !48)
!2711 = !DILocalVariable(name: "arg", arg: 3, scope: !2705, file: !248, line: 1025, type: !48)
!2712 = !DILocation(line: 0, scope: !2705)
!2713 = !DILocation(line: 0, scope: !2649, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 1027, column: 10, scope: !2705)
!2715 = !DILocation(line: 0, scope: !2659, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 1009, column: 10, scope: !2649, inlinedAt: !2714)
!2717 = !DILocation(line: 1018, column: 3, scope: !2659, inlinedAt: !2716)
!2718 = !DILocation(line: 1018, column: 26, scope: !2659, inlinedAt: !2716)
!2719 = !DILocation(line: 1018, column: 30, scope: !2659, inlinedAt: !2716)
!2720 = !DILocation(line: 0, scope: !1592, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 1019, column: 3, scope: !2659, inlinedAt: !2716)
!2722 = !DILocation(line: 174, column: 6, scope: !1592, inlinedAt: !2721)
!2723 = !DILocation(line: 174, column: 12, scope: !1592, inlinedAt: !2721)
!2724 = !DILocation(line: 175, column: 8, scope: !1606, inlinedAt: !2721)
!2725 = !DILocation(line: 175, column: 19, scope: !1606, inlinedAt: !2721)
!2726 = !DILocation(line: 176, column: 5, scope: !1606, inlinedAt: !2721)
!2727 = !DILocation(line: 177, column: 6, scope: !1592, inlinedAt: !2721)
!2728 = !DILocation(line: 177, column: 17, scope: !1592, inlinedAt: !2721)
!2729 = !DILocation(line: 178, column: 6, scope: !1592, inlinedAt: !2721)
!2730 = !DILocation(line: 178, column: 18, scope: !1592, inlinedAt: !2721)
!2731 = !DILocation(line: 1020, column: 10, scope: !2659, inlinedAt: !2716)
!2732 = !DILocation(line: 1021, column: 1, scope: !2659, inlinedAt: !2716)
!2733 = !DILocation(line: 1027, column: 3, scope: !2705)
!2734 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !248, file: !248, line: 1031, type: !2735, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2737)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!41, !48, !48, !48, !45}
!2737 = !{!2738, !2739, !2740, !2741}
!2738 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2734, file: !248, line: 1031, type: !48)
!2739 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2734, file: !248, line: 1031, type: !48)
!2740 = !DILocalVariable(name: "arg", arg: 3, scope: !2734, file: !248, line: 1032, type: !48)
!2741 = !DILocalVariable(name: "argsize", arg: 4, scope: !2734, file: !248, line: 1032, type: !45)
!2742 = !DILocation(line: 0, scope: !2734)
!2743 = !DILocation(line: 0, scope: !2659, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 1034, column: 10, scope: !2734)
!2745 = !DILocation(line: 1018, column: 3, scope: !2659, inlinedAt: !2744)
!2746 = !DILocation(line: 1018, column: 26, scope: !2659, inlinedAt: !2744)
!2747 = !DILocation(line: 1018, column: 30, scope: !2659, inlinedAt: !2744)
!2748 = !DILocation(line: 0, scope: !1592, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 1019, column: 3, scope: !2659, inlinedAt: !2744)
!2750 = !DILocation(line: 174, column: 6, scope: !1592, inlinedAt: !2749)
!2751 = !DILocation(line: 174, column: 12, scope: !1592, inlinedAt: !2749)
!2752 = !DILocation(line: 175, column: 8, scope: !1606, inlinedAt: !2749)
!2753 = !DILocation(line: 175, column: 19, scope: !1606, inlinedAt: !2749)
!2754 = !DILocation(line: 176, column: 5, scope: !1606, inlinedAt: !2749)
!2755 = !DILocation(line: 177, column: 6, scope: !1592, inlinedAt: !2749)
!2756 = !DILocation(line: 177, column: 17, scope: !1592, inlinedAt: !2749)
!2757 = !DILocation(line: 178, column: 6, scope: !1592, inlinedAt: !2749)
!2758 = !DILocation(line: 178, column: 18, scope: !1592, inlinedAt: !2749)
!2759 = !DILocation(line: 1020, column: 10, scope: !2659, inlinedAt: !2744)
!2760 = !DILocation(line: 1021, column: 1, scope: !2659, inlinedAt: !2744)
!2761 = !DILocation(line: 1034, column: 3, scope: !2734)
!2762 = distinct !DISubprogram(name: "quote_n_mem", scope: !248, file: !248, line: 1049, type: !2763, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2765)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!48, !43, !48, !45}
!2765 = !{!2766, !2767, !2768}
!2766 = !DILocalVariable(name: "n", arg: 1, scope: !2762, file: !248, line: 1049, type: !43)
!2767 = !DILocalVariable(name: "arg", arg: 2, scope: !2762, file: !248, line: 1049, type: !48)
!2768 = !DILocalVariable(name: "argsize", arg: 3, scope: !2762, file: !248, line: 1049, type: !45)
!2769 = !DILocation(line: 0, scope: !2762)
!2770 = !DILocation(line: 1051, column: 10, scope: !2762)
!2771 = !DILocation(line: 1051, column: 3, scope: !2762)
!2772 = distinct !DISubprogram(name: "quote_mem", scope: !248, file: !248, line: 1055, type: !2773, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2775)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!48, !48, !45}
!2775 = !{!2776, !2777}
!2776 = !DILocalVariable(name: "arg", arg: 1, scope: !2772, file: !248, line: 1055, type: !48)
!2777 = !DILocalVariable(name: "argsize", arg: 2, scope: !2772, file: !248, line: 1055, type: !45)
!2778 = !DILocation(line: 0, scope: !2772)
!2779 = !DILocation(line: 0, scope: !2762, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 1057, column: 10, scope: !2772)
!2781 = !DILocation(line: 1051, column: 10, scope: !2762, inlinedAt: !2780)
!2782 = !DILocation(line: 1057, column: 3, scope: !2772)
!2783 = distinct !DISubprogram(name: "quote_n", scope: !248, file: !248, line: 1061, type: !2784, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2786)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!48, !43, !48}
!2786 = !{!2787, !2788}
!2787 = !DILocalVariable(name: "n", arg: 1, scope: !2783, file: !248, line: 1061, type: !43)
!2788 = !DILocalVariable(name: "arg", arg: 2, scope: !2783, file: !248, line: 1061, type: !48)
!2789 = !DILocation(line: 0, scope: !2783)
!2790 = !DILocation(line: 0, scope: !2762, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 1063, column: 10, scope: !2783)
!2792 = !DILocation(line: 1051, column: 10, scope: !2762, inlinedAt: !2791)
!2793 = !DILocation(line: 1063, column: 3, scope: !2783)
!2794 = distinct !DISubprogram(name: "quote", scope: !248, file: !248, line: 1067, type: !2795, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!48, !48}
!2797 = !{!2798}
!2798 = !DILocalVariable(name: "arg", arg: 1, scope: !2794, file: !248, line: 1067, type: !48)
!2799 = !DILocation(line: 0, scope: !2794)
!2800 = !DILocation(line: 0, scope: !2783, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 1069, column: 10, scope: !2794)
!2802 = !DILocation(line: 0, scope: !2762, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 1063, column: 10, scope: !2783, inlinedAt: !2801)
!2804 = !DILocation(line: 1051, column: 10, scope: !2762, inlinedAt: !2803)
!2805 = !DILocation(line: 1069, column: 3, scope: !2794)
!2806 = distinct !DISubprogram(name: "get_root_dev_ino", scope: !353, file: !353, line: 29, type: !2807, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2814)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!2809, !2809}
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !832, line: 30, size: 128, elements: !2811)
!2811 = !{!2812, !2813}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2810, file: !832, line: 32, baseType: !835, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2810, file: !832, line: 33, baseType: !838, size: 64, offset: 64)
!2814 = !{!2815, !2816}
!2815 = !DILocalVariable(name: "root_d_i", arg: 1, scope: !2806, file: !353, line: 29, type: !2809)
!2816 = !DILocalVariable(name: "statbuf", scope: !2806, file: !353, line: 31, type: !2817)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !705, line: 44, size: 1024, elements: !2818)
!2818 = !{!2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2836, !2837, !2838}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2817, file: !705, line: 46, baseType: !708, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2817, file: !705, line: 47, baseType: !710, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2817, file: !705, line: 48, baseType: !712, size: 32, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2817, file: !705, line: 49, baseType: !714, size: 32, offset: 160)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2817, file: !705, line: 50, baseType: !716, size: 32, offset: 192)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2817, file: !705, line: 51, baseType: !718, size: 32, offset: 224)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2817, file: !705, line: 52, baseType: !708, size: 64, offset: 256)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2817, file: !705, line: 53, baseType: !708, size: 64, offset: 320)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2817, file: !705, line: 54, baseType: !103, size: 64, offset: 384)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2817, file: !705, line: 55, baseType: !723, size: 32, offset: 448)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2817, file: !705, line: 56, baseType: !43, size: 32, offset: 480)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2817, file: !705, line: 57, baseType: !726, size: 64, offset: 512)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2817, file: !705, line: 65, baseType: !2832, size: 128, offset: 576)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !729, line: 11, size: 128, elements: !2833)
!2833 = !{!2834, !2835}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2832, file: !729, line: 16, baseType: !732, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2832, file: !729, line: 21, baseType: !734, size: 64, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2817, file: !705, line: 66, baseType: !2832, size: 128, offset: 704)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2817, file: !705, line: 67, baseType: !2832, size: 128, offset: 832)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2817, file: !705, line: 79, baseType: !738, size: 64, offset: 960)
!2839 = !DILocation(line: 0, scope: !2806)
!2840 = !DILocation(line: 31, column: 3, scope: !2806)
!2841 = !DILocation(line: 31, column: 15, scope: !2806)
!2842 = !DILocation(line: 32, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2806, file: !353, line: 32, column: 7)
!2844 = !DILocation(line: 32, column: 7, scope: !2806)
!2845 = !DILocation(line: 35, column: 30, scope: !2806)
!2846 = !DILocation(line: 34, column: 20, scope: !2806)
!2847 = !DILocation(line: 36, column: 3, scope: !2806)
!2848 = !DILocation(line: 37, column: 1, scope: !2806)
!2849 = distinct !DISubprogram(name: "version_etc_arn", scope: !355, file: !355, line: 61, type: !2850, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2887)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{null, !2852, !48, !48, !48, !2886, !45}
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !2854)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !2855)
!2855 = !{!2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2854, file: !81, line: 51, baseType: !43, size: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2854, file: !81, line: 54, baseType: !41, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2854, file: !81, line: 55, baseType: !41, size: 64, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2854, file: !81, line: 56, baseType: !41, size: 64, offset: 192)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2854, file: !81, line: 57, baseType: !41, size: 64, offset: 256)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2854, file: !81, line: 58, baseType: !41, size: 64, offset: 320)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2854, file: !81, line: 59, baseType: !41, size: 64, offset: 384)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2854, file: !81, line: 60, baseType: !41, size: 64, offset: 448)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2854, file: !81, line: 61, baseType: !41, size: 64, offset: 512)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2854, file: !81, line: 64, baseType: !41, size: 64, offset: 576)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2854, file: !81, line: 65, baseType: !41, size: 64, offset: 640)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2854, file: !81, line: 66, baseType: !41, size: 64, offset: 704)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2854, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2854, file: !81, line: 70, baseType: !2870, size: 64, offset: 832)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2854, file: !81, line: 72, baseType: !43, size: 32, offset: 896)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2854, file: !81, line: 73, baseType: !43, size: 32, offset: 928)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2854, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2854, file: !81, line: 77, baseType: !44, size: 16, offset: 1024)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2854, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2854, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2854, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2854, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2854, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2854, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2854, file: !81, line: 93, baseType: !2870, size: 64, offset: 1344)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2854, file: !81, line: 94, baseType: !40, size: 64, offset: 1408)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2854, file: !81, line: 95, baseType: !45, size: 64, offset: 1472)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2854, file: !81, line: 96, baseType: !43, size: 32, offset: 1536)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2854, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!2887 = !{!2888, !2889, !2890, !2891, !2892, !2893}
!2888 = !DILocalVariable(name: "stream", arg: 1, scope: !2849, file: !355, line: 61, type: !2852)
!2889 = !DILocalVariable(name: "command_name", arg: 2, scope: !2849, file: !355, line: 62, type: !48)
!2890 = !DILocalVariable(name: "package", arg: 3, scope: !2849, file: !355, line: 62, type: !48)
!2891 = !DILocalVariable(name: "version", arg: 4, scope: !2849, file: !355, line: 63, type: !48)
!2892 = !DILocalVariable(name: "authors", arg: 5, scope: !2849, file: !355, line: 64, type: !2886)
!2893 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2849, file: !355, line: 64, type: !45)
!2894 = !DILocation(line: 0, scope: !2849)
!2895 = !DILocation(line: 66, column: 7, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2849, file: !355, line: 66, column: 7)
!2897 = !DILocation(line: 66, column: 7, scope: !2849)
!2898 = !DILocation(line: 67, column: 5, scope: !2896)
!2899 = !DILocation(line: 69, column: 5, scope: !2896)
!2900 = !DILocation(line: 83, column: 3, scope: !2849)
!2901 = !DILocation(line: 85, column: 3, scope: !2849)
!2902 = !DILocation(line: 88, column: 3, scope: !2849)
!2903 = !DILocation(line: 95, column: 3, scope: !2849)
!2904 = !DILocation(line: 97, column: 3, scope: !2849)
!2905 = !DILocation(line: 105, column: 7, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2849, file: !355, line: 98, column: 5)
!2907 = !DILocation(line: 106, column: 7, scope: !2906)
!2908 = !DILocation(line: 109, column: 7, scope: !2906)
!2909 = !DILocation(line: 110, column: 7, scope: !2906)
!2910 = !DILocation(line: 113, column: 7, scope: !2906)
!2911 = !DILocation(line: 115, column: 7, scope: !2906)
!2912 = !DILocation(line: 120, column: 7, scope: !2906)
!2913 = !DILocation(line: 122, column: 7, scope: !2906)
!2914 = !DILocation(line: 127, column: 7, scope: !2906)
!2915 = !DILocation(line: 129, column: 7, scope: !2906)
!2916 = !DILocation(line: 134, column: 7, scope: !2906)
!2917 = !DILocation(line: 137, column: 7, scope: !2906)
!2918 = !DILocation(line: 142, column: 7, scope: !2906)
!2919 = !DILocation(line: 145, column: 7, scope: !2906)
!2920 = !DILocation(line: 150, column: 7, scope: !2906)
!2921 = !DILocation(line: 154, column: 7, scope: !2906)
!2922 = !DILocation(line: 159, column: 7, scope: !2906)
!2923 = !DILocation(line: 163, column: 7, scope: !2906)
!2924 = !DILocation(line: 170, column: 7, scope: !2906)
!2925 = !DILocation(line: 174, column: 7, scope: !2906)
!2926 = !DILocation(line: 176, column: 1, scope: !2849)
!2927 = distinct !DISubprogram(name: "version_etc_ar", scope: !355, file: !355, line: 183, type: !2928, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{null, !2852, !48, !48, !48, !2886}
!2930 = !{!2931, !2932, !2933, !2934, !2935, !2936}
!2931 = !DILocalVariable(name: "stream", arg: 1, scope: !2927, file: !355, line: 183, type: !2852)
!2932 = !DILocalVariable(name: "command_name", arg: 2, scope: !2927, file: !355, line: 184, type: !48)
!2933 = !DILocalVariable(name: "package", arg: 3, scope: !2927, file: !355, line: 184, type: !48)
!2934 = !DILocalVariable(name: "version", arg: 4, scope: !2927, file: !355, line: 185, type: !48)
!2935 = !DILocalVariable(name: "authors", arg: 5, scope: !2927, file: !355, line: 185, type: !2886)
!2936 = !DILocalVariable(name: "n_authors", scope: !2927, file: !355, line: 187, type: !45)
!2937 = !DILocation(line: 0, scope: !2927)
!2938 = !DILocation(line: 189, column: 8, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2927, file: !355, line: 189, column: 3)
!2940 = !DILocation(line: 0, scope: !2939)
!2941 = !DILocation(line: 189, column: 23, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2939, file: !355, line: 189, column: 3)
!2943 = !DILocation(line: 189, column: 3, scope: !2939)
!2944 = !DILocation(line: 189, column: 52, scope: !2942)
!2945 = distinct !{!2945, !2943, !2946, !495}
!2946 = !DILocation(line: 190, column: 5, scope: !2939)
!2947 = !DILocation(line: 191, column: 3, scope: !2927)
!2948 = !DILocation(line: 192, column: 1, scope: !2927)
!2949 = distinct !DISubprogram(name: "version_etc_va", scope: !355, file: !355, line: 199, type: !2950, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2963)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{null, !2852, !48, !48, !48, !2952}
!2952 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !174, line: 52, baseType: !2953)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !176, line: 32, baseType: !2954)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2955, baseType: !2956)
!2955 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !180, size: 256, elements: !2957)
!2957 = !{!2958, !2959, !2960, !2961, !2962}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2956, file: !2955, line: 192, baseType: !40, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2956, file: !2955, line: 192, baseType: !40, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2956, file: !2955, line: 192, baseType: !40, size: 64, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2956, file: !2955, line: 192, baseType: !43, size: 32, offset: 192)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2956, file: !2955, line: 192, baseType: !43, size: 32, offset: 224)
!2963 = !{!2964, !2965, !2966, !2967, !2968, !2969, !2970}
!2964 = !DILocalVariable(name: "stream", arg: 1, scope: !2949, file: !355, line: 199, type: !2852)
!2965 = !DILocalVariable(name: "command_name", arg: 2, scope: !2949, file: !355, line: 200, type: !48)
!2966 = !DILocalVariable(name: "package", arg: 3, scope: !2949, file: !355, line: 200, type: !48)
!2967 = !DILocalVariable(name: "version", arg: 4, scope: !2949, file: !355, line: 201, type: !48)
!2968 = !DILocalVariable(name: "authors", arg: 5, scope: !2949, file: !355, line: 201, type: !2952)
!2969 = !DILocalVariable(name: "n_authors", scope: !2949, file: !355, line: 203, type: !45)
!2970 = !DILocalVariable(name: "authtab", scope: !2949, file: !355, line: 204, type: !2971)
!2971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 640, elements: !261)
!2972 = !DILocation(line: 0, scope: !2949)
!2973 = !DILocation(line: 201, column: 46, scope: !2949)
!2974 = !DILocation(line: 204, column: 3, scope: !2949)
!2975 = !DILocation(line: 204, column: 15, scope: !2949)
!2976 = !DILocation(line: 208, column: 35, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !355, line: 206, column: 3)
!2978 = distinct !DILexicalBlock(scope: !2949, file: !355, line: 206, column: 3)
!2979 = !DILocation(line: 208, column: 14, scope: !2977)
!2980 = !DILocation(line: 208, column: 33, scope: !2977)
!2981 = !DILocation(line: 208, column: 67, scope: !2977)
!2982 = !DILocation(line: 206, column: 3, scope: !2978)
!2983 = !DILocation(line: 212, column: 20, scope: !2949)
!2984 = !DILocation(line: 211, column: 3, scope: !2949)
!2985 = !DILocation(line: 213, column: 1, scope: !2949)
!2986 = distinct !DISubprogram(name: "version_etc", scope: !355, file: !355, line: 230, type: !2987, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !2852, !48, !48, !48, null}
!2989 = !{!2990, !2991, !2992, !2993, !2994}
!2990 = !DILocalVariable(name: "stream", arg: 1, scope: !2986, file: !355, line: 230, type: !2852)
!2991 = !DILocalVariable(name: "command_name", arg: 2, scope: !2986, file: !355, line: 231, type: !48)
!2992 = !DILocalVariable(name: "package", arg: 3, scope: !2986, file: !355, line: 231, type: !48)
!2993 = !DILocalVariable(name: "version", arg: 4, scope: !2986, file: !355, line: 232, type: !48)
!2994 = !DILocalVariable(name: "authors", scope: !2986, file: !355, line: 234, type: !2952)
!2995 = !DILocation(line: 0, scope: !2986)
!2996 = !DILocation(line: 234, column: 3, scope: !2986)
!2997 = !DILocation(line: 234, column: 11, scope: !2986)
!2998 = !DILocation(line: 235, column: 3, scope: !2986)
!2999 = !DILocation(line: 236, column: 3, scope: !2986)
!3000 = !DILocation(line: 237, column: 3, scope: !2986)
!3001 = !DILocation(line: 238, column: 1, scope: !2986)
!3002 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !355, file: !355, line: 241, type: !201, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !521)
!3003 = !DILocation(line: 243, column: 3, scope: !3002)
!3004 = !DILocation(line: 248, column: 3, scope: !3002)
!3005 = !DILocation(line: 254, column: 3, scope: !3002)
!3006 = !DILocation(line: 259, column: 3, scope: !3002)
!3007 = !DILocation(line: 261, column: 1, scope: !3002)
!3008 = distinct !DISubprogram(name: "xnrealloc", scope: !3009, file: !3009, line: 147, type: !3010, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3012)
!3009 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!40, !40, !45, !45}
!3012 = !{!3013, !3014, !3015}
!3013 = !DILocalVariable(name: "p", arg: 1, scope: !3008, file: !3009, line: 147, type: !40)
!3014 = !DILocalVariable(name: "n", arg: 2, scope: !3008, file: !3009, line: 147, type: !45)
!3015 = !DILocalVariable(name: "s", arg: 3, scope: !3008, file: !3009, line: 147, type: !45)
!3016 = !DILocation(line: 0, scope: !3008)
!3017 = !DILocalVariable(name: "p", arg: 1, scope: !3018, file: !362, line: 83, type: !40)
!3018 = distinct !DISubprogram(name: "xreallocarray", scope: !362, file: !362, line: 83, type: !3010, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3019)
!3019 = !{!3017, !3020, !3021}
!3020 = !DILocalVariable(name: "n", arg: 2, scope: !3018, file: !362, line: 83, type: !45)
!3021 = !DILocalVariable(name: "s", arg: 3, scope: !3018, file: !362, line: 83, type: !45)
!3022 = !DILocation(line: 0, scope: !3018, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 149, column: 10, scope: !3008)
!3024 = !DILocation(line: 85, column: 25, scope: !3018, inlinedAt: !3023)
!3025 = !DILocalVariable(name: "p", arg: 1, scope: !3026, file: !362, line: 37, type: !40)
!3026 = distinct !DISubprogram(name: "check_nonnull", scope: !362, file: !362, line: 37, type: !3027, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!40, !40}
!3029 = !{!3025}
!3030 = !DILocation(line: 0, scope: !3026, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 85, column: 10, scope: !3018, inlinedAt: !3023)
!3032 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3031)
!3033 = distinct !DILexicalBlock(scope: !3026, file: !362, line: 39, column: 7)
!3034 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3031)
!3035 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3031)
!3036 = !DILocation(line: 149, column: 3, scope: !3008)
!3037 = !DILocation(line: 0, scope: !3018)
!3038 = !DILocation(line: 85, column: 25, scope: !3018)
!3039 = !DILocation(line: 0, scope: !3026, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 85, column: 10, scope: !3018)
!3041 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3040)
!3042 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3040)
!3043 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3040)
!3044 = !DILocation(line: 85, column: 3, scope: !3018)
!3045 = distinct !DISubprogram(name: "xmalloc", scope: !362, file: !362, line: 47, type: !3046, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!40, !45}
!3048 = !{!3049}
!3049 = !DILocalVariable(name: "s", arg: 1, scope: !3045, file: !362, line: 47, type: !45)
!3050 = !DILocation(line: 0, scope: !3045)
!3051 = !DILocation(line: 49, column: 25, scope: !3045)
!3052 = !DILocation(line: 0, scope: !3026, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 49, column: 10, scope: !3045)
!3054 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3053)
!3055 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3053)
!3056 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3053)
!3057 = !DILocation(line: 49, column: 3, scope: !3045)
!3058 = distinct !DISubprogram(name: "ximalloc", scope: !362, file: !362, line: 53, type: !3059, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!40, !381}
!3061 = !{!3062}
!3062 = !DILocalVariable(name: "s", arg: 1, scope: !3058, file: !362, line: 53, type: !381)
!3063 = !DILocation(line: 0, scope: !3058)
!3064 = !DILocalVariable(name: "s", arg: 1, scope: !3065, file: !3066, line: 55, type: !381)
!3065 = distinct !DISubprogram(name: "imalloc", scope: !3066, file: !3066, line: 55, type: !3059, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3067)
!3066 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3067 = !{!3064}
!3068 = !DILocation(line: 0, scope: !3065, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 55, column: 25, scope: !3058)
!3070 = !DILocation(line: 57, column: 26, scope: !3065, inlinedAt: !3069)
!3071 = !DILocation(line: 0, scope: !3026, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 55, column: 10, scope: !3058)
!3073 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3072)
!3074 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3072)
!3075 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3072)
!3076 = !DILocation(line: 55, column: 3, scope: !3058)
!3077 = distinct !DISubprogram(name: "xcharalloc", scope: !362, file: !362, line: 59, type: !1133, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3078)
!3078 = !{!3079}
!3079 = !DILocalVariable(name: "n", arg: 1, scope: !3077, file: !362, line: 59, type: !45)
!3080 = !DILocation(line: 0, scope: !3077)
!3081 = !DILocation(line: 0, scope: !3045, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 61, column: 10, scope: !3077)
!3083 = !DILocation(line: 49, column: 25, scope: !3045, inlinedAt: !3082)
!3084 = !DILocation(line: 0, scope: !3026, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 49, column: 10, scope: !3045, inlinedAt: !3082)
!3086 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3085)
!3087 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3085)
!3088 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3085)
!3089 = !DILocation(line: 61, column: 3, scope: !3077)
!3090 = distinct !DISubprogram(name: "xrealloc", scope: !362, file: !362, line: 68, type: !3091, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3093)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!40, !40, !45}
!3093 = !{!3094, !3095}
!3094 = !DILocalVariable(name: "p", arg: 1, scope: !3090, file: !362, line: 68, type: !40)
!3095 = !DILocalVariable(name: "s", arg: 2, scope: !3090, file: !362, line: 68, type: !45)
!3096 = !DILocation(line: 0, scope: !3090)
!3097 = !DILocalVariable(name: "ptr", arg: 1, scope: !3098, file: !3099, line: 2057, type: !40)
!3098 = distinct !DISubprogram(name: "rpl_realloc", scope: !3099, file: !3099, line: 2057, type: !3091, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3100)
!3099 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3100 = !{!3097, !3101}
!3101 = !DILocalVariable(name: "size", arg: 2, scope: !3098, file: !3099, line: 2057, type: !45)
!3102 = !DILocation(line: 0, scope: !3098, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 70, column: 25, scope: !3090)
!3104 = !DILocation(line: 2059, column: 24, scope: !3098, inlinedAt: !3103)
!3105 = !DILocation(line: 2059, column: 10, scope: !3098, inlinedAt: !3103)
!3106 = !DILocation(line: 0, scope: !3026, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 70, column: 10, scope: !3090)
!3108 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3107)
!3109 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3107)
!3110 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3107)
!3111 = !DILocation(line: 70, column: 3, scope: !3090)
!3112 = distinct !DISubprogram(name: "xirealloc", scope: !362, file: !362, line: 74, type: !3113, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3115)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!40, !40, !381}
!3115 = !{!3116, !3117}
!3116 = !DILocalVariable(name: "p", arg: 1, scope: !3112, file: !362, line: 74, type: !40)
!3117 = !DILocalVariable(name: "s", arg: 2, scope: !3112, file: !362, line: 74, type: !381)
!3118 = !DILocation(line: 0, scope: !3112)
!3119 = !DILocalVariable(name: "p", arg: 1, scope: !3120, file: !3066, line: 66, type: !40)
!3120 = distinct !DISubprogram(name: "irealloc", scope: !3066, file: !3066, line: 66, type: !3113, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3121)
!3121 = !{!3119, !3122}
!3122 = !DILocalVariable(name: "s", arg: 2, scope: !3120, file: !3066, line: 66, type: !381)
!3123 = !DILocation(line: 0, scope: !3120, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 76, column: 25, scope: !3112)
!3125 = !DILocation(line: 0, scope: !3098, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 68, column: 26, scope: !3120, inlinedAt: !3124)
!3127 = !DILocation(line: 2059, column: 24, scope: !3098, inlinedAt: !3126)
!3128 = !DILocation(line: 2059, column: 10, scope: !3098, inlinedAt: !3126)
!3129 = !DILocation(line: 0, scope: !3026, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 76, column: 10, scope: !3112)
!3131 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3130)
!3132 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3130)
!3133 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3130)
!3134 = !DILocation(line: 76, column: 3, scope: !3112)
!3135 = distinct !DISubprogram(name: "xireallocarray", scope: !362, file: !362, line: 89, type: !3136, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!40, !40, !381, !381}
!3138 = !{!3139, !3140, !3141}
!3139 = !DILocalVariable(name: "p", arg: 1, scope: !3135, file: !362, line: 89, type: !40)
!3140 = !DILocalVariable(name: "n", arg: 2, scope: !3135, file: !362, line: 89, type: !381)
!3141 = !DILocalVariable(name: "s", arg: 3, scope: !3135, file: !362, line: 89, type: !381)
!3142 = !DILocation(line: 0, scope: !3135)
!3143 = !DILocalVariable(name: "p", arg: 1, scope: !3144, file: !3066, line: 98, type: !40)
!3144 = distinct !DISubprogram(name: "ireallocarray", scope: !3066, file: !3066, line: 98, type: !3136, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3145)
!3145 = !{!3143, !3146, !3147}
!3146 = !DILocalVariable(name: "n", arg: 2, scope: !3144, file: !3066, line: 98, type: !381)
!3147 = !DILocalVariable(name: "s", arg: 3, scope: !3144, file: !3066, line: 98, type: !381)
!3148 = !DILocation(line: 0, scope: !3144, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 91, column: 25, scope: !3135)
!3150 = !DILocation(line: 101, column: 13, scope: !3144, inlinedAt: !3149)
!3151 = !DILocation(line: 0, scope: !3026, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 91, column: 10, scope: !3135)
!3153 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3152)
!3154 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3152)
!3155 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3152)
!3156 = !DILocation(line: 91, column: 3, scope: !3135)
!3157 = distinct !DISubprogram(name: "xnmalloc", scope: !362, file: !362, line: 98, type: !3158, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3160)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!40, !45, !45}
!3160 = !{!3161, !3162}
!3161 = !DILocalVariable(name: "n", arg: 1, scope: !3157, file: !362, line: 98, type: !45)
!3162 = !DILocalVariable(name: "s", arg: 2, scope: !3157, file: !362, line: 98, type: !45)
!3163 = !DILocation(line: 0, scope: !3157)
!3164 = !DILocation(line: 0, scope: !3018, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 100, column: 10, scope: !3157)
!3166 = !DILocation(line: 85, column: 25, scope: !3018, inlinedAt: !3165)
!3167 = !DILocation(line: 0, scope: !3026, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 85, column: 10, scope: !3018, inlinedAt: !3165)
!3169 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3168)
!3170 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3168)
!3171 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3168)
!3172 = !DILocation(line: 100, column: 3, scope: !3157)
!3173 = distinct !DISubprogram(name: "xinmalloc", scope: !362, file: !362, line: 104, type: !3174, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3176)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!40, !381, !381}
!3176 = !{!3177, !3178}
!3177 = !DILocalVariable(name: "n", arg: 1, scope: !3173, file: !362, line: 104, type: !381)
!3178 = !DILocalVariable(name: "s", arg: 2, scope: !3173, file: !362, line: 104, type: !381)
!3179 = !DILocation(line: 0, scope: !3173)
!3180 = !DILocation(line: 0, scope: !3135, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 106, column: 10, scope: !3173)
!3182 = !DILocation(line: 0, scope: !3144, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 91, column: 25, scope: !3135, inlinedAt: !3181)
!3184 = !DILocation(line: 101, column: 13, scope: !3144, inlinedAt: !3183)
!3185 = !DILocation(line: 0, scope: !3026, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 91, column: 10, scope: !3135, inlinedAt: !3181)
!3187 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3186)
!3188 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3186)
!3189 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3186)
!3190 = !DILocation(line: 106, column: 3, scope: !3173)
!3191 = distinct !DISubprogram(name: "x2realloc", scope: !362, file: !362, line: 116, type: !3192, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!40, !40, !368}
!3194 = !{!3195, !3196}
!3195 = !DILocalVariable(name: "p", arg: 1, scope: !3191, file: !362, line: 116, type: !40)
!3196 = !DILocalVariable(name: "ps", arg: 2, scope: !3191, file: !362, line: 116, type: !368)
!3197 = !DILocation(line: 0, scope: !3191)
!3198 = !DILocation(line: 0, scope: !365, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 118, column: 10, scope: !3191)
!3200 = !DILocation(line: 178, column: 14, scope: !365, inlinedAt: !3199)
!3201 = !DILocation(line: 180, column: 9, scope: !3202, inlinedAt: !3199)
!3202 = distinct !DILexicalBlock(scope: !365, file: !362, line: 180, column: 7)
!3203 = !DILocation(line: 180, column: 7, scope: !365, inlinedAt: !3199)
!3204 = !DILocation(line: 182, column: 13, scope: !3205, inlinedAt: !3199)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !362, line: 182, column: 11)
!3206 = distinct !DILexicalBlock(scope: !3202, file: !362, line: 181, column: 5)
!3207 = !DILocation(line: 182, column: 11, scope: !3206, inlinedAt: !3199)
!3208 = !DILocation(line: 197, column: 11, scope: !3209, inlinedAt: !3199)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !362, line: 197, column: 11)
!3210 = distinct !DILexicalBlock(scope: !3202, file: !362, line: 195, column: 5)
!3211 = !DILocation(line: 197, column: 11, scope: !3210, inlinedAt: !3199)
!3212 = !DILocation(line: 198, column: 9, scope: !3209, inlinedAt: !3199)
!3213 = !DILocation(line: 0, scope: !3018, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 201, column: 7, scope: !365, inlinedAt: !3199)
!3215 = !DILocation(line: 85, column: 25, scope: !3018, inlinedAt: !3214)
!3216 = !DILocation(line: 0, scope: !3026, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 85, column: 10, scope: !3018, inlinedAt: !3214)
!3218 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3217)
!3219 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3217)
!3220 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3217)
!3221 = !DILocation(line: 202, column: 7, scope: !365, inlinedAt: !3199)
!3222 = !DILocation(line: 118, column: 3, scope: !3191)
!3223 = !DILocation(line: 0, scope: !365)
!3224 = !DILocation(line: 178, column: 14, scope: !365)
!3225 = !DILocation(line: 180, column: 9, scope: !3202)
!3226 = !DILocation(line: 180, column: 7, scope: !365)
!3227 = !DILocation(line: 182, column: 13, scope: !3205)
!3228 = !DILocation(line: 182, column: 11, scope: !3206)
!3229 = !DILocation(line: 190, column: 30, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3205, file: !362, line: 183, column: 9)
!3231 = !DILocation(line: 191, column: 16, scope: !3230)
!3232 = !DILocation(line: 191, column: 13, scope: !3230)
!3233 = !DILocation(line: 192, column: 9, scope: !3230)
!3234 = !DILocation(line: 197, column: 11, scope: !3209)
!3235 = !DILocation(line: 197, column: 11, scope: !3210)
!3236 = !DILocation(line: 198, column: 9, scope: !3209)
!3237 = !DILocation(line: 0, scope: !3018, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 201, column: 7, scope: !365)
!3239 = !DILocation(line: 85, column: 25, scope: !3018, inlinedAt: !3238)
!3240 = !DILocation(line: 0, scope: !3026, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 85, column: 10, scope: !3018, inlinedAt: !3238)
!3242 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3241)
!3243 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3241)
!3244 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3241)
!3245 = !DILocation(line: 202, column: 7, scope: !365)
!3246 = !DILocation(line: 203, column: 3, scope: !365)
!3247 = !DILocation(line: 0, scope: !377)
!3248 = !DILocation(line: 230, column: 14, scope: !377)
!3249 = !DILocation(line: 238, column: 7, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !377, file: !362, line: 238, column: 7)
!3251 = !DILocation(line: 238, column: 7, scope: !377)
!3252 = !DILocation(line: 240, column: 9, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !377, file: !362, line: 240, column: 7)
!3254 = !DILocation(line: 240, column: 18, scope: !3253)
!3255 = !DILocation(line: 253, column: 8, scope: !377)
!3256 = !DILocation(line: 258, column: 27, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !362, line: 257, column: 5)
!3258 = distinct !DILexicalBlock(scope: !377, file: !362, line: 256, column: 7)
!3259 = !DILocation(line: 259, column: 32, scope: !3257)
!3260 = !DILocation(line: 260, column: 5, scope: !3257)
!3261 = !DILocation(line: 262, column: 9, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !377, file: !362, line: 262, column: 7)
!3263 = !DILocation(line: 262, column: 7, scope: !377)
!3264 = !DILocation(line: 263, column: 9, scope: !3262)
!3265 = !DILocation(line: 263, column: 5, scope: !3262)
!3266 = !DILocation(line: 264, column: 9, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !377, file: !362, line: 264, column: 7)
!3268 = !DILocation(line: 264, column: 14, scope: !3267)
!3269 = !DILocation(line: 265, column: 7, scope: !3267)
!3270 = !DILocation(line: 265, column: 11, scope: !3267)
!3271 = !DILocation(line: 266, column: 11, scope: !3267)
!3272 = !DILocation(line: 266, column: 26, scope: !3267)
!3273 = !DILocation(line: 267, column: 14, scope: !3267)
!3274 = !DILocation(line: 264, column: 7, scope: !377)
!3275 = !DILocation(line: 268, column: 5, scope: !3267)
!3276 = !DILocation(line: 0, scope: !3090, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 269, column: 8, scope: !377)
!3278 = !DILocation(line: 0, scope: !3098, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 70, column: 25, scope: !3090, inlinedAt: !3277)
!3280 = !DILocation(line: 2059, column: 24, scope: !3098, inlinedAt: !3279)
!3281 = !DILocation(line: 2059, column: 10, scope: !3098, inlinedAt: !3279)
!3282 = !DILocation(line: 0, scope: !3026, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 70, column: 10, scope: !3090, inlinedAt: !3277)
!3284 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3283)
!3285 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3283)
!3286 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3283)
!3287 = !DILocation(line: 270, column: 7, scope: !377)
!3288 = !DILocation(line: 271, column: 3, scope: !377)
!3289 = distinct !DISubprogram(name: "xzalloc", scope: !362, file: !362, line: 279, type: !3046, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3290)
!3290 = !{!3291}
!3291 = !DILocalVariable(name: "s", arg: 1, scope: !3289, file: !362, line: 279, type: !45)
!3292 = !DILocation(line: 0, scope: !3289)
!3293 = !DILocalVariable(name: "n", arg: 1, scope: !3294, file: !362, line: 294, type: !45)
!3294 = distinct !DISubprogram(name: "xcalloc", scope: !362, file: !362, line: 294, type: !3158, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3295)
!3295 = !{!3293, !3296}
!3296 = !DILocalVariable(name: "s", arg: 2, scope: !3294, file: !362, line: 294, type: !45)
!3297 = !DILocation(line: 0, scope: !3294, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 281, column: 10, scope: !3289)
!3299 = !DILocation(line: 296, column: 25, scope: !3294, inlinedAt: !3298)
!3300 = !DILocation(line: 0, scope: !3026, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 296, column: 10, scope: !3294, inlinedAt: !3298)
!3302 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3301)
!3303 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3301)
!3304 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3301)
!3305 = !DILocation(line: 281, column: 3, scope: !3289)
!3306 = !DILocation(line: 0, scope: !3294)
!3307 = !DILocation(line: 296, column: 25, scope: !3294)
!3308 = !DILocation(line: 0, scope: !3026, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 296, column: 10, scope: !3294)
!3310 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3309)
!3311 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3309)
!3312 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3309)
!3313 = !DILocation(line: 296, column: 3, scope: !3294)
!3314 = distinct !DISubprogram(name: "xizalloc", scope: !362, file: !362, line: 285, type: !3059, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3315)
!3315 = !{!3316}
!3316 = !DILocalVariable(name: "s", arg: 1, scope: !3314, file: !362, line: 285, type: !381)
!3317 = !DILocation(line: 0, scope: !3314)
!3318 = !DILocalVariable(name: "n", arg: 1, scope: !3319, file: !362, line: 300, type: !381)
!3319 = distinct !DISubprogram(name: "xicalloc", scope: !362, file: !362, line: 300, type: !3174, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3320)
!3320 = !{!3318, !3321}
!3321 = !DILocalVariable(name: "s", arg: 2, scope: !3319, file: !362, line: 300, type: !381)
!3322 = !DILocation(line: 0, scope: !3319, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 287, column: 10, scope: !3314)
!3324 = !DILocalVariable(name: "n", arg: 1, scope: !3325, file: !3066, line: 77, type: !381)
!3325 = distinct !DISubprogram(name: "icalloc", scope: !3066, file: !3066, line: 77, type: !3174, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3326)
!3326 = !{!3324, !3327}
!3327 = !DILocalVariable(name: "s", arg: 2, scope: !3325, file: !3066, line: 77, type: !381)
!3328 = !DILocation(line: 0, scope: !3325, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 302, column: 25, scope: !3319, inlinedAt: !3323)
!3330 = !DILocation(line: 91, column: 10, scope: !3325, inlinedAt: !3329)
!3331 = !DILocation(line: 0, scope: !3026, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 302, column: 10, scope: !3319, inlinedAt: !3323)
!3333 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3332)
!3334 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3332)
!3335 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3332)
!3336 = !DILocation(line: 287, column: 3, scope: !3314)
!3337 = !DILocation(line: 0, scope: !3319)
!3338 = !DILocation(line: 0, scope: !3325, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 302, column: 25, scope: !3319)
!3340 = !DILocation(line: 91, column: 10, scope: !3325, inlinedAt: !3339)
!3341 = !DILocation(line: 0, scope: !3026, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 302, column: 10, scope: !3319)
!3343 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3342)
!3344 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3342)
!3345 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3342)
!3346 = !DILocation(line: 302, column: 3, scope: !3319)
!3347 = distinct !DISubprogram(name: "xmemdup", scope: !362, file: !362, line: 310, type: !3348, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!40, !647, !45}
!3350 = !{!3351, !3352}
!3351 = !DILocalVariable(name: "p", arg: 1, scope: !3347, file: !362, line: 310, type: !647)
!3352 = !DILocalVariable(name: "s", arg: 2, scope: !3347, file: !362, line: 310, type: !45)
!3353 = !DILocation(line: 0, scope: !3347)
!3354 = !DILocation(line: 0, scope: !3045, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 312, column: 18, scope: !3347)
!3356 = !DILocation(line: 49, column: 25, scope: !3045, inlinedAt: !3355)
!3357 = !DILocation(line: 0, scope: !3026, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 49, column: 10, scope: !3045, inlinedAt: !3355)
!3359 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3358)
!3360 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3358)
!3361 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3358)
!3362 = !DILocalVariable(name: "__dest", arg: 1, scope: !3363, file: !1030, line: 26, type: !1033)
!3363 = distinct !DISubprogram(name: "memcpy", scope: !1030, file: !1030, line: 26, type: !1031, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3364)
!3364 = !{!3362, !3365, !3366}
!3365 = !DILocalVariable(name: "__src", arg: 2, scope: !3363, file: !1030, line: 26, type: !646)
!3366 = !DILocalVariable(name: "__len", arg: 3, scope: !3363, file: !1030, line: 26, type: !45)
!3367 = !DILocation(line: 0, scope: !3363, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 312, column: 10, scope: !3347)
!3369 = !DILocation(line: 29, column: 10, scope: !3363, inlinedAt: !3368)
!3370 = !DILocation(line: 312, column: 3, scope: !3347)
!3371 = distinct !DISubprogram(name: "ximemdup", scope: !362, file: !362, line: 316, type: !3372, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3374)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!40, !647, !381}
!3374 = !{!3375, !3376}
!3375 = !DILocalVariable(name: "p", arg: 1, scope: !3371, file: !362, line: 316, type: !647)
!3376 = !DILocalVariable(name: "s", arg: 2, scope: !3371, file: !362, line: 316, type: !381)
!3377 = !DILocation(line: 0, scope: !3371)
!3378 = !DILocation(line: 0, scope: !3058, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 318, column: 18, scope: !3371)
!3380 = !DILocation(line: 0, scope: !3065, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 55, column: 25, scope: !3058, inlinedAt: !3379)
!3382 = !DILocation(line: 57, column: 26, scope: !3065, inlinedAt: !3381)
!3383 = !DILocation(line: 0, scope: !3026, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 55, column: 10, scope: !3058, inlinedAt: !3379)
!3385 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3384)
!3386 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3384)
!3387 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3384)
!3388 = !DILocation(line: 0, scope: !3363, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 318, column: 10, scope: !3371)
!3390 = !DILocation(line: 29, column: 10, scope: !3363, inlinedAt: !3389)
!3391 = !DILocation(line: 318, column: 3, scope: !3371)
!3392 = distinct !DISubprogram(name: "ximemdup0", scope: !362, file: !362, line: 325, type: !3393, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3395)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!41, !647, !381}
!3395 = !{!3396, !3397, !3398}
!3396 = !DILocalVariable(name: "p", arg: 1, scope: !3392, file: !362, line: 325, type: !647)
!3397 = !DILocalVariable(name: "s", arg: 2, scope: !3392, file: !362, line: 325, type: !381)
!3398 = !DILocalVariable(name: "result", scope: !3392, file: !362, line: 327, type: !41)
!3399 = !DILocation(line: 0, scope: !3392)
!3400 = !DILocation(line: 327, column: 30, scope: !3392)
!3401 = !DILocation(line: 0, scope: !3058, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 327, column: 18, scope: !3392)
!3403 = !DILocation(line: 0, scope: !3065, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 55, column: 25, scope: !3058, inlinedAt: !3402)
!3405 = !DILocation(line: 57, column: 26, scope: !3065, inlinedAt: !3404)
!3406 = !DILocation(line: 0, scope: !3026, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 55, column: 10, scope: !3058, inlinedAt: !3402)
!3408 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3407)
!3409 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3407)
!3410 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3407)
!3411 = !DILocation(line: 328, column: 3, scope: !3392)
!3412 = !DILocation(line: 328, column: 13, scope: !3392)
!3413 = !DILocation(line: 0, scope: !3363, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 329, column: 10, scope: !3392)
!3415 = !DILocation(line: 29, column: 10, scope: !3363, inlinedAt: !3414)
!3416 = !DILocation(line: 329, column: 3, scope: !3392)
!3417 = distinct !DISubprogram(name: "xstrdup", scope: !362, file: !362, line: 335, type: !641, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3418)
!3418 = !{!3419}
!3419 = !DILocalVariable(name: "string", arg: 1, scope: !3417, file: !362, line: 335, type: !48)
!3420 = !DILocation(line: 0, scope: !3417)
!3421 = !DILocation(line: 337, column: 27, scope: !3417)
!3422 = !DILocation(line: 337, column: 43, scope: !3417)
!3423 = !DILocation(line: 0, scope: !3347, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 337, column: 10, scope: !3417)
!3425 = !DILocation(line: 0, scope: !3045, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 312, column: 18, scope: !3347, inlinedAt: !3424)
!3427 = !DILocation(line: 49, column: 25, scope: !3045, inlinedAt: !3426)
!3428 = !DILocation(line: 0, scope: !3026, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 49, column: 10, scope: !3045, inlinedAt: !3426)
!3430 = !DILocation(line: 39, column: 8, scope: !3033, inlinedAt: !3429)
!3431 = !DILocation(line: 39, column: 7, scope: !3026, inlinedAt: !3429)
!3432 = !DILocation(line: 40, column: 5, scope: !3033, inlinedAt: !3429)
!3433 = !DILocation(line: 0, scope: !3363, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 312, column: 10, scope: !3347, inlinedAt: !3424)
!3435 = !DILocation(line: 29, column: 10, scope: !3363, inlinedAt: !3434)
!3436 = !DILocation(line: 337, column: 3, scope: !3417)
!3437 = distinct !DISubprogram(name: "xalloc_die", scope: !396, file: !396, line: 32, type: !201, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !3438)
!3438 = !{!3439}
!3439 = !DILocalVariable(name: "__errstatus", scope: !3440, file: !396, line: 34, type: !3441)
!3440 = distinct !DILexicalBlock(scope: !3437, file: !396, line: 34, column: 3)
!3441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!3442 = !DILocation(line: 34, column: 3, scope: !3440)
!3443 = !DILocation(line: 0, scope: !3440)
!3444 = !DILocation(line: 40, column: 3, scope: !3437)
!3445 = distinct !DISubprogram(name: "xgetcwd", scope: !398, file: !398, line: 35, type: !3446, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3447)
!3446 = !DISubroutineType(types: !207)
!3447 = !{!3448}
!3448 = !DILocalVariable(name: "cwd", scope: !3445, file: !398, line: 37, type: !41)
!3449 = !DILocation(line: 37, column: 15, scope: !3445)
!3450 = !DILocation(line: 0, scope: !3445)
!3451 = !DILocation(line: 38, column: 9, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3445, file: !398, line: 38, column: 7)
!3453 = !DILocation(line: 38, column: 13, scope: !3452)
!3454 = !DILocation(line: 38, column: 16, scope: !3452)
!3455 = !DILocation(line: 38, column: 22, scope: !3452)
!3456 = !DILocation(line: 38, column: 7, scope: !3445)
!3457 = !DILocation(line: 39, column: 5, scope: !3452)
!3458 = !DILocation(line: 40, column: 3, scope: !3445)
!3459 = distinct !DISubprogram(name: "close_stream", scope: !400, file: !400, line: 55, type: !3460, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3496)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!43, !3462}
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !3464)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3464, file: !81, line: 51, baseType: !43, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3464, file: !81, line: 54, baseType: !41, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3464, file: !81, line: 55, baseType: !41, size: 64, offset: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3464, file: !81, line: 56, baseType: !41, size: 64, offset: 192)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3464, file: !81, line: 57, baseType: !41, size: 64, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3464, file: !81, line: 58, baseType: !41, size: 64, offset: 320)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3464, file: !81, line: 59, baseType: !41, size: 64, offset: 384)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3464, file: !81, line: 60, baseType: !41, size: 64, offset: 448)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3464, file: !81, line: 61, baseType: !41, size: 64, offset: 512)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3464, file: !81, line: 64, baseType: !41, size: 64, offset: 576)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3464, file: !81, line: 65, baseType: !41, size: 64, offset: 640)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3464, file: !81, line: 66, baseType: !41, size: 64, offset: 704)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3464, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3464, file: !81, line: 70, baseType: !3480, size: 64, offset: 832)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3464, file: !81, line: 72, baseType: !43, size: 32, offset: 896)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3464, file: !81, line: 73, baseType: !43, size: 32, offset: 928)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3464, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3464, file: !81, line: 77, baseType: !44, size: 16, offset: 1024)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3464, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3464, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3464, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3464, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3464, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3464, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3464, file: !81, line: 93, baseType: !3480, size: 64, offset: 1344)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3464, file: !81, line: 94, baseType: !40, size: 64, offset: 1408)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3464, file: !81, line: 95, baseType: !45, size: 64, offset: 1472)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3464, file: !81, line: 96, baseType: !43, size: 32, offset: 1536)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3464, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!3496 = !{!3497, !3498, !3500, !3501}
!3497 = !DILocalVariable(name: "stream", arg: 1, scope: !3459, file: !400, line: 55, type: !3462)
!3498 = !DILocalVariable(name: "some_pending", scope: !3459, file: !400, line: 57, type: !3499)
!3499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!3500 = !DILocalVariable(name: "prev_fail", scope: !3459, file: !400, line: 58, type: !3499)
!3501 = !DILocalVariable(name: "fclose_fail", scope: !3459, file: !400, line: 59, type: !3499)
!3502 = !DILocation(line: 0, scope: !3459)
!3503 = !DILocation(line: 57, column: 30, scope: !3459)
!3504 = !DILocalVariable(name: "__stream", arg: 1, scope: !3505, file: !1347, line: 135, type: !3462)
!3505 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1347, file: !1347, line: 135, type: !3460, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3506)
!3506 = !{!3504}
!3507 = !DILocation(line: 0, scope: !3505, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 58, column: 27, scope: !3459)
!3509 = !DILocation(line: 137, column: 10, scope: !3505, inlinedAt: !3508)
!3510 = !{!1356, !530, i64 0}
!3511 = !DILocation(line: 58, column: 43, scope: !3459)
!3512 = !DILocation(line: 59, column: 29, scope: !3459)
!3513 = !DILocation(line: 59, column: 45, scope: !3459)
!3514 = !DILocation(line: 69, column: 17, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3459, file: !400, line: 69, column: 7)
!3516 = !DILocation(line: 57, column: 50, scope: !3459)
!3517 = !DILocation(line: 69, column: 33, scope: !3515)
!3518 = !DILocation(line: 69, column: 53, scope: !3515)
!3519 = !DILocation(line: 69, column: 59, scope: !3515)
!3520 = !DILocation(line: 69, column: 7, scope: !3459)
!3521 = !DILocation(line: 71, column: 11, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3515, file: !400, line: 70, column: 5)
!3523 = !DILocation(line: 72, column: 9, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3522, file: !400, line: 71, column: 11)
!3525 = !DILocation(line: 72, column: 15, scope: !3524)
!3526 = !DILocation(line: 77, column: 1, scope: !3459)
!3527 = distinct !DISubprogram(name: "rpl_fclose", scope: !402, file: !402, line: 58, type: !3528, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !3564)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!43, !3530}
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !3532)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !3533)
!3533 = !{!3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3532, file: !81, line: 51, baseType: !43, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3532, file: !81, line: 54, baseType: !41, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3532, file: !81, line: 55, baseType: !41, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3532, file: !81, line: 56, baseType: !41, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3532, file: !81, line: 57, baseType: !41, size: 64, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3532, file: !81, line: 58, baseType: !41, size: 64, offset: 320)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3532, file: !81, line: 59, baseType: !41, size: 64, offset: 384)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3532, file: !81, line: 60, baseType: !41, size: 64, offset: 448)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3532, file: !81, line: 61, baseType: !41, size: 64, offset: 512)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3532, file: !81, line: 64, baseType: !41, size: 64, offset: 576)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3532, file: !81, line: 65, baseType: !41, size: 64, offset: 640)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3532, file: !81, line: 66, baseType: !41, size: 64, offset: 704)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3532, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3532, file: !81, line: 70, baseType: !3548, size: 64, offset: 832)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3532, file: !81, line: 72, baseType: !43, size: 32, offset: 896)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3532, file: !81, line: 73, baseType: !43, size: 32, offset: 928)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3532, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3532, file: !81, line: 77, baseType: !44, size: 16, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3532, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3532, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3532, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3532, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3532, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3532, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3532, file: !81, line: 93, baseType: !3548, size: 64, offset: 1344)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3532, file: !81, line: 94, baseType: !40, size: 64, offset: 1408)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3532, file: !81, line: 95, baseType: !45, size: 64, offset: 1472)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3532, file: !81, line: 96, baseType: !43, size: 32, offset: 1536)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3532, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!3564 = !{!3565, !3566, !3567, !3568}
!3565 = !DILocalVariable(name: "fp", arg: 1, scope: !3527, file: !402, line: 58, type: !3530)
!3566 = !DILocalVariable(name: "saved_errno", scope: !3527, file: !402, line: 60, type: !43)
!3567 = !DILocalVariable(name: "fd", scope: !3527, file: !402, line: 63, type: !43)
!3568 = !DILocalVariable(name: "result", scope: !3527, file: !402, line: 74, type: !43)
!3569 = !DILocation(line: 0, scope: !3527)
!3570 = !DILocation(line: 63, column: 12, scope: !3527)
!3571 = !DILocation(line: 64, column: 10, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3527, file: !402, line: 64, column: 7)
!3573 = !DILocation(line: 64, column: 7, scope: !3527)
!3574 = !DILocation(line: 65, column: 12, scope: !3572)
!3575 = !DILocation(line: 65, column: 5, scope: !3572)
!3576 = !DILocation(line: 70, column: 9, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3527, file: !402, line: 70, column: 7)
!3578 = !DILocation(line: 70, column: 23, scope: !3577)
!3579 = !DILocation(line: 70, column: 33, scope: !3577)
!3580 = !DILocation(line: 70, column: 26, scope: !3577)
!3581 = !DILocation(line: 70, column: 59, scope: !3577)
!3582 = !DILocation(line: 71, column: 7, scope: !3577)
!3583 = !DILocation(line: 71, column: 10, scope: !3577)
!3584 = !DILocation(line: 70, column: 7, scope: !3527)
!3585 = !DILocation(line: 100, column: 12, scope: !3527)
!3586 = !DILocation(line: 105, column: 7, scope: !3527)
!3587 = !DILocation(line: 72, column: 19, scope: !3577)
!3588 = !DILocation(line: 105, column: 19, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3527, file: !402, line: 105, column: 7)
!3590 = !DILocation(line: 107, column: 13, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3589, file: !402, line: 106, column: 5)
!3592 = !DILocation(line: 109, column: 5, scope: !3591)
!3593 = !DILocation(line: 112, column: 1, scope: !3527)
!3594 = !DISubprogram(name: "fileno", scope: !174, file: !174, line: 809, type: !3528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!3595 = !DISubprogram(name: "fclose", scope: !174, file: !174, line: 178, type: !3528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!3596 = !DISubprogram(name: "lseek", scope: !1162, file: !1162, line: 339, type: !3597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!103, !43, !103, !43}
!3599 = distinct !DISubprogram(name: "rpl_fflush", scope: !404, file: !404, line: 130, type: !3600, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3636)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!43, !3602}
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !3604)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !3605)
!3605 = !{!3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3604, file: !81, line: 51, baseType: !43, size: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3604, file: !81, line: 54, baseType: !41, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3604, file: !81, line: 55, baseType: !41, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3604, file: !81, line: 56, baseType: !41, size: 64, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3604, file: !81, line: 57, baseType: !41, size: 64, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3604, file: !81, line: 58, baseType: !41, size: 64, offset: 320)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3604, file: !81, line: 59, baseType: !41, size: 64, offset: 384)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3604, file: !81, line: 60, baseType: !41, size: 64, offset: 448)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3604, file: !81, line: 61, baseType: !41, size: 64, offset: 512)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3604, file: !81, line: 64, baseType: !41, size: 64, offset: 576)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3604, file: !81, line: 65, baseType: !41, size: 64, offset: 640)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3604, file: !81, line: 66, baseType: !41, size: 64, offset: 704)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3604, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3604, file: !81, line: 70, baseType: !3620, size: 64, offset: 832)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3604, file: !81, line: 72, baseType: !43, size: 32, offset: 896)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3604, file: !81, line: 73, baseType: !43, size: 32, offset: 928)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3604, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3604, file: !81, line: 77, baseType: !44, size: 16, offset: 1024)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3604, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3604, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3604, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3604, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3604, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3604, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3604, file: !81, line: 93, baseType: !3620, size: 64, offset: 1344)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3604, file: !81, line: 94, baseType: !40, size: 64, offset: 1408)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3604, file: !81, line: 95, baseType: !45, size: 64, offset: 1472)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3604, file: !81, line: 96, baseType: !43, size: 32, offset: 1536)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3604, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!3636 = !{!3637}
!3637 = !DILocalVariable(name: "stream", arg: 1, scope: !3599, file: !404, line: 130, type: !3602)
!3638 = !DILocation(line: 0, scope: !3599)
!3639 = !DILocation(line: 151, column: 14, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3599, file: !404, line: 151, column: 7)
!3641 = !DILocation(line: 151, column: 22, scope: !3640)
!3642 = !DILocation(line: 151, column: 27, scope: !3640)
!3643 = !DILocation(line: 151, column: 7, scope: !3599)
!3644 = !DILocation(line: 152, column: 12, scope: !3640)
!3645 = !DILocation(line: 152, column: 5, scope: !3640)
!3646 = !DILocalVariable(name: "fp", arg: 1, scope: !3647, file: !404, line: 42, type: !3602)
!3647 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !404, file: !404, line: 42, type: !3648, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3650)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{null, !3602}
!3650 = !{!3646}
!3651 = !DILocation(line: 0, scope: !3647, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 157, column: 3, scope: !3599)
!3653 = !DILocation(line: 44, column: 12, scope: !3654, inlinedAt: !3652)
!3654 = distinct !DILexicalBlock(scope: !3647, file: !404, line: 44, column: 7)
!3655 = !DILocation(line: 44, column: 19, scope: !3654, inlinedAt: !3652)
!3656 = !DILocation(line: 44, column: 7, scope: !3647, inlinedAt: !3652)
!3657 = !DILocation(line: 46, column: 5, scope: !3654, inlinedAt: !3652)
!3658 = !DILocation(line: 159, column: 10, scope: !3599)
!3659 = !DILocation(line: 159, column: 3, scope: !3599)
!3660 = !DILocation(line: 236, column: 1, scope: !3599)
!3661 = !DISubprogram(name: "fflush", scope: !174, file: !174, line: 230, type: !3600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!3662 = distinct !DISubprogram(name: "rpl_fseeko", scope: !406, file: !406, line: 28, type: !3663, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !3700)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!43, !3665, !3699, !43}
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !3667)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !3668)
!3668 = !{!3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3667, file: !81, line: 51, baseType: !43, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3667, file: !81, line: 54, baseType: !41, size: 64, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3667, file: !81, line: 55, baseType: !41, size: 64, offset: 128)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3667, file: !81, line: 56, baseType: !41, size: 64, offset: 192)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3667, file: !81, line: 57, baseType: !41, size: 64, offset: 256)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3667, file: !81, line: 58, baseType: !41, size: 64, offset: 320)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3667, file: !81, line: 59, baseType: !41, size: 64, offset: 384)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3667, file: !81, line: 60, baseType: !41, size: 64, offset: 448)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3667, file: !81, line: 61, baseType: !41, size: 64, offset: 512)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3667, file: !81, line: 64, baseType: !41, size: 64, offset: 576)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3667, file: !81, line: 65, baseType: !41, size: 64, offset: 640)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3667, file: !81, line: 66, baseType: !41, size: 64, offset: 704)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3667, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3667, file: !81, line: 70, baseType: !3683, size: 64, offset: 832)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3667, file: !81, line: 72, baseType: !43, size: 32, offset: 896)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3667, file: !81, line: 73, baseType: !43, size: 32, offset: 928)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3667, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3667, file: !81, line: 77, baseType: !44, size: 16, offset: 1024)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3667, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3667, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3667, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3667, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3667, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3667, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3667, file: !81, line: 93, baseType: !3683, size: 64, offset: 1344)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3667, file: !81, line: 94, baseType: !40, size: 64, offset: 1408)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3667, file: !81, line: 95, baseType: !45, size: 64, offset: 1472)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3667, file: !81, line: 96, baseType: !43, size: 32, offset: 1536)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3667, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!3699 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !174, line: 63, baseType: !103)
!3700 = !{!3701, !3702, !3703, !3704}
!3701 = !DILocalVariable(name: "fp", arg: 1, scope: !3662, file: !406, line: 28, type: !3665)
!3702 = !DILocalVariable(name: "offset", arg: 2, scope: !3662, file: !406, line: 28, type: !3699)
!3703 = !DILocalVariable(name: "whence", arg: 3, scope: !3662, file: !406, line: 28, type: !43)
!3704 = !DILocalVariable(name: "pos", scope: !3705, file: !406, line: 123, type: !3699)
!3705 = distinct !DILexicalBlock(scope: !3706, file: !406, line: 119, column: 5)
!3706 = distinct !DILexicalBlock(scope: !3662, file: !406, line: 55, column: 7)
!3707 = !DILocation(line: 0, scope: !3662)
!3708 = !DILocation(line: 55, column: 12, scope: !3706)
!3709 = !{!1356, !440, i64 16}
!3710 = !DILocation(line: 55, column: 33, scope: !3706)
!3711 = !{!1356, !440, i64 8}
!3712 = !DILocation(line: 55, column: 25, scope: !3706)
!3713 = !DILocation(line: 56, column: 7, scope: !3706)
!3714 = !DILocation(line: 56, column: 15, scope: !3706)
!3715 = !DILocation(line: 56, column: 37, scope: !3706)
!3716 = !{!1356, !440, i64 32}
!3717 = !DILocation(line: 56, column: 29, scope: !3706)
!3718 = !DILocation(line: 57, column: 7, scope: !3706)
!3719 = !DILocation(line: 57, column: 15, scope: !3706)
!3720 = !{!1356, !440, i64 72}
!3721 = !DILocation(line: 57, column: 29, scope: !3706)
!3722 = !DILocation(line: 55, column: 7, scope: !3662)
!3723 = !DILocation(line: 123, column: 26, scope: !3705)
!3724 = !DILocation(line: 123, column: 19, scope: !3705)
!3725 = !DILocation(line: 0, scope: !3705)
!3726 = !DILocation(line: 124, column: 15, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3705, file: !406, line: 124, column: 11)
!3728 = !DILocation(line: 124, column: 11, scope: !3705)
!3729 = !DILocation(line: 135, column: 12, scope: !3705)
!3730 = !DILocation(line: 135, column: 19, scope: !3705)
!3731 = !DILocation(line: 136, column: 12, scope: !3705)
!3732 = !DILocation(line: 136, column: 20, scope: !3705)
!3733 = !{!1356, !784, i64 144}
!3734 = !DILocation(line: 167, column: 7, scope: !3705)
!3735 = !DILocation(line: 169, column: 10, scope: !3662)
!3736 = !DILocation(line: 169, column: 3, scope: !3662)
!3737 = !DILocation(line: 170, column: 1, scope: !3662)
!3738 = !DISubprogram(name: "fseeko", scope: !174, file: !174, line: 736, type: !3739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!43, !3665, !103, !43}
!3741 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !337, file: !337, line: 100, type: !3742, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3745)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!45, !1512, !48, !45, !3744}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3745 = !{!3746, !3747, !3748, !3749, !3750}
!3746 = !DILocalVariable(name: "pwc", arg: 1, scope: !3741, file: !337, line: 100, type: !1512)
!3747 = !DILocalVariable(name: "s", arg: 2, scope: !3741, file: !337, line: 100, type: !48)
!3748 = !DILocalVariable(name: "n", arg: 3, scope: !3741, file: !337, line: 100, type: !45)
!3749 = !DILocalVariable(name: "ps", arg: 4, scope: !3741, file: !337, line: 100, type: !3744)
!3750 = !DILocalVariable(name: "ret", scope: !3741, file: !337, line: 130, type: !45)
!3751 = !DILocation(line: 0, scope: !3741)
!3752 = !DILocation(line: 105, column: 9, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3741, file: !337, line: 105, column: 7)
!3754 = !DILocation(line: 105, column: 7, scope: !3741)
!3755 = !DILocation(line: 117, column: 10, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3741, file: !337, line: 117, column: 7)
!3757 = !DILocation(line: 117, column: 7, scope: !3741)
!3758 = !DILocation(line: 130, column: 16, scope: !3741)
!3759 = !DILocation(line: 135, column: 11, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3741, file: !337, line: 135, column: 7)
!3761 = !DILocation(line: 135, column: 25, scope: !3760)
!3762 = !DILocation(line: 135, column: 30, scope: !3760)
!3763 = !DILocation(line: 135, column: 7, scope: !3741)
!3764 = !DILocalVariable(name: "ps", arg: 1, scope: !3765, file: !1486, line: 1135, type: !3744)
!3765 = distinct !DISubprogram(name: "mbszero", scope: !1486, file: !1486, line: 1135, type: !3766, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3768)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{null, !3744}
!3768 = !{!3764}
!3769 = !DILocation(line: 0, scope: !3765, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 137, column: 5, scope: !3760)
!3771 = !DILocalVariable(name: "__dest", arg: 1, scope: !3772, file: !1030, line: 57, type: !40)
!3772 = distinct !DISubprogram(name: "memset", scope: !1030, file: !1030, line: 57, type: !1495, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3773)
!3773 = !{!3771, !3774, !3775}
!3774 = !DILocalVariable(name: "__ch", arg: 2, scope: !3772, file: !1030, line: 57, type: !43)
!3775 = !DILocalVariable(name: "__len", arg: 3, scope: !3772, file: !1030, line: 57, type: !45)
!3776 = !DILocation(line: 0, scope: !3772, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 1137, column: 3, scope: !3765, inlinedAt: !3770)
!3778 = !DILocation(line: 59, column: 10, scope: !3772, inlinedAt: !3777)
!3779 = !DILocation(line: 137, column: 5, scope: !3760)
!3780 = !DILocation(line: 138, column: 11, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3741, file: !337, line: 138, column: 7)
!3782 = !DILocation(line: 138, column: 7, scope: !3741)
!3783 = !DILocation(line: 139, column: 5, scope: !3781)
!3784 = !DILocation(line: 143, column: 26, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3741, file: !337, line: 143, column: 7)
!3786 = !DILocation(line: 143, column: 41, scope: !3785)
!3787 = !DILocation(line: 143, column: 7, scope: !3741)
!3788 = !DILocation(line: 145, column: 15, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3790, file: !337, line: 145, column: 11)
!3790 = distinct !DILexicalBlock(scope: !3785, file: !337, line: 144, column: 5)
!3791 = !DILocation(line: 145, column: 11, scope: !3790)
!3792 = !DILocation(line: 146, column: 32, scope: !3789)
!3793 = !DILocation(line: 146, column: 16, scope: !3789)
!3794 = !DILocation(line: 146, column: 14, scope: !3789)
!3795 = !DILocation(line: 146, column: 9, scope: !3789)
!3796 = !DILocation(line: 286, column: 1, scope: !3741)
!3797 = !DISubprogram(name: "mbsinit", scope: !3798, file: !3798, line: 293, type: !3799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!3798 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!43, !3801}
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!3803 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !408, file: !408, line: 27, type: !3010, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3804)
!3804 = !{!3805, !3806, !3807, !3808}
!3805 = !DILocalVariable(name: "ptr", arg: 1, scope: !3803, file: !408, line: 27, type: !40)
!3806 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3803, file: !408, line: 27, type: !45)
!3807 = !DILocalVariable(name: "size", arg: 3, scope: !3803, file: !408, line: 27, type: !45)
!3808 = !DILocalVariable(name: "nbytes", scope: !3803, file: !408, line: 29, type: !45)
!3809 = !DILocation(line: 0, scope: !3803)
!3810 = !DILocation(line: 30, column: 7, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3803, file: !408, line: 30, column: 7)
!3812 = !DILocalVariable(name: "ptr", arg: 1, scope: !3813, file: !3099, line: 2057, type: !40)
!3813 = distinct !DISubprogram(name: "rpl_realloc", scope: !3099, file: !3099, line: 2057, type: !3091, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3814)
!3814 = !{!3812, !3815}
!3815 = !DILocalVariable(name: "size", arg: 2, scope: !3813, file: !3099, line: 2057, type: !45)
!3816 = !DILocation(line: 0, scope: !3813, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 37, column: 10, scope: !3803)
!3818 = !DILocation(line: 2059, column: 24, scope: !3813, inlinedAt: !3817)
!3819 = !DILocation(line: 2059, column: 10, scope: !3813, inlinedAt: !3817)
!3820 = !DILocation(line: 37, column: 3, scope: !3803)
!3821 = !DILocation(line: 32, column: 7, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3811, file: !408, line: 31, column: 5)
!3823 = !DILocation(line: 32, column: 13, scope: !3822)
!3824 = !DILocation(line: 33, column: 7, scope: !3822)
!3825 = !DILocation(line: 38, column: 1, scope: !3803)
!3826 = distinct !DISubprogram(name: "hard_locale", scope: !411, file: !411, line: 28, type: !3827, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!64, !43}
!3829 = !{!3830, !3831}
!3830 = !DILocalVariable(name: "category", arg: 1, scope: !3826, file: !411, line: 28, type: !43)
!3831 = !DILocalVariable(name: "locale", scope: !3826, file: !411, line: 30, type: !3832)
!3832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2056, elements: !3833)
!3833 = !{!3834}
!3834 = !DISubrange(count: 257)
!3835 = !DILocation(line: 0, scope: !3826)
!3836 = !DILocation(line: 30, column: 3, scope: !3826)
!3837 = !DILocation(line: 30, column: 8, scope: !3826)
!3838 = !DILocation(line: 32, column: 7, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3826, file: !411, line: 32, column: 7)
!3840 = !DILocation(line: 32, column: 7, scope: !3826)
!3841 = !DILocalVariable(name: "__s1", arg: 1, scope: !3842, file: !479, line: 1359, type: !48)
!3842 = distinct !DISubprogram(name: "streq", scope: !479, file: !479, line: 1359, type: !480, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3843)
!3843 = !{!3841, !3844}
!3844 = !DILocalVariable(name: "__s2", arg: 2, scope: !3842, file: !479, line: 1359, type: !48)
!3845 = !DILocation(line: 0, scope: !3842, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 35, column: 9, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3826, file: !411, line: 35, column: 7)
!3848 = !DILocation(line: 1361, column: 11, scope: !3842, inlinedAt: !3846)
!3849 = !DILocation(line: 1361, column: 10, scope: !3842, inlinedAt: !3846)
!3850 = !DILocation(line: 35, column: 29, scope: !3847)
!3851 = !DILocation(line: 0, scope: !3842, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 35, column: 32, scope: !3847)
!3853 = !DILocation(line: 1361, column: 11, scope: !3842, inlinedAt: !3852)
!3854 = !DILocation(line: 1361, column: 10, scope: !3842, inlinedAt: !3852)
!3855 = !DILocation(line: 35, column: 7, scope: !3826)
!3856 = !DILocation(line: 46, column: 3, scope: !3826)
!3857 = !DILocation(line: 47, column: 1, scope: !3826)
!3858 = distinct !DISubprogram(name: "setlocale_null_r", scope: !413, file: !413, line: 154, type: !3859, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3861)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!43, !43, !41, !45}
!3861 = !{!3862, !3863, !3864}
!3862 = !DILocalVariable(name: "category", arg: 1, scope: !3858, file: !413, line: 154, type: !43)
!3863 = !DILocalVariable(name: "buf", arg: 2, scope: !3858, file: !413, line: 154, type: !41)
!3864 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3858, file: !413, line: 154, type: !45)
!3865 = !DILocation(line: 0, scope: !3858)
!3866 = !DILocation(line: 159, column: 10, scope: !3858)
!3867 = !DILocation(line: 159, column: 3, scope: !3858)
!3868 = distinct !DISubprogram(name: "setlocale_null", scope: !413, file: !413, line: 186, type: !3869, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3871)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!48, !43}
!3871 = !{!3872}
!3872 = !DILocalVariable(name: "category", arg: 1, scope: !3868, file: !413, line: 186, type: !43)
!3873 = !DILocation(line: 0, scope: !3868)
!3874 = !DILocation(line: 189, column: 10, scope: !3868)
!3875 = !DILocation(line: 189, column: 3, scope: !3868)
!3876 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !415, file: !415, line: 35, type: !3869, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3877)
!3877 = !{!3878, !3879}
!3878 = !DILocalVariable(name: "category", arg: 1, scope: !3876, file: !415, line: 35, type: !43)
!3879 = !DILocalVariable(name: "result", scope: !3876, file: !415, line: 37, type: !48)
!3880 = !DILocation(line: 0, scope: !3876)
!3881 = !DILocation(line: 37, column: 24, scope: !3876)
!3882 = !DILocation(line: 62, column: 3, scope: !3876)
!3883 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !415, file: !415, line: 66, type: !3859, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3884)
!3884 = !{!3885, !3886, !3887, !3888, !3889}
!3885 = !DILocalVariable(name: "category", arg: 1, scope: !3883, file: !415, line: 66, type: !43)
!3886 = !DILocalVariable(name: "buf", arg: 2, scope: !3883, file: !415, line: 66, type: !41)
!3887 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3883, file: !415, line: 66, type: !45)
!3888 = !DILocalVariable(name: "result", scope: !3883, file: !415, line: 111, type: !48)
!3889 = !DILocalVariable(name: "length", scope: !3890, file: !415, line: 125, type: !45)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !415, line: 124, column: 5)
!3891 = distinct !DILexicalBlock(scope: !3883, file: !415, line: 113, column: 7)
!3892 = !DILocation(line: 0, scope: !3883)
!3893 = !DILocation(line: 0, scope: !3876, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 111, column: 24, scope: !3883)
!3895 = !DILocation(line: 37, column: 24, scope: !3876, inlinedAt: !3894)
!3896 = !DILocation(line: 113, column: 14, scope: !3891)
!3897 = !DILocation(line: 113, column: 7, scope: !3883)
!3898 = !DILocation(line: 116, column: 19, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3900, file: !415, line: 116, column: 11)
!3900 = distinct !DILexicalBlock(scope: !3891, file: !415, line: 114, column: 5)
!3901 = !DILocation(line: 116, column: 11, scope: !3900)
!3902 = !DILocation(line: 120, column: 16, scope: !3899)
!3903 = !DILocation(line: 120, column: 9, scope: !3899)
!3904 = !DILocation(line: 125, column: 23, scope: !3890)
!3905 = !DILocation(line: 0, scope: !3890)
!3906 = !DILocation(line: 126, column: 18, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3890, file: !415, line: 126, column: 11)
!3908 = !DILocation(line: 126, column: 11, scope: !3890)
!3909 = !DILocation(line: 128, column: 39, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3907, file: !415, line: 127, column: 9)
!3911 = !DILocalVariable(name: "__dest", arg: 1, scope: !3912, file: !1030, line: 26, type: !1033)
!3912 = distinct !DISubprogram(name: "memcpy", scope: !1030, file: !1030, line: 26, type: !1031, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3913)
!3913 = !{!3911, !3914, !3915}
!3914 = !DILocalVariable(name: "__src", arg: 2, scope: !3912, file: !1030, line: 26, type: !646)
!3915 = !DILocalVariable(name: "__len", arg: 3, scope: !3912, file: !1030, line: 26, type: !45)
!3916 = !DILocation(line: 0, scope: !3912, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 128, column: 11, scope: !3910)
!3918 = !DILocation(line: 29, column: 10, scope: !3912, inlinedAt: !3917)
!3919 = !DILocation(line: 129, column: 11, scope: !3910)
!3920 = !DILocation(line: 133, column: 23, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3922, file: !415, line: 133, column: 15)
!3922 = distinct !DILexicalBlock(scope: !3907, file: !415, line: 132, column: 9)
!3923 = !DILocation(line: 133, column: 15, scope: !3922)
!3924 = !DILocation(line: 138, column: 44, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3921, file: !415, line: 134, column: 13)
!3926 = !DILocation(line: 0, scope: !3912, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 138, column: 15, scope: !3925)
!3928 = !DILocation(line: 29, column: 10, scope: !3912, inlinedAt: !3927)
!3929 = !DILocation(line: 139, column: 15, scope: !3925)
!3930 = !DILocation(line: 139, column: 32, scope: !3925)
!3931 = !DILocation(line: 140, column: 13, scope: !3925)
!3932 = !DILocation(line: 0, scope: !3891)
!3933 = !DILocation(line: 145, column: 1, scope: !3883)
