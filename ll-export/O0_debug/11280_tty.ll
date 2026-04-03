; ModuleID = 'src/tty.bc'
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
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Print the file name of the terminal connected to standard input.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"  -s, --silent, --quiet\0A         print nothing, only return an exit status\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@silent = internal global i8 0, align 1, !dbg !34
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external global i32, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"ttyname error\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"not a tty\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !37
@.str.16 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.38 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.46 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.47 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.49 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0), align 8, !dbg !58
@file_name = internal global i8* null, align 8, !dbg !63
@ignore_EPIPE = internal global i8 0, align 1, !dbg !68
@.str.58 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.59 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.60 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.61 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !70
@stderr = external global %struct._IO_FILE*, align 8
@.str.62 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !99
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !76
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !95
@.str.1.68 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.69 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.70 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !97
@.str.4.63 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.64 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.65 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !104
@.str.79 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.80 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !110
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
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.86, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.92, i32 0, i32 0), i8* null], align 8, !dbg !121
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !150
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !168
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !183
@nslots = internal global i32 1, align 4, !dbg !190
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !170
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !192
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !156
@.str.10.93 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.94 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.96 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !175
@.str.103 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.104 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.105 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.106 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.107 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.108 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.109 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.110 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.111 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.112 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.113 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.114 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.115 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.116 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.117 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.118 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.119 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.124 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.125 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.126 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.127 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.128 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.129 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.130 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !198
@exit_failure = dso_local global i32 1, align 4, !dbg !206
@.str.143 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.141 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.142 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.164 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !212
@.str.175 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.176 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !304 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !307, metadata !DIExpression()), !dbg !308
  %3 = load i32, i32* %2, align 4, !dbg !309
  %4 = icmp ne i32 %3, 0, !dbg !311
  br i1 %4, label %5, label %12, !dbg !312

5:                                                ; preds = %1
  br label %6, !dbg !313

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !314
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !314
  %9 = load i8*, i8** @program_name, align 8, !dbg !314
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !314
  br label %11, !dbg !314

11:                                               ; preds = %6
  br label %22, !dbg !314

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !316
  %14 = load i8*, i8** @program_name, align 8, !dbg !318
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !319
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !320
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !320
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !320
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !321
  call void @oputs_(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !321
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !322
  call void @oputs_(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !322
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !323
  call void @oputs_(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !323
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !324
  br label %22

22:                                               ; preds = %12, %11
  %23 = load i32, i32* %2, align 4, !dbg !325
  call void @exit(i32 noundef %23) #19, !dbg !326
  unreachable, !dbg !326
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !39 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !327, metadata !DIExpression()), !dbg !328
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !329, metadata !DIExpression()), !dbg !330
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !331
  %15 = icmp eq i32 %14, -1, !dbg !333
  br i1 %15, label %16, label %30, !dbg !334

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !335, metadata !DIExpression()), !dbg !337
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #18, !dbg !338
  store i8* %17, i8** %5, align 8, !dbg !337
  %18 = load i8*, i8** %5, align 8, !dbg !339
  %19 = icmp ne i8* %18, null, !dbg !339
  br i1 %19, label %20, label %27, !dbg !340

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !341
  %22 = load i8, i8* %21, align 1, !dbg !342
  %23 = icmp ne i8 %22, 0, !dbg !342
  br i1 %23, label %24, label %27, !dbg !343

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !344
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)), !dbg !345
  br label %27, !dbg !343

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !343
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !346
  br label %30, !dbg !347

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !348
  %32 = icmp ne i32 %31, 0, !dbg !348
  br i1 %32, label %33, label %37, !dbg !350

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !351
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !351
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !351
  br label %274, !dbg !353

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !354, metadata !DIExpression()), !dbg !355
  store i8 1, i8* %6, align 1, !dbg !355
  call void @llvm.dbg.declare(metadata i8** %7, metadata !356, metadata !DIExpression()), !dbg !357
  %38 = load i8*, i8** %4, align 8, !dbg !358
  %39 = load i8*, i8** %4, align 8, !dbg !359
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)) #20, !dbg !360
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !361
  store i8* %41, i8** %7, align 8, !dbg !357
  call void @llvm.dbg.declare(metadata i8** %8, metadata !362, metadata !DIExpression()), !dbg !363
  %42 = load i8*, i8** %4, align 8, !dbg !364
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !365
  store i8* %43, i8** %8, align 8, !dbg !363
  %44 = load i8*, i8** %8, align 8, !dbg !366
  %45 = icmp ne i8* %44, null, !dbg !366
  br i1 %45, label %48, label %46, !dbg !368

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !369
  store i8* %47, i8** %8, align 8, !dbg !371
  store i8 0, i8* %6, align 1, !dbg !372
  br label %89, !dbg !373

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !374
  %50 = load i8*, i8** %7, align 8, !dbg !376
  %51 = icmp ne i8* %49, %50, !dbg !377
  br i1 %51, label %52, label %88, !dbg !378

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !379, metadata !DIExpression()), !dbg !381
  %53 = load i8*, i8** %7, align 8, !dbg !382
  store i8* %53, i8** %9, align 8, !dbg !381
  call void @llvm.dbg.declare(metadata i64* %10, metadata !383, metadata !DIExpression()), !dbg !384
  store i64 0, i64* %10, align 8, !dbg !384
  br label %54, !dbg !385

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !386
  %56 = load i8*, i8** %8, align 8, !dbg !387
  %57 = icmp ult i8* %55, %56, !dbg !388
  br i1 %57, label %58, label %61, !dbg !389

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !390
  %60 = icmp ult i64 %59, 2, !dbg !391
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !392
  br i1 %62, label %63, label %82, !dbg !385

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !393
  %65 = load i16*, i16** %64, align 8, !dbg !393
  %66 = load i8*, i8** %9, align 8, !dbg !393
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !393
  store i8* %67, i8** %9, align 8, !dbg !393
  %68 = load i8, i8* %66, align 1, !dbg !393
  %69 = zext i8 %68 to i32, !dbg !393
  %70 = sext i32 %69 to i64, !dbg !393
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !393
  %72 = load i16, i16* %71, align 2, !dbg !393
  %73 = zext i16 %72 to i32, !dbg !393
  %74 = and i32 %73, 8192, !dbg !393
  %75 = icmp ne i32 %74, 0, !dbg !394
  %76 = xor i1 %75, true, !dbg !394
  %77 = xor i1 %76, true, !dbg !395
  %78 = zext i1 %77 to i32, !dbg !395
  %79 = sext i32 %78 to i64, !dbg !395
  %80 = load i64, i64* %10, align 8, !dbg !396
  %81 = add i64 %80, %79, !dbg !396
  store i64 %81, i64* %10, align 8, !dbg !396
  br label %54, !dbg !385, !llvm.loop !397

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !399
  %84 = icmp eq i64 %83, 2, !dbg !401
  br i1 %84, label %85, label %87, !dbg !402

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !403
  store i8* %86, i8** %8, align 8, !dbg !405
  store i8 0, i8* %6, align 1, !dbg !406
  br label %87, !dbg !407

87:                                               ; preds = %85, %82
  br label %88, !dbg !408

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !409, metadata !DIExpression()), !dbg !410
  %90 = load i8*, i8** %8, align 8, !dbg !411
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #20, !dbg !412
  store i64 %91, i64* %11, align 8, !dbg !410
  call void @llvm.dbg.declare(metadata i8** %12, metadata !413, metadata !DIExpression()), !dbg !414
  %92 = load i8*, i8** %8, align 8, !dbg !415
  %93 = load i64, i64* %11, align 8, !dbg !416
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !417
  store i8* %94, i8** %12, align 8, !dbg !414
  br label %95, !dbg !418

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !419
  %97 = load i8, i8* %96, align 1, !dbg !420
  %98 = zext i8 %97 to i32, !dbg !420
  %99 = icmp ne i32 %98, 0, !dbg !420
  br i1 %99, label %100, label %105, !dbg !421

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !422
  %102 = load i8, i8* %101, align 1, !dbg !423
  %103 = zext i8 %102 to i32, !dbg !423
  %104 = icmp ne i32 %103, 10, !dbg !424
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !425
  br i1 %106, label %107, label %164, !dbg !418

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !426
  %109 = load i8, i8* %108, align 1, !dbg !429
  %110 = zext i8 %109 to i32, !dbg !429
  %111 = icmp eq i32 %110, 45, !dbg !430
  br i1 %111, label %112, label %119, !dbg !431

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !432
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !433
  %115 = load i8, i8* %114, align 1, !dbg !434
  %116 = zext i8 %115 to i32, !dbg !434
  %117 = icmp eq i32 %116, 45, !dbg !435
  br i1 %117, label %118, label %119, !dbg !436

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !437
  br label %119, !dbg !438

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !439
  %121 = load i16*, i16** %120, align 8, !dbg !439
  %122 = load i8*, i8** %12, align 8, !dbg !439
  %123 = load i8, i8* %122, align 1, !dbg !439
  %124 = zext i8 %123 to i32, !dbg !439
  %125 = sext i32 %124 to i64, !dbg !439
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !439
  %127 = load i16, i16* %126, align 2, !dbg !439
  %128 = zext i16 %127 to i32, !dbg !439
  %129 = and i32 %128, 8192, !dbg !439
  %130 = icmp ne i32 %129, 0, !dbg !439
  br i1 %130, label %131, label %161, !dbg !441

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !442
  %133 = load i8, i8* %132, align 1, !dbg !445
  %134 = zext i8 %133 to i32, !dbg !445
  %135 = icmp eq i32 %134, 9, !dbg !446
  br i1 %135, label %149, label %136, !dbg !447

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !448
  %138 = load i16*, i16** %137, align 8, !dbg !448
  %139 = load i8*, i8** %12, align 8, !dbg !448
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !448
  %141 = load i8, i8* %140, align 1, !dbg !448
  %142 = zext i8 %141 to i32, !dbg !448
  %143 = sext i32 %142 to i64, !dbg !448
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !448
  %145 = load i16, i16* %144, align 2, !dbg !448
  %146 = zext i16 %145 to i32, !dbg !448
  %147 = and i32 %146, 8192, !dbg !448
  %148 = icmp ne i32 %147, 0, !dbg !448
  br i1 %148, label %149, label %150, !dbg !449

149:                                              ; preds = %136, %131
  br label %164, !dbg !450

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !451
  %152 = trunc i8 %151 to i1, !dbg !451
  br i1 %152, label %160, label %153, !dbg !453

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !454
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !455
  %156 = load i8, i8* %155, align 1, !dbg !456
  %157 = zext i8 %156 to i32, !dbg !456
  %158 = icmp ne i32 %157, 45, !dbg !457
  br i1 %158, label %159, label %160, !dbg !458

159:                                              ; preds = %153
  br label %164, !dbg !459

160:                                              ; preds = %153, %150
  br label %161, !dbg !460

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !461
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !461
  store i8* %163, i8** %12, align 8, !dbg !461
  br label %95, !dbg !418, !llvm.loop !462

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !464
  %166 = load i8*, i8** %7, align 8, !dbg !464
  %167 = load i8*, i8** %4, align 8, !dbg !464
  %168 = ptrtoint i8* %166 to i64, !dbg !464
  %169 = ptrtoint i8* %167 to i64, !dbg !464
  %170 = sub i64 %168, %169, !dbg !464
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !464
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !464
  call void @llvm.dbg.declare(metadata i8** %13, metadata !465, metadata !DIExpression()), !dbg !466
  %173 = load i8*, i8** %3, align 8, !dbg !467
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)), !dbg !468
  br i1 %174, label %175, label %176, !dbg !468

175:                                              ; preds = %164
  br label %232, !dbg !468

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !469
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)), !dbg !470
  br i1 %178, label %179, label %180, !dbg !470

179:                                              ; preds = %176
  br label %230, !dbg !470

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !471
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)), !dbg !472
  br i1 %182, label %183, label %184, !dbg !472

183:                                              ; preds = %180
  br label %228, !dbg !472

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !473
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)), !dbg !474
  br i1 %186, label %187, label %188, !dbg !474

187:                                              ; preds = %184
  br label %226, !dbg !474

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !475
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)), !dbg !476
  br i1 %190, label %191, label %192, !dbg !476

191:                                              ; preds = %188
  br label %224, !dbg !476

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !477
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)), !dbg !478
  br i1 %194, label %195, label %196, !dbg !478

195:                                              ; preds = %192
  br label %222, !dbg !478

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !479
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)), !dbg !480
  br i1 %198, label %199, label %200, !dbg !480

199:                                              ; preds = %196
  br label %220, !dbg !480

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !481
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)), !dbg !482
  br i1 %202, label %203, label %204, !dbg !482

203:                                              ; preds = %200
  br label %218, !dbg !482

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !483
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)), !dbg !484
  br i1 %206, label %207, label %208, !dbg !484

207:                                              ; preds = %204
  br label %216, !dbg !484

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !485
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)), !dbg !486
  br i1 %210, label %211, label %212, !dbg !486

211:                                              ; preds = %208
  br label %214, !dbg !486

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !487
  br label %214, !dbg !486

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !486
  br label %216, !dbg !484

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !484
  br label %218, !dbg !482

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !482
  br label %220, !dbg !480

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !480
  br label %222, !dbg !478

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !478
  br label %224, !dbg !476

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !476
  br label %226, !dbg !474

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !474
  br label %228, !dbg !472

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !472
  br label %230, !dbg !470

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !470
  br label %232, !dbg !468

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !468
  store i8* %233, i8** %13, align 8, !dbg !466
  %234 = load i8*, i8** %8, align 8, !dbg !488
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i64 noundef 6) #20, !dbg !488
  %236 = icmp eq i32 %235, 0, !dbg !488
  br i1 %236, label %241, label %237, !dbg !490

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !491
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i64 noundef 9) #20, !dbg !491
  %240 = icmp eq i32 %239, 0, !dbg !491
  br i1 %240, label %241, label %248, !dbg !492

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !493
  %243 = load i8*, i8** %13, align 8, !dbg !495
  %244 = load i64, i64* %11, align 8, !dbg !496
  %245 = trunc i64 %244 to i32, !dbg !497
  %246 = load i8*, i8** %8, align 8, !dbg !498
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !499
  br label %254, !dbg !500

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !501
  %250 = load i64, i64* %11, align 8, !dbg !503
  %251 = trunc i64 %250 to i32, !dbg !504
  %252 = load i8*, i8** %8, align 8, !dbg !505
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.38, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !506
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !507
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !507
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !508
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !508
  %259 = load i8*, i8** %7, align 8, !dbg !509
  %260 = load i8*, i8** %12, align 8, !dbg !509
  %261 = load i8*, i8** %7, align 8, !dbg !509
  %262 = ptrtoint i8* %260 to i64, !dbg !509
  %263 = ptrtoint i8* %261 to i64, !dbg !509
  %264 = sub i64 %262, %263, !dbg !509
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !509
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !509
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !510
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !510
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !511
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !511
  %271 = load i8*, i8** %12, align 8, !dbg !512
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !512
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !512
  br label %274, !dbg !513

274:                                              ; preds = %254, %33
  ret void, !dbg !513
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !514 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !517, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !519, metadata !DIExpression()), !dbg !528
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !528
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !528
  call void @llvm.dbg.declare(metadata i8** %4, metadata !529, metadata !DIExpression()), !dbg !530
  %9 = load i8*, i8** %2, align 8, !dbg !531
  store i8* %9, i8** %4, align 8, !dbg !530
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !532, metadata !DIExpression()), !dbg !534
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !535
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !534
  br label %11, !dbg !536

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !537
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !538
  %14 = load i8*, i8** %13, align 8, !dbg !538
  %15 = icmp ne i8* %14, null, !dbg !537
  br i1 %15, label %16, label %23, !dbg !539

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !540
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !541
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !542
  %20 = load i8*, i8** %19, align 8, !dbg !542
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !543
  %22 = xor i1 %21, true, !dbg !544
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !545
  br i1 %24, label %25, label %28, !dbg !536

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !546
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !546
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !546
  br label %11, !dbg !536, !llvm.loop !547

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !548
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !550
  %31 = load i8*, i8** %30, align 8, !dbg !550
  %32 = icmp ne i8* %31, null, !dbg !548
  br i1 %32, label %33, label %37, !dbg !551

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !552
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !553
  %36 = load i8*, i8** %35, align 8, !dbg !553
  store i8* %36, i8** %4, align 8, !dbg !554
  br label %37, !dbg !555

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !556
  call void @llvm.dbg.declare(metadata i8** %6, metadata !557, metadata !DIExpression()), !dbg !558
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !559
  store i8* %38, i8** %6, align 8, !dbg !558
  %39 = load i8*, i8** %6, align 8, !dbg !560
  %40 = icmp ne i8* %39, null, !dbg !560
  br i1 %40, label %41, label %49, !dbg !562

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !563
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i64 noundef 3) #20, !dbg !563
  %44 = icmp ne i32 %43, 0, !dbg !563
  br i1 %44, label %45, label %49, !dbg !564

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.47, i64 0, i64 0)) #18, !dbg !565
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !565
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !565
  br label %49, !dbg !567

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !568, metadata !DIExpression()), !dbg !569
  %50 = load i8*, i8** %2, align 8, !dbg !570
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)), !dbg !571
  br i1 %51, label %52, label %53, !dbg !571

52:                                               ; preds = %49
  br label %55, !dbg !571

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !572
  br label %55, !dbg !571

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !571
  store i8* %56, i8** %7, align 8, !dbg !569
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0)) #18, !dbg !573
  %58 = load i8*, i8** %7, align 8, !dbg !574
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* noundef %58), !dbg !575
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.49, i64 0, i64 0)) #18, !dbg !576
  %61 = load i8*, i8** %4, align 8, !dbg !577
  %62 = load i8*, i8** %4, align 8, !dbg !578
  %63 = load i8*, i8** %2, align 8, !dbg !579
  %64 = icmp eq i8* %62, %63, !dbg !580
  %65 = zext i1 %64 to i64, !dbg !578
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !578
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !581
  ret void, !dbg !582
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !583 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !587, metadata !DIExpression()), !dbg !588
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !589, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.declare(metadata i32* %6, metadata !591, metadata !DIExpression()), !dbg !592
  %10 = load i8**, i8*** %5, align 8, !dbg !593
  %11 = getelementptr inbounds i8*, i8** %10, i64 0, !dbg !593
  %12 = load i8*, i8** %11, align 8, !dbg !593
  call void @set_program_name(i8* noundef %12), !dbg !594
  %13 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !595
  %14 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !596
  %15 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !597
  call void @initialize_exit_failure(i32 noundef 3), !dbg !598
  %16 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !599
  br label %17, !dbg !600

17:                                               ; preds = %31, %2
  %18 = load i32, i32* %4, align 4, !dbg !601
  %19 = load i8**, i8*** %5, align 8, !dbg !602
  %20 = call i32 @getopt_long(i32 noundef %18, i8** noundef %19, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18, !dbg !603
  store i32 %20, i32* %6, align 4, !dbg !604
  %21 = icmp ne i32 %20, -1, !dbg !605
  br i1 %21, label %22, label %32, !dbg !600

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4, !dbg !606
  switch i32 %23, label %30 [
    i32 115, label %24
    i32 -2, label %25
    i32 -3, label %26
  ], !dbg !608

24:                                               ; preds = %22
  store i8 1, i8* @silent, align 1, !dbg !609
  br label %31, !dbg !611

25:                                               ; preds = %22
  call void @usage(i32 noundef 0) #22, !dbg !612
  unreachable, !dbg !612

26:                                               ; preds = %22
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !613
  %28 = load i8*, i8** @Version, align 8, !dbg !613
  %29 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)), !dbg !613
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef %28, i8* noundef %29, i8* noundef null), !dbg !613
  call void @exit(i32 noundef 0) #19, !dbg !613
  unreachable, !dbg !613

30:                                               ; preds = %22
  call void @usage(i32 noundef 2) #22, !dbg !614
  unreachable, !dbg !614

31:                                               ; preds = %24
  br label %17, !dbg !600, !llvm.loop !615

32:                                               ; preds = %17
  %33 = load i32, i32* @optind, align 4, !dbg !617
  %34 = load i32, i32* %4, align 4, !dbg !619
  %35 = icmp slt i32 %33, %34, !dbg !620
  br i1 %35, label %36, label %44, !dbg !621

36:                                               ; preds = %32
  %37 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !622
  %38 = load i8**, i8*** %5, align 8, !dbg !622
  %39 = load i32, i32* @optind, align 4, !dbg !622
  %40 = sext i32 %39 to i64, !dbg !622
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40, !dbg !622
  %42 = load i8*, i8** %41, align 8, !dbg !622
  %43 = call i8* @quote(i8* noundef %42), !dbg !622
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %37, i8* noundef %43), !dbg !622
  call void @usage(i32 noundef 2) #22, !dbg !624
  unreachable, !dbg !624

44:                                               ; preds = %32
  %45 = load i8, i8* @silent, align 1, !dbg !625
  %46 = trunc i8 %45 to i1, !dbg !625
  br i1 %46, label %47, label %52, !dbg !627

47:                                               ; preds = %44
  %48 = call i32 @isatty(i32 noundef 0) #18, !dbg !628
  %49 = icmp ne i32 %48, 0, !dbg !628
  %50 = zext i1 %49 to i64, !dbg !628
  %51 = select i1 %49, i32 0, i32 1, !dbg !628
  store i32 %51, i32* %3, align 4, !dbg !629
  br label %71, !dbg !629

52:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata i32* %7, metadata !630, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.declare(metadata i8** %8, metadata !632, metadata !DIExpression()), !dbg !633
  %53 = call i8* @ttyname(i32 noundef 0) #18, !dbg !634
  store i8* %53, i8** %8, align 8, !dbg !633
  %54 = load i8*, i8** %8, align 8, !dbg !635
  %55 = icmp ne i8* %54, null, !dbg !635
  br i1 %55, label %56, label %57, !dbg !637

56:                                               ; preds = %52
  store i32 0, i32* %7, align 4, !dbg !638
  br label %67, !dbg !639

57:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata i32* %9, metadata !640, metadata !DIExpression()), !dbg !642
  %58 = call i32* @__errno_location() #21, !dbg !643
  %59 = load i32, i32* %58, align 4, !dbg !643
  store i32 %59, i32* %9, align 4, !dbg !642
  %60 = call i32 @isatty(i32 noundef 0) #18, !dbg !644
  %61 = icmp ne i32 %60, 0, !dbg !644
  br i1 %61, label %62, label %65, !dbg !646

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4, !dbg !647
  %64 = call i8* @gettext(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0)) #18, !dbg !647
  call void (i32, i32, i8*, ...) @error(i32 noundef 4, i32 noundef %63, i8* noundef %64), !dbg !647
  unreachable, !dbg !647

65:                                               ; preds = %57
  %66 = call i8* @gettext(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #18, !dbg !648
  store i8* %66, i8** %8, align 8, !dbg !649
  store i32 1, i32* %7, align 4, !dbg !650
  br label %67

67:                                               ; preds = %65, %56
  %68 = load i8*, i8** %8, align 8, !dbg !651
  %69 = call i32 @puts(i8* noundef %68), !dbg !652
  %70 = load i32, i32* %7, align 4, !dbg !653
  store i32 %70, i32* %3, align 4, !dbg !654
  br label %71, !dbg !654

71:                                               ; preds = %67, %47
  %72 = load i32, i32* %3, align 4, !dbg !655
  ret i32 %72, !dbg !655
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_exit_failure(i32 noundef %0) #4 !dbg !656 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !657, metadata !DIExpression()), !dbg !658
  %3 = load i32, i32* %2, align 4, !dbg !659
  %4 = icmp ne i32 %3, 1, !dbg !661
  br i1 %4, label %5, label %7, !dbg !662

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !663
  store volatile i32 %6, i32* @exit_failure, align 4, !dbg !664
  br label %7, !dbg !665

7:                                                ; preds = %5, %1
  ret void, !dbg !666
}

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) #2

; Function Attrs: nounwind
declare i8* @ttyname(i32 noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

declare i32 @puts(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !667 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !668, metadata !DIExpression()), !dbg !669
  %3 = load i8*, i8** %2, align 8, !dbg !670
  store i8* %3, i8** @file_name, align 8, !dbg !671
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !673 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !676, metadata !DIExpression()), !dbg !677
  %4 = load i8, i8* %2, align 1, !dbg !678
  %5 = trunc i8 %4 to i1, !dbg !678
  %6 = zext i1 %5 to i8, !dbg !679
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !679
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !681 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !682
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !684
  %4 = icmp ne i32 %3, 0, !dbg !685
  br i1 %4, label %5, label %28, !dbg !686

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !687
  %7 = trunc i8 %6 to i1, !dbg !687
  br i1 %7, label %8, label %12, !dbg !688

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !689
  %10 = load i32, i32* %9, align 4, !dbg !689
  %11 = icmp eq i32 %10, 32, !dbg !690
  br i1 %11, label %28, label %12, !dbg !691

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !692, metadata !DIExpression()), !dbg !694
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.59, i64 0, i64 0)) #18, !dbg !695
  store i8* %13, i8** %1, align 8, !dbg !694
  %14 = load i8*, i8** @file_name, align 8, !dbg !696
  %15 = icmp ne i8* %14, null, !dbg !696
  br i1 %15, label %16, label %22, !dbg !698

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !699
  %18 = load i32, i32* %17, align 4, !dbg !699
  %19 = load i8*, i8** @file_name, align 8, !dbg !699
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !699
  %21 = load i8*, i8** %1, align 8, !dbg !699
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.60, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !699
  br label %26, !dbg !699

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !700
  %24 = load i32, i32* %23, align 4, !dbg !700
  %25 = load i8*, i8** %1, align 8, !dbg !700
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.61, i64 0, i64 0), i8* noundef %25), !dbg !700
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !701
  call void @_exit(i32 noundef %27) #22, !dbg !702
  unreachable, !dbg !702

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !703
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !705
  %31 = icmp ne i32 %30, 0, !dbg !706
  br i1 %31, label %32, label %34, !dbg !707

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !708
  call void @_exit(i32 noundef %33) #22, !dbg !709
  unreachable, !dbg !709

34:                                               ; preds = %28
  ret void, !dbg !710
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !711 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !714, metadata !DIExpression()), !dbg !715
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !716, metadata !DIExpression()), !dbg !715
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !717, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !718, metadata !DIExpression()), !dbg !715
  call void @flush_stdout(), !dbg !719
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !720
  %10 = icmp ne void ()* %9, null, !dbg !720
  br i1 %10, label %11, label %13, !dbg !722

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !723
  call void %12(), !dbg !724
  br label %17, !dbg !724

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !725
  %15 = call i8* @getprogname() #20, !dbg !727
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i8* noundef %15), !dbg !728
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !729
  %19 = load i32, i32* %6, align 4, !dbg !729
  %20 = load i8*, i8** %7, align 8, !dbg !729
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !729
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !729
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !729
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !729
  ret void, !dbg !730
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !731 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !732, metadata !DIExpression()), !dbg !733
  store i32 1, i32* %1, align 4, !dbg !734
  %2 = load i32, i32* %1, align 4, !dbg !735
  %3 = icmp sle i32 0, %2, !dbg !737
  br i1 %3, label %4, label %11, !dbg !738

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !739
  %6 = call i32 @is_open(i32 noundef %5), !dbg !740
  %7 = icmp ne i32 %6, 0, !dbg !740
  br i1 %7, label %8, label %11, !dbg !741

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !742
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !742
  br label %11, !dbg !742

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !743
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !744 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !745, metadata !DIExpression()), !dbg !746
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !747, metadata !DIExpression()), !dbg !746
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !748, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !749, metadata !DIExpression()), !dbg !746
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !750
  %10 = load i8*, i8** %7, align 8, !dbg !751
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !752
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !752
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !752
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !752
  %14 = load i32, i32* @error_message_count, align 4, !dbg !753
  %15 = add i32 %14, 1, !dbg !753
  store i32 %15, i32* @error_message_count, align 4, !dbg !753
  %16 = load i32, i32* %6, align 4, !dbg !754
  %17 = icmp ne i32 %16, 0, !dbg !754
  br i1 %17, label %18, label %20, !dbg !756

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !757
  call void @print_errno_message(i32 noundef %19), !dbg !758
  br label %20, !dbg !758

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !759
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !759
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !760
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !760
  %25 = load i32, i32* %5, align 4, !dbg !761
  %26 = icmp ne i32 %25, 0, !dbg !761
  br i1 %26, label %27, label %29, !dbg !763

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !764
  call void @exit(i32 noundef %28) #19, !dbg !765
  unreachable, !dbg !765

29:                                               ; preds = %20
  ret void, !dbg !766
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !767 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !768, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.declare(metadata i8** %3, metadata !770, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !772, metadata !DIExpression()), !dbg !776
  %5 = load i32, i32* %2, align 4, !dbg !777
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !778
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !779
  store i8* %7, i8** %3, align 8, !dbg !780
  %8 = load i8*, i8** %3, align 8, !dbg !781
  %9 = icmp ne i8* %8, null, !dbg !781
  br i1 %9, label %12, label %10, !dbg !783

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.64, i64 0, i64 0)) #18, !dbg !784
  store i8* %11, i8** %3, align 8, !dbg !785
  br label %12, !dbg !786

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !787
  %14 = load i8*, i8** %3, align 8, !dbg !788
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.65, i64 0, i64 0), i8* noundef %14), !dbg !789
  ret void, !dbg !790
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !791 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !794, metadata !DIExpression()), !dbg !795
  %3 = load i32, i32* %2, align 4, !dbg !796
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !797
  %5 = icmp sle i32 0, %4, !dbg !798
  %6 = zext i1 %5 to i32, !dbg !798
  ret i32 %6, !dbg !799
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !800 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !803, metadata !DIExpression()), !dbg !804
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !805, metadata !DIExpression()), !dbg !806
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !807, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !809, metadata !DIExpression()), !dbg !810
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !811
  call void @llvm.va_start(i8* %9), !dbg !811
  %10 = load i32, i32* %4, align 4, !dbg !812
  %11 = load i32, i32* %5, align 4, !dbg !812
  %12 = load i8*, i8** %6, align 8, !dbg !812
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !812
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !812
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !812
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !812
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !813
  call void @llvm.va_end(i8* %15), !dbg !813
  ret void, !dbg !814
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !78 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !815, metadata !DIExpression()), !dbg !816
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !817, metadata !DIExpression()), !dbg !816
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !818, metadata !DIExpression()), !dbg !816
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !819, metadata !DIExpression()), !dbg !816
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !820, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !821, metadata !DIExpression()), !dbg !816
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !822
  %14 = icmp ne i32 %13, 0, !dbg !822
  br i1 %14, label %15, label %38, !dbg !824

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !825
  %17 = load i32, i32* %10, align 4, !dbg !828
  %18 = icmp eq i32 %16, %17, !dbg !829
  br i1 %18, label %19, label %35, !dbg !830

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !831
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !832
  %22 = icmp eq i8* %20, %21, !dbg !833
  br i1 %22, label %34, label %23, !dbg !834

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !835
  %25 = icmp ne i8* %24, null, !dbg !836
  br i1 %25, label %26, label %35, !dbg !837

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !838
  %28 = icmp ne i8* %27, null, !dbg !839
  br i1 %28, label %29, label %35, !dbg !840

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !841
  %31 = load i8*, i8** %9, align 8, !dbg !842
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !843
  %33 = icmp eq i32 %32, 0, !dbg !844
  br i1 %33, label %34, label %35, !dbg !845

34:                                               ; preds = %29, %19
  br label %61, !dbg !846

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !847
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !848
  %37 = load i32, i32* %10, align 4, !dbg !849
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !850
  br label %38, !dbg !851

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !852
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !853
  %40 = icmp ne void ()* %39, null, !dbg !853
  br i1 %40, label %41, label %43, !dbg !855

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !856
  call void %42(), !dbg !857
  br label %47, !dbg !857

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !858
  %45 = call i8* @getprogname() #20, !dbg !860
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.68, i64 0, i64 0), i8* noundef %45), !dbg !861
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !862
  %49 = load i8*, i8** %9, align 8, !dbg !863
  %50 = icmp ne i8* %49, null, !dbg !864
  %51 = zext i1 %50 to i64, !dbg !863
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.69, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.70, i64 0, i64 0), !dbg !863
  %53 = load i8*, i8** %9, align 8, !dbg !865
  %54 = load i32, i32* %10, align 4, !dbg !866
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !867
  %56 = load i32, i32* %7, align 4, !dbg !868
  %57 = load i32, i32* %8, align 4, !dbg !868
  %58 = load i8*, i8** %11, align 8, !dbg !868
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !868
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !868
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !868
  br label %61, !dbg !869

61:                                               ; preds = %47, %34
  ret void, !dbg !869
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !870 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !873, metadata !DIExpression()), !dbg !874
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !875, metadata !DIExpression()), !dbg !876
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !877, metadata !DIExpression()), !dbg !878
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !879, metadata !DIExpression()), !dbg !880
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !881, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !883, metadata !DIExpression()), !dbg !884
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !885
  call void @llvm.va_start(i8* %13), !dbg !885
  %14 = load i32, i32* %6, align 4, !dbg !886
  %15 = load i32, i32* %7, align 4, !dbg !886
  %16 = load i8*, i8** %8, align 8, !dbg !886
  %17 = load i32, i32* %9, align 4, !dbg !886
  %18 = load i8*, i8** %10, align 8, !dbg !886
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !886
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !886
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !886
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !886
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !887
  call void @llvm.va_end(i8* %21), !dbg !887
  ret void, !dbg !888
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !889 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !892
  ret i8* %1, !dbg !893
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !894 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !895, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.declare(metadata i8** %3, metadata !897, metadata !DIExpression()), !dbg !898
  %5 = load i8*, i8** %2, align 8, !dbg !899
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !900
  store i8* %6, i8** %3, align 8, !dbg !898
  call void @llvm.dbg.declare(metadata i8** %4, metadata !901, metadata !DIExpression()), !dbg !902
  %7 = load i8*, i8** %3, align 8, !dbg !903
  %8 = icmp ne i8* %7, null, !dbg !903
  br i1 %8, label %9, label %12, !dbg !903

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !904
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !905
  br label %14, !dbg !903

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !906
  br label %14, !dbg !903

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !903
  store i8* %15, i8** %4, align 8, !dbg !902
  %16 = load i8*, i8** %4, align 8, !dbg !907
  %17 = load i8*, i8** %2, align 8, !dbg !909
  %18 = ptrtoint i8* %16 to i64, !dbg !910
  %19 = ptrtoint i8* %17 to i64, !dbg !910
  %20 = sub i64 %18, %19, !dbg !910
  %21 = icmp sle i64 7, %20, !dbg !911
  br i1 %21, label %22, label %36, !dbg !912

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !913
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !914
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i64 0, i64 0), i64 noundef 7), !dbg !915
  br i1 %25, label %26, label %36, !dbg !916

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !917
  store i8* %27, i8** %2, align 8, !dbg !919
  %28 = load i8*, i8** %4, align 8, !dbg !920
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.80, i64 0, i64 0), i64 noundef 3) #20, !dbg !922
  %30 = icmp eq i32 %29, 0, !dbg !923
  br i1 %30, label %31, label %35, !dbg !924

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !925
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !925
  store i8* %33, i8** %4, align 8, !dbg !925
  %34 = load i8*, i8** %4, align 8, !dbg !927
  store i8* %34, i8** %2, align 8, !dbg !928
  br label %35, !dbg !929

35:                                               ; preds = %31, %26
  br label %36, !dbg !930

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !931
  store i8* %37, i8** @program_name, align 8, !dbg !932
  %38 = load i8*, i8** %2, align 8, !dbg !933
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !934
  %39 = load i8*, i8** %4, align 8, !dbg !935
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !936
  ret void, !dbg !937
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !938, metadata !DIExpression()), !dbg !939
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata i8** %6, metadata !942, metadata !DIExpression()), !dbg !943
  %9 = load i8*, i8** %4, align 8, !dbg !944
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !945
  store i8* %10, i8** %6, align 8, !dbg !943
  %11 = load i8*, i8** %6, align 8, !dbg !946
  %12 = load i8*, i8** %4, align 8, !dbg !948
  %13 = icmp ne i8* %11, %12, !dbg !949
  br i1 %13, label %14, label %16, !dbg !950

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !951
  store i8* %15, i8** %3, align 8, !dbg !952
  br label %26, !dbg !952

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !953, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !960, metadata !DIExpression()), !dbg !971
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !972
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !973
  %18 = icmp eq i64 %17, 2, !dbg !975
  br i1 %18, label %19, label %24, !dbg !976

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !977
  %21 = icmp eq i32 %20, 2047, !dbg !978
  br i1 %21, label %22, label %24, !dbg !979

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !980
  store i8* %23, i8** %3, align 8, !dbg !981
  br label %26, !dbg !981

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !982
  store i8* %25, i8** %3, align 8, !dbg !983
  br label %26, !dbg !983

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !984
  ret i8* %27, !dbg !984
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !985 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !989, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.declare(metadata i32* %3, metadata !991, metadata !DIExpression()), !dbg !992
  %5 = call i32* @__errno_location() #21, !dbg !993
  %6 = load i32, i32* %5, align 4, !dbg !993
  store i32 %6, i32* %3, align 4, !dbg !992
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !994, metadata !DIExpression()), !dbg !995
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !996
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !996
  br i1 %8, label %9, label %11, !dbg !996

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !997
  br label %12, !dbg !996

11:                                               ; preds = %1
  br label %12, !dbg !996

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !996
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !996
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !998
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !998
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !995
  %17 = load i32, i32* %3, align 4, !dbg !999
  %18 = call i32* @__errno_location() #21, !dbg !1000
  store i32 %17, i32* %18, align 4, !dbg !1001
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1002
  ret %struct.quoting_options* %19, !dbg !1003
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1004 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1009, metadata !DIExpression()), !dbg !1010
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1011
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1011
  br i1 %4, label %5, label %7, !dbg !1011

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1012
  br label %8, !dbg !1011

7:                                                ; preds = %1
  br label %8, !dbg !1011

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1011
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1013
  %11 = load i32, i32* %10, align 8, !dbg !1013
  ret i32 %11, !dbg !1014
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1015 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1018, metadata !DIExpression()), !dbg !1019
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1020, metadata !DIExpression()), !dbg !1021
  %5 = load i32, i32* %4, align 4, !dbg !1022
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1023
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1023
  br i1 %7, label %8, label %10, !dbg !1023

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1024
  br label %11, !dbg !1023

10:                                               ; preds = %2
  br label %11, !dbg !1023

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1023
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1025
  store i32 %5, i32* %13, align 8, !dbg !1026
  ret void, !dbg !1027
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1028 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1031, metadata !DIExpression()), !dbg !1032
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1033, metadata !DIExpression()), !dbg !1034
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1035, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1037, metadata !DIExpression()), !dbg !1038
  %11 = load i8, i8* %5, align 1, !dbg !1039
  store i8 %11, i8* %7, align 1, !dbg !1038
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1040, metadata !DIExpression()), !dbg !1042
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1043
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1043
  br i1 %13, label %14, label %16, !dbg !1043

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1044
  br label %17, !dbg !1043

16:                                               ; preds = %3
  br label %17, !dbg !1043

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1043
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1045
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1046
  %21 = load i8, i8* %7, align 1, !dbg !1047
  %22 = zext i8 %21 to i64, !dbg !1047
  %23 = udiv i64 %22, 32, !dbg !1048
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1049
  store i32* %24, i32** %8, align 8, !dbg !1042
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1050, metadata !DIExpression()), !dbg !1051
  %25 = load i8, i8* %7, align 1, !dbg !1052
  %26 = zext i8 %25 to i64, !dbg !1052
  %27 = urem i64 %26, 32, !dbg !1053
  %28 = trunc i64 %27 to i32, !dbg !1052
  store i32 %28, i32* %9, align 4, !dbg !1051
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1054, metadata !DIExpression()), !dbg !1055
  %29 = load i32*, i32** %8, align 8, !dbg !1056
  %30 = load i32, i32* %29, align 4, !dbg !1057
  %31 = load i32, i32* %9, align 4, !dbg !1058
  %32 = lshr i32 %30, %31, !dbg !1059
  %33 = and i32 %32, 1, !dbg !1060
  store i32 %33, i32* %10, align 4, !dbg !1055
  %34 = load i32, i32* %6, align 4, !dbg !1061
  %35 = and i32 %34, 1, !dbg !1062
  %36 = load i32, i32* %10, align 4, !dbg !1063
  %37 = xor i32 %35, %36, !dbg !1064
  %38 = load i32, i32* %9, align 4, !dbg !1065
  %39 = shl i32 %37, %38, !dbg !1066
  %40 = load i32*, i32** %8, align 8, !dbg !1067
  %41 = load i32, i32* %40, align 4, !dbg !1068
  %42 = xor i32 %41, %39, !dbg !1068
  store i32 %42, i32* %40, align 4, !dbg !1068
  %43 = load i32, i32* %10, align 4, !dbg !1069
  ret i32 %43, !dbg !1070
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1071 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1074, metadata !DIExpression()), !dbg !1075
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1076, metadata !DIExpression()), !dbg !1077
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1078
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1078
  br i1 %7, label %9, label %8, !dbg !1080

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1081
  br label %9, !dbg !1082

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1083, metadata !DIExpression()), !dbg !1084
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1085
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1086
  %12 = load i32, i32* %11, align 4, !dbg !1086
  store i32 %12, i32* %5, align 4, !dbg !1084
  %13 = load i32, i32* %4, align 4, !dbg !1087
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1088
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1089
  store i32 %13, i32* %15, align 4, !dbg !1090
  %16 = load i32, i32* %5, align 4, !dbg !1091
  ret i32 %16, !dbg !1092
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1093 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1096, metadata !DIExpression()), !dbg !1097
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1098, metadata !DIExpression()), !dbg !1099
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1100, metadata !DIExpression()), !dbg !1101
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1102
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1102
  br i1 %8, label %10, label %9, !dbg !1104

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1105
  br label %10, !dbg !1106

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1107
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1108
  store i32 10, i32* %12, align 8, !dbg !1109
  %13 = load i8*, i8** %5, align 8, !dbg !1110
  %14 = icmp ne i8* %13, null, !dbg !1110
  br i1 %14, label %15, label %18, !dbg !1112

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1113
  %17 = icmp ne i8* %16, null, !dbg !1113
  br i1 %17, label %19, label %18, !dbg !1114

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1115
  unreachable, !dbg !1115

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1116
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1117
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1118
  store i8* %20, i8** %22, align 8, !dbg !1119
  %23 = load i8*, i8** %6, align 8, !dbg !1120
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1121
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1122
  store i8* %23, i8** %25, align 8, !dbg !1123
  ret void, !dbg !1124
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1125 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1128, metadata !DIExpression()), !dbg !1129
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1130, metadata !DIExpression()), !dbg !1131
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1132, metadata !DIExpression()), !dbg !1133
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1134, metadata !DIExpression()), !dbg !1135
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1136, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1138, metadata !DIExpression()), !dbg !1139
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1140
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1140
  br i1 %15, label %16, label %18, !dbg !1140

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1141
  br label %19, !dbg !1140

18:                                               ; preds = %5
  br label %19, !dbg !1140

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1140
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1139
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1142, metadata !DIExpression()), !dbg !1143
  %21 = call i32* @__errno_location() #21, !dbg !1144
  %22 = load i32, i32* %21, align 4, !dbg !1144
  store i32 %22, i32* %12, align 4, !dbg !1143
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1145, metadata !DIExpression()), !dbg !1146
  %23 = load i8*, i8** %6, align 8, !dbg !1147
  %24 = load i64, i64* %7, align 8, !dbg !1148
  %25 = load i8*, i8** %8, align 8, !dbg !1149
  %26 = load i64, i64* %9, align 8, !dbg !1150
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1151
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1152
  %29 = load i32, i32* %28, align 8, !dbg !1152
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1153
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1154
  %32 = load i32, i32* %31, align 4, !dbg !1154
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1155
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1156
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1155
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1157
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1158
  %38 = load i8*, i8** %37, align 8, !dbg !1158
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1159
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1160
  %41 = load i8*, i8** %40, align 8, !dbg !1160
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1161
  store i64 %42, i64* %13, align 8, !dbg !1146
  %43 = load i32, i32* %12, align 4, !dbg !1162
  %44 = call i32* @__errno_location() #21, !dbg !1163
  store i32 %43, i32* %44, align 4, !dbg !1164
  %45 = load i64, i64* %13, align 8, !dbg !1165
  ret i64 %45, !dbg !1166
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1167 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1172, metadata !DIExpression()), !dbg !1173
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1174, metadata !DIExpression()), !dbg !1175
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1176, metadata !DIExpression()), !dbg !1177
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1178, metadata !DIExpression()), !dbg !1179
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1180, metadata !DIExpression()), !dbg !1181
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1182, metadata !DIExpression()), !dbg !1183
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1184, metadata !DIExpression()), !dbg !1185
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1186, metadata !DIExpression()), !dbg !1187
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1188, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1190, metadata !DIExpression()), !dbg !1191
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1192
  %45 = icmp eq i64 %44, 1, !dbg !1193
  %46 = zext i1 %45 to i8, !dbg !1191
  store i8 %46, i8* %20, align 1, !dbg !1191
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1194, metadata !DIExpression()), !dbg !1195
  store i64 0, i64* %21, align 8, !dbg !1195
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1196, metadata !DIExpression()), !dbg !1197
  store i64 0, i64* %22, align 8, !dbg !1197
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1198, metadata !DIExpression()), !dbg !1199
  store i8* null, i8** %23, align 8, !dbg !1199
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1200, metadata !DIExpression()), !dbg !1201
  store i64 0, i64* %24, align 8, !dbg !1201
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1202, metadata !DIExpression()), !dbg !1203
  store i8 0, i8* %25, align 1, !dbg !1203
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1204, metadata !DIExpression()), !dbg !1205
  %47 = load i32, i32* %16, align 4, !dbg !1206
  %48 = and i32 %47, 2, !dbg !1207
  %49 = icmp ne i32 %48, 0, !dbg !1208
  %50 = zext i1 %49 to i8, !dbg !1205
  store i8 %50, i8* %26, align 1, !dbg !1205
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1209, metadata !DIExpression()), !dbg !1210
  store i8 0, i8* %27, align 1, !dbg !1210
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1211, metadata !DIExpression()), !dbg !1212
  store i8 1, i8* %28, align 1, !dbg !1212
  br label %51, !dbg !1213

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1214), !dbg !1215
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1216, metadata !DIExpression()), !dbg !1217
  store i8 0, i8* %29, align 1, !dbg !1217
  %52 = load i32, i32* %15, align 4, !dbg !1218
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
  ], !dbg !1219

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1220
  store i8 1, i8* %26, align 1, !dbg !1222
  br label %54, !dbg !1223

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1224
  %56 = trunc i8 %55 to i1, !dbg !1224
  br i1 %56, label %70, label %57, !dbg !1226

57:                                               ; preds = %54
  br label %58, !dbg !1227

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1228
  %60 = load i64, i64* %12, align 8, !dbg !1228
  %61 = icmp ult i64 %59, %60, !dbg !1228
  br i1 %61, label %62, label %66, !dbg !1231

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1228
  %64 = load i64, i64* %21, align 8, !dbg !1228
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1228
  store i8 34, i8* %65, align 1, !dbg !1228
  br label %66, !dbg !1228

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1231
  %68 = add i64 %67, 1, !dbg !1231
  store i64 %68, i64* %21, align 8, !dbg !1231
  br label %69, !dbg !1231

69:                                               ; preds = %66
  br label %70, !dbg !1231

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1232
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.93, i64 0, i64 0), i8** %23, align 8, !dbg !1233
  store i64 1, i64* %24, align 8, !dbg !1234
  br label %138, !dbg !1235

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1236
  store i8 0, i8* %26, align 1, !dbg !1237
  br label %138, !dbg !1238

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1239
  %74 = icmp ne i32 %73, 10, !dbg !1242
  br i1 %74, label %75, label %80, !dbg !1243

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1244
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.94, i64 0, i64 0), i32 noundef %76), !dbg !1246
  store i8* %77, i8** %18, align 8, !dbg !1247
  %78 = load i32, i32* %15, align 4, !dbg !1248
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), i32 noundef %78), !dbg !1249
  store i8* %79, i8** %19, align 8, !dbg !1250
  br label %80, !dbg !1251

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1252
  %82 = trunc i8 %81 to i1, !dbg !1252
  br i1 %82, label %108, label %83, !dbg !1254

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1255, metadata !DIExpression()), !dbg !1257
  %84 = load i8*, i8** %18, align 8, !dbg !1258
  store i8* %84, i8** %30, align 8, !dbg !1257
  br label %85, !dbg !1259

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1260
  %87 = load i8, i8* %86, align 1, !dbg !1262
  %88 = icmp ne i8 %87, 0, !dbg !1263
  br i1 %88, label %89, label %107, !dbg !1263

89:                                               ; preds = %85
  br label %90, !dbg !1264

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1265
  %92 = load i64, i64* %12, align 8, !dbg !1265
  %93 = icmp ult i64 %91, %92, !dbg !1265
  br i1 %93, label %94, label %100, !dbg !1268

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1265
  %96 = load i8, i8* %95, align 1, !dbg !1265
  %97 = load i8*, i8** %11, align 8, !dbg !1265
  %98 = load i64, i64* %21, align 8, !dbg !1265
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1265
  store i8 %96, i8* %99, align 1, !dbg !1265
  br label %100, !dbg !1265

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1268
  %102 = add i64 %101, 1, !dbg !1268
  store i64 %102, i64* %21, align 8, !dbg !1268
  br label %103, !dbg !1268

103:                                              ; preds = %100
  br label %104, !dbg !1268

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1269
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1269
  store i8* %106, i8** %30, align 8, !dbg !1269
  br label %85, !dbg !1270, !llvm.loop !1271

107:                                              ; preds = %85
  br label %108, !dbg !1272

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1273
  %109 = load i8*, i8** %19, align 8, !dbg !1274
  store i8* %109, i8** %23, align 8, !dbg !1275
  %110 = load i8*, i8** %23, align 8, !dbg !1276
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1277
  store i64 %111, i64* %24, align 8, !dbg !1278
  br label %138, !dbg !1279

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1280
  br label %113, !dbg !1281

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1282
  br label %114, !dbg !1283

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1284
  %116 = trunc i8 %115 to i1, !dbg !1284
  br i1 %116, label %118, label %117, !dbg !1286

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1287
  br label %118, !dbg !1288

118:                                              ; preds = %117, %114
  br label %119, !dbg !1284

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1289
  %120 = load i8, i8* %26, align 1, !dbg !1290
  %121 = trunc i8 %120 to i1, !dbg !1290
  br i1 %121, label %135, label %122, !dbg !1292

122:                                              ; preds = %119
  br label %123, !dbg !1293

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1294
  %125 = load i64, i64* %12, align 8, !dbg !1294
  %126 = icmp ult i64 %124, %125, !dbg !1294
  br i1 %126, label %127, label %131, !dbg !1297

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1294
  %129 = load i64, i64* %21, align 8, !dbg !1294
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1294
  store i8 39, i8* %130, align 1, !dbg !1294
  br label %131, !dbg !1294

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1297
  %133 = add i64 %132, 1, !dbg !1297
  store i64 %133, i64* %21, align 8, !dbg !1297
  br label %134, !dbg !1297

134:                                              ; preds = %131
  br label %135, !dbg !1297

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), i8** %23, align 8, !dbg !1298
  store i64 1, i64* %24, align 8, !dbg !1299
  br label %138, !dbg !1300

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1301
  br label %138, !dbg !1302

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1303
  unreachable, !dbg !1303

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1304, metadata !DIExpression()), !dbg !1306
  store i64 0, i64* %31, align 8, !dbg !1306
  br label %139, !dbg !1307

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1308
  %141 = icmp eq i64 %140, -1, !dbg !1310
  br i1 %141, label %142, label %150, !dbg !1308

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1311
  %144 = load i64, i64* %31, align 8, !dbg !1312
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1311
  %146 = load i8, i8* %145, align 1, !dbg !1311
  %147 = zext i8 %146 to i32, !dbg !1311
  %148 = icmp eq i32 %147, 0, !dbg !1313
  %149 = zext i1 %148 to i32, !dbg !1313
  br label %155, !dbg !1308

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1314
  %152 = load i64, i64* %14, align 8, !dbg !1315
  %153 = icmp eq i64 %151, %152, !dbg !1316
  %154 = zext i1 %153 to i32, !dbg !1316
  br label %155, !dbg !1308

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1308
  %157 = icmp ne i32 %156, 0, !dbg !1317
  %158 = xor i1 %157, true, !dbg !1317
  br i1 %158, label %159, label %996, !dbg !1318

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1319, metadata !DIExpression()), !dbg !1321
  store i8 0, i8* %32, align 1, !dbg !1321
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1322, metadata !DIExpression()), !dbg !1323
  store i8 0, i8* %33, align 1, !dbg !1323
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1324, metadata !DIExpression()), !dbg !1325
  store i8 0, i8* %34, align 1, !dbg !1325
  %160 = load i8, i8* %25, align 1, !dbg !1326
  %161 = trunc i8 %160 to i1, !dbg !1326
  br i1 %161, label %162, label %197, !dbg !1328

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1329
  %164 = icmp ne i32 %163, 2, !dbg !1330
  br i1 %164, label %165, label %197, !dbg !1331

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1332
  %167 = icmp ne i64 %166, 0, !dbg !1332
  br i1 %167, label %168, label %197, !dbg !1333

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1334
  %170 = load i64, i64* %24, align 8, !dbg !1335
  %171 = add i64 %169, %170, !dbg !1336
  %172 = load i64, i64* %14, align 8, !dbg !1337
  %173 = icmp eq i64 %172, -1, !dbg !1338
  br i1 %173, label %174, label %180, !dbg !1339

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1340
  %176 = icmp ult i64 1, %175, !dbg !1341
  br i1 %176, label %177, label %180, !dbg !1337

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1342
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1343
  store i64 %179, i64* %14, align 8, !dbg !1344
  br label %182, !dbg !1337

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1345
  br label %182, !dbg !1337

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1337
  %184 = icmp ule i64 %171, %183, !dbg !1346
  br i1 %184, label %185, label %197, !dbg !1347

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1348
  %187 = load i64, i64* %31, align 8, !dbg !1349
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1350
  %189 = load i8*, i8** %23, align 8, !dbg !1351
  %190 = load i64, i64* %24, align 8, !dbg !1352
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1353
  br i1 %191, label %192, label %197, !dbg !1354

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1355
  %194 = trunc i8 %193 to i1, !dbg !1355
  br i1 %194, label %195, label %196, !dbg !1358

195:                                              ; preds = %192
  br label %1078, !dbg !1359

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1360
  br label %197, !dbg !1361

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1362, metadata !DIExpression()), !dbg !1363
  %198 = load i8*, i8** %13, align 8, !dbg !1364
  %199 = load i64, i64* %31, align 8, !dbg !1365
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1364
  %201 = load i8, i8* %200, align 1, !dbg !1364
  store i8 %201, i8* %35, align 1, !dbg !1363
  %202 = load i8, i8* %35, align 1, !dbg !1366
  %203 = zext i8 %202 to i32, !dbg !1366
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
  ], !dbg !1367

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1368
  %206 = trunc i8 %205 to i1, !dbg !1368
  br i1 %206, label %207, label %318, !dbg !1371

207:                                              ; preds = %204
  br label %208, !dbg !1372

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1374
  %210 = trunc i8 %209 to i1, !dbg !1374
  br i1 %210, label %211, label %212, !dbg !1377

211:                                              ; preds = %208
  br label %1078, !dbg !1374

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1377
  %213 = load i32, i32* %15, align 4, !dbg !1378
  %214 = icmp eq i32 %213, 2, !dbg !1378
  br i1 %214, label %215, label %255, !dbg !1378

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1378
  %217 = trunc i8 %216 to i1, !dbg !1378
  br i1 %217, label %255, label %218, !dbg !1377

218:                                              ; preds = %215
  br label %219, !dbg !1380

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1382
  %221 = load i64, i64* %12, align 8, !dbg !1382
  %222 = icmp ult i64 %220, %221, !dbg !1382
  br i1 %222, label %223, label %227, !dbg !1385

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1382
  %225 = load i64, i64* %21, align 8, !dbg !1382
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1382
  store i8 39, i8* %226, align 1, !dbg !1382
  br label %227, !dbg !1382

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1385
  %229 = add i64 %228, 1, !dbg !1385
  store i64 %229, i64* %21, align 8, !dbg !1385
  br label %230, !dbg !1385

230:                                              ; preds = %227
  br label %231, !dbg !1380

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1386
  %233 = load i64, i64* %12, align 8, !dbg !1386
  %234 = icmp ult i64 %232, %233, !dbg !1386
  br i1 %234, label %235, label %239, !dbg !1389

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1386
  %237 = load i64, i64* %21, align 8, !dbg !1386
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1386
  store i8 36, i8* %238, align 1, !dbg !1386
  br label %239, !dbg !1386

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1389
  %241 = add i64 %240, 1, !dbg !1389
  store i64 %241, i64* %21, align 8, !dbg !1389
  br label %242, !dbg !1389

242:                                              ; preds = %239
  br label %243, !dbg !1380

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1390
  %245 = load i64, i64* %12, align 8, !dbg !1390
  %246 = icmp ult i64 %244, %245, !dbg !1390
  br i1 %246, label %247, label %251, !dbg !1393

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1390
  %249 = load i64, i64* %21, align 8, !dbg !1390
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1390
  store i8 39, i8* %250, align 1, !dbg !1390
  br label %251, !dbg !1390

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1393
  %253 = add i64 %252, 1, !dbg !1393
  store i64 %253, i64* %21, align 8, !dbg !1393
  br label %254, !dbg !1393

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1380
  br label %255, !dbg !1380

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1377

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1394
  %258 = load i64, i64* %12, align 8, !dbg !1394
  %259 = icmp ult i64 %257, %258, !dbg !1394
  br i1 %259, label %260, label %264, !dbg !1397

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1394
  %262 = load i64, i64* %21, align 8, !dbg !1394
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1394
  store i8 92, i8* %263, align 1, !dbg !1394
  br label %264, !dbg !1394

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1397
  %266 = add i64 %265, 1, !dbg !1397
  store i64 %266, i64* %21, align 8, !dbg !1397
  br label %267, !dbg !1397

267:                                              ; preds = %264
  br label %268, !dbg !1377

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1398
  %270 = icmp ne i32 %269, 2, !dbg !1400
  br i1 %270, label %271, label %317, !dbg !1401

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1402
  %273 = add i64 %272, 1, !dbg !1403
  %274 = load i64, i64* %14, align 8, !dbg !1404
  %275 = icmp ult i64 %273, %274, !dbg !1405
  br i1 %275, label %276, label %317, !dbg !1406

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1407
  %278 = load i64, i64* %31, align 8, !dbg !1408
  %279 = add i64 %278, 1, !dbg !1409
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1407
  %281 = load i8, i8* %280, align 1, !dbg !1407
  %282 = zext i8 %281 to i32, !dbg !1407
  %283 = icmp sle i32 48, %282, !dbg !1410
  br i1 %283, label %284, label %317, !dbg !1411

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1412
  %286 = load i64, i64* %31, align 8, !dbg !1413
  %287 = add i64 %286, 1, !dbg !1414
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1412
  %289 = load i8, i8* %288, align 1, !dbg !1412
  %290 = zext i8 %289 to i32, !dbg !1412
  %291 = icmp sle i32 %290, 57, !dbg !1415
  br i1 %291, label %292, label %317, !dbg !1416

292:                                              ; preds = %284
  br label %293, !dbg !1417

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1419
  %295 = load i64, i64* %12, align 8, !dbg !1419
  %296 = icmp ult i64 %294, %295, !dbg !1419
  br i1 %296, label %297, label %301, !dbg !1422

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1419
  %299 = load i64, i64* %21, align 8, !dbg !1419
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1419
  store i8 48, i8* %300, align 1, !dbg !1419
  br label %301, !dbg !1419

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1422
  %303 = add i64 %302, 1, !dbg !1422
  store i64 %303, i64* %21, align 8, !dbg !1422
  br label %304, !dbg !1422

304:                                              ; preds = %301
  br label %305, !dbg !1423

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1424
  %307 = load i64, i64* %12, align 8, !dbg !1424
  %308 = icmp ult i64 %306, %307, !dbg !1424
  br i1 %308, label %309, label %313, !dbg !1427

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1424
  %311 = load i64, i64* %21, align 8, !dbg !1424
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1424
  store i8 48, i8* %312, align 1, !dbg !1424
  br label %313, !dbg !1424

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1427
  %315 = add i64 %314, 1, !dbg !1427
  store i64 %315, i64* %21, align 8, !dbg !1427
  br label %316, !dbg !1427

316:                                              ; preds = %313
  br label %317, !dbg !1428

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1429
  br label %324, !dbg !1430

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1431
  %320 = and i32 %319, 1, !dbg !1433
  %321 = icmp ne i32 %320, 0, !dbg !1433
  br i1 %321, label %322, label %323, !dbg !1434

322:                                              ; preds = %318
  br label %993, !dbg !1435

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1436

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1437
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1438

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1439
  %329 = trunc i8 %328 to i1, !dbg !1439
  br i1 %329, label %330, label %331, !dbg !1442

330:                                              ; preds = %327
  br label %1078, !dbg !1443

331:                                              ; preds = %327
  br label %418, !dbg !1444

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1445
  %334 = and i32 %333, 4, !dbg !1447
  %335 = icmp ne i32 %334, 0, !dbg !1447
  br i1 %335, label %336, label %417, !dbg !1448

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1449
  %338 = add i64 %337, 2, !dbg !1450
  %339 = load i64, i64* %14, align 8, !dbg !1451
  %340 = icmp ult i64 %338, %339, !dbg !1452
  br i1 %340, label %341, label %417, !dbg !1453

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1454
  %343 = load i64, i64* %31, align 8, !dbg !1455
  %344 = add i64 %343, 1, !dbg !1456
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1454
  %346 = load i8, i8* %345, align 1, !dbg !1454
  %347 = zext i8 %346 to i32, !dbg !1454
  %348 = icmp eq i32 %347, 63, !dbg !1457
  br i1 %348, label %349, label %417, !dbg !1458

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1459
  %351 = load i64, i64* %31, align 8, !dbg !1460
  %352 = add i64 %351, 2, !dbg !1461
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1459
  %354 = load i8, i8* %353, align 1, !dbg !1459
  %355 = zext i8 %354 to i32, !dbg !1459
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
  ], !dbg !1462

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1463
  %358 = trunc i8 %357 to i1, !dbg !1463
  br i1 %358, label %359, label %360, !dbg !1466

359:                                              ; preds = %356
  br label %1078, !dbg !1467

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1468
  %362 = load i64, i64* %31, align 8, !dbg !1469
  %363 = add i64 %362, 2, !dbg !1470
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1468
  %365 = load i8, i8* %364, align 1, !dbg !1468
  store i8 %365, i8* %35, align 1, !dbg !1471
  %366 = load i64, i64* %31, align 8, !dbg !1472
  %367 = add i64 %366, 2, !dbg !1472
  store i64 %367, i64* %31, align 8, !dbg !1472
  br label %368, !dbg !1473

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1474
  %370 = load i64, i64* %12, align 8, !dbg !1474
  %371 = icmp ult i64 %369, %370, !dbg !1474
  br i1 %371, label %372, label %376, !dbg !1477

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1474
  %374 = load i64, i64* %21, align 8, !dbg !1474
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1474
  store i8 63, i8* %375, align 1, !dbg !1474
  br label %376, !dbg !1474

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1477
  %378 = add i64 %377, 1, !dbg !1477
  store i64 %378, i64* %21, align 8, !dbg !1477
  br label %379, !dbg !1477

379:                                              ; preds = %376
  br label %380, !dbg !1478

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1479
  %382 = load i64, i64* %12, align 8, !dbg !1479
  %383 = icmp ult i64 %381, %382, !dbg !1479
  br i1 %383, label %384, label %388, !dbg !1482

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1479
  %386 = load i64, i64* %21, align 8, !dbg !1479
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1479
  store i8 34, i8* %387, align 1, !dbg !1479
  br label %388, !dbg !1479

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1482
  %390 = add i64 %389, 1, !dbg !1482
  store i64 %390, i64* %21, align 8, !dbg !1482
  br label %391, !dbg !1482

391:                                              ; preds = %388
  br label %392, !dbg !1483

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1484
  %394 = load i64, i64* %12, align 8, !dbg !1484
  %395 = icmp ult i64 %393, %394, !dbg !1484
  br i1 %395, label %396, label %400, !dbg !1487

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1484
  %398 = load i64, i64* %21, align 8, !dbg !1484
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1484
  store i8 34, i8* %399, align 1, !dbg !1484
  br label %400, !dbg !1484

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1487
  %402 = add i64 %401, 1, !dbg !1487
  store i64 %402, i64* %21, align 8, !dbg !1487
  br label %403, !dbg !1487

403:                                              ; preds = %400
  br label %404, !dbg !1488

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1489
  %406 = load i64, i64* %12, align 8, !dbg !1489
  %407 = icmp ult i64 %405, %406, !dbg !1489
  br i1 %407, label %408, label %412, !dbg !1492

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1489
  %410 = load i64, i64* %21, align 8, !dbg !1489
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1489
  store i8 63, i8* %411, align 1, !dbg !1489
  br label %412, !dbg !1489

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1492
  %414 = add i64 %413, 1, !dbg !1492
  store i64 %414, i64* %21, align 8, !dbg !1492
  br label %415, !dbg !1492

415:                                              ; preds = %412
  br label %416, !dbg !1493

416:                                              ; preds = %349, %415
  br label %417, !dbg !1494

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1495

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1496

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1497
  br label %454, !dbg !1499

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1500
  br label %454, !dbg !1501

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1502
  br label %454, !dbg !1503

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1504
  br label %446, !dbg !1505

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1506
  br label %446, !dbg !1507

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1508
  br label %446, !dbg !1509

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1510
  br label %454, !dbg !1511

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1512
  store i8 %427, i8* %36, align 1, !dbg !1513
  %428 = load i32, i32* %15, align 4, !dbg !1514
  %429 = icmp eq i32 %428, 2, !dbg !1516
  br i1 %429, label %430, label %435, !dbg !1517

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1518
  %432 = trunc i8 %431 to i1, !dbg !1518
  br i1 %432, label %433, label %434, !dbg !1521

433:                                              ; preds = %430
  br label %1078, !dbg !1522

434:                                              ; preds = %430
  br label %942, !dbg !1523

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1524
  %437 = trunc i8 %436 to i1, !dbg !1524
  br i1 %437, label %438, label %445, !dbg !1526

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1527
  %440 = trunc i8 %439 to i1, !dbg !1527
  br i1 %440, label %441, label %445, !dbg !1528

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1529
  %443 = icmp ne i64 %442, 0, !dbg !1529
  br i1 %443, label %444, label %445, !dbg !1530

444:                                              ; preds = %441
  br label %942, !dbg !1531

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1529

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1532), !dbg !1533
  %447 = load i32, i32* %15, align 4, !dbg !1534
  %448 = icmp eq i32 %447, 2, !dbg !1536
  br i1 %448, label %449, label %453, !dbg !1537

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1538
  %451 = trunc i8 %450 to i1, !dbg !1538
  br i1 %451, label %452, label %453, !dbg !1539

452:                                              ; preds = %449
  br label %1078, !dbg !1540

453:                                              ; preds = %449, %446
  br label %454, !dbg !1538

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1541), !dbg !1542
  %455 = load i8, i8* %25, align 1, !dbg !1543
  %456 = trunc i8 %455 to i1, !dbg !1543
  br i1 %456, label %457, label %459, !dbg !1545

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1546
  store i8 %458, i8* %35, align 1, !dbg !1548
  br label %880, !dbg !1549

459:                                              ; preds = %454
  br label %849, !dbg !1550

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1551
  %462 = icmp eq i64 %461, -1, !dbg !1553
  br i1 %462, label %463, label %469, !dbg !1554

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1555
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1555
  %466 = load i8, i8* %465, align 1, !dbg !1555
  %467 = zext i8 %466 to i32, !dbg !1555
  %468 = icmp eq i32 %467, 0, !dbg !1556
  br i1 %468, label %473, label %472, !dbg !1551

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1557
  %471 = icmp eq i64 %470, 1, !dbg !1558
  br i1 %471, label %473, label %472, !dbg !1554

472:                                              ; preds = %469, %463
  br label %849, !dbg !1559

473:                                              ; preds = %469, %463
  br label %474, !dbg !1560

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1561
  %476 = icmp ne i64 %475, 0, !dbg !1563
  br i1 %476, label %477, label %478, !dbg !1564

477:                                              ; preds = %474
  br label %849, !dbg !1565

478:                                              ; preds = %474
  br label %479, !dbg !1566

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1567
  br label %480, !dbg !1568

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1569
  %482 = icmp eq i32 %481, 2, !dbg !1571
  br i1 %482, label %483, label %487, !dbg !1572

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1573
  %485 = trunc i8 %484 to i1, !dbg !1573
  br i1 %485, label %486, label %487, !dbg !1574

486:                                              ; preds = %483
  br label %1078, !dbg !1575

487:                                              ; preds = %483, %480
  br label %849, !dbg !1576

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1577
  store i8 1, i8* %34, align 1, !dbg !1578
  %489 = load i32, i32* %15, align 4, !dbg !1579
  %490 = icmp eq i32 %489, 2, !dbg !1581
  br i1 %490, label %491, label %540, !dbg !1582

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1583
  %493 = trunc i8 %492 to i1, !dbg !1583
  br i1 %493, label %494, label %495, !dbg !1586

494:                                              ; preds = %491
  br label %1078, !dbg !1587

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1588
  %497 = icmp ne i64 %496, 0, !dbg !1588
  br i1 %497, label %498, label %503, !dbg !1590

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1591
  %500 = icmp ne i64 %499, 0, !dbg !1591
  br i1 %500, label %503, label %501, !dbg !1592

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1593
  store i64 %502, i64* %22, align 8, !dbg !1595
  store i64 0, i64* %12, align 8, !dbg !1596
  br label %503, !dbg !1597

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1598

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1599
  %506 = load i64, i64* %12, align 8, !dbg !1599
  %507 = icmp ult i64 %505, %506, !dbg !1599
  br i1 %507, label %508, label %512, !dbg !1602

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1599
  %510 = load i64, i64* %21, align 8, !dbg !1599
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1599
  store i8 39, i8* %511, align 1, !dbg !1599
  br label %512, !dbg !1599

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1602
  %514 = add i64 %513, 1, !dbg !1602
  store i64 %514, i64* %21, align 8, !dbg !1602
  br label %515, !dbg !1602

515:                                              ; preds = %512
  br label %516, !dbg !1603

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1604
  %518 = load i64, i64* %12, align 8, !dbg !1604
  %519 = icmp ult i64 %517, %518, !dbg !1604
  br i1 %519, label %520, label %524, !dbg !1607

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1604
  %522 = load i64, i64* %21, align 8, !dbg !1604
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1604
  store i8 92, i8* %523, align 1, !dbg !1604
  br label %524, !dbg !1604

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1607
  %526 = add i64 %525, 1, !dbg !1607
  store i64 %526, i64* %21, align 8, !dbg !1607
  br label %527, !dbg !1607

527:                                              ; preds = %524
  br label %528, !dbg !1608

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1609
  %530 = load i64, i64* %12, align 8, !dbg !1609
  %531 = icmp ult i64 %529, %530, !dbg !1609
  br i1 %531, label %532, label %536, !dbg !1612

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1609
  %534 = load i64, i64* %21, align 8, !dbg !1609
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1609
  store i8 39, i8* %535, align 1, !dbg !1609
  br label %536, !dbg !1609

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1612
  %538 = add i64 %537, 1, !dbg !1612
  store i64 %538, i64* %21, align 8, !dbg !1612
  br label %539, !dbg !1612

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1613
  br label %540, !dbg !1614

540:                                              ; preds = %539, %488
  br label %849, !dbg !1615

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1616
  br label %849, !dbg !1617

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1618, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1621, metadata !DIExpression()), !dbg !1622
  %543 = load i8, i8* %20, align 1, !dbg !1623
  %544 = trunc i8 %543 to i1, !dbg !1623
  br i1 %544, label %545, label %557, !dbg !1625

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1626
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1628
  %547 = load i16*, i16** %546, align 8, !dbg !1628
  %548 = load i8, i8* %35, align 1, !dbg !1628
  %549 = zext i8 %548 to i32, !dbg !1628
  %550 = sext i32 %549 to i64, !dbg !1628
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1628
  %552 = load i16, i16* %551, align 2, !dbg !1628
  %553 = zext i16 %552 to i32, !dbg !1628
  %554 = and i32 %553, 16384, !dbg !1628
  %555 = icmp ne i32 %554, 0, !dbg !1629
  %556 = zext i1 %555 to i8, !dbg !1630
  store i8 %556, i8* %38, align 1, !dbg !1630
  br label %648, !dbg !1631

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1632, metadata !DIExpression()), !dbg !1644
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1645
  store i64 0, i64* %37, align 8, !dbg !1646
  store i8 1, i8* %38, align 1, !dbg !1647
  %558 = load i64, i64* %14, align 8, !dbg !1648
  %559 = icmp eq i64 %558, -1, !dbg !1650
  br i1 %559, label %560, label %563, !dbg !1651

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1652
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !1653
  store i64 %562, i64* %14, align 8, !dbg !1654
  br label %563, !dbg !1655

563:                                              ; preds = %560, %557
  br label %564, !dbg !1656

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1657, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1662, metadata !DIExpression()), !dbg !1663
  %565 = load i8*, i8** %13, align 8, !dbg !1664
  %566 = load i64, i64* %31, align 8, !dbg !1665
  %567 = load i64, i64* %37, align 8, !dbg !1666
  %568 = add i64 %566, %567, !dbg !1667
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !1664
  %570 = load i64, i64* %14, align 8, !dbg !1668
  %571 = load i64, i64* %31, align 8, !dbg !1669
  %572 = load i64, i64* %37, align 8, !dbg !1670
  %573 = add i64 %571, %572, !dbg !1671
  %574 = sub i64 %570, %573, !dbg !1672
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !1673
  store i64 %575, i64* %41, align 8, !dbg !1663
  %576 = load i64, i64* %41, align 8, !dbg !1674
  %577 = icmp eq i64 %576, 0, !dbg !1676
  br i1 %577, label %578, label %579, !dbg !1677

578:                                              ; preds = %564
  br label %647, !dbg !1678

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !1679
  %581 = icmp eq i64 %580, -1, !dbg !1681
  br i1 %581, label %582, label %583, !dbg !1682

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !1683
  br label %647, !dbg !1685

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !1686
  %585 = icmp eq i64 %584, -2, !dbg !1688
  br i1 %585, label %586, label %608, !dbg !1689

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !1690
  br label %587, !dbg !1692

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !1693
  %589 = load i64, i64* %37, align 8, !dbg !1694
  %590 = add i64 %588, %589, !dbg !1695
  %591 = load i64, i64* %14, align 8, !dbg !1696
  %592 = icmp ult i64 %590, %591, !dbg !1697
  br i1 %592, label %593, label %602, !dbg !1698

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !1699
  %595 = load i64, i64* %31, align 8, !dbg !1700
  %596 = load i64, i64* %37, align 8, !dbg !1701
  %597 = add i64 %595, %596, !dbg !1702
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !1699
  %599 = load i8, i8* %598, align 1, !dbg !1699
  %600 = zext i8 %599 to i32, !dbg !1699
  %601 = icmp ne i32 %600, 0, !dbg !1698
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !1703
  br i1 %603, label %604, label %607, !dbg !1692

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !1704
  %606 = add i64 %605, 1, !dbg !1704
  store i64 %606, i64* %37, align 8, !dbg !1704
  br label %587, !dbg !1692, !llvm.loop !1705

607:                                              ; preds = %602
  br label %647, !dbg !1706

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !1707
  %610 = trunc i8 %609 to i1, !dbg !1707
  br i1 %610, label %611, label %635, !dbg !1710

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !1711
  %613 = icmp eq i32 %612, 2, !dbg !1712
  br i1 %613, label %614, label %635, !dbg !1713

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !1714, metadata !DIExpression()), !dbg !1717
  store i64 1, i64* %42, align 8, !dbg !1717
  br label %615, !dbg !1718

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !1719
  %617 = load i64, i64* %41, align 8, !dbg !1721
  %618 = icmp ult i64 %616, %617, !dbg !1722
  br i1 %618, label %619, label %634, !dbg !1723

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !1724
  %621 = load i64, i64* %31, align 8, !dbg !1725
  %622 = load i64, i64* %37, align 8, !dbg !1726
  %623 = add i64 %621, %622, !dbg !1727
  %624 = load i64, i64* %42, align 8, !dbg !1728
  %625 = add i64 %623, %624, !dbg !1729
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !1724
  %627 = load i8, i8* %626, align 1, !dbg !1724
  %628 = zext i8 %627 to i32, !dbg !1724
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !1730

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !1731

630:                                              ; preds = %619
  br label %631, !dbg !1733

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !1734
  %633 = add i64 %632, 1, !dbg !1734
  store i64 %633, i64* %42, align 8, !dbg !1734
  br label %615, !dbg !1735, !llvm.loop !1736

634:                                              ; preds = %615
  br label %635, !dbg !1738

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !1739
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !1741
  %638 = icmp ne i32 %637, 0, !dbg !1741
  br i1 %638, label %640, label %639, !dbg !1742

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !1743
  br label %640, !dbg !1744

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !1745
  %642 = load i64, i64* %37, align 8, !dbg !1746
  %643 = add i64 %642, %641, !dbg !1746
  store i64 %643, i64* %37, align 8, !dbg !1746
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !1747

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !1748
  %650 = trunc i8 %649 to i1, !dbg !1748
  %651 = zext i1 %650 to i8, !dbg !1749
  store i8 %651, i8* %34, align 1, !dbg !1749
  %652 = load i64, i64* %37, align 8, !dbg !1750
  %653 = icmp ult i64 1, %652, !dbg !1752
  br i1 %653, label %660, label %654, !dbg !1753

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !1754
  %656 = trunc i8 %655 to i1, !dbg !1754
  br i1 %656, label %657, label %848, !dbg !1755

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !1756
  %659 = trunc i8 %658 to i1, !dbg !1756
  br i1 %659, label %848, label %660, !dbg !1757

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !1758, metadata !DIExpression()), !dbg !1760
  %661 = load i64, i64* %31, align 8, !dbg !1761
  %662 = load i64, i64* %37, align 8, !dbg !1762
  %663 = add i64 %661, %662, !dbg !1763
  store i64 %663, i64* %43, align 8, !dbg !1760
  br label %664, !dbg !1764

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !1765
  %666 = trunc i8 %665 to i1, !dbg !1765
  br i1 %666, label %667, label %772, !dbg !1770

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !1771
  %669 = trunc i8 %668 to i1, !dbg !1771
  br i1 %669, label %772, label %670, !dbg !1772

670:                                              ; preds = %667
  br label %671, !dbg !1773

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !1775
  %673 = trunc i8 %672 to i1, !dbg !1775
  br i1 %673, label %674, label %675, !dbg !1778

674:                                              ; preds = %671
  br label %1078, !dbg !1775

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !1778
  %676 = load i32, i32* %15, align 4, !dbg !1779
  %677 = icmp eq i32 %676, 2, !dbg !1779
  br i1 %677, label %678, label %718, !dbg !1779

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !1779
  %680 = trunc i8 %679 to i1, !dbg !1779
  br i1 %680, label %718, label %681, !dbg !1778

681:                                              ; preds = %678
  br label %682, !dbg !1781

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !1783
  %684 = load i64, i64* %12, align 8, !dbg !1783
  %685 = icmp ult i64 %683, %684, !dbg !1783
  br i1 %685, label %686, label %690, !dbg !1786

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !1783
  %688 = load i64, i64* %21, align 8, !dbg !1783
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !1783
  store i8 39, i8* %689, align 1, !dbg !1783
  br label %690, !dbg !1783

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !1786
  %692 = add i64 %691, 1, !dbg !1786
  store i64 %692, i64* %21, align 8, !dbg !1786
  br label %693, !dbg !1786

693:                                              ; preds = %690
  br label %694, !dbg !1781

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !1787
  %696 = load i64, i64* %12, align 8, !dbg !1787
  %697 = icmp ult i64 %695, %696, !dbg !1787
  br i1 %697, label %698, label %702, !dbg !1790

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !1787
  %700 = load i64, i64* %21, align 8, !dbg !1787
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !1787
  store i8 36, i8* %701, align 1, !dbg !1787
  br label %702, !dbg !1787

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !1790
  %704 = add i64 %703, 1, !dbg !1790
  store i64 %704, i64* %21, align 8, !dbg !1790
  br label %705, !dbg !1790

705:                                              ; preds = %702
  br label %706, !dbg !1781

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !1791
  %708 = load i64, i64* %12, align 8, !dbg !1791
  %709 = icmp ult i64 %707, %708, !dbg !1791
  br i1 %709, label %710, label %714, !dbg !1794

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !1791
  %712 = load i64, i64* %21, align 8, !dbg !1791
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !1791
  store i8 39, i8* %713, align 1, !dbg !1791
  br label %714, !dbg !1791

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !1794
  %716 = add i64 %715, 1, !dbg !1794
  store i64 %716, i64* %21, align 8, !dbg !1794
  br label %717, !dbg !1794

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !1781
  br label %718, !dbg !1781

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !1778

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !1795
  %721 = load i64, i64* %12, align 8, !dbg !1795
  %722 = icmp ult i64 %720, %721, !dbg !1795
  br i1 %722, label %723, label %727, !dbg !1798

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !1795
  %725 = load i64, i64* %21, align 8, !dbg !1795
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !1795
  store i8 92, i8* %726, align 1, !dbg !1795
  br label %727, !dbg !1795

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !1798
  %729 = add i64 %728, 1, !dbg !1798
  store i64 %729, i64* %21, align 8, !dbg !1798
  br label %730, !dbg !1798

730:                                              ; preds = %727
  br label %731, !dbg !1778

731:                                              ; preds = %730
  br label %732, !dbg !1799

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !1800
  %734 = load i64, i64* %12, align 8, !dbg !1800
  %735 = icmp ult i64 %733, %734, !dbg !1800
  br i1 %735, label %736, label %745, !dbg !1803

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !1800
  %738 = zext i8 %737 to i32, !dbg !1800
  %739 = ashr i32 %738, 6, !dbg !1800
  %740 = add nsw i32 48, %739, !dbg !1800
  %741 = trunc i32 %740 to i8, !dbg !1800
  %742 = load i8*, i8** %11, align 8, !dbg !1800
  %743 = load i64, i64* %21, align 8, !dbg !1800
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !1800
  store i8 %741, i8* %744, align 1, !dbg !1800
  br label %745, !dbg !1800

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !1803
  %747 = add i64 %746, 1, !dbg !1803
  store i64 %747, i64* %21, align 8, !dbg !1803
  br label %748, !dbg !1803

748:                                              ; preds = %745
  br label %749, !dbg !1804

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !1805
  %751 = load i64, i64* %12, align 8, !dbg !1805
  %752 = icmp ult i64 %750, %751, !dbg !1805
  br i1 %752, label %753, label %763, !dbg !1808

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !1805
  %755 = zext i8 %754 to i32, !dbg !1805
  %756 = ashr i32 %755, 3, !dbg !1805
  %757 = and i32 %756, 7, !dbg !1805
  %758 = add nsw i32 48, %757, !dbg !1805
  %759 = trunc i32 %758 to i8, !dbg !1805
  %760 = load i8*, i8** %11, align 8, !dbg !1805
  %761 = load i64, i64* %21, align 8, !dbg !1805
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !1805
  store i8 %759, i8* %762, align 1, !dbg !1805
  br label %763, !dbg !1805

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !1808
  %765 = add i64 %764, 1, !dbg !1808
  store i64 %765, i64* %21, align 8, !dbg !1808
  br label %766, !dbg !1808

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !1809
  %768 = zext i8 %767 to i32, !dbg !1809
  %769 = and i32 %768, 7, !dbg !1810
  %770 = add nsw i32 48, %769, !dbg !1811
  %771 = trunc i32 %770 to i8, !dbg !1812
  store i8 %771, i8* %35, align 1, !dbg !1813
  br label %789, !dbg !1814

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !1815
  %774 = trunc i8 %773 to i1, !dbg !1815
  br i1 %774, label %775, label %788, !dbg !1817

775:                                              ; preds = %772
  br label %776, !dbg !1818

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !1820
  %778 = load i64, i64* %12, align 8, !dbg !1820
  %779 = icmp ult i64 %777, %778, !dbg !1820
  br i1 %779, label %780, label %784, !dbg !1823

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !1820
  %782 = load i64, i64* %21, align 8, !dbg !1820
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !1820
  store i8 92, i8* %783, align 1, !dbg !1820
  br label %784, !dbg !1820

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !1823
  %786 = add i64 %785, 1, !dbg !1823
  store i64 %786, i64* %21, align 8, !dbg !1823
  br label %787, !dbg !1823

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !1824
  br label %788, !dbg !1825

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !1826
  %791 = load i64, i64* %31, align 8, !dbg !1828
  %792 = add i64 %791, 1, !dbg !1829
  %793 = icmp ule i64 %790, %792, !dbg !1830
  br i1 %793, label %794, label %795, !dbg !1831

794:                                              ; preds = %789
  br label %847, !dbg !1832

795:                                              ; preds = %789
  br label %796, !dbg !1833

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !1834
  %798 = trunc i8 %797 to i1, !dbg !1834
  br i1 %798, label %799, label %827, !dbg !1834

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !1834
  %801 = trunc i8 %800 to i1, !dbg !1834
  br i1 %801, label %827, label %802, !dbg !1837

802:                                              ; preds = %799
  br label %803, !dbg !1838

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !1840
  %805 = load i64, i64* %12, align 8, !dbg !1840
  %806 = icmp ult i64 %804, %805, !dbg !1840
  br i1 %806, label %807, label %811, !dbg !1843

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !1840
  %809 = load i64, i64* %21, align 8, !dbg !1840
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !1840
  store i8 39, i8* %810, align 1, !dbg !1840
  br label %811, !dbg !1840

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !1843
  %813 = add i64 %812, 1, !dbg !1843
  store i64 %813, i64* %21, align 8, !dbg !1843
  br label %814, !dbg !1843

814:                                              ; preds = %811
  br label %815, !dbg !1838

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !1844
  %817 = load i64, i64* %12, align 8, !dbg !1844
  %818 = icmp ult i64 %816, %817, !dbg !1844
  br i1 %818, label %819, label %823, !dbg !1847

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !1844
  %821 = load i64, i64* %21, align 8, !dbg !1844
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !1844
  store i8 39, i8* %822, align 1, !dbg !1844
  br label %823, !dbg !1844

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !1847
  %825 = add i64 %824, 1, !dbg !1847
  store i64 %825, i64* %21, align 8, !dbg !1847
  br label %826, !dbg !1847

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !1838
  br label %827, !dbg !1838

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !1837

828:                                              ; preds = %827
  br label %829, !dbg !1848

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !1849
  %831 = load i64, i64* %12, align 8, !dbg !1849
  %832 = icmp ult i64 %830, %831, !dbg !1849
  br i1 %832, label %833, label %838, !dbg !1852

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !1849
  %835 = load i8*, i8** %11, align 8, !dbg !1849
  %836 = load i64, i64* %21, align 8, !dbg !1849
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !1849
  store i8 %834, i8* %837, align 1, !dbg !1849
  br label %838, !dbg !1849

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !1852
  %840 = add i64 %839, 1, !dbg !1852
  store i64 %840, i64* %21, align 8, !dbg !1852
  br label %841, !dbg !1852

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !1853
  %843 = load i64, i64* %31, align 8, !dbg !1854
  %844 = add i64 %843, 1, !dbg !1854
  store i64 %844, i64* %31, align 8, !dbg !1854
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !1853
  %846 = load i8, i8* %845, align 1, !dbg !1853
  store i8 %846, i8* %35, align 1, !dbg !1855
  br label %664, !dbg !1856, !llvm.loop !1857

847:                                              ; preds = %794
  br label %942, !dbg !1860

848:                                              ; preds = %657, %654
  br label %849, !dbg !1861

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !1862
  %851 = trunc i8 %850 to i1, !dbg !1862
  br i1 %851, label %852, label %855, !dbg !1864

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !1865
  %854 = icmp ne i32 %853, 2, !dbg !1866
  br i1 %854, label %858, label %855, !dbg !1867

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !1868
  %857 = trunc i8 %856 to i1, !dbg !1868
  br i1 %857, label %858, label %875, !dbg !1869

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !1870
  %860 = icmp ne i32* %859, null, !dbg !1870
  br i1 %860, label %861, label %875, !dbg !1871

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !1872
  %863 = load i8, i8* %35, align 1, !dbg !1873
  %864 = zext i8 %863 to i64, !dbg !1873
  %865 = udiv i64 %864, 32, !dbg !1874
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !1872
  %867 = load i32, i32* %866, align 4, !dbg !1872
  %868 = load i8, i8* %35, align 1, !dbg !1875
  %869 = zext i8 %868 to i64, !dbg !1875
  %870 = urem i64 %869, 32, !dbg !1876
  %871 = trunc i64 %870 to i32, !dbg !1877
  %872 = lshr i32 %867, %871, !dbg !1877
  %873 = and i32 %872, 1, !dbg !1878
  %874 = icmp ne i32 %873, 0, !dbg !1878
  br i1 %874, label %879, label %875, !dbg !1879

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !1880
  %877 = trunc i8 %876 to i1, !dbg !1880
  br i1 %877, label %879, label %878, !dbg !1881

878:                                              ; preds = %875
  br label %942, !dbg !1882

879:                                              ; preds = %875, %861
  br label %880, !dbg !1880

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !1883), !dbg !1884
  br label %881, !dbg !1885

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !1886
  %883 = trunc i8 %882 to i1, !dbg !1886
  br i1 %883, label %884, label %885, !dbg !1889

884:                                              ; preds = %881
  br label %1078, !dbg !1886

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !1889
  %886 = load i32, i32* %15, align 4, !dbg !1890
  %887 = icmp eq i32 %886, 2, !dbg !1890
  br i1 %887, label %888, label %928, !dbg !1890

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !1890
  %890 = trunc i8 %889 to i1, !dbg !1890
  br i1 %890, label %928, label %891, !dbg !1889

891:                                              ; preds = %888
  br label %892, !dbg !1892

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !1894
  %894 = load i64, i64* %12, align 8, !dbg !1894
  %895 = icmp ult i64 %893, %894, !dbg !1894
  br i1 %895, label %896, label %900, !dbg !1897

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !1894
  %898 = load i64, i64* %21, align 8, !dbg !1894
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !1894
  store i8 39, i8* %899, align 1, !dbg !1894
  br label %900, !dbg !1894

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !1897
  %902 = add i64 %901, 1, !dbg !1897
  store i64 %902, i64* %21, align 8, !dbg !1897
  br label %903, !dbg !1897

903:                                              ; preds = %900
  br label %904, !dbg !1892

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !1898
  %906 = load i64, i64* %12, align 8, !dbg !1898
  %907 = icmp ult i64 %905, %906, !dbg !1898
  br i1 %907, label %908, label %912, !dbg !1901

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !1898
  %910 = load i64, i64* %21, align 8, !dbg !1898
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !1898
  store i8 36, i8* %911, align 1, !dbg !1898
  br label %912, !dbg !1898

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !1901
  %914 = add i64 %913, 1, !dbg !1901
  store i64 %914, i64* %21, align 8, !dbg !1901
  br label %915, !dbg !1901

915:                                              ; preds = %912
  br label %916, !dbg !1892

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !1902
  %918 = load i64, i64* %12, align 8, !dbg !1902
  %919 = icmp ult i64 %917, %918, !dbg !1902
  br i1 %919, label %920, label %924, !dbg !1905

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !1902
  %922 = load i64, i64* %21, align 8, !dbg !1902
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !1902
  store i8 39, i8* %923, align 1, !dbg !1902
  br label %924, !dbg !1902

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !1905
  %926 = add i64 %925, 1, !dbg !1905
  store i64 %926, i64* %21, align 8, !dbg !1905
  br label %927, !dbg !1905

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !1892
  br label %928, !dbg !1892

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !1889

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !1906
  %931 = load i64, i64* %12, align 8, !dbg !1906
  %932 = icmp ult i64 %930, %931, !dbg !1906
  br i1 %932, label %933, label %937, !dbg !1909

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !1906
  %935 = load i64, i64* %21, align 8, !dbg !1906
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !1906
  store i8 92, i8* %936, align 1, !dbg !1906
  br label %937, !dbg !1906

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !1909
  %939 = add i64 %938, 1, !dbg !1909
  store i64 %939, i64* %21, align 8, !dbg !1909
  br label %940, !dbg !1909

940:                                              ; preds = %937
  br label %941, !dbg !1889

941:                                              ; preds = %940
  br label %942, !dbg !1889

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !1910), !dbg !1911
  br label %943, !dbg !1912

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !1913
  %945 = trunc i8 %944 to i1, !dbg !1913
  br i1 %945, label %946, label %974, !dbg !1913

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !1913
  %948 = trunc i8 %947 to i1, !dbg !1913
  br i1 %948, label %974, label %949, !dbg !1916

949:                                              ; preds = %946
  br label %950, !dbg !1917

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !1919
  %952 = load i64, i64* %12, align 8, !dbg !1919
  %953 = icmp ult i64 %951, %952, !dbg !1919
  br i1 %953, label %954, label %958, !dbg !1922

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !1919
  %956 = load i64, i64* %21, align 8, !dbg !1919
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !1919
  store i8 39, i8* %957, align 1, !dbg !1919
  br label %958, !dbg !1919

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !1922
  %960 = add i64 %959, 1, !dbg !1922
  store i64 %960, i64* %21, align 8, !dbg !1922
  br label %961, !dbg !1922

961:                                              ; preds = %958
  br label %962, !dbg !1917

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !1923
  %964 = load i64, i64* %12, align 8, !dbg !1923
  %965 = icmp ult i64 %963, %964, !dbg !1923
  br i1 %965, label %966, label %970, !dbg !1926

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !1923
  %968 = load i64, i64* %21, align 8, !dbg !1923
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !1923
  store i8 39, i8* %969, align 1, !dbg !1923
  br label %970, !dbg !1923

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !1926
  %972 = add i64 %971, 1, !dbg !1926
  store i64 %972, i64* %21, align 8, !dbg !1926
  br label %973, !dbg !1926

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !1917
  br label %974, !dbg !1917

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !1916

975:                                              ; preds = %974
  br label %976, !dbg !1927

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !1928
  %978 = load i64, i64* %12, align 8, !dbg !1928
  %979 = icmp ult i64 %977, %978, !dbg !1928
  br i1 %979, label %980, label %985, !dbg !1931

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !1928
  %982 = load i8*, i8** %11, align 8, !dbg !1928
  %983 = load i64, i64* %21, align 8, !dbg !1928
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !1928
  store i8 %981, i8* %984, align 1, !dbg !1928
  br label %985, !dbg !1928

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !1931
  %987 = add i64 %986, 1, !dbg !1931
  store i64 %987, i64* %21, align 8, !dbg !1931
  br label %988, !dbg !1931

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !1932
  %990 = trunc i8 %989 to i1, !dbg !1932
  br i1 %990, label %992, label %991, !dbg !1934

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !1935
  br label %992, !dbg !1936

992:                                              ; preds = %991, %988
  br label %993, !dbg !1937

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !1938
  %995 = add i64 %994, 1, !dbg !1938
  store i64 %995, i64* %31, align 8, !dbg !1938
  br label %139, !dbg !1939, !llvm.loop !1940

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !1942
  %998 = icmp eq i64 %997, 0, !dbg !1944
  br i1 %998, label %999, label %1006, !dbg !1945

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !1946
  %1001 = icmp eq i32 %1000, 2, !dbg !1947
  br i1 %1001, label %1002, label %1006, !dbg !1948

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !1949
  %1004 = trunc i8 %1003 to i1, !dbg !1949
  br i1 %1004, label %1005, label %1006, !dbg !1950

1005:                                             ; preds = %1002
  br label %1078, !dbg !1951

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !1952
  %1008 = icmp eq i32 %1007, 2, !dbg !1954
  br i1 %1008, label %1009, label %1038, !dbg !1955

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !1956
  %1011 = trunc i8 %1010 to i1, !dbg !1956
  br i1 %1011, label %1038, label %1012, !dbg !1957

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !1958
  %1014 = trunc i8 %1013 to i1, !dbg !1958
  br i1 %1014, label %1015, label %1038, !dbg !1959

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !1960
  %1017 = trunc i8 %1016 to i1, !dbg !1960
  br i1 %1017, label %1018, label %1028, !dbg !1963

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !1964
  %1020 = load i64, i64* %22, align 8, !dbg !1965
  %1021 = load i8*, i8** %13, align 8, !dbg !1966
  %1022 = load i64, i64* %14, align 8, !dbg !1967
  %1023 = load i32, i32* %16, align 4, !dbg !1968
  %1024 = load i32*, i32** %17, align 8, !dbg !1969
  %1025 = load i8*, i8** %18, align 8, !dbg !1970
  %1026 = load i8*, i8** %19, align 8, !dbg !1971
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !1972
  store i64 %1027, i64* %10, align 8, !dbg !1973
  br label %1096, !dbg !1973

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !1974
  %1030 = icmp ne i64 %1029, 0, !dbg !1974
  br i1 %1030, label %1036, label %1031, !dbg !1976

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !1977
  %1033 = icmp ne i64 %1032, 0, !dbg !1977
  br i1 %1033, label %1034, label %1036, !dbg !1978

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !1979
  store i64 %1035, i64* %12, align 8, !dbg !1981
  store i64 0, i64* %21, align 8, !dbg !1982
  br label %51, !dbg !1983

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !1984

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !1985
  %1040 = icmp ne i8* %1039, null, !dbg !1985
  br i1 %1040, label %1041, label %1068, !dbg !1987

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !1988
  %1043 = trunc i8 %1042 to i1, !dbg !1988
  br i1 %1043, label %1068, label %1044, !dbg !1989

1044:                                             ; preds = %1041
  br label %1045, !dbg !1990

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !1991
  %1047 = load i8, i8* %1046, align 1, !dbg !1994
  %1048 = icmp ne i8 %1047, 0, !dbg !1995
  br i1 %1048, label %1049, label %1067, !dbg !1995

1049:                                             ; preds = %1045
  br label %1050, !dbg !1996

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !1997
  %1052 = load i64, i64* %12, align 8, !dbg !1997
  %1053 = icmp ult i64 %1051, %1052, !dbg !1997
  br i1 %1053, label %1054, label %1060, !dbg !2000

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !1997
  %1056 = load i8, i8* %1055, align 1, !dbg !1997
  %1057 = load i8*, i8** %11, align 8, !dbg !1997
  %1058 = load i64, i64* %21, align 8, !dbg !1997
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !1997
  store i8 %1056, i8* %1059, align 1, !dbg !1997
  br label %1060, !dbg !1997

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2000
  %1062 = add i64 %1061, 1, !dbg !2000
  store i64 %1062, i64* %21, align 8, !dbg !2000
  br label %1063, !dbg !2000

1063:                                             ; preds = %1060
  br label %1064, !dbg !2000

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2001
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2001
  store i8* %1066, i8** %23, align 8, !dbg !2001
  br label %1045, !dbg !2002, !llvm.loop !2003

1067:                                             ; preds = %1045
  br label %1068, !dbg !2004

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2005
  %1070 = load i64, i64* %12, align 8, !dbg !2007
  %1071 = icmp ult i64 %1069, %1070, !dbg !2008
  br i1 %1071, label %1072, label %1076, !dbg !2009

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2010
  %1074 = load i64, i64* %21, align 8, !dbg !2011
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2010
  store i8 0, i8* %1075, align 1, !dbg !2012
  br label %1076, !dbg !2010

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2013
  store i64 %1077, i64* %10, align 8, !dbg !2014
  br label %1096, !dbg !2014

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2015), !dbg !2016
  %1079 = load i32, i32* %15, align 4, !dbg !2017
  %1080 = icmp eq i32 %1079, 2, !dbg !2019
  br i1 %1080, label %1081, label %1085, !dbg !2020

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2021
  %1083 = trunc i8 %1082 to i1, !dbg !2021
  br i1 %1083, label %1084, label %1085, !dbg !2022

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2023
  br label %1085, !dbg !2024

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2025
  %1087 = load i64, i64* %12, align 8, !dbg !2026
  %1088 = load i8*, i8** %13, align 8, !dbg !2027
  %1089 = load i64, i64* %14, align 8, !dbg !2028
  %1090 = load i32, i32* %15, align 4, !dbg !2029
  %1091 = load i32, i32* %16, align 4, !dbg !2030
  %1092 = and i32 %1091, -3, !dbg !2031
  %1093 = load i8*, i8** %18, align 8, !dbg !2032
  %1094 = load i8*, i8** %19, align 8, !dbg !2033
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2034
  store i64 %1095, i64* %10, align 8, !dbg !2035
  br label %1096, !dbg !2035

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2036
  ret i64 %1097, !dbg !2036
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !177 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2037, metadata !DIExpression()), !dbg !2038
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2039, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2041, metadata !DIExpression()), !dbg !2042
  %9 = load i8*, i8** %4, align 8, !dbg !2043
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.96, i64 0, i64 0), i8* noundef %9) #18, !dbg !2043
  store i8* %10, i8** %6, align 8, !dbg !2042
  %11 = load i8*, i8** %6, align 8, !dbg !2044
  %12 = load i8*, i8** %4, align 8, !dbg !2046
  %13 = icmp ne i8* %11, %12, !dbg !2047
  br i1 %13, label %14, label %16, !dbg !2048

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2049
  store i8* %15, i8** %3, align 8, !dbg !2050
  br label %37, !dbg !2050

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2051, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2053, metadata !DIExpression()), !dbg !2054
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2055
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2056
  %18 = icmp eq i64 %17, 3, !dbg !2058
  br i1 %18, label %19, label %32, !dbg !2059

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2060
  %21 = icmp eq i32 %20, 8216, !dbg !2061
  br i1 %21, label %22, label %32, !dbg !2062

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2063
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2063
  %25 = load i8, i8* %24, align 1, !dbg !2063
  %26 = zext i8 %25 to i32, !dbg !2063
  %27 = icmp eq i32 %26, 39, !dbg !2064
  %28 = zext i1 %27 to i32, !dbg !2064
  %29 = sext i32 %28 to i64, !dbg !2065
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2065
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2065
  store i8* %31, i8** %3, align 8, !dbg !2066
  br label %37, !dbg !2066

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2067
  %34 = icmp eq i32 %33, 9, !dbg !2068
  %35 = zext i1 %34 to i64, !dbg !2067
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.93, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), !dbg !2067
  store i8* %36, i8** %3, align 8, !dbg !2069
  br label %37, !dbg !2069

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2070
  ret i8* %38, !dbg !2070
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2071 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2074, metadata !DIExpression()), !dbg !2075
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2076, metadata !DIExpression()), !dbg !2077
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2078, metadata !DIExpression()), !dbg !2079
  %7 = load i8*, i8** %4, align 8, !dbg !2080
  %8 = load i64, i64* %5, align 8, !dbg !2081
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2082
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2083
  ret i8* %10, !dbg !2084
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2085 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2088, metadata !DIExpression()), !dbg !2089
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2090, metadata !DIExpression()), !dbg !2091
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2092, metadata !DIExpression()), !dbg !2093
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2094, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2096, metadata !DIExpression()), !dbg !2097
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2098
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2098
  br i1 %15, label %16, label %18, !dbg !2098

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2099
  br label %19, !dbg !2098

18:                                               ; preds = %4
  br label %19, !dbg !2098

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2098
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2097
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2100, metadata !DIExpression()), !dbg !2101
  %21 = call i32* @__errno_location() #21, !dbg !2102
  %22 = load i32, i32* %21, align 4, !dbg !2102
  store i32 %22, i32* %10, align 4, !dbg !2101
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2103, metadata !DIExpression()), !dbg !2104
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2105
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2106
  %25 = load i32, i32* %24, align 4, !dbg !2106
  %26 = load i64*, i64** %7, align 8, !dbg !2107
  %27 = icmp ne i64* %26, null, !dbg !2107
  %28 = zext i1 %27 to i64, !dbg !2107
  %29 = select i1 %27, i32 0, i32 1, !dbg !2107
  %30 = or i32 %25, %29, !dbg !2108
  store i32 %30, i32* %11, align 4, !dbg !2104
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2109, metadata !DIExpression()), !dbg !2110
  %31 = load i8*, i8** %5, align 8, !dbg !2111
  %32 = load i64, i64* %6, align 8, !dbg !2112
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2113
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2114
  %35 = load i32, i32* %34, align 8, !dbg !2114
  %36 = load i32, i32* %11, align 4, !dbg !2115
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2116
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2117
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2116
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2118
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2119
  %42 = load i8*, i8** %41, align 8, !dbg !2119
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2120
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2121
  %45 = load i8*, i8** %44, align 8, !dbg !2121
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2122
  %47 = add i64 %46, 1, !dbg !2123
  store i64 %47, i64* %12, align 8, !dbg !2110
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2124, metadata !DIExpression()), !dbg !2125
  %48 = load i64, i64* %12, align 8, !dbg !2126
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2127
  store i8* %49, i8** %13, align 8, !dbg !2125
  %50 = load i8*, i8** %13, align 8, !dbg !2128
  %51 = load i64, i64* %12, align 8, !dbg !2129
  %52 = load i8*, i8** %5, align 8, !dbg !2130
  %53 = load i64, i64* %6, align 8, !dbg !2131
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2132
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2133
  %56 = load i32, i32* %55, align 8, !dbg !2133
  %57 = load i32, i32* %11, align 4, !dbg !2134
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2135
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2136
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2135
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2137
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2138
  %63 = load i8*, i8** %62, align 8, !dbg !2138
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2139
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2140
  %66 = load i8*, i8** %65, align 8, !dbg !2140
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2141
  %68 = load i32, i32* %10, align 4, !dbg !2142
  %69 = call i32* @__errno_location() #21, !dbg !2143
  store i32 %68, i32* %69, align 4, !dbg !2144
  %70 = load i64*, i64** %7, align 8, !dbg !2145
  %71 = icmp ne i64* %70, null, !dbg !2145
  br i1 %71, label %72, label %76, !dbg !2147

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2148
  %74 = sub i64 %73, 1, !dbg !2149
  %75 = load i64*, i64** %7, align 8, !dbg !2150
  store i64 %74, i64* %75, align 8, !dbg !2151
  br label %76, !dbg !2152

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2153
  ret i8* %77, !dbg !2154
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2155 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2156, metadata !DIExpression()), !dbg !2157
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2158
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2157
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2159, metadata !DIExpression()), !dbg !2161
  store i32 1, i32* %2, align 4, !dbg !2161
  br label %4, !dbg !2162

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2163
  %6 = load i32, i32* @nslots, align 4, !dbg !2165
  %7 = icmp slt i32 %5, %6, !dbg !2166
  br i1 %7, label %8, label %18, !dbg !2167

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2168
  %10 = load i32, i32* %2, align 4, !dbg !2169
  %11 = sext i32 %10 to i64, !dbg !2168
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2168
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2170
  %14 = load i8*, i8** %13, align 8, !dbg !2170
  call void @free(i8* noundef %14) #18, !dbg !2171
  br label %15, !dbg !2171

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2172
  %17 = add nsw i32 %16, 1, !dbg !2172
  store i32 %17, i32* %2, align 4, !dbg !2172
  br label %4, !dbg !2173, !llvm.loop !2174

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2176
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2176
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2178
  %22 = load i8*, i8** %21, align 8, !dbg !2178
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2179
  br i1 %23, label %24, label %29, !dbg !2180

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2181
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2181
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2183
  %28 = load i8*, i8** %27, align 8, !dbg !2183
  call void @free(i8* noundef %28) #18, !dbg !2184
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2185
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2186
  br label %29, !dbg !2187

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2188
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2190
  br i1 %31, label %32, label %35, !dbg !2191

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2192
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2192
  call void @free(i8* noundef %34) #18, !dbg !2194
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2195
  br label %35, !dbg !2196

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2197
  ret void, !dbg !2198
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2199 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2202, metadata !DIExpression()), !dbg !2203
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2204, metadata !DIExpression()), !dbg !2205
  %5 = load i32, i32* %3, align 4, !dbg !2206
  %6 = load i8*, i8** %4, align 8, !dbg !2207
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2208
  ret i8* %7, !dbg !2209
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2210 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2213, metadata !DIExpression()), !dbg !2214
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2215, metadata !DIExpression()), !dbg !2216
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2217, metadata !DIExpression()), !dbg !2218
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2219, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2221, metadata !DIExpression()), !dbg !2222
  %18 = call i32* @__errno_location() #21, !dbg !2223
  %19 = load i32, i32* %18, align 4, !dbg !2223
  store i32 %19, i32* %9, align 4, !dbg !2222
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2224, metadata !DIExpression()), !dbg !2225
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2226
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2225
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2227, metadata !DIExpression()), !dbg !2228
  store i32 2147483647, i32* %11, align 4, !dbg !2228
  %21 = load i32, i32* %5, align 4, !dbg !2229
  %22 = icmp sle i32 0, %21, !dbg !2231
  br i1 %22, label %23, label %27, !dbg !2232

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2233
  %25 = load i32, i32* %11, align 4, !dbg !2234
  %26 = icmp slt i32 %24, %25, !dbg !2235
  br i1 %26, label %28, label %27, !dbg !2236

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2237
  unreachable, !dbg !2237

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2238
  %30 = load i32, i32* %5, align 4, !dbg !2240
  %31 = icmp sle i32 %29, %30, !dbg !2241
  br i1 %31, label %32, label %73, !dbg !2242

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2243, metadata !DIExpression()), !dbg !2245
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2246
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2247
  %35 = zext i1 %34 to i8, !dbg !2245
  store i8 %35, i8* %12, align 1, !dbg !2245
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2248, metadata !DIExpression()), !dbg !2249
  %36 = load i32, i32* @nslots, align 4, !dbg !2250
  %37 = sext i32 %36 to i64, !dbg !2250
  store i64 %37, i64* %13, align 8, !dbg !2249
  %38 = load i8, i8* %12, align 1, !dbg !2251
  %39 = trunc i8 %38 to i1, !dbg !2251
  br i1 %39, label %40, label %41, !dbg !2251

40:                                               ; preds = %32
  br label %43, !dbg !2251

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2252
  br label %43, !dbg !2251

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2251
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2251
  %46 = load i32, i32* %5, align 4, !dbg !2253
  %47 = load i32, i32* @nslots, align 4, !dbg !2254
  %48 = sub nsw i32 %46, %47, !dbg !2255
  %49 = add nsw i32 %48, 1, !dbg !2256
  %50 = sext i32 %49 to i64, !dbg !2253
  %51 = load i32, i32* %11, align 4, !dbg !2257
  %52 = sext i32 %51 to i64, !dbg !2257
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2258
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2258
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2259
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2260
  %55 = load i8, i8* %12, align 1, !dbg !2261
  %56 = trunc i8 %55 to i1, !dbg !2261
  br i1 %56, label %57, label %60, !dbg !2263

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2264
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2265
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2265
  br label %60, !dbg !2266

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2267
  %62 = load i32, i32* @nslots, align 4, !dbg !2268
  %63 = sext i32 %62 to i64, !dbg !2269
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2269
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2270
  %66 = load i64, i64* %13, align 8, !dbg !2271
  %67 = load i32, i32* @nslots, align 4, !dbg !2272
  %68 = sext i32 %67 to i64, !dbg !2272
  %69 = sub nsw i64 %66, %68, !dbg !2273
  %70 = mul i64 %69, 16, !dbg !2274
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2270
  %71 = load i64, i64* %13, align 8, !dbg !2275
  %72 = trunc i64 %71 to i32, !dbg !2275
  store i32 %72, i32* @nslots, align 4, !dbg !2276
  br label %73, !dbg !2277

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2278, metadata !DIExpression()), !dbg !2280
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2281
  %75 = load i32, i32* %5, align 4, !dbg !2282
  %76 = sext i32 %75 to i64, !dbg !2281
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2281
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2283
  %79 = load i64, i64* %78, align 8, !dbg !2283
  store i64 %79, i64* %14, align 8, !dbg !2280
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2284, metadata !DIExpression()), !dbg !2285
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2286
  %81 = load i32, i32* %5, align 4, !dbg !2287
  %82 = sext i32 %81 to i64, !dbg !2286
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2286
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2288
  %85 = load i8*, i8** %84, align 8, !dbg !2288
  store i8* %85, i8** %15, align 8, !dbg !2285
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2289, metadata !DIExpression()), !dbg !2290
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2291
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2292
  %88 = load i32, i32* %87, align 4, !dbg !2292
  %89 = or i32 %88, 1, !dbg !2293
  store i32 %89, i32* %16, align 4, !dbg !2290
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2294, metadata !DIExpression()), !dbg !2295
  %90 = load i8*, i8** %15, align 8, !dbg !2296
  %91 = load i64, i64* %14, align 8, !dbg !2297
  %92 = load i8*, i8** %6, align 8, !dbg !2298
  %93 = load i64, i64* %7, align 8, !dbg !2299
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2300
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2301
  %96 = load i32, i32* %95, align 8, !dbg !2301
  %97 = load i32, i32* %16, align 4, !dbg !2302
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2303
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2304
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2303
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2305
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2306
  %103 = load i8*, i8** %102, align 8, !dbg !2306
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2307
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2308
  %106 = load i8*, i8** %105, align 8, !dbg !2308
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2309
  store i64 %107, i64* %17, align 8, !dbg !2295
  %108 = load i64, i64* %14, align 8, !dbg !2310
  %109 = load i64, i64* %17, align 8, !dbg !2312
  %110 = icmp ule i64 %108, %109, !dbg !2313
  br i1 %110, label %111, label %149, !dbg !2314

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2315
  %113 = add i64 %112, 1, !dbg !2317
  store i64 %113, i64* %14, align 8, !dbg !2318
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2319
  %115 = load i32, i32* %5, align 4, !dbg !2320
  %116 = sext i32 %115 to i64, !dbg !2319
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2319
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2321
  store i64 %113, i64* %118, align 8, !dbg !2322
  %119 = load i8*, i8** %15, align 8, !dbg !2323
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2325
  br i1 %120, label %121, label %123, !dbg !2326

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2327
  call void @free(i8* noundef %122) #18, !dbg !2328
  br label %123, !dbg !2328

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2329
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2330
  store i8* %125, i8** %15, align 8, !dbg !2331
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2332
  %127 = load i32, i32* %5, align 4, !dbg !2333
  %128 = sext i32 %127 to i64, !dbg !2332
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2332
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2334
  store i8* %125, i8** %130, align 8, !dbg !2335
  %131 = load i8*, i8** %15, align 8, !dbg !2336
  %132 = load i64, i64* %14, align 8, !dbg !2337
  %133 = load i8*, i8** %6, align 8, !dbg !2338
  %134 = load i64, i64* %7, align 8, !dbg !2339
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2340
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2341
  %137 = load i32, i32* %136, align 8, !dbg !2341
  %138 = load i32, i32* %16, align 4, !dbg !2342
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2343
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2344
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2343
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2345
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2346
  %144 = load i8*, i8** %143, align 8, !dbg !2346
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2347
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2348
  %147 = load i8*, i8** %146, align 8, !dbg !2348
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2349
  br label %149, !dbg !2350

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2351
  %151 = call i32* @__errno_location() #21, !dbg !2352
  store i32 %150, i32* %151, align 4, !dbg !2353
  %152 = load i8*, i8** %15, align 8, !dbg !2354
  ret i8* %152, !dbg !2355
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2356 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2359, metadata !DIExpression()), !dbg !2360
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2361, metadata !DIExpression()), !dbg !2362
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2363, metadata !DIExpression()), !dbg !2364
  %7 = load i32, i32* %4, align 4, !dbg !2365
  %8 = load i8*, i8** %5, align 8, !dbg !2366
  %9 = load i64, i64* %6, align 8, !dbg !2367
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2368
  ret i8* %10, !dbg !2369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2370 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2373, metadata !DIExpression()), !dbg !2374
  %3 = load i8*, i8** %2, align 8, !dbg !2375
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2376
  ret i8* %4, !dbg !2377
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2378 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2381, metadata !DIExpression()), !dbg !2382
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2383, metadata !DIExpression()), !dbg !2384
  %5 = load i8*, i8** %3, align 8, !dbg !2385
  %6 = load i64, i64* %4, align 8, !dbg !2386
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2387
  ret i8* %7, !dbg !2388
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2389 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2392, metadata !DIExpression()), !dbg !2393
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2394, metadata !DIExpression()), !dbg !2395
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2396, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2398, metadata !DIExpression()), !dbg !2399
  %8 = load i32, i32* %5, align 4, !dbg !2400
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2401
  %9 = load i32, i32* %4, align 4, !dbg !2402
  %10 = load i8*, i8** %6, align 8, !dbg !2403
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2404
  ret i8* %11, !dbg !2405
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2406 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2409, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2411, metadata !DIExpression()), !dbg !2412
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2412
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2412
  %5 = load i32, i32* %3, align 4, !dbg !2413
  %6 = icmp eq i32 %5, 10, !dbg !2415
  br i1 %6, label %7, label %8, !dbg !2416

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2417
  unreachable, !dbg !2417

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2418
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2419
  store i32 %9, i32* %10, align 8, !dbg !2420
  ret void, !dbg !2421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2422 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2425, metadata !DIExpression()), !dbg !2426
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2427, metadata !DIExpression()), !dbg !2428
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2429, metadata !DIExpression()), !dbg !2430
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2431, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2433, metadata !DIExpression()), !dbg !2434
  %10 = load i32, i32* %6, align 4, !dbg !2435
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2436
  %11 = load i32, i32* %5, align 4, !dbg !2437
  %12 = load i8*, i8** %7, align 8, !dbg !2438
  %13 = load i64, i64* %8, align 8, !dbg !2439
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2440
  ret i8* %14, !dbg !2441
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2442 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2445, metadata !DIExpression()), !dbg !2446
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2447, metadata !DIExpression()), !dbg !2448
  %5 = load i32, i32* %3, align 4, !dbg !2449
  %6 = load i8*, i8** %4, align 8, !dbg !2450
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2451
  ret i8* %7, !dbg !2452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2453 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2456, metadata !DIExpression()), !dbg !2457
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2458, metadata !DIExpression()), !dbg !2459
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2460, metadata !DIExpression()), !dbg !2461
  %7 = load i32, i32* %4, align 4, !dbg !2462
  %8 = load i8*, i8** %5, align 8, !dbg !2463
  %9 = load i64, i64* %6, align 8, !dbg !2464
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2465
  ret i8* %10, !dbg !2466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2467 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2470, metadata !DIExpression()), !dbg !2471
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2472, metadata !DIExpression()), !dbg !2473
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2474, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2476, metadata !DIExpression()), !dbg !2477
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2478
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2478
  %9 = load i8, i8* %6, align 1, !dbg !2479
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2480
  %11 = load i8*, i8** %4, align 8, !dbg !2481
  %12 = load i64, i64* %5, align 8, !dbg !2482
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2483
  ret i8* %13, !dbg !2484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2485 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2488, metadata !DIExpression()), !dbg !2489
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2490, metadata !DIExpression()), !dbg !2491
  %5 = load i8*, i8** %3, align 8, !dbg !2492
  %6 = load i8, i8* %4, align 1, !dbg !2493
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2494
  ret i8* %7, !dbg !2495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2496 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2497, metadata !DIExpression()), !dbg !2498
  %3 = load i8*, i8** %2, align 8, !dbg !2499
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2500
  ret i8* %4, !dbg !2501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2502 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2503, metadata !DIExpression()), !dbg !2504
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2505, metadata !DIExpression()), !dbg !2506
  %5 = load i8*, i8** %3, align 8, !dbg !2507
  %6 = load i64, i64* %4, align 8, !dbg !2508
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2509
  ret i8* %7, !dbg !2510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2511 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2512, metadata !DIExpression()), !dbg !2513
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2514, metadata !DIExpression()), !dbg !2515
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2516, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2518, metadata !DIExpression()), !dbg !2519
  %9 = load i32, i32* %5, align 4, !dbg !2520
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2521
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2521
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2521
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2521
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2522
  %13 = load i32, i32* %4, align 4, !dbg !2523
  %14 = load i8*, i8** %6, align 8, !dbg !2524
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2525
  ret i8* %15, !dbg !2526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2527 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2530, metadata !DIExpression()), !dbg !2531
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2532, metadata !DIExpression()), !dbg !2533
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2534, metadata !DIExpression()), !dbg !2535
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2536, metadata !DIExpression()), !dbg !2537
  %9 = load i32, i32* %5, align 4, !dbg !2538
  %10 = load i8*, i8** %6, align 8, !dbg !2539
  %11 = load i8*, i8** %7, align 8, !dbg !2540
  %12 = load i8*, i8** %8, align 8, !dbg !2541
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2542
  ret i8* %13, !dbg !2543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2544 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2547, metadata !DIExpression()), !dbg !2548
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2549, metadata !DIExpression()), !dbg !2550
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2551, metadata !DIExpression()), !dbg !2552
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2553, metadata !DIExpression()), !dbg !2554
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2555, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2557, metadata !DIExpression()), !dbg !2558
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2559
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2559
  %13 = load i8*, i8** %7, align 8, !dbg !2560
  %14 = load i8*, i8** %8, align 8, !dbg !2561
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2562
  %15 = load i32, i32* %6, align 4, !dbg !2563
  %16 = load i8*, i8** %9, align 8, !dbg !2564
  %17 = load i64, i64* %10, align 8, !dbg !2565
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2566
  ret i8* %18, !dbg !2567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2568 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2571, metadata !DIExpression()), !dbg !2572
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2573, metadata !DIExpression()), !dbg !2574
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2575, metadata !DIExpression()), !dbg !2576
  %7 = load i8*, i8** %4, align 8, !dbg !2577
  %8 = load i8*, i8** %5, align 8, !dbg !2578
  %9 = load i8*, i8** %6, align 8, !dbg !2579
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2580
  ret i8* %10, !dbg !2581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2582 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2585, metadata !DIExpression()), !dbg !2586
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2587, metadata !DIExpression()), !dbg !2588
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2589, metadata !DIExpression()), !dbg !2590
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2591, metadata !DIExpression()), !dbg !2592
  %9 = load i8*, i8** %5, align 8, !dbg !2593
  %10 = load i8*, i8** %6, align 8, !dbg !2594
  %11 = load i8*, i8** %7, align 8, !dbg !2595
  %12 = load i64, i64* %8, align 8, !dbg !2596
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2597
  ret i8* %13, !dbg !2598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2599 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2602, metadata !DIExpression()), !dbg !2603
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2604, metadata !DIExpression()), !dbg !2605
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2606, metadata !DIExpression()), !dbg !2607
  %7 = load i32, i32* %4, align 4, !dbg !2608
  %8 = load i8*, i8** %5, align 8, !dbg !2609
  %9 = load i64, i64* %6, align 8, !dbg !2610
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2611
  ret i8* %10, !dbg !2612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2613 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2616, metadata !DIExpression()), !dbg !2617
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2618, metadata !DIExpression()), !dbg !2619
  %5 = load i8*, i8** %3, align 8, !dbg !2620
  %6 = load i64, i64* %4, align 8, !dbg !2621
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2622
  ret i8* %7, !dbg !2623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2624 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2627, metadata !DIExpression()), !dbg !2628
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2629, metadata !DIExpression()), !dbg !2630
  %5 = load i32, i32* %3, align 4, !dbg !2631
  %6 = load i8*, i8** %4, align 8, !dbg !2632
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2633
  ret i8* %7, !dbg !2634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !2635 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2638, metadata !DIExpression()), !dbg !2639
  %3 = load i8*, i8** %2, align 8, !dbg !2640
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !2641
  ret i8* %4, !dbg !2642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !2643 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2647, metadata !DIExpression()), !dbg !2648
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2649, metadata !DIExpression()), !dbg !2650
  %5 = load i8*, i8** %3, align 8, !dbg !2651
  %6 = load i8*, i8** %4, align 8, !dbg !2652
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !2653
  %8 = icmp ne i32 %7, 0, !dbg !2654
  %9 = xor i1 %8, true, !dbg !2654
  ret i1 %9, !dbg !2655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !2656 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !2713, metadata !DIExpression()), !dbg !2714
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2715, metadata !DIExpression()), !dbg !2716
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2717, metadata !DIExpression()), !dbg !2718
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2719, metadata !DIExpression()), !dbg !2720
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2721, metadata !DIExpression()), !dbg !2722
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2723, metadata !DIExpression()), !dbg !2724
  %13 = load i8*, i8** %8, align 8, !dbg !2725
  %14 = icmp ne i8* %13, null, !dbg !2725
  br i1 %14, label %15, label %21, !dbg !2727

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2728
  %17 = load i8*, i8** %8, align 8, !dbg !2729
  %18 = load i8*, i8** %9, align 8, !dbg !2730
  %19 = load i8*, i8** %10, align 8, !dbg !2731
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !2732
  br label %26, !dbg !2732

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2733
  %23 = load i8*, i8** %9, align 8, !dbg !2734
  %24 = load i8*, i8** %10, align 8, !dbg !2735
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.104, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !2736
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2737
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.106, i64 0, i64 0)) #18, !dbg !2738
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !2739
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2740
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.107, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !2740
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2741
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.108, i64 0, i64 0)) #18, !dbg !2742
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.109, i64 0, i64 0)), !dbg !2743
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2744
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.107, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !2744
  %37 = load i64, i64* %12, align 8, !dbg !2745
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
  ], !dbg !2746

38:                                               ; preds = %26
  br label %241, !dbg !2747

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2749
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.110, i64 0, i64 0)) #18, !dbg !2750
  %42 = load i8**, i8*** %11, align 8, !dbg !2751
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !2751
  %44 = load i8*, i8** %43, align 8, !dbg !2751
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !2752
  br label %241, !dbg !2753

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2754
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.111, i64 0, i64 0)) #18, !dbg !2755
  %49 = load i8**, i8*** %11, align 8, !dbg !2756
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !2756
  %51 = load i8*, i8** %50, align 8, !dbg !2756
  %52 = load i8**, i8*** %11, align 8, !dbg !2757
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !2757
  %54 = load i8*, i8** %53, align 8, !dbg !2757
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !2758
  br label %241, !dbg !2759

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2760
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.112, i64 0, i64 0)) #18, !dbg !2761
  %59 = load i8**, i8*** %11, align 8, !dbg !2762
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !2762
  %61 = load i8*, i8** %60, align 8, !dbg !2762
  %62 = load i8**, i8*** %11, align 8, !dbg !2763
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !2763
  %64 = load i8*, i8** %63, align 8, !dbg !2763
  %65 = load i8**, i8*** %11, align 8, !dbg !2764
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !2764
  %67 = load i8*, i8** %66, align 8, !dbg !2764
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !2765
  br label %241, !dbg !2766

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2767
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.113, i64 0, i64 0)) #18, !dbg !2768
  %72 = load i8**, i8*** %11, align 8, !dbg !2769
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !2769
  %74 = load i8*, i8** %73, align 8, !dbg !2769
  %75 = load i8**, i8*** %11, align 8, !dbg !2770
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !2770
  %77 = load i8*, i8** %76, align 8, !dbg !2770
  %78 = load i8**, i8*** %11, align 8, !dbg !2771
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !2771
  %80 = load i8*, i8** %79, align 8, !dbg !2771
  %81 = load i8**, i8*** %11, align 8, !dbg !2772
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !2772
  %83 = load i8*, i8** %82, align 8, !dbg !2772
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !2773
  br label %241, !dbg !2774

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2775
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.114, i64 0, i64 0)) #18, !dbg !2776
  %88 = load i8**, i8*** %11, align 8, !dbg !2777
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !2777
  %90 = load i8*, i8** %89, align 8, !dbg !2777
  %91 = load i8**, i8*** %11, align 8, !dbg !2778
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !2778
  %93 = load i8*, i8** %92, align 8, !dbg !2778
  %94 = load i8**, i8*** %11, align 8, !dbg !2779
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !2779
  %96 = load i8*, i8** %95, align 8, !dbg !2779
  %97 = load i8**, i8*** %11, align 8, !dbg !2780
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !2780
  %99 = load i8*, i8** %98, align 8, !dbg !2780
  %100 = load i8**, i8*** %11, align 8, !dbg !2781
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !2781
  %102 = load i8*, i8** %101, align 8, !dbg !2781
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !2782
  br label %241, !dbg !2783

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2784
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.115, i64 0, i64 0)) #18, !dbg !2785
  %107 = load i8**, i8*** %11, align 8, !dbg !2786
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !2786
  %109 = load i8*, i8** %108, align 8, !dbg !2786
  %110 = load i8**, i8*** %11, align 8, !dbg !2787
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !2787
  %112 = load i8*, i8** %111, align 8, !dbg !2787
  %113 = load i8**, i8*** %11, align 8, !dbg !2788
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !2788
  %115 = load i8*, i8** %114, align 8, !dbg !2788
  %116 = load i8**, i8*** %11, align 8, !dbg !2789
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !2789
  %118 = load i8*, i8** %117, align 8, !dbg !2789
  %119 = load i8**, i8*** %11, align 8, !dbg !2790
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !2790
  %121 = load i8*, i8** %120, align 8, !dbg !2790
  %122 = load i8**, i8*** %11, align 8, !dbg !2791
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !2791
  %124 = load i8*, i8** %123, align 8, !dbg !2791
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !2792
  br label %241, !dbg !2793

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2794
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.116, i64 0, i64 0)) #18, !dbg !2795
  %129 = load i8**, i8*** %11, align 8, !dbg !2796
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !2796
  %131 = load i8*, i8** %130, align 8, !dbg !2796
  %132 = load i8**, i8*** %11, align 8, !dbg !2797
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !2797
  %134 = load i8*, i8** %133, align 8, !dbg !2797
  %135 = load i8**, i8*** %11, align 8, !dbg !2798
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !2798
  %137 = load i8*, i8** %136, align 8, !dbg !2798
  %138 = load i8**, i8*** %11, align 8, !dbg !2799
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !2799
  %140 = load i8*, i8** %139, align 8, !dbg !2799
  %141 = load i8**, i8*** %11, align 8, !dbg !2800
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !2800
  %143 = load i8*, i8** %142, align 8, !dbg !2800
  %144 = load i8**, i8*** %11, align 8, !dbg !2801
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !2801
  %146 = load i8*, i8** %145, align 8, !dbg !2801
  %147 = load i8**, i8*** %11, align 8, !dbg !2802
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !2802
  %149 = load i8*, i8** %148, align 8, !dbg !2802
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !2803
  br label %241, !dbg !2804

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2805
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.117, i64 0, i64 0)) #18, !dbg !2806
  %154 = load i8**, i8*** %11, align 8, !dbg !2807
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !2807
  %156 = load i8*, i8** %155, align 8, !dbg !2807
  %157 = load i8**, i8*** %11, align 8, !dbg !2808
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !2808
  %159 = load i8*, i8** %158, align 8, !dbg !2808
  %160 = load i8**, i8*** %11, align 8, !dbg !2809
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !2809
  %162 = load i8*, i8** %161, align 8, !dbg !2809
  %163 = load i8**, i8*** %11, align 8, !dbg !2810
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !2810
  %165 = load i8*, i8** %164, align 8, !dbg !2810
  %166 = load i8**, i8*** %11, align 8, !dbg !2811
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !2811
  %168 = load i8*, i8** %167, align 8, !dbg !2811
  %169 = load i8**, i8*** %11, align 8, !dbg !2812
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !2812
  %171 = load i8*, i8** %170, align 8, !dbg !2812
  %172 = load i8**, i8*** %11, align 8, !dbg !2813
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !2813
  %174 = load i8*, i8** %173, align 8, !dbg !2813
  %175 = load i8**, i8*** %11, align 8, !dbg !2814
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !2814
  %177 = load i8*, i8** %176, align 8, !dbg !2814
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !2815
  br label %241, !dbg !2816

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2817
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.118, i64 0, i64 0)) #18, !dbg !2818
  %182 = load i8**, i8*** %11, align 8, !dbg !2819
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !2819
  %184 = load i8*, i8** %183, align 8, !dbg !2819
  %185 = load i8**, i8*** %11, align 8, !dbg !2820
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !2820
  %187 = load i8*, i8** %186, align 8, !dbg !2820
  %188 = load i8**, i8*** %11, align 8, !dbg !2821
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !2821
  %190 = load i8*, i8** %189, align 8, !dbg !2821
  %191 = load i8**, i8*** %11, align 8, !dbg !2822
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !2822
  %193 = load i8*, i8** %192, align 8, !dbg !2822
  %194 = load i8**, i8*** %11, align 8, !dbg !2823
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !2823
  %196 = load i8*, i8** %195, align 8, !dbg !2823
  %197 = load i8**, i8*** %11, align 8, !dbg !2824
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !2824
  %199 = load i8*, i8** %198, align 8, !dbg !2824
  %200 = load i8**, i8*** %11, align 8, !dbg !2825
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !2825
  %202 = load i8*, i8** %201, align 8, !dbg !2825
  %203 = load i8**, i8*** %11, align 8, !dbg !2826
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !2826
  %205 = load i8*, i8** %204, align 8, !dbg !2826
  %206 = load i8**, i8*** %11, align 8, !dbg !2827
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !2827
  %208 = load i8*, i8** %207, align 8, !dbg !2827
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !2828
  br label %241, !dbg !2829

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2830
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.119, i64 0, i64 0)) #18, !dbg !2831
  %213 = load i8**, i8*** %11, align 8, !dbg !2832
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !2832
  %215 = load i8*, i8** %214, align 8, !dbg !2832
  %216 = load i8**, i8*** %11, align 8, !dbg !2833
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !2833
  %218 = load i8*, i8** %217, align 8, !dbg !2833
  %219 = load i8**, i8*** %11, align 8, !dbg !2834
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !2834
  %221 = load i8*, i8** %220, align 8, !dbg !2834
  %222 = load i8**, i8*** %11, align 8, !dbg !2835
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !2835
  %224 = load i8*, i8** %223, align 8, !dbg !2835
  %225 = load i8**, i8*** %11, align 8, !dbg !2836
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !2836
  %227 = load i8*, i8** %226, align 8, !dbg !2836
  %228 = load i8**, i8*** %11, align 8, !dbg !2837
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !2837
  %230 = load i8*, i8** %229, align 8, !dbg !2837
  %231 = load i8**, i8*** %11, align 8, !dbg !2838
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !2838
  %233 = load i8*, i8** %232, align 8, !dbg !2838
  %234 = load i8**, i8*** %11, align 8, !dbg !2839
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !2839
  %236 = load i8*, i8** %235, align 8, !dbg !2839
  %237 = load i8**, i8*** %11, align 8, !dbg !2840
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !2840
  %239 = load i8*, i8** %238, align 8, !dbg !2840
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !2841
  br label %241, !dbg !2842

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !2843
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !2844 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2847, metadata !DIExpression()), !dbg !2848
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2849, metadata !DIExpression()), !dbg !2850
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2851, metadata !DIExpression()), !dbg !2852
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2853, metadata !DIExpression()), !dbg !2854
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !2855, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2857, metadata !DIExpression()), !dbg !2858
  store i64 0, i64* %11, align 8, !dbg !2859
  br label %12, !dbg !2861

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !2862
  %14 = load i64, i64* %11, align 8, !dbg !2864
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !2862
  %16 = load i8*, i8** %15, align 8, !dbg !2862
  %17 = icmp ne i8* %16, null, !dbg !2865
  br i1 %17, label %18, label %22, !dbg !2865

18:                                               ; preds = %12
  br label %19, !dbg !2865

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !2866
  %21 = add i64 %20, 1, !dbg !2866
  store i64 %21, i64* %11, align 8, !dbg !2866
  br label %12, !dbg !2867, !llvm.loop !2868

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2870
  %24 = load i8*, i8** %7, align 8, !dbg !2871
  %25 = load i8*, i8** %8, align 8, !dbg !2872
  %26 = load i8*, i8** %9, align 8, !dbg !2873
  %27 = load i8**, i8*** %10, align 8, !dbg !2874
  %28 = load i64, i64* %11, align 8, !dbg !2875
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !2876
  ret void, !dbg !2877
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !2878 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2892, metadata !DIExpression()), !dbg !2893
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2894, metadata !DIExpression()), !dbg !2895
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2896, metadata !DIExpression()), !dbg !2897
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2898, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2900, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2902, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !2904, metadata !DIExpression()), !dbg !2906
  store i64 0, i64* %10, align 8, !dbg !2907
  br label %12, !dbg !2909

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !2910
  %14 = icmp ult i64 %13, 10, !dbg !2912
  br i1 %14, label %15, label %38, !dbg !2913

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !2914
  %17 = load i32, i32* %16, align 8, !dbg !2914
  %18 = icmp sge i32 %17, 0, !dbg !2914
  br i1 %18, label %27, label %19, !dbg !2914

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !2914
  store i32 %20, i32* %16, align 8, !dbg !2914
  %21 = icmp sle i32 %20, 0, !dbg !2914
  br i1 %21, label %22, label %27, !dbg !2914

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !2914
  %24 = load i8*, i8** %23, align 8, !dbg !2914
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !2914
  %26 = bitcast i8* %25 to i8**, !dbg !2914
  br label %32, !dbg !2914

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !2914
  %29 = load i8*, i8** %28, align 8, !dbg !2914
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !2914
  store i8* %30, i8** %28, align 8, !dbg !2914
  %31 = bitcast i8* %29 to i8**, !dbg !2914
  br label %32, !dbg !2914

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !2914
  %34 = load i8*, i8** %33, align 8, !dbg !2914
  %35 = load i64, i64* %10, align 8, !dbg !2915
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !2916
  store i8* %34, i8** %36, align 8, !dbg !2917
  %37 = icmp ne i8* %34, null, !dbg !2918
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !2919
  br i1 %39, label %40, label %44, !dbg !2920

40:                                               ; preds = %38
  br label %41, !dbg !2920

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !2921
  %43 = add i64 %42, 1, !dbg !2921
  store i64 %43, i64* %10, align 8, !dbg !2921
  br label %12, !dbg !2922, !llvm.loop !2923

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2925
  %46 = load i8*, i8** %7, align 8, !dbg !2926
  %47 = load i8*, i8** %8, align 8, !dbg !2927
  %48 = load i8*, i8** %9, align 8, !dbg !2928
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !2929
  %50 = load i64, i64* %10, align 8, !dbg !2930
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !2931
  ret void, !dbg !2932
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !2933 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !2936, metadata !DIExpression()), !dbg !2937
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2938, metadata !DIExpression()), !dbg !2939
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2940, metadata !DIExpression()), !dbg !2941
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2942, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !2944, metadata !DIExpression()), !dbg !2945
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !2946
  call void @llvm.va_start(i8* %11), !dbg !2946
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2947
  %13 = load i8*, i8** %6, align 8, !dbg !2948
  %14 = load i8*, i8** %7, align 8, !dbg !2949
  %15 = load i8*, i8** %8, align 8, !dbg !2950
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !2951
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !2951
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !2951
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !2951
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !2952
  call void @llvm.va_end(i8* %18), !dbg !2952
  ret void, !dbg !2953
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !2954 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2955
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.107, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2955
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.124, i64 0, i64 0)) #18, !dbg !2956
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.125, i64 0, i64 0)), !dbg !2957
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.126, i64 0, i64 0)) #18, !dbg !2958
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.128, i64 0, i64 0)), !dbg !2959
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.129, i64 0, i64 0)) #18, !dbg !2960
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.130, i64 0, i64 0)), !dbg !2961
  ret void, !dbg !2962
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !2963 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2967, metadata !DIExpression()), !dbg !2968
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2969, metadata !DIExpression()), !dbg !2970
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2971, metadata !DIExpression()), !dbg !2972
  %7 = load i8*, i8** %4, align 8, !dbg !2973
  %8 = load i64, i64* %5, align 8, !dbg !2974
  %9 = load i64, i64* %6, align 8, !dbg !2975
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !2976
  ret i8* %10, !dbg !2977
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !2978 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2979, metadata !DIExpression()), !dbg !2980
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2981, metadata !DIExpression()), !dbg !2982
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2983, metadata !DIExpression()), !dbg !2984
  %7 = load i8*, i8** %4, align 8, !dbg !2985
  %8 = load i64, i64* %5, align 8, !dbg !2986
  %9 = load i64, i64* %6, align 8, !dbg !2987
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !2988
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !2989
  ret i8* %11, !dbg !2990
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !2991 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2994, metadata !DIExpression()), !dbg !2995
  %3 = load i8*, i8** %2, align 8, !dbg !2996
  %4 = icmp ne i8* %3, null, !dbg !2996
  br i1 %4, label %6, label %5, !dbg !2998

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !2999
  unreachable, !dbg !2999

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3000
  ret i8* %7, !dbg !3001
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3002 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3005, metadata !DIExpression()), !dbg !3006
  %3 = load i64, i64* %2, align 8, !dbg !3007
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3008
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3009
  ret i8* %5, !dbg !3010
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3011 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3014, metadata !DIExpression()), !dbg !3015
  %3 = load i64, i64* %2, align 8, !dbg !3016
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3017
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3018
  ret i8* %5, !dbg !3019
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3020 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3023, metadata !DIExpression()), !dbg !3024
  %3 = load i64, i64* %2, align 8, !dbg !3025
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !3025
  ret i8* %4, !dbg !3026
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3027 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3030, metadata !DIExpression()), !dbg !3031
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3032, metadata !DIExpression()), !dbg !3033
  %5 = load i8*, i8** %3, align 8, !dbg !3034
  %6 = load i64, i64* %4, align 8, !dbg !3035
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3036
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3037
  ret i8* %8, !dbg !3038
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3039 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3042, metadata !DIExpression()), !dbg !3043
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3044, metadata !DIExpression()), !dbg !3045
  %5 = load i8*, i8** %3, align 8, !dbg !3046
  %6 = load i64, i64* %4, align 8, !dbg !3047
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3048
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3049
  ret i8* %8, !dbg !3050
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3051 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3054, metadata !DIExpression()), !dbg !3055
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3056, metadata !DIExpression()), !dbg !3057
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3058, metadata !DIExpression()), !dbg !3059
  %7 = load i8*, i8** %4, align 8, !dbg !3060
  %8 = load i64, i64* %5, align 8, !dbg !3061
  %9 = load i64, i64* %6, align 8, !dbg !3062
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3063
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3064
  ret i8* %11, !dbg !3065
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3066 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3069, metadata !DIExpression()), !dbg !3070
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3071, metadata !DIExpression()), !dbg !3072
  %5 = load i64, i64* %3, align 8, !dbg !3073
  %6 = load i64, i64* %4, align 8, !dbg !3074
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3075
  ret i8* %7, !dbg !3076
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3077 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3080, metadata !DIExpression()), !dbg !3081
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3082, metadata !DIExpression()), !dbg !3083
  %5 = load i64, i64* %3, align 8, !dbg !3084
  %6 = load i64, i64* %4, align 8, !dbg !3085
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3086
  ret i8* %7, !dbg !3087
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3088 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3091, metadata !DIExpression()), !dbg !3092
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3093, metadata !DIExpression()), !dbg !3094
  %5 = load i8*, i8** %3, align 8, !dbg !3095
  %6 = load i64*, i64** %4, align 8, !dbg !3096
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3097
  ret i8* %7, !dbg !3098
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !247 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3099, metadata !DIExpression()), !dbg !3100
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3101, metadata !DIExpression()), !dbg !3102
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3103, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3105, metadata !DIExpression()), !dbg !3106
  %8 = load i64*, i64** %5, align 8, !dbg !3107
  %9 = load i64, i64* %8, align 8, !dbg !3108
  store i64 %9, i64* %7, align 8, !dbg !3106
  %10 = load i8*, i8** %4, align 8, !dbg !3109
  %11 = icmp ne i8* %10, null, !dbg !3109
  br i1 %11, label %26, label %12, !dbg !3111

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3112
  %14 = icmp ne i64 %13, 0, !dbg !3112
  br i1 %14, label %25, label %15, !dbg !3115

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3116
  %17 = udiv i64 128, %16, !dbg !3118
  store i64 %17, i64* %7, align 8, !dbg !3119
  %18 = load i64, i64* %7, align 8, !dbg !3120
  %19 = icmp ne i64 %18, 0, !dbg !3121
  %20 = xor i1 %19, true, !dbg !3121
  %21 = zext i1 %20 to i32, !dbg !3121
  %22 = sext i32 %21 to i64, !dbg !3121
  %23 = load i64, i64* %7, align 8, !dbg !3122
  %24 = add i64 %23, %22, !dbg !3122
  store i64 %24, i64* %7, align 8, !dbg !3122
  br label %25, !dbg !3123

25:                                               ; preds = %15, %12
  br label %36, !dbg !3124

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3125
  %28 = load i64, i64* %7, align 8, !dbg !3125
  %29 = lshr i64 %28, 1, !dbg !3125
  %30 = add i64 %29, 1, !dbg !3125
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3125
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3125
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3125
  store i64 %33, i64* %7, align 8, !dbg !3125
  br i1 %32, label %34, label %35, !dbg !3128

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3129
  unreachable, !dbg !3129

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3130
  %38 = load i64, i64* %7, align 8, !dbg !3131
  %39 = load i64, i64* %6, align 8, !dbg !3132
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3133
  store i8* %40, i8** %4, align 8, !dbg !3134
  %41 = load i64, i64* %7, align 8, !dbg !3135
  %42 = load i64*, i64** %5, align 8, !dbg !3136
  store i64 %41, i64* %42, align 8, !dbg !3137
  %43 = load i8*, i8** %4, align 8, !dbg !3138
  ret i8* %43, !dbg !3139
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !254 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3140, metadata !DIExpression()), !dbg !3141
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3142, metadata !DIExpression()), !dbg !3143
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3144, metadata !DIExpression()), !dbg !3145
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3146, metadata !DIExpression()), !dbg !3147
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3148, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3150, metadata !DIExpression()), !dbg !3151
  %15 = load i64*, i64** %7, align 8, !dbg !3152
  %16 = load i64, i64* %15, align 8, !dbg !3153
  store i64 %16, i64* %11, align 8, !dbg !3151
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3154, metadata !DIExpression()), !dbg !3155
  %17 = load i64, i64* %11, align 8, !dbg !3156
  %18 = load i64, i64* %11, align 8, !dbg !3156
  %19 = ashr i64 %18, 1, !dbg !3156
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3156
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3156
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3156
  store i64 %22, i64* %12, align 8, !dbg !3156
  br i1 %21, label %23, label %24, !dbg !3158

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3159
  br label %24, !dbg !3160

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3161
  %26 = icmp sle i64 0, %25, !dbg !3163
  br i1 %26, label %27, label %33, !dbg !3164

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3165
  %29 = load i64, i64* %12, align 8, !dbg !3166
  %30 = icmp slt i64 %28, %29, !dbg !3167
  br i1 %30, label %31, label %33, !dbg !3168

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3169
  store i64 %32, i64* %12, align 8, !dbg !3170
  br label %33, !dbg !3171

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3172, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3174, metadata !DIExpression()), !dbg !3175
  %34 = load i64, i64* %10, align 8, !dbg !3176
  %35 = icmp slt i64 %34, 0, !dbg !3176
  br i1 %35, label %36, label %82, !dbg !3176

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3176
  %38 = icmp slt i64 %37, 0, !dbg !3176
  br i1 %38, label %39, label %62, !dbg !3176

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3176

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3176
  %42 = load i64, i64* %10, align 8, !dbg !3176
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3176
  %44 = icmp slt i64 %41, %43, !dbg !3176
  br i1 %44, label %111, label %115, !dbg !3176

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3176

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3176
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3176
  br i1 %48, label %52, label %53, !dbg !3176

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3176
  %51 = icmp slt i64 0, %50, !dbg !3176
  br i1 %51, label %52, label %53, !dbg !3176

52:                                               ; preds = %49, %46
  br label %57, !dbg !3176

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3176
  %55 = sub nsw i64 0, %54, !dbg !3176
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3176
  br label %57, !dbg !3176

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3176
  %59 = load i64, i64* %12, align 8, !dbg !3176
  %60 = sub nsw i64 -1, %59, !dbg !3176
  %61 = icmp sle i64 %58, %60, !dbg !3176
  br i1 %61, label %111, label %115, !dbg !3176

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3176
  %64 = icmp eq i64 %63, -1, !dbg !3176
  br i1 %64, label %65, label %77, !dbg !3176

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3176

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3176
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3176
  %69 = icmp slt i64 0, %68, !dbg !3176
  br i1 %69, label %111, label %115, !dbg !3176

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3176
  %72 = icmp slt i64 0, %71, !dbg !3176
  br i1 %72, label %73, label %115, !dbg !3176

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3176
  %75 = sub nsw i64 %74, 1, !dbg !3176
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3176
  br i1 %76, label %111, label %115, !dbg !3176

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3176
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3176
  %80 = load i64, i64* %12, align 8, !dbg !3176
  %81 = icmp slt i64 %79, %80, !dbg !3176
  br i1 %81, label %111, label %115, !dbg !3176

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3176
  %84 = icmp eq i64 %83, 0, !dbg !3176
  br i1 %84, label %85, label %86, !dbg !3176

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3176

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3176
  %88 = icmp slt i64 %87, 0, !dbg !3176
  br i1 %88, label %89, label %106, !dbg !3176

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3176
  %91 = icmp eq i64 %90, -1, !dbg !3176
  br i1 %91, label %92, label %101, !dbg !3176

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3176

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3176
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3176
  %96 = icmp slt i64 0, %95, !dbg !3176
  br i1 %96, label %111, label %115, !dbg !3176

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3176
  %99 = sub nsw i64 %98, 1, !dbg !3176
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3176
  br i1 %100, label %111, label %115, !dbg !3176

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3176
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3176
  %104 = load i64, i64* %10, align 8, !dbg !3176
  %105 = icmp slt i64 %103, %104, !dbg !3176
  br i1 %105, label %111, label %115, !dbg !3176

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3176
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3176
  %109 = load i64, i64* %12, align 8, !dbg !3176
  %110 = icmp slt i64 %108, %109, !dbg !3176
  br i1 %110, label %111, label %115, !dbg !3176

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3176
  %113 = load i64, i64* %10, align 8, !dbg !3176
  %114 = mul i64 %112, %113, !dbg !3176
  store i64 %114, i64* %13, align 8, !dbg !3176
  br label %119, !dbg !3176

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3176
  %117 = load i64, i64* %10, align 8, !dbg !3176
  %118 = mul i64 %116, %117, !dbg !3176
  store i64 %118, i64* %13, align 8, !dbg !3176
  br label %119, !dbg !3176

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3176
  %121 = icmp ne i32 %120, 0, !dbg !3176
  br i1 %121, label %122, label %123, !dbg !3176

122:                                              ; preds = %119
  br label %129, !dbg !3176

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3177
  %125 = icmp slt i64 %124, 128, !dbg !3178
  %126 = zext i1 %125 to i64, !dbg !3177
  %127 = select i1 %125, i32 128, i32 0, !dbg !3177
  %128 = sext i32 %127 to i64, !dbg !3177
  br label %129, !dbg !3176

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3176
  store i64 %130, i64* %14, align 8, !dbg !3175
  %131 = load i64, i64* %14, align 8, !dbg !3179
  %132 = icmp ne i64 %131, 0, !dbg !3179
  br i1 %132, label %133, label %142, !dbg !3181

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3182
  %135 = load i64, i64* %10, align 8, !dbg !3184
  %136 = sdiv i64 %134, %135, !dbg !3185
  store i64 %136, i64* %12, align 8, !dbg !3186
  %137 = load i64, i64* %14, align 8, !dbg !3187
  %138 = load i64, i64* %14, align 8, !dbg !3188
  %139 = load i64, i64* %10, align 8, !dbg !3189
  %140 = srem i64 %138, %139, !dbg !3190
  %141 = sub nsw i64 %137, %140, !dbg !3191
  store i64 %141, i64* %13, align 8, !dbg !3192
  br label %142, !dbg !3193

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3194
  %144 = icmp ne i8* %143, null, !dbg !3194
  br i1 %144, label %147, label %145, !dbg !3196

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3197
  store i64 0, i64* %146, align 8, !dbg !3198
  br label %147, !dbg !3199

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3200
  %149 = load i64, i64* %11, align 8, !dbg !3202
  %150 = sub nsw i64 %148, %149, !dbg !3203
  %151 = load i64, i64* %8, align 8, !dbg !3204
  %152 = icmp slt i64 %150, %151, !dbg !3205
  br i1 %152, label %153, label %256, !dbg !3206

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3207
  %155 = load i64, i64* %8, align 8, !dbg !3207
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3207
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3207
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3207
  store i64 %158, i64* %12, align 8, !dbg !3207
  br i1 %157, label %255, label %159, !dbg !3208

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3209
  %161 = icmp sle i64 0, %160, !dbg !3210
  br i1 %161, label %162, label %166, !dbg !3211

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3212
  %164 = load i64, i64* %12, align 8, !dbg !3213
  %165 = icmp slt i64 %163, %164, !dbg !3214
  br i1 %165, label %255, label %166, !dbg !3215

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3216
  %168 = icmp slt i64 %167, 0, !dbg !3216
  br i1 %168, label %169, label %215, !dbg !3216

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3216
  %171 = icmp slt i64 %170, 0, !dbg !3216
  br i1 %171, label %172, label %195, !dbg !3216

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3216

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3216
  %175 = load i64, i64* %10, align 8, !dbg !3216
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3216
  %177 = icmp slt i64 %174, %176, !dbg !3216
  br i1 %177, label %244, label %248, !dbg !3216

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3216

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3216
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3216
  br i1 %181, label %185, label %186, !dbg !3216

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3216
  %184 = icmp slt i64 0, %183, !dbg !3216
  br i1 %184, label %185, label %186, !dbg !3216

185:                                              ; preds = %182, %179
  br label %190, !dbg !3216

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3216
  %188 = sub nsw i64 0, %187, !dbg !3216
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3216
  br label %190, !dbg !3216

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3216
  %192 = load i64, i64* %12, align 8, !dbg !3216
  %193 = sub nsw i64 -1, %192, !dbg !3216
  %194 = icmp sle i64 %191, %193, !dbg !3216
  br i1 %194, label %244, label %248, !dbg !3216

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3216
  %197 = icmp eq i64 %196, -1, !dbg !3216
  br i1 %197, label %198, label %210, !dbg !3216

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3216

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3216
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3216
  %202 = icmp slt i64 0, %201, !dbg !3216
  br i1 %202, label %244, label %248, !dbg !3216

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3216
  %205 = icmp slt i64 0, %204, !dbg !3216
  br i1 %205, label %206, label %248, !dbg !3216

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3216
  %208 = sub nsw i64 %207, 1, !dbg !3216
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3216
  br i1 %209, label %244, label %248, !dbg !3216

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3216
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3216
  %213 = load i64, i64* %12, align 8, !dbg !3216
  %214 = icmp slt i64 %212, %213, !dbg !3216
  br i1 %214, label %244, label %248, !dbg !3216

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3216
  %217 = icmp eq i64 %216, 0, !dbg !3216
  br i1 %217, label %218, label %219, !dbg !3216

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3216

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3216
  %221 = icmp slt i64 %220, 0, !dbg !3216
  br i1 %221, label %222, label %239, !dbg !3216

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3216
  %224 = icmp eq i64 %223, -1, !dbg !3216
  br i1 %224, label %225, label %234, !dbg !3216

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3216

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3216
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3216
  %229 = icmp slt i64 0, %228, !dbg !3216
  br i1 %229, label %244, label %248, !dbg !3216

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3216
  %232 = sub nsw i64 %231, 1, !dbg !3216
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3216
  br i1 %233, label %244, label %248, !dbg !3216

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3216
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3216
  %237 = load i64, i64* %10, align 8, !dbg !3216
  %238 = icmp slt i64 %236, %237, !dbg !3216
  br i1 %238, label %244, label %248, !dbg !3216

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3216
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3216
  %242 = load i64, i64* %12, align 8, !dbg !3216
  %243 = icmp slt i64 %241, %242, !dbg !3216
  br i1 %243, label %244, label %248, !dbg !3216

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3216
  %246 = load i64, i64* %10, align 8, !dbg !3216
  %247 = mul i64 %245, %246, !dbg !3216
  store i64 %247, i64* %13, align 8, !dbg !3216
  br label %252, !dbg !3216

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3216
  %250 = load i64, i64* %10, align 8, !dbg !3216
  %251 = mul i64 %249, %250, !dbg !3216
  store i64 %251, i64* %13, align 8, !dbg !3216
  br label %252, !dbg !3216

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3216
  %254 = icmp ne i32 %253, 0, !dbg !3216
  br i1 %254, label %255, label %256, !dbg !3217

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3218
  unreachable, !dbg !3218

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3219
  %258 = load i64, i64* %13, align 8, !dbg !3220
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !3221
  store i8* %259, i8** %6, align 8, !dbg !3222
  %260 = load i64, i64* %12, align 8, !dbg !3223
  %261 = load i64*, i64** %7, align 8, !dbg !3224
  store i64 %260, i64* %261, align 8, !dbg !3225
  %262 = load i8*, i8** %6, align 8, !dbg !3226
  ret i8* %262, !dbg !3227
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3228 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3229, metadata !DIExpression()), !dbg !3230
  %3 = load i64, i64* %2, align 8, !dbg !3231
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3232
  ret i8* %4, !dbg !3233
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3234 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3235, metadata !DIExpression()), !dbg !3236
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3237, metadata !DIExpression()), !dbg !3238
  %5 = load i64, i64* %3, align 8, !dbg !3239
  %6 = load i64, i64* %4, align 8, !dbg !3240
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3241
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3242
  ret i8* %8, !dbg !3243
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3244 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3245, metadata !DIExpression()), !dbg !3246
  %3 = load i64, i64* %2, align 8, !dbg !3247
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3248
  ret i8* %4, !dbg !3249
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3250 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3251, metadata !DIExpression()), !dbg !3252
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3253, metadata !DIExpression()), !dbg !3254
  %5 = load i64, i64* %3, align 8, !dbg !3255
  %6 = load i64, i64* %4, align 8, !dbg !3256
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3257
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3258
  ret i8* %8, !dbg !3259
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3260 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3265, metadata !DIExpression()), !dbg !3266
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3267, metadata !DIExpression()), !dbg !3268
  %5 = load i64, i64* %4, align 8, !dbg !3269
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !3270
  %7 = load i8*, i8** %3, align 8, !dbg !3271
  %8 = load i64, i64* %4, align 8, !dbg !3272
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3273
  ret i8* %6, !dbg !3274
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3275 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3278, metadata !DIExpression()), !dbg !3279
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3280, metadata !DIExpression()), !dbg !3281
  %5 = load i64, i64* %4, align 8, !dbg !3282
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !3283
  %7 = load i8*, i8** %3, align 8, !dbg !3284
  %8 = load i64, i64* %4, align 8, !dbg !3285
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3286
  ret i8* %6, !dbg !3287
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3288 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3291, metadata !DIExpression()), !dbg !3292
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3293, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3295, metadata !DIExpression()), !dbg !3296
  %6 = load i64, i64* %4, align 8, !dbg !3297
  %7 = add nsw i64 %6, 1, !dbg !3298
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !3299
  store i8* %8, i8** %5, align 8, !dbg !3296
  %9 = load i8*, i8** %5, align 8, !dbg !3300
  %10 = load i64, i64* %4, align 8, !dbg !3301
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3300
  store i8 0, i8* %11, align 1, !dbg !3302
  %12 = load i8*, i8** %5, align 8, !dbg !3303
  %13 = load i8*, i8** %3, align 8, !dbg !3304
  %14 = load i64, i64* %4, align 8, !dbg !3305
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3306
  ret i8* %12, !dbg !3307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3308 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3309, metadata !DIExpression()), !dbg !3310
  %3 = load i8*, i8** %2, align 8, !dbg !3311
  %4 = load i8*, i8** %2, align 8, !dbg !3312
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3313
  %6 = add i64 %5, 1, !dbg !3314
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !3315
  ret i8* %7, !dbg !3316
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3317 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3318, metadata !DIExpression()), !dbg !3321
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3321
  store i32 %2, i32* %1, align 4, !dbg !3321
  %3 = load i32, i32* %1, align 4, !dbg !3321
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.142, i64 0, i64 0)) #18, !dbg !3321
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.143, i64 0, i64 0), i8* noundef %4), !dbg !3321
  %5 = load i32, i32* %1, align 4, !dbg !3321
  %6 = icmp ne i32 %5, 0, !dbg !3321
  br i1 %6, label %7, label %9, !dbg !3321

7:                                                ; preds = %0
  unreachable, !dbg !3321

8:                                                ; No predecessors!
  br label %10, !dbg !3321

9:                                                ; preds = %0
  br label %10, !dbg !3321

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3322
  unreachable, !dbg !3322
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3323 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3329, metadata !DIExpression()), !dbg !3330
  %3 = load i32, i32* %2, align 4, !dbg !3331
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3332
  ret i32 %4, !dbg !3333
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3334 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3371, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3373, metadata !DIExpression()), !dbg !3375
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3376
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3377
  %9 = icmp ne i64 %8, 0, !dbg !3378
  %10 = zext i1 %9 to i8, !dbg !3375
  store i8 %10, i8* %4, align 1, !dbg !3375
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3379, metadata !DIExpression()), !dbg !3380
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3381
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3381
  %13 = icmp ne i32 %12, 0, !dbg !3382
  %14 = zext i1 %13 to i8, !dbg !3380
  store i8 %14, i8* %5, align 1, !dbg !3380
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3383, metadata !DIExpression()), !dbg !3384
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3385
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3386
  %17 = icmp ne i32 %16, 0, !dbg !3387
  %18 = zext i1 %17 to i8, !dbg !3384
  store i8 %18, i8* %6, align 1, !dbg !3384
  %19 = load i8, i8* %5, align 1, !dbg !3388
  %20 = trunc i8 %19 to i1, !dbg !3388
  br i1 %20, label %31, label %21, !dbg !3390

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3391
  %23 = trunc i8 %22 to i1, !dbg !3391
  br i1 %23, label %24, label %37, !dbg !3392

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3393
  %26 = trunc i8 %25 to i1, !dbg !3393
  br i1 %26, label %31, label %27, !dbg !3394

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3395
  %29 = load i32, i32* %28, align 4, !dbg !3395
  %30 = icmp ne i32 %29, 9, !dbg !3396
  br i1 %30, label %31, label %37, !dbg !3397

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3398
  %33 = trunc i8 %32 to i1, !dbg !3398
  br i1 %33, label %36, label %34, !dbg !3401

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3402
  store i32 0, i32* %35, align 4, !dbg !3403
  br label %36, !dbg !3402

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3404
  br label %38, !dbg !3404

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3405
  br label %38, !dbg !3405

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3406
  ret i32 %39, !dbg !3406
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3407 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3444, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3446, metadata !DIExpression()), !dbg !3447
  store i32 0, i32* %4, align 4, !dbg !3447
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3448, metadata !DIExpression()), !dbg !3449
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3450
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !3451
  store i32 %8, i32* %5, align 4, !dbg !3449
  %9 = load i32, i32* %5, align 4, !dbg !3452
  %10 = icmp slt i32 %9, 0, !dbg !3454
  br i1 %10, label %11, label %14, !dbg !3455

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3456
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3457
  store i32 %13, i32* %2, align 4, !dbg !3458
  br label %40, !dbg !3458

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3459
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !3459
  %17 = icmp ne i32 %16, 0, !dbg !3459
  br i1 %17, label %18, label %23, !dbg !3461

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3462
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !3463
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !3464
  %22 = icmp ne i64 %21, -1, !dbg !3465
  br i1 %22, label %23, label %30, !dbg !3466

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3467
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !3468
  %26 = icmp ne i32 %25, 0, !dbg !3468
  br i1 %26, label %27, label %30, !dbg !3469

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !3470
  %29 = load i32, i32* %28, align 4, !dbg !3470
  store i32 %29, i32* %4, align 4, !dbg !3471
  br label %30, !dbg !3472

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3473, metadata !DIExpression()), !dbg !3474
  store i32 0, i32* %6, align 4, !dbg !3474
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3475
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !3476
  store i32 %32, i32* %6, align 4, !dbg !3477
  %33 = load i32, i32* %4, align 4, !dbg !3478
  %34 = icmp ne i32 %33, 0, !dbg !3480
  br i1 %34, label %35, label %38, !dbg !3481

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3482
  %37 = call i32* @__errno_location() #21, !dbg !3484
  store i32 %36, i32* %37, align 4, !dbg !3485
  store i32 -1, i32* %6, align 4, !dbg !3486
  br label %38, !dbg !3487

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3488
  store i32 %39, i32* %2, align 4, !dbg !3489
  br label %40, !dbg !3489

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3490
  ret i32 %41, !dbg !3490
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !3491 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3528, metadata !DIExpression()), !dbg !3529
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3530
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3532
  br i1 %5, label %10, label %6, !dbg !3533

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3534
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !3534
  %9 = icmp ne i32 %8, 0, !dbg !3534
  br i1 %9, label %13, label %10, !dbg !3535

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3536
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !3537
  store i32 %12, i32* %2, align 4, !dbg !3538
  br label %17, !dbg !3538

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3539
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !3540
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3541
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !3542
  store i32 %16, i32* %2, align 4, !dbg !3543
  br label %17, !dbg !3543

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3544
  ret i32 %18, !dbg !3544
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !3545 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3548, metadata !DIExpression()), !dbg !3549
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3550
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !3552
  %5 = load i32, i32* %4, align 8, !dbg !3552
  %6 = and i32 %5, 256, !dbg !3553
  %7 = icmp ne i32 %6, 0, !dbg !3553
  br i1 %7, label %8, label %11, !dbg !3554

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3555
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !3556
  br label %11, !dbg !3556

11:                                               ; preds = %8, %1
  ret void, !dbg !3557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !3558 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3596, metadata !DIExpression()), !dbg !3597
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3598, metadata !DIExpression()), !dbg !3599
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3600, metadata !DIExpression()), !dbg !3601
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3602
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !3604
  %11 = load i8*, i8** %10, align 8, !dbg !3604
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3605
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !3606
  %14 = load i8*, i8** %13, align 8, !dbg !3606
  %15 = icmp eq i8* %11, %14, !dbg !3607
  br i1 %15, label %16, label %46, !dbg !3608

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3609
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !3610
  %19 = load i8*, i8** %18, align 8, !dbg !3610
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3611
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !3612
  %22 = load i8*, i8** %21, align 8, !dbg !3612
  %23 = icmp eq i8* %19, %22, !dbg !3613
  br i1 %23, label %24, label %46, !dbg !3614

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3615
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !3616
  %27 = load i8*, i8** %26, align 8, !dbg !3616
  %28 = icmp eq i8* %27, null, !dbg !3617
  br i1 %28, label %29, label %46, !dbg !3618

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3619, metadata !DIExpression()), !dbg !3621
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3622
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !3623
  %32 = load i64, i64* %6, align 8, !dbg !3624
  %33 = load i32, i32* %7, align 4, !dbg !3625
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !3626
  store i64 %34, i64* %8, align 8, !dbg !3621
  %35 = load i64, i64* %8, align 8, !dbg !3627
  %36 = icmp eq i64 %35, -1, !dbg !3629
  br i1 %36, label %37, label %38, !dbg !3630

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3631
  br label %51, !dbg !3631

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3633
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !3634
  %41 = load i32, i32* %40, align 8, !dbg !3635
  %42 = and i32 %41, -17, !dbg !3635
  store i32 %42, i32* %40, align 8, !dbg !3635
  %43 = load i64, i64* %8, align 8, !dbg !3636
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3637
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !3638
  store i64 %43, i64* %45, align 8, !dbg !3639
  store i32 0, i32* %4, align 4, !dbg !3640
  br label %51, !dbg !3640

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3641
  %48 = load i64, i64* %6, align 8, !dbg !3642
  %49 = load i32, i32* %7, align 4, !dbg !3643
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !3644
  store i32 %50, i32* %4, align 4, !dbg !3645
  br label %51, !dbg !3645

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !3646
  ret i32 %52, !dbg !3646
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !3647 {
  %1 = call i32* @__errno_location() #21, !dbg !3650
  store i32 12, i32* %1, align 4, !dbg !3651
  ret i8* null, !dbg !3652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !3653 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3654, metadata !DIExpression()), !dbg !3655
  %3 = load i64, i64* %2, align 8, !dbg !3656
  %4 = icmp ule i64 %3, -1, !dbg !3657
  br i1 %4, label %5, label %8, !dbg !3656

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !3658
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !3659
  br label %10, !dbg !3656

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !3660
  br label %10, !dbg !3656

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !3656
  ret i8* %11, !dbg !3661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3662 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3663, metadata !DIExpression()), !dbg !3664
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3665, metadata !DIExpression()), !dbg !3666
  %5 = load i64, i64* %4, align 8, !dbg !3667
  %6 = icmp ule i64 %5, -1, !dbg !3668
  br i1 %6, label %7, label %11, !dbg !3667

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !3669
  %9 = load i64, i64* %4, align 8, !dbg !3670
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !3671
  br label %13, !dbg !3667

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3672
  br label %13, !dbg !3667

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !3667
  ret i8* %14, !dbg !3673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !3674 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3675, metadata !DIExpression()), !dbg !3676
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3677, metadata !DIExpression()), !dbg !3678
  %6 = load i64, i64* %4, align 8, !dbg !3679
  %7 = icmp ult i64 -1, %6, !dbg !3681
  br i1 %7, label %8, label %14, !dbg !3682

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !3683
  %10 = icmp ne i64 %9, 0, !dbg !3686
  br i1 %10, label %11, label %13, !dbg !3687

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3688
  store i8* %12, i8** %3, align 8, !dbg !3689
  br label %27, !dbg !3689

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !3690
  br label %14, !dbg !3691

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !3692
  %16 = icmp ult i64 -1, %15, !dbg !3694
  br i1 %16, label %17, label %23, !dbg !3695

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !3696
  %19 = icmp ne i64 %18, 0, !dbg !3699
  br i1 %19, label %20, label %22, !dbg !3700

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !3701
  store i8* %21, i8** %3, align 8, !dbg !3702
  br label %27, !dbg !3702

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !3703
  br label %23, !dbg !3704

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !3705
  %25 = load i64, i64* %5, align 8, !dbg !3706
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !3707
  store i8* %26, i8** %3, align 8, !dbg !3708
  br label %27, !dbg !3708

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !3709
  ret i8* %28, !dbg !3709
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3710 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3711, metadata !DIExpression()), !dbg !3712
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3713, metadata !DIExpression()), !dbg !3714
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3715, metadata !DIExpression()), !dbg !3716
  %7 = load i64, i64* %5, align 8, !dbg !3717
  %8 = icmp ule i64 %7, -1, !dbg !3718
  br i1 %8, label %9, label %17, !dbg !3719

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !3720
  %11 = icmp ule i64 %10, -1, !dbg !3721
  br i1 %11, label %12, label %17, !dbg !3717

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !3722
  %14 = load i64, i64* %5, align 8, !dbg !3723
  %15 = load i64, i64* %6, align 8, !dbg !3724
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !3725
  br label %19, !dbg !3717

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !3726
  br label %19, !dbg !3717

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !3717
  ret i8* %20, !dbg !3727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !3728 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3733, metadata !DIExpression()), !dbg !3734
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3735, metadata !DIExpression()), !dbg !3736
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3737, metadata !DIExpression()), !dbg !3738
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !3739, metadata !DIExpression()), !dbg !3740
  %11 = load i8*, i8** %7, align 8, !dbg !3741
  %12 = icmp eq i8* %11, null, !dbg !3743
  br i1 %12, label %13, label %14, !dbg !3744

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !3745
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.164, i64 0, i64 0), i8** %7, align 8, !dbg !3747
  store i64 1, i64* %8, align 8, !dbg !3748
  br label %14, !dbg !3749

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3750
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !3752
  br i1 %16, label %17, label %18, !dbg !3753

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !3754
  br label %18, !dbg !3755

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3756, metadata !DIExpression()), !dbg !3757
  %19 = load i32*, i32** %6, align 8, !dbg !3758
  %20 = load i8*, i8** %7, align 8, !dbg !3759
  %21 = load i64, i64* %8, align 8, !dbg !3760
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3761
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !3762
  store i64 %23, i64* %10, align 8, !dbg !3757
  %24 = load i64, i64* %10, align 8, !dbg !3763
  %25 = icmp ult i64 %24, -3, !dbg !3765
  br i1 %25, label %26, label %32, !dbg !3766

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3767
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !3768
  %29 = icmp ne i32 %28, 0, !dbg !3768
  br i1 %29, label %32, label %30, !dbg !3769

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3770
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !3771
  br label %32, !dbg !3771

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !3772
  %34 = icmp eq i64 %33, -3, !dbg !3774
  br i1 %34, label %35, label %36, !dbg !3775

35:                                               ; preds = %32
  call void @abort() #19, !dbg !3776
  unreachable, !dbg !3776

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !3777
  %38 = icmp ule i64 -2, %37, !dbg !3779
  br i1 %38, label %39, label %53, !dbg !3780

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !3781
  %41 = icmp ne i64 %40, 0, !dbg !3782
  br i1 %41, label %42, label %53, !dbg !3783

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !3784
  br i1 %43, label %53, label %44, !dbg !3785

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !3786
  %46 = icmp ne i32* %45, null, !dbg !3789
  br i1 %46, label %47, label %52, !dbg !3790

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !3791
  %49 = load i8, i8* %48, align 1, !dbg !3792
  %50 = zext i8 %49 to i32, !dbg !3793
  %51 = load i32*, i32** %6, align 8, !dbg !3794
  store i32 %50, i32* %51, align 4, !dbg !3795
  br label %52, !dbg !3796

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !3797
  br label %55, !dbg !3797

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !3798
  store i64 %54, i64* %5, align 8, !dbg !3799
  br label %55, !dbg !3799

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !3800
  ret i64 %56, !dbg !3800
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !3801 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !3816, metadata !DIExpression()), !dbg !3817
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !3818
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !3819
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !3819
  ret void, !dbg !3820
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3821 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3824, metadata !DIExpression()), !dbg !3825
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3826, metadata !DIExpression()), !dbg !3827
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3828, metadata !DIExpression()), !dbg !3829
  %7 = load i8*, i8** %4, align 8, !dbg !3830
  %8 = load i8*, i8** %5, align 8, !dbg !3831
  %9 = load i64, i64* %6, align 8, !dbg !3832
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !3833
  %11 = icmp ne i32 %10, 0, !dbg !3834
  %12 = xor i1 %11, true, !dbg !3834
  ret i1 %12, !dbg !3835
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3836 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3838, metadata !DIExpression()), !dbg !3839
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3840, metadata !DIExpression()), !dbg !3841
  %5 = load i8*, i8** %3, align 8, !dbg !3842
  %6 = load i64, i64* %4, align 8, !dbg !3843
  %7 = icmp ne i64 %6, 0, !dbg !3843
  br i1 %7, label %8, label %10, !dbg !3843

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !3844
  br label %11, !dbg !3843

10:                                               ; preds = %2
  br label %11, !dbg !3843

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !3843
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !3845
  ret i8* %13, !dbg !3846
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3847 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3848, metadata !DIExpression()), !dbg !3849
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3850, metadata !DIExpression()), !dbg !3851
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3852, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3854, metadata !DIExpression()), !dbg !3855
  %9 = load i64, i64* %7, align 8, !dbg !3856
  %10 = icmp ult i64 %9, 0, !dbg !3856
  br i1 %10, label %11, label %60, !dbg !3856

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !3856
  %13 = icmp ult i64 %12, 0, !dbg !3856
  br i1 %13, label %14, label %37, !dbg !3856

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !3856

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !3856
  %17 = load i64, i64* %7, align 8, !dbg !3856
  %18 = udiv i64 -1, %17, !dbg !3856
  %19 = icmp ult i64 %16, %18, !dbg !3856
  br i1 %19, label %92, label %96, !dbg !3856

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !3856

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !3856
  %23 = icmp ult i64 %22, 1, !dbg !3856
  br i1 %23, label %27, label %28, !dbg !3856

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !3856
  %26 = icmp ult i64 0, %25, !dbg !3856
  br i1 %26, label %27, label %28, !dbg !3856

27:                                               ; preds = %24, %21
  br label %32, !dbg !3856

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !3856
  %30 = sub i64 0, %29, !dbg !3856
  %31 = udiv i64 -1, %30, !dbg !3856
  br label %32, !dbg !3856

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !3856
  %34 = load i64, i64* %6, align 8, !dbg !3856
  %35 = sub i64 -1, %34, !dbg !3856
  %36 = icmp ule i64 %33, %35, !dbg !3856
  br i1 %36, label %92, label %96, !dbg !3856

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !3856

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !3856

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !3856

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !3856
  %42 = icmp eq i64 %41, -1, !dbg !3856
  br i1 %42, label %43, label %55, !dbg !3856

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !3856

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !3856
  %46 = add i64 %45, 0, !dbg !3856
  %47 = icmp ult i64 0, %46, !dbg !3856
  br i1 %47, label %92, label %96, !dbg !3856

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !3856
  %50 = icmp ult i64 0, %49, !dbg !3856
  br i1 %50, label %51, label %96, !dbg !3856

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !3856
  %53 = sub i64 %52, 1, !dbg !3856
  %54 = icmp ult i64 -1, %53, !dbg !3856
  br i1 %54, label %92, label %96, !dbg !3856

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !3856
  %57 = udiv i64 0, %56, !dbg !3856
  %58 = load i64, i64* %6, align 8, !dbg !3856
  %59 = icmp ult i64 %57, %58, !dbg !3856
  br i1 %59, label %92, label %96, !dbg !3856

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !3856
  %62 = icmp eq i64 %61, 0, !dbg !3856
  br i1 %62, label %63, label %64, !dbg !3856

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !3856

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !3856
  %66 = icmp ult i64 %65, 0, !dbg !3856
  br i1 %66, label %67, label %87, !dbg !3856

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !3856

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !3856

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !3856

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !3856
  %72 = icmp eq i64 %71, -1, !dbg !3856
  br i1 %72, label %73, label %82, !dbg !3856

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !3856

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !3856
  %76 = add i64 %75, 0, !dbg !3856
  %77 = icmp ult i64 0, %76, !dbg !3856
  br i1 %77, label %92, label %96, !dbg !3856

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !3856
  %80 = sub i64 %79, 1, !dbg !3856
  %81 = icmp ult i64 -1, %80, !dbg !3856
  br i1 %81, label %92, label %96, !dbg !3856

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !3856
  %84 = udiv i64 0, %83, !dbg !3856
  %85 = load i64, i64* %7, align 8, !dbg !3856
  %86 = icmp ult i64 %84, %85, !dbg !3856
  br i1 %86, label %92, label %96, !dbg !3856

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !3856
  %89 = udiv i64 -1, %88, !dbg !3856
  %90 = load i64, i64* %6, align 8, !dbg !3856
  %91 = icmp ult i64 %89, %90, !dbg !3856
  br i1 %91, label %92, label %96, !dbg !3856

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !3856
  %94 = load i64, i64* %7, align 8, !dbg !3856
  %95 = mul i64 %93, %94, !dbg !3856
  store i64 %95, i64* %8, align 8, !dbg !3856
  br label %100, !dbg !3856

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !3856
  %98 = load i64, i64* %7, align 8, !dbg !3856
  %99 = mul i64 %97, %98, !dbg !3856
  store i64 %99, i64* %8, align 8, !dbg !3856
  br label %100, !dbg !3856

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !3856
  %102 = icmp ne i32 %101, 0, !dbg !3856
  br i1 %102, label %103, label %105, !dbg !3858

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !3859
  store i32 12, i32* %104, align 4, !dbg !3861
  store i8* null, i8** %4, align 8, !dbg !3862
  br label %109, !dbg !3862

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !3863
  %107 = load i64, i64* %8, align 8, !dbg !3864
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !3865
  store i8* %108, i8** %4, align 8, !dbg !3866
  br label %109, !dbg !3866

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !3867
  ret i8* %110, !dbg !3867
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !3868 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3871, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !3873, metadata !DIExpression()), !dbg !3877
  %5 = load i32, i32* %3, align 4, !dbg !3878
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3880
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !3881
  %8 = icmp ne i32 %7, 0, !dbg !3881
  br i1 %8, label %9, label %10, !dbg !3882

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3883
  br label %18, !dbg !3883

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3884
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.175, i64 0, i64 0)), !dbg !3886
  br i1 %12, label %17, label %13, !dbg !3887

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3888
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.176, i64 0, i64 0)), !dbg !3889
  br i1 %15, label %17, label %16, !dbg !3890

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !3891
  br label %18, !dbg !3891

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !3892
  br label %18, !dbg !3892

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !3893
  ret i1 %19, !dbg !3893
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !3894 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3897, metadata !DIExpression()), !dbg !3898
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3899, metadata !DIExpression()), !dbg !3900
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3901, metadata !DIExpression()), !dbg !3902
  %7 = load i32, i32* %4, align 4, !dbg !3903
  %8 = load i8*, i8** %5, align 8, !dbg !3904
  %9 = load i64, i64* %6, align 8, !dbg !3905
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3906
  ret i32 %10, !dbg !3907
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !3908 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3911, metadata !DIExpression()), !dbg !3912
  %3 = load i32, i32* %2, align 4, !dbg !3913
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !3914
  ret i8* %4, !dbg !3915
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !3916 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3917, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3919, metadata !DIExpression()), !dbg !3920
  %4 = load i32, i32* %2, align 4, !dbg !3921
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !3922
  store i8* %5, i8** %3, align 8, !dbg !3920
  %6 = load i8*, i8** %3, align 8, !dbg !3923
  ret i8* %6, !dbg !3924
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !3925 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3926, metadata !DIExpression()), !dbg !3927
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3928, metadata !DIExpression()), !dbg !3929
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3932, metadata !DIExpression()), !dbg !3933
  %10 = load i32, i32* %5, align 4, !dbg !3934
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !3935
  store i8* %11, i8** %8, align 8, !dbg !3933
  %12 = load i8*, i8** %8, align 8, !dbg !3936
  %13 = icmp eq i8* %12, null, !dbg !3938
  br i1 %13, label %14, label %21, !dbg !3939

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !3940
  %16 = icmp ugt i64 %15, 0, !dbg !3943
  br i1 %16, label %17, label %20, !dbg !3944

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !3945
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !3945
  store i8 0, i8* %19, align 1, !dbg !3946
  br label %20, !dbg !3945

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !3947
  br label %45, !dbg !3947

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3948, metadata !DIExpression()), !dbg !3950
  %22 = load i8*, i8** %8, align 8, !dbg !3951
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !3952
  store i64 %23, i64* %9, align 8, !dbg !3950
  %24 = load i64, i64* %9, align 8, !dbg !3953
  %25 = load i64, i64* %7, align 8, !dbg !3955
  %26 = icmp ult i64 %24, %25, !dbg !3956
  br i1 %26, label %27, label %32, !dbg !3957

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !3958
  %29 = load i8*, i8** %8, align 8, !dbg !3960
  %30 = load i64, i64* %9, align 8, !dbg !3961
  %31 = add i64 %30, 1, !dbg !3962
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !3963
  store i32 0, i32* %4, align 4, !dbg !3964
  br label %45, !dbg !3964

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !3965
  %34 = icmp ugt i64 %33, 0, !dbg !3968
  br i1 %34, label %35, label %44, !dbg !3969

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !3970
  %37 = load i8*, i8** %8, align 8, !dbg !3972
  %38 = load i64, i64* %7, align 8, !dbg !3973
  %39 = sub i64 %38, 1, !dbg !3974
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !3975
  %40 = load i8*, i8** %6, align 8, !dbg !3976
  %41 = load i64, i64* %7, align 8, !dbg !3977
  %42 = sub i64 %41, 1, !dbg !3978
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !3976
  store i8 0, i8* %43, align 1, !dbg !3979
  br label %44, !dbg !3980

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !3981
  br label %45, !dbg !3981

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !3982
  ret i32 %46, !dbg !3982
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

!llvm.dbg.cu = !{!2, !60, !65, !72, !208, !233, !106, !116, !123, !235, !237, !200, !243, !263, !265, !267, !269, !271, !273, !275, !214, !277, !279, !281, !283, !286, !288, !290}
!llvm.ident = !{!292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292}
!llvm.module.flags = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !46, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !33, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/tty.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19d46bb11b698354da53d591921bc5e9")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 33, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "TTY_STDIN_NOTTY", value: 1)
!9 = !DIEnumerator(name: "TTY_USAGE", value: 2)
!10 = !DIEnumerator(name: "TTY_WRITE_ERROR", value: 3)
!11 = !DIEnumerator(name: "TTY_TTYNAME_FAILURE", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 46, baseType: !6, size: 32, elements: !14)
!13 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!15 = !DIEnumerator(name: "_ISupper", value: 256)
!16 = !DIEnumerator(name: "_ISlower", value: 512)
!17 = !DIEnumerator(name: "_ISalpha", value: 1024)
!18 = !DIEnumerator(name: "_ISdigit", value: 2048)
!19 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!20 = !DIEnumerator(name: "_ISspace", value: 8192)
!21 = !DIEnumerator(name: "_ISprint", value: 16384)
!22 = !DIEnumerator(name: "_ISgraph", value: 32768)
!23 = !DIEnumerator(name: "_ISblank", value: 1)
!24 = !DIEnumerator(name: "_IScntrl", value: 2)
!25 = !DIEnumerator(name: "_ISpunct", value: 4)
!26 = !DIEnumerator(name: "_ISalnum", value: 8)
!27 = !{!28, !30, !31, !32}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !{!34, !37, !0}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "silent", scope: !2, file: !3, line: 47, type: !36, isLocal: true, isDefinition: true)
!36 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !39, file: !40, line: 575, type: !31, isLocal: true, isDefinition: true)
!39 = distinct !DISubprogram(name: "oputs_", scope: !40, file: !40, line: 573, type: !41, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !45)
!40 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!45 = !{}
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1280, elements: !56)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !49, line: 50, size: 256, elements: !50)
!49 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!50 = !{!51, !52, !53, !55}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !48, file: !49, line: 52, baseType: !43, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !48, file: !49, line: 55, baseType: !31, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !48, file: !49, line: 56, baseType: !54, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !48, file: !49, line: 57, baseType: !31, size: 32, offset: 192)
!56 = !{!57}
!57 = !DISubrange(count: 5)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "Version", scope: !60, file: !61, line: 3, type: !43, isLocal: false, isDefinition: true)
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !62, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!62 = !{!58}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "file_name", scope: !65, file: !66, line: 45, type: !43, isLocal: true, isDefinition: true)
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !67, splitDebugInlining: false, nameTableKind: None)
!66 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!67 = !{!63, !68}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !65, file: !66, line: 55, type: !36, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !72, file: !73, line: 66, type: !101, isLocal: false, isDefinition: true)
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !74, globals: !75, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!74 = !{!30}
!75 = !{!76, !95, !70, !97, !99}
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "old_file_name", scope: !78, file: !73, line: 304, type: !43, isLocal: true, isDefinition: true)
!78 = distinct !DISubprogram(name: "verror_at_line", scope: !73, file: !73, line: 298, type: !79, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !45)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !31, !31, !43, !6, !43, !81}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !82, line: 52, baseType: !83)
!82 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !84, line: 32, baseType: !85)
!84 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !86, baseType: !87)
!86 = !DIFile(filename: "lib/error.c", directory: "/src")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !88, size: 256, elements: !89)
!88 = !DINamespace(name: "std", scope: null)
!89 = !{!90, !91, !92, !93, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !87, file: !86, baseType: !30, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !87, file: !86, baseType: !30, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !87, file: !86, baseType: !30, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !87, file: !86, baseType: !31, size: 32, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !87, file: !86, baseType: !31, size: 32, offset: 224)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "old_line_number", scope: !78, file: !73, line: 305, type: !6, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "error_message_count", scope: !72, file: !73, line: 69, type: !6, isLocal: false, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !72, file: !73, line: 295, type: !31, isLocal: false, isDefinition: true)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "program_name", scope: !106, file: !107, line: 31, type: !43, isLocal: false, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !108, globals: !109, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!108 = !{!28}
!109 = !{!104}
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "utf07FF", scope: !112, file: !113, line: 46, type: !118, isLocal: true, isDefinition: true)
!112 = distinct !DISubprogram(name: "proper_name_lite", scope: !113, file: !113, line: 38, type: !114, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !116, retainedNodes: !45)
!113 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!114 = !DISubroutineType(types: !115)
!115 = !{!43, !43, !43}
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !117, splitDebugInlining: false, nameTableKind: None)
!117 = !{!110}
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 16, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 2)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !123, file: !124, line: 76, type: !194, isLocal: false, isDefinition: true)
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !125, retainedTypes: !145, globals: !149, splitDebugInlining: false, nameTableKind: None)
!124 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!125 = !{!126, !140, !12}
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !127, line: 42, baseType: !6, size: 32, elements: !128)
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
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !127, line: 254, baseType: !6, size: 32, elements: !141)
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!143 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!144 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!145 = !{!31, !32, !146}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !147, line: 46, baseType: !148)
!147 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!148 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!149 = !{!121, !150, !156, !168, !170, !175, !183, !190, !192}
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !123, file: !124, line: 92, type: !152, isLocal: false, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 320, elements: !154)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!154 = !{!155}
!155 = !DISubrange(count: 10)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !123, file: !124, line: 1040, type: !158, isLocal: false, isDefinition: true)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !124, line: 56, size: 448, elements: !159)
!159 = !{!160, !161, !162, !166, !167}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !158, file: !124, line: 59, baseType: !126, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !158, file: !124, line: 62, baseType: !31, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !158, file: !124, line: 66, baseType: !163, size: 256, offset: 64)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 8)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !158, file: !124, line: 69, baseType: !43, size: 64, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !158, file: !124, line: 72, baseType: !43, size: 64, offset: 384)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !123, file: !124, line: 107, type: !158, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "slot0", scope: !123, file: !124, line: 831, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2048, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 256)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "quote", scope: !177, file: !124, line: 228, type: !180, isLocal: true, isDefinition: true)
!177 = distinct !DISubprogram(name: "gettext_quote", scope: !124, file: !124, line: 197, type: !178, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !123, retainedNodes: !45)
!178 = !DISubroutineType(types: !179)
!179 = !{!43, !43, !126}
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !181)
!181 = !{!120, !182}
!182 = !DISubrange(count: 4)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "slotvec", scope: !123, file: !124, line: 834, type: !185, isLocal: true, isDefinition: true)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !124, line: 823, size: 128, elements: !187)
!187 = !{!188, !189}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !186, file: !124, line: 825, baseType: !146, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !124, line: 826, baseType: !28, size: 64, offset: 64)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "nslots", scope: !123, file: !124, line: 832, type: !31, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "slotvec0", scope: !123, file: !124, line: 833, type: !186, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 704, elements: !196)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!196 = !{!197}
!197 = !DISubrange(count: 11)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !200, file: !201, line: 26, type: !203, isLocal: false, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !202, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!202 = !{!198}
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 376, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 47)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "exit_failure", scope: !208, file: !209, line: 24, type: !211, isLocal: false, isDefinition: true)
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !210, splitDebugInlining: false, nameTableKind: None)
!209 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!210 = !{!206}
!211 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "internal_state", scope: !214, file: !215, line: 97, type: !219, isLocal: true, isDefinition: true)
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !216, globals: !218, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!216 = !{!30, !146, !217}
!217 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!218 = !{!212}
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !220, line: 6, baseType: !221)
!220 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !222, line: 21, baseType: !223)
!222 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !222, line: 13, size: 64, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !223, file: !222, line: 15, baseType: !31, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !223, file: !222, line: 20, baseType: !227, size: 32, offset: 32)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !222, line: 16, size: 32, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !227, file: !222, line: 18, baseType: !6, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !227, file: !222, line: 19, baseType: !231, size: 32)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, elements: !232)
!232 = !{!182}
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!234 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!236 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!237 = distinct !DICompileUnit(language: DW_LANG_C99, file: !238, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !239, retainedTypes: !74, splitDebugInlining: false, nameTableKind: None)
!238 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!239 = !{!240}
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !238, line: 40, baseType: !6, size: 32, elements: !241)
!241 = !{!242}
!242 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !245, retainedTypes: !262, splitDebugInlining: false, nameTableKind: None)
!244 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!245 = !{!246, !253}
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !247, file: !244, line: 188, baseType: !6, size: 32, elements: !251)
!247 = distinct !DISubprogram(name: "x2nrealloc", scope: !244, file: !244, line: 176, type: !248, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!248 = !DISubroutineType(types: !249)
!249 = !{!30, !30, !250, !146}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!251 = !{!252}
!252 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !254, file: !244, line: 228, baseType: !6, size: 32, elements: !251)
!254 = distinct !DISubprogram(name: "xpalloc", scope: !244, file: !244, line: 223, type: !255, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!255 = !DISubroutineType(types: !256)
!256 = !{!30, !30, !257, !258, !260, !258}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !259, line: 130, baseType: !260)
!259 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !147, line: 35, baseType: !261)
!261 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!262 = !{!28, !30, !36, !261, !148}
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!264 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!266 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!267 = distinct !DICompileUnit(language: DW_LANG_C99, file: !268, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!268 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!269 = distinct !DICompileUnit(language: DW_LANG_C99, file: !270, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!270 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !74, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !74, splitDebugInlining: false, nameTableKind: None)
!274 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!275 = distinct !DICompileUnit(language: DW_LANG_C99, file: !276, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !74, splitDebugInlining: false, nameTableKind: None)
!276 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!277 = distinct !DICompileUnit(language: DW_LANG_C99, file: !278, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!278 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!280 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!282 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !285, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!285 = !{!36, !148, !30}
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!287 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!289 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !74, splitDebugInlining: false, nameTableKind: None)
!291 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!292 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!293 = !{i32 7, !"Dwarf Version", i32 5}
!294 = !{i32 2, !"Debug Info Version", i32 3}
!295 = !{i32 1, !"wchar_size", i32 4}
!296 = !{i32 1, !"branch-target-enforcement", i32 0}
!297 = !{i32 1, !"sign-return-address", i32 0}
!298 = !{i32 1, !"sign-return-address-all", i32 0}
!299 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!300 = !{i32 7, !"PIC Level", i32 2}
!301 = !{i32 7, !"PIE Level", i32 2}
!302 = !{i32 7, !"uwtable", i32 1}
!303 = !{i32 7, !"frame-pointer", i32 1}
!304 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 59, type: !305, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !31}
!307 = !DILocalVariable(name: "status", arg: 1, scope: !304, file: !3, line: 59, type: !31)
!308 = !DILocation(line: 59, column: 12, scope: !304)
!309 = !DILocation(line: 61, column: 7, scope: !310)
!310 = distinct !DILexicalBlock(scope: !304, file: !3, line: 61, column: 7)
!311 = !DILocation(line: 61, column: 14, scope: !310)
!312 = !DILocation(line: 61, column: 7, scope: !304)
!313 = !DILocation(line: 62, column: 5, scope: !310)
!314 = !DILocation(line: 62, column: 5, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !3, line: 62, column: 5)
!316 = !DILocation(line: 65, column: 15, scope: !317)
!317 = distinct !DILexicalBlock(scope: !310, file: !3, line: 64, column: 5)
!318 = !DILocation(line: 65, column: 45, scope: !317)
!319 = !DILocation(line: 65, column: 7, scope: !317)
!320 = !DILocation(line: 66, column: 7, scope: !317)
!321 = !DILocation(line: 70, column: 7, scope: !317)
!322 = !DILocation(line: 74, column: 7, scope: !317)
!323 = !DILocation(line: 75, column: 7, scope: !317)
!324 = !DILocation(line: 76, column: 7, scope: !317)
!325 = !DILocation(line: 78, column: 9, scope: !304)
!326 = !DILocation(line: 78, column: 3, scope: !304)
!327 = !DILocalVariable(name: "program", arg: 1, scope: !39, file: !40, line: 573, type: !43)
!328 = !DILocation(line: 573, column: 34, scope: !39)
!329 = !DILocalVariable(name: "option", arg: 2, scope: !39, file: !40, line: 573, type: !43)
!330 = !DILocation(line: 573, column: 55, scope: !39)
!331 = !DILocation(line: 581, column: 7, scope: !332)
!332 = distinct !DILexicalBlock(scope: !39, file: !40, line: 581, column: 7)
!333 = !DILocation(line: 581, column: 19, scope: !332)
!334 = !DILocation(line: 581, column: 7, scope: !39)
!335 = !DILocalVariable(name: "term", scope: !336, file: !40, line: 585, type: !43)
!336 = distinct !DILexicalBlock(scope: !332, file: !40, line: 582, column: 5)
!337 = !DILocation(line: 585, column: 19, scope: !336)
!338 = !DILocation(line: 585, column: 26, scope: !336)
!339 = !DILocation(line: 586, column: 23, scope: !336)
!340 = !DILocation(line: 586, column: 28, scope: !336)
!341 = !DILocation(line: 586, column: 33, scope: !336)
!342 = !DILocation(line: 586, column: 32, scope: !336)
!343 = !DILocation(line: 586, column: 38, scope: !336)
!344 = !DILocation(line: 586, column: 48, scope: !336)
!345 = !DILocation(line: 586, column: 41, scope: !336)
!346 = !DILocation(line: 586, column: 19, scope: !336)
!347 = !DILocation(line: 587, column: 5, scope: !336)
!348 = !DILocation(line: 588, column: 7, scope: !349)
!349 = distinct !DILexicalBlock(scope: !39, file: !40, line: 588, column: 7)
!350 = !DILocation(line: 588, column: 7, scope: !39)
!351 = !DILocation(line: 590, column: 7, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !40, line: 589, column: 5)
!353 = !DILocation(line: 591, column: 7, scope: !352)
!354 = !DILocalVariable(name: "double_space", scope: !39, file: !40, line: 594, type: !36)
!355 = !DILocation(line: 594, column: 8, scope: !39)
!356 = !DILocalVariable(name: "first_word", scope: !39, file: !40, line: 595, type: !43)
!357 = !DILocation(line: 595, column: 15, scope: !39)
!358 = !DILocation(line: 595, column: 28, scope: !39)
!359 = !DILocation(line: 595, column: 45, scope: !39)
!360 = !DILocation(line: 595, column: 37, scope: !39)
!361 = !DILocation(line: 595, column: 35, scope: !39)
!362 = !DILocalVariable(name: "option_text", scope: !39, file: !40, line: 596, type: !43)
!363 = !DILocation(line: 596, column: 15, scope: !39)
!364 = !DILocation(line: 596, column: 37, scope: !39)
!365 = !DILocation(line: 596, column: 29, scope: !39)
!366 = !DILocation(line: 597, column: 8, scope: !367)
!367 = distinct !DILexicalBlock(scope: !39, file: !40, line: 597, column: 7)
!368 = !DILocation(line: 597, column: 7, scope: !39)
!369 = !DILocation(line: 599, column: 21, scope: !370)
!370 = distinct !DILexicalBlock(scope: !367, file: !40, line: 598, column: 5)
!371 = !DILocation(line: 599, column: 19, scope: !370)
!372 = !DILocation(line: 602, column: 20, scope: !370)
!373 = !DILocation(line: 603, column: 5, scope: !370)
!374 = !DILocation(line: 604, column: 12, scope: !375)
!375 = distinct !DILexicalBlock(scope: !367, file: !40, line: 604, column: 12)
!376 = !DILocation(line: 604, column: 27, scope: !375)
!377 = !DILocation(line: 604, column: 24, scope: !375)
!378 = !DILocation(line: 604, column: 12, scope: !367)
!379 = !DILocalVariable(name: "s", scope: !380, file: !40, line: 608, type: !43)
!380 = distinct !DILexicalBlock(scope: !375, file: !40, line: 605, column: 5)
!381 = !DILocation(line: 608, column: 19, scope: !380)
!382 = !DILocation(line: 608, column: 23, scope: !380)
!383 = !DILocalVariable(name: "spaces", scope: !380, file: !40, line: 609, type: !146)
!384 = !DILocation(line: 609, column: 14, scope: !380)
!385 = !DILocation(line: 610, column: 7, scope: !380)
!386 = !DILocation(line: 610, column: 14, scope: !380)
!387 = !DILocation(line: 610, column: 18, scope: !380)
!388 = !DILocation(line: 610, column: 16, scope: !380)
!389 = !DILocation(line: 610, column: 30, scope: !380)
!390 = !DILocation(line: 610, column: 33, scope: !380)
!391 = !DILocation(line: 610, column: 40, scope: !380)
!392 = !DILocation(line: 0, scope: !380)
!393 = !DILocation(line: 611, column: 21, scope: !380)
!394 = !DILocation(line: 611, column: 20, scope: !380)
!395 = !DILocation(line: 611, column: 19, scope: !380)
!396 = !DILocation(line: 611, column: 16, scope: !380)
!397 = distinct !{!397, !385, !393, !398}
!398 = !{!"llvm.loop.mustprogress"}
!399 = !DILocation(line: 612, column: 11, scope: !400)
!400 = distinct !DILexicalBlock(scope: !380, file: !40, line: 612, column: 11)
!401 = !DILocation(line: 612, column: 18, scope: !400)
!402 = !DILocation(line: 612, column: 11, scope: !380)
!403 = !DILocation(line: 615, column: 25, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !40, line: 613, column: 9)
!405 = !DILocation(line: 615, column: 23, scope: !404)
!406 = !DILocation(line: 616, column: 24, scope: !404)
!407 = !DILocation(line: 617, column: 9, scope: !404)
!408 = !DILocation(line: 618, column: 5, scope: !380)
!409 = !DILocalVariable(name: "anchor_len", scope: !39, file: !40, line: 620, type: !146)
!410 = !DILocation(line: 620, column: 10, scope: !39)
!411 = !DILocation(line: 620, column: 32, scope: !39)
!412 = !DILocation(line: 620, column: 23, scope: !39)
!413 = !DILocalVariable(name: "desc_text", scope: !39, file: !40, line: 625, type: !43)
!414 = !DILocation(line: 625, column: 15, scope: !39)
!415 = !DILocation(line: 625, column: 27, scope: !39)
!416 = !DILocation(line: 625, column: 41, scope: !39)
!417 = !DILocation(line: 625, column: 39, scope: !39)
!418 = !DILocation(line: 626, column: 3, scope: !39)
!419 = !DILocation(line: 626, column: 11, scope: !39)
!420 = !DILocation(line: 626, column: 10, scope: !39)
!421 = !DILocation(line: 626, column: 21, scope: !39)
!422 = !DILocation(line: 626, column: 25, scope: !39)
!423 = !DILocation(line: 626, column: 24, scope: !39)
!424 = !DILocation(line: 626, column: 35, scope: !39)
!425 = !DILocation(line: 0, scope: !39)
!426 = !DILocation(line: 628, column: 12, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !40, line: 628, column: 11)
!428 = distinct !DILexicalBlock(scope: !39, file: !40, line: 627, column: 5)
!429 = !DILocation(line: 628, column: 11, scope: !427)
!430 = !DILocation(line: 628, column: 22, scope: !427)
!431 = !DILocation(line: 628, column: 29, scope: !427)
!432 = !DILocation(line: 628, column: 34, scope: !427)
!433 = !DILocation(line: 628, column: 44, scope: !427)
!434 = !DILocation(line: 628, column: 32, scope: !427)
!435 = !DILocation(line: 628, column: 49, scope: !427)
!436 = !DILocation(line: 628, column: 11, scope: !428)
!437 = !DILocation(line: 629, column: 22, scope: !427)
!438 = !DILocation(line: 629, column: 9, scope: !427)
!439 = !DILocation(line: 630, column: 11, scope: !440)
!440 = distinct !DILexicalBlock(scope: !428, file: !40, line: 630, column: 11)
!441 = !DILocation(line: 630, column: 11, scope: !428)
!442 = !DILocation(line: 632, column: 16, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !40, line: 632, column: 15)
!444 = distinct !DILexicalBlock(scope: !440, file: !40, line: 631, column: 9)
!445 = !DILocation(line: 632, column: 15, scope: !443)
!446 = !DILocation(line: 632, column: 26, scope: !443)
!447 = !DILocation(line: 632, column: 34, scope: !443)
!448 = !DILocation(line: 632, column: 37, scope: !443)
!449 = !DILocation(line: 632, column: 15, scope: !444)
!450 = !DILocation(line: 633, column: 13, scope: !443)
!451 = !DILocation(line: 636, column: 16, scope: !452)
!452 = distinct !DILexicalBlock(scope: !444, file: !40, line: 636, column: 15)
!453 = !DILocation(line: 636, column: 29, scope: !452)
!454 = !DILocation(line: 636, column: 34, scope: !452)
!455 = !DILocation(line: 636, column: 44, scope: !452)
!456 = !DILocation(line: 636, column: 32, scope: !452)
!457 = !DILocation(line: 636, column: 49, scope: !452)
!458 = !DILocation(line: 636, column: 15, scope: !444)
!459 = !DILocation(line: 637, column: 13, scope: !452)
!460 = !DILocation(line: 638, column: 9, scope: !444)
!461 = !DILocation(line: 640, column: 16, scope: !428)
!462 = distinct !{!462, !418, !463, !398}
!463 = !DILocation(line: 641, column: 5, scope: !39)
!464 = !DILocation(line: 644, column: 3, scope: !39)
!465 = !DILocalVariable(name: "url_program", scope: !39, file: !40, line: 648, type: !43)
!466 = !DILocation(line: 648, column: 15, scope: !39)
!467 = !DILocation(line: 648, column: 38, scope: !39)
!468 = !DILocation(line: 648, column: 31, scope: !39)
!469 = !DILocation(line: 649, column: 38, scope: !39)
!470 = !DILocation(line: 649, column: 31, scope: !39)
!471 = !DILocation(line: 650, column: 38, scope: !39)
!472 = !DILocation(line: 650, column: 31, scope: !39)
!473 = !DILocation(line: 651, column: 38, scope: !39)
!474 = !DILocation(line: 651, column: 31, scope: !39)
!475 = !DILocation(line: 652, column: 38, scope: !39)
!476 = !DILocation(line: 652, column: 31, scope: !39)
!477 = !DILocation(line: 653, column: 38, scope: !39)
!478 = !DILocation(line: 653, column: 31, scope: !39)
!479 = !DILocation(line: 654, column: 38, scope: !39)
!480 = !DILocation(line: 654, column: 31, scope: !39)
!481 = !DILocation(line: 655, column: 38, scope: !39)
!482 = !DILocation(line: 655, column: 31, scope: !39)
!483 = !DILocation(line: 656, column: 38, scope: !39)
!484 = !DILocation(line: 656, column: 31, scope: !39)
!485 = !DILocation(line: 657, column: 38, scope: !39)
!486 = !DILocation(line: 657, column: 31, scope: !39)
!487 = !DILocation(line: 658, column: 31, scope: !39)
!488 = !DILocation(line: 663, column: 7, scope: !489)
!489 = distinct !DILexicalBlock(scope: !39, file: !40, line: 663, column: 7)
!490 = !DILocation(line: 664, column: 7, scope: !489)
!491 = !DILocation(line: 664, column: 10, scope: !489)
!492 = !DILocation(line: 663, column: 7, scope: !39)
!493 = !DILocation(line: 670, column: 15, scope: !494)
!494 = distinct !DILexicalBlock(scope: !489, file: !40, line: 665, column: 5)
!495 = !DILocation(line: 670, column: 28, scope: !494)
!496 = !DILocation(line: 670, column: 47, scope: !494)
!497 = !DILocation(line: 670, column: 41, scope: !494)
!498 = !DILocation(line: 670, column: 59, scope: !494)
!499 = !DILocation(line: 669, column: 7, scope: !494)
!500 = !DILocation(line: 671, column: 5, scope: !494)
!501 = !DILocation(line: 676, column: 48, scope: !502)
!502 = distinct !DILexicalBlock(scope: !489, file: !40, line: 673, column: 5)
!503 = !DILocation(line: 677, column: 21, scope: !502)
!504 = !DILocation(line: 677, column: 15, scope: !502)
!505 = !DILocation(line: 677, column: 33, scope: !502)
!506 = !DILocation(line: 676, column: 7, scope: !502)
!507 = !DILocation(line: 679, column: 3, scope: !39)
!508 = !DILocation(line: 683, column: 3, scope: !39)
!509 = !DILocation(line: 686, column: 3, scope: !39)
!510 = !DILocation(line: 688, column: 3, scope: !39)
!511 = !DILocation(line: 691, column: 3, scope: !39)
!512 = !DILocation(line: 695, column: 3, scope: !39)
!513 = !DILocation(line: 696, column: 1, scope: !39)
!514 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !40, file: !40, line: 836, type: !515, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !45)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !43}
!517 = !DILocalVariable(name: "program", arg: 1, scope: !514, file: !40, line: 836, type: !43)
!518 = !DILocation(line: 836, column: 34, scope: !514)
!519 = !DILocalVariable(name: "infomap", scope: !514, file: !40, line: 838, type: !520)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 896, elements: !526)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !514, file: !40, line: 838, size: 128, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !522, file: !40, line: 838, baseType: !43, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !522, file: !40, line: 838, baseType: !43, size: 64, offset: 64)
!526 = !{!527}
!527 = !DISubrange(count: 7)
!528 = !DILocation(line: 838, column: 67, scope: !514)
!529 = !DILocalVariable(name: "node", scope: !514, file: !40, line: 848, type: !43)
!530 = !DILocation(line: 848, column: 15, scope: !514)
!531 = !DILocation(line: 848, column: 22, scope: !514)
!532 = !DILocalVariable(name: "map_prog", scope: !514, file: !40, line: 849, type: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!534 = !DILocation(line: 849, column: 25, scope: !514)
!535 = !DILocation(line: 849, column: 36, scope: !514)
!536 = !DILocation(line: 851, column: 3, scope: !514)
!537 = !DILocation(line: 851, column: 10, scope: !514)
!538 = !DILocation(line: 851, column: 20, scope: !514)
!539 = !DILocation(line: 851, column: 28, scope: !514)
!540 = !DILocation(line: 851, column: 40, scope: !514)
!541 = !DILocation(line: 851, column: 49, scope: !514)
!542 = !DILocation(line: 851, column: 59, scope: !514)
!543 = !DILocation(line: 851, column: 33, scope: !514)
!544 = !DILocation(line: 851, column: 31, scope: !514)
!545 = !DILocation(line: 0, scope: !514)
!546 = !DILocation(line: 852, column: 13, scope: !514)
!547 = distinct !{!547, !536, !546, !398}
!548 = !DILocation(line: 854, column: 7, scope: !549)
!549 = distinct !DILexicalBlock(scope: !514, file: !40, line: 854, column: 7)
!550 = !DILocation(line: 854, column: 17, scope: !549)
!551 = !DILocation(line: 854, column: 7, scope: !514)
!552 = !DILocation(line: 855, column: 12, scope: !549)
!553 = !DILocation(line: 855, column: 22, scope: !549)
!554 = !DILocation(line: 855, column: 10, scope: !549)
!555 = !DILocation(line: 855, column: 5, scope: !549)
!556 = !DILocation(line: 857, column: 3, scope: !514)
!557 = !DILocalVariable(name: "lc_messages", scope: !514, file: !40, line: 861, type: !43)
!558 = !DILocation(line: 861, column: 15, scope: !514)
!559 = !DILocation(line: 861, column: 29, scope: !514)
!560 = !DILocation(line: 862, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !514, file: !40, line: 862, column: 7)
!562 = !DILocation(line: 862, column: 19, scope: !561)
!563 = !DILocation(line: 862, column: 22, scope: !561)
!564 = !DILocation(line: 862, column: 7, scope: !514)
!565 = !DILocation(line: 868, column: 7, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !40, line: 863, column: 5)
!567 = !DILocation(line: 870, column: 5, scope: !566)
!568 = !DILocalVariable(name: "url_program", scope: !514, file: !40, line: 874, type: !43)
!569 = !DILocation(line: 874, column: 15, scope: !514)
!570 = !DILocation(line: 874, column: 36, scope: !514)
!571 = !DILocation(line: 874, column: 29, scope: !514)
!572 = !DILocation(line: 874, column: 61, scope: !514)
!573 = !DILocation(line: 875, column: 11, scope: !514)
!574 = !DILocation(line: 876, column: 24, scope: !514)
!575 = !DILocation(line: 875, column: 3, scope: !514)
!576 = !DILocation(line: 877, column: 11, scope: !514)
!577 = !DILocation(line: 878, column: 11, scope: !514)
!578 = !DILocation(line: 878, column: 17, scope: !514)
!579 = !DILocation(line: 878, column: 25, scope: !514)
!580 = !DILocation(line: 878, column: 22, scope: !514)
!581 = !DILocation(line: 877, column: 3, scope: !514)
!582 = !DILocation(line: 879, column: 1, scope: !514)
!583 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 82, type: !584, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!584 = !DISubroutineType(types: !585)
!585 = !{!31, !31, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!587 = !DILocalVariable(name: "argc", arg: 1, scope: !583, file: !3, line: 82, type: !31)
!588 = !DILocation(line: 82, column: 11, scope: !583)
!589 = !DILocalVariable(name: "argv", arg: 2, scope: !583, file: !3, line: 82, type: !586)
!590 = !DILocation(line: 82, column: 24, scope: !583)
!591 = !DILocalVariable(name: "optc", scope: !583, file: !3, line: 84, type: !31)
!592 = !DILocation(line: 84, column: 7, scope: !583)
!593 = !DILocation(line: 87, column: 21, scope: !583)
!594 = !DILocation(line: 87, column: 3, scope: !583)
!595 = !DILocation(line: 88, column: 3, scope: !583)
!596 = !DILocation(line: 89, column: 3, scope: !583)
!597 = !DILocation(line: 90, column: 3, scope: !583)
!598 = !DILocation(line: 92, column: 3, scope: !583)
!599 = !DILocation(line: 93, column: 3, scope: !583)
!600 = !DILocation(line: 95, column: 3, scope: !583)
!601 = !DILocation(line: 95, column: 31, scope: !583)
!602 = !DILocation(line: 95, column: 37, scope: !583)
!603 = !DILocation(line: 95, column: 18, scope: !583)
!604 = !DILocation(line: 95, column: 16, scope: !583)
!605 = !DILocation(line: 95, column: 65, scope: !583)
!606 = !DILocation(line: 97, column: 15, scope: !607)
!607 = distinct !DILexicalBlock(scope: !583, file: !3, line: 96, column: 5)
!608 = !DILocation(line: 97, column: 7, scope: !607)
!609 = !DILocation(line: 100, column: 18, scope: !610)
!610 = distinct !DILexicalBlock(scope: !607, file: !3, line: 98, column: 9)
!611 = !DILocation(line: 101, column: 11, scope: !610)
!612 = !DILocation(line: 103, column: 9, scope: !610)
!613 = !DILocation(line: 105, column: 9, scope: !610)
!614 = !DILocation(line: 108, column: 11, scope: !610)
!615 = distinct !{!615, !600, !616, !398}
!616 = !DILocation(line: 110, column: 5, scope: !583)
!617 = !DILocation(line: 112, column: 7, scope: !618)
!618 = distinct !DILexicalBlock(scope: !583, file: !3, line: 112, column: 7)
!619 = !DILocation(line: 112, column: 16, scope: !618)
!620 = !DILocation(line: 112, column: 14, scope: !618)
!621 = !DILocation(line: 112, column: 7, scope: !583)
!622 = !DILocation(line: 114, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !618, file: !3, line: 113, column: 5)
!624 = !DILocation(line: 115, column: 7, scope: !623)
!625 = !DILocation(line: 118, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !583, file: !3, line: 118, column: 7)
!627 = !DILocation(line: 118, column: 7, scope: !583)
!628 = !DILocation(line: 119, column: 12, scope: !626)
!629 = !DILocation(line: 119, column: 5, scope: !626)
!630 = !DILocalVariable(name: "status", scope: !583, file: !3, line: 121, type: !31)
!631 = !DILocation(line: 121, column: 7, scope: !583)
!632 = !DILocalVariable(name: "tty", scope: !583, file: !3, line: 122, type: !43)
!633 = !DILocation(line: 122, column: 15, scope: !583)
!634 = !DILocation(line: 122, column: 21, scope: !583)
!635 = !DILocation(line: 124, column: 7, scope: !636)
!636 = distinct !DILexicalBlock(scope: !583, file: !3, line: 124, column: 7)
!637 = !DILocation(line: 124, column: 7, scope: !583)
!638 = !DILocation(line: 125, column: 12, scope: !636)
!639 = !DILocation(line: 125, column: 5, scope: !636)
!640 = !DILocalVariable(name: "ttyname_err", scope: !641, file: !3, line: 128, type: !31)
!641 = distinct !DILexicalBlock(scope: !636, file: !3, line: 127, column: 5)
!642 = !DILocation(line: 128, column: 11, scope: !641)
!643 = !DILocation(line: 128, column: 25, scope: !641)
!644 = !DILocation(line: 129, column: 11, scope: !645)
!645 = distinct !DILexicalBlock(scope: !641, file: !3, line: 129, column: 11)
!646 = !DILocation(line: 129, column: 11, scope: !641)
!647 = !DILocation(line: 130, column: 9, scope: !645)
!648 = !DILocation(line: 131, column: 13, scope: !641)
!649 = !DILocation(line: 131, column: 11, scope: !641)
!650 = !DILocation(line: 132, column: 14, scope: !641)
!651 = !DILocation(line: 135, column: 9, scope: !583)
!652 = !DILocation(line: 135, column: 3, scope: !583)
!653 = !DILocation(line: 136, column: 10, scope: !583)
!654 = !DILocation(line: 136, column: 3, scope: !583)
!655 = !DILocation(line: 137, column: 1, scope: !583)
!656 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !40, file: !40, line: 102, type: !305, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !45)
!657 = !DILocalVariable(name: "status", arg: 1, scope: !656, file: !40, line: 102, type: !31)
!658 = !DILocation(line: 102, column: 30, scope: !656)
!659 = !DILocation(line: 104, column: 7, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !40, line: 104, column: 7)
!661 = !DILocation(line: 104, column: 14, scope: !660)
!662 = !DILocation(line: 104, column: 7, scope: !656)
!663 = !DILocation(line: 105, column: 20, scope: !660)
!664 = !DILocation(line: 105, column: 18, scope: !660)
!665 = !DILocation(line: 105, column: 5, scope: !660)
!666 = !DILocation(line: 106, column: 1, scope: !656)
!667 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !66, file: !66, line: 50, type: !515, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !45)
!668 = !DILocalVariable(name: "file", arg: 1, scope: !667, file: !66, line: 50, type: !43)
!669 = !DILocation(line: 50, column: 41, scope: !667)
!670 = !DILocation(line: 52, column: 15, scope: !667)
!671 = !DILocation(line: 52, column: 13, scope: !667)
!672 = !DILocation(line: 53, column: 1, scope: !667)
!673 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !66, file: !66, line: 87, type: !674, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !45)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !36}
!676 = !DILocalVariable(name: "ignore", arg: 1, scope: !673, file: !66, line: 87, type: !36)
!677 = !DILocation(line: 87, column: 37, scope: !673)
!678 = !DILocation(line: 89, column: 18, scope: !673)
!679 = !DILocation(line: 89, column: 16, scope: !673)
!680 = !DILocation(line: 90, column: 1, scope: !673)
!681 = distinct !DISubprogram(name: "close_stdout", scope: !66, file: !66, line: 116, type: !102, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !45)
!682 = !DILocation(line: 118, column: 21, scope: !683)
!683 = distinct !DILexicalBlock(scope: !681, file: !66, line: 118, column: 7)
!684 = !DILocation(line: 118, column: 7, scope: !683)
!685 = !DILocation(line: 118, column: 29, scope: !683)
!686 = !DILocation(line: 119, column: 7, scope: !683)
!687 = !DILocation(line: 119, column: 12, scope: !683)
!688 = !DILocation(line: 119, column: 25, scope: !683)
!689 = !DILocation(line: 119, column: 28, scope: !683)
!690 = !DILocation(line: 119, column: 34, scope: !683)
!691 = !DILocation(line: 118, column: 7, scope: !681)
!692 = !DILocalVariable(name: "write_error", scope: !693, file: !66, line: 121, type: !43)
!693 = distinct !DILexicalBlock(scope: !683, file: !66, line: 120, column: 5)
!694 = !DILocation(line: 121, column: 19, scope: !693)
!695 = !DILocation(line: 121, column: 33, scope: !693)
!696 = !DILocation(line: 122, column: 11, scope: !697)
!697 = distinct !DILexicalBlock(scope: !693, file: !66, line: 122, column: 11)
!698 = !DILocation(line: 122, column: 11, scope: !693)
!699 = !DILocation(line: 123, column: 9, scope: !697)
!700 = !DILocation(line: 126, column: 9, scope: !697)
!701 = !DILocation(line: 128, column: 14, scope: !693)
!702 = !DILocation(line: 128, column: 7, scope: !693)
!703 = !DILocation(line: 133, column: 42, scope: !704)
!704 = distinct !DILexicalBlock(scope: !681, file: !66, line: 133, column: 7)
!705 = !DILocation(line: 133, column: 28, scope: !704)
!706 = !DILocation(line: 133, column: 50, scope: !704)
!707 = !DILocation(line: 133, column: 7, scope: !681)
!708 = !DILocation(line: 134, column: 12, scope: !704)
!709 = !DILocation(line: 134, column: 5, scope: !704)
!710 = !DILocation(line: 135, column: 1, scope: !681)
!711 = distinct !DISubprogram(name: "verror", scope: !73, file: !73, line: 251, type: !712, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !45)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !31, !31, !43, !81}
!714 = !DILocalVariable(name: "status", arg: 1, scope: !711, file: !73, line: 251, type: !31)
!715 = !DILocation(line: 251, column: 1, scope: !711)
!716 = !DILocalVariable(name: "errnum", arg: 2, scope: !711, file: !73, line: 251, type: !31)
!717 = !DILocalVariable(name: "message", arg: 3, scope: !711, file: !73, line: 251, type: !43)
!718 = !DILocalVariable(name: "args", arg: 4, scope: !711, file: !73, line: 251, type: !81)
!719 = !DILocation(line: 261, column: 3, scope: !711)
!720 = !DILocation(line: 265, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !711, file: !73, line: 265, column: 7)
!722 = !DILocation(line: 265, column: 7, scope: !711)
!723 = !DILocation(line: 266, column: 7, scope: !721)
!724 = !DILocation(line: 266, column: 5, scope: !721)
!725 = !DILocation(line: 272, column: 16, scope: !726)
!726 = distinct !DILexicalBlock(scope: !721, file: !73, line: 268, column: 5)
!727 = !DILocation(line: 272, column: 32, scope: !726)
!728 = !DILocation(line: 272, column: 7, scope: !726)
!729 = !DILocation(line: 276, column: 3, scope: !711)
!730 = !DILocation(line: 282, column: 1, scope: !711)
!731 = distinct !DISubprogram(name: "flush_stdout", scope: !73, file: !73, line: 163, type: !102, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !72, retainedNodes: !45)
!732 = !DILocalVariable(name: "stdout_fd", scope: !731, file: !73, line: 166, type: !31)
!733 = !DILocation(line: 166, column: 7, scope: !731)
!734 = !DILocation(line: 172, column: 13, scope: !731)
!735 = !DILocation(line: 182, column: 12, scope: !736)
!736 = distinct !DILexicalBlock(scope: !731, file: !73, line: 182, column: 7)
!737 = !DILocation(line: 182, column: 9, scope: !736)
!738 = !DILocation(line: 182, column: 22, scope: !736)
!739 = !DILocation(line: 182, column: 34, scope: !736)
!740 = !DILocation(line: 182, column: 25, scope: !736)
!741 = !DILocation(line: 182, column: 7, scope: !731)
!742 = !DILocation(line: 184, column: 5, scope: !736)
!743 = !DILocation(line: 185, column: 1, scope: !731)
!744 = distinct !DISubprogram(name: "error_tail", scope: !73, file: !73, line: 219, type: !712, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !72, retainedNodes: !45)
!745 = !DILocalVariable(name: "status", arg: 1, scope: !744, file: !73, line: 219, type: !31)
!746 = !DILocation(line: 219, column: 1, scope: !744)
!747 = !DILocalVariable(name: "errnum", arg: 2, scope: !744, file: !73, line: 219, type: !31)
!748 = !DILocalVariable(name: "message", arg: 3, scope: !744, file: !73, line: 219, type: !43)
!749 = !DILocalVariable(name: "args", arg: 4, scope: !744, file: !73, line: 219, type: !81)
!750 = !DILocation(line: 229, column: 13, scope: !744)
!751 = !DILocation(line: 229, column: 21, scope: !744)
!752 = !DILocation(line: 229, column: 3, scope: !744)
!753 = !DILocation(line: 232, column: 3, scope: !744)
!754 = !DILocation(line: 233, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !744, file: !73, line: 233, column: 7)
!756 = !DILocation(line: 233, column: 7, scope: !744)
!757 = !DILocation(line: 234, column: 26, scope: !755)
!758 = !DILocation(line: 234, column: 5, scope: !755)
!759 = !DILocation(line: 238, column: 3, scope: !744)
!760 = !DILocation(line: 240, column: 3, scope: !744)
!761 = !DILocation(line: 241, column: 7, scope: !762)
!762 = distinct !DILexicalBlock(scope: !744, file: !73, line: 241, column: 7)
!763 = !DILocation(line: 241, column: 7, scope: !744)
!764 = !DILocation(line: 242, column: 11, scope: !762)
!765 = !DILocation(line: 242, column: 5, scope: !762)
!766 = !DILocation(line: 243, column: 1, scope: !744)
!767 = distinct !DISubprogram(name: "print_errno_message", scope: !73, file: !73, line: 188, type: !305, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !72, retainedNodes: !45)
!768 = !DILocalVariable(name: "errnum", arg: 1, scope: !767, file: !73, line: 188, type: !31)
!769 = !DILocation(line: 188, column: 26, scope: !767)
!770 = !DILocalVariable(name: "s", scope: !767, file: !73, line: 190, type: !43)
!771 = !DILocation(line: 190, column: 15, scope: !767)
!772 = !DILocalVariable(name: "errbuf", scope: !767, file: !73, line: 193, type: !773)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8192, elements: !774)
!774 = !{!775}
!775 = !DISubrange(count: 1024)
!776 = !DILocation(line: 193, column: 8, scope: !767)
!777 = !DILocation(line: 195, column: 21, scope: !767)
!778 = !DILocation(line: 195, column: 29, scope: !767)
!779 = !DILocation(line: 195, column: 7, scope: !767)
!780 = !DILocation(line: 195, column: 5, scope: !767)
!781 = !DILocation(line: 207, column: 9, scope: !782)
!782 = distinct !DILexicalBlock(scope: !767, file: !73, line: 207, column: 7)
!783 = !DILocation(line: 207, column: 7, scope: !767)
!784 = !DILocation(line: 208, column: 9, scope: !782)
!785 = !DILocation(line: 208, column: 7, scope: !782)
!786 = !DILocation(line: 208, column: 5, scope: !782)
!787 = !DILocation(line: 214, column: 12, scope: !767)
!788 = !DILocation(line: 214, column: 28, scope: !767)
!789 = !DILocation(line: 214, column: 3, scope: !767)
!790 = !DILocation(line: 216, column: 1, scope: !767)
!791 = distinct !DISubprogram(name: "is_open", scope: !73, file: !73, line: 145, type: !792, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !72, retainedNodes: !45)
!792 = !DISubroutineType(types: !793)
!793 = !{!31, !31}
!794 = !DILocalVariable(name: "fd", arg: 1, scope: !791, file: !73, line: 145, type: !31)
!795 = !DILocation(line: 145, column: 14, scope: !791)
!796 = !DILocation(line: 157, column: 22, scope: !791)
!797 = !DILocation(line: 157, column: 15, scope: !791)
!798 = !DILocation(line: 157, column: 12, scope: !791)
!799 = !DILocation(line: 157, column: 3, scope: !791)
!800 = distinct !DISubprogram(name: "error", scope: !73, file: !73, line: 285, type: !801, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !45)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !31, !31, !43, null}
!803 = !DILocalVariable(name: "status", arg: 1, scope: !800, file: !73, line: 285, type: !31)
!804 = !DILocation(line: 285, column: 12, scope: !800)
!805 = !DILocalVariable(name: "errnum", arg: 2, scope: !800, file: !73, line: 285, type: !31)
!806 = !DILocation(line: 285, column: 24, scope: !800)
!807 = !DILocalVariable(name: "message", arg: 3, scope: !800, file: !73, line: 285, type: !43)
!808 = !DILocation(line: 285, column: 44, scope: !800)
!809 = !DILocalVariable(name: "ap", scope: !800, file: !73, line: 287, type: !81)
!810 = !DILocation(line: 287, column: 11, scope: !800)
!811 = !DILocation(line: 288, column: 3, scope: !800)
!812 = !DILocation(line: 289, column: 3, scope: !800)
!813 = !DILocation(line: 290, column: 3, scope: !800)
!814 = !DILocation(line: 291, column: 1, scope: !800)
!815 = !DILocalVariable(name: "status", arg: 1, scope: !78, file: !73, line: 298, type: !31)
!816 = !DILocation(line: 298, column: 1, scope: !78)
!817 = !DILocalVariable(name: "errnum", arg: 2, scope: !78, file: !73, line: 298, type: !31)
!818 = !DILocalVariable(name: "file_name", arg: 3, scope: !78, file: !73, line: 298, type: !43)
!819 = !DILocalVariable(name: "line_number", arg: 4, scope: !78, file: !73, line: 298, type: !6)
!820 = !DILocalVariable(name: "message", arg: 5, scope: !78, file: !73, line: 298, type: !43)
!821 = !DILocalVariable(name: "args", arg: 6, scope: !78, file: !73, line: 298, type: !81)
!822 = !DILocation(line: 302, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !78, file: !73, line: 302, column: 7)
!824 = !DILocation(line: 302, column: 7, scope: !78)
!825 = !DILocation(line: 307, column: 11, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !73, line: 307, column: 11)
!827 = distinct !DILexicalBlock(scope: !823, file: !73, line: 303, column: 5)
!828 = !DILocation(line: 307, column: 30, scope: !826)
!829 = !DILocation(line: 307, column: 27, scope: !826)
!830 = !DILocation(line: 308, column: 11, scope: !826)
!831 = !DILocation(line: 308, column: 15, scope: !826)
!832 = !DILocation(line: 308, column: 28, scope: !826)
!833 = !DILocation(line: 308, column: 25, scope: !826)
!834 = !DILocation(line: 309, column: 15, scope: !826)
!835 = !DILocation(line: 309, column: 19, scope: !826)
!836 = !DILocation(line: 309, column: 33, scope: !826)
!837 = !DILocation(line: 310, column: 19, scope: !826)
!838 = !DILocation(line: 310, column: 22, scope: !826)
!839 = !DILocation(line: 310, column: 32, scope: !826)
!840 = !DILocation(line: 311, column: 19, scope: !826)
!841 = !DILocation(line: 311, column: 30, scope: !826)
!842 = !DILocation(line: 311, column: 45, scope: !826)
!843 = !DILocation(line: 311, column: 22, scope: !826)
!844 = !DILocation(line: 311, column: 56, scope: !826)
!845 = !DILocation(line: 307, column: 11, scope: !827)
!846 = !DILocation(line: 314, column: 9, scope: !826)
!847 = !DILocation(line: 316, column: 23, scope: !827)
!848 = !DILocation(line: 316, column: 21, scope: !827)
!849 = !DILocation(line: 317, column: 25, scope: !827)
!850 = !DILocation(line: 317, column: 23, scope: !827)
!851 = !DILocation(line: 318, column: 5, scope: !827)
!852 = !DILocation(line: 327, column: 3, scope: !78)
!853 = !DILocation(line: 331, column: 7, scope: !854)
!854 = distinct !DILexicalBlock(scope: !78, file: !73, line: 331, column: 7)
!855 = !DILocation(line: 331, column: 7, scope: !78)
!856 = !DILocation(line: 332, column: 7, scope: !854)
!857 = !DILocation(line: 332, column: 5, scope: !854)
!858 = !DILocation(line: 338, column: 16, scope: !859)
!859 = distinct !DILexicalBlock(scope: !854, file: !73, line: 334, column: 5)
!860 = !DILocation(line: 338, column: 31, scope: !859)
!861 = !DILocation(line: 338, column: 7, scope: !859)
!862 = !DILocation(line: 346, column: 12, scope: !78)
!863 = !DILocation(line: 346, column: 20, scope: !78)
!864 = !DILocation(line: 346, column: 30, scope: !78)
!865 = !DILocation(line: 347, column: 12, scope: !78)
!866 = !DILocation(line: 347, column: 23, scope: !78)
!867 = !DILocation(line: 346, column: 3, scope: !78)
!868 = !DILocation(line: 350, column: 3, scope: !78)
!869 = !DILocation(line: 356, column: 1, scope: !78)
!870 = distinct !DISubprogram(name: "error_at_line", scope: !73, file: !73, line: 359, type: !871, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !45)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !31, !31, !43, !6, !43, null}
!873 = !DILocalVariable(name: "status", arg: 1, scope: !870, file: !73, line: 359, type: !31)
!874 = !DILocation(line: 359, column: 20, scope: !870)
!875 = !DILocalVariable(name: "errnum", arg: 2, scope: !870, file: !73, line: 359, type: !31)
!876 = !DILocation(line: 359, column: 32, scope: !870)
!877 = !DILocalVariable(name: "file_name", arg: 3, scope: !870, file: !73, line: 359, type: !43)
!878 = !DILocation(line: 359, column: 52, scope: !870)
!879 = !DILocalVariable(name: "line_number", arg: 4, scope: !870, file: !73, line: 360, type: !6)
!880 = !DILocation(line: 360, column: 29, scope: !870)
!881 = !DILocalVariable(name: "message", arg: 5, scope: !870, file: !73, line: 360, type: !43)
!882 = !DILocation(line: 360, column: 54, scope: !870)
!883 = !DILocalVariable(name: "ap", scope: !870, file: !73, line: 362, type: !81)
!884 = !DILocation(line: 362, column: 11, scope: !870)
!885 = !DILocation(line: 363, column: 3, scope: !870)
!886 = !DILocation(line: 364, column: 3, scope: !870)
!887 = !DILocation(line: 366, column: 3, scope: !870)
!888 = !DILocation(line: 367, column: 1, scope: !870)
!889 = distinct !DISubprogram(name: "getprogname", scope: !234, file: !234, line: 54, type: !890, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !233, retainedNodes: !45)
!890 = !DISubroutineType(types: !891)
!891 = !{!43}
!892 = !DILocation(line: 58, column: 10, scope: !889)
!893 = !DILocation(line: 58, column: 3, scope: !889)
!894 = distinct !DISubprogram(name: "set_program_name", scope: !107, file: !107, line: 37, type: !515, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !45)
!895 = !DILocalVariable(name: "argv0", arg: 1, scope: !894, file: !107, line: 37, type: !43)
!896 = !DILocation(line: 37, column: 31, scope: !894)
!897 = !DILocalVariable(name: "slash", scope: !894, file: !107, line: 44, type: !43)
!898 = !DILocation(line: 44, column: 15, scope: !894)
!899 = !DILocation(line: 44, column: 32, scope: !894)
!900 = !DILocation(line: 44, column: 23, scope: !894)
!901 = !DILocalVariable(name: "base", scope: !894, file: !107, line: 45, type: !43)
!902 = !DILocation(line: 45, column: 15, scope: !894)
!903 = !DILocation(line: 45, column: 22, scope: !894)
!904 = !DILocation(line: 45, column: 30, scope: !894)
!905 = !DILocation(line: 45, column: 36, scope: !894)
!906 = !DILocation(line: 45, column: 42, scope: !894)
!907 = !DILocation(line: 46, column: 12, scope: !908)
!908 = distinct !DILexicalBlock(scope: !894, file: !107, line: 46, column: 7)
!909 = !DILocation(line: 46, column: 19, scope: !908)
!910 = !DILocation(line: 46, column: 17, scope: !908)
!911 = !DILocation(line: 46, column: 9, scope: !908)
!912 = !DILocation(line: 46, column: 25, scope: !908)
!913 = !DILocation(line: 46, column: 35, scope: !908)
!914 = !DILocation(line: 46, column: 40, scope: !908)
!915 = !DILocation(line: 46, column: 28, scope: !908)
!916 = !DILocation(line: 46, column: 7, scope: !894)
!917 = !DILocation(line: 48, column: 15, scope: !918)
!918 = distinct !DILexicalBlock(scope: !908, file: !107, line: 47, column: 5)
!919 = !DILocation(line: 48, column: 13, scope: !918)
!920 = !DILocation(line: 49, column: 20, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !107, line: 49, column: 11)
!922 = !DILocation(line: 49, column: 11, scope: !921)
!923 = !DILocation(line: 49, column: 36, scope: !921)
!924 = !DILocation(line: 49, column: 11, scope: !918)
!925 = !DILocation(line: 51, column: 16, scope: !926)
!926 = distinct !DILexicalBlock(scope: !921, file: !107, line: 50, column: 9)
!927 = !DILocation(line: 52, column: 19, scope: !926)
!928 = !DILocation(line: 52, column: 17, scope: !926)
!929 = !DILocation(line: 53, column: 9, scope: !926)
!930 = !DILocation(line: 54, column: 5, scope: !918)
!931 = !DILocation(line: 65, column: 18, scope: !894)
!932 = !DILocation(line: 65, column: 16, scope: !894)
!933 = !DILocation(line: 71, column: 38, scope: !894)
!934 = !DILocation(line: 71, column: 27, scope: !894)
!935 = !DILocation(line: 74, column: 44, scope: !894)
!936 = !DILocation(line: 74, column: 33, scope: !894)
!937 = !DILocation(line: 76, column: 1, scope: !894)
!938 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !112, file: !113, line: 38, type: !43)
!939 = !DILocation(line: 38, column: 31, scope: !112)
!940 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !112, file: !113, line: 38, type: !43)
!941 = !DILocation(line: 38, column: 66, scope: !112)
!942 = !DILocalVariable(name: "translation", scope: !112, file: !113, line: 40, type: !43)
!943 = !DILocation(line: 40, column: 15, scope: !112)
!944 = !DILocation(line: 40, column: 38, scope: !112)
!945 = !DILocation(line: 40, column: 29, scope: !112)
!946 = !DILocation(line: 41, column: 7, scope: !947)
!947 = distinct !DILexicalBlock(scope: !112, file: !113, line: 41, column: 7)
!948 = !DILocation(line: 41, column: 22, scope: !947)
!949 = !DILocation(line: 41, column: 19, scope: !947)
!950 = !DILocation(line: 41, column: 7, scope: !112)
!951 = !DILocation(line: 42, column: 12, scope: !947)
!952 = !DILocation(line: 42, column: 5, scope: !947)
!953 = !DILocalVariable(name: "w", scope: !112, file: !113, line: 47, type: !954)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !955, line: 37, baseType: !956)
!955 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !957, line: 57, baseType: !958)
!957 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !957, line: 42, baseType: !6)
!959 = !DILocation(line: 47, column: 12, scope: !112)
!960 = !DILocalVariable(name: "mbs", scope: !112, file: !113, line: 48, type: !961)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !220, line: 6, baseType: !962)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !222, line: 21, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !222, line: 13, size: 64, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !963, file: !222, line: 15, baseType: !31, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !963, file: !222, line: 20, baseType: !967, size: 32, offset: 32)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !222, line: 16, size: 32, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !967, file: !222, line: 18, baseType: !6, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !967, file: !222, line: 19, baseType: !231, size: 32)
!971 = !DILocation(line: 48, column: 13, scope: !112)
!972 = !DILocation(line: 48, column: 18, scope: !112)
!973 = !DILocation(line: 49, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !112, file: !113, line: 49, column: 7)
!975 = !DILocation(line: 49, column: 39, scope: !974)
!976 = !DILocation(line: 49, column: 44, scope: !974)
!977 = !DILocation(line: 49, column: 47, scope: !974)
!978 = !DILocation(line: 49, column: 49, scope: !974)
!979 = !DILocation(line: 49, column: 7, scope: !112)
!980 = !DILocation(line: 50, column: 12, scope: !974)
!981 = !DILocation(line: 50, column: 5, scope: !974)
!982 = !DILocation(line: 53, column: 10, scope: !112)
!983 = !DILocation(line: 53, column: 3, scope: !112)
!984 = !DILocation(line: 54, column: 1, scope: !112)
!985 = distinct !DISubprogram(name: "clone_quoting_options", scope: !124, file: !124, line: 113, type: !986, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!986 = !DISubroutineType(types: !987)
!987 = !{!988, !988}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!989 = !DILocalVariable(name: "o", arg: 1, scope: !985, file: !124, line: 113, type: !988)
!990 = !DILocation(line: 113, column: 48, scope: !985)
!991 = !DILocalVariable(name: "saved_errno", scope: !985, file: !124, line: 115, type: !31)
!992 = !DILocation(line: 115, column: 7, scope: !985)
!993 = !DILocation(line: 115, column: 21, scope: !985)
!994 = !DILocalVariable(name: "p", scope: !985, file: !124, line: 116, type: !988)
!995 = !DILocation(line: 116, column: 27, scope: !985)
!996 = !DILocation(line: 116, column: 40, scope: !985)
!997 = !DILocation(line: 116, column: 44, scope: !985)
!998 = !DILocation(line: 116, column: 31, scope: !985)
!999 = !DILocation(line: 118, column: 11, scope: !985)
!1000 = !DILocation(line: 118, column: 3, scope: !985)
!1001 = !DILocation(line: 118, column: 9, scope: !985)
!1002 = !DILocation(line: 119, column: 10, scope: !985)
!1003 = !DILocation(line: 119, column: 3, scope: !985)
!1004 = distinct !DISubprogram(name: "get_quoting_style", scope: !124, file: !124, line: 124, type: !1005, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!126, !1007}
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!1009 = !DILocalVariable(name: "o", arg: 1, scope: !1004, file: !124, line: 124, type: !1007)
!1010 = !DILocation(line: 124, column: 50, scope: !1004)
!1011 = !DILocation(line: 126, column: 11, scope: !1004)
!1012 = !DILocation(line: 126, column: 15, scope: !1004)
!1013 = !DILocation(line: 126, column: 46, scope: !1004)
!1014 = !DILocation(line: 126, column: 3, scope: !1004)
!1015 = distinct !DISubprogram(name: "set_quoting_style", scope: !124, file: !124, line: 132, type: !1016, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !988, !126}
!1018 = !DILocalVariable(name: "o", arg: 1, scope: !1015, file: !124, line: 132, type: !988)
!1019 = !DILocation(line: 132, column: 44, scope: !1015)
!1020 = !DILocalVariable(name: "s", arg: 2, scope: !1015, file: !124, line: 132, type: !126)
!1021 = !DILocation(line: 132, column: 66, scope: !1015)
!1022 = !DILocation(line: 134, column: 47, scope: !1015)
!1023 = !DILocation(line: 134, column: 4, scope: !1015)
!1024 = !DILocation(line: 134, column: 8, scope: !1015)
!1025 = !DILocation(line: 134, column: 39, scope: !1015)
!1026 = !DILocation(line: 134, column: 45, scope: !1015)
!1027 = !DILocation(line: 135, column: 1, scope: !1015)
!1028 = distinct !DISubprogram(name: "set_char_quoting", scope: !124, file: !124, line: 143, type: !1029, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!31, !988, !29, !31}
!1031 = !DILocalVariable(name: "o", arg: 1, scope: !1028, file: !124, line: 143, type: !988)
!1032 = !DILocation(line: 143, column: 43, scope: !1028)
!1033 = !DILocalVariable(name: "c", arg: 2, scope: !1028, file: !124, line: 143, type: !29)
!1034 = !DILocation(line: 143, column: 51, scope: !1028)
!1035 = !DILocalVariable(name: "i", arg: 3, scope: !1028, file: !124, line: 143, type: !31)
!1036 = !DILocation(line: 143, column: 58, scope: !1028)
!1037 = !DILocalVariable(name: "uc", scope: !1028, file: !124, line: 145, type: !217)
!1038 = !DILocation(line: 145, column: 17, scope: !1028)
!1039 = !DILocation(line: 145, column: 22, scope: !1028)
!1040 = !DILocalVariable(name: "p", scope: !1028, file: !124, line: 146, type: !1041)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1042 = !DILocation(line: 146, column: 17, scope: !1028)
!1043 = !DILocation(line: 147, column: 6, scope: !1028)
!1044 = !DILocation(line: 147, column: 10, scope: !1028)
!1045 = !DILocation(line: 147, column: 41, scope: !1028)
!1046 = !DILocation(line: 147, column: 5, scope: !1028)
!1047 = !DILocation(line: 147, column: 59, scope: !1028)
!1048 = !DILocation(line: 147, column: 62, scope: !1028)
!1049 = !DILocation(line: 147, column: 57, scope: !1028)
!1050 = !DILocalVariable(name: "shift", scope: !1028, file: !124, line: 148, type: !31)
!1051 = !DILocation(line: 148, column: 7, scope: !1028)
!1052 = !DILocation(line: 148, column: 15, scope: !1028)
!1053 = !DILocation(line: 148, column: 18, scope: !1028)
!1054 = !DILocalVariable(name: "r", scope: !1028, file: !124, line: 149, type: !6)
!1055 = !DILocation(line: 149, column: 16, scope: !1028)
!1056 = !DILocation(line: 149, column: 22, scope: !1028)
!1057 = !DILocation(line: 149, column: 21, scope: !1028)
!1058 = !DILocation(line: 149, column: 27, scope: !1028)
!1059 = !DILocation(line: 149, column: 24, scope: !1028)
!1060 = !DILocation(line: 149, column: 34, scope: !1028)
!1061 = !DILocation(line: 150, column: 11, scope: !1028)
!1062 = !DILocation(line: 150, column: 13, scope: !1028)
!1063 = !DILocation(line: 150, column: 21, scope: !1028)
!1064 = !DILocation(line: 150, column: 19, scope: !1028)
!1065 = !DILocation(line: 150, column: 27, scope: !1028)
!1066 = !DILocation(line: 150, column: 24, scope: !1028)
!1067 = !DILocation(line: 150, column: 4, scope: !1028)
!1068 = !DILocation(line: 150, column: 6, scope: !1028)
!1069 = !DILocation(line: 151, column: 10, scope: !1028)
!1070 = !DILocation(line: 151, column: 3, scope: !1028)
!1071 = distinct !DISubprogram(name: "set_quoting_flags", scope: !124, file: !124, line: 159, type: !1072, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!31, !988, !31}
!1074 = !DILocalVariable(name: "o", arg: 1, scope: !1071, file: !124, line: 159, type: !988)
!1075 = !DILocation(line: 159, column: 44, scope: !1071)
!1076 = !DILocalVariable(name: "i", arg: 2, scope: !1071, file: !124, line: 159, type: !31)
!1077 = !DILocation(line: 159, column: 51, scope: !1071)
!1078 = !DILocation(line: 161, column: 8, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1071, file: !124, line: 161, column: 7)
!1080 = !DILocation(line: 161, column: 7, scope: !1071)
!1081 = !DILocation(line: 162, column: 7, scope: !1079)
!1082 = !DILocation(line: 162, column: 5, scope: !1079)
!1083 = !DILocalVariable(name: "r", scope: !1071, file: !124, line: 163, type: !31)
!1084 = !DILocation(line: 163, column: 7, scope: !1071)
!1085 = !DILocation(line: 163, column: 11, scope: !1071)
!1086 = !DILocation(line: 163, column: 14, scope: !1071)
!1087 = !DILocation(line: 164, column: 14, scope: !1071)
!1088 = !DILocation(line: 164, column: 3, scope: !1071)
!1089 = !DILocation(line: 164, column: 6, scope: !1071)
!1090 = !DILocation(line: 164, column: 12, scope: !1071)
!1091 = !DILocation(line: 165, column: 10, scope: !1071)
!1092 = !DILocation(line: 165, column: 3, scope: !1071)
!1093 = distinct !DISubprogram(name: "set_custom_quoting", scope: !124, file: !124, line: 169, type: !1094, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !988, !43, !43}
!1096 = !DILocalVariable(name: "o", arg: 1, scope: !1093, file: !124, line: 169, type: !988)
!1097 = !DILocation(line: 169, column: 45, scope: !1093)
!1098 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1093, file: !124, line: 170, type: !43)
!1099 = !DILocation(line: 170, column: 33, scope: !1093)
!1100 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1093, file: !124, line: 170, type: !43)
!1101 = !DILocation(line: 170, column: 57, scope: !1093)
!1102 = !DILocation(line: 172, column: 8, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1093, file: !124, line: 172, column: 7)
!1104 = !DILocation(line: 172, column: 7, scope: !1093)
!1105 = !DILocation(line: 173, column: 7, scope: !1103)
!1106 = !DILocation(line: 173, column: 5, scope: !1103)
!1107 = !DILocation(line: 174, column: 3, scope: !1093)
!1108 = !DILocation(line: 174, column: 6, scope: !1093)
!1109 = !DILocation(line: 174, column: 12, scope: !1093)
!1110 = !DILocation(line: 175, column: 8, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1093, file: !124, line: 175, column: 7)
!1112 = !DILocation(line: 175, column: 19, scope: !1111)
!1113 = !DILocation(line: 175, column: 23, scope: !1111)
!1114 = !DILocation(line: 175, column: 7, scope: !1093)
!1115 = !DILocation(line: 176, column: 5, scope: !1111)
!1116 = !DILocation(line: 177, column: 19, scope: !1093)
!1117 = !DILocation(line: 177, column: 3, scope: !1093)
!1118 = !DILocation(line: 177, column: 6, scope: !1093)
!1119 = !DILocation(line: 177, column: 17, scope: !1093)
!1120 = !DILocation(line: 178, column: 20, scope: !1093)
!1121 = !DILocation(line: 178, column: 3, scope: !1093)
!1122 = !DILocation(line: 178, column: 6, scope: !1093)
!1123 = !DILocation(line: 178, column: 18, scope: !1093)
!1124 = !DILocation(line: 179, column: 1, scope: !1093)
!1125 = distinct !DISubprogram(name: "quotearg_buffer", scope: !124, file: !124, line: 774, type: !1126, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!146, !28, !146, !43, !146, !1007}
!1128 = !DILocalVariable(name: "buffer", arg: 1, scope: !1125, file: !124, line: 774, type: !28)
!1129 = !DILocation(line: 774, column: 24, scope: !1125)
!1130 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1125, file: !124, line: 774, type: !146)
!1131 = !DILocation(line: 774, column: 39, scope: !1125)
!1132 = !DILocalVariable(name: "arg", arg: 3, scope: !1125, file: !124, line: 775, type: !43)
!1133 = !DILocation(line: 775, column: 30, scope: !1125)
!1134 = !DILocalVariable(name: "argsize", arg: 4, scope: !1125, file: !124, line: 775, type: !146)
!1135 = !DILocation(line: 775, column: 42, scope: !1125)
!1136 = !DILocalVariable(name: "o", arg: 5, scope: !1125, file: !124, line: 776, type: !1007)
!1137 = !DILocation(line: 776, column: 48, scope: !1125)
!1138 = !DILocalVariable(name: "p", scope: !1125, file: !124, line: 778, type: !1007)
!1139 = !DILocation(line: 778, column: 33, scope: !1125)
!1140 = !DILocation(line: 778, column: 37, scope: !1125)
!1141 = !DILocation(line: 778, column: 41, scope: !1125)
!1142 = !DILocalVariable(name: "saved_errno", scope: !1125, file: !124, line: 779, type: !31)
!1143 = !DILocation(line: 779, column: 7, scope: !1125)
!1144 = !DILocation(line: 779, column: 21, scope: !1125)
!1145 = !DILocalVariable(name: "r", scope: !1125, file: !124, line: 780, type: !146)
!1146 = !DILocation(line: 780, column: 10, scope: !1125)
!1147 = !DILocation(line: 780, column: 40, scope: !1125)
!1148 = !DILocation(line: 780, column: 48, scope: !1125)
!1149 = !DILocation(line: 780, column: 60, scope: !1125)
!1150 = !DILocation(line: 780, column: 65, scope: !1125)
!1151 = !DILocation(line: 781, column: 40, scope: !1125)
!1152 = !DILocation(line: 781, column: 43, scope: !1125)
!1153 = !DILocation(line: 781, column: 50, scope: !1125)
!1154 = !DILocation(line: 781, column: 53, scope: !1125)
!1155 = !DILocation(line: 781, column: 60, scope: !1125)
!1156 = !DILocation(line: 781, column: 63, scope: !1125)
!1157 = !DILocation(line: 782, column: 40, scope: !1125)
!1158 = !DILocation(line: 782, column: 43, scope: !1125)
!1159 = !DILocation(line: 782, column: 55, scope: !1125)
!1160 = !DILocation(line: 782, column: 58, scope: !1125)
!1161 = !DILocation(line: 780, column: 14, scope: !1125)
!1162 = !DILocation(line: 783, column: 11, scope: !1125)
!1163 = !DILocation(line: 783, column: 3, scope: !1125)
!1164 = !DILocation(line: 783, column: 9, scope: !1125)
!1165 = !DILocation(line: 784, column: 10, scope: !1125)
!1166 = !DILocation(line: 784, column: 3, scope: !1125)
!1167 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !124, file: !124, line: 251, type: !1168, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !123, retainedNodes: !45)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!146, !28, !146, !43, !146, !126, !31, !1170, !43, !43}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1172 = !DILocalVariable(name: "buffer", arg: 1, scope: !1167, file: !124, line: 251, type: !28)
!1173 = !DILocation(line: 251, column: 33, scope: !1167)
!1174 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1167, file: !124, line: 251, type: !146)
!1175 = !DILocation(line: 251, column: 48, scope: !1167)
!1176 = !DILocalVariable(name: "arg", arg: 3, scope: !1167, file: !124, line: 252, type: !43)
!1177 = !DILocation(line: 252, column: 39, scope: !1167)
!1178 = !DILocalVariable(name: "argsize", arg: 4, scope: !1167, file: !124, line: 252, type: !146)
!1179 = !DILocation(line: 252, column: 51, scope: !1167)
!1180 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1167, file: !124, line: 253, type: !126)
!1181 = !DILocation(line: 253, column: 46, scope: !1167)
!1182 = !DILocalVariable(name: "flags", arg: 6, scope: !1167, file: !124, line: 253, type: !31)
!1183 = !DILocation(line: 253, column: 65, scope: !1167)
!1184 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1167, file: !124, line: 254, type: !1170)
!1185 = !DILocation(line: 254, column: 47, scope: !1167)
!1186 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1167, file: !124, line: 255, type: !43)
!1187 = !DILocation(line: 255, column: 39, scope: !1167)
!1188 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1167, file: !124, line: 256, type: !43)
!1189 = !DILocation(line: 256, column: 39, scope: !1167)
!1190 = !DILocalVariable(name: "unibyte_locale", scope: !1167, file: !124, line: 258, type: !36)
!1191 = !DILocation(line: 258, column: 8, scope: !1167)
!1192 = !DILocation(line: 258, column: 25, scope: !1167)
!1193 = !DILocation(line: 258, column: 36, scope: !1167)
!1194 = !DILocalVariable(name: "len", scope: !1167, file: !124, line: 260, type: !146)
!1195 = !DILocation(line: 260, column: 10, scope: !1167)
!1196 = !DILocalVariable(name: "orig_buffersize", scope: !1167, file: !124, line: 261, type: !146)
!1197 = !DILocation(line: 261, column: 10, scope: !1167)
!1198 = !DILocalVariable(name: "quote_string", scope: !1167, file: !124, line: 262, type: !43)
!1199 = !DILocation(line: 262, column: 15, scope: !1167)
!1200 = !DILocalVariable(name: "quote_string_len", scope: !1167, file: !124, line: 263, type: !146)
!1201 = !DILocation(line: 263, column: 10, scope: !1167)
!1202 = !DILocalVariable(name: "backslash_escapes", scope: !1167, file: !124, line: 264, type: !36)
!1203 = !DILocation(line: 264, column: 8, scope: !1167)
!1204 = !DILocalVariable(name: "elide_outer_quotes", scope: !1167, file: !124, line: 265, type: !36)
!1205 = !DILocation(line: 265, column: 8, scope: !1167)
!1206 = !DILocation(line: 265, column: 30, scope: !1167)
!1207 = !DILocation(line: 265, column: 36, scope: !1167)
!1208 = !DILocation(line: 265, column: 61, scope: !1167)
!1209 = !DILocalVariable(name: "encountered_single_quote", scope: !1167, file: !124, line: 266, type: !36)
!1210 = !DILocation(line: 266, column: 8, scope: !1167)
!1211 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1167, file: !124, line: 267, type: !36)
!1212 = !DILocation(line: 267, column: 8, scope: !1167)
!1213 = !DILocation(line: 267, column: 3, scope: !1167)
!1214 = !DILabel(scope: !1167, name: "process_input", file: !124, line: 308)
!1215 = !DILocation(line: 308, column: 2, scope: !1167)
!1216 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1167, file: !124, line: 309, type: !36)
!1217 = !DILocation(line: 309, column: 8, scope: !1167)
!1218 = !DILocation(line: 311, column: 11, scope: !1167)
!1219 = !DILocation(line: 311, column: 3, scope: !1167)
!1220 = !DILocation(line: 314, column: 21, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1167, file: !124, line: 312, column: 5)
!1222 = !DILocation(line: 315, column: 26, scope: !1221)
!1223 = !DILocation(line: 315, column: 7, scope: !1221)
!1224 = !DILocation(line: 318, column: 12, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !124, line: 318, column: 11)
!1226 = !DILocation(line: 318, column: 11, scope: !1221)
!1227 = !DILocation(line: 319, column: 9, scope: !1225)
!1228 = !DILocation(line: 319, column: 9, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !124, line: 319, column: 9)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !124, line: 319, column: 9)
!1231 = !DILocation(line: 319, column: 9, scope: !1230)
!1232 = !DILocation(line: 320, column: 25, scope: !1221)
!1233 = !DILocation(line: 321, column: 20, scope: !1221)
!1234 = !DILocation(line: 322, column: 24, scope: !1221)
!1235 = !DILocation(line: 323, column: 7, scope: !1221)
!1236 = !DILocation(line: 326, column: 25, scope: !1221)
!1237 = !DILocation(line: 327, column: 26, scope: !1221)
!1238 = !DILocation(line: 328, column: 7, scope: !1221)
!1239 = !DILocation(line: 334, column: 13, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !124, line: 334, column: 13)
!1241 = distinct !DILexicalBlock(scope: !1221, file: !124, line: 333, column: 7)
!1242 = !DILocation(line: 334, column: 27, scope: !1240)
!1243 = !DILocation(line: 334, column: 13, scope: !1241)
!1244 = !DILocation(line: 357, column: 50, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1240, file: !124, line: 335, column: 11)
!1246 = !DILocation(line: 357, column: 26, scope: !1245)
!1247 = !DILocation(line: 357, column: 24, scope: !1245)
!1248 = !DILocation(line: 358, column: 51, scope: !1245)
!1249 = !DILocation(line: 358, column: 27, scope: !1245)
!1250 = !DILocation(line: 358, column: 25, scope: !1245)
!1251 = !DILocation(line: 359, column: 11, scope: !1245)
!1252 = !DILocation(line: 360, column: 14, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1241, file: !124, line: 360, column: 13)
!1254 = !DILocation(line: 360, column: 13, scope: !1241)
!1255 = !DILocalVariable(name: "lq", scope: !1256, file: !124, line: 361, type: !43)
!1256 = distinct !DILexicalBlock(scope: !1253, file: !124, line: 361, column: 11)
!1257 = !DILocation(line: 361, column: 28, scope: !1256)
!1258 = !DILocation(line: 361, column: 33, scope: !1256)
!1259 = !DILocation(line: 361, column: 16, scope: !1256)
!1260 = !DILocation(line: 361, column: 46, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !124, line: 361, column: 11)
!1262 = !DILocation(line: 361, column: 45, scope: !1261)
!1263 = !DILocation(line: 361, column: 11, scope: !1256)
!1264 = !DILocation(line: 362, column: 13, scope: !1261)
!1265 = !DILocation(line: 362, column: 13, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !124, line: 362, column: 13)
!1267 = distinct !DILexicalBlock(scope: !1261, file: !124, line: 362, column: 13)
!1268 = !DILocation(line: 362, column: 13, scope: !1267)
!1269 = !DILocation(line: 361, column: 52, scope: !1261)
!1270 = !DILocation(line: 361, column: 11, scope: !1261)
!1271 = distinct !{!1271, !1263, !1272, !398}
!1272 = !DILocation(line: 362, column: 13, scope: !1256)
!1273 = !DILocation(line: 363, column: 27, scope: !1241)
!1274 = !DILocation(line: 364, column: 24, scope: !1241)
!1275 = !DILocation(line: 364, column: 22, scope: !1241)
!1276 = !DILocation(line: 365, column: 36, scope: !1241)
!1277 = !DILocation(line: 365, column: 28, scope: !1241)
!1278 = !DILocation(line: 365, column: 26, scope: !1241)
!1279 = !DILocation(line: 367, column: 7, scope: !1221)
!1280 = !DILocation(line: 370, column: 25, scope: !1221)
!1281 = !DILocation(line: 370, column: 7, scope: !1221)
!1282 = !DILocation(line: 373, column: 26, scope: !1221)
!1283 = !DILocation(line: 373, column: 7, scope: !1221)
!1284 = !DILocation(line: 376, column: 12, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1221, file: !124, line: 376, column: 11)
!1286 = !DILocation(line: 376, column: 11, scope: !1221)
!1287 = !DILocation(line: 377, column: 27, scope: !1285)
!1288 = !DILocation(line: 377, column: 9, scope: !1285)
!1289 = !DILocation(line: 380, column: 21, scope: !1221)
!1290 = !DILocation(line: 381, column: 12, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1221, file: !124, line: 381, column: 11)
!1292 = !DILocation(line: 381, column: 11, scope: !1221)
!1293 = !DILocation(line: 382, column: 9, scope: !1291)
!1294 = !DILocation(line: 382, column: 9, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !124, line: 382, column: 9)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !124, line: 382, column: 9)
!1297 = !DILocation(line: 382, column: 9, scope: !1296)
!1298 = !DILocation(line: 383, column: 20, scope: !1221)
!1299 = !DILocation(line: 384, column: 24, scope: !1221)
!1300 = !DILocation(line: 385, column: 7, scope: !1221)
!1301 = !DILocation(line: 388, column: 26, scope: !1221)
!1302 = !DILocation(line: 389, column: 7, scope: !1221)
!1303 = !DILocation(line: 392, column: 7, scope: !1221)
!1304 = !DILocalVariable(name: "i", scope: !1305, file: !124, line: 395, type: !146)
!1305 = distinct !DILexicalBlock(scope: !1167, file: !124, line: 395, column: 3)
!1306 = !DILocation(line: 395, column: 15, scope: !1305)
!1307 = !DILocation(line: 395, column: 8, scope: !1305)
!1308 = !DILocation(line: 395, column: 26, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !124, line: 395, column: 3)
!1310 = !DILocation(line: 395, column: 34, scope: !1309)
!1311 = !DILocation(line: 395, column: 48, scope: !1309)
!1312 = !DILocation(line: 395, column: 52, scope: !1309)
!1313 = !DILocation(line: 395, column: 55, scope: !1309)
!1314 = !DILocation(line: 395, column: 65, scope: !1309)
!1315 = !DILocation(line: 395, column: 70, scope: !1309)
!1316 = !DILocation(line: 395, column: 67, scope: !1309)
!1317 = !DILocation(line: 395, column: 23, scope: !1309)
!1318 = !DILocation(line: 395, column: 3, scope: !1305)
!1319 = !DILocalVariable(name: "is_right_quote", scope: !1320, file: !124, line: 397, type: !36)
!1320 = distinct !DILexicalBlock(scope: !1309, file: !124, line: 396, column: 5)
!1321 = !DILocation(line: 397, column: 12, scope: !1320)
!1322 = !DILocalVariable(name: "escaping", scope: !1320, file: !124, line: 398, type: !36)
!1323 = !DILocation(line: 398, column: 12, scope: !1320)
!1324 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1320, file: !124, line: 399, type: !36)
!1325 = !DILocation(line: 399, column: 12, scope: !1320)
!1326 = !DILocation(line: 401, column: 11, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1320, file: !124, line: 401, column: 11)
!1328 = !DILocation(line: 402, column: 11, scope: !1327)
!1329 = !DILocation(line: 402, column: 14, scope: !1327)
!1330 = !DILocation(line: 402, column: 28, scope: !1327)
!1331 = !DILocation(line: 403, column: 11, scope: !1327)
!1332 = !DILocation(line: 403, column: 14, scope: !1327)
!1333 = !DILocation(line: 404, column: 11, scope: !1327)
!1334 = !DILocation(line: 404, column: 15, scope: !1327)
!1335 = !DILocation(line: 404, column: 19, scope: !1327)
!1336 = !DILocation(line: 404, column: 17, scope: !1327)
!1337 = !DILocation(line: 405, column: 19, scope: !1327)
!1338 = !DILocation(line: 405, column: 27, scope: !1327)
!1339 = !DILocation(line: 405, column: 39, scope: !1327)
!1340 = !DILocation(line: 405, column: 46, scope: !1327)
!1341 = !DILocation(line: 405, column: 44, scope: !1327)
!1342 = !DILocation(line: 409, column: 40, scope: !1327)
!1343 = !DILocation(line: 409, column: 32, scope: !1327)
!1344 = !DILocation(line: 409, column: 30, scope: !1327)
!1345 = !DILocation(line: 409, column: 48, scope: !1327)
!1346 = !DILocation(line: 405, column: 15, scope: !1327)
!1347 = !DILocation(line: 410, column: 11, scope: !1327)
!1348 = !DILocation(line: 410, column: 21, scope: !1327)
!1349 = !DILocation(line: 410, column: 27, scope: !1327)
!1350 = !DILocation(line: 410, column: 25, scope: !1327)
!1351 = !DILocation(line: 410, column: 30, scope: !1327)
!1352 = !DILocation(line: 410, column: 44, scope: !1327)
!1353 = !DILocation(line: 410, column: 14, scope: !1327)
!1354 = !DILocation(line: 401, column: 11, scope: !1320)
!1355 = !DILocation(line: 412, column: 15, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !124, line: 412, column: 15)
!1357 = distinct !DILexicalBlock(scope: !1327, file: !124, line: 411, column: 9)
!1358 = !DILocation(line: 412, column: 15, scope: !1357)
!1359 = !DILocation(line: 413, column: 13, scope: !1356)
!1360 = !DILocation(line: 414, column: 26, scope: !1357)
!1361 = !DILocation(line: 415, column: 9, scope: !1357)
!1362 = !DILocalVariable(name: "c", scope: !1320, file: !124, line: 417, type: !217)
!1363 = !DILocation(line: 417, column: 21, scope: !1320)
!1364 = !DILocation(line: 417, column: 25, scope: !1320)
!1365 = !DILocation(line: 417, column: 29, scope: !1320)
!1366 = !DILocation(line: 418, column: 15, scope: !1320)
!1367 = !DILocation(line: 418, column: 7, scope: !1320)
!1368 = !DILocation(line: 421, column: 15, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !124, line: 421, column: 15)
!1370 = distinct !DILexicalBlock(scope: !1320, file: !124, line: 419, column: 9)
!1371 = !DILocation(line: 421, column: 15, scope: !1370)
!1372 = !DILocation(line: 423, column: 15, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !124, line: 422, column: 13)
!1374 = !DILocation(line: 423, column: 15, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !124, line: 423, column: 15)
!1376 = distinct !DILexicalBlock(scope: !1373, file: !124, line: 423, column: 15)
!1377 = !DILocation(line: 423, column: 15, scope: !1376)
!1378 = !DILocation(line: 423, column: 15, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1376, file: !124, line: 423, column: 15)
!1380 = !DILocation(line: 423, column: 15, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1379, file: !124, line: 423, column: 15)
!1382 = !DILocation(line: 423, column: 15, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !124, line: 423, column: 15)
!1384 = distinct !DILexicalBlock(scope: !1381, file: !124, line: 423, column: 15)
!1385 = !DILocation(line: 423, column: 15, scope: !1384)
!1386 = !DILocation(line: 423, column: 15, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !124, line: 423, column: 15)
!1388 = distinct !DILexicalBlock(scope: !1381, file: !124, line: 423, column: 15)
!1389 = !DILocation(line: 423, column: 15, scope: !1388)
!1390 = !DILocation(line: 423, column: 15, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !124, line: 423, column: 15)
!1392 = distinct !DILexicalBlock(scope: !1381, file: !124, line: 423, column: 15)
!1393 = !DILocation(line: 423, column: 15, scope: !1392)
!1394 = !DILocation(line: 423, column: 15, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !124, line: 423, column: 15)
!1396 = distinct !DILexicalBlock(scope: !1376, file: !124, line: 423, column: 15)
!1397 = !DILocation(line: 423, column: 15, scope: !1396)
!1398 = !DILocation(line: 430, column: 19, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1373, file: !124, line: 430, column: 19)
!1400 = !DILocation(line: 430, column: 33, scope: !1399)
!1401 = !DILocation(line: 431, column: 19, scope: !1399)
!1402 = !DILocation(line: 431, column: 22, scope: !1399)
!1403 = !DILocation(line: 431, column: 24, scope: !1399)
!1404 = !DILocation(line: 431, column: 30, scope: !1399)
!1405 = !DILocation(line: 431, column: 28, scope: !1399)
!1406 = !DILocation(line: 431, column: 38, scope: !1399)
!1407 = !DILocation(line: 431, column: 48, scope: !1399)
!1408 = !DILocation(line: 431, column: 52, scope: !1399)
!1409 = !DILocation(line: 431, column: 54, scope: !1399)
!1410 = !DILocation(line: 431, column: 45, scope: !1399)
!1411 = !DILocation(line: 431, column: 59, scope: !1399)
!1412 = !DILocation(line: 431, column: 62, scope: !1399)
!1413 = !DILocation(line: 431, column: 66, scope: !1399)
!1414 = !DILocation(line: 431, column: 68, scope: !1399)
!1415 = !DILocation(line: 431, column: 73, scope: !1399)
!1416 = !DILocation(line: 430, column: 19, scope: !1373)
!1417 = !DILocation(line: 433, column: 19, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1399, file: !124, line: 432, column: 17)
!1419 = !DILocation(line: 433, column: 19, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !124, line: 433, column: 19)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !124, line: 433, column: 19)
!1422 = !DILocation(line: 433, column: 19, scope: !1421)
!1423 = !DILocation(line: 434, column: 19, scope: !1418)
!1424 = !DILocation(line: 434, column: 19, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !124, line: 434, column: 19)
!1426 = distinct !DILexicalBlock(scope: !1418, file: !124, line: 434, column: 19)
!1427 = !DILocation(line: 434, column: 19, scope: !1426)
!1428 = !DILocation(line: 435, column: 17, scope: !1418)
!1429 = !DILocation(line: 436, column: 17, scope: !1373)
!1430 = !DILocation(line: 441, column: 13, scope: !1373)
!1431 = !DILocation(line: 442, column: 20, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1369, file: !124, line: 442, column: 20)
!1433 = !DILocation(line: 442, column: 26, scope: !1432)
!1434 = !DILocation(line: 442, column: 20, scope: !1369)
!1435 = !DILocation(line: 443, column: 13, scope: !1432)
!1436 = !DILocation(line: 444, column: 11, scope: !1370)
!1437 = !DILocation(line: 447, column: 20, scope: !1370)
!1438 = !DILocation(line: 447, column: 11, scope: !1370)
!1439 = !DILocation(line: 450, column: 19, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !124, line: 450, column: 19)
!1441 = distinct !DILexicalBlock(scope: !1370, file: !124, line: 448, column: 13)
!1442 = !DILocation(line: 450, column: 19, scope: !1441)
!1443 = !DILocation(line: 451, column: 17, scope: !1440)
!1444 = !DILocation(line: 452, column: 15, scope: !1441)
!1445 = !DILocation(line: 455, column: 20, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !124, line: 455, column: 19)
!1447 = !DILocation(line: 455, column: 26, scope: !1446)
!1448 = !DILocation(line: 456, column: 19, scope: !1446)
!1449 = !DILocation(line: 456, column: 22, scope: !1446)
!1450 = !DILocation(line: 456, column: 24, scope: !1446)
!1451 = !DILocation(line: 456, column: 30, scope: !1446)
!1452 = !DILocation(line: 456, column: 28, scope: !1446)
!1453 = !DILocation(line: 456, column: 38, scope: !1446)
!1454 = !DILocation(line: 456, column: 41, scope: !1446)
!1455 = !DILocation(line: 456, column: 45, scope: !1446)
!1456 = !DILocation(line: 456, column: 47, scope: !1446)
!1457 = !DILocation(line: 456, column: 52, scope: !1446)
!1458 = !DILocation(line: 455, column: 19, scope: !1441)
!1459 = !DILocation(line: 457, column: 25, scope: !1446)
!1460 = !DILocation(line: 457, column: 29, scope: !1446)
!1461 = !DILocation(line: 457, column: 31, scope: !1446)
!1462 = !DILocation(line: 457, column: 17, scope: !1446)
!1463 = !DILocation(line: 464, column: 25, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !124, line: 464, column: 25)
!1465 = distinct !DILexicalBlock(scope: !1446, file: !124, line: 458, column: 19)
!1466 = !DILocation(line: 464, column: 25, scope: !1465)
!1467 = !DILocation(line: 465, column: 23, scope: !1464)
!1468 = !DILocation(line: 466, column: 25, scope: !1465)
!1469 = !DILocation(line: 466, column: 29, scope: !1465)
!1470 = !DILocation(line: 466, column: 31, scope: !1465)
!1471 = !DILocation(line: 466, column: 23, scope: !1465)
!1472 = !DILocation(line: 467, column: 23, scope: !1465)
!1473 = !DILocation(line: 468, column: 21, scope: !1465)
!1474 = !DILocation(line: 468, column: 21, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !124, line: 468, column: 21)
!1476 = distinct !DILexicalBlock(scope: !1465, file: !124, line: 468, column: 21)
!1477 = !DILocation(line: 468, column: 21, scope: !1476)
!1478 = !DILocation(line: 469, column: 21, scope: !1465)
!1479 = !DILocation(line: 469, column: 21, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !124, line: 469, column: 21)
!1481 = distinct !DILexicalBlock(scope: !1465, file: !124, line: 469, column: 21)
!1482 = !DILocation(line: 469, column: 21, scope: !1481)
!1483 = !DILocation(line: 470, column: 21, scope: !1465)
!1484 = !DILocation(line: 470, column: 21, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !124, line: 470, column: 21)
!1486 = distinct !DILexicalBlock(scope: !1465, file: !124, line: 470, column: 21)
!1487 = !DILocation(line: 470, column: 21, scope: !1486)
!1488 = !DILocation(line: 471, column: 21, scope: !1465)
!1489 = !DILocation(line: 471, column: 21, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !124, line: 471, column: 21)
!1491 = distinct !DILexicalBlock(scope: !1465, file: !124, line: 471, column: 21)
!1492 = !DILocation(line: 471, column: 21, scope: !1491)
!1493 = !DILocation(line: 472, column: 21, scope: !1465)
!1494 = !DILocation(line: 473, column: 19, scope: !1465)
!1495 = !DILocation(line: 474, column: 15, scope: !1441)
!1496 = !DILocation(line: 476, column: 11, scope: !1370)
!1497 = !DILocation(line: 481, column: 26, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1370, file: !124, line: 478, column: 9)
!1499 = !DILocation(line: 481, column: 33, scope: !1498)
!1500 = !DILocation(line: 482, column: 26, scope: !1498)
!1501 = !DILocation(line: 482, column: 33, scope: !1498)
!1502 = !DILocation(line: 483, column: 26, scope: !1498)
!1503 = !DILocation(line: 483, column: 33, scope: !1498)
!1504 = !DILocation(line: 484, column: 26, scope: !1498)
!1505 = !DILocation(line: 484, column: 33, scope: !1498)
!1506 = !DILocation(line: 485, column: 26, scope: !1498)
!1507 = !DILocation(line: 485, column: 33, scope: !1498)
!1508 = !DILocation(line: 486, column: 26, scope: !1498)
!1509 = !DILocation(line: 486, column: 33, scope: !1498)
!1510 = !DILocation(line: 487, column: 26, scope: !1498)
!1511 = !DILocation(line: 487, column: 33, scope: !1498)
!1512 = !DILocation(line: 488, column: 28, scope: !1498)
!1513 = !DILocation(line: 488, column: 26, scope: !1498)
!1514 = !DILocation(line: 490, column: 17, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1498, file: !124, line: 490, column: 17)
!1516 = !DILocation(line: 490, column: 31, scope: !1515)
!1517 = !DILocation(line: 490, column: 17, scope: !1498)
!1518 = !DILocation(line: 492, column: 21, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !124, line: 492, column: 21)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !124, line: 491, column: 15)
!1521 = !DILocation(line: 492, column: 21, scope: !1520)
!1522 = !DILocation(line: 493, column: 19, scope: !1519)
!1523 = !DILocation(line: 494, column: 17, scope: !1520)
!1524 = !DILocation(line: 499, column: 17, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1498, file: !124, line: 499, column: 17)
!1526 = !DILocation(line: 499, column: 35, scope: !1525)
!1527 = !DILocation(line: 499, column: 38, scope: !1525)
!1528 = !DILocation(line: 499, column: 57, scope: !1525)
!1529 = !DILocation(line: 499, column: 60, scope: !1525)
!1530 = !DILocation(line: 499, column: 17, scope: !1498)
!1531 = !DILocation(line: 500, column: 15, scope: !1525)
!1532 = !DILabel(scope: !1498, name: "c_and_shell_escape", file: !124, line: 502)
!1533 = !DILocation(line: 502, column: 11, scope: !1498)
!1534 = !DILocation(line: 503, column: 17, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1498, file: !124, line: 503, column: 17)
!1536 = !DILocation(line: 503, column: 31, scope: !1535)
!1537 = !DILocation(line: 504, column: 17, scope: !1535)
!1538 = !DILocation(line: 504, column: 20, scope: !1535)
!1539 = !DILocation(line: 503, column: 17, scope: !1498)
!1540 = !DILocation(line: 505, column: 15, scope: !1535)
!1541 = !DILabel(scope: !1498, name: "c_escape", file: !124, line: 507)
!1542 = !DILocation(line: 507, column: 11, scope: !1498)
!1543 = !DILocation(line: 508, column: 17, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1498, file: !124, line: 508, column: 17)
!1545 = !DILocation(line: 508, column: 17, scope: !1498)
!1546 = !DILocation(line: 510, column: 21, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1544, file: !124, line: 509, column: 15)
!1548 = !DILocation(line: 510, column: 19, scope: !1547)
!1549 = !DILocation(line: 511, column: 17, scope: !1547)
!1550 = !DILocation(line: 513, column: 13, scope: !1498)
!1551 = !DILocation(line: 517, column: 18, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1370, file: !124, line: 517, column: 15)
!1553 = !DILocation(line: 517, column: 26, scope: !1552)
!1554 = !DILocation(line: 517, column: 15, scope: !1370)
!1555 = !DILocation(line: 517, column: 40, scope: !1552)
!1556 = !DILocation(line: 517, column: 47, scope: !1552)
!1557 = !DILocation(line: 517, column: 57, scope: !1552)
!1558 = !DILocation(line: 517, column: 65, scope: !1552)
!1559 = !DILocation(line: 518, column: 13, scope: !1552)
!1560 = !DILocation(line: 517, column: 69, scope: !1552)
!1561 = !DILocation(line: 521, column: 15, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1370, file: !124, line: 521, column: 15)
!1563 = !DILocation(line: 521, column: 17, scope: !1562)
!1564 = !DILocation(line: 521, column: 15, scope: !1370)
!1565 = !DILocation(line: 522, column: 13, scope: !1562)
!1566 = !DILocation(line: 521, column: 20, scope: !1562)
!1567 = !DILocation(line: 525, column: 36, scope: !1370)
!1568 = !DILocation(line: 525, column: 11, scope: !1370)
!1569 = !DILocation(line: 536, column: 15, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1370, file: !124, line: 536, column: 15)
!1571 = !DILocation(line: 536, column: 29, scope: !1570)
!1572 = !DILocation(line: 537, column: 15, scope: !1570)
!1573 = !DILocation(line: 537, column: 18, scope: !1570)
!1574 = !DILocation(line: 536, column: 15, scope: !1370)
!1575 = !DILocation(line: 538, column: 13, scope: !1570)
!1576 = !DILocation(line: 539, column: 11, scope: !1370)
!1577 = !DILocation(line: 542, column: 36, scope: !1370)
!1578 = !DILocation(line: 543, column: 36, scope: !1370)
!1579 = !DILocation(line: 544, column: 15, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1370, file: !124, line: 544, column: 15)
!1581 = !DILocation(line: 544, column: 29, scope: !1580)
!1582 = !DILocation(line: 544, column: 15, scope: !1370)
!1583 = !DILocation(line: 546, column: 19, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !124, line: 546, column: 19)
!1585 = distinct !DILexicalBlock(scope: !1580, file: !124, line: 545, column: 13)
!1586 = !DILocation(line: 546, column: 19, scope: !1585)
!1587 = !DILocation(line: 547, column: 17, scope: !1584)
!1588 = !DILocation(line: 549, column: 19, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1585, file: !124, line: 549, column: 19)
!1590 = !DILocation(line: 549, column: 30, scope: !1589)
!1591 = !DILocation(line: 549, column: 35, scope: !1589)
!1592 = !DILocation(line: 549, column: 19, scope: !1585)
!1593 = !DILocation(line: 554, column: 37, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1589, file: !124, line: 550, column: 17)
!1595 = !DILocation(line: 554, column: 35, scope: !1594)
!1596 = !DILocation(line: 555, column: 30, scope: !1594)
!1597 = !DILocation(line: 556, column: 17, scope: !1594)
!1598 = !DILocation(line: 558, column: 15, scope: !1585)
!1599 = !DILocation(line: 558, column: 15, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !124, line: 558, column: 15)
!1601 = distinct !DILexicalBlock(scope: !1585, file: !124, line: 558, column: 15)
!1602 = !DILocation(line: 558, column: 15, scope: !1601)
!1603 = !DILocation(line: 559, column: 15, scope: !1585)
!1604 = !DILocation(line: 559, column: 15, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !124, line: 559, column: 15)
!1606 = distinct !DILexicalBlock(scope: !1585, file: !124, line: 559, column: 15)
!1607 = !DILocation(line: 559, column: 15, scope: !1606)
!1608 = !DILocation(line: 560, column: 15, scope: !1585)
!1609 = !DILocation(line: 560, column: 15, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !124, line: 560, column: 15)
!1611 = distinct !DILexicalBlock(scope: !1585, file: !124, line: 560, column: 15)
!1612 = !DILocation(line: 560, column: 15, scope: !1611)
!1613 = !DILocation(line: 561, column: 40, scope: !1585)
!1614 = !DILocation(line: 562, column: 13, scope: !1585)
!1615 = !DILocation(line: 563, column: 11, scope: !1370)
!1616 = !DILocation(line: 587, column: 36, scope: !1370)
!1617 = !DILocation(line: 588, column: 11, scope: !1370)
!1618 = !DILocalVariable(name: "m", scope: !1619, file: !124, line: 598, type: !146)
!1619 = distinct !DILexicalBlock(scope: !1370, file: !124, line: 596, column: 11)
!1620 = !DILocation(line: 598, column: 20, scope: !1619)
!1621 = !DILocalVariable(name: "printable", scope: !1619, file: !124, line: 600, type: !36)
!1622 = !DILocation(line: 600, column: 18, scope: !1619)
!1623 = !DILocation(line: 602, column: 17, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1619, file: !124, line: 602, column: 17)
!1625 = !DILocation(line: 602, column: 17, scope: !1619)
!1626 = !DILocation(line: 604, column: 19, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1624, file: !124, line: 603, column: 15)
!1628 = !DILocation(line: 605, column: 29, scope: !1627)
!1629 = !DILocation(line: 605, column: 41, scope: !1627)
!1630 = !DILocation(line: 605, column: 27, scope: !1627)
!1631 = !DILocation(line: 606, column: 15, scope: !1627)
!1632 = !DILocalVariable(name: "mbs", scope: !1633, file: !124, line: 609, type: !1634)
!1633 = distinct !DILexicalBlock(scope: !1624, file: !124, line: 608, column: 15)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !220, line: 6, baseType: !1635)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !222, line: 21, baseType: !1636)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !222, line: 13, size: 64, elements: !1637)
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1636, file: !222, line: 15, baseType: !31, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1636, file: !222, line: 20, baseType: !1640, size: 32, offset: 32)
!1640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1636, file: !222, line: 16, size: 32, elements: !1641)
!1641 = !{!1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1640, file: !222, line: 18, baseType: !6, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1640, file: !222, line: 19, baseType: !231, size: 32)
!1644 = !DILocation(line: 609, column: 27, scope: !1633)
!1645 = !DILocation(line: 609, column: 32, scope: !1633)
!1646 = !DILocation(line: 611, column: 19, scope: !1633)
!1647 = !DILocation(line: 612, column: 27, scope: !1633)
!1648 = !DILocation(line: 613, column: 21, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1633, file: !124, line: 613, column: 21)
!1650 = !DILocation(line: 613, column: 29, scope: !1649)
!1651 = !DILocation(line: 613, column: 21, scope: !1633)
!1652 = !DILocation(line: 614, column: 37, scope: !1649)
!1653 = !DILocation(line: 614, column: 29, scope: !1649)
!1654 = !DILocation(line: 614, column: 27, scope: !1649)
!1655 = !DILocation(line: 614, column: 19, scope: !1649)
!1656 = !DILocation(line: 616, column: 17, scope: !1633)
!1657 = !DILocalVariable(name: "w", scope: !1658, file: !124, line: 618, type: !954)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !124, line: 617, column: 19)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !124, line: 616, column: 17)
!1660 = distinct !DILexicalBlock(scope: !1633, file: !124, line: 616, column: 17)
!1661 = !DILocation(line: 618, column: 30, scope: !1658)
!1662 = !DILocalVariable(name: "bytes", scope: !1658, file: !124, line: 619, type: !146)
!1663 = !DILocation(line: 619, column: 28, scope: !1658)
!1664 = !DILocation(line: 619, column: 51, scope: !1658)
!1665 = !DILocation(line: 619, column: 55, scope: !1658)
!1666 = !DILocation(line: 619, column: 59, scope: !1658)
!1667 = !DILocation(line: 619, column: 57, scope: !1658)
!1668 = !DILocation(line: 620, column: 46, scope: !1658)
!1669 = !DILocation(line: 620, column: 57, scope: !1658)
!1670 = !DILocation(line: 620, column: 61, scope: !1658)
!1671 = !DILocation(line: 620, column: 59, scope: !1658)
!1672 = !DILocation(line: 620, column: 54, scope: !1658)
!1673 = !DILocation(line: 619, column: 36, scope: !1658)
!1674 = !DILocation(line: 621, column: 25, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1658, file: !124, line: 621, column: 25)
!1676 = !DILocation(line: 621, column: 31, scope: !1675)
!1677 = !DILocation(line: 621, column: 25, scope: !1658)
!1678 = !DILocation(line: 622, column: 23, scope: !1675)
!1679 = !DILocation(line: 623, column: 30, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1675, file: !124, line: 623, column: 30)
!1681 = !DILocation(line: 623, column: 36, scope: !1680)
!1682 = !DILocation(line: 623, column: 30, scope: !1675)
!1683 = !DILocation(line: 625, column: 35, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !124, line: 624, column: 23)
!1685 = !DILocation(line: 626, column: 25, scope: !1684)
!1686 = !DILocation(line: 628, column: 30, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1680, file: !124, line: 628, column: 30)
!1688 = !DILocation(line: 628, column: 36, scope: !1687)
!1689 = !DILocation(line: 628, column: 30, scope: !1680)
!1690 = !DILocation(line: 630, column: 35, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !124, line: 629, column: 23)
!1692 = !DILocation(line: 631, column: 25, scope: !1691)
!1693 = !DILocation(line: 631, column: 32, scope: !1691)
!1694 = !DILocation(line: 631, column: 36, scope: !1691)
!1695 = !DILocation(line: 631, column: 34, scope: !1691)
!1696 = !DILocation(line: 631, column: 40, scope: !1691)
!1697 = !DILocation(line: 631, column: 38, scope: !1691)
!1698 = !DILocation(line: 631, column: 48, scope: !1691)
!1699 = !DILocation(line: 631, column: 51, scope: !1691)
!1700 = !DILocation(line: 631, column: 55, scope: !1691)
!1701 = !DILocation(line: 631, column: 59, scope: !1691)
!1702 = !DILocation(line: 631, column: 57, scope: !1691)
!1703 = !DILocation(line: 0, scope: !1691)
!1704 = !DILocation(line: 632, column: 28, scope: !1691)
!1705 = distinct !{!1705, !1692, !1704, !398}
!1706 = !DILocation(line: 633, column: 25, scope: !1691)
!1707 = !DILocation(line: 645, column: 44, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !124, line: 645, column: 29)
!1709 = distinct !DILexicalBlock(scope: !1687, file: !124, line: 636, column: 23)
!1710 = !DILocation(line: 646, column: 29, scope: !1708)
!1711 = !DILocation(line: 646, column: 32, scope: !1708)
!1712 = !DILocation(line: 646, column: 46, scope: !1708)
!1713 = !DILocation(line: 645, column: 29, scope: !1709)
!1714 = !DILocalVariable(name: "j", scope: !1715, file: !124, line: 648, type: !146)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !124, line: 648, column: 29)
!1716 = distinct !DILexicalBlock(scope: !1708, file: !124, line: 647, column: 27)
!1717 = !DILocation(line: 648, column: 41, scope: !1715)
!1718 = !DILocation(line: 648, column: 34, scope: !1715)
!1719 = !DILocation(line: 648, column: 48, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1715, file: !124, line: 648, column: 29)
!1721 = !DILocation(line: 648, column: 52, scope: !1720)
!1722 = !DILocation(line: 648, column: 50, scope: !1720)
!1723 = !DILocation(line: 648, column: 29, scope: !1715)
!1724 = !DILocation(line: 649, column: 39, scope: !1720)
!1725 = !DILocation(line: 649, column: 43, scope: !1720)
!1726 = !DILocation(line: 649, column: 47, scope: !1720)
!1727 = !DILocation(line: 649, column: 45, scope: !1720)
!1728 = !DILocation(line: 649, column: 51, scope: !1720)
!1729 = !DILocation(line: 649, column: 49, scope: !1720)
!1730 = !DILocation(line: 649, column: 31, scope: !1720)
!1731 = !DILocation(line: 653, column: 35, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1720, file: !124, line: 650, column: 33)
!1733 = !DILocation(line: 654, column: 33, scope: !1732)
!1734 = !DILocation(line: 648, column: 60, scope: !1720)
!1735 = !DILocation(line: 648, column: 29, scope: !1720)
!1736 = distinct !{!1736, !1723, !1737, !398}
!1737 = !DILocation(line: 654, column: 33, scope: !1715)
!1738 = !DILocation(line: 655, column: 27, scope: !1716)
!1739 = !DILocation(line: 657, column: 43, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1709, file: !124, line: 657, column: 29)
!1741 = !DILocation(line: 657, column: 31, scope: !1740)
!1742 = !DILocation(line: 657, column: 29, scope: !1709)
!1743 = !DILocation(line: 658, column: 37, scope: !1740)
!1744 = !DILocation(line: 658, column: 27, scope: !1740)
!1745 = !DILocation(line: 659, column: 30, scope: !1709)
!1746 = !DILocation(line: 659, column: 27, scope: !1709)
!1747 = !DILocation(line: 664, column: 23, scope: !1658)
!1748 = !DILocation(line: 668, column: 40, scope: !1619)
!1749 = !DILocation(line: 668, column: 38, scope: !1619)
!1750 = !DILocation(line: 670, column: 21, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1619, file: !124, line: 670, column: 17)
!1752 = !DILocation(line: 670, column: 19, scope: !1751)
!1753 = !DILocation(line: 670, column: 23, scope: !1751)
!1754 = !DILocation(line: 670, column: 27, scope: !1751)
!1755 = !DILocation(line: 670, column: 45, scope: !1751)
!1756 = !DILocation(line: 670, column: 50, scope: !1751)
!1757 = !DILocation(line: 670, column: 17, scope: !1619)
!1758 = !DILocalVariable(name: "ilim", scope: !1759, file: !124, line: 674, type: !146)
!1759 = distinct !DILexicalBlock(scope: !1751, file: !124, line: 671, column: 15)
!1760 = !DILocation(line: 674, column: 24, scope: !1759)
!1761 = !DILocation(line: 674, column: 31, scope: !1759)
!1762 = !DILocation(line: 674, column: 35, scope: !1759)
!1763 = !DILocation(line: 674, column: 33, scope: !1759)
!1764 = !DILocation(line: 676, column: 17, scope: !1759)
!1765 = !DILocation(line: 678, column: 25, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !124, line: 678, column: 25)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !124, line: 677, column: 19)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !124, line: 676, column: 17)
!1769 = distinct !DILexicalBlock(scope: !1759, file: !124, line: 676, column: 17)
!1770 = !DILocation(line: 678, column: 43, scope: !1766)
!1771 = !DILocation(line: 678, column: 48, scope: !1766)
!1772 = !DILocation(line: 678, column: 25, scope: !1767)
!1773 = !DILocation(line: 680, column: 25, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1766, file: !124, line: 679, column: 23)
!1775 = !DILocation(line: 680, column: 25, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !124, line: 680, column: 25)
!1777 = distinct !DILexicalBlock(scope: !1774, file: !124, line: 680, column: 25)
!1778 = !DILocation(line: 680, column: 25, scope: !1777)
!1779 = !DILocation(line: 680, column: 25, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1777, file: !124, line: 680, column: 25)
!1781 = !DILocation(line: 680, column: 25, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1780, file: !124, line: 680, column: 25)
!1783 = !DILocation(line: 680, column: 25, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !124, line: 680, column: 25)
!1785 = distinct !DILexicalBlock(scope: !1782, file: !124, line: 680, column: 25)
!1786 = !DILocation(line: 680, column: 25, scope: !1785)
!1787 = !DILocation(line: 680, column: 25, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !124, line: 680, column: 25)
!1789 = distinct !DILexicalBlock(scope: !1782, file: !124, line: 680, column: 25)
!1790 = !DILocation(line: 680, column: 25, scope: !1789)
!1791 = !DILocation(line: 680, column: 25, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !124, line: 680, column: 25)
!1793 = distinct !DILexicalBlock(scope: !1782, file: !124, line: 680, column: 25)
!1794 = !DILocation(line: 680, column: 25, scope: !1793)
!1795 = !DILocation(line: 680, column: 25, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !124, line: 680, column: 25)
!1797 = distinct !DILexicalBlock(scope: !1777, file: !124, line: 680, column: 25)
!1798 = !DILocation(line: 680, column: 25, scope: !1797)
!1799 = !DILocation(line: 681, column: 25, scope: !1774)
!1800 = !DILocation(line: 681, column: 25, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !124, line: 681, column: 25)
!1802 = distinct !DILexicalBlock(scope: !1774, file: !124, line: 681, column: 25)
!1803 = !DILocation(line: 681, column: 25, scope: !1802)
!1804 = !DILocation(line: 682, column: 25, scope: !1774)
!1805 = !DILocation(line: 682, column: 25, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !124, line: 682, column: 25)
!1807 = distinct !DILexicalBlock(scope: !1774, file: !124, line: 682, column: 25)
!1808 = !DILocation(line: 682, column: 25, scope: !1807)
!1809 = !DILocation(line: 683, column: 36, scope: !1774)
!1810 = !DILocation(line: 683, column: 38, scope: !1774)
!1811 = !DILocation(line: 683, column: 33, scope: !1774)
!1812 = !DILocation(line: 683, column: 29, scope: !1774)
!1813 = !DILocation(line: 683, column: 27, scope: !1774)
!1814 = !DILocation(line: 684, column: 23, scope: !1774)
!1815 = !DILocation(line: 685, column: 30, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1766, file: !124, line: 685, column: 30)
!1817 = !DILocation(line: 685, column: 30, scope: !1766)
!1818 = !DILocation(line: 687, column: 25, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1816, file: !124, line: 686, column: 23)
!1820 = !DILocation(line: 687, column: 25, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !124, line: 687, column: 25)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !124, line: 687, column: 25)
!1823 = !DILocation(line: 687, column: 25, scope: !1822)
!1824 = !DILocation(line: 688, column: 40, scope: !1819)
!1825 = !DILocation(line: 689, column: 23, scope: !1819)
!1826 = !DILocation(line: 690, column: 25, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1767, file: !124, line: 690, column: 25)
!1828 = !DILocation(line: 690, column: 33, scope: !1827)
!1829 = !DILocation(line: 690, column: 35, scope: !1827)
!1830 = !DILocation(line: 690, column: 30, scope: !1827)
!1831 = !DILocation(line: 690, column: 25, scope: !1767)
!1832 = !DILocation(line: 691, column: 23, scope: !1827)
!1833 = !DILocation(line: 692, column: 21, scope: !1767)
!1834 = !DILocation(line: 692, column: 21, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !124, line: 692, column: 21)
!1836 = distinct !DILexicalBlock(scope: !1767, file: !124, line: 692, column: 21)
!1837 = !DILocation(line: 692, column: 21, scope: !1836)
!1838 = !DILocation(line: 692, column: 21, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1835, file: !124, line: 692, column: 21)
!1840 = !DILocation(line: 692, column: 21, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !124, line: 692, column: 21)
!1842 = distinct !DILexicalBlock(scope: !1839, file: !124, line: 692, column: 21)
!1843 = !DILocation(line: 692, column: 21, scope: !1842)
!1844 = !DILocation(line: 692, column: 21, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !124, line: 692, column: 21)
!1846 = distinct !DILexicalBlock(scope: !1839, file: !124, line: 692, column: 21)
!1847 = !DILocation(line: 692, column: 21, scope: !1846)
!1848 = !DILocation(line: 693, column: 21, scope: !1767)
!1849 = !DILocation(line: 693, column: 21, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !124, line: 693, column: 21)
!1851 = distinct !DILexicalBlock(scope: !1767, file: !124, line: 693, column: 21)
!1852 = !DILocation(line: 693, column: 21, scope: !1851)
!1853 = !DILocation(line: 694, column: 25, scope: !1767)
!1854 = !DILocation(line: 694, column: 29, scope: !1767)
!1855 = !DILocation(line: 694, column: 23, scope: !1767)
!1856 = !DILocation(line: 676, column: 17, scope: !1768)
!1857 = distinct !{!1857, !1858, !1859}
!1858 = !DILocation(line: 676, column: 17, scope: !1769)
!1859 = !DILocation(line: 695, column: 19, scope: !1769)
!1860 = !DILocation(line: 697, column: 17, scope: !1759)
!1861 = !DILocation(line: 700, column: 9, scope: !1370)
!1862 = !DILocation(line: 702, column: 16, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1320, file: !124, line: 702, column: 11)
!1864 = !DILocation(line: 702, column: 34, scope: !1863)
!1865 = !DILocation(line: 702, column: 37, scope: !1863)
!1866 = !DILocation(line: 702, column: 51, scope: !1863)
!1867 = !DILocation(line: 703, column: 15, scope: !1863)
!1868 = !DILocation(line: 703, column: 18, scope: !1863)
!1869 = !DILocation(line: 704, column: 14, scope: !1863)
!1870 = !DILocation(line: 704, column: 17, scope: !1863)
!1871 = !DILocation(line: 705, column: 14, scope: !1863)
!1872 = !DILocation(line: 705, column: 17, scope: !1863)
!1873 = !DILocation(line: 705, column: 33, scope: !1863)
!1874 = !DILocation(line: 705, column: 35, scope: !1863)
!1875 = !DILocation(line: 705, column: 51, scope: !1863)
!1876 = !DILocation(line: 705, column: 53, scope: !1863)
!1877 = !DILocation(line: 705, column: 47, scope: !1863)
!1878 = !DILocation(line: 705, column: 65, scope: !1863)
!1879 = !DILocation(line: 706, column: 11, scope: !1863)
!1880 = !DILocation(line: 706, column: 15, scope: !1863)
!1881 = !DILocation(line: 702, column: 11, scope: !1320)
!1882 = !DILocation(line: 707, column: 9, scope: !1863)
!1883 = !DILabel(scope: !1320, name: "store_escape", file: !124, line: 709)
!1884 = !DILocation(line: 709, column: 5, scope: !1320)
!1885 = !DILocation(line: 710, column: 7, scope: !1320)
!1886 = !DILocation(line: 710, column: 7, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !124, line: 710, column: 7)
!1888 = distinct !DILexicalBlock(scope: !1320, file: !124, line: 710, column: 7)
!1889 = !DILocation(line: 710, column: 7, scope: !1888)
!1890 = !DILocation(line: 710, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1888, file: !124, line: 710, column: 7)
!1892 = !DILocation(line: 710, column: 7, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1891, file: !124, line: 710, column: 7)
!1894 = !DILocation(line: 710, column: 7, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !124, line: 710, column: 7)
!1896 = distinct !DILexicalBlock(scope: !1893, file: !124, line: 710, column: 7)
!1897 = !DILocation(line: 710, column: 7, scope: !1896)
!1898 = !DILocation(line: 710, column: 7, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !124, line: 710, column: 7)
!1900 = distinct !DILexicalBlock(scope: !1893, file: !124, line: 710, column: 7)
!1901 = !DILocation(line: 710, column: 7, scope: !1900)
!1902 = !DILocation(line: 710, column: 7, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !124, line: 710, column: 7)
!1904 = distinct !DILexicalBlock(scope: !1893, file: !124, line: 710, column: 7)
!1905 = !DILocation(line: 710, column: 7, scope: !1904)
!1906 = !DILocation(line: 710, column: 7, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !124, line: 710, column: 7)
!1908 = distinct !DILexicalBlock(scope: !1888, file: !124, line: 710, column: 7)
!1909 = !DILocation(line: 710, column: 7, scope: !1908)
!1910 = !DILabel(scope: !1320, name: "store_c", file: !124, line: 712)
!1911 = !DILocation(line: 712, column: 5, scope: !1320)
!1912 = !DILocation(line: 713, column: 7, scope: !1320)
!1913 = !DILocation(line: 713, column: 7, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !124, line: 713, column: 7)
!1915 = distinct !DILexicalBlock(scope: !1320, file: !124, line: 713, column: 7)
!1916 = !DILocation(line: 713, column: 7, scope: !1915)
!1917 = !DILocation(line: 713, column: 7, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !124, line: 713, column: 7)
!1919 = !DILocation(line: 713, column: 7, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !124, line: 713, column: 7)
!1921 = distinct !DILexicalBlock(scope: !1918, file: !124, line: 713, column: 7)
!1922 = !DILocation(line: 713, column: 7, scope: !1921)
!1923 = !DILocation(line: 713, column: 7, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !124, line: 713, column: 7)
!1925 = distinct !DILexicalBlock(scope: !1918, file: !124, line: 713, column: 7)
!1926 = !DILocation(line: 713, column: 7, scope: !1925)
!1927 = !DILocation(line: 714, column: 7, scope: !1320)
!1928 = !DILocation(line: 714, column: 7, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !124, line: 714, column: 7)
!1930 = distinct !DILexicalBlock(scope: !1320, file: !124, line: 714, column: 7)
!1931 = !DILocation(line: 714, column: 7, scope: !1930)
!1932 = !DILocation(line: 716, column: 13, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1320, file: !124, line: 716, column: 11)
!1934 = !DILocation(line: 716, column: 11, scope: !1320)
!1935 = !DILocation(line: 717, column: 38, scope: !1933)
!1936 = !DILocation(line: 717, column: 9, scope: !1933)
!1937 = !DILocation(line: 718, column: 5, scope: !1320)
!1938 = !DILocation(line: 395, column: 82, scope: !1309)
!1939 = !DILocation(line: 395, column: 3, scope: !1309)
!1940 = distinct !{!1940, !1318, !1941, !398}
!1941 = !DILocation(line: 718, column: 5, scope: !1305)
!1942 = !DILocation(line: 720, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1167, file: !124, line: 720, column: 7)
!1944 = !DILocation(line: 720, column: 11, scope: !1943)
!1945 = !DILocation(line: 720, column: 16, scope: !1943)
!1946 = !DILocation(line: 720, column: 19, scope: !1943)
!1947 = !DILocation(line: 720, column: 33, scope: !1943)
!1948 = !DILocation(line: 721, column: 7, scope: !1943)
!1949 = !DILocation(line: 721, column: 10, scope: !1943)
!1950 = !DILocation(line: 720, column: 7, scope: !1167)
!1951 = !DILocation(line: 722, column: 5, scope: !1943)
!1952 = !DILocation(line: 728, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1167, file: !124, line: 728, column: 7)
!1954 = !DILocation(line: 728, column: 21, scope: !1953)
!1955 = !DILocation(line: 728, column: 51, scope: !1953)
!1956 = !DILocation(line: 728, column: 56, scope: !1953)
!1957 = !DILocation(line: 729, column: 7, scope: !1953)
!1958 = !DILocation(line: 729, column: 10, scope: !1953)
!1959 = !DILocation(line: 728, column: 7, scope: !1167)
!1960 = !DILocation(line: 731, column: 11, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !124, line: 731, column: 11)
!1962 = distinct !DILexicalBlock(scope: !1953, file: !124, line: 730, column: 5)
!1963 = !DILocation(line: 731, column: 11, scope: !1962)
!1964 = !DILocation(line: 732, column: 42, scope: !1961)
!1965 = !DILocation(line: 732, column: 50, scope: !1961)
!1966 = !DILocation(line: 732, column: 67, scope: !1961)
!1967 = !DILocation(line: 732, column: 72, scope: !1961)
!1968 = !DILocation(line: 734, column: 42, scope: !1961)
!1969 = !DILocation(line: 734, column: 49, scope: !1961)
!1970 = !DILocation(line: 735, column: 42, scope: !1961)
!1971 = !DILocation(line: 735, column: 54, scope: !1961)
!1972 = !DILocation(line: 732, column: 16, scope: !1961)
!1973 = !DILocation(line: 732, column: 9, scope: !1961)
!1974 = !DILocation(line: 736, column: 18, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1961, file: !124, line: 736, column: 16)
!1976 = !DILocation(line: 736, column: 29, scope: !1975)
!1977 = !DILocation(line: 736, column: 32, scope: !1975)
!1978 = !DILocation(line: 736, column: 16, scope: !1961)
!1979 = !DILocation(line: 739, column: 24, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1975, file: !124, line: 737, column: 9)
!1981 = !DILocation(line: 739, column: 22, scope: !1980)
!1982 = !DILocation(line: 740, column: 15, scope: !1980)
!1983 = !DILocation(line: 741, column: 11, scope: !1980)
!1984 = !DILocation(line: 743, column: 5, scope: !1962)
!1985 = !DILocation(line: 745, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1167, file: !124, line: 745, column: 7)
!1987 = !DILocation(line: 745, column: 20, scope: !1986)
!1988 = !DILocation(line: 745, column: 24, scope: !1986)
!1989 = !DILocation(line: 745, column: 7, scope: !1167)
!1990 = !DILocation(line: 746, column: 5, scope: !1986)
!1991 = !DILocation(line: 746, column: 13, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !124, line: 746, column: 5)
!1993 = distinct !DILexicalBlock(scope: !1986, file: !124, line: 746, column: 5)
!1994 = !DILocation(line: 746, column: 12, scope: !1992)
!1995 = !DILocation(line: 746, column: 5, scope: !1993)
!1996 = !DILocation(line: 747, column: 7, scope: !1992)
!1997 = !DILocation(line: 747, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !124, line: 747, column: 7)
!1999 = distinct !DILexicalBlock(scope: !1992, file: !124, line: 747, column: 7)
!2000 = !DILocation(line: 747, column: 7, scope: !1999)
!2001 = !DILocation(line: 746, column: 39, scope: !1992)
!2002 = !DILocation(line: 746, column: 5, scope: !1992)
!2003 = distinct !{!2003, !1995, !2004, !398}
!2004 = !DILocation(line: 747, column: 7, scope: !1993)
!2005 = !DILocation(line: 749, column: 7, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1167, file: !124, line: 749, column: 7)
!2007 = !DILocation(line: 749, column: 13, scope: !2006)
!2008 = !DILocation(line: 749, column: 11, scope: !2006)
!2009 = !DILocation(line: 749, column: 7, scope: !1167)
!2010 = !DILocation(line: 750, column: 5, scope: !2006)
!2011 = !DILocation(line: 750, column: 12, scope: !2006)
!2012 = !DILocation(line: 750, column: 17, scope: !2006)
!2013 = !DILocation(line: 751, column: 10, scope: !1167)
!2014 = !DILocation(line: 751, column: 3, scope: !1167)
!2015 = !DILabel(scope: !1167, name: "force_outer_quoting_style", file: !124, line: 753)
!2016 = !DILocation(line: 753, column: 2, scope: !1167)
!2017 = !DILocation(line: 756, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1167, file: !124, line: 756, column: 7)
!2019 = !DILocation(line: 756, column: 21, scope: !2018)
!2020 = !DILocation(line: 756, column: 51, scope: !2018)
!2021 = !DILocation(line: 756, column: 54, scope: !2018)
!2022 = !DILocation(line: 756, column: 7, scope: !1167)
!2023 = !DILocation(line: 757, column: 19, scope: !2018)
!2024 = !DILocation(line: 757, column: 5, scope: !2018)
!2025 = !DILocation(line: 758, column: 36, scope: !1167)
!2026 = !DILocation(line: 758, column: 44, scope: !1167)
!2027 = !DILocation(line: 758, column: 56, scope: !1167)
!2028 = !DILocation(line: 758, column: 61, scope: !1167)
!2029 = !DILocation(line: 759, column: 36, scope: !1167)
!2030 = !DILocation(line: 760, column: 36, scope: !1167)
!2031 = !DILocation(line: 760, column: 42, scope: !1167)
!2032 = !DILocation(line: 761, column: 36, scope: !1167)
!2033 = !DILocation(line: 761, column: 48, scope: !1167)
!2034 = !DILocation(line: 758, column: 10, scope: !1167)
!2035 = !DILocation(line: 758, column: 3, scope: !1167)
!2036 = !DILocation(line: 762, column: 1, scope: !1167)
!2037 = !DILocalVariable(name: "msgid", arg: 1, scope: !177, file: !124, line: 197, type: !43)
!2038 = !DILocation(line: 197, column: 28, scope: !177)
!2039 = !DILocalVariable(name: "s", arg: 2, scope: !177, file: !124, line: 197, type: !126)
!2040 = !DILocation(line: 197, column: 54, scope: !177)
!2041 = !DILocalVariable(name: "translation", scope: !177, file: !124, line: 199, type: !43)
!2042 = !DILocation(line: 199, column: 15, scope: !177)
!2043 = !DILocation(line: 199, column: 29, scope: !177)
!2044 = !DILocation(line: 201, column: 7, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !177, file: !124, line: 201, column: 7)
!2046 = !DILocation(line: 201, column: 22, scope: !2045)
!2047 = !DILocation(line: 201, column: 19, scope: !2045)
!2048 = !DILocation(line: 201, column: 7, scope: !177)
!2049 = !DILocation(line: 202, column: 12, scope: !2045)
!2050 = !DILocation(line: 202, column: 5, scope: !2045)
!2051 = !DILocalVariable(name: "w", scope: !177, file: !124, line: 229, type: !954)
!2052 = !DILocation(line: 229, column: 12, scope: !177)
!2053 = !DILocalVariable(name: "mbs", scope: !177, file: !124, line: 230, type: !1634)
!2054 = !DILocation(line: 230, column: 13, scope: !177)
!2055 = !DILocation(line: 230, column: 18, scope: !177)
!2056 = !DILocation(line: 231, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !177, file: !124, line: 231, column: 7)
!2058 = !DILocation(line: 231, column: 40, scope: !2057)
!2059 = !DILocation(line: 231, column: 45, scope: !2057)
!2060 = !DILocation(line: 231, column: 48, scope: !2057)
!2061 = !DILocation(line: 231, column: 50, scope: !2057)
!2062 = !DILocation(line: 231, column: 7, scope: !177)
!2063 = !DILocation(line: 232, column: 18, scope: !2057)
!2064 = !DILocation(line: 232, column: 27, scope: !2057)
!2065 = !DILocation(line: 232, column: 12, scope: !2057)
!2066 = !DILocation(line: 232, column: 5, scope: !2057)
!2067 = !DILocation(line: 234, column: 11, scope: !177)
!2068 = !DILocation(line: 234, column: 13, scope: !177)
!2069 = !DILocation(line: 234, column: 3, scope: !177)
!2070 = !DILocation(line: 235, column: 1, scope: !177)
!2071 = distinct !DISubprogram(name: "quotearg_alloc", scope: !124, file: !124, line: 788, type: !2072, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!28, !43, !146, !1007}
!2074 = !DILocalVariable(name: "arg", arg: 1, scope: !2071, file: !124, line: 788, type: !43)
!2075 = !DILocation(line: 788, column: 29, scope: !2071)
!2076 = !DILocalVariable(name: "argsize", arg: 2, scope: !2071, file: !124, line: 788, type: !146)
!2077 = !DILocation(line: 788, column: 41, scope: !2071)
!2078 = !DILocalVariable(name: "o", arg: 3, scope: !2071, file: !124, line: 789, type: !1007)
!2079 = !DILocation(line: 789, column: 47, scope: !2071)
!2080 = !DILocation(line: 791, column: 30, scope: !2071)
!2081 = !DILocation(line: 791, column: 35, scope: !2071)
!2082 = !DILocation(line: 791, column: 50, scope: !2071)
!2083 = !DILocation(line: 791, column: 10, scope: !2071)
!2084 = !DILocation(line: 791, column: 3, scope: !2071)
!2085 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !124, file: !124, line: 801, type: !2086, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!28, !43, !146, !250, !1007}
!2088 = !DILocalVariable(name: "arg", arg: 1, scope: !2085, file: !124, line: 801, type: !43)
!2089 = !DILocation(line: 801, column: 33, scope: !2085)
!2090 = !DILocalVariable(name: "argsize", arg: 2, scope: !2085, file: !124, line: 801, type: !146)
!2091 = !DILocation(line: 801, column: 45, scope: !2085)
!2092 = !DILocalVariable(name: "size", arg: 3, scope: !2085, file: !124, line: 801, type: !250)
!2093 = !DILocation(line: 801, column: 62, scope: !2085)
!2094 = !DILocalVariable(name: "o", arg: 4, scope: !2085, file: !124, line: 802, type: !1007)
!2095 = !DILocation(line: 802, column: 51, scope: !2085)
!2096 = !DILocalVariable(name: "p", scope: !2085, file: !124, line: 804, type: !1007)
!2097 = !DILocation(line: 804, column: 33, scope: !2085)
!2098 = !DILocation(line: 804, column: 37, scope: !2085)
!2099 = !DILocation(line: 804, column: 41, scope: !2085)
!2100 = !DILocalVariable(name: "saved_errno", scope: !2085, file: !124, line: 805, type: !31)
!2101 = !DILocation(line: 805, column: 7, scope: !2085)
!2102 = !DILocation(line: 805, column: 21, scope: !2085)
!2103 = !DILocalVariable(name: "flags", scope: !2085, file: !124, line: 807, type: !31)
!2104 = !DILocation(line: 807, column: 7, scope: !2085)
!2105 = !DILocation(line: 807, column: 15, scope: !2085)
!2106 = !DILocation(line: 807, column: 18, scope: !2085)
!2107 = !DILocation(line: 807, column: 27, scope: !2085)
!2108 = !DILocation(line: 807, column: 24, scope: !2085)
!2109 = !DILocalVariable(name: "bufsize", scope: !2085, file: !124, line: 808, type: !146)
!2110 = !DILocation(line: 808, column: 10, scope: !2085)
!2111 = !DILocation(line: 808, column: 55, scope: !2085)
!2112 = !DILocation(line: 808, column: 60, scope: !2085)
!2113 = !DILocation(line: 808, column: 69, scope: !2085)
!2114 = !DILocation(line: 808, column: 72, scope: !2085)
!2115 = !DILocation(line: 809, column: 46, scope: !2085)
!2116 = !DILocation(line: 809, column: 53, scope: !2085)
!2117 = !DILocation(line: 809, column: 56, scope: !2085)
!2118 = !DILocation(line: 810, column: 46, scope: !2085)
!2119 = !DILocation(line: 810, column: 49, scope: !2085)
!2120 = !DILocation(line: 811, column: 46, scope: !2085)
!2121 = !DILocation(line: 811, column: 49, scope: !2085)
!2122 = !DILocation(line: 808, column: 20, scope: !2085)
!2123 = !DILocation(line: 811, column: 62, scope: !2085)
!2124 = !DILocalVariable(name: "buf", scope: !2085, file: !124, line: 812, type: !28)
!2125 = !DILocation(line: 812, column: 9, scope: !2085)
!2126 = !DILocation(line: 812, column: 27, scope: !2085)
!2127 = !DILocation(line: 812, column: 15, scope: !2085)
!2128 = !DILocation(line: 813, column: 29, scope: !2085)
!2129 = !DILocation(line: 813, column: 34, scope: !2085)
!2130 = !DILocation(line: 813, column: 43, scope: !2085)
!2131 = !DILocation(line: 813, column: 48, scope: !2085)
!2132 = !DILocation(line: 813, column: 57, scope: !2085)
!2133 = !DILocation(line: 813, column: 60, scope: !2085)
!2134 = !DILocation(line: 813, column: 67, scope: !2085)
!2135 = !DILocation(line: 814, column: 29, scope: !2085)
!2136 = !DILocation(line: 814, column: 32, scope: !2085)
!2137 = !DILocation(line: 815, column: 29, scope: !2085)
!2138 = !DILocation(line: 815, column: 32, scope: !2085)
!2139 = !DILocation(line: 815, column: 44, scope: !2085)
!2140 = !DILocation(line: 815, column: 47, scope: !2085)
!2141 = !DILocation(line: 813, column: 3, scope: !2085)
!2142 = !DILocation(line: 816, column: 11, scope: !2085)
!2143 = !DILocation(line: 816, column: 3, scope: !2085)
!2144 = !DILocation(line: 816, column: 9, scope: !2085)
!2145 = !DILocation(line: 817, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2085, file: !124, line: 817, column: 7)
!2147 = !DILocation(line: 817, column: 7, scope: !2085)
!2148 = !DILocation(line: 818, column: 13, scope: !2146)
!2149 = !DILocation(line: 818, column: 21, scope: !2146)
!2150 = !DILocation(line: 818, column: 6, scope: !2146)
!2151 = !DILocation(line: 818, column: 11, scope: !2146)
!2152 = !DILocation(line: 818, column: 5, scope: !2146)
!2153 = !DILocation(line: 819, column: 10, scope: !2085)
!2154 = !DILocation(line: 819, column: 3, scope: !2085)
!2155 = distinct !DISubprogram(name: "quotearg_free", scope: !124, file: !124, line: 837, type: !102, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2156 = !DILocalVariable(name: "sv", scope: !2155, file: !124, line: 839, type: !185)
!2157 = !DILocation(line: 839, column: 19, scope: !2155)
!2158 = !DILocation(line: 839, column: 24, scope: !2155)
!2159 = !DILocalVariable(name: "i", scope: !2160, file: !124, line: 840, type: !31)
!2160 = distinct !DILexicalBlock(scope: !2155, file: !124, line: 840, column: 3)
!2161 = !DILocation(line: 840, column: 12, scope: !2160)
!2162 = !DILocation(line: 840, column: 8, scope: !2160)
!2163 = !DILocation(line: 840, column: 19, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !124, line: 840, column: 3)
!2165 = !DILocation(line: 840, column: 23, scope: !2164)
!2166 = !DILocation(line: 840, column: 21, scope: !2164)
!2167 = !DILocation(line: 840, column: 3, scope: !2160)
!2168 = !DILocation(line: 841, column: 11, scope: !2164)
!2169 = !DILocation(line: 841, column: 14, scope: !2164)
!2170 = !DILocation(line: 841, column: 17, scope: !2164)
!2171 = !DILocation(line: 841, column: 5, scope: !2164)
!2172 = !DILocation(line: 840, column: 32, scope: !2164)
!2173 = !DILocation(line: 840, column: 3, scope: !2164)
!2174 = distinct !{!2174, !2167, !2175, !398}
!2175 = !DILocation(line: 841, column: 20, scope: !2160)
!2176 = !DILocation(line: 842, column: 7, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2155, file: !124, line: 842, column: 7)
!2178 = !DILocation(line: 842, column: 13, scope: !2177)
!2179 = !DILocation(line: 842, column: 17, scope: !2177)
!2180 = !DILocation(line: 842, column: 7, scope: !2155)
!2181 = !DILocation(line: 844, column: 13, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2177, file: !124, line: 843, column: 5)
!2183 = !DILocation(line: 844, column: 19, scope: !2182)
!2184 = !DILocation(line: 844, column: 7, scope: !2182)
!2185 = !DILocation(line: 845, column: 21, scope: !2182)
!2186 = !DILocation(line: 846, column: 20, scope: !2182)
!2187 = !DILocation(line: 847, column: 5, scope: !2182)
!2188 = !DILocation(line: 848, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2155, file: !124, line: 848, column: 7)
!2190 = !DILocation(line: 848, column: 10, scope: !2189)
!2191 = !DILocation(line: 848, column: 7, scope: !2155)
!2192 = !DILocation(line: 850, column: 13, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2189, file: !124, line: 849, column: 5)
!2194 = !DILocation(line: 850, column: 7, scope: !2193)
!2195 = !DILocation(line: 851, column: 15, scope: !2193)
!2196 = !DILocation(line: 852, column: 5, scope: !2193)
!2197 = !DILocation(line: 853, column: 10, scope: !2155)
!2198 = !DILocation(line: 854, column: 1, scope: !2155)
!2199 = distinct !DISubprogram(name: "quotearg_n", scope: !124, file: !124, line: 919, type: !2200, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!28, !31, !43}
!2202 = !DILocalVariable(name: "n", arg: 1, scope: !2199, file: !124, line: 919, type: !31)
!2203 = !DILocation(line: 919, column: 17, scope: !2199)
!2204 = !DILocalVariable(name: "arg", arg: 2, scope: !2199, file: !124, line: 919, type: !43)
!2205 = !DILocation(line: 919, column: 32, scope: !2199)
!2206 = !DILocation(line: 921, column: 30, scope: !2199)
!2207 = !DILocation(line: 921, column: 33, scope: !2199)
!2208 = !DILocation(line: 921, column: 10, scope: !2199)
!2209 = !DILocation(line: 921, column: 3, scope: !2199)
!2210 = distinct !DISubprogram(name: "quotearg_n_options", scope: !124, file: !124, line: 866, type: !2211, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!28, !31, !43, !146, !1007}
!2213 = !DILocalVariable(name: "n", arg: 1, scope: !2210, file: !124, line: 866, type: !31)
!2214 = !DILocation(line: 866, column: 25, scope: !2210)
!2215 = !DILocalVariable(name: "arg", arg: 2, scope: !2210, file: !124, line: 866, type: !43)
!2216 = !DILocation(line: 866, column: 40, scope: !2210)
!2217 = !DILocalVariable(name: "argsize", arg: 3, scope: !2210, file: !124, line: 866, type: !146)
!2218 = !DILocation(line: 866, column: 52, scope: !2210)
!2219 = !DILocalVariable(name: "options", arg: 4, scope: !2210, file: !124, line: 867, type: !1007)
!2220 = !DILocation(line: 867, column: 51, scope: !2210)
!2221 = !DILocalVariable(name: "saved_errno", scope: !2210, file: !124, line: 869, type: !31)
!2222 = !DILocation(line: 869, column: 7, scope: !2210)
!2223 = !DILocation(line: 869, column: 21, scope: !2210)
!2224 = !DILocalVariable(name: "sv", scope: !2210, file: !124, line: 871, type: !185)
!2225 = !DILocation(line: 871, column: 19, scope: !2210)
!2226 = !DILocation(line: 871, column: 24, scope: !2210)
!2227 = !DILocalVariable(name: "nslots_max", scope: !2210, file: !124, line: 873, type: !31)
!2228 = !DILocation(line: 873, column: 7, scope: !2210)
!2229 = !DILocation(line: 874, column: 15, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2210, file: !124, line: 874, column: 7)
!2231 = !DILocation(line: 874, column: 12, scope: !2230)
!2232 = !DILocation(line: 874, column: 17, scope: !2230)
!2233 = !DILocation(line: 874, column: 20, scope: !2230)
!2234 = !DILocation(line: 874, column: 24, scope: !2230)
!2235 = !DILocation(line: 874, column: 22, scope: !2230)
!2236 = !DILocation(line: 874, column: 7, scope: !2210)
!2237 = !DILocation(line: 875, column: 5, scope: !2230)
!2238 = !DILocation(line: 877, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2210, file: !124, line: 877, column: 7)
!2240 = !DILocation(line: 877, column: 17, scope: !2239)
!2241 = !DILocation(line: 877, column: 14, scope: !2239)
!2242 = !DILocation(line: 877, column: 7, scope: !2210)
!2243 = !DILocalVariable(name: "preallocated", scope: !2244, file: !124, line: 879, type: !36)
!2244 = distinct !DILexicalBlock(scope: !2239, file: !124, line: 878, column: 5)
!2245 = !DILocation(line: 879, column: 12, scope: !2244)
!2246 = !DILocation(line: 879, column: 28, scope: !2244)
!2247 = !DILocation(line: 879, column: 31, scope: !2244)
!2248 = !DILocalVariable(name: "new_nslots", scope: !2244, file: !124, line: 880, type: !258)
!2249 = !DILocation(line: 880, column: 13, scope: !2244)
!2250 = !DILocation(line: 880, column: 26, scope: !2244)
!2251 = !DILocation(line: 882, column: 31, scope: !2244)
!2252 = !DILocation(line: 882, column: 53, scope: !2244)
!2253 = !DILocation(line: 883, column: 31, scope: !2244)
!2254 = !DILocation(line: 883, column: 35, scope: !2244)
!2255 = !DILocation(line: 883, column: 33, scope: !2244)
!2256 = !DILocation(line: 883, column: 42, scope: !2244)
!2257 = !DILocation(line: 883, column: 47, scope: !2244)
!2258 = !DILocation(line: 882, column: 22, scope: !2244)
!2259 = !DILocation(line: 882, column: 20, scope: !2244)
!2260 = !DILocation(line: 882, column: 15, scope: !2244)
!2261 = !DILocation(line: 884, column: 11, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2244, file: !124, line: 884, column: 11)
!2263 = !DILocation(line: 884, column: 11, scope: !2244)
!2264 = !DILocation(line: 885, column: 10, scope: !2262)
!2265 = !DILocation(line: 885, column: 15, scope: !2262)
!2266 = !DILocation(line: 885, column: 9, scope: !2262)
!2267 = !DILocation(line: 886, column: 15, scope: !2244)
!2268 = !DILocation(line: 886, column: 20, scope: !2244)
!2269 = !DILocation(line: 886, column: 18, scope: !2244)
!2270 = !DILocation(line: 886, column: 7, scope: !2244)
!2271 = !DILocation(line: 886, column: 32, scope: !2244)
!2272 = !DILocation(line: 886, column: 45, scope: !2244)
!2273 = !DILocation(line: 886, column: 43, scope: !2244)
!2274 = !DILocation(line: 886, column: 53, scope: !2244)
!2275 = !DILocation(line: 887, column: 16, scope: !2244)
!2276 = !DILocation(line: 887, column: 14, scope: !2244)
!2277 = !DILocation(line: 888, column: 5, scope: !2244)
!2278 = !DILocalVariable(name: "size", scope: !2279, file: !124, line: 891, type: !146)
!2279 = distinct !DILexicalBlock(scope: !2210, file: !124, line: 890, column: 3)
!2280 = !DILocation(line: 891, column: 12, scope: !2279)
!2281 = !DILocation(line: 891, column: 19, scope: !2279)
!2282 = !DILocation(line: 891, column: 22, scope: !2279)
!2283 = !DILocation(line: 891, column: 25, scope: !2279)
!2284 = !DILocalVariable(name: "val", scope: !2279, file: !124, line: 892, type: !28)
!2285 = !DILocation(line: 892, column: 11, scope: !2279)
!2286 = !DILocation(line: 892, column: 17, scope: !2279)
!2287 = !DILocation(line: 892, column: 20, scope: !2279)
!2288 = !DILocation(line: 892, column: 23, scope: !2279)
!2289 = !DILocalVariable(name: "flags", scope: !2279, file: !124, line: 894, type: !31)
!2290 = !DILocation(line: 894, column: 9, scope: !2279)
!2291 = !DILocation(line: 894, column: 17, scope: !2279)
!2292 = !DILocation(line: 894, column: 26, scope: !2279)
!2293 = !DILocation(line: 894, column: 32, scope: !2279)
!2294 = !DILocalVariable(name: "qsize", scope: !2279, file: !124, line: 895, type: !146)
!2295 = !DILocation(line: 895, column: 12, scope: !2279)
!2296 = !DILocation(line: 895, column: 46, scope: !2279)
!2297 = !DILocation(line: 895, column: 51, scope: !2279)
!2298 = !DILocation(line: 895, column: 57, scope: !2279)
!2299 = !DILocation(line: 895, column: 62, scope: !2279)
!2300 = !DILocation(line: 896, column: 46, scope: !2279)
!2301 = !DILocation(line: 896, column: 55, scope: !2279)
!2302 = !DILocation(line: 896, column: 62, scope: !2279)
!2303 = !DILocation(line: 897, column: 46, scope: !2279)
!2304 = !DILocation(line: 897, column: 55, scope: !2279)
!2305 = !DILocation(line: 898, column: 46, scope: !2279)
!2306 = !DILocation(line: 898, column: 55, scope: !2279)
!2307 = !DILocation(line: 899, column: 46, scope: !2279)
!2308 = !DILocation(line: 899, column: 55, scope: !2279)
!2309 = !DILocation(line: 895, column: 20, scope: !2279)
!2310 = !DILocation(line: 901, column: 9, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2279, file: !124, line: 901, column: 9)
!2312 = !DILocation(line: 901, column: 17, scope: !2311)
!2313 = !DILocation(line: 901, column: 14, scope: !2311)
!2314 = !DILocation(line: 901, column: 9, scope: !2279)
!2315 = !DILocation(line: 903, column: 29, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2311, file: !124, line: 902, column: 7)
!2317 = !DILocation(line: 903, column: 35, scope: !2316)
!2318 = !DILocation(line: 903, column: 27, scope: !2316)
!2319 = !DILocation(line: 903, column: 9, scope: !2316)
!2320 = !DILocation(line: 903, column: 12, scope: !2316)
!2321 = !DILocation(line: 903, column: 15, scope: !2316)
!2322 = !DILocation(line: 903, column: 20, scope: !2316)
!2323 = !DILocation(line: 904, column: 13, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2316, file: !124, line: 904, column: 13)
!2325 = !DILocation(line: 904, column: 17, scope: !2324)
!2326 = !DILocation(line: 904, column: 13, scope: !2316)
!2327 = !DILocation(line: 905, column: 17, scope: !2324)
!2328 = !DILocation(line: 905, column: 11, scope: !2324)
!2329 = !DILocation(line: 906, column: 39, scope: !2316)
!2330 = !DILocation(line: 906, column: 27, scope: !2316)
!2331 = !DILocation(line: 906, column: 25, scope: !2316)
!2332 = !DILocation(line: 906, column: 9, scope: !2316)
!2333 = !DILocation(line: 906, column: 12, scope: !2316)
!2334 = !DILocation(line: 906, column: 15, scope: !2316)
!2335 = !DILocation(line: 906, column: 19, scope: !2316)
!2336 = !DILocation(line: 907, column: 35, scope: !2316)
!2337 = !DILocation(line: 907, column: 40, scope: !2316)
!2338 = !DILocation(line: 907, column: 46, scope: !2316)
!2339 = !DILocation(line: 907, column: 51, scope: !2316)
!2340 = !DILocation(line: 907, column: 60, scope: !2316)
!2341 = !DILocation(line: 907, column: 69, scope: !2316)
!2342 = !DILocation(line: 908, column: 35, scope: !2316)
!2343 = !DILocation(line: 908, column: 42, scope: !2316)
!2344 = !DILocation(line: 908, column: 51, scope: !2316)
!2345 = !DILocation(line: 909, column: 35, scope: !2316)
!2346 = !DILocation(line: 909, column: 44, scope: !2316)
!2347 = !DILocation(line: 910, column: 35, scope: !2316)
!2348 = !DILocation(line: 910, column: 44, scope: !2316)
!2349 = !DILocation(line: 907, column: 9, scope: !2316)
!2350 = !DILocation(line: 911, column: 7, scope: !2316)
!2351 = !DILocation(line: 913, column: 13, scope: !2279)
!2352 = !DILocation(line: 913, column: 5, scope: !2279)
!2353 = !DILocation(line: 913, column: 11, scope: !2279)
!2354 = !DILocation(line: 914, column: 12, scope: !2279)
!2355 = !DILocation(line: 914, column: 5, scope: !2279)
!2356 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !124, file: !124, line: 925, type: !2357, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!28, !31, !43, !146}
!2359 = !DILocalVariable(name: "n", arg: 1, scope: !2356, file: !124, line: 925, type: !31)
!2360 = !DILocation(line: 925, column: 21, scope: !2356)
!2361 = !DILocalVariable(name: "arg", arg: 2, scope: !2356, file: !124, line: 925, type: !43)
!2362 = !DILocation(line: 925, column: 36, scope: !2356)
!2363 = !DILocalVariable(name: "argsize", arg: 3, scope: !2356, file: !124, line: 925, type: !146)
!2364 = !DILocation(line: 925, column: 48, scope: !2356)
!2365 = !DILocation(line: 927, column: 30, scope: !2356)
!2366 = !DILocation(line: 927, column: 33, scope: !2356)
!2367 = !DILocation(line: 927, column: 38, scope: !2356)
!2368 = !DILocation(line: 927, column: 10, scope: !2356)
!2369 = !DILocation(line: 927, column: 3, scope: !2356)
!2370 = distinct !DISubprogram(name: "quotearg", scope: !124, file: !124, line: 931, type: !2371, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!28, !43}
!2373 = !DILocalVariable(name: "arg", arg: 1, scope: !2370, file: !124, line: 931, type: !43)
!2374 = !DILocation(line: 931, column: 23, scope: !2370)
!2375 = !DILocation(line: 933, column: 25, scope: !2370)
!2376 = !DILocation(line: 933, column: 10, scope: !2370)
!2377 = !DILocation(line: 933, column: 3, scope: !2370)
!2378 = distinct !DISubprogram(name: "quotearg_mem", scope: !124, file: !124, line: 937, type: !2379, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!28, !43, !146}
!2381 = !DILocalVariable(name: "arg", arg: 1, scope: !2378, file: !124, line: 937, type: !43)
!2382 = !DILocation(line: 937, column: 27, scope: !2378)
!2383 = !DILocalVariable(name: "argsize", arg: 2, scope: !2378, file: !124, line: 937, type: !146)
!2384 = !DILocation(line: 937, column: 39, scope: !2378)
!2385 = !DILocation(line: 939, column: 29, scope: !2378)
!2386 = !DILocation(line: 939, column: 34, scope: !2378)
!2387 = !DILocation(line: 939, column: 10, scope: !2378)
!2388 = !DILocation(line: 939, column: 3, scope: !2378)
!2389 = distinct !DISubprogram(name: "quotearg_n_style", scope: !124, file: !124, line: 943, type: !2390, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!28, !31, !126, !43}
!2392 = !DILocalVariable(name: "n", arg: 1, scope: !2389, file: !124, line: 943, type: !31)
!2393 = !DILocation(line: 943, column: 23, scope: !2389)
!2394 = !DILocalVariable(name: "s", arg: 2, scope: !2389, file: !124, line: 943, type: !126)
!2395 = !DILocation(line: 943, column: 45, scope: !2389)
!2396 = !DILocalVariable(name: "arg", arg: 3, scope: !2389, file: !124, line: 943, type: !43)
!2397 = !DILocation(line: 943, column: 60, scope: !2389)
!2398 = !DILocalVariable(name: "o", scope: !2389, file: !124, line: 945, type: !1008)
!2399 = !DILocation(line: 945, column: 32, scope: !2389)
!2400 = !DILocation(line: 945, column: 64, scope: !2389)
!2401 = !DILocation(line: 945, column: 36, scope: !2389)
!2402 = !DILocation(line: 946, column: 30, scope: !2389)
!2403 = !DILocation(line: 946, column: 33, scope: !2389)
!2404 = !DILocation(line: 946, column: 10, scope: !2389)
!2405 = !DILocation(line: 946, column: 3, scope: !2389)
!2406 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !124, file: !124, line: 183, type: !2407, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!158, !126}
!2409 = !DILocalVariable(name: "style", arg: 1, scope: !2406, file: !124, line: 183, type: !126)
!2410 = !DILocation(line: 183, column: 48, scope: !2406)
!2411 = !DILocalVariable(name: "o", scope: !2406, file: !124, line: 185, type: !158)
!2412 = !DILocation(line: 185, column: 26, scope: !2406)
!2413 = !DILocation(line: 186, column: 7, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2406, file: !124, line: 186, column: 7)
!2415 = !DILocation(line: 186, column: 13, scope: !2414)
!2416 = !DILocation(line: 186, column: 7, scope: !2406)
!2417 = !DILocation(line: 187, column: 5, scope: !2414)
!2418 = !DILocation(line: 188, column: 13, scope: !2406)
!2419 = !DILocation(line: 188, column: 5, scope: !2406)
!2420 = !DILocation(line: 188, column: 11, scope: !2406)
!2421 = !DILocation(line: 189, column: 3, scope: !2406)
!2422 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !124, file: !124, line: 950, type: !2423, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!28, !31, !126, !43, !146}
!2425 = !DILocalVariable(name: "n", arg: 1, scope: !2422, file: !124, line: 950, type: !31)
!2426 = !DILocation(line: 950, column: 27, scope: !2422)
!2427 = !DILocalVariable(name: "s", arg: 2, scope: !2422, file: !124, line: 950, type: !126)
!2428 = !DILocation(line: 950, column: 49, scope: !2422)
!2429 = !DILocalVariable(name: "arg", arg: 3, scope: !2422, file: !124, line: 951, type: !43)
!2430 = !DILocation(line: 951, column: 35, scope: !2422)
!2431 = !DILocalVariable(name: "argsize", arg: 4, scope: !2422, file: !124, line: 951, type: !146)
!2432 = !DILocation(line: 951, column: 47, scope: !2422)
!2433 = !DILocalVariable(name: "o", scope: !2422, file: !124, line: 953, type: !1008)
!2434 = !DILocation(line: 953, column: 32, scope: !2422)
!2435 = !DILocation(line: 953, column: 64, scope: !2422)
!2436 = !DILocation(line: 953, column: 36, scope: !2422)
!2437 = !DILocation(line: 954, column: 30, scope: !2422)
!2438 = !DILocation(line: 954, column: 33, scope: !2422)
!2439 = !DILocation(line: 954, column: 38, scope: !2422)
!2440 = !DILocation(line: 954, column: 10, scope: !2422)
!2441 = !DILocation(line: 954, column: 3, scope: !2422)
!2442 = distinct !DISubprogram(name: "quotearg_style", scope: !124, file: !124, line: 958, type: !2443, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!28, !126, !43}
!2445 = !DILocalVariable(name: "s", arg: 1, scope: !2442, file: !124, line: 958, type: !126)
!2446 = !DILocation(line: 958, column: 36, scope: !2442)
!2447 = !DILocalVariable(name: "arg", arg: 2, scope: !2442, file: !124, line: 958, type: !43)
!2448 = !DILocation(line: 958, column: 51, scope: !2442)
!2449 = !DILocation(line: 960, column: 31, scope: !2442)
!2450 = !DILocation(line: 960, column: 34, scope: !2442)
!2451 = !DILocation(line: 960, column: 10, scope: !2442)
!2452 = !DILocation(line: 960, column: 3, scope: !2442)
!2453 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !124, file: !124, line: 964, type: !2454, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!28, !126, !43, !146}
!2456 = !DILocalVariable(name: "s", arg: 1, scope: !2453, file: !124, line: 964, type: !126)
!2457 = !DILocation(line: 964, column: 40, scope: !2453)
!2458 = !DILocalVariable(name: "arg", arg: 2, scope: !2453, file: !124, line: 964, type: !43)
!2459 = !DILocation(line: 964, column: 55, scope: !2453)
!2460 = !DILocalVariable(name: "argsize", arg: 3, scope: !2453, file: !124, line: 964, type: !146)
!2461 = !DILocation(line: 964, column: 67, scope: !2453)
!2462 = !DILocation(line: 966, column: 35, scope: !2453)
!2463 = !DILocation(line: 966, column: 38, scope: !2453)
!2464 = !DILocation(line: 966, column: 43, scope: !2453)
!2465 = !DILocation(line: 966, column: 10, scope: !2453)
!2466 = !DILocation(line: 966, column: 3, scope: !2453)
!2467 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !124, file: !124, line: 970, type: !2468, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!28, !43, !146, !29}
!2470 = !DILocalVariable(name: "arg", arg: 1, scope: !2467, file: !124, line: 970, type: !43)
!2471 = !DILocation(line: 970, column: 32, scope: !2467)
!2472 = !DILocalVariable(name: "argsize", arg: 2, scope: !2467, file: !124, line: 970, type: !146)
!2473 = !DILocation(line: 970, column: 44, scope: !2467)
!2474 = !DILocalVariable(name: "ch", arg: 3, scope: !2467, file: !124, line: 970, type: !29)
!2475 = !DILocation(line: 970, column: 58, scope: !2467)
!2476 = !DILocalVariable(name: "options", scope: !2467, file: !124, line: 972, type: !158)
!2477 = !DILocation(line: 972, column: 26, scope: !2467)
!2478 = !DILocation(line: 973, column: 13, scope: !2467)
!2479 = !DILocation(line: 974, column: 31, scope: !2467)
!2480 = !DILocation(line: 974, column: 3, scope: !2467)
!2481 = !DILocation(line: 975, column: 33, scope: !2467)
!2482 = !DILocation(line: 975, column: 38, scope: !2467)
!2483 = !DILocation(line: 975, column: 10, scope: !2467)
!2484 = !DILocation(line: 975, column: 3, scope: !2467)
!2485 = distinct !DISubprogram(name: "quotearg_char", scope: !124, file: !124, line: 979, type: !2486, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!28, !43, !29}
!2488 = !DILocalVariable(name: "arg", arg: 1, scope: !2485, file: !124, line: 979, type: !43)
!2489 = !DILocation(line: 979, column: 28, scope: !2485)
!2490 = !DILocalVariable(name: "ch", arg: 2, scope: !2485, file: !124, line: 979, type: !29)
!2491 = !DILocation(line: 979, column: 38, scope: !2485)
!2492 = !DILocation(line: 981, column: 29, scope: !2485)
!2493 = !DILocation(line: 981, column: 44, scope: !2485)
!2494 = !DILocation(line: 981, column: 10, scope: !2485)
!2495 = !DILocation(line: 981, column: 3, scope: !2485)
!2496 = distinct !DISubprogram(name: "quotearg_colon", scope: !124, file: !124, line: 985, type: !2371, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2497 = !DILocalVariable(name: "arg", arg: 1, scope: !2496, file: !124, line: 985, type: !43)
!2498 = !DILocation(line: 985, column: 29, scope: !2496)
!2499 = !DILocation(line: 987, column: 25, scope: !2496)
!2500 = !DILocation(line: 987, column: 10, scope: !2496)
!2501 = !DILocation(line: 987, column: 3, scope: !2496)
!2502 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !124, file: !124, line: 991, type: !2379, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2503 = !DILocalVariable(name: "arg", arg: 1, scope: !2502, file: !124, line: 991, type: !43)
!2504 = !DILocation(line: 991, column: 33, scope: !2502)
!2505 = !DILocalVariable(name: "argsize", arg: 2, scope: !2502, file: !124, line: 991, type: !146)
!2506 = !DILocation(line: 991, column: 45, scope: !2502)
!2507 = !DILocation(line: 993, column: 29, scope: !2502)
!2508 = !DILocation(line: 993, column: 34, scope: !2502)
!2509 = !DILocation(line: 993, column: 10, scope: !2502)
!2510 = !DILocation(line: 993, column: 3, scope: !2502)
!2511 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !124, file: !124, line: 997, type: !2390, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2512 = !DILocalVariable(name: "n", arg: 1, scope: !2511, file: !124, line: 997, type: !31)
!2513 = !DILocation(line: 997, column: 29, scope: !2511)
!2514 = !DILocalVariable(name: "s", arg: 2, scope: !2511, file: !124, line: 997, type: !126)
!2515 = !DILocation(line: 997, column: 51, scope: !2511)
!2516 = !DILocalVariable(name: "arg", arg: 3, scope: !2511, file: !124, line: 997, type: !43)
!2517 = !DILocation(line: 997, column: 66, scope: !2511)
!2518 = !DILocalVariable(name: "options", scope: !2511, file: !124, line: 999, type: !158)
!2519 = !DILocation(line: 999, column: 26, scope: !2511)
!2520 = !DILocation(line: 1000, column: 41, scope: !2511)
!2521 = !DILocation(line: 1000, column: 13, scope: !2511)
!2522 = !DILocation(line: 1001, column: 3, scope: !2511)
!2523 = !DILocation(line: 1002, column: 30, scope: !2511)
!2524 = !DILocation(line: 1002, column: 33, scope: !2511)
!2525 = !DILocation(line: 1002, column: 10, scope: !2511)
!2526 = !DILocation(line: 1002, column: 3, scope: !2511)
!2527 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !124, file: !124, line: 1006, type: !2528, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!28, !31, !43, !43, !43}
!2530 = !DILocalVariable(name: "n", arg: 1, scope: !2527, file: !124, line: 1006, type: !31)
!2531 = !DILocation(line: 1006, column: 24, scope: !2527)
!2532 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2527, file: !124, line: 1006, type: !43)
!2533 = !DILocation(line: 1006, column: 39, scope: !2527)
!2534 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2527, file: !124, line: 1007, type: !43)
!2535 = !DILocation(line: 1007, column: 32, scope: !2527)
!2536 = !DILocalVariable(name: "arg", arg: 4, scope: !2527, file: !124, line: 1007, type: !43)
!2537 = !DILocation(line: 1007, column: 57, scope: !2527)
!2538 = !DILocation(line: 1009, column: 33, scope: !2527)
!2539 = !DILocation(line: 1009, column: 36, scope: !2527)
!2540 = !DILocation(line: 1009, column: 48, scope: !2527)
!2541 = !DILocation(line: 1009, column: 61, scope: !2527)
!2542 = !DILocation(line: 1009, column: 10, scope: !2527)
!2543 = !DILocation(line: 1009, column: 3, scope: !2527)
!2544 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !124, file: !124, line: 1014, type: !2545, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!28, !31, !43, !43, !43, !146}
!2547 = !DILocalVariable(name: "n", arg: 1, scope: !2544, file: !124, line: 1014, type: !31)
!2548 = !DILocation(line: 1014, column: 28, scope: !2544)
!2549 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2544, file: !124, line: 1014, type: !43)
!2550 = !DILocation(line: 1014, column: 43, scope: !2544)
!2551 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2544, file: !124, line: 1015, type: !43)
!2552 = !DILocation(line: 1015, column: 36, scope: !2544)
!2553 = !DILocalVariable(name: "arg", arg: 4, scope: !2544, file: !124, line: 1016, type: !43)
!2554 = !DILocation(line: 1016, column: 36, scope: !2544)
!2555 = !DILocalVariable(name: "argsize", arg: 5, scope: !2544, file: !124, line: 1016, type: !146)
!2556 = !DILocation(line: 1016, column: 48, scope: !2544)
!2557 = !DILocalVariable(name: "o", scope: !2544, file: !124, line: 1018, type: !158)
!2558 = !DILocation(line: 1018, column: 26, scope: !2544)
!2559 = !DILocation(line: 1018, column: 30, scope: !2544)
!2560 = !DILocation(line: 1019, column: 27, scope: !2544)
!2561 = !DILocation(line: 1019, column: 39, scope: !2544)
!2562 = !DILocation(line: 1019, column: 3, scope: !2544)
!2563 = !DILocation(line: 1020, column: 30, scope: !2544)
!2564 = !DILocation(line: 1020, column: 33, scope: !2544)
!2565 = !DILocation(line: 1020, column: 38, scope: !2544)
!2566 = !DILocation(line: 1020, column: 10, scope: !2544)
!2567 = !DILocation(line: 1020, column: 3, scope: !2544)
!2568 = distinct !DISubprogram(name: "quotearg_custom", scope: !124, file: !124, line: 1024, type: !2569, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!28, !43, !43, !43}
!2571 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2568, file: !124, line: 1024, type: !43)
!2572 = !DILocation(line: 1024, column: 30, scope: !2568)
!2573 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2568, file: !124, line: 1024, type: !43)
!2574 = !DILocation(line: 1024, column: 54, scope: !2568)
!2575 = !DILocalVariable(name: "arg", arg: 3, scope: !2568, file: !124, line: 1025, type: !43)
!2576 = !DILocation(line: 1025, column: 30, scope: !2568)
!2577 = !DILocation(line: 1027, column: 32, scope: !2568)
!2578 = !DILocation(line: 1027, column: 44, scope: !2568)
!2579 = !DILocation(line: 1027, column: 57, scope: !2568)
!2580 = !DILocation(line: 1027, column: 10, scope: !2568)
!2581 = !DILocation(line: 1027, column: 3, scope: !2568)
!2582 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !124, file: !124, line: 1031, type: !2583, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!28, !43, !43, !43, !146}
!2585 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2582, file: !124, line: 1031, type: !43)
!2586 = !DILocation(line: 1031, column: 34, scope: !2582)
!2587 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2582, file: !124, line: 1031, type: !43)
!2588 = !DILocation(line: 1031, column: 58, scope: !2582)
!2589 = !DILocalVariable(name: "arg", arg: 3, scope: !2582, file: !124, line: 1032, type: !43)
!2590 = !DILocation(line: 1032, column: 34, scope: !2582)
!2591 = !DILocalVariable(name: "argsize", arg: 4, scope: !2582, file: !124, line: 1032, type: !146)
!2592 = !DILocation(line: 1032, column: 46, scope: !2582)
!2593 = !DILocation(line: 1034, column: 36, scope: !2582)
!2594 = !DILocation(line: 1034, column: 48, scope: !2582)
!2595 = !DILocation(line: 1034, column: 61, scope: !2582)
!2596 = !DILocation(line: 1035, column: 33, scope: !2582)
!2597 = !DILocation(line: 1034, column: 10, scope: !2582)
!2598 = !DILocation(line: 1034, column: 3, scope: !2582)
!2599 = distinct !DISubprogram(name: "quote_n_mem", scope: !124, file: !124, line: 1049, type: !2600, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!43, !31, !43, !146}
!2602 = !DILocalVariable(name: "n", arg: 1, scope: !2599, file: !124, line: 1049, type: !31)
!2603 = !DILocation(line: 1049, column: 18, scope: !2599)
!2604 = !DILocalVariable(name: "arg", arg: 2, scope: !2599, file: !124, line: 1049, type: !43)
!2605 = !DILocation(line: 1049, column: 33, scope: !2599)
!2606 = !DILocalVariable(name: "argsize", arg: 3, scope: !2599, file: !124, line: 1049, type: !146)
!2607 = !DILocation(line: 1049, column: 45, scope: !2599)
!2608 = !DILocation(line: 1051, column: 30, scope: !2599)
!2609 = !DILocation(line: 1051, column: 33, scope: !2599)
!2610 = !DILocation(line: 1051, column: 38, scope: !2599)
!2611 = !DILocation(line: 1051, column: 10, scope: !2599)
!2612 = !DILocation(line: 1051, column: 3, scope: !2599)
!2613 = distinct !DISubprogram(name: "quote_mem", scope: !124, file: !124, line: 1055, type: !2614, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!43, !43, !146}
!2616 = !DILocalVariable(name: "arg", arg: 1, scope: !2613, file: !124, line: 1055, type: !43)
!2617 = !DILocation(line: 1055, column: 24, scope: !2613)
!2618 = !DILocalVariable(name: "argsize", arg: 2, scope: !2613, file: !124, line: 1055, type: !146)
!2619 = !DILocation(line: 1055, column: 36, scope: !2613)
!2620 = !DILocation(line: 1057, column: 26, scope: !2613)
!2621 = !DILocation(line: 1057, column: 31, scope: !2613)
!2622 = !DILocation(line: 1057, column: 10, scope: !2613)
!2623 = !DILocation(line: 1057, column: 3, scope: !2613)
!2624 = distinct !DISubprogram(name: "quote_n", scope: !124, file: !124, line: 1061, type: !2625, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!43, !31, !43}
!2627 = !DILocalVariable(name: "n", arg: 1, scope: !2624, file: !124, line: 1061, type: !31)
!2628 = !DILocation(line: 1061, column: 14, scope: !2624)
!2629 = !DILocalVariable(name: "arg", arg: 2, scope: !2624, file: !124, line: 1061, type: !43)
!2630 = !DILocation(line: 1061, column: 29, scope: !2624)
!2631 = !DILocation(line: 1063, column: 23, scope: !2624)
!2632 = !DILocation(line: 1063, column: 26, scope: !2624)
!2633 = !DILocation(line: 1063, column: 10, scope: !2624)
!2634 = !DILocation(line: 1063, column: 3, scope: !2624)
!2635 = distinct !DISubprogram(name: "quote", scope: !124, file: !124, line: 1067, type: !2636, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !45)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!43, !43}
!2638 = !DILocalVariable(name: "arg", arg: 1, scope: !2635, file: !124, line: 1067, type: !43)
!2639 = !DILocation(line: 1067, column: 20, scope: !2635)
!2640 = !DILocation(line: 1069, column: 22, scope: !2635)
!2641 = !DILocation(line: 1069, column: 10, scope: !2635)
!2642 = !DILocation(line: 1069, column: 3, scope: !2635)
!2643 = distinct !DISubprogram(name: "streq", scope: !2644, file: !2644, line: 1359, type: !2645, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !235, retainedNodes: !45)
!2644 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!36, !43, !43}
!2647 = !DILocalVariable(name: "__s1", arg: 1, scope: !2643, file: !2644, line: 1359, type: !43)
!2648 = !DILocation(line: 1359, column: 20, scope: !2643)
!2649 = !DILocalVariable(name: "__s2", arg: 2, scope: !2643, file: !2644, line: 1359, type: !43)
!2650 = !DILocation(line: 1359, column: 38, scope: !2643)
!2651 = !DILocation(line: 1361, column: 19, scope: !2643)
!2652 = !DILocation(line: 1361, column: 25, scope: !2643)
!2653 = !DILocation(line: 1361, column: 11, scope: !2643)
!2654 = !DILocation(line: 1361, column: 10, scope: !2643)
!2655 = !DILocation(line: 1361, column: 3, scope: !2643)
!2656 = distinct !DISubprogram(name: "version_etc_arn", scope: !238, file: !238, line: 61, type: !2657, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !237, retainedNodes: !45)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{null, !2659, !43, !43, !43, !2712, !146}
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2661, line: 7, baseType: !2662)
!2661 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2663, line: 49, size: 1728, elements: !2664)
!2663 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2664 = !{!2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2680, !2682, !2683, !2684, !2686, !2687, !2689, !2693, !2696, !2698, !2701, !2704, !2705, !2706, !2707, !2708}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2662, file: !2663, line: 51, baseType: !31, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2662, file: !2663, line: 54, baseType: !28, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2662, file: !2663, line: 55, baseType: !28, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2662, file: !2663, line: 56, baseType: !28, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2662, file: !2663, line: 57, baseType: !28, size: 64, offset: 256)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2662, file: !2663, line: 58, baseType: !28, size: 64, offset: 320)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2662, file: !2663, line: 59, baseType: !28, size: 64, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2662, file: !2663, line: 60, baseType: !28, size: 64, offset: 448)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2662, file: !2663, line: 61, baseType: !28, size: 64, offset: 512)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2662, file: !2663, line: 64, baseType: !28, size: 64, offset: 576)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2662, file: !2663, line: 65, baseType: !28, size: 64, offset: 640)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2662, file: !2663, line: 66, baseType: !28, size: 64, offset: 704)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2662, file: !2663, line: 68, baseType: !2678, size: 64, offset: 768)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2663, line: 36, flags: DIFlagFwdDecl)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2662, file: !2663, line: 70, baseType: !2681, size: 64, offset: 832)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2662, file: !2663, line: 72, baseType: !31, size: 32, offset: 896)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2662, file: !2663, line: 73, baseType: !31, size: 32, offset: 928)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2662, file: !2663, line: 74, baseType: !2685, size: 64, offset: 960)
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !957, line: 152, baseType: !261)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2662, file: !2663, line: 77, baseType: !32, size: 16, offset: 1024)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2662, file: !2663, line: 78, baseType: !2688, size: 8, offset: 1040)
!2688 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2662, file: !2663, line: 79, baseType: !2690, size: 8, offset: 1048)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, elements: !2691)
!2691 = !{!2692}
!2692 = !DISubrange(count: 1)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2662, file: !2663, line: 81, baseType: !2694, size: 64, offset: 1088)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2663, line: 43, baseType: null)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2662, file: !2663, line: 89, baseType: !2697, size: 64, offset: 1152)
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !957, line: 153, baseType: !261)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2662, file: !2663, line: 91, baseType: !2699, size: 64, offset: 1216)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2663, line: 37, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2662, file: !2663, line: 92, baseType: !2702, size: 64, offset: 1280)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2663, line: 38, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2662, file: !2663, line: 93, baseType: !2681, size: 64, offset: 1344)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2662, file: !2663, line: 94, baseType: !30, size: 64, offset: 1408)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2662, file: !2663, line: 95, baseType: !146, size: 64, offset: 1472)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2662, file: !2663, line: 96, baseType: !31, size: 32, offset: 1536)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2662, file: !2663, line: 98, baseType: !2709, size: 160, offset: 1568)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 160, elements: !2710)
!2710 = !{!2711}
!2711 = !DISubrange(count: 20)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!2713 = !DILocalVariable(name: "stream", arg: 1, scope: !2656, file: !238, line: 61, type: !2659)
!2714 = !DILocation(line: 61, column: 24, scope: !2656)
!2715 = !DILocalVariable(name: "command_name", arg: 2, scope: !2656, file: !238, line: 62, type: !43)
!2716 = !DILocation(line: 62, column: 30, scope: !2656)
!2717 = !DILocalVariable(name: "package", arg: 3, scope: !2656, file: !238, line: 62, type: !43)
!2718 = !DILocation(line: 62, column: 56, scope: !2656)
!2719 = !DILocalVariable(name: "version", arg: 4, scope: !2656, file: !238, line: 63, type: !43)
!2720 = !DILocation(line: 63, column: 30, scope: !2656)
!2721 = !DILocalVariable(name: "authors", arg: 5, scope: !2656, file: !238, line: 64, type: !2712)
!2722 = !DILocation(line: 64, column: 39, scope: !2656)
!2723 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2656, file: !238, line: 64, type: !146)
!2724 = !DILocation(line: 64, column: 55, scope: !2656)
!2725 = !DILocation(line: 66, column: 7, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2656, file: !238, line: 66, column: 7)
!2727 = !DILocation(line: 66, column: 7, scope: !2656)
!2728 = !DILocation(line: 67, column: 14, scope: !2726)
!2729 = !DILocation(line: 67, column: 38, scope: !2726)
!2730 = !DILocation(line: 67, column: 52, scope: !2726)
!2731 = !DILocation(line: 67, column: 61, scope: !2726)
!2732 = !DILocation(line: 67, column: 5, scope: !2726)
!2733 = !DILocation(line: 69, column: 14, scope: !2726)
!2734 = !DILocation(line: 69, column: 33, scope: !2726)
!2735 = !DILocation(line: 69, column: 42, scope: !2726)
!2736 = !DILocation(line: 69, column: 5, scope: !2726)
!2737 = !DILocation(line: 83, column: 12, scope: !2656)
!2738 = !DILocation(line: 83, column: 43, scope: !2656)
!2739 = !DILocation(line: 83, column: 3, scope: !2656)
!2740 = !DILocation(line: 85, column: 3, scope: !2656)
!2741 = !DILocation(line: 88, column: 12, scope: !2656)
!2742 = !DILocation(line: 88, column: 20, scope: !2656)
!2743 = !DILocation(line: 88, column: 3, scope: !2656)
!2744 = !DILocation(line: 95, column: 3, scope: !2656)
!2745 = !DILocation(line: 97, column: 11, scope: !2656)
!2746 = !DILocation(line: 97, column: 3, scope: !2656)
!2747 = !DILocation(line: 102, column: 7, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2656, file: !238, line: 98, column: 5)
!2749 = !DILocation(line: 105, column: 16, scope: !2748)
!2750 = !DILocation(line: 105, column: 24, scope: !2748)
!2751 = !DILocation(line: 105, column: 47, scope: !2748)
!2752 = !DILocation(line: 105, column: 7, scope: !2748)
!2753 = !DILocation(line: 106, column: 7, scope: !2748)
!2754 = !DILocation(line: 109, column: 16, scope: !2748)
!2755 = !DILocation(line: 109, column: 24, scope: !2748)
!2756 = !DILocation(line: 109, column: 54, scope: !2748)
!2757 = !DILocation(line: 109, column: 66, scope: !2748)
!2758 = !DILocation(line: 109, column: 7, scope: !2748)
!2759 = !DILocation(line: 110, column: 7, scope: !2748)
!2760 = !DILocation(line: 113, column: 16, scope: !2748)
!2761 = !DILocation(line: 113, column: 24, scope: !2748)
!2762 = !DILocation(line: 114, column: 16, scope: !2748)
!2763 = !DILocation(line: 114, column: 28, scope: !2748)
!2764 = !DILocation(line: 114, column: 40, scope: !2748)
!2765 = !DILocation(line: 113, column: 7, scope: !2748)
!2766 = !DILocation(line: 115, column: 7, scope: !2748)
!2767 = !DILocation(line: 120, column: 16, scope: !2748)
!2768 = !DILocation(line: 120, column: 24, scope: !2748)
!2769 = !DILocation(line: 121, column: 16, scope: !2748)
!2770 = !DILocation(line: 121, column: 28, scope: !2748)
!2771 = !DILocation(line: 121, column: 40, scope: !2748)
!2772 = !DILocation(line: 121, column: 52, scope: !2748)
!2773 = !DILocation(line: 120, column: 7, scope: !2748)
!2774 = !DILocation(line: 122, column: 7, scope: !2748)
!2775 = !DILocation(line: 127, column: 16, scope: !2748)
!2776 = !DILocation(line: 127, column: 24, scope: !2748)
!2777 = !DILocation(line: 128, column: 16, scope: !2748)
!2778 = !DILocation(line: 128, column: 28, scope: !2748)
!2779 = !DILocation(line: 128, column: 40, scope: !2748)
!2780 = !DILocation(line: 128, column: 52, scope: !2748)
!2781 = !DILocation(line: 128, column: 64, scope: !2748)
!2782 = !DILocation(line: 127, column: 7, scope: !2748)
!2783 = !DILocation(line: 129, column: 7, scope: !2748)
!2784 = !DILocation(line: 134, column: 16, scope: !2748)
!2785 = !DILocation(line: 134, column: 24, scope: !2748)
!2786 = !DILocation(line: 135, column: 16, scope: !2748)
!2787 = !DILocation(line: 135, column: 28, scope: !2748)
!2788 = !DILocation(line: 135, column: 40, scope: !2748)
!2789 = !DILocation(line: 135, column: 52, scope: !2748)
!2790 = !DILocation(line: 135, column: 64, scope: !2748)
!2791 = !DILocation(line: 136, column: 16, scope: !2748)
!2792 = !DILocation(line: 134, column: 7, scope: !2748)
!2793 = !DILocation(line: 137, column: 7, scope: !2748)
!2794 = !DILocation(line: 142, column: 16, scope: !2748)
!2795 = !DILocation(line: 142, column: 24, scope: !2748)
!2796 = !DILocation(line: 143, column: 16, scope: !2748)
!2797 = !DILocation(line: 143, column: 28, scope: !2748)
!2798 = !DILocation(line: 143, column: 40, scope: !2748)
!2799 = !DILocation(line: 143, column: 52, scope: !2748)
!2800 = !DILocation(line: 143, column: 64, scope: !2748)
!2801 = !DILocation(line: 144, column: 16, scope: !2748)
!2802 = !DILocation(line: 144, column: 28, scope: !2748)
!2803 = !DILocation(line: 142, column: 7, scope: !2748)
!2804 = !DILocation(line: 145, column: 7, scope: !2748)
!2805 = !DILocation(line: 150, column: 16, scope: !2748)
!2806 = !DILocation(line: 150, column: 24, scope: !2748)
!2807 = !DILocation(line: 152, column: 17, scope: !2748)
!2808 = !DILocation(line: 152, column: 29, scope: !2748)
!2809 = !DILocation(line: 152, column: 41, scope: !2748)
!2810 = !DILocation(line: 152, column: 53, scope: !2748)
!2811 = !DILocation(line: 152, column: 65, scope: !2748)
!2812 = !DILocation(line: 153, column: 17, scope: !2748)
!2813 = !DILocation(line: 153, column: 29, scope: !2748)
!2814 = !DILocation(line: 153, column: 41, scope: !2748)
!2815 = !DILocation(line: 150, column: 7, scope: !2748)
!2816 = !DILocation(line: 154, column: 7, scope: !2748)
!2817 = !DILocation(line: 159, column: 16, scope: !2748)
!2818 = !DILocation(line: 159, column: 24, scope: !2748)
!2819 = !DILocation(line: 161, column: 16, scope: !2748)
!2820 = !DILocation(line: 161, column: 28, scope: !2748)
!2821 = !DILocation(line: 161, column: 40, scope: !2748)
!2822 = !DILocation(line: 161, column: 52, scope: !2748)
!2823 = !DILocation(line: 161, column: 64, scope: !2748)
!2824 = !DILocation(line: 162, column: 16, scope: !2748)
!2825 = !DILocation(line: 162, column: 28, scope: !2748)
!2826 = !DILocation(line: 162, column: 40, scope: !2748)
!2827 = !DILocation(line: 162, column: 52, scope: !2748)
!2828 = !DILocation(line: 159, column: 7, scope: !2748)
!2829 = !DILocation(line: 163, column: 7, scope: !2748)
!2830 = !DILocation(line: 170, column: 16, scope: !2748)
!2831 = !DILocation(line: 170, column: 24, scope: !2748)
!2832 = !DILocation(line: 172, column: 17, scope: !2748)
!2833 = !DILocation(line: 172, column: 29, scope: !2748)
!2834 = !DILocation(line: 172, column: 41, scope: !2748)
!2835 = !DILocation(line: 172, column: 53, scope: !2748)
!2836 = !DILocation(line: 172, column: 65, scope: !2748)
!2837 = !DILocation(line: 173, column: 17, scope: !2748)
!2838 = !DILocation(line: 173, column: 29, scope: !2748)
!2839 = !DILocation(line: 173, column: 41, scope: !2748)
!2840 = !DILocation(line: 173, column: 53, scope: !2748)
!2841 = !DILocation(line: 170, column: 7, scope: !2748)
!2842 = !DILocation(line: 174, column: 7, scope: !2748)
!2843 = !DILocation(line: 176, column: 1, scope: !2656)
!2844 = distinct !DISubprogram(name: "version_etc_ar", scope: !238, file: !238, line: 183, type: !2845, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !237, retainedNodes: !45)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{null, !2659, !43, !43, !43, !2712}
!2847 = !DILocalVariable(name: "stream", arg: 1, scope: !2844, file: !238, line: 183, type: !2659)
!2848 = !DILocation(line: 183, column: 23, scope: !2844)
!2849 = !DILocalVariable(name: "command_name", arg: 2, scope: !2844, file: !238, line: 184, type: !43)
!2850 = !DILocation(line: 184, column: 29, scope: !2844)
!2851 = !DILocalVariable(name: "package", arg: 3, scope: !2844, file: !238, line: 184, type: !43)
!2852 = !DILocation(line: 184, column: 55, scope: !2844)
!2853 = !DILocalVariable(name: "version", arg: 4, scope: !2844, file: !238, line: 185, type: !43)
!2854 = !DILocation(line: 185, column: 29, scope: !2844)
!2855 = !DILocalVariable(name: "authors", arg: 5, scope: !2844, file: !238, line: 185, type: !2712)
!2856 = !DILocation(line: 185, column: 59, scope: !2844)
!2857 = !DILocalVariable(name: "n_authors", scope: !2844, file: !238, line: 187, type: !146)
!2858 = !DILocation(line: 187, column: 10, scope: !2844)
!2859 = !DILocation(line: 189, column: 18, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2844, file: !238, line: 189, column: 3)
!2861 = !DILocation(line: 189, column: 8, scope: !2860)
!2862 = !DILocation(line: 189, column: 23, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2860, file: !238, line: 189, column: 3)
!2864 = !DILocation(line: 189, column: 31, scope: !2863)
!2865 = !DILocation(line: 189, column: 3, scope: !2860)
!2866 = !DILocation(line: 189, column: 52, scope: !2863)
!2867 = !DILocation(line: 189, column: 3, scope: !2863)
!2868 = distinct !{!2868, !2865, !2869, !398}
!2869 = !DILocation(line: 190, column: 5, scope: !2860)
!2870 = !DILocation(line: 191, column: 20, scope: !2844)
!2871 = !DILocation(line: 191, column: 28, scope: !2844)
!2872 = !DILocation(line: 191, column: 42, scope: !2844)
!2873 = !DILocation(line: 191, column: 51, scope: !2844)
!2874 = !DILocation(line: 191, column: 60, scope: !2844)
!2875 = !DILocation(line: 191, column: 69, scope: !2844)
!2876 = !DILocation(line: 191, column: 3, scope: !2844)
!2877 = !DILocation(line: 192, column: 1, scope: !2844)
!2878 = distinct !DISubprogram(name: "version_etc_va", scope: !238, file: !238, line: 199, type: !2879, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !237, retainedNodes: !45)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{null, !2659, !43, !43, !43, !2881}
!2881 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !82, line: 52, baseType: !2882)
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !84, line: 32, baseType: !2883)
!2883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2884, baseType: !2885)
!2884 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !88, size: 256, elements: !2886)
!2886 = !{!2887, !2888, !2889, !2890, !2891}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2885, file: !2884, line: 192, baseType: !30, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2885, file: !2884, line: 192, baseType: !30, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2885, file: !2884, line: 192, baseType: !30, size: 64, offset: 128)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2885, file: !2884, line: 192, baseType: !31, size: 32, offset: 192)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2885, file: !2884, line: 192, baseType: !31, size: 32, offset: 224)
!2892 = !DILocalVariable(name: "stream", arg: 1, scope: !2878, file: !238, line: 199, type: !2659)
!2893 = !DILocation(line: 199, column: 23, scope: !2878)
!2894 = !DILocalVariable(name: "command_name", arg: 2, scope: !2878, file: !238, line: 200, type: !43)
!2895 = !DILocation(line: 200, column: 29, scope: !2878)
!2896 = !DILocalVariable(name: "package", arg: 3, scope: !2878, file: !238, line: 200, type: !43)
!2897 = !DILocation(line: 200, column: 55, scope: !2878)
!2898 = !DILocalVariable(name: "version", arg: 4, scope: !2878, file: !238, line: 201, type: !43)
!2899 = !DILocation(line: 201, column: 29, scope: !2878)
!2900 = !DILocalVariable(name: "authors", arg: 5, scope: !2878, file: !238, line: 201, type: !2881)
!2901 = !DILocation(line: 201, column: 46, scope: !2878)
!2902 = !DILocalVariable(name: "n_authors", scope: !2878, file: !238, line: 203, type: !146)
!2903 = !DILocation(line: 203, column: 10, scope: !2878)
!2904 = !DILocalVariable(name: "authtab", scope: !2878, file: !238, line: 204, type: !2905)
!2905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 640, elements: !154)
!2906 = !DILocation(line: 204, column: 15, scope: !2878)
!2907 = !DILocation(line: 206, column: 18, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2878, file: !238, line: 206, column: 3)
!2909 = !DILocation(line: 206, column: 8, scope: !2908)
!2910 = !DILocation(line: 207, column: 8, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2908, file: !238, line: 206, column: 3)
!2912 = !DILocation(line: 207, column: 18, scope: !2911)
!2913 = !DILocation(line: 208, column: 10, scope: !2911)
!2914 = !DILocation(line: 208, column: 35, scope: !2911)
!2915 = !DILocation(line: 208, column: 22, scope: !2911)
!2916 = !DILocation(line: 208, column: 14, scope: !2911)
!2917 = !DILocation(line: 208, column: 33, scope: !2911)
!2918 = !DILocation(line: 208, column: 67, scope: !2911)
!2919 = !DILocation(line: 0, scope: !2911)
!2920 = !DILocation(line: 206, column: 3, scope: !2908)
!2921 = !DILocation(line: 209, column: 17, scope: !2911)
!2922 = !DILocation(line: 206, column: 3, scope: !2911)
!2923 = distinct !{!2923, !2920, !2924, !398}
!2924 = !DILocation(line: 210, column: 5, scope: !2908)
!2925 = !DILocation(line: 211, column: 20, scope: !2878)
!2926 = !DILocation(line: 211, column: 28, scope: !2878)
!2927 = !DILocation(line: 211, column: 42, scope: !2878)
!2928 = !DILocation(line: 211, column: 51, scope: !2878)
!2929 = !DILocation(line: 212, column: 20, scope: !2878)
!2930 = !DILocation(line: 212, column: 29, scope: !2878)
!2931 = !DILocation(line: 211, column: 3, scope: !2878)
!2932 = !DILocation(line: 213, column: 1, scope: !2878)
!2933 = distinct !DISubprogram(name: "version_etc", scope: !238, file: !238, line: 230, type: !2934, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !237, retainedNodes: !45)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{null, !2659, !43, !43, !43, null}
!2936 = !DILocalVariable(name: "stream", arg: 1, scope: !2933, file: !238, line: 230, type: !2659)
!2937 = !DILocation(line: 230, column: 20, scope: !2933)
!2938 = !DILocalVariable(name: "command_name", arg: 2, scope: !2933, file: !238, line: 231, type: !43)
!2939 = !DILocation(line: 231, column: 26, scope: !2933)
!2940 = !DILocalVariable(name: "package", arg: 3, scope: !2933, file: !238, line: 231, type: !43)
!2941 = !DILocation(line: 231, column: 52, scope: !2933)
!2942 = !DILocalVariable(name: "version", arg: 4, scope: !2933, file: !238, line: 232, type: !43)
!2943 = !DILocation(line: 232, column: 26, scope: !2933)
!2944 = !DILocalVariable(name: "authors", scope: !2933, file: !238, line: 234, type: !2881)
!2945 = !DILocation(line: 234, column: 11, scope: !2933)
!2946 = !DILocation(line: 235, column: 3, scope: !2933)
!2947 = !DILocation(line: 236, column: 19, scope: !2933)
!2948 = !DILocation(line: 236, column: 27, scope: !2933)
!2949 = !DILocation(line: 236, column: 41, scope: !2933)
!2950 = !DILocation(line: 236, column: 50, scope: !2933)
!2951 = !DILocation(line: 236, column: 3, scope: !2933)
!2952 = !DILocation(line: 237, column: 3, scope: !2933)
!2953 = !DILocation(line: 238, column: 1, scope: !2933)
!2954 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !238, file: !238, line: 241, type: !102, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !237, retainedNodes: !45)
!2955 = !DILocation(line: 243, column: 3, scope: !2954)
!2956 = !DILocation(line: 248, column: 11, scope: !2954)
!2957 = !DILocation(line: 248, column: 3, scope: !2954)
!2958 = !DILocation(line: 254, column: 11, scope: !2954)
!2959 = !DILocation(line: 254, column: 3, scope: !2954)
!2960 = !DILocation(line: 259, column: 11, scope: !2954)
!2961 = !DILocation(line: 259, column: 3, scope: !2954)
!2962 = !DILocation(line: 261, column: 1, scope: !2954)
!2963 = distinct !DISubprogram(name: "xnrealloc", scope: !2964, file: !2964, line: 147, type: !2965, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!2964 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!30, !30, !146, !146}
!2967 = !DILocalVariable(name: "p", arg: 1, scope: !2963, file: !2964, line: 147, type: !30)
!2968 = !DILocation(line: 147, column: 18, scope: !2963)
!2969 = !DILocalVariable(name: "n", arg: 2, scope: !2963, file: !2964, line: 147, type: !146)
!2970 = !DILocation(line: 147, column: 28, scope: !2963)
!2971 = !DILocalVariable(name: "s", arg: 3, scope: !2963, file: !2964, line: 147, type: !146)
!2972 = !DILocation(line: 147, column: 38, scope: !2963)
!2973 = !DILocation(line: 149, column: 25, scope: !2963)
!2974 = !DILocation(line: 149, column: 28, scope: !2963)
!2975 = !DILocation(line: 149, column: 31, scope: !2963)
!2976 = !DILocation(line: 149, column: 10, scope: !2963)
!2977 = !DILocation(line: 149, column: 3, scope: !2963)
!2978 = distinct !DISubprogram(name: "xreallocarray", scope: !244, file: !244, line: 83, type: !2965, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!2979 = !DILocalVariable(name: "p", arg: 1, scope: !2978, file: !244, line: 83, type: !30)
!2980 = !DILocation(line: 83, column: 22, scope: !2978)
!2981 = !DILocalVariable(name: "n", arg: 2, scope: !2978, file: !244, line: 83, type: !146)
!2982 = !DILocation(line: 83, column: 32, scope: !2978)
!2983 = !DILocalVariable(name: "s", arg: 3, scope: !2978, file: !244, line: 83, type: !146)
!2984 = !DILocation(line: 83, column: 42, scope: !2978)
!2985 = !DILocation(line: 85, column: 39, scope: !2978)
!2986 = !DILocation(line: 85, column: 42, scope: !2978)
!2987 = !DILocation(line: 85, column: 45, scope: !2978)
!2988 = !DILocation(line: 85, column: 25, scope: !2978)
!2989 = !DILocation(line: 85, column: 10, scope: !2978)
!2990 = !DILocation(line: 85, column: 3, scope: !2978)
!2991 = distinct !DISubprogram(name: "check_nonnull", scope: !244, file: !244, line: 37, type: !2992, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !243, retainedNodes: !45)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!30, !30}
!2994 = !DILocalVariable(name: "p", arg: 1, scope: !2991, file: !244, line: 37, type: !30)
!2995 = !DILocation(line: 37, column: 22, scope: !2991)
!2996 = !DILocation(line: 39, column: 8, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2991, file: !244, line: 39, column: 7)
!2998 = !DILocation(line: 39, column: 7, scope: !2991)
!2999 = !DILocation(line: 40, column: 5, scope: !2997)
!3000 = !DILocation(line: 41, column: 10, scope: !2991)
!3001 = !DILocation(line: 41, column: 3, scope: !2991)
!3002 = distinct !DISubprogram(name: "xmalloc", scope: !244, file: !244, line: 47, type: !3003, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!30, !146}
!3005 = !DILocalVariable(name: "s", arg: 1, scope: !3002, file: !244, line: 47, type: !146)
!3006 = !DILocation(line: 47, column: 17, scope: !3002)
!3007 = !DILocation(line: 49, column: 33, scope: !3002)
!3008 = !DILocation(line: 49, column: 25, scope: !3002)
!3009 = !DILocation(line: 49, column: 10, scope: !3002)
!3010 = !DILocation(line: 49, column: 3, scope: !3002)
!3011 = distinct !DISubprogram(name: "ximalloc", scope: !244, file: !244, line: 53, type: !3012, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!30, !258}
!3014 = !DILocalVariable(name: "s", arg: 1, scope: !3011, file: !244, line: 53, type: !258)
!3015 = !DILocation(line: 53, column: 17, scope: !3011)
!3016 = !DILocation(line: 55, column: 34, scope: !3011)
!3017 = !DILocation(line: 55, column: 25, scope: !3011)
!3018 = !DILocation(line: 55, column: 10, scope: !3011)
!3019 = !DILocation(line: 55, column: 3, scope: !3011)
!3020 = distinct !DISubprogram(name: "xcharalloc", scope: !244, file: !244, line: 59, type: !3021, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!28, !146}
!3023 = !DILocalVariable(name: "n", arg: 1, scope: !3020, file: !244, line: 59, type: !146)
!3024 = !DILocation(line: 59, column: 20, scope: !3020)
!3025 = !DILocation(line: 61, column: 10, scope: !3020)
!3026 = !DILocation(line: 61, column: 3, scope: !3020)
!3027 = distinct !DISubprogram(name: "xrealloc", scope: !244, file: !244, line: 68, type: !3028, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!30, !30, !146}
!3030 = !DILocalVariable(name: "p", arg: 1, scope: !3027, file: !244, line: 68, type: !30)
!3031 = !DILocation(line: 68, column: 17, scope: !3027)
!3032 = !DILocalVariable(name: "s", arg: 2, scope: !3027, file: !244, line: 68, type: !146)
!3033 = !DILocation(line: 68, column: 27, scope: !3027)
!3034 = !DILocation(line: 70, column: 34, scope: !3027)
!3035 = !DILocation(line: 70, column: 37, scope: !3027)
!3036 = !DILocation(line: 70, column: 25, scope: !3027)
!3037 = !DILocation(line: 70, column: 10, scope: !3027)
!3038 = !DILocation(line: 70, column: 3, scope: !3027)
!3039 = distinct !DISubprogram(name: "xirealloc", scope: !244, file: !244, line: 74, type: !3040, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!30, !30, !258}
!3042 = !DILocalVariable(name: "p", arg: 1, scope: !3039, file: !244, line: 74, type: !30)
!3043 = !DILocation(line: 74, column: 18, scope: !3039)
!3044 = !DILocalVariable(name: "s", arg: 2, scope: !3039, file: !244, line: 74, type: !258)
!3045 = !DILocation(line: 74, column: 27, scope: !3039)
!3046 = !DILocation(line: 76, column: 35, scope: !3039)
!3047 = !DILocation(line: 76, column: 38, scope: !3039)
!3048 = !DILocation(line: 76, column: 25, scope: !3039)
!3049 = !DILocation(line: 76, column: 10, scope: !3039)
!3050 = !DILocation(line: 76, column: 3, scope: !3039)
!3051 = distinct !DISubprogram(name: "xireallocarray", scope: !244, file: !244, line: 89, type: !3052, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!30, !30, !258, !258}
!3054 = !DILocalVariable(name: "p", arg: 1, scope: !3051, file: !244, line: 89, type: !30)
!3055 = !DILocation(line: 89, column: 23, scope: !3051)
!3056 = !DILocalVariable(name: "n", arg: 2, scope: !3051, file: !244, line: 89, type: !258)
!3057 = !DILocation(line: 89, column: 32, scope: !3051)
!3058 = !DILocalVariable(name: "s", arg: 3, scope: !3051, file: !244, line: 89, type: !258)
!3059 = !DILocation(line: 89, column: 41, scope: !3051)
!3060 = !DILocation(line: 91, column: 40, scope: !3051)
!3061 = !DILocation(line: 91, column: 43, scope: !3051)
!3062 = !DILocation(line: 91, column: 46, scope: !3051)
!3063 = !DILocation(line: 91, column: 25, scope: !3051)
!3064 = !DILocation(line: 91, column: 10, scope: !3051)
!3065 = !DILocation(line: 91, column: 3, scope: !3051)
!3066 = distinct !DISubprogram(name: "xnmalloc", scope: !244, file: !244, line: 98, type: !3067, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!30, !146, !146}
!3069 = !DILocalVariable(name: "n", arg: 1, scope: !3066, file: !244, line: 98, type: !146)
!3070 = !DILocation(line: 98, column: 18, scope: !3066)
!3071 = !DILocalVariable(name: "s", arg: 2, scope: !3066, file: !244, line: 98, type: !146)
!3072 = !DILocation(line: 98, column: 28, scope: !3066)
!3073 = !DILocation(line: 100, column: 31, scope: !3066)
!3074 = !DILocation(line: 100, column: 34, scope: !3066)
!3075 = !DILocation(line: 100, column: 10, scope: !3066)
!3076 = !DILocation(line: 100, column: 3, scope: !3066)
!3077 = distinct !DISubprogram(name: "xinmalloc", scope: !244, file: !244, line: 104, type: !3078, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!30, !258, !258}
!3080 = !DILocalVariable(name: "n", arg: 1, scope: !3077, file: !244, line: 104, type: !258)
!3081 = !DILocation(line: 104, column: 18, scope: !3077)
!3082 = !DILocalVariable(name: "s", arg: 2, scope: !3077, file: !244, line: 104, type: !258)
!3083 = !DILocation(line: 104, column: 27, scope: !3077)
!3084 = !DILocation(line: 106, column: 32, scope: !3077)
!3085 = !DILocation(line: 106, column: 35, scope: !3077)
!3086 = !DILocation(line: 106, column: 10, scope: !3077)
!3087 = !DILocation(line: 106, column: 3, scope: !3077)
!3088 = distinct !DISubprogram(name: "x2realloc", scope: !244, file: !244, line: 116, type: !3089, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!30, !30, !250}
!3091 = !DILocalVariable(name: "p", arg: 1, scope: !3088, file: !244, line: 116, type: !30)
!3092 = !DILocation(line: 116, column: 18, scope: !3088)
!3093 = !DILocalVariable(name: "ps", arg: 2, scope: !3088, file: !244, line: 116, type: !250)
!3094 = !DILocation(line: 116, column: 29, scope: !3088)
!3095 = !DILocation(line: 118, column: 22, scope: !3088)
!3096 = !DILocation(line: 118, column: 25, scope: !3088)
!3097 = !DILocation(line: 118, column: 10, scope: !3088)
!3098 = !DILocation(line: 118, column: 3, scope: !3088)
!3099 = !DILocalVariable(name: "p", arg: 1, scope: !247, file: !244, line: 176, type: !30)
!3100 = !DILocation(line: 176, column: 19, scope: !247)
!3101 = !DILocalVariable(name: "pn", arg: 2, scope: !247, file: !244, line: 176, type: !250)
!3102 = !DILocation(line: 176, column: 30, scope: !247)
!3103 = !DILocalVariable(name: "s", arg: 3, scope: !247, file: !244, line: 176, type: !146)
!3104 = !DILocation(line: 176, column: 41, scope: !247)
!3105 = !DILocalVariable(name: "n", scope: !247, file: !244, line: 178, type: !146)
!3106 = !DILocation(line: 178, column: 10, scope: !247)
!3107 = !DILocation(line: 178, column: 15, scope: !247)
!3108 = !DILocation(line: 178, column: 14, scope: !247)
!3109 = !DILocation(line: 180, column: 9, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !247, file: !244, line: 180, column: 7)
!3111 = !DILocation(line: 180, column: 7, scope: !247)
!3112 = !DILocation(line: 182, column: 13, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !244, line: 182, column: 11)
!3114 = distinct !DILexicalBlock(scope: !3110, file: !244, line: 181, column: 5)
!3115 = !DILocation(line: 182, column: 11, scope: !3114)
!3116 = !DILocation(line: 190, column: 32, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3113, file: !244, line: 183, column: 9)
!3118 = !DILocation(line: 190, column: 30, scope: !3117)
!3119 = !DILocation(line: 190, column: 13, scope: !3117)
!3120 = !DILocation(line: 191, column: 17, scope: !3117)
!3121 = !DILocation(line: 191, column: 16, scope: !3117)
!3122 = !DILocation(line: 191, column: 13, scope: !3117)
!3123 = !DILocation(line: 192, column: 9, scope: !3117)
!3124 = !DILocation(line: 193, column: 5, scope: !3114)
!3125 = !DILocation(line: 197, column: 11, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !244, line: 197, column: 11)
!3127 = distinct !DILexicalBlock(scope: !3110, file: !244, line: 195, column: 5)
!3128 = !DILocation(line: 197, column: 11, scope: !3127)
!3129 = !DILocation(line: 198, column: 9, scope: !3126)
!3130 = !DILocation(line: 201, column: 22, scope: !247)
!3131 = !DILocation(line: 201, column: 25, scope: !247)
!3132 = !DILocation(line: 201, column: 28, scope: !247)
!3133 = !DILocation(line: 201, column: 7, scope: !247)
!3134 = !DILocation(line: 201, column: 5, scope: !247)
!3135 = !DILocation(line: 202, column: 9, scope: !247)
!3136 = !DILocation(line: 202, column: 4, scope: !247)
!3137 = !DILocation(line: 202, column: 7, scope: !247)
!3138 = !DILocation(line: 203, column: 10, scope: !247)
!3139 = !DILocation(line: 203, column: 3, scope: !247)
!3140 = !DILocalVariable(name: "pa", arg: 1, scope: !254, file: !244, line: 223, type: !30)
!3141 = !DILocation(line: 223, column: 16, scope: !254)
!3142 = !DILocalVariable(name: "pn", arg: 2, scope: !254, file: !244, line: 223, type: !257)
!3143 = !DILocation(line: 223, column: 27, scope: !254)
!3144 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !254, file: !244, line: 223, type: !258)
!3145 = !DILocation(line: 223, column: 37, scope: !254)
!3146 = !DILocalVariable(name: "n_max", arg: 4, scope: !254, file: !244, line: 223, type: !260)
!3147 = !DILocation(line: 223, column: 59, scope: !254)
!3148 = !DILocalVariable(name: "s", arg: 5, scope: !254, file: !244, line: 223, type: !258)
!3149 = !DILocation(line: 223, column: 72, scope: !254)
!3150 = !DILocalVariable(name: "n0", scope: !254, file: !244, line: 230, type: !258)
!3151 = !DILocation(line: 230, column: 9, scope: !254)
!3152 = !DILocation(line: 230, column: 15, scope: !254)
!3153 = !DILocation(line: 230, column: 14, scope: !254)
!3154 = !DILocalVariable(name: "n", scope: !254, file: !244, line: 237, type: !258)
!3155 = !DILocation(line: 237, column: 9, scope: !254)
!3156 = !DILocation(line: 238, column: 7, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !254, file: !244, line: 238, column: 7)
!3158 = !DILocation(line: 238, column: 7, scope: !254)
!3159 = !DILocation(line: 239, column: 7, scope: !3157)
!3160 = !DILocation(line: 239, column: 5, scope: !3157)
!3161 = !DILocation(line: 240, column: 12, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !254, file: !244, line: 240, column: 7)
!3163 = !DILocation(line: 240, column: 9, scope: !3162)
!3164 = !DILocation(line: 240, column: 18, scope: !3162)
!3165 = !DILocation(line: 240, column: 21, scope: !3162)
!3166 = !DILocation(line: 240, column: 29, scope: !3162)
!3167 = !DILocation(line: 240, column: 27, scope: !3162)
!3168 = !DILocation(line: 240, column: 7, scope: !254)
!3169 = !DILocation(line: 241, column: 9, scope: !3162)
!3170 = !DILocation(line: 241, column: 7, scope: !3162)
!3171 = !DILocation(line: 241, column: 5, scope: !3162)
!3172 = !DILocalVariable(name: "nbytes", scope: !254, file: !244, line: 248, type: !258)
!3173 = !DILocation(line: 248, column: 9, scope: !254)
!3174 = !DILocalVariable(name: "adjusted_nbytes", scope: !254, file: !244, line: 252, type: !258)
!3175 = !DILocation(line: 252, column: 9, scope: !254)
!3176 = !DILocation(line: 253, column: 8, scope: !254)
!3177 = !DILocation(line: 255, column: 10, scope: !254)
!3178 = !DILocation(line: 255, column: 17, scope: !254)
!3179 = !DILocation(line: 256, column: 7, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !254, file: !244, line: 256, column: 7)
!3181 = !DILocation(line: 256, column: 7, scope: !254)
!3182 = !DILocation(line: 258, column: 11, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3180, file: !244, line: 257, column: 5)
!3184 = !DILocation(line: 258, column: 29, scope: !3183)
!3185 = !DILocation(line: 258, column: 27, scope: !3183)
!3186 = !DILocation(line: 258, column: 9, scope: !3183)
!3187 = !DILocation(line: 259, column: 16, scope: !3183)
!3188 = !DILocation(line: 259, column: 34, scope: !3183)
!3189 = !DILocation(line: 259, column: 52, scope: !3183)
!3190 = !DILocation(line: 259, column: 50, scope: !3183)
!3191 = !DILocation(line: 259, column: 32, scope: !3183)
!3192 = !DILocation(line: 259, column: 14, scope: !3183)
!3193 = !DILocation(line: 260, column: 5, scope: !3183)
!3194 = !DILocation(line: 262, column: 9, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !254, file: !244, line: 262, column: 7)
!3196 = !DILocation(line: 262, column: 7, scope: !254)
!3197 = !DILocation(line: 263, column: 6, scope: !3195)
!3198 = !DILocation(line: 263, column: 9, scope: !3195)
!3199 = !DILocation(line: 263, column: 5, scope: !3195)
!3200 = !DILocation(line: 264, column: 7, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !254, file: !244, line: 264, column: 7)
!3202 = !DILocation(line: 264, column: 11, scope: !3201)
!3203 = !DILocation(line: 264, column: 9, scope: !3201)
!3204 = !DILocation(line: 264, column: 16, scope: !3201)
!3205 = !DILocation(line: 264, column: 14, scope: !3201)
!3206 = !DILocation(line: 265, column: 7, scope: !3201)
!3207 = !DILocation(line: 265, column: 11, scope: !3201)
!3208 = !DILocation(line: 266, column: 11, scope: !3201)
!3209 = !DILocation(line: 266, column: 20, scope: !3201)
!3210 = !DILocation(line: 266, column: 17, scope: !3201)
!3211 = !DILocation(line: 266, column: 26, scope: !3201)
!3212 = !DILocation(line: 266, column: 29, scope: !3201)
!3213 = !DILocation(line: 266, column: 37, scope: !3201)
!3214 = !DILocation(line: 266, column: 35, scope: !3201)
!3215 = !DILocation(line: 267, column: 11, scope: !3201)
!3216 = !DILocation(line: 267, column: 14, scope: !3201)
!3217 = !DILocation(line: 264, column: 7, scope: !254)
!3218 = !DILocation(line: 268, column: 5, scope: !3201)
!3219 = !DILocation(line: 269, column: 18, scope: !254)
!3220 = !DILocation(line: 269, column: 22, scope: !254)
!3221 = !DILocation(line: 269, column: 8, scope: !254)
!3222 = !DILocation(line: 269, column: 6, scope: !254)
!3223 = !DILocation(line: 270, column: 9, scope: !254)
!3224 = !DILocation(line: 270, column: 4, scope: !254)
!3225 = !DILocation(line: 270, column: 7, scope: !254)
!3226 = !DILocation(line: 271, column: 10, scope: !254)
!3227 = !DILocation(line: 271, column: 3, scope: !254)
!3228 = distinct !DISubprogram(name: "xzalloc", scope: !244, file: !244, line: 279, type: !3003, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3229 = !DILocalVariable(name: "s", arg: 1, scope: !3228, file: !244, line: 279, type: !146)
!3230 = !DILocation(line: 279, column: 17, scope: !3228)
!3231 = !DILocation(line: 281, column: 19, scope: !3228)
!3232 = !DILocation(line: 281, column: 10, scope: !3228)
!3233 = !DILocation(line: 281, column: 3, scope: !3228)
!3234 = distinct !DISubprogram(name: "xcalloc", scope: !244, file: !244, line: 294, type: !3067, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3235 = !DILocalVariable(name: "n", arg: 1, scope: !3234, file: !244, line: 294, type: !146)
!3236 = !DILocation(line: 294, column: 17, scope: !3234)
!3237 = !DILocalVariable(name: "s", arg: 2, scope: !3234, file: !244, line: 294, type: !146)
!3238 = !DILocation(line: 294, column: 27, scope: !3234)
!3239 = !DILocation(line: 296, column: 33, scope: !3234)
!3240 = !DILocation(line: 296, column: 36, scope: !3234)
!3241 = !DILocation(line: 296, column: 25, scope: !3234)
!3242 = !DILocation(line: 296, column: 10, scope: !3234)
!3243 = !DILocation(line: 296, column: 3, scope: !3234)
!3244 = distinct !DISubprogram(name: "xizalloc", scope: !244, file: !244, line: 285, type: !3012, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3245 = !DILocalVariable(name: "s", arg: 1, scope: !3244, file: !244, line: 285, type: !258)
!3246 = !DILocation(line: 285, column: 17, scope: !3244)
!3247 = !DILocation(line: 287, column: 20, scope: !3244)
!3248 = !DILocation(line: 287, column: 10, scope: !3244)
!3249 = !DILocation(line: 287, column: 3, scope: !3244)
!3250 = distinct !DISubprogram(name: "xicalloc", scope: !244, file: !244, line: 300, type: !3078, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3251 = !DILocalVariable(name: "n", arg: 1, scope: !3250, file: !244, line: 300, type: !258)
!3252 = !DILocation(line: 300, column: 17, scope: !3250)
!3253 = !DILocalVariable(name: "s", arg: 2, scope: !3250, file: !244, line: 300, type: !258)
!3254 = !DILocation(line: 300, column: 26, scope: !3250)
!3255 = !DILocation(line: 302, column: 34, scope: !3250)
!3256 = !DILocation(line: 302, column: 37, scope: !3250)
!3257 = !DILocation(line: 302, column: 25, scope: !3250)
!3258 = !DILocation(line: 302, column: 10, scope: !3250)
!3259 = !DILocation(line: 302, column: 3, scope: !3250)
!3260 = distinct !DISubprogram(name: "xmemdup", scope: !244, file: !244, line: 310, type: !3261, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!30, !3263, !146}
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3265 = !DILocalVariable(name: "p", arg: 1, scope: !3260, file: !244, line: 310, type: !3263)
!3266 = !DILocation(line: 310, column: 22, scope: !3260)
!3267 = !DILocalVariable(name: "s", arg: 2, scope: !3260, file: !244, line: 310, type: !146)
!3268 = !DILocation(line: 310, column: 32, scope: !3260)
!3269 = !DILocation(line: 312, column: 27, scope: !3260)
!3270 = !DILocation(line: 312, column: 18, scope: !3260)
!3271 = !DILocation(line: 312, column: 31, scope: !3260)
!3272 = !DILocation(line: 312, column: 34, scope: !3260)
!3273 = !DILocation(line: 312, column: 10, scope: !3260)
!3274 = !DILocation(line: 312, column: 3, scope: !3260)
!3275 = distinct !DISubprogram(name: "ximemdup", scope: !244, file: !244, line: 316, type: !3276, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!30, !3263, !258}
!3278 = !DILocalVariable(name: "p", arg: 1, scope: !3275, file: !244, line: 316, type: !3263)
!3279 = !DILocation(line: 316, column: 23, scope: !3275)
!3280 = !DILocalVariable(name: "s", arg: 2, scope: !3275, file: !244, line: 316, type: !258)
!3281 = !DILocation(line: 316, column: 32, scope: !3275)
!3282 = !DILocation(line: 318, column: 28, scope: !3275)
!3283 = !DILocation(line: 318, column: 18, scope: !3275)
!3284 = !DILocation(line: 318, column: 32, scope: !3275)
!3285 = !DILocation(line: 318, column: 35, scope: !3275)
!3286 = !DILocation(line: 318, column: 10, scope: !3275)
!3287 = !DILocation(line: 318, column: 3, scope: !3275)
!3288 = distinct !DISubprogram(name: "ximemdup0", scope: !244, file: !244, line: 325, type: !3289, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!28, !3263, !258}
!3291 = !DILocalVariable(name: "p", arg: 1, scope: !3288, file: !244, line: 325, type: !3263)
!3292 = !DILocation(line: 325, column: 24, scope: !3288)
!3293 = !DILocalVariable(name: "s", arg: 2, scope: !3288, file: !244, line: 325, type: !258)
!3294 = !DILocation(line: 325, column: 33, scope: !3288)
!3295 = !DILocalVariable(name: "result", scope: !3288, file: !244, line: 327, type: !28)
!3296 = !DILocation(line: 327, column: 9, scope: !3288)
!3297 = !DILocation(line: 327, column: 28, scope: !3288)
!3298 = !DILocation(line: 327, column: 30, scope: !3288)
!3299 = !DILocation(line: 327, column: 18, scope: !3288)
!3300 = !DILocation(line: 328, column: 3, scope: !3288)
!3301 = !DILocation(line: 328, column: 10, scope: !3288)
!3302 = !DILocation(line: 328, column: 13, scope: !3288)
!3303 = !DILocation(line: 329, column: 18, scope: !3288)
!3304 = !DILocation(line: 329, column: 26, scope: !3288)
!3305 = !DILocation(line: 329, column: 29, scope: !3288)
!3306 = !DILocation(line: 329, column: 10, scope: !3288)
!3307 = !DILocation(line: 329, column: 3, scope: !3288)
!3308 = distinct !DISubprogram(name: "xstrdup", scope: !244, file: !244, line: 335, type: !2371, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !45)
!3309 = !DILocalVariable(name: "string", arg: 1, scope: !3308, file: !244, line: 335, type: !43)
!3310 = !DILocation(line: 335, column: 22, scope: !3308)
!3311 = !DILocation(line: 337, column: 19, scope: !3308)
!3312 = !DILocation(line: 337, column: 35, scope: !3308)
!3313 = !DILocation(line: 337, column: 27, scope: !3308)
!3314 = !DILocation(line: 337, column: 43, scope: !3308)
!3315 = !DILocation(line: 337, column: 10, scope: !3308)
!3316 = !DILocation(line: 337, column: 3, scope: !3308)
!3317 = distinct !DISubprogram(name: "xalloc_die", scope: !264, file: !264, line: 32, type: !102, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3318 = !DILocalVariable(name: "__errstatus", scope: !3319, file: !264, line: 34, type: !3320)
!3319 = distinct !DILexicalBlock(scope: !3317, file: !264, line: 34, column: 3)
!3320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!3321 = !DILocation(line: 34, column: 3, scope: !3319)
!3322 = !DILocation(line: 40, column: 3, scope: !3317)
!3323 = distinct !DISubprogram(name: "c32isprint", scope: !3324, file: !3324, line: 41, type: !3325, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !45)
!3324 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!31, !3327}
!3327 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3328, line: 20, baseType: !6)
!3328 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3329 = !DILocalVariable(name: "wc", arg: 1, scope: !3323, file: !3324, line: 41, type: !3327)
!3330 = !DILocation(line: 41, column: 14, scope: !3323)
!3331 = !DILocation(line: 66, column: 22, scope: !3323)
!3332 = !DILocation(line: 66, column: 10, scope: !3323)
!3333 = !DILocation(line: 66, column: 3, scope: !3323)
!3334 = distinct !DISubprogram(name: "close_stream", scope: !268, file: !268, line: 55, type: !3335, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !45)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!31, !3337}
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2661, line: 7, baseType: !3339)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2663, line: 49, size: 1728, elements: !3340)
!3340 = !{!3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3339, file: !2663, line: 51, baseType: !31, size: 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3339, file: !2663, line: 54, baseType: !28, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3339, file: !2663, line: 55, baseType: !28, size: 64, offset: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3339, file: !2663, line: 56, baseType: !28, size: 64, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3339, file: !2663, line: 57, baseType: !28, size: 64, offset: 256)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3339, file: !2663, line: 58, baseType: !28, size: 64, offset: 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3339, file: !2663, line: 59, baseType: !28, size: 64, offset: 384)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3339, file: !2663, line: 60, baseType: !28, size: 64, offset: 448)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3339, file: !2663, line: 61, baseType: !28, size: 64, offset: 512)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3339, file: !2663, line: 64, baseType: !28, size: 64, offset: 576)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3339, file: !2663, line: 65, baseType: !28, size: 64, offset: 640)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3339, file: !2663, line: 66, baseType: !28, size: 64, offset: 704)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3339, file: !2663, line: 68, baseType: !2678, size: 64, offset: 768)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3339, file: !2663, line: 70, baseType: !3355, size: 64, offset: 832)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3339, file: !2663, line: 72, baseType: !31, size: 32, offset: 896)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3339, file: !2663, line: 73, baseType: !31, size: 32, offset: 928)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3339, file: !2663, line: 74, baseType: !2685, size: 64, offset: 960)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3339, file: !2663, line: 77, baseType: !32, size: 16, offset: 1024)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3339, file: !2663, line: 78, baseType: !2688, size: 8, offset: 1040)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3339, file: !2663, line: 79, baseType: !2690, size: 8, offset: 1048)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3339, file: !2663, line: 81, baseType: !2694, size: 64, offset: 1088)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3339, file: !2663, line: 89, baseType: !2697, size: 64, offset: 1152)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3339, file: !2663, line: 91, baseType: !2699, size: 64, offset: 1216)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3339, file: !2663, line: 92, baseType: !2702, size: 64, offset: 1280)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3339, file: !2663, line: 93, baseType: !3355, size: 64, offset: 1344)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3339, file: !2663, line: 94, baseType: !30, size: 64, offset: 1408)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3339, file: !2663, line: 95, baseType: !146, size: 64, offset: 1472)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3339, file: !2663, line: 96, baseType: !31, size: 32, offset: 1536)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3339, file: !2663, line: 98, baseType: !2709, size: 160, offset: 1568)
!3371 = !DILocalVariable(name: "stream", arg: 1, scope: !3334, file: !268, line: 55, type: !3337)
!3372 = !DILocation(line: 55, column: 21, scope: !3334)
!3373 = !DILocalVariable(name: "some_pending", scope: !3334, file: !268, line: 57, type: !3374)
!3374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!3375 = !DILocation(line: 57, column: 14, scope: !3334)
!3376 = !DILocation(line: 57, column: 42, scope: !3334)
!3377 = !DILocation(line: 57, column: 30, scope: !3334)
!3378 = !DILocation(line: 57, column: 50, scope: !3334)
!3379 = !DILocalVariable(name: "prev_fail", scope: !3334, file: !268, line: 58, type: !3374)
!3380 = !DILocation(line: 58, column: 14, scope: !3334)
!3381 = !DILocation(line: 58, column: 27, scope: !3334)
!3382 = !DILocation(line: 58, column: 43, scope: !3334)
!3383 = !DILocalVariable(name: "fclose_fail", scope: !3334, file: !268, line: 59, type: !3374)
!3384 = !DILocation(line: 59, column: 14, scope: !3334)
!3385 = !DILocation(line: 59, column: 37, scope: !3334)
!3386 = !DILocation(line: 59, column: 29, scope: !3334)
!3387 = !DILocation(line: 59, column: 45, scope: !3334)
!3388 = !DILocation(line: 69, column: 7, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3334, file: !268, line: 69, column: 7)
!3390 = !DILocation(line: 69, column: 17, scope: !3389)
!3391 = !DILocation(line: 69, column: 21, scope: !3389)
!3392 = !DILocation(line: 69, column: 33, scope: !3389)
!3393 = !DILocation(line: 69, column: 37, scope: !3389)
!3394 = !DILocation(line: 69, column: 50, scope: !3389)
!3395 = !DILocation(line: 69, column: 53, scope: !3389)
!3396 = !DILocation(line: 69, column: 59, scope: !3389)
!3397 = !DILocation(line: 69, column: 7, scope: !3334)
!3398 = !DILocation(line: 71, column: 13, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !268, line: 71, column: 11)
!3400 = distinct !DILexicalBlock(scope: !3389, file: !268, line: 70, column: 5)
!3401 = !DILocation(line: 71, column: 11, scope: !3400)
!3402 = !DILocation(line: 72, column: 9, scope: !3399)
!3403 = !DILocation(line: 72, column: 15, scope: !3399)
!3404 = !DILocation(line: 73, column: 7, scope: !3400)
!3405 = !DILocation(line: 76, column: 3, scope: !3334)
!3406 = !DILocation(line: 77, column: 1, scope: !3334)
!3407 = distinct !DISubprogram(name: "rpl_fclose", scope: !270, file: !270, line: 58, type: !3408, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !269, retainedNodes: !45)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!31, !3410}
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2661, line: 7, baseType: !3412)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2663, line: 49, size: 1728, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3412, file: !2663, line: 51, baseType: !31, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3412, file: !2663, line: 54, baseType: !28, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3412, file: !2663, line: 55, baseType: !28, size: 64, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3412, file: !2663, line: 56, baseType: !28, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3412, file: !2663, line: 57, baseType: !28, size: 64, offset: 256)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3412, file: !2663, line: 58, baseType: !28, size: 64, offset: 320)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3412, file: !2663, line: 59, baseType: !28, size: 64, offset: 384)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3412, file: !2663, line: 60, baseType: !28, size: 64, offset: 448)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3412, file: !2663, line: 61, baseType: !28, size: 64, offset: 512)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3412, file: !2663, line: 64, baseType: !28, size: 64, offset: 576)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3412, file: !2663, line: 65, baseType: !28, size: 64, offset: 640)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3412, file: !2663, line: 66, baseType: !28, size: 64, offset: 704)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3412, file: !2663, line: 68, baseType: !2678, size: 64, offset: 768)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3412, file: !2663, line: 70, baseType: !3428, size: 64, offset: 832)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3412, file: !2663, line: 72, baseType: !31, size: 32, offset: 896)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3412, file: !2663, line: 73, baseType: !31, size: 32, offset: 928)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3412, file: !2663, line: 74, baseType: !2685, size: 64, offset: 960)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3412, file: !2663, line: 77, baseType: !32, size: 16, offset: 1024)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3412, file: !2663, line: 78, baseType: !2688, size: 8, offset: 1040)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3412, file: !2663, line: 79, baseType: !2690, size: 8, offset: 1048)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3412, file: !2663, line: 81, baseType: !2694, size: 64, offset: 1088)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3412, file: !2663, line: 89, baseType: !2697, size: 64, offset: 1152)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3412, file: !2663, line: 91, baseType: !2699, size: 64, offset: 1216)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3412, file: !2663, line: 92, baseType: !2702, size: 64, offset: 1280)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3412, file: !2663, line: 93, baseType: !3428, size: 64, offset: 1344)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3412, file: !2663, line: 94, baseType: !30, size: 64, offset: 1408)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3412, file: !2663, line: 95, baseType: !146, size: 64, offset: 1472)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3412, file: !2663, line: 96, baseType: !31, size: 32, offset: 1536)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3412, file: !2663, line: 98, baseType: !2709, size: 160, offset: 1568)
!3444 = !DILocalVariable(name: "fp", arg: 1, scope: !3407, file: !270, line: 58, type: !3410)
!3445 = !DILocation(line: 58, column: 19, scope: !3407)
!3446 = !DILocalVariable(name: "saved_errno", scope: !3407, file: !270, line: 60, type: !31)
!3447 = !DILocation(line: 60, column: 7, scope: !3407)
!3448 = !DILocalVariable(name: "fd", scope: !3407, file: !270, line: 63, type: !31)
!3449 = !DILocation(line: 63, column: 7, scope: !3407)
!3450 = !DILocation(line: 63, column: 20, scope: !3407)
!3451 = !DILocation(line: 63, column: 12, scope: !3407)
!3452 = !DILocation(line: 64, column: 7, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3407, file: !270, line: 64, column: 7)
!3454 = !DILocation(line: 64, column: 10, scope: !3453)
!3455 = !DILocation(line: 64, column: 7, scope: !3407)
!3456 = !DILocation(line: 65, column: 28, scope: !3453)
!3457 = !DILocation(line: 65, column: 12, scope: !3453)
!3458 = !DILocation(line: 65, column: 5, scope: !3453)
!3459 = !DILocation(line: 70, column: 9, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3407, file: !270, line: 70, column: 7)
!3461 = !DILocation(line: 70, column: 23, scope: !3460)
!3462 = !DILocation(line: 70, column: 41, scope: !3460)
!3463 = !DILocation(line: 70, column: 33, scope: !3460)
!3464 = !DILocation(line: 70, column: 26, scope: !3460)
!3465 = !DILocation(line: 70, column: 59, scope: !3460)
!3466 = !DILocation(line: 71, column: 7, scope: !3460)
!3467 = !DILocation(line: 71, column: 18, scope: !3460)
!3468 = !DILocation(line: 71, column: 10, scope: !3460)
!3469 = !DILocation(line: 70, column: 7, scope: !3407)
!3470 = !DILocation(line: 72, column: 19, scope: !3460)
!3471 = !DILocation(line: 72, column: 17, scope: !3460)
!3472 = !DILocation(line: 72, column: 5, scope: !3460)
!3473 = !DILocalVariable(name: "result", scope: !3407, file: !270, line: 74, type: !31)
!3474 = !DILocation(line: 74, column: 7, scope: !3407)
!3475 = !DILocation(line: 100, column: 28, scope: !3407)
!3476 = !DILocation(line: 100, column: 12, scope: !3407)
!3477 = !DILocation(line: 100, column: 10, scope: !3407)
!3478 = !DILocation(line: 105, column: 7, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3407, file: !270, line: 105, column: 7)
!3480 = !DILocation(line: 105, column: 19, scope: !3479)
!3481 = !DILocation(line: 105, column: 7, scope: !3407)
!3482 = !DILocation(line: 107, column: 15, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3479, file: !270, line: 106, column: 5)
!3484 = !DILocation(line: 107, column: 7, scope: !3483)
!3485 = !DILocation(line: 107, column: 13, scope: !3483)
!3486 = !DILocation(line: 108, column: 14, scope: !3483)
!3487 = !DILocation(line: 109, column: 5, scope: !3483)
!3488 = !DILocation(line: 111, column: 10, scope: !3407)
!3489 = !DILocation(line: 111, column: 3, scope: !3407)
!3490 = !DILocation(line: 112, column: 1, scope: !3407)
!3491 = distinct !DISubprogram(name: "rpl_fflush", scope: !272, file: !272, line: 130, type: !3492, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !45)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!31, !3494}
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2661, line: 7, baseType: !3496)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2663, line: 49, size: 1728, elements: !3497)
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3496, file: !2663, line: 51, baseType: !31, size: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3496, file: !2663, line: 54, baseType: !28, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3496, file: !2663, line: 55, baseType: !28, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3496, file: !2663, line: 56, baseType: !28, size: 64, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3496, file: !2663, line: 57, baseType: !28, size: 64, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3496, file: !2663, line: 58, baseType: !28, size: 64, offset: 320)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3496, file: !2663, line: 59, baseType: !28, size: 64, offset: 384)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3496, file: !2663, line: 60, baseType: !28, size: 64, offset: 448)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3496, file: !2663, line: 61, baseType: !28, size: 64, offset: 512)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3496, file: !2663, line: 64, baseType: !28, size: 64, offset: 576)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3496, file: !2663, line: 65, baseType: !28, size: 64, offset: 640)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3496, file: !2663, line: 66, baseType: !28, size: 64, offset: 704)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3496, file: !2663, line: 68, baseType: !2678, size: 64, offset: 768)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3496, file: !2663, line: 70, baseType: !3512, size: 64, offset: 832)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3496, file: !2663, line: 72, baseType: !31, size: 32, offset: 896)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3496, file: !2663, line: 73, baseType: !31, size: 32, offset: 928)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3496, file: !2663, line: 74, baseType: !2685, size: 64, offset: 960)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3496, file: !2663, line: 77, baseType: !32, size: 16, offset: 1024)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3496, file: !2663, line: 78, baseType: !2688, size: 8, offset: 1040)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3496, file: !2663, line: 79, baseType: !2690, size: 8, offset: 1048)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3496, file: !2663, line: 81, baseType: !2694, size: 64, offset: 1088)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3496, file: !2663, line: 89, baseType: !2697, size: 64, offset: 1152)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3496, file: !2663, line: 91, baseType: !2699, size: 64, offset: 1216)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3496, file: !2663, line: 92, baseType: !2702, size: 64, offset: 1280)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3496, file: !2663, line: 93, baseType: !3512, size: 64, offset: 1344)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3496, file: !2663, line: 94, baseType: !30, size: 64, offset: 1408)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3496, file: !2663, line: 95, baseType: !146, size: 64, offset: 1472)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3496, file: !2663, line: 96, baseType: !31, size: 32, offset: 1536)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3496, file: !2663, line: 98, baseType: !2709, size: 160, offset: 1568)
!3528 = !DILocalVariable(name: "stream", arg: 1, scope: !3491, file: !272, line: 130, type: !3494)
!3529 = !DILocation(line: 130, column: 19, scope: !3491)
!3530 = !DILocation(line: 151, column: 7, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3491, file: !272, line: 151, column: 7)
!3532 = !DILocation(line: 151, column: 14, scope: !3531)
!3533 = !DILocation(line: 151, column: 22, scope: !3531)
!3534 = !DILocation(line: 151, column: 27, scope: !3531)
!3535 = !DILocation(line: 151, column: 7, scope: !3491)
!3536 = !DILocation(line: 152, column: 20, scope: !3531)
!3537 = !DILocation(line: 152, column: 12, scope: !3531)
!3538 = !DILocation(line: 152, column: 5, scope: !3531)
!3539 = !DILocation(line: 157, column: 44, scope: !3491)
!3540 = !DILocation(line: 157, column: 3, scope: !3491)
!3541 = !DILocation(line: 159, column: 18, scope: !3491)
!3542 = !DILocation(line: 159, column: 10, scope: !3491)
!3543 = !DILocation(line: 159, column: 3, scope: !3491)
!3544 = !DILocation(line: 236, column: 1, scope: !3491)
!3545 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !272, file: !272, line: 42, type: !3546, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !271, retainedNodes: !45)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{null, !3494}
!3548 = !DILocalVariable(name: "fp", arg: 1, scope: !3545, file: !272, line: 42, type: !3494)
!3549 = !DILocation(line: 42, column: 48, scope: !3545)
!3550 = !DILocation(line: 44, column: 7, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3545, file: !272, line: 44, column: 7)
!3552 = !DILocation(line: 44, column: 12, scope: !3551)
!3553 = !DILocation(line: 44, column: 19, scope: !3551)
!3554 = !DILocation(line: 44, column: 7, scope: !3545)
!3555 = !DILocation(line: 46, column: 13, scope: !3551)
!3556 = !DILocation(line: 46, column: 5, scope: !3551)
!3557 = !DILocation(line: 47, column: 1, scope: !3545)
!3558 = distinct !DISubprogram(name: "rpl_fseeko", scope: !274, file: !274, line: 28, type: !3559, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !273, retainedNodes: !45)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!31, !3561, !3595, !31}
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2661, line: 7, baseType: !3563)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2663, line: 49, size: 1728, elements: !3564)
!3564 = !{!3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3563, file: !2663, line: 51, baseType: !31, size: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3563, file: !2663, line: 54, baseType: !28, size: 64, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3563, file: !2663, line: 55, baseType: !28, size: 64, offset: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3563, file: !2663, line: 56, baseType: !28, size: 64, offset: 192)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3563, file: !2663, line: 57, baseType: !28, size: 64, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3563, file: !2663, line: 58, baseType: !28, size: 64, offset: 320)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3563, file: !2663, line: 59, baseType: !28, size: 64, offset: 384)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3563, file: !2663, line: 60, baseType: !28, size: 64, offset: 448)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3563, file: !2663, line: 61, baseType: !28, size: 64, offset: 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3563, file: !2663, line: 64, baseType: !28, size: 64, offset: 576)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3563, file: !2663, line: 65, baseType: !28, size: 64, offset: 640)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3563, file: !2663, line: 66, baseType: !28, size: 64, offset: 704)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3563, file: !2663, line: 68, baseType: !2678, size: 64, offset: 768)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3563, file: !2663, line: 70, baseType: !3579, size: 64, offset: 832)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3563, file: !2663, line: 72, baseType: !31, size: 32, offset: 896)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3563, file: !2663, line: 73, baseType: !31, size: 32, offset: 928)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3563, file: !2663, line: 74, baseType: !2685, size: 64, offset: 960)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3563, file: !2663, line: 77, baseType: !32, size: 16, offset: 1024)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3563, file: !2663, line: 78, baseType: !2688, size: 8, offset: 1040)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3563, file: !2663, line: 79, baseType: !2690, size: 8, offset: 1048)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3563, file: !2663, line: 81, baseType: !2694, size: 64, offset: 1088)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3563, file: !2663, line: 89, baseType: !2697, size: 64, offset: 1152)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3563, file: !2663, line: 91, baseType: !2699, size: 64, offset: 1216)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3563, file: !2663, line: 92, baseType: !2702, size: 64, offset: 1280)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3563, file: !2663, line: 93, baseType: !3579, size: 64, offset: 1344)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3563, file: !2663, line: 94, baseType: !30, size: 64, offset: 1408)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3563, file: !2663, line: 95, baseType: !146, size: 64, offset: 1472)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3563, file: !2663, line: 96, baseType: !31, size: 32, offset: 1536)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3563, file: !2663, line: 98, baseType: !2709, size: 160, offset: 1568)
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !82, line: 63, baseType: !2685)
!3596 = !DILocalVariable(name: "fp", arg: 1, scope: !3558, file: !274, line: 28, type: !3561)
!3597 = !DILocation(line: 28, column: 15, scope: !3558)
!3598 = !DILocalVariable(name: "offset", arg: 2, scope: !3558, file: !274, line: 28, type: !3595)
!3599 = !DILocation(line: 28, column: 25, scope: !3558)
!3600 = !DILocalVariable(name: "whence", arg: 3, scope: !3558, file: !274, line: 28, type: !31)
!3601 = !DILocation(line: 28, column: 37, scope: !3558)
!3602 = !DILocation(line: 55, column: 7, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3558, file: !274, line: 55, column: 7)
!3604 = !DILocation(line: 55, column: 12, scope: !3603)
!3605 = !DILocation(line: 55, column: 28, scope: !3603)
!3606 = !DILocation(line: 55, column: 33, scope: !3603)
!3607 = !DILocation(line: 55, column: 25, scope: !3603)
!3608 = !DILocation(line: 56, column: 7, scope: !3603)
!3609 = !DILocation(line: 56, column: 10, scope: !3603)
!3610 = !DILocation(line: 56, column: 15, scope: !3603)
!3611 = !DILocation(line: 56, column: 32, scope: !3603)
!3612 = !DILocation(line: 56, column: 37, scope: !3603)
!3613 = !DILocation(line: 56, column: 29, scope: !3603)
!3614 = !DILocation(line: 57, column: 7, scope: !3603)
!3615 = !DILocation(line: 57, column: 10, scope: !3603)
!3616 = !DILocation(line: 57, column: 15, scope: !3603)
!3617 = !DILocation(line: 57, column: 29, scope: !3603)
!3618 = !DILocation(line: 55, column: 7, scope: !3558)
!3619 = !DILocalVariable(name: "pos", scope: !3620, file: !274, line: 123, type: !3595)
!3620 = distinct !DILexicalBlock(scope: !3603, file: !274, line: 119, column: 5)
!3621 = !DILocation(line: 123, column: 13, scope: !3620)
!3622 = !DILocation(line: 123, column: 34, scope: !3620)
!3623 = !DILocation(line: 123, column: 26, scope: !3620)
!3624 = !DILocation(line: 123, column: 39, scope: !3620)
!3625 = !DILocation(line: 123, column: 47, scope: !3620)
!3626 = !DILocation(line: 123, column: 19, scope: !3620)
!3627 = !DILocation(line: 124, column: 11, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3620, file: !274, line: 124, column: 11)
!3629 = !DILocation(line: 124, column: 15, scope: !3628)
!3630 = !DILocation(line: 124, column: 11, scope: !3620)
!3631 = !DILocation(line: 130, column: 11, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3628, file: !274, line: 125, column: 9)
!3633 = !DILocation(line: 135, column: 7, scope: !3620)
!3634 = !DILocation(line: 135, column: 12, scope: !3620)
!3635 = !DILocation(line: 135, column: 19, scope: !3620)
!3636 = !DILocation(line: 136, column: 22, scope: !3620)
!3637 = !DILocation(line: 136, column: 7, scope: !3620)
!3638 = !DILocation(line: 136, column: 12, scope: !3620)
!3639 = !DILocation(line: 136, column: 20, scope: !3620)
!3640 = !DILocation(line: 167, column: 7, scope: !3620)
!3641 = !DILocation(line: 169, column: 18, scope: !3558)
!3642 = !DILocation(line: 169, column: 22, scope: !3558)
!3643 = !DILocation(line: 169, column: 30, scope: !3558)
!3644 = !DILocation(line: 169, column: 10, scope: !3558)
!3645 = !DILocation(line: 169, column: 3, scope: !3558)
!3646 = !DILocation(line: 170, column: 1, scope: !3558)
!3647 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !3648, file: !3648, line: 43, type: !3649, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !275, retainedNodes: !45)
!3648 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3649 = !DISubroutineType(types: !74)
!3650 = !DILocation(line: 45, column: 3, scope: !3647)
!3651 = !DILocation(line: 45, column: 9, scope: !3647)
!3652 = !DILocation(line: 46, column: 3, scope: !3647)
!3653 = distinct !DISubprogram(name: "imalloc", scope: !3648, file: !3648, line: 55, type: !3012, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !275, retainedNodes: !45)
!3654 = !DILocalVariable(name: "s", arg: 1, scope: !3653, file: !3648, line: 55, type: !258)
!3655 = !DILocation(line: 55, column: 16, scope: !3653)
!3656 = !DILocation(line: 57, column: 10, scope: !3653)
!3657 = !DILocation(line: 57, column: 12, scope: !3653)
!3658 = !DILocation(line: 57, column: 34, scope: !3653)
!3659 = !DILocation(line: 57, column: 26, scope: !3653)
!3660 = !DILocation(line: 57, column: 39, scope: !3653)
!3661 = !DILocation(line: 57, column: 3, scope: !3653)
!3662 = distinct !DISubprogram(name: "irealloc", scope: !3648, file: !3648, line: 66, type: !3040, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !275, retainedNodes: !45)
!3663 = !DILocalVariable(name: "p", arg: 1, scope: !3662, file: !3648, line: 66, type: !30)
!3664 = !DILocation(line: 66, column: 17, scope: !3662)
!3665 = !DILocalVariable(name: "s", arg: 2, scope: !3662, file: !3648, line: 66, type: !258)
!3666 = !DILocation(line: 66, column: 26, scope: !3662)
!3667 = !DILocation(line: 68, column: 10, scope: !3662)
!3668 = !DILocation(line: 68, column: 12, scope: !3662)
!3669 = !DILocation(line: 68, column: 35, scope: !3662)
!3670 = !DILocation(line: 68, column: 38, scope: !3662)
!3671 = !DILocation(line: 68, column: 26, scope: !3662)
!3672 = !DILocation(line: 68, column: 43, scope: !3662)
!3673 = !DILocation(line: 68, column: 3, scope: !3662)
!3674 = distinct !DISubprogram(name: "icalloc", scope: !3648, file: !3648, line: 77, type: !3078, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !275, retainedNodes: !45)
!3675 = !DILocalVariable(name: "n", arg: 1, scope: !3674, file: !3648, line: 77, type: !258)
!3676 = !DILocation(line: 77, column: 16, scope: !3674)
!3677 = !DILocalVariable(name: "s", arg: 2, scope: !3674, file: !3648, line: 77, type: !258)
!3678 = !DILocation(line: 77, column: 25, scope: !3674)
!3679 = !DILocation(line: 79, column: 18, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3674, file: !3648, line: 79, column: 7)
!3681 = !DILocation(line: 79, column: 16, scope: !3680)
!3682 = !DILocation(line: 79, column: 7, scope: !3674)
!3683 = !DILocation(line: 81, column: 11, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !3648, line: 81, column: 11)
!3685 = distinct !DILexicalBlock(scope: !3680, file: !3648, line: 80, column: 5)
!3686 = !DILocation(line: 81, column: 13, scope: !3684)
!3687 = !DILocation(line: 81, column: 11, scope: !3685)
!3688 = !DILocation(line: 82, column: 16, scope: !3684)
!3689 = !DILocation(line: 82, column: 9, scope: !3684)
!3690 = !DILocation(line: 83, column: 9, scope: !3685)
!3691 = !DILocation(line: 84, column: 5, scope: !3685)
!3692 = !DILocation(line: 85, column: 18, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3674, file: !3648, line: 85, column: 7)
!3694 = !DILocation(line: 85, column: 16, scope: !3693)
!3695 = !DILocation(line: 85, column: 7, scope: !3674)
!3696 = !DILocation(line: 87, column: 11, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !3648, line: 87, column: 11)
!3698 = distinct !DILexicalBlock(scope: !3693, file: !3648, line: 86, column: 5)
!3699 = !DILocation(line: 87, column: 13, scope: !3697)
!3700 = !DILocation(line: 87, column: 11, scope: !3698)
!3701 = !DILocation(line: 88, column: 16, scope: !3697)
!3702 = !DILocation(line: 88, column: 9, scope: !3697)
!3703 = !DILocation(line: 89, column: 9, scope: !3698)
!3704 = !DILocation(line: 90, column: 5, scope: !3698)
!3705 = !DILocation(line: 91, column: 18, scope: !3674)
!3706 = !DILocation(line: 91, column: 21, scope: !3674)
!3707 = !DILocation(line: 91, column: 10, scope: !3674)
!3708 = !DILocation(line: 91, column: 3, scope: !3674)
!3709 = !DILocation(line: 92, column: 1, scope: !3674)
!3710 = distinct !DISubprogram(name: "ireallocarray", scope: !3648, file: !3648, line: 98, type: !3052, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !275, retainedNodes: !45)
!3711 = !DILocalVariable(name: "p", arg: 1, scope: !3710, file: !3648, line: 98, type: !30)
!3712 = !DILocation(line: 98, column: 22, scope: !3710)
!3713 = !DILocalVariable(name: "n", arg: 2, scope: !3710, file: !3648, line: 98, type: !258)
!3714 = !DILocation(line: 98, column: 31, scope: !3710)
!3715 = !DILocalVariable(name: "s", arg: 3, scope: !3710, file: !3648, line: 98, type: !258)
!3716 = !DILocation(line: 98, column: 40, scope: !3710)
!3717 = !DILocation(line: 100, column: 11, scope: !3710)
!3718 = !DILocation(line: 100, column: 13, scope: !3710)
!3719 = !DILocation(line: 100, column: 25, scope: !3710)
!3720 = !DILocation(line: 100, column: 28, scope: !3710)
!3721 = !DILocation(line: 100, column: 30, scope: !3710)
!3722 = !DILocation(line: 101, column: 27, scope: !3710)
!3723 = !DILocation(line: 101, column: 30, scope: !3710)
!3724 = !DILocation(line: 101, column: 33, scope: !3710)
!3725 = !DILocation(line: 101, column: 13, scope: !3710)
!3726 = !DILocation(line: 102, column: 13, scope: !3710)
!3727 = !DILocation(line: 100, column: 3, scope: !3710)
!3728 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !215, file: !215, line: 100, type: !3729, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !45)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!146, !3731, !43, !146, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!3733 = !DILocalVariable(name: "pwc", arg: 1, scope: !3728, file: !215, line: 100, type: !3731)
!3734 = !DILocation(line: 100, column: 21, scope: !3728)
!3735 = !DILocalVariable(name: "s", arg: 2, scope: !3728, file: !215, line: 100, type: !43)
!3736 = !DILocation(line: 100, column: 38, scope: !3728)
!3737 = !DILocalVariable(name: "n", arg: 3, scope: !3728, file: !215, line: 100, type: !146)
!3738 = !DILocation(line: 100, column: 48, scope: !3728)
!3739 = !DILocalVariable(name: "ps", arg: 4, scope: !3728, file: !215, line: 100, type: !3732)
!3740 = !DILocation(line: 100, column: 62, scope: !3728)
!3741 = !DILocation(line: 105, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3728, file: !215, line: 105, column: 7)
!3743 = !DILocation(line: 105, column: 9, scope: !3742)
!3744 = !DILocation(line: 105, column: 7, scope: !3728)
!3745 = !DILocation(line: 107, column: 11, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3742, file: !215, line: 106, column: 5)
!3747 = !DILocation(line: 108, column: 9, scope: !3746)
!3748 = !DILocation(line: 109, column: 9, scope: !3746)
!3749 = !DILocation(line: 110, column: 5, scope: !3746)
!3750 = !DILocation(line: 117, column: 7, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3728, file: !215, line: 117, column: 7)
!3752 = !DILocation(line: 117, column: 10, scope: !3751)
!3753 = !DILocation(line: 117, column: 7, scope: !3728)
!3754 = !DILocation(line: 118, column: 8, scope: !3751)
!3755 = !DILocation(line: 118, column: 5, scope: !3751)
!3756 = !DILocalVariable(name: "ret", scope: !3728, file: !215, line: 130, type: !146)
!3757 = !DILocation(line: 130, column: 10, scope: !3728)
!3758 = !DILocation(line: 130, column: 26, scope: !3728)
!3759 = !DILocation(line: 130, column: 31, scope: !3728)
!3760 = !DILocation(line: 130, column: 34, scope: !3728)
!3761 = !DILocation(line: 130, column: 37, scope: !3728)
!3762 = !DILocation(line: 130, column: 16, scope: !3728)
!3763 = !DILocation(line: 135, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3728, file: !215, line: 135, column: 7)
!3765 = !DILocation(line: 135, column: 11, scope: !3764)
!3766 = !DILocation(line: 135, column: 25, scope: !3764)
!3767 = !DILocation(line: 135, column: 39, scope: !3764)
!3768 = !DILocation(line: 135, column: 30, scope: !3764)
!3769 = !DILocation(line: 135, column: 7, scope: !3728)
!3770 = !DILocation(line: 137, column: 14, scope: !3764)
!3771 = !DILocation(line: 137, column: 5, scope: !3764)
!3772 = !DILocation(line: 138, column: 7, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3728, file: !215, line: 138, column: 7)
!3774 = !DILocation(line: 138, column: 11, scope: !3773)
!3775 = !DILocation(line: 138, column: 7, scope: !3728)
!3776 = !DILocation(line: 139, column: 5, scope: !3773)
!3777 = !DILocation(line: 143, column: 22, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3728, file: !215, line: 143, column: 7)
!3779 = !DILocation(line: 143, column: 19, scope: !3778)
!3780 = !DILocation(line: 143, column: 26, scope: !3778)
!3781 = !DILocation(line: 143, column: 29, scope: !3778)
!3782 = !DILocation(line: 143, column: 31, scope: !3778)
!3783 = !DILocation(line: 143, column: 36, scope: !3778)
!3784 = !DILocation(line: 143, column: 41, scope: !3778)
!3785 = !DILocation(line: 143, column: 7, scope: !3728)
!3786 = !DILocation(line: 145, column: 11, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !215, line: 145, column: 11)
!3788 = distinct !DILexicalBlock(scope: !3778, file: !215, line: 144, column: 5)
!3789 = !DILocation(line: 145, column: 15, scope: !3787)
!3790 = !DILocation(line: 145, column: 11, scope: !3788)
!3791 = !DILocation(line: 146, column: 33, scope: !3787)
!3792 = !DILocation(line: 146, column: 32, scope: !3787)
!3793 = !DILocation(line: 146, column: 16, scope: !3787)
!3794 = !DILocation(line: 146, column: 10, scope: !3787)
!3795 = !DILocation(line: 146, column: 14, scope: !3787)
!3796 = !DILocation(line: 146, column: 9, scope: !3787)
!3797 = !DILocation(line: 147, column: 7, scope: !3788)
!3798 = !DILocation(line: 151, column: 10, scope: !3728)
!3799 = !DILocation(line: 151, column: 3, scope: !3728)
!3800 = !DILocation(line: 286, column: 1, scope: !3728)
!3801 = distinct !DISubprogram(name: "mbszero", scope: !3802, file: !3802, line: 1135, type: !3803, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !45)
!3802 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3803 = !DISubroutineType(types: !3804)
!3804 = !{null, !3805}
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !220, line: 6, baseType: !3807)
!3807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !222, line: 21, baseType: !3808)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !222, line: 13, size: 64, elements: !3809)
!3809 = !{!3810, !3811}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3808, file: !222, line: 15, baseType: !31, size: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3808, file: !222, line: 20, baseType: !3812, size: 32, offset: 32)
!3812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3808, file: !222, line: 16, size: 32, elements: !3813)
!3813 = !{!3814, !3815}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3812, file: !222, line: 18, baseType: !6, size: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3812, file: !222, line: 19, baseType: !231, size: 32)
!3816 = !DILocalVariable(name: "ps", arg: 1, scope: !3801, file: !3802, line: 1135, type: !3805)
!3817 = !DILocation(line: 1135, column: 21, scope: !3801)
!3818 = !DILocation(line: 1137, column: 11, scope: !3801)
!3819 = !DILocation(line: 1137, column: 3, scope: !3801)
!3820 = !DILocation(line: 1138, column: 1, scope: !3801)
!3821 = distinct !DISubprogram(name: "memeq", scope: !2644, file: !2644, line: 974, type: !3822, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !279, retainedNodes: !45)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!36, !3263, !3263, !146}
!3824 = !DILocalVariable(name: "__s1", arg: 1, scope: !3821, file: !2644, line: 974, type: !3263)
!3825 = !DILocation(line: 974, column: 20, scope: !3821)
!3826 = !DILocalVariable(name: "__s2", arg: 2, scope: !3821, file: !2644, line: 974, type: !3263)
!3827 = !DILocation(line: 974, column: 38, scope: !3821)
!3828 = !DILocalVariable(name: "__n", arg: 3, scope: !3821, file: !2644, line: 974, type: !146)
!3829 = !DILocation(line: 974, column: 51, scope: !3821)
!3830 = !DILocation(line: 976, column: 19, scope: !3821)
!3831 = !DILocation(line: 976, column: 25, scope: !3821)
!3832 = !DILocation(line: 976, column: 31, scope: !3821)
!3833 = !DILocation(line: 976, column: 11, scope: !3821)
!3834 = !DILocation(line: 976, column: 10, scope: !3821)
!3835 = !DILocation(line: 976, column: 3, scope: !3821)
!3836 = distinct !DISubprogram(name: "rpl_realloc", scope: !3837, file: !3837, line: 2057, type: !3028, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !281, retainedNodes: !45)
!3837 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3838 = !DILocalVariable(name: "ptr", arg: 1, scope: !3836, file: !3837, line: 2057, type: !30)
!3839 = !DILocation(line: 2057, column: 20, scope: !3836)
!3840 = !DILocalVariable(name: "size", arg: 2, scope: !3836, file: !3837, line: 2057, type: !146)
!3841 = !DILocation(line: 2057, column: 32, scope: !3836)
!3842 = !DILocation(line: 2059, column: 19, scope: !3836)
!3843 = !DILocation(line: 2059, column: 24, scope: !3836)
!3844 = !DILocation(line: 2059, column: 31, scope: !3836)
!3845 = !DILocation(line: 2059, column: 10, scope: !3836)
!3846 = !DILocation(line: 2059, column: 3, scope: !3836)
!3847 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !284, file: !284, line: 27, type: !2965, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !45)
!3848 = !DILocalVariable(name: "ptr", arg: 1, scope: !3847, file: !284, line: 27, type: !30)
!3849 = !DILocation(line: 27, column: 21, scope: !3847)
!3850 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3847, file: !284, line: 27, type: !146)
!3851 = !DILocation(line: 27, column: 33, scope: !3847)
!3852 = !DILocalVariable(name: "size", arg: 3, scope: !3847, file: !284, line: 27, type: !146)
!3853 = !DILocation(line: 27, column: 47, scope: !3847)
!3854 = !DILocalVariable(name: "nbytes", scope: !3847, file: !284, line: 29, type: !146)
!3855 = !DILocation(line: 29, column: 10, scope: !3847)
!3856 = !DILocation(line: 30, column: 7, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3847, file: !284, line: 30, column: 7)
!3858 = !DILocation(line: 30, column: 7, scope: !3847)
!3859 = !DILocation(line: 32, column: 7, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3857, file: !284, line: 31, column: 5)
!3861 = !DILocation(line: 32, column: 13, scope: !3860)
!3862 = !DILocation(line: 33, column: 7, scope: !3860)
!3863 = !DILocation(line: 37, column: 19, scope: !3847)
!3864 = !DILocation(line: 37, column: 24, scope: !3847)
!3865 = !DILocation(line: 37, column: 10, scope: !3847)
!3866 = !DILocation(line: 37, column: 3, scope: !3847)
!3867 = !DILocation(line: 38, column: 1, scope: !3847)
!3868 = distinct !DISubprogram(name: "hard_locale", scope: !287, file: !287, line: 28, type: !3869, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !45)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!36, !31}
!3871 = !DILocalVariable(name: "category", arg: 1, scope: !3868, file: !287, line: 28, type: !31)
!3872 = !DILocation(line: 28, column: 18, scope: !3868)
!3873 = !DILocalVariable(name: "locale", scope: !3868, file: !287, line: 30, type: !3874)
!3874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2056, elements: !3875)
!3875 = !{!3876}
!3876 = !DISubrange(count: 257)
!3877 = !DILocation(line: 30, column: 8, scope: !3868)
!3878 = !DILocation(line: 32, column: 25, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3868, file: !287, line: 32, column: 7)
!3880 = !DILocation(line: 32, column: 35, scope: !3879)
!3881 = !DILocation(line: 32, column: 7, scope: !3879)
!3882 = !DILocation(line: 32, column: 7, scope: !3868)
!3883 = !DILocation(line: 33, column: 5, scope: !3879)
!3884 = !DILocation(line: 35, column: 16, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3868, file: !287, line: 35, column: 7)
!3886 = !DILocation(line: 35, column: 9, scope: !3885)
!3887 = !DILocation(line: 35, column: 29, scope: !3885)
!3888 = !DILocation(line: 35, column: 39, scope: !3885)
!3889 = !DILocation(line: 35, column: 32, scope: !3885)
!3890 = !DILocation(line: 35, column: 7, scope: !3868)
!3891 = !DILocation(line: 36, column: 5, scope: !3885)
!3892 = !DILocation(line: 46, column: 3, scope: !3868)
!3893 = !DILocation(line: 47, column: 1, scope: !3868)
!3894 = distinct !DISubprogram(name: "setlocale_null_r", scope: !289, file: !289, line: 154, type: !3895, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !288, retainedNodes: !45)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!31, !31, !28, !146}
!3897 = !DILocalVariable(name: "category", arg: 1, scope: !3894, file: !289, line: 154, type: !31)
!3898 = !DILocation(line: 154, column: 23, scope: !3894)
!3899 = !DILocalVariable(name: "buf", arg: 2, scope: !3894, file: !289, line: 154, type: !28)
!3900 = !DILocation(line: 154, column: 39, scope: !3894)
!3901 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3894, file: !289, line: 154, type: !146)
!3902 = !DILocation(line: 154, column: 51, scope: !3894)
!3903 = !DILocation(line: 159, column: 37, scope: !3894)
!3904 = !DILocation(line: 159, column: 47, scope: !3894)
!3905 = !DILocation(line: 159, column: 52, scope: !3894)
!3906 = !DILocation(line: 159, column: 10, scope: !3894)
!3907 = !DILocation(line: 159, column: 3, scope: !3894)
!3908 = distinct !DISubprogram(name: "setlocale_null", scope: !289, file: !289, line: 186, type: !3909, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !288, retainedNodes: !45)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!43, !31}
!3911 = !DILocalVariable(name: "category", arg: 1, scope: !3908, file: !289, line: 186, type: !31)
!3912 = !DILocation(line: 186, column: 21, scope: !3908)
!3913 = !DILocation(line: 189, column: 35, scope: !3908)
!3914 = !DILocation(line: 189, column: 10, scope: !3908)
!3915 = !DILocation(line: 189, column: 3, scope: !3908)
!3916 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !291, file: !291, line: 35, type: !3909, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !290, retainedNodes: !45)
!3917 = !DILocalVariable(name: "category", arg: 1, scope: !3916, file: !291, line: 35, type: !31)
!3918 = !DILocation(line: 35, column: 30, scope: !3916)
!3919 = !DILocalVariable(name: "result", scope: !3916, file: !291, line: 37, type: !43)
!3920 = !DILocation(line: 37, column: 15, scope: !3916)
!3921 = !DILocation(line: 37, column: 35, scope: !3916)
!3922 = !DILocation(line: 37, column: 24, scope: !3916)
!3923 = !DILocation(line: 62, column: 10, scope: !3916)
!3924 = !DILocation(line: 62, column: 3, scope: !3916)
!3925 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !291, file: !291, line: 66, type: !3895, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !290, retainedNodes: !45)
!3926 = !DILocalVariable(name: "category", arg: 1, scope: !3925, file: !291, line: 66, type: !31)
!3927 = !DILocation(line: 66, column: 32, scope: !3925)
!3928 = !DILocalVariable(name: "buf", arg: 2, scope: !3925, file: !291, line: 66, type: !28)
!3929 = !DILocation(line: 66, column: 48, scope: !3925)
!3930 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3925, file: !291, line: 66, type: !146)
!3931 = !DILocation(line: 66, column: 60, scope: !3925)
!3932 = !DILocalVariable(name: "result", scope: !3925, file: !291, line: 111, type: !43)
!3933 = !DILocation(line: 111, column: 15, scope: !3925)
!3934 = !DILocation(line: 111, column: 49, scope: !3925)
!3935 = !DILocation(line: 111, column: 24, scope: !3925)
!3936 = !DILocation(line: 113, column: 7, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3925, file: !291, line: 113, column: 7)
!3938 = !DILocation(line: 113, column: 14, scope: !3937)
!3939 = !DILocation(line: 113, column: 7, scope: !3925)
!3940 = !DILocation(line: 116, column: 11, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !291, line: 116, column: 11)
!3942 = distinct !DILexicalBlock(scope: !3937, file: !291, line: 114, column: 5)
!3943 = !DILocation(line: 116, column: 19, scope: !3941)
!3944 = !DILocation(line: 116, column: 11, scope: !3942)
!3945 = !DILocation(line: 120, column: 9, scope: !3941)
!3946 = !DILocation(line: 120, column: 16, scope: !3941)
!3947 = !DILocation(line: 121, column: 7, scope: !3942)
!3948 = !DILocalVariable(name: "length", scope: !3949, file: !291, line: 125, type: !146)
!3949 = distinct !DILexicalBlock(scope: !3937, file: !291, line: 124, column: 5)
!3950 = !DILocation(line: 125, column: 14, scope: !3949)
!3951 = !DILocation(line: 125, column: 31, scope: !3949)
!3952 = !DILocation(line: 125, column: 23, scope: !3949)
!3953 = !DILocation(line: 126, column: 11, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3949, file: !291, line: 126, column: 11)
!3955 = !DILocation(line: 126, column: 20, scope: !3954)
!3956 = !DILocation(line: 126, column: 18, scope: !3954)
!3957 = !DILocation(line: 126, column: 11, scope: !3949)
!3958 = !DILocation(line: 128, column: 19, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3954, file: !291, line: 127, column: 9)
!3960 = !DILocation(line: 128, column: 24, scope: !3959)
!3961 = !DILocation(line: 128, column: 32, scope: !3959)
!3962 = !DILocation(line: 128, column: 39, scope: !3959)
!3963 = !DILocation(line: 128, column: 11, scope: !3959)
!3964 = !DILocation(line: 129, column: 11, scope: !3959)
!3965 = !DILocation(line: 133, column: 15, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !291, line: 133, column: 15)
!3967 = distinct !DILexicalBlock(scope: !3954, file: !291, line: 132, column: 9)
!3968 = !DILocation(line: 133, column: 23, scope: !3966)
!3969 = !DILocation(line: 133, column: 15, scope: !3967)
!3970 = !DILocation(line: 138, column: 23, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3966, file: !291, line: 134, column: 13)
!3972 = !DILocation(line: 138, column: 28, scope: !3971)
!3973 = !DILocation(line: 138, column: 36, scope: !3971)
!3974 = !DILocation(line: 138, column: 44, scope: !3971)
!3975 = !DILocation(line: 138, column: 15, scope: !3971)
!3976 = !DILocation(line: 139, column: 15, scope: !3971)
!3977 = !DILocation(line: 139, column: 19, scope: !3971)
!3978 = !DILocation(line: 139, column: 27, scope: !3971)
!3979 = !DILocation(line: 139, column: 32, scope: !3971)
!3980 = !DILocation(line: 140, column: 13, scope: !3971)
!3981 = !DILocation(line: 141, column: 11, scope: !3967)
!3982 = !DILocation(line: 145, column: 1, scope: !3925)
