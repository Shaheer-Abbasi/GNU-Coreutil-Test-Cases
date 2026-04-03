; ModuleID = 'src/fold.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.mbbuf_t = type { i8*, %struct._IO_FILE*, i64, i64, i64 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Wrap input lines in each FILE, writing to standard output.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fold\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"  -b, --bytes\0A         count bytes rather than columns\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"  -c, --characters\0A         count characters rather than columns\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"  -s, --spaces\0A         break after blanks, or in words greater than WIDTH\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"  -w, --width=WIDTH\0A         use WIDTH columns instead of 80\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@shortopts = internal constant [36 x i8] c"bcsw:0::1::2::3::4::5::6::7::8::9::\00", align 1, !dbg !0
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !170
@counting_mode = internal unnamed_addr global i32 0, align 4, !dbg !184
@break_spaces = internal unnamed_addr global i1 false, align 1, !dbg !250
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"invalid number of columns\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !251
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.18 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !84
@.str.19 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.41 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.49 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.50 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"characters\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"spaces\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@fold_file.line_out = internal global [262144 x i8] zeroinitializer, align 1, !dbg !186
@fold_file.line_in = internal global [262144 x i8] zeroinitializer, align 1, !dbg !243
@.str.60 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@last_character_width = internal unnamed_addr global i32 0, align 4, !dbg !245
@.str.24 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), align 8, !dbg !252
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !257
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !262
@.str.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.28 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.29 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !264
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.31 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !300
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !270
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !296
@.str.1.37 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.39 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.38 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !298
@.str.4.32 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.33 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.34 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !305
@.str.63 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.64 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !311
@.str.67 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.68 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.69 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.70 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.71 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.72 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.73 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.74 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.75 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.76 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.76, i32 0, i32 0), i8* null], align 8, !dbg !343
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !355
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !373
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !403
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !410
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !375
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !412
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !361
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.78 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !380
@.str.85 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.86 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.87 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.88 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.89 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.90 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.91 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.92 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.93 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.94 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.95 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.96 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.97 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.98 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.99 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.100 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.101 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.106 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.107 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.108 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.109 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.110 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.111 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.112 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !418
@exit_failure = dso_local global i32 1, align 4, !dbg !426
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.123 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !432
@.str.142 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.143 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !544 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !548, metadata !DIExpression()), !dbg !549
  %3 = icmp eq i32 %0, 0, !dbg !550
  br i1 %3, label %9, label %4, !dbg !552

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !553, !tbaa !555
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #34, !dbg !553
  %7 = load i8*, i8** @program_name, align 8, !dbg !553, !tbaa !555
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #34, !dbg !553
  br label %62, !dbg !553

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #34, !dbg !559
  %11 = load i8*, i8** @program_name, align 8, !dbg !559, !tbaa !555
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #34, !dbg !559
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #34, !dbg !561
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !561, !tbaa !555
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !561
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #34, !dbg !562
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !562, !tbaa !555
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #34, !dbg !562
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #34, !dbg !566
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !566, !tbaa !555
  %21 = tail call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20) #34, !dbg !566
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #34, !dbg !569
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !569
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #34, !dbg !570
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !570
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #34, !dbg !571
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !571
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #34, !dbg !572
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !572
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #34, !dbg !573
  tail call fastcc void @oputs_(i8* noundef %26), !dbg !573
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #34, !dbg !574
  tail call fastcc void @oputs_(i8* noundef %27), !dbg !574
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !575, metadata !DIExpression()) #34, !dbg !592
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !594
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #34, !dbg !594
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !580, metadata !DIExpression()) #34, !dbg !595
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %28, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #34, !dbg !595
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !587, metadata !DIExpression()) #34, !dbg !592
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !588, metadata !DIExpression()) #34, !dbg !592
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !596
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !588, metadata !DIExpression()) #34, !dbg !592
  br label %30, !dbg !597

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !588, metadata !DIExpression()) #34, !dbg !592
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !605
  call void @llvm.dbg.value(metadata i8* %31, metadata !604, metadata !DIExpression()) #34, !dbg !605
  %33 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %31) #35, !dbg !607
  %34 = icmp eq i32 %33, 0, !dbg !608
  br i1 %34, label %40, label %35, !dbg !597

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !609
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !588, metadata !DIExpression()) #34, !dbg !592
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !610
  %38 = load i8*, i8** %37, align 8, !dbg !610, !tbaa !611
  %39 = icmp eq i8* %38, null, !dbg !613
  br i1 %39, label %40, label %30, !dbg !614, !llvm.loop !615

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %32, %30 ], [ %36, %35 ]
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !617
  %43 = load i8*, i8** %42, align 8, !dbg !617, !tbaa !619
  %44 = icmp eq i8* %43, null, !dbg !620
  %45 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %43, !dbg !621
  call void @llvm.dbg.value(metadata i8* %45, metadata !587, metadata !DIExpression()) #34, !dbg !592
  tail call void @emit_bug_reporting_address() #34, !dbg !622
  %46 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #34, !dbg !623
  call void @llvm.dbg.value(metadata i8* %46, metadata !590, metadata !DIExpression()) #34, !dbg !592
  %47 = icmp eq i8* %46, null, !dbg !624
  br i1 %47, label %55, label %48, !dbg !626

48:                                               ; preds = %40
  %49 = tail call i32 @strncmp(i8* noundef nonnull %46, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i64 noundef 3) #35, !dbg !627
  %50 = icmp eq i32 %49, 0, !dbg !627
  br i1 %50, label %55, label %51, !dbg !628

51:                                               ; preds = %48
  %52 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.50, i64 0, i64 0), i32 noundef 5) #34, !dbg !629
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !555
  %54 = tail call i32 @fputs_unlocked(i8* noundef %52, %struct._IO_FILE* noundef %53) #34, !dbg !629
  br label %55, !dbg !631

55:                                               ; preds = %40, %48, %51
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !632
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), metadata !604, metadata !DIExpression()) #34, !dbg !632
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !591, metadata !DIExpression()) #34, !dbg !592
  %56 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0), i32 noundef 5) #34, !dbg !634
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %56, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #34, !dbg !634
  %58 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.52, i64 0, i64 0), i32 noundef 5) #34, !dbg !635
  %59 = icmp eq i8* %45, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), !dbg !635
  %60 = select i1 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !635
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %58, i8* noundef %45, i8* noundef %60) #34, !dbg !635
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #34, !dbg !636
  br label %62

62:                                               ; preds = %55, %4
  tail call void @exit(i32 noundef %0) #36, !dbg !637
  unreachable, !dbg !637
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !638 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !642 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !86 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !91, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i8* %0, metadata !92, metadata !DIExpression()), !dbg !647
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !648, !tbaa !649
  %3 = icmp eq i32 %2, -1, !dbg !651
  br i1 %3, label %4, label %16, !dbg !652

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #34, !dbg !653
  call void @llvm.dbg.value(metadata i8* %5, metadata !93, metadata !DIExpression()), !dbg !654
  %6 = icmp eq i8* %5, null, !dbg !655
  br i1 %6, label %14, label %7, !dbg !656

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !657, !tbaa !658
  %9 = icmp eq i8 %8, 0, !dbg !657
  br i1 %9, label %14, label %10, !dbg !659

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !598, metadata !DIExpression()) #34, !dbg !660
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), metadata !604, metadata !DIExpression()) #34, !dbg !660
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #35, !dbg !662
  %12 = icmp eq i32 %11, 0, !dbg !663
  %13 = zext i1 %12 to i32, !dbg !659
  br label %14, !dbg !659

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !664, !tbaa !649
  br label %16, !dbg !665

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !666
  %18 = icmp eq i32 %17, 0, !dbg !666
  br i1 %18, label %22, label %19, !dbg !668

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !555
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !669
  br label %121, !dbg !671

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !96, metadata !DIExpression()), !dbg !647
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #35, !dbg !672
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !673
  call void @llvm.dbg.value(metadata i8* %24, metadata !97, metadata !DIExpression()), !dbg !647
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #35, !dbg !674
  call void @llvm.dbg.value(metadata i8* %25, metadata !98, metadata !DIExpression()), !dbg !647
  %26 = icmp eq i8* %25, null, !dbg !675
  br i1 %26, label %53, label %27, !dbg !676

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !677
  br i1 %28, label %53, label %29, !dbg !678

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !99, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i64 0, metadata !103, metadata !DIExpression()), !dbg !679
  %30 = icmp ult i8* %24, %25, !dbg !680
  br i1 %30, label %31, label %53, !dbg !681

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #37, !dbg !647
  %33 = load i16*, i16** %32, align 8, !tbaa !555
  br label %34, !dbg !681

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !99, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i64 %36, metadata !103, metadata !DIExpression()), !dbg !679
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !682
  call void @llvm.dbg.value(metadata i8* %37, metadata !99, metadata !DIExpression()), !dbg !679
  %38 = load i8, i8* %35, align 1, !dbg !682, !tbaa !658
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !682
  %41 = load i16, i16* %40, align 2, !dbg !682, !tbaa !683
  %42 = lshr i16 %41, 13, !dbg !685
  %43 = and i16 %42, 1, !dbg !685
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !686
  call void @llvm.dbg.value(metadata i64 %45, metadata !103, metadata !DIExpression()), !dbg !679
  %46 = icmp ult i8* %37, %25, !dbg !680
  %47 = icmp ult i64 %45, 2, !dbg !687
  %48 = select i1 %46, i1 %47, i1 false, !dbg !687
  br i1 %48, label %34, label %49, !dbg !681, !llvm.loop !688

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !689
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !691
  %52 = xor i1 %50, true, !dbg !691
  br label %53, !dbg !691

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !647
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !96, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i8* %54, metadata !98, metadata !DIExpression()), !dbg !647
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #35, !dbg !692
  call void @llvm.dbg.value(metadata i64 %56, metadata !104, metadata !DIExpression()), !dbg !647
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !693
  call void @llvm.dbg.value(metadata i8* %57, metadata !105, metadata !DIExpression()), !dbg !647
  br label %58, !dbg !694

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !647
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !96, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i8* %59, metadata !105, metadata !DIExpression()), !dbg !647
  %61 = load i8, i8* %59, align 1, !dbg !695, !tbaa !658
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !696

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !697
  %64 = load i8, i8* %63, align 1, !dbg !700, !tbaa !658
  %65 = icmp ne i8 %64, 45, !dbg !701
  %66 = select i1 %65, i1 %60, i1 false, !dbg !702
  br label %67, !dbg !702

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !96, metadata !DIExpression()), !dbg !647
  %69 = tail call i16** @__ctype_b_loc() #37, !dbg !703
  %70 = load i16*, i16** %69, align 8, !dbg !703, !tbaa !555
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !703
  %73 = load i16, i16* %72, align 2, !dbg !703, !tbaa !683
  %74 = and i16 %73, 8192, !dbg !703
  %75 = icmp eq i16 %74, 0, !dbg !703
  br i1 %75, label %89, label %76, !dbg !705

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !706
  br i1 %77, label %91, label %78, !dbg !709

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !710
  %80 = load i8, i8* %79, align 1, !dbg !710, !tbaa !658
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !710
  %83 = load i16, i16* %82, align 2, !dbg !710, !tbaa !683
  %84 = and i16 %83, 8192, !dbg !710
  %85 = icmp eq i16 %84, 0, !dbg !710
  br i1 %85, label %86, label %91, !dbg !711

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !712
  br i1 %88, label %89, label %91, !dbg !712

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !714
  call void @llvm.dbg.value(metadata i8* %90, metadata !105, metadata !DIExpression()), !dbg !647
  br label %58, !dbg !694, !llvm.loop !715

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !717
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !717, !tbaa !555
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !717
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !718
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), metadata !604, metadata !DIExpression()) #34, !dbg !718
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !722
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !724
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !726
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !728
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !730
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !732
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !734
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !736
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !165, metadata !DIExpression()), !dbg !647
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i64 noundef 6) #35, !dbg !738
  %96 = icmp eq i32 %95, 0, !dbg !738
  br i1 %96, label %100, label %97, !dbg !740

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i64 noundef 9) #35, !dbg !741
  %99 = icmp eq i32 %98, 0, !dbg !741
  br i1 %99, label %100, label %103, !dbg !742

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !743
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #34, !dbg !743
  br label %106, !dbg !745

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !746
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #34, !dbg !746
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !748, !tbaa !555
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !748
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !749, !tbaa !555
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !749
  %111 = ptrtoint i8* %59 to i64, !dbg !750
  %112 = sub i64 %111, %92, !dbg !750
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750, !tbaa !555
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !750
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !751, !tbaa !555
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !751
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !752, !tbaa !555
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !752
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !753, !tbaa !555
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !753
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !754
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
declare !dbg !755 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !759 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !763 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !769 {
  %3 = alloca [2 x i8], align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !774, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i8** %1, metadata !775, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i64 80, metadata !776, metadata !DIExpression()), !dbg !786
  %4 = load i8*, i8** %1, align 8, !dbg !787, !tbaa !555
  tail call void @set_program_name(i8* noundef %4) #34, !dbg !788
  %5 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #34, !dbg !789
  %6 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #34, !dbg !790
  %7 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #34, !dbg !791
  %8 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #34, !dbg !792
  call void @llvm.dbg.value(metadata i64 80, metadata !776, metadata !DIExpression()), !dbg !786
  %9 = call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @shortopts, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #34, !dbg !793
  call void @llvm.dbg.value(metadata i32 %9, metadata !777, metadata !DIExpression()), !dbg !786
  %10 = icmp eq i32 %9, -1, !dbg !794
  br i1 %10, label %43, label %11, !dbg !795

11:                                               ; preds = %2
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  br label %14, !dbg !795

14:                                               ; preds = %11, %39
  %15 = phi i32 [ %9, %11 ], [ %41, %39 ]
  %16 = phi i64 [ 80, %11 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !776, metadata !DIExpression()), !dbg !786
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %12) #34, !dbg !796
  call void @llvm.dbg.declare(metadata [2 x i8]* %3, metadata !779, metadata !DIExpression()), !dbg !797
  switch i32 %15, label %38 [
    i32 98, label %19
    i32 99, label %20
    i32 115, label %21
    i32 48, label %22
    i32 49, label %22
    i32 50, label %22
    i32 51, label %22
    i32 52, label %22
    i32 53, label %22
    i32 54, label %22
    i32 55, label %22
    i32 56, label %22
    i32 57, label %22
    i32 119, label %17
    i32 -2, label %33
    i32 -3, label %34
  ], !dbg !798

17:                                               ; preds = %14
  %18 = load i8*, i8** @optarg, align 8, !dbg !799, !tbaa !555
  br label %29, !dbg !798

19:                                               ; preds = %14
  store i32 1, i32* @counting_mode, align 4, !dbg !801, !tbaa !658
  br label %39, !dbg !802

20:                                               ; preds = %14
  store i32 2, i32* @counting_mode, align 4, !dbg !803, !tbaa !658
  br label %39, !dbg !804

21:                                               ; preds = %14
  store i1 true, i1* @break_spaces, align 1, !dbg !805
  br label %39, !dbg !806

22:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %23 = load i8*, i8** @optarg, align 8, !dbg !807, !tbaa !555
  %24 = icmp eq i8* %23, null, !dbg !807
  br i1 %24, label %27, label %25, !dbg !809

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %23, i64 -1, !dbg !810
  store i8* %26, i8** @optarg, align 8, !dbg !810, !tbaa !555
  br label %29, !dbg !811

27:                                               ; preds = %22
  %28 = trunc i32 %15 to i8, !dbg !812
  store i8 %28, i8* %12, align 4, !dbg !814, !tbaa !658
  store i8 0, i8* %13, align 1, !dbg !815, !tbaa !658
  store i8* %12, i8** @optarg, align 8, !dbg !816, !tbaa !555
  br label %29

29:                                               ; preds = %17, %25, %27
  %30 = phi i8* [ %18, %17 ], [ %26, %25 ], [ %12, %27 ], !dbg !799
  %31 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #34, !dbg !817
  %32 = call i64 @xnumtoumax(i8* noundef %30, i32 noundef 10, i64 noundef 1, i64 noundef -10, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* noundef %31, i32 noundef 0, i32 noundef 12) #34, !dbg !818
  call void @llvm.dbg.value(metadata i64 %32, metadata !776, metadata !DIExpression()), !dbg !786
  br label %39, !dbg !819

33:                                               ; preds = %14
  call void @usage(i32 noundef 0) #38, !dbg !820
  unreachable, !dbg !820

34:                                               ; preds = %14
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !821, !tbaa !555
  %36 = load i8*, i8** @Version, align 8, !dbg !821, !tbaa !555
  %37 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #34, !dbg !821
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* noundef %36, i8* noundef %37, i8* noundef null) #34, !dbg !821
  call void @exit(i32 noundef 0) #36, !dbg !821
  unreachable, !dbg !821

38:                                               ; preds = %14
  call void @usage(i32 noundef 1) #38, !dbg !822
  unreachable, !dbg !822

39:                                               ; preds = %29, %21, %20, %19
  %40 = phi i64 [ %32, %29 ], [ %16, %21 ], [ %16, %20 ], [ %16, %19 ], !dbg !786
  call void @llvm.dbg.value(metadata i64 %40, metadata !776, metadata !DIExpression()), !dbg !786
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %12) #34, !dbg !823
  %41 = call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @shortopts, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #34, !dbg !793
  call void @llvm.dbg.value(metadata i32 %41, metadata !777, metadata !DIExpression()), !dbg !786
  %42 = icmp eq i32 %41, -1, !dbg !794
  br i1 %42, label %43, label %14, !dbg !795, !llvm.loop !824

43:                                               ; preds = %39, %2
  %44 = phi i64 [ 80, %2 ], [ %40, %39 ], !dbg !786
  %45 = load i32, i32* @optind, align 4, !dbg !825, !tbaa !649
  %46 = icmp eq i32 %45, %0, !dbg !826
  br i1 %46, label %51, label %47, !dbg !827

47:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i32 %45, metadata !782, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i8 poison, metadata !778, metadata !DIExpression()), !dbg !786
  %48 = icmp slt i32 %45, %0, !dbg !829
  br i1 %48, label %49, label %63, !dbg !831

49:                                               ; preds = %47
  %50 = sext i32 %45 to i64, !dbg !831
  br label %53, !dbg !831

51:                                               ; preds = %43
  %52 = call fastcc i1 @fold_file(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 noundef %44), !dbg !832
  call void @llvm.dbg.value(metadata i1 %52, metadata !778, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !786
  br label %63, !dbg !833

53:                                               ; preds = %49, %53
  %54 = phi i64 [ %50, %49 ], [ %60, %53 ]
  %55 = phi i1 [ true, %49 ], [ %59, %53 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !782, metadata !DIExpression()), !dbg !828
  %56 = getelementptr inbounds i8*, i8** %1, i64 %54, !dbg !834
  %57 = load i8*, i8** %56, align 8, !dbg !834, !tbaa !555
  %58 = call fastcc i1 @fold_file(i8* noundef %57, i64 noundef %44), !dbg !835
  %59 = and i1 %55, %58, !dbg !836
  call void @llvm.dbg.value(metadata i1 %59, metadata !778, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !786
  %60 = add nsw i64 %54, 1, !dbg !837
  call void @llvm.dbg.value(metadata i64 %60, metadata !782, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i8 poison, metadata !778, metadata !DIExpression()), !dbg !786
  %61 = trunc i64 %60 to i32, !dbg !829
  %62 = icmp eq i32 %61, %0, !dbg !829
  br i1 %62, label %63, label %53, !dbg !831, !llvm.loop !838

63:                                               ; preds = %53, %47, %51
  %64 = phi i1 [ %52, %51 ], [ true, %47 ], [ %59, %53 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !778, metadata !DIExpression()), !dbg !786
  %65 = load i1, i1* @have_read_stdin, align 1, !dbg !840
  br i1 %65, label %66, label %73, !dbg !842

66:                                               ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !843, !tbaa !555
  %68 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %67) #34, !dbg !844
  %69 = icmp eq i32 %68, -1, !dbg !845
  br i1 %69, label %70, label %73, !dbg !846

70:                                               ; preds = %66
  %71 = tail call i32* @__errno_location() #37, !dbg !847
  %72 = load i32, i32* %71, align 4, !dbg !847, !tbaa !649
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %72, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #34, !dbg !847
  unreachable, !dbg !847

73:                                               ; preds = %66, %63
  %74 = xor i1 %64, true, !dbg !848
  %75 = zext i1 %74 to i32, !dbg !848
  ret i32 %75, !dbg !849
}

; Function Attrs: nounwind
declare !dbg !850 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !853 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !854 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !857 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i1 @fold_file(i8* noundef %0, i64 noundef %1) unnamed_addr #12 !dbg !188 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.__mbstate_t, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.__mbstate_t, align 4
  %8 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !192, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 %1, metadata !193, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !195, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !196, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i8* %0, metadata !598, metadata !DIExpression()) #34, !dbg !864
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), metadata !604, metadata !DIExpression()) #34, !dbg !864
  %9 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #35, !dbg !867
  %10 = icmp eq i32 %9, 0, !dbg !868
  br i1 %10, label %11, label %13, !dbg !869

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !870, !tbaa !555
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, metadata !194, metadata !DIExpression()), !dbg !863
  store i1 true, i1* @have_read_stdin, align 1, !dbg !872
  br label %15, !dbg !873

13:                                               ; preds = %2
  %14 = tail call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #34, !dbg !874
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !194, metadata !DIExpression()), !dbg !863
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi %struct._IO_FILE* [ %12, %11 ], [ %14, %13 ], !dbg !875
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, metadata !194, metadata !DIExpression()), !dbg !863
  %17 = icmp eq %struct._IO_FILE* %16, null, !dbg !876
  br i1 %17, label %18, label %22, !dbg !878

18:                                               ; preds = %15
  %19 = tail call i32* @__errno_location() #37, !dbg !879
  %20 = load i32, i32* %19, align 4, !dbg !879, !tbaa !649
  %21 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %0) #34, !dbg !879
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %20, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* noundef %21) #34, !dbg !879
  br label %355, !dbg !881

22:                                               ; preds = %15
  tail call void @fadvise(%struct._IO_FILE* noundef nonnull %16, i32 noundef 2) #34, !dbg !882
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 0), metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !863
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 262144, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %16, i64 0, i32 0
  %24 = bitcast %struct.__mbstate_t* %7 to i8*
  %25 = getelementptr inbounds %struct.__mbstate_t, %struct.__mbstate_t* %7, i64 0, i32 0
  %26 = bitcast i32* %8 to i8*
  %27 = bitcast %struct.__mbstate_t* %5 to i8*
  %28 = getelementptr inbounds %struct.__mbstate_t, %struct.__mbstate_t* %5, i64 0, i32 0
  %29 = bitcast i32* %6 to i8*
  %30 = bitcast %struct.__mbstate_t* %3 to i8*
  %31 = getelementptr inbounds %struct.__mbstate_t, %struct.__mbstate_t* %3, i64 0, i32 0
  %32 = bitcast i32* %4 to i8*
  br label %33, !dbg !883

33:                                               ; preds = %109, %22
  %34 = phi i64 [ 0, %22 ], [ %103, %109 ], !dbg !863
  %35 = phi i64 [ 0, %22 ], [ %62, %109 ], !dbg !863
  %36 = phi i64 [ 0, %22 ], [ %110, %109 ], !dbg !863
  %37 = phi i64 [ 0, %22 ], [ %111, %109 ], !dbg !863
  call void @llvm.dbg.value(metadata i64 %35, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %34, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %37, metadata !195, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 %36, metadata !196, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata %struct.mbbuf_t* undef, metadata !884, metadata !DIExpression()) #34, !dbg !895
  %38 = sub nsw i64 %35, %34, !dbg !897
  call void @llvm.dbg.value(metadata i64 %38, metadata !890, metadata !DIExpression()) #34, !dbg !895
  %39 = icmp slt i64 %38, 4, !dbg !898
  br i1 %39, label %40, label %60, !dbg !899

40:                                               ; preds = %33
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, metadata !900, metadata !DIExpression()) #34, !dbg !906
  %41 = load i32, i32* %23, align 8, !dbg !908, !tbaa !909
  %42 = and i32 %41, 16, !dbg !912
  %43 = icmp eq i32 %42, 0, !dbg !912
  br i1 %43, label %44, label %55, !dbg !913

44:                                               ; preds = %40
  %45 = icmp sgt i64 %38, 0, !dbg !914
  br i1 %45, label %46, label %49, !dbg !916

46:                                               ; preds = %44
  %47 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 %34, !dbg !917
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 0), metadata !919, metadata !DIExpression()) #34, !dbg !927
  call void @llvm.dbg.value(metadata i8* %47, metadata !925, metadata !DIExpression()) #34, !dbg !927
  call void @llvm.dbg.value(metadata i64 %38, metadata !926, metadata !DIExpression()) #34, !dbg !927
  %48 = call i8* @__memmove_chk(i8* noundef nonnull getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 0), i8* noundef nonnull %47, i64 noundef %38, i64 noundef 262144) #34, !dbg !929
  call void @llvm.dbg.value(metadata i64 %38, metadata !891, metadata !DIExpression()) #34, !dbg !930
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i64 [ %38, %46 ], [ 0, %44 ], !dbg !931
  call void @llvm.dbg.value(metadata i64 %50, metadata !891, metadata !DIExpression()) #34, !dbg !930
  %51 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 %50, !dbg !932
  %52 = sub nuw nsw i64 262144, %50, !dbg !932
  %53 = call i64 @fread_unlocked(i8* noundef nonnull %51, i64 noundef 1, i64 noundef %52, %struct._IO_FILE* noundef nonnull %16) #34, !dbg !932
  %54 = add i64 %53, %50, !dbg !933
  call void @llvm.dbg.value(metadata i64 %54, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %54, metadata !890, metadata !DIExpression()) #34, !dbg !895
  br label %55, !dbg !934

55:                                               ; preds = %49, %40
  %56 = phi i64 [ 0, %49 ], [ %34, %40 ], !dbg !863
  %57 = phi i64 [ %54, %49 ], [ %35, %40 ], !dbg !863
  %58 = phi i64 [ %54, %49 ], [ %38, %40 ], !dbg !895
  call void @llvm.dbg.value(metadata i64 %57, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %56, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %58, metadata !890, metadata !DIExpression()) #34, !dbg !895
  %59 = icmp slt i64 %58, 1, !dbg !935
  br i1 %59, label %330, label %60, !dbg !937

60:                                               ; preds = %55, %33
  %61 = phi i64 [ %56, %55 ], [ %34, %33 ], !dbg !863
  %62 = phi i64 [ %57, %55 ], [ %35, %33 ], !dbg !863
  call void @llvm.dbg.value(metadata i64 %62, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %61, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  %63 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 %61, !dbg !938
  call void @llvm.dbg.value(metadata i8* %63, metadata !939, metadata !DIExpression()) #34, !dbg !959
  call void @llvm.dbg.value(metadata !DIArgList(i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 0), i64 undef), metadata !944, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #34, !dbg !959
  %64 = load i8, i8* %63, align 1, !dbg !961, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %64, metadata !945, metadata !DIExpression()) #34, !dbg !959
  call void @llvm.dbg.value(metadata i8 %64, metadata !962, metadata !DIExpression()) #34, !dbg !967
  %65 = icmp sgt i8 %64, -1, !dbg !970
  br i1 %65, label %66, label %69, !dbg !971

66:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i64 1, metadata !972, metadata !DIExpression()) #34, !dbg !978
  %67 = zext i8 %64 to i64, !dbg !980
  call void @llvm.dbg.value(metadata i64 %67, metadata !977, metadata !DIExpression()) #34, !dbg !978
  %68 = or i64 %67, 1099511627776, !dbg !980
  br label %90, !dbg !981

69:                                               ; preds = %60
  call void @llvm.dbg.value(metadata !DIArgList(i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 0), i64 %62), metadata !944, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #34, !dbg !959
  %70 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 %62, !dbg !982
  call void @llvm.dbg.value(metadata i8* %70, metadata !944, metadata !DIExpression()) #34, !dbg !959
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #34, !dbg !983
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %7, metadata !946, metadata !DIExpression()) #34, !dbg !984
  store i32 0, i32* %25, align 4, !dbg !985, !tbaa !986
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #34, !dbg !988
  %71 = ptrtoint i8* %70 to i64, !dbg !989
  %72 = ptrtoint i8* %63 to i64, !dbg !989
  %73 = sub i64 %71, %72, !dbg !989
  call void @llvm.dbg.value(metadata i32* %8, metadata !957, metadata !DIExpression(DW_OP_deref)) #34, !dbg !959
  %74 = call i64 @mbrtoc32(i32* noundef nonnull %8, i8* noundef nonnull %63, i64 noundef %73, %struct.__mbstate_t* noundef nonnull %7) #34, !dbg !990
  call void @llvm.dbg.value(metadata i64 %74, metadata !958, metadata !DIExpression()) #34, !dbg !959
  %75 = icmp slt i64 %74, 0, !dbg !991
  br i1 %75, label %76, label %80, !dbg !993, !prof !994

76:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i8 %64, metadata !995, metadata !DIExpression()) #34, !dbg !1000
  %77 = zext i8 %64 to i64, !dbg !1002
  %78 = shl nuw nsw i64 %77, 32, !dbg !1002
  %79 = or i64 %78, 1099511627776, !dbg !1002
  br label %88, !dbg !1003

80:                                               ; preds = %69
  %81 = load i32, i32* %8, align 4, !dbg !1004, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %81, metadata !957, metadata !DIExpression()) #34, !dbg !959
  call void @llvm.dbg.value(metadata i32 %81, metadata !977, metadata !DIExpression()) #34, !dbg !1005
  call void @llvm.dbg.value(metadata i64 %74, metadata !972, metadata !DIExpression()) #34, !dbg !1005
  %82 = icmp ne i64 %74, 0, !dbg !1007
  call void @llvm.assume(i1 %82) #34, !dbg !1007
  %83 = icmp ult i64 %74, 5, !dbg !1008
  call void @llvm.assume(i1 %83) #34, !dbg !1008
  %84 = icmp ult i32 %81, 1114112, !dbg !1009
  call void @llvm.assume(i1 %84) #34, !dbg !1009
  %85 = shl nuw nsw i64 %74, 40, !dbg !1010
  %86 = zext i32 %81 to i64, !dbg !1010
  %87 = or i64 %85, %86, !dbg !1010
  br label %88, !dbg !1011

88:                                               ; preds = %80, %76
  %89 = phi i64 [ %79, %76 ], [ %87, %80 ], !dbg !959
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #34, !dbg !1012
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #34, !dbg !1012
  br label %90

90:                                               ; preds = %88, %66
  %91 = phi i64 [ %68, %66 ], [ %89, %88 ], !dbg !959
  call void @llvm.dbg.value(metadata i64 %91, metadata !894, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)) #34, !dbg !895
  call void @llvm.dbg.value(metadata i64 %91, metadata !894, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)) #34, !dbg !895
  call void @llvm.dbg.value(metadata i64 %91, metadata !894, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !895
  call void @llvm.dbg.value(metadata i64 %91, metadata !894, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #34, !dbg !895
  %92 = and i64 %91, 1095216660480, !dbg !1013
  %93 = icmp eq i64 %92, 0, !dbg !1013
  br i1 %93, label %94, label %97, !dbg !1015

94:                                               ; preds = %90
  %95 = lshr i64 %91, 40, !dbg !1016
  call void @llvm.dbg.value(metadata i64 %95, metadata !894, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !895
  call void @llvm.dbg.value(metadata i64 %91, metadata !894, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)) #34, !dbg !895
  %96 = and i64 %95, 255, !dbg !1017
  call void @llvm.dbg.value(metadata !DIArgList(i64 %61, i64 %96), metadata !200, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  br label %100, !dbg !1018

97:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i64 %61, metadata !200, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  %98 = load i8, i8* %63, align 1, !dbg !1019, !tbaa !658
  %99 = zext i8 %98 to i64, !dbg !1021
  call void @llvm.dbg.value(metadata i8 %98, metadata !894, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)) #34, !dbg !895
  br label %100

100:                                              ; preds = %94, %97
  %101 = phi i64 [ %96, %94 ], [ 1, %97 ]
  %102 = phi i64 [ %91, %94 ], [ %99, %97 ], !dbg !895
  %103 = add nsw i64 %101, %61, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %103, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i32 undef, metadata !894, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #34, !dbg !895
  call void @llvm.dbg.value(metadata i64 %62, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %103, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  %104 = trunc i64 %102 to i32, !dbg !1023
  call void @llvm.dbg.value(metadata i32 %104, metadata !211, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !863
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !211, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %91, metadata !211, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !863
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !211, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !863
  switch i32 %104, label %105 [
    i32 -1, label %330
    i32 10, label %108
  ], !dbg !883

105:                                              ; preds = %100
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !211, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %91, metadata !211, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !863
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !211, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !863
  %106 = lshr i64 %91, 40, !dbg !1023
  call void @llvm.dbg.value(metadata i64 %106, metadata !211, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !863
  %107 = and i64 %106, 255
  br label %112, !dbg !1024

108:                                              ; preds = %100
  call fastcc void @write_out(i64 noundef %36, i1 noundef true), !dbg !1041
  call void @llvm.dbg.value(metadata i64 0, metadata !196, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !195, metadata !DIExpression()), !dbg !863
  br label %109, !dbg !1044

109:                                              ; preds = %108, %285, %323
  %110 = phi i64 [ 0, %108 ], [ %107, %285 ], [ %329, %323 ]
  %111 = phi i64 [ 0, %108 ], [ %140, %285 ], [ %319, %323 ]
  br label %33, !dbg !863, !llvm.loop !1045

112:                                              ; preds = %306, %105
  %113 = phi i64 [ %36, %105 ], [ %307, %306 ], !dbg !863
  %114 = phi i64 [ %37, %105 ], [ %308, %306 ], !dbg !863
  call void @llvm.dbg.value(metadata i64 %114, metadata !195, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 %113, metadata !196, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.label(metadata !239), !dbg !1047
  call void @llvm.dbg.value(metadata i32 %104, metadata !1030, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #34, !dbg !1048
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !1030, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)) #34, !dbg !1048
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !1030, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !1048
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !1030, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #34, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %114, metadata !1029, metadata !DIExpression()) #34, !dbg !1048
  %115 = load i32, i32* @counting_mode, align 4, !dbg !1049, !tbaa !658
  %116 = icmp eq i32 %115, 1, !dbg !1050
  br i1 %116, label %137, label %117, !dbg !1024

117:                                              ; preds = %112
  switch i32 %104, label %127 [
    i32 8, label %118
    i32 13, label %318
    i32 9, label %124
  ], !dbg !1051

118:                                              ; preds = %117
  %119 = icmp eq i64 %114, 0, !dbg !1052
  br i1 %119, label %318, label %120, !dbg !1055

120:                                              ; preds = %118
  %121 = load i32, i32* @last_character_width, align 4, !dbg !1056, !tbaa !649
  %122 = sext i32 %121 to i64, !dbg !1056
  %123 = sub i64 %114, %122, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %123, metadata !1029, metadata !DIExpression()) #34, !dbg !1048
  br label %139, !dbg !1058

124:                                              ; preds = %117
  %125 = add i64 %114, 8, !dbg !1059
  %126 = and i64 %125, -8, !dbg !1060
  call void @llvm.dbg.value(metadata i64 %126, metadata !1029, metadata !DIExpression()) #34, !dbg !1048
  br label %139, !dbg !1061

127:                                              ; preds = %117
  %128 = icmp eq i32 %115, 2, !dbg !1062
  br i1 %128, label %133, label %129, !dbg !1063

129:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i32 %104, metadata !1064, metadata !DIExpression()) #34, !dbg !1070
  %130 = call i32 @wcwidth(i32 noundef %104) #34, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %130, metadata !1031, metadata !DIExpression()) #34, !dbg !1073
  %131 = icmp slt i32 %130, 0, !dbg !1074
  %132 = select i1 %131, i32 1, i32 %130, !dbg !1075
  br label %133

133:                                              ; preds = %129, %127
  %134 = phi i32 [ %132, %129 ], [ 1, %127 ], !dbg !1076
  store i32 %134, i32* @last_character_width, align 4, !dbg !1076, !tbaa !649
  %135 = zext i32 %134 to i64, !dbg !1077
  %136 = add i64 %114, %135, !dbg !1078
  call void @llvm.dbg.value(metadata i64 %136, metadata !1029, metadata !DIExpression()) #34, !dbg !1048
  br label %139

137:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i64 %91, metadata !1030, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !1048
  %138 = add i64 %114, %107, !dbg !1079
  call void @llvm.dbg.value(metadata i64 %138, metadata !1029, metadata !DIExpression()) #34, !dbg !1048
  br label %139

139:                                              ; preds = %120, %124, %133, %137
  %140 = phi i64 [ %123, %120 ], [ %126, %124 ], [ %136, %133 ], [ %138, %137 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1029, metadata !DIExpression()) #34, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %140, metadata !195, metadata !DIExpression()), !dbg !863
  %141 = icmp ugt i64 %140, %1, !dbg !1080
  br i1 %141, label %142, label %318, !dbg !1081

142:                                              ; preds = %139
  %143 = load i1, i1* @break_spaces, align 1, !dbg !1082
  br i1 %143, label %144, label %283, !dbg !1083

144:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i32 0, metadata !222, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i64 %113, metadata !228, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), metadata !229, metadata !DIExpression()), !dbg !1084
  %145 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 %113, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %145, metadata !230, metadata !DIExpression()), !dbg !1084
  %146 = icmp sgt i64 %113, 0, !dbg !1086
  br i1 %146, label %147, label %283, !dbg !1088

147:                                              ; preds = %144
  %148 = ptrtoint i8* %145 to i64
  br label %151, !dbg !1088

149:                                              ; preds = %176
  %150 = icmp eq i32 %187, 0, !dbg !1089
  br i1 %150, label %283, label %191, !dbg !1090

151:                                              ; preds = %147, %176
  %152 = phi i32 [ 0, %147 ], [ %187, %176 ]
  %153 = phi i64 [ %113, %147 ], [ %186, %176 ]
  %154 = phi i8* [ getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), %147 ], [ %189, %176 ]
  call void @llvm.dbg.value(metadata i32 %152, metadata !222, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i64 %153, metadata !228, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8* %154, metadata !229, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8* %154, metadata !939, metadata !DIExpression()) #34, !dbg !1091
  call void @llvm.dbg.value(metadata i8* %145, metadata !944, metadata !DIExpression()) #34, !dbg !1091
  %155 = load i8, i8* %154, align 1, !dbg !1094, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %155, metadata !945, metadata !DIExpression()) #34, !dbg !1091
  call void @llvm.dbg.value(metadata i8 %155, metadata !962, metadata !DIExpression()) #34, !dbg !1095
  %156 = icmp sgt i8 %155, -1, !dbg !1097
  br i1 %156, label %157, label %161, !dbg !1098

157:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i64 1, metadata !972, metadata !DIExpression()) #34, !dbg !1099
  %158 = zext i8 %155 to i64, !dbg !1101
  call void @llvm.dbg.value(metadata i64 %158, metadata !977, metadata !DIExpression()) #34, !dbg !1099
  %159 = or i64 %158, 1099511627776, !dbg !1101
  %160 = ptrtoint i8* %154 to i64, !dbg !1102
  br label %176, !dbg !1103

161:                                              ; preds = %151
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #34, !dbg !1104
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %5, metadata !946, metadata !DIExpression()) #34, !dbg !1105
  store i32 0, i32* %28, align 4, !dbg !1106, !tbaa !986
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #34, !dbg !1107
  %162 = ptrtoint i8* %154 to i64, !dbg !1108
  %163 = sub i64 %148, %162, !dbg !1108
  call void @llvm.dbg.value(metadata i32* %6, metadata !957, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1091
  %164 = call i64 @mbrtoc32(i32* noundef nonnull %6, i8* noundef nonnull %154, i64 noundef %163, %struct.__mbstate_t* noundef nonnull %5) #34, !dbg !1109
  call void @llvm.dbg.value(metadata i64 %164, metadata !958, metadata !DIExpression()) #34, !dbg !1091
  %165 = icmp slt i64 %164, 0, !dbg !1110
  br i1 %165, label %174, label %166, !dbg !1111, !prof !994

166:                                              ; preds = %161
  %167 = load i32, i32* %6, align 4, !dbg !1112, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %167, metadata !957, metadata !DIExpression()) #34, !dbg !1091
  call void @llvm.dbg.value(metadata i32 %167, metadata !977, metadata !DIExpression()) #34, !dbg !1113
  call void @llvm.dbg.value(metadata i64 %164, metadata !972, metadata !DIExpression()) #34, !dbg !1113
  %168 = icmp ne i64 %164, 0, !dbg !1115
  call void @llvm.assume(i1 %168) #34, !dbg !1115
  %169 = icmp ult i64 %164, 5, !dbg !1116
  call void @llvm.assume(i1 %169) #34, !dbg !1116
  %170 = icmp ult i32 %167, 1114112, !dbg !1117
  call void @llvm.assume(i1 %170) #34, !dbg !1117
  %171 = shl nuw nsw i64 %164, 40, !dbg !1118
  %172 = zext i32 %167 to i64, !dbg !1118
  %173 = or i64 %171, %172, !dbg !1118
  br label %174, !dbg !1119

174:                                              ; preds = %161, %166
  %175 = phi i64 [ %173, %166 ], [ 1099511627776, %161 ], !dbg !1091
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #34, !dbg !1120
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #34, !dbg !1120
  br label %176

176:                                              ; preds = %157, %174
  %177 = phi i64 [ %160, %157 ], [ %162, %174 ], !dbg !1102
  %178 = phi i64 [ %159, %157 ], [ %175, %174 ], !dbg !1091
  %179 = trunc i64 %178 to i32, !dbg !1121
  call void @llvm.dbg.value(metadata i32 %179, metadata !231, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %178, metadata !231, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1122
  %180 = lshr i64 %178, 40, !dbg !1121
  call void @llvm.dbg.value(metadata i64 %180, metadata !231, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %178, metadata !231, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1122
  call void @llvm.dbg.value(metadata i32 %179, metadata !1123, metadata !DIExpression()) #34, !dbg !1128
  call void @llvm.dbg.value(metadata i32 %179, metadata !1131, metadata !DIExpression()) #34, !dbg !1138
  %181 = call i32 @iswblank(i32 noundef %179) #34, !dbg !1140
  %182 = icmp eq i32 %181, 0, !dbg !1141
  %183 = trunc i64 %180 to i32, !dbg !1102
  %184 = and i32 %183, 255, !dbg !1102
  %185 = sub i64 %177, ptrtoint ([262144 x i8]* @fold_file.line_out to i64), !dbg !1102
  %186 = select i1 %182, i64 %153, i64 %185, !dbg !1102
  %187 = select i1 %182, i32 %152, i32 %184, !dbg !1102
  call void @llvm.dbg.value(metadata i32 %187, metadata !222, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i64 %186, metadata !228, metadata !DIExpression()), !dbg !1084
  %188 = and i64 %180, 255, !dbg !1142
  %189 = getelementptr inbounds i8, i8* %154, i64 %188, !dbg !1143
  call void @llvm.dbg.value(metadata i8* %189, metadata !229, metadata !DIExpression()), !dbg !1084
  %190 = icmp ult i8* %189, %145, !dbg !1086
  br i1 %190, label %151, label %149, !dbg !1088, !llvm.loop !1144

191:                                              ; preds = %149
  %192 = zext i32 %187 to i64
  %193 = add nsw i64 %186, %192, !dbg !1146
  call void @llvm.dbg.value(metadata i64 %193, metadata !228, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), metadata !1147, metadata !DIExpression()) #34, !dbg !1159
  call void @llvm.dbg.value(metadata i64 %193, metadata !1152, metadata !DIExpression()) #34, !dbg !1159
  call void @llvm.dbg.value(metadata i1 true, metadata !1153, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !1159
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1161, !tbaa !555
  %195 = call i64 @fwrite_unlocked(i8* noundef getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i64 noundef 1, i64 noundef %193, %struct._IO_FILE* noundef %194) #34, !dbg !1161
  %196 = icmp eq i64 %195, %193, !dbg !1162
  br i1 %196, label %197, label %209, !dbg !1163

197:                                              ; preds = %191
  call void @llvm.dbg.value(metadata i32 10, metadata !1164, metadata !DIExpression()) #34, !dbg !1169
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1171, !tbaa !555
  %199 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %198, i64 0, i32 5, !dbg !1171
  %200 = load i8*, i8** %199, align 8, !dbg !1171, !tbaa !1172
  %201 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %198, i64 0, i32 6, !dbg !1171
  %202 = load i8*, i8** %201, align 8, !dbg !1171, !tbaa !1173
  %203 = icmp ult i8* %200, %202, !dbg !1171
  br i1 %203, label %204, label %206, !dbg !1171, !prof !1174

204:                                              ; preds = %197
  %205 = getelementptr inbounds i8, i8* %200, i64 1, !dbg !1171
  store i8* %205, i8** %199, align 8, !dbg !1171, !tbaa !1172
  store i8 10, i8* %200, align 1, !dbg !1171, !tbaa !658
  br label %218, !dbg !1175

206:                                              ; preds = %197
  %207 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %198, i32 noundef 10) #34, !dbg !1171
  %208 = icmp slt i32 %207, 0, !dbg !1176
  br i1 %208, label %209, label %218, !dbg !1175

209:                                              ; preds = %206, %191
  %210 = tail call i32* @__errno_location() #37, !dbg !1177
  %211 = load i32, i32* %210, align 4, !dbg !1177, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %211, metadata !1180, metadata !DIExpression()) #34, !dbg !1182
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1183, !tbaa !555
  %213 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %212) #34, !dbg !1183
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1184, !tbaa !555
  %215 = call i32 @fpurge(%struct._IO_FILE* noundef %214) #34, !dbg !1185
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1186, !tbaa !555
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %216) #34, !dbg !1186
  %217 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i32 noundef 5) #34, !dbg !1187
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %211, i8* noundef %217) #34, !dbg !1187
  unreachable, !dbg !1187

218:                                              ; preds = %204, %206
  %219 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 %193, !dbg !1188
  %220 = sub nsw i64 %113, %193, !dbg !1189
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), metadata !919, metadata !DIExpression()) #34, !dbg !1190
  call void @llvm.dbg.value(metadata i8* %219, metadata !925, metadata !DIExpression()) #34, !dbg !1190
  call void @llvm.dbg.value(metadata i64 %220, metadata !926, metadata !DIExpression()) #34, !dbg !1190
  %221 = call i8* @__memmove_chk(i8* noundef nonnull getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i8* noundef nonnull %219, i64 noundef %220, i64 noundef 262144) #34, !dbg !1192
  call void @llvm.dbg.value(metadata i64 %220, metadata !196, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !195, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), metadata !233, metadata !DIExpression()), !dbg !1193
  %222 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 %220, !dbg !1194
  call void @llvm.dbg.value(metadata i8* %222, metadata !236, metadata !DIExpression()), !dbg !1193
  %223 = icmp sgt i64 %220, 0, !dbg !1195
  br i1 %223, label %224, label %306, !dbg !1197

224:                                              ; preds = %218
  %225 = ptrtoint i8* %222 to i64
  br label %226, !dbg !1197

226:                                              ; preds = %224, %278
  %227 = phi i64 [ 0, %224 ], [ %279, %278 ]
  %228 = phi i8* [ getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), %224 ], [ %281, %278 ]
  call void @llvm.dbg.value(metadata i64 %227, metadata !195, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i8* %228, metadata !233, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8* %228, metadata !939, metadata !DIExpression()) #34, !dbg !1198
  call void @llvm.dbg.value(metadata i8* %222, metadata !944, metadata !DIExpression()) #34, !dbg !1198
  %229 = load i8, i8* %228, align 1, !dbg !1201, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %229, metadata !945, metadata !DIExpression()) #34, !dbg !1198
  call void @llvm.dbg.value(metadata i8 %229, metadata !962, metadata !DIExpression()) #34, !dbg !1202
  %230 = icmp sgt i8 %229, -1, !dbg !1204
  br i1 %230, label %231, label %234, !dbg !1205

231:                                              ; preds = %226
  call void @llvm.dbg.value(metadata i64 1, metadata !972, metadata !DIExpression()) #34, !dbg !1206
  %232 = zext i8 %229 to i64, !dbg !1208
  call void @llvm.dbg.value(metadata i64 %232, metadata !977, metadata !DIExpression()) #34, !dbg !1206
  %233 = or i64 %232, 1099511627776, !dbg !1208
  br label %249, !dbg !1209

234:                                              ; preds = %226
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #34, !dbg !1210
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %3, metadata !946, metadata !DIExpression()) #34, !dbg !1211
  store i32 0, i32* %31, align 4, !dbg !1212, !tbaa !986
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #34, !dbg !1213
  %235 = ptrtoint i8* %228 to i64, !dbg !1214
  %236 = sub i64 %225, %235, !dbg !1214
  call void @llvm.dbg.value(metadata i32* %4, metadata !957, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1198
  %237 = call i64 @mbrtoc32(i32* noundef nonnull %4, i8* noundef nonnull %228, i64 noundef %236, %struct.__mbstate_t* noundef nonnull %3) #34, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %237, metadata !958, metadata !DIExpression()) #34, !dbg !1198
  %238 = icmp slt i64 %237, 0, !dbg !1216
  br i1 %238, label %247, label %239, !dbg !1217, !prof !994

239:                                              ; preds = %234
  %240 = load i32, i32* %4, align 4, !dbg !1218, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %240, metadata !957, metadata !DIExpression()) #34, !dbg !1198
  call void @llvm.dbg.value(metadata i32 %240, metadata !977, metadata !DIExpression()) #34, !dbg !1219
  call void @llvm.dbg.value(metadata i64 %237, metadata !972, metadata !DIExpression()) #34, !dbg !1219
  %241 = icmp ne i64 %237, 0, !dbg !1221
  call void @llvm.assume(i1 %241) #34, !dbg !1221
  %242 = icmp ult i64 %237, 5, !dbg !1222
  call void @llvm.assume(i1 %242) #34, !dbg !1222
  %243 = icmp ult i32 %240, 1114112, !dbg !1223
  call void @llvm.assume(i1 %243) #34, !dbg !1223
  %244 = shl nuw nsw i64 %237, 40, !dbg !1224
  %245 = zext i32 %240 to i64, !dbg !1224
  %246 = or i64 %244, %245, !dbg !1224
  br label %247, !dbg !1225

247:                                              ; preds = %234, %239
  %248 = phi i64 [ %246, %239 ], [ 1099511627776, %234 ], !dbg !1198
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #34, !dbg !1226
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #34, !dbg !1226
  br label %249

249:                                              ; preds = %231, %247
  %250 = phi i64 [ %233, %231 ], [ %248, %247 ], !dbg !1198
  call void @llvm.dbg.value(metadata i64 %250, metadata !237, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1227
  %251 = lshr i64 %250, 40, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %251, metadata !237, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %250, metadata !237, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1227
  %252 = trunc i64 %250 to i32
  call void @llvm.dbg.value(metadata i32 %252, metadata !1030, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #34, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %250, metadata !1030, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)) #34, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %250, metadata !1030, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %250, metadata !1030, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #34, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %227, metadata !1029, metadata !DIExpression()) #34, !dbg !1229
  %253 = load i32, i32* @counting_mode, align 4, !dbg !1231, !tbaa !658
  %254 = icmp eq i32 %253, 1, !dbg !1232
  br i1 %254, label %275, label %255, !dbg !1233

255:                                              ; preds = %249
  switch i32 %252, label %265 [
    i32 8, label %256
    i32 13, label %278
    i32 9, label %262
  ], !dbg !1234

256:                                              ; preds = %255
  %257 = icmp eq i64 %227, 0, !dbg !1235
  br i1 %257, label %278, label %258, !dbg !1236

258:                                              ; preds = %256
  %259 = load i32, i32* @last_character_width, align 4, !dbg !1237, !tbaa !649
  %260 = sext i32 %259 to i64, !dbg !1237
  %261 = sub i64 %227, %260, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %261, metadata !1029, metadata !DIExpression()) #34, !dbg !1229
  br label %278, !dbg !1239

262:                                              ; preds = %255
  %263 = add i64 %227, 8, !dbg !1240
  %264 = and i64 %263, -8, !dbg !1241
  call void @llvm.dbg.value(metadata i64 %264, metadata !1029, metadata !DIExpression()) #34, !dbg !1229
  br label %278, !dbg !1242

265:                                              ; preds = %255
  %266 = icmp eq i32 %253, 2, !dbg !1243
  br i1 %266, label %271, label %267, !dbg !1244

267:                                              ; preds = %265
  call void @llvm.dbg.value(metadata i32 %252, metadata !1064, metadata !DIExpression()) #34, !dbg !1245
  %268 = call i32 @wcwidth(i32 noundef %252) #34, !dbg !1247
  call void @llvm.dbg.value(metadata i32 %268, metadata !1031, metadata !DIExpression()) #34, !dbg !1248
  %269 = icmp slt i32 %268, 0, !dbg !1249
  %270 = select i1 %269, i32 1, i32 %268, !dbg !1250
  br label %271

271:                                              ; preds = %267, %265
  %272 = phi i32 [ %270, %267 ], [ 1, %265 ], !dbg !1251
  store i32 %272, i32* @last_character_width, align 4, !dbg !1251, !tbaa !649
  %273 = zext i32 %272 to i64, !dbg !1252
  %274 = add i64 %227, %273, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %274, metadata !1029, metadata !DIExpression()) #34, !dbg !1229
  br label %278

275:                                              ; preds = %249
  call void @llvm.dbg.value(metadata i64 %251, metadata !1030, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !1229
  %276 = and i64 %251, 255, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %251, metadata !1030, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !1229
  %277 = add i64 %276, %227, !dbg !1255
  call void @llvm.dbg.value(metadata i64 %277, metadata !1029, metadata !DIExpression()) #34, !dbg !1229
  br label %278

278:                                              ; preds = %255, %256, %258, %262, %271, %275
  %279 = phi i64 [ %261, %258 ], [ 0, %256 ], [ %264, %262 ], [ %274, %271 ], [ %277, %275 ], [ 0, %255 ]
  call void @llvm.dbg.value(metadata i64 %279, metadata !1029, metadata !DIExpression()) #34, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %279, metadata !195, metadata !DIExpression()), !dbg !863
  %280 = and i64 %251, 255, !dbg !1256
  %281 = getelementptr inbounds i8, i8* %228, i64 %280, !dbg !1257
  call void @llvm.dbg.value(metadata i8* %281, metadata !233, metadata !DIExpression()), !dbg !1193
  %282 = icmp ult i8* %281, %222, !dbg !1195
  br i1 %282, label %226, label %306, !dbg !1197, !llvm.loop !1258

283:                                              ; preds = %144, %149, %142
  call void @llvm.dbg.value(metadata i64 %140, metadata !195, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 %113, metadata !196, metadata !DIExpression()), !dbg !863
  %284 = icmp eq i64 %113, 0, !dbg !1260
  br i1 %284, label %285, label %290, !dbg !1262

285:                                              ; preds = %283
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !1263, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)) #34, !dbg !1269
  call void @llvm.dbg.value(metadata i64 %91, metadata !1263, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !1269
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !1263, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #34, !dbg !1269
  call void @llvm.dbg.value(metadata %struct.mbbuf_t* undef, metadata !1268, metadata !DIExpression()) #34, !dbg !1269
  %286 = icmp sge i64 %103, %107, !dbg !1272
  call void @llvm.assume(i1 %286) #34, !dbg !1274
  %287 = sub nsw i64 %103, %107, !dbg !1275
  %288 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 %287, !dbg !1276
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), metadata !1277, metadata !DIExpression()) #34, !dbg !1285
  call void @llvm.dbg.value(metadata i8* %288, metadata !1283, metadata !DIExpression()) #34, !dbg !1285
  call void @llvm.dbg.value(metadata i64 %107, metadata !1284, metadata !DIExpression()) #34, !dbg !1285
  %289 = call i8* @__memcpy_chk(i8* noundef nonnull getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i8* noundef nonnull %288, i64 noundef %107, i64 noundef 262144) #34, !dbg !1287, !alias.scope !1288
  call void @llvm.dbg.value(metadata i64 %107, metadata !196, metadata !DIExpression()), !dbg !863
  br label %109, !dbg !1292

290:                                              ; preds = %283
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), metadata !1147, metadata !DIExpression()) #34, !dbg !1293
  call void @llvm.dbg.value(metadata i64 %113, metadata !1152, metadata !DIExpression()) #34, !dbg !1293
  call void @llvm.dbg.value(metadata i1 true, metadata !1153, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !1293
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1295, !tbaa !555
  %292 = call i64 @fwrite_unlocked(i8* noundef getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i64 noundef 1, i64 noundef %113, %struct._IO_FILE* noundef %291) #34, !dbg !1296
  %293 = icmp eq i64 %292, %113, !dbg !1297
  br i1 %293, label %294, label %309, !dbg !1298

294:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i32 10, metadata !1164, metadata !DIExpression()) #34, !dbg !1299
  %295 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1301, !tbaa !555
  %296 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %295, i64 0, i32 5, !dbg !1301
  %297 = load i8*, i8** %296, align 8, !dbg !1301, !tbaa !1172
  %298 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %295, i64 0, i32 6, !dbg !1301
  %299 = load i8*, i8** %298, align 8, !dbg !1301, !tbaa !1173
  %300 = icmp ult i8* %297, %299, !dbg !1301
  br i1 %300, label %301, label %303, !dbg !1301, !prof !1174

301:                                              ; preds = %294
  %302 = getelementptr inbounds i8, i8* %297, i64 1, !dbg !1301
  store i8* %302, i8** %296, align 8, !dbg !1301, !tbaa !1172
  store i8 10, i8* %297, align 1, !dbg !1301, !tbaa !658
  br label %306, !dbg !1302

303:                                              ; preds = %294
  %304 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %295, i32 noundef 10) #34, !dbg !1301
  %305 = icmp slt i32 %304, 0, !dbg !1303
  br i1 %305, label %309, label %306, !dbg !1302

306:                                              ; preds = %278, %303, %301, %218
  %307 = phi i64 [ %220, %218 ], [ 0, %301 ], [ 0, %303 ], [ %220, %278 ]
  %308 = phi i64 [ 0, %218 ], [ 0, %301 ], [ 0, %303 ], [ %279, %278 ]
  br label %112, !dbg !863

309:                                              ; preds = %303, %290
  %310 = tail call i32* @__errno_location() #37, !dbg !1304
  %311 = load i32, i32* %310, align 4, !dbg !1304, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %311, metadata !1180, metadata !DIExpression()) #34, !dbg !1306
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1307, !tbaa !555
  %313 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %312) #34, !dbg !1307
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1308, !tbaa !555
  %315 = call i32 @fpurge(%struct._IO_FILE* noundef %314) #34, !dbg !1309
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1310, !tbaa !555
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %316) #34, !dbg !1310
  %317 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i32 noundef 5) #34, !dbg !1311
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %311, i8* noundef %317) #34, !dbg !1311
  unreachable, !dbg !1311

318:                                              ; preds = %117, %118, %139
  %319 = phi i64 [ %140, %139 ], [ 0, %118 ], [ 0, %117 ]
  %320 = add nsw i64 %113, %107, !dbg !1312
  %321 = icmp ugt i64 %320, 262143, !dbg !1314
  br i1 %321, label %322, label %323, !dbg !1315

322:                                              ; preds = %318
  call fastcc void @write_out(i64 noundef %113, i1 noundef false), !dbg !1316
  call void @llvm.dbg.value(metadata i64 0, metadata !196, metadata !DIExpression()), !dbg !863
  br label %323, !dbg !1318

323:                                              ; preds = %322, %318
  %324 = phi i64 [ 0, %322 ], [ %113, %318 ], !dbg !863
  call void @llvm.dbg.value(metadata i64 %324, metadata !196, metadata !DIExpression()), !dbg !863
  %325 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 %324, !dbg !1319
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !1263, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)) #34, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %91, metadata !1263, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !1320
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !1263, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #34, !dbg !1320
  call void @llvm.dbg.value(metadata %struct.mbbuf_t* undef, metadata !1268, metadata !DIExpression()) #34, !dbg !1320
  %326 = icmp sge i64 %103, %107, !dbg !1322
  call void @llvm.assume(i1 %326) #34, !dbg !1323
  %327 = sub nsw i64 %103, %107, !dbg !1324
  %328 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 %327, !dbg !1325
  call void @llvm.dbg.value(metadata i8* %325, metadata !1277, metadata !DIExpression()) #34, !dbg !1326
  call void @llvm.dbg.value(metadata i8* %328, metadata !1283, metadata !DIExpression()) #34, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %107, metadata !1284, metadata !DIExpression()) #34, !dbg !1326
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %325, i8* noundef nonnull align 1 %328, i64 noundef %107, i1 noundef false) #34, !dbg !1328
  %329 = add nsw i64 %324, %107, !dbg !1329
  call void @llvm.dbg.value(metadata i64 %329, metadata !196, metadata !DIExpression()), !dbg !863
  br label %109, !dbg !883

330:                                              ; preds = %55, %100
  %331 = tail call i32* @__errno_location() #37, !dbg !1330
  %332 = load i32, i32* %331, align 4, !dbg !1330, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %332, metadata !210, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, metadata !1331, metadata !DIExpression()), !dbg !1334
  %333 = load i32, i32* %23, align 8, !dbg !1337, !tbaa !909
  %334 = and i32 %333, 32, !dbg !1338
  %335 = icmp eq i32 %334, 0, !dbg !1338
  %336 = select i1 %335, i32 0, i32 %332, !dbg !1339
  call void @llvm.dbg.value(metadata i32 %336, metadata !210, metadata !DIExpression()), !dbg !863
  %337 = icmp eq i64 %36, 0, !dbg !1340
  br i1 %337, label %339, label %338, !dbg !1342

338:                                              ; preds = %330
  call fastcc void @write_out(i64 noundef %36, i1 noundef false), !dbg !1343
  br label %339, !dbg !1343

339:                                              ; preds = %338, %330
  call void @llvm.dbg.value(metadata i8* %0, metadata !598, metadata !DIExpression()) #34, !dbg !1344
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), metadata !604, metadata !DIExpression()) #34, !dbg !1344
  %340 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #35, !dbg !1347
  %341 = icmp eq i32 %340, 0, !dbg !1348
  br i1 %341, label %342, label %343, !dbg !1349

342:                                              ; preds = %339
  call void @clearerr_unlocked(%struct._IO_FILE* noundef nonnull %16) #34, !dbg !1350
  br label %350, !dbg !1350

343:                                              ; preds = %339
  %344 = call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %16) #34, !dbg !1351
  %345 = icmp eq i32 %344, 0, !dbg !1353
  %346 = icmp ne i32 %336, 0
  %347 = select i1 %345, i1 true, i1 %346, !dbg !1354
  br i1 %347, label %350, label %348, !dbg !1354

348:                                              ; preds = %343
  %349 = load i32, i32* %331, align 4, !dbg !1355, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %349, metadata !210, metadata !DIExpression()), !dbg !863
  br label %350, !dbg !1356

350:                                              ; preds = %343, %348, %342
  %351 = phi i32 [ %336, %342 ], [ %336, %343 ], [ %349, %348 ], !dbg !863
  call void @llvm.dbg.value(metadata i32 %351, metadata !210, metadata !DIExpression()), !dbg !863
  %352 = icmp eq i32 %351, 0, !dbg !1357
  br i1 %352, label %355, label %353, !dbg !1359

353:                                              ; preds = %350
  %354 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %0) #34, !dbg !1360
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %351, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* noundef %354) #34, !dbg !1360
  br label %355, !dbg !1362

355:                                              ; preds = %353, %350, %18
  %356 = phi i1 [ false, %18 ], [ true, %350 ], [ false, %353 ], !dbg !863
  ret i1 %356, !dbg !1363
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare i8* @__memmove_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1364 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nounwind uwtable
define internal fastcc void @write_out(i64 noundef %0, i1 noundef %1) unnamed_addr #12 !dbg !1148 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), metadata !1147, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %0, metadata !1152, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i1 %1, metadata !1153, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1371
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1372, !tbaa !555
  %4 = tail call i64 @fwrite_unlocked(i8* noundef getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i64 noundef 1, i64 noundef %0, %struct._IO_FILE* noundef %3), !dbg !1372
  %5 = icmp eq i64 %4, %0, !dbg !1373
  br i1 %5, label %6, label %19, !dbg !1374

6:                                                ; preds = %2
  br i1 %1, label %7, label %28, !dbg !1375

7:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i32 10, metadata !1164, metadata !DIExpression()) #34, !dbg !1376
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1378, !tbaa !555
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %8, i64 0, i32 5, !dbg !1378
  %10 = load i8*, i8** %9, align 8, !dbg !1378, !tbaa !1172
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %8, i64 0, i32 6, !dbg !1378
  %12 = load i8*, i8** %11, align 8, !dbg !1378, !tbaa !1173
  %13 = icmp ult i8* %10, %12, !dbg !1378
  br i1 %13, label %14, label %16, !dbg !1378, !prof !1174

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1378
  store i8* %15, i8** %9, align 8, !dbg !1378, !tbaa !1172
  store i8 10, i8* %10, align 1, !dbg !1378, !tbaa !658
  br label %28, !dbg !1379

16:                                               ; preds = %7
  %17 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %8, i32 noundef 10) #34, !dbg !1378
  %18 = icmp slt i32 %17, 0, !dbg !1380
  br i1 %18, label %19, label %28, !dbg !1379

19:                                               ; preds = %16, %2
  %20 = tail call i32* @__errno_location() #37, !dbg !1381
  %21 = load i32, i32* %20, align 4, !dbg !1381, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %21, metadata !1180, metadata !DIExpression()) #34, !dbg !1383
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1384, !tbaa !555
  %23 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %22) #34, !dbg !1384
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1385, !tbaa !555
  %25 = tail call i32 @fpurge(%struct._IO_FILE* noundef %24) #34, !dbg !1386
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1387, !tbaa !555
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %26) #34, !dbg !1387
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i32 noundef 5) #34, !dbg !1388
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %21, i8* noundef %27) #34, !dbg !1388
  unreachable, !dbg !1388

28:                                               ; preds = %14, %16, %6
  ret void, !dbg !1389
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !1390 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1395 i32 @iswblank(i32 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1397 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1398 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind
declare i8* @__memcpy_chk(i8* noalias noundef writeonly, i8* noalias nocapture noundef readonly, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #15 !dbg !1401 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1403, metadata !DIExpression()), !dbg !1404
  store i8* %0, i8** @file_name, align 8, !dbg !1405, !tbaa !555
  ret void, !dbg !1406
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !1407 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1411, metadata !DIExpression()), !dbg !1412
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1413, !tbaa !1414
  ret void, !dbg !1416
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1417 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1422, !tbaa !555
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #34, !dbg !1423
  %3 = icmp eq i32 %2, 0, !dbg !1424
  br i1 %3, label %22, label %4, !dbg !1425

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1426, !tbaa !1414, !range !1427
  %6 = icmp eq i8 %5, 0, !dbg !1426
  br i1 %6, label %11, label %7, !dbg !1428

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #37, !dbg !1429
  %9 = load i32, i32* %8, align 4, !dbg !1429, !tbaa !649
  %10 = icmp eq i32 %9, 32, !dbg !1430
  br i1 %10, label %22, label %11, !dbg !1431

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.28, i64 0, i64 0), i32 noundef 5) #34, !dbg !1432
  call void @llvm.dbg.value(metadata i8* %12, metadata !1419, metadata !DIExpression()), !dbg !1433
  %13 = load i8*, i8** @file_name, align 8, !dbg !1434, !tbaa !555
  %14 = icmp eq i8* %13, null, !dbg !1434
  %15 = tail call i32* @__errno_location() #37, !dbg !1436
  %16 = load i32, i32* %15, align 4, !dbg !1436, !tbaa !649
  br i1 %14, label %19, label %17, !dbg !1437

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #34, !dbg !1438
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.29, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #34, !dbg !1438
  br label %20, !dbg !1438

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.30, i64 0, i64 0), i8* noundef %12) #34, !dbg !1439
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1440, !tbaa !649
  tail call void @_exit(i32 noundef %21) #36, !dbg !1441
  unreachable, !dbg !1441

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1442, !tbaa !555
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #34, !dbg !1444
  %25 = icmp eq i32 %24, 0, !dbg !1445
  br i1 %25, label %28, label %26, !dbg !1446

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1447, !tbaa !649
  tail call void @_exit(i32 noundef %27) #36, !dbg !1448
  unreachable, !dbg !1448

28:                                               ; preds = %22
  ret void, !dbg !1449
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !1450 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1454, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i32 %1, metadata !1455, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i8* %2, metadata !1456, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1457, metadata !DIExpression()), !dbg !1459
  tail call fastcc void @flush_stdout(), !dbg !1460
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1461, !tbaa !555
  %7 = icmp eq void ()* %6, null, !dbg !1461
  br i1 %7, label %9, label %8, !dbg !1463

8:                                                ; preds = %4
  tail call void %6() #34, !dbg !1464
  br label %13, !dbg !1464

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1465, !tbaa !555
  %11 = tail call i8* @getprogname() #35, !dbg !1465
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* noundef %11) #34, !dbg !1465
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1467
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1467
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1467
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1467, !tbaa.struct !1468
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1467
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1467
  ret void, !dbg !1469
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1470 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1472, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 1, metadata !1474, metadata !DIExpression()) #34, !dbg !1477
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #34, !dbg !1480
  %2 = icmp slt i32 %1, 0, !dbg !1481
  br i1 %2, label %6, label %3, !dbg !1482

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1483, !tbaa !555
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #34, !dbg !1483
  br label %6, !dbg !1483

6:                                                ; preds = %3, %0
  ret void, !dbg !1484
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1485 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1487, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i32 %1, metadata !1488, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i8* %2, metadata !1489, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1490, metadata !DIExpression()), !dbg !1492
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1493, !tbaa !555
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1494
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1495, metadata !DIExpression()) #34, !dbg !1538
  call void @llvm.dbg.value(metadata i8* %2, metadata !1536, metadata !DIExpression()) #34, !dbg !1538
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1540
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1540, !noalias !1541
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1540
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #34, !dbg !1540
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1540, !noalias !1541
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1545, !tbaa !649
  %12 = add i32 %11, 1, !dbg !1545
  store i32 %12, i32* @error_message_count, align 4, !dbg !1545, !tbaa !649
  %13 = icmp eq i32 %1, 0, !dbg !1546
  br i1 %13, label %24, label %14, !dbg !1548

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1549, metadata !DIExpression()) #34, !dbg !1557
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1559
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1559
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1553, metadata !DIExpression()) #34, !dbg !1560
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #34, !dbg !1561
  call void @llvm.dbg.value(metadata i8* %16, metadata !1552, metadata !DIExpression()) #34, !dbg !1557
  %17 = icmp eq i8* %16, null, !dbg !1562
  br i1 %17, label %18, label %20, !dbg !1564

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.33, i64 0, i64 0), i32 noundef 5) #34, !dbg !1565
  call void @llvm.dbg.value(metadata i8* %19, metadata !1552, metadata !DIExpression()) #34, !dbg !1557
  br label %20, !dbg !1566

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1557
  call void @llvm.dbg.value(metadata i8* %21, metadata !1552, metadata !DIExpression()) #34, !dbg !1557
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1567, !tbaa !555
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.34, i64 0, i64 0), i8* noundef %21) #34, !dbg !1567
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1568
  br label %24, !dbg !1569

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1570, !tbaa !555
  call void @llvm.dbg.value(metadata i32 10, metadata !1571, metadata !DIExpression()) #34, !dbg !1577
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1576, metadata !DIExpression()) #34, !dbg !1577
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1579
  %27 = load i8*, i8** %26, align 8, !dbg !1579, !tbaa !1172
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1579
  %29 = load i8*, i8** %28, align 8, !dbg !1579, !tbaa !1173
  %30 = icmp ult i8* %27, %29, !dbg !1579
  br i1 %30, label %33, label %31, !dbg !1579, !prof !1174

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #34, !dbg !1579
  br label %35, !dbg !1579

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1579
  store i8* %34, i8** %26, align 8, !dbg !1579, !tbaa !1172
  store i8 10, i8* %27, align 1, !dbg !1579, !tbaa !658
  br label %35, !dbg !1579

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1580, !tbaa !555
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #34, !dbg !1580
  %38 = icmp eq i32 %0, 0, !dbg !1581
  br i1 %38, label %40, label %39, !dbg !1583

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #36, !dbg !1584
  unreachable, !dbg !1584

40:                                               ; preds = %35
  ret void, !dbg !1585
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1586 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1590 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1594 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1598, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %1, metadata !1599, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %2, metadata !1600, metadata !DIExpression()), !dbg !1602
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1603
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1603
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1601, metadata !DIExpression()), !dbg !1604
  call void @llvm.va_start(i8* nonnull %6), !dbg !1605
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1606
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1606, !tbaa.struct !1468
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #39, !dbg !1606
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1606
  call void @llvm.va_end(i8* nonnull %6), !dbg !1607
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1608
  ret void, !dbg !1608
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #18

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !272 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !290, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i32 %1, metadata !291, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i8* %2, metadata !292, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i32 %3, metadata !293, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i8* %4, metadata !294, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !295, metadata !DIExpression()), !dbg !1610
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1611, !tbaa !649
  %9 = icmp eq i32 %8, 0, !dbg !1611
  br i1 %9, label %24, label %10, !dbg !1613

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1614, !tbaa !649
  %12 = icmp eq i32 %11, %3, !dbg !1617
  br i1 %12, label %13, label %23, !dbg !1618

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1619, !tbaa !555
  %15 = icmp eq i8* %14, %2, !dbg !1620
  br i1 %15, label %39, label %16, !dbg !1621

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1622
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1623
  br i1 %19, label %20, label %23, !dbg !1623

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #35, !dbg !1624
  %22 = icmp eq i32 %21, 0, !dbg !1625
  br i1 %22, label %39, label %23, !dbg !1626

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1627, !tbaa !555
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1628, !tbaa !649
  br label %24, !dbg !1629

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1630
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1631, !tbaa !555
  %26 = icmp eq void ()* %25, null, !dbg !1631
  br i1 %26, label %28, label %27, !dbg !1633

27:                                               ; preds = %24
  tail call void %25() #34, !dbg !1634
  br label %32, !dbg !1634

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1635, !tbaa !555
  %30 = tail call i8* @getprogname() #35, !dbg !1635
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.37, i64 0, i64 0), i8* noundef %30) #34, !dbg !1635
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1637, !tbaa !555
  %34 = icmp eq i8* %2, null, !dbg !1637
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.38, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.39, i64 0, i64 0), !dbg !1637
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #34, !dbg !1637
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1638
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1638
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1638
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1638, !tbaa.struct !1468
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1638
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1638
  br label %39, !dbg !1639

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1639
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1640 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1644, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 %1, metadata !1645, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8* %2, metadata !1646, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 %3, metadata !1647, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8* %4, metadata !1648, metadata !DIExpression()), !dbg !1650
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1651
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1651
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1649, metadata !DIExpression()), !dbg !1652
  call void @llvm.va_start(i8* nonnull %8), !dbg !1653
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1654
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1654
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1654, !tbaa.struct !1468
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #39, !dbg !1654
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1654
  call void @llvm.va_end(i8* nonnull %8), !dbg !1655
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1656
  ret void, !dbg !1656
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !1657 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1663, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64 %1, metadata !1664, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64 %2, metadata !1665, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i32 %3, metadata !1666, metadata !DIExpression()), !dbg !1667
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #34, !dbg !1668
  ret void, !dbg !1669
}

; Function Attrs: nounwind
declare !dbg !1670 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !1673 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1711, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 %1, metadata !1712, metadata !DIExpression()), !dbg !1713
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1714
  br i1 %3, label %7, label %4, !dbg !1716

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1717
  call void @llvm.dbg.value(metadata i32 %5, metadata !1663, metadata !DIExpression()) #34, !dbg !1718
  call void @llvm.dbg.value(metadata i64 0, metadata !1664, metadata !DIExpression()) #34, !dbg !1718
  call void @llvm.dbg.value(metadata i64 0, metadata !1665, metadata !DIExpression()) #34, !dbg !1718
  call void @llvm.dbg.value(metadata i32 %1, metadata !1666, metadata !DIExpression()) #34, !dbg !1718
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #34, !dbg !1720
  br label %7, !dbg !1721

7:                                                ; preds = %4, %2
  ret void, !dbg !1722
}

; Function Attrs: nofree nounwind
declare !dbg !1723 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1726 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1764, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 0, metadata !1765, metadata !DIExpression()), !dbg !1768
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1769
  call void @llvm.dbg.value(metadata i32 %2, metadata !1766, metadata !DIExpression()), !dbg !1768
  %3 = icmp slt i32 %2, 0, !dbg !1770
  br i1 %3, label %4, label %6, !dbg !1772

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1773
  br label %24, !dbg !1774

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1775
  %8 = icmp eq i32 %7, 0, !dbg !1775
  br i1 %8, label %13, label %9, !dbg !1777

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1778
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #34, !dbg !1779
  %12 = icmp eq i64 %11, -1, !dbg !1780
  br i1 %12, label %16, label %13, !dbg !1781

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1782
  %15 = icmp eq i32 %14, 0, !dbg !1782
  br i1 %15, label %16, label %18, !dbg !1783

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !1765, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 0, metadata !1767, metadata !DIExpression()), !dbg !1768
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1784
  call void @llvm.dbg.value(metadata i32 %21, metadata !1767, metadata !DIExpression()), !dbg !1768
  br label %24, !dbg !1785

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #37, !dbg !1786
  %20 = load i32, i32* %19, align 4, !dbg !1786, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %20, metadata !1765, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 0, metadata !1767, metadata !DIExpression()), !dbg !1768
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1784
  call void @llvm.dbg.value(metadata i32 %21, metadata !1767, metadata !DIExpression()), !dbg !1768
  %22 = icmp eq i32 %20, 0, !dbg !1787
  br i1 %22, label %24, label %23, !dbg !1785

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !1789, !tbaa !649
  call void @llvm.dbg.value(metadata i32 -1, metadata !1767, metadata !DIExpression()), !dbg !1768
  br label %24, !dbg !1791

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1768
  ret i32 %25, !dbg !1792
}

; Function Attrs: nofree nounwind
declare !dbg !1793 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1794 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !1798 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1836, metadata !DIExpression()), !dbg !1837
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1838
  br i1 %2, label %6, label %3, !dbg !1840

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1841
  %5 = icmp eq i32 %4, 0, !dbg !1841
  br i1 %5, label %6, label %8, !dbg !1842

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !1843
  br label %17, !dbg !1844

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1845, metadata !DIExpression()) #34, !dbg !1850
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1852
  %10 = load i32, i32* %9, align 8, !dbg !1852, !tbaa !909
  %11 = and i32 %10, 256, !dbg !1854
  %12 = icmp eq i32 %11, 0, !dbg !1854
  br i1 %12, label %15, label %13, !dbg !1855

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #34, !dbg !1856
  br label %15, !dbg !1856

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !1857
  br label %17, !dbg !1858

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !1837
  ret i32 %18, !dbg !1859
}

; Function Attrs: nofree nounwind
declare !dbg !1860 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1861 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1899, metadata !DIExpression()), !dbg !1900
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1901
  ret i32 0, !dbg !1902
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !1903 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1941, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %1, metadata !1942, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i32 %2, metadata !1943, metadata !DIExpression()), !dbg !1947
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1948
  %5 = load i8*, i8** %4, align 8, !dbg !1948, !tbaa !1949
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1950
  %7 = load i8*, i8** %6, align 8, !dbg !1950, !tbaa !1951
  %8 = icmp eq i8* %5, %7, !dbg !1952
  br i1 %8, label %9, label %28, !dbg !1953

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1954
  %11 = load i8*, i8** %10, align 8, !dbg !1954, !tbaa !1172
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !1955
  %13 = load i8*, i8** %12, align 8, !dbg !1955, !tbaa !1956
  %14 = icmp eq i8* %11, %13, !dbg !1957
  br i1 %14, label %15, label %28, !dbg !1958

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !1959
  %17 = load i8*, i8** %16, align 8, !dbg !1959, !tbaa !1960
  %18 = icmp eq i8* %17, null, !dbg !1961
  br i1 %18, label %19, label %28, !dbg !1962

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1963
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #34, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %21, metadata !1944, metadata !DIExpression()), !dbg !1965
  %22 = icmp eq i64 %21, -1, !dbg !1966
  br i1 %22, label %30, label %23, !dbg !1968

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1969
  %25 = load i32, i32* %24, align 8, !dbg !1970, !tbaa !909
  %26 = and i32 %25, -17, !dbg !1970
  store i32 %26, i32* %24, align 8, !dbg !1970, !tbaa !909
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !1971
  store i64 %21, i64* %27, align 8, !dbg !1972, !tbaa !1973
  br label %30, !dbg !1974

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !1975
  br label %30, !dbg !1976

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !1947
  ret i32 %31, !dbg !1977
}

; Function Attrs: nofree nounwind
declare !dbg !1978 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #19 !dbg !1981 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1984, !tbaa !555
  ret i8* %1, !dbg !1985
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #20 !dbg !1986 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1988, metadata !DIExpression()), !dbg !1991
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #35, !dbg !1992
  call void @llvm.dbg.value(metadata i8* %2, metadata !1989, metadata !DIExpression()), !dbg !1991
  %3 = icmp eq i8* %2, null, !dbg !1993
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1993
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1993
  call void @llvm.dbg.value(metadata i8* %5, metadata !1990, metadata !DIExpression()), !dbg !1991
  %6 = ptrtoint i8* %5 to i64, !dbg !1994
  %7 = ptrtoint i8* %0 to i64, !dbg !1994
  %8 = sub i64 %6, %7, !dbg !1994
  %9 = icmp sgt i64 %8, 6, !dbg !1996
  br i1 %9, label %10, label %19, !dbg !1997

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1998
  call void @llvm.dbg.value(metadata i8* %11, metadata !1999, metadata !DIExpression()) #34, !dbg !2006
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0), metadata !2004, metadata !DIExpression()) #34, !dbg !2006
  call void @llvm.dbg.value(metadata i64 7, metadata !2005, metadata !DIExpression()) #34, !dbg !2006
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0), i64 7) #34, !dbg !2008
  %13 = icmp eq i32 %12, 0, !dbg !2009
  br i1 %13, label %14, label %19, !dbg !2010

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1988, metadata !DIExpression()), !dbg !1991
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.64, i64 0, i64 0), i64 noundef 3) #35, !dbg !2011
  %16 = icmp eq i32 %15, 0, !dbg !2014
  %17 = select i1 %16, i64 3, i64 0, !dbg !2015
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2015
  br label %19, !dbg !2015

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1991
  call void @llvm.dbg.value(metadata i8* %21, metadata !1990, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i8* %20, metadata !1988, metadata !DIExpression()), !dbg !1991
  store i8* %20, i8** @program_name, align 8, !dbg !2016, !tbaa !555
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2017, !tbaa !555
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2018, !tbaa !555
  ret void, !dbg !2019
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !313 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !320, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8* %1, metadata !321, metadata !DIExpression()), !dbg !2020
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #34, !dbg !2021
  call void @llvm.dbg.value(metadata i8* %5, metadata !322, metadata !DIExpression()), !dbg !2020
  %6 = icmp eq i8* %5, %0, !dbg !2022
  br i1 %6, label %7, label %17, !dbg !2024

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2025
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #34, !dbg !2025
  %10 = bitcast i64* %4 to i8*, !dbg !2026
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !2026
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !324, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2028, metadata !DIExpression()) #34, !dbg !2035
  call void @llvm.dbg.value(metadata i8* %10, metadata !2037, metadata !DIExpression()) #34, !dbg !2044
  call void @llvm.dbg.value(metadata i32 0, metadata !2042, metadata !DIExpression()) #34, !dbg !2044
  call void @llvm.dbg.value(metadata i64 8, metadata !2043, metadata !DIExpression()) #34, !dbg !2044
  store i64 0, i64* %4, align 8, !dbg !2046
  call void @llvm.dbg.value(metadata i32* %3, metadata !323, metadata !DIExpression(DW_OP_deref)), !dbg !2020
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #34, !dbg !2047
  %12 = icmp eq i64 %11, 2, !dbg !2049
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !323, metadata !DIExpression()), !dbg !2020
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2050
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2020
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !2051
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #34, !dbg !2051
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2020
  ret i8* %18, !dbg !2051
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2052 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2057, metadata !DIExpression()), !dbg !2060
  %2 = tail call i32* @__errno_location() #37, !dbg !2061
  %3 = load i32, i32* %2, align 4, !dbg !2061, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %3, metadata !2058, metadata !DIExpression()), !dbg !2060
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2062
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2062
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2062
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !2063
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2063
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2059, metadata !DIExpression()), !dbg !2060
  store i32 %3, i32* %2, align 4, !dbg !2064, !tbaa !649
  ret %struct.quoting_options* %8, !dbg !2065
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #19 !dbg !2066 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2072, metadata !DIExpression()), !dbg !2073
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2074
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2074
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2075
  %5 = load i32, i32* %4, align 8, !dbg !2075, !tbaa !2076
  ret i32 %5, !dbg !2078
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #15 !dbg !2079 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2083, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i32 %1, metadata !2084, metadata !DIExpression()), !dbg !2085
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2086
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2086
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2087
  store i32 %1, i32* %5, align 8, !dbg !2088, !tbaa !2076
  ret void, !dbg !2089
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !2090 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2094, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %1, metadata !2095, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %2, metadata !2096, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %1, metadata !2097, metadata !DIExpression()), !dbg !2102
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2103
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2103
  %6 = lshr i8 %1, 5, !dbg !2104
  %7 = zext i8 %6 to i64, !dbg !2104
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2105
  call void @llvm.dbg.value(metadata i32* %8, metadata !2098, metadata !DIExpression()), !dbg !2102
  %9 = and i8 %1, 31, !dbg !2106
  %10 = zext i8 %9 to i32, !dbg !2106
  call void @llvm.dbg.value(metadata i32 %10, metadata !2100, metadata !DIExpression()), !dbg !2102
  %11 = load i32, i32* %8, align 4, !dbg !2107, !tbaa !649
  %12 = lshr i32 %11, %10, !dbg !2108
  %13 = and i32 %12, 1, !dbg !2109
  call void @llvm.dbg.value(metadata i32 %13, metadata !2101, metadata !DIExpression()), !dbg !2102
  %14 = and i32 %2, 1, !dbg !2110
  %15 = xor i32 %13, %14, !dbg !2111
  %16 = shl i32 %15, %10, !dbg !2112
  %17 = xor i32 %16, %11, !dbg !2113
  store i32 %17, i32* %8, align 4, !dbg !2113, !tbaa !649
  ret i32 %13, !dbg !2114
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2115 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2119, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1, metadata !2120, metadata !DIExpression()), !dbg !2122
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2123
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2125
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2119, metadata !DIExpression()), !dbg !2122
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2126
  %6 = load i32, i32* %5, align 4, !dbg !2126, !tbaa !2127
  call void @llvm.dbg.value(metadata i32 %6, metadata !2121, metadata !DIExpression()), !dbg !2122
  store i32 %1, i32* %5, align 4, !dbg !2128, !tbaa !2127
  ret i32 %6, !dbg !2129
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2130 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2134, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8* %1, metadata !2135, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8* %2, metadata !2136, metadata !DIExpression()), !dbg !2137
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2138
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2140
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2134, metadata !DIExpression()), !dbg !2137
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2141
  store i32 10, i32* %6, align 8, !dbg !2142, !tbaa !2076
  %7 = icmp ne i8* %1, null, !dbg !2143
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2145
  br i1 %9, label %11, label %10, !dbg !2145

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !2146
  unreachable, !dbg !2146

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2147
  store i8* %1, i8** %12, align 8, !dbg !2148, !tbaa !2149
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2150
  store i8* %2, i8** %13, align 8, !dbg !2151, !tbaa !2152
  ret void, !dbg !2153
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2154 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2158, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i64 %1, metadata !2159, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8* %2, metadata !2160, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i64 %3, metadata !2161, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2162, metadata !DIExpression()), !dbg !2166
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2167
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2167
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2163, metadata !DIExpression()), !dbg !2166
  %8 = tail call i32* @__errno_location() #37, !dbg !2168
  %9 = load i32, i32* %8, align 4, !dbg !2168, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %9, metadata !2164, metadata !DIExpression()), !dbg !2166
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2169
  %11 = load i32, i32* %10, align 8, !dbg !2169, !tbaa !2076
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2170
  %13 = load i32, i32* %12, align 4, !dbg !2170, !tbaa !2127
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2171
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2172
  %16 = load i8*, i8** %15, align 8, !dbg !2172, !tbaa !2149
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2173
  %18 = load i8*, i8** %17, align 8, !dbg !2173, !tbaa !2152
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2174
  call void @llvm.dbg.value(metadata i64 %19, metadata !2165, metadata !DIExpression()), !dbg !2166
  store i32 %9, i32* %8, align 4, !dbg !2175, !tbaa !649
  ret i64 %19, !dbg !2176
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2177 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2183, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %1, metadata !2184, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %2, metadata !2185, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %3, metadata !2186, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %4, metadata !2187, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %5, metadata !2188, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32* %6, metadata !2189, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %7, metadata !2190, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %8, metadata !2191, metadata !DIExpression()), !dbg !2245
  %17 = tail call i64 @__ctype_get_mb_cur_max() #34, !dbg !2246
  %18 = icmp eq i64 %17, 1, !dbg !2247
  call void @llvm.dbg.value(metadata i1 %18, metadata !2192, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2245
  call void @llvm.dbg.value(metadata i64 0, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 0, metadata !2194, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* null, metadata !2195, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 0, metadata !2196, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 0, metadata !2197, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %5, metadata !2198, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2245
  call void @llvm.dbg.value(metadata i8 0, metadata !2199, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 1, metadata !2200, metadata !DIExpression()), !dbg !2245
  %19 = and i32 %5, 2, !dbg !2248
  %20 = icmp ne i32 %19, 0, !dbg !2248
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
  br label %36, !dbg !2248

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2249
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2250
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2251
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2184, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2200, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2199, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2198, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2197, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %43, metadata !2196, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %42, metadata !2195, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %41, metadata !2194, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 0, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %40, metadata !2186, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %39, metadata !2191, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %38, metadata !2190, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %37, metadata !2187, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.label(metadata !2238), !dbg !2252
  call void @llvm.dbg.value(metadata i8 0, metadata !2201, metadata !DIExpression()), !dbg !2245
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
  ], !dbg !2253

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2198, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 5, metadata !2187, metadata !DIExpression()), !dbg !2245
  br label %111, !dbg !2254

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2198, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 5, metadata !2187, metadata !DIExpression()), !dbg !2245
  br i1 %45, label %111, label %51, !dbg !2254

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2255
  br i1 %52, label %111, label %53, !dbg !2259

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2255, !tbaa !658
  br label %111, !dbg !2255

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), metadata !386, metadata !DIExpression()) #34, !dbg !2260
  call void @llvm.dbg.value(metadata i32 %37, metadata !387, metadata !DIExpression()) #34, !dbg !2260
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), i32 noundef 5) #34, !dbg !2264
  call void @llvm.dbg.value(metadata i8* %55, metadata !388, metadata !DIExpression()) #34, !dbg !2260
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), !dbg !2265
  br i1 %56, label %57, label %66, !dbg !2267

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #34, !dbg !2268
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #34, !dbg !2269
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !390, metadata !DIExpression()) #34, !dbg !2270
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2271, metadata !DIExpression()) #34, !dbg !2277
  call void @llvm.dbg.value(metadata i8* %23, metadata !2279, metadata !DIExpression()) #34, !dbg !2284
  call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression()) #34, !dbg !2284
  call void @llvm.dbg.value(metadata i64 8, metadata !2283, metadata !DIExpression()) #34, !dbg !2284
  store i64 0, i64* %13, align 8, !dbg !2286
  call void @llvm.dbg.value(metadata i32* %12, metadata !389, metadata !DIExpression(DW_OP_deref)) #34, !dbg !2260
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #34, !dbg !2287
  %59 = icmp eq i64 %58, 3, !dbg !2289
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !389, metadata !DIExpression()) #34, !dbg !2260
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2290
  %63 = icmp eq i32 %37, 9, !dbg !2290
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2290
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #34, !dbg !2291
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #34, !dbg !2291
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2260
  call void @llvm.dbg.value(metadata i8* %67, metadata !2190, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), metadata !386, metadata !DIExpression()) #34, !dbg !2292
  call void @llvm.dbg.value(metadata i32 %37, metadata !387, metadata !DIExpression()) #34, !dbg !2292
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), i32 noundef 5) #34, !dbg !2294
  call void @llvm.dbg.value(metadata i8* %68, metadata !388, metadata !DIExpression()) #34, !dbg !2292
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2295
  br i1 %69, label %70, label %79, !dbg !2296

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #34, !dbg !2297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #34, !dbg !2298
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !390, metadata !DIExpression()) #34, !dbg !2299
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2271, metadata !DIExpression()) #34, !dbg !2300
  call void @llvm.dbg.value(metadata i8* %26, metadata !2279, metadata !DIExpression()) #34, !dbg !2302
  call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression()) #34, !dbg !2302
  call void @llvm.dbg.value(metadata i64 8, metadata !2283, metadata !DIExpression()) #34, !dbg !2302
  store i64 0, i64* %11, align 8, !dbg !2304
  call void @llvm.dbg.value(metadata i32* %10, metadata !389, metadata !DIExpression(DW_OP_deref)) #34, !dbg !2292
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #34, !dbg !2305
  %72 = icmp eq i64 %71, 3, !dbg !2306
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !389, metadata !DIExpression()) #34, !dbg !2292
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2307
  %76 = icmp eq i32 %37, 9, !dbg !2307
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2307
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2307
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #34, !dbg !2308
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #34, !dbg !2308
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2191, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %80, metadata !2190, metadata !DIExpression()), !dbg !2245
  br i1 %45, label %97, label %82, !dbg !2309

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2202, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i64 0, metadata !2193, metadata !DIExpression()), !dbg !2245
  %83 = load i8, i8* %80, align 1, !dbg !2311, !tbaa !658
  %84 = icmp eq i8 %83, 0, !dbg !2313
  br i1 %84, label %97, label %85, !dbg !2313

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2202, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %88, metadata !2193, metadata !DIExpression()), !dbg !2245
  %89 = icmp ult i64 %88, %48, !dbg !2314
  br i1 %89, label %90, label %92, !dbg !2317

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2314
  store i8 %86, i8* %91, align 1, !dbg !2314, !tbaa !658
  br label %92, !dbg !2314

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %93, metadata !2193, metadata !DIExpression()), !dbg !2245
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2318
  call void @llvm.dbg.value(metadata i8* %94, metadata !2202, metadata !DIExpression()), !dbg !2310
  %95 = load i8, i8* %94, align 1, !dbg !2311, !tbaa !658
  %96 = icmp eq i8 %95, 0, !dbg !2313
  br i1 %96, label %97, label %85, !dbg !2313, !llvm.loop !2319

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2321
  call void @llvm.dbg.value(metadata i64 %98, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 1, metadata !2197, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %81, metadata !2195, metadata !DIExpression()), !dbg !2245
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #35, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %99, metadata !2196, metadata !DIExpression()), !dbg !2245
  br label %111, !dbg !2323

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2197, metadata !DIExpression()), !dbg !2245
  br label %102, !dbg !2324

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2198, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2197, metadata !DIExpression()), !dbg !2245
  br i1 %45, label %102, label %105, !dbg !2325

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2198, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2197, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 2, metadata !2187, metadata !DIExpression()), !dbg !2245
  br label %111, !dbg !2326

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2198, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2197, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 2, metadata !2187, metadata !DIExpression()), !dbg !2245
  br i1 %45, label %111, label %105, !dbg !2326

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2327
  br i1 %107, label %111, label %108, !dbg !2331

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2327, !tbaa !658
  br label %111, !dbg !2327

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2198, metadata !DIExpression()), !dbg !2245
  br label %111, !dbg !2332

110:                                              ; preds = %36
  call void @abort() #36, !dbg !2333
  unreachable, !dbg !2333

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2321
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %102 ], !dbg !2245
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2245
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2198, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2197, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %117, metadata !2196, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %116, metadata !2195, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %115, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %114, metadata !2191, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %113, metadata !2190, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %112, metadata !2187, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 0, metadata !2207, metadata !DIExpression()), !dbg !2334
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
  br label %132, !dbg !2335

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2321
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2249
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2334
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2184, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %139, metadata !2207, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8 poison, metadata !2201, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2200, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2199, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %135, metadata !2194, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %134, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %133, metadata !2186, metadata !DIExpression()), !dbg !2245
  %141 = icmp eq i64 %133, -1, !dbg !2336
  br i1 %141, label %142, label %146, !dbg !2337

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2338
  %144 = load i8, i8* %143, align 1, !dbg !2338, !tbaa !658
  %145 = icmp eq i8 %144, 0, !dbg !2339
  br i1 %145, label %596, label %148, !dbg !2340

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2341
  br i1 %147, label %596, label %148, !dbg !2340

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2209, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 0, metadata !2212, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 0, metadata !2213, metadata !DIExpression()), !dbg !2342
  br i1 %123, label %149, label %163, !dbg !2343

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2345
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2346
  br i1 %151, label %152, label %154, !dbg !2346

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %153, metadata !2186, metadata !DIExpression()), !dbg !2245
  br label %154, !dbg !2348

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2348
  call void @llvm.dbg.value(metadata i64 %155, metadata !2186, metadata !DIExpression()), !dbg !2245
  %156 = icmp ugt i64 %150, %155, !dbg !2349
  br i1 %156, label %163, label %157, !dbg !2350

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2351
  call void @llvm.dbg.value(metadata i8* %158, metadata !2352, metadata !DIExpression()) #34, !dbg !2357
  call void @llvm.dbg.value(metadata i8* %116, metadata !2355, metadata !DIExpression()) #34, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %117, metadata !2356, metadata !DIExpression()) #34, !dbg !2357
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #34, !dbg !2359
  %160 = icmp ne i32 %159, 0, !dbg !2360
  %161 = or i1 %160, %125, !dbg !2361
  %162 = xor i1 %160, true, !dbg !2361
  br i1 %161, label %163, label %647, !dbg !2361

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2209, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i64 %164, metadata !2186, metadata !DIExpression()), !dbg !2245
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2362
  %167 = load i8, i8* %166, align 1, !dbg !2362, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %167, metadata !2214, metadata !DIExpression()), !dbg !2342
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
  ], !dbg !2363

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2364

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2365

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2212, metadata !DIExpression()), !dbg !2342
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2369
  br i1 %171, label %188, label %172, !dbg !2369

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2371
  br i1 %173, label %174, label %176, !dbg !2375

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2371
  store i8 39, i8* %175, align 1, !dbg !2371, !tbaa !658
  br label %176, !dbg !2371

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %177, metadata !2193, metadata !DIExpression()), !dbg !2245
  %178 = icmp ult i64 %177, %140, !dbg !2376
  br i1 %178, label %179, label %181, !dbg !2379

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2376
  store i8 36, i8* %180, align 1, !dbg !2376, !tbaa !658
  br label %181, !dbg !2376

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2379
  call void @llvm.dbg.value(metadata i64 %182, metadata !2193, metadata !DIExpression()), !dbg !2245
  %183 = icmp ult i64 %182, %140, !dbg !2380
  br i1 %183, label %184, label %186, !dbg !2383

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2380
  store i8 39, i8* %185, align 1, !dbg !2380, !tbaa !658
  br label %186, !dbg !2380

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2383
  call void @llvm.dbg.value(metadata i64 %187, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 1, metadata !2201, metadata !DIExpression()), !dbg !2245
  br label %188, !dbg !2384

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2245
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2201, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %189, metadata !2193, metadata !DIExpression()), !dbg !2245
  %191 = icmp ult i64 %189, %140, !dbg !2385
  br i1 %191, label %192, label %194, !dbg !2388

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2385
  store i8 92, i8* %193, align 1, !dbg !2385, !tbaa !658
  br label %194, !dbg !2385

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2388
  call void @llvm.dbg.value(metadata i64 %195, metadata !2193, metadata !DIExpression()), !dbg !2245
  br i1 %120, label %196, label %499, !dbg !2389

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2391
  %198 = icmp ult i64 %197, %164, !dbg !2392
  br i1 %198, label %199, label %456, !dbg !2393

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2394
  %201 = load i8, i8* %200, align 1, !dbg !2394, !tbaa !658
  %202 = add i8 %201, -48, !dbg !2395
  %203 = icmp ult i8 %202, 10, !dbg !2395
  br i1 %203, label %204, label %456, !dbg !2395

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2396
  br i1 %205, label %206, label %208, !dbg !2400

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2396
  store i8 48, i8* %207, align 1, !dbg !2396, !tbaa !658
  br label %208, !dbg !2396

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %209, metadata !2193, metadata !DIExpression()), !dbg !2245
  %210 = icmp ult i64 %209, %140, !dbg !2401
  br i1 %210, label %211, label %213, !dbg !2404

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2401
  store i8 48, i8* %212, align 1, !dbg !2401, !tbaa !658
  br label %213, !dbg !2401

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %214, metadata !2193, metadata !DIExpression()), !dbg !2245
  br label %456, !dbg !2405

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2406

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2407

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2408

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2410

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2412
  %221 = icmp ult i64 %220, %164, !dbg !2413
  br i1 %221, label %222, label %456, !dbg !2414

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2415
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2416
  %225 = load i8, i8* %224, align 1, !dbg !2416, !tbaa !658
  %226 = icmp eq i8 %225, 63, !dbg !2417
  br i1 %226, label %227, label %456, !dbg !2418

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2419
  %229 = load i8, i8* %228, align 1, !dbg !2419, !tbaa !658
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
  ], !dbg !2420

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2421

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2214, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i64 %220, metadata !2207, metadata !DIExpression()), !dbg !2334
  %232 = icmp ult i64 %134, %140, !dbg !2423
  br i1 %232, label %233, label %235, !dbg !2426

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2423
  store i8 63, i8* %234, align 1, !dbg !2423, !tbaa !658
  br label %235, !dbg !2423

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %236, metadata !2193, metadata !DIExpression()), !dbg !2245
  %237 = icmp ult i64 %236, %140, !dbg !2427
  br i1 %237, label %238, label %240, !dbg !2430

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2427
  store i8 34, i8* %239, align 1, !dbg !2427, !tbaa !658
  br label %240, !dbg !2427

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %241, metadata !2193, metadata !DIExpression()), !dbg !2245
  %242 = icmp ult i64 %241, %140, !dbg !2431
  br i1 %242, label %243, label %245, !dbg !2434

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2431
  store i8 34, i8* %244, align 1, !dbg !2431, !tbaa !658
  br label %245, !dbg !2431

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %246, metadata !2193, metadata !DIExpression()), !dbg !2245
  %247 = icmp ult i64 %246, %140, !dbg !2435
  br i1 %247, label %248, label %250, !dbg !2438

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2435
  store i8 63, i8* %249, align 1, !dbg !2435, !tbaa !658
  br label %250, !dbg !2435

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %251, metadata !2193, metadata !DIExpression()), !dbg !2245
  br label %456, !dbg !2439

252:                                              ; preds = %163
  br label %263, !dbg !2440

253:                                              ; preds = %163
  br label %263, !dbg !2441

254:                                              ; preds = %163
  br label %261, !dbg !2442

255:                                              ; preds = %163
  br label %261, !dbg !2443

256:                                              ; preds = %163
  br label %263, !dbg !2444

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2445

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2446

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2449

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2451

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2452
  call void @llvm.dbg.label(metadata !2239), !dbg !2453
  br i1 %128, label %263, label %638, !dbg !2454

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2452
  call void @llvm.dbg.label(metadata !2241), !dbg !2456
  br i1 %118, label %510, label %467, !dbg !2457

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2458

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2459, !tbaa !658
  %268 = icmp eq i8 %267, 0, !dbg !2461
  br i1 %268, label %269, label %456, !dbg !2462

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2463
  br i1 %270, label %271, label %456, !dbg !2465

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2213, metadata !DIExpression()), !dbg !2342
  br label %272, !dbg !2466

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2213, metadata !DIExpression()), !dbg !2342
  br i1 %126, label %274, label %456, !dbg !2467

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2469

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2199, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 1, metadata !2213, metadata !DIExpression()), !dbg !2342
  br i1 %126, label %276, label %456, !dbg !2470

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2471

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2474
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2476
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2476
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2476
  call void @llvm.dbg.value(metadata i64 %282, metadata !2184, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %281, metadata !2194, metadata !DIExpression()), !dbg !2245
  %283 = icmp ult i64 %134, %282, !dbg !2477
  br i1 %283, label %284, label %286, !dbg !2480

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2477
  store i8 39, i8* %285, align 1, !dbg !2477, !tbaa !658
  br label %286, !dbg !2477

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2480
  call void @llvm.dbg.value(metadata i64 %287, metadata !2193, metadata !DIExpression()), !dbg !2245
  %288 = icmp ult i64 %287, %282, !dbg !2481
  br i1 %288, label %289, label %291, !dbg !2484

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2481
  store i8 92, i8* %290, align 1, !dbg !2481, !tbaa !658
  br label %291, !dbg !2481

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2484
  call void @llvm.dbg.value(metadata i64 %292, metadata !2193, metadata !DIExpression()), !dbg !2245
  %293 = icmp ult i64 %292, %282, !dbg !2485
  br i1 %293, label %294, label %296, !dbg !2488

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2485
  store i8 39, i8* %295, align 1, !dbg !2485, !tbaa !658
  br label %296, !dbg !2485

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %297, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 0, metadata !2201, metadata !DIExpression()), !dbg !2245
  br label %456, !dbg !2489

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2490

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2215, metadata !DIExpression()), !dbg !2491
  %300 = tail call i16** @__ctype_b_loc() #37, !dbg !2492
  %301 = load i16*, i16** %300, align 8, !dbg !2492, !tbaa !555
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2492
  %304 = load i16, i16* %303, align 2, !dbg !2492, !tbaa !683
  %305 = and i16 %304, 16384, !dbg !2492
  %306 = icmp ne i16 %305, 0, !dbg !2494
  call void @llvm.dbg.value(metadata i8 poison, metadata !2218, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i64 %349, metadata !2215, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i64 %312, metadata !2186, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i1 %350, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2342
  br label %352, !dbg !2495

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2496
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2219, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2271, metadata !DIExpression()) #34, !dbg !2498
  call void @llvm.dbg.value(metadata i8* %32, metadata !2279, metadata !DIExpression()) #34, !dbg !2500
  call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression()) #34, !dbg !2500
  call void @llvm.dbg.value(metadata i64 8, metadata !2283, metadata !DIExpression()) #34, !dbg !2500
  store i64 0, i64* %14, align 8, !dbg !2502
  call void @llvm.dbg.value(metadata i64 0, metadata !2215, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8 1, metadata !2218, metadata !DIExpression()), !dbg !2491
  %308 = icmp eq i64 %164, -1, !dbg !2503
  br i1 %308, label %309, label %311, !dbg !2505

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !2506
  call void @llvm.dbg.value(metadata i64 %310, metadata !2186, metadata !DIExpression()), !dbg !2245
  br label %311, !dbg !2507

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2342
  call void @llvm.dbg.value(metadata i64 %312, metadata !2186, metadata !DIExpression()), !dbg !2245
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2508
  %313 = sub i64 %312, %139, !dbg !2509
  call void @llvm.dbg.value(metadata i32* %16, metadata !2222, metadata !DIExpression(DW_OP_deref)), !dbg !2510
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #34, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %314, metadata !2226, metadata !DIExpression()), !dbg !2510
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2512

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2215, metadata !DIExpression()), !dbg !2491
  %316 = icmp ugt i64 %312, %139, !dbg !2513
  br i1 %316, label %319, label %317, !dbg !2515

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2218, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i64 0, metadata !2215, metadata !DIExpression()), !dbg !2491
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2516
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %349, metadata !2215, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i64 %312, metadata !2186, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i1 %350, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2342
  br label %352, !dbg !2495

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2218, metadata !DIExpression()), !dbg !2491
  br label %346, !dbg !2518

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2215, metadata !DIExpression()), !dbg !2491
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2520
  %323 = load i8, i8* %322, align 1, !dbg !2520, !tbaa !658
  %324 = icmp eq i8 %323, 0, !dbg !2515
  br i1 %324, label %348, label %325, !dbg !2521

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2522
  call void @llvm.dbg.value(metadata i64 %326, metadata !2215, metadata !DIExpression()), !dbg !2491
  %327 = add i64 %326, %139, !dbg !2523
  %328 = icmp eq i64 %326, %313, !dbg !2513
  br i1 %328, label %348, label %319, !dbg !2515, !llvm.loop !2524

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2525
  call void @llvm.dbg.value(metadata i64 1, metadata !2227, metadata !DIExpression()), !dbg !2526
  br i1 %331, label %332, label %340, !dbg !2525

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2227, metadata !DIExpression()), !dbg !2526
  %334 = add i64 %333, %139, !dbg !2527
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2529
  %336 = load i8, i8* %335, align 1, !dbg !2529, !tbaa !658
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2530

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %338, metadata !2227, metadata !DIExpression()), !dbg !2526
  %339 = icmp eq i64 %338, %314, !dbg !2532
  br i1 %339, label %340, label %332, !dbg !2533, !llvm.loop !2534

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2536, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %341, metadata !2222, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32 %341, metadata !2538, metadata !DIExpression()) #34, !dbg !2541
  %342 = call i32 @iswprint(i32 noundef %341) #34, !dbg !2543
  %343 = icmp ne i32 %342, 0, !dbg !2544
  call void @llvm.dbg.value(metadata i8 poison, metadata !2218, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i64 %314, metadata !2215, metadata !DIExpression()), !dbg !2491
  br label %348, !dbg !2545

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2218, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i64 0, metadata !2215, metadata !DIExpression()), !dbg !2491
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2516
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2517
  call void @llvm.dbg.label(metadata !2244), !dbg !2546
  %345 = select i1 %118, i32 4, i32 2, !dbg !2547
  br label %643, !dbg !2547

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2218, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i64 0, metadata !2215, metadata !DIExpression()), !dbg !2491
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2516
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %349, metadata !2215, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i64 %312, metadata !2186, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i1 %350, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2342
  br label %352, !dbg !2495

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2218, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i64 0, metadata !2215, metadata !DIExpression()), !dbg !2491
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2516
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %349, metadata !2215, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i64 %312, metadata !2186, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i1 %350, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2342
  %351 = icmp ugt i64 %349, 1, !dbg !2549
  br i1 %351, label %357, label %352, !dbg !2495

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2550
  br i1 %356, label %456, label %357, !dbg !2550

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2551
  call void @llvm.dbg.value(metadata i64 %361, metadata !2235, metadata !DIExpression()), !dbg !2552
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2553

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2245
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2334
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2554
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2342
  call void @llvm.dbg.value(metadata i8 %369, metadata !2214, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 %368, metadata !2212, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 poison, metadata !2209, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i64 %366, metadata !2207, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8 poison, metadata !2201, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %364, metadata !2193, metadata !DIExpression()), !dbg !2245
  br i1 %362, label %414, label %370, !dbg !2555

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2560

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2212, metadata !DIExpression()), !dbg !2342
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2563
  br i1 %372, label %389, label %373, !dbg !2563

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2565
  br i1 %374, label %375, label %377, !dbg !2569

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2565
  store i8 39, i8* %376, align 1, !dbg !2565, !tbaa !658
  br label %377, !dbg !2565

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %378, metadata !2193, metadata !DIExpression()), !dbg !2245
  %379 = icmp ult i64 %378, %140, !dbg !2570
  br i1 %379, label %380, label %382, !dbg !2573

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2570
  store i8 36, i8* %381, align 1, !dbg !2570, !tbaa !658
  br label %382, !dbg !2570

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %383, metadata !2193, metadata !DIExpression()), !dbg !2245
  %384 = icmp ult i64 %383, %140, !dbg !2574
  br i1 %384, label %385, label %387, !dbg !2577

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2574
  store i8 39, i8* %386, align 1, !dbg !2574, !tbaa !658
  br label %387, !dbg !2574

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %388, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 1, metadata !2201, metadata !DIExpression()), !dbg !2245
  br label %389, !dbg !2578

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2245
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2201, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %390, metadata !2193, metadata !DIExpression()), !dbg !2245
  %392 = icmp ult i64 %390, %140, !dbg !2579
  br i1 %392, label %393, label %395, !dbg !2582

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2579
  store i8 92, i8* %394, align 1, !dbg !2579, !tbaa !658
  br label %395, !dbg !2579

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %396, metadata !2193, metadata !DIExpression()), !dbg !2245
  %397 = icmp ult i64 %396, %140, !dbg !2583
  br i1 %397, label %398, label %402, !dbg !2586

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2583
  %400 = or i8 %399, 48, !dbg !2583
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2583
  store i8 %400, i8* %401, align 1, !dbg !2583, !tbaa !658
  br label %402, !dbg !2583

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %403, metadata !2193, metadata !DIExpression()), !dbg !2245
  %404 = icmp ult i64 %403, %140, !dbg !2587
  br i1 %404, label %405, label %410, !dbg !2590

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2587
  %407 = and i8 %406, 7, !dbg !2587
  %408 = or i8 %407, 48, !dbg !2587
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2587
  store i8 %408, i8* %409, align 1, !dbg !2587, !tbaa !658
  br label %410, !dbg !2587

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %411, metadata !2193, metadata !DIExpression()), !dbg !2245
  %412 = and i8 %369, 7, !dbg !2591
  %413 = or i8 %412, 48, !dbg !2592
  call void @llvm.dbg.value(metadata i8 %413, metadata !2214, metadata !DIExpression()), !dbg !2342
  br label %421, !dbg !2593

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2594

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2595
  br i1 %416, label %417, label %419, !dbg !2600

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2595
  store i8 92, i8* %418, align 1, !dbg !2595, !tbaa !658
  br label %419, !dbg !2595

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %420, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 0, metadata !2209, metadata !DIExpression()), !dbg !2342
  br label %421, !dbg !2601

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2245
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2342
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2342
  call void @llvm.dbg.value(metadata i8 %426, metadata !2214, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 %425, metadata !2212, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 poison, metadata !2209, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 poison, metadata !2201, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %422, metadata !2193, metadata !DIExpression()), !dbg !2245
  %427 = add i64 %366, 1, !dbg !2602
  %428 = icmp ugt i64 %361, %427, !dbg !2604
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2605

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2606
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2606
  br i1 %432, label %433, label %444, !dbg !2606

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2609
  br i1 %434, label %435, label %437, !dbg !2613

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2609
  store i8 39, i8* %436, align 1, !dbg !2609, !tbaa !658
  br label %437, !dbg !2609

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %438, metadata !2193, metadata !DIExpression()), !dbg !2245
  %439 = icmp ult i64 %438, %140, !dbg !2614
  br i1 %439, label %440, label %442, !dbg !2617

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2614
  store i8 39, i8* %441, align 1, !dbg !2614, !tbaa !658
  br label %442, !dbg !2614

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2617
  call void @llvm.dbg.value(metadata i64 %443, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 0, metadata !2201, metadata !DIExpression()), !dbg !2245
  br label %444, !dbg !2618

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2619
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2201, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %445, metadata !2193, metadata !DIExpression()), !dbg !2245
  %447 = icmp ult i64 %445, %140, !dbg !2620
  br i1 %447, label %448, label %450, !dbg !2623

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2620
  store i8 %426, i8* %449, align 1, !dbg !2620, !tbaa !658
  br label %450, !dbg !2620

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2623
  call void @llvm.dbg.value(metadata i64 %451, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %427, metadata !2207, metadata !DIExpression()), !dbg !2334
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2624
  %453 = load i8, i8* %452, align 1, !dbg !2624, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %453, metadata !2214, metadata !DIExpression()), !dbg !2342
  br label %363, !dbg !2625, !llvm.loop !2626

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2214, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i1 %358, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2342
  call void @llvm.dbg.value(metadata i8 %425, metadata !2212, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 poison, metadata !2209, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i64 %366, metadata !2207, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8 poison, metadata !2201, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %422, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %360, metadata !2186, metadata !DIExpression()), !dbg !2245
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2629
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2245
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2249
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2334
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2342
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2184, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 %465, metadata !2214, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 poison, metadata !2213, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 poison, metadata !2212, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 poison, metadata !2209, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i64 %462, metadata !2207, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8 poison, metadata !2201, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2199, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %459, metadata !2194, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %458, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %457, metadata !2186, metadata !DIExpression()), !dbg !2245
  br i1 %121, label %478, label %467, !dbg !2630

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
  br i1 %131, label %479, label %499, !dbg !2632

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2633

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
  %490 = lshr i8 %481, 5, !dbg !2634
  %491 = zext i8 %490 to i64, !dbg !2634
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2635
  %493 = load i32, i32* %492, align 4, !dbg !2635, !tbaa !649
  %494 = and i8 %481, 31, !dbg !2636
  %495 = zext i8 %494 to i32, !dbg !2636
  %496 = shl nuw i32 1, %495, !dbg !2637
  %497 = and i32 %493, %496, !dbg !2637
  %498 = icmp eq i32 %497, 0, !dbg !2637
  br i1 %498, label %499, label %510, !dbg !2638

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
  br i1 %165, label %510, label %546, !dbg !2639

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2629
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2245
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2249
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2640
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2342
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2184, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 %518, metadata !2214, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 poison, metadata !2213, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i64 %516, metadata !2207, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8 poison, metadata !2201, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2199, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %513, metadata !2194, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %512, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %511, metadata !2186, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.label(metadata !2242), !dbg !2641
  br i1 %119, label %638, label %520, !dbg !2642

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2212, metadata !DIExpression()), !dbg !2342
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2644
  br i1 %521, label %538, label %522, !dbg !2644

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2646
  br i1 %523, label %524, label %526, !dbg !2650

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2646
  store i8 39, i8* %525, align 1, !dbg !2646, !tbaa !658
  br label %526, !dbg !2646

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2650
  call void @llvm.dbg.value(metadata i64 %527, metadata !2193, metadata !DIExpression()), !dbg !2245
  %528 = icmp ult i64 %527, %519, !dbg !2651
  br i1 %528, label %529, label %531, !dbg !2654

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2651
  store i8 36, i8* %530, align 1, !dbg !2651, !tbaa !658
  br label %531, !dbg !2651

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2654
  call void @llvm.dbg.value(metadata i64 %532, metadata !2193, metadata !DIExpression()), !dbg !2245
  %533 = icmp ult i64 %532, %519, !dbg !2655
  br i1 %533, label %534, label %536, !dbg !2658

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2655
  store i8 39, i8* %535, align 1, !dbg !2655, !tbaa !658
  br label %536, !dbg !2655

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2658
  call void @llvm.dbg.value(metadata i64 %537, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 1, metadata !2201, metadata !DIExpression()), !dbg !2245
  br label %538, !dbg !2659

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2342
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2201, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %539, metadata !2193, metadata !DIExpression()), !dbg !2245
  %541 = icmp ult i64 %539, %519, !dbg !2660
  br i1 %541, label %542, label %544, !dbg !2663

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2660
  store i8 92, i8* %543, align 1, !dbg !2660, !tbaa !658
  br label %544, !dbg !2660

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %556, metadata !2184, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 %555, metadata !2214, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 poison, metadata !2213, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 poison, metadata !2212, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i64 %552, metadata !2207, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8 poison, metadata !2201, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2199, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %549, metadata !2194, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %548, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %547, metadata !2186, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.label(metadata !2243), !dbg !2664
  br label %570, !dbg !2665

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2629
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2245
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2249
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2640
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2668
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2184, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 %555, metadata !2214, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 poison, metadata !2213, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 poison, metadata !2212, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i64 %552, metadata !2207, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8 poison, metadata !2201, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2199, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %549, metadata !2194, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %548, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %547, metadata !2186, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.label(metadata !2243), !dbg !2664
  %557 = xor i1 %551, true, !dbg !2665
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2665
  br i1 %558, label %570, label %559, !dbg !2665

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2669
  br i1 %560, label %561, label %563, !dbg !2673

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2669
  store i8 39, i8* %562, align 1, !dbg !2669, !tbaa !658
  br label %563, !dbg !2669

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %564, metadata !2193, metadata !DIExpression()), !dbg !2245
  %565 = icmp ult i64 %564, %556, !dbg !2674
  br i1 %565, label %566, label %568, !dbg !2677

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2674
  store i8 39, i8* %567, align 1, !dbg !2674, !tbaa !658
  br label %568, !dbg !2674

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2677
  call void @llvm.dbg.value(metadata i64 %569, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 0, metadata !2201, metadata !DIExpression()), !dbg !2245
  br label %570, !dbg !2678

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2342
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2201, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %578, metadata !2193, metadata !DIExpression()), !dbg !2245
  %580 = icmp ult i64 %578, %571, !dbg !2679
  br i1 %580, label %581, label %583, !dbg !2682

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2679
  store i8 %572, i8* %582, align 1, !dbg !2679, !tbaa !658
  br label %583, !dbg !2679

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2682
  call void @llvm.dbg.value(metadata i64 %584, metadata !2193, metadata !DIExpression()), !dbg !2245
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2683
  call void @llvm.dbg.value(metadata i8 poison, metadata !2200, metadata !DIExpression()), !dbg !2245
  br label %586, !dbg !2684

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2629
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2245
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2249
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2640
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2184, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %593, metadata !2207, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8 poison, metadata !2201, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2200, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2199, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %589, metadata !2194, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %588, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %587, metadata !2186, metadata !DIExpression()), !dbg !2245
  %595 = add i64 %593, 1, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %595, metadata !2207, metadata !DIExpression()), !dbg !2334
  br label %132, !dbg !2686, !llvm.loop !2687

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2184, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2200, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 poison, metadata !2199, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 undef, metadata !2194, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 undef, metadata !2193, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 undef, metadata !2186, metadata !DIExpression()), !dbg !2245
  %597 = icmp eq i64 %134, 0, !dbg !2689
  %598 = and i1 %126, %597, !dbg !2691
  %599 = and i1 %598, %119, !dbg !2691
  br i1 %599, label %638, label %600, !dbg !2691

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2692
  %602 = or i1 %119, %601, !dbg !2692
  %603 = xor i1 %136, true, !dbg !2692
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2692
  br i1 %604, label %612, label %605, !dbg !2692

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2694

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2696
  br label %653, !dbg !2698

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2699
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2701
  br i1 %611, label %36, label %612, !dbg !2701

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2702
  %615 = or i1 %614, %613, !dbg !2704
  br i1 %615, label %631, label %616, !dbg !2704

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2195, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %134, metadata !2193, metadata !DIExpression()), !dbg !2245
  %617 = load i8, i8* %116, align 1, !dbg !2705, !tbaa !658
  %618 = icmp eq i8 %617, 0, !dbg !2708
  br i1 %618, label %631, label %619, !dbg !2708

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2195, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %622, metadata !2193, metadata !DIExpression()), !dbg !2245
  %623 = icmp ult i64 %622, %140, !dbg !2709
  br i1 %623, label %624, label %626, !dbg !2712

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2709
  store i8 %620, i8* %625, align 1, !dbg !2709, !tbaa !658
  br label %626, !dbg !2709

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2712
  call void @llvm.dbg.value(metadata i64 %627, metadata !2193, metadata !DIExpression()), !dbg !2245
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2713
  call void @llvm.dbg.value(metadata i8* %628, metadata !2195, metadata !DIExpression()), !dbg !2245
  %629 = load i8, i8* %628, align 1, !dbg !2705, !tbaa !658
  %630 = icmp eq i8 %629, 0, !dbg !2708
  br i1 %630, label %631, label %619, !dbg !2708, !llvm.loop !2714

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2321
  call void @llvm.dbg.value(metadata i64 %632, metadata !2193, metadata !DIExpression()), !dbg !2245
  %633 = icmp ult i64 %632, %140, !dbg !2716
  br i1 %633, label %634, label %653, !dbg !2718

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2719
  store i8 0, i8* %635, align 1, !dbg !2720, !tbaa !658
  br label %653, !dbg !2719

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2244), !dbg !2546
  %637 = icmp eq i32 %112, 2, !dbg !2721
  br i1 %637, label %643, label %647, !dbg !2547

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2244), !dbg !2546
  %641 = icmp eq i32 %112, 2, !dbg !2721
  %642 = select i1 %118, i32 4, i32 2, !dbg !2547
  br i1 %641, label %643, label %647, !dbg !2547

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2547

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2187, metadata !DIExpression()), !dbg !2245
  %651 = and i32 %5, -3, !dbg !2722
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2723
  br label %653, !dbg !2724

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2725
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !2726 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2727 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2731, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %1, metadata !2732, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2733, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8* %0, metadata !2735, metadata !DIExpression()) #34, !dbg !2748
  call void @llvm.dbg.value(metadata i64 %1, metadata !2740, metadata !DIExpression()) #34, !dbg !2748
  call void @llvm.dbg.value(metadata i64* null, metadata !2741, metadata !DIExpression()) #34, !dbg !2748
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2742, metadata !DIExpression()) #34, !dbg !2748
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2750
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2750
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2743, metadata !DIExpression()) #34, !dbg !2748
  %6 = tail call i32* @__errno_location() #37, !dbg !2751
  %7 = load i32, i32* %6, align 4, !dbg !2751, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %7, metadata !2744, metadata !DIExpression()) #34, !dbg !2748
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2752
  %9 = load i32, i32* %8, align 4, !dbg !2752, !tbaa !2127
  %10 = or i32 %9, 1, !dbg !2753
  call void @llvm.dbg.value(metadata i32 %10, metadata !2745, metadata !DIExpression()) #34, !dbg !2748
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2754
  %12 = load i32, i32* %11, align 8, !dbg !2754, !tbaa !2076
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2755
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2756
  %15 = load i8*, i8** %14, align 8, !dbg !2756, !tbaa !2149
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2757
  %17 = load i8*, i8** %16, align 8, !dbg !2757, !tbaa !2152
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #34, !dbg !2758
  %19 = add i64 %18, 1, !dbg !2759
  call void @llvm.dbg.value(metadata i64 %19, metadata !2746, metadata !DIExpression()) #34, !dbg !2748
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #41, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %20, metadata !2747, metadata !DIExpression()) #34, !dbg !2748
  %21 = load i32, i32* %11, align 8, !dbg !2761, !tbaa !2076
  %22 = load i8*, i8** %14, align 8, !dbg !2762, !tbaa !2149
  %23 = load i8*, i8** %16, align 8, !dbg !2763, !tbaa !2152
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #34, !dbg !2764
  store i32 %7, i32* %6, align 4, !dbg !2765, !tbaa !649
  ret i8* %20, !dbg !2766
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2736 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2735, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %1, metadata !2740, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64* %2, metadata !2741, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2742, metadata !DIExpression()), !dbg !2767
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2768
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2768
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2743, metadata !DIExpression()), !dbg !2767
  %7 = tail call i32* @__errno_location() #37, !dbg !2769
  %8 = load i32, i32* %7, align 4, !dbg !2769, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %8, metadata !2744, metadata !DIExpression()), !dbg !2767
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2770
  %10 = load i32, i32* %9, align 4, !dbg !2770, !tbaa !2127
  %11 = icmp eq i64* %2, null, !dbg !2771
  %12 = zext i1 %11 to i32, !dbg !2771
  %13 = or i32 %10, %12, !dbg !2772
  call void @llvm.dbg.value(metadata i32 %13, metadata !2745, metadata !DIExpression()), !dbg !2767
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2773
  %15 = load i32, i32* %14, align 8, !dbg !2773, !tbaa !2076
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2774
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2775
  %18 = load i8*, i8** %17, align 8, !dbg !2775, !tbaa !2149
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2776
  %20 = load i8*, i8** %19, align 8, !dbg !2776, !tbaa !2152
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2777
  %22 = add i64 %21, 1, !dbg !2778
  call void @llvm.dbg.value(metadata i64 %22, metadata !2746, metadata !DIExpression()), !dbg !2767
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #41, !dbg !2779
  call void @llvm.dbg.value(metadata i8* %23, metadata !2747, metadata !DIExpression()), !dbg !2767
  %24 = load i32, i32* %14, align 8, !dbg !2780, !tbaa !2076
  %25 = load i8*, i8** %17, align 8, !dbg !2781, !tbaa !2149
  %26 = load i8*, i8** %19, align 8, !dbg !2782, !tbaa !2152
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2783
  store i32 %8, i32* %7, align 4, !dbg !2784, !tbaa !649
  br i1 %11, label %29, label %28, !dbg !2785

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2786, !tbaa !2788
  br label %29, !dbg !2789

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2790
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2791 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2796, !tbaa !555
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2793, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i32 1, metadata !2794, metadata !DIExpression()), !dbg !2798
  %2 = load i32, i32* @nslots, align 4, !tbaa !649
  call void @llvm.dbg.value(metadata i32 1, metadata !2794, metadata !DIExpression()), !dbg !2798
  %3 = icmp sgt i32 %2, 1, !dbg !2799
  br i1 %3, label %4, label %6, !dbg !2801

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2799
  br label %10, !dbg !2801

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2802
  %8 = load i8*, i8** %7, align 8, !dbg !2802, !tbaa !2804
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2806
  br i1 %9, label %17, label %16, !dbg !2807

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2794, metadata !DIExpression()), !dbg !2798
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2808
  %13 = load i8*, i8** %12, align 8, !dbg !2808, !tbaa !2804
  tail call void @free(i8* noundef %13) #34, !dbg !2809
  %14 = add nuw nsw i64 %11, 1, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %14, metadata !2794, metadata !DIExpression()), !dbg !2798
  %15 = icmp eq i64 %14, %5, !dbg !2799
  br i1 %15, label %6, label %10, !dbg !2801, !llvm.loop !2811

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #34, !dbg !2813
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2815, !tbaa !2816
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2817, !tbaa !2804
  br label %17, !dbg !2818

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2819
  br i1 %18, label %21, label %19, !dbg !2821

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2822
  tail call void @free(i8* noundef %20) #34, !dbg !2824
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2825, !tbaa !555
  br label %21, !dbg !2826

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2827, !tbaa !649
  ret void, !dbg !2828
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2829 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2831, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8* %1, metadata !2832, metadata !DIExpression()), !dbg !2833
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2834
  ret i8* %3, !dbg !2835
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2836 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2840, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8* %1, metadata !2841, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i64 %2, metadata !2842, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2843, metadata !DIExpression()), !dbg !2856
  %6 = tail call i32* @__errno_location() #37, !dbg !2857
  %7 = load i32, i32* %6, align 4, !dbg !2857, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %7, metadata !2844, metadata !DIExpression()), !dbg !2856
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2858, !tbaa !555
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2845, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2846, metadata !DIExpression()), !dbg !2856
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2859
  br i1 %9, label %10, label %11, !dbg !2859

10:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2861
  unreachable, !dbg !2861

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2862, !tbaa !649
  %13 = icmp sgt i32 %12, %0, !dbg !2863
  br i1 %13, label %36, label %14, !dbg !2864

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2865
  call void @llvm.dbg.value(metadata i1 %15, metadata !2847, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2866
  %16 = bitcast i64* %5 to i8*, !dbg !2867
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2867
  %17 = sext i32 %12 to i64, !dbg !2868
  call void @llvm.dbg.value(metadata i64 %17, metadata !2850, metadata !DIExpression()), !dbg !2866
  store i64 %17, i64* %5, align 8, !dbg !2869, !tbaa !2788
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2870
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2870
  %20 = add nuw nsw i32 %0, 1, !dbg !2871
  %21 = sub i32 %20, %12, !dbg !2872
  %22 = sext i32 %21 to i64, !dbg !2873
  call void @llvm.dbg.value(metadata i64* %5, metadata !2850, metadata !DIExpression(DW_OP_deref)), !dbg !2866
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #34, !dbg !2874
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2874
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2845, metadata !DIExpression()), !dbg !2856
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2875, !tbaa !555
  br i1 %15, label %25, label %26, !dbg !2876

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2877, !tbaa.struct !2879
  br label %26, !dbg !2880

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2881, !tbaa !649
  %28 = sext i32 %27 to i64, !dbg !2882
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2882
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2883
  %31 = load i64, i64* %5, align 8, !dbg !2884, !tbaa !2788
  call void @llvm.dbg.value(metadata i64 %31, metadata !2850, metadata !DIExpression()), !dbg !2866
  %32 = sub nsw i64 %31, %28, !dbg !2885
  %33 = shl i64 %32, 4, !dbg !2886
  call void @llvm.dbg.value(metadata i8* %30, metadata !2279, metadata !DIExpression()) #34, !dbg !2887
  call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression()) #34, !dbg !2887
  call void @llvm.dbg.value(metadata i64 %33, metadata !2283, metadata !DIExpression()) #34, !dbg !2887
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #34, !dbg !2889
  %34 = load i64, i64* %5, align 8, !dbg !2890, !tbaa !2788
  call void @llvm.dbg.value(metadata i64 %34, metadata !2850, metadata !DIExpression()), !dbg !2866
  %35 = trunc i64 %34 to i32, !dbg !2890
  store i32 %35, i32* @nslots, align 4, !dbg !2891, !tbaa !649
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2892
  br label %36, !dbg !2893

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2856
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2845, metadata !DIExpression()), !dbg !2856
  %38 = zext i32 %0 to i64, !dbg !2894
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2895
  %40 = load i64, i64* %39, align 8, !dbg !2895, !tbaa !2816
  call void @llvm.dbg.value(metadata i64 %40, metadata !2851, metadata !DIExpression()), !dbg !2896
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2897
  %42 = load i8*, i8** %41, align 8, !dbg !2897, !tbaa !2804
  call void @llvm.dbg.value(metadata i8* %42, metadata !2853, metadata !DIExpression()), !dbg !2896
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2898
  %44 = load i32, i32* %43, align 4, !dbg !2898, !tbaa !2127
  %45 = or i32 %44, 1, !dbg !2899
  call void @llvm.dbg.value(metadata i32 %45, metadata !2854, metadata !DIExpression()), !dbg !2896
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2900
  %47 = load i32, i32* %46, align 8, !dbg !2900, !tbaa !2076
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2901
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2902
  %50 = load i8*, i8** %49, align 8, !dbg !2902, !tbaa !2149
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2903
  %52 = load i8*, i8** %51, align 8, !dbg !2903, !tbaa !2152
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2904
  call void @llvm.dbg.value(metadata i64 %53, metadata !2855, metadata !DIExpression()), !dbg !2896
  %54 = icmp ugt i64 %40, %53, !dbg !2905
  br i1 %54, label %65, label %55, !dbg !2907

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %56, metadata !2851, metadata !DIExpression()), !dbg !2896
  store i64 %56, i64* %39, align 8, !dbg !2910, !tbaa !2816
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2911
  br i1 %57, label %59, label %58, !dbg !2913

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #34, !dbg !2914
  br label %59, !dbg !2914

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #41, !dbg !2915
  call void @llvm.dbg.value(metadata i8* %60, metadata !2853, metadata !DIExpression()), !dbg !2896
  store i8* %60, i8** %41, align 8, !dbg !2916, !tbaa !2804
  %61 = load i32, i32* %46, align 8, !dbg !2917, !tbaa !2076
  %62 = load i8*, i8** %49, align 8, !dbg !2918, !tbaa !2149
  %63 = load i8*, i8** %51, align 8, !dbg !2919, !tbaa !2152
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2920
  br label %65, !dbg !2921

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2896
  call void @llvm.dbg.value(metadata i8* %66, metadata !2853, metadata !DIExpression()), !dbg !2896
  store i32 %7, i32* %6, align 4, !dbg !2922, !tbaa !649
  ret i8* %66, !dbg !2923
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2924 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2928, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8* %1, metadata !2929, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i64 %2, metadata !2930, metadata !DIExpression()), !dbg !2931
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2932
  ret i8* %4, !dbg !2933
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2934 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i32 0, metadata !2831, metadata !DIExpression()) #34, !dbg !2938
  call void @llvm.dbg.value(metadata i8* %0, metadata !2832, metadata !DIExpression()) #34, !dbg !2938
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2940
  ret i8* %2, !dbg !2941
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2942 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2946, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %1, metadata !2947, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i32 0, metadata !2928, metadata !DIExpression()) #34, !dbg !2949
  call void @llvm.dbg.value(metadata i8* %0, metadata !2929, metadata !DIExpression()) #34, !dbg !2949
  call void @llvm.dbg.value(metadata i64 %1, metadata !2930, metadata !DIExpression()) #34, !dbg !2949
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2951
  ret i8* %3, !dbg !2952
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2953 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2957, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i32 %1, metadata !2958, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8* %2, metadata !2959, metadata !DIExpression()), !dbg !2961
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2962
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2962
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2960, metadata !DIExpression()), !dbg !2963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2964), !dbg !2967
  call void @llvm.dbg.value(metadata i32 %1, metadata !2968, metadata !DIExpression()) #34, !dbg !2974
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2973, metadata !DIExpression()) #34, !dbg !2976
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !2976, !alias.scope !2964
  %6 = icmp eq i32 %1, 10, !dbg !2977
  br i1 %6, label %7, label %8, !dbg !2979

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2980, !noalias !2964
  unreachable, !dbg !2980

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2981
  store i32 %1, i32* %9, align 8, !dbg !2982, !tbaa !2076, !alias.scope !2964
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2983
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2984
  ret i8* %10, !dbg !2985
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2986 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2990, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i32 %1, metadata !2991, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8* %2, metadata !2992, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %3, metadata !2993, metadata !DIExpression()), !dbg !2995
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2996
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2996
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2994, metadata !DIExpression()), !dbg !2997
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2998), !dbg !3001
  call void @llvm.dbg.value(metadata i32 %1, metadata !2968, metadata !DIExpression()) #34, !dbg !3002
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2973, metadata !DIExpression()) #34, !dbg !3004
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #34, !dbg !3004, !alias.scope !2998
  %7 = icmp eq i32 %1, 10, !dbg !3005
  br i1 %7, label %8, label %9, !dbg !3006

8:                                                ; preds = %4
  tail call void @abort() #36, !dbg !3007, !noalias !2998
  unreachable, !dbg !3007

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3008
  store i32 %1, i32* %10, align 8, !dbg !3009, !tbaa !2076, !alias.scope !2998
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3010
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3011
  ret i8* %11, !dbg !3012
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3013 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3017, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8* %1, metadata !3018, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 0, metadata !2957, metadata !DIExpression()) #34, !dbg !3020
  call void @llvm.dbg.value(metadata i32 %0, metadata !2958, metadata !DIExpression()) #34, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %1, metadata !2959, metadata !DIExpression()) #34, !dbg !3020
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3022
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3022
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2960, metadata !DIExpression()) #34, !dbg !3023
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3024) #34, !dbg !3027
  call void @llvm.dbg.value(metadata i32 %0, metadata !2968, metadata !DIExpression()) #34, !dbg !3028
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2973, metadata !DIExpression()) #34, !dbg !3030
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #34, !dbg !3030, !alias.scope !3024
  %5 = icmp eq i32 %0, 10, !dbg !3031
  br i1 %5, label %6, label %7, !dbg !3032

6:                                                ; preds = %2
  tail call void @abort() #36, !dbg !3033, !noalias !3024
  unreachable, !dbg !3033

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3034
  store i32 %0, i32* %8, align 8, !dbg !3035, !tbaa !2076, !alias.scope !3024
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3036
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3037
  ret i8* %9, !dbg !3038
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3039 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3043, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i8* %1, metadata !3044, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %2, metadata !3045, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i32 0, metadata !2990, metadata !DIExpression()) #34, !dbg !3047
  call void @llvm.dbg.value(metadata i32 %0, metadata !2991, metadata !DIExpression()) #34, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %1, metadata !2992, metadata !DIExpression()) #34, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %2, metadata !2993, metadata !DIExpression()) #34, !dbg !3047
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3049
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3049
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2994, metadata !DIExpression()) #34, !dbg !3050
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3051) #34, !dbg !3054
  call void @llvm.dbg.value(metadata i32 %0, metadata !2968, metadata !DIExpression()) #34, !dbg !3055
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2973, metadata !DIExpression()) #34, !dbg !3057
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !3057, !alias.scope !3051
  %6 = icmp eq i32 %0, 10, !dbg !3058
  br i1 %6, label %7, label %8, !dbg !3059

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3060, !noalias !3051
  unreachable, !dbg !3060

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3061
  store i32 %0, i32* %9, align 8, !dbg !3062, !tbaa !2076, !alias.scope !3051
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #34, !dbg !3063
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3064
  ret i8* %10, !dbg !3065
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3066 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3070, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %1, metadata !3071, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i8 %2, metadata !3072, metadata !DIExpression()), !dbg !3074
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3075
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3075
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3073, metadata !DIExpression()), !dbg !3076
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3077, !tbaa.struct !3078
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2094, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i8 %2, metadata !2095, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i32 1, metadata !2096, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i8 %2, metadata !2097, metadata !DIExpression()), !dbg !3079
  %6 = lshr i8 %2, 5, !dbg !3081
  %7 = zext i8 %6 to i64, !dbg !3081
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3082
  call void @llvm.dbg.value(metadata i32* %8, metadata !2098, metadata !DIExpression()), !dbg !3079
  %9 = and i8 %2, 31, !dbg !3083
  %10 = zext i8 %9 to i32, !dbg !3083
  call void @llvm.dbg.value(metadata i32 %10, metadata !2100, metadata !DIExpression()), !dbg !3079
  %11 = load i32, i32* %8, align 4, !dbg !3084, !tbaa !649
  %12 = lshr i32 %11, %10, !dbg !3085
  %13 = and i32 %12, 1, !dbg !3086
  call void @llvm.dbg.value(metadata i32 %13, metadata !2101, metadata !DIExpression()), !dbg !3079
  %14 = xor i32 %13, 1, !dbg !3087
  %15 = shl i32 %14, %10, !dbg !3088
  %16 = xor i32 %15, %11, !dbg !3089
  store i32 %16, i32* %8, align 4, !dbg !3089, !tbaa !649
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3090
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3091
  ret i8* %17, !dbg !3092
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3093 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3097, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i8 %1, metadata !3098, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i8* %0, metadata !3070, metadata !DIExpression()) #34, !dbg !3100
  call void @llvm.dbg.value(metadata i64 -1, metadata !3071, metadata !DIExpression()) #34, !dbg !3100
  call void @llvm.dbg.value(metadata i8 %1, metadata !3072, metadata !DIExpression()) #34, !dbg !3100
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3102
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3102
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3073, metadata !DIExpression()) #34, !dbg !3103
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3104, !tbaa.struct !3078
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2094, metadata !DIExpression()) #34, !dbg !3105
  call void @llvm.dbg.value(metadata i8 %1, metadata !2095, metadata !DIExpression()) #34, !dbg !3105
  call void @llvm.dbg.value(metadata i32 1, metadata !2096, metadata !DIExpression()) #34, !dbg !3105
  call void @llvm.dbg.value(metadata i8 %1, metadata !2097, metadata !DIExpression()) #34, !dbg !3105
  %5 = lshr i8 %1, 5, !dbg !3107
  %6 = zext i8 %5 to i64, !dbg !3107
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3108
  call void @llvm.dbg.value(metadata i32* %7, metadata !2098, metadata !DIExpression()) #34, !dbg !3105
  %8 = and i8 %1, 31, !dbg !3109
  %9 = zext i8 %8 to i32, !dbg !3109
  call void @llvm.dbg.value(metadata i32 %9, metadata !2100, metadata !DIExpression()) #34, !dbg !3105
  %10 = load i32, i32* %7, align 4, !dbg !3110, !tbaa !649
  %11 = lshr i32 %10, %9, !dbg !3111
  %12 = and i32 %11, 1, !dbg !3112
  call void @llvm.dbg.value(metadata i32 %12, metadata !2101, metadata !DIExpression()) #34, !dbg !3105
  %13 = xor i32 %12, 1, !dbg !3113
  %14 = shl i32 %13, %9, !dbg !3114
  %15 = xor i32 %14, %10, !dbg !3115
  store i32 %15, i32* %7, align 4, !dbg !3115, !tbaa !649
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3116
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3117
  ret i8* %16, !dbg !3118
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3119 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3121, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8* %0, metadata !3097, metadata !DIExpression()) #34, !dbg !3123
  call void @llvm.dbg.value(metadata i8 58, metadata !3098, metadata !DIExpression()) #34, !dbg !3123
  call void @llvm.dbg.value(metadata i8* %0, metadata !3070, metadata !DIExpression()) #34, !dbg !3125
  call void @llvm.dbg.value(metadata i64 -1, metadata !3071, metadata !DIExpression()) #34, !dbg !3125
  call void @llvm.dbg.value(metadata i8 58, metadata !3072, metadata !DIExpression()) #34, !dbg !3125
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3127
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #34, !dbg !3127
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3073, metadata !DIExpression()) #34, !dbg !3128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3129, !tbaa.struct !3078
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2094, metadata !DIExpression()) #34, !dbg !3130
  call void @llvm.dbg.value(metadata i8 58, metadata !2095, metadata !DIExpression()) #34, !dbg !3130
  call void @llvm.dbg.value(metadata i32 1, metadata !2096, metadata !DIExpression()) #34, !dbg !3130
  call void @llvm.dbg.value(metadata i8 58, metadata !2097, metadata !DIExpression()) #34, !dbg !3130
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3132
  call void @llvm.dbg.value(metadata i32* %4, metadata !2098, metadata !DIExpression()) #34, !dbg !3130
  call void @llvm.dbg.value(metadata i32 26, metadata !2100, metadata !DIExpression()) #34, !dbg !3130
  %5 = load i32, i32* %4, align 4, !dbg !3133, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %5, metadata !2101, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !3130
  %6 = or i32 %5, 67108864, !dbg !3134
  store i32 %6, i32* %4, align 4, !dbg !3134, !tbaa !649
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #34, !dbg !3135
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #34, !dbg !3136
  ret i8* %7, !dbg !3137
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3138 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3140, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %1, metadata !3141, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8* %0, metadata !3070, metadata !DIExpression()) #34, !dbg !3143
  call void @llvm.dbg.value(metadata i64 %1, metadata !3071, metadata !DIExpression()) #34, !dbg !3143
  call void @llvm.dbg.value(metadata i8 58, metadata !3072, metadata !DIExpression()) #34, !dbg !3143
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3145
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3145
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3073, metadata !DIExpression()) #34, !dbg !3146
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3147, !tbaa.struct !3078
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2094, metadata !DIExpression()) #34, !dbg !3148
  call void @llvm.dbg.value(metadata i8 58, metadata !2095, metadata !DIExpression()) #34, !dbg !3148
  call void @llvm.dbg.value(metadata i32 1, metadata !2096, metadata !DIExpression()) #34, !dbg !3148
  call void @llvm.dbg.value(metadata i8 58, metadata !2097, metadata !DIExpression()) #34, !dbg !3148
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3150
  call void @llvm.dbg.value(metadata i32* %5, metadata !2098, metadata !DIExpression()) #34, !dbg !3148
  call void @llvm.dbg.value(metadata i32 26, metadata !2100, metadata !DIExpression()) #34, !dbg !3148
  %6 = load i32, i32* %5, align 4, !dbg !3151, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %6, metadata !2101, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !3148
  %7 = or i32 %6, 67108864, !dbg !3152
  store i32 %7, i32* %5, align 4, !dbg !3152, !tbaa !649
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3153
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3154
  ret i8* %8, !dbg !3155
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3156 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3158, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i32 %1, metadata !3159, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i8* %2, metadata !3160, metadata !DIExpression()), !dbg !3162
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3163
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3163
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3161, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i32 %1, metadata !2968, metadata !DIExpression()) #34, !dbg !3165
  call void @llvm.dbg.value(metadata i32 0, metadata !2973, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3165
  %6 = icmp eq i32 %1, 10, !dbg !3167
  br i1 %6, label %7, label %8, !dbg !3168

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3169, !noalias !3170
  unreachable, !dbg !3169

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2973, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3165
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3173
  store i32 %1, i32* %9, align 8, !dbg !3173, !tbaa.struct !3078
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3173
  %11 = bitcast i32* %10 to i8*, !dbg !3173
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3173
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2094, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i8 58, metadata !2095, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i32 1, metadata !2096, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i8 58, metadata !2097, metadata !DIExpression()), !dbg !3174
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3176
  call void @llvm.dbg.value(metadata i32* %12, metadata !2098, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i32 26, metadata !2100, metadata !DIExpression()), !dbg !3174
  %13 = load i32, i32* %12, align 4, !dbg !3177, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %13, metadata !2101, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3174
  %14 = or i32 %13, 67108864, !dbg !3178
  store i32 %14, i32* %12, align 4, !dbg !3178, !tbaa !649
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3179
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3180
  ret i8* %15, !dbg !3181
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3182 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3186, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i8* %1, metadata !3187, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i8* %2, metadata !3188, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i8* %3, metadata !3189, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i32 %0, metadata !3191, metadata !DIExpression()) #34, !dbg !3201
  call void @llvm.dbg.value(metadata i8* %1, metadata !3196, metadata !DIExpression()) #34, !dbg !3201
  call void @llvm.dbg.value(metadata i8* %2, metadata !3197, metadata !DIExpression()) #34, !dbg !3201
  call void @llvm.dbg.value(metadata i8* %3, metadata !3198, metadata !DIExpression()) #34, !dbg !3201
  call void @llvm.dbg.value(metadata i64 -1, metadata !3199, metadata !DIExpression()) #34, !dbg !3201
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3203
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3203
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3200, metadata !DIExpression()) #34, !dbg !3204
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3205, !tbaa.struct !3078
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2134, metadata !DIExpression()) #34, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %1, metadata !2135, metadata !DIExpression()) #34, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %2, metadata !2136, metadata !DIExpression()) #34, !dbg !3206
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2134, metadata !DIExpression()) #34, !dbg !3206
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3208
  store i32 10, i32* %7, align 8, !dbg !3209, !tbaa !2076
  %8 = icmp ne i8* %1, null, !dbg !3210
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3211
  br i1 %10, label %12, label %11, !dbg !3211

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !3212
  unreachable, !dbg !3212

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3213
  store i8* %1, i8** %13, align 8, !dbg !3214, !tbaa !2149
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3215
  store i8* %2, i8** %14, align 8, !dbg !3216, !tbaa !2152
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #34, !dbg !3217
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3218
  ret i8* %15, !dbg !3219
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3192 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3191, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i8* %1, metadata !3196, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i8* %2, metadata !3197, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i8* %3, metadata !3198, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %4, metadata !3199, metadata !DIExpression()), !dbg !3220
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3221
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #34, !dbg !3221
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3200, metadata !DIExpression()), !dbg !3222
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3223, !tbaa.struct !3078
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2134, metadata !DIExpression()) #34, !dbg !3224
  call void @llvm.dbg.value(metadata i8* %1, metadata !2135, metadata !DIExpression()) #34, !dbg !3224
  call void @llvm.dbg.value(metadata i8* %2, metadata !2136, metadata !DIExpression()) #34, !dbg !3224
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2134, metadata !DIExpression()) #34, !dbg !3224
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3226
  store i32 10, i32* %8, align 8, !dbg !3227, !tbaa !2076
  %9 = icmp ne i8* %1, null, !dbg !3228
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3229
  br i1 %11, label %13, label %12, !dbg !3229

12:                                               ; preds = %5
  tail call void @abort() #36, !dbg !3230
  unreachable, !dbg !3230

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3231
  store i8* %1, i8** %14, align 8, !dbg !3232, !tbaa !2149
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3233
  store i8* %2, i8** %15, align 8, !dbg !3234, !tbaa !2152
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3235
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #34, !dbg !3236
  ret i8* %16, !dbg !3237
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3238 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3242, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8* %1, metadata !3243, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8* %2, metadata !3244, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i32 0, metadata !3186, metadata !DIExpression()) #34, !dbg !3246
  call void @llvm.dbg.value(metadata i8* %0, metadata !3187, metadata !DIExpression()) #34, !dbg !3246
  call void @llvm.dbg.value(metadata i8* %1, metadata !3188, metadata !DIExpression()) #34, !dbg !3246
  call void @llvm.dbg.value(metadata i8* %2, metadata !3189, metadata !DIExpression()) #34, !dbg !3246
  call void @llvm.dbg.value(metadata i32 0, metadata !3191, metadata !DIExpression()) #34, !dbg !3248
  call void @llvm.dbg.value(metadata i8* %0, metadata !3196, metadata !DIExpression()) #34, !dbg !3248
  call void @llvm.dbg.value(metadata i8* %1, metadata !3197, metadata !DIExpression()) #34, !dbg !3248
  call void @llvm.dbg.value(metadata i8* %2, metadata !3198, metadata !DIExpression()) #34, !dbg !3248
  call void @llvm.dbg.value(metadata i64 -1, metadata !3199, metadata !DIExpression()) #34, !dbg !3248
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3250
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3250
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3200, metadata !DIExpression()) #34, !dbg !3251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3252, !tbaa.struct !3078
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2134, metadata !DIExpression()) #34, !dbg !3253
  call void @llvm.dbg.value(metadata i8* %0, metadata !2135, metadata !DIExpression()) #34, !dbg !3253
  call void @llvm.dbg.value(metadata i8* %1, metadata !2136, metadata !DIExpression()) #34, !dbg !3253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2134, metadata !DIExpression()) #34, !dbg !3253
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3255
  store i32 10, i32* %6, align 8, !dbg !3256, !tbaa !2076
  %7 = icmp ne i8* %0, null, !dbg !3257
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3258
  br i1 %9, label %11, label %10, !dbg !3258

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !3259
  unreachable, !dbg !3259

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3260
  store i8* %0, i8** %12, align 8, !dbg !3261, !tbaa !2149
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3262
  store i8* %1, i8** %13, align 8, !dbg !3263, !tbaa !2152
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #34, !dbg !3264
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3265
  ret i8* %14, !dbg !3266
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3267 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3271, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i8* %1, metadata !3272, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i8* %2, metadata !3273, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 %3, metadata !3274, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 0, metadata !3191, metadata !DIExpression()) #34, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %0, metadata !3196, metadata !DIExpression()) #34, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %1, metadata !3197, metadata !DIExpression()) #34, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %2, metadata !3198, metadata !DIExpression()) #34, !dbg !3276
  call void @llvm.dbg.value(metadata i64 %3, metadata !3199, metadata !DIExpression()) #34, !dbg !3276
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3278
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3278
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3200, metadata !DIExpression()) #34, !dbg !3279
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3280, !tbaa.struct !3078
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2134, metadata !DIExpression()) #34, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %0, metadata !2135, metadata !DIExpression()) #34, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %1, metadata !2136, metadata !DIExpression()) #34, !dbg !3281
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2134, metadata !DIExpression()) #34, !dbg !3281
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3283
  store i32 10, i32* %7, align 8, !dbg !3284, !tbaa !2076
  %8 = icmp ne i8* %0, null, !dbg !3285
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3286
  br i1 %10, label %12, label %11, !dbg !3286

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !3287
  unreachable, !dbg !3287

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3288
  store i8* %0, i8** %13, align 8, !dbg !3289, !tbaa !2149
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3290
  store i8* %1, i8** %14, align 8, !dbg !3291, !tbaa !2152
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #34, !dbg !3292
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3293
  ret i8* %15, !dbg !3294
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3295 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3299, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8* %1, metadata !3300, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %2, metadata !3301, metadata !DIExpression()), !dbg !3302
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3303
  ret i8* %4, !dbg !3304
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3305 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3309, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %1, metadata !3310, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i32 0, metadata !3299, metadata !DIExpression()) #34, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %0, metadata !3300, metadata !DIExpression()) #34, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %1, metadata !3301, metadata !DIExpression()) #34, !dbg !3312
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3314
  ret i8* %3, !dbg !3315
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3316 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3320, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8* %1, metadata !3321, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 %0, metadata !3299, metadata !DIExpression()) #34, !dbg !3323
  call void @llvm.dbg.value(metadata i8* %1, metadata !3300, metadata !DIExpression()) #34, !dbg !3323
  call void @llvm.dbg.value(metadata i64 -1, metadata !3301, metadata !DIExpression()) #34, !dbg !3323
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3325
  ret i8* %3, !dbg !3326
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3327 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3331, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i32 0, metadata !3320, metadata !DIExpression()) #34, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %0, metadata !3321, metadata !DIExpression()) #34, !dbg !3333
  call void @llvm.dbg.value(metadata i32 0, metadata !3299, metadata !DIExpression()) #34, !dbg !3335
  call void @llvm.dbg.value(metadata i8* %0, metadata !3300, metadata !DIExpression()) #34, !dbg !3335
  call void @llvm.dbg.value(metadata i64 -1, metadata !3301, metadata !DIExpression()) #34, !dbg !3335
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3337
  ret i8* %2, !dbg !3338
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3339 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3378, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8* %1, metadata !3379, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8* %2, metadata !3380, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8* %3, metadata !3381, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8** %4, metadata !3382, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %5, metadata !3383, metadata !DIExpression()), !dbg !3384
  %7 = icmp eq i8* %1, null, !dbg !3385
  br i1 %7, label %10, label %8, !dbg !3387

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #34, !dbg !3388
  br label %12, !dbg !3388

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.86, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #34, !dbg !3389
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.88, i64 0, i64 0), i32 noundef 5) #34, !dbg !3390
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #34, !dbg !3390
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.89, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3391
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.90, i64 0, i64 0), i32 noundef 5) #34, !dbg !3392
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.91, i64 0, i64 0)) #34, !dbg !3392
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.89, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3393
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
  ], !dbg !3394

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.92, i64 0, i64 0), i32 noundef 5) #34, !dbg !3395
  %21 = load i8*, i8** %4, align 8, !dbg !3395, !tbaa !555
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #34, !dbg !3395
  br label %147, !dbg !3397

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.93, i64 0, i64 0), i32 noundef 5) #34, !dbg !3398
  %25 = load i8*, i8** %4, align 8, !dbg !3398, !tbaa !555
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3398
  %27 = load i8*, i8** %26, align 8, !dbg !3398, !tbaa !555
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #34, !dbg !3398
  br label %147, !dbg !3399

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.94, i64 0, i64 0), i32 noundef 5) #34, !dbg !3400
  %31 = load i8*, i8** %4, align 8, !dbg !3400, !tbaa !555
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3400
  %33 = load i8*, i8** %32, align 8, !dbg !3400, !tbaa !555
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3400
  %35 = load i8*, i8** %34, align 8, !dbg !3400, !tbaa !555
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #34, !dbg !3400
  br label %147, !dbg !3401

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.95, i64 0, i64 0), i32 noundef 5) #34, !dbg !3402
  %39 = load i8*, i8** %4, align 8, !dbg !3402, !tbaa !555
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3402
  %41 = load i8*, i8** %40, align 8, !dbg !3402, !tbaa !555
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3402
  %43 = load i8*, i8** %42, align 8, !dbg !3402, !tbaa !555
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3402
  %45 = load i8*, i8** %44, align 8, !dbg !3402, !tbaa !555
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #34, !dbg !3402
  br label %147, !dbg !3403

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.96, i64 0, i64 0), i32 noundef 5) #34, !dbg !3404
  %49 = load i8*, i8** %4, align 8, !dbg !3404, !tbaa !555
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3404
  %51 = load i8*, i8** %50, align 8, !dbg !3404, !tbaa !555
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3404
  %53 = load i8*, i8** %52, align 8, !dbg !3404, !tbaa !555
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3404
  %55 = load i8*, i8** %54, align 8, !dbg !3404, !tbaa !555
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3404
  %57 = load i8*, i8** %56, align 8, !dbg !3404, !tbaa !555
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #34, !dbg !3404
  br label %147, !dbg !3405

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.97, i64 0, i64 0), i32 noundef 5) #34, !dbg !3406
  %61 = load i8*, i8** %4, align 8, !dbg !3406, !tbaa !555
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3406
  %63 = load i8*, i8** %62, align 8, !dbg !3406, !tbaa !555
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3406
  %65 = load i8*, i8** %64, align 8, !dbg !3406, !tbaa !555
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3406
  %67 = load i8*, i8** %66, align 8, !dbg !3406, !tbaa !555
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3406
  %69 = load i8*, i8** %68, align 8, !dbg !3406, !tbaa !555
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3406
  %71 = load i8*, i8** %70, align 8, !dbg !3406, !tbaa !555
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #34, !dbg !3406
  br label %147, !dbg !3407

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.98, i64 0, i64 0), i32 noundef 5) #34, !dbg !3408
  %75 = load i8*, i8** %4, align 8, !dbg !3408, !tbaa !555
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3408
  %77 = load i8*, i8** %76, align 8, !dbg !3408, !tbaa !555
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3408
  %79 = load i8*, i8** %78, align 8, !dbg !3408, !tbaa !555
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3408
  %81 = load i8*, i8** %80, align 8, !dbg !3408, !tbaa !555
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3408
  %83 = load i8*, i8** %82, align 8, !dbg !3408, !tbaa !555
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3408
  %85 = load i8*, i8** %84, align 8, !dbg !3408, !tbaa !555
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3408
  %87 = load i8*, i8** %86, align 8, !dbg !3408, !tbaa !555
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #34, !dbg !3408
  br label %147, !dbg !3409

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.99, i64 0, i64 0), i32 noundef 5) #34, !dbg !3410
  %91 = load i8*, i8** %4, align 8, !dbg !3410, !tbaa !555
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3410
  %93 = load i8*, i8** %92, align 8, !dbg !3410, !tbaa !555
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3410
  %95 = load i8*, i8** %94, align 8, !dbg !3410, !tbaa !555
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3410
  %97 = load i8*, i8** %96, align 8, !dbg !3410, !tbaa !555
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3410
  %99 = load i8*, i8** %98, align 8, !dbg !3410, !tbaa !555
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3410
  %101 = load i8*, i8** %100, align 8, !dbg !3410, !tbaa !555
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3410
  %103 = load i8*, i8** %102, align 8, !dbg !3410, !tbaa !555
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3410
  %105 = load i8*, i8** %104, align 8, !dbg !3410, !tbaa !555
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #34, !dbg !3410
  br label %147, !dbg !3411

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.100, i64 0, i64 0), i32 noundef 5) #34, !dbg !3412
  %109 = load i8*, i8** %4, align 8, !dbg !3412, !tbaa !555
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3412
  %111 = load i8*, i8** %110, align 8, !dbg !3412, !tbaa !555
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3412
  %113 = load i8*, i8** %112, align 8, !dbg !3412, !tbaa !555
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3412
  %115 = load i8*, i8** %114, align 8, !dbg !3412, !tbaa !555
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3412
  %117 = load i8*, i8** %116, align 8, !dbg !3412, !tbaa !555
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3412
  %119 = load i8*, i8** %118, align 8, !dbg !3412, !tbaa !555
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3412
  %121 = load i8*, i8** %120, align 8, !dbg !3412, !tbaa !555
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3412
  %123 = load i8*, i8** %122, align 8, !dbg !3412, !tbaa !555
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3412
  %125 = load i8*, i8** %124, align 8, !dbg !3412, !tbaa !555
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #34, !dbg !3412
  br label %147, !dbg !3413

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.101, i64 0, i64 0), i32 noundef 5) #34, !dbg !3414
  %129 = load i8*, i8** %4, align 8, !dbg !3414, !tbaa !555
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3414
  %131 = load i8*, i8** %130, align 8, !dbg !3414, !tbaa !555
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3414
  %133 = load i8*, i8** %132, align 8, !dbg !3414, !tbaa !555
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3414
  %135 = load i8*, i8** %134, align 8, !dbg !3414, !tbaa !555
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3414
  %137 = load i8*, i8** %136, align 8, !dbg !3414, !tbaa !555
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3414
  %139 = load i8*, i8** %138, align 8, !dbg !3414, !tbaa !555
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3414
  %141 = load i8*, i8** %140, align 8, !dbg !3414, !tbaa !555
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3414
  %143 = load i8*, i8** %142, align 8, !dbg !3414, !tbaa !555
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3414
  %145 = load i8*, i8** %144, align 8, !dbg !3414, !tbaa !555
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #34, !dbg !3414
  br label %147, !dbg !3415

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3416
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3417 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3421, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i8* %1, metadata !3422, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i8* %2, metadata !3423, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i8* %3, metadata !3424, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i8** %4, metadata !3425, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i64 0, metadata !3426, metadata !DIExpression()), !dbg !3427
  br label %6, !dbg !3428

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3430
  call void @llvm.dbg.value(metadata i64 %7, metadata !3426, metadata !DIExpression()), !dbg !3427
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3431
  %9 = load i8*, i8** %8, align 8, !dbg !3431, !tbaa !555
  %10 = icmp eq i8* %9, null, !dbg !3433
  %11 = add i64 %7, 1, !dbg !3434
  call void @llvm.dbg.value(metadata i64 %11, metadata !3426, metadata !DIExpression()), !dbg !3427
  br i1 %10, label %12, label %6, !dbg !3433, !llvm.loop !3435

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3437
  ret void, !dbg !3438
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3439 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3454, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8* %1, metadata !3455, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8* %2, metadata !3456, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8* %3, metadata !3457, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3458, metadata !DIExpression()), !dbg !3463
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3464
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3464
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3460, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i64 0, metadata !3459, metadata !DIExpression()), !dbg !3462
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  %11 = load i32, i32* %8, align 8, !dbg !3466
  %12 = icmp sgt i32 %11, -1, !dbg !3466
  call void @llvm.dbg.value(metadata i64 0, metadata !3459, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 0, metadata !3459, metadata !DIExpression()), !dbg !3462
  br i1 %12, label %13, label %70

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3466
  %15 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !3466
  store i8* %15, i8** %10, align 8, !dbg !3466
  %16 = bitcast i8* %14 to i8**, !dbg !3466
  %17 = load i8*, i8** %16, align 8, !dbg !3466
  %18 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3469
  store i8* %17, i8** %18, align 8, !dbg !3470, !tbaa !555
  %19 = icmp eq i8* %17, null, !dbg !3471
  br i1 %19, label %265, label %20, !dbg !3472

20:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 1, metadata !3459, metadata !DIExpression()), !dbg !3462
  %21 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !3466
  store i8* %21, i8** %10, align 8, !dbg !3466
  %22 = bitcast i8* %15 to i8**, !dbg !3466
  %23 = load i8*, i8** %22, align 8, !dbg !3466
  %24 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3469
  store i8* %23, i8** %24, align 8, !dbg !3470, !tbaa !555
  %25 = icmp eq i8* %23, null, !dbg !3471
  br i1 %25, label %265, label %26, !dbg !3472

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 2, metadata !3459, metadata !DIExpression()), !dbg !3462
  %27 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !3466
  store i8* %27, i8** %10, align 8, !dbg !3466
  %28 = bitcast i8* %21 to i8**, !dbg !3466
  %29 = load i8*, i8** %28, align 8, !dbg !3466
  %30 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3469
  store i8* %29, i8** %30, align 8, !dbg !3470, !tbaa !555
  %31 = icmp eq i8* %29, null, !dbg !3471
  br i1 %31, label %265, label %32, !dbg !3472

32:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 3, metadata !3459, metadata !DIExpression()), !dbg !3462
  %33 = getelementptr inbounds i8, i8* %14, i64 32, !dbg !3466
  store i8* %33, i8** %10, align 8, !dbg !3466
  %34 = bitcast i8* %27 to i8**, !dbg !3466
  %35 = load i8*, i8** %34, align 8, !dbg !3466
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3469
  store i8* %35, i8** %36, align 8, !dbg !3470, !tbaa !555
  %37 = icmp eq i8* %35, null, !dbg !3471
  br i1 %37, label %265, label %38, !dbg !3472

38:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 4, metadata !3459, metadata !DIExpression()), !dbg !3462
  %39 = getelementptr inbounds i8, i8* %14, i64 40, !dbg !3466
  store i8* %39, i8** %10, align 8, !dbg !3466
  %40 = bitcast i8* %33 to i8**, !dbg !3466
  %41 = load i8*, i8** %40, align 8, !dbg !3466
  %42 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3469
  store i8* %41, i8** %42, align 8, !dbg !3470, !tbaa !555
  %43 = icmp eq i8* %41, null, !dbg !3471
  br i1 %43, label %265, label %44, !dbg !3472

44:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 5, metadata !3459, metadata !DIExpression()), !dbg !3462
  %45 = getelementptr inbounds i8, i8* %14, i64 48, !dbg !3466
  store i8* %45, i8** %10, align 8, !dbg !3466
  %46 = bitcast i8* %39 to i8**, !dbg !3466
  %47 = load i8*, i8** %46, align 8, !dbg !3466
  %48 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3469
  store i8* %47, i8** %48, align 8, !dbg !3470, !tbaa !555
  %49 = icmp eq i8* %47, null, !dbg !3471
  br i1 %49, label %265, label %50, !dbg !3472

50:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 6, metadata !3459, metadata !DIExpression()), !dbg !3462
  %51 = getelementptr inbounds i8, i8* %14, i64 56, !dbg !3466
  store i8* %51, i8** %10, align 8, !dbg !3466
  %52 = bitcast i8* %45 to i8**, !dbg !3466
  %53 = load i8*, i8** %52, align 8, !dbg !3466
  %54 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3469
  store i8* %53, i8** %54, align 8, !dbg !3470, !tbaa !555
  %55 = icmp eq i8* %53, null, !dbg !3471
  br i1 %55, label %265, label %56, !dbg !3472

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 7, metadata !3459, metadata !DIExpression()), !dbg !3462
  %57 = getelementptr inbounds i8, i8* %14, i64 64, !dbg !3466
  store i8* %57, i8** %10, align 8, !dbg !3466
  %58 = bitcast i8* %51 to i8**, !dbg !3466
  %59 = load i8*, i8** %58, align 8, !dbg !3466
  %60 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3469
  store i8* %59, i8** %60, align 8, !dbg !3470, !tbaa !555
  %61 = icmp eq i8* %59, null, !dbg !3471
  br i1 %61, label %265, label %62, !dbg !3472

62:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 8, metadata !3459, metadata !DIExpression()), !dbg !3462
  %63 = getelementptr inbounds i8, i8* %14, i64 72, !dbg !3466
  store i8* %63, i8** %10, align 8, !dbg !3466
  %64 = bitcast i8* %57 to i8**, !dbg !3466
  %65 = load i8*, i8** %64, align 8, !dbg !3466
  %66 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3469
  store i8* %65, i8** %66, align 8, !dbg !3470, !tbaa !555
  %67 = icmp eq i8* %65, null, !dbg !3471
  br i1 %67, label %265, label %68, !dbg !3472

68:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i64 9, metadata !3459, metadata !DIExpression()), !dbg !3462
  %69 = getelementptr inbounds i8, i8* %14, i64 80, !dbg !3466
  store i8* %69, i8** %10, align 8, !dbg !3466
  br label %258, !dbg !3472

70:                                               ; preds = %5
  %71 = add nsw i32 %11, 8, !dbg !3466
  store i32 %71, i32* %8, align 8, !dbg !3466
  %72 = icmp ult i32 %11, -7, !dbg !3466
  br i1 %72, label %73, label %77, !dbg !3466

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8, !dbg !3466
  %75 = sext i32 %11 to i64, !dbg !3466
  %76 = getelementptr inbounds i8, i8* %74, i64 %75, !dbg !3466
  br label %80, !dbg !3466

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8, !dbg !3466
  %79 = getelementptr inbounds i8, i8* %78, i64 8, !dbg !3466
  store i8* %79, i8** %10, align 8, !dbg !3466
  br label %80, !dbg !3466

80:                                               ; preds = %77, %73
  %81 = phi i8* [ %76, %73 ], [ %78, %77 ]
  %82 = bitcast i8* %81 to i8**, !dbg !3466
  %83 = load i8*, i8** %82, align 8, !dbg !3466
  %84 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3469
  store i8* %83, i8** %84, align 8, !dbg !3470, !tbaa !555
  %85 = icmp eq i8* %83, null, !dbg !3471
  br i1 %85, label %265, label %86, !dbg !3472

86:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i64 1, metadata !3459, metadata !DIExpression()), !dbg !3462
  %87 = icmp sgt i32 %11, -9, !dbg !3466
  br i1 %87, label %95, label %88, !dbg !3466

88:                                               ; preds = %86
  %89 = add nsw i32 %11, 16, !dbg !3466
  store i32 %89, i32* %8, align 8, !dbg !3466
  %90 = icmp ult i32 %71, -7, !dbg !3466
  br i1 %90, label %91, label %95, !dbg !3466

91:                                               ; preds = %88
  %92 = load i8*, i8** %9, align 8, !dbg !3466
  %93 = sext i32 %71 to i64, !dbg !3466
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !3466
  br label %99, !dbg !3466

95:                                               ; preds = %88, %86
  %96 = phi i32 [ %89, %88 ], [ %71, %86 ]
  %97 = load i8*, i8** %10, align 8, !dbg !3466
  %98 = getelementptr inbounds i8, i8* %97, i64 8, !dbg !3466
  store i8* %98, i8** %10, align 8, !dbg !3466
  br label %99, !dbg !3466

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %89, %91 ], [ %96, %95 ]
  %101 = phi i8* [ %94, %91 ], [ %97, %95 ]
  %102 = bitcast i8* %101 to i8**, !dbg !3466
  %103 = load i8*, i8** %102, align 8, !dbg !3466
  %104 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3469
  store i8* %103, i8** %104, align 8, !dbg !3470, !tbaa !555
  %105 = icmp eq i8* %103, null, !dbg !3471
  br i1 %105, label %265, label %106, !dbg !3472

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i64 2, metadata !3459, metadata !DIExpression()), !dbg !3462
  %107 = icmp sgt i32 %100, -1, !dbg !3466
  br i1 %107, label %115, label %108, !dbg !3466

108:                                              ; preds = %106
  %109 = add nsw i32 %100, 8, !dbg !3466
  store i32 %109, i32* %8, align 8, !dbg !3466
  %110 = icmp ult i32 %100, -7, !dbg !3466
  br i1 %110, label %111, label %115, !dbg !3466

111:                                              ; preds = %108
  %112 = load i8*, i8** %9, align 8, !dbg !3466
  %113 = sext i32 %100 to i64, !dbg !3466
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !3466
  br label %119, !dbg !3466

115:                                              ; preds = %108, %106
  %116 = phi i32 [ %109, %108 ], [ %100, %106 ]
  %117 = load i8*, i8** %10, align 8, !dbg !3466
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !3466
  store i8* %118, i8** %10, align 8, !dbg !3466
  br label %119, !dbg !3466

119:                                              ; preds = %115, %111
  %120 = phi i32 [ %109, %111 ], [ %116, %115 ]
  %121 = phi i8* [ %114, %111 ], [ %117, %115 ]
  %122 = bitcast i8* %121 to i8**, !dbg !3466
  %123 = load i8*, i8** %122, align 8, !dbg !3466
  %124 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3469
  store i8* %123, i8** %124, align 8, !dbg !3470, !tbaa !555
  %125 = icmp eq i8* %123, null, !dbg !3471
  br i1 %125, label %265, label %126, !dbg !3472

126:                                              ; preds = %119
  call void @llvm.dbg.value(metadata i64 3, metadata !3459, metadata !DIExpression()), !dbg !3462
  %127 = icmp sgt i32 %120, -1, !dbg !3466
  br i1 %127, label %135, label %128, !dbg !3466

128:                                              ; preds = %126
  %129 = add nsw i32 %120, 8, !dbg !3466
  store i32 %129, i32* %8, align 8, !dbg !3466
  %130 = icmp ult i32 %120, -7, !dbg !3466
  br i1 %130, label %131, label %135, !dbg !3466

131:                                              ; preds = %128
  %132 = load i8*, i8** %9, align 8, !dbg !3466
  %133 = sext i32 %120 to i64, !dbg !3466
  %134 = getelementptr inbounds i8, i8* %132, i64 %133, !dbg !3466
  br label %139, !dbg !3466

135:                                              ; preds = %128, %126
  %136 = phi i32 [ %129, %128 ], [ %120, %126 ]
  %137 = load i8*, i8** %10, align 8, !dbg !3466
  %138 = getelementptr inbounds i8, i8* %137, i64 8, !dbg !3466
  store i8* %138, i8** %10, align 8, !dbg !3466
  br label %139, !dbg !3466

139:                                              ; preds = %135, %131
  %140 = phi i32 [ %129, %131 ], [ %136, %135 ]
  %141 = phi i8* [ %134, %131 ], [ %137, %135 ]
  %142 = bitcast i8* %141 to i8**, !dbg !3466
  %143 = load i8*, i8** %142, align 8, !dbg !3466
  %144 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3469
  store i8* %143, i8** %144, align 8, !dbg !3470, !tbaa !555
  %145 = icmp eq i8* %143, null, !dbg !3471
  br i1 %145, label %265, label %146, !dbg !3472

146:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i64 4, metadata !3459, metadata !DIExpression()), !dbg !3462
  %147 = icmp sgt i32 %140, -1, !dbg !3466
  br i1 %147, label %155, label %148, !dbg !3466

148:                                              ; preds = %146
  %149 = add nsw i32 %140, 8, !dbg !3466
  store i32 %149, i32* %8, align 8, !dbg !3466
  %150 = icmp ult i32 %140, -7, !dbg !3466
  br i1 %150, label %151, label %155, !dbg !3466

151:                                              ; preds = %148
  %152 = load i8*, i8** %9, align 8, !dbg !3466
  %153 = sext i32 %140 to i64, !dbg !3466
  %154 = getelementptr inbounds i8, i8* %152, i64 %153, !dbg !3466
  br label %159, !dbg !3466

155:                                              ; preds = %148, %146
  %156 = phi i32 [ %149, %148 ], [ %140, %146 ]
  %157 = load i8*, i8** %10, align 8, !dbg !3466
  %158 = getelementptr inbounds i8, i8* %157, i64 8, !dbg !3466
  store i8* %158, i8** %10, align 8, !dbg !3466
  br label %159, !dbg !3466

159:                                              ; preds = %155, %151
  %160 = phi i32 [ %149, %151 ], [ %156, %155 ]
  %161 = phi i8* [ %154, %151 ], [ %157, %155 ]
  %162 = bitcast i8* %161 to i8**, !dbg !3466
  %163 = load i8*, i8** %162, align 8, !dbg !3466
  %164 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3469
  store i8* %163, i8** %164, align 8, !dbg !3470, !tbaa !555
  %165 = icmp eq i8* %163, null, !dbg !3471
  br i1 %165, label %265, label %166, !dbg !3472

166:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i64 5, metadata !3459, metadata !DIExpression()), !dbg !3462
  %167 = icmp sgt i32 %160, -1, !dbg !3466
  br i1 %167, label %175, label %168, !dbg !3466

168:                                              ; preds = %166
  %169 = add nsw i32 %160, 8, !dbg !3466
  store i32 %169, i32* %8, align 8, !dbg !3466
  %170 = icmp ult i32 %160, -7, !dbg !3466
  br i1 %170, label %171, label %175, !dbg !3466

171:                                              ; preds = %168
  %172 = load i8*, i8** %9, align 8, !dbg !3466
  %173 = sext i32 %160 to i64, !dbg !3466
  %174 = getelementptr inbounds i8, i8* %172, i64 %173, !dbg !3466
  br label %179, !dbg !3466

175:                                              ; preds = %168, %166
  %176 = phi i32 [ %169, %168 ], [ %160, %166 ]
  %177 = load i8*, i8** %10, align 8, !dbg !3466
  %178 = getelementptr inbounds i8, i8* %177, i64 8, !dbg !3466
  store i8* %178, i8** %10, align 8, !dbg !3466
  br label %179, !dbg !3466

179:                                              ; preds = %175, %171
  %180 = phi i32 [ %169, %171 ], [ %176, %175 ]
  %181 = phi i8* [ %174, %171 ], [ %177, %175 ]
  %182 = bitcast i8* %181 to i8**, !dbg !3466
  %183 = load i8*, i8** %182, align 8, !dbg !3466
  %184 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3469
  store i8* %183, i8** %184, align 8, !dbg !3470, !tbaa !555
  %185 = icmp eq i8* %183, null, !dbg !3471
  br i1 %185, label %265, label %186, !dbg !3472

186:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i64 6, metadata !3459, metadata !DIExpression()), !dbg !3462
  %187 = icmp sgt i32 %180, -1, !dbg !3466
  br i1 %187, label %195, label %188, !dbg !3466

188:                                              ; preds = %186
  %189 = add nsw i32 %180, 8, !dbg !3466
  store i32 %189, i32* %8, align 8, !dbg !3466
  %190 = icmp ult i32 %180, -7, !dbg !3466
  br i1 %190, label %191, label %195, !dbg !3466

191:                                              ; preds = %188
  %192 = load i8*, i8** %9, align 8, !dbg !3466
  %193 = sext i32 %180 to i64, !dbg !3466
  %194 = getelementptr inbounds i8, i8* %192, i64 %193, !dbg !3466
  br label %199, !dbg !3466

195:                                              ; preds = %188, %186
  %196 = phi i32 [ %189, %188 ], [ %180, %186 ]
  %197 = load i8*, i8** %10, align 8, !dbg !3466
  %198 = getelementptr inbounds i8, i8* %197, i64 8, !dbg !3466
  store i8* %198, i8** %10, align 8, !dbg !3466
  br label %199, !dbg !3466

199:                                              ; preds = %195, %191
  %200 = phi i32 [ %189, %191 ], [ %196, %195 ]
  %201 = phi i8* [ %194, %191 ], [ %197, %195 ]
  %202 = bitcast i8* %201 to i8**, !dbg !3466
  %203 = load i8*, i8** %202, align 8, !dbg !3466
  %204 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3469
  store i8* %203, i8** %204, align 8, !dbg !3470, !tbaa !555
  %205 = icmp eq i8* %203, null, !dbg !3471
  br i1 %205, label %265, label %206, !dbg !3472

206:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i64 7, metadata !3459, metadata !DIExpression()), !dbg !3462
  %207 = icmp sgt i32 %200, -1, !dbg !3466
  br i1 %207, label %215, label %208, !dbg !3466

208:                                              ; preds = %206
  %209 = add nsw i32 %200, 8, !dbg !3466
  store i32 %209, i32* %8, align 8, !dbg !3466
  %210 = icmp ult i32 %200, -7, !dbg !3466
  br i1 %210, label %211, label %215, !dbg !3466

211:                                              ; preds = %208
  %212 = load i8*, i8** %9, align 8, !dbg !3466
  %213 = sext i32 %200 to i64, !dbg !3466
  %214 = getelementptr inbounds i8, i8* %212, i64 %213, !dbg !3466
  br label %219, !dbg !3466

215:                                              ; preds = %208, %206
  %216 = phi i32 [ %209, %208 ], [ %200, %206 ]
  %217 = load i8*, i8** %10, align 8, !dbg !3466
  %218 = getelementptr inbounds i8, i8* %217, i64 8, !dbg !3466
  store i8* %218, i8** %10, align 8, !dbg !3466
  br label %219, !dbg !3466

219:                                              ; preds = %215, %211
  %220 = phi i32 [ %209, %211 ], [ %216, %215 ]
  %221 = phi i8* [ %214, %211 ], [ %217, %215 ]
  %222 = bitcast i8* %221 to i8**, !dbg !3466
  %223 = load i8*, i8** %222, align 8, !dbg !3466
  %224 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3469
  store i8* %223, i8** %224, align 8, !dbg !3470, !tbaa !555
  %225 = icmp eq i8* %223, null, !dbg !3471
  br i1 %225, label %265, label %226, !dbg !3472

226:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i64 8, metadata !3459, metadata !DIExpression()), !dbg !3462
  %227 = icmp sgt i32 %220, -1, !dbg !3466
  br i1 %227, label %235, label %228, !dbg !3466

228:                                              ; preds = %226
  %229 = add nsw i32 %220, 8, !dbg !3466
  store i32 %229, i32* %8, align 8, !dbg !3466
  %230 = icmp ult i32 %220, -7, !dbg !3466
  br i1 %230, label %231, label %235, !dbg !3466

231:                                              ; preds = %228
  %232 = load i8*, i8** %9, align 8, !dbg !3466
  %233 = sext i32 %220 to i64, !dbg !3466
  %234 = getelementptr inbounds i8, i8* %232, i64 %233, !dbg !3466
  br label %239, !dbg !3466

235:                                              ; preds = %228, %226
  %236 = phi i32 [ %229, %228 ], [ %220, %226 ]
  %237 = load i8*, i8** %10, align 8, !dbg !3466
  %238 = getelementptr inbounds i8, i8* %237, i64 8, !dbg !3466
  store i8* %238, i8** %10, align 8, !dbg !3466
  br label %239, !dbg !3466

239:                                              ; preds = %235, %231
  %240 = phi i32 [ %229, %231 ], [ %236, %235 ]
  %241 = phi i8* [ %234, %231 ], [ %237, %235 ]
  %242 = bitcast i8* %241 to i8**, !dbg !3466
  %243 = load i8*, i8** %242, align 8, !dbg !3466
  %244 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3469
  store i8* %243, i8** %244, align 8, !dbg !3470, !tbaa !555
  %245 = icmp eq i8* %243, null, !dbg !3471
  br i1 %245, label %265, label %246, !dbg !3472

246:                                              ; preds = %239
  call void @llvm.dbg.value(metadata i64 9, metadata !3459, metadata !DIExpression()), !dbg !3462
  %247 = icmp sgt i32 %240, -1, !dbg !3466
  br i1 %247, label %255, label %248, !dbg !3466

248:                                              ; preds = %246
  %249 = add nsw i32 %240, 8, !dbg !3466
  store i32 %249, i32* %8, align 8, !dbg !3466
  %250 = icmp ult i32 %240, -7, !dbg !3466
  br i1 %250, label %251, label %255, !dbg !3466

251:                                              ; preds = %248
  %252 = load i8*, i8** %9, align 8, !dbg !3466
  %253 = sext i32 %240 to i64, !dbg !3466
  %254 = getelementptr inbounds i8, i8* %252, i64 %253, !dbg !3466
  br label %258, !dbg !3466

255:                                              ; preds = %248, %246
  %256 = load i8*, i8** %10, align 8, !dbg !3466
  %257 = getelementptr inbounds i8, i8* %256, i64 8, !dbg !3466
  store i8* %257, i8** %10, align 8, !dbg !3466
  br label %258, !dbg !3466

258:                                              ; preds = %251, %255, %68
  %259 = phi i8* [ %63, %68 ], [ %254, %251 ], [ %256, %255 ]
  %260 = bitcast i8* %259 to i8**, !dbg !3466
  %261 = load i8*, i8** %260, align 8, !dbg !3466
  %262 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3469
  store i8* %261, i8** %262, align 8, !dbg !3470, !tbaa !555
  %263 = icmp eq i8* %261, null, !dbg !3471
  %264 = select i1 %263, i64 9, i64 10, !dbg !3472
  br label %265, !dbg !3473

265:                                              ; preds = %258, %80, %99, %119, %139, %159, %179, %199, %219, %239, %13, %20, %26, %32, %38, %44, %50, %56, %62
  %266 = phi i64 [ 0, %13 ], [ 1, %20 ], [ 2, %26 ], [ 3, %32 ], [ 4, %38 ], [ 5, %44 ], [ 6, %50 ], [ 7, %56 ], [ 8, %62 ], [ 0, %80 ], [ 1, %99 ], [ 2, %119 ], [ 3, %139 ], [ 4, %159 ], [ 5, %179 ], [ 6, %199 ], [ 7, %219 ], [ 8, %239 ], [ %264, %258 ]
  %267 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3473
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %267, i64 noundef %266), !dbg !3474
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3475
  ret void, !dbg !3475
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3476 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3480, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i8* %1, metadata !3481, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i8* %2, metadata !3482, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i8* %3, metadata !3483, metadata !DIExpression()), !dbg !3485
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3486
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3486
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3484, metadata !DIExpression()), !dbg !3487
  call void @llvm.va_start(i8* nonnull %7), !dbg !3488
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3489
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3489
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3489, !tbaa.struct !1468
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3489
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3489
  call void @llvm.va_end(i8* nonnull %7), !dbg !3490
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3491
  ret void, !dbg !3491
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3492 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3493, !tbaa !555
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.89, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3493
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.106, i64 0, i64 0), i32 noundef 5) #34, !dbg !3494
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.107, i64 0, i64 0)) #34, !dbg !3494
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.108, i64 0, i64 0), i32 noundef 5) #34, !dbg !3495
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.110, i64 0, i64 0)) #34, !dbg !3495
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.111, i64 0, i64 0), i32 noundef 5) #34, !dbg !3496
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.112, i64 0, i64 0)) #34, !dbg !3496
  ret void, !dbg !3497
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3498 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3503, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i64 %1, metadata !3504, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i64 %2, metadata !3505, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i8* %0, metadata !3507, metadata !DIExpression()) #34, !dbg !3512
  call void @llvm.dbg.value(metadata i64 %1, metadata !3510, metadata !DIExpression()) #34, !dbg !3512
  call void @llvm.dbg.value(metadata i64 %2, metadata !3511, metadata !DIExpression()) #34, !dbg !3512
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3514
  call void @llvm.dbg.value(metadata i8* %4, metadata !3515, metadata !DIExpression()) #34, !dbg !3520
  %5 = icmp eq i8* %4, null, !dbg !3522
  br i1 %5, label %6, label %7, !dbg !3524

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3525
  unreachable, !dbg !3525

7:                                                ; preds = %3
  ret i8* %4, !dbg !3526
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3508 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3507, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %1, metadata !3510, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %2, metadata !3511, metadata !DIExpression()), !dbg !3527
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3528
  call void @llvm.dbg.value(metadata i8* %4, metadata !3515, metadata !DIExpression()) #34, !dbg !3529
  %5 = icmp eq i8* %4, null, !dbg !3531
  br i1 %5, label %6, label %7, !dbg !3532

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3533
  unreachable, !dbg !3533

7:                                                ; preds = %3
  ret i8* %4, !dbg !3534
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3535 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3539, metadata !DIExpression()), !dbg !3540
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3541
  call void @llvm.dbg.value(metadata i8* %2, metadata !3515, metadata !DIExpression()) #34, !dbg !3542
  %3 = icmp eq i8* %2, null, !dbg !3544
  br i1 %3, label %4, label %5, !dbg !3545

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3546
  unreachable, !dbg !3546

5:                                                ; preds = %1
  ret i8* %2, !dbg !3547
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3548 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3552, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %0, metadata !3554, metadata !DIExpression()) #34, !dbg !3558
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3560
  call void @llvm.dbg.value(metadata i8* %2, metadata !3515, metadata !DIExpression()) #34, !dbg !3561
  %3 = icmp eq i8* %2, null, !dbg !3563
  br i1 %3, label %4, label %5, !dbg !3564

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3565
  unreachable, !dbg !3565

5:                                                ; preds = %1
  ret i8* %2, !dbg !3566
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3567 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3571, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i64 %0, metadata !3539, metadata !DIExpression()) #34, !dbg !3573
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3575
  call void @llvm.dbg.value(metadata i8* %2, metadata !3515, metadata !DIExpression()) #34, !dbg !3576
  %3 = icmp eq i8* %2, null, !dbg !3578
  br i1 %3, label %4, label %5, !dbg !3579

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3580
  unreachable, !dbg !3580

5:                                                ; preds = %1
  ret i8* %2, !dbg !3581
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3582 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3586, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %1, metadata !3587, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i8* %0, metadata !3589, metadata !DIExpression()) #34, !dbg !3594
  call void @llvm.dbg.value(metadata i64 %1, metadata !3593, metadata !DIExpression()) #34, !dbg !3594
  %3 = icmp eq i64 %1, 0, !dbg !3596
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3596
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %5, metadata !3515, metadata !DIExpression()) #34, !dbg !3598
  %6 = icmp eq i8* %5, null, !dbg !3600
  br i1 %6, label %7, label %8, !dbg !3601

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3602
  unreachable, !dbg !3602

8:                                                ; preds = %2
  ret i8* %5, !dbg !3603
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3604 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3608, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %1, metadata !3609, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i8* %0, metadata !3611, metadata !DIExpression()) #34, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %1, metadata !3614, metadata !DIExpression()) #34, !dbg !3615
  call void @llvm.dbg.value(metadata i8* %0, metadata !3589, metadata !DIExpression()) #34, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %1, metadata !3593, metadata !DIExpression()) #34, !dbg !3617
  %3 = icmp eq i64 %1, 0, !dbg !3619
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3619
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !3620
  call void @llvm.dbg.value(metadata i8* %5, metadata !3515, metadata !DIExpression()) #34, !dbg !3621
  %6 = icmp eq i8* %5, null, !dbg !3623
  br i1 %6, label %7, label %8, !dbg !3624

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3625
  unreachable, !dbg !3625

8:                                                ; preds = %2
  ret i8* %5, !dbg !3626
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3627 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3631, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i64 %1, metadata !3632, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i64 %2, metadata !3633, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i8* %0, metadata !3635, metadata !DIExpression()) #34, !dbg !3640
  call void @llvm.dbg.value(metadata i64 %1, metadata !3638, metadata !DIExpression()) #34, !dbg !3640
  call void @llvm.dbg.value(metadata i64 %2, metadata !3639, metadata !DIExpression()) #34, !dbg !3640
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %4, metadata !3515, metadata !DIExpression()) #34, !dbg !3643
  %5 = icmp eq i8* %4, null, !dbg !3645
  br i1 %5, label %6, label %7, !dbg !3646

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3647
  unreachable, !dbg !3647

7:                                                ; preds = %3
  ret i8* %4, !dbg !3648
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3649 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3653, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 %1, metadata !3654, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i8* null, metadata !3507, metadata !DIExpression()) #34, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %0, metadata !3510, metadata !DIExpression()) #34, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %1, metadata !3511, metadata !DIExpression()) #34, !dbg !3656
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !3658
  call void @llvm.dbg.value(metadata i8* %3, metadata !3515, metadata !DIExpression()) #34, !dbg !3659
  %4 = icmp eq i8* %3, null, !dbg !3661
  br i1 %4, label %5, label %6, !dbg !3662

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3663
  unreachable, !dbg !3663

6:                                                ; preds = %2
  ret i8* %3, !dbg !3664
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3665 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3669, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 %1, metadata !3670, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i8* null, metadata !3631, metadata !DIExpression()) #34, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %0, metadata !3632, metadata !DIExpression()) #34, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %1, metadata !3633, metadata !DIExpression()) #34, !dbg !3672
  call void @llvm.dbg.value(metadata i8* null, metadata !3635, metadata !DIExpression()) #34, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %0, metadata !3638, metadata !DIExpression()) #34, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %1, metadata !3639, metadata !DIExpression()) #34, !dbg !3674
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !3676
  call void @llvm.dbg.value(metadata i8* %3, metadata !3515, metadata !DIExpression()) #34, !dbg !3677
  %4 = icmp eq i8* %3, null, !dbg !3679
  br i1 %4, label %5, label %6, !dbg !3680

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3681
  unreachable, !dbg !3681

6:                                                ; preds = %2
  ret i8* %3, !dbg !3682
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3683 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3687, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64* %1, metadata !3688, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i8* %0, metadata !477, metadata !DIExpression()) #34, !dbg !3690
  call void @llvm.dbg.value(metadata i64* %1, metadata !478, metadata !DIExpression()) #34, !dbg !3690
  call void @llvm.dbg.value(metadata i64 1, metadata !479, metadata !DIExpression()) #34, !dbg !3690
  %3 = load i64, i64* %1, align 8, !dbg !3692, !tbaa !2788
  call void @llvm.dbg.value(metadata i64 %3, metadata !480, metadata !DIExpression()) #34, !dbg !3690
  %4 = icmp eq i8* %0, null, !dbg !3693
  br i1 %4, label %5, label %8, !dbg !3695

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3696
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3699
  br label %15, !dbg !3699

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3700
  %10 = add nuw i64 %9, 1, !dbg !3700
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #34, !dbg !3700
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3700
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3700
  call void @llvm.dbg.value(metadata i64 %13, metadata !480, metadata !DIExpression()) #34, !dbg !3690
  br i1 %12, label %14, label %15, !dbg !3703

14:                                               ; preds = %8
  tail call void @xalloc_die() #36, !dbg !3704
  unreachable, !dbg !3704

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3690
  call void @llvm.dbg.value(metadata i64 %16, metadata !480, metadata !DIExpression()) #34, !dbg !3690
  call void @llvm.dbg.value(metadata i8* %0, metadata !3507, metadata !DIExpression()) #34, !dbg !3705
  call void @llvm.dbg.value(metadata i64 %16, metadata !3510, metadata !DIExpression()) #34, !dbg !3705
  call void @llvm.dbg.value(metadata i64 1, metadata !3511, metadata !DIExpression()) #34, !dbg !3705
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #34, !dbg !3707
  call void @llvm.dbg.value(metadata i8* %17, metadata !3515, metadata !DIExpression()) #34, !dbg !3708
  %18 = icmp eq i8* %17, null, !dbg !3710
  br i1 %18, label %19, label %20, !dbg !3711

19:                                               ; preds = %15
  tail call void @xalloc_die() #36, !dbg !3712
  unreachable, !dbg !3712

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !477, metadata !DIExpression()) #34, !dbg !3690
  store i64 %16, i64* %1, align 8, !dbg !3713, !tbaa !2788
  ret i8* %17, !dbg !3714
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !472 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !477, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i64* %1, metadata !478, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i64 %2, metadata !479, metadata !DIExpression()), !dbg !3715
  %4 = load i64, i64* %1, align 8, !dbg !3716, !tbaa !2788
  call void @llvm.dbg.value(metadata i64 %4, metadata !480, metadata !DIExpression()), !dbg !3715
  %5 = icmp eq i8* %0, null, !dbg !3717
  br i1 %5, label %6, label %13, !dbg !3718

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3719
  br i1 %7, label %8, label %20, !dbg !3720

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3721
  call void @llvm.dbg.value(metadata i64 %9, metadata !480, metadata !DIExpression()), !dbg !3715
  %10 = icmp ugt i64 %2, 128, !dbg !3723
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %12, metadata !480, metadata !DIExpression()), !dbg !3715
  br label %20, !dbg !3725

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3726
  %15 = add nuw i64 %14, 1, !dbg !3726
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3726
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3726
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3726
  call void @llvm.dbg.value(metadata i64 %18, metadata !480, metadata !DIExpression()), !dbg !3715
  br i1 %17, label %19, label %20, !dbg !3727

19:                                               ; preds = %13
  tail call void @xalloc_die() #36, !dbg !3728
  unreachable, !dbg !3728

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3715
  call void @llvm.dbg.value(metadata i64 %21, metadata !480, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i8* %0, metadata !3507, metadata !DIExpression()) #34, !dbg !3729
  call void @llvm.dbg.value(metadata i64 %21, metadata !3510, metadata !DIExpression()) #34, !dbg !3729
  call void @llvm.dbg.value(metadata i64 %2, metadata !3511, metadata !DIExpression()) #34, !dbg !3729
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #34, !dbg !3731
  call void @llvm.dbg.value(metadata i8* %22, metadata !3515, metadata !DIExpression()) #34, !dbg !3732
  %23 = icmp eq i8* %22, null, !dbg !3734
  br i1 %23, label %24, label %25, !dbg !3735

24:                                               ; preds = %20
  tail call void @xalloc_die() #36, !dbg !3736
  unreachable, !dbg !3736

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !477, metadata !DIExpression()), !dbg !3715
  store i64 %21, i64* %1, align 8, !dbg !3737, !tbaa !2788
  ret i8* %22, !dbg !3738
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !484 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !489, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64* %1, metadata !490, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 %2, metadata !491, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 %3, metadata !492, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 %4, metadata !493, metadata !DIExpression()), !dbg !3739
  %6 = load i64, i64* %1, align 8, !dbg !3740, !tbaa !2788
  call void @llvm.dbg.value(metadata i64 %6, metadata !494, metadata !DIExpression()), !dbg !3739
  %7 = ashr i64 %6, 1, !dbg !3741
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3741
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3741
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3741
  call void @llvm.dbg.value(metadata i64 %10, metadata !495, metadata !DIExpression()), !dbg !3739
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3743
  call void @llvm.dbg.value(metadata i64 %11, metadata !495, metadata !DIExpression()), !dbg !3739
  %12 = icmp sgt i64 %3, -1, !dbg !3744
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3746
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3746
  call void @llvm.dbg.value(metadata i64 %15, metadata !495, metadata !DIExpression()), !dbg !3739
  %16 = icmp slt i64 %4, 0, !dbg !3747
  br i1 %16, label %17, label %30, !dbg !3747

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3747
  br i1 %18, label %19, label %24, !dbg !3747

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3747
  %21 = udiv i64 9223372036854775807, %20, !dbg !3747
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3747
  br i1 %23, label %46, label %43, !dbg !3747

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3747
  br i1 %25, label %43, label %26, !dbg !3747

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3747
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3747
  %29 = icmp ult i64 %28, %15, !dbg !3747
  br i1 %29, label %46, label %43, !dbg !3747

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3747
  br i1 %31, label %43, label %32, !dbg !3747

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3747
  br i1 %33, label %34, label %40, !dbg !3747

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3747
  br i1 %35, label %43, label %36, !dbg !3747

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3747
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3747
  %39 = icmp ult i64 %38, %4, !dbg !3747
  br i1 %39, label %46, label %43, !dbg !3747

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3747
  %42 = icmp ult i64 %41, %15, !dbg !3747
  br i1 %42, label %46, label %43, !dbg !3747

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !496, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3739
  %44 = mul i64 %15, %4, !dbg !3747
  call void @llvm.dbg.value(metadata i64 %44, metadata !496, metadata !DIExpression()), !dbg !3739
  %45 = icmp slt i64 %44, 128, !dbg !3747
  br i1 %45, label %46, label %52, !dbg !3747

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !497, metadata !DIExpression()), !dbg !3739
  %48 = sdiv i64 %47, %4, !dbg !3748
  call void @llvm.dbg.value(metadata i64 %48, metadata !495, metadata !DIExpression()), !dbg !3739
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3751
  call void @llvm.dbg.value(metadata i64 %51, metadata !496, metadata !DIExpression()), !dbg !3739
  br label %52, !dbg !3752

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3739
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3739
  call void @llvm.dbg.value(metadata i64 %54, metadata !496, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 %53, metadata !495, metadata !DIExpression()), !dbg !3739
  %55 = icmp eq i8* %0, null, !dbg !3753
  br i1 %55, label %56, label %57, !dbg !3755

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3756, !tbaa !2788
  br label %57, !dbg !3757

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3758
  %59 = icmp slt i64 %58, %2, !dbg !3760
  br i1 %59, label %60, label %97, !dbg !3761

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3762
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3762
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3762
  call void @llvm.dbg.value(metadata i64 %63, metadata !495, metadata !DIExpression()), !dbg !3739
  br i1 %62, label %96, label %64, !dbg !3763

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3764
  br i1 %66, label %96, label %67, !dbg !3764

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3765

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3765
  br i1 %69, label %70, label %75, !dbg !3765

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3765
  %72 = udiv i64 9223372036854775807, %71, !dbg !3765
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3765
  br i1 %74, label %96, label %94, !dbg !3765

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3765
  br i1 %76, label %94, label %77, !dbg !3765

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3765
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3765
  %80 = icmp ult i64 %79, %63, !dbg !3765
  br i1 %80, label %96, label %94, !dbg !3765

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3765
  br i1 %82, label %94, label %83, !dbg !3765

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3765
  br i1 %84, label %85, label %91, !dbg !3765

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3765
  br i1 %86, label %94, label %87, !dbg !3765

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3765
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3765
  %90 = icmp ult i64 %89, %4, !dbg !3765
  br i1 %90, label %96, label %94, !dbg !3765

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3765
  %93 = icmp ult i64 %92, %63, !dbg !3765
  br i1 %93, label %96, label %94, !dbg !3765

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !496, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3739
  %95 = mul i64 %63, %4, !dbg !3765
  call void @llvm.dbg.value(metadata i64 %95, metadata !496, metadata !DIExpression()), !dbg !3739
  br label %97, !dbg !3766

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #36, !dbg !3767
  unreachable, !dbg !3767

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3739
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3739
  call void @llvm.dbg.value(metadata i64 %99, metadata !496, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 %98, metadata !495, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i8* %0, metadata !3586, metadata !DIExpression()) #34, !dbg !3768
  call void @llvm.dbg.value(metadata i64 %99, metadata !3587, metadata !DIExpression()) #34, !dbg !3768
  call void @llvm.dbg.value(metadata i8* %0, metadata !3589, metadata !DIExpression()) #34, !dbg !3770
  call void @llvm.dbg.value(metadata i64 %99, metadata !3593, metadata !DIExpression()) #34, !dbg !3770
  %100 = icmp eq i64 %99, 0, !dbg !3772
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3772
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #34, !dbg !3773
  call void @llvm.dbg.value(metadata i8* %102, metadata !3515, metadata !DIExpression()) #34, !dbg !3774
  %103 = icmp eq i8* %102, null, !dbg !3776
  br i1 %103, label %104, label %105, !dbg !3777

104:                                              ; preds = %97
  tail call void @xalloc_die() #36, !dbg !3778
  unreachable, !dbg !3778

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !489, metadata !DIExpression()), !dbg !3739
  store i64 %98, i64* %1, align 8, !dbg !3779, !tbaa !2788
  ret i8* %102, !dbg !3780
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3781 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3783, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %0, metadata !3785, metadata !DIExpression()) #34, !dbg !3789
  call void @llvm.dbg.value(metadata i64 1, metadata !3788, metadata !DIExpression()) #34, !dbg !3789
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !3791
  call void @llvm.dbg.value(metadata i8* %2, metadata !3515, metadata !DIExpression()) #34, !dbg !3792
  %3 = icmp eq i8* %2, null, !dbg !3794
  br i1 %3, label %4, label %5, !dbg !3795

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3796
  unreachable, !dbg !3796

5:                                                ; preds = %1
  ret i8* %2, !dbg !3797
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3786 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3785, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i64 %1, metadata !3788, metadata !DIExpression()), !dbg !3798
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !3799
  call void @llvm.dbg.value(metadata i8* %3, metadata !3515, metadata !DIExpression()) #34, !dbg !3800
  %4 = icmp eq i8* %3, null, !dbg !3802
  br i1 %4, label %5, label %6, !dbg !3803

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3804
  unreachable, !dbg !3804

6:                                                ; preds = %2
  ret i8* %3, !dbg !3805
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3806 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3808, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i64 %0, metadata !3810, metadata !DIExpression()) #34, !dbg !3814
  call void @llvm.dbg.value(metadata i64 1, metadata !3813, metadata !DIExpression()) #34, !dbg !3814
  call void @llvm.dbg.value(metadata i64 %0, metadata !3816, metadata !DIExpression()) #34, !dbg !3820
  call void @llvm.dbg.value(metadata i64 1, metadata !3819, metadata !DIExpression()) #34, !dbg !3820
  call void @llvm.dbg.value(metadata i64 %0, metadata !3816, metadata !DIExpression()) #34, !dbg !3820
  call void @llvm.dbg.value(metadata i64 1, metadata !3819, metadata !DIExpression()) #34, !dbg !3820
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !3822
  call void @llvm.dbg.value(metadata i8* %2, metadata !3515, metadata !DIExpression()) #34, !dbg !3823
  %3 = icmp eq i8* %2, null, !dbg !3825
  br i1 %3, label %4, label %5, !dbg !3826

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3827
  unreachable, !dbg !3827

5:                                                ; preds = %1
  ret i8* %2, !dbg !3828
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3811 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3810, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i64 %1, metadata !3813, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i64 %0, metadata !3816, metadata !DIExpression()) #34, !dbg !3830
  call void @llvm.dbg.value(metadata i64 %1, metadata !3819, metadata !DIExpression()) #34, !dbg !3830
  call void @llvm.dbg.value(metadata i64 %0, metadata !3816, metadata !DIExpression()) #34, !dbg !3830
  call void @llvm.dbg.value(metadata i64 %1, metadata !3819, metadata !DIExpression()) #34, !dbg !3830
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !3832
  call void @llvm.dbg.value(metadata i8* %3, metadata !3515, metadata !DIExpression()) #34, !dbg !3833
  %4 = icmp eq i8* %3, null, !dbg !3835
  br i1 %4, label %5, label %6, !dbg !3836

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3837
  unreachable, !dbg !3837

6:                                                ; preds = %2
  ret i8* %3, !dbg !3838
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3839 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3843, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 %1, metadata !3844, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 %1, metadata !3539, metadata !DIExpression()) #34, !dbg !3846
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !3848
  call void @llvm.dbg.value(metadata i8* %3, metadata !3515, metadata !DIExpression()) #34, !dbg !3849
  %4 = icmp eq i8* %3, null, !dbg !3851
  br i1 %4, label %5, label %6, !dbg !3852

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3853
  unreachable, !dbg !3853

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3854, metadata !DIExpression()) #34, !dbg !3859
  call void @llvm.dbg.value(metadata i8* %0, metadata !3857, metadata !DIExpression()) #34, !dbg !3859
  call void @llvm.dbg.value(metadata i64 %1, metadata !3858, metadata !DIExpression()) #34, !dbg !3859
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3861
  ret i8* %3, !dbg !3862
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3863 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3867, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i64 %1, metadata !3868, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i64 %1, metadata !3552, metadata !DIExpression()) #34, !dbg !3870
  call void @llvm.dbg.value(metadata i64 %1, metadata !3554, metadata !DIExpression()) #34, !dbg !3872
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !3874
  call void @llvm.dbg.value(metadata i8* %3, metadata !3515, metadata !DIExpression()) #34, !dbg !3875
  %4 = icmp eq i8* %3, null, !dbg !3877
  br i1 %4, label %5, label %6, !dbg !3878

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3879
  unreachable, !dbg !3879

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3854, metadata !DIExpression()) #34, !dbg !3880
  call void @llvm.dbg.value(metadata i8* %0, metadata !3857, metadata !DIExpression()) #34, !dbg !3880
  call void @llvm.dbg.value(metadata i64 %1, metadata !3858, metadata !DIExpression()) #34, !dbg !3880
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3882
  ret i8* %3, !dbg !3883
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3884 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3888, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i64 %1, metadata !3889, metadata !DIExpression()), !dbg !3891
  %3 = add nsw i64 %1, 1, !dbg !3892
  call void @llvm.dbg.value(metadata i64 %3, metadata !3552, metadata !DIExpression()) #34, !dbg !3893
  call void @llvm.dbg.value(metadata i64 %3, metadata !3554, metadata !DIExpression()) #34, !dbg !3895
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !3897
  call void @llvm.dbg.value(metadata i8* %4, metadata !3515, metadata !DIExpression()) #34, !dbg !3898
  %5 = icmp eq i8* %4, null, !dbg !3900
  br i1 %5, label %6, label %7, !dbg !3901

6:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3902
  unreachable, !dbg !3902

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3890, metadata !DIExpression()), !dbg !3891
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3903
  store i8 0, i8* %8, align 1, !dbg !3904, !tbaa !658
  call void @llvm.dbg.value(metadata i8* %4, metadata !3854, metadata !DIExpression()) #34, !dbg !3905
  call void @llvm.dbg.value(metadata i8* %0, metadata !3857, metadata !DIExpression()) #34, !dbg !3905
  call void @llvm.dbg.value(metadata i64 %1, metadata !3858, metadata !DIExpression()) #34, !dbg !3905
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3907
  ret i8* %4, !dbg !3908
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3909 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3911, metadata !DIExpression()), !dbg !3912
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #35, !dbg !3913
  %3 = add i64 %2, 1, !dbg !3914
  call void @llvm.dbg.value(metadata i8* %0, metadata !3843, metadata !DIExpression()) #34, !dbg !3915
  call void @llvm.dbg.value(metadata i64 %3, metadata !3844, metadata !DIExpression()) #34, !dbg !3915
  call void @llvm.dbg.value(metadata i64 %3, metadata !3539, metadata !DIExpression()) #34, !dbg !3917
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !3919
  call void @llvm.dbg.value(metadata i8* %4, metadata !3515, metadata !DIExpression()) #34, !dbg !3920
  %5 = icmp eq i8* %4, null, !dbg !3922
  br i1 %5, label %6, label %7, !dbg !3923

6:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3924
  unreachable, !dbg !3924

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3854, metadata !DIExpression()) #34, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %0, metadata !3857, metadata !DIExpression()) #34, !dbg !3925
  call void @llvm.dbg.value(metadata i64 %3, metadata !3858, metadata !DIExpression()) #34, !dbg !3925
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #34, !dbg !3927
  ret i8* %4, !dbg !3928
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3929 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3934, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %1, metadata !3931, metadata !DIExpression()), !dbg !3935
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.124, i64 0, i64 0), i32 noundef 5) #34, !dbg !3934
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i64 0, i64 0), i8* noundef %2) #34, !dbg !3934
  %3 = icmp eq i32 %1, 0, !dbg !3934
  tail call void @llvm.assume(i1 %3), !dbg !3934
  tail call void @abort() #36, !dbg !3936
  unreachable, !dbg !3936
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoumax(i8* noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #12 !dbg !3937 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3942, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i32 %1, metadata !3943, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i64 %2, metadata !3944, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i64 %3, metadata !3945, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i8* %4, metadata !3946, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i8* %5, metadata !3947, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i32 %6, metadata !3948, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i32 %7, metadata !3949, metadata !DIExpression()), !dbg !3959
  %10 = bitcast i64* %9 to i8*, !dbg !3960
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !3960
  call void @llvm.dbg.value(metadata i64* %9, metadata !3950, metadata !DIExpression(DW_OP_deref)), !dbg !3959
  %11 = call i32 @xstrtoumax(i8* noundef nonnull %0, i8** noundef null, i32 noundef %1, i64* noundef nonnull %9, i8* noundef %4) #34, !dbg !3961
  call void @llvm.dbg.value(metadata i32 %11, metadata !3952, metadata !DIExpression()), !dbg !3959
  %12 = icmp eq i32 %11, 4, !dbg !3962
  br i1 %12, label %41, label %13, !dbg !3964

13:                                               ; preds = %8
  %14 = load i64, i64* %9, align 8, !dbg !3965, !tbaa !2788
  call void @llvm.dbg.value(metadata i64 %14, metadata !3950, metadata !DIExpression()), !dbg !3959
  %15 = icmp ult i64 %14, %2, !dbg !3968
  br i1 %15, label %16, label %21, !dbg !3969

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %2, metadata !3951, metadata !DIExpression()), !dbg !3959
  %17 = and i32 %7, 4, !dbg !3970
  %18 = icmp eq i32 %17, 0, !dbg !3972
  %19 = select i1 %18, i32 75, i32 34, !dbg !3972
  call void @llvm.dbg.value(metadata i32 %19, metadata !3954, metadata !DIExpression()), !dbg !3959
  %20 = icmp eq i32 %11, 0, !dbg !3973
  call void @llvm.dbg.value(metadata i32 undef, metadata !3952, metadata !DIExpression()), !dbg !3959
  br i1 %20, label %34, label %28, !dbg !3975

21:                                               ; preds = %13
  %22 = icmp ugt i64 %14, %3, !dbg !3976
  br i1 %22, label %23, label %28, !dbg !3978

23:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 %3, metadata !3951, metadata !DIExpression()), !dbg !3959
  %24 = and i32 %7, 8, !dbg !3979
  %25 = icmp eq i32 %24, 0, !dbg !3981
  %26 = select i1 %25, i32 75, i32 34, !dbg !3981
  call void @llvm.dbg.value(metadata i32 %26, metadata !3954, metadata !DIExpression()), !dbg !3959
  %27 = icmp eq i32 %11, 0, !dbg !3982
  call void @llvm.dbg.value(metadata i32 undef, metadata !3952, metadata !DIExpression()), !dbg !3959
  br i1 %27, label %34, label %28, !dbg !3984

28:                                               ; preds = %23, %16, %21
  %29 = phi i32 [ %19, %16 ], [ %26, %23 ], [ 75, %21 ]
  %30 = phi i64 [ %2, %16 ], [ %3, %23 ], [ %14, %21 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !3951, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i32 %11, metadata !3952, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i32 %29, metadata !3954, metadata !DIExpression()), !dbg !3959
  %31 = icmp eq i32 %11, 1, !dbg !3985
  %32 = select i1 %31, i32 %29, i32 0, !dbg !3986
  call void @llvm.dbg.value(metadata i32 %32, metadata !3955, metadata !DIExpression()), !dbg !3959
  %33 = icmp eq i32 %11, 0, !dbg !3987
  br i1 %33, label %46, label %34, !dbg !3988

34:                                               ; preds = %16, %23, %28
  %35 = phi i32 [ %32, %28 ], [ %26, %23 ], [ %19, %16 ]
  %36 = phi i1 [ %31, %28 ], [ true, %23 ], [ true, %16 ]
  %37 = phi i64 [ %30, %28 ], [ %3, %23 ], [ %2, %16 ]
  %38 = and i32 %7, 2
  %39 = icmp ne i32 %38, 0
  %40 = and i1 %39, %36, !dbg !3989
  call void @llvm.dbg.value(metadata i64 undef, metadata !3950, metadata !DIExpression()), !dbg !3959
  br i1 %40, label %46, label %41, !dbg !3989

41:                                               ; preds = %8, %34
  %42 = phi i32 [ %35, %34 ], [ 0, %8 ]
  %43 = icmp eq i32 %6, 0, !dbg !3990
  %44 = select i1 %43, i32 1, i32 %6, !dbg !3990
  %45 = call i8* @quote(i8* noundef nonnull %0) #34, !dbg !3991
  call void (i32, i32, i8*, ...) @error(i32 noundef %44, i32 noundef %42, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i64 0, i64 0), i8* noundef nonnull %5, i8* noundef %45) #34, !dbg !3991
  unreachable, !dbg !3991

46:                                               ; preds = %34, %28
  %47 = phi i32 [ %35, %34 ], [ %32, %28 ]
  %48 = phi i64 [ %37, %34 ], [ %30, %28 ]
  %49 = tail call i32* @__errno_location() #37, !dbg !3992
  store i32 %47, i32* %49, align 4, !dbg !3993, !tbaa !649
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !3994
  ret i64 %48, !dbg !3995
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoumax(i8* noundef nonnull %0, i64 noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef nonnull %4, i32 noundef %5) local_unnamed_addr #12 !dbg !3996 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4000, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i64 %1, metadata !4001, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i64 %2, metadata !4002, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i8* %3, metadata !4003, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i8* %4, metadata !4004, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 %5, metadata !4005, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i8* %0, metadata !3942, metadata !DIExpression()) #34, !dbg !4007
  call void @llvm.dbg.value(metadata i32 10, metadata !3943, metadata !DIExpression()) #34, !dbg !4007
  call void @llvm.dbg.value(metadata i64 %1, metadata !3944, metadata !DIExpression()) #34, !dbg !4007
  call void @llvm.dbg.value(metadata i64 %2, metadata !3945, metadata !DIExpression()) #34, !dbg !4007
  call void @llvm.dbg.value(metadata i8* %3, metadata !3946, metadata !DIExpression()) #34, !dbg !4007
  call void @llvm.dbg.value(metadata i8* %4, metadata !3947, metadata !DIExpression()) #34, !dbg !4007
  call void @llvm.dbg.value(metadata i32 %5, metadata !3948, metadata !DIExpression()) #34, !dbg !4007
  call void @llvm.dbg.value(metadata i32 0, metadata !3949, metadata !DIExpression()) #34, !dbg !4007
  %8 = bitcast i64* %7 to i8*, !dbg !4009
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #34, !dbg !4009
  call void @llvm.dbg.value(metadata i64* %7, metadata !3950, metadata !DIExpression(DW_OP_deref)) #34, !dbg !4007
  %9 = call i32 @xstrtoumax(i8* noundef nonnull %0, i8** noundef null, i32 noundef 10, i64* noundef nonnull %7, i8* noundef %3) #34, !dbg !4010
  call void @llvm.dbg.value(metadata i32 %9, metadata !3952, metadata !DIExpression()) #34, !dbg !4007
  %10 = icmp eq i32 %9, 4, !dbg !4011
  br i1 %10, label %25, label %11, !dbg !4012

11:                                               ; preds = %6
  %12 = load i64, i64* %7, align 8, !dbg !4013, !tbaa !2788
  call void @llvm.dbg.value(metadata i64 %12, metadata !3950, metadata !DIExpression()) #34, !dbg !4007
  %13 = icmp ult i64 %12, %1, !dbg !4014
  br i1 %13, label %14, label %16, !dbg !4015

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64 %1, metadata !3951, metadata !DIExpression()) #34, !dbg !4007
  call void @llvm.dbg.value(metadata i32 75, metadata !3954, metadata !DIExpression()) #34, !dbg !4007
  %15 = icmp eq i32 %9, 0, !dbg !4016
  call void @llvm.dbg.value(metadata i32 undef, metadata !3952, metadata !DIExpression()) #34, !dbg !4007
  br i1 %15, label %25, label %20, !dbg !4017

16:                                               ; preds = %11
  %17 = icmp ugt i64 %12, %2, !dbg !4018
  br i1 %17, label %18, label %20, !dbg !4019

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i64 %2, metadata !3951, metadata !DIExpression()) #34, !dbg !4007
  call void @llvm.dbg.value(metadata i32 75, metadata !3954, metadata !DIExpression()) #34, !dbg !4007
  %19 = icmp eq i32 %9, 0, !dbg !4020
  call void @llvm.dbg.value(metadata i32 undef, metadata !3952, metadata !DIExpression()) #34, !dbg !4007
  br i1 %19, label %25, label %20, !dbg !4021

20:                                               ; preds = %18, %16, %14
  %21 = phi i64 [ %1, %14 ], [ %2, %18 ], [ %12, %16 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !3951, metadata !DIExpression()) #34, !dbg !4007
  call void @llvm.dbg.value(metadata i32 %9, metadata !3952, metadata !DIExpression()) #34, !dbg !4007
  call void @llvm.dbg.value(metadata i32 75, metadata !3954, metadata !DIExpression()) #34, !dbg !4007
  %22 = icmp eq i32 %9, 1, !dbg !4022
  %23 = select i1 %22, i32 75, i32 0, !dbg !4023
  call void @llvm.dbg.value(metadata i32 %23, metadata !3955, metadata !DIExpression()) #34, !dbg !4007
  %24 = icmp eq i32 %9, 0, !dbg !4024
  br i1 %24, label %30, label %25, !dbg !4025

25:                                               ; preds = %14, %18, %20, %6
  %26 = phi i32 [ 0, %6 ], [ %23, %20 ], [ 75, %18 ], [ 75, %14 ]
  %27 = icmp eq i32 %5, 0, !dbg !4026
  %28 = select i1 %27, i32 1, i32 %5, !dbg !4026
  %29 = call i8* @quote(i8* noundef nonnull %0) #34, !dbg !4027
  call void (i32, i32, i8*, ...) @error(i32 noundef %28, i32 noundef %26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i64 0, i64 0), i8* noundef nonnull %4, i8* noundef %29) #34, !dbg !4027
  unreachable, !dbg !4027

30:                                               ; preds = %20
  %31 = tail call i32* @__errno_location() #37, !dbg !4028
  store i32 %23, i32* %31, align 4, !dbg !4029, !tbaa !649
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #34, !dbg !4030
  ret i64 %21, !dbg !4031
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* nocapture noundef writeonly %3, i8* noundef readonly %4) local_unnamed_addr #12 !dbg !4032 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4038, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i8** %1, metadata !4039, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 %2, metadata !4040, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i64* %3, metadata !4041, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i8* %4, metadata !4042, metadata !DIExpression()), !dbg !4056
  %7 = bitcast i8** %6 to i8*, !dbg !4057
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #34, !dbg !4057
  %8 = icmp eq i8** %1, null, !dbg !4058
  call void @llvm.dbg.value(metadata i8** %21, metadata !4044, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i8* %0, metadata !4045, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i8 undef, metadata !4048, metadata !DIExpression()), !dbg !4059
  %9 = tail call i16** @__ctype_b_loc() #37, !dbg !4056
  %10 = load i16*, i16** %9, align 8, !tbaa !555
  br label %11, !dbg !4060

11:                                               ; preds = %11, %5
  %12 = phi i8* [ %0, %5 ], [ %19, %11 ], !dbg !4059
  %13 = load i8, i8* %12, align 1, !dbg !4059, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %13, metadata !4048, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i8* %12, metadata !4045, metadata !DIExpression()), !dbg !4059
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i16, i16* %10, i64 %14, !dbg !4061
  %16 = load i16, i16* %15, align 2, !dbg !4061, !tbaa !683
  %17 = and i16 %16, 8192, !dbg !4061
  %18 = icmp eq i16 %17, 0, !dbg !4060
  %19 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !4062
  call void @llvm.dbg.value(metadata i8* %19, metadata !4045, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i8 undef, metadata !4048, metadata !DIExpression()), !dbg !4059
  br i1 %18, label %20, label %11, !dbg !4060, !llvm.loop !4063

20:                                               ; preds = %11
  %21 = select i1 %8, i8** %6, i8** %1, !dbg !4058
  %22 = icmp eq i8 %13, 45, !dbg !4065
  br i1 %22, label %23, label %24, !dbg !4067

23:                                               ; preds = %20
  store i8* %0, i8** %21, align 8, !dbg !4068, !tbaa !555
  br label %387

24:                                               ; preds = %20
  %25 = tail call i32* @__errno_location() #37, !dbg !4070
  store i32 0, i32* %25, align 4, !dbg !4071, !tbaa !649
  %26 = call i64 @strtoumax(i8* noundef %0, i8** noundef %21, i32 noundef %2) #34, !dbg !4072
  call void @llvm.dbg.value(metadata i64 %26, metadata !4049, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 0, metadata !4050, metadata !DIExpression()), !dbg !4056
  %27 = load i8*, i8** %21, align 8, !dbg !4073, !tbaa !555
  %28 = icmp eq i8* %27, %0, !dbg !4075
  br i1 %28, label %29, label %38, !dbg !4076

29:                                               ; preds = %24
  %30 = icmp eq i8* %4, null, !dbg !4077
  br i1 %30, label %387, label %31, !dbg !4080

31:                                               ; preds = %29
  %32 = load i8, i8* %0, align 1, !dbg !4081, !tbaa !658
  %33 = icmp eq i8 %32, 0, !dbg !4081
  br i1 %33, label %387, label %34, !dbg !4082

34:                                               ; preds = %31
  %35 = zext i8 %32 to i32, !dbg !4081
  %36 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %35) #35, !dbg !4083
  %37 = icmp eq i8* %36, null, !dbg !4083
  br i1 %37, label %387, label %45, !dbg !4084

38:                                               ; preds = %24
  %39 = load i32, i32* %25, align 4, !dbg !4085, !tbaa !649
  switch i32 %39, label %387 [
    i32 0, label %41
    i32 34, label %40
  ], !dbg !4087

40:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 1, metadata !4050, metadata !DIExpression()), !dbg !4056
  br label %41, !dbg !4088

41:                                               ; preds = %38, %40
  %42 = phi i32 [ 1, %40 ], [ %39, %38 ], !dbg !4056
  call void @llvm.dbg.value(metadata i32 %42, metadata !4050, metadata !DIExpression()), !dbg !4056
  %43 = icmp eq i8* %4, null, !dbg !4090
  br i1 %43, label %44, label %45, !dbg !4092

44:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i64 %26, metadata !4049, metadata !DIExpression()), !dbg !4056
  store i64 %26, i64* %3, align 8, !dbg !4093, !tbaa !2788
  br label %387, !dbg !4095

45:                                               ; preds = %34, %41
  %46 = phi i32 [ %42, %41 ], [ 0, %34 ]
  %47 = phi i64 [ %26, %41 ], [ 1, %34 ]
  %48 = load i8, i8* %27, align 1, !dbg !4096, !tbaa !658
  %49 = icmp eq i8 %48, 0, !dbg !4097
  br i1 %49, label %384, label %50, !dbg !4098

50:                                               ; preds = %45
  %51 = zext i8 %48 to i32, !dbg !4096
  %52 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %51) #35, !dbg !4099
  %53 = icmp eq i8* %52, null, !dbg !4099
  br i1 %53, label %54, label %56, !dbg !4101

54:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %26, metadata !4049, metadata !DIExpression()), !dbg !4056
  store i64 %47, i64* %3, align 8, !dbg !4102, !tbaa !2788
  %55 = or i32 %46, 2, !dbg !4104
  br label %387, !dbg !4105

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 1024, metadata !4051, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i32 1, metadata !4054, metadata !DIExpression()), !dbg !4106
  switch i8 %48, label %69 [
    i8 69, label %57
    i8 71, label %57
    i8 103, label %57
    i8 107, label %57
    i8 75, label %57
    i8 77, label %57
    i8 109, label %57
    i8 80, label %57
    i8 81, label %57
    i8 82, label %57
    i8 84, label %57
    i8 116, label %57
    i8 89, label %57
    i8 90, label %57
  ], !dbg !4107

57:                                               ; preds = %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56
  %58 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef 48) #35, !dbg !4108
  %59 = icmp eq i8* %58, null, !dbg !4108
  br i1 %59, label %69, label %60, !dbg !4111

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !4112
  %62 = load i8, i8* %61, align 1, !dbg !4112, !tbaa !658
  switch i8 %62, label %69 [
    i8 105, label %63
    i8 66, label %68
    i8 68, label %68
  ], !dbg !4113

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !4114
  %65 = load i8, i8* %64, align 1, !dbg !4114, !tbaa !658
  %66 = icmp eq i8 %65, 66, !dbg !4117
  %67 = select i1 %66, i64 3, i64 1, !dbg !4118
  br label %69, !dbg !4118

68:                                               ; preds = %60, %60
  call void @llvm.dbg.value(metadata i32 1000, metadata !4051, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i32 2, metadata !4054, metadata !DIExpression()), !dbg !4106
  br label %69, !dbg !4119

69:                                               ; preds = %63, %57, %60, %68, %56
  %70 = phi i64 [ 1024, %56 ], [ 1024, %60 ], [ 1000, %68 ], [ 1024, %57 ], [ 1024, %63 ]
  %71 = phi i64 [ 1, %56 ], [ 1, %60 ], [ 2, %68 ], [ 1, %57 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4054, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i32 undef, metadata !4051, metadata !DIExpression()), !dbg !4106
  switch i8 %48, label %382 [
    i8 98, label %303
    i8 66, label %308
    i8 99, label %373
    i8 69, label %272
    i8 71, label %313
    i8 103, label %313
    i8 107, label %329
    i8 75, label %329
    i8 77, label %335
    i8 109, label %335
    i8 80, label %246
    i8 81, label %195
    i8 82, label %149
    i8 84, label %346
    i8 116, label %346
    i8 119, label %367
    i8 89, label %108
    i8 90, label %72
  ], !dbg !4120

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4121, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 7, metadata !4128, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 6, metadata !4128, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4139
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4139
  %73 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4141
  %74 = extractvalue { i64, i1 } %73, 1, !dbg !4141
  %75 = mul i64 %47, %70, !dbg !4141
  call void @llvm.dbg.value(metadata i64 %75, metadata !4138, metadata !DIExpression()) #34, !dbg !4139
  %76 = select i1 %74, i64 -1, i64 %75, !dbg !4139
  call void @llvm.dbg.value(metadata i1 %74, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 6, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i1 %74, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 6, metadata !4128, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4139
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4139
  %77 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %76) #34, !dbg !4141
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !4141
  %79 = mul i64 %76, %70, !dbg !4141
  call void @llvm.dbg.value(metadata i64 %79, metadata !4138, metadata !DIExpression()) #34, !dbg !4139
  %80 = select i1 %78, i64 -1, i64 %79, !dbg !4139
  %81 = or i1 %74, %78, !dbg !4143
  call void @llvm.dbg.value(metadata i1 %81, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i1 %81, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4139
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4139
  %82 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %80) #34, !dbg !4141
  %83 = extractvalue { i64, i1 } %82, 1, !dbg !4141
  %84 = mul i64 %80, %70, !dbg !4141
  call void @llvm.dbg.value(metadata i64 %84, metadata !4138, metadata !DIExpression()) #34, !dbg !4139
  %85 = select i1 %83, i64 -1, i64 %84, !dbg !4139
  %86 = or i1 %81, %83, !dbg !4143
  call void @llvm.dbg.value(metadata i1 %86, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i1 %86, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4139
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4139
  %87 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %85) #34, !dbg !4141
  %88 = extractvalue { i64, i1 } %87, 1, !dbg !4141
  %89 = mul i64 %85, %70, !dbg !4141
  call void @llvm.dbg.value(metadata i64 %89, metadata !4138, metadata !DIExpression()) #34, !dbg !4139
  %90 = select i1 %88, i64 -1, i64 %89, !dbg !4139
  %91 = or i1 %86, %88, !dbg !4143
  call void @llvm.dbg.value(metadata i1 %91, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i1 %91, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4139
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4139
  %92 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %90) #34, !dbg !4141
  %93 = extractvalue { i64, i1 } %92, 1, !dbg !4141
  %94 = mul i64 %90, %70, !dbg !4141
  call void @llvm.dbg.value(metadata i64 %94, metadata !4138, metadata !DIExpression()) #34, !dbg !4139
  %95 = select i1 %93, i64 -1, i64 %94, !dbg !4139
  %96 = or i1 %91, %93, !dbg !4143
  call void @llvm.dbg.value(metadata i1 %96, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i1 %96, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4139
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4139
  %97 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %95) #34, !dbg !4141
  %98 = extractvalue { i64, i1 } %97, 1, !dbg !4141
  %99 = mul i64 %95, %70, !dbg !4141
  call void @llvm.dbg.value(metadata i64 %99, metadata !4138, metadata !DIExpression()) #34, !dbg !4139
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4139
  %101 = or i1 %96, %98, !dbg !4143
  call void @llvm.dbg.value(metadata i1 %101, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i1 %101, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4139
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4139
  %102 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %100) #34, !dbg !4141
  %103 = extractvalue { i64, i1 } %102, 1, !dbg !4141
  %104 = mul i64 %100, %70, !dbg !4141
  call void @llvm.dbg.value(metadata i64 %104, metadata !4138, metadata !DIExpression()) #34, !dbg !4139
  %105 = select i1 %103, i64 -1, i64 %104, !dbg !4139
  %106 = or i1 %101, %103, !dbg !4143
  %107 = zext i1 %106 to i32, !dbg !4143
  call void @llvm.dbg.value(metadata i32 %107, metadata !4121, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4129
  br label %373, !dbg !4144

108:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4121, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 8, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 7, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4147
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4147
  %109 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4149
  %110 = extractvalue { i64, i1 } %109, 1, !dbg !4149
  %111 = mul i64 %47, %70, !dbg !4149
  call void @llvm.dbg.value(metadata i64 %111, metadata !4138, metadata !DIExpression()) #34, !dbg !4147
  %112 = select i1 %110, i64 -1, i64 %111, !dbg !4147
  call void @llvm.dbg.value(metadata i1 %110, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 7, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i1 %110, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 7, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 6, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4147
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4147
  %113 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %112) #34, !dbg !4149
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !4149
  %115 = mul i64 %112, %70, !dbg !4149
  call void @llvm.dbg.value(metadata i64 %115, metadata !4138, metadata !DIExpression()) #34, !dbg !4147
  %116 = select i1 %114, i64 -1, i64 %115, !dbg !4147
  %117 = or i1 %110, %114, !dbg !4150
  call void @llvm.dbg.value(metadata i1 %117, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 6, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i1 %117, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 6, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4147
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4147
  %118 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %116) #34, !dbg !4149
  %119 = extractvalue { i64, i1 } %118, 1, !dbg !4149
  %120 = mul i64 %116, %70, !dbg !4149
  call void @llvm.dbg.value(metadata i64 %120, metadata !4138, metadata !DIExpression()) #34, !dbg !4147
  %121 = select i1 %119, i64 -1, i64 %120, !dbg !4147
  %122 = or i1 %117, %119, !dbg !4150
  call void @llvm.dbg.value(metadata i1 %122, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i1 %122, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4147
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4147
  %123 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %121) #34, !dbg !4149
  %124 = extractvalue { i64, i1 } %123, 1, !dbg !4149
  %125 = mul i64 %121, %70, !dbg !4149
  call void @llvm.dbg.value(metadata i64 %125, metadata !4138, metadata !DIExpression()) #34, !dbg !4147
  %126 = select i1 %124, i64 -1, i64 %125, !dbg !4147
  %127 = or i1 %122, %124, !dbg !4150
  call void @llvm.dbg.value(metadata i1 %127, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i1 %127, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4147
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4147
  %128 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %126) #34, !dbg !4149
  %129 = extractvalue { i64, i1 } %128, 1, !dbg !4149
  %130 = mul i64 %126, %70, !dbg !4149
  call void @llvm.dbg.value(metadata i64 %130, metadata !4138, metadata !DIExpression()) #34, !dbg !4147
  %131 = select i1 %129, i64 -1, i64 %130, !dbg !4147
  %132 = or i1 %127, %129, !dbg !4150
  call void @llvm.dbg.value(metadata i1 %132, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i1 %132, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4147
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4147
  %133 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %131) #34, !dbg !4149
  %134 = extractvalue { i64, i1 } %133, 1, !dbg !4149
  %135 = mul i64 %131, %70, !dbg !4149
  call void @llvm.dbg.value(metadata i64 %135, metadata !4138, metadata !DIExpression()) #34, !dbg !4147
  %136 = select i1 %134, i64 -1, i64 %135, !dbg !4147
  %137 = or i1 %132, %134, !dbg !4150
  call void @llvm.dbg.value(metadata i1 %137, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i1 %137, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4147
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4147
  %138 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %136) #34, !dbg !4149
  %139 = extractvalue { i64, i1 } %138, 1, !dbg !4149
  %140 = mul i64 %136, %70, !dbg !4149
  call void @llvm.dbg.value(metadata i64 %140, metadata !4138, metadata !DIExpression()) #34, !dbg !4147
  %141 = select i1 %139, i64 -1, i64 %140, !dbg !4147
  %142 = or i1 %137, %139, !dbg !4150
  call void @llvm.dbg.value(metadata i1 %142, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i1 %142, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4147
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4147
  %143 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %141) #34, !dbg !4149
  %144 = extractvalue { i64, i1 } %143, 1, !dbg !4149
  %145 = mul i64 %141, %70, !dbg !4149
  call void @llvm.dbg.value(metadata i64 %145, metadata !4138, metadata !DIExpression()) #34, !dbg !4147
  %146 = select i1 %144, i64 -1, i64 %145, !dbg !4147
  %147 = or i1 %142, %144, !dbg !4150
  %148 = zext i1 %147 to i32, !dbg !4150
  call void @llvm.dbg.value(metadata i32 %148, metadata !4121, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4145
  br label %373, !dbg !4144

149:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4121, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 9, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 8, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4153
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4153
  %150 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4155
  %151 = extractvalue { i64, i1 } %150, 1, !dbg !4155
  %152 = mul i64 %47, %70, !dbg !4155
  call void @llvm.dbg.value(metadata i64 %152, metadata !4138, metadata !DIExpression()) #34, !dbg !4153
  %153 = select i1 %151, i64 -1, i64 %152, !dbg !4153
  call void @llvm.dbg.value(metadata i1 %151, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 8, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i1 %151, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 8, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 7, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4153
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4153
  %154 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %153) #34, !dbg !4155
  %155 = extractvalue { i64, i1 } %154, 1, !dbg !4155
  %156 = mul i64 %153, %70, !dbg !4155
  call void @llvm.dbg.value(metadata i64 %156, metadata !4138, metadata !DIExpression()) #34, !dbg !4153
  %157 = select i1 %155, i64 -1, i64 %156, !dbg !4153
  %158 = or i1 %151, %155, !dbg !4156
  call void @llvm.dbg.value(metadata i1 %158, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 7, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i1 %158, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 7, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 6, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4153
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4153
  %159 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %157) #34, !dbg !4155
  %160 = extractvalue { i64, i1 } %159, 1, !dbg !4155
  %161 = mul i64 %157, %70, !dbg !4155
  call void @llvm.dbg.value(metadata i64 %161, metadata !4138, metadata !DIExpression()) #34, !dbg !4153
  %162 = select i1 %160, i64 -1, i64 %161, !dbg !4153
  %163 = or i1 %158, %160, !dbg !4156
  call void @llvm.dbg.value(metadata i1 %163, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 6, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i1 %163, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 6, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4153
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4153
  %164 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %162) #34, !dbg !4155
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !4155
  %166 = mul i64 %162, %70, !dbg !4155
  call void @llvm.dbg.value(metadata i64 %166, metadata !4138, metadata !DIExpression()) #34, !dbg !4153
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4153
  %168 = or i1 %163, %165, !dbg !4156
  call void @llvm.dbg.value(metadata i1 %168, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i1 %168, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4153
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4153
  %169 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %167) #34, !dbg !4155
  %170 = extractvalue { i64, i1 } %169, 1, !dbg !4155
  %171 = mul i64 %167, %70, !dbg !4155
  call void @llvm.dbg.value(metadata i64 %171, metadata !4138, metadata !DIExpression()) #34, !dbg !4153
  %172 = select i1 %170, i64 -1, i64 %171, !dbg !4153
  %173 = or i1 %168, %170, !dbg !4156
  call void @llvm.dbg.value(metadata i1 %173, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i1 %173, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4153
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4153
  %174 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %172) #34, !dbg !4155
  %175 = extractvalue { i64, i1 } %174, 1, !dbg !4155
  %176 = mul i64 %172, %70, !dbg !4155
  call void @llvm.dbg.value(metadata i64 %176, metadata !4138, metadata !DIExpression()) #34, !dbg !4153
  %177 = select i1 %175, i64 -1, i64 %176, !dbg !4153
  %178 = or i1 %173, %175, !dbg !4156
  call void @llvm.dbg.value(metadata i1 %178, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i1 %178, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4153
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4153
  %179 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %177) #34, !dbg !4155
  %180 = extractvalue { i64, i1 } %179, 1, !dbg !4155
  %181 = mul i64 %177, %70, !dbg !4155
  call void @llvm.dbg.value(metadata i64 %181, metadata !4138, metadata !DIExpression()) #34, !dbg !4153
  %182 = select i1 %180, i64 -1, i64 %181, !dbg !4153
  %183 = or i1 %178, %180, !dbg !4156
  call void @llvm.dbg.value(metadata i1 %183, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i1 %183, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4153
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4153
  %184 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %182) #34, !dbg !4155
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !4155
  %186 = mul i64 %182, %70, !dbg !4155
  call void @llvm.dbg.value(metadata i64 %186, metadata !4138, metadata !DIExpression()) #34, !dbg !4153
  %187 = select i1 %185, i64 -1, i64 %186, !dbg !4153
  %188 = or i1 %183, %185, !dbg !4156
  call void @llvm.dbg.value(metadata i1 %188, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i1 %188, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4153
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4153
  %189 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %187) #34, !dbg !4155
  %190 = extractvalue { i64, i1 } %189, 1, !dbg !4155
  %191 = mul i64 %187, %70, !dbg !4155
  call void @llvm.dbg.value(metadata i64 %191, metadata !4138, metadata !DIExpression()) #34, !dbg !4153
  %192 = select i1 %190, i64 -1, i64 %191, !dbg !4153
  %193 = or i1 %188, %190, !dbg !4156
  %194 = zext i1 %193 to i32, !dbg !4156
  call void @llvm.dbg.value(metadata i32 %194, metadata !4121, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4151
  br label %373, !dbg !4144

195:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4121, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 10, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 9, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4159
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4159
  %196 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4161
  %197 = extractvalue { i64, i1 } %196, 1, !dbg !4161
  %198 = mul i64 %47, %70, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %198, metadata !4138, metadata !DIExpression()) #34, !dbg !4159
  %199 = select i1 %197, i64 -1, i64 %198, !dbg !4159
  call void @llvm.dbg.value(metadata i1 %197, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 9, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i1 %197, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 9, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 8, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4159
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4159
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %199) #34, !dbg !4161
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4161
  %202 = mul i64 %199, %70, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %202, metadata !4138, metadata !DIExpression()) #34, !dbg !4159
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4159
  %204 = or i1 %197, %201, !dbg !4162
  call void @llvm.dbg.value(metadata i1 %204, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 8, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i1 %204, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 8, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 7, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4159
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4159
  %205 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %203) #34, !dbg !4161
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !4161
  %207 = mul i64 %203, %70, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %207, metadata !4138, metadata !DIExpression()) #34, !dbg !4159
  %208 = select i1 %206, i64 -1, i64 %207, !dbg !4159
  %209 = or i1 %204, %206, !dbg !4162
  call void @llvm.dbg.value(metadata i1 %209, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 7, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i1 %209, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 7, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 6, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4159
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4159
  %210 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %208) #34, !dbg !4161
  %211 = extractvalue { i64, i1 } %210, 1, !dbg !4161
  %212 = mul i64 %208, %70, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %212, metadata !4138, metadata !DIExpression()) #34, !dbg !4159
  %213 = select i1 %211, i64 -1, i64 %212, !dbg !4159
  %214 = or i1 %209, %211, !dbg !4162
  call void @llvm.dbg.value(metadata i1 %214, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 6, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i1 %214, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 6, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4159
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4159
  %215 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %213) #34, !dbg !4161
  %216 = extractvalue { i64, i1 } %215, 1, !dbg !4161
  %217 = mul i64 %213, %70, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %217, metadata !4138, metadata !DIExpression()) #34, !dbg !4159
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4159
  %219 = or i1 %214, %216, !dbg !4162
  call void @llvm.dbg.value(metadata i1 %219, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i1 %219, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4159
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4159
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %218) #34, !dbg !4161
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4161
  %222 = mul i64 %218, %70, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %222, metadata !4138, metadata !DIExpression()) #34, !dbg !4159
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4159
  %224 = or i1 %219, %221, !dbg !4162
  call void @llvm.dbg.value(metadata i1 %224, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i1 %224, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4159
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4159
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %223) #34, !dbg !4161
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4161
  %227 = mul i64 %223, %70, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %227, metadata !4138, metadata !DIExpression()) #34, !dbg !4159
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4159
  %229 = or i1 %224, %226, !dbg !4162
  call void @llvm.dbg.value(metadata i1 %229, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i1 %229, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4159
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4159
  %230 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %228) #34, !dbg !4161
  %231 = extractvalue { i64, i1 } %230, 1, !dbg !4161
  %232 = mul i64 %228, %70, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %232, metadata !4138, metadata !DIExpression()) #34, !dbg !4159
  %233 = select i1 %231, i64 -1, i64 %232, !dbg !4159
  %234 = or i1 %229, %231, !dbg !4162
  call void @llvm.dbg.value(metadata i1 %234, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i1 %234, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4159
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4159
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %233) #34, !dbg !4161
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !4161
  %237 = mul i64 %233, %70, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %237, metadata !4138, metadata !DIExpression()) #34, !dbg !4159
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !4159
  %239 = or i1 %234, %236, !dbg !4162
  call void @llvm.dbg.value(metadata i1 %239, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i1 %239, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4159
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4159
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %238) #34, !dbg !4161
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4161
  %242 = mul i64 %238, %70, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %242, metadata !4138, metadata !DIExpression()) #34, !dbg !4159
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4159
  %244 = or i1 %239, %241, !dbg !4162
  %245 = zext i1 %244 to i32, !dbg !4162
  call void @llvm.dbg.value(metadata i32 %245, metadata !4121, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4157
  br label %373, !dbg !4144

246:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4121, metadata !DIExpression()) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression()) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression()) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4165
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4165
  %247 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4167
  %248 = extractvalue { i64, i1 } %247, 1, !dbg !4167
  %249 = mul i64 %47, %70, !dbg !4167
  call void @llvm.dbg.value(metadata i64 %249, metadata !4138, metadata !DIExpression()) #34, !dbg !4165
  %250 = select i1 %248, i64 -1, i64 %249, !dbg !4165
  call void @llvm.dbg.value(metadata i1 %248, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i1 %248, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression()) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression()) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4165
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4165
  %251 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %250) #34, !dbg !4167
  %252 = extractvalue { i64, i1 } %251, 1, !dbg !4167
  %253 = mul i64 %250, %70, !dbg !4167
  call void @llvm.dbg.value(metadata i64 %253, metadata !4138, metadata !DIExpression()) #34, !dbg !4165
  %254 = select i1 %252, i64 -1, i64 %253, !dbg !4165
  %255 = or i1 %248, %252, !dbg !4168
  call void @llvm.dbg.value(metadata i1 %255, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i1 %255, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression()) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4165
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4165
  %256 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %254) #34, !dbg !4167
  %257 = extractvalue { i64, i1 } %256, 1, !dbg !4167
  %258 = mul i64 %254, %70, !dbg !4167
  call void @llvm.dbg.value(metadata i64 %258, metadata !4138, metadata !DIExpression()) #34, !dbg !4165
  %259 = select i1 %257, i64 -1, i64 %258, !dbg !4165
  %260 = or i1 %255, %257, !dbg !4168
  call void @llvm.dbg.value(metadata i1 %260, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i1 %260, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4165
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4165
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %259) #34, !dbg !4167
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !4167
  %263 = mul i64 %259, %70, !dbg !4167
  call void @llvm.dbg.value(metadata i64 %263, metadata !4138, metadata !DIExpression()) #34, !dbg !4165
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !4165
  %265 = or i1 %260, %262, !dbg !4168
  call void @llvm.dbg.value(metadata i1 %265, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i1 %265, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression()) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4165
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4165
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %264) #34, !dbg !4167
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4167
  %268 = mul i64 %264, %70, !dbg !4167
  call void @llvm.dbg.value(metadata i64 %268, metadata !4138, metadata !DIExpression()) #34, !dbg !4165
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4165
  %270 = or i1 %265, %267, !dbg !4168
  %271 = zext i1 %270 to i32, !dbg !4168
  call void @llvm.dbg.value(metadata i32 %271, metadata !4121, metadata !DIExpression()) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4163
  br label %373, !dbg !4144

272:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4121, metadata !DIExpression()) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 6, metadata !4128, metadata !DIExpression()) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression()) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4171
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4171
  %273 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4173
  %274 = extractvalue { i64, i1 } %273, 1, !dbg !4173
  %275 = mul i64 %47, %70, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %275, metadata !4138, metadata !DIExpression()) #34, !dbg !4171
  %276 = select i1 %274, i64 -1, i64 %275, !dbg !4171
  call void @llvm.dbg.value(metadata i1 %274, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i1 %274, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 5, metadata !4128, metadata !DIExpression()) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression()) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4171
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4171
  %277 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %276) #34, !dbg !4173
  %278 = extractvalue { i64, i1 } %277, 1, !dbg !4173
  %279 = mul i64 %276, %70, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %279, metadata !4138, metadata !DIExpression()) #34, !dbg !4171
  %280 = select i1 %278, i64 -1, i64 %279, !dbg !4171
  %281 = or i1 %274, %278, !dbg !4174
  call void @llvm.dbg.value(metadata i1 %281, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i1 %281, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression()) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression()) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4171
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4171
  %282 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %280) #34, !dbg !4173
  %283 = extractvalue { i64, i1 } %282, 1, !dbg !4173
  %284 = mul i64 %280, %70, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %284, metadata !4138, metadata !DIExpression()) #34, !dbg !4171
  %285 = select i1 %283, i64 -1, i64 %284, !dbg !4171
  %286 = or i1 %281, %283, !dbg !4174
  call void @llvm.dbg.value(metadata i1 %286, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i1 %286, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression()) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4171
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4171
  %287 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %285) #34, !dbg !4173
  %288 = extractvalue { i64, i1 } %287, 1, !dbg !4173
  %289 = mul i64 %285, %70, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %289, metadata !4138, metadata !DIExpression()) #34, !dbg !4171
  %290 = select i1 %288, i64 -1, i64 %289, !dbg !4171
  %291 = or i1 %286, %288, !dbg !4174
  call void @llvm.dbg.value(metadata i1 %291, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i1 %291, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4171
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4171
  %292 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %290) #34, !dbg !4173
  %293 = extractvalue { i64, i1 } %292, 1, !dbg !4173
  %294 = mul i64 %290, %70, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %294, metadata !4138, metadata !DIExpression()) #34, !dbg !4171
  %295 = select i1 %293, i64 -1, i64 %294, !dbg !4171
  %296 = or i1 %291, %293, !dbg !4174
  call void @llvm.dbg.value(metadata i1 %296, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i1 %296, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression()) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4171
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4171
  %297 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %295) #34, !dbg !4173
  %298 = extractvalue { i64, i1 } %297, 1, !dbg !4173
  %299 = mul i64 %295, %70, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %299, metadata !4138, metadata !DIExpression()) #34, !dbg !4171
  %300 = select i1 %298, i64 -1, i64 %299, !dbg !4171
  %301 = or i1 %296, %298, !dbg !4174
  %302 = zext i1 %301 to i32, !dbg !4174
  call void @llvm.dbg.value(metadata i32 %302, metadata !4121, metadata !DIExpression()) #34, !dbg !4169
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4169
  br label %373, !dbg !4144

303:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4175
  call void @llvm.dbg.value(metadata i32 512, metadata !4137, metadata !DIExpression()) #34, !dbg !4175
  %304 = icmp ugt i64 %47, 36028797018963967, !dbg !4177
  %305 = shl i64 %47, 9, !dbg !4177
  call void @llvm.dbg.value(metadata i64 %305, metadata !4138, metadata !DIExpression()) #34, !dbg !4175
  %306 = select i1 %304, i64 -1, i64 %305, !dbg !4175
  %307 = zext i1 %304 to i32, !dbg !4175
  call void @llvm.dbg.value(metadata i32 %307, metadata !4055, metadata !DIExpression()), !dbg !4106
  br label %373, !dbg !4178

308:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4179
  call void @llvm.dbg.value(metadata i32 1024, metadata !4137, metadata !DIExpression()) #34, !dbg !4179
  %309 = icmp ugt i64 %47, 18014398509481983, !dbg !4181
  %310 = shl i64 %47, 10, !dbg !4181
  call void @llvm.dbg.value(metadata i64 %310, metadata !4138, metadata !DIExpression()) #34, !dbg !4179
  %311 = select i1 %309, i64 -1, i64 %310, !dbg !4179
  %312 = zext i1 %309 to i32, !dbg !4179
  call void @llvm.dbg.value(metadata i32 %312, metadata !4055, metadata !DIExpression()), !dbg !4106
  br label %373, !dbg !4182

313:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4126, metadata !DIExpression()) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i32 undef, metadata !4127, metadata !DIExpression()) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i32 0, metadata !4121, metadata !DIExpression()) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i32 0, metadata !4121, metadata !DIExpression()) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression()) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4185
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4185
  %314 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4187
  %315 = extractvalue { i64, i1 } %314, 1, !dbg !4187
  %316 = mul i64 %47, %70, !dbg !4187
  call void @llvm.dbg.value(metadata i64 %316, metadata !4138, metadata !DIExpression()) #34, !dbg !4185
  %317 = select i1 %315, i64 -1, i64 %316, !dbg !4185
  call void @llvm.dbg.value(metadata i1 %315, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i1 %315, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4185
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4185
  %318 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %317) #34, !dbg !4187
  %319 = extractvalue { i64, i1 } %318, 1, !dbg !4187
  %320 = mul i64 %317, %70, !dbg !4187
  call void @llvm.dbg.value(metadata i64 %320, metadata !4138, metadata !DIExpression()) #34, !dbg !4185
  %321 = select i1 %319, i64 -1, i64 %320, !dbg !4185
  %322 = or i1 %315, %319, !dbg !4188
  call void @llvm.dbg.value(metadata i1 %322, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i1 %322, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression()) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4185
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4185
  %323 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %321) #34, !dbg !4187
  %324 = extractvalue { i64, i1 } %323, 1, !dbg !4187
  %325 = mul i64 %321, %70, !dbg !4187
  call void @llvm.dbg.value(metadata i64 %325, metadata !4138, metadata !DIExpression()) #34, !dbg !4185
  %326 = select i1 %324, i64 -1, i64 %325, !dbg !4185
  %327 = or i1 %322, %324, !dbg !4188
  %328 = zext i1 %327 to i32, !dbg !4188
  call void @llvm.dbg.value(metadata i32 %328, metadata !4121, metadata !DIExpression()) #34, !dbg !4183
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4183
  br label %373, !dbg !4144

329:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4126, metadata !DIExpression()) #34, !dbg !4189
  call void @llvm.dbg.value(metadata i32 undef, metadata !4127, metadata !DIExpression()) #34, !dbg !4189
  call void @llvm.dbg.value(metadata i32 0, metadata !4121, metadata !DIExpression()) #34, !dbg !4189
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4189
  call void @llvm.dbg.value(metadata i32 0, metadata !4121, metadata !DIExpression()) #34, !dbg !4189
  call void @llvm.dbg.value(metadata i32 undef, metadata !4128, metadata !DIExpression()) #34, !dbg !4189
  call void @llvm.dbg.value(metadata i32 undef, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4189
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4191
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4191
  %330 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4193
  %331 = extractvalue { i64, i1 } %330, 1, !dbg !4193
  %332 = mul i64 %47, %70, !dbg !4193
  call void @llvm.dbg.value(metadata i64 %332, metadata !4138, metadata !DIExpression()) #34, !dbg !4191
  %333 = select i1 %331, i64 -1, i64 %332, !dbg !4191
  %334 = zext i1 %331 to i32, !dbg !4191
  call void @llvm.dbg.value(metadata i32 %334, metadata !4121, metadata !DIExpression()) #34, !dbg !4189
  call void @llvm.dbg.value(metadata i32 undef, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4189
  br label %373, !dbg !4144

335:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4126, metadata !DIExpression()) #34, !dbg !4194
  call void @llvm.dbg.value(metadata i32 undef, metadata !4127, metadata !DIExpression()) #34, !dbg !4194
  call void @llvm.dbg.value(metadata i32 0, metadata !4121, metadata !DIExpression()) #34, !dbg !4194
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4194
  call void @llvm.dbg.value(metadata i32 0, metadata !4121, metadata !DIExpression()) #34, !dbg !4194
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4194
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4194
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4196
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4196
  %336 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4198
  %337 = extractvalue { i64, i1 } %336, 1, !dbg !4198
  %338 = mul i64 %47, %70, !dbg !4198
  call void @llvm.dbg.value(metadata i64 %338, metadata !4138, metadata !DIExpression()) #34, !dbg !4196
  %339 = select i1 %337, i64 -1, i64 %338, !dbg !4196
  call void @llvm.dbg.value(metadata i1 %337, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4194
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4194
  call void @llvm.dbg.value(metadata i1 %337, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4194
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4194
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression()) #34, !dbg !4194
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4196
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4196
  %340 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %339) #34, !dbg !4198
  %341 = extractvalue { i64, i1 } %340, 1, !dbg !4198
  %342 = mul i64 %339, %70, !dbg !4198
  call void @llvm.dbg.value(metadata i64 %342, metadata !4138, metadata !DIExpression()) #34, !dbg !4196
  %343 = select i1 %341, i64 -1, i64 %342, !dbg !4196
  %344 = or i1 %337, %341, !dbg !4199
  %345 = zext i1 %344 to i32, !dbg !4199
  call void @llvm.dbg.value(metadata i32 %345, metadata !4121, metadata !DIExpression()) #34, !dbg !4194
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4194
  br label %373, !dbg !4144

346:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4126, metadata !DIExpression()) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 undef, metadata !4127, metadata !DIExpression()) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 0, metadata !4121, metadata !DIExpression()) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 0, metadata !4121, metadata !DIExpression()) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 4, metadata !4128, metadata !DIExpression()) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression()) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4202
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4202
  %347 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4204
  %348 = extractvalue { i64, i1 } %347, 1, !dbg !4204
  %349 = mul i64 %47, %70, !dbg !4204
  call void @llvm.dbg.value(metadata i64 %349, metadata !4138, metadata !DIExpression()) #34, !dbg !4202
  %350 = select i1 %348, i64 -1, i64 %349, !dbg !4202
  call void @llvm.dbg.value(metadata i1 %348, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i1 %348, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 3, metadata !4128, metadata !DIExpression()) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4202
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4202
  %351 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %350) #34, !dbg !4204
  %352 = extractvalue { i64, i1 } %351, 1, !dbg !4204
  %353 = mul i64 %350, %70, !dbg !4204
  call void @llvm.dbg.value(metadata i64 %353, metadata !4138, metadata !DIExpression()) #34, !dbg !4202
  %354 = select i1 %352, i64 -1, i64 %353, !dbg !4202
  %355 = or i1 %348, %352, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %355, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i1 %355, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 2, metadata !4128, metadata !DIExpression()) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4202
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4202
  %356 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %354) #34, !dbg !4204
  %357 = extractvalue { i64, i1 } %356, 1, !dbg !4204
  %358 = mul i64 %354, %70, !dbg !4204
  call void @llvm.dbg.value(metadata i64 %358, metadata !4138, metadata !DIExpression()) #34, !dbg !4202
  %359 = select i1 %357, i64 -1, i64 %358, !dbg !4202
  %360 = or i1 %355, %357, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %360, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i1 %360, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 1, metadata !4128, metadata !DIExpression()) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression()) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4202
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()) #34, !dbg !4202
  %361 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %359) #34, !dbg !4204
  %362 = extractvalue { i64, i1 } %361, 1, !dbg !4204
  %363 = mul i64 %359, %70, !dbg !4204
  call void @llvm.dbg.value(metadata i64 %363, metadata !4138, metadata !DIExpression()) #34, !dbg !4202
  %364 = select i1 %362, i64 -1, i64 %363, !dbg !4202
  %365 = or i1 %360, %362, !dbg !4205
  %366 = zext i1 %365 to i32, !dbg !4205
  call void @llvm.dbg.value(metadata i32 %366, metadata !4121, metadata !DIExpression()) #34, !dbg !4200
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4200
  br label %373, !dbg !4144

367:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4132, metadata !DIExpression()) #34, !dbg !4206
  call void @llvm.dbg.value(metadata i32 2, metadata !4137, metadata !DIExpression()) #34, !dbg !4206
  %368 = shl i64 %47, 1, !dbg !4208
  call void @llvm.dbg.value(metadata i64 %368, metadata !4138, metadata !DIExpression()) #34, !dbg !4206
  %369 = icmp sgt i64 %47, -1, !dbg !4206
  %370 = select i1 %369, i64 %368, i64 -1, !dbg !4206
  %371 = lshr i64 %47, 63, !dbg !4206
  %372 = trunc i64 %371 to i32, !dbg !4206
  call void @llvm.dbg.value(metadata i32 %372, metadata !4055, metadata !DIExpression()), !dbg !4106
  br label %373, !dbg !4209

373:                                              ; preds = %72, %108, %346, %149, %195, %246, %335, %329, %313, %272, %303, %308, %367, %69
  %374 = phi i64 [ %370, %367 ], [ %47, %69 ], [ %311, %308 ], [ %306, %303 ], [ %300, %272 ], [ %326, %313 ], [ %333, %329 ], [ %343, %335 ], [ %269, %246 ], [ %243, %195 ], [ %192, %149 ], [ %364, %346 ], [ %146, %108 ], [ %105, %72 ], !dbg !4056
  %375 = phi i32 [ %372, %367 ], [ 0, %69 ], [ %312, %308 ], [ %307, %303 ], [ %302, %272 ], [ %328, %313 ], [ %334, %329 ], [ %345, %335 ], [ %271, %246 ], [ %245, %195 ], [ %194, %149 ], [ %366, %346 ], [ %148, %108 ], [ %107, %72 ], !dbg !4210
  call void @llvm.dbg.value(metadata i32 %375, metadata !4055, metadata !DIExpression()), !dbg !4106
  %376 = or i32 %375, %46, !dbg !4144
  call void @llvm.dbg.value(metadata i32 %376, metadata !4050, metadata !DIExpression()), !dbg !4056
  %377 = getelementptr inbounds i8, i8* %27, i64 %71, !dbg !4211
  store i8* %377, i8** %21, align 8, !dbg !4211, !tbaa !555
  %378 = load i8, i8* %377, align 1, !dbg !4212, !tbaa !658
  %379 = icmp eq i8 %378, 0, !dbg !4212
  %380 = or i32 %376, 2
  %381 = select i1 %379, i32 %376, i32 %380, !dbg !4214
  call void @llvm.dbg.value(metadata i32 %46, metadata !4050, metadata !DIExpression()), !dbg !4056
  br label %384

382:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64 %26, metadata !4049, metadata !DIExpression()), !dbg !4056
  store i64 %47, i64* %3, align 8, !dbg !4215, !tbaa !2788
  %383 = or i32 %46, 2, !dbg !4216
  call void @llvm.dbg.value(metadata i32 %46, metadata !4050, metadata !DIExpression()), !dbg !4056
  br label %387

384:                                              ; preds = %373, %45
  %385 = phi i64 [ %47, %45 ], [ %374, %373 ], !dbg !4217
  %386 = phi i32 [ %46, %45 ], [ %381, %373 ], !dbg !4218
  call void @llvm.dbg.value(metadata i32 %386, metadata !4050, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i64 %385, metadata !4049, metadata !DIExpression()), !dbg !4056
  store i64 %385, i64* %3, align 8, !dbg !4219, !tbaa !2788
  br label %387, !dbg !4220

387:                                              ; preds = %44, %54, %384, %34, %31, %29, %38, %382, %23
  %388 = phi i32 [ 4, %23 ], [ %386, %384 ], [ %383, %382 ], [ %55, %54 ], [ %42, %44 ], [ 4, %34 ], [ 4, %31 ], [ 4, %29 ], [ 4, %38 ], !dbg !4056
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #34, !dbg !4221
  ret i32 %388, !dbg !4221
}

; Function Attrs: nounwind
declare !dbg !4222 i64 @strtoumax(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1) local_unnamed_addr #12 !dbg !4227 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !4265, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i8* %1, metadata !4266, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i32 0, metadata !4267, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i32 0, metadata !4268, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i8 0, metadata !4269, metadata !DIExpression()), !dbg !4289
  %4 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 0, !dbg !4290
  call void @llvm.lifetime.start.p0i8(i64 81, i8* nonnull %4) #34, !dbg !4290
  call void @llvm.dbg.declare(metadata [81 x i8]* %3, metadata !4270, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i8* %1, metadata !4274, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i8* %4, metadata !4276, metadata !DIExpression()), !dbg !4292
  %5 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 80
  br label %6, !dbg !4293

6:                                                ; preds = %47, %2
  %7 = phi i1 [ false, %2 ], [ %48, %47 ]
  %8 = phi i8* [ %1, %2 ], [ %52, %47 ], !dbg !4292
  %9 = phi i8* [ %4, %2 ], [ %49, %47 ], !dbg !4294
  %10 = phi i32 [ 0, %2 ], [ %50, %47 ], !dbg !4289
  %11 = phi i32 [ 0, %2 ], [ %51, %47 ], !dbg !4295
  call void @llvm.dbg.value(metadata i32 %11, metadata !4267, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i32 %10, metadata !4268, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i8* %9, metadata !4276, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i8* %8, metadata !4274, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i8 poison, metadata !4269, metadata !DIExpression()), !dbg !4289
  %12 = load i8, i8* %8, align 1, !dbg !4296, !tbaa !658
  switch i8 %12, label %39 [
    i8 0, label %53
    i8 114, label %13
    i8 119, label %17
    i8 97, label %22
    i8 98, label %27
    i8 43, label %31
    i8 120, label %35
    i8 101, label %37
  ], !dbg !4297

13:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !4267, metadata !DIExpression()), !dbg !4289
  %14 = icmp ult i8* %9, %5, !dbg !4298
  br i1 %14, label %15, label %47, !dbg !4301

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4302
  call void @llvm.dbg.value(metadata i8* %16, metadata !4276, metadata !DIExpression()), !dbg !4292
  store i8 114, i8* %9, align 1, !dbg !4303, !tbaa !658
  br label %47, !dbg !4304

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4267, metadata !DIExpression()), !dbg !4289
  %18 = or i32 %10, 576, !dbg !4305
  call void @llvm.dbg.value(metadata i32 %18, metadata !4268, metadata !DIExpression()), !dbg !4289
  %19 = icmp ult i8* %9, %5, !dbg !4306
  br i1 %19, label %20, label %47, !dbg !4308

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4309
  call void @llvm.dbg.value(metadata i8* %21, metadata !4276, metadata !DIExpression()), !dbg !4292
  store i8 119, i8* %9, align 1, !dbg !4310, !tbaa !658
  br label %47, !dbg !4311

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4267, metadata !DIExpression()), !dbg !4289
  %23 = or i32 %10, 1088, !dbg !4312
  call void @llvm.dbg.value(metadata i32 %23, metadata !4268, metadata !DIExpression()), !dbg !4289
  %24 = icmp ult i8* %9, %5, !dbg !4313
  br i1 %24, label %25, label %47, !dbg !4315

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4316
  call void @llvm.dbg.value(metadata i8* %26, metadata !4276, metadata !DIExpression()), !dbg !4292
  store i8 97, i8* %9, align 1, !dbg !4317, !tbaa !658
  br label %47, !dbg !4318

27:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 %10, metadata !4268, metadata !DIExpression()), !dbg !4289
  %28 = icmp ult i8* %9, %5, !dbg !4319
  br i1 %28, label %29, label %47, !dbg !4321

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4322
  call void @llvm.dbg.value(metadata i8* %30, metadata !4276, metadata !DIExpression()), !dbg !4292
  store i8 98, i8* %9, align 1, !dbg !4323, !tbaa !658
  br label %47, !dbg !4324

31:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 2, metadata !4267, metadata !DIExpression()), !dbg !4289
  %32 = icmp ult i8* %9, %5, !dbg !4325
  br i1 %32, label %33, label %47, !dbg !4327

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4328
  call void @llvm.dbg.value(metadata i8* %34, metadata !4276, metadata !DIExpression()), !dbg !4292
  store i8 43, i8* %9, align 1, !dbg !4329, !tbaa !658
  br label %47, !dbg !4330

35:                                               ; preds = %6
  %36 = or i32 %10, 128, !dbg !4331
  call void @llvm.dbg.value(metadata i32 %36, metadata !4268, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i8 1, metadata !4269, metadata !DIExpression()), !dbg !4289
  br label %47, !dbg !4332

37:                                               ; preds = %6
  %38 = or i32 %10, 524288, !dbg !4333
  call void @llvm.dbg.value(metadata i32 %38, metadata !4268, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i8 1, metadata !4269, metadata !DIExpression()), !dbg !4289
  br label %47, !dbg !4334

39:                                               ; preds = %6
  %40 = call i64 @strlen(i8* noundef nonnull %8) #35, !dbg !4335
  call void @llvm.dbg.value(metadata i64 %40, metadata !4277, metadata !DIExpression()), !dbg !4336
  %41 = ptrtoint i8* %5 to i64, !dbg !4337
  %42 = ptrtoint i8* %9 to i64, !dbg !4337
  %43 = sub i64 %41, %42, !dbg !4337
  %44 = icmp ugt i64 %40, %43, !dbg !4339
  %45 = select i1 %44, i64 %43, i64 %40, !dbg !4340
  call void @llvm.dbg.value(metadata i64 %45, metadata !4277, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i8* %9, metadata !4341, metadata !DIExpression()) #34, !dbg !4346
  call void @llvm.dbg.value(metadata i8* %8, metadata !4344, metadata !DIExpression()) #34, !dbg !4346
  call void @llvm.dbg.value(metadata i64 %45, metadata !4345, metadata !DIExpression()) #34, !dbg !4346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %9, i8* noundef nonnull align 1 %8, i64 noundef %45, i1 noundef false) #34, !dbg !4348
  %46 = getelementptr inbounds i8, i8* %9, i64 %45, !dbg !4349
  call void @llvm.dbg.value(metadata i8* %46, metadata !4276, metadata !DIExpression()), !dbg !4292
  br label %53, !dbg !4350

47:                                               ; preds = %31, %33, %27, %29, %22, %25, %17, %20, %13, %15, %37, %35
  %48 = phi i1 [ true, %37 ], [ true, %35 ], [ %7, %33 ], [ %7, %31 ], [ %7, %29 ], [ %7, %27 ], [ %7, %25 ], [ %7, %22 ], [ %7, %20 ], [ %7, %17 ], [ %7, %15 ], [ %7, %13 ]
  %49 = phi i8* [ %9, %37 ], [ %9, %35 ], [ %34, %33 ], [ %9, %31 ], [ %30, %29 ], [ %9, %27 ], [ %26, %25 ], [ %9, %22 ], [ %21, %20 ], [ %9, %17 ], [ %16, %15 ], [ %9, %13 ], !dbg !4292
  %50 = phi i32 [ %38, %37 ], [ %36, %35 ], [ %10, %33 ], [ %10, %31 ], [ %10, %29 ], [ %10, %27 ], [ %23, %25 ], [ %23, %22 ], [ %18, %20 ], [ %18, %17 ], [ %10, %15 ], [ %10, %13 ], !dbg !4289
  %51 = phi i32 [ %11, %37 ], [ %11, %35 ], [ 2, %33 ], [ 2, %31 ], [ %11, %29 ], [ %11, %27 ], [ 1, %25 ], [ 1, %22 ], [ 1, %20 ], [ 1, %17 ], [ 0, %15 ], [ 0, %13 ], !dbg !4289
  call void @llvm.dbg.value(metadata i32 %51, metadata !4267, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i32 %50, metadata !4268, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i8* %49, metadata !4276, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i8 poison, metadata !4269, metadata !DIExpression()), !dbg !4289
  %52 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4351
  call void @llvm.dbg.value(metadata i8* %52, metadata !4274, metadata !DIExpression()), !dbg !4292
  br label %6, !dbg !4352, !llvm.loop !4353

53:                                               ; preds = %6, %39
  %54 = phi i8* [ %46, %39 ], [ %9, %6 ], !dbg !4292
  call void @llvm.dbg.value(metadata i8* %54, metadata !4276, metadata !DIExpression()), !dbg !4292
  store i8 0, i8* %54, align 1, !dbg !4355, !tbaa !658
  br i1 %7, label %55, label %66, !dbg !4356

55:                                               ; preds = %53
  %56 = or i32 %11, %10, !dbg !4357
  %57 = call i32 (i8*, i32, ...) @open(i8* noundef nonnull %0, i32 noundef %56, i32 noundef 438) #34, !dbg !4358
  call void @llvm.dbg.value(metadata i32 %57, metadata !4282, metadata !DIExpression()), !dbg !4359
  %58 = icmp slt i32 %57, 0, !dbg !4360
  br i1 %58, label %68, label %59, !dbg !4362

59:                                               ; preds = %55
  %60 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %57, i8* noundef nonnull %4) #34, !dbg !4363
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %60, metadata !4285, metadata !DIExpression()), !dbg !4359
  %61 = icmp eq %struct._IO_FILE* %60, null, !dbg !4364
  br i1 %61, label %62, label %68, !dbg !4365

62:                                               ; preds = %59
  %63 = tail call i32* @__errno_location() #37, !dbg !4366
  %64 = load i32, i32* %63, align 4, !dbg !4366, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %64, metadata !4286, metadata !DIExpression()), !dbg !4367
  %65 = call i32 @close(i32 noundef %57) #34, !dbg !4368
  store i32 %64, i32* %63, align 4, !dbg !4369, !tbaa !649
  br label %68, !dbg !4370

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %0, metadata !4371, metadata !DIExpression()) #34, !dbg !4375
  call void @llvm.dbg.value(metadata i8* %1, metadata !4374, metadata !DIExpression()) #34, !dbg !4375
  %67 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #34, !dbg !4377
  br label %68, !dbg !4378

68:                                               ; preds = %55, %62, %59, %66
  %69 = phi %struct._IO_FILE* [ %67, %66 ], [ null, %55 ], [ null, %62 ], [ %60, %59 ], !dbg !4289
  call void @llvm.lifetime.end.p0i8(i64 81, i8* nonnull %4) #34, !dbg !4379
  ret %struct._IO_FILE* %69, !dbg !4379
}

; Function Attrs: nofree
declare !dbg !4380 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #31

; Function Attrs: nofree nounwind
declare !dbg !4383 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4386 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4387 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4425, metadata !DIExpression()), !dbg !4430
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #34, !dbg !4431
  call void @llvm.dbg.value(metadata i1 undef, metadata !4426, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4430
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4432, metadata !DIExpression()), !dbg !4435
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4437
  %4 = load i32, i32* %3, align 8, !dbg !4437, !tbaa !909
  %5 = and i32 %4, 32, !dbg !4438
  %6 = icmp eq i32 %5, 0, !dbg !4438
  call void @llvm.dbg.value(metadata i1 %6, metadata !4428, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4430
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #34, !dbg !4439
  %8 = icmp eq i32 %7, 0, !dbg !4440
  call void @llvm.dbg.value(metadata i1 %8, metadata !4429, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4430
  br i1 %6, label %9, label %19, !dbg !4441

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4443
  call void @llvm.dbg.value(metadata i1 %10, metadata !4426, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4430
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4444
  %12 = xor i1 %8, true, !dbg !4444
  %13 = sext i1 %12 to i32, !dbg !4444
  br i1 %11, label %22, label %14, !dbg !4444

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #37, !dbg !4445
  %16 = load i32, i32* %15, align 4, !dbg !4445, !tbaa !649
  %17 = icmp ne i32 %16, 9, !dbg !4446
  %18 = sext i1 %17 to i32, !dbg !4447
  br label %22, !dbg !4447

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4448

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #37, !dbg !4450
  store i32 0, i32* %21, align 4, !dbg !4452, !tbaa !649
  br label %22, !dbg !4450

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4430
  ret i32 %23, !dbg !4453
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4454 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4459, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata i8* %1, metadata !4460, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata i64 %2, metadata !4461, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4462, metadata !DIExpression()), !dbg !4464
  %5 = icmp eq i8* %1, null, !dbg !4465
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4467
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), i8* %1, !dbg !4467
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4467
  call void @llvm.dbg.value(metadata i64 %8, metadata !4461, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata i8* %7, metadata !4460, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata i32* %6, metadata !4459, metadata !DIExpression()), !dbg !4464
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4468
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4470
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4462, metadata !DIExpression()), !dbg !4464
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #34, !dbg !4471
  call void @llvm.dbg.value(metadata i64 %11, metadata !4463, metadata !DIExpression()), !dbg !4464
  %12 = icmp ult i64 %11, -3, !dbg !4472
  br i1 %12, label %13, label %18, !dbg !4474

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #35, !dbg !4475
  %15 = icmp eq i32 %14, 0, !dbg !4475
  br i1 %15, label %16, label %30, !dbg !4476

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4477, metadata !DIExpression()) #34, !dbg !4482
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4484, metadata !DIExpression()) #34, !dbg !4489
  call void @llvm.dbg.value(metadata i32 0, metadata !4487, metadata !DIExpression()) #34, !dbg !4489
  call void @llvm.dbg.value(metadata i64 8, metadata !4488, metadata !DIExpression()) #34, !dbg !4489
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4491
  store i64 0, i64* %17, align 1, !dbg !4491
  br label %30, !dbg !4492

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4493
  br i1 %19, label %20, label %21, !dbg !4495

20:                                               ; preds = %18
  tail call void @abort() #36, !dbg !4496
  unreachable, !dbg !4496

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4497

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #34, !dbg !4499
  br i1 %24, label %30, label %25, !dbg !4500

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4501
  br i1 %26, label %30, label %27, !dbg !4504

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4505, !tbaa !658
  %29 = zext i8 %28 to i32, !dbg !4506
  store i32 %29, i32* %6, align 4, !dbg !4507, !tbaa !649
  br label %30, !dbg !4508

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4464
  ret i64 %31, !dbg !4509
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4510 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4515 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4517, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i64 %1, metadata !4518, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i64 %2, metadata !4519, metadata !DIExpression()), !dbg !4521
  %4 = icmp eq i64 %2, 0, !dbg !4522
  br i1 %4, label %8, label %5, !dbg !4522

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4522
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4522
  br i1 %7, label %13, label %8, !dbg !4522

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4520, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4521
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4520, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4521
  %9 = mul i64 %2, %1, !dbg !4522
  call void @llvm.dbg.value(metadata i64 %9, metadata !4520, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i8* %0, metadata !4524, metadata !DIExpression()) #34, !dbg !4528
  call void @llvm.dbg.value(metadata i64 %9, metadata !4527, metadata !DIExpression()) #34, !dbg !4528
  %10 = icmp eq i64 %9, 0, !dbg !4530
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4530
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #34, !dbg !4531
  br label %15, !dbg !4532

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4520, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4521
  %14 = tail call i32* @__errno_location() #37, !dbg !4533
  store i32 12, i32* %14, align 4, !dbg !4535, !tbaa !649
  br label %15, !dbg !4536

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4521
  ret i8* %16, !dbg !4537
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4538 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4542, metadata !DIExpression()), !dbg !4547
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4548
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4548
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4543, metadata !DIExpression()), !dbg !4549
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #34, !dbg !4550
  %5 = icmp eq i32 %4, 0, !dbg !4550
  br i1 %5, label %6, label %13, !dbg !4552

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4553, metadata !DIExpression()) #34, !dbg !4557
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0), metadata !4556, metadata !DIExpression()) #34, !dbg !4557
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0), i64 2), !dbg !4560
  %8 = icmp eq i32 %7, 0, !dbg !4561
  br i1 %8, label %12, label %9, !dbg !4562

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4553, metadata !DIExpression()) #34, !dbg !4563
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), metadata !4556, metadata !DIExpression()) #34, !dbg !4563
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i64 6), !dbg !4565
  %11 = icmp eq i32 %10, 0, !dbg !4566
  br i1 %11, label %12, label %13, !dbg !4567

12:                                               ; preds = %9, %6
  br label %13, !dbg !4568

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4547
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4569
  ret i1 %14, !dbg !4569
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4570 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4574, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i8* %1, metadata !4575, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i64 %2, metadata !4576, metadata !DIExpression()), !dbg !4577
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #34, !dbg !4578
  ret i32 %4, !dbg !4579
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4580 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4584, metadata !DIExpression()), !dbg !4585
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #34, !dbg !4586
  ret i8* %2, !dbg !4587
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4588 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4590, metadata !DIExpression()), !dbg !4592
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4593
  call void @llvm.dbg.value(metadata i8* %2, metadata !4591, metadata !DIExpression()), !dbg !4592
  ret i8* %2, !dbg !4594
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4595 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4597, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i8* %1, metadata !4598, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i64 %2, metadata !4599, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i32 %0, metadata !4590, metadata !DIExpression()) #34, !dbg !4605
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4607
  call void @llvm.dbg.value(metadata i8* %4, metadata !4591, metadata !DIExpression()) #34, !dbg !4605
  call void @llvm.dbg.value(metadata i8* %4, metadata !4600, metadata !DIExpression()), !dbg !4604
  %5 = icmp eq i8* %4, null, !dbg !4608
  br i1 %5, label %6, label %9, !dbg !4609

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4610
  br i1 %7, label %19, label %8, !dbg !4613

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4614, !tbaa !658
  br label %19, !dbg !4615

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #35, !dbg !4616
  call void @llvm.dbg.value(metadata i64 %10, metadata !4601, metadata !DIExpression()), !dbg !4617
  %11 = icmp ult i64 %10, %2, !dbg !4618
  br i1 %11, label %12, label %14, !dbg !4620

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4621
  call void @llvm.dbg.value(metadata i8* %1, metadata !4623, metadata !DIExpression()) #34, !dbg !4628
  call void @llvm.dbg.value(metadata i8* %4, metadata !4626, metadata !DIExpression()) #34, !dbg !4628
  call void @llvm.dbg.value(metadata i64 %13, metadata !4627, metadata !DIExpression()) #34, !dbg !4628
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #34, !dbg !4630
  br label %19, !dbg !4631

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4632
  br i1 %15, label %19, label %16, !dbg !4635

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4636
  call void @llvm.dbg.value(metadata i8* %1, metadata !4623, metadata !DIExpression()) #34, !dbg !4638
  call void @llvm.dbg.value(metadata i8* %4, metadata !4626, metadata !DIExpression()) #34, !dbg !4638
  call void @llvm.dbg.value(metadata i64 %17, metadata !4627, metadata !DIExpression()) #34, !dbg !4638
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #34, !dbg !4640
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4641
  store i8 0, i8* %18, align 1, !dbg !4642, !tbaa !658
  br label %19, !dbg !4643

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4644
  ret i32 %20, !dbg !4645
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
attributes #13 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #14 = { argmemonly nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
attributes #22 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #24 = { argmemonly nofree nounwind willreturn writeonly }
attributes #25 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { nounwind }
attributes #35 = { nounwind readonly willreturn }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind readnone willreturn }
attributes #38 = { noreturn }
attributes #39 = { cold }
attributes #40 = { nounwind allocsize(1) }
attributes #41 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !254, !259, !266, !428, !448, !451, !453, !456, !458, !460, !307, !317, !345, !462, !420, !468, !499, !501, !512, !519, !521, !434, !523, !526, !528, !530}
!llvm.ident = !{!532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532}
!llvm.module.flags = !{!533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 56, type: !247, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !66, globals: !78, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/fold.c", directory: "/src", checksumkind: CSK_MD5, checksum: "eee9b3e52e2800e339faad5506a934a5")
!4 = !{!5, !11, !18, !33, !47, !56, !60, !63}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 43, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "COUNT_COLUMNS", value: 0)
!9 = !DIEnumerator(name: "COUNT_BYTES", value: 1)
!10 = !DIEnumerator(name: "COUNT_CHARACTERS", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 24, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "./lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!15 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!16 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!17 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 46, baseType: !6, size: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!21 = !DIEnumerator(name: "_ISupper", value: 256)
!22 = !DIEnumerator(name: "_ISlower", value: 512)
!23 = !DIEnumerator(name: "_ISalpha", value: 1024)
!24 = !DIEnumerator(name: "_ISdigit", value: 2048)
!25 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!26 = !DIEnumerator(name: "_ISspace", value: 8192)
!27 = !DIEnumerator(name: "_ISprint", value: 16384)
!28 = !DIEnumerator(name: "_ISgraph", value: 32768)
!29 = !DIEnumerator(name: "_ISblank", value: 1)
!30 = !DIEnumerator(name: "_IScntrl", value: 2)
!31 = !DIEnumerator(name: "_ISpunct", value: 4)
!32 = !DIEnumerator(name: "_ISalnum", value: 8)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !34, line: 42, baseType: !6, size: 32, elements: !35)
!34 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!36 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!37 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!38 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!39 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!40 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!41 = !DIEnumerator(name: "c_quoting_style", value: 5)
!42 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!43 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!44 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!45 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!46 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 44, baseType: !6, size: 32, elements: !49)
!48 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!49 = !{!50, !51, !52, !53, !54, !55}
!50 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!51 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!52 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!53 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!54 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!55 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 127, baseType: !6, size: 32, elements: !58)
!57 = !DIFile(filename: "./lib/mcel.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1a3948cda8366fd81b1605726e5920d0")
!58 = !{!59}
!59 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 131, baseType: !6, size: 32, elements: !61)
!61 = !{!62}
!62 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 130, baseType: !6, size: 32, elements: !64)
!64 = !{!65}
!65 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!66 = !{!67, !69, !70, !71, !72, !75, !77}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !73, line: 46, baseType: !74)
!73 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!74 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!77 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !{!79, !82, !84, !0, !170, !184, !186, !243, !245}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "break_spaces", scope: !2, file: !3, line: 40, type: !81, isLocal: true, isDefinition: true)
!81 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 51, type: !81, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !86, file: !87, line: 575, type: !70, isLocal: true, isDefinition: true)
!86 = distinct !DISubprogram(name: "oputs_", scope: !87, file: !87, line: 573, type: !88, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !90)
!87 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!88 = !DISubroutineType(types: !89)
!89 = !{null, !75, !75}
!90 = !{!91, !92, !93, !96, !97, !98, !99, !103, !104, !105, !106, !108, !164, !165, !166, !168, !169}
!91 = !DILocalVariable(name: "program", arg: 1, scope: !86, file: !87, line: 573, type: !75)
!92 = !DILocalVariable(name: "option", arg: 2, scope: !86, file: !87, line: 573, type: !75)
!93 = !DILocalVariable(name: "term", scope: !94, file: !87, line: 585, type: !75)
!94 = distinct !DILexicalBlock(scope: !95, file: !87, line: 582, column: 5)
!95 = distinct !DILexicalBlock(scope: !86, file: !87, line: 581, column: 7)
!96 = !DILocalVariable(name: "double_space", scope: !86, file: !87, line: 594, type: !81)
!97 = !DILocalVariable(name: "first_word", scope: !86, file: !87, line: 595, type: !75)
!98 = !DILocalVariable(name: "option_text", scope: !86, file: !87, line: 596, type: !75)
!99 = !DILocalVariable(name: "s", scope: !100, file: !87, line: 608, type: !75)
!100 = distinct !DILexicalBlock(scope: !101, file: !87, line: 605, column: 5)
!101 = distinct !DILexicalBlock(scope: !102, file: !87, line: 604, column: 12)
!102 = distinct !DILexicalBlock(scope: !86, file: !87, line: 597, column: 7)
!103 = !DILocalVariable(name: "spaces", scope: !100, file: !87, line: 609, type: !72)
!104 = !DILocalVariable(name: "anchor_len", scope: !86, file: !87, line: 620, type: !72)
!105 = !DILocalVariable(name: "desc_text", scope: !86, file: !87, line: 625, type: !75)
!106 = !DILocalVariable(name: "__ptr", scope: !107, file: !87, line: 644, type: !75)
!107 = distinct !DILexicalBlock(scope: !86, file: !87, line: 644, column: 3)
!108 = !DILocalVariable(name: "__stream", scope: !107, file: !87, line: 644, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !112)
!111 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !114)
!113 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !130, !132, !133, !134, !138, !139, !141, !145, !148, !150, !153, !156, !157, !158, !159, !160}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !112, file: !113, line: 51, baseType: !70, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !112, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !112, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !112, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !112, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !112, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !112, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !112, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !112, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !112, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !112, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !112, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !112, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !113, line: 36, flags: DIFlagFwdDecl)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !112, file: !113, line: 70, baseType: !131, size: 64, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !112, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !112, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !112, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !136, line: 152, baseType: !137)
!136 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!137 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !112, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !112, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!140 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !112, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 8, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 1)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !112, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !113, line: 43, baseType: null)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !112, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !136, line: 153, baseType: !137)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !112, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !113, line: 37, flags: DIFlagFwdDecl)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !112, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !113, line: 38, flags: DIFlagFwdDecl)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !112, file: !113, line: 93, baseType: !131, size: 64, offset: 1344)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !112, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !112, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !112, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !112, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 160, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 20)
!164 = !DILocalVariable(name: "__cnt", scope: !107, file: !87, line: 644, type: !72)
!165 = !DILocalVariable(name: "url_program", scope: !86, file: !87, line: 648, type: !75)
!166 = !DILocalVariable(name: "__ptr", scope: !167, file: !87, line: 686, type: !75)
!167 = distinct !DILexicalBlock(scope: !86, file: !87, line: 686, column: 3)
!168 = !DILocalVariable(name: "__stream", scope: !167, file: !87, line: 686, type: !109)
!169 = !DILocalVariable(name: "__cnt", scope: !167, file: !87, line: 686, type: !72)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 58, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 1792, elements: !182)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !175, line: 50, size: 256, elements: !176)
!175 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!176 = !{!177, !178, !179, !181}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !175, line: 52, baseType: !75, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !174, file: !175, line: 55, baseType: !70, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !174, file: !175, line: 56, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !174, file: !175, line: 57, baseType: !70, size: 32, offset: 192)
!182 = !{!183}
!183 = !DISubrange(count: 7)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "counting_mode", scope: !2, file: !3, line: 48, type: !5, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "line_out", scope: !188, file: !3, line: 164, type: !240, isLocal: true, isDefinition: true)
!188 = distinct !DISubprogram(name: "fold_file", scope: !3, file: !3, line: 159, type: !189, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{!81, !75, !72}
!191 = !{!192, !193, !194, !195, !196, !200, !210, !211, !222, !228, !229, !230, !231, !233, !236, !237, !239}
!192 = !DILocalVariable(name: "filename", arg: 1, scope: !188, file: !3, line: 159, type: !75)
!193 = !DILocalVariable(name: "width", arg: 2, scope: !188, file: !3, line: 159, type: !72)
!194 = !DILocalVariable(name: "istream", scope: !188, file: !3, line: 161, type: !109)
!195 = !DILocalVariable(name: "column", scope: !188, file: !3, line: 162, type: !72)
!196 = !DILocalVariable(name: "offset_out", scope: !188, file: !3, line: 163, type: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !198, line: 130, baseType: !199)
!198 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !73, line: 35, baseType: !137)
!200 = !DILocalVariable(name: "mbbuf", scope: !188, file: !3, line: 166, type: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !202, line: 50, baseType: !203)
!202 = !DIFile(filename: "./lib/mbbuf.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0ec2f2727b8356ce94eb797f3e7bb5fd")
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 43, size: 320, elements: !204)
!204 = !{!205, !206, !207, !208, !209}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !203, file: !202, line: 45, baseType: !67, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !203, file: !202, line: 46, baseType: !109, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !203, file: !202, line: 47, baseType: !197, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !203, file: !202, line: 48, baseType: !197, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !203, file: !202, line: 49, baseType: !197, size: 64, offset: 256)
!210 = !DILocalVariable(name: "saved_errno", scope: !188, file: !3, line: 167, type: !70)
!211 = !DILocalVariable(name: "g", scope: !188, file: !3, line: 186, type: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !57, line: 143, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 138, size: 64, elements: !214)
!214 = !{!215, !220, !221}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !213, file: !57, line: 140, baseType: !216, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !217, line: 37, baseType: !218)
!217 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !136, line: 57, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !136, line: 42, baseType: !6)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !213, file: !57, line: 141, baseType: !77, size: 8, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !213, file: !57, line: 142, baseType: !77, size: 8, offset: 40)
!222 = !DILocalVariable(name: "space_length", scope: !223, file: !3, line: 205, type: !70)
!223 = distinct !DILexicalBlock(scope: !224, file: !3, line: 204, column: 13)
!224 = distinct !DILexicalBlock(scope: !225, file: !3, line: 203, column: 15)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 199, column: 9)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 198, column: 11)
!227 = distinct !DILexicalBlock(scope: !188, file: !3, line: 188, column: 5)
!228 = !DILocalVariable(name: "logical_end", scope: !223, file: !3, line: 206, type: !197)
!229 = !DILocalVariable(name: "logical_p", scope: !223, file: !3, line: 207, type: !67)
!230 = !DILocalVariable(name: "logical_lim", scope: !223, file: !3, line: 208, type: !67)
!231 = !DILocalVariable(name: "g2", scope: !232, file: !3, line: 210, type: !212)
!232 = distinct !DILexicalBlock(scope: !223, file: !3, line: 210, column: 15)
!233 = !DILocalVariable(name: "printed_p", scope: !234, file: !3, line: 231, type: !67)
!234 = distinct !DILexicalBlock(scope: !235, file: !3, line: 221, column: 17)
!235 = distinct !DILexicalBlock(scope: !223, file: !3, line: 220, column: 19)
!236 = !DILocalVariable(name: "printed_lim", scope: !234, file: !3, line: 232, type: !67)
!237 = !DILocalVariable(name: "g2", scope: !238, file: !3, line: 233, type: !212)
!238 = distinct !DILexicalBlock(scope: !234, file: !3, line: 233, column: 19)
!239 = !DILabel(scope: !227, name: "rescan", file: !3, line: 195)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2097152, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 262144)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "line_in", scope: !188, file: !3, line: 165, type: !240, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "last_character_width", scope: !2, file: !3, line: 54, type: !70, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 288, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 36)
!250 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!251 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "Version", scope: !254, file: !255, line: 3, type: !75, isLocal: false, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !256, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!256 = !{!252}
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "file_name", scope: !259, file: !260, line: 45, type: !75, isLocal: true, isDefinition: true)
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !261, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!261 = !{!257, !262}
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !259, file: !260, line: 55, type: !81, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !266, file: !267, line: 66, type: !302, isLocal: false, isDefinition: true)
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !268, globals: !269, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!268 = !{!69, !77}
!269 = !{!270, !296, !264, !298, !300}
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "old_file_name", scope: !272, file: !267, line: 304, type: !75, isLocal: true, isDefinition: true)
!272 = distinct !DISubprogram(name: "verror_at_line", scope: !267, file: !267, line: 298, type: !273, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !289)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !70, !70, !75, !6, !75, !275}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !276, line: 52, baseType: !277)
!276 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !278, line: 32, baseType: !279)
!278 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !280, baseType: !281)
!280 = !DIFile(filename: "lib/error.c", directory: "/src")
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !282, size: 256, elements: !283)
!282 = !DINamespace(name: "std", scope: null)
!283 = !{!284, !285, !286, !287, !288}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !281, file: !280, baseType: !69, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !281, file: !280, baseType: !69, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !281, file: !280, baseType: !69, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !281, file: !280, baseType: !70, size: 32, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !281, file: !280, baseType: !70, size: 32, offset: 224)
!289 = !{!290, !291, !292, !293, !294, !295}
!290 = !DILocalVariable(name: "status", arg: 1, scope: !272, file: !267, line: 298, type: !70)
!291 = !DILocalVariable(name: "errnum", arg: 2, scope: !272, file: !267, line: 298, type: !70)
!292 = !DILocalVariable(name: "file_name", arg: 3, scope: !272, file: !267, line: 298, type: !75)
!293 = !DILocalVariable(name: "line_number", arg: 4, scope: !272, file: !267, line: 298, type: !6)
!294 = !DILocalVariable(name: "message", arg: 5, scope: !272, file: !267, line: 298, type: !75)
!295 = !DILocalVariable(name: "args", arg: 6, scope: !272, file: !267, line: 298, type: !275)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "old_line_number", scope: !272, file: !267, line: 305, type: !6, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "error_message_count", scope: !266, file: !267, line: 69, type: !6, isLocal: false, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !266, file: !267, line: 295, type: !70, isLocal: false, isDefinition: true)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{null}
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "program_name", scope: !307, file: !308, line: 31, type: !75, isLocal: false, isDefinition: true)
!307 = distinct !DICompileUnit(language: DW_LANG_C99, file: !308, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !309, globals: !310, splitDebugInlining: false, nameTableKind: None)
!308 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!309 = !{!67}
!310 = !{!305}
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "utf07FF", scope: !313, file: !314, line: 46, type: !340, isLocal: true, isDefinition: true)
!313 = distinct !DISubprogram(name: "proper_name_lite", scope: !314, file: !314, line: 38, type: !315, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !319)
!314 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!315 = !DISubroutineType(types: !316)
!316 = !{!75, !75, !75}
!317 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !318, splitDebugInlining: false, nameTableKind: None)
!318 = !{!311}
!319 = !{!320, !321, !322, !323, !324}
!320 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !313, file: !314, line: 38, type: !75)
!321 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !313, file: !314, line: 38, type: !75)
!322 = !DILocalVariable(name: "translation", scope: !313, file: !314, line: 40, type: !75)
!323 = !DILocalVariable(name: "w", scope: !313, file: !314, line: 47, type: !216)
!324 = !DILocalVariable(name: "mbs", scope: !313, file: !314, line: 48, type: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !326, line: 6, baseType: !327)
!326 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !328, line: 21, baseType: !329)
!328 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 13, size: 64, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !329, file: !328, line: 15, baseType: !70, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !329, file: !328, line: 20, baseType: !333, size: 32, offset: 32)
!333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !328, line: 16, size: 32, elements: !334)
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !333, file: !328, line: 18, baseType: !6, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !333, file: !328, line: 19, baseType: !337, size: 32)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 32, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 4)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 16, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 2)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !345, file: !346, line: 76, type: !414, isLocal: false, isDefinition: true)
!345 = distinct !DICompileUnit(language: DW_LANG_C99, file: !346, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !347, retainedTypes: !353, globals: !354, splitDebugInlining: false, nameTableKind: None)
!346 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!347 = !{!33, !348, !18}
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !34, line: 254, baseType: !6, size: 32, elements: !349)
!349 = !{!350, !351, !352}
!350 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!351 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!352 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!353 = !{!70, !71, !72}
!354 = !{!343, !355, !361, !373, !375, !380, !403, !410, !412}
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !345, file: !346, line: 92, type: !357, isLocal: false, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 320, elements: !359)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!359 = !{!360}
!360 = !DISubrange(count: 10)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !345, file: !346, line: 1040, type: !363, isLocal: false, isDefinition: true)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !346, line: 56, size: 448, elements: !364)
!364 = !{!365, !366, !367, !371, !372}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !363, file: !346, line: 59, baseType: !33, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !363, file: !346, line: 62, baseType: !70, size: 32, offset: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !363, file: !346, line: 66, baseType: !368, size: 256, offset: 64)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 8)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !363, file: !346, line: 69, baseType: !75, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !363, file: !346, line: 72, baseType: !75, size: 64, offset: 384)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !345, file: !346, line: 107, type: !363, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "slot0", scope: !345, file: !346, line: 831, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2048, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 256)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "quote", scope: !382, file: !346, line: 228, type: !401, isLocal: true, isDefinition: true)
!382 = distinct !DISubprogram(name: "gettext_quote", scope: !346, file: !346, line: 197, type: !383, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!75, !75, !33}
!385 = !{!386, !387, !388, !389, !390}
!386 = !DILocalVariable(name: "msgid", arg: 1, scope: !382, file: !346, line: 197, type: !75)
!387 = !DILocalVariable(name: "s", arg: 2, scope: !382, file: !346, line: 197, type: !33)
!388 = !DILocalVariable(name: "translation", scope: !382, file: !346, line: 199, type: !75)
!389 = !DILocalVariable(name: "w", scope: !382, file: !346, line: 229, type: !216)
!390 = !DILocalVariable(name: "mbs", scope: !382, file: !346, line: 230, type: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !326, line: 6, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !328, line: 21, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 13, size: 64, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !393, file: !328, line: 15, baseType: !70, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !393, file: !328, line: 20, baseType: !397, size: 32, offset: 32)
!397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !328, line: 16, size: 32, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !397, file: !328, line: 18, baseType: !6, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !397, file: !328, line: 19, baseType: !337, size: 32)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !402)
!402 = !{!342, !339}
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "slotvec", scope: !345, file: !346, line: 834, type: !405, isLocal: true, isDefinition: true)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !346, line: 823, size: 128, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !406, file: !346, line: 825, baseType: !72, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !406, file: !346, line: 826, baseType: !67, size: 64, offset: 64)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "nslots", scope: !345, file: !346, line: 832, type: !70, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "slotvec0", scope: !345, file: !346, line: 833, type: !406, isLocal: true, isDefinition: true)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 704, elements: !416)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!416 = !{!417}
!417 = !DISubrange(count: 11)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !420, file: !421, line: 26, type: !423, isLocal: false, isDefinition: true)
!420 = distinct !DICompileUnit(language: DW_LANG_C99, file: !421, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !422, splitDebugInlining: false, nameTableKind: None)
!421 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!422 = !{!418}
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 376, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 47)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "exit_failure", scope: !428, file: !429, line: 24, type: !431, isLocal: false, isDefinition: true)
!428 = distinct !DICompileUnit(language: DW_LANG_C99, file: !429, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !430, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!430 = !{!426}
!431 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "internal_state", scope: !434, file: !435, line: 97, type: !438, isLocal: true, isDefinition: true)
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !436, globals: !437, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!436 = !{!69, !72, !77}
!437 = !{!432}
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !326, line: 6, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !328, line: 21, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 13, size: 64, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !440, file: !328, line: 15, baseType: !70, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !440, file: !328, line: 20, baseType: !444, size: 32, offset: 32)
!444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !328, line: 16, size: 32, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !444, file: !328, line: 18, baseType: !6, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !444, file: !328, line: 19, baseType: !337, size: 32)
!448 = distinct !DICompileUnit(language: DW_LANG_C99, file: !449, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !450, splitDebugInlining: false, nameTableKind: None)
!449 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!450 = !{!47}
!451 = distinct !DICompileUnit(language: DW_LANG_C99, file: !452, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!452 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!453 = distinct !DICompileUnit(language: DW_LANG_C99, file: !454, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !455, splitDebugInlining: false, nameTableKind: None)
!454 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!455 = !{!69}
!456 = distinct !DICompileUnit(language: DW_LANG_C99, file: !457, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!457 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!458 = distinct !DICompileUnit(language: DW_LANG_C99, file: !459, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !455, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!460 = distinct !DICompileUnit(language: DW_LANG_C99, file: !461, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!461 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!462 = distinct !DICompileUnit(language: DW_LANG_C99, file: !463, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !464, retainedTypes: !455, splitDebugInlining: false, nameTableKind: None)
!463 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!464 = !{!465}
!465 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !463, line: 40, baseType: !6, size: 32, elements: !466)
!466 = !{!467}
!467 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!468 = distinct !DICompileUnit(language: DW_LANG_C99, file: !469, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !470, retainedTypes: !498, splitDebugInlining: false, nameTableKind: None)
!469 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!470 = !{!471, !483}
!471 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !472, file: !469, line: 188, baseType: !6, size: 32, elements: !481)
!472 = distinct !DISubprogram(name: "x2nrealloc", scope: !469, file: !469, line: 176, type: !473, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !476)
!473 = !DISubroutineType(types: !474)
!474 = !{!69, !69, !475, !72}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!476 = !{!477, !478, !479, !480}
!477 = !DILocalVariable(name: "p", arg: 1, scope: !472, file: !469, line: 176, type: !69)
!478 = !DILocalVariable(name: "pn", arg: 2, scope: !472, file: !469, line: 176, type: !475)
!479 = !DILocalVariable(name: "s", arg: 3, scope: !472, file: !469, line: 176, type: !72)
!480 = !DILocalVariable(name: "n", scope: !472, file: !469, line: 178, type: !72)
!481 = !{!482}
!482 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!483 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !484, file: !469, line: 228, baseType: !6, size: 32, elements: !481)
!484 = distinct !DISubprogram(name: "xpalloc", scope: !469, file: !469, line: 223, type: !485, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !488)
!485 = !DISubroutineType(types: !486)
!486 = !{!69, !69, !487, !197, !199, !197}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497}
!489 = !DILocalVariable(name: "pa", arg: 1, scope: !484, file: !469, line: 223, type: !69)
!490 = !DILocalVariable(name: "pn", arg: 2, scope: !484, file: !469, line: 223, type: !487)
!491 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !484, file: !469, line: 223, type: !197)
!492 = !DILocalVariable(name: "n_max", arg: 4, scope: !484, file: !469, line: 223, type: !199)
!493 = !DILocalVariable(name: "s", arg: 5, scope: !484, file: !469, line: 223, type: !197)
!494 = !DILocalVariable(name: "n0", scope: !484, file: !469, line: 230, type: !197)
!495 = !DILocalVariable(name: "n", scope: !484, file: !469, line: 237, type: !197)
!496 = !DILocalVariable(name: "nbytes", scope: !484, file: !469, line: 248, type: !197)
!497 = !DILocalVariable(name: "adjusted_nbytes", scope: !484, file: !469, line: 252, type: !197)
!498 = !{!67, !69, !81, !137, !74}
!499 = distinct !DICompileUnit(language: DW_LANG_C99, file: !500, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!500 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!501 = distinct !DICompileUnit(language: DW_LANG_C99, file: !502, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !503, splitDebugInlining: false, nameTableKind: None)
!502 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!503 = !{!504, !11}
!504 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !505, line: 30, baseType: !6, size: 32, elements: !506)
!505 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!506 = !{!507, !508, !509, !510, !511}
!507 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!508 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!509 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!510 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!511 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!512 = distinct !DICompileUnit(language: DW_LANG_C99, file: !513, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !514, retainedTypes: !515, splitDebugInlining: false, nameTableKind: None)
!513 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!514 = !{!504, !18}
!515 = !{!70, !71, !67, !81, !74, !516}
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !517, line: 102, baseType: !518)
!517 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !136, line: 73, baseType: !74)
!519 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !455, splitDebugInlining: false, nameTableKind: None)
!520 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!521 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!522 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!523 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !525, splitDebugInlining: false, nameTableKind: None)
!524 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!525 = !{!81, !74, !69}
!526 = distinct !DICompileUnit(language: DW_LANG_C99, file: !527, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!527 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!528 = distinct !DICompileUnit(language: DW_LANG_C99, file: !529, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!529 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!530 = distinct !DICompileUnit(language: DW_LANG_C99, file: !531, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !455, splitDebugInlining: false, nameTableKind: None)
!531 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!532 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!533 = !{i32 7, !"Dwarf Version", i32 5}
!534 = !{i32 2, !"Debug Info Version", i32 3}
!535 = !{i32 1, !"wchar_size", i32 4}
!536 = !{i32 1, !"branch-target-enforcement", i32 0}
!537 = !{i32 1, !"sign-return-address", i32 0}
!538 = !{i32 1, !"sign-return-address-all", i32 0}
!539 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!540 = !{i32 7, !"PIC Level", i32 2}
!541 = !{i32 7, !"PIE Level", i32 2}
!542 = !{i32 7, !"uwtable", i32 1}
!543 = !{i32 7, !"frame-pointer", i32 1}
!544 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 70, type: !545, scopeLine: 71, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !70}
!547 = !{!548}
!548 = !DILocalVariable(name: "status", arg: 1, scope: !544, file: !3, line: 70, type: !70)
!549 = !DILocation(line: 0, scope: !544)
!550 = !DILocation(line: 72, column: 14, scope: !551)
!551 = distinct !DILexicalBlock(scope: !544, file: !3, line: 72, column: 7)
!552 = !DILocation(line: 72, column: 7, scope: !544)
!553 = !DILocation(line: 73, column: 5, scope: !554)
!554 = distinct !DILexicalBlock(scope: !551, file: !3, line: 73, column: 5)
!555 = !{!556, !556, i64 0}
!556 = !{!"any pointer", !557, i64 0}
!557 = !{!"omnipotent char", !558, i64 0}
!558 = !{!"Simple C/C++ TBAA"}
!559 = !DILocation(line: 76, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !551, file: !3, line: 75, column: 5)
!561 = !DILocation(line: 80, column: 7, scope: !560)
!562 = !DILocation(line: 729, column: 3, scope: !563, inlinedAt: !565)
!563 = distinct !DISubprogram(name: "emit_stdin_note", scope: !87, file: !87, line: 727, type: !303, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !564)
!564 = !{}
!565 = distinct !DILocation(line: 84, column: 7, scope: !560)
!566 = !DILocation(line: 736, column: 3, scope: !567, inlinedAt: !568)
!567 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !87, file: !87, line: 734, type: !303, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !564)
!568 = distinct !DILocation(line: 85, column: 7, scope: !560)
!569 = !DILocation(line: 87, column: 7, scope: !560)
!570 = !DILocation(line: 91, column: 7, scope: !560)
!571 = !DILocation(line: 95, column: 7, scope: !560)
!572 = !DILocation(line: 99, column: 7, scope: !560)
!573 = !DILocation(line: 103, column: 7, scope: !560)
!574 = !DILocation(line: 104, column: 7, scope: !560)
!575 = !DILocalVariable(name: "program", arg: 1, scope: !576, file: !87, line: 836, type: !75)
!576 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !87, file: !87, line: 836, type: !577, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !75}
!579 = !{!575, !580, !587, !588, !590, !591}
!580 = !DILocalVariable(name: "infomap", scope: !576, file: !87, line: 838, type: !581)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 896, elements: !182)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !576, file: !87, line: 838, size: 128, elements: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !583, file: !87, line: 838, baseType: !75, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !583, file: !87, line: 838, baseType: !75, size: 64, offset: 64)
!587 = !DILocalVariable(name: "node", scope: !576, file: !87, line: 848, type: !75)
!588 = !DILocalVariable(name: "map_prog", scope: !576, file: !87, line: 849, type: !589)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!590 = !DILocalVariable(name: "lc_messages", scope: !576, file: !87, line: 861, type: !75)
!591 = !DILocalVariable(name: "url_program", scope: !576, file: !87, line: 874, type: !75)
!592 = !DILocation(line: 0, scope: !576, inlinedAt: !593)
!593 = distinct !DILocation(line: 105, column: 7, scope: !560)
!594 = !DILocation(line: 838, column: 3, scope: !576, inlinedAt: !593)
!595 = !DILocation(line: 838, column: 67, scope: !576, inlinedAt: !593)
!596 = !DILocation(line: 849, column: 36, scope: !576, inlinedAt: !593)
!597 = !DILocation(line: 851, column: 3, scope: !576, inlinedAt: !593)
!598 = !DILocalVariable(name: "__s1", arg: 1, scope: !599, file: !600, line: 1359, type: !75)
!599 = distinct !DISubprogram(name: "streq", scope: !600, file: !600, line: 1359, type: !601, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !603)
!600 = !DIFile(filename: "./lib/string.h", directory: "/src")
!601 = !DISubroutineType(types: !602)
!602 = !{!81, !75, !75}
!603 = !{!598, !604}
!604 = !DILocalVariable(name: "__s2", arg: 2, scope: !599, file: !600, line: 1359, type: !75)
!605 = !DILocation(line: 0, scope: !599, inlinedAt: !606)
!606 = distinct !DILocation(line: 851, column: 33, scope: !576, inlinedAt: !593)
!607 = !DILocation(line: 1361, column: 11, scope: !599, inlinedAt: !606)
!608 = !DILocation(line: 1361, column: 10, scope: !599, inlinedAt: !606)
!609 = !DILocation(line: 852, column: 13, scope: !576, inlinedAt: !593)
!610 = !DILocation(line: 851, column: 20, scope: !576, inlinedAt: !593)
!611 = !{!612, !556, i64 0}
!612 = !{!"infomap", !556, i64 0, !556, i64 8}
!613 = !DILocation(line: 851, column: 10, scope: !576, inlinedAt: !593)
!614 = !DILocation(line: 851, column: 28, scope: !576, inlinedAt: !593)
!615 = distinct !{!615, !597, !609, !616}
!616 = !{!"llvm.loop.mustprogress"}
!617 = !DILocation(line: 854, column: 17, scope: !618, inlinedAt: !593)
!618 = distinct !DILexicalBlock(scope: !576, file: !87, line: 854, column: 7)
!619 = !{!612, !556, i64 8}
!620 = !DILocation(line: 854, column: 7, scope: !618, inlinedAt: !593)
!621 = !DILocation(line: 854, column: 7, scope: !576, inlinedAt: !593)
!622 = !DILocation(line: 857, column: 3, scope: !576, inlinedAt: !593)
!623 = !DILocation(line: 861, column: 29, scope: !576, inlinedAt: !593)
!624 = !DILocation(line: 862, column: 7, scope: !625, inlinedAt: !593)
!625 = distinct !DILexicalBlock(scope: !576, file: !87, line: 862, column: 7)
!626 = !DILocation(line: 862, column: 19, scope: !625, inlinedAt: !593)
!627 = !DILocation(line: 862, column: 22, scope: !625, inlinedAt: !593)
!628 = !DILocation(line: 862, column: 7, scope: !576, inlinedAt: !593)
!629 = !DILocation(line: 868, column: 7, scope: !630, inlinedAt: !593)
!630 = distinct !DILexicalBlock(scope: !625, file: !87, line: 863, column: 5)
!631 = !DILocation(line: 870, column: 5, scope: !630, inlinedAt: !593)
!632 = !DILocation(line: 0, scope: !599, inlinedAt: !633)
!633 = distinct !DILocation(line: 874, column: 29, scope: !576, inlinedAt: !593)
!634 = !DILocation(line: 875, column: 3, scope: !576, inlinedAt: !593)
!635 = !DILocation(line: 877, column: 3, scope: !576, inlinedAt: !593)
!636 = !DILocation(line: 879, column: 1, scope: !576, inlinedAt: !593)
!637 = !DILocation(line: 107, column: 3, scope: !544)
!638 = !DISubprogram(name: "dcgettext", scope: !639, file: !639, line: 51, type: !640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!639 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!640 = !DISubroutineType(types: !641)
!641 = !{!67, !75, !75, !70}
!642 = !DISubprogram(name: "fputs_unlocked", scope: !276, file: !276, line: 691, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!643 = !DISubroutineType(types: !644)
!644 = !{!70, !645, !646}
!645 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!646 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!647 = !DILocation(line: 0, scope: !86)
!648 = !DILocation(line: 581, column: 7, scope: !95)
!649 = !{!650, !650, i64 0}
!650 = !{!"int", !557, i64 0}
!651 = !DILocation(line: 581, column: 19, scope: !95)
!652 = !DILocation(line: 581, column: 7, scope: !86)
!653 = !DILocation(line: 585, column: 26, scope: !94)
!654 = !DILocation(line: 0, scope: !94)
!655 = !DILocation(line: 586, column: 23, scope: !94)
!656 = !DILocation(line: 586, column: 28, scope: !94)
!657 = !DILocation(line: 586, column: 32, scope: !94)
!658 = !{!557, !557, i64 0}
!659 = !DILocation(line: 586, column: 38, scope: !94)
!660 = !DILocation(line: 0, scope: !599, inlinedAt: !661)
!661 = distinct !DILocation(line: 586, column: 41, scope: !94)
!662 = !DILocation(line: 1361, column: 11, scope: !599, inlinedAt: !661)
!663 = !DILocation(line: 1361, column: 10, scope: !599, inlinedAt: !661)
!664 = !DILocation(line: 586, column: 19, scope: !94)
!665 = !DILocation(line: 587, column: 5, scope: !94)
!666 = !DILocation(line: 588, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !86, file: !87, line: 588, column: 7)
!668 = !DILocation(line: 588, column: 7, scope: !86)
!669 = !DILocation(line: 590, column: 7, scope: !670)
!670 = distinct !DILexicalBlock(scope: !667, file: !87, line: 589, column: 5)
!671 = !DILocation(line: 591, column: 7, scope: !670)
!672 = !DILocation(line: 595, column: 37, scope: !86)
!673 = !DILocation(line: 595, column: 35, scope: !86)
!674 = !DILocation(line: 596, column: 29, scope: !86)
!675 = !DILocation(line: 597, column: 8, scope: !102)
!676 = !DILocation(line: 597, column: 7, scope: !86)
!677 = !DILocation(line: 604, column: 24, scope: !101)
!678 = !DILocation(line: 604, column: 12, scope: !102)
!679 = !DILocation(line: 0, scope: !100)
!680 = !DILocation(line: 610, column: 16, scope: !100)
!681 = !DILocation(line: 610, column: 7, scope: !100)
!682 = !DILocation(line: 611, column: 21, scope: !100)
!683 = !{!684, !684, i64 0}
!684 = !{!"short", !557, i64 0}
!685 = !DILocation(line: 611, column: 19, scope: !100)
!686 = !DILocation(line: 611, column: 16, scope: !100)
!687 = !DILocation(line: 610, column: 30, scope: !100)
!688 = distinct !{!688, !681, !682, !616}
!689 = !DILocation(line: 612, column: 18, scope: !690)
!690 = distinct !DILexicalBlock(scope: !100, file: !87, line: 612, column: 11)
!691 = !DILocation(line: 612, column: 11, scope: !100)
!692 = !DILocation(line: 620, column: 23, scope: !86)
!693 = !DILocation(line: 625, column: 39, scope: !86)
!694 = !DILocation(line: 626, column: 3, scope: !86)
!695 = !DILocation(line: 626, column: 10, scope: !86)
!696 = !DILocation(line: 626, column: 21, scope: !86)
!697 = !DILocation(line: 628, column: 44, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !87, line: 628, column: 11)
!699 = distinct !DILexicalBlock(scope: !86, file: !87, line: 627, column: 5)
!700 = !DILocation(line: 628, column: 32, scope: !698)
!701 = !DILocation(line: 628, column: 49, scope: !698)
!702 = !DILocation(line: 628, column: 11, scope: !699)
!703 = !DILocation(line: 630, column: 11, scope: !704)
!704 = distinct !DILexicalBlock(scope: !699, file: !87, line: 630, column: 11)
!705 = !DILocation(line: 630, column: 11, scope: !699)
!706 = !DILocation(line: 632, column: 26, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !87, line: 632, column: 15)
!708 = distinct !DILexicalBlock(scope: !704, file: !87, line: 631, column: 9)
!709 = !DILocation(line: 632, column: 34, scope: !707)
!710 = !DILocation(line: 632, column: 37, scope: !707)
!711 = !DILocation(line: 632, column: 15, scope: !708)
!712 = !DILocation(line: 636, column: 29, scope: !713)
!713 = distinct !DILexicalBlock(scope: !708, file: !87, line: 636, column: 15)
!714 = !DILocation(line: 640, column: 16, scope: !699)
!715 = distinct !{!715, !694, !716, !616}
!716 = !DILocation(line: 641, column: 5, scope: !86)
!717 = !DILocation(line: 644, column: 3, scope: !86)
!718 = !DILocation(line: 0, scope: !599, inlinedAt: !719)
!719 = distinct !DILocation(line: 648, column: 31, scope: !86)
!720 = !DILocation(line: 0, scope: !599, inlinedAt: !721)
!721 = distinct !DILocation(line: 649, column: 31, scope: !86)
!722 = !DILocation(line: 0, scope: !599, inlinedAt: !723)
!723 = distinct !DILocation(line: 650, column: 31, scope: !86)
!724 = !DILocation(line: 0, scope: !599, inlinedAt: !725)
!725 = distinct !DILocation(line: 651, column: 31, scope: !86)
!726 = !DILocation(line: 0, scope: !599, inlinedAt: !727)
!727 = distinct !DILocation(line: 652, column: 31, scope: !86)
!728 = !DILocation(line: 0, scope: !599, inlinedAt: !729)
!729 = distinct !DILocation(line: 653, column: 31, scope: !86)
!730 = !DILocation(line: 0, scope: !599, inlinedAt: !731)
!731 = distinct !DILocation(line: 654, column: 31, scope: !86)
!732 = !DILocation(line: 0, scope: !599, inlinedAt: !733)
!733 = distinct !DILocation(line: 655, column: 31, scope: !86)
!734 = !DILocation(line: 0, scope: !599, inlinedAt: !735)
!735 = distinct !DILocation(line: 656, column: 31, scope: !86)
!736 = !DILocation(line: 0, scope: !599, inlinedAt: !737)
!737 = distinct !DILocation(line: 657, column: 31, scope: !86)
!738 = !DILocation(line: 663, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !86, file: !87, line: 663, column: 7)
!740 = !DILocation(line: 664, column: 7, scope: !739)
!741 = !DILocation(line: 664, column: 10, scope: !739)
!742 = !DILocation(line: 663, column: 7, scope: !86)
!743 = !DILocation(line: 669, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !739, file: !87, line: 665, column: 5)
!745 = !DILocation(line: 671, column: 5, scope: !744)
!746 = !DILocation(line: 676, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !739, file: !87, line: 673, column: 5)
!748 = !DILocation(line: 679, column: 3, scope: !86)
!749 = !DILocation(line: 683, column: 3, scope: !86)
!750 = !DILocation(line: 686, column: 3, scope: !86)
!751 = !DILocation(line: 688, column: 3, scope: !86)
!752 = !DILocation(line: 691, column: 3, scope: !86)
!753 = !DILocation(line: 695, column: 3, scope: !86)
!754 = !DILocation(line: 696, column: 1, scope: !86)
!755 = !DISubprogram(name: "setlocale", scope: !756, file: !756, line: 122, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!756 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!757 = !DISubroutineType(types: !758)
!758 = !{!67, !70, !75}
!759 = !DISubprogram(name: "getenv", scope: !760, file: !760, line: 641, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!760 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!761 = !DISubroutineType(types: !762)
!762 = !{!67, !75}
!763 = !DISubprogram(name: "fwrite_unlocked", scope: !276, file: !276, line: 704, type: !764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!764 = !DISubroutineType(types: !765)
!765 = !{!72, !766, !72, !72, !646}
!766 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!769 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 289, type: !770, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !773)
!770 = !DISubroutineType(types: !771)
!771 = !{!70, !70, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!773 = !{!774, !775, !776, !777, !778, !779, !782}
!774 = !DILocalVariable(name: "argc", arg: 1, scope: !769, file: !3, line: 289, type: !70)
!775 = !DILocalVariable(name: "argv", arg: 2, scope: !769, file: !3, line: 289, type: !772)
!776 = !DILocalVariable(name: "width", scope: !769, file: !3, line: 291, type: !72)
!777 = !DILocalVariable(name: "optc", scope: !769, file: !3, line: 292, type: !70)
!778 = !DILocalVariable(name: "ok", scope: !769, file: !3, line: 293, type: !81)
!779 = !DILocalVariable(name: "optargbuf", scope: !780, file: !3, line: 305, type: !781)
!780 = distinct !DILexicalBlock(scope: !769, file: !3, line: 304, column: 5)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 16, elements: !341)
!782 = !DILocalVariable(name: "i", scope: !783, file: !3, line: 352, type: !70)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 352, column: 7)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 350, column: 5)
!785 = distinct !DILexicalBlock(scope: !769, file: !3, line: 347, column: 7)
!786 = !DILocation(line: 0, scope: !769)
!787 = !DILocation(line: 296, column: 21, scope: !769)
!788 = !DILocation(line: 296, column: 3, scope: !769)
!789 = !DILocation(line: 297, column: 3, scope: !769)
!790 = !DILocation(line: 298, column: 3, scope: !769)
!791 = !DILocation(line: 299, column: 3, scope: !769)
!792 = !DILocation(line: 301, column: 3, scope: !769)
!793 = !DILocation(line: 303, column: 18, scope: !769)
!794 = !DILocation(line: 303, column: 71, scope: !769)
!795 = !DILocation(line: 303, column: 3, scope: !769)
!796 = !DILocation(line: 305, column: 7, scope: !780)
!797 = !DILocation(line: 305, column: 12, scope: !780)
!798 = !DILocation(line: 307, column: 7, scope: !780)
!799 = !DILocation(line: 333, column: 31, scope: !800)
!800 = distinct !DILexicalBlock(scope: !780, file: !3, line: 308, column: 9)
!801 = !DILocation(line: 310, column: 25, scope: !800)
!802 = !DILocation(line: 311, column: 11, scope: !800)
!803 = !DILocation(line: 314, column: 25, scope: !800)
!804 = !DILocation(line: 315, column: 11, scope: !800)
!805 = !DILocation(line: 318, column: 24, scope: !800)
!806 = !DILocation(line: 319, column: 11, scope: !800)
!807 = !DILocation(line: 323, column: 15, scope: !808)
!808 = distinct !DILexicalBlock(scope: !800, file: !3, line: 323, column: 15)
!809 = !DILocation(line: 323, column: 15, scope: !800)
!810 = !DILocation(line: 324, column: 19, scope: !808)
!811 = !DILocation(line: 324, column: 13, scope: !808)
!812 = !DILocation(line: 327, column: 30, scope: !813)
!813 = distinct !DILexicalBlock(scope: !808, file: !3, line: 326, column: 13)
!814 = !DILocation(line: 327, column: 28, scope: !813)
!815 = !DILocation(line: 328, column: 28, scope: !813)
!816 = !DILocation(line: 329, column: 22, scope: !813)
!817 = !DILocation(line: 334, column: 31, scope: !800)
!818 = !DILocation(line: 333, column: 19, scope: !800)
!819 = !DILocation(line: 336, column: 11, scope: !800)
!820 = !DILocation(line: 338, column: 9, scope: !800)
!821 = !DILocation(line: 340, column: 9, scope: !800)
!822 = !DILocation(line: 343, column: 11, scope: !800)
!823 = !DILocation(line: 345, column: 5, scope: !769)
!824 = distinct !{!824, !795, !823, !616}
!825 = !DILocation(line: 347, column: 15, scope: !785)
!826 = !DILocation(line: 347, column: 12, scope: !785)
!827 = !DILocation(line: 347, column: 7, scope: !769)
!828 = !DILocation(line: 0, scope: !783)
!829 = !DILocation(line: 352, column: 30, scope: !830)
!830 = distinct !DILexicalBlock(scope: !783, file: !3, line: 352, column: 7)
!831 = !DILocation(line: 352, column: 7, scope: !783)
!832 = !DILocation(line: 348, column: 10, scope: !785)
!833 = !DILocation(line: 348, column: 5, scope: !785)
!834 = !DILocation(line: 353, column: 26, scope: !830)
!835 = !DILocation(line: 353, column: 15, scope: !830)
!836 = !DILocation(line: 353, column: 12, scope: !830)
!837 = !DILocation(line: 352, column: 39, scope: !830)
!838 = distinct !{!838, !831, !839, !616}
!839 = !DILocation(line: 353, column: 40, scope: !783)
!840 = !DILocation(line: 356, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !769, file: !3, line: 356, column: 7)
!842 = !DILocation(line: 356, column: 23, scope: !841)
!843 = !DILocation(line: 356, column: 34, scope: !841)
!844 = !DILocation(line: 356, column: 26, scope: !841)
!845 = !DILocation(line: 356, column: 41, scope: !841)
!846 = !DILocation(line: 356, column: 7, scope: !769)
!847 = !DILocation(line: 357, column: 5, scope: !841)
!848 = !DILocation(line: 359, column: 10, scope: !769)
!849 = !DILocation(line: 359, column: 3, scope: !769)
!850 = !DISubprogram(name: "bindtextdomain", scope: !639, file: !639, line: 86, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!851 = !DISubroutineType(types: !852)
!852 = !{!67, !75, !75}
!853 = !DISubprogram(name: "textdomain", scope: !639, file: !639, line: 82, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!854 = !DISubprogram(name: "atexit", scope: !760, file: !760, line: 602, type: !855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!855 = !DISubroutineType(types: !856)
!856 = !{!70, !302}
!857 = !DISubprogram(name: "getopt_long", scope: !175, file: !175, line: 66, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!858 = !DISubroutineType(types: !859)
!859 = !{!70, !70, !860, !75, !862, !180}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!863 = !DILocation(line: 0, scope: !188)
!864 = !DILocation(line: 0, scope: !599, inlinedAt: !865)
!865 = distinct !DILocation(line: 169, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !188, file: !3, line: 169, column: 7)
!867 = !DILocation(line: 1361, column: 11, scope: !599, inlinedAt: !865)
!868 = !DILocation(line: 1361, column: 10, scope: !599, inlinedAt: !865)
!869 = !DILocation(line: 169, column: 7, scope: !188)
!870 = !DILocation(line: 171, column: 17, scope: !871)
!871 = distinct !DILexicalBlock(scope: !866, file: !3, line: 170, column: 5)
!872 = !DILocation(line: 172, column: 23, scope: !871)
!873 = !DILocation(line: 173, column: 5, scope: !871)
!874 = !DILocation(line: 175, column: 15, scope: !866)
!875 = !DILocation(line: 0, scope: !866)
!876 = !DILocation(line: 177, column: 15, scope: !877)
!877 = distinct !DILexicalBlock(scope: !188, file: !3, line: 177, column: 7)
!878 = !DILocation(line: 177, column: 7, scope: !188)
!879 = !DILocation(line: 179, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !877, file: !3, line: 178, column: 5)
!881 = !DILocation(line: 180, column: 7, scope: !880)
!882 = !DILocation(line: 183, column: 3, scope: !188)
!883 = !DILocation(line: 187, column: 3, scope: !188)
!884 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !885, file: !202, line: 71, type: !888)
!885 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !202, file: !202, line: 71, type: !886, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !889)
!886 = !DISubroutineType(types: !887)
!887 = !{!212, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!889 = !{!884, !890, !891, !894}
!890 = !DILocalVariable(name: "available", scope: !885, file: !202, line: 73, type: !197)
!891 = !DILocalVariable(name: "start", scope: !892, file: !202, line: 77, type: !197)
!892 = distinct !DILexicalBlock(scope: !893, file: !202, line: 76, column: 5)
!893 = distinct !DILexicalBlock(scope: !885, file: !202, line: 75, column: 7)
!894 = !DILocalVariable(name: "g", scope: !885, file: !202, line: 92, type: !212)
!895 = !DILocation(line: 0, scope: !885, inlinedAt: !896)
!896 = distinct !DILocation(line: 187, column: 15, scope: !188)
!897 = !DILocation(line: 73, column: 35, scope: !885, inlinedAt: !896)
!898 = !DILocation(line: 75, column: 17, scope: !893, inlinedAt: !896)
!899 = !DILocation(line: 75, column: 32, scope: !893, inlinedAt: !896)
!900 = !DILocalVariable(name: "__stream", arg: 1, scope: !901, file: !902, line: 128, type: !109)
!901 = distinct !DISubprogram(name: "feof_unlocked", scope: !902, file: !902, line: 128, type: !903, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!902 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!903 = !DISubroutineType(types: !904)
!904 = !{!70, !109}
!905 = !{!900}
!906 = !DILocation(line: 0, scope: !901, inlinedAt: !907)
!907 = distinct !DILocation(line: 75, column: 37, scope: !893, inlinedAt: !896)
!908 = !DILocation(line: 130, column: 10, scope: !901, inlinedAt: !907)
!909 = !{!910, !650, i64 0}
!910 = !{!"_IO_FILE", !650, i64 0, !556, i64 8, !556, i64 16, !556, i64 24, !556, i64 32, !556, i64 40, !556, i64 48, !556, i64 56, !556, i64 64, !556, i64 72, !556, i64 80, !556, i64 88, !556, i64 96, !556, i64 104, !650, i64 112, !650, i64 116, !911, i64 120, !684, i64 128, !557, i64 130, !557, i64 131, !556, i64 136, !911, i64 144, !556, i64 152, !556, i64 160, !556, i64 168, !556, i64 176, !911, i64 184, !650, i64 192, !557, i64 196}
!911 = !{!"long", !557, i64 0}
!912 = !DILocation(line: 75, column: 37, scope: !893, inlinedAt: !896)
!913 = !DILocation(line: 75, column: 7, scope: !885, inlinedAt: !896)
!914 = !DILocation(line: 78, column: 15, scope: !915, inlinedAt: !896)
!915 = distinct !DILexicalBlock(scope: !892, file: !202, line: 78, column: 11)
!916 = !DILocation(line: 78, column: 11, scope: !892, inlinedAt: !896)
!917 = !DILocation(line: 82, column: 49, scope: !918, inlinedAt: !896)
!918 = distinct !DILexicalBlock(scope: !915, file: !202, line: 81, column: 9)
!919 = !DILocalVariable(name: "__dest", arg: 1, scope: !920, file: !921, line: 34, type: !69)
!920 = distinct !DISubprogram(name: "memmove", scope: !921, file: !921, line: 34, type: !922, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !924)
!921 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!922 = !DISubroutineType(types: !923)
!923 = !{!69, !69, !767, !72}
!924 = !{!919, !925, !926}
!925 = !DILocalVariable(name: "__src", arg: 2, scope: !920, file: !921, line: 34, type: !767)
!926 = !DILocalVariable(name: "__len", arg: 3, scope: !920, file: !921, line: 34, type: !72)
!927 = !DILocation(line: 0, scope: !920, inlinedAt: !928)
!928 = distinct !DILocation(line: 82, column: 11, scope: !918, inlinedAt: !896)
!929 = !DILocation(line: 36, column: 10, scope: !920, inlinedAt: !928)
!930 = !DILocation(line: 0, scope: !892, inlinedAt: !896)
!931 = !DILocation(line: 0, scope: !915, inlinedAt: !896)
!932 = !DILocation(line: 85, column: 23, scope: !892, inlinedAt: !896)
!933 = !DILocation(line: 86, column: 41, scope: !892, inlinedAt: !896)
!934 = !DILocation(line: 89, column: 5, scope: !892, inlinedAt: !896)
!935 = !DILocation(line: 90, column: 17, scope: !936, inlinedAt: !896)
!936 = distinct !DILexicalBlock(scope: !885, file: !202, line: 90, column: 7)
!937 = !DILocation(line: 90, column: 7, scope: !885, inlinedAt: !896)
!938 = !DILocation(line: 92, column: 39, scope: !885, inlinedAt: !896)
!939 = !DILocalVariable(name: "p", arg: 1, scope: !940, file: !57, line: 230, type: !75)
!940 = distinct !DISubprogram(name: "mcel_scan", scope: !57, file: !57, line: 230, type: !941, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !943)
!941 = !DISubroutineType(types: !942)
!942 = !{!212, !75, !75}
!943 = !{!939, !944, !945, !946, !957, !958}
!944 = !DILocalVariable(name: "lim", arg: 2, scope: !940, file: !57, line: 230, type: !75)
!945 = !DILocalVariable(name: "c", scope: !940, file: !57, line: 235, type: !68)
!946 = !DILocalVariable(name: "mbs", scope: !940, file: !57, line: 244, type: !947)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !326, line: 6, baseType: !948)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !328, line: 21, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 13, size: 64, elements: !950)
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !949, file: !328, line: 15, baseType: !70, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !949, file: !328, line: 20, baseType: !953, size: 32, offset: 32)
!953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !949, file: !328, line: 16, size: 32, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !953, file: !328, line: 18, baseType: !6, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !953, file: !328, line: 19, baseType: !337, size: 32)
!957 = !DILocalVariable(name: "ch", scope: !940, file: !57, line: 267, type: !216)
!958 = !DILocalVariable(name: "len", scope: !940, file: !57, line: 268, type: !72)
!959 = !DILocation(line: 0, scope: !940, inlinedAt: !960)
!960 = distinct !DILocation(line: 92, column: 14, scope: !885, inlinedAt: !896)
!961 = !DILocation(line: 235, column: 12, scope: !940, inlinedAt: !960)
!962 = !DILocalVariable(name: "c", arg: 1, scope: !963, file: !57, line: 215, type: !68)
!963 = distinct !DISubprogram(name: "mcel_isbasic", scope: !57, file: !57, line: 215, type: !964, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !966)
!964 = !DISubroutineType(types: !965)
!965 = !{!81, !68}
!966 = !{!962}
!967 = !DILocation(line: 0, scope: !963, inlinedAt: !968)
!968 = distinct !DILocation(line: 236, column: 7, scope: !969, inlinedAt: !960)
!969 = distinct !DILexicalBlock(scope: !940, file: !57, line: 236, column: 7)
!970 = !DILocation(line: 217, column: 10, scope: !963, inlinedAt: !968)
!971 = !DILocation(line: 236, column: 7, scope: !940, inlinedAt: !960)
!972 = !DILocalVariable(name: "len", arg: 2, scope: !973, file: !57, line: 167, type: !72)
!973 = distinct !DISubprogram(name: "mcel_ch", scope: !57, file: !57, line: 167, type: !974, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{!212, !216, !72}
!976 = !{!977, !972}
!977 = !DILocalVariable(name: "ch", arg: 1, scope: !973, file: !57, line: 167, type: !216)
!978 = !DILocation(line: 0, scope: !973, inlinedAt: !979)
!979 = distinct !DILocation(line: 237, column: 12, scope: !969, inlinedAt: !960)
!980 = !DILocation(line: 172, column: 3, scope: !973, inlinedAt: !979)
!981 = !DILocation(line: 237, column: 5, scope: !969, inlinedAt: !960)
!982 = !DILocation(line: 93, column: 39, scope: !885, inlinedAt: !896)
!983 = !DILocation(line: 244, column: 3, scope: !940, inlinedAt: !960)
!984 = !DILocation(line: 244, column: 13, scope: !940, inlinedAt: !960)
!985 = !DILocation(line: 244, column: 30, scope: !940, inlinedAt: !960)
!986 = !{!987, !650, i64 0}
!987 = !{!"", !650, i64 0, !557, i64 4}
!988 = !DILocation(line: 267, column: 3, scope: !940, inlinedAt: !960)
!989 = !DILocation(line: 268, column: 38, scope: !940, inlinedAt: !960)
!990 = !DILocation(line: 268, column: 16, scope: !940, inlinedAt: !960)
!991 = !DILocation(line: 274, column: 7, scope: !992, inlinedAt: !960)
!992 = distinct !DILexicalBlock(scope: !940, file: !57, line: 274, column: 7)
!993 = !DILocation(line: 274, column: 7, scope: !940, inlinedAt: !960)
!994 = !{!"branch_weights", i32 1, i32 2000}
!995 = !DILocalVariable(name: "err", arg: 1, scope: !996, file: !57, line: 175, type: !77)
!996 = distinct !DISubprogram(name: "mcel_err", scope: !57, file: !57, line: 175, type: !997, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !999)
!997 = !DISubroutineType(types: !998)
!998 = !{!212, !77}
!999 = !{!995}
!1000 = !DILocation(line: 0, scope: !996, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 275, column: 12, scope: !992, inlinedAt: !960)
!1002 = !DILocation(line: 178, column: 3, scope: !996, inlinedAt: !1001)
!1003 = !DILocation(line: 275, column: 5, scope: !992, inlinedAt: !960)
!1004 = !DILocation(line: 279, column: 19, scope: !940, inlinedAt: !960)
!1005 = !DILocation(line: 0, scope: !973, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 279, column: 10, scope: !940, inlinedAt: !960)
!1007 = !DILocation(line: 169, column: 3, scope: !973, inlinedAt: !1006)
!1008 = !DILocation(line: 170, column: 3, scope: !973, inlinedAt: !1006)
!1009 = !DILocation(line: 171, column: 3, scope: !973, inlinedAt: !1006)
!1010 = !DILocation(line: 172, column: 3, scope: !973, inlinedAt: !1006)
!1011 = !DILocation(line: 279, column: 3, scope: !940, inlinedAt: !960)
!1012 = !DILocation(line: 280, column: 1, scope: !940, inlinedAt: !960)
!1013 = !DILocation(line: 94, column: 9, scope: !1014, inlinedAt: !896)
!1014 = distinct !DILexicalBlock(scope: !885, file: !202, line: 94, column: 7)
!1015 = !DILocation(line: 94, column: 7, scope: !885, inlinedAt: !896)
!1016 = !DILocation(line: 92, column: 14, scope: !885, inlinedAt: !896)
!1017 = !DILocation(line: 95, column: 22, scope: !1014, inlinedAt: !896)
!1018 = !DILocation(line: 95, column: 5, scope: !1014, inlinedAt: !896)
!1019 = !DILocation(line: 99, column: 30, scope: !1020, inlinedAt: !896)
!1020 = distinct !DILexicalBlock(scope: !1014, file: !202, line: 97, column: 5)
!1021 = !DILocation(line: 99, column: 14, scope: !1020, inlinedAt: !896)
!1022 = !DILocation(line: 0, scope: !1014, inlinedAt: !896)
!1023 = !DILocation(line: 187, column: 15, scope: !188)
!1024 = !DILocation(line: 117, column: 7, scope: !1025, inlinedAt: !1040)
!1025 = distinct !DISubprogram(name: "adjust_column", scope: !3, file: !3, line: 115, type: !1026, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1028)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!72, !72, !212}
!1028 = !{!1029, !1030, !1031}
!1029 = !DILocalVariable(name: "column", arg: 1, scope: !1025, file: !3, line: 115, type: !72)
!1030 = !DILocalVariable(name: "g", arg: 2, scope: !1025, file: !3, line: 115, type: !212)
!1031 = !DILocalVariable(name: "width", scope: !1032, file: !3, line: 134, type: !70)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 133, column: 13)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 130, column: 15)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 129, column: 9)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 126, column: 16)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 124, column: 16)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 119, column: 11)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 118, column: 5)
!1039 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 117, column: 7)
!1040 = distinct !DILocation(line: 196, column: 16, scope: !227)
!1041 = !DILocation(line: 191, column: 11, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 190, column: 9)
!1043 = distinct !DILexicalBlock(scope: !227, file: !3, line: 189, column: 11)
!1044 = !DILocation(line: 193, column: 11, scope: !1042)
!1045 = distinct !{!1045, !883, !1046, !616}
!1046 = !DILocation(line: 265, column: 5, scope: !188)
!1047 = !DILocation(line: 195, column: 5, scope: !227)
!1048 = !DILocation(line: 0, scope: !1025, inlinedAt: !1040)
!1049 = !DILocation(line: 117, column: 7, scope: !1039, inlinedAt: !1040)
!1050 = !DILocation(line: 117, column: 21, scope: !1039, inlinedAt: !1040)
!1051 = !DILocation(line: 119, column: 11, scope: !1038, inlinedAt: !1040)
!1052 = !DILocation(line: 121, column: 22, scope: !1053, inlinedAt: !1040)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 121, column: 15)
!1054 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 120, column: 9)
!1055 = !DILocation(line: 121, column: 15, scope: !1054, inlinedAt: !1040)
!1056 = !DILocation(line: 122, column: 23, scope: !1053, inlinedAt: !1040)
!1057 = !DILocation(line: 122, column: 20, scope: !1053, inlinedAt: !1040)
!1058 = !DILocation(line: 122, column: 13, scope: !1053, inlinedAt: !1040)
!1059 = !DILocation(line: 127, column: 29, scope: !1035, inlinedAt: !1040)
!1060 = !DILocation(line: 127, column: 16, scope: !1035, inlinedAt: !1040)
!1061 = !DILocation(line: 127, column: 9, scope: !1035, inlinedAt: !1040)
!1062 = !DILocation(line: 130, column: 29, scope: !1033, inlinedAt: !1040)
!1063 = !DILocation(line: 130, column: 15, scope: !1034, inlinedAt: !1040)
!1064 = !DILocalVariable(name: "wc", arg: 1, scope: !1065, file: !1066, line: 1004, type: !216)
!1065 = distinct !DISubprogram(name: "c32width", scope: !1066, file: !1066, line: 1004, type: !1067, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1069)
!1066 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!70, !216}
!1069 = !{!1064}
!1070 = !DILocation(line: 0, scope: !1065, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 134, column: 27, scope: !1032, inlinedAt: !1040)
!1072 = !DILocation(line: 1010, column: 10, scope: !1065, inlinedAt: !1071)
!1073 = !DILocation(line: 0, scope: !1032, inlinedAt: !1040)
!1074 = !DILocation(line: 136, column: 44, scope: !1032, inlinedAt: !1040)
!1075 = !DILocation(line: 136, column: 38, scope: !1032, inlinedAt: !1040)
!1076 = !DILocation(line: 0, scope: !1033, inlinedAt: !1040)
!1077 = !DILocation(line: 138, column: 21, scope: !1034, inlinedAt: !1040)
!1078 = !DILocation(line: 138, column: 18, scope: !1034, inlinedAt: !1040)
!1079 = !DILocation(line: 142, column: 12, scope: !1039, inlinedAt: !1040)
!1080 = !DILocation(line: 198, column: 18, scope: !226)
!1081 = !DILocation(line: 198, column: 11, scope: !227)
!1082 = !DILocation(line: 203, column: 15, scope: !224)
!1083 = !DILocation(line: 203, column: 15, scope: !225)
!1084 = !DILocation(line: 0, scope: !223)
!1085 = !DILocation(line: 208, column: 45, scope: !223)
!1086 = !DILocation(line: 210, column: 41, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !232, file: !3, line: 210, column: 15)
!1088 = !DILocation(line: 210, column: 15, scope: !232)
!1089 = !DILocation(line: 220, column: 19, scope: !235)
!1090 = !DILocation(line: 220, column: 19, scope: !223)
!1091 = !DILocation(line: 0, scope: !940, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 212, column: 24, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 211, column: 17)
!1094 = !DILocation(line: 235, column: 12, scope: !940, inlinedAt: !1092)
!1095 = !DILocation(line: 0, scope: !963, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 236, column: 7, scope: !969, inlinedAt: !1092)
!1097 = !DILocation(line: 217, column: 10, scope: !963, inlinedAt: !1096)
!1098 = !DILocation(line: 236, column: 7, scope: !940, inlinedAt: !1092)
!1099 = !DILocation(line: 0, scope: !973, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 237, column: 12, scope: !969, inlinedAt: !1092)
!1101 = !DILocation(line: 172, column: 3, scope: !973, inlinedAt: !1100)
!1102 = !DILocation(line: 213, column: 23, scope: !1093)
!1103 = !DILocation(line: 237, column: 5, scope: !969, inlinedAt: !1092)
!1104 = !DILocation(line: 244, column: 3, scope: !940, inlinedAt: !1092)
!1105 = !DILocation(line: 244, column: 13, scope: !940, inlinedAt: !1092)
!1106 = !DILocation(line: 244, column: 30, scope: !940, inlinedAt: !1092)
!1107 = !DILocation(line: 267, column: 3, scope: !940, inlinedAt: !1092)
!1108 = !DILocation(line: 268, column: 38, scope: !940, inlinedAt: !1092)
!1109 = !DILocation(line: 268, column: 16, scope: !940, inlinedAt: !1092)
!1110 = !DILocation(line: 274, column: 7, scope: !992, inlinedAt: !1092)
!1111 = !DILocation(line: 274, column: 7, scope: !940, inlinedAt: !1092)
!1112 = !DILocation(line: 279, column: 19, scope: !940, inlinedAt: !1092)
!1113 = !DILocation(line: 0, scope: !973, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 279, column: 10, scope: !940, inlinedAt: !1092)
!1115 = !DILocation(line: 169, column: 3, scope: !973, inlinedAt: !1114)
!1116 = !DILocation(line: 170, column: 3, scope: !973, inlinedAt: !1114)
!1117 = !DILocation(line: 171, column: 3, scope: !973, inlinedAt: !1114)
!1118 = !DILocation(line: 172, column: 3, scope: !973, inlinedAt: !1114)
!1119 = !DILocation(line: 279, column: 3, scope: !940, inlinedAt: !1092)
!1120 = !DILocation(line: 280, column: 1, scope: !940, inlinedAt: !1092)
!1121 = !DILocation(line: 212, column: 24, scope: !1093)
!1122 = !DILocation(line: 0, scope: !232)
!1123 = !DILocalVariable(name: "wc", arg: 1, scope: !1124, file: !87, line: 178, type: !216)
!1124 = distinct !DISubprogram(name: "c32issep", scope: !87, file: !87, line: 178, type: !1125, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!81, !216}
!1127 = !{!1123}
!1128 = !DILocation(line: 0, scope: !1124, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 213, column: 23, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 213, column: 23)
!1131 = !DILocalVariable(name: "wc", arg: 1, scope: !1132, file: !1066, line: 770, type: !1135)
!1132 = distinct !DISubprogram(name: "c32isblank", scope: !1066, file: !1066, line: 770, type: !1133, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1137)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!70, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1136, line: 20, baseType: !6)
!1136 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1137 = !{!1131}
!1138 = !DILocation(line: 0, scope: !1132, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 181, column: 13, scope: !1124, inlinedAt: !1129)
!1140 = !DILocation(line: 776, column: 10, scope: !1132, inlinedAt: !1139)
!1141 = !DILocation(line: 181, column: 11, scope: !1124, inlinedAt: !1129)
!1142 = !DILocation(line: 210, column: 69, scope: !1087)
!1143 = !DILocation(line: 210, column: 66, scope: !1087)
!1144 = distinct !{!1144, !1088, !1145, !616}
!1145 = !DILocation(line: 218, column: 17, scope: !232)
!1146 = !DILocation(line: 222, column: 31, scope: !234)
!1147 = !DILocalVariable(name: "line", arg: 1, scope: !1148, file: !3, line: 147, type: !75)
!1148 = distinct !DISubprogram(name: "write_out", scope: !3, file: !3, line: 147, type: !1149, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1151)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !75, !72, !81}
!1151 = !{!1147, !1152, !1153, !1154, !1157, !1158}
!1152 = !DILocalVariable(name: "line_len", arg: 2, scope: !1148, file: !3, line: 147, type: !72)
!1153 = !DILocalVariable(name: "newline", arg: 3, scope: !1148, file: !3, line: 147, type: !81)
!1154 = !DILocalVariable(name: "__ptr", scope: !1155, file: !3, line: 149, type: !75)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 149, column: 7)
!1156 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 149, column: 7)
!1157 = !DILocalVariable(name: "__stream", scope: !1155, file: !3, line: 149, type: !109)
!1158 = !DILocalVariable(name: "__cnt", scope: !1155, file: !3, line: 149, type: !72)
!1159 = !DILocation(line: 0, scope: !1148, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 224, column: 19, scope: !234)
!1161 = !DILocation(line: 149, column: 7, scope: !1156, inlinedAt: !1160)
!1162 = !DILocation(line: 149, column: 54, scope: !1156, inlinedAt: !1160)
!1163 = !DILocation(line: 150, column: 7, scope: !1156, inlinedAt: !1160)
!1164 = !DILocalVariable(name: "__c", arg: 1, scope: !1165, file: !902, line: 108, type: !70)
!1165 = distinct !DISubprogram(name: "putchar_unlocked", scope: !902, file: !902, line: 108, type: !1166, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!70, !70}
!1168 = !{!1164}
!1169 = !DILocation(line: 0, scope: !1165, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 150, column: 22, scope: !1156, inlinedAt: !1160)
!1171 = !DILocation(line: 110, column: 10, scope: !1165, inlinedAt: !1170)
!1172 = !{!910, !556, i64 40}
!1173 = !{!910, !556, i64 48}
!1174 = !{!"branch_weights", i32 2000, i32 1}
!1175 = !DILocation(line: 149, column: 7, scope: !1148, inlinedAt: !1160)
!1176 = !DILocation(line: 150, column: 37, scope: !1156, inlinedAt: !1160)
!1177 = !DILocation(line: 948, column: 21, scope: !1178, inlinedAt: !1181)
!1178 = distinct !DISubprogram(name: "write_error", scope: !87, file: !87, line: 946, type: !303, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1179)
!1179 = !{!1180}
!1180 = !DILocalVariable(name: "saved_errno", scope: !1178, file: !87, line: 948, type: !70)
!1181 = distinct !DILocation(line: 151, column: 5, scope: !1156, inlinedAt: !1160)
!1182 = !DILocation(line: 0, scope: !1178, inlinedAt: !1181)
!1183 = !DILocation(line: 949, column: 3, scope: !1178, inlinedAt: !1181)
!1184 = !DILocation(line: 950, column: 11, scope: !1178, inlinedAt: !1181)
!1185 = !DILocation(line: 950, column: 3, scope: !1178, inlinedAt: !1181)
!1186 = !DILocation(line: 951, column: 3, scope: !1178, inlinedAt: !1181)
!1187 = !DILocation(line: 952, column: 3, scope: !1178, inlinedAt: !1181)
!1188 = !DILocation(line: 227, column: 47, scope: !234)
!1189 = !DILocation(line: 228, column: 39, scope: !234)
!1190 = !DILocation(line: 0, scope: !920, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 227, column: 19, scope: !234)
!1192 = !DILocation(line: 36, column: 10, scope: !920, inlinedAt: !1191)
!1193 = !DILocation(line: 0, scope: !234)
!1194 = !DILocation(line: 232, column: 49, scope: !234)
!1195 = !DILocation(line: 233, column: 45, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !238, file: !3, line: 233, column: 19)
!1197 = !DILocation(line: 233, column: 19, scope: !238)
!1198 = !DILocation(line: 0, scope: !940, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 236, column: 28, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 235, column: 21)
!1201 = !DILocation(line: 235, column: 12, scope: !940, inlinedAt: !1199)
!1202 = !DILocation(line: 0, scope: !963, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 236, column: 7, scope: !969, inlinedAt: !1199)
!1204 = !DILocation(line: 217, column: 10, scope: !963, inlinedAt: !1203)
!1205 = !DILocation(line: 236, column: 7, scope: !940, inlinedAt: !1199)
!1206 = !DILocation(line: 0, scope: !973, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 237, column: 12, scope: !969, inlinedAt: !1199)
!1208 = !DILocation(line: 172, column: 3, scope: !973, inlinedAt: !1207)
!1209 = !DILocation(line: 237, column: 5, scope: !969, inlinedAt: !1199)
!1210 = !DILocation(line: 244, column: 3, scope: !940, inlinedAt: !1199)
!1211 = !DILocation(line: 244, column: 13, scope: !940, inlinedAt: !1199)
!1212 = !DILocation(line: 244, column: 30, scope: !940, inlinedAt: !1199)
!1213 = !DILocation(line: 267, column: 3, scope: !940, inlinedAt: !1199)
!1214 = !DILocation(line: 268, column: 38, scope: !940, inlinedAt: !1199)
!1215 = !DILocation(line: 268, column: 16, scope: !940, inlinedAt: !1199)
!1216 = !DILocation(line: 274, column: 7, scope: !992, inlinedAt: !1199)
!1217 = !DILocation(line: 274, column: 7, scope: !940, inlinedAt: !1199)
!1218 = !DILocation(line: 279, column: 19, scope: !940, inlinedAt: !1199)
!1219 = !DILocation(line: 0, scope: !973, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 279, column: 10, scope: !940, inlinedAt: !1199)
!1221 = !DILocation(line: 169, column: 3, scope: !973, inlinedAt: !1220)
!1222 = !DILocation(line: 170, column: 3, scope: !973, inlinedAt: !1220)
!1223 = !DILocation(line: 171, column: 3, scope: !973, inlinedAt: !1220)
!1224 = !DILocation(line: 172, column: 3, scope: !973, inlinedAt: !1220)
!1225 = !DILocation(line: 279, column: 3, scope: !940, inlinedAt: !1199)
!1226 = !DILocation(line: 280, column: 1, scope: !940, inlinedAt: !1199)
!1227 = !DILocation(line: 0, scope: !238)
!1228 = !DILocation(line: 236, column: 28, scope: !1200)
!1229 = !DILocation(line: 0, scope: !1025, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 237, column: 32, scope: !1200)
!1231 = !DILocation(line: 117, column: 7, scope: !1039, inlinedAt: !1230)
!1232 = !DILocation(line: 117, column: 21, scope: !1039, inlinedAt: !1230)
!1233 = !DILocation(line: 117, column: 7, scope: !1025, inlinedAt: !1230)
!1234 = !DILocation(line: 119, column: 11, scope: !1038, inlinedAt: !1230)
!1235 = !DILocation(line: 121, column: 22, scope: !1053, inlinedAt: !1230)
!1236 = !DILocation(line: 121, column: 15, scope: !1054, inlinedAt: !1230)
!1237 = !DILocation(line: 122, column: 23, scope: !1053, inlinedAt: !1230)
!1238 = !DILocation(line: 122, column: 20, scope: !1053, inlinedAt: !1230)
!1239 = !DILocation(line: 122, column: 13, scope: !1053, inlinedAt: !1230)
!1240 = !DILocation(line: 127, column: 29, scope: !1035, inlinedAt: !1230)
!1241 = !DILocation(line: 127, column: 16, scope: !1035, inlinedAt: !1230)
!1242 = !DILocation(line: 127, column: 9, scope: !1035, inlinedAt: !1230)
!1243 = !DILocation(line: 130, column: 29, scope: !1033, inlinedAt: !1230)
!1244 = !DILocation(line: 130, column: 15, scope: !1034, inlinedAt: !1230)
!1245 = !DILocation(line: 0, scope: !1065, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 134, column: 27, scope: !1032, inlinedAt: !1230)
!1247 = !DILocation(line: 1010, column: 10, scope: !1065, inlinedAt: !1246)
!1248 = !DILocation(line: 0, scope: !1032, inlinedAt: !1230)
!1249 = !DILocation(line: 136, column: 44, scope: !1032, inlinedAt: !1230)
!1250 = !DILocation(line: 136, column: 38, scope: !1032, inlinedAt: !1230)
!1251 = !DILocation(line: 0, scope: !1033, inlinedAt: !1230)
!1252 = !DILocation(line: 138, column: 21, scope: !1034, inlinedAt: !1230)
!1253 = !DILocation(line: 138, column: 18, scope: !1034, inlinedAt: !1230)
!1254 = !DILocation(line: 142, column: 15, scope: !1039, inlinedAt: !1230)
!1255 = !DILocation(line: 142, column: 12, scope: !1039, inlinedAt: !1230)
!1256 = !DILocation(line: 234, column: 37, scope: !1196)
!1257 = !DILocation(line: 234, column: 34, scope: !1196)
!1258 = distinct !{!1258, !1197, !1259, !616}
!1259 = !DILocation(line: 238, column: 21, scope: !238)
!1260 = !DILocation(line: 243, column: 26, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !225, file: !3, line: 243, column: 15)
!1262 = !DILocation(line: 243, column: 15, scope: !225)
!1263 = !DILocalVariable(name: "g", arg: 2, scope: !1264, file: !202, line: 107, type: !212)
!1264 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !202, file: !202, line: 107, type: !1265, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1267)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!67, !888, !212}
!1267 = !{!1268, !1263}
!1268 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1264, file: !202, line: 107, type: !888)
!1269 = !DILocation(line: 0, scope: !1264, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 245, column: 33, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 244, column: 13)
!1272 = !DILocation(line: 109, column: 21, scope: !1273, inlinedAt: !1270)
!1273 = distinct !DILexicalBlock(scope: !1264, file: !202, line: 109, column: 7)
!1274 = !DILocation(line: 109, column: 7, scope: !1264, inlinedAt: !1270)
!1275 = !DILocation(line: 111, column: 41, scope: !1264, inlinedAt: !1270)
!1276 = !DILocation(line: 111, column: 24, scope: !1264, inlinedAt: !1270)
!1277 = !DILocalVariable(name: "__dest", arg: 1, scope: !1278, file: !921, line: 26, type: !1281)
!1278 = distinct !DISubprogram(name: "memcpy", scope: !921, file: !921, line: 26, type: !1279, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1282)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!69, !1281, !766, !72}
!1281 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!1282 = !{!1277, !1283, !1284}
!1283 = !DILocalVariable(name: "__src", arg: 2, scope: !1278, file: !921, line: 26, type: !766)
!1284 = !DILocalVariable(name: "__len", arg: 3, scope: !1278, file: !921, line: 26, type: !72)
!1285 = !DILocation(line: 0, scope: !1278, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 245, column: 15, scope: !1271)
!1287 = !DILocation(line: 29, column: 10, scope: !1278, inlinedAt: !1286)
!1288 = !{!1289, !1291}
!1289 = distinct !{!1289, !1290, !"memcpy.inline: argument 0"}
!1290 = distinct !{!1290, !"memcpy.inline"}
!1291 = distinct !{!1291, !1290, !"memcpy.inline: argument 1"}
!1292 = !DILocation(line: 247, column: 15, scope: !1271)
!1293 = !DILocation(line: 0, scope: !1148, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 250, column: 11, scope: !225)
!1295 = !DILocation(line: 0, scope: !1156, inlinedAt: !1294)
!1296 = !DILocation(line: 149, column: 7, scope: !1156, inlinedAt: !1294)
!1297 = !DILocation(line: 149, column: 54, scope: !1156, inlinedAt: !1294)
!1298 = !DILocation(line: 150, column: 7, scope: !1156, inlinedAt: !1294)
!1299 = !DILocation(line: 0, scope: !1165, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 150, column: 22, scope: !1156, inlinedAt: !1294)
!1301 = !DILocation(line: 110, column: 10, scope: !1165, inlinedAt: !1300)
!1302 = !DILocation(line: 149, column: 7, scope: !1148, inlinedAt: !1294)
!1303 = !DILocation(line: 150, column: 37, scope: !1156, inlinedAt: !1294)
!1304 = !DILocation(line: 948, column: 21, scope: !1178, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 151, column: 5, scope: !1156, inlinedAt: !1294)
!1306 = !DILocation(line: 0, scope: !1178, inlinedAt: !1305)
!1307 = !DILocation(line: 949, column: 3, scope: !1178, inlinedAt: !1305)
!1308 = !DILocation(line: 950, column: 11, scope: !1178, inlinedAt: !1305)
!1309 = !DILocation(line: 950, column: 3, scope: !1178, inlinedAt: !1305)
!1310 = !DILocation(line: 951, column: 3, scope: !1178, inlinedAt: !1305)
!1311 = !DILocation(line: 952, column: 3, scope: !1178, inlinedAt: !1305)
!1312 = !DILocation(line: 257, column: 41, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !227, file: !3, line: 257, column: 11)
!1314 = !DILocation(line: 257, column: 27, scope: !1313)
!1315 = !DILocation(line: 257, column: 11, scope: !227)
!1316 = !DILocation(line: 259, column: 11, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 258, column: 9)
!1318 = !DILocation(line: 261, column: 9, scope: !1317)
!1319 = !DILocation(line: 263, column: 24, scope: !227)
!1320 = !DILocation(line: 0, scope: !1264, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 263, column: 38, scope: !227)
!1322 = !DILocation(line: 109, column: 21, scope: !1273, inlinedAt: !1321)
!1323 = !DILocation(line: 109, column: 7, scope: !1264, inlinedAt: !1321)
!1324 = !DILocation(line: 111, column: 41, scope: !1264, inlinedAt: !1321)
!1325 = !DILocation(line: 111, column: 24, scope: !1264, inlinedAt: !1321)
!1326 = !DILocation(line: 0, scope: !1278, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 263, column: 7, scope: !227)
!1328 = !DILocation(line: 29, column: 10, scope: !1278, inlinedAt: !1327)
!1329 = !DILocation(line: 264, column: 18, scope: !227)
!1330 = !DILocation(line: 267, column: 17, scope: !188)
!1331 = !DILocalVariable(name: "__stream", arg: 1, scope: !1332, file: !902, line: 135, type: !109)
!1332 = distinct !DISubprogram(name: "ferror_unlocked", scope: !902, file: !902, line: 135, type: !903, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1333)
!1333 = !{!1331}
!1334 = !DILocation(line: 0, scope: !1332, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 268, column: 8, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !188, file: !3, line: 268, column: 7)
!1337 = !DILocation(line: 137, column: 10, scope: !1332, inlinedAt: !1335)
!1338 = !DILocation(line: 268, column: 8, scope: !1336)
!1339 = !DILocation(line: 268, column: 7, scope: !188)
!1340 = !DILocation(line: 271, column: 7, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !188, file: !3, line: 271, column: 7)
!1342 = !DILocation(line: 271, column: 7, scope: !188)
!1343 = !DILocation(line: 272, column: 5, scope: !1341)
!1344 = !DILocation(line: 0, scope: !599, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 274, column: 7, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !188, file: !3, line: 274, column: 7)
!1347 = !DILocation(line: 1361, column: 11, scope: !599, inlinedAt: !1345)
!1348 = !DILocation(line: 1361, column: 10, scope: !599, inlinedAt: !1345)
!1349 = !DILocation(line: 274, column: 7, scope: !188)
!1350 = !DILocation(line: 275, column: 5, scope: !1346)
!1351 = !DILocation(line: 276, column: 12, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 276, column: 12)
!1353 = !DILocation(line: 276, column: 29, scope: !1352)
!1354 = !DILocation(line: 276, column: 34, scope: !1352)
!1355 = !DILocation(line: 277, column: 19, scope: !1352)
!1356 = !DILocation(line: 277, column: 5, scope: !1352)
!1357 = !DILocation(line: 279, column: 7, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !188, file: !3, line: 279, column: 7)
!1359 = !DILocation(line: 279, column: 7, scope: !188)
!1360 = !DILocation(line: 281, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 280, column: 5)
!1362 = !DILocation(line: 282, column: 7, scope: !1361)
!1363 = !DILocation(line: 286, column: 1, scope: !188)
!1364 = !DISubprogram(name: "mbrtoc32", scope: !217, file: !217, line: 57, type: !1365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!72, !1367, !645, !72, !1369}
!1367 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1368)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1370)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!1371 = !DILocation(line: 0, scope: !1148)
!1372 = !DILocation(line: 149, column: 7, scope: !1156)
!1373 = !DILocation(line: 149, column: 54, scope: !1156)
!1374 = !DILocation(line: 150, column: 7, scope: !1156)
!1375 = !DILocation(line: 150, column: 19, scope: !1156)
!1376 = !DILocation(line: 0, scope: !1165, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 150, column: 22, scope: !1156)
!1378 = !DILocation(line: 110, column: 10, scope: !1165, inlinedAt: !1377)
!1379 = !DILocation(line: 149, column: 7, scope: !1148)
!1380 = !DILocation(line: 150, column: 37, scope: !1156)
!1381 = !DILocation(line: 948, column: 21, scope: !1178, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 151, column: 5, scope: !1156)
!1383 = !DILocation(line: 0, scope: !1178, inlinedAt: !1382)
!1384 = !DILocation(line: 949, column: 3, scope: !1178, inlinedAt: !1382)
!1385 = !DILocation(line: 950, column: 11, scope: !1178, inlinedAt: !1382)
!1386 = !DILocation(line: 950, column: 3, scope: !1178, inlinedAt: !1382)
!1387 = !DILocation(line: 951, column: 3, scope: !1178, inlinedAt: !1382)
!1388 = !DILocation(line: 952, column: 3, scope: !1178, inlinedAt: !1382)
!1389 = !DILocation(line: 152, column: 1, scope: !1148)
!1390 = !DISubprogram(name: "wcwidth", scope: !1391, file: !1391, line: 368, type: !1392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1391 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!70, !1394}
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !73, line: 74, baseType: !6)
!1395 = !DISubprogram(name: "iswblank", scope: !1396, file: !1396, line: 146, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1396 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1397 = !DISubprogram(name: "fflush_unlocked", scope: !276, file: !276, line: 239, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1398 = !DISubprogram(name: "clearerr_unlocked", scope: !276, file: !276, line: 794, type: !1399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{null, !109}
!1401 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !260, file: !260, line: 50, type: !577, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1402)
!1402 = !{!1403}
!1403 = !DILocalVariable(name: "file", arg: 1, scope: !1401, file: !260, line: 50, type: !75)
!1404 = !DILocation(line: 0, scope: !1401)
!1405 = !DILocation(line: 52, column: 13, scope: !1401)
!1406 = !DILocation(line: 53, column: 1, scope: !1401)
!1407 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !260, file: !260, line: 87, type: !1408, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1410)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !81}
!1410 = !{!1411}
!1411 = !DILocalVariable(name: "ignore", arg: 1, scope: !1407, file: !260, line: 87, type: !81)
!1412 = !DILocation(line: 0, scope: !1407)
!1413 = !DILocation(line: 89, column: 16, scope: !1407)
!1414 = !{!1415, !1415, i64 0}
!1415 = !{!"_Bool", !557, i64 0}
!1416 = !DILocation(line: 90, column: 1, scope: !1407)
!1417 = distinct !DISubprogram(name: "close_stdout", scope: !260, file: !260, line: 116, type: !303, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1418)
!1418 = !{!1419}
!1419 = !DILocalVariable(name: "write_error", scope: !1420, file: !260, line: 121, type: !75)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !260, line: 120, column: 5)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !260, line: 118, column: 7)
!1422 = !DILocation(line: 118, column: 21, scope: !1421)
!1423 = !DILocation(line: 118, column: 7, scope: !1421)
!1424 = !DILocation(line: 118, column: 29, scope: !1421)
!1425 = !DILocation(line: 119, column: 7, scope: !1421)
!1426 = !DILocation(line: 119, column: 12, scope: !1421)
!1427 = !{i8 0, i8 2}
!1428 = !DILocation(line: 119, column: 25, scope: !1421)
!1429 = !DILocation(line: 119, column: 28, scope: !1421)
!1430 = !DILocation(line: 119, column: 34, scope: !1421)
!1431 = !DILocation(line: 118, column: 7, scope: !1417)
!1432 = !DILocation(line: 121, column: 33, scope: !1420)
!1433 = !DILocation(line: 0, scope: !1420)
!1434 = !DILocation(line: 122, column: 11, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1420, file: !260, line: 122, column: 11)
!1436 = !DILocation(line: 0, scope: !1435)
!1437 = !DILocation(line: 122, column: 11, scope: !1420)
!1438 = !DILocation(line: 123, column: 9, scope: !1435)
!1439 = !DILocation(line: 126, column: 9, scope: !1435)
!1440 = !DILocation(line: 128, column: 14, scope: !1420)
!1441 = !DILocation(line: 128, column: 7, scope: !1420)
!1442 = !DILocation(line: 133, column: 42, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1417, file: !260, line: 133, column: 7)
!1444 = !DILocation(line: 133, column: 28, scope: !1443)
!1445 = !DILocation(line: 133, column: 50, scope: !1443)
!1446 = !DILocation(line: 133, column: 7, scope: !1417)
!1447 = !DILocation(line: 134, column: 12, scope: !1443)
!1448 = !DILocation(line: 134, column: 5, scope: !1443)
!1449 = !DILocation(line: 135, column: 1, scope: !1417)
!1450 = distinct !DISubprogram(name: "verror", scope: !267, file: !267, line: 251, type: !1451, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1453)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{null, !70, !70, !75, !275}
!1453 = !{!1454, !1455, !1456, !1457}
!1454 = !DILocalVariable(name: "status", arg: 1, scope: !1450, file: !267, line: 251, type: !70)
!1455 = !DILocalVariable(name: "errnum", arg: 2, scope: !1450, file: !267, line: 251, type: !70)
!1456 = !DILocalVariable(name: "message", arg: 3, scope: !1450, file: !267, line: 251, type: !75)
!1457 = !DILocalVariable(name: "args", arg: 4, scope: !1450, file: !267, line: 251, type: !275)
!1458 = !DILocation(line: 0, scope: !1450)
!1459 = !DILocation(line: 251, column: 1, scope: !1450)
!1460 = !DILocation(line: 261, column: 3, scope: !1450)
!1461 = !DILocation(line: 265, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1450, file: !267, line: 265, column: 7)
!1463 = !DILocation(line: 265, column: 7, scope: !1450)
!1464 = !DILocation(line: 266, column: 5, scope: !1462)
!1465 = !DILocation(line: 272, column: 7, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1462, file: !267, line: 268, column: 5)
!1467 = !DILocation(line: 276, column: 3, scope: !1450)
!1468 = !{i64 0, i64 8, !555, i64 8, i64 8, !555, i64 16, i64 8, !555, i64 24, i64 4, !649, i64 28, i64 4, !649}
!1469 = !DILocation(line: 282, column: 1, scope: !1450)
!1470 = distinct !DISubprogram(name: "flush_stdout", scope: !267, file: !267, line: 163, type: !303, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1471)
!1471 = !{!1472}
!1472 = !DILocalVariable(name: "stdout_fd", scope: !1470, file: !267, line: 166, type: !70)
!1473 = !DILocation(line: 0, scope: !1470)
!1474 = !DILocalVariable(name: "fd", arg: 1, scope: !1475, file: !267, line: 145, type: !70)
!1475 = distinct !DISubprogram(name: "is_open", scope: !267, file: !267, line: 145, type: !1166, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1476)
!1476 = !{!1474}
!1477 = !DILocation(line: 0, scope: !1475, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 182, column: 25, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1470, file: !267, line: 182, column: 7)
!1480 = !DILocation(line: 157, column: 15, scope: !1475, inlinedAt: !1478)
!1481 = !DILocation(line: 182, column: 25, scope: !1479)
!1482 = !DILocation(line: 182, column: 7, scope: !1470)
!1483 = !DILocation(line: 184, column: 5, scope: !1479)
!1484 = !DILocation(line: 185, column: 1, scope: !1470)
!1485 = distinct !DISubprogram(name: "error_tail", scope: !267, file: !267, line: 219, type: !1451, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1486)
!1486 = !{!1487, !1488, !1489, !1490}
!1487 = !DILocalVariable(name: "status", arg: 1, scope: !1485, file: !267, line: 219, type: !70)
!1488 = !DILocalVariable(name: "errnum", arg: 2, scope: !1485, file: !267, line: 219, type: !70)
!1489 = !DILocalVariable(name: "message", arg: 3, scope: !1485, file: !267, line: 219, type: !75)
!1490 = !DILocalVariable(name: "args", arg: 4, scope: !1485, file: !267, line: 219, type: !275)
!1491 = !DILocation(line: 0, scope: !1485)
!1492 = !DILocation(line: 219, column: 1, scope: !1485)
!1493 = !DILocation(line: 229, column: 13, scope: !1485)
!1494 = !DILocation(line: 229, column: 3, scope: !1485)
!1495 = !DILocalVariable(name: "__stream", arg: 1, scope: !1496, file: !1497, line: 132, type: !1500)
!1496 = distinct !DISubprogram(name: "vfprintf", scope: !1497, file: !1497, line: 132, type: !1498, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1535)
!1497 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!70, !1500, !645, !277}
!1500 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1501)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !1503)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1503, file: !113, line: 51, baseType: !70, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1503, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1503, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1503, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1503, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1503, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1503, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1503, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1503, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1503, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1503, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1503, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1503, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1503, file: !113, line: 70, baseType: !1519, size: 64, offset: 832)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1503, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1503, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1503, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1503, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1503, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1503, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1503, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1503, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1503, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1503, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1503, file: !113, line: 93, baseType: !1519, size: 64, offset: 1344)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1503, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1503, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1503, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1503, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!1535 = !{!1495, !1536, !1537}
!1536 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1496, file: !1497, line: 133, type: !645)
!1537 = !DILocalVariable(name: "__ap", arg: 3, scope: !1496, file: !1497, line: 133, type: !277)
!1538 = !DILocation(line: 0, scope: !1496, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 229, column: 3, scope: !1485)
!1540 = !DILocation(line: 135, column: 10, scope: !1496, inlinedAt: !1539)
!1541 = !{!1542, !1544}
!1542 = distinct !{!1542, !1543, !"vfprintf.inline: argument 0"}
!1543 = distinct !{!1543, !"vfprintf.inline"}
!1544 = distinct !{!1544, !1543, !"vfprintf.inline: argument 1"}
!1545 = !DILocation(line: 232, column: 3, scope: !1485)
!1546 = !DILocation(line: 233, column: 7, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1485, file: !267, line: 233, column: 7)
!1548 = !DILocation(line: 233, column: 7, scope: !1485)
!1549 = !DILocalVariable(name: "errnum", arg: 1, scope: !1550, file: !267, line: 188, type: !70)
!1550 = distinct !DISubprogram(name: "print_errno_message", scope: !267, file: !267, line: 188, type: !545, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1551)
!1551 = !{!1549, !1552, !1553}
!1552 = !DILocalVariable(name: "s", scope: !1550, file: !267, line: 190, type: !75)
!1553 = !DILocalVariable(name: "errbuf", scope: !1550, file: !267, line: 193, type: !1554)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 8192, elements: !1555)
!1555 = !{!1556}
!1556 = !DISubrange(count: 1024)
!1557 = !DILocation(line: 0, scope: !1550, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 234, column: 5, scope: !1547)
!1559 = !DILocation(line: 193, column: 3, scope: !1550, inlinedAt: !1558)
!1560 = !DILocation(line: 193, column: 8, scope: !1550, inlinedAt: !1558)
!1561 = !DILocation(line: 195, column: 7, scope: !1550, inlinedAt: !1558)
!1562 = !DILocation(line: 207, column: 9, scope: !1563, inlinedAt: !1558)
!1563 = distinct !DILexicalBlock(scope: !1550, file: !267, line: 207, column: 7)
!1564 = !DILocation(line: 207, column: 7, scope: !1550, inlinedAt: !1558)
!1565 = !DILocation(line: 208, column: 9, scope: !1563, inlinedAt: !1558)
!1566 = !DILocation(line: 208, column: 5, scope: !1563, inlinedAt: !1558)
!1567 = !DILocation(line: 214, column: 3, scope: !1550, inlinedAt: !1558)
!1568 = !DILocation(line: 216, column: 1, scope: !1550, inlinedAt: !1558)
!1569 = !DILocation(line: 234, column: 5, scope: !1547)
!1570 = !DILocation(line: 238, column: 3, scope: !1485)
!1571 = !DILocalVariable(name: "__c", arg: 1, scope: !1572, file: !902, line: 101, type: !70)
!1572 = distinct !DISubprogram(name: "putc_unlocked", scope: !902, file: !902, line: 101, type: !1573, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1575)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!70, !70, !1501}
!1575 = !{!1571, !1576}
!1576 = !DILocalVariable(name: "__stream", arg: 2, scope: !1572, file: !902, line: 101, type: !1501)
!1577 = !DILocation(line: 0, scope: !1572, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 238, column: 3, scope: !1485)
!1579 = !DILocation(line: 103, column: 10, scope: !1572, inlinedAt: !1578)
!1580 = !DILocation(line: 240, column: 3, scope: !1485)
!1581 = !DILocation(line: 241, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1485, file: !267, line: 241, column: 7)
!1583 = !DILocation(line: 241, column: 7, scope: !1485)
!1584 = !DILocation(line: 242, column: 5, scope: !1582)
!1585 = !DILocation(line: 243, column: 1, scope: !1485)
!1586 = !DISubprogram(name: "strerror_r", scope: !1587, file: !1587, line: 444, type: !1588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1587 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!67, !70, !67, !72}
!1590 = !DISubprogram(name: "fcntl", scope: !1591, file: !1591, line: 149, type: !1592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1591 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!70, !70, !70, null}
!1594 = distinct !DISubprogram(name: "error", scope: !267, file: !267, line: 285, type: !1595, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1597)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !70, !70, !75, null}
!1597 = !{!1598, !1599, !1600, !1601}
!1598 = !DILocalVariable(name: "status", arg: 1, scope: !1594, file: !267, line: 285, type: !70)
!1599 = !DILocalVariable(name: "errnum", arg: 2, scope: !1594, file: !267, line: 285, type: !70)
!1600 = !DILocalVariable(name: "message", arg: 3, scope: !1594, file: !267, line: 285, type: !75)
!1601 = !DILocalVariable(name: "ap", scope: !1594, file: !267, line: 287, type: !275)
!1602 = !DILocation(line: 0, scope: !1594)
!1603 = !DILocation(line: 287, column: 3, scope: !1594)
!1604 = !DILocation(line: 287, column: 11, scope: !1594)
!1605 = !DILocation(line: 288, column: 3, scope: !1594)
!1606 = !DILocation(line: 289, column: 3, scope: !1594)
!1607 = !DILocation(line: 290, column: 3, scope: !1594)
!1608 = !DILocation(line: 291, column: 1, scope: !1594)
!1609 = !DILocation(line: 0, scope: !272)
!1610 = !DILocation(line: 298, column: 1, scope: !272)
!1611 = !DILocation(line: 302, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !272, file: !267, line: 302, column: 7)
!1613 = !DILocation(line: 302, column: 7, scope: !272)
!1614 = !DILocation(line: 307, column: 11, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !267, line: 307, column: 11)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !267, line: 303, column: 5)
!1617 = !DILocation(line: 307, column: 27, scope: !1615)
!1618 = !DILocation(line: 308, column: 11, scope: !1615)
!1619 = !DILocation(line: 308, column: 28, scope: !1615)
!1620 = !DILocation(line: 308, column: 25, scope: !1615)
!1621 = !DILocation(line: 309, column: 15, scope: !1615)
!1622 = !DILocation(line: 309, column: 33, scope: !1615)
!1623 = !DILocation(line: 310, column: 19, scope: !1615)
!1624 = !DILocation(line: 311, column: 22, scope: !1615)
!1625 = !DILocation(line: 311, column: 56, scope: !1615)
!1626 = !DILocation(line: 307, column: 11, scope: !1616)
!1627 = !DILocation(line: 316, column: 21, scope: !1616)
!1628 = !DILocation(line: 317, column: 23, scope: !1616)
!1629 = !DILocation(line: 318, column: 5, scope: !1616)
!1630 = !DILocation(line: 327, column: 3, scope: !272)
!1631 = !DILocation(line: 331, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !272, file: !267, line: 331, column: 7)
!1633 = !DILocation(line: 331, column: 7, scope: !272)
!1634 = !DILocation(line: 332, column: 5, scope: !1632)
!1635 = !DILocation(line: 338, column: 7, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !267, line: 334, column: 5)
!1637 = !DILocation(line: 346, column: 3, scope: !272)
!1638 = !DILocation(line: 350, column: 3, scope: !272)
!1639 = !DILocation(line: 356, column: 1, scope: !272)
!1640 = distinct !DISubprogram(name: "error_at_line", scope: !267, file: !267, line: 359, type: !1641, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1643)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !70, !70, !75, !6, !75, null}
!1643 = !{!1644, !1645, !1646, !1647, !1648, !1649}
!1644 = !DILocalVariable(name: "status", arg: 1, scope: !1640, file: !267, line: 359, type: !70)
!1645 = !DILocalVariable(name: "errnum", arg: 2, scope: !1640, file: !267, line: 359, type: !70)
!1646 = !DILocalVariable(name: "file_name", arg: 3, scope: !1640, file: !267, line: 359, type: !75)
!1647 = !DILocalVariable(name: "line_number", arg: 4, scope: !1640, file: !267, line: 360, type: !6)
!1648 = !DILocalVariable(name: "message", arg: 5, scope: !1640, file: !267, line: 360, type: !75)
!1649 = !DILocalVariable(name: "ap", scope: !1640, file: !267, line: 362, type: !275)
!1650 = !DILocation(line: 0, scope: !1640)
!1651 = !DILocation(line: 362, column: 3, scope: !1640)
!1652 = !DILocation(line: 362, column: 11, scope: !1640)
!1653 = !DILocation(line: 363, column: 3, scope: !1640)
!1654 = !DILocation(line: 364, column: 3, scope: !1640)
!1655 = !DILocation(line: 366, column: 3, scope: !1640)
!1656 = !DILocation(line: 367, column: 1, scope: !1640)
!1657 = distinct !DISubprogram(name: "fdadvise", scope: !449, file: !449, line: 25, type: !1658, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !1662)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !70, !1660, !1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !276, line: 63, baseType: !135)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !48, line: 51, baseType: !47)
!1662 = !{!1663, !1664, !1665, !1666}
!1663 = !DILocalVariable(name: "fd", arg: 1, scope: !1657, file: !449, line: 25, type: !70)
!1664 = !DILocalVariable(name: "offset", arg: 2, scope: !1657, file: !449, line: 25, type: !1660)
!1665 = !DILocalVariable(name: "len", arg: 3, scope: !1657, file: !449, line: 25, type: !1660)
!1666 = !DILocalVariable(name: "advice", arg: 4, scope: !1657, file: !449, line: 25, type: !1661)
!1667 = !DILocation(line: 0, scope: !1657)
!1668 = !DILocation(line: 28, column: 3, scope: !1657)
!1669 = !DILocation(line: 30, column: 1, scope: !1657)
!1670 = !DISubprogram(name: "posix_fadvise", scope: !1591, file: !1591, line: 273, type: !1671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!70, !70, !1660, !1660, !70}
!1673 = distinct !DISubprogram(name: "fadvise", scope: !449, file: !449, line: 33, type: !1674, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !1710)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !1676, !1661}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !1678)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !1679)
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1678, file: !113, line: 51, baseType: !70, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1678, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1678, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1678, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1678, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1678, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1678, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1678, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1678, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1678, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1678, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1678, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1678, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1678, file: !113, line: 70, baseType: !1694, size: 64, offset: 832)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1678, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1678, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1678, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1678, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1678, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1678, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1678, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1678, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1678, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1678, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1678, file: !113, line: 93, baseType: !1694, size: 64, offset: 1344)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1678, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1678, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1678, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1678, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!1710 = !{!1711, !1712}
!1711 = !DILocalVariable(name: "fp", arg: 1, scope: !1673, file: !449, line: 33, type: !1676)
!1712 = !DILocalVariable(name: "advice", arg: 2, scope: !1673, file: !449, line: 33, type: !1661)
!1713 = !DILocation(line: 0, scope: !1673)
!1714 = !DILocation(line: 35, column: 7, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1673, file: !449, line: 35, column: 7)
!1716 = !DILocation(line: 35, column: 7, scope: !1673)
!1717 = !DILocation(line: 36, column: 15, scope: !1715)
!1718 = !DILocation(line: 0, scope: !1657, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 36, column: 5, scope: !1715)
!1720 = !DILocation(line: 28, column: 3, scope: !1657, inlinedAt: !1719)
!1721 = !DILocation(line: 36, column: 5, scope: !1715)
!1722 = !DILocation(line: 37, column: 1, scope: !1673)
!1723 = !DISubprogram(name: "fileno", scope: !276, file: !276, line: 809, type: !1724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!70, !1676}
!1726 = distinct !DISubprogram(name: "rpl_fclose", scope: !452, file: !452, line: 58, type: !1727, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1763)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!70, !1729}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !1731)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1731, file: !113, line: 51, baseType: !70, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1731, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1731, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1731, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1731, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1731, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1731, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1731, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1731, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1731, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1731, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1731, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1731, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1731, file: !113, line: 70, baseType: !1747, size: 64, offset: 832)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1731, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1731, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1731, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1731, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1731, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1731, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1731, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1731, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1731, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1731, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1731, file: !113, line: 93, baseType: !1747, size: 64, offset: 1344)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1731, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1731, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1731, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1731, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!1763 = !{!1764, !1765, !1766, !1767}
!1764 = !DILocalVariable(name: "fp", arg: 1, scope: !1726, file: !452, line: 58, type: !1729)
!1765 = !DILocalVariable(name: "saved_errno", scope: !1726, file: !452, line: 60, type: !70)
!1766 = !DILocalVariable(name: "fd", scope: !1726, file: !452, line: 63, type: !70)
!1767 = !DILocalVariable(name: "result", scope: !1726, file: !452, line: 74, type: !70)
!1768 = !DILocation(line: 0, scope: !1726)
!1769 = !DILocation(line: 63, column: 12, scope: !1726)
!1770 = !DILocation(line: 64, column: 10, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1726, file: !452, line: 64, column: 7)
!1772 = !DILocation(line: 64, column: 7, scope: !1726)
!1773 = !DILocation(line: 65, column: 12, scope: !1771)
!1774 = !DILocation(line: 65, column: 5, scope: !1771)
!1775 = !DILocation(line: 70, column: 9, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1726, file: !452, line: 70, column: 7)
!1777 = !DILocation(line: 70, column: 23, scope: !1776)
!1778 = !DILocation(line: 70, column: 33, scope: !1776)
!1779 = !DILocation(line: 70, column: 26, scope: !1776)
!1780 = !DILocation(line: 70, column: 59, scope: !1776)
!1781 = !DILocation(line: 71, column: 7, scope: !1776)
!1782 = !DILocation(line: 71, column: 10, scope: !1776)
!1783 = !DILocation(line: 70, column: 7, scope: !1726)
!1784 = !DILocation(line: 100, column: 12, scope: !1726)
!1785 = !DILocation(line: 105, column: 7, scope: !1726)
!1786 = !DILocation(line: 72, column: 19, scope: !1776)
!1787 = !DILocation(line: 105, column: 19, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1726, file: !452, line: 105, column: 7)
!1789 = !DILocation(line: 107, column: 13, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1788, file: !452, line: 106, column: 5)
!1791 = !DILocation(line: 109, column: 5, scope: !1790)
!1792 = !DILocation(line: 112, column: 1, scope: !1726)
!1793 = !DISubprogram(name: "fclose", scope: !276, file: !276, line: 178, type: !1727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1794 = !DISubprogram(name: "lseek", scope: !1795, file: !1795, line: 339, type: !1796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1795 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!135, !70, !135, !70}
!1798 = distinct !DISubprogram(name: "rpl_fflush", scope: !454, file: !454, line: 130, type: !1799, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !1835)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!70, !1801}
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !1803)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !1804)
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1803, file: !113, line: 51, baseType: !70, size: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1803, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1803, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1803, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1803, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1803, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1803, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1803, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1803, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1803, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1803, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1803, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1803, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1803, file: !113, line: 70, baseType: !1819, size: 64, offset: 832)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1803, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1803, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1803, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1803, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1803, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1803, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1803, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1803, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1803, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1803, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1803, file: !113, line: 93, baseType: !1819, size: 64, offset: 1344)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1803, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1803, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1803, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1803, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!1835 = !{!1836}
!1836 = !DILocalVariable(name: "stream", arg: 1, scope: !1798, file: !454, line: 130, type: !1801)
!1837 = !DILocation(line: 0, scope: !1798)
!1838 = !DILocation(line: 151, column: 14, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1798, file: !454, line: 151, column: 7)
!1840 = !DILocation(line: 151, column: 22, scope: !1839)
!1841 = !DILocation(line: 151, column: 27, scope: !1839)
!1842 = !DILocation(line: 151, column: 7, scope: !1798)
!1843 = !DILocation(line: 152, column: 12, scope: !1839)
!1844 = !DILocation(line: 152, column: 5, scope: !1839)
!1845 = !DILocalVariable(name: "fp", arg: 1, scope: !1846, file: !454, line: 42, type: !1801)
!1846 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !454, file: !454, line: 42, type: !1847, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !1801}
!1849 = !{!1845}
!1850 = !DILocation(line: 0, scope: !1846, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 157, column: 3, scope: !1798)
!1852 = !DILocation(line: 44, column: 12, scope: !1853, inlinedAt: !1851)
!1853 = distinct !DILexicalBlock(scope: !1846, file: !454, line: 44, column: 7)
!1854 = !DILocation(line: 44, column: 19, scope: !1853, inlinedAt: !1851)
!1855 = !DILocation(line: 44, column: 7, scope: !1846, inlinedAt: !1851)
!1856 = !DILocation(line: 46, column: 5, scope: !1853, inlinedAt: !1851)
!1857 = !DILocation(line: 159, column: 10, scope: !1798)
!1858 = !DILocation(line: 159, column: 3, scope: !1798)
!1859 = !DILocation(line: 236, column: 1, scope: !1798)
!1860 = !DISubprogram(name: "fflush", scope: !276, file: !276, line: 230, type: !1799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1861 = distinct !DISubprogram(name: "fpurge", scope: !457, file: !457, line: 32, type: !1862, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1898)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!70, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1866, file: !113, line: 51, baseType: !70, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1866, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1866, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1866, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1866, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1866, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1866, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1866, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1866, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1866, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1866, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1866, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1866, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1866, file: !113, line: 70, baseType: !1882, size: 64, offset: 832)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1866, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1866, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1866, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1866, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1866, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1866, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1866, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1866, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1866, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1866, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1866, file: !113, line: 93, baseType: !1882, size: 64, offset: 1344)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1866, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1866, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1866, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1866, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!1898 = !{!1899}
!1899 = !DILocalVariable(name: "fp", arg: 1, scope: !1861, file: !457, line: 32, type: !1864)
!1900 = !DILocation(line: 0, scope: !1861)
!1901 = !DILocation(line: 36, column: 3, scope: !1861)
!1902 = !DILocation(line: 38, column: 3, scope: !1861)
!1903 = distinct !DISubprogram(name: "rpl_fseeko", scope: !459, file: !459, line: 28, type: !1904, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !1940)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!70, !1906, !1660, !70}
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !1908)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !1909)
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1908, file: !113, line: 51, baseType: !70, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1908, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1908, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1908, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1908, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1908, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1908, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1908, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1908, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1908, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1908, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1908, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1908, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1908, file: !113, line: 70, baseType: !1924, size: 64, offset: 832)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1908, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1908, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1908, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1908, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1908, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1908, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1908, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1908, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1908, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1908, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1908, file: !113, line: 93, baseType: !1924, size: 64, offset: 1344)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1908, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1908, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1908, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1908, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!1940 = !{!1941, !1942, !1943, !1944}
!1941 = !DILocalVariable(name: "fp", arg: 1, scope: !1903, file: !459, line: 28, type: !1906)
!1942 = !DILocalVariable(name: "offset", arg: 2, scope: !1903, file: !459, line: 28, type: !1660)
!1943 = !DILocalVariable(name: "whence", arg: 3, scope: !1903, file: !459, line: 28, type: !70)
!1944 = !DILocalVariable(name: "pos", scope: !1945, file: !459, line: 123, type: !1660)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !459, line: 119, column: 5)
!1946 = distinct !DILexicalBlock(scope: !1903, file: !459, line: 55, column: 7)
!1947 = !DILocation(line: 0, scope: !1903)
!1948 = !DILocation(line: 55, column: 12, scope: !1946)
!1949 = !{!910, !556, i64 16}
!1950 = !DILocation(line: 55, column: 33, scope: !1946)
!1951 = !{!910, !556, i64 8}
!1952 = !DILocation(line: 55, column: 25, scope: !1946)
!1953 = !DILocation(line: 56, column: 7, scope: !1946)
!1954 = !DILocation(line: 56, column: 15, scope: !1946)
!1955 = !DILocation(line: 56, column: 37, scope: !1946)
!1956 = !{!910, !556, i64 32}
!1957 = !DILocation(line: 56, column: 29, scope: !1946)
!1958 = !DILocation(line: 57, column: 7, scope: !1946)
!1959 = !DILocation(line: 57, column: 15, scope: !1946)
!1960 = !{!910, !556, i64 72}
!1961 = !DILocation(line: 57, column: 29, scope: !1946)
!1962 = !DILocation(line: 55, column: 7, scope: !1903)
!1963 = !DILocation(line: 123, column: 26, scope: !1945)
!1964 = !DILocation(line: 123, column: 19, scope: !1945)
!1965 = !DILocation(line: 0, scope: !1945)
!1966 = !DILocation(line: 124, column: 15, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1945, file: !459, line: 124, column: 11)
!1968 = !DILocation(line: 124, column: 11, scope: !1945)
!1969 = !DILocation(line: 135, column: 12, scope: !1945)
!1970 = !DILocation(line: 135, column: 19, scope: !1945)
!1971 = !DILocation(line: 136, column: 12, scope: !1945)
!1972 = !DILocation(line: 136, column: 20, scope: !1945)
!1973 = !{!910, !911, i64 144}
!1974 = !DILocation(line: 167, column: 7, scope: !1945)
!1975 = !DILocation(line: 169, column: 10, scope: !1903)
!1976 = !DILocation(line: 169, column: 3, scope: !1903)
!1977 = !DILocation(line: 170, column: 1, scope: !1903)
!1978 = !DISubprogram(name: "fseeko", scope: !276, file: !276, line: 736, type: !1979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!70, !1906, !135, !70}
!1981 = distinct !DISubprogram(name: "getprogname", scope: !461, file: !461, line: 54, type: !1982, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !564)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!75}
!1984 = !DILocation(line: 58, column: 10, scope: !1981)
!1985 = !DILocation(line: 58, column: 3, scope: !1981)
!1986 = distinct !DISubprogram(name: "set_program_name", scope: !308, file: !308, line: 37, type: !577, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !307, retainedNodes: !1987)
!1987 = !{!1988, !1989, !1990}
!1988 = !DILocalVariable(name: "argv0", arg: 1, scope: !1986, file: !308, line: 37, type: !75)
!1989 = !DILocalVariable(name: "slash", scope: !1986, file: !308, line: 44, type: !75)
!1990 = !DILocalVariable(name: "base", scope: !1986, file: !308, line: 45, type: !75)
!1991 = !DILocation(line: 0, scope: !1986)
!1992 = !DILocation(line: 44, column: 23, scope: !1986)
!1993 = !DILocation(line: 45, column: 22, scope: !1986)
!1994 = !DILocation(line: 46, column: 17, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1986, file: !308, line: 46, column: 7)
!1996 = !DILocation(line: 46, column: 9, scope: !1995)
!1997 = !DILocation(line: 46, column: 25, scope: !1995)
!1998 = !DILocation(line: 46, column: 40, scope: !1995)
!1999 = !DILocalVariable(name: "__s1", arg: 1, scope: !2000, file: !600, line: 974, type: !767)
!2000 = distinct !DISubprogram(name: "memeq", scope: !600, file: !600, line: 974, type: !2001, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !307, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!81, !767, !767, !72}
!2003 = !{!1999, !2004, !2005}
!2004 = !DILocalVariable(name: "__s2", arg: 2, scope: !2000, file: !600, line: 974, type: !767)
!2005 = !DILocalVariable(name: "__n", arg: 3, scope: !2000, file: !600, line: 974, type: !72)
!2006 = !DILocation(line: 0, scope: !2000, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 46, column: 28, scope: !1995)
!2008 = !DILocation(line: 976, column: 11, scope: !2000, inlinedAt: !2007)
!2009 = !DILocation(line: 976, column: 10, scope: !2000, inlinedAt: !2007)
!2010 = !DILocation(line: 46, column: 7, scope: !1986)
!2011 = !DILocation(line: 49, column: 11, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !308, line: 49, column: 11)
!2013 = distinct !DILexicalBlock(scope: !1995, file: !308, line: 47, column: 5)
!2014 = !DILocation(line: 49, column: 36, scope: !2012)
!2015 = !DILocation(line: 49, column: 11, scope: !2013)
!2016 = !DILocation(line: 65, column: 16, scope: !1986)
!2017 = !DILocation(line: 71, column: 27, scope: !1986)
!2018 = !DILocation(line: 74, column: 33, scope: !1986)
!2019 = !DILocation(line: 76, column: 1, scope: !1986)
!2020 = !DILocation(line: 0, scope: !313)
!2021 = !DILocation(line: 40, column: 29, scope: !313)
!2022 = !DILocation(line: 41, column: 19, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !313, file: !314, line: 41, column: 7)
!2024 = !DILocation(line: 41, column: 7, scope: !313)
!2025 = !DILocation(line: 47, column: 3, scope: !313)
!2026 = !DILocation(line: 48, column: 3, scope: !313)
!2027 = !DILocation(line: 48, column: 13, scope: !313)
!2028 = !DILocalVariable(name: "ps", arg: 1, scope: !2029, file: !2030, line: 1135, type: !2033)
!2029 = distinct !DISubprogram(name: "mbszero", scope: !2030, file: !2030, line: 1135, type: !2031, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2034)
!2030 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null, !2033}
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!2034 = !{!2028}
!2035 = !DILocation(line: 0, scope: !2029, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 48, column: 18, scope: !313)
!2037 = !DILocalVariable(name: "__dest", arg: 1, scope: !2038, file: !921, line: 57, type: !69)
!2038 = distinct !DISubprogram(name: "memset", scope: !921, file: !921, line: 57, type: !2039, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2041)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!69, !69, !70, !72}
!2041 = !{!2037, !2042, !2043}
!2042 = !DILocalVariable(name: "__ch", arg: 2, scope: !2038, file: !921, line: 57, type: !70)
!2043 = !DILocalVariable(name: "__len", arg: 3, scope: !2038, file: !921, line: 57, type: !72)
!2044 = !DILocation(line: 0, scope: !2038, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 1137, column: 3, scope: !2029, inlinedAt: !2036)
!2046 = !DILocation(line: 59, column: 10, scope: !2038, inlinedAt: !2045)
!2047 = !DILocation(line: 49, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !313, file: !314, line: 49, column: 7)
!2049 = !DILocation(line: 49, column: 39, scope: !2048)
!2050 = !DILocation(line: 49, column: 44, scope: !2048)
!2051 = !DILocation(line: 54, column: 1, scope: !313)
!2052 = distinct !DISubprogram(name: "clone_quoting_options", scope: !346, file: !346, line: 113, type: !2053, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2056)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!2055, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!2056 = !{!2057, !2058, !2059}
!2057 = !DILocalVariable(name: "o", arg: 1, scope: !2052, file: !346, line: 113, type: !2055)
!2058 = !DILocalVariable(name: "saved_errno", scope: !2052, file: !346, line: 115, type: !70)
!2059 = !DILocalVariable(name: "p", scope: !2052, file: !346, line: 116, type: !2055)
!2060 = !DILocation(line: 0, scope: !2052)
!2061 = !DILocation(line: 115, column: 21, scope: !2052)
!2062 = !DILocation(line: 116, column: 40, scope: !2052)
!2063 = !DILocation(line: 116, column: 31, scope: !2052)
!2064 = !DILocation(line: 118, column: 9, scope: !2052)
!2065 = !DILocation(line: 119, column: 3, scope: !2052)
!2066 = distinct !DISubprogram(name: "get_quoting_style", scope: !346, file: !346, line: 124, type: !2067, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2071)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!33, !2069}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!2071 = !{!2072}
!2072 = !DILocalVariable(name: "o", arg: 1, scope: !2066, file: !346, line: 124, type: !2069)
!2073 = !DILocation(line: 0, scope: !2066)
!2074 = !DILocation(line: 126, column: 11, scope: !2066)
!2075 = !DILocation(line: 126, column: 46, scope: !2066)
!2076 = !{!2077, !557, i64 0}
!2077 = !{!"quoting_options", !557, i64 0, !650, i64 4, !557, i64 8, !556, i64 40, !556, i64 48}
!2078 = !DILocation(line: 126, column: 3, scope: !2066)
!2079 = distinct !DISubprogram(name: "set_quoting_style", scope: !346, file: !346, line: 132, type: !2080, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2082)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !2055, !33}
!2082 = !{!2083, !2084}
!2083 = !DILocalVariable(name: "o", arg: 1, scope: !2079, file: !346, line: 132, type: !2055)
!2084 = !DILocalVariable(name: "s", arg: 2, scope: !2079, file: !346, line: 132, type: !33)
!2085 = !DILocation(line: 0, scope: !2079)
!2086 = !DILocation(line: 134, column: 4, scope: !2079)
!2087 = !DILocation(line: 134, column: 39, scope: !2079)
!2088 = !DILocation(line: 134, column: 45, scope: !2079)
!2089 = !DILocation(line: 135, column: 1, scope: !2079)
!2090 = distinct !DISubprogram(name: "set_char_quoting", scope: !346, file: !346, line: 143, type: !2091, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!70, !2055, !68, !70}
!2093 = !{!2094, !2095, !2096, !2097, !2098, !2100, !2101}
!2094 = !DILocalVariable(name: "o", arg: 1, scope: !2090, file: !346, line: 143, type: !2055)
!2095 = !DILocalVariable(name: "c", arg: 2, scope: !2090, file: !346, line: 143, type: !68)
!2096 = !DILocalVariable(name: "i", arg: 3, scope: !2090, file: !346, line: 143, type: !70)
!2097 = !DILocalVariable(name: "uc", scope: !2090, file: !346, line: 145, type: !77)
!2098 = !DILocalVariable(name: "p", scope: !2090, file: !346, line: 146, type: !2099)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2100 = !DILocalVariable(name: "shift", scope: !2090, file: !346, line: 148, type: !70)
!2101 = !DILocalVariable(name: "r", scope: !2090, file: !346, line: 149, type: !6)
!2102 = !DILocation(line: 0, scope: !2090)
!2103 = !DILocation(line: 147, column: 6, scope: !2090)
!2104 = !DILocation(line: 147, column: 62, scope: !2090)
!2105 = !DILocation(line: 147, column: 57, scope: !2090)
!2106 = !DILocation(line: 148, column: 15, scope: !2090)
!2107 = !DILocation(line: 149, column: 21, scope: !2090)
!2108 = !DILocation(line: 149, column: 24, scope: !2090)
!2109 = !DILocation(line: 149, column: 34, scope: !2090)
!2110 = !DILocation(line: 150, column: 13, scope: !2090)
!2111 = !DILocation(line: 150, column: 19, scope: !2090)
!2112 = !DILocation(line: 150, column: 24, scope: !2090)
!2113 = !DILocation(line: 150, column: 6, scope: !2090)
!2114 = !DILocation(line: 151, column: 3, scope: !2090)
!2115 = distinct !DISubprogram(name: "set_quoting_flags", scope: !346, file: !346, line: 159, type: !2116, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2118)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!70, !2055, !70}
!2118 = !{!2119, !2120, !2121}
!2119 = !DILocalVariable(name: "o", arg: 1, scope: !2115, file: !346, line: 159, type: !2055)
!2120 = !DILocalVariable(name: "i", arg: 2, scope: !2115, file: !346, line: 159, type: !70)
!2121 = !DILocalVariable(name: "r", scope: !2115, file: !346, line: 163, type: !70)
!2122 = !DILocation(line: 0, scope: !2115)
!2123 = !DILocation(line: 161, column: 8, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2115, file: !346, line: 161, column: 7)
!2125 = !DILocation(line: 161, column: 7, scope: !2115)
!2126 = !DILocation(line: 163, column: 14, scope: !2115)
!2127 = !{!2077, !650, i64 4}
!2128 = !DILocation(line: 164, column: 12, scope: !2115)
!2129 = !DILocation(line: 165, column: 3, scope: !2115)
!2130 = distinct !DISubprogram(name: "set_custom_quoting", scope: !346, file: !346, line: 169, type: !2131, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{null, !2055, !75, !75}
!2133 = !{!2134, !2135, !2136}
!2134 = !DILocalVariable(name: "o", arg: 1, scope: !2130, file: !346, line: 169, type: !2055)
!2135 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2130, file: !346, line: 170, type: !75)
!2136 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2130, file: !346, line: 170, type: !75)
!2137 = !DILocation(line: 0, scope: !2130)
!2138 = !DILocation(line: 172, column: 8, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2130, file: !346, line: 172, column: 7)
!2140 = !DILocation(line: 172, column: 7, scope: !2130)
!2141 = !DILocation(line: 174, column: 6, scope: !2130)
!2142 = !DILocation(line: 174, column: 12, scope: !2130)
!2143 = !DILocation(line: 175, column: 8, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2130, file: !346, line: 175, column: 7)
!2145 = !DILocation(line: 175, column: 19, scope: !2144)
!2146 = !DILocation(line: 176, column: 5, scope: !2144)
!2147 = !DILocation(line: 177, column: 6, scope: !2130)
!2148 = !DILocation(line: 177, column: 17, scope: !2130)
!2149 = !{!2077, !556, i64 40}
!2150 = !DILocation(line: 178, column: 6, scope: !2130)
!2151 = !DILocation(line: 178, column: 18, scope: !2130)
!2152 = !{!2077, !556, i64 48}
!2153 = !DILocation(line: 179, column: 1, scope: !2130)
!2154 = distinct !DISubprogram(name: "quotearg_buffer", scope: !346, file: !346, line: 774, type: !2155, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2157)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!72, !67, !72, !75, !72, !2069}
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165}
!2158 = !DILocalVariable(name: "buffer", arg: 1, scope: !2154, file: !346, line: 774, type: !67)
!2159 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2154, file: !346, line: 774, type: !72)
!2160 = !DILocalVariable(name: "arg", arg: 3, scope: !2154, file: !346, line: 775, type: !75)
!2161 = !DILocalVariable(name: "argsize", arg: 4, scope: !2154, file: !346, line: 775, type: !72)
!2162 = !DILocalVariable(name: "o", arg: 5, scope: !2154, file: !346, line: 776, type: !2069)
!2163 = !DILocalVariable(name: "p", scope: !2154, file: !346, line: 778, type: !2069)
!2164 = !DILocalVariable(name: "saved_errno", scope: !2154, file: !346, line: 779, type: !70)
!2165 = !DILocalVariable(name: "r", scope: !2154, file: !346, line: 780, type: !72)
!2166 = !DILocation(line: 0, scope: !2154)
!2167 = !DILocation(line: 778, column: 37, scope: !2154)
!2168 = !DILocation(line: 779, column: 21, scope: !2154)
!2169 = !DILocation(line: 781, column: 43, scope: !2154)
!2170 = !DILocation(line: 781, column: 53, scope: !2154)
!2171 = !DILocation(line: 781, column: 60, scope: !2154)
!2172 = !DILocation(line: 782, column: 43, scope: !2154)
!2173 = !DILocation(line: 782, column: 58, scope: !2154)
!2174 = !DILocation(line: 780, column: 14, scope: !2154)
!2175 = !DILocation(line: 783, column: 9, scope: !2154)
!2176 = !DILocation(line: 784, column: 3, scope: !2154)
!2177 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !346, file: !346, line: 251, type: !2178, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2182)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!72, !67, !72, !75, !72, !33, !70, !2180, !75, !75}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2182 = !{!2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2207, !2209, !2212, !2213, !2214, !2215, !2218, !2219, !2222, !2226, !2227, !2235, !2238, !2239, !2241, !2242, !2243, !2244}
!2183 = !DILocalVariable(name: "buffer", arg: 1, scope: !2177, file: !346, line: 251, type: !67)
!2184 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2177, file: !346, line: 251, type: !72)
!2185 = !DILocalVariable(name: "arg", arg: 3, scope: !2177, file: !346, line: 252, type: !75)
!2186 = !DILocalVariable(name: "argsize", arg: 4, scope: !2177, file: !346, line: 252, type: !72)
!2187 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2177, file: !346, line: 253, type: !33)
!2188 = !DILocalVariable(name: "flags", arg: 6, scope: !2177, file: !346, line: 253, type: !70)
!2189 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2177, file: !346, line: 254, type: !2180)
!2190 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2177, file: !346, line: 255, type: !75)
!2191 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2177, file: !346, line: 256, type: !75)
!2192 = !DILocalVariable(name: "unibyte_locale", scope: !2177, file: !346, line: 258, type: !81)
!2193 = !DILocalVariable(name: "len", scope: !2177, file: !346, line: 260, type: !72)
!2194 = !DILocalVariable(name: "orig_buffersize", scope: !2177, file: !346, line: 261, type: !72)
!2195 = !DILocalVariable(name: "quote_string", scope: !2177, file: !346, line: 262, type: !75)
!2196 = !DILocalVariable(name: "quote_string_len", scope: !2177, file: !346, line: 263, type: !72)
!2197 = !DILocalVariable(name: "backslash_escapes", scope: !2177, file: !346, line: 264, type: !81)
!2198 = !DILocalVariable(name: "elide_outer_quotes", scope: !2177, file: !346, line: 265, type: !81)
!2199 = !DILocalVariable(name: "encountered_single_quote", scope: !2177, file: !346, line: 266, type: !81)
!2200 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2177, file: !346, line: 267, type: !81)
!2201 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2177, file: !346, line: 309, type: !81)
!2202 = !DILocalVariable(name: "lq", scope: !2203, file: !346, line: 361, type: !75)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !346, line: 361, column: 11)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !346, line: 360, column: 13)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !346, line: 333, column: 7)
!2206 = distinct !DILexicalBlock(scope: !2177, file: !346, line: 312, column: 5)
!2207 = !DILocalVariable(name: "i", scope: !2208, file: !346, line: 395, type: !72)
!2208 = distinct !DILexicalBlock(scope: !2177, file: !346, line: 395, column: 3)
!2209 = !DILocalVariable(name: "is_right_quote", scope: !2210, file: !346, line: 397, type: !81)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !346, line: 396, column: 5)
!2211 = distinct !DILexicalBlock(scope: !2208, file: !346, line: 395, column: 3)
!2212 = !DILocalVariable(name: "escaping", scope: !2210, file: !346, line: 398, type: !81)
!2213 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2210, file: !346, line: 399, type: !81)
!2214 = !DILocalVariable(name: "c", scope: !2210, file: !346, line: 417, type: !77)
!2215 = !DILocalVariable(name: "m", scope: !2216, file: !346, line: 598, type: !72)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !346, line: 596, column: 11)
!2217 = distinct !DILexicalBlock(scope: !2210, file: !346, line: 419, column: 9)
!2218 = !DILocalVariable(name: "printable", scope: !2216, file: !346, line: 600, type: !81)
!2219 = !DILocalVariable(name: "mbs", scope: !2220, file: !346, line: 609, type: !391)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !346, line: 608, column: 15)
!2221 = distinct !DILexicalBlock(scope: !2216, file: !346, line: 602, column: 17)
!2222 = !DILocalVariable(name: "w", scope: !2223, file: !346, line: 618, type: !216)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !346, line: 617, column: 19)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !346, line: 616, column: 17)
!2225 = distinct !DILexicalBlock(scope: !2220, file: !346, line: 616, column: 17)
!2226 = !DILocalVariable(name: "bytes", scope: !2223, file: !346, line: 619, type: !72)
!2227 = !DILocalVariable(name: "j", scope: !2228, file: !346, line: 648, type: !72)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !346, line: 648, column: 29)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !346, line: 647, column: 27)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !346, line: 645, column: 29)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !346, line: 636, column: 23)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !346, line: 628, column: 30)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !346, line: 623, column: 30)
!2234 = distinct !DILexicalBlock(scope: !2223, file: !346, line: 621, column: 25)
!2235 = !DILocalVariable(name: "ilim", scope: !2236, file: !346, line: 674, type: !72)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !346, line: 671, column: 15)
!2237 = distinct !DILexicalBlock(scope: !2216, file: !346, line: 670, column: 17)
!2238 = !DILabel(scope: !2177, name: "process_input", file: !346, line: 308)
!2239 = !DILabel(scope: !2240, name: "c_and_shell_escape", file: !346, line: 502)
!2240 = distinct !DILexicalBlock(scope: !2217, file: !346, line: 478, column: 9)
!2241 = !DILabel(scope: !2240, name: "c_escape", file: !346, line: 507)
!2242 = !DILabel(scope: !2210, name: "store_escape", file: !346, line: 709)
!2243 = !DILabel(scope: !2210, name: "store_c", file: !346, line: 712)
!2244 = !DILabel(scope: !2177, name: "force_outer_quoting_style", file: !346, line: 753)
!2245 = !DILocation(line: 0, scope: !2177)
!2246 = !DILocation(line: 258, column: 25, scope: !2177)
!2247 = !DILocation(line: 258, column: 36, scope: !2177)
!2248 = !DILocation(line: 267, column: 3, scope: !2177)
!2249 = !DILocation(line: 261, column: 10, scope: !2177)
!2250 = !DILocation(line: 262, column: 15, scope: !2177)
!2251 = !DILocation(line: 263, column: 10, scope: !2177)
!2252 = !DILocation(line: 308, column: 2, scope: !2177)
!2253 = !DILocation(line: 311, column: 3, scope: !2177)
!2254 = !DILocation(line: 318, column: 11, scope: !2206)
!2255 = !DILocation(line: 319, column: 9, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !346, line: 319, column: 9)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !346, line: 319, column: 9)
!2258 = distinct !DILexicalBlock(scope: !2206, file: !346, line: 318, column: 11)
!2259 = !DILocation(line: 319, column: 9, scope: !2257)
!2260 = !DILocation(line: 0, scope: !382, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 357, column: 26, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !346, line: 335, column: 11)
!2263 = distinct !DILexicalBlock(scope: !2205, file: !346, line: 334, column: 13)
!2264 = !DILocation(line: 199, column: 29, scope: !382, inlinedAt: !2261)
!2265 = !DILocation(line: 201, column: 19, scope: !2266, inlinedAt: !2261)
!2266 = distinct !DILexicalBlock(scope: !382, file: !346, line: 201, column: 7)
!2267 = !DILocation(line: 201, column: 7, scope: !382, inlinedAt: !2261)
!2268 = !DILocation(line: 229, column: 3, scope: !382, inlinedAt: !2261)
!2269 = !DILocation(line: 230, column: 3, scope: !382, inlinedAt: !2261)
!2270 = !DILocation(line: 230, column: 13, scope: !382, inlinedAt: !2261)
!2271 = !DILocalVariable(name: "ps", arg: 1, scope: !2272, file: !2030, line: 1135, type: !2275)
!2272 = distinct !DISubprogram(name: "mbszero", scope: !2030, file: !2030, line: 1135, type: !2273, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2276)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{null, !2275}
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!2276 = !{!2271}
!2277 = !DILocation(line: 0, scope: !2272, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 230, column: 18, scope: !382, inlinedAt: !2261)
!2279 = !DILocalVariable(name: "__dest", arg: 1, scope: !2280, file: !921, line: 57, type: !69)
!2280 = distinct !DISubprogram(name: "memset", scope: !921, file: !921, line: 57, type: !2039, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2281)
!2281 = !{!2279, !2282, !2283}
!2282 = !DILocalVariable(name: "__ch", arg: 2, scope: !2280, file: !921, line: 57, type: !70)
!2283 = !DILocalVariable(name: "__len", arg: 3, scope: !2280, file: !921, line: 57, type: !72)
!2284 = !DILocation(line: 0, scope: !2280, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 1137, column: 3, scope: !2272, inlinedAt: !2278)
!2286 = !DILocation(line: 59, column: 10, scope: !2280, inlinedAt: !2285)
!2287 = !DILocation(line: 231, column: 7, scope: !2288, inlinedAt: !2261)
!2288 = distinct !DILexicalBlock(scope: !382, file: !346, line: 231, column: 7)
!2289 = !DILocation(line: 231, column: 40, scope: !2288, inlinedAt: !2261)
!2290 = !DILocation(line: 231, column: 45, scope: !2288, inlinedAt: !2261)
!2291 = !DILocation(line: 235, column: 1, scope: !382, inlinedAt: !2261)
!2292 = !DILocation(line: 0, scope: !382, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 358, column: 27, scope: !2262)
!2294 = !DILocation(line: 199, column: 29, scope: !382, inlinedAt: !2293)
!2295 = !DILocation(line: 201, column: 19, scope: !2266, inlinedAt: !2293)
!2296 = !DILocation(line: 201, column: 7, scope: !382, inlinedAt: !2293)
!2297 = !DILocation(line: 229, column: 3, scope: !382, inlinedAt: !2293)
!2298 = !DILocation(line: 230, column: 3, scope: !382, inlinedAt: !2293)
!2299 = !DILocation(line: 230, column: 13, scope: !382, inlinedAt: !2293)
!2300 = !DILocation(line: 0, scope: !2272, inlinedAt: !2301)
!2301 = distinct !DILocation(line: 230, column: 18, scope: !382, inlinedAt: !2293)
!2302 = !DILocation(line: 0, scope: !2280, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 1137, column: 3, scope: !2272, inlinedAt: !2301)
!2304 = !DILocation(line: 59, column: 10, scope: !2280, inlinedAt: !2303)
!2305 = !DILocation(line: 231, column: 7, scope: !2288, inlinedAt: !2293)
!2306 = !DILocation(line: 231, column: 40, scope: !2288, inlinedAt: !2293)
!2307 = !DILocation(line: 231, column: 45, scope: !2288, inlinedAt: !2293)
!2308 = !DILocation(line: 235, column: 1, scope: !382, inlinedAt: !2293)
!2309 = !DILocation(line: 360, column: 13, scope: !2205)
!2310 = !DILocation(line: 0, scope: !2203)
!2311 = !DILocation(line: 361, column: 45, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2203, file: !346, line: 361, column: 11)
!2313 = !DILocation(line: 361, column: 11, scope: !2203)
!2314 = !DILocation(line: 362, column: 13, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !346, line: 362, column: 13)
!2316 = distinct !DILexicalBlock(scope: !2312, file: !346, line: 362, column: 13)
!2317 = !DILocation(line: 362, column: 13, scope: !2316)
!2318 = !DILocation(line: 361, column: 52, scope: !2312)
!2319 = distinct !{!2319, !2313, !2320, !616}
!2320 = !DILocation(line: 362, column: 13, scope: !2203)
!2321 = !DILocation(line: 260, column: 10, scope: !2177)
!2322 = !DILocation(line: 365, column: 28, scope: !2205)
!2323 = !DILocation(line: 367, column: 7, scope: !2206)
!2324 = !DILocation(line: 370, column: 7, scope: !2206)
!2325 = !DILocation(line: 376, column: 11, scope: !2206)
!2326 = !DILocation(line: 381, column: 11, scope: !2206)
!2327 = !DILocation(line: 382, column: 9, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !346, line: 382, column: 9)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !346, line: 382, column: 9)
!2330 = distinct !DILexicalBlock(scope: !2206, file: !346, line: 381, column: 11)
!2331 = !DILocation(line: 382, column: 9, scope: !2329)
!2332 = !DILocation(line: 389, column: 7, scope: !2206)
!2333 = !DILocation(line: 392, column: 7, scope: !2206)
!2334 = !DILocation(line: 0, scope: !2208)
!2335 = !DILocation(line: 395, column: 8, scope: !2208)
!2336 = !DILocation(line: 395, column: 34, scope: !2211)
!2337 = !DILocation(line: 395, column: 26, scope: !2211)
!2338 = !DILocation(line: 395, column: 48, scope: !2211)
!2339 = !DILocation(line: 395, column: 55, scope: !2211)
!2340 = !DILocation(line: 395, column: 3, scope: !2208)
!2341 = !DILocation(line: 395, column: 67, scope: !2211)
!2342 = !DILocation(line: 0, scope: !2210)
!2343 = !DILocation(line: 402, column: 11, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2210, file: !346, line: 401, column: 11)
!2345 = !DILocation(line: 404, column: 17, scope: !2344)
!2346 = !DILocation(line: 405, column: 39, scope: !2344)
!2347 = !DILocation(line: 409, column: 32, scope: !2344)
!2348 = !DILocation(line: 405, column: 19, scope: !2344)
!2349 = !DILocation(line: 405, column: 15, scope: !2344)
!2350 = !DILocation(line: 410, column: 11, scope: !2344)
!2351 = !DILocation(line: 410, column: 25, scope: !2344)
!2352 = !DILocalVariable(name: "__s1", arg: 1, scope: !2353, file: !600, line: 974, type: !767)
!2353 = distinct !DISubprogram(name: "memeq", scope: !600, file: !600, line: 974, type: !2001, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2354)
!2354 = !{!2352, !2355, !2356}
!2355 = !DILocalVariable(name: "__s2", arg: 2, scope: !2353, file: !600, line: 974, type: !767)
!2356 = !DILocalVariable(name: "__n", arg: 3, scope: !2353, file: !600, line: 974, type: !72)
!2357 = !DILocation(line: 0, scope: !2353, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 410, column: 14, scope: !2344)
!2359 = !DILocation(line: 976, column: 11, scope: !2353, inlinedAt: !2358)
!2360 = !DILocation(line: 976, column: 10, scope: !2353, inlinedAt: !2358)
!2361 = !DILocation(line: 401, column: 11, scope: !2210)
!2362 = !DILocation(line: 417, column: 25, scope: !2210)
!2363 = !DILocation(line: 418, column: 7, scope: !2210)
!2364 = !DILocation(line: 421, column: 15, scope: !2217)
!2365 = !DILocation(line: 423, column: 15, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !346, line: 423, column: 15)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !346, line: 422, column: 13)
!2368 = distinct !DILexicalBlock(scope: !2217, file: !346, line: 421, column: 15)
!2369 = !DILocation(line: 423, column: 15, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2366, file: !346, line: 423, column: 15)
!2371 = !DILocation(line: 423, column: 15, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !346, line: 423, column: 15)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !346, line: 423, column: 15)
!2374 = distinct !DILexicalBlock(scope: !2370, file: !346, line: 423, column: 15)
!2375 = !DILocation(line: 423, column: 15, scope: !2373)
!2376 = !DILocation(line: 423, column: 15, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !346, line: 423, column: 15)
!2378 = distinct !DILexicalBlock(scope: !2374, file: !346, line: 423, column: 15)
!2379 = !DILocation(line: 423, column: 15, scope: !2378)
!2380 = !DILocation(line: 423, column: 15, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !346, line: 423, column: 15)
!2382 = distinct !DILexicalBlock(scope: !2374, file: !346, line: 423, column: 15)
!2383 = !DILocation(line: 423, column: 15, scope: !2382)
!2384 = !DILocation(line: 423, column: 15, scope: !2374)
!2385 = !DILocation(line: 423, column: 15, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !346, line: 423, column: 15)
!2387 = distinct !DILexicalBlock(scope: !2366, file: !346, line: 423, column: 15)
!2388 = !DILocation(line: 423, column: 15, scope: !2387)
!2389 = !DILocation(line: 431, column: 19, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2367, file: !346, line: 430, column: 19)
!2391 = !DILocation(line: 431, column: 24, scope: !2390)
!2392 = !DILocation(line: 431, column: 28, scope: !2390)
!2393 = !DILocation(line: 431, column: 38, scope: !2390)
!2394 = !DILocation(line: 431, column: 48, scope: !2390)
!2395 = !DILocation(line: 431, column: 59, scope: !2390)
!2396 = !DILocation(line: 433, column: 19, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !346, line: 433, column: 19)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !346, line: 433, column: 19)
!2399 = distinct !DILexicalBlock(scope: !2390, file: !346, line: 432, column: 17)
!2400 = !DILocation(line: 433, column: 19, scope: !2398)
!2401 = !DILocation(line: 434, column: 19, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !346, line: 434, column: 19)
!2403 = distinct !DILexicalBlock(scope: !2399, file: !346, line: 434, column: 19)
!2404 = !DILocation(line: 434, column: 19, scope: !2403)
!2405 = !DILocation(line: 435, column: 17, scope: !2399)
!2406 = !DILocation(line: 442, column: 20, scope: !2368)
!2407 = !DILocation(line: 447, column: 11, scope: !2217)
!2408 = !DILocation(line: 450, column: 19, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2217, file: !346, line: 448, column: 13)
!2410 = !DILocation(line: 456, column: 19, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2409, file: !346, line: 455, column: 19)
!2412 = !DILocation(line: 456, column: 24, scope: !2411)
!2413 = !DILocation(line: 456, column: 28, scope: !2411)
!2414 = !DILocation(line: 456, column: 38, scope: !2411)
!2415 = !DILocation(line: 456, column: 47, scope: !2411)
!2416 = !DILocation(line: 456, column: 41, scope: !2411)
!2417 = !DILocation(line: 456, column: 52, scope: !2411)
!2418 = !DILocation(line: 455, column: 19, scope: !2409)
!2419 = !DILocation(line: 457, column: 25, scope: !2411)
!2420 = !DILocation(line: 457, column: 17, scope: !2411)
!2421 = !DILocation(line: 464, column: 25, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2411, file: !346, line: 458, column: 19)
!2423 = !DILocation(line: 468, column: 21, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !346, line: 468, column: 21)
!2425 = distinct !DILexicalBlock(scope: !2422, file: !346, line: 468, column: 21)
!2426 = !DILocation(line: 468, column: 21, scope: !2425)
!2427 = !DILocation(line: 469, column: 21, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !346, line: 469, column: 21)
!2429 = distinct !DILexicalBlock(scope: !2422, file: !346, line: 469, column: 21)
!2430 = !DILocation(line: 469, column: 21, scope: !2429)
!2431 = !DILocation(line: 470, column: 21, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !346, line: 470, column: 21)
!2433 = distinct !DILexicalBlock(scope: !2422, file: !346, line: 470, column: 21)
!2434 = !DILocation(line: 470, column: 21, scope: !2433)
!2435 = !DILocation(line: 471, column: 21, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !346, line: 471, column: 21)
!2437 = distinct !DILexicalBlock(scope: !2422, file: !346, line: 471, column: 21)
!2438 = !DILocation(line: 471, column: 21, scope: !2437)
!2439 = !DILocation(line: 472, column: 21, scope: !2422)
!2440 = !DILocation(line: 482, column: 33, scope: !2240)
!2441 = !DILocation(line: 483, column: 33, scope: !2240)
!2442 = !DILocation(line: 485, column: 33, scope: !2240)
!2443 = !DILocation(line: 486, column: 33, scope: !2240)
!2444 = !DILocation(line: 487, column: 33, scope: !2240)
!2445 = !DILocation(line: 490, column: 17, scope: !2240)
!2446 = !DILocation(line: 492, column: 21, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !346, line: 491, column: 15)
!2448 = distinct !DILexicalBlock(scope: !2240, file: !346, line: 490, column: 17)
!2449 = !DILocation(line: 499, column: 35, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2240, file: !346, line: 499, column: 17)
!2451 = !DILocation(line: 499, column: 57, scope: !2450)
!2452 = !DILocation(line: 0, scope: !2240)
!2453 = !DILocation(line: 502, column: 11, scope: !2240)
!2454 = !DILocation(line: 504, column: 17, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2240, file: !346, line: 503, column: 17)
!2456 = !DILocation(line: 507, column: 11, scope: !2240)
!2457 = !DILocation(line: 508, column: 17, scope: !2240)
!2458 = !DILocation(line: 517, column: 15, scope: !2217)
!2459 = !DILocation(line: 517, column: 40, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2217, file: !346, line: 517, column: 15)
!2461 = !DILocation(line: 517, column: 47, scope: !2460)
!2462 = !DILocation(line: 517, column: 18, scope: !2460)
!2463 = !DILocation(line: 521, column: 17, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2217, file: !346, line: 521, column: 15)
!2465 = !DILocation(line: 521, column: 15, scope: !2217)
!2466 = !DILocation(line: 525, column: 11, scope: !2217)
!2467 = !DILocation(line: 537, column: 15, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2217, file: !346, line: 536, column: 15)
!2469 = !DILocation(line: 536, column: 15, scope: !2217)
!2470 = !DILocation(line: 544, column: 15, scope: !2217)
!2471 = !DILocation(line: 546, column: 19, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !346, line: 545, column: 13)
!2473 = distinct !DILexicalBlock(scope: !2217, file: !346, line: 544, column: 15)
!2474 = !DILocation(line: 549, column: 19, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2472, file: !346, line: 549, column: 19)
!2476 = !DILocation(line: 549, column: 30, scope: !2475)
!2477 = !DILocation(line: 558, column: 15, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !346, line: 558, column: 15)
!2479 = distinct !DILexicalBlock(scope: !2472, file: !346, line: 558, column: 15)
!2480 = !DILocation(line: 558, column: 15, scope: !2479)
!2481 = !DILocation(line: 559, column: 15, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !346, line: 559, column: 15)
!2483 = distinct !DILexicalBlock(scope: !2472, file: !346, line: 559, column: 15)
!2484 = !DILocation(line: 559, column: 15, scope: !2483)
!2485 = !DILocation(line: 560, column: 15, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !346, line: 560, column: 15)
!2487 = distinct !DILexicalBlock(scope: !2472, file: !346, line: 560, column: 15)
!2488 = !DILocation(line: 560, column: 15, scope: !2487)
!2489 = !DILocation(line: 562, column: 13, scope: !2472)
!2490 = !DILocation(line: 602, column: 17, scope: !2216)
!2491 = !DILocation(line: 0, scope: !2216)
!2492 = !DILocation(line: 605, column: 29, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2221, file: !346, line: 603, column: 15)
!2494 = !DILocation(line: 605, column: 41, scope: !2493)
!2495 = !DILocation(line: 670, column: 23, scope: !2237)
!2496 = !DILocation(line: 609, column: 17, scope: !2220)
!2497 = !DILocation(line: 609, column: 27, scope: !2220)
!2498 = !DILocation(line: 0, scope: !2272, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 609, column: 32, scope: !2220)
!2500 = !DILocation(line: 0, scope: !2280, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 1137, column: 3, scope: !2272, inlinedAt: !2499)
!2502 = !DILocation(line: 59, column: 10, scope: !2280, inlinedAt: !2501)
!2503 = !DILocation(line: 613, column: 29, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2220, file: !346, line: 613, column: 21)
!2505 = !DILocation(line: 613, column: 21, scope: !2220)
!2506 = !DILocation(line: 614, column: 29, scope: !2504)
!2507 = !DILocation(line: 614, column: 19, scope: !2504)
!2508 = !DILocation(line: 618, column: 21, scope: !2223)
!2509 = !DILocation(line: 620, column: 54, scope: !2223)
!2510 = !DILocation(line: 0, scope: !2223)
!2511 = !DILocation(line: 619, column: 36, scope: !2223)
!2512 = !DILocation(line: 621, column: 25, scope: !2223)
!2513 = !DILocation(line: 631, column: 38, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2232, file: !346, line: 629, column: 23)
!2515 = !DILocation(line: 631, column: 48, scope: !2514)
!2516 = !DILocation(line: 665, column: 19, scope: !2224)
!2517 = !DILocation(line: 666, column: 15, scope: !2221)
!2518 = !DILocation(line: 626, column: 25, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2233, file: !346, line: 624, column: 23)
!2520 = !DILocation(line: 631, column: 51, scope: !2514)
!2521 = !DILocation(line: 631, column: 25, scope: !2514)
!2522 = !DILocation(line: 632, column: 28, scope: !2514)
!2523 = !DILocation(line: 631, column: 34, scope: !2514)
!2524 = distinct !{!2524, !2521, !2522, !616}
!2525 = !DILocation(line: 646, column: 29, scope: !2230)
!2526 = !DILocation(line: 0, scope: !2228)
!2527 = !DILocation(line: 649, column: 49, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2228, file: !346, line: 648, column: 29)
!2529 = !DILocation(line: 649, column: 39, scope: !2528)
!2530 = !DILocation(line: 649, column: 31, scope: !2528)
!2531 = !DILocation(line: 648, column: 60, scope: !2528)
!2532 = !DILocation(line: 648, column: 50, scope: !2528)
!2533 = !DILocation(line: 648, column: 29, scope: !2228)
!2534 = distinct !{!2534, !2533, !2535, !616}
!2535 = !DILocation(line: 654, column: 33, scope: !2228)
!2536 = !DILocation(line: 657, column: 43, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2231, file: !346, line: 657, column: 29)
!2538 = !DILocalVariable(name: "wc", arg: 1, scope: !2539, file: !1066, line: 865, type: !1135)
!2539 = distinct !DISubprogram(name: "c32isprint", scope: !1066, file: !1066, line: 865, type: !1133, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2540)
!2540 = !{!2538}
!2541 = !DILocation(line: 0, scope: !2539, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 657, column: 31, scope: !2537)
!2543 = !DILocation(line: 871, column: 10, scope: !2539, inlinedAt: !2542)
!2544 = !DILocation(line: 657, column: 31, scope: !2537)
!2545 = !DILocation(line: 664, column: 23, scope: !2223)
!2546 = !DILocation(line: 753, column: 2, scope: !2177)
!2547 = !DILocation(line: 756, column: 51, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2177, file: !346, line: 756, column: 7)
!2549 = !DILocation(line: 670, column: 19, scope: !2237)
!2550 = !DILocation(line: 670, column: 45, scope: !2237)
!2551 = !DILocation(line: 674, column: 33, scope: !2236)
!2552 = !DILocation(line: 0, scope: !2236)
!2553 = !DILocation(line: 676, column: 17, scope: !2236)
!2554 = !DILocation(line: 398, column: 12, scope: !2210)
!2555 = !DILocation(line: 678, column: 43, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !346, line: 678, column: 25)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !346, line: 677, column: 19)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !346, line: 676, column: 17)
!2559 = distinct !DILexicalBlock(scope: !2236, file: !346, line: 676, column: 17)
!2560 = !DILocation(line: 680, column: 25, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !346, line: 680, column: 25)
!2562 = distinct !DILexicalBlock(scope: !2556, file: !346, line: 679, column: 23)
!2563 = !DILocation(line: 680, column: 25, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2561, file: !346, line: 680, column: 25)
!2565 = !DILocation(line: 680, column: 25, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !346, line: 680, column: 25)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !346, line: 680, column: 25)
!2568 = distinct !DILexicalBlock(scope: !2564, file: !346, line: 680, column: 25)
!2569 = !DILocation(line: 680, column: 25, scope: !2567)
!2570 = !DILocation(line: 680, column: 25, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !346, line: 680, column: 25)
!2572 = distinct !DILexicalBlock(scope: !2568, file: !346, line: 680, column: 25)
!2573 = !DILocation(line: 680, column: 25, scope: !2572)
!2574 = !DILocation(line: 680, column: 25, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !346, line: 680, column: 25)
!2576 = distinct !DILexicalBlock(scope: !2568, file: !346, line: 680, column: 25)
!2577 = !DILocation(line: 680, column: 25, scope: !2576)
!2578 = !DILocation(line: 680, column: 25, scope: !2568)
!2579 = !DILocation(line: 680, column: 25, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !346, line: 680, column: 25)
!2581 = distinct !DILexicalBlock(scope: !2561, file: !346, line: 680, column: 25)
!2582 = !DILocation(line: 680, column: 25, scope: !2581)
!2583 = !DILocation(line: 681, column: 25, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !346, line: 681, column: 25)
!2585 = distinct !DILexicalBlock(scope: !2562, file: !346, line: 681, column: 25)
!2586 = !DILocation(line: 681, column: 25, scope: !2585)
!2587 = !DILocation(line: 682, column: 25, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !346, line: 682, column: 25)
!2589 = distinct !DILexicalBlock(scope: !2562, file: !346, line: 682, column: 25)
!2590 = !DILocation(line: 682, column: 25, scope: !2589)
!2591 = !DILocation(line: 683, column: 38, scope: !2562)
!2592 = !DILocation(line: 683, column: 33, scope: !2562)
!2593 = !DILocation(line: 684, column: 23, scope: !2562)
!2594 = !DILocation(line: 685, column: 30, scope: !2556)
!2595 = !DILocation(line: 687, column: 25, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !346, line: 687, column: 25)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !346, line: 687, column: 25)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !346, line: 686, column: 23)
!2599 = distinct !DILexicalBlock(scope: !2556, file: !346, line: 685, column: 30)
!2600 = !DILocation(line: 687, column: 25, scope: !2597)
!2601 = !DILocation(line: 689, column: 23, scope: !2598)
!2602 = !DILocation(line: 690, column: 35, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2557, file: !346, line: 690, column: 25)
!2604 = !DILocation(line: 690, column: 30, scope: !2603)
!2605 = !DILocation(line: 690, column: 25, scope: !2557)
!2606 = !DILocation(line: 692, column: 21, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !346, line: 692, column: 21)
!2608 = distinct !DILexicalBlock(scope: !2557, file: !346, line: 692, column: 21)
!2609 = !DILocation(line: 692, column: 21, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !346, line: 692, column: 21)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !346, line: 692, column: 21)
!2612 = distinct !DILexicalBlock(scope: !2607, file: !346, line: 692, column: 21)
!2613 = !DILocation(line: 692, column: 21, scope: !2611)
!2614 = !DILocation(line: 692, column: 21, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !346, line: 692, column: 21)
!2616 = distinct !DILexicalBlock(scope: !2612, file: !346, line: 692, column: 21)
!2617 = !DILocation(line: 692, column: 21, scope: !2616)
!2618 = !DILocation(line: 692, column: 21, scope: !2612)
!2619 = !DILocation(line: 0, scope: !2557)
!2620 = !DILocation(line: 693, column: 21, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !346, line: 693, column: 21)
!2622 = distinct !DILexicalBlock(scope: !2557, file: !346, line: 693, column: 21)
!2623 = !DILocation(line: 693, column: 21, scope: !2622)
!2624 = !DILocation(line: 694, column: 25, scope: !2557)
!2625 = !DILocation(line: 676, column: 17, scope: !2558)
!2626 = distinct !{!2626, !2627, !2628}
!2627 = !DILocation(line: 676, column: 17, scope: !2559)
!2628 = !DILocation(line: 695, column: 19, scope: !2559)
!2629 = !DILocation(line: 409, column: 30, scope: !2344)
!2630 = !DILocation(line: 702, column: 34, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2210, file: !346, line: 702, column: 11)
!2632 = !DILocation(line: 704, column: 14, scope: !2631)
!2633 = !DILocation(line: 705, column: 14, scope: !2631)
!2634 = !DILocation(line: 705, column: 35, scope: !2631)
!2635 = !DILocation(line: 705, column: 17, scope: !2631)
!2636 = !DILocation(line: 705, column: 47, scope: !2631)
!2637 = !DILocation(line: 705, column: 65, scope: !2631)
!2638 = !DILocation(line: 706, column: 11, scope: !2631)
!2639 = !DILocation(line: 702, column: 11, scope: !2210)
!2640 = !DILocation(line: 395, column: 15, scope: !2208)
!2641 = !DILocation(line: 709, column: 5, scope: !2210)
!2642 = !DILocation(line: 710, column: 7, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2210, file: !346, line: 710, column: 7)
!2644 = !DILocation(line: 710, column: 7, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2643, file: !346, line: 710, column: 7)
!2646 = !DILocation(line: 710, column: 7, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !346, line: 710, column: 7)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !346, line: 710, column: 7)
!2649 = distinct !DILexicalBlock(scope: !2645, file: !346, line: 710, column: 7)
!2650 = !DILocation(line: 710, column: 7, scope: !2648)
!2651 = !DILocation(line: 710, column: 7, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !346, line: 710, column: 7)
!2653 = distinct !DILexicalBlock(scope: !2649, file: !346, line: 710, column: 7)
!2654 = !DILocation(line: 710, column: 7, scope: !2653)
!2655 = !DILocation(line: 710, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !346, line: 710, column: 7)
!2657 = distinct !DILexicalBlock(scope: !2649, file: !346, line: 710, column: 7)
!2658 = !DILocation(line: 710, column: 7, scope: !2657)
!2659 = !DILocation(line: 710, column: 7, scope: !2649)
!2660 = !DILocation(line: 710, column: 7, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !346, line: 710, column: 7)
!2662 = distinct !DILexicalBlock(scope: !2643, file: !346, line: 710, column: 7)
!2663 = !DILocation(line: 710, column: 7, scope: !2662)
!2664 = !DILocation(line: 712, column: 5, scope: !2210)
!2665 = !DILocation(line: 713, column: 7, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !346, line: 713, column: 7)
!2667 = distinct !DILexicalBlock(scope: !2210, file: !346, line: 713, column: 7)
!2668 = !DILocation(line: 417, column: 21, scope: !2210)
!2669 = !DILocation(line: 713, column: 7, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !346, line: 713, column: 7)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !346, line: 713, column: 7)
!2672 = distinct !DILexicalBlock(scope: !2666, file: !346, line: 713, column: 7)
!2673 = !DILocation(line: 713, column: 7, scope: !2671)
!2674 = !DILocation(line: 713, column: 7, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !346, line: 713, column: 7)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !346, line: 713, column: 7)
!2677 = !DILocation(line: 713, column: 7, scope: !2676)
!2678 = !DILocation(line: 713, column: 7, scope: !2672)
!2679 = !DILocation(line: 714, column: 7, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !346, line: 714, column: 7)
!2681 = distinct !DILexicalBlock(scope: !2210, file: !346, line: 714, column: 7)
!2682 = !DILocation(line: 714, column: 7, scope: !2681)
!2683 = !DILocation(line: 716, column: 11, scope: !2210)
!2684 = !DILocation(line: 718, column: 5, scope: !2211)
!2685 = !DILocation(line: 395, column: 82, scope: !2211)
!2686 = !DILocation(line: 395, column: 3, scope: !2211)
!2687 = distinct !{!2687, !2340, !2688, !616}
!2688 = !DILocation(line: 718, column: 5, scope: !2208)
!2689 = !DILocation(line: 720, column: 11, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2177, file: !346, line: 720, column: 7)
!2691 = !DILocation(line: 720, column: 16, scope: !2690)
!2692 = !DILocation(line: 728, column: 51, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2177, file: !346, line: 728, column: 7)
!2694 = !DILocation(line: 731, column: 11, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2693, file: !346, line: 730, column: 5)
!2696 = !DILocation(line: 732, column: 16, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2695, file: !346, line: 731, column: 11)
!2698 = !DILocation(line: 732, column: 9, scope: !2697)
!2699 = !DILocation(line: 736, column: 18, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2697, file: !346, line: 736, column: 16)
!2701 = !DILocation(line: 736, column: 29, scope: !2700)
!2702 = !DILocation(line: 745, column: 7, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2177, file: !346, line: 745, column: 7)
!2704 = !DILocation(line: 745, column: 20, scope: !2703)
!2705 = !DILocation(line: 746, column: 12, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !346, line: 746, column: 5)
!2707 = distinct !DILexicalBlock(scope: !2703, file: !346, line: 746, column: 5)
!2708 = !DILocation(line: 746, column: 5, scope: !2707)
!2709 = !DILocation(line: 747, column: 7, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !346, line: 747, column: 7)
!2711 = distinct !DILexicalBlock(scope: !2706, file: !346, line: 747, column: 7)
!2712 = !DILocation(line: 747, column: 7, scope: !2711)
!2713 = !DILocation(line: 746, column: 39, scope: !2706)
!2714 = distinct !{!2714, !2708, !2715, !616}
!2715 = !DILocation(line: 747, column: 7, scope: !2707)
!2716 = !DILocation(line: 749, column: 11, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2177, file: !346, line: 749, column: 7)
!2718 = !DILocation(line: 749, column: 7, scope: !2177)
!2719 = !DILocation(line: 750, column: 5, scope: !2717)
!2720 = !DILocation(line: 750, column: 17, scope: !2717)
!2721 = !DILocation(line: 756, column: 21, scope: !2548)
!2722 = !DILocation(line: 760, column: 42, scope: !2177)
!2723 = !DILocation(line: 758, column: 10, scope: !2177)
!2724 = !DILocation(line: 758, column: 3, scope: !2177)
!2725 = !DILocation(line: 762, column: 1, scope: !2177)
!2726 = !DISubprogram(name: "iswprint", scope: !1396, file: !1396, line: 120, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!2727 = distinct !DISubprogram(name: "quotearg_alloc", scope: !346, file: !346, line: 788, type: !2728, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!67, !75, !72, !2069}
!2730 = !{!2731, !2732, !2733}
!2731 = !DILocalVariable(name: "arg", arg: 1, scope: !2727, file: !346, line: 788, type: !75)
!2732 = !DILocalVariable(name: "argsize", arg: 2, scope: !2727, file: !346, line: 788, type: !72)
!2733 = !DILocalVariable(name: "o", arg: 3, scope: !2727, file: !346, line: 789, type: !2069)
!2734 = !DILocation(line: 0, scope: !2727)
!2735 = !DILocalVariable(name: "arg", arg: 1, scope: !2736, file: !346, line: 801, type: !75)
!2736 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !346, file: !346, line: 801, type: !2737, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!67, !75, !72, !475, !2069}
!2739 = !{!2735, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747}
!2740 = !DILocalVariable(name: "argsize", arg: 2, scope: !2736, file: !346, line: 801, type: !72)
!2741 = !DILocalVariable(name: "size", arg: 3, scope: !2736, file: !346, line: 801, type: !475)
!2742 = !DILocalVariable(name: "o", arg: 4, scope: !2736, file: !346, line: 802, type: !2069)
!2743 = !DILocalVariable(name: "p", scope: !2736, file: !346, line: 804, type: !2069)
!2744 = !DILocalVariable(name: "saved_errno", scope: !2736, file: !346, line: 805, type: !70)
!2745 = !DILocalVariable(name: "flags", scope: !2736, file: !346, line: 807, type: !70)
!2746 = !DILocalVariable(name: "bufsize", scope: !2736, file: !346, line: 808, type: !72)
!2747 = !DILocalVariable(name: "buf", scope: !2736, file: !346, line: 812, type: !67)
!2748 = !DILocation(line: 0, scope: !2736, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 791, column: 10, scope: !2727)
!2750 = !DILocation(line: 804, column: 37, scope: !2736, inlinedAt: !2749)
!2751 = !DILocation(line: 805, column: 21, scope: !2736, inlinedAt: !2749)
!2752 = !DILocation(line: 807, column: 18, scope: !2736, inlinedAt: !2749)
!2753 = !DILocation(line: 807, column: 24, scope: !2736, inlinedAt: !2749)
!2754 = !DILocation(line: 808, column: 72, scope: !2736, inlinedAt: !2749)
!2755 = !DILocation(line: 809, column: 53, scope: !2736, inlinedAt: !2749)
!2756 = !DILocation(line: 810, column: 49, scope: !2736, inlinedAt: !2749)
!2757 = !DILocation(line: 811, column: 49, scope: !2736, inlinedAt: !2749)
!2758 = !DILocation(line: 808, column: 20, scope: !2736, inlinedAt: !2749)
!2759 = !DILocation(line: 811, column: 62, scope: !2736, inlinedAt: !2749)
!2760 = !DILocation(line: 812, column: 15, scope: !2736, inlinedAt: !2749)
!2761 = !DILocation(line: 813, column: 60, scope: !2736, inlinedAt: !2749)
!2762 = !DILocation(line: 815, column: 32, scope: !2736, inlinedAt: !2749)
!2763 = !DILocation(line: 815, column: 47, scope: !2736, inlinedAt: !2749)
!2764 = !DILocation(line: 813, column: 3, scope: !2736, inlinedAt: !2749)
!2765 = !DILocation(line: 816, column: 9, scope: !2736, inlinedAt: !2749)
!2766 = !DILocation(line: 791, column: 3, scope: !2727)
!2767 = !DILocation(line: 0, scope: !2736)
!2768 = !DILocation(line: 804, column: 37, scope: !2736)
!2769 = !DILocation(line: 805, column: 21, scope: !2736)
!2770 = !DILocation(line: 807, column: 18, scope: !2736)
!2771 = !DILocation(line: 807, column: 27, scope: !2736)
!2772 = !DILocation(line: 807, column: 24, scope: !2736)
!2773 = !DILocation(line: 808, column: 72, scope: !2736)
!2774 = !DILocation(line: 809, column: 53, scope: !2736)
!2775 = !DILocation(line: 810, column: 49, scope: !2736)
!2776 = !DILocation(line: 811, column: 49, scope: !2736)
!2777 = !DILocation(line: 808, column: 20, scope: !2736)
!2778 = !DILocation(line: 811, column: 62, scope: !2736)
!2779 = !DILocation(line: 812, column: 15, scope: !2736)
!2780 = !DILocation(line: 813, column: 60, scope: !2736)
!2781 = !DILocation(line: 815, column: 32, scope: !2736)
!2782 = !DILocation(line: 815, column: 47, scope: !2736)
!2783 = !DILocation(line: 813, column: 3, scope: !2736)
!2784 = !DILocation(line: 816, column: 9, scope: !2736)
!2785 = !DILocation(line: 817, column: 7, scope: !2736)
!2786 = !DILocation(line: 818, column: 11, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2736, file: !346, line: 817, column: 7)
!2788 = !{!911, !911, i64 0}
!2789 = !DILocation(line: 818, column: 5, scope: !2787)
!2790 = !DILocation(line: 819, column: 3, scope: !2736)
!2791 = distinct !DISubprogram(name: "quotearg_free", scope: !346, file: !346, line: 837, type: !303, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2792)
!2792 = !{!2793, !2794}
!2793 = !DILocalVariable(name: "sv", scope: !2791, file: !346, line: 839, type: !405)
!2794 = !DILocalVariable(name: "i", scope: !2795, file: !346, line: 840, type: !70)
!2795 = distinct !DILexicalBlock(scope: !2791, file: !346, line: 840, column: 3)
!2796 = !DILocation(line: 839, column: 24, scope: !2791)
!2797 = !DILocation(line: 0, scope: !2791)
!2798 = !DILocation(line: 0, scope: !2795)
!2799 = !DILocation(line: 840, column: 21, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2795, file: !346, line: 840, column: 3)
!2801 = !DILocation(line: 840, column: 3, scope: !2795)
!2802 = !DILocation(line: 842, column: 13, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2791, file: !346, line: 842, column: 7)
!2804 = !{!2805, !556, i64 8}
!2805 = !{!"slotvec", !911, i64 0, !556, i64 8}
!2806 = !DILocation(line: 842, column: 17, scope: !2803)
!2807 = !DILocation(line: 842, column: 7, scope: !2791)
!2808 = !DILocation(line: 841, column: 17, scope: !2800)
!2809 = !DILocation(line: 841, column: 5, scope: !2800)
!2810 = !DILocation(line: 840, column: 32, scope: !2800)
!2811 = distinct !{!2811, !2801, !2812, !616}
!2812 = !DILocation(line: 841, column: 20, scope: !2795)
!2813 = !DILocation(line: 844, column: 7, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2803, file: !346, line: 843, column: 5)
!2815 = !DILocation(line: 845, column: 21, scope: !2814)
!2816 = !{!2805, !911, i64 0}
!2817 = !DILocation(line: 846, column: 20, scope: !2814)
!2818 = !DILocation(line: 847, column: 5, scope: !2814)
!2819 = !DILocation(line: 848, column: 10, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2791, file: !346, line: 848, column: 7)
!2821 = !DILocation(line: 848, column: 7, scope: !2791)
!2822 = !DILocation(line: 850, column: 13, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2820, file: !346, line: 849, column: 5)
!2824 = !DILocation(line: 850, column: 7, scope: !2823)
!2825 = !DILocation(line: 851, column: 15, scope: !2823)
!2826 = !DILocation(line: 852, column: 5, scope: !2823)
!2827 = !DILocation(line: 853, column: 10, scope: !2791)
!2828 = !DILocation(line: 854, column: 1, scope: !2791)
!2829 = distinct !DISubprogram(name: "quotearg_n", scope: !346, file: !346, line: 919, type: !757, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2830)
!2830 = !{!2831, !2832}
!2831 = !DILocalVariable(name: "n", arg: 1, scope: !2829, file: !346, line: 919, type: !70)
!2832 = !DILocalVariable(name: "arg", arg: 2, scope: !2829, file: !346, line: 919, type: !75)
!2833 = !DILocation(line: 0, scope: !2829)
!2834 = !DILocation(line: 921, column: 10, scope: !2829)
!2835 = !DILocation(line: 921, column: 3, scope: !2829)
!2836 = distinct !DISubprogram(name: "quotearg_n_options", scope: !346, file: !346, line: 866, type: !2837, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!67, !70, !75, !72, !2069}
!2839 = !{!2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2850, !2851, !2853, !2854, !2855}
!2840 = !DILocalVariable(name: "n", arg: 1, scope: !2836, file: !346, line: 866, type: !70)
!2841 = !DILocalVariable(name: "arg", arg: 2, scope: !2836, file: !346, line: 866, type: !75)
!2842 = !DILocalVariable(name: "argsize", arg: 3, scope: !2836, file: !346, line: 866, type: !72)
!2843 = !DILocalVariable(name: "options", arg: 4, scope: !2836, file: !346, line: 867, type: !2069)
!2844 = !DILocalVariable(name: "saved_errno", scope: !2836, file: !346, line: 869, type: !70)
!2845 = !DILocalVariable(name: "sv", scope: !2836, file: !346, line: 871, type: !405)
!2846 = !DILocalVariable(name: "nslots_max", scope: !2836, file: !346, line: 873, type: !70)
!2847 = !DILocalVariable(name: "preallocated", scope: !2848, file: !346, line: 879, type: !81)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !346, line: 878, column: 5)
!2849 = distinct !DILexicalBlock(scope: !2836, file: !346, line: 877, column: 7)
!2850 = !DILocalVariable(name: "new_nslots", scope: !2848, file: !346, line: 880, type: !197)
!2851 = !DILocalVariable(name: "size", scope: !2852, file: !346, line: 891, type: !72)
!2852 = distinct !DILexicalBlock(scope: !2836, file: !346, line: 890, column: 3)
!2853 = !DILocalVariable(name: "val", scope: !2852, file: !346, line: 892, type: !67)
!2854 = !DILocalVariable(name: "flags", scope: !2852, file: !346, line: 894, type: !70)
!2855 = !DILocalVariable(name: "qsize", scope: !2852, file: !346, line: 895, type: !72)
!2856 = !DILocation(line: 0, scope: !2836)
!2857 = !DILocation(line: 869, column: 21, scope: !2836)
!2858 = !DILocation(line: 871, column: 24, scope: !2836)
!2859 = !DILocation(line: 874, column: 17, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2836, file: !346, line: 874, column: 7)
!2861 = !DILocation(line: 875, column: 5, scope: !2860)
!2862 = !DILocation(line: 877, column: 7, scope: !2849)
!2863 = !DILocation(line: 877, column: 14, scope: !2849)
!2864 = !DILocation(line: 877, column: 7, scope: !2836)
!2865 = !DILocation(line: 879, column: 31, scope: !2848)
!2866 = !DILocation(line: 0, scope: !2848)
!2867 = !DILocation(line: 880, column: 7, scope: !2848)
!2868 = !DILocation(line: 880, column: 26, scope: !2848)
!2869 = !DILocation(line: 880, column: 13, scope: !2848)
!2870 = !DILocation(line: 882, column: 31, scope: !2848)
!2871 = !DILocation(line: 883, column: 33, scope: !2848)
!2872 = !DILocation(line: 883, column: 42, scope: !2848)
!2873 = !DILocation(line: 883, column: 31, scope: !2848)
!2874 = !DILocation(line: 882, column: 22, scope: !2848)
!2875 = !DILocation(line: 882, column: 15, scope: !2848)
!2876 = !DILocation(line: 884, column: 11, scope: !2848)
!2877 = !DILocation(line: 885, column: 15, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2848, file: !346, line: 884, column: 11)
!2879 = !{i64 0, i64 8, !2788, i64 8, i64 8, !555}
!2880 = !DILocation(line: 885, column: 9, scope: !2878)
!2881 = !DILocation(line: 886, column: 20, scope: !2848)
!2882 = !DILocation(line: 886, column: 18, scope: !2848)
!2883 = !DILocation(line: 886, column: 15, scope: !2848)
!2884 = !DILocation(line: 886, column: 32, scope: !2848)
!2885 = !DILocation(line: 886, column: 43, scope: !2848)
!2886 = !DILocation(line: 886, column: 53, scope: !2848)
!2887 = !DILocation(line: 0, scope: !2280, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 886, column: 7, scope: !2848)
!2889 = !DILocation(line: 59, column: 10, scope: !2280, inlinedAt: !2888)
!2890 = !DILocation(line: 887, column: 16, scope: !2848)
!2891 = !DILocation(line: 887, column: 14, scope: !2848)
!2892 = !DILocation(line: 888, column: 5, scope: !2849)
!2893 = !DILocation(line: 888, column: 5, scope: !2848)
!2894 = !DILocation(line: 891, column: 19, scope: !2852)
!2895 = !DILocation(line: 891, column: 25, scope: !2852)
!2896 = !DILocation(line: 0, scope: !2852)
!2897 = !DILocation(line: 892, column: 23, scope: !2852)
!2898 = !DILocation(line: 894, column: 26, scope: !2852)
!2899 = !DILocation(line: 894, column: 32, scope: !2852)
!2900 = !DILocation(line: 896, column: 55, scope: !2852)
!2901 = !DILocation(line: 897, column: 46, scope: !2852)
!2902 = !DILocation(line: 898, column: 55, scope: !2852)
!2903 = !DILocation(line: 899, column: 55, scope: !2852)
!2904 = !DILocation(line: 895, column: 20, scope: !2852)
!2905 = !DILocation(line: 901, column: 14, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2852, file: !346, line: 901, column: 9)
!2907 = !DILocation(line: 901, column: 9, scope: !2852)
!2908 = !DILocation(line: 903, column: 35, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2906, file: !346, line: 902, column: 7)
!2910 = !DILocation(line: 903, column: 20, scope: !2909)
!2911 = !DILocation(line: 904, column: 17, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2909, file: !346, line: 904, column: 13)
!2913 = !DILocation(line: 904, column: 13, scope: !2909)
!2914 = !DILocation(line: 905, column: 11, scope: !2912)
!2915 = !DILocation(line: 906, column: 27, scope: !2909)
!2916 = !DILocation(line: 906, column: 19, scope: !2909)
!2917 = !DILocation(line: 907, column: 69, scope: !2909)
!2918 = !DILocation(line: 909, column: 44, scope: !2909)
!2919 = !DILocation(line: 910, column: 44, scope: !2909)
!2920 = !DILocation(line: 907, column: 9, scope: !2909)
!2921 = !DILocation(line: 911, column: 7, scope: !2909)
!2922 = !DILocation(line: 913, column: 11, scope: !2852)
!2923 = !DILocation(line: 914, column: 5, scope: !2852)
!2924 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !346, file: !346, line: 925, type: !2925, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!67, !70, !75, !72}
!2927 = !{!2928, !2929, !2930}
!2928 = !DILocalVariable(name: "n", arg: 1, scope: !2924, file: !346, line: 925, type: !70)
!2929 = !DILocalVariable(name: "arg", arg: 2, scope: !2924, file: !346, line: 925, type: !75)
!2930 = !DILocalVariable(name: "argsize", arg: 3, scope: !2924, file: !346, line: 925, type: !72)
!2931 = !DILocation(line: 0, scope: !2924)
!2932 = !DILocation(line: 927, column: 10, scope: !2924)
!2933 = !DILocation(line: 927, column: 3, scope: !2924)
!2934 = distinct !DISubprogram(name: "quotearg", scope: !346, file: !346, line: 931, type: !761, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2935)
!2935 = !{!2936}
!2936 = !DILocalVariable(name: "arg", arg: 1, scope: !2934, file: !346, line: 931, type: !75)
!2937 = !DILocation(line: 0, scope: !2934)
!2938 = !DILocation(line: 0, scope: !2829, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 933, column: 10, scope: !2934)
!2940 = !DILocation(line: 921, column: 10, scope: !2829, inlinedAt: !2939)
!2941 = !DILocation(line: 933, column: 3, scope: !2934)
!2942 = distinct !DISubprogram(name: "quotearg_mem", scope: !346, file: !346, line: 937, type: !2943, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!67, !75, !72}
!2945 = !{!2946, !2947}
!2946 = !DILocalVariable(name: "arg", arg: 1, scope: !2942, file: !346, line: 937, type: !75)
!2947 = !DILocalVariable(name: "argsize", arg: 2, scope: !2942, file: !346, line: 937, type: !72)
!2948 = !DILocation(line: 0, scope: !2942)
!2949 = !DILocation(line: 0, scope: !2924, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 939, column: 10, scope: !2942)
!2951 = !DILocation(line: 927, column: 10, scope: !2924, inlinedAt: !2950)
!2952 = !DILocation(line: 939, column: 3, scope: !2942)
!2953 = distinct !DISubprogram(name: "quotearg_n_style", scope: !346, file: !346, line: 943, type: !2954, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!67, !70, !33, !75}
!2956 = !{!2957, !2958, !2959, !2960}
!2957 = !DILocalVariable(name: "n", arg: 1, scope: !2953, file: !346, line: 943, type: !70)
!2958 = !DILocalVariable(name: "s", arg: 2, scope: !2953, file: !346, line: 943, type: !33)
!2959 = !DILocalVariable(name: "arg", arg: 3, scope: !2953, file: !346, line: 943, type: !75)
!2960 = !DILocalVariable(name: "o", scope: !2953, file: !346, line: 945, type: !2070)
!2961 = !DILocation(line: 0, scope: !2953)
!2962 = !DILocation(line: 945, column: 3, scope: !2953)
!2963 = !DILocation(line: 945, column: 32, scope: !2953)
!2964 = !{!2965}
!2965 = distinct !{!2965, !2966, !"quoting_options_from_style: argument 0"}
!2966 = distinct !{!2966, !"quoting_options_from_style"}
!2967 = !DILocation(line: 945, column: 36, scope: !2953)
!2968 = !DILocalVariable(name: "style", arg: 1, scope: !2969, file: !346, line: 183, type: !33)
!2969 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !346, file: !346, line: 183, type: !2970, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2972)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!363, !33}
!2972 = !{!2968, !2973}
!2973 = !DILocalVariable(name: "o", scope: !2969, file: !346, line: 185, type: !363)
!2974 = !DILocation(line: 0, scope: !2969, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 945, column: 36, scope: !2953)
!2976 = !DILocation(line: 185, column: 26, scope: !2969, inlinedAt: !2975)
!2977 = !DILocation(line: 186, column: 13, scope: !2978, inlinedAt: !2975)
!2978 = distinct !DILexicalBlock(scope: !2969, file: !346, line: 186, column: 7)
!2979 = !DILocation(line: 186, column: 7, scope: !2969, inlinedAt: !2975)
!2980 = !DILocation(line: 187, column: 5, scope: !2978, inlinedAt: !2975)
!2981 = !DILocation(line: 188, column: 5, scope: !2969, inlinedAt: !2975)
!2982 = !DILocation(line: 188, column: 11, scope: !2969, inlinedAt: !2975)
!2983 = !DILocation(line: 946, column: 10, scope: !2953)
!2984 = !DILocation(line: 947, column: 1, scope: !2953)
!2985 = !DILocation(line: 946, column: 3, scope: !2953)
!2986 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !346, file: !346, line: 950, type: !2987, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!67, !70, !33, !75, !72}
!2989 = !{!2990, !2991, !2992, !2993, !2994}
!2990 = !DILocalVariable(name: "n", arg: 1, scope: !2986, file: !346, line: 950, type: !70)
!2991 = !DILocalVariable(name: "s", arg: 2, scope: !2986, file: !346, line: 950, type: !33)
!2992 = !DILocalVariable(name: "arg", arg: 3, scope: !2986, file: !346, line: 951, type: !75)
!2993 = !DILocalVariable(name: "argsize", arg: 4, scope: !2986, file: !346, line: 951, type: !72)
!2994 = !DILocalVariable(name: "o", scope: !2986, file: !346, line: 953, type: !2070)
!2995 = !DILocation(line: 0, scope: !2986)
!2996 = !DILocation(line: 953, column: 3, scope: !2986)
!2997 = !DILocation(line: 953, column: 32, scope: !2986)
!2998 = !{!2999}
!2999 = distinct !{!2999, !3000, !"quoting_options_from_style: argument 0"}
!3000 = distinct !{!3000, !"quoting_options_from_style"}
!3001 = !DILocation(line: 953, column: 36, scope: !2986)
!3002 = !DILocation(line: 0, scope: !2969, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 953, column: 36, scope: !2986)
!3004 = !DILocation(line: 185, column: 26, scope: !2969, inlinedAt: !3003)
!3005 = !DILocation(line: 186, column: 13, scope: !2978, inlinedAt: !3003)
!3006 = !DILocation(line: 186, column: 7, scope: !2969, inlinedAt: !3003)
!3007 = !DILocation(line: 187, column: 5, scope: !2978, inlinedAt: !3003)
!3008 = !DILocation(line: 188, column: 5, scope: !2969, inlinedAt: !3003)
!3009 = !DILocation(line: 188, column: 11, scope: !2969, inlinedAt: !3003)
!3010 = !DILocation(line: 954, column: 10, scope: !2986)
!3011 = !DILocation(line: 955, column: 1, scope: !2986)
!3012 = !DILocation(line: 954, column: 3, scope: !2986)
!3013 = distinct !DISubprogram(name: "quotearg_style", scope: !346, file: !346, line: 958, type: !3014, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!67, !33, !75}
!3016 = !{!3017, !3018}
!3017 = !DILocalVariable(name: "s", arg: 1, scope: !3013, file: !346, line: 958, type: !33)
!3018 = !DILocalVariable(name: "arg", arg: 2, scope: !3013, file: !346, line: 958, type: !75)
!3019 = !DILocation(line: 0, scope: !3013)
!3020 = !DILocation(line: 0, scope: !2953, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 960, column: 10, scope: !3013)
!3022 = !DILocation(line: 945, column: 3, scope: !2953, inlinedAt: !3021)
!3023 = !DILocation(line: 945, column: 32, scope: !2953, inlinedAt: !3021)
!3024 = !{!3025}
!3025 = distinct !{!3025, !3026, !"quoting_options_from_style: argument 0"}
!3026 = distinct !{!3026, !"quoting_options_from_style"}
!3027 = !DILocation(line: 945, column: 36, scope: !2953, inlinedAt: !3021)
!3028 = !DILocation(line: 0, scope: !2969, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 945, column: 36, scope: !2953, inlinedAt: !3021)
!3030 = !DILocation(line: 185, column: 26, scope: !2969, inlinedAt: !3029)
!3031 = !DILocation(line: 186, column: 13, scope: !2978, inlinedAt: !3029)
!3032 = !DILocation(line: 186, column: 7, scope: !2969, inlinedAt: !3029)
!3033 = !DILocation(line: 187, column: 5, scope: !2978, inlinedAt: !3029)
!3034 = !DILocation(line: 188, column: 5, scope: !2969, inlinedAt: !3029)
!3035 = !DILocation(line: 188, column: 11, scope: !2969, inlinedAt: !3029)
!3036 = !DILocation(line: 946, column: 10, scope: !2953, inlinedAt: !3021)
!3037 = !DILocation(line: 947, column: 1, scope: !2953, inlinedAt: !3021)
!3038 = !DILocation(line: 960, column: 3, scope: !3013)
!3039 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !346, file: !346, line: 964, type: !3040, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3042)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!67, !33, !75, !72}
!3042 = !{!3043, !3044, !3045}
!3043 = !DILocalVariable(name: "s", arg: 1, scope: !3039, file: !346, line: 964, type: !33)
!3044 = !DILocalVariable(name: "arg", arg: 2, scope: !3039, file: !346, line: 964, type: !75)
!3045 = !DILocalVariable(name: "argsize", arg: 3, scope: !3039, file: !346, line: 964, type: !72)
!3046 = !DILocation(line: 0, scope: !3039)
!3047 = !DILocation(line: 0, scope: !2986, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 966, column: 10, scope: !3039)
!3049 = !DILocation(line: 953, column: 3, scope: !2986, inlinedAt: !3048)
!3050 = !DILocation(line: 953, column: 32, scope: !2986, inlinedAt: !3048)
!3051 = !{!3052}
!3052 = distinct !{!3052, !3053, !"quoting_options_from_style: argument 0"}
!3053 = distinct !{!3053, !"quoting_options_from_style"}
!3054 = !DILocation(line: 953, column: 36, scope: !2986, inlinedAt: !3048)
!3055 = !DILocation(line: 0, scope: !2969, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 953, column: 36, scope: !2986, inlinedAt: !3048)
!3057 = !DILocation(line: 185, column: 26, scope: !2969, inlinedAt: !3056)
!3058 = !DILocation(line: 186, column: 13, scope: !2978, inlinedAt: !3056)
!3059 = !DILocation(line: 186, column: 7, scope: !2969, inlinedAt: !3056)
!3060 = !DILocation(line: 187, column: 5, scope: !2978, inlinedAt: !3056)
!3061 = !DILocation(line: 188, column: 5, scope: !2969, inlinedAt: !3056)
!3062 = !DILocation(line: 188, column: 11, scope: !2969, inlinedAt: !3056)
!3063 = !DILocation(line: 954, column: 10, scope: !2986, inlinedAt: !3048)
!3064 = !DILocation(line: 955, column: 1, scope: !2986, inlinedAt: !3048)
!3065 = !DILocation(line: 966, column: 3, scope: !3039)
!3066 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !346, file: !346, line: 970, type: !3067, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!67, !75, !72, !68}
!3069 = !{!3070, !3071, !3072, !3073}
!3070 = !DILocalVariable(name: "arg", arg: 1, scope: !3066, file: !346, line: 970, type: !75)
!3071 = !DILocalVariable(name: "argsize", arg: 2, scope: !3066, file: !346, line: 970, type: !72)
!3072 = !DILocalVariable(name: "ch", arg: 3, scope: !3066, file: !346, line: 970, type: !68)
!3073 = !DILocalVariable(name: "options", scope: !3066, file: !346, line: 972, type: !363)
!3074 = !DILocation(line: 0, scope: !3066)
!3075 = !DILocation(line: 972, column: 3, scope: !3066)
!3076 = !DILocation(line: 972, column: 26, scope: !3066)
!3077 = !DILocation(line: 973, column: 13, scope: !3066)
!3078 = !{i64 0, i64 4, !658, i64 4, i64 4, !649, i64 8, i64 32, !658, i64 40, i64 8, !555, i64 48, i64 8, !555}
!3079 = !DILocation(line: 0, scope: !2090, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 974, column: 3, scope: !3066)
!3081 = !DILocation(line: 147, column: 62, scope: !2090, inlinedAt: !3080)
!3082 = !DILocation(line: 147, column: 57, scope: !2090, inlinedAt: !3080)
!3083 = !DILocation(line: 148, column: 15, scope: !2090, inlinedAt: !3080)
!3084 = !DILocation(line: 149, column: 21, scope: !2090, inlinedAt: !3080)
!3085 = !DILocation(line: 149, column: 24, scope: !2090, inlinedAt: !3080)
!3086 = !DILocation(line: 149, column: 34, scope: !2090, inlinedAt: !3080)
!3087 = !DILocation(line: 150, column: 19, scope: !2090, inlinedAt: !3080)
!3088 = !DILocation(line: 150, column: 24, scope: !2090, inlinedAt: !3080)
!3089 = !DILocation(line: 150, column: 6, scope: !2090, inlinedAt: !3080)
!3090 = !DILocation(line: 975, column: 10, scope: !3066)
!3091 = !DILocation(line: 976, column: 1, scope: !3066)
!3092 = !DILocation(line: 975, column: 3, scope: !3066)
!3093 = distinct !DISubprogram(name: "quotearg_char", scope: !346, file: !346, line: 979, type: !3094, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!67, !75, !68}
!3096 = !{!3097, !3098}
!3097 = !DILocalVariable(name: "arg", arg: 1, scope: !3093, file: !346, line: 979, type: !75)
!3098 = !DILocalVariable(name: "ch", arg: 2, scope: !3093, file: !346, line: 979, type: !68)
!3099 = !DILocation(line: 0, scope: !3093)
!3100 = !DILocation(line: 0, scope: !3066, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 981, column: 10, scope: !3093)
!3102 = !DILocation(line: 972, column: 3, scope: !3066, inlinedAt: !3101)
!3103 = !DILocation(line: 972, column: 26, scope: !3066, inlinedAt: !3101)
!3104 = !DILocation(line: 973, column: 13, scope: !3066, inlinedAt: !3101)
!3105 = !DILocation(line: 0, scope: !2090, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 974, column: 3, scope: !3066, inlinedAt: !3101)
!3107 = !DILocation(line: 147, column: 62, scope: !2090, inlinedAt: !3106)
!3108 = !DILocation(line: 147, column: 57, scope: !2090, inlinedAt: !3106)
!3109 = !DILocation(line: 148, column: 15, scope: !2090, inlinedAt: !3106)
!3110 = !DILocation(line: 149, column: 21, scope: !2090, inlinedAt: !3106)
!3111 = !DILocation(line: 149, column: 24, scope: !2090, inlinedAt: !3106)
!3112 = !DILocation(line: 149, column: 34, scope: !2090, inlinedAt: !3106)
!3113 = !DILocation(line: 150, column: 19, scope: !2090, inlinedAt: !3106)
!3114 = !DILocation(line: 150, column: 24, scope: !2090, inlinedAt: !3106)
!3115 = !DILocation(line: 150, column: 6, scope: !2090, inlinedAt: !3106)
!3116 = !DILocation(line: 975, column: 10, scope: !3066, inlinedAt: !3101)
!3117 = !DILocation(line: 976, column: 1, scope: !3066, inlinedAt: !3101)
!3118 = !DILocation(line: 981, column: 3, scope: !3093)
!3119 = distinct !DISubprogram(name: "quotearg_colon", scope: !346, file: !346, line: 985, type: !761, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3120)
!3120 = !{!3121}
!3121 = !DILocalVariable(name: "arg", arg: 1, scope: !3119, file: !346, line: 985, type: !75)
!3122 = !DILocation(line: 0, scope: !3119)
!3123 = !DILocation(line: 0, scope: !3093, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 987, column: 10, scope: !3119)
!3125 = !DILocation(line: 0, scope: !3066, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 981, column: 10, scope: !3093, inlinedAt: !3124)
!3127 = !DILocation(line: 972, column: 3, scope: !3066, inlinedAt: !3126)
!3128 = !DILocation(line: 972, column: 26, scope: !3066, inlinedAt: !3126)
!3129 = !DILocation(line: 973, column: 13, scope: !3066, inlinedAt: !3126)
!3130 = !DILocation(line: 0, scope: !2090, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 974, column: 3, scope: !3066, inlinedAt: !3126)
!3132 = !DILocation(line: 147, column: 57, scope: !2090, inlinedAt: !3131)
!3133 = !DILocation(line: 149, column: 21, scope: !2090, inlinedAt: !3131)
!3134 = !DILocation(line: 150, column: 6, scope: !2090, inlinedAt: !3131)
!3135 = !DILocation(line: 975, column: 10, scope: !3066, inlinedAt: !3126)
!3136 = !DILocation(line: 976, column: 1, scope: !3066, inlinedAt: !3126)
!3137 = !DILocation(line: 987, column: 3, scope: !3119)
!3138 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !346, file: !346, line: 991, type: !2943, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3139)
!3139 = !{!3140, !3141}
!3140 = !DILocalVariable(name: "arg", arg: 1, scope: !3138, file: !346, line: 991, type: !75)
!3141 = !DILocalVariable(name: "argsize", arg: 2, scope: !3138, file: !346, line: 991, type: !72)
!3142 = !DILocation(line: 0, scope: !3138)
!3143 = !DILocation(line: 0, scope: !3066, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 993, column: 10, scope: !3138)
!3145 = !DILocation(line: 972, column: 3, scope: !3066, inlinedAt: !3144)
!3146 = !DILocation(line: 972, column: 26, scope: !3066, inlinedAt: !3144)
!3147 = !DILocation(line: 973, column: 13, scope: !3066, inlinedAt: !3144)
!3148 = !DILocation(line: 0, scope: !2090, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 974, column: 3, scope: !3066, inlinedAt: !3144)
!3150 = !DILocation(line: 147, column: 57, scope: !2090, inlinedAt: !3149)
!3151 = !DILocation(line: 149, column: 21, scope: !2090, inlinedAt: !3149)
!3152 = !DILocation(line: 150, column: 6, scope: !2090, inlinedAt: !3149)
!3153 = !DILocation(line: 975, column: 10, scope: !3066, inlinedAt: !3144)
!3154 = !DILocation(line: 976, column: 1, scope: !3066, inlinedAt: !3144)
!3155 = !DILocation(line: 993, column: 3, scope: !3138)
!3156 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !346, file: !346, line: 997, type: !2954, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3157)
!3157 = !{!3158, !3159, !3160, !3161}
!3158 = !DILocalVariable(name: "n", arg: 1, scope: !3156, file: !346, line: 997, type: !70)
!3159 = !DILocalVariable(name: "s", arg: 2, scope: !3156, file: !346, line: 997, type: !33)
!3160 = !DILocalVariable(name: "arg", arg: 3, scope: !3156, file: !346, line: 997, type: !75)
!3161 = !DILocalVariable(name: "options", scope: !3156, file: !346, line: 999, type: !363)
!3162 = !DILocation(line: 0, scope: !3156)
!3163 = !DILocation(line: 999, column: 3, scope: !3156)
!3164 = !DILocation(line: 999, column: 26, scope: !3156)
!3165 = !DILocation(line: 0, scope: !2969, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 1000, column: 13, scope: !3156)
!3167 = !DILocation(line: 186, column: 13, scope: !2978, inlinedAt: !3166)
!3168 = !DILocation(line: 186, column: 7, scope: !2969, inlinedAt: !3166)
!3169 = !DILocation(line: 187, column: 5, scope: !2978, inlinedAt: !3166)
!3170 = !{!3171}
!3171 = distinct !{!3171, !3172, !"quoting_options_from_style: argument 0"}
!3172 = distinct !{!3172, !"quoting_options_from_style"}
!3173 = !DILocation(line: 1000, column: 13, scope: !3156)
!3174 = !DILocation(line: 0, scope: !2090, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 1001, column: 3, scope: !3156)
!3176 = !DILocation(line: 147, column: 57, scope: !2090, inlinedAt: !3175)
!3177 = !DILocation(line: 149, column: 21, scope: !2090, inlinedAt: !3175)
!3178 = !DILocation(line: 150, column: 6, scope: !2090, inlinedAt: !3175)
!3179 = !DILocation(line: 1002, column: 10, scope: !3156)
!3180 = !DILocation(line: 1003, column: 1, scope: !3156)
!3181 = !DILocation(line: 1002, column: 3, scope: !3156)
!3182 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !346, file: !346, line: 1006, type: !3183, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3185)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!67, !70, !75, !75, !75}
!3185 = !{!3186, !3187, !3188, !3189}
!3186 = !DILocalVariable(name: "n", arg: 1, scope: !3182, file: !346, line: 1006, type: !70)
!3187 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3182, file: !346, line: 1006, type: !75)
!3188 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3182, file: !346, line: 1007, type: !75)
!3189 = !DILocalVariable(name: "arg", arg: 4, scope: !3182, file: !346, line: 1007, type: !75)
!3190 = !DILocation(line: 0, scope: !3182)
!3191 = !DILocalVariable(name: "n", arg: 1, scope: !3192, file: !346, line: 1014, type: !70)
!3192 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !346, file: !346, line: 1014, type: !3193, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3195)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!67, !70, !75, !75, !75, !72}
!3195 = !{!3191, !3196, !3197, !3198, !3199, !3200}
!3196 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3192, file: !346, line: 1014, type: !75)
!3197 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3192, file: !346, line: 1015, type: !75)
!3198 = !DILocalVariable(name: "arg", arg: 4, scope: !3192, file: !346, line: 1016, type: !75)
!3199 = !DILocalVariable(name: "argsize", arg: 5, scope: !3192, file: !346, line: 1016, type: !72)
!3200 = !DILocalVariable(name: "o", scope: !3192, file: !346, line: 1018, type: !363)
!3201 = !DILocation(line: 0, scope: !3192, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 1009, column: 10, scope: !3182)
!3203 = !DILocation(line: 1018, column: 3, scope: !3192, inlinedAt: !3202)
!3204 = !DILocation(line: 1018, column: 26, scope: !3192, inlinedAt: !3202)
!3205 = !DILocation(line: 1018, column: 30, scope: !3192, inlinedAt: !3202)
!3206 = !DILocation(line: 0, scope: !2130, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 1019, column: 3, scope: !3192, inlinedAt: !3202)
!3208 = !DILocation(line: 174, column: 6, scope: !2130, inlinedAt: !3207)
!3209 = !DILocation(line: 174, column: 12, scope: !2130, inlinedAt: !3207)
!3210 = !DILocation(line: 175, column: 8, scope: !2144, inlinedAt: !3207)
!3211 = !DILocation(line: 175, column: 19, scope: !2144, inlinedAt: !3207)
!3212 = !DILocation(line: 176, column: 5, scope: !2144, inlinedAt: !3207)
!3213 = !DILocation(line: 177, column: 6, scope: !2130, inlinedAt: !3207)
!3214 = !DILocation(line: 177, column: 17, scope: !2130, inlinedAt: !3207)
!3215 = !DILocation(line: 178, column: 6, scope: !2130, inlinedAt: !3207)
!3216 = !DILocation(line: 178, column: 18, scope: !2130, inlinedAt: !3207)
!3217 = !DILocation(line: 1020, column: 10, scope: !3192, inlinedAt: !3202)
!3218 = !DILocation(line: 1021, column: 1, scope: !3192, inlinedAt: !3202)
!3219 = !DILocation(line: 1009, column: 3, scope: !3182)
!3220 = !DILocation(line: 0, scope: !3192)
!3221 = !DILocation(line: 1018, column: 3, scope: !3192)
!3222 = !DILocation(line: 1018, column: 26, scope: !3192)
!3223 = !DILocation(line: 1018, column: 30, scope: !3192)
!3224 = !DILocation(line: 0, scope: !2130, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 1019, column: 3, scope: !3192)
!3226 = !DILocation(line: 174, column: 6, scope: !2130, inlinedAt: !3225)
!3227 = !DILocation(line: 174, column: 12, scope: !2130, inlinedAt: !3225)
!3228 = !DILocation(line: 175, column: 8, scope: !2144, inlinedAt: !3225)
!3229 = !DILocation(line: 175, column: 19, scope: !2144, inlinedAt: !3225)
!3230 = !DILocation(line: 176, column: 5, scope: !2144, inlinedAt: !3225)
!3231 = !DILocation(line: 177, column: 6, scope: !2130, inlinedAt: !3225)
!3232 = !DILocation(line: 177, column: 17, scope: !2130, inlinedAt: !3225)
!3233 = !DILocation(line: 178, column: 6, scope: !2130, inlinedAt: !3225)
!3234 = !DILocation(line: 178, column: 18, scope: !2130, inlinedAt: !3225)
!3235 = !DILocation(line: 1020, column: 10, scope: !3192)
!3236 = !DILocation(line: 1021, column: 1, scope: !3192)
!3237 = !DILocation(line: 1020, column: 3, scope: !3192)
!3238 = distinct !DISubprogram(name: "quotearg_custom", scope: !346, file: !346, line: 1024, type: !3239, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3241)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!67, !75, !75, !75}
!3241 = !{!3242, !3243, !3244}
!3242 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3238, file: !346, line: 1024, type: !75)
!3243 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3238, file: !346, line: 1024, type: !75)
!3244 = !DILocalVariable(name: "arg", arg: 3, scope: !3238, file: !346, line: 1025, type: !75)
!3245 = !DILocation(line: 0, scope: !3238)
!3246 = !DILocation(line: 0, scope: !3182, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 1027, column: 10, scope: !3238)
!3248 = !DILocation(line: 0, scope: !3192, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 1009, column: 10, scope: !3182, inlinedAt: !3247)
!3250 = !DILocation(line: 1018, column: 3, scope: !3192, inlinedAt: !3249)
!3251 = !DILocation(line: 1018, column: 26, scope: !3192, inlinedAt: !3249)
!3252 = !DILocation(line: 1018, column: 30, scope: !3192, inlinedAt: !3249)
!3253 = !DILocation(line: 0, scope: !2130, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 1019, column: 3, scope: !3192, inlinedAt: !3249)
!3255 = !DILocation(line: 174, column: 6, scope: !2130, inlinedAt: !3254)
!3256 = !DILocation(line: 174, column: 12, scope: !2130, inlinedAt: !3254)
!3257 = !DILocation(line: 175, column: 8, scope: !2144, inlinedAt: !3254)
!3258 = !DILocation(line: 175, column: 19, scope: !2144, inlinedAt: !3254)
!3259 = !DILocation(line: 176, column: 5, scope: !2144, inlinedAt: !3254)
!3260 = !DILocation(line: 177, column: 6, scope: !2130, inlinedAt: !3254)
!3261 = !DILocation(line: 177, column: 17, scope: !2130, inlinedAt: !3254)
!3262 = !DILocation(line: 178, column: 6, scope: !2130, inlinedAt: !3254)
!3263 = !DILocation(line: 178, column: 18, scope: !2130, inlinedAt: !3254)
!3264 = !DILocation(line: 1020, column: 10, scope: !3192, inlinedAt: !3249)
!3265 = !DILocation(line: 1021, column: 1, scope: !3192, inlinedAt: !3249)
!3266 = !DILocation(line: 1027, column: 3, scope: !3238)
!3267 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !346, file: !346, line: 1031, type: !3268, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!67, !75, !75, !75, !72}
!3270 = !{!3271, !3272, !3273, !3274}
!3271 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3267, file: !346, line: 1031, type: !75)
!3272 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3267, file: !346, line: 1031, type: !75)
!3273 = !DILocalVariable(name: "arg", arg: 3, scope: !3267, file: !346, line: 1032, type: !75)
!3274 = !DILocalVariable(name: "argsize", arg: 4, scope: !3267, file: !346, line: 1032, type: !72)
!3275 = !DILocation(line: 0, scope: !3267)
!3276 = !DILocation(line: 0, scope: !3192, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 1034, column: 10, scope: !3267)
!3278 = !DILocation(line: 1018, column: 3, scope: !3192, inlinedAt: !3277)
!3279 = !DILocation(line: 1018, column: 26, scope: !3192, inlinedAt: !3277)
!3280 = !DILocation(line: 1018, column: 30, scope: !3192, inlinedAt: !3277)
!3281 = !DILocation(line: 0, scope: !2130, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 1019, column: 3, scope: !3192, inlinedAt: !3277)
!3283 = !DILocation(line: 174, column: 6, scope: !2130, inlinedAt: !3282)
!3284 = !DILocation(line: 174, column: 12, scope: !2130, inlinedAt: !3282)
!3285 = !DILocation(line: 175, column: 8, scope: !2144, inlinedAt: !3282)
!3286 = !DILocation(line: 175, column: 19, scope: !2144, inlinedAt: !3282)
!3287 = !DILocation(line: 176, column: 5, scope: !2144, inlinedAt: !3282)
!3288 = !DILocation(line: 177, column: 6, scope: !2130, inlinedAt: !3282)
!3289 = !DILocation(line: 177, column: 17, scope: !2130, inlinedAt: !3282)
!3290 = !DILocation(line: 178, column: 6, scope: !2130, inlinedAt: !3282)
!3291 = !DILocation(line: 178, column: 18, scope: !2130, inlinedAt: !3282)
!3292 = !DILocation(line: 1020, column: 10, scope: !3192, inlinedAt: !3277)
!3293 = !DILocation(line: 1021, column: 1, scope: !3192, inlinedAt: !3277)
!3294 = !DILocation(line: 1034, column: 3, scope: !3267)
!3295 = distinct !DISubprogram(name: "quote_n_mem", scope: !346, file: !346, line: 1049, type: !3296, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3298)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!75, !70, !75, !72}
!3298 = !{!3299, !3300, !3301}
!3299 = !DILocalVariable(name: "n", arg: 1, scope: !3295, file: !346, line: 1049, type: !70)
!3300 = !DILocalVariable(name: "arg", arg: 2, scope: !3295, file: !346, line: 1049, type: !75)
!3301 = !DILocalVariable(name: "argsize", arg: 3, scope: !3295, file: !346, line: 1049, type: !72)
!3302 = !DILocation(line: 0, scope: !3295)
!3303 = !DILocation(line: 1051, column: 10, scope: !3295)
!3304 = !DILocation(line: 1051, column: 3, scope: !3295)
!3305 = distinct !DISubprogram(name: "quote_mem", scope: !346, file: !346, line: 1055, type: !3306, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!75, !75, !72}
!3308 = !{!3309, !3310}
!3309 = !DILocalVariable(name: "arg", arg: 1, scope: !3305, file: !346, line: 1055, type: !75)
!3310 = !DILocalVariable(name: "argsize", arg: 2, scope: !3305, file: !346, line: 1055, type: !72)
!3311 = !DILocation(line: 0, scope: !3305)
!3312 = !DILocation(line: 0, scope: !3295, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 1057, column: 10, scope: !3305)
!3314 = !DILocation(line: 1051, column: 10, scope: !3295, inlinedAt: !3313)
!3315 = !DILocation(line: 1057, column: 3, scope: !3305)
!3316 = distinct !DISubprogram(name: "quote_n", scope: !346, file: !346, line: 1061, type: !3317, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3319)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!75, !70, !75}
!3319 = !{!3320, !3321}
!3320 = !DILocalVariable(name: "n", arg: 1, scope: !3316, file: !346, line: 1061, type: !70)
!3321 = !DILocalVariable(name: "arg", arg: 2, scope: !3316, file: !346, line: 1061, type: !75)
!3322 = !DILocation(line: 0, scope: !3316)
!3323 = !DILocation(line: 0, scope: !3295, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 1063, column: 10, scope: !3316)
!3325 = !DILocation(line: 1051, column: 10, scope: !3295, inlinedAt: !3324)
!3326 = !DILocation(line: 1063, column: 3, scope: !3316)
!3327 = distinct !DISubprogram(name: "quote", scope: !346, file: !346, line: 1067, type: !3328, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3330)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!75, !75}
!3330 = !{!3331}
!3331 = !DILocalVariable(name: "arg", arg: 1, scope: !3327, file: !346, line: 1067, type: !75)
!3332 = !DILocation(line: 0, scope: !3327)
!3333 = !DILocation(line: 0, scope: !3316, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 1069, column: 10, scope: !3327)
!3335 = !DILocation(line: 0, scope: !3295, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 1063, column: 10, scope: !3316, inlinedAt: !3334)
!3337 = !DILocation(line: 1051, column: 10, scope: !3295, inlinedAt: !3336)
!3338 = !DILocation(line: 1069, column: 3, scope: !3327)
!3339 = distinct !DISubprogram(name: "version_etc_arn", scope: !463, file: !463, line: 61, type: !3340, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !3377)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{null, !3342, !75, !75, !75, !3376, !72}
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !3344)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !3345)
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3344, file: !113, line: 51, baseType: !70, size: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3344, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3344, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3344, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3344, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3344, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3344, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3344, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3344, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3344, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3344, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3344, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3344, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3344, file: !113, line: 70, baseType: !3360, size: 64, offset: 832)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3344, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3344, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3344, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3344, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3344, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3344, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3344, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3344, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3344, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3344, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3344, file: !113, line: 93, baseType: !3360, size: 64, offset: 1344)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3344, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3344, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3344, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3344, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!3377 = !{!3378, !3379, !3380, !3381, !3382, !3383}
!3378 = !DILocalVariable(name: "stream", arg: 1, scope: !3339, file: !463, line: 61, type: !3342)
!3379 = !DILocalVariable(name: "command_name", arg: 2, scope: !3339, file: !463, line: 62, type: !75)
!3380 = !DILocalVariable(name: "package", arg: 3, scope: !3339, file: !463, line: 62, type: !75)
!3381 = !DILocalVariable(name: "version", arg: 4, scope: !3339, file: !463, line: 63, type: !75)
!3382 = !DILocalVariable(name: "authors", arg: 5, scope: !3339, file: !463, line: 64, type: !3376)
!3383 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3339, file: !463, line: 64, type: !72)
!3384 = !DILocation(line: 0, scope: !3339)
!3385 = !DILocation(line: 66, column: 7, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3339, file: !463, line: 66, column: 7)
!3387 = !DILocation(line: 66, column: 7, scope: !3339)
!3388 = !DILocation(line: 67, column: 5, scope: !3386)
!3389 = !DILocation(line: 69, column: 5, scope: !3386)
!3390 = !DILocation(line: 83, column: 3, scope: !3339)
!3391 = !DILocation(line: 85, column: 3, scope: !3339)
!3392 = !DILocation(line: 88, column: 3, scope: !3339)
!3393 = !DILocation(line: 95, column: 3, scope: !3339)
!3394 = !DILocation(line: 97, column: 3, scope: !3339)
!3395 = !DILocation(line: 105, column: 7, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3339, file: !463, line: 98, column: 5)
!3397 = !DILocation(line: 106, column: 7, scope: !3396)
!3398 = !DILocation(line: 109, column: 7, scope: !3396)
!3399 = !DILocation(line: 110, column: 7, scope: !3396)
!3400 = !DILocation(line: 113, column: 7, scope: !3396)
!3401 = !DILocation(line: 115, column: 7, scope: !3396)
!3402 = !DILocation(line: 120, column: 7, scope: !3396)
!3403 = !DILocation(line: 122, column: 7, scope: !3396)
!3404 = !DILocation(line: 127, column: 7, scope: !3396)
!3405 = !DILocation(line: 129, column: 7, scope: !3396)
!3406 = !DILocation(line: 134, column: 7, scope: !3396)
!3407 = !DILocation(line: 137, column: 7, scope: !3396)
!3408 = !DILocation(line: 142, column: 7, scope: !3396)
!3409 = !DILocation(line: 145, column: 7, scope: !3396)
!3410 = !DILocation(line: 150, column: 7, scope: !3396)
!3411 = !DILocation(line: 154, column: 7, scope: !3396)
!3412 = !DILocation(line: 159, column: 7, scope: !3396)
!3413 = !DILocation(line: 163, column: 7, scope: !3396)
!3414 = !DILocation(line: 170, column: 7, scope: !3396)
!3415 = !DILocation(line: 174, column: 7, scope: !3396)
!3416 = !DILocation(line: 176, column: 1, scope: !3339)
!3417 = distinct !DISubprogram(name: "version_etc_ar", scope: !463, file: !463, line: 183, type: !3418, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !3420)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{null, !3342, !75, !75, !75, !3376}
!3420 = !{!3421, !3422, !3423, !3424, !3425, !3426}
!3421 = !DILocalVariable(name: "stream", arg: 1, scope: !3417, file: !463, line: 183, type: !3342)
!3422 = !DILocalVariable(name: "command_name", arg: 2, scope: !3417, file: !463, line: 184, type: !75)
!3423 = !DILocalVariable(name: "package", arg: 3, scope: !3417, file: !463, line: 184, type: !75)
!3424 = !DILocalVariable(name: "version", arg: 4, scope: !3417, file: !463, line: 185, type: !75)
!3425 = !DILocalVariable(name: "authors", arg: 5, scope: !3417, file: !463, line: 185, type: !3376)
!3426 = !DILocalVariable(name: "n_authors", scope: !3417, file: !463, line: 187, type: !72)
!3427 = !DILocation(line: 0, scope: !3417)
!3428 = !DILocation(line: 189, column: 8, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3417, file: !463, line: 189, column: 3)
!3430 = !DILocation(line: 0, scope: !3429)
!3431 = !DILocation(line: 189, column: 23, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3429, file: !463, line: 189, column: 3)
!3433 = !DILocation(line: 189, column: 3, scope: !3429)
!3434 = !DILocation(line: 189, column: 52, scope: !3432)
!3435 = distinct !{!3435, !3433, !3436, !616}
!3436 = !DILocation(line: 190, column: 5, scope: !3429)
!3437 = !DILocation(line: 191, column: 3, scope: !3417)
!3438 = !DILocation(line: 192, column: 1, scope: !3417)
!3439 = distinct !DISubprogram(name: "version_etc_va", scope: !463, file: !463, line: 199, type: !3440, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !3453)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{null, !3342, !75, !75, !75, !3442}
!3442 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !276, line: 52, baseType: !3443)
!3443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !278, line: 32, baseType: !3444)
!3444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3445, baseType: !3446)
!3445 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !282, size: 256, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3451, !3452}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3446, file: !3445, line: 192, baseType: !69, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3446, file: !3445, line: 192, baseType: !69, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3446, file: !3445, line: 192, baseType: !69, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3446, file: !3445, line: 192, baseType: !70, size: 32, offset: 192)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3446, file: !3445, line: 192, baseType: !70, size: 32, offset: 224)
!3453 = !{!3454, !3455, !3456, !3457, !3458, !3459, !3460}
!3454 = !DILocalVariable(name: "stream", arg: 1, scope: !3439, file: !463, line: 199, type: !3342)
!3455 = !DILocalVariable(name: "command_name", arg: 2, scope: !3439, file: !463, line: 200, type: !75)
!3456 = !DILocalVariable(name: "package", arg: 3, scope: !3439, file: !463, line: 200, type: !75)
!3457 = !DILocalVariable(name: "version", arg: 4, scope: !3439, file: !463, line: 201, type: !75)
!3458 = !DILocalVariable(name: "authors", arg: 5, scope: !3439, file: !463, line: 201, type: !3442)
!3459 = !DILocalVariable(name: "n_authors", scope: !3439, file: !463, line: 203, type: !72)
!3460 = !DILocalVariable(name: "authtab", scope: !3439, file: !463, line: 204, type: !3461)
!3461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 640, elements: !359)
!3462 = !DILocation(line: 0, scope: !3439)
!3463 = !DILocation(line: 201, column: 46, scope: !3439)
!3464 = !DILocation(line: 204, column: 3, scope: !3439)
!3465 = !DILocation(line: 204, column: 15, scope: !3439)
!3466 = !DILocation(line: 208, column: 35, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !463, line: 206, column: 3)
!3468 = distinct !DILexicalBlock(scope: !3439, file: !463, line: 206, column: 3)
!3469 = !DILocation(line: 208, column: 14, scope: !3467)
!3470 = !DILocation(line: 208, column: 33, scope: !3467)
!3471 = !DILocation(line: 208, column: 67, scope: !3467)
!3472 = !DILocation(line: 206, column: 3, scope: !3468)
!3473 = !DILocation(line: 212, column: 20, scope: !3439)
!3474 = !DILocation(line: 211, column: 3, scope: !3439)
!3475 = !DILocation(line: 213, column: 1, scope: !3439)
!3476 = distinct !DISubprogram(name: "version_etc", scope: !463, file: !463, line: 230, type: !3477, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !3479)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{null, !3342, !75, !75, !75, null}
!3479 = !{!3480, !3481, !3482, !3483, !3484}
!3480 = !DILocalVariable(name: "stream", arg: 1, scope: !3476, file: !463, line: 230, type: !3342)
!3481 = !DILocalVariable(name: "command_name", arg: 2, scope: !3476, file: !463, line: 231, type: !75)
!3482 = !DILocalVariable(name: "package", arg: 3, scope: !3476, file: !463, line: 231, type: !75)
!3483 = !DILocalVariable(name: "version", arg: 4, scope: !3476, file: !463, line: 232, type: !75)
!3484 = !DILocalVariable(name: "authors", scope: !3476, file: !463, line: 234, type: !3442)
!3485 = !DILocation(line: 0, scope: !3476)
!3486 = !DILocation(line: 234, column: 3, scope: !3476)
!3487 = !DILocation(line: 234, column: 11, scope: !3476)
!3488 = !DILocation(line: 235, column: 3, scope: !3476)
!3489 = !DILocation(line: 236, column: 3, scope: !3476)
!3490 = !DILocation(line: 237, column: 3, scope: !3476)
!3491 = !DILocation(line: 238, column: 1, scope: !3476)
!3492 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !463, file: !463, line: 241, type: !303, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !564)
!3493 = !DILocation(line: 243, column: 3, scope: !3492)
!3494 = !DILocation(line: 248, column: 3, scope: !3492)
!3495 = !DILocation(line: 254, column: 3, scope: !3492)
!3496 = !DILocation(line: 259, column: 3, scope: !3492)
!3497 = !DILocation(line: 261, column: 1, scope: !3492)
!3498 = distinct !DISubprogram(name: "xnrealloc", scope: !3499, file: !3499, line: 147, type: !3500, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3502)
!3499 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!69, !69, !72, !72}
!3502 = !{!3503, !3504, !3505}
!3503 = !DILocalVariable(name: "p", arg: 1, scope: !3498, file: !3499, line: 147, type: !69)
!3504 = !DILocalVariable(name: "n", arg: 2, scope: !3498, file: !3499, line: 147, type: !72)
!3505 = !DILocalVariable(name: "s", arg: 3, scope: !3498, file: !3499, line: 147, type: !72)
!3506 = !DILocation(line: 0, scope: !3498)
!3507 = !DILocalVariable(name: "p", arg: 1, scope: !3508, file: !469, line: 83, type: !69)
!3508 = distinct !DISubprogram(name: "xreallocarray", scope: !469, file: !469, line: 83, type: !3500, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3509)
!3509 = !{!3507, !3510, !3511}
!3510 = !DILocalVariable(name: "n", arg: 2, scope: !3508, file: !469, line: 83, type: !72)
!3511 = !DILocalVariable(name: "s", arg: 3, scope: !3508, file: !469, line: 83, type: !72)
!3512 = !DILocation(line: 0, scope: !3508, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 149, column: 10, scope: !3498)
!3514 = !DILocation(line: 85, column: 25, scope: !3508, inlinedAt: !3513)
!3515 = !DILocalVariable(name: "p", arg: 1, scope: !3516, file: !469, line: 37, type: !69)
!3516 = distinct !DISubprogram(name: "check_nonnull", scope: !469, file: !469, line: 37, type: !3517, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3519)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!69, !69}
!3519 = !{!3515}
!3520 = !DILocation(line: 0, scope: !3516, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 85, column: 10, scope: !3508, inlinedAt: !3513)
!3522 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3521)
!3523 = distinct !DILexicalBlock(scope: !3516, file: !469, line: 39, column: 7)
!3524 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3521)
!3525 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3521)
!3526 = !DILocation(line: 149, column: 3, scope: !3498)
!3527 = !DILocation(line: 0, scope: !3508)
!3528 = !DILocation(line: 85, column: 25, scope: !3508)
!3529 = !DILocation(line: 0, scope: !3516, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 85, column: 10, scope: !3508)
!3531 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3530)
!3532 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3530)
!3533 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3530)
!3534 = !DILocation(line: 85, column: 3, scope: !3508)
!3535 = distinct !DISubprogram(name: "xmalloc", scope: !469, file: !469, line: 47, type: !3536, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3538)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!69, !72}
!3538 = !{!3539}
!3539 = !DILocalVariable(name: "s", arg: 1, scope: !3535, file: !469, line: 47, type: !72)
!3540 = !DILocation(line: 0, scope: !3535)
!3541 = !DILocation(line: 49, column: 25, scope: !3535)
!3542 = !DILocation(line: 0, scope: !3516, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 49, column: 10, scope: !3535)
!3544 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3543)
!3545 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3543)
!3546 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3543)
!3547 = !DILocation(line: 49, column: 3, scope: !3535)
!3548 = distinct !DISubprogram(name: "ximalloc", scope: !469, file: !469, line: 53, type: !3549, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3551)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!69, !197}
!3551 = !{!3552}
!3552 = !DILocalVariable(name: "s", arg: 1, scope: !3548, file: !469, line: 53, type: !197)
!3553 = !DILocation(line: 0, scope: !3548)
!3554 = !DILocalVariable(name: "s", arg: 1, scope: !3555, file: !3556, line: 55, type: !197)
!3555 = distinct !DISubprogram(name: "imalloc", scope: !3556, file: !3556, line: 55, type: !3549, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3557)
!3556 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3557 = !{!3554}
!3558 = !DILocation(line: 0, scope: !3555, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 55, column: 25, scope: !3548)
!3560 = !DILocation(line: 57, column: 26, scope: !3555, inlinedAt: !3559)
!3561 = !DILocation(line: 0, scope: !3516, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 55, column: 10, scope: !3548)
!3563 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3562)
!3564 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3562)
!3565 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3562)
!3566 = !DILocation(line: 55, column: 3, scope: !3548)
!3567 = distinct !DISubprogram(name: "xcharalloc", scope: !469, file: !469, line: 59, type: !3568, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3570)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!67, !72}
!3570 = !{!3571}
!3571 = !DILocalVariable(name: "n", arg: 1, scope: !3567, file: !469, line: 59, type: !72)
!3572 = !DILocation(line: 0, scope: !3567)
!3573 = !DILocation(line: 0, scope: !3535, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 61, column: 10, scope: !3567)
!3575 = !DILocation(line: 49, column: 25, scope: !3535, inlinedAt: !3574)
!3576 = !DILocation(line: 0, scope: !3516, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 49, column: 10, scope: !3535, inlinedAt: !3574)
!3578 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3577)
!3579 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3577)
!3580 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3577)
!3581 = !DILocation(line: 61, column: 3, scope: !3567)
!3582 = distinct !DISubprogram(name: "xrealloc", scope: !469, file: !469, line: 68, type: !3583, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3585)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!69, !69, !72}
!3585 = !{!3586, !3587}
!3586 = !DILocalVariable(name: "p", arg: 1, scope: !3582, file: !469, line: 68, type: !69)
!3587 = !DILocalVariable(name: "s", arg: 2, scope: !3582, file: !469, line: 68, type: !72)
!3588 = !DILocation(line: 0, scope: !3582)
!3589 = !DILocalVariable(name: "ptr", arg: 1, scope: !3590, file: !3591, line: 2057, type: !69)
!3590 = distinct !DISubprogram(name: "rpl_realloc", scope: !3591, file: !3591, line: 2057, type: !3583, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3592)
!3591 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3592 = !{!3589, !3593}
!3593 = !DILocalVariable(name: "size", arg: 2, scope: !3590, file: !3591, line: 2057, type: !72)
!3594 = !DILocation(line: 0, scope: !3590, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 70, column: 25, scope: !3582)
!3596 = !DILocation(line: 2059, column: 24, scope: !3590, inlinedAt: !3595)
!3597 = !DILocation(line: 2059, column: 10, scope: !3590, inlinedAt: !3595)
!3598 = !DILocation(line: 0, scope: !3516, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 70, column: 10, scope: !3582)
!3600 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3599)
!3601 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3599)
!3602 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3599)
!3603 = !DILocation(line: 70, column: 3, scope: !3582)
!3604 = distinct !DISubprogram(name: "xirealloc", scope: !469, file: !469, line: 74, type: !3605, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!69, !69, !197}
!3607 = !{!3608, !3609}
!3608 = !DILocalVariable(name: "p", arg: 1, scope: !3604, file: !469, line: 74, type: !69)
!3609 = !DILocalVariable(name: "s", arg: 2, scope: !3604, file: !469, line: 74, type: !197)
!3610 = !DILocation(line: 0, scope: !3604)
!3611 = !DILocalVariable(name: "p", arg: 1, scope: !3612, file: !3556, line: 66, type: !69)
!3612 = distinct !DISubprogram(name: "irealloc", scope: !3556, file: !3556, line: 66, type: !3605, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3613)
!3613 = !{!3611, !3614}
!3614 = !DILocalVariable(name: "s", arg: 2, scope: !3612, file: !3556, line: 66, type: !197)
!3615 = !DILocation(line: 0, scope: !3612, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 76, column: 25, scope: !3604)
!3617 = !DILocation(line: 0, scope: !3590, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 68, column: 26, scope: !3612, inlinedAt: !3616)
!3619 = !DILocation(line: 2059, column: 24, scope: !3590, inlinedAt: !3618)
!3620 = !DILocation(line: 2059, column: 10, scope: !3590, inlinedAt: !3618)
!3621 = !DILocation(line: 0, scope: !3516, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 76, column: 10, scope: !3604)
!3623 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3622)
!3624 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3622)
!3625 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3622)
!3626 = !DILocation(line: 76, column: 3, scope: !3604)
!3627 = distinct !DISubprogram(name: "xireallocarray", scope: !469, file: !469, line: 89, type: !3628, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3630)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!69, !69, !197, !197}
!3630 = !{!3631, !3632, !3633}
!3631 = !DILocalVariable(name: "p", arg: 1, scope: !3627, file: !469, line: 89, type: !69)
!3632 = !DILocalVariable(name: "n", arg: 2, scope: !3627, file: !469, line: 89, type: !197)
!3633 = !DILocalVariable(name: "s", arg: 3, scope: !3627, file: !469, line: 89, type: !197)
!3634 = !DILocation(line: 0, scope: !3627)
!3635 = !DILocalVariable(name: "p", arg: 1, scope: !3636, file: !3556, line: 98, type: !69)
!3636 = distinct !DISubprogram(name: "ireallocarray", scope: !3556, file: !3556, line: 98, type: !3628, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3637)
!3637 = !{!3635, !3638, !3639}
!3638 = !DILocalVariable(name: "n", arg: 2, scope: !3636, file: !3556, line: 98, type: !197)
!3639 = !DILocalVariable(name: "s", arg: 3, scope: !3636, file: !3556, line: 98, type: !197)
!3640 = !DILocation(line: 0, scope: !3636, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 91, column: 25, scope: !3627)
!3642 = !DILocation(line: 101, column: 13, scope: !3636, inlinedAt: !3641)
!3643 = !DILocation(line: 0, scope: !3516, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 91, column: 10, scope: !3627)
!3645 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3644)
!3646 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3644)
!3647 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3644)
!3648 = !DILocation(line: 91, column: 3, scope: !3627)
!3649 = distinct !DISubprogram(name: "xnmalloc", scope: !469, file: !469, line: 98, type: !3650, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3652)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!69, !72, !72}
!3652 = !{!3653, !3654}
!3653 = !DILocalVariable(name: "n", arg: 1, scope: !3649, file: !469, line: 98, type: !72)
!3654 = !DILocalVariable(name: "s", arg: 2, scope: !3649, file: !469, line: 98, type: !72)
!3655 = !DILocation(line: 0, scope: !3649)
!3656 = !DILocation(line: 0, scope: !3508, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 100, column: 10, scope: !3649)
!3658 = !DILocation(line: 85, column: 25, scope: !3508, inlinedAt: !3657)
!3659 = !DILocation(line: 0, scope: !3516, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 85, column: 10, scope: !3508, inlinedAt: !3657)
!3661 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3660)
!3662 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3660)
!3663 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3660)
!3664 = !DILocation(line: 100, column: 3, scope: !3649)
!3665 = distinct !DISubprogram(name: "xinmalloc", scope: !469, file: !469, line: 104, type: !3666, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3668)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!69, !197, !197}
!3668 = !{!3669, !3670}
!3669 = !DILocalVariable(name: "n", arg: 1, scope: !3665, file: !469, line: 104, type: !197)
!3670 = !DILocalVariable(name: "s", arg: 2, scope: !3665, file: !469, line: 104, type: !197)
!3671 = !DILocation(line: 0, scope: !3665)
!3672 = !DILocation(line: 0, scope: !3627, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 106, column: 10, scope: !3665)
!3674 = !DILocation(line: 0, scope: !3636, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 91, column: 25, scope: !3627, inlinedAt: !3673)
!3676 = !DILocation(line: 101, column: 13, scope: !3636, inlinedAt: !3675)
!3677 = !DILocation(line: 0, scope: !3516, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 91, column: 10, scope: !3627, inlinedAt: !3673)
!3679 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3678)
!3680 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3678)
!3681 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3678)
!3682 = !DILocation(line: 106, column: 3, scope: !3665)
!3683 = distinct !DISubprogram(name: "x2realloc", scope: !469, file: !469, line: 116, type: !3684, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3686)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!69, !69, !475}
!3686 = !{!3687, !3688}
!3687 = !DILocalVariable(name: "p", arg: 1, scope: !3683, file: !469, line: 116, type: !69)
!3688 = !DILocalVariable(name: "ps", arg: 2, scope: !3683, file: !469, line: 116, type: !475)
!3689 = !DILocation(line: 0, scope: !3683)
!3690 = !DILocation(line: 0, scope: !472, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 118, column: 10, scope: !3683)
!3692 = !DILocation(line: 178, column: 14, scope: !472, inlinedAt: !3691)
!3693 = !DILocation(line: 180, column: 9, scope: !3694, inlinedAt: !3691)
!3694 = distinct !DILexicalBlock(scope: !472, file: !469, line: 180, column: 7)
!3695 = !DILocation(line: 180, column: 7, scope: !472, inlinedAt: !3691)
!3696 = !DILocation(line: 182, column: 13, scope: !3697, inlinedAt: !3691)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !469, line: 182, column: 11)
!3698 = distinct !DILexicalBlock(scope: !3694, file: !469, line: 181, column: 5)
!3699 = !DILocation(line: 182, column: 11, scope: !3698, inlinedAt: !3691)
!3700 = !DILocation(line: 197, column: 11, scope: !3701, inlinedAt: !3691)
!3701 = distinct !DILexicalBlock(scope: !3702, file: !469, line: 197, column: 11)
!3702 = distinct !DILexicalBlock(scope: !3694, file: !469, line: 195, column: 5)
!3703 = !DILocation(line: 197, column: 11, scope: !3702, inlinedAt: !3691)
!3704 = !DILocation(line: 198, column: 9, scope: !3701, inlinedAt: !3691)
!3705 = !DILocation(line: 0, scope: !3508, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 201, column: 7, scope: !472, inlinedAt: !3691)
!3707 = !DILocation(line: 85, column: 25, scope: !3508, inlinedAt: !3706)
!3708 = !DILocation(line: 0, scope: !3516, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 85, column: 10, scope: !3508, inlinedAt: !3706)
!3710 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3709)
!3711 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3709)
!3712 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3709)
!3713 = !DILocation(line: 202, column: 7, scope: !472, inlinedAt: !3691)
!3714 = !DILocation(line: 118, column: 3, scope: !3683)
!3715 = !DILocation(line: 0, scope: !472)
!3716 = !DILocation(line: 178, column: 14, scope: !472)
!3717 = !DILocation(line: 180, column: 9, scope: !3694)
!3718 = !DILocation(line: 180, column: 7, scope: !472)
!3719 = !DILocation(line: 182, column: 13, scope: !3697)
!3720 = !DILocation(line: 182, column: 11, scope: !3698)
!3721 = !DILocation(line: 190, column: 30, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3697, file: !469, line: 183, column: 9)
!3723 = !DILocation(line: 191, column: 16, scope: !3722)
!3724 = !DILocation(line: 191, column: 13, scope: !3722)
!3725 = !DILocation(line: 192, column: 9, scope: !3722)
!3726 = !DILocation(line: 197, column: 11, scope: !3701)
!3727 = !DILocation(line: 197, column: 11, scope: !3702)
!3728 = !DILocation(line: 198, column: 9, scope: !3701)
!3729 = !DILocation(line: 0, scope: !3508, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 201, column: 7, scope: !472)
!3731 = !DILocation(line: 85, column: 25, scope: !3508, inlinedAt: !3730)
!3732 = !DILocation(line: 0, scope: !3516, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 85, column: 10, scope: !3508, inlinedAt: !3730)
!3734 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3733)
!3735 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3733)
!3736 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3733)
!3737 = !DILocation(line: 202, column: 7, scope: !472)
!3738 = !DILocation(line: 203, column: 3, scope: !472)
!3739 = !DILocation(line: 0, scope: !484)
!3740 = !DILocation(line: 230, column: 14, scope: !484)
!3741 = !DILocation(line: 238, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !484, file: !469, line: 238, column: 7)
!3743 = !DILocation(line: 238, column: 7, scope: !484)
!3744 = !DILocation(line: 240, column: 9, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !484, file: !469, line: 240, column: 7)
!3746 = !DILocation(line: 240, column: 18, scope: !3745)
!3747 = !DILocation(line: 253, column: 8, scope: !484)
!3748 = !DILocation(line: 258, column: 27, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !469, line: 257, column: 5)
!3750 = distinct !DILexicalBlock(scope: !484, file: !469, line: 256, column: 7)
!3751 = !DILocation(line: 259, column: 32, scope: !3749)
!3752 = !DILocation(line: 260, column: 5, scope: !3749)
!3753 = !DILocation(line: 262, column: 9, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !484, file: !469, line: 262, column: 7)
!3755 = !DILocation(line: 262, column: 7, scope: !484)
!3756 = !DILocation(line: 263, column: 9, scope: !3754)
!3757 = !DILocation(line: 263, column: 5, scope: !3754)
!3758 = !DILocation(line: 264, column: 9, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !484, file: !469, line: 264, column: 7)
!3760 = !DILocation(line: 264, column: 14, scope: !3759)
!3761 = !DILocation(line: 265, column: 7, scope: !3759)
!3762 = !DILocation(line: 265, column: 11, scope: !3759)
!3763 = !DILocation(line: 266, column: 11, scope: !3759)
!3764 = !DILocation(line: 266, column: 26, scope: !3759)
!3765 = !DILocation(line: 267, column: 14, scope: !3759)
!3766 = !DILocation(line: 264, column: 7, scope: !484)
!3767 = !DILocation(line: 268, column: 5, scope: !3759)
!3768 = !DILocation(line: 0, scope: !3582, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 269, column: 8, scope: !484)
!3770 = !DILocation(line: 0, scope: !3590, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 70, column: 25, scope: !3582, inlinedAt: !3769)
!3772 = !DILocation(line: 2059, column: 24, scope: !3590, inlinedAt: !3771)
!3773 = !DILocation(line: 2059, column: 10, scope: !3590, inlinedAt: !3771)
!3774 = !DILocation(line: 0, scope: !3516, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 70, column: 10, scope: !3582, inlinedAt: !3769)
!3776 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3775)
!3777 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3775)
!3778 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3775)
!3779 = !DILocation(line: 270, column: 7, scope: !484)
!3780 = !DILocation(line: 271, column: 3, scope: !484)
!3781 = distinct !DISubprogram(name: "xzalloc", scope: !469, file: !469, line: 279, type: !3536, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3782)
!3782 = !{!3783}
!3783 = !DILocalVariable(name: "s", arg: 1, scope: !3781, file: !469, line: 279, type: !72)
!3784 = !DILocation(line: 0, scope: !3781)
!3785 = !DILocalVariable(name: "n", arg: 1, scope: !3786, file: !469, line: 294, type: !72)
!3786 = distinct !DISubprogram(name: "xcalloc", scope: !469, file: !469, line: 294, type: !3650, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3787)
!3787 = !{!3785, !3788}
!3788 = !DILocalVariable(name: "s", arg: 2, scope: !3786, file: !469, line: 294, type: !72)
!3789 = !DILocation(line: 0, scope: !3786, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 281, column: 10, scope: !3781)
!3791 = !DILocation(line: 296, column: 25, scope: !3786, inlinedAt: !3790)
!3792 = !DILocation(line: 0, scope: !3516, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 296, column: 10, scope: !3786, inlinedAt: !3790)
!3794 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3793)
!3795 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3793)
!3796 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3793)
!3797 = !DILocation(line: 281, column: 3, scope: !3781)
!3798 = !DILocation(line: 0, scope: !3786)
!3799 = !DILocation(line: 296, column: 25, scope: !3786)
!3800 = !DILocation(line: 0, scope: !3516, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 296, column: 10, scope: !3786)
!3802 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3801)
!3803 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3801)
!3804 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3801)
!3805 = !DILocation(line: 296, column: 3, scope: !3786)
!3806 = distinct !DISubprogram(name: "xizalloc", scope: !469, file: !469, line: 285, type: !3549, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3807)
!3807 = !{!3808}
!3808 = !DILocalVariable(name: "s", arg: 1, scope: !3806, file: !469, line: 285, type: !197)
!3809 = !DILocation(line: 0, scope: !3806)
!3810 = !DILocalVariable(name: "n", arg: 1, scope: !3811, file: !469, line: 300, type: !197)
!3811 = distinct !DISubprogram(name: "xicalloc", scope: !469, file: !469, line: 300, type: !3666, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3812)
!3812 = !{!3810, !3813}
!3813 = !DILocalVariable(name: "s", arg: 2, scope: !3811, file: !469, line: 300, type: !197)
!3814 = !DILocation(line: 0, scope: !3811, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 287, column: 10, scope: !3806)
!3816 = !DILocalVariable(name: "n", arg: 1, scope: !3817, file: !3556, line: 77, type: !197)
!3817 = distinct !DISubprogram(name: "icalloc", scope: !3556, file: !3556, line: 77, type: !3666, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3818)
!3818 = !{!3816, !3819}
!3819 = !DILocalVariable(name: "s", arg: 2, scope: !3817, file: !3556, line: 77, type: !197)
!3820 = !DILocation(line: 0, scope: !3817, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 302, column: 25, scope: !3811, inlinedAt: !3815)
!3822 = !DILocation(line: 91, column: 10, scope: !3817, inlinedAt: !3821)
!3823 = !DILocation(line: 0, scope: !3516, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 302, column: 10, scope: !3811, inlinedAt: !3815)
!3825 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3824)
!3826 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3824)
!3827 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3824)
!3828 = !DILocation(line: 287, column: 3, scope: !3806)
!3829 = !DILocation(line: 0, scope: !3811)
!3830 = !DILocation(line: 0, scope: !3817, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 302, column: 25, scope: !3811)
!3832 = !DILocation(line: 91, column: 10, scope: !3817, inlinedAt: !3831)
!3833 = !DILocation(line: 0, scope: !3516, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 302, column: 10, scope: !3811)
!3835 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3834)
!3836 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3834)
!3837 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3834)
!3838 = !DILocation(line: 302, column: 3, scope: !3811)
!3839 = distinct !DISubprogram(name: "xmemdup", scope: !469, file: !469, line: 310, type: !3840, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3842)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!69, !767, !72}
!3842 = !{!3843, !3844}
!3843 = !DILocalVariable(name: "p", arg: 1, scope: !3839, file: !469, line: 310, type: !767)
!3844 = !DILocalVariable(name: "s", arg: 2, scope: !3839, file: !469, line: 310, type: !72)
!3845 = !DILocation(line: 0, scope: !3839)
!3846 = !DILocation(line: 0, scope: !3535, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 312, column: 18, scope: !3839)
!3848 = !DILocation(line: 49, column: 25, scope: !3535, inlinedAt: !3847)
!3849 = !DILocation(line: 0, scope: !3516, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 49, column: 10, scope: !3535, inlinedAt: !3847)
!3851 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3850)
!3852 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3850)
!3853 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3850)
!3854 = !DILocalVariable(name: "__dest", arg: 1, scope: !3855, file: !921, line: 26, type: !1281)
!3855 = distinct !DISubprogram(name: "memcpy", scope: !921, file: !921, line: 26, type: !1279, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3856)
!3856 = !{!3854, !3857, !3858}
!3857 = !DILocalVariable(name: "__src", arg: 2, scope: !3855, file: !921, line: 26, type: !766)
!3858 = !DILocalVariable(name: "__len", arg: 3, scope: !3855, file: !921, line: 26, type: !72)
!3859 = !DILocation(line: 0, scope: !3855, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 312, column: 10, scope: !3839)
!3861 = !DILocation(line: 29, column: 10, scope: !3855, inlinedAt: !3860)
!3862 = !DILocation(line: 312, column: 3, scope: !3839)
!3863 = distinct !DISubprogram(name: "ximemdup", scope: !469, file: !469, line: 316, type: !3864, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3866)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!69, !767, !197}
!3866 = !{!3867, !3868}
!3867 = !DILocalVariable(name: "p", arg: 1, scope: !3863, file: !469, line: 316, type: !767)
!3868 = !DILocalVariable(name: "s", arg: 2, scope: !3863, file: !469, line: 316, type: !197)
!3869 = !DILocation(line: 0, scope: !3863)
!3870 = !DILocation(line: 0, scope: !3548, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 318, column: 18, scope: !3863)
!3872 = !DILocation(line: 0, scope: !3555, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 55, column: 25, scope: !3548, inlinedAt: !3871)
!3874 = !DILocation(line: 57, column: 26, scope: !3555, inlinedAt: !3873)
!3875 = !DILocation(line: 0, scope: !3516, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 55, column: 10, scope: !3548, inlinedAt: !3871)
!3877 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3876)
!3878 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3876)
!3879 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3876)
!3880 = !DILocation(line: 0, scope: !3855, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 318, column: 10, scope: !3863)
!3882 = !DILocation(line: 29, column: 10, scope: !3855, inlinedAt: !3881)
!3883 = !DILocation(line: 318, column: 3, scope: !3863)
!3884 = distinct !DISubprogram(name: "ximemdup0", scope: !469, file: !469, line: 325, type: !3885, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3887)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!67, !767, !197}
!3887 = !{!3888, !3889, !3890}
!3888 = !DILocalVariable(name: "p", arg: 1, scope: !3884, file: !469, line: 325, type: !767)
!3889 = !DILocalVariable(name: "s", arg: 2, scope: !3884, file: !469, line: 325, type: !197)
!3890 = !DILocalVariable(name: "result", scope: !3884, file: !469, line: 327, type: !67)
!3891 = !DILocation(line: 0, scope: !3884)
!3892 = !DILocation(line: 327, column: 30, scope: !3884)
!3893 = !DILocation(line: 0, scope: !3548, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 327, column: 18, scope: !3884)
!3895 = !DILocation(line: 0, scope: !3555, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 55, column: 25, scope: !3548, inlinedAt: !3894)
!3897 = !DILocation(line: 57, column: 26, scope: !3555, inlinedAt: !3896)
!3898 = !DILocation(line: 0, scope: !3516, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 55, column: 10, scope: !3548, inlinedAt: !3894)
!3900 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3899)
!3901 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3899)
!3902 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3899)
!3903 = !DILocation(line: 328, column: 3, scope: !3884)
!3904 = !DILocation(line: 328, column: 13, scope: !3884)
!3905 = !DILocation(line: 0, scope: !3855, inlinedAt: !3906)
!3906 = distinct !DILocation(line: 329, column: 10, scope: !3884)
!3907 = !DILocation(line: 29, column: 10, scope: !3855, inlinedAt: !3906)
!3908 = !DILocation(line: 329, column: 3, scope: !3884)
!3909 = distinct !DISubprogram(name: "xstrdup", scope: !469, file: !469, line: 335, type: !761, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3910)
!3910 = !{!3911}
!3911 = !DILocalVariable(name: "string", arg: 1, scope: !3909, file: !469, line: 335, type: !75)
!3912 = !DILocation(line: 0, scope: !3909)
!3913 = !DILocation(line: 337, column: 27, scope: !3909)
!3914 = !DILocation(line: 337, column: 43, scope: !3909)
!3915 = !DILocation(line: 0, scope: !3839, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 337, column: 10, scope: !3909)
!3917 = !DILocation(line: 0, scope: !3535, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 312, column: 18, scope: !3839, inlinedAt: !3916)
!3919 = !DILocation(line: 49, column: 25, scope: !3535, inlinedAt: !3918)
!3920 = !DILocation(line: 0, scope: !3516, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 49, column: 10, scope: !3535, inlinedAt: !3918)
!3922 = !DILocation(line: 39, column: 8, scope: !3523, inlinedAt: !3921)
!3923 = !DILocation(line: 39, column: 7, scope: !3516, inlinedAt: !3921)
!3924 = !DILocation(line: 40, column: 5, scope: !3523, inlinedAt: !3921)
!3925 = !DILocation(line: 0, scope: !3855, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 312, column: 10, scope: !3839, inlinedAt: !3916)
!3927 = !DILocation(line: 29, column: 10, scope: !3855, inlinedAt: !3926)
!3928 = !DILocation(line: 337, column: 3, scope: !3909)
!3929 = distinct !DISubprogram(name: "xalloc_die", scope: !500, file: !500, line: 32, type: !303, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !499, retainedNodes: !3930)
!3930 = !{!3931}
!3931 = !DILocalVariable(name: "__errstatus", scope: !3932, file: !500, line: 34, type: !3933)
!3932 = distinct !DILexicalBlock(scope: !3929, file: !500, line: 34, column: 3)
!3933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!3934 = !DILocation(line: 34, column: 3, scope: !3932)
!3935 = !DILocation(line: 0, scope: !3932)
!3936 = !DILocation(line: 40, column: 3, scope: !3929)
!3937 = distinct !DISubprogram(name: "xnumtoumax", scope: !3938, file: !3938, line: 42, type: !3939, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !3941)
!3938 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!516, !75, !70, !516, !516, !75, !75, !70, !70}
!3941 = !{!3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3954, !3955, !3956}
!3942 = !DILocalVariable(name: "n_str", arg: 1, scope: !3937, file: !3938, line: 42, type: !75)
!3943 = !DILocalVariable(name: "base", arg: 2, scope: !3937, file: !3938, line: 42, type: !70)
!3944 = !DILocalVariable(name: "min", arg: 3, scope: !3937, file: !3938, line: 42, type: !516)
!3945 = !DILocalVariable(name: "max", arg: 4, scope: !3937, file: !3938, line: 42, type: !516)
!3946 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3937, file: !3938, line: 43, type: !75)
!3947 = !DILocalVariable(name: "err", arg: 6, scope: !3937, file: !3938, line: 43, type: !75)
!3948 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3937, file: !3938, line: 43, type: !70)
!3949 = !DILocalVariable(name: "flags", arg: 8, scope: !3937, file: !3938, line: 44, type: !70)
!3950 = !DILocalVariable(name: "tnum", scope: !3937, file: !3938, line: 46, type: !516)
!3951 = !DILocalVariable(name: "r", scope: !3937, file: !3938, line: 46, type: !516)
!3952 = !DILocalVariable(name: "s_err", scope: !3937, file: !3938, line: 47, type: !3953)
!3953 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !505, line: 43, baseType: !504)
!3954 = !DILocalVariable(name: "overflow_errno", scope: !3937, file: !3938, line: 50, type: !70)
!3955 = !DILocalVariable(name: "e", scope: !3937, file: !3938, line: 75, type: !70)
!3956 = !DILocalVariable(name: "__errstatus", scope: !3957, file: !3938, line: 80, type: !3933)
!3957 = distinct !DILexicalBlock(scope: !3958, file: !3938, line: 80, column: 5)
!3958 = distinct !DILexicalBlock(scope: !3937, file: !3938, line: 77, column: 7)
!3959 = !DILocation(line: 0, scope: !3937)
!3960 = !DILocation(line: 46, column: 3, scope: !3937)
!3961 = !DILocation(line: 47, column: 24, scope: !3937)
!3962 = !DILocation(line: 52, column: 13, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3937, file: !3938, line: 52, column: 7)
!3964 = !DILocation(line: 52, column: 7, scope: !3937)
!3965 = !DILocation(line: 54, column: 11, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !3938, line: 54, column: 11)
!3967 = distinct !DILexicalBlock(scope: !3963, file: !3938, line: 53, column: 5)
!3968 = !DILocation(line: 54, column: 16, scope: !3966)
!3969 = !DILocation(line: 54, column: 11, scope: !3967)
!3970 = !DILocation(line: 57, column: 34, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3966, file: !3938, line: 55, column: 9)
!3972 = !DILocation(line: 57, column: 28, scope: !3971)
!3973 = !DILocation(line: 58, column: 21, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3971, file: !3938, line: 58, column: 15)
!3975 = !DILocation(line: 0, scope: !3971)
!3976 = !DILocation(line: 61, column: 20, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3966, file: !3938, line: 61, column: 16)
!3978 = !DILocation(line: 61, column: 16, scope: !3966)
!3979 = !DILocation(line: 64, column: 34, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3977, file: !3938, line: 62, column: 9)
!3981 = !DILocation(line: 64, column: 28, scope: !3980)
!3982 = !DILocation(line: 65, column: 21, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3980, file: !3938, line: 65, column: 15)
!3984 = !DILocation(line: 0, scope: !3980)
!3985 = !DILocation(line: 75, column: 17, scope: !3937)
!3986 = !DILocation(line: 75, column: 11, scope: !3937)
!3987 = !DILocation(line: 77, column: 16, scope: !3958)
!3988 = !DILocation(line: 78, column: 10, scope: !3958)
!3989 = !DILocation(line: 79, column: 14, scope: !3958)
!3990 = !DILocation(line: 80, column: 5, scope: !3958)
!3991 = !DILocation(line: 0, scope: !3958)
!3992 = !DILocation(line: 82, column: 3, scope: !3937)
!3993 = !DILocation(line: 82, column: 9, scope: !3937)
!3994 = !DILocation(line: 84, column: 1, scope: !3937)
!3995 = !DILocation(line: 83, column: 3, scope: !3937)
!3996 = distinct !DISubprogram(name: "xdectoumax", scope: !3938, file: !3938, line: 92, type: !3997, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!516, !75, !516, !516, !75, !75, !70}
!3999 = !{!4000, !4001, !4002, !4003, !4004, !4005}
!4000 = !DILocalVariable(name: "n_str", arg: 1, scope: !3996, file: !3938, line: 92, type: !75)
!4001 = !DILocalVariable(name: "min", arg: 2, scope: !3996, file: !3938, line: 92, type: !516)
!4002 = !DILocalVariable(name: "max", arg: 3, scope: !3996, file: !3938, line: 92, type: !516)
!4003 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3996, file: !3938, line: 93, type: !75)
!4004 = !DILocalVariable(name: "err", arg: 5, scope: !3996, file: !3938, line: 93, type: !75)
!4005 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3996, file: !3938, line: 93, type: !70)
!4006 = !DILocation(line: 0, scope: !3996)
!4007 = !DILocation(line: 0, scope: !3937, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 95, column: 10, scope: !3996)
!4009 = !DILocation(line: 46, column: 3, scope: !3937, inlinedAt: !4008)
!4010 = !DILocation(line: 47, column: 24, scope: !3937, inlinedAt: !4008)
!4011 = !DILocation(line: 52, column: 13, scope: !3963, inlinedAt: !4008)
!4012 = !DILocation(line: 52, column: 7, scope: !3937, inlinedAt: !4008)
!4013 = !DILocation(line: 54, column: 11, scope: !3966, inlinedAt: !4008)
!4014 = !DILocation(line: 54, column: 16, scope: !3966, inlinedAt: !4008)
!4015 = !DILocation(line: 54, column: 11, scope: !3967, inlinedAt: !4008)
!4016 = !DILocation(line: 58, column: 21, scope: !3974, inlinedAt: !4008)
!4017 = !DILocation(line: 0, scope: !3971, inlinedAt: !4008)
!4018 = !DILocation(line: 61, column: 20, scope: !3977, inlinedAt: !4008)
!4019 = !DILocation(line: 61, column: 16, scope: !3966, inlinedAt: !4008)
!4020 = !DILocation(line: 65, column: 21, scope: !3983, inlinedAt: !4008)
!4021 = !DILocation(line: 0, scope: !3980, inlinedAt: !4008)
!4022 = !DILocation(line: 75, column: 17, scope: !3937, inlinedAt: !4008)
!4023 = !DILocation(line: 75, column: 11, scope: !3937, inlinedAt: !4008)
!4024 = !DILocation(line: 77, column: 16, scope: !3958, inlinedAt: !4008)
!4025 = !DILocation(line: 78, column: 10, scope: !3958, inlinedAt: !4008)
!4026 = !DILocation(line: 80, column: 5, scope: !3958, inlinedAt: !4008)
!4027 = !DILocation(line: 0, scope: !3958, inlinedAt: !4008)
!4028 = !DILocation(line: 82, column: 3, scope: !3937, inlinedAt: !4008)
!4029 = !DILocation(line: 82, column: 9, scope: !3937, inlinedAt: !4008)
!4030 = !DILocation(line: 84, column: 1, scope: !3937, inlinedAt: !4008)
!4031 = !DILocation(line: 95, column: 3, scope: !3996)
!4032 = distinct !DISubprogram(name: "xstrtoumax", scope: !4033, file: !4033, line: 71, type: !4034, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !4037)
!4033 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!3953, !75, !772, !70, !4036, !75}
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!4037 = !{!4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4048, !4049, !4050, !4051, !4054, !4055}
!4038 = !DILocalVariable(name: "nptr", arg: 1, scope: !4032, file: !4033, line: 71, type: !75)
!4039 = !DILocalVariable(name: "endptr", arg: 2, scope: !4032, file: !4033, line: 71, type: !772)
!4040 = !DILocalVariable(name: "base", arg: 3, scope: !4032, file: !4033, line: 71, type: !70)
!4041 = !DILocalVariable(name: "val", arg: 4, scope: !4032, file: !4033, line: 72, type: !4036)
!4042 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4032, file: !4033, line: 72, type: !75)
!4043 = !DILocalVariable(name: "t_ptr", scope: !4032, file: !4033, line: 74, type: !67)
!4044 = !DILocalVariable(name: "p", scope: !4032, file: !4033, line: 75, type: !772)
!4045 = !DILocalVariable(name: "q", scope: !4046, file: !4033, line: 79, type: !75)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !4033, line: 78, column: 5)
!4047 = distinct !DILexicalBlock(scope: !4032, file: !4033, line: 77, column: 7)
!4048 = !DILocalVariable(name: "ch", scope: !4046, file: !4033, line: 80, type: !77)
!4049 = !DILocalVariable(name: "tmp", scope: !4032, file: !4033, line: 91, type: !516)
!4050 = !DILocalVariable(name: "err", scope: !4032, file: !4033, line: 92, type: !3953)
!4051 = !DILocalVariable(name: "xbase", scope: !4052, file: !4033, line: 126, type: !70)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !4033, line: 119, column: 5)
!4053 = distinct !DILexicalBlock(scope: !4032, file: !4033, line: 118, column: 7)
!4054 = !DILocalVariable(name: "suffixes", scope: !4052, file: !4033, line: 127, type: !70)
!4055 = !DILocalVariable(name: "overflow", scope: !4052, file: !4033, line: 156, type: !3953)
!4056 = !DILocation(line: 0, scope: !4032)
!4057 = !DILocation(line: 74, column: 3, scope: !4032)
!4058 = !DILocation(line: 75, column: 14, scope: !4032)
!4059 = !DILocation(line: 0, scope: !4046)
!4060 = !DILocation(line: 81, column: 7, scope: !4046)
!4061 = !DILocation(line: 81, column: 14, scope: !4046)
!4062 = !DILocation(line: 82, column: 15, scope: !4046)
!4063 = distinct !{!4063, !4060, !4064, !616}
!4064 = !DILocation(line: 82, column: 17, scope: !4046)
!4065 = !DILocation(line: 83, column: 14, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4046, file: !4033, line: 83, column: 11)
!4067 = !DILocation(line: 83, column: 11, scope: !4046)
!4068 = !DILocation(line: 85, column: 14, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4066, file: !4033, line: 84, column: 9)
!4070 = !DILocation(line: 90, column: 3, scope: !4032)
!4071 = !DILocation(line: 90, column: 9, scope: !4032)
!4072 = !DILocation(line: 91, column: 20, scope: !4032)
!4073 = !DILocation(line: 94, column: 7, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4032, file: !4033, line: 94, column: 7)
!4075 = !DILocation(line: 94, column: 10, scope: !4074)
!4076 = !DILocation(line: 94, column: 7, scope: !4032)
!4077 = !DILocation(line: 98, column: 14, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4079, file: !4033, line: 98, column: 11)
!4079 = distinct !DILexicalBlock(scope: !4074, file: !4033, line: 95, column: 5)
!4080 = !DILocation(line: 98, column: 29, scope: !4078)
!4081 = !DILocation(line: 98, column: 32, scope: !4078)
!4082 = !DILocation(line: 98, column: 38, scope: !4078)
!4083 = !DILocation(line: 98, column: 41, scope: !4078)
!4084 = !DILocation(line: 98, column: 11, scope: !4079)
!4085 = !DILocation(line: 102, column: 12, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4074, file: !4033, line: 102, column: 12)
!4087 = !DILocation(line: 102, column: 12, scope: !4074)
!4088 = !DILocation(line: 107, column: 5, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4086, file: !4033, line: 103, column: 5)
!4090 = !DILocation(line: 112, column: 8, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4032, file: !4033, line: 112, column: 7)
!4092 = !DILocation(line: 112, column: 7, scope: !4032)
!4093 = !DILocation(line: 114, column: 12, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4091, file: !4033, line: 113, column: 5)
!4095 = !DILocation(line: 115, column: 7, scope: !4094)
!4096 = !DILocation(line: 118, column: 7, scope: !4053)
!4097 = !DILocation(line: 118, column: 11, scope: !4053)
!4098 = !DILocation(line: 118, column: 7, scope: !4032)
!4099 = !DILocation(line: 120, column: 12, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4052, file: !4033, line: 120, column: 11)
!4101 = !DILocation(line: 120, column: 11, scope: !4052)
!4102 = !DILocation(line: 122, column: 16, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4100, file: !4033, line: 121, column: 9)
!4104 = !DILocation(line: 123, column: 22, scope: !4103)
!4105 = !DILocation(line: 123, column: 11, scope: !4103)
!4106 = !DILocation(line: 0, scope: !4052)
!4107 = !DILocation(line: 128, column: 7, scope: !4052)
!4108 = !DILocation(line: 140, column: 15, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4110, file: !4033, line: 140, column: 15)
!4110 = distinct !DILexicalBlock(scope: !4052, file: !4033, line: 129, column: 9)
!4111 = !DILocation(line: 140, column: 15, scope: !4110)
!4112 = !DILocation(line: 141, column: 21, scope: !4109)
!4113 = !DILocation(line: 141, column: 13, scope: !4109)
!4114 = !DILocation(line: 144, column: 21, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !4033, line: 144, column: 21)
!4116 = distinct !DILexicalBlock(scope: !4109, file: !4033, line: 142, column: 15)
!4117 = !DILocation(line: 144, column: 29, scope: !4115)
!4118 = !DILocation(line: 144, column: 21, scope: !4116)
!4119 = !DILocation(line: 152, column: 17, scope: !4116)
!4120 = !DILocation(line: 157, column: 7, scope: !4052)
!4121 = !DILocalVariable(name: "err", scope: !4122, file: !4033, line: 64, type: !3953)
!4122 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4033, file: !4033, line: 62, type: !4123, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !4125)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!3953, !4036, !70, !70}
!4125 = !{!4126, !4127, !4128, !4121}
!4126 = !DILocalVariable(name: "x", arg: 1, scope: !4122, file: !4033, line: 62, type: !4036)
!4127 = !DILocalVariable(name: "base", arg: 2, scope: !4122, file: !4033, line: 62, type: !70)
!4128 = !DILocalVariable(name: "power", arg: 3, scope: !4122, file: !4033, line: 62, type: !70)
!4129 = !DILocation(line: 0, scope: !4122, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 219, column: 22, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4052, file: !4033, line: 158, column: 9)
!4132 = !DILocalVariable(name: "x", arg: 1, scope: !4133, file: !4033, line: 47, type: !4036)
!4133 = distinct !DISubprogram(name: "bkm_scale", scope: !4033, file: !4033, line: 47, type: !4134, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !4136)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!3953, !4036, !70}
!4136 = !{!4132, !4137, !4138}
!4137 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4133, file: !4033, line: 47, type: !70)
!4138 = !DILocalVariable(name: "scaled", scope: !4133, file: !4033, line: 49, type: !516)
!4139 = !DILocation(line: 0, scope: !4133, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 66, column: 12, scope: !4122, inlinedAt: !4130)
!4141 = !DILocation(line: 50, column: 7, scope: !4142, inlinedAt: !4140)
!4142 = distinct !DILexicalBlock(scope: !4133, file: !4033, line: 50, column: 7)
!4143 = !DILocation(line: 66, column: 9, scope: !4122, inlinedAt: !4130)
!4144 = !DILocation(line: 227, column: 11, scope: !4052)
!4145 = !DILocation(line: 0, scope: !4122, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 215, column: 22, scope: !4131)
!4147 = !DILocation(line: 0, scope: !4133, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 66, column: 12, scope: !4122, inlinedAt: !4146)
!4149 = !DILocation(line: 50, column: 7, scope: !4142, inlinedAt: !4148)
!4150 = !DILocation(line: 66, column: 9, scope: !4122, inlinedAt: !4146)
!4151 = !DILocation(line: 0, scope: !4122, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 202, column: 22, scope: !4131)
!4153 = !DILocation(line: 0, scope: !4133, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 66, column: 12, scope: !4122, inlinedAt: !4152)
!4155 = !DILocation(line: 50, column: 7, scope: !4142, inlinedAt: !4154)
!4156 = !DILocation(line: 66, column: 9, scope: !4122, inlinedAt: !4152)
!4157 = !DILocation(line: 0, scope: !4122, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 198, column: 22, scope: !4131)
!4159 = !DILocation(line: 0, scope: !4133, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 66, column: 12, scope: !4122, inlinedAt: !4158)
!4161 = !DILocation(line: 50, column: 7, scope: !4142, inlinedAt: !4160)
!4162 = !DILocation(line: 66, column: 9, scope: !4122, inlinedAt: !4158)
!4163 = !DILocation(line: 0, scope: !4122, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 194, column: 22, scope: !4131)
!4165 = !DILocation(line: 0, scope: !4133, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 66, column: 12, scope: !4122, inlinedAt: !4164)
!4167 = !DILocation(line: 50, column: 7, scope: !4142, inlinedAt: !4166)
!4168 = !DILocation(line: 66, column: 9, scope: !4122, inlinedAt: !4164)
!4169 = !DILocation(line: 0, scope: !4122, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 175, column: 22, scope: !4131)
!4171 = !DILocation(line: 0, scope: !4133, inlinedAt: !4172)
!4172 = distinct !DILocation(line: 66, column: 12, scope: !4122, inlinedAt: !4170)
!4173 = !DILocation(line: 50, column: 7, scope: !4142, inlinedAt: !4172)
!4174 = !DILocation(line: 66, column: 9, scope: !4122, inlinedAt: !4170)
!4175 = !DILocation(line: 0, scope: !4133, inlinedAt: !4176)
!4176 = distinct !DILocation(line: 160, column: 22, scope: !4131)
!4177 = !DILocation(line: 50, column: 7, scope: !4142, inlinedAt: !4176)
!4178 = !DILocation(line: 161, column: 11, scope: !4131)
!4179 = !DILocation(line: 0, scope: !4133, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 167, column: 22, scope: !4131)
!4181 = !DILocation(line: 50, column: 7, scope: !4142, inlinedAt: !4180)
!4182 = !DILocation(line: 168, column: 11, scope: !4131)
!4183 = !DILocation(line: 0, scope: !4122, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 180, column: 22, scope: !4131)
!4185 = !DILocation(line: 0, scope: !4133, inlinedAt: !4186)
!4186 = distinct !DILocation(line: 66, column: 12, scope: !4122, inlinedAt: !4184)
!4187 = !DILocation(line: 50, column: 7, scope: !4142, inlinedAt: !4186)
!4188 = !DILocation(line: 66, column: 9, scope: !4122, inlinedAt: !4184)
!4189 = !DILocation(line: 0, scope: !4122, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 185, column: 22, scope: !4131)
!4191 = !DILocation(line: 0, scope: !4133, inlinedAt: !4192)
!4192 = distinct !DILocation(line: 66, column: 12, scope: !4122, inlinedAt: !4190)
!4193 = !DILocation(line: 50, column: 7, scope: !4142, inlinedAt: !4192)
!4194 = !DILocation(line: 0, scope: !4122, inlinedAt: !4195)
!4195 = distinct !DILocation(line: 190, column: 22, scope: !4131)
!4196 = !DILocation(line: 0, scope: !4133, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 66, column: 12, scope: !4122, inlinedAt: !4195)
!4198 = !DILocation(line: 50, column: 7, scope: !4142, inlinedAt: !4197)
!4199 = !DILocation(line: 66, column: 9, scope: !4122, inlinedAt: !4195)
!4200 = !DILocation(line: 0, scope: !4122, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 207, column: 22, scope: !4131)
!4202 = !DILocation(line: 0, scope: !4133, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 66, column: 12, scope: !4122, inlinedAt: !4201)
!4204 = !DILocation(line: 50, column: 7, scope: !4142, inlinedAt: !4203)
!4205 = !DILocation(line: 66, column: 9, scope: !4122, inlinedAt: !4201)
!4206 = !DILocation(line: 0, scope: !4133, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 211, column: 22, scope: !4131)
!4208 = !DILocation(line: 50, column: 7, scope: !4142, inlinedAt: !4207)
!4209 = !DILocation(line: 212, column: 11, scope: !4131)
!4210 = !DILocation(line: 0, scope: !4131)
!4211 = !DILocation(line: 228, column: 10, scope: !4052)
!4212 = !DILocation(line: 229, column: 11, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4052, file: !4033, line: 229, column: 11)
!4214 = !DILocation(line: 229, column: 11, scope: !4052)
!4215 = !DILocation(line: 223, column: 16, scope: !4131)
!4216 = !DILocation(line: 224, column: 22, scope: !4131)
!4217 = !DILocation(line: 100, column: 11, scope: !4079)
!4218 = !DILocation(line: 92, column: 16, scope: !4032)
!4219 = !DILocation(line: 233, column: 8, scope: !4032)
!4220 = !DILocation(line: 234, column: 3, scope: !4032)
!4221 = !DILocation(line: 235, column: 1, scope: !4032)
!4222 = !DISubprogram(name: "strtoumax", scope: !4223, file: !4223, line: 301, type: !4224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!4223 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!516, !645, !4226, !70}
!4226 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !772)
!4227 = distinct !DISubprogram(name: "rpl_fopen", scope: !520, file: !520, line: 46, type: !4228, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !4264)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!4230, !75, !75}
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !4232)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !4233)
!4233 = !{!4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4232, file: !113, line: 51, baseType: !70, size: 32)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4232, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4232, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4232, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4232, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4232, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4232, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4232, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4232, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4232, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4232, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4232, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4232, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4232, file: !113, line: 70, baseType: !4248, size: 64, offset: 832)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4232, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4232, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4232, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4232, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4232, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4232, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4232, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4232, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4232, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4232, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4232, file: !113, line: 93, baseType: !4248, size: 64, offset: 1344)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4232, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4232, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4232, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4232, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!4264 = !{!4265, !4266, !4267, !4268, !4269, !4270, !4274, !4276, !4277, !4282, !4285, !4286}
!4265 = !DILocalVariable(name: "filename", arg: 1, scope: !4227, file: !520, line: 46, type: !75)
!4266 = !DILocalVariable(name: "mode", arg: 2, scope: !4227, file: !520, line: 46, type: !75)
!4267 = !DILocalVariable(name: "open_direction", scope: !4227, file: !520, line: 54, type: !70)
!4268 = !DILocalVariable(name: "open_flags", scope: !4227, file: !520, line: 55, type: !70)
!4269 = !DILocalVariable(name: "open_flags_gnu", scope: !4227, file: !520, line: 57, type: !81)
!4270 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4227, file: !520, line: 59, type: !4271)
!4271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 648, elements: !4272)
!4272 = !{!4273}
!4273 = !DISubrange(count: 81)
!4274 = !DILocalVariable(name: "p", scope: !4275, file: !520, line: 62, type: !75)
!4275 = distinct !DILexicalBlock(scope: !4227, file: !520, line: 61, column: 3)
!4276 = !DILocalVariable(name: "q", scope: !4275, file: !520, line: 64, type: !67)
!4277 = !DILocalVariable(name: "len", scope: !4278, file: !520, line: 128, type: !72)
!4278 = distinct !DILexicalBlock(scope: !4279, file: !520, line: 127, column: 9)
!4279 = distinct !DILexicalBlock(scope: !4280, file: !520, line: 68, column: 7)
!4280 = distinct !DILexicalBlock(scope: !4281, file: !520, line: 67, column: 5)
!4281 = distinct !DILexicalBlock(scope: !4275, file: !520, line: 67, column: 5)
!4282 = !DILocalVariable(name: "fd", scope: !4283, file: !520, line: 199, type: !70)
!4283 = distinct !DILexicalBlock(scope: !4284, file: !520, line: 198, column: 5)
!4284 = distinct !DILexicalBlock(scope: !4227, file: !520, line: 197, column: 7)
!4285 = !DILocalVariable(name: "fp", scope: !4283, file: !520, line: 204, type: !4230)
!4286 = !DILocalVariable(name: "saved_errno", scope: !4287, file: !520, line: 207, type: !70)
!4287 = distinct !DILexicalBlock(scope: !4288, file: !520, line: 206, column: 9)
!4288 = distinct !DILexicalBlock(scope: !4283, file: !520, line: 205, column: 11)
!4289 = !DILocation(line: 0, scope: !4227)
!4290 = !DILocation(line: 59, column: 3, scope: !4227)
!4291 = !DILocation(line: 59, column: 8, scope: !4227)
!4292 = !DILocation(line: 0, scope: !4275)
!4293 = !DILocation(line: 67, column: 5, scope: !4275)
!4294 = !DILocation(line: 64, column: 11, scope: !4275)
!4295 = !DILocation(line: 54, column: 7, scope: !4227)
!4296 = !DILocation(line: 67, column: 12, scope: !4280)
!4297 = !DILocation(line: 67, column: 5, scope: !4281)
!4298 = !DILocation(line: 74, column: 19, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !520, line: 74, column: 17)
!4300 = distinct !DILexicalBlock(scope: !4279, file: !520, line: 70, column: 11)
!4301 = !DILocation(line: 74, column: 17, scope: !4300)
!4302 = !DILocation(line: 75, column: 17, scope: !4299)
!4303 = !DILocation(line: 75, column: 20, scope: !4299)
!4304 = !DILocation(line: 75, column: 15, scope: !4299)
!4305 = !DILocation(line: 80, column: 24, scope: !4300)
!4306 = !DILocation(line: 82, column: 19, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4300, file: !520, line: 82, column: 17)
!4308 = !DILocation(line: 82, column: 17, scope: !4300)
!4309 = !DILocation(line: 83, column: 17, scope: !4307)
!4310 = !DILocation(line: 83, column: 20, scope: !4307)
!4311 = !DILocation(line: 83, column: 15, scope: !4307)
!4312 = !DILocation(line: 88, column: 24, scope: !4300)
!4313 = !DILocation(line: 90, column: 19, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4300, file: !520, line: 90, column: 17)
!4315 = !DILocation(line: 90, column: 17, scope: !4300)
!4316 = !DILocation(line: 91, column: 17, scope: !4314)
!4317 = !DILocation(line: 91, column: 20, scope: !4314)
!4318 = !DILocation(line: 91, column: 15, scope: !4314)
!4319 = !DILocation(line: 100, column: 19, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4300, file: !520, line: 100, column: 17)
!4321 = !DILocation(line: 100, column: 17, scope: !4300)
!4322 = !DILocation(line: 101, column: 17, scope: !4320)
!4323 = !DILocation(line: 101, column: 20, scope: !4320)
!4324 = !DILocation(line: 101, column: 15, scope: !4320)
!4325 = !DILocation(line: 107, column: 19, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4300, file: !520, line: 107, column: 17)
!4327 = !DILocation(line: 107, column: 17, scope: !4300)
!4328 = !DILocation(line: 108, column: 17, scope: !4326)
!4329 = !DILocation(line: 108, column: 20, scope: !4326)
!4330 = !DILocation(line: 108, column: 15, scope: !4326)
!4331 = !DILocation(line: 113, column: 24, scope: !4300)
!4332 = !DILocation(line: 115, column: 13, scope: !4300)
!4333 = !DILocation(line: 117, column: 24, scope: !4300)
!4334 = !DILocation(line: 119, column: 13, scope: !4300)
!4335 = !DILocation(line: 128, column: 24, scope: !4278)
!4336 = !DILocation(line: 0, scope: !4278)
!4337 = !DILocation(line: 129, column: 48, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4278, file: !520, line: 129, column: 15)
!4339 = !DILocation(line: 129, column: 19, scope: !4338)
!4340 = !DILocation(line: 129, column: 15, scope: !4278)
!4341 = !DILocalVariable(name: "__dest", arg: 1, scope: !4342, file: !921, line: 26, type: !1281)
!4342 = distinct !DISubprogram(name: "memcpy", scope: !921, file: !921, line: 26, type: !1279, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !4343)
!4343 = !{!4341, !4344, !4345}
!4344 = !DILocalVariable(name: "__src", arg: 2, scope: !4342, file: !921, line: 26, type: !766)
!4345 = !DILocalVariable(name: "__len", arg: 3, scope: !4342, file: !921, line: 26, type: !72)
!4346 = !DILocation(line: 0, scope: !4342, inlinedAt: !4347)
!4347 = distinct !DILocation(line: 131, column: 11, scope: !4278)
!4348 = !DILocation(line: 29, column: 10, scope: !4342, inlinedAt: !4347)
!4349 = !DILocation(line: 132, column: 13, scope: !4278)
!4350 = !DILocation(line: 135, column: 9, scope: !4279)
!4351 = !DILocation(line: 67, column: 25, scope: !4280)
!4352 = !DILocation(line: 67, column: 5, scope: !4280)
!4353 = distinct !{!4353, !4297, !4354, !616}
!4354 = !DILocation(line: 136, column: 7, scope: !4281)
!4355 = !DILocation(line: 138, column: 8, scope: !4275)
!4356 = !DILocation(line: 197, column: 7, scope: !4227)
!4357 = !DILocation(line: 199, column: 47, scope: !4283)
!4358 = !DILocation(line: 199, column: 16, scope: !4283)
!4359 = !DILocation(line: 0, scope: !4283)
!4360 = !DILocation(line: 201, column: 14, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4283, file: !520, line: 201, column: 11)
!4362 = !DILocation(line: 201, column: 11, scope: !4283)
!4363 = !DILocation(line: 204, column: 18, scope: !4283)
!4364 = !DILocation(line: 205, column: 14, scope: !4288)
!4365 = !DILocation(line: 205, column: 11, scope: !4283)
!4366 = !DILocation(line: 207, column: 29, scope: !4287)
!4367 = !DILocation(line: 0, scope: !4287)
!4368 = !DILocation(line: 208, column: 11, scope: !4287)
!4369 = !DILocation(line: 209, column: 17, scope: !4287)
!4370 = !DILocation(line: 210, column: 9, scope: !4287)
!4371 = !DILocalVariable(name: "filename", arg: 1, scope: !4372, file: !520, line: 30, type: !75)
!4372 = distinct !DISubprogram(name: "orig_fopen", scope: !520, file: !520, line: 30, type: !4228, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !4373)
!4373 = !{!4371, !4374}
!4374 = !DILocalVariable(name: "mode", arg: 2, scope: !4372, file: !520, line: 30, type: !75)
!4375 = !DILocation(line: 0, scope: !4372, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 219, column: 10, scope: !4227)
!4377 = !DILocation(line: 32, column: 10, scope: !4372, inlinedAt: !4376)
!4378 = !DILocation(line: 219, column: 3, scope: !4227)
!4379 = !DILocation(line: 220, column: 1, scope: !4227)
!4380 = !DISubprogram(name: "open", scope: !1591, file: !1591, line: 181, type: !4381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!70, !75, !70, null}
!4383 = !DISubprogram(name: "fdopen", scope: !276, file: !276, line: 293, type: !4384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!4230, !70, !75}
!4386 = !DISubprogram(name: "close", scope: !1795, file: !1795, line: 358, type: !1166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!4387 = distinct !DISubprogram(name: "close_stream", scope: !522, file: !522, line: 55, type: !4388, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !4424)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!70, !4390}
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !4392)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !4393)
!4393 = !{!4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4392, file: !113, line: 51, baseType: !70, size: 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4392, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4392, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4392, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4392, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4392, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4392, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4392, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4392, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4392, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4392, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4392, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4392, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4392, file: !113, line: 70, baseType: !4408, size: 64, offset: 832)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4392, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4392, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4392, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4392, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4392, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4392, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4392, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4392, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4392, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4392, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4392, file: !113, line: 93, baseType: !4408, size: 64, offset: 1344)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4392, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4392, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4392, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4392, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!4424 = !{!4425, !4426, !4428, !4429}
!4425 = !DILocalVariable(name: "stream", arg: 1, scope: !4387, file: !522, line: 55, type: !4390)
!4426 = !DILocalVariable(name: "some_pending", scope: !4387, file: !522, line: 57, type: !4427)
!4427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!4428 = !DILocalVariable(name: "prev_fail", scope: !4387, file: !522, line: 58, type: !4427)
!4429 = !DILocalVariable(name: "fclose_fail", scope: !4387, file: !522, line: 59, type: !4427)
!4430 = !DILocation(line: 0, scope: !4387)
!4431 = !DILocation(line: 57, column: 30, scope: !4387)
!4432 = !DILocalVariable(name: "__stream", arg: 1, scope: !4433, file: !902, line: 135, type: !4390)
!4433 = distinct !DISubprogram(name: "ferror_unlocked", scope: !902, file: !902, line: 135, type: !4388, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !4434)
!4434 = !{!4432}
!4435 = !DILocation(line: 0, scope: !4433, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 58, column: 27, scope: !4387)
!4437 = !DILocation(line: 137, column: 10, scope: !4433, inlinedAt: !4436)
!4438 = !DILocation(line: 58, column: 43, scope: !4387)
!4439 = !DILocation(line: 59, column: 29, scope: !4387)
!4440 = !DILocation(line: 59, column: 45, scope: !4387)
!4441 = !DILocation(line: 69, column: 17, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4387, file: !522, line: 69, column: 7)
!4443 = !DILocation(line: 57, column: 50, scope: !4387)
!4444 = !DILocation(line: 69, column: 33, scope: !4442)
!4445 = !DILocation(line: 69, column: 53, scope: !4442)
!4446 = !DILocation(line: 69, column: 59, scope: !4442)
!4447 = !DILocation(line: 69, column: 7, scope: !4387)
!4448 = !DILocation(line: 71, column: 11, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4442, file: !522, line: 70, column: 5)
!4450 = !DILocation(line: 72, column: 9, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4449, file: !522, line: 71, column: 11)
!4452 = !DILocation(line: 72, column: 15, scope: !4451)
!4453 = !DILocation(line: 77, column: 1, scope: !4387)
!4454 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !435, file: !435, line: 100, type: !4455, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !4458)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!72, !1368, !75, !72, !4457}
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!4458 = !{!4459, !4460, !4461, !4462, !4463}
!4459 = !DILocalVariable(name: "pwc", arg: 1, scope: !4454, file: !435, line: 100, type: !1368)
!4460 = !DILocalVariable(name: "s", arg: 2, scope: !4454, file: !435, line: 100, type: !75)
!4461 = !DILocalVariable(name: "n", arg: 3, scope: !4454, file: !435, line: 100, type: !72)
!4462 = !DILocalVariable(name: "ps", arg: 4, scope: !4454, file: !435, line: 100, type: !4457)
!4463 = !DILocalVariable(name: "ret", scope: !4454, file: !435, line: 130, type: !72)
!4464 = !DILocation(line: 0, scope: !4454)
!4465 = !DILocation(line: 105, column: 9, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4454, file: !435, line: 105, column: 7)
!4467 = !DILocation(line: 105, column: 7, scope: !4454)
!4468 = !DILocation(line: 117, column: 10, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4454, file: !435, line: 117, column: 7)
!4470 = !DILocation(line: 117, column: 7, scope: !4454)
!4471 = !DILocation(line: 130, column: 16, scope: !4454)
!4472 = !DILocation(line: 135, column: 11, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4454, file: !435, line: 135, column: 7)
!4474 = !DILocation(line: 135, column: 25, scope: !4473)
!4475 = !DILocation(line: 135, column: 30, scope: !4473)
!4476 = !DILocation(line: 135, column: 7, scope: !4454)
!4477 = !DILocalVariable(name: "ps", arg: 1, scope: !4478, file: !2030, line: 1135, type: !4457)
!4478 = distinct !DISubprogram(name: "mbszero", scope: !2030, file: !2030, line: 1135, type: !4479, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !4481)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{null, !4457}
!4481 = !{!4477}
!4482 = !DILocation(line: 0, scope: !4478, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 137, column: 5, scope: !4473)
!4484 = !DILocalVariable(name: "__dest", arg: 1, scope: !4485, file: !921, line: 57, type: !69)
!4485 = distinct !DISubprogram(name: "memset", scope: !921, file: !921, line: 57, type: !2039, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !4486)
!4486 = !{!4484, !4487, !4488}
!4487 = !DILocalVariable(name: "__ch", arg: 2, scope: !4485, file: !921, line: 57, type: !70)
!4488 = !DILocalVariable(name: "__len", arg: 3, scope: !4485, file: !921, line: 57, type: !72)
!4489 = !DILocation(line: 0, scope: !4485, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 1137, column: 3, scope: !4478, inlinedAt: !4483)
!4491 = !DILocation(line: 59, column: 10, scope: !4485, inlinedAt: !4490)
!4492 = !DILocation(line: 137, column: 5, scope: !4473)
!4493 = !DILocation(line: 138, column: 11, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4454, file: !435, line: 138, column: 7)
!4495 = !DILocation(line: 138, column: 7, scope: !4454)
!4496 = !DILocation(line: 139, column: 5, scope: !4494)
!4497 = !DILocation(line: 143, column: 26, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4454, file: !435, line: 143, column: 7)
!4499 = !DILocation(line: 143, column: 41, scope: !4498)
!4500 = !DILocation(line: 143, column: 7, scope: !4454)
!4501 = !DILocation(line: 145, column: 15, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !435, line: 145, column: 11)
!4503 = distinct !DILexicalBlock(scope: !4498, file: !435, line: 144, column: 5)
!4504 = !DILocation(line: 145, column: 11, scope: !4503)
!4505 = !DILocation(line: 146, column: 32, scope: !4502)
!4506 = !DILocation(line: 146, column: 16, scope: !4502)
!4507 = !DILocation(line: 146, column: 14, scope: !4502)
!4508 = !DILocation(line: 146, column: 9, scope: !4502)
!4509 = !DILocation(line: 286, column: 1, scope: !4454)
!4510 = !DISubprogram(name: "mbsinit", scope: !1391, file: !1391, line: 293, type: !4511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!70, !4513}
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!4515 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !524, file: !524, line: 27, type: !3500, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !4516)
!4516 = !{!4517, !4518, !4519, !4520}
!4517 = !DILocalVariable(name: "ptr", arg: 1, scope: !4515, file: !524, line: 27, type: !69)
!4518 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4515, file: !524, line: 27, type: !72)
!4519 = !DILocalVariable(name: "size", arg: 3, scope: !4515, file: !524, line: 27, type: !72)
!4520 = !DILocalVariable(name: "nbytes", scope: !4515, file: !524, line: 29, type: !72)
!4521 = !DILocation(line: 0, scope: !4515)
!4522 = !DILocation(line: 30, column: 7, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4515, file: !524, line: 30, column: 7)
!4524 = !DILocalVariable(name: "ptr", arg: 1, scope: !4525, file: !3591, line: 2057, type: !69)
!4525 = distinct !DISubprogram(name: "rpl_realloc", scope: !3591, file: !3591, line: 2057, type: !3583, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !4526)
!4526 = !{!4524, !4527}
!4527 = !DILocalVariable(name: "size", arg: 2, scope: !4525, file: !3591, line: 2057, type: !72)
!4528 = !DILocation(line: 0, scope: !4525, inlinedAt: !4529)
!4529 = distinct !DILocation(line: 37, column: 10, scope: !4515)
!4530 = !DILocation(line: 2059, column: 24, scope: !4525, inlinedAt: !4529)
!4531 = !DILocation(line: 2059, column: 10, scope: !4525, inlinedAt: !4529)
!4532 = !DILocation(line: 37, column: 3, scope: !4515)
!4533 = !DILocation(line: 32, column: 7, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4523, file: !524, line: 31, column: 5)
!4535 = !DILocation(line: 32, column: 13, scope: !4534)
!4536 = !DILocation(line: 33, column: 7, scope: !4534)
!4537 = !DILocation(line: 38, column: 1, scope: !4515)
!4538 = distinct !DISubprogram(name: "hard_locale", scope: !527, file: !527, line: 28, type: !4539, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !4541)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!81, !70}
!4541 = !{!4542, !4543}
!4542 = !DILocalVariable(name: "category", arg: 1, scope: !4538, file: !527, line: 28, type: !70)
!4543 = !DILocalVariable(name: "locale", scope: !4538, file: !527, line: 30, type: !4544)
!4544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2056, elements: !4545)
!4545 = !{!4546}
!4546 = !DISubrange(count: 257)
!4547 = !DILocation(line: 0, scope: !4538)
!4548 = !DILocation(line: 30, column: 3, scope: !4538)
!4549 = !DILocation(line: 30, column: 8, scope: !4538)
!4550 = !DILocation(line: 32, column: 7, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4538, file: !527, line: 32, column: 7)
!4552 = !DILocation(line: 32, column: 7, scope: !4538)
!4553 = !DILocalVariable(name: "__s1", arg: 1, scope: !4554, file: !600, line: 1359, type: !75)
!4554 = distinct !DISubprogram(name: "streq", scope: !600, file: !600, line: 1359, type: !601, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !4555)
!4555 = !{!4553, !4556}
!4556 = !DILocalVariable(name: "__s2", arg: 2, scope: !4554, file: !600, line: 1359, type: !75)
!4557 = !DILocation(line: 0, scope: !4554, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 35, column: 9, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4538, file: !527, line: 35, column: 7)
!4560 = !DILocation(line: 1361, column: 11, scope: !4554, inlinedAt: !4558)
!4561 = !DILocation(line: 1361, column: 10, scope: !4554, inlinedAt: !4558)
!4562 = !DILocation(line: 35, column: 29, scope: !4559)
!4563 = !DILocation(line: 0, scope: !4554, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 35, column: 32, scope: !4559)
!4565 = !DILocation(line: 1361, column: 11, scope: !4554, inlinedAt: !4564)
!4566 = !DILocation(line: 1361, column: 10, scope: !4554, inlinedAt: !4564)
!4567 = !DILocation(line: 35, column: 7, scope: !4538)
!4568 = !DILocation(line: 46, column: 3, scope: !4538)
!4569 = !DILocation(line: 47, column: 1, scope: !4538)
!4570 = distinct !DISubprogram(name: "setlocale_null_r", scope: !529, file: !529, line: 154, type: !4571, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !4573)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!70, !70, !67, !72}
!4573 = !{!4574, !4575, !4576}
!4574 = !DILocalVariable(name: "category", arg: 1, scope: !4570, file: !529, line: 154, type: !70)
!4575 = !DILocalVariable(name: "buf", arg: 2, scope: !4570, file: !529, line: 154, type: !67)
!4576 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4570, file: !529, line: 154, type: !72)
!4577 = !DILocation(line: 0, scope: !4570)
!4578 = !DILocation(line: 159, column: 10, scope: !4570)
!4579 = !DILocation(line: 159, column: 3, scope: !4570)
!4580 = distinct !DISubprogram(name: "setlocale_null", scope: !529, file: !529, line: 186, type: !4581, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !4583)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!75, !70}
!4583 = !{!4584}
!4584 = !DILocalVariable(name: "category", arg: 1, scope: !4580, file: !529, line: 186, type: !70)
!4585 = !DILocation(line: 0, scope: !4580)
!4586 = !DILocation(line: 189, column: 10, scope: !4580)
!4587 = !DILocation(line: 189, column: 3, scope: !4580)
!4588 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !531, file: !531, line: 35, type: !4581, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !4589)
!4589 = !{!4590, !4591}
!4590 = !DILocalVariable(name: "category", arg: 1, scope: !4588, file: !531, line: 35, type: !70)
!4591 = !DILocalVariable(name: "result", scope: !4588, file: !531, line: 37, type: !75)
!4592 = !DILocation(line: 0, scope: !4588)
!4593 = !DILocation(line: 37, column: 24, scope: !4588)
!4594 = !DILocation(line: 62, column: 3, scope: !4588)
!4595 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !531, file: !531, line: 66, type: !4571, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !4596)
!4596 = !{!4597, !4598, !4599, !4600, !4601}
!4597 = !DILocalVariable(name: "category", arg: 1, scope: !4595, file: !531, line: 66, type: !70)
!4598 = !DILocalVariable(name: "buf", arg: 2, scope: !4595, file: !531, line: 66, type: !67)
!4599 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4595, file: !531, line: 66, type: !72)
!4600 = !DILocalVariable(name: "result", scope: !4595, file: !531, line: 111, type: !75)
!4601 = !DILocalVariable(name: "length", scope: !4602, file: !531, line: 125, type: !72)
!4602 = distinct !DILexicalBlock(scope: !4603, file: !531, line: 124, column: 5)
!4603 = distinct !DILexicalBlock(scope: !4595, file: !531, line: 113, column: 7)
!4604 = !DILocation(line: 0, scope: !4595)
!4605 = !DILocation(line: 0, scope: !4588, inlinedAt: !4606)
!4606 = distinct !DILocation(line: 111, column: 24, scope: !4595)
!4607 = !DILocation(line: 37, column: 24, scope: !4588, inlinedAt: !4606)
!4608 = !DILocation(line: 113, column: 14, scope: !4603)
!4609 = !DILocation(line: 113, column: 7, scope: !4595)
!4610 = !DILocation(line: 116, column: 19, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4612, file: !531, line: 116, column: 11)
!4612 = distinct !DILexicalBlock(scope: !4603, file: !531, line: 114, column: 5)
!4613 = !DILocation(line: 116, column: 11, scope: !4612)
!4614 = !DILocation(line: 120, column: 16, scope: !4611)
!4615 = !DILocation(line: 120, column: 9, scope: !4611)
!4616 = !DILocation(line: 125, column: 23, scope: !4602)
!4617 = !DILocation(line: 0, scope: !4602)
!4618 = !DILocation(line: 126, column: 18, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4602, file: !531, line: 126, column: 11)
!4620 = !DILocation(line: 126, column: 11, scope: !4602)
!4621 = !DILocation(line: 128, column: 39, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4619, file: !531, line: 127, column: 9)
!4623 = !DILocalVariable(name: "__dest", arg: 1, scope: !4624, file: !921, line: 26, type: !1281)
!4624 = distinct !DISubprogram(name: "memcpy", scope: !921, file: !921, line: 26, type: !1279, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !4625)
!4625 = !{!4623, !4626, !4627}
!4626 = !DILocalVariable(name: "__src", arg: 2, scope: !4624, file: !921, line: 26, type: !766)
!4627 = !DILocalVariable(name: "__len", arg: 3, scope: !4624, file: !921, line: 26, type: !72)
!4628 = !DILocation(line: 0, scope: !4624, inlinedAt: !4629)
!4629 = distinct !DILocation(line: 128, column: 11, scope: !4622)
!4630 = !DILocation(line: 29, column: 10, scope: !4624, inlinedAt: !4629)
!4631 = !DILocation(line: 129, column: 11, scope: !4622)
!4632 = !DILocation(line: 133, column: 23, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4634, file: !531, line: 133, column: 15)
!4634 = distinct !DILexicalBlock(scope: !4619, file: !531, line: 132, column: 9)
!4635 = !DILocation(line: 133, column: 15, scope: !4634)
!4636 = !DILocation(line: 138, column: 44, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4633, file: !531, line: 134, column: 13)
!4638 = !DILocation(line: 0, scope: !4624, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 138, column: 15, scope: !4637)
!4640 = !DILocation(line: 29, column: 10, scope: !4624, inlinedAt: !4639)
!4641 = !DILocation(line: 139, column: 15, scope: !4637)
!4642 = !DILocation(line: 139, column: 32, scope: !4637)
!4643 = !DILocation(line: 140, column: 13, scope: !4637)
!4644 = !DILocation(line: 0, scope: !4603)
!4645 = !DILocation(line: 145, column: 1, scope: !4595)
