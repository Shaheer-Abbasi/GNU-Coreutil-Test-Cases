; ModuleID = 'src/printenv.bc'
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
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@optind = external global i32, align 4
@environ = external global i8**, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !31
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
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
@.str.53 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), align 8, !dbg !52
@file_name = internal global i8* null, align 8, !dbg !57
@ignore_EPIPE = internal global i8 0, align 1, !dbg !62
@.str.56 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.57 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.58 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.59 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !65
@stderr = external global %struct._IO_FILE*, align 8
@.str.60 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !94
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !71
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !90
@.str.1.66 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.67 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.68 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !92
@.str.4.61 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.62 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.63 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !99
@.str.77 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.78 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !105
@.str.81 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.82 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.83 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.84 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.85 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.86 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.87 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.88 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.89 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.90 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.82, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.84, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.85, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.90, i32 0, i32 0), i8* null], align 8, !dbg !116
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !145
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !163
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !177
@nslots = internal global i32 1, align 4, !dbg !184
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !165
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !186
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !151
@.str.10.91 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.93 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.94 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !170
@.str.99 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.100 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.102 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.103 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.104 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.105 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.106 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.107 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.108 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.109 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.110 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.111 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.112 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.113 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.114 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.115 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.120 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.121 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.122 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.123 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.124 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.125 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.126 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !192
@exit_failure = dso_local global i32 1, align 4, !dbg !200
@.str.139 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.137 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.138 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.160 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !206
@.str.171 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.172 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !297 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !300, metadata !DIExpression()), !dbg !301
  %3 = load i32, i32* %2, align 4, !dbg !302
  %4 = icmp ne i32 %3, 0, !dbg !304
  br i1 %4, label %5, label %12, !dbg !305

5:                                                ; preds = %1
  br label %6, !dbg !306

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !307
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !307
  %9 = load i8*, i8** @program_name, align 8, !dbg !307
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !307
  br label %11, !dbg !307

11:                                               ; preds = %6
  br label %21, !dbg !307

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([164 x i8], [164 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !309
  %14 = load i8*, i8** @program_name, align 8, !dbg !311
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !312
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0)) #18, !dbg !313
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %16), !dbg !313
  %17 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !314
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %17), !dbg !314
  %18 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !315
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %18), !dbg !315
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !316
  %20 = call i32 (i8*, ...) @printf(i8* noundef %19, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !317
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !318
  br label %21

21:                                               ; preds = %12, %11
  %22 = load i32, i32* %2, align 4, !dbg !319
  call void @exit(i32 noundef %22) #19, !dbg !320
  unreachable, !dbg !320
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !33 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !321, metadata !DIExpression()), !dbg !322
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !323, metadata !DIExpression()), !dbg !324
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !325
  %15 = icmp eq i32 %14, -1, !dbg !327
  br i1 %15, label %16, label %30, !dbg !328

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !329, metadata !DIExpression()), !dbg !331
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #18, !dbg !332
  store i8* %17, i8** %5, align 8, !dbg !331
  %18 = load i8*, i8** %5, align 8, !dbg !333
  %19 = icmp ne i8* %18, null, !dbg !333
  br i1 %19, label %20, label %27, !dbg !334

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !335
  %22 = load i8, i8* %21, align 1, !dbg !336
  %23 = icmp ne i8 %22, 0, !dbg !336
  br i1 %23, label %24, label %27, !dbg !337

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !338
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)), !dbg !339
  br label %27, !dbg !337

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !337
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !340
  br label %30, !dbg !341

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !342
  %32 = icmp ne i32 %31, 0, !dbg !342
  br i1 %32, label %33, label %37, !dbg !344

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !345
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !345
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !345
  br label %274, !dbg !347

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !348, metadata !DIExpression()), !dbg !349
  store i8 1, i8* %6, align 1, !dbg !349
  call void @llvm.dbg.declare(metadata i8** %7, metadata !350, metadata !DIExpression()), !dbg !351
  %38 = load i8*, i8** %4, align 8, !dbg !352
  %39 = load i8*, i8** %4, align 8, !dbg !353
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #20, !dbg !354
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !355
  store i8* %41, i8** %7, align 8, !dbg !351
  call void @llvm.dbg.declare(metadata i8** %8, metadata !356, metadata !DIExpression()), !dbg !357
  %42 = load i8*, i8** %4, align 8, !dbg !358
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !359
  store i8* %43, i8** %8, align 8, !dbg !357
  %44 = load i8*, i8** %8, align 8, !dbg !360
  %45 = icmp ne i8* %44, null, !dbg !360
  br i1 %45, label %48, label %46, !dbg !362

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !363
  store i8* %47, i8** %8, align 8, !dbg !365
  store i8 0, i8* %6, align 1, !dbg !366
  br label %89, !dbg !367

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !368
  %50 = load i8*, i8** %7, align 8, !dbg !370
  %51 = icmp ne i8* %49, %50, !dbg !371
  br i1 %51, label %52, label %88, !dbg !372

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !373, metadata !DIExpression()), !dbg !375
  %53 = load i8*, i8** %7, align 8, !dbg !376
  store i8* %53, i8** %9, align 8, !dbg !375
  call void @llvm.dbg.declare(metadata i64* %10, metadata !377, metadata !DIExpression()), !dbg !378
  store i64 0, i64* %10, align 8, !dbg !378
  br label %54, !dbg !379

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !380
  %56 = load i8*, i8** %8, align 8, !dbg !381
  %57 = icmp ult i8* %55, %56, !dbg !382
  br i1 %57, label %58, label %61, !dbg !383

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !384
  %60 = icmp ult i64 %59, 2, !dbg !385
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !386
  br i1 %62, label %63, label %82, !dbg !379

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !387
  %65 = load i16*, i16** %64, align 8, !dbg !387
  %66 = load i8*, i8** %9, align 8, !dbg !387
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !387
  store i8* %67, i8** %9, align 8, !dbg !387
  %68 = load i8, i8* %66, align 1, !dbg !387
  %69 = zext i8 %68 to i32, !dbg !387
  %70 = sext i32 %69 to i64, !dbg !387
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !387
  %72 = load i16, i16* %71, align 2, !dbg !387
  %73 = zext i16 %72 to i32, !dbg !387
  %74 = and i32 %73, 8192, !dbg !387
  %75 = icmp ne i32 %74, 0, !dbg !388
  %76 = xor i1 %75, true, !dbg !388
  %77 = xor i1 %76, true, !dbg !389
  %78 = zext i1 %77 to i32, !dbg !389
  %79 = sext i32 %78 to i64, !dbg !389
  %80 = load i64, i64* %10, align 8, !dbg !390
  %81 = add i64 %80, %79, !dbg !390
  store i64 %81, i64* %10, align 8, !dbg !390
  br label %54, !dbg !379, !llvm.loop !391

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !393
  %84 = icmp eq i64 %83, 2, !dbg !395
  br i1 %84, label %85, label %87, !dbg !396

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !397
  store i8* %86, i8** %8, align 8, !dbg !399
  store i8 0, i8* %6, align 1, !dbg !400
  br label %87, !dbg !401

87:                                               ; preds = %85, %82
  br label %88, !dbg !402

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !403, metadata !DIExpression()), !dbg !404
  %90 = load i8*, i8** %8, align 8, !dbg !405
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #20, !dbg !406
  store i64 %91, i64* %11, align 8, !dbg !404
  call void @llvm.dbg.declare(metadata i8** %12, metadata !407, metadata !DIExpression()), !dbg !408
  %92 = load i8*, i8** %8, align 8, !dbg !409
  %93 = load i64, i64* %11, align 8, !dbg !410
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !411
  store i8* %94, i8** %12, align 8, !dbg !408
  br label %95, !dbg !412

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !413
  %97 = load i8, i8* %96, align 1, !dbg !414
  %98 = zext i8 %97 to i32, !dbg !414
  %99 = icmp ne i32 %98, 0, !dbg !414
  br i1 %99, label %100, label %105, !dbg !415

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !416
  %102 = load i8, i8* %101, align 1, !dbg !417
  %103 = zext i8 %102 to i32, !dbg !417
  %104 = icmp ne i32 %103, 10, !dbg !418
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !419
  br i1 %106, label %107, label %164, !dbg !412

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !420
  %109 = load i8, i8* %108, align 1, !dbg !423
  %110 = zext i8 %109 to i32, !dbg !423
  %111 = icmp eq i32 %110, 45, !dbg !424
  br i1 %111, label %112, label %119, !dbg !425

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !426
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !427
  %115 = load i8, i8* %114, align 1, !dbg !428
  %116 = zext i8 %115 to i32, !dbg !428
  %117 = icmp eq i32 %116, 45, !dbg !429
  br i1 %117, label %118, label %119, !dbg !430

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !431
  br label %119, !dbg !432

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !433
  %121 = load i16*, i16** %120, align 8, !dbg !433
  %122 = load i8*, i8** %12, align 8, !dbg !433
  %123 = load i8, i8* %122, align 1, !dbg !433
  %124 = zext i8 %123 to i32, !dbg !433
  %125 = sext i32 %124 to i64, !dbg !433
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !433
  %127 = load i16, i16* %126, align 2, !dbg !433
  %128 = zext i16 %127 to i32, !dbg !433
  %129 = and i32 %128, 8192, !dbg !433
  %130 = icmp ne i32 %129, 0, !dbg !433
  br i1 %130, label %131, label %161, !dbg !435

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !436
  %133 = load i8, i8* %132, align 1, !dbg !439
  %134 = zext i8 %133 to i32, !dbg !439
  %135 = icmp eq i32 %134, 9, !dbg !440
  br i1 %135, label %149, label %136, !dbg !441

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !442
  %138 = load i16*, i16** %137, align 8, !dbg !442
  %139 = load i8*, i8** %12, align 8, !dbg !442
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !442
  %141 = load i8, i8* %140, align 1, !dbg !442
  %142 = zext i8 %141 to i32, !dbg !442
  %143 = sext i32 %142 to i64, !dbg !442
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !442
  %145 = load i16, i16* %144, align 2, !dbg !442
  %146 = zext i16 %145 to i32, !dbg !442
  %147 = and i32 %146, 8192, !dbg !442
  %148 = icmp ne i32 %147, 0, !dbg !442
  br i1 %148, label %149, label %150, !dbg !443

149:                                              ; preds = %136, %131
  br label %164, !dbg !444

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !445
  %152 = trunc i8 %151 to i1, !dbg !445
  br i1 %152, label %160, label %153, !dbg !447

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !448
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !449
  %156 = load i8, i8* %155, align 1, !dbg !450
  %157 = zext i8 %156 to i32, !dbg !450
  %158 = icmp ne i32 %157, 45, !dbg !451
  br i1 %158, label %159, label %160, !dbg !452

159:                                              ; preds = %153
  br label %164, !dbg !453

160:                                              ; preds = %153, %150
  br label %161, !dbg !454

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !455
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !455
  store i8* %163, i8** %12, align 8, !dbg !455
  br label %95, !dbg !412, !llvm.loop !456

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !458
  %166 = load i8*, i8** %7, align 8, !dbg !458
  %167 = load i8*, i8** %4, align 8, !dbg !458
  %168 = ptrtoint i8* %166 to i64, !dbg !458
  %169 = ptrtoint i8* %167 to i64, !dbg !458
  %170 = sub i64 %168, %169, !dbg !458
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !458
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !458
  call void @llvm.dbg.declare(metadata i8** %13, metadata !459, metadata !DIExpression()), !dbg !460
  %173 = load i8*, i8** %3, align 8, !dbg !461
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)), !dbg !462
  br i1 %174, label %175, label %176, !dbg !462

175:                                              ; preds = %164
  br label %232, !dbg !462

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !463
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)), !dbg !464
  br i1 %178, label %179, label %180, !dbg !464

179:                                              ; preds = %176
  br label %230, !dbg !464

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !465
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)), !dbg !466
  br i1 %182, label %183, label %184, !dbg !466

183:                                              ; preds = %180
  br label %228, !dbg !466

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !467
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0)), !dbg !468
  br i1 %186, label %187, label %188, !dbg !468

187:                                              ; preds = %184
  br label %226, !dbg !468

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !469
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0)), !dbg !470
  br i1 %190, label %191, label %192, !dbg !470

191:                                              ; preds = %188
  br label %224, !dbg !470

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !471
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)), !dbg !472
  br i1 %194, label %195, label %196, !dbg !472

195:                                              ; preds = %192
  br label %222, !dbg !472

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !473
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)), !dbg !474
  br i1 %198, label %199, label %200, !dbg !474

199:                                              ; preds = %196
  br label %220, !dbg !474

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !475
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)), !dbg !476
  br i1 %202, label %203, label %204, !dbg !476

203:                                              ; preds = %200
  br label %218, !dbg !476

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !477
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)), !dbg !478
  br i1 %206, label %207, label %208, !dbg !478

207:                                              ; preds = %204
  br label %216, !dbg !478

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !479
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)), !dbg !480
  br i1 %210, label %211, label %212, !dbg !480

211:                                              ; preds = %208
  br label %214, !dbg !480

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !481
  br label %214, !dbg !480

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !480
  br label %216, !dbg !478

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !478
  br label %218, !dbg !476

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !476
  br label %220, !dbg !474

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !474
  br label %222, !dbg !472

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !472
  br label %224, !dbg !470

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !470
  br label %226, !dbg !468

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !468
  br label %228, !dbg !466

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !466
  br label %230, !dbg !464

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !464
  br label %232, !dbg !462

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !462
  store i8* %233, i8** %13, align 8, !dbg !460
  %234 = load i8*, i8** %8, align 8, !dbg !482
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i64 noundef 6) #20, !dbg !482
  %236 = icmp eq i32 %235, 0, !dbg !482
  br i1 %236, label %241, label %237, !dbg !484

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !485
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i64 noundef 9) #20, !dbg !485
  %240 = icmp eq i32 %239, 0, !dbg !485
  br i1 %240, label %241, label %248, !dbg !486

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !487
  %243 = load i8*, i8** %13, align 8, !dbg !489
  %244 = load i64, i64* %11, align 8, !dbg !490
  %245 = trunc i64 %244 to i32, !dbg !491
  %246 = load i8*, i8** %8, align 8, !dbg !492
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !493
  br label %254, !dbg !494

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !495
  %250 = load i64, i64* %11, align 8, !dbg !497
  %251 = trunc i64 %250 to i32, !dbg !498
  %252 = load i8*, i8** %8, align 8, !dbg !499
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !500
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !501
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !501
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !502
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !502
  %259 = load i8*, i8** %7, align 8, !dbg !503
  %260 = load i8*, i8** %12, align 8, !dbg !503
  %261 = load i8*, i8** %7, align 8, !dbg !503
  %262 = ptrtoint i8* %260 to i64, !dbg !503
  %263 = ptrtoint i8* %261 to i64, !dbg !503
  %264 = sub i64 %262, %263, !dbg !503
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !503
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !503
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !504
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !504
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !505
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !505
  %271 = load i8*, i8** %12, align 8, !dbg !506
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !506
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !506
  br label %274, !dbg !507

274:                                              ; preds = %254, %33
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !508 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !511, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !513, metadata !DIExpression()), !dbg !522
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !522
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !522
  call void @llvm.dbg.declare(metadata i8** %4, metadata !523, metadata !DIExpression()), !dbg !524
  %9 = load i8*, i8** %2, align 8, !dbg !525
  store i8* %9, i8** %4, align 8, !dbg !524
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !526, metadata !DIExpression()), !dbg !528
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !529
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !528
  br label %11, !dbg !530

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !531
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !532
  %14 = load i8*, i8** %13, align 8, !dbg !532
  %15 = icmp ne i8* %14, null, !dbg !531
  br i1 %15, label %16, label %23, !dbg !533

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !534
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !535
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !536
  %20 = load i8*, i8** %19, align 8, !dbg !536
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !537
  %22 = xor i1 %21, true, !dbg !538
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !539
  br i1 %24, label %25, label %28, !dbg !530

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !540
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !540
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !540
  br label %11, !dbg !530, !llvm.loop !541

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !542
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !544
  %31 = load i8*, i8** %30, align 8, !dbg !544
  %32 = icmp ne i8* %31, null, !dbg !542
  br i1 %32, label %33, label %37, !dbg !545

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !546
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !547
  %36 = load i8*, i8** %35, align 8, !dbg !547
  store i8* %36, i8** %4, align 8, !dbg !548
  br label %37, !dbg !549

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !550
  call void @llvm.dbg.declare(metadata i8** %6, metadata !551, metadata !DIExpression()), !dbg !552
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !553
  store i8* %38, i8** %6, align 8, !dbg !552
  %39 = load i8*, i8** %6, align 8, !dbg !554
  %40 = icmp ne i8* %39, null, !dbg !554
  br i1 %40, label %41, label %49, !dbg !556

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !557
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i64 noundef 3) #20, !dbg !557
  %44 = icmp ne i32 %43, 0, !dbg !557
  br i1 %44, label %45, label %49, !dbg !558

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.46, i64 0, i64 0)) #18, !dbg !559
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !559
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !559
  br label %49, !dbg !561

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !562, metadata !DIExpression()), !dbg !563
  %50 = load i8*, i8** %2, align 8, !dbg !564
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)), !dbg !565
  br i1 %51, label %52, label %53, !dbg !565

52:                                               ; preds = %49
  br label %55, !dbg !565

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !566
  br label %55, !dbg !565

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !565
  store i8* %56, i8** %7, align 8, !dbg !563
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0)) #18, !dbg !567
  %58 = load i8*, i8** %7, align 8, !dbg !568
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef %58), !dbg !569
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0)) #18, !dbg !570
  %61 = load i8*, i8** %4, align 8, !dbg !571
  %62 = load i8*, i8** %4, align 8, !dbg !572
  %63 = load i8*, i8** %2, align 8, !dbg !573
  %64 = icmp eq i8* %62, %63, !dbg !574
  %65 = zext i1 %64 to i64, !dbg !572
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !572
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !575
  ret void, !dbg !576
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare i8* @setlocale(i32 noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #7

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !577 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !581, metadata !DIExpression()), !dbg !582
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !583, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.declare(metadata i8* %6, metadata !585, metadata !DIExpression()), !dbg !586
  store i8 0, i8* %6, align 1, !dbg !586
  %16 = load i8**, i8*** %5, align 8, !dbg !587
  %17 = getelementptr inbounds i8*, i8** %16, i64 0, !dbg !587
  %18 = load i8*, i8** %17, align 8, !dbg !587
  call void @set_program_name(i8* noundef %18), !dbg !588
  %19 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !589
  %20 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !590
  %21 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !591
  call void @initialize_exit_failure(i32 noundef 2), !dbg !592
  %22 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !593
  call void @llvm.dbg.declare(metadata i32* %7, metadata !594, metadata !DIExpression()), !dbg !595
  br label %23, !dbg !596

23:                                               ; preds = %38, %2
  %24 = load i32, i32* %4, align 4, !dbg !597
  %25 = load i8**, i8*** %5, align 8, !dbg !598
  %26 = call i32 @getopt_long(i32 noundef %24, i8** noundef %25, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18, !dbg !599
  store i32 %26, i32* %7, align 4, !dbg !600
  %27 = icmp ne i32 %26, -1, !dbg !601
  br i1 %27, label %28, label %39, !dbg !596

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4, !dbg !602
  switch i32 %29, label %37 [
    i32 48, label %30
    i32 -2, label %31
    i32 -3, label %32
  ], !dbg !604

30:                                               ; preds = %28
  store i8 1, i8* %6, align 1, !dbg !605
  br label %38, !dbg !607

31:                                               ; preds = %28
  call void @usage(i32 noundef 0) #22, !dbg !608
  unreachable, !dbg !608

32:                                               ; preds = %28
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !609
  %34 = load i8*, i8** @Version, align 8, !dbg !609
  %35 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)), !dbg !609
  %36 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)), !dbg !609
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef %34, i8* noundef %35, i8* noundef %36, i8* noundef null), !dbg !609
  call void @exit(i32 noundef 0) #19, !dbg !609
  unreachable, !dbg !609

37:                                               ; preds = %28
  call void @usage(i32 noundef 2) #22, !dbg !610
  unreachable, !dbg !610

38:                                               ; preds = %30
  br label %23, !dbg !596, !llvm.loop !611

39:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata i8* %8, metadata !613, metadata !DIExpression()), !dbg !614
  %40 = load i32, i32* @optind, align 4, !dbg !615
  %41 = load i32, i32* %4, align 4, !dbg !617
  %42 = icmp sge i32 %40, %41, !dbg !618
  br i1 %42, label %43, label %61, !dbg !619

43:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !620, metadata !DIExpression()), !dbg !623
  %44 = load i8**, i8*** @environ, align 8, !dbg !624
  store i8** %44, i8*** %9, align 8, !dbg !623
  br label %45, !dbg !625

45:                                               ; preds = %57, %43
  %46 = load i8**, i8*** %9, align 8, !dbg !626
  %47 = load i8*, i8** %46, align 8, !dbg !628
  %48 = icmp ne i8* %47, null, !dbg !629
  br i1 %48, label %49, label %60, !dbg !630

49:                                               ; preds = %45
  %50 = load i8**, i8*** %9, align 8, !dbg !631
  %51 = load i8*, i8** %50, align 8, !dbg !632
  %52 = load i8, i8* %6, align 1, !dbg !633
  %53 = trunc i8 %52 to i1, !dbg !633
  %54 = zext i1 %53 to i64, !dbg !633
  %55 = select i1 %53, i32 0, i32 10, !dbg !633
  %56 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef %51, i32 noundef %55), !dbg !634
  br label %57, !dbg !634

57:                                               ; preds = %49
  %58 = load i8**, i8*** %9, align 8, !dbg !635
  %59 = getelementptr inbounds i8*, i8** %58, i32 1, !dbg !635
  store i8** %59, i8*** %9, align 8, !dbg !635
  br label %45, !dbg !636, !llvm.loop !637

60:                                               ; preds = %45
  store i8 1, i8* %8, align 1, !dbg !639
  br label %151, !dbg !640

61:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %10, metadata !641, metadata !DIExpression()), !dbg !643
  store i32 0, i32* %10, align 4, !dbg !643
  call void @llvm.dbg.declare(metadata i32* %11, metadata !644, metadata !DIExpression()), !dbg !646
  %62 = load i32, i32* @optind, align 4, !dbg !647
  store i32 %62, i32* %11, align 4, !dbg !646
  br label %63, !dbg !648

63:                                               ; preds = %141, %61
  %64 = load i32, i32* %11, align 4, !dbg !649
  %65 = load i32, i32* %4, align 4, !dbg !651
  %66 = icmp slt i32 %64, %65, !dbg !652
  br i1 %66, label %67, label %144, !dbg !653

67:                                               ; preds = %63
  call void @llvm.dbg.declare(metadata i8* %12, metadata !654, metadata !DIExpression()), !dbg !656
  store i8 0, i8* %12, align 1, !dbg !656
  %68 = load i8**, i8*** %5, align 8, !dbg !657
  %69 = load i32, i32* %11, align 4, !dbg !659
  %70 = sext i32 %69 to i64, !dbg !657
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70, !dbg !657
  %72 = load i8*, i8** %71, align 8, !dbg !657
  %73 = call i8* @strchr(i8* noundef %72, i32 noundef 61) #20, !dbg !660
  %74 = icmp ne i8* %73, null, !dbg !660
  br i1 %74, label %75, label %76, !dbg !661

75:                                               ; preds = %67
  br label %141, !dbg !662

76:                                               ; preds = %67
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !663, metadata !DIExpression()), !dbg !665
  %77 = load i8**, i8*** @environ, align 8, !dbg !666
  store i8** %77, i8*** %13, align 8, !dbg !665
  br label %78, !dbg !667

78:                                               ; preds = %132, %76
  %79 = load i8**, i8*** %13, align 8, !dbg !668
  %80 = load i8*, i8** %79, align 8, !dbg !670
  %81 = icmp ne i8* %80, null, !dbg !671
  br i1 %81, label %82, label %135, !dbg !671

82:                                               ; preds = %78
  call void @llvm.dbg.declare(metadata i8** %14, metadata !672, metadata !DIExpression()), !dbg !674
  %83 = load i8**, i8*** %13, align 8, !dbg !675
  %84 = load i8*, i8** %83, align 8, !dbg !676
  store i8* %84, i8** %14, align 8, !dbg !674
  call void @llvm.dbg.declare(metadata i8** %15, metadata !677, metadata !DIExpression()), !dbg !678
  %85 = load i8**, i8*** %5, align 8, !dbg !679
  %86 = load i32, i32* %11, align 4, !dbg !680
  %87 = sext i32 %86 to i64, !dbg !679
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87, !dbg !679
  %89 = load i8*, i8** %88, align 8, !dbg !679
  store i8* %89, i8** %15, align 8, !dbg !678
  br label %90, !dbg !681

90:                                               ; preds = %130, %82
  %91 = load i8*, i8** %14, align 8, !dbg !682
  %92 = load i8, i8* %91, align 1, !dbg !683
  %93 = zext i8 %92 to i32, !dbg !683
  %94 = icmp ne i32 %93, 0, !dbg !684
  br i1 %94, label %95, label %110, !dbg !685

95:                                               ; preds = %90
  %96 = load i8*, i8** %15, align 8, !dbg !686
  %97 = load i8, i8* %96, align 1, !dbg !687
  %98 = zext i8 %97 to i32, !dbg !687
  %99 = icmp ne i32 %98, 0, !dbg !688
  br i1 %99, label %100, label %110, !dbg !689

100:                                              ; preds = %95
  %101 = load i8*, i8** %14, align 8, !dbg !690
  %102 = getelementptr inbounds i8, i8* %101, i32 1, !dbg !690
  store i8* %102, i8** %14, align 8, !dbg !690
  %103 = load i8, i8* %101, align 1, !dbg !691
  %104 = zext i8 %103 to i32, !dbg !691
  %105 = load i8*, i8** %15, align 8, !dbg !692
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !692
  store i8* %106, i8** %15, align 8, !dbg !692
  %107 = load i8, i8* %105, align 1, !dbg !693
  %108 = zext i8 %107 to i32, !dbg !693
  %109 = icmp eq i32 %104, %108, !dbg !694
  br label %110

110:                                              ; preds = %100, %95, %90
  %111 = phi i1 [ false, %95 ], [ false, %90 ], [ %109, %100 ], !dbg !695
  br i1 %111, label %112, label %131, !dbg !681

112:                                              ; preds = %110
  %113 = load i8*, i8** %14, align 8, !dbg !696
  %114 = load i8, i8* %113, align 1, !dbg !699
  %115 = zext i8 %114 to i32, !dbg !699
  %116 = icmp eq i32 %115, 61, !dbg !700
  br i1 %116, label %117, label %130, !dbg !701

117:                                              ; preds = %112
  %118 = load i8*, i8** %15, align 8, !dbg !702
  %119 = load i8, i8* %118, align 1, !dbg !703
  %120 = zext i8 %119 to i32, !dbg !703
  %121 = icmp eq i32 %120, 0, !dbg !704
  br i1 %121, label %122, label %130, !dbg !705

122:                                              ; preds = %117
  %123 = load i8*, i8** %14, align 8, !dbg !706
  %124 = getelementptr inbounds i8, i8* %123, i64 1, !dbg !708
  %125 = load i8, i8* %6, align 1, !dbg !709
  %126 = trunc i8 %125 to i1, !dbg !709
  %127 = zext i1 %126 to i64, !dbg !709
  %128 = select i1 %126, i32 0, i32 10, !dbg !709
  %129 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef %124, i32 noundef %128), !dbg !710
  store i8 1, i8* %12, align 1, !dbg !711
  br label %131, !dbg !712

130:                                              ; preds = %117, %112
  br label %90, !dbg !681, !llvm.loop !713

131:                                              ; preds = %122, %110
  br label %132, !dbg !715

132:                                              ; preds = %131
  %133 = load i8**, i8*** %13, align 8, !dbg !716
  %134 = getelementptr inbounds i8*, i8** %133, i32 1, !dbg !716
  store i8** %134, i8*** %13, align 8, !dbg !716
  br label %78, !dbg !717, !llvm.loop !718

135:                                              ; preds = %78
  %136 = load i8, i8* %12, align 1, !dbg !720
  %137 = trunc i8 %136 to i1, !dbg !720
  %138 = zext i1 %137 to i32, !dbg !720
  %139 = load i32, i32* %10, align 4, !dbg !721
  %140 = add nsw i32 %139, %138, !dbg !721
  store i32 %140, i32* %10, align 4, !dbg !721
  br label %141, !dbg !722

141:                                              ; preds = %135, %75
  %142 = load i32, i32* %11, align 4, !dbg !723
  %143 = add nsw i32 %142, 1, !dbg !723
  store i32 %143, i32* %11, align 4, !dbg !723
  br label %63, !dbg !724, !llvm.loop !725

144:                                              ; preds = %63
  %145 = load i32, i32* %10, align 4, !dbg !727
  %146 = load i32, i32* %4, align 4, !dbg !728
  %147 = load i32, i32* @optind, align 4, !dbg !729
  %148 = sub nsw i32 %146, %147, !dbg !730
  %149 = icmp eq i32 %145, %148, !dbg !731
  %150 = zext i1 %149 to i8, !dbg !732
  store i8 %150, i8* %8, align 1, !dbg !732
  br label %151

151:                                              ; preds = %144, %60
  %152 = load i8, i8* %8, align 1, !dbg !733
  %153 = trunc i8 %152 to i1, !dbg !733
  %154 = zext i1 %153 to i64, !dbg !733
  %155 = select i1 %153, i32 0, i32 1, !dbg !733
  ret i32 %155, !dbg !734
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_exit_failure(i32 noundef %0) #4 !dbg !735 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !736, metadata !DIExpression()), !dbg !737
  %3 = load i32, i32* %2, align 4, !dbg !738
  %4 = icmp ne i32 %3, 1, !dbg !740
  br i1 %4, label %5, label %7, !dbg !741

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !742
  store volatile i32 %6, i32* @exit_failure, align 4, !dbg !743
  br label %7, !dbg !744

7:                                                ; preds = %5, %1
  ret void, !dbg !745
}

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !746 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !747, metadata !DIExpression()), !dbg !748
  %3 = load i8*, i8** %2, align 8, !dbg !749
  store i8* %3, i8** @file_name, align 8, !dbg !750
  ret void, !dbg !751
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !752 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !755, metadata !DIExpression()), !dbg !756
  %4 = load i8, i8* %2, align 1, !dbg !757
  %5 = trunc i8 %4 to i1, !dbg !757
  %6 = zext i1 %5 to i8, !dbg !758
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !758
  ret void, !dbg !759
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !760 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !761
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !763
  %4 = icmp ne i32 %3, 0, !dbg !764
  br i1 %4, label %5, label %28, !dbg !765

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !766
  %7 = trunc i8 %6 to i1, !dbg !766
  br i1 %7, label %8, label %12, !dbg !767

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !768
  %10 = load i32, i32* %9, align 4, !dbg !768
  %11 = icmp eq i32 %10, 32, !dbg !769
  br i1 %11, label %28, label %12, !dbg !770

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !771, metadata !DIExpression()), !dbg !773
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.57, i64 0, i64 0)) #18, !dbg !774
  store i8* %13, i8** %1, align 8, !dbg !773
  %14 = load i8*, i8** @file_name, align 8, !dbg !775
  %15 = icmp ne i8* %14, null, !dbg !775
  br i1 %15, label %16, label %22, !dbg !777

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !778
  %18 = load i32, i32* %17, align 4, !dbg !778
  %19 = load i8*, i8** @file_name, align 8, !dbg !778
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !778
  %21 = load i8*, i8** %1, align 8, !dbg !778
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.58, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !778
  br label %26, !dbg !778

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !779
  %24 = load i32, i32* %23, align 4, !dbg !779
  %25 = load i8*, i8** %1, align 8, !dbg !779
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.59, i64 0, i64 0), i8* noundef %25), !dbg !779
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !780
  call void @_exit(i32 noundef %27) #22, !dbg !781
  unreachable, !dbg !781

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !782
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !784
  %31 = icmp ne i32 %30, 0, !dbg !785
  br i1 %31, label %32, label %34, !dbg !786

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !787
  call void @_exit(i32 noundef %33) #22, !dbg !788
  unreachable, !dbg !788

34:                                               ; preds = %28
  ret void, !dbg !789
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !790 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !793, metadata !DIExpression()), !dbg !794
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !795, metadata !DIExpression()), !dbg !794
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !796, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !797, metadata !DIExpression()), !dbg !794
  call void @flush_stdout(), !dbg !798
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !799
  %10 = icmp ne void ()* %9, null, !dbg !799
  br i1 %10, label %11, label %13, !dbg !801

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !802
  call void %12(), !dbg !803
  br label %17, !dbg !803

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !804
  %15 = call i8* @getprogname() #20, !dbg !806
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i8* noundef %15), !dbg !807
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !808
  %19 = load i32, i32* %6, align 4, !dbg !808
  %20 = load i8*, i8** %7, align 8, !dbg !808
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !808
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !808
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !808
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !808
  ret void, !dbg !809
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !810 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !811, metadata !DIExpression()), !dbg !812
  store i32 1, i32* %1, align 4, !dbg !813
  %2 = load i32, i32* %1, align 4, !dbg !814
  %3 = icmp sle i32 0, %2, !dbg !816
  br i1 %3, label %4, label %11, !dbg !817

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !818
  %6 = call i32 @is_open(i32 noundef %5), !dbg !819
  %7 = icmp ne i32 %6, 0, !dbg !819
  br i1 %7, label %8, label %11, !dbg !820

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !821
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !821
  br label %11, !dbg !821

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !822
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !823 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !824, metadata !DIExpression()), !dbg !825
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !826, metadata !DIExpression()), !dbg !825
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !827, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !828, metadata !DIExpression()), !dbg !825
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !829
  %10 = load i8*, i8** %7, align 8, !dbg !830
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !831
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !831
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !831
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !831
  %14 = load i32, i32* @error_message_count, align 4, !dbg !832
  %15 = add i32 %14, 1, !dbg !832
  store i32 %15, i32* @error_message_count, align 4, !dbg !832
  %16 = load i32, i32* %6, align 4, !dbg !833
  %17 = icmp ne i32 %16, 0, !dbg !833
  br i1 %17, label %18, label %20, !dbg !835

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !836
  call void @print_errno_message(i32 noundef %19), !dbg !837
  br label %20, !dbg !837

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !838
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !838
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !839
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !839
  %25 = load i32, i32* %5, align 4, !dbg !840
  %26 = icmp ne i32 %25, 0, !dbg !840
  br i1 %26, label %27, label %29, !dbg !842

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !843
  call void @exit(i32 noundef %28) #19, !dbg !844
  unreachable, !dbg !844

29:                                               ; preds = %20
  ret void, !dbg !845
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !846 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !847, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.declare(metadata i8** %3, metadata !849, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !851, metadata !DIExpression()), !dbg !855
  %5 = load i32, i32* %2, align 4, !dbg !856
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !857
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !858
  store i8* %7, i8** %3, align 8, !dbg !859
  %8 = load i8*, i8** %3, align 8, !dbg !860
  %9 = icmp ne i8* %8, null, !dbg !860
  br i1 %9, label %12, label %10, !dbg !862

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.62, i64 0, i64 0)) #18, !dbg !863
  store i8* %11, i8** %3, align 8, !dbg !864
  br label %12, !dbg !865

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !866
  %14 = load i8*, i8** %3, align 8, !dbg !867
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.63, i64 0, i64 0), i8* noundef %14), !dbg !868
  ret void, !dbg !869
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !870 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !873, metadata !DIExpression()), !dbg !874
  %3 = load i32, i32* %2, align 4, !dbg !875
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !876
  %5 = icmp sle i32 0, %4, !dbg !877
  %6 = zext i1 %5 to i32, !dbg !877
  ret i32 %6, !dbg !878
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !879 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !882, metadata !DIExpression()), !dbg !883
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !884, metadata !DIExpression()), !dbg !885
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !886, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !888, metadata !DIExpression()), !dbg !889
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !890
  call void @llvm.va_start(i8* %9), !dbg !890
  %10 = load i32, i32* %4, align 4, !dbg !891
  %11 = load i32, i32* %5, align 4, !dbg !891
  %12 = load i8*, i8** %6, align 8, !dbg !891
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !891
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !891
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !891
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !891
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !892
  call void @llvm.va_end(i8* %15), !dbg !892
  ret void, !dbg !893
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !73 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !894, metadata !DIExpression()), !dbg !895
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !896, metadata !DIExpression()), !dbg !895
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !897, metadata !DIExpression()), !dbg !895
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !898, metadata !DIExpression()), !dbg !895
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !899, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !900, metadata !DIExpression()), !dbg !895
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !901
  %14 = icmp ne i32 %13, 0, !dbg !901
  br i1 %14, label %15, label %38, !dbg !903

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !904
  %17 = load i32, i32* %10, align 4, !dbg !907
  %18 = icmp eq i32 %16, %17, !dbg !908
  br i1 %18, label %19, label %35, !dbg !909

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !910
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !911
  %22 = icmp eq i8* %20, %21, !dbg !912
  br i1 %22, label %34, label %23, !dbg !913

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !914
  %25 = icmp ne i8* %24, null, !dbg !915
  br i1 %25, label %26, label %35, !dbg !916

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !917
  %28 = icmp ne i8* %27, null, !dbg !918
  br i1 %28, label %29, label %35, !dbg !919

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !920
  %31 = load i8*, i8** %9, align 8, !dbg !921
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !922
  %33 = icmp eq i32 %32, 0, !dbg !923
  br i1 %33, label %34, label %35, !dbg !924

34:                                               ; preds = %29, %19
  br label %61, !dbg !925

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !926
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !927
  %37 = load i32, i32* %10, align 4, !dbg !928
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !929
  br label %38, !dbg !930

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !931
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !932
  %40 = icmp ne void ()* %39, null, !dbg !932
  br i1 %40, label %41, label %43, !dbg !934

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !935
  call void %42(), !dbg !936
  br label %47, !dbg !936

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !937
  %45 = call i8* @getprogname() #20, !dbg !939
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.66, i64 0, i64 0), i8* noundef %45), !dbg !940
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !941
  %49 = load i8*, i8** %9, align 8, !dbg !942
  %50 = icmp ne i8* %49, null, !dbg !943
  %51 = zext i1 %50 to i64, !dbg !942
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.68, i64 0, i64 0), !dbg !942
  %53 = load i8*, i8** %9, align 8, !dbg !944
  %54 = load i32, i32* %10, align 4, !dbg !945
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !946
  %56 = load i32, i32* %7, align 4, !dbg !947
  %57 = load i32, i32* %8, align 4, !dbg !947
  %58 = load i8*, i8** %11, align 8, !dbg !947
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !947
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !947
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !947
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !947
  br label %61, !dbg !948

61:                                               ; preds = %47, %34
  ret void, !dbg !948
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !949 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !952, metadata !DIExpression()), !dbg !953
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !954, metadata !DIExpression()), !dbg !955
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !956, metadata !DIExpression()), !dbg !957
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !958, metadata !DIExpression()), !dbg !959
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !960, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !962, metadata !DIExpression()), !dbg !963
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !964
  call void @llvm.va_start(i8* %13), !dbg !964
  %14 = load i32, i32* %6, align 4, !dbg !965
  %15 = load i32, i32* %7, align 4, !dbg !965
  %16 = load i8*, i8** %8, align 8, !dbg !965
  %17 = load i32, i32* %9, align 4, !dbg !965
  %18 = load i8*, i8** %10, align 8, !dbg !965
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !965
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !965
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !965
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !965
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !966
  call void @llvm.va_end(i8* %21), !dbg !966
  ret void, !dbg !967
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !968 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !971
  ret i8* %1, !dbg !972
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !973 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !974, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.declare(metadata i8** %3, metadata !976, metadata !DIExpression()), !dbg !977
  %5 = load i8*, i8** %2, align 8, !dbg !978
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !979
  store i8* %6, i8** %3, align 8, !dbg !977
  call void @llvm.dbg.declare(metadata i8** %4, metadata !980, metadata !DIExpression()), !dbg !981
  %7 = load i8*, i8** %3, align 8, !dbg !982
  %8 = icmp ne i8* %7, null, !dbg !982
  br i1 %8, label %9, label %12, !dbg !982

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !983
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !984
  br label %14, !dbg !982

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !985
  br label %14, !dbg !982

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !982
  store i8* %15, i8** %4, align 8, !dbg !981
  %16 = load i8*, i8** %4, align 8, !dbg !986
  %17 = load i8*, i8** %2, align 8, !dbg !988
  %18 = ptrtoint i8* %16 to i64, !dbg !989
  %19 = ptrtoint i8* %17 to i64, !dbg !989
  %20 = sub i64 %18, %19, !dbg !989
  %21 = icmp sle i64 7, %20, !dbg !990
  br i1 %21, label %22, label %36, !dbg !991

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !992
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !993
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0), i64 noundef 7), !dbg !994
  br i1 %25, label %26, label %36, !dbg !995

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !996
  store i8* %27, i8** %2, align 8, !dbg !998
  %28 = load i8*, i8** %4, align 8, !dbg !999
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.78, i64 0, i64 0), i64 noundef 3) #20, !dbg !1001
  %30 = icmp eq i32 %29, 0, !dbg !1002
  br i1 %30, label %31, label %35, !dbg !1003

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1004
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1004
  store i8* %33, i8** %4, align 8, !dbg !1004
  %34 = load i8*, i8** %4, align 8, !dbg !1006
  store i8* %34, i8** %2, align 8, !dbg !1007
  br label %35, !dbg !1008

35:                                               ; preds = %31, %26
  br label %36, !dbg !1009

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1010
  store i8* %37, i8** @program_name, align 8, !dbg !1011
  %38 = load i8*, i8** %2, align 8, !dbg !1012
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1013
  %39 = load i8*, i8** %4, align 8, !dbg !1014
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1015
  ret void, !dbg !1016
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !107 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1017, metadata !DIExpression()), !dbg !1018
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1019, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1021, metadata !DIExpression()), !dbg !1022
  %9 = load i8*, i8** %4, align 8, !dbg !1023
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1024
  store i8* %10, i8** %6, align 8, !dbg !1022
  %11 = load i8*, i8** %6, align 8, !dbg !1025
  %12 = load i8*, i8** %4, align 8, !dbg !1027
  %13 = icmp ne i8* %11, %12, !dbg !1028
  br i1 %13, label %14, label %16, !dbg !1029

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1030
  store i8* %15, i8** %3, align 8, !dbg !1031
  br label %26, !dbg !1031

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1032, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1039, metadata !DIExpression()), !dbg !1050
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1051
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1052
  %18 = icmp eq i64 %17, 2, !dbg !1054
  br i1 %18, label %19, label %24, !dbg !1055

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1056
  %21 = icmp eq i32 %20, 2047, !dbg !1057
  br i1 %21, label %22, label %24, !dbg !1058

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1059
  store i8* %23, i8** %3, align 8, !dbg !1060
  br label %26, !dbg !1060

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1061
  store i8* %25, i8** %3, align 8, !dbg !1062
  br label %26, !dbg !1062

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1063
  ret i8* %27, !dbg !1063
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1064 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1068, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1070, metadata !DIExpression()), !dbg !1071
  %5 = call i32* @__errno_location() #21, !dbg !1072
  %6 = load i32, i32* %5, align 4, !dbg !1072
  store i32 %6, i32* %3, align 4, !dbg !1071
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1073, metadata !DIExpression()), !dbg !1074
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1075
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1075
  br i1 %8, label %9, label %11, !dbg !1075

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1076
  br label %12, !dbg !1075

11:                                               ; preds = %1
  br label %12, !dbg !1075

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1075
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1075
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1077
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1077
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1074
  %17 = load i32, i32* %3, align 4, !dbg !1078
  %18 = call i32* @__errno_location() #21, !dbg !1079
  store i32 %17, i32* %18, align 4, !dbg !1080
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1081
  ret %struct.quoting_options* %19, !dbg !1082
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1083 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1088, metadata !DIExpression()), !dbg !1089
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1090
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1090
  br i1 %4, label %5, label %7, !dbg !1090

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1091
  br label %8, !dbg !1090

7:                                                ; preds = %1
  br label %8, !dbg !1090

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1090
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1092
  %11 = load i32, i32* %10, align 8, !dbg !1092
  ret i32 %11, !dbg !1093
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1094 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1097, metadata !DIExpression()), !dbg !1098
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1099, metadata !DIExpression()), !dbg !1100
  %5 = load i32, i32* %4, align 4, !dbg !1101
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1102
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1102
  br i1 %7, label %8, label %10, !dbg !1102

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1103
  br label %11, !dbg !1102

10:                                               ; preds = %2
  br label %11, !dbg !1102

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1102
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1104
  store i32 %5, i32* %13, align 8, !dbg !1105
  ret void, !dbg !1106
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1107 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1110, metadata !DIExpression()), !dbg !1111
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1112, metadata !DIExpression()), !dbg !1113
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1114, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1116, metadata !DIExpression()), !dbg !1117
  %11 = load i8, i8* %5, align 1, !dbg !1118
  store i8 %11, i8* %7, align 1, !dbg !1117
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1119, metadata !DIExpression()), !dbg !1121
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1122
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1122
  br i1 %13, label %14, label %16, !dbg !1122

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1123
  br label %17, !dbg !1122

16:                                               ; preds = %3
  br label %17, !dbg !1122

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1122
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1124
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1125
  %21 = load i8, i8* %7, align 1, !dbg !1126
  %22 = zext i8 %21 to i64, !dbg !1126
  %23 = udiv i64 %22, 32, !dbg !1127
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1128
  store i32* %24, i32** %8, align 8, !dbg !1121
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1129, metadata !DIExpression()), !dbg !1130
  %25 = load i8, i8* %7, align 1, !dbg !1131
  %26 = zext i8 %25 to i64, !dbg !1131
  %27 = urem i64 %26, 32, !dbg !1132
  %28 = trunc i64 %27 to i32, !dbg !1131
  store i32 %28, i32* %9, align 4, !dbg !1130
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1133, metadata !DIExpression()), !dbg !1134
  %29 = load i32*, i32** %8, align 8, !dbg !1135
  %30 = load i32, i32* %29, align 4, !dbg !1136
  %31 = load i32, i32* %9, align 4, !dbg !1137
  %32 = lshr i32 %30, %31, !dbg !1138
  %33 = and i32 %32, 1, !dbg !1139
  store i32 %33, i32* %10, align 4, !dbg !1134
  %34 = load i32, i32* %6, align 4, !dbg !1140
  %35 = and i32 %34, 1, !dbg !1141
  %36 = load i32, i32* %10, align 4, !dbg !1142
  %37 = xor i32 %35, %36, !dbg !1143
  %38 = load i32, i32* %9, align 4, !dbg !1144
  %39 = shl i32 %37, %38, !dbg !1145
  %40 = load i32*, i32** %8, align 8, !dbg !1146
  %41 = load i32, i32* %40, align 4, !dbg !1147
  %42 = xor i32 %41, %39, !dbg !1147
  store i32 %42, i32* %40, align 4, !dbg !1147
  %43 = load i32, i32* %10, align 4, !dbg !1148
  ret i32 %43, !dbg !1149
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1150 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1153, metadata !DIExpression()), !dbg !1154
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1155, metadata !DIExpression()), !dbg !1156
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1157
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1157
  br i1 %7, label %9, label %8, !dbg !1159

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1160
  br label %9, !dbg !1161

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1162, metadata !DIExpression()), !dbg !1163
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1164
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1165
  %12 = load i32, i32* %11, align 4, !dbg !1165
  store i32 %12, i32* %5, align 4, !dbg !1163
  %13 = load i32, i32* %4, align 4, !dbg !1166
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1167
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1168
  store i32 %13, i32* %15, align 4, !dbg !1169
  %16 = load i32, i32* %5, align 4, !dbg !1170
  ret i32 %16, !dbg !1171
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1172 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1175, metadata !DIExpression()), !dbg !1176
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1177, metadata !DIExpression()), !dbg !1178
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1179, metadata !DIExpression()), !dbg !1180
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1181
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1181
  br i1 %8, label %10, label %9, !dbg !1183

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1184
  br label %10, !dbg !1185

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1186
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1187
  store i32 10, i32* %12, align 8, !dbg !1188
  %13 = load i8*, i8** %5, align 8, !dbg !1189
  %14 = icmp ne i8* %13, null, !dbg !1189
  br i1 %14, label %15, label %18, !dbg !1191

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1192
  %17 = icmp ne i8* %16, null, !dbg !1192
  br i1 %17, label %19, label %18, !dbg !1193

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1194
  unreachable, !dbg !1194

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1195
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1196
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1197
  store i8* %20, i8** %22, align 8, !dbg !1198
  %23 = load i8*, i8** %6, align 8, !dbg !1199
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1200
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1201
  store i8* %23, i8** %25, align 8, !dbg !1202
  ret void, !dbg !1203
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1204 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1207, metadata !DIExpression()), !dbg !1208
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1209, metadata !DIExpression()), !dbg !1210
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1211, metadata !DIExpression()), !dbg !1212
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1213, metadata !DIExpression()), !dbg !1214
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1215, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1217, metadata !DIExpression()), !dbg !1218
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1219
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1219
  br i1 %15, label %16, label %18, !dbg !1219

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1220
  br label %19, !dbg !1219

18:                                               ; preds = %5
  br label %19, !dbg !1219

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1219
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1218
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1221, metadata !DIExpression()), !dbg !1222
  %21 = call i32* @__errno_location() #21, !dbg !1223
  %22 = load i32, i32* %21, align 4, !dbg !1223
  store i32 %22, i32* %12, align 4, !dbg !1222
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1224, metadata !DIExpression()), !dbg !1225
  %23 = load i8*, i8** %6, align 8, !dbg !1226
  %24 = load i64, i64* %7, align 8, !dbg !1227
  %25 = load i8*, i8** %8, align 8, !dbg !1228
  %26 = load i64, i64* %9, align 8, !dbg !1229
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1230
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1231
  %29 = load i32, i32* %28, align 8, !dbg !1231
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1232
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1233
  %32 = load i32, i32* %31, align 4, !dbg !1233
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1234
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1235
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1234
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1236
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1237
  %38 = load i8*, i8** %37, align 8, !dbg !1237
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1238
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1239
  %41 = load i8*, i8** %40, align 8, !dbg !1239
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1240
  store i64 %42, i64* %13, align 8, !dbg !1225
  %43 = load i32, i32* %12, align 4, !dbg !1241
  %44 = call i32* @__errno_location() #21, !dbg !1242
  store i32 %43, i32* %44, align 4, !dbg !1243
  %45 = load i64, i64* %13, align 8, !dbg !1244
  ret i64 %45, !dbg !1245
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1246 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1251, metadata !DIExpression()), !dbg !1252
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1253, metadata !DIExpression()), !dbg !1254
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1255, metadata !DIExpression()), !dbg !1256
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1257, metadata !DIExpression()), !dbg !1258
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1259, metadata !DIExpression()), !dbg !1260
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1261, metadata !DIExpression()), !dbg !1262
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1263, metadata !DIExpression()), !dbg !1264
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1265, metadata !DIExpression()), !dbg !1266
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1267, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1269, metadata !DIExpression()), !dbg !1270
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1271
  %45 = icmp eq i64 %44, 1, !dbg !1272
  %46 = zext i1 %45 to i8, !dbg !1270
  store i8 %46, i8* %20, align 1, !dbg !1270
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1273, metadata !DIExpression()), !dbg !1274
  store i64 0, i64* %21, align 8, !dbg !1274
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1275, metadata !DIExpression()), !dbg !1276
  store i64 0, i64* %22, align 8, !dbg !1276
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1277, metadata !DIExpression()), !dbg !1278
  store i8* null, i8** %23, align 8, !dbg !1278
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1279, metadata !DIExpression()), !dbg !1280
  store i64 0, i64* %24, align 8, !dbg !1280
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1281, metadata !DIExpression()), !dbg !1282
  store i8 0, i8* %25, align 1, !dbg !1282
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1283, metadata !DIExpression()), !dbg !1284
  %47 = load i32, i32* %16, align 4, !dbg !1285
  %48 = and i32 %47, 2, !dbg !1286
  %49 = icmp ne i32 %48, 0, !dbg !1287
  %50 = zext i1 %49 to i8, !dbg !1284
  store i8 %50, i8* %26, align 1, !dbg !1284
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1288, metadata !DIExpression()), !dbg !1289
  store i8 0, i8* %27, align 1, !dbg !1289
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1290, metadata !DIExpression()), !dbg !1291
  store i8 1, i8* %28, align 1, !dbg !1291
  br label %51, !dbg !1292

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1293), !dbg !1294
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1295, metadata !DIExpression()), !dbg !1296
  store i8 0, i8* %29, align 1, !dbg !1296
  %52 = load i32, i32* %15, align 4, !dbg !1297
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
  ], !dbg !1298

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1299
  store i8 1, i8* %26, align 1, !dbg !1301
  br label %54, !dbg !1302

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1303
  %56 = trunc i8 %55 to i1, !dbg !1303
  br i1 %56, label %70, label %57, !dbg !1305

57:                                               ; preds = %54
  br label %58, !dbg !1306

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1307
  %60 = load i64, i64* %12, align 8, !dbg !1307
  %61 = icmp ult i64 %59, %60, !dbg !1307
  br i1 %61, label %62, label %66, !dbg !1310

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1307
  %64 = load i64, i64* %21, align 8, !dbg !1307
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1307
  store i8 34, i8* %65, align 1, !dbg !1307
  br label %66, !dbg !1307

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1310
  %68 = add i64 %67, 1, !dbg !1310
  store i64 %68, i64* %21, align 8, !dbg !1310
  br label %69, !dbg !1310

69:                                               ; preds = %66
  br label %70, !dbg !1310

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1311
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.91, i64 0, i64 0), i8** %23, align 8, !dbg !1312
  store i64 1, i64* %24, align 8, !dbg !1313
  br label %138, !dbg !1314

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1315
  store i8 0, i8* %26, align 1, !dbg !1316
  br label %138, !dbg !1317

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1318
  %74 = icmp ne i32 %73, 10, !dbg !1321
  br i1 %74, label %75, label %80, !dbg !1322

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1323
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.92, i64 0, i64 0), i32 noundef %76), !dbg !1325
  store i8* %77, i8** %18, align 8, !dbg !1326
  %78 = load i32, i32* %15, align 4, !dbg !1327
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), i32 noundef %78), !dbg !1328
  store i8* %79, i8** %19, align 8, !dbg !1329
  br label %80, !dbg !1330

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1331
  %82 = trunc i8 %81 to i1, !dbg !1331
  br i1 %82, label %108, label %83, !dbg !1333

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1334, metadata !DIExpression()), !dbg !1336
  %84 = load i8*, i8** %18, align 8, !dbg !1337
  store i8* %84, i8** %30, align 8, !dbg !1336
  br label %85, !dbg !1338

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1339
  %87 = load i8, i8* %86, align 1, !dbg !1341
  %88 = icmp ne i8 %87, 0, !dbg !1342
  br i1 %88, label %89, label %107, !dbg !1342

89:                                               ; preds = %85
  br label %90, !dbg !1343

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1344
  %92 = load i64, i64* %12, align 8, !dbg !1344
  %93 = icmp ult i64 %91, %92, !dbg !1344
  br i1 %93, label %94, label %100, !dbg !1347

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1344
  %96 = load i8, i8* %95, align 1, !dbg !1344
  %97 = load i8*, i8** %11, align 8, !dbg !1344
  %98 = load i64, i64* %21, align 8, !dbg !1344
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1344
  store i8 %96, i8* %99, align 1, !dbg !1344
  br label %100, !dbg !1344

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1347
  %102 = add i64 %101, 1, !dbg !1347
  store i64 %102, i64* %21, align 8, !dbg !1347
  br label %103, !dbg !1347

103:                                              ; preds = %100
  br label %104, !dbg !1347

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1348
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1348
  store i8* %106, i8** %30, align 8, !dbg !1348
  br label %85, !dbg !1349, !llvm.loop !1350

107:                                              ; preds = %85
  br label %108, !dbg !1351

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1352
  %109 = load i8*, i8** %19, align 8, !dbg !1353
  store i8* %109, i8** %23, align 8, !dbg !1354
  %110 = load i8*, i8** %23, align 8, !dbg !1355
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1356
  store i64 %111, i64* %24, align 8, !dbg !1357
  br label %138, !dbg !1358

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1359
  br label %113, !dbg !1360

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1361
  br label %114, !dbg !1362

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1363
  %116 = trunc i8 %115 to i1, !dbg !1363
  br i1 %116, label %118, label %117, !dbg !1365

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1366
  br label %118, !dbg !1367

118:                                              ; preds = %117, %114
  br label %119, !dbg !1363

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1368
  %120 = load i8, i8* %26, align 1, !dbg !1369
  %121 = trunc i8 %120 to i1, !dbg !1369
  br i1 %121, label %135, label %122, !dbg !1371

122:                                              ; preds = %119
  br label %123, !dbg !1372

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1373
  %125 = load i64, i64* %12, align 8, !dbg !1373
  %126 = icmp ult i64 %124, %125, !dbg !1373
  br i1 %126, label %127, label %131, !dbg !1376

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1373
  %129 = load i64, i64* %21, align 8, !dbg !1373
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1373
  store i8 39, i8* %130, align 1, !dbg !1373
  br label %131, !dbg !1373

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1376
  %133 = add i64 %132, 1, !dbg !1376
  store i64 %133, i64* %21, align 8, !dbg !1376
  br label %134, !dbg !1376

134:                                              ; preds = %131
  br label %135, !dbg !1376

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), i8** %23, align 8, !dbg !1377
  store i64 1, i64* %24, align 8, !dbg !1378
  br label %138, !dbg !1379

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1380
  br label %138, !dbg !1381

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1382
  unreachable, !dbg !1382

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1383, metadata !DIExpression()), !dbg !1385
  store i64 0, i64* %31, align 8, !dbg !1385
  br label %139, !dbg !1386

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1387
  %141 = icmp eq i64 %140, -1, !dbg !1389
  br i1 %141, label %142, label %150, !dbg !1387

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1390
  %144 = load i64, i64* %31, align 8, !dbg !1391
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1390
  %146 = load i8, i8* %145, align 1, !dbg !1390
  %147 = zext i8 %146 to i32, !dbg !1390
  %148 = icmp eq i32 %147, 0, !dbg !1392
  %149 = zext i1 %148 to i32, !dbg !1392
  br label %155, !dbg !1387

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1393
  %152 = load i64, i64* %14, align 8, !dbg !1394
  %153 = icmp eq i64 %151, %152, !dbg !1395
  %154 = zext i1 %153 to i32, !dbg !1395
  br label %155, !dbg !1387

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1387
  %157 = icmp ne i32 %156, 0, !dbg !1396
  %158 = xor i1 %157, true, !dbg !1396
  br i1 %158, label %159, label %996, !dbg !1397

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1398, metadata !DIExpression()), !dbg !1400
  store i8 0, i8* %32, align 1, !dbg !1400
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1401, metadata !DIExpression()), !dbg !1402
  store i8 0, i8* %33, align 1, !dbg !1402
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1403, metadata !DIExpression()), !dbg !1404
  store i8 0, i8* %34, align 1, !dbg !1404
  %160 = load i8, i8* %25, align 1, !dbg !1405
  %161 = trunc i8 %160 to i1, !dbg !1405
  br i1 %161, label %162, label %197, !dbg !1407

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1408
  %164 = icmp ne i32 %163, 2, !dbg !1409
  br i1 %164, label %165, label %197, !dbg !1410

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1411
  %167 = icmp ne i64 %166, 0, !dbg !1411
  br i1 %167, label %168, label %197, !dbg !1412

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1413
  %170 = load i64, i64* %24, align 8, !dbg !1414
  %171 = add i64 %169, %170, !dbg !1415
  %172 = load i64, i64* %14, align 8, !dbg !1416
  %173 = icmp eq i64 %172, -1, !dbg !1417
  br i1 %173, label %174, label %180, !dbg !1418

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1419
  %176 = icmp ult i64 1, %175, !dbg !1420
  br i1 %176, label %177, label %180, !dbg !1416

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1421
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1422
  store i64 %179, i64* %14, align 8, !dbg !1423
  br label %182, !dbg !1416

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1424
  br label %182, !dbg !1416

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1416
  %184 = icmp ule i64 %171, %183, !dbg !1425
  br i1 %184, label %185, label %197, !dbg !1426

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1427
  %187 = load i64, i64* %31, align 8, !dbg !1428
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1429
  %189 = load i8*, i8** %23, align 8, !dbg !1430
  %190 = load i64, i64* %24, align 8, !dbg !1431
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1432
  br i1 %191, label %192, label %197, !dbg !1433

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1434
  %194 = trunc i8 %193 to i1, !dbg !1434
  br i1 %194, label %195, label %196, !dbg !1437

195:                                              ; preds = %192
  br label %1078, !dbg !1438

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1439
  br label %197, !dbg !1440

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1441, metadata !DIExpression()), !dbg !1442
  %198 = load i8*, i8** %13, align 8, !dbg !1443
  %199 = load i64, i64* %31, align 8, !dbg !1444
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1443
  %201 = load i8, i8* %200, align 1, !dbg !1443
  store i8 %201, i8* %35, align 1, !dbg !1442
  %202 = load i8, i8* %35, align 1, !dbg !1445
  %203 = zext i8 %202 to i32, !dbg !1445
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
  ], !dbg !1446

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1447
  %206 = trunc i8 %205 to i1, !dbg !1447
  br i1 %206, label %207, label %318, !dbg !1450

207:                                              ; preds = %204
  br label %208, !dbg !1451

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1453
  %210 = trunc i8 %209 to i1, !dbg !1453
  br i1 %210, label %211, label %212, !dbg !1456

211:                                              ; preds = %208
  br label %1078, !dbg !1453

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1456
  %213 = load i32, i32* %15, align 4, !dbg !1457
  %214 = icmp eq i32 %213, 2, !dbg !1457
  br i1 %214, label %215, label %255, !dbg !1457

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1457
  %217 = trunc i8 %216 to i1, !dbg !1457
  br i1 %217, label %255, label %218, !dbg !1456

218:                                              ; preds = %215
  br label %219, !dbg !1459

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1461
  %221 = load i64, i64* %12, align 8, !dbg !1461
  %222 = icmp ult i64 %220, %221, !dbg !1461
  br i1 %222, label %223, label %227, !dbg !1464

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1461
  %225 = load i64, i64* %21, align 8, !dbg !1461
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1461
  store i8 39, i8* %226, align 1, !dbg !1461
  br label %227, !dbg !1461

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1464
  %229 = add i64 %228, 1, !dbg !1464
  store i64 %229, i64* %21, align 8, !dbg !1464
  br label %230, !dbg !1464

230:                                              ; preds = %227
  br label %231, !dbg !1459

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1465
  %233 = load i64, i64* %12, align 8, !dbg !1465
  %234 = icmp ult i64 %232, %233, !dbg !1465
  br i1 %234, label %235, label %239, !dbg !1468

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1465
  %237 = load i64, i64* %21, align 8, !dbg !1465
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1465
  store i8 36, i8* %238, align 1, !dbg !1465
  br label %239, !dbg !1465

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1468
  %241 = add i64 %240, 1, !dbg !1468
  store i64 %241, i64* %21, align 8, !dbg !1468
  br label %242, !dbg !1468

242:                                              ; preds = %239
  br label %243, !dbg !1459

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1469
  %245 = load i64, i64* %12, align 8, !dbg !1469
  %246 = icmp ult i64 %244, %245, !dbg !1469
  br i1 %246, label %247, label %251, !dbg !1472

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1469
  %249 = load i64, i64* %21, align 8, !dbg !1469
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1469
  store i8 39, i8* %250, align 1, !dbg !1469
  br label %251, !dbg !1469

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1472
  %253 = add i64 %252, 1, !dbg !1472
  store i64 %253, i64* %21, align 8, !dbg !1472
  br label %254, !dbg !1472

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1459
  br label %255, !dbg !1459

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1456

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1473
  %258 = load i64, i64* %12, align 8, !dbg !1473
  %259 = icmp ult i64 %257, %258, !dbg !1473
  br i1 %259, label %260, label %264, !dbg !1476

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1473
  %262 = load i64, i64* %21, align 8, !dbg !1473
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1473
  store i8 92, i8* %263, align 1, !dbg !1473
  br label %264, !dbg !1473

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1476
  %266 = add i64 %265, 1, !dbg !1476
  store i64 %266, i64* %21, align 8, !dbg !1476
  br label %267, !dbg !1476

267:                                              ; preds = %264
  br label %268, !dbg !1456

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1477
  %270 = icmp ne i32 %269, 2, !dbg !1479
  br i1 %270, label %271, label %317, !dbg !1480

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1481
  %273 = add i64 %272, 1, !dbg !1482
  %274 = load i64, i64* %14, align 8, !dbg !1483
  %275 = icmp ult i64 %273, %274, !dbg !1484
  br i1 %275, label %276, label %317, !dbg !1485

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1486
  %278 = load i64, i64* %31, align 8, !dbg !1487
  %279 = add i64 %278, 1, !dbg !1488
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1486
  %281 = load i8, i8* %280, align 1, !dbg !1486
  %282 = zext i8 %281 to i32, !dbg !1486
  %283 = icmp sle i32 48, %282, !dbg !1489
  br i1 %283, label %284, label %317, !dbg !1490

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1491
  %286 = load i64, i64* %31, align 8, !dbg !1492
  %287 = add i64 %286, 1, !dbg !1493
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1491
  %289 = load i8, i8* %288, align 1, !dbg !1491
  %290 = zext i8 %289 to i32, !dbg !1491
  %291 = icmp sle i32 %290, 57, !dbg !1494
  br i1 %291, label %292, label %317, !dbg !1495

292:                                              ; preds = %284
  br label %293, !dbg !1496

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1498
  %295 = load i64, i64* %12, align 8, !dbg !1498
  %296 = icmp ult i64 %294, %295, !dbg !1498
  br i1 %296, label %297, label %301, !dbg !1501

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1498
  %299 = load i64, i64* %21, align 8, !dbg !1498
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1498
  store i8 48, i8* %300, align 1, !dbg !1498
  br label %301, !dbg !1498

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1501
  %303 = add i64 %302, 1, !dbg !1501
  store i64 %303, i64* %21, align 8, !dbg !1501
  br label %304, !dbg !1501

304:                                              ; preds = %301
  br label %305, !dbg !1502

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1503
  %307 = load i64, i64* %12, align 8, !dbg !1503
  %308 = icmp ult i64 %306, %307, !dbg !1503
  br i1 %308, label %309, label %313, !dbg !1506

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1503
  %311 = load i64, i64* %21, align 8, !dbg !1503
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1503
  store i8 48, i8* %312, align 1, !dbg !1503
  br label %313, !dbg !1503

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1506
  %315 = add i64 %314, 1, !dbg !1506
  store i64 %315, i64* %21, align 8, !dbg !1506
  br label %316, !dbg !1506

316:                                              ; preds = %313
  br label %317, !dbg !1507

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1508
  br label %324, !dbg !1509

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1510
  %320 = and i32 %319, 1, !dbg !1512
  %321 = icmp ne i32 %320, 0, !dbg !1512
  br i1 %321, label %322, label %323, !dbg !1513

322:                                              ; preds = %318
  br label %993, !dbg !1514

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1515

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1516
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1517

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1518
  %329 = trunc i8 %328 to i1, !dbg !1518
  br i1 %329, label %330, label %331, !dbg !1521

330:                                              ; preds = %327
  br label %1078, !dbg !1522

331:                                              ; preds = %327
  br label %418, !dbg !1523

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1524
  %334 = and i32 %333, 4, !dbg !1526
  %335 = icmp ne i32 %334, 0, !dbg !1526
  br i1 %335, label %336, label %417, !dbg !1527

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1528
  %338 = add i64 %337, 2, !dbg !1529
  %339 = load i64, i64* %14, align 8, !dbg !1530
  %340 = icmp ult i64 %338, %339, !dbg !1531
  br i1 %340, label %341, label %417, !dbg !1532

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1533
  %343 = load i64, i64* %31, align 8, !dbg !1534
  %344 = add i64 %343, 1, !dbg !1535
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1533
  %346 = load i8, i8* %345, align 1, !dbg !1533
  %347 = zext i8 %346 to i32, !dbg !1533
  %348 = icmp eq i32 %347, 63, !dbg !1536
  br i1 %348, label %349, label %417, !dbg !1537

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1538
  %351 = load i64, i64* %31, align 8, !dbg !1539
  %352 = add i64 %351, 2, !dbg !1540
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1538
  %354 = load i8, i8* %353, align 1, !dbg !1538
  %355 = zext i8 %354 to i32, !dbg !1538
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
  ], !dbg !1541

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1542
  %358 = trunc i8 %357 to i1, !dbg !1542
  br i1 %358, label %359, label %360, !dbg !1545

359:                                              ; preds = %356
  br label %1078, !dbg !1546

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1547
  %362 = load i64, i64* %31, align 8, !dbg !1548
  %363 = add i64 %362, 2, !dbg !1549
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1547
  %365 = load i8, i8* %364, align 1, !dbg !1547
  store i8 %365, i8* %35, align 1, !dbg !1550
  %366 = load i64, i64* %31, align 8, !dbg !1551
  %367 = add i64 %366, 2, !dbg !1551
  store i64 %367, i64* %31, align 8, !dbg !1551
  br label %368, !dbg !1552

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1553
  %370 = load i64, i64* %12, align 8, !dbg !1553
  %371 = icmp ult i64 %369, %370, !dbg !1553
  br i1 %371, label %372, label %376, !dbg !1556

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1553
  %374 = load i64, i64* %21, align 8, !dbg !1553
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1553
  store i8 63, i8* %375, align 1, !dbg !1553
  br label %376, !dbg !1553

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1556
  %378 = add i64 %377, 1, !dbg !1556
  store i64 %378, i64* %21, align 8, !dbg !1556
  br label %379, !dbg !1556

379:                                              ; preds = %376
  br label %380, !dbg !1557

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1558
  %382 = load i64, i64* %12, align 8, !dbg !1558
  %383 = icmp ult i64 %381, %382, !dbg !1558
  br i1 %383, label %384, label %388, !dbg !1561

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1558
  %386 = load i64, i64* %21, align 8, !dbg !1558
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1558
  store i8 34, i8* %387, align 1, !dbg !1558
  br label %388, !dbg !1558

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1561
  %390 = add i64 %389, 1, !dbg !1561
  store i64 %390, i64* %21, align 8, !dbg !1561
  br label %391, !dbg !1561

391:                                              ; preds = %388
  br label %392, !dbg !1562

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1563
  %394 = load i64, i64* %12, align 8, !dbg !1563
  %395 = icmp ult i64 %393, %394, !dbg !1563
  br i1 %395, label %396, label %400, !dbg !1566

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1563
  %398 = load i64, i64* %21, align 8, !dbg !1563
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1563
  store i8 34, i8* %399, align 1, !dbg !1563
  br label %400, !dbg !1563

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1566
  %402 = add i64 %401, 1, !dbg !1566
  store i64 %402, i64* %21, align 8, !dbg !1566
  br label %403, !dbg !1566

403:                                              ; preds = %400
  br label %404, !dbg !1567

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1568
  %406 = load i64, i64* %12, align 8, !dbg !1568
  %407 = icmp ult i64 %405, %406, !dbg !1568
  br i1 %407, label %408, label %412, !dbg !1571

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1568
  %410 = load i64, i64* %21, align 8, !dbg !1568
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1568
  store i8 63, i8* %411, align 1, !dbg !1568
  br label %412, !dbg !1568

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1571
  %414 = add i64 %413, 1, !dbg !1571
  store i64 %414, i64* %21, align 8, !dbg !1571
  br label %415, !dbg !1571

415:                                              ; preds = %412
  br label %416, !dbg !1572

416:                                              ; preds = %349, %415
  br label %417, !dbg !1573

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1574

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1575

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1576
  br label %454, !dbg !1578

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1579
  br label %454, !dbg !1580

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1581
  br label %454, !dbg !1582

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1583
  br label %446, !dbg !1584

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1585
  br label %446, !dbg !1586

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1587
  br label %446, !dbg !1588

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1589
  br label %454, !dbg !1590

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1591
  store i8 %427, i8* %36, align 1, !dbg !1592
  %428 = load i32, i32* %15, align 4, !dbg !1593
  %429 = icmp eq i32 %428, 2, !dbg !1595
  br i1 %429, label %430, label %435, !dbg !1596

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1597
  %432 = trunc i8 %431 to i1, !dbg !1597
  br i1 %432, label %433, label %434, !dbg !1600

433:                                              ; preds = %430
  br label %1078, !dbg !1601

434:                                              ; preds = %430
  br label %942, !dbg !1602

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1603
  %437 = trunc i8 %436 to i1, !dbg !1603
  br i1 %437, label %438, label %445, !dbg !1605

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1606
  %440 = trunc i8 %439 to i1, !dbg !1606
  br i1 %440, label %441, label %445, !dbg !1607

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1608
  %443 = icmp ne i64 %442, 0, !dbg !1608
  br i1 %443, label %444, label %445, !dbg !1609

444:                                              ; preds = %441
  br label %942, !dbg !1610

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1608

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1611), !dbg !1612
  %447 = load i32, i32* %15, align 4, !dbg !1613
  %448 = icmp eq i32 %447, 2, !dbg !1615
  br i1 %448, label %449, label %453, !dbg !1616

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1617
  %451 = trunc i8 %450 to i1, !dbg !1617
  br i1 %451, label %452, label %453, !dbg !1618

452:                                              ; preds = %449
  br label %1078, !dbg !1619

453:                                              ; preds = %449, %446
  br label %454, !dbg !1617

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1620), !dbg !1621
  %455 = load i8, i8* %25, align 1, !dbg !1622
  %456 = trunc i8 %455 to i1, !dbg !1622
  br i1 %456, label %457, label %459, !dbg !1624

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1625
  store i8 %458, i8* %35, align 1, !dbg !1627
  br label %880, !dbg !1628

459:                                              ; preds = %454
  br label %849, !dbg !1629

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1630
  %462 = icmp eq i64 %461, -1, !dbg !1632
  br i1 %462, label %463, label %469, !dbg !1633

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1634
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1634
  %466 = load i8, i8* %465, align 1, !dbg !1634
  %467 = zext i8 %466 to i32, !dbg !1634
  %468 = icmp eq i32 %467, 0, !dbg !1635
  br i1 %468, label %473, label %472, !dbg !1630

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1636
  %471 = icmp eq i64 %470, 1, !dbg !1637
  br i1 %471, label %473, label %472, !dbg !1633

472:                                              ; preds = %469, %463
  br label %849, !dbg !1638

473:                                              ; preds = %469, %463
  br label %474, !dbg !1639

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1640
  %476 = icmp ne i64 %475, 0, !dbg !1642
  br i1 %476, label %477, label %478, !dbg !1643

477:                                              ; preds = %474
  br label %849, !dbg !1644

478:                                              ; preds = %474
  br label %479, !dbg !1645

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1646
  br label %480, !dbg !1647

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1648
  %482 = icmp eq i32 %481, 2, !dbg !1650
  br i1 %482, label %483, label %487, !dbg !1651

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1652
  %485 = trunc i8 %484 to i1, !dbg !1652
  br i1 %485, label %486, label %487, !dbg !1653

486:                                              ; preds = %483
  br label %1078, !dbg !1654

487:                                              ; preds = %483, %480
  br label %849, !dbg !1655

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1656
  store i8 1, i8* %34, align 1, !dbg !1657
  %489 = load i32, i32* %15, align 4, !dbg !1658
  %490 = icmp eq i32 %489, 2, !dbg !1660
  br i1 %490, label %491, label %540, !dbg !1661

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1662
  %493 = trunc i8 %492 to i1, !dbg !1662
  br i1 %493, label %494, label %495, !dbg !1665

494:                                              ; preds = %491
  br label %1078, !dbg !1666

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1667
  %497 = icmp ne i64 %496, 0, !dbg !1667
  br i1 %497, label %498, label %503, !dbg !1669

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1670
  %500 = icmp ne i64 %499, 0, !dbg !1670
  br i1 %500, label %503, label %501, !dbg !1671

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1672
  store i64 %502, i64* %22, align 8, !dbg !1674
  store i64 0, i64* %12, align 8, !dbg !1675
  br label %503, !dbg !1676

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1677

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1678
  %506 = load i64, i64* %12, align 8, !dbg !1678
  %507 = icmp ult i64 %505, %506, !dbg !1678
  br i1 %507, label %508, label %512, !dbg !1681

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1678
  %510 = load i64, i64* %21, align 8, !dbg !1678
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1678
  store i8 39, i8* %511, align 1, !dbg !1678
  br label %512, !dbg !1678

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1681
  %514 = add i64 %513, 1, !dbg !1681
  store i64 %514, i64* %21, align 8, !dbg !1681
  br label %515, !dbg !1681

515:                                              ; preds = %512
  br label %516, !dbg !1682

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1683
  %518 = load i64, i64* %12, align 8, !dbg !1683
  %519 = icmp ult i64 %517, %518, !dbg !1683
  br i1 %519, label %520, label %524, !dbg !1686

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1683
  %522 = load i64, i64* %21, align 8, !dbg !1683
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1683
  store i8 92, i8* %523, align 1, !dbg !1683
  br label %524, !dbg !1683

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1686
  %526 = add i64 %525, 1, !dbg !1686
  store i64 %526, i64* %21, align 8, !dbg !1686
  br label %527, !dbg !1686

527:                                              ; preds = %524
  br label %528, !dbg !1687

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1688
  %530 = load i64, i64* %12, align 8, !dbg !1688
  %531 = icmp ult i64 %529, %530, !dbg !1688
  br i1 %531, label %532, label %536, !dbg !1691

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1688
  %534 = load i64, i64* %21, align 8, !dbg !1688
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1688
  store i8 39, i8* %535, align 1, !dbg !1688
  br label %536, !dbg !1688

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1691
  %538 = add i64 %537, 1, !dbg !1691
  store i64 %538, i64* %21, align 8, !dbg !1691
  br label %539, !dbg !1691

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1692
  br label %540, !dbg !1693

540:                                              ; preds = %539, %488
  br label %849, !dbg !1694

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1695
  br label %849, !dbg !1696

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1697, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1700, metadata !DIExpression()), !dbg !1701
  %543 = load i8, i8* %20, align 1, !dbg !1702
  %544 = trunc i8 %543 to i1, !dbg !1702
  br i1 %544, label %545, label %557, !dbg !1704

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1705
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1707
  %547 = load i16*, i16** %546, align 8, !dbg !1707
  %548 = load i8, i8* %35, align 1, !dbg !1707
  %549 = zext i8 %548 to i32, !dbg !1707
  %550 = sext i32 %549 to i64, !dbg !1707
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1707
  %552 = load i16, i16* %551, align 2, !dbg !1707
  %553 = zext i16 %552 to i32, !dbg !1707
  %554 = and i32 %553, 16384, !dbg !1707
  %555 = icmp ne i32 %554, 0, !dbg !1708
  %556 = zext i1 %555 to i8, !dbg !1709
  store i8 %556, i8* %38, align 1, !dbg !1709
  br label %648, !dbg !1710

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1711, metadata !DIExpression()), !dbg !1723
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1724
  store i64 0, i64* %37, align 8, !dbg !1725
  store i8 1, i8* %38, align 1, !dbg !1726
  %558 = load i64, i64* %14, align 8, !dbg !1727
  %559 = icmp eq i64 %558, -1, !dbg !1729
  br i1 %559, label %560, label %563, !dbg !1730

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1731
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !1732
  store i64 %562, i64* %14, align 8, !dbg !1733
  br label %563, !dbg !1734

563:                                              ; preds = %560, %557
  br label %564, !dbg !1735

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1736, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1741, metadata !DIExpression()), !dbg !1742
  %565 = load i8*, i8** %13, align 8, !dbg !1743
  %566 = load i64, i64* %31, align 8, !dbg !1744
  %567 = load i64, i64* %37, align 8, !dbg !1745
  %568 = add i64 %566, %567, !dbg !1746
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !1743
  %570 = load i64, i64* %14, align 8, !dbg !1747
  %571 = load i64, i64* %31, align 8, !dbg !1748
  %572 = load i64, i64* %37, align 8, !dbg !1749
  %573 = add i64 %571, %572, !dbg !1750
  %574 = sub i64 %570, %573, !dbg !1751
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !1752
  store i64 %575, i64* %41, align 8, !dbg !1742
  %576 = load i64, i64* %41, align 8, !dbg !1753
  %577 = icmp eq i64 %576, 0, !dbg !1755
  br i1 %577, label %578, label %579, !dbg !1756

578:                                              ; preds = %564
  br label %647, !dbg !1757

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !1758
  %581 = icmp eq i64 %580, -1, !dbg !1760
  br i1 %581, label %582, label %583, !dbg !1761

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !1762
  br label %647, !dbg !1764

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !1765
  %585 = icmp eq i64 %584, -2, !dbg !1767
  br i1 %585, label %586, label %608, !dbg !1768

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !1769
  br label %587, !dbg !1771

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !1772
  %589 = load i64, i64* %37, align 8, !dbg !1773
  %590 = add i64 %588, %589, !dbg !1774
  %591 = load i64, i64* %14, align 8, !dbg !1775
  %592 = icmp ult i64 %590, %591, !dbg !1776
  br i1 %592, label %593, label %602, !dbg !1777

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !1778
  %595 = load i64, i64* %31, align 8, !dbg !1779
  %596 = load i64, i64* %37, align 8, !dbg !1780
  %597 = add i64 %595, %596, !dbg !1781
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !1778
  %599 = load i8, i8* %598, align 1, !dbg !1778
  %600 = zext i8 %599 to i32, !dbg !1778
  %601 = icmp ne i32 %600, 0, !dbg !1777
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !1782
  br i1 %603, label %604, label %607, !dbg !1771

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !1783
  %606 = add i64 %605, 1, !dbg !1783
  store i64 %606, i64* %37, align 8, !dbg !1783
  br label %587, !dbg !1771, !llvm.loop !1784

607:                                              ; preds = %602
  br label %647, !dbg !1785

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !1786
  %610 = trunc i8 %609 to i1, !dbg !1786
  br i1 %610, label %611, label %635, !dbg !1789

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !1790
  %613 = icmp eq i32 %612, 2, !dbg !1791
  br i1 %613, label %614, label %635, !dbg !1792

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !1793, metadata !DIExpression()), !dbg !1796
  store i64 1, i64* %42, align 8, !dbg !1796
  br label %615, !dbg !1797

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !1798
  %617 = load i64, i64* %41, align 8, !dbg !1800
  %618 = icmp ult i64 %616, %617, !dbg !1801
  br i1 %618, label %619, label %634, !dbg !1802

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !1803
  %621 = load i64, i64* %31, align 8, !dbg !1804
  %622 = load i64, i64* %37, align 8, !dbg !1805
  %623 = add i64 %621, %622, !dbg !1806
  %624 = load i64, i64* %42, align 8, !dbg !1807
  %625 = add i64 %623, %624, !dbg !1808
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !1803
  %627 = load i8, i8* %626, align 1, !dbg !1803
  %628 = zext i8 %627 to i32, !dbg !1803
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !1809

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !1810

630:                                              ; preds = %619
  br label %631, !dbg !1812

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !1813
  %633 = add i64 %632, 1, !dbg !1813
  store i64 %633, i64* %42, align 8, !dbg !1813
  br label %615, !dbg !1814, !llvm.loop !1815

634:                                              ; preds = %615
  br label %635, !dbg !1817

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !1818
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !1820
  %638 = icmp ne i32 %637, 0, !dbg !1820
  br i1 %638, label %640, label %639, !dbg !1821

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !1822
  br label %640, !dbg !1823

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !1824
  %642 = load i64, i64* %37, align 8, !dbg !1825
  %643 = add i64 %642, %641, !dbg !1825
  store i64 %643, i64* %37, align 8, !dbg !1825
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !1826

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !1827
  %650 = trunc i8 %649 to i1, !dbg !1827
  %651 = zext i1 %650 to i8, !dbg !1828
  store i8 %651, i8* %34, align 1, !dbg !1828
  %652 = load i64, i64* %37, align 8, !dbg !1829
  %653 = icmp ult i64 1, %652, !dbg !1831
  br i1 %653, label %660, label %654, !dbg !1832

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !1833
  %656 = trunc i8 %655 to i1, !dbg !1833
  br i1 %656, label %657, label %848, !dbg !1834

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !1835
  %659 = trunc i8 %658 to i1, !dbg !1835
  br i1 %659, label %848, label %660, !dbg !1836

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !1837, metadata !DIExpression()), !dbg !1839
  %661 = load i64, i64* %31, align 8, !dbg !1840
  %662 = load i64, i64* %37, align 8, !dbg !1841
  %663 = add i64 %661, %662, !dbg !1842
  store i64 %663, i64* %43, align 8, !dbg !1839
  br label %664, !dbg !1843

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !1844
  %666 = trunc i8 %665 to i1, !dbg !1844
  br i1 %666, label %667, label %772, !dbg !1849

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !1850
  %669 = trunc i8 %668 to i1, !dbg !1850
  br i1 %669, label %772, label %670, !dbg !1851

670:                                              ; preds = %667
  br label %671, !dbg !1852

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !1854
  %673 = trunc i8 %672 to i1, !dbg !1854
  br i1 %673, label %674, label %675, !dbg !1857

674:                                              ; preds = %671
  br label %1078, !dbg !1854

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !1857
  %676 = load i32, i32* %15, align 4, !dbg !1858
  %677 = icmp eq i32 %676, 2, !dbg !1858
  br i1 %677, label %678, label %718, !dbg !1858

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !1858
  %680 = trunc i8 %679 to i1, !dbg !1858
  br i1 %680, label %718, label %681, !dbg !1857

681:                                              ; preds = %678
  br label %682, !dbg !1860

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !1862
  %684 = load i64, i64* %12, align 8, !dbg !1862
  %685 = icmp ult i64 %683, %684, !dbg !1862
  br i1 %685, label %686, label %690, !dbg !1865

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !1862
  %688 = load i64, i64* %21, align 8, !dbg !1862
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !1862
  store i8 39, i8* %689, align 1, !dbg !1862
  br label %690, !dbg !1862

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !1865
  %692 = add i64 %691, 1, !dbg !1865
  store i64 %692, i64* %21, align 8, !dbg !1865
  br label %693, !dbg !1865

693:                                              ; preds = %690
  br label %694, !dbg !1860

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !1866
  %696 = load i64, i64* %12, align 8, !dbg !1866
  %697 = icmp ult i64 %695, %696, !dbg !1866
  br i1 %697, label %698, label %702, !dbg !1869

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !1866
  %700 = load i64, i64* %21, align 8, !dbg !1866
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !1866
  store i8 36, i8* %701, align 1, !dbg !1866
  br label %702, !dbg !1866

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !1869
  %704 = add i64 %703, 1, !dbg !1869
  store i64 %704, i64* %21, align 8, !dbg !1869
  br label %705, !dbg !1869

705:                                              ; preds = %702
  br label %706, !dbg !1860

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !1870
  %708 = load i64, i64* %12, align 8, !dbg !1870
  %709 = icmp ult i64 %707, %708, !dbg !1870
  br i1 %709, label %710, label %714, !dbg !1873

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !1870
  %712 = load i64, i64* %21, align 8, !dbg !1870
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !1870
  store i8 39, i8* %713, align 1, !dbg !1870
  br label %714, !dbg !1870

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !1873
  %716 = add i64 %715, 1, !dbg !1873
  store i64 %716, i64* %21, align 8, !dbg !1873
  br label %717, !dbg !1873

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !1860
  br label %718, !dbg !1860

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !1857

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !1874
  %721 = load i64, i64* %12, align 8, !dbg !1874
  %722 = icmp ult i64 %720, %721, !dbg !1874
  br i1 %722, label %723, label %727, !dbg !1877

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !1874
  %725 = load i64, i64* %21, align 8, !dbg !1874
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !1874
  store i8 92, i8* %726, align 1, !dbg !1874
  br label %727, !dbg !1874

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !1877
  %729 = add i64 %728, 1, !dbg !1877
  store i64 %729, i64* %21, align 8, !dbg !1877
  br label %730, !dbg !1877

730:                                              ; preds = %727
  br label %731, !dbg !1857

731:                                              ; preds = %730
  br label %732, !dbg !1878

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !1879
  %734 = load i64, i64* %12, align 8, !dbg !1879
  %735 = icmp ult i64 %733, %734, !dbg !1879
  br i1 %735, label %736, label %745, !dbg !1882

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !1879
  %738 = zext i8 %737 to i32, !dbg !1879
  %739 = ashr i32 %738, 6, !dbg !1879
  %740 = add nsw i32 48, %739, !dbg !1879
  %741 = trunc i32 %740 to i8, !dbg !1879
  %742 = load i8*, i8** %11, align 8, !dbg !1879
  %743 = load i64, i64* %21, align 8, !dbg !1879
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !1879
  store i8 %741, i8* %744, align 1, !dbg !1879
  br label %745, !dbg !1879

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !1882
  %747 = add i64 %746, 1, !dbg !1882
  store i64 %747, i64* %21, align 8, !dbg !1882
  br label %748, !dbg !1882

748:                                              ; preds = %745
  br label %749, !dbg !1883

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !1884
  %751 = load i64, i64* %12, align 8, !dbg !1884
  %752 = icmp ult i64 %750, %751, !dbg !1884
  br i1 %752, label %753, label %763, !dbg !1887

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !1884
  %755 = zext i8 %754 to i32, !dbg !1884
  %756 = ashr i32 %755, 3, !dbg !1884
  %757 = and i32 %756, 7, !dbg !1884
  %758 = add nsw i32 48, %757, !dbg !1884
  %759 = trunc i32 %758 to i8, !dbg !1884
  %760 = load i8*, i8** %11, align 8, !dbg !1884
  %761 = load i64, i64* %21, align 8, !dbg !1884
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !1884
  store i8 %759, i8* %762, align 1, !dbg !1884
  br label %763, !dbg !1884

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !1887
  %765 = add i64 %764, 1, !dbg !1887
  store i64 %765, i64* %21, align 8, !dbg !1887
  br label %766, !dbg !1887

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !1888
  %768 = zext i8 %767 to i32, !dbg !1888
  %769 = and i32 %768, 7, !dbg !1889
  %770 = add nsw i32 48, %769, !dbg !1890
  %771 = trunc i32 %770 to i8, !dbg !1891
  store i8 %771, i8* %35, align 1, !dbg !1892
  br label %789, !dbg !1893

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !1894
  %774 = trunc i8 %773 to i1, !dbg !1894
  br i1 %774, label %775, label %788, !dbg !1896

775:                                              ; preds = %772
  br label %776, !dbg !1897

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !1899
  %778 = load i64, i64* %12, align 8, !dbg !1899
  %779 = icmp ult i64 %777, %778, !dbg !1899
  br i1 %779, label %780, label %784, !dbg !1902

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !1899
  %782 = load i64, i64* %21, align 8, !dbg !1899
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !1899
  store i8 92, i8* %783, align 1, !dbg !1899
  br label %784, !dbg !1899

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !1902
  %786 = add i64 %785, 1, !dbg !1902
  store i64 %786, i64* %21, align 8, !dbg !1902
  br label %787, !dbg !1902

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !1903
  br label %788, !dbg !1904

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !1905
  %791 = load i64, i64* %31, align 8, !dbg !1907
  %792 = add i64 %791, 1, !dbg !1908
  %793 = icmp ule i64 %790, %792, !dbg !1909
  br i1 %793, label %794, label %795, !dbg !1910

794:                                              ; preds = %789
  br label %847, !dbg !1911

795:                                              ; preds = %789
  br label %796, !dbg !1912

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !1913
  %798 = trunc i8 %797 to i1, !dbg !1913
  br i1 %798, label %799, label %827, !dbg !1913

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !1913
  %801 = trunc i8 %800 to i1, !dbg !1913
  br i1 %801, label %827, label %802, !dbg !1916

802:                                              ; preds = %799
  br label %803, !dbg !1917

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !1919
  %805 = load i64, i64* %12, align 8, !dbg !1919
  %806 = icmp ult i64 %804, %805, !dbg !1919
  br i1 %806, label %807, label %811, !dbg !1922

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !1919
  %809 = load i64, i64* %21, align 8, !dbg !1919
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !1919
  store i8 39, i8* %810, align 1, !dbg !1919
  br label %811, !dbg !1919

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !1922
  %813 = add i64 %812, 1, !dbg !1922
  store i64 %813, i64* %21, align 8, !dbg !1922
  br label %814, !dbg !1922

814:                                              ; preds = %811
  br label %815, !dbg !1917

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !1923
  %817 = load i64, i64* %12, align 8, !dbg !1923
  %818 = icmp ult i64 %816, %817, !dbg !1923
  br i1 %818, label %819, label %823, !dbg !1926

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !1923
  %821 = load i64, i64* %21, align 8, !dbg !1923
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !1923
  store i8 39, i8* %822, align 1, !dbg !1923
  br label %823, !dbg !1923

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !1926
  %825 = add i64 %824, 1, !dbg !1926
  store i64 %825, i64* %21, align 8, !dbg !1926
  br label %826, !dbg !1926

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !1917
  br label %827, !dbg !1917

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !1916

828:                                              ; preds = %827
  br label %829, !dbg !1927

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !1928
  %831 = load i64, i64* %12, align 8, !dbg !1928
  %832 = icmp ult i64 %830, %831, !dbg !1928
  br i1 %832, label %833, label %838, !dbg !1931

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !1928
  %835 = load i8*, i8** %11, align 8, !dbg !1928
  %836 = load i64, i64* %21, align 8, !dbg !1928
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !1928
  store i8 %834, i8* %837, align 1, !dbg !1928
  br label %838, !dbg !1928

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !1931
  %840 = add i64 %839, 1, !dbg !1931
  store i64 %840, i64* %21, align 8, !dbg !1931
  br label %841, !dbg !1931

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !1932
  %843 = load i64, i64* %31, align 8, !dbg !1933
  %844 = add i64 %843, 1, !dbg !1933
  store i64 %844, i64* %31, align 8, !dbg !1933
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !1932
  %846 = load i8, i8* %845, align 1, !dbg !1932
  store i8 %846, i8* %35, align 1, !dbg !1934
  br label %664, !dbg !1935, !llvm.loop !1936

847:                                              ; preds = %794
  br label %942, !dbg !1939

848:                                              ; preds = %657, %654
  br label %849, !dbg !1940

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !1941
  %851 = trunc i8 %850 to i1, !dbg !1941
  br i1 %851, label %852, label %855, !dbg !1943

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !1944
  %854 = icmp ne i32 %853, 2, !dbg !1945
  br i1 %854, label %858, label %855, !dbg !1946

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !1947
  %857 = trunc i8 %856 to i1, !dbg !1947
  br i1 %857, label %858, label %875, !dbg !1948

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !1949
  %860 = icmp ne i32* %859, null, !dbg !1949
  br i1 %860, label %861, label %875, !dbg !1950

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !1951
  %863 = load i8, i8* %35, align 1, !dbg !1952
  %864 = zext i8 %863 to i64, !dbg !1952
  %865 = udiv i64 %864, 32, !dbg !1953
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !1951
  %867 = load i32, i32* %866, align 4, !dbg !1951
  %868 = load i8, i8* %35, align 1, !dbg !1954
  %869 = zext i8 %868 to i64, !dbg !1954
  %870 = urem i64 %869, 32, !dbg !1955
  %871 = trunc i64 %870 to i32, !dbg !1956
  %872 = lshr i32 %867, %871, !dbg !1956
  %873 = and i32 %872, 1, !dbg !1957
  %874 = icmp ne i32 %873, 0, !dbg !1957
  br i1 %874, label %879, label %875, !dbg !1958

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !1959
  %877 = trunc i8 %876 to i1, !dbg !1959
  br i1 %877, label %879, label %878, !dbg !1960

878:                                              ; preds = %875
  br label %942, !dbg !1961

879:                                              ; preds = %875, %861
  br label %880, !dbg !1959

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !1962), !dbg !1963
  br label %881, !dbg !1964

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !1965
  %883 = trunc i8 %882 to i1, !dbg !1965
  br i1 %883, label %884, label %885, !dbg !1968

884:                                              ; preds = %881
  br label %1078, !dbg !1965

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !1968
  %886 = load i32, i32* %15, align 4, !dbg !1969
  %887 = icmp eq i32 %886, 2, !dbg !1969
  br i1 %887, label %888, label %928, !dbg !1969

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !1969
  %890 = trunc i8 %889 to i1, !dbg !1969
  br i1 %890, label %928, label %891, !dbg !1968

891:                                              ; preds = %888
  br label %892, !dbg !1971

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !1973
  %894 = load i64, i64* %12, align 8, !dbg !1973
  %895 = icmp ult i64 %893, %894, !dbg !1973
  br i1 %895, label %896, label %900, !dbg !1976

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !1973
  %898 = load i64, i64* %21, align 8, !dbg !1973
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !1973
  store i8 39, i8* %899, align 1, !dbg !1973
  br label %900, !dbg !1973

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !1976
  %902 = add i64 %901, 1, !dbg !1976
  store i64 %902, i64* %21, align 8, !dbg !1976
  br label %903, !dbg !1976

903:                                              ; preds = %900
  br label %904, !dbg !1971

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !1977
  %906 = load i64, i64* %12, align 8, !dbg !1977
  %907 = icmp ult i64 %905, %906, !dbg !1977
  br i1 %907, label %908, label %912, !dbg !1980

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !1977
  %910 = load i64, i64* %21, align 8, !dbg !1977
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !1977
  store i8 36, i8* %911, align 1, !dbg !1977
  br label %912, !dbg !1977

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !1980
  %914 = add i64 %913, 1, !dbg !1980
  store i64 %914, i64* %21, align 8, !dbg !1980
  br label %915, !dbg !1980

915:                                              ; preds = %912
  br label %916, !dbg !1971

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !1981
  %918 = load i64, i64* %12, align 8, !dbg !1981
  %919 = icmp ult i64 %917, %918, !dbg !1981
  br i1 %919, label %920, label %924, !dbg !1984

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !1981
  %922 = load i64, i64* %21, align 8, !dbg !1981
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !1981
  store i8 39, i8* %923, align 1, !dbg !1981
  br label %924, !dbg !1981

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !1984
  %926 = add i64 %925, 1, !dbg !1984
  store i64 %926, i64* %21, align 8, !dbg !1984
  br label %927, !dbg !1984

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !1971
  br label %928, !dbg !1971

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !1968

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !1985
  %931 = load i64, i64* %12, align 8, !dbg !1985
  %932 = icmp ult i64 %930, %931, !dbg !1985
  br i1 %932, label %933, label %937, !dbg !1988

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !1985
  %935 = load i64, i64* %21, align 8, !dbg !1985
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !1985
  store i8 92, i8* %936, align 1, !dbg !1985
  br label %937, !dbg !1985

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !1988
  %939 = add i64 %938, 1, !dbg !1988
  store i64 %939, i64* %21, align 8, !dbg !1988
  br label %940, !dbg !1988

940:                                              ; preds = %937
  br label %941, !dbg !1968

941:                                              ; preds = %940
  br label %942, !dbg !1968

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !1989), !dbg !1990
  br label %943, !dbg !1991

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !1992
  %945 = trunc i8 %944 to i1, !dbg !1992
  br i1 %945, label %946, label %974, !dbg !1992

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !1992
  %948 = trunc i8 %947 to i1, !dbg !1992
  br i1 %948, label %974, label %949, !dbg !1995

949:                                              ; preds = %946
  br label %950, !dbg !1996

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !1998
  %952 = load i64, i64* %12, align 8, !dbg !1998
  %953 = icmp ult i64 %951, %952, !dbg !1998
  br i1 %953, label %954, label %958, !dbg !2001

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !1998
  %956 = load i64, i64* %21, align 8, !dbg !1998
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !1998
  store i8 39, i8* %957, align 1, !dbg !1998
  br label %958, !dbg !1998

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2001
  %960 = add i64 %959, 1, !dbg !2001
  store i64 %960, i64* %21, align 8, !dbg !2001
  br label %961, !dbg !2001

961:                                              ; preds = %958
  br label %962, !dbg !1996

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2002
  %964 = load i64, i64* %12, align 8, !dbg !2002
  %965 = icmp ult i64 %963, %964, !dbg !2002
  br i1 %965, label %966, label %970, !dbg !2005

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2002
  %968 = load i64, i64* %21, align 8, !dbg !2002
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2002
  store i8 39, i8* %969, align 1, !dbg !2002
  br label %970, !dbg !2002

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2005
  %972 = add i64 %971, 1, !dbg !2005
  store i64 %972, i64* %21, align 8, !dbg !2005
  br label %973, !dbg !2005

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !1996
  br label %974, !dbg !1996

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !1995

975:                                              ; preds = %974
  br label %976, !dbg !2006

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2007
  %978 = load i64, i64* %12, align 8, !dbg !2007
  %979 = icmp ult i64 %977, %978, !dbg !2007
  br i1 %979, label %980, label %985, !dbg !2010

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2007
  %982 = load i8*, i8** %11, align 8, !dbg !2007
  %983 = load i64, i64* %21, align 8, !dbg !2007
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2007
  store i8 %981, i8* %984, align 1, !dbg !2007
  br label %985, !dbg !2007

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2010
  %987 = add i64 %986, 1, !dbg !2010
  store i64 %987, i64* %21, align 8, !dbg !2010
  br label %988, !dbg !2010

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2011
  %990 = trunc i8 %989 to i1, !dbg !2011
  br i1 %990, label %992, label %991, !dbg !2013

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2014
  br label %992, !dbg !2015

992:                                              ; preds = %991, %988
  br label %993, !dbg !2016

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2017
  %995 = add i64 %994, 1, !dbg !2017
  store i64 %995, i64* %31, align 8, !dbg !2017
  br label %139, !dbg !2018, !llvm.loop !2019

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2021
  %998 = icmp eq i64 %997, 0, !dbg !2023
  br i1 %998, label %999, label %1006, !dbg !2024

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2025
  %1001 = icmp eq i32 %1000, 2, !dbg !2026
  br i1 %1001, label %1002, label %1006, !dbg !2027

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2028
  %1004 = trunc i8 %1003 to i1, !dbg !2028
  br i1 %1004, label %1005, label %1006, !dbg !2029

1005:                                             ; preds = %1002
  br label %1078, !dbg !2030

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2031
  %1008 = icmp eq i32 %1007, 2, !dbg !2033
  br i1 %1008, label %1009, label %1038, !dbg !2034

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2035
  %1011 = trunc i8 %1010 to i1, !dbg !2035
  br i1 %1011, label %1038, label %1012, !dbg !2036

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2037
  %1014 = trunc i8 %1013 to i1, !dbg !2037
  br i1 %1014, label %1015, label %1038, !dbg !2038

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2039
  %1017 = trunc i8 %1016 to i1, !dbg !2039
  br i1 %1017, label %1018, label %1028, !dbg !2042

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2043
  %1020 = load i64, i64* %22, align 8, !dbg !2044
  %1021 = load i8*, i8** %13, align 8, !dbg !2045
  %1022 = load i64, i64* %14, align 8, !dbg !2046
  %1023 = load i32, i32* %16, align 4, !dbg !2047
  %1024 = load i32*, i32** %17, align 8, !dbg !2048
  %1025 = load i8*, i8** %18, align 8, !dbg !2049
  %1026 = load i8*, i8** %19, align 8, !dbg !2050
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2051
  store i64 %1027, i64* %10, align 8, !dbg !2052
  br label %1096, !dbg !2052

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2053
  %1030 = icmp ne i64 %1029, 0, !dbg !2053
  br i1 %1030, label %1036, label %1031, !dbg !2055

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2056
  %1033 = icmp ne i64 %1032, 0, !dbg !2056
  br i1 %1033, label %1034, label %1036, !dbg !2057

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2058
  store i64 %1035, i64* %12, align 8, !dbg !2060
  store i64 0, i64* %21, align 8, !dbg !2061
  br label %51, !dbg !2062

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2063

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2064
  %1040 = icmp ne i8* %1039, null, !dbg !2064
  br i1 %1040, label %1041, label %1068, !dbg !2066

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2067
  %1043 = trunc i8 %1042 to i1, !dbg !2067
  br i1 %1043, label %1068, label %1044, !dbg !2068

1044:                                             ; preds = %1041
  br label %1045, !dbg !2069

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2070
  %1047 = load i8, i8* %1046, align 1, !dbg !2073
  %1048 = icmp ne i8 %1047, 0, !dbg !2074
  br i1 %1048, label %1049, label %1067, !dbg !2074

1049:                                             ; preds = %1045
  br label %1050, !dbg !2075

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2076
  %1052 = load i64, i64* %12, align 8, !dbg !2076
  %1053 = icmp ult i64 %1051, %1052, !dbg !2076
  br i1 %1053, label %1054, label %1060, !dbg !2079

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2076
  %1056 = load i8, i8* %1055, align 1, !dbg !2076
  %1057 = load i8*, i8** %11, align 8, !dbg !2076
  %1058 = load i64, i64* %21, align 8, !dbg !2076
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2076
  store i8 %1056, i8* %1059, align 1, !dbg !2076
  br label %1060, !dbg !2076

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2079
  %1062 = add i64 %1061, 1, !dbg !2079
  store i64 %1062, i64* %21, align 8, !dbg !2079
  br label %1063, !dbg !2079

1063:                                             ; preds = %1060
  br label %1064, !dbg !2079

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2080
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2080
  store i8* %1066, i8** %23, align 8, !dbg !2080
  br label %1045, !dbg !2081, !llvm.loop !2082

1067:                                             ; preds = %1045
  br label %1068, !dbg !2083

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2084
  %1070 = load i64, i64* %12, align 8, !dbg !2086
  %1071 = icmp ult i64 %1069, %1070, !dbg !2087
  br i1 %1071, label %1072, label %1076, !dbg !2088

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2089
  %1074 = load i64, i64* %21, align 8, !dbg !2090
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2089
  store i8 0, i8* %1075, align 1, !dbg !2091
  br label %1076, !dbg !2089

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2092
  store i64 %1077, i64* %10, align 8, !dbg !2093
  br label %1096, !dbg !2093

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2094), !dbg !2095
  %1079 = load i32, i32* %15, align 4, !dbg !2096
  %1080 = icmp eq i32 %1079, 2, !dbg !2098
  br i1 %1080, label %1081, label %1085, !dbg !2099

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2100
  %1083 = trunc i8 %1082 to i1, !dbg !2100
  br i1 %1083, label %1084, label %1085, !dbg !2101

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2102
  br label %1085, !dbg !2103

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2104
  %1087 = load i64, i64* %12, align 8, !dbg !2105
  %1088 = load i8*, i8** %13, align 8, !dbg !2106
  %1089 = load i64, i64* %14, align 8, !dbg !2107
  %1090 = load i32, i32* %15, align 4, !dbg !2108
  %1091 = load i32, i32* %16, align 4, !dbg !2109
  %1092 = and i32 %1091, -3, !dbg !2110
  %1093 = load i8*, i8** %18, align 8, !dbg !2111
  %1094 = load i8*, i8** %19, align 8, !dbg !2112
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2113
  store i64 %1095, i64* %10, align 8, !dbg !2114
  br label %1096, !dbg !2114

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2115
  ret i64 %1097, !dbg !2115
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !172 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2116, metadata !DIExpression()), !dbg !2117
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2118, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2120, metadata !DIExpression()), !dbg !2121
  %9 = load i8*, i8** %4, align 8, !dbg !2122
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.94, i64 0, i64 0), i8* noundef %9) #18, !dbg !2122
  store i8* %10, i8** %6, align 8, !dbg !2121
  %11 = load i8*, i8** %6, align 8, !dbg !2123
  %12 = load i8*, i8** %4, align 8, !dbg !2125
  %13 = icmp ne i8* %11, %12, !dbg !2126
  br i1 %13, label %14, label %16, !dbg !2127

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2128
  store i8* %15, i8** %3, align 8, !dbg !2129
  br label %37, !dbg !2129

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2130, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2132, metadata !DIExpression()), !dbg !2133
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2134
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2135
  %18 = icmp eq i64 %17, 3, !dbg !2137
  br i1 %18, label %19, label %32, !dbg !2138

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2139
  %21 = icmp eq i32 %20, 8216, !dbg !2140
  br i1 %21, label %22, label %32, !dbg !2141

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2142
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2142
  %25 = load i8, i8* %24, align 1, !dbg !2142
  %26 = zext i8 %25 to i32, !dbg !2142
  %27 = icmp eq i32 %26, 39, !dbg !2143
  %28 = zext i1 %27 to i32, !dbg !2143
  %29 = sext i32 %28 to i64, !dbg !2144
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2144
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2144
  store i8* %31, i8** %3, align 8, !dbg !2145
  br label %37, !dbg !2145

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2146
  %34 = icmp eq i32 %33, 9, !dbg !2147
  %35 = zext i1 %34 to i64, !dbg !2146
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.91, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), !dbg !2146
  store i8* %36, i8** %3, align 8, !dbg !2148
  br label %37, !dbg !2148

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2149
  ret i8* %38, !dbg !2149
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2150 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2153, metadata !DIExpression()), !dbg !2154
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2155, metadata !DIExpression()), !dbg !2156
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2157, metadata !DIExpression()), !dbg !2158
  %7 = load i8*, i8** %4, align 8, !dbg !2159
  %8 = load i64, i64* %5, align 8, !dbg !2160
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2161
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2162
  ret i8* %10, !dbg !2163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2164 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2167, metadata !DIExpression()), !dbg !2168
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2169, metadata !DIExpression()), !dbg !2170
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2171, metadata !DIExpression()), !dbg !2172
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2173, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2175, metadata !DIExpression()), !dbg !2176
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2177
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2177
  br i1 %15, label %16, label %18, !dbg !2177

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2178
  br label %19, !dbg !2177

18:                                               ; preds = %4
  br label %19, !dbg !2177

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2177
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2176
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2179, metadata !DIExpression()), !dbg !2180
  %21 = call i32* @__errno_location() #21, !dbg !2181
  %22 = load i32, i32* %21, align 4, !dbg !2181
  store i32 %22, i32* %10, align 4, !dbg !2180
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2182, metadata !DIExpression()), !dbg !2183
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2184
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2185
  %25 = load i32, i32* %24, align 4, !dbg !2185
  %26 = load i64*, i64** %7, align 8, !dbg !2186
  %27 = icmp ne i64* %26, null, !dbg !2186
  %28 = zext i1 %27 to i64, !dbg !2186
  %29 = select i1 %27, i32 0, i32 1, !dbg !2186
  %30 = or i32 %25, %29, !dbg !2187
  store i32 %30, i32* %11, align 4, !dbg !2183
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2188, metadata !DIExpression()), !dbg !2189
  %31 = load i8*, i8** %5, align 8, !dbg !2190
  %32 = load i64, i64* %6, align 8, !dbg !2191
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2192
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2193
  %35 = load i32, i32* %34, align 8, !dbg !2193
  %36 = load i32, i32* %11, align 4, !dbg !2194
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2195
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2196
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2195
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2197
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2198
  %42 = load i8*, i8** %41, align 8, !dbg !2198
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2199
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2200
  %45 = load i8*, i8** %44, align 8, !dbg !2200
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2201
  %47 = add i64 %46, 1, !dbg !2202
  store i64 %47, i64* %12, align 8, !dbg !2189
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2203, metadata !DIExpression()), !dbg !2204
  %48 = load i64, i64* %12, align 8, !dbg !2205
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2206
  store i8* %49, i8** %13, align 8, !dbg !2204
  %50 = load i8*, i8** %13, align 8, !dbg !2207
  %51 = load i64, i64* %12, align 8, !dbg !2208
  %52 = load i8*, i8** %5, align 8, !dbg !2209
  %53 = load i64, i64* %6, align 8, !dbg !2210
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2211
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2212
  %56 = load i32, i32* %55, align 8, !dbg !2212
  %57 = load i32, i32* %11, align 4, !dbg !2213
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2214
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2215
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2214
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2216
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2217
  %63 = load i8*, i8** %62, align 8, !dbg !2217
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2218
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2219
  %66 = load i8*, i8** %65, align 8, !dbg !2219
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2220
  %68 = load i32, i32* %10, align 4, !dbg !2221
  %69 = call i32* @__errno_location() #21, !dbg !2222
  store i32 %68, i32* %69, align 4, !dbg !2223
  %70 = load i64*, i64** %7, align 8, !dbg !2224
  %71 = icmp ne i64* %70, null, !dbg !2224
  br i1 %71, label %72, label %76, !dbg !2226

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2227
  %74 = sub i64 %73, 1, !dbg !2228
  %75 = load i64*, i64** %7, align 8, !dbg !2229
  store i64 %74, i64* %75, align 8, !dbg !2230
  br label %76, !dbg !2231

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2232
  ret i8* %77, !dbg !2233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2234 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2235, metadata !DIExpression()), !dbg !2236
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2237
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2236
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2238, metadata !DIExpression()), !dbg !2240
  store i32 1, i32* %2, align 4, !dbg !2240
  br label %4, !dbg !2241

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2242
  %6 = load i32, i32* @nslots, align 4, !dbg !2244
  %7 = icmp slt i32 %5, %6, !dbg !2245
  br i1 %7, label %8, label %18, !dbg !2246

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2247
  %10 = load i32, i32* %2, align 4, !dbg !2248
  %11 = sext i32 %10 to i64, !dbg !2247
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2247
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2249
  %14 = load i8*, i8** %13, align 8, !dbg !2249
  call void @free(i8* noundef %14) #18, !dbg !2250
  br label %15, !dbg !2250

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2251
  %17 = add nsw i32 %16, 1, !dbg !2251
  store i32 %17, i32* %2, align 4, !dbg !2251
  br label %4, !dbg !2252, !llvm.loop !2253

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2255
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2255
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2257
  %22 = load i8*, i8** %21, align 8, !dbg !2257
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2258
  br i1 %23, label %24, label %29, !dbg !2259

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2260
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2260
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2262
  %28 = load i8*, i8** %27, align 8, !dbg !2262
  call void @free(i8* noundef %28) #18, !dbg !2263
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2264
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2265
  br label %29, !dbg !2266

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2267
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2269
  br i1 %31, label %32, label %35, !dbg !2270

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2271
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2271
  call void @free(i8* noundef %34) #18, !dbg !2273
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2274
  br label %35, !dbg !2275

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2276
  ret void, !dbg !2277
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2278 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2281, metadata !DIExpression()), !dbg !2282
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2283, metadata !DIExpression()), !dbg !2284
  %5 = load i32, i32* %3, align 4, !dbg !2285
  %6 = load i8*, i8** %4, align 8, !dbg !2286
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2287
  ret i8* %7, !dbg !2288
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2289 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2292, metadata !DIExpression()), !dbg !2293
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2294, metadata !DIExpression()), !dbg !2295
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2296, metadata !DIExpression()), !dbg !2297
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2298, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2300, metadata !DIExpression()), !dbg !2301
  %18 = call i32* @__errno_location() #21, !dbg !2302
  %19 = load i32, i32* %18, align 4, !dbg !2302
  store i32 %19, i32* %9, align 4, !dbg !2301
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2303, metadata !DIExpression()), !dbg !2304
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2305
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2304
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2306, metadata !DIExpression()), !dbg !2307
  store i32 2147483647, i32* %11, align 4, !dbg !2307
  %21 = load i32, i32* %5, align 4, !dbg !2308
  %22 = icmp sle i32 0, %21, !dbg !2310
  br i1 %22, label %23, label %27, !dbg !2311

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2312
  %25 = load i32, i32* %11, align 4, !dbg !2313
  %26 = icmp slt i32 %24, %25, !dbg !2314
  br i1 %26, label %28, label %27, !dbg !2315

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2316
  unreachable, !dbg !2316

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2317
  %30 = load i32, i32* %5, align 4, !dbg !2319
  %31 = icmp sle i32 %29, %30, !dbg !2320
  br i1 %31, label %32, label %73, !dbg !2321

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2322, metadata !DIExpression()), !dbg !2324
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2325
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2326
  %35 = zext i1 %34 to i8, !dbg !2324
  store i8 %35, i8* %12, align 1, !dbg !2324
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2327, metadata !DIExpression()), !dbg !2328
  %36 = load i32, i32* @nslots, align 4, !dbg !2329
  %37 = sext i32 %36 to i64, !dbg !2329
  store i64 %37, i64* %13, align 8, !dbg !2328
  %38 = load i8, i8* %12, align 1, !dbg !2330
  %39 = trunc i8 %38 to i1, !dbg !2330
  br i1 %39, label %40, label %41, !dbg !2330

40:                                               ; preds = %32
  br label %43, !dbg !2330

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2331
  br label %43, !dbg !2330

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2330
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2330
  %46 = load i32, i32* %5, align 4, !dbg !2332
  %47 = load i32, i32* @nslots, align 4, !dbg !2333
  %48 = sub nsw i32 %46, %47, !dbg !2334
  %49 = add nsw i32 %48, 1, !dbg !2335
  %50 = sext i32 %49 to i64, !dbg !2332
  %51 = load i32, i32* %11, align 4, !dbg !2336
  %52 = sext i32 %51 to i64, !dbg !2336
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2337
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2337
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2338
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2339
  %55 = load i8, i8* %12, align 1, !dbg !2340
  %56 = trunc i8 %55 to i1, !dbg !2340
  br i1 %56, label %57, label %60, !dbg !2342

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2343
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2344
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2344
  br label %60, !dbg !2345

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2346
  %62 = load i32, i32* @nslots, align 4, !dbg !2347
  %63 = sext i32 %62 to i64, !dbg !2348
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2348
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2349
  %66 = load i64, i64* %13, align 8, !dbg !2350
  %67 = load i32, i32* @nslots, align 4, !dbg !2351
  %68 = sext i32 %67 to i64, !dbg !2351
  %69 = sub nsw i64 %66, %68, !dbg !2352
  %70 = mul i64 %69, 16, !dbg !2353
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2349
  %71 = load i64, i64* %13, align 8, !dbg !2354
  %72 = trunc i64 %71 to i32, !dbg !2354
  store i32 %72, i32* @nslots, align 4, !dbg !2355
  br label %73, !dbg !2356

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2357, metadata !DIExpression()), !dbg !2359
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2360
  %75 = load i32, i32* %5, align 4, !dbg !2361
  %76 = sext i32 %75 to i64, !dbg !2360
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2360
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2362
  %79 = load i64, i64* %78, align 8, !dbg !2362
  store i64 %79, i64* %14, align 8, !dbg !2359
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2363, metadata !DIExpression()), !dbg !2364
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2365
  %81 = load i32, i32* %5, align 4, !dbg !2366
  %82 = sext i32 %81 to i64, !dbg !2365
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2365
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2367
  %85 = load i8*, i8** %84, align 8, !dbg !2367
  store i8* %85, i8** %15, align 8, !dbg !2364
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2368, metadata !DIExpression()), !dbg !2369
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2370
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2371
  %88 = load i32, i32* %87, align 4, !dbg !2371
  %89 = or i32 %88, 1, !dbg !2372
  store i32 %89, i32* %16, align 4, !dbg !2369
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2373, metadata !DIExpression()), !dbg !2374
  %90 = load i8*, i8** %15, align 8, !dbg !2375
  %91 = load i64, i64* %14, align 8, !dbg !2376
  %92 = load i8*, i8** %6, align 8, !dbg !2377
  %93 = load i64, i64* %7, align 8, !dbg !2378
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2379
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2380
  %96 = load i32, i32* %95, align 8, !dbg !2380
  %97 = load i32, i32* %16, align 4, !dbg !2381
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2382
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2383
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2382
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2384
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2385
  %103 = load i8*, i8** %102, align 8, !dbg !2385
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2386
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2387
  %106 = load i8*, i8** %105, align 8, !dbg !2387
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2388
  store i64 %107, i64* %17, align 8, !dbg !2374
  %108 = load i64, i64* %14, align 8, !dbg !2389
  %109 = load i64, i64* %17, align 8, !dbg !2391
  %110 = icmp ule i64 %108, %109, !dbg !2392
  br i1 %110, label %111, label %149, !dbg !2393

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2394
  %113 = add i64 %112, 1, !dbg !2396
  store i64 %113, i64* %14, align 8, !dbg !2397
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2398
  %115 = load i32, i32* %5, align 4, !dbg !2399
  %116 = sext i32 %115 to i64, !dbg !2398
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2398
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2400
  store i64 %113, i64* %118, align 8, !dbg !2401
  %119 = load i8*, i8** %15, align 8, !dbg !2402
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2404
  br i1 %120, label %121, label %123, !dbg !2405

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2406
  call void @free(i8* noundef %122) #18, !dbg !2407
  br label %123, !dbg !2407

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2408
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2409
  store i8* %125, i8** %15, align 8, !dbg !2410
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2411
  %127 = load i32, i32* %5, align 4, !dbg !2412
  %128 = sext i32 %127 to i64, !dbg !2411
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2411
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2413
  store i8* %125, i8** %130, align 8, !dbg !2414
  %131 = load i8*, i8** %15, align 8, !dbg !2415
  %132 = load i64, i64* %14, align 8, !dbg !2416
  %133 = load i8*, i8** %6, align 8, !dbg !2417
  %134 = load i64, i64* %7, align 8, !dbg !2418
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2419
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2420
  %137 = load i32, i32* %136, align 8, !dbg !2420
  %138 = load i32, i32* %16, align 4, !dbg !2421
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2422
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2423
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2422
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2424
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2425
  %144 = load i8*, i8** %143, align 8, !dbg !2425
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2426
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2427
  %147 = load i8*, i8** %146, align 8, !dbg !2427
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2428
  br label %149, !dbg !2429

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2430
  %151 = call i32* @__errno_location() #21, !dbg !2431
  store i32 %150, i32* %151, align 4, !dbg !2432
  %152 = load i8*, i8** %15, align 8, !dbg !2433
  ret i8* %152, !dbg !2434
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2435 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2438, metadata !DIExpression()), !dbg !2439
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2440, metadata !DIExpression()), !dbg !2441
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2442, metadata !DIExpression()), !dbg !2443
  %7 = load i32, i32* %4, align 4, !dbg !2444
  %8 = load i8*, i8** %5, align 8, !dbg !2445
  %9 = load i64, i64* %6, align 8, !dbg !2446
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2447
  ret i8* %10, !dbg !2448
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2449 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2452, metadata !DIExpression()), !dbg !2453
  %3 = load i8*, i8** %2, align 8, !dbg !2454
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2455
  ret i8* %4, !dbg !2456
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2457 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2460, metadata !DIExpression()), !dbg !2461
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2462, metadata !DIExpression()), !dbg !2463
  %5 = load i8*, i8** %3, align 8, !dbg !2464
  %6 = load i64, i64* %4, align 8, !dbg !2465
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2466
  ret i8* %7, !dbg !2467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2468 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2471, metadata !DIExpression()), !dbg !2472
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2473, metadata !DIExpression()), !dbg !2474
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2475, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2477, metadata !DIExpression()), !dbg !2478
  %8 = load i32, i32* %5, align 4, !dbg !2479
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2480
  %9 = load i32, i32* %4, align 4, !dbg !2481
  %10 = load i8*, i8** %6, align 8, !dbg !2482
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2483
  ret i8* %11, !dbg !2484
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2485 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2488, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2490, metadata !DIExpression()), !dbg !2491
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2491
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2491
  %5 = load i32, i32* %3, align 4, !dbg !2492
  %6 = icmp eq i32 %5, 10, !dbg !2494
  br i1 %6, label %7, label %8, !dbg !2495

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2496
  unreachable, !dbg !2496

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2497
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2498
  store i32 %9, i32* %10, align 8, !dbg !2499
  ret void, !dbg !2500
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2501 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2504, metadata !DIExpression()), !dbg !2505
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2506, metadata !DIExpression()), !dbg !2507
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2508, metadata !DIExpression()), !dbg !2509
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2510, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2512, metadata !DIExpression()), !dbg !2513
  %10 = load i32, i32* %6, align 4, !dbg !2514
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2515
  %11 = load i32, i32* %5, align 4, !dbg !2516
  %12 = load i8*, i8** %7, align 8, !dbg !2517
  %13 = load i64, i64* %8, align 8, !dbg !2518
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2519
  ret i8* %14, !dbg !2520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2521 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2524, metadata !DIExpression()), !dbg !2525
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2526, metadata !DIExpression()), !dbg !2527
  %5 = load i32, i32* %3, align 4, !dbg !2528
  %6 = load i8*, i8** %4, align 8, !dbg !2529
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2530
  ret i8* %7, !dbg !2531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2532 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2535, metadata !DIExpression()), !dbg !2536
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2537, metadata !DIExpression()), !dbg !2538
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2539, metadata !DIExpression()), !dbg !2540
  %7 = load i32, i32* %4, align 4, !dbg !2541
  %8 = load i8*, i8** %5, align 8, !dbg !2542
  %9 = load i64, i64* %6, align 8, !dbg !2543
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2544
  ret i8* %10, !dbg !2545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2546 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2549, metadata !DIExpression()), !dbg !2550
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2551, metadata !DIExpression()), !dbg !2552
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2553, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2555, metadata !DIExpression()), !dbg !2556
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2557
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2557
  %9 = load i8, i8* %6, align 1, !dbg !2558
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2559
  %11 = load i8*, i8** %4, align 8, !dbg !2560
  %12 = load i64, i64* %5, align 8, !dbg !2561
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2562
  ret i8* %13, !dbg !2563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2564 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2567, metadata !DIExpression()), !dbg !2568
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2569, metadata !DIExpression()), !dbg !2570
  %5 = load i8*, i8** %3, align 8, !dbg !2571
  %6 = load i8, i8* %4, align 1, !dbg !2572
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2573
  ret i8* %7, !dbg !2574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2575 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2576, metadata !DIExpression()), !dbg !2577
  %3 = load i8*, i8** %2, align 8, !dbg !2578
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2579
  ret i8* %4, !dbg !2580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2581 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2582, metadata !DIExpression()), !dbg !2583
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2584, metadata !DIExpression()), !dbg !2585
  %5 = load i8*, i8** %3, align 8, !dbg !2586
  %6 = load i64, i64* %4, align 8, !dbg !2587
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2588
  ret i8* %7, !dbg !2589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2590 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2591, metadata !DIExpression()), !dbg !2592
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2593, metadata !DIExpression()), !dbg !2594
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2595, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2597, metadata !DIExpression()), !dbg !2598
  %9 = load i32, i32* %5, align 4, !dbg !2599
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2600
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2600
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2600
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2601
  %13 = load i32, i32* %4, align 4, !dbg !2602
  %14 = load i8*, i8** %6, align 8, !dbg !2603
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2604
  ret i8* %15, !dbg !2605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2606 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2609, metadata !DIExpression()), !dbg !2610
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2611, metadata !DIExpression()), !dbg !2612
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2613, metadata !DIExpression()), !dbg !2614
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2615, metadata !DIExpression()), !dbg !2616
  %9 = load i32, i32* %5, align 4, !dbg !2617
  %10 = load i8*, i8** %6, align 8, !dbg !2618
  %11 = load i8*, i8** %7, align 8, !dbg !2619
  %12 = load i8*, i8** %8, align 8, !dbg !2620
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2621
  ret i8* %13, !dbg !2622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2623 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2626, metadata !DIExpression()), !dbg !2627
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2628, metadata !DIExpression()), !dbg !2629
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2630, metadata !DIExpression()), !dbg !2631
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2632, metadata !DIExpression()), !dbg !2633
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2634, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2636, metadata !DIExpression()), !dbg !2637
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2638
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2638
  %13 = load i8*, i8** %7, align 8, !dbg !2639
  %14 = load i8*, i8** %8, align 8, !dbg !2640
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2641
  %15 = load i32, i32* %6, align 4, !dbg !2642
  %16 = load i8*, i8** %9, align 8, !dbg !2643
  %17 = load i64, i64* %10, align 8, !dbg !2644
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2645
  ret i8* %18, !dbg !2646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2647 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2650, metadata !DIExpression()), !dbg !2651
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2652, metadata !DIExpression()), !dbg !2653
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2654, metadata !DIExpression()), !dbg !2655
  %7 = load i8*, i8** %4, align 8, !dbg !2656
  %8 = load i8*, i8** %5, align 8, !dbg !2657
  %9 = load i8*, i8** %6, align 8, !dbg !2658
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2659
  ret i8* %10, !dbg !2660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2661 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2664, metadata !DIExpression()), !dbg !2665
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2666, metadata !DIExpression()), !dbg !2667
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2668, metadata !DIExpression()), !dbg !2669
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2670, metadata !DIExpression()), !dbg !2671
  %9 = load i8*, i8** %5, align 8, !dbg !2672
  %10 = load i8*, i8** %6, align 8, !dbg !2673
  %11 = load i8*, i8** %7, align 8, !dbg !2674
  %12 = load i64, i64* %8, align 8, !dbg !2675
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2676
  ret i8* %13, !dbg !2677
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2678 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2681, metadata !DIExpression()), !dbg !2682
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2683, metadata !DIExpression()), !dbg !2684
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2685, metadata !DIExpression()), !dbg !2686
  %7 = load i32, i32* %4, align 4, !dbg !2687
  %8 = load i8*, i8** %5, align 8, !dbg !2688
  %9 = load i64, i64* %6, align 8, !dbg !2689
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2690
  ret i8* %10, !dbg !2691
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2692 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2695, metadata !DIExpression()), !dbg !2696
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2697, metadata !DIExpression()), !dbg !2698
  %5 = load i8*, i8** %3, align 8, !dbg !2699
  %6 = load i64, i64* %4, align 8, !dbg !2700
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2701
  ret i8* %7, !dbg !2702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2703 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2706, metadata !DIExpression()), !dbg !2707
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2708, metadata !DIExpression()), !dbg !2709
  %5 = load i32, i32* %3, align 4, !dbg !2710
  %6 = load i8*, i8** %4, align 8, !dbg !2711
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2712
  ret i8* %7, !dbg !2713
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !2714 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2717, metadata !DIExpression()), !dbg !2718
  %3 = load i8*, i8** %2, align 8, !dbg !2719
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !2720
  ret i8* %4, !dbg !2721
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !2722 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2726, metadata !DIExpression()), !dbg !2727
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2728, metadata !DIExpression()), !dbg !2729
  %5 = load i8*, i8** %3, align 8, !dbg !2730
  %6 = load i8*, i8** %4, align 8, !dbg !2731
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !2732
  %8 = icmp ne i32 %7, 0, !dbg !2733
  %9 = xor i1 %8, true, !dbg !2733
  ret i1 %9, !dbg !2734
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !2735 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !2792, metadata !DIExpression()), !dbg !2793
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2794, metadata !DIExpression()), !dbg !2795
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2796, metadata !DIExpression()), !dbg !2797
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2798, metadata !DIExpression()), !dbg !2799
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2800, metadata !DIExpression()), !dbg !2801
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2802, metadata !DIExpression()), !dbg !2803
  %13 = load i8*, i8** %8, align 8, !dbg !2804
  %14 = icmp ne i8* %13, null, !dbg !2804
  br i1 %14, label %15, label %21, !dbg !2806

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2807
  %17 = load i8*, i8** %8, align 8, !dbg !2808
  %18 = load i8*, i8** %9, align 8, !dbg !2809
  %19 = load i8*, i8** %10, align 8, !dbg !2810
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !2811
  br label %26, !dbg !2811

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2812
  %23 = load i8*, i8** %9, align 8, !dbg !2813
  %24 = load i8*, i8** %10, align 8, !dbg !2814
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.100, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !2815
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2816
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.102, i64 0, i64 0)) #18, !dbg !2817
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !2818
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2819
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.103, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !2819
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2820
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.104, i64 0, i64 0)) #18, !dbg !2821
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.105, i64 0, i64 0)), !dbg !2822
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2823
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.103, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !2823
  %37 = load i64, i64* %12, align 8, !dbg !2824
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
  ], !dbg !2825

38:                                               ; preds = %26
  br label %241, !dbg !2826

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2828
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.106, i64 0, i64 0)) #18, !dbg !2829
  %42 = load i8**, i8*** %11, align 8, !dbg !2830
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !2830
  %44 = load i8*, i8** %43, align 8, !dbg !2830
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !2831
  br label %241, !dbg !2832

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2833
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.107, i64 0, i64 0)) #18, !dbg !2834
  %49 = load i8**, i8*** %11, align 8, !dbg !2835
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !2835
  %51 = load i8*, i8** %50, align 8, !dbg !2835
  %52 = load i8**, i8*** %11, align 8, !dbg !2836
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !2836
  %54 = load i8*, i8** %53, align 8, !dbg !2836
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !2837
  br label %241, !dbg !2838

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2839
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.108, i64 0, i64 0)) #18, !dbg !2840
  %59 = load i8**, i8*** %11, align 8, !dbg !2841
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !2841
  %61 = load i8*, i8** %60, align 8, !dbg !2841
  %62 = load i8**, i8*** %11, align 8, !dbg !2842
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !2842
  %64 = load i8*, i8** %63, align 8, !dbg !2842
  %65 = load i8**, i8*** %11, align 8, !dbg !2843
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !2843
  %67 = load i8*, i8** %66, align 8, !dbg !2843
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !2844
  br label %241, !dbg !2845

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2846
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.109, i64 0, i64 0)) #18, !dbg !2847
  %72 = load i8**, i8*** %11, align 8, !dbg !2848
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !2848
  %74 = load i8*, i8** %73, align 8, !dbg !2848
  %75 = load i8**, i8*** %11, align 8, !dbg !2849
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !2849
  %77 = load i8*, i8** %76, align 8, !dbg !2849
  %78 = load i8**, i8*** %11, align 8, !dbg !2850
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !2850
  %80 = load i8*, i8** %79, align 8, !dbg !2850
  %81 = load i8**, i8*** %11, align 8, !dbg !2851
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !2851
  %83 = load i8*, i8** %82, align 8, !dbg !2851
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !2852
  br label %241, !dbg !2853

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2854
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.110, i64 0, i64 0)) #18, !dbg !2855
  %88 = load i8**, i8*** %11, align 8, !dbg !2856
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !2856
  %90 = load i8*, i8** %89, align 8, !dbg !2856
  %91 = load i8**, i8*** %11, align 8, !dbg !2857
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !2857
  %93 = load i8*, i8** %92, align 8, !dbg !2857
  %94 = load i8**, i8*** %11, align 8, !dbg !2858
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !2858
  %96 = load i8*, i8** %95, align 8, !dbg !2858
  %97 = load i8**, i8*** %11, align 8, !dbg !2859
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !2859
  %99 = load i8*, i8** %98, align 8, !dbg !2859
  %100 = load i8**, i8*** %11, align 8, !dbg !2860
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !2860
  %102 = load i8*, i8** %101, align 8, !dbg !2860
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !2861
  br label %241, !dbg !2862

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2863
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.111, i64 0, i64 0)) #18, !dbg !2864
  %107 = load i8**, i8*** %11, align 8, !dbg !2865
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !2865
  %109 = load i8*, i8** %108, align 8, !dbg !2865
  %110 = load i8**, i8*** %11, align 8, !dbg !2866
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !2866
  %112 = load i8*, i8** %111, align 8, !dbg !2866
  %113 = load i8**, i8*** %11, align 8, !dbg !2867
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !2867
  %115 = load i8*, i8** %114, align 8, !dbg !2867
  %116 = load i8**, i8*** %11, align 8, !dbg !2868
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !2868
  %118 = load i8*, i8** %117, align 8, !dbg !2868
  %119 = load i8**, i8*** %11, align 8, !dbg !2869
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !2869
  %121 = load i8*, i8** %120, align 8, !dbg !2869
  %122 = load i8**, i8*** %11, align 8, !dbg !2870
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !2870
  %124 = load i8*, i8** %123, align 8, !dbg !2870
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !2871
  br label %241, !dbg !2872

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2873
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.112, i64 0, i64 0)) #18, !dbg !2874
  %129 = load i8**, i8*** %11, align 8, !dbg !2875
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !2875
  %131 = load i8*, i8** %130, align 8, !dbg !2875
  %132 = load i8**, i8*** %11, align 8, !dbg !2876
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !2876
  %134 = load i8*, i8** %133, align 8, !dbg !2876
  %135 = load i8**, i8*** %11, align 8, !dbg !2877
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !2877
  %137 = load i8*, i8** %136, align 8, !dbg !2877
  %138 = load i8**, i8*** %11, align 8, !dbg !2878
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !2878
  %140 = load i8*, i8** %139, align 8, !dbg !2878
  %141 = load i8**, i8*** %11, align 8, !dbg !2879
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !2879
  %143 = load i8*, i8** %142, align 8, !dbg !2879
  %144 = load i8**, i8*** %11, align 8, !dbg !2880
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !2880
  %146 = load i8*, i8** %145, align 8, !dbg !2880
  %147 = load i8**, i8*** %11, align 8, !dbg !2881
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !2881
  %149 = load i8*, i8** %148, align 8, !dbg !2881
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !2882
  br label %241, !dbg !2883

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2884
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.113, i64 0, i64 0)) #18, !dbg !2885
  %154 = load i8**, i8*** %11, align 8, !dbg !2886
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !2886
  %156 = load i8*, i8** %155, align 8, !dbg !2886
  %157 = load i8**, i8*** %11, align 8, !dbg !2887
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !2887
  %159 = load i8*, i8** %158, align 8, !dbg !2887
  %160 = load i8**, i8*** %11, align 8, !dbg !2888
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !2888
  %162 = load i8*, i8** %161, align 8, !dbg !2888
  %163 = load i8**, i8*** %11, align 8, !dbg !2889
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !2889
  %165 = load i8*, i8** %164, align 8, !dbg !2889
  %166 = load i8**, i8*** %11, align 8, !dbg !2890
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !2890
  %168 = load i8*, i8** %167, align 8, !dbg !2890
  %169 = load i8**, i8*** %11, align 8, !dbg !2891
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !2891
  %171 = load i8*, i8** %170, align 8, !dbg !2891
  %172 = load i8**, i8*** %11, align 8, !dbg !2892
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !2892
  %174 = load i8*, i8** %173, align 8, !dbg !2892
  %175 = load i8**, i8*** %11, align 8, !dbg !2893
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !2893
  %177 = load i8*, i8** %176, align 8, !dbg !2893
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !2894
  br label %241, !dbg !2895

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2896
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.114, i64 0, i64 0)) #18, !dbg !2897
  %182 = load i8**, i8*** %11, align 8, !dbg !2898
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !2898
  %184 = load i8*, i8** %183, align 8, !dbg !2898
  %185 = load i8**, i8*** %11, align 8, !dbg !2899
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !2899
  %187 = load i8*, i8** %186, align 8, !dbg !2899
  %188 = load i8**, i8*** %11, align 8, !dbg !2900
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !2900
  %190 = load i8*, i8** %189, align 8, !dbg !2900
  %191 = load i8**, i8*** %11, align 8, !dbg !2901
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !2901
  %193 = load i8*, i8** %192, align 8, !dbg !2901
  %194 = load i8**, i8*** %11, align 8, !dbg !2902
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !2902
  %196 = load i8*, i8** %195, align 8, !dbg !2902
  %197 = load i8**, i8*** %11, align 8, !dbg !2903
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !2903
  %199 = load i8*, i8** %198, align 8, !dbg !2903
  %200 = load i8**, i8*** %11, align 8, !dbg !2904
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !2904
  %202 = load i8*, i8** %201, align 8, !dbg !2904
  %203 = load i8**, i8*** %11, align 8, !dbg !2905
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !2905
  %205 = load i8*, i8** %204, align 8, !dbg !2905
  %206 = load i8**, i8*** %11, align 8, !dbg !2906
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !2906
  %208 = load i8*, i8** %207, align 8, !dbg !2906
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !2907
  br label %241, !dbg !2908

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2909
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.115, i64 0, i64 0)) #18, !dbg !2910
  %213 = load i8**, i8*** %11, align 8, !dbg !2911
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !2911
  %215 = load i8*, i8** %214, align 8, !dbg !2911
  %216 = load i8**, i8*** %11, align 8, !dbg !2912
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !2912
  %218 = load i8*, i8** %217, align 8, !dbg !2912
  %219 = load i8**, i8*** %11, align 8, !dbg !2913
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !2913
  %221 = load i8*, i8** %220, align 8, !dbg !2913
  %222 = load i8**, i8*** %11, align 8, !dbg !2914
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !2914
  %224 = load i8*, i8** %223, align 8, !dbg !2914
  %225 = load i8**, i8*** %11, align 8, !dbg !2915
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !2915
  %227 = load i8*, i8** %226, align 8, !dbg !2915
  %228 = load i8**, i8*** %11, align 8, !dbg !2916
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !2916
  %230 = load i8*, i8** %229, align 8, !dbg !2916
  %231 = load i8**, i8*** %11, align 8, !dbg !2917
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !2917
  %233 = load i8*, i8** %232, align 8, !dbg !2917
  %234 = load i8**, i8*** %11, align 8, !dbg !2918
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !2918
  %236 = load i8*, i8** %235, align 8, !dbg !2918
  %237 = load i8**, i8*** %11, align 8, !dbg !2919
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !2919
  %239 = load i8*, i8** %238, align 8, !dbg !2919
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !2920
  br label %241, !dbg !2921

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !2922
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !2923 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2926, metadata !DIExpression()), !dbg !2927
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2928, metadata !DIExpression()), !dbg !2929
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2930, metadata !DIExpression()), !dbg !2931
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2932, metadata !DIExpression()), !dbg !2933
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !2934, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2936, metadata !DIExpression()), !dbg !2937
  store i64 0, i64* %11, align 8, !dbg !2938
  br label %12, !dbg !2940

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !2941
  %14 = load i64, i64* %11, align 8, !dbg !2943
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !2941
  %16 = load i8*, i8** %15, align 8, !dbg !2941
  %17 = icmp ne i8* %16, null, !dbg !2944
  br i1 %17, label %18, label %22, !dbg !2944

18:                                               ; preds = %12
  br label %19, !dbg !2944

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !2945
  %21 = add i64 %20, 1, !dbg !2945
  store i64 %21, i64* %11, align 8, !dbg !2945
  br label %12, !dbg !2946, !llvm.loop !2947

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2949
  %24 = load i8*, i8** %7, align 8, !dbg !2950
  %25 = load i8*, i8** %8, align 8, !dbg !2951
  %26 = load i8*, i8** %9, align 8, !dbg !2952
  %27 = load i8**, i8*** %10, align 8, !dbg !2953
  %28 = load i64, i64* %11, align 8, !dbg !2954
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !2955
  ret void, !dbg !2956
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !2957 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2971, metadata !DIExpression()), !dbg !2972
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2973, metadata !DIExpression()), !dbg !2974
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2975, metadata !DIExpression()), !dbg !2976
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2977, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2979, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2981, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !2983, metadata !DIExpression()), !dbg !2985
  store i64 0, i64* %10, align 8, !dbg !2986
  br label %12, !dbg !2988

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !2989
  %14 = icmp ult i64 %13, 10, !dbg !2991
  br i1 %14, label %15, label %38, !dbg !2992

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !2993
  %17 = load i32, i32* %16, align 8, !dbg !2993
  %18 = icmp sge i32 %17, 0, !dbg !2993
  br i1 %18, label %27, label %19, !dbg !2993

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !2993
  store i32 %20, i32* %16, align 8, !dbg !2993
  %21 = icmp sle i32 %20, 0, !dbg !2993
  br i1 %21, label %22, label %27, !dbg !2993

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !2993
  %24 = load i8*, i8** %23, align 8, !dbg !2993
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !2993
  %26 = bitcast i8* %25 to i8**, !dbg !2993
  br label %32, !dbg !2993

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !2993
  %29 = load i8*, i8** %28, align 8, !dbg !2993
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !2993
  store i8* %30, i8** %28, align 8, !dbg !2993
  %31 = bitcast i8* %29 to i8**, !dbg !2993
  br label %32, !dbg !2993

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !2993
  %34 = load i8*, i8** %33, align 8, !dbg !2993
  %35 = load i64, i64* %10, align 8, !dbg !2994
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !2995
  store i8* %34, i8** %36, align 8, !dbg !2996
  %37 = icmp ne i8* %34, null, !dbg !2997
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !2998
  br i1 %39, label %40, label %44, !dbg !2999

40:                                               ; preds = %38
  br label %41, !dbg !2999

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3000
  %43 = add i64 %42, 1, !dbg !3000
  store i64 %43, i64* %10, align 8, !dbg !3000
  br label %12, !dbg !3001, !llvm.loop !3002

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3004
  %46 = load i8*, i8** %7, align 8, !dbg !3005
  %47 = load i8*, i8** %8, align 8, !dbg !3006
  %48 = load i8*, i8** %9, align 8, !dbg !3007
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3008
  %50 = load i64, i64* %10, align 8, !dbg !3009
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3010
  ret void, !dbg !3011
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3012 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3015, metadata !DIExpression()), !dbg !3016
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3017, metadata !DIExpression()), !dbg !3018
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3019, metadata !DIExpression()), !dbg !3020
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3021, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3023, metadata !DIExpression()), !dbg !3024
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3025
  call void @llvm.va_start(i8* %11), !dbg !3025
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3026
  %13 = load i8*, i8** %6, align 8, !dbg !3027
  %14 = load i8*, i8** %7, align 8, !dbg !3028
  %15 = load i8*, i8** %8, align 8, !dbg !3029
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3030
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3030
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3030
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3030
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3031
  call void @llvm.va_end(i8* %18), !dbg !3031
  ret void, !dbg !3032
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3033 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3034
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.103, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3034
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.120, i64 0, i64 0)) #18, !dbg !3035
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.121, i64 0, i64 0)), !dbg !3036
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.122, i64 0, i64 0)) #18, !dbg !3037
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.124, i64 0, i64 0)), !dbg !3038
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.125, i64 0, i64 0)) #18, !dbg !3039
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.126, i64 0, i64 0)), !dbg !3040
  ret void, !dbg !3041
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3042 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3046, metadata !DIExpression()), !dbg !3047
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3048, metadata !DIExpression()), !dbg !3049
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3050, metadata !DIExpression()), !dbg !3051
  %7 = load i8*, i8** %4, align 8, !dbg !3052
  %8 = load i64, i64* %5, align 8, !dbg !3053
  %9 = load i64, i64* %6, align 8, !dbg !3054
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !3055
  ret i8* %10, !dbg !3056
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3057 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3058, metadata !DIExpression()), !dbg !3059
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3060, metadata !DIExpression()), !dbg !3061
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3062, metadata !DIExpression()), !dbg !3063
  %7 = load i8*, i8** %4, align 8, !dbg !3064
  %8 = load i64, i64* %5, align 8, !dbg !3065
  %9 = load i64, i64* %6, align 8, !dbg !3066
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3067
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3068
  ret i8* %11, !dbg !3069
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3070 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3073, metadata !DIExpression()), !dbg !3074
  %3 = load i8*, i8** %2, align 8, !dbg !3075
  %4 = icmp ne i8* %3, null, !dbg !3075
  br i1 %4, label %6, label %5, !dbg !3077

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3078
  unreachable, !dbg !3078

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3079
  ret i8* %7, !dbg !3080
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3081 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3084, metadata !DIExpression()), !dbg !3085
  %3 = load i64, i64* %2, align 8, !dbg !3086
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3087
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3088
  ret i8* %5, !dbg !3089
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3090 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3093, metadata !DIExpression()), !dbg !3094
  %3 = load i64, i64* %2, align 8, !dbg !3095
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3096
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3097
  ret i8* %5, !dbg !3098
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3099 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3102, metadata !DIExpression()), !dbg !3103
  %3 = load i64, i64* %2, align 8, !dbg !3104
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !3104
  ret i8* %4, !dbg !3105
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3106 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3109, metadata !DIExpression()), !dbg !3110
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3111, metadata !DIExpression()), !dbg !3112
  %5 = load i8*, i8** %3, align 8, !dbg !3113
  %6 = load i64, i64* %4, align 8, !dbg !3114
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3115
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3116
  ret i8* %8, !dbg !3117
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3118 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3121, metadata !DIExpression()), !dbg !3122
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3123, metadata !DIExpression()), !dbg !3124
  %5 = load i8*, i8** %3, align 8, !dbg !3125
  %6 = load i64, i64* %4, align 8, !dbg !3126
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3127
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3128
  ret i8* %8, !dbg !3129
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3130 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3133, metadata !DIExpression()), !dbg !3134
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3135, metadata !DIExpression()), !dbg !3136
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3137, metadata !DIExpression()), !dbg !3138
  %7 = load i8*, i8** %4, align 8, !dbg !3139
  %8 = load i64, i64* %5, align 8, !dbg !3140
  %9 = load i64, i64* %6, align 8, !dbg !3141
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3142
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3143
  ret i8* %11, !dbg !3144
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3145 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3148, metadata !DIExpression()), !dbg !3149
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3150, metadata !DIExpression()), !dbg !3151
  %5 = load i64, i64* %3, align 8, !dbg !3152
  %6 = load i64, i64* %4, align 8, !dbg !3153
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3154
  ret i8* %7, !dbg !3155
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3156 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3159, metadata !DIExpression()), !dbg !3160
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3161, metadata !DIExpression()), !dbg !3162
  %5 = load i64, i64* %3, align 8, !dbg !3163
  %6 = load i64, i64* %4, align 8, !dbg !3164
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3165
  ret i8* %7, !dbg !3166
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3167 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3170, metadata !DIExpression()), !dbg !3171
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3172, metadata !DIExpression()), !dbg !3173
  %5 = load i8*, i8** %3, align 8, !dbg !3174
  %6 = load i64*, i64** %4, align 8, !dbg !3175
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3176
  ret i8* %7, !dbg !3177
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !240 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3178, metadata !DIExpression()), !dbg !3179
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3180, metadata !DIExpression()), !dbg !3181
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3182, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3184, metadata !DIExpression()), !dbg !3185
  %8 = load i64*, i64** %5, align 8, !dbg !3186
  %9 = load i64, i64* %8, align 8, !dbg !3187
  store i64 %9, i64* %7, align 8, !dbg !3185
  %10 = load i8*, i8** %4, align 8, !dbg !3188
  %11 = icmp ne i8* %10, null, !dbg !3188
  br i1 %11, label %26, label %12, !dbg !3190

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3191
  %14 = icmp ne i64 %13, 0, !dbg !3191
  br i1 %14, label %25, label %15, !dbg !3194

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3195
  %17 = udiv i64 128, %16, !dbg !3197
  store i64 %17, i64* %7, align 8, !dbg !3198
  %18 = load i64, i64* %7, align 8, !dbg !3199
  %19 = icmp ne i64 %18, 0, !dbg !3200
  %20 = xor i1 %19, true, !dbg !3200
  %21 = zext i1 %20 to i32, !dbg !3200
  %22 = sext i32 %21 to i64, !dbg !3200
  %23 = load i64, i64* %7, align 8, !dbg !3201
  %24 = add i64 %23, %22, !dbg !3201
  store i64 %24, i64* %7, align 8, !dbg !3201
  br label %25, !dbg !3202

25:                                               ; preds = %15, %12
  br label %36, !dbg !3203

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3204
  %28 = load i64, i64* %7, align 8, !dbg !3204
  %29 = lshr i64 %28, 1, !dbg !3204
  %30 = add i64 %29, 1, !dbg !3204
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3204
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3204
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3204
  store i64 %33, i64* %7, align 8, !dbg !3204
  br i1 %32, label %34, label %35, !dbg !3207

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3208
  unreachable, !dbg !3208

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3209
  %38 = load i64, i64* %7, align 8, !dbg !3210
  %39 = load i64, i64* %6, align 8, !dbg !3211
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3212
  store i8* %40, i8** %4, align 8, !dbg !3213
  %41 = load i64, i64* %7, align 8, !dbg !3214
  %42 = load i64*, i64** %5, align 8, !dbg !3215
  store i64 %41, i64* %42, align 8, !dbg !3216
  %43 = load i8*, i8** %4, align 8, !dbg !3217
  ret i8* %43, !dbg !3218
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !247 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3219, metadata !DIExpression()), !dbg !3220
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3221, metadata !DIExpression()), !dbg !3222
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3223, metadata !DIExpression()), !dbg !3224
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3225, metadata !DIExpression()), !dbg !3226
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3227, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3229, metadata !DIExpression()), !dbg !3230
  %15 = load i64*, i64** %7, align 8, !dbg !3231
  %16 = load i64, i64* %15, align 8, !dbg !3232
  store i64 %16, i64* %11, align 8, !dbg !3230
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3233, metadata !DIExpression()), !dbg !3234
  %17 = load i64, i64* %11, align 8, !dbg !3235
  %18 = load i64, i64* %11, align 8, !dbg !3235
  %19 = ashr i64 %18, 1, !dbg !3235
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3235
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3235
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3235
  store i64 %22, i64* %12, align 8, !dbg !3235
  br i1 %21, label %23, label %24, !dbg !3237

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3238
  br label %24, !dbg !3239

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3240
  %26 = icmp sle i64 0, %25, !dbg !3242
  br i1 %26, label %27, label %33, !dbg !3243

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3244
  %29 = load i64, i64* %12, align 8, !dbg !3245
  %30 = icmp slt i64 %28, %29, !dbg !3246
  br i1 %30, label %31, label %33, !dbg !3247

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3248
  store i64 %32, i64* %12, align 8, !dbg !3249
  br label %33, !dbg !3250

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3251, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3253, metadata !DIExpression()), !dbg !3254
  %34 = load i64, i64* %10, align 8, !dbg !3255
  %35 = icmp slt i64 %34, 0, !dbg !3255
  br i1 %35, label %36, label %82, !dbg !3255

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3255
  %38 = icmp slt i64 %37, 0, !dbg !3255
  br i1 %38, label %39, label %62, !dbg !3255

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3255

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3255
  %42 = load i64, i64* %10, align 8, !dbg !3255
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3255
  %44 = icmp slt i64 %41, %43, !dbg !3255
  br i1 %44, label %111, label %115, !dbg !3255

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3255

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3255
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3255
  br i1 %48, label %52, label %53, !dbg !3255

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3255
  %51 = icmp slt i64 0, %50, !dbg !3255
  br i1 %51, label %52, label %53, !dbg !3255

52:                                               ; preds = %49, %46
  br label %57, !dbg !3255

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3255
  %55 = sub nsw i64 0, %54, !dbg !3255
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3255
  br label %57, !dbg !3255

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3255
  %59 = load i64, i64* %12, align 8, !dbg !3255
  %60 = sub nsw i64 -1, %59, !dbg !3255
  %61 = icmp sle i64 %58, %60, !dbg !3255
  br i1 %61, label %111, label %115, !dbg !3255

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3255
  %64 = icmp eq i64 %63, -1, !dbg !3255
  br i1 %64, label %65, label %77, !dbg !3255

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3255

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3255
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3255
  %69 = icmp slt i64 0, %68, !dbg !3255
  br i1 %69, label %111, label %115, !dbg !3255

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3255
  %72 = icmp slt i64 0, %71, !dbg !3255
  br i1 %72, label %73, label %115, !dbg !3255

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3255
  %75 = sub nsw i64 %74, 1, !dbg !3255
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3255
  br i1 %76, label %111, label %115, !dbg !3255

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3255
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3255
  %80 = load i64, i64* %12, align 8, !dbg !3255
  %81 = icmp slt i64 %79, %80, !dbg !3255
  br i1 %81, label %111, label %115, !dbg !3255

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3255
  %84 = icmp eq i64 %83, 0, !dbg !3255
  br i1 %84, label %85, label %86, !dbg !3255

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3255

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3255
  %88 = icmp slt i64 %87, 0, !dbg !3255
  br i1 %88, label %89, label %106, !dbg !3255

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3255
  %91 = icmp eq i64 %90, -1, !dbg !3255
  br i1 %91, label %92, label %101, !dbg !3255

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3255

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3255
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3255
  %96 = icmp slt i64 0, %95, !dbg !3255
  br i1 %96, label %111, label %115, !dbg !3255

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3255
  %99 = sub nsw i64 %98, 1, !dbg !3255
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3255
  br i1 %100, label %111, label %115, !dbg !3255

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3255
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3255
  %104 = load i64, i64* %10, align 8, !dbg !3255
  %105 = icmp slt i64 %103, %104, !dbg !3255
  br i1 %105, label %111, label %115, !dbg !3255

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3255
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3255
  %109 = load i64, i64* %12, align 8, !dbg !3255
  %110 = icmp slt i64 %108, %109, !dbg !3255
  br i1 %110, label %111, label %115, !dbg !3255

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3255
  %113 = load i64, i64* %10, align 8, !dbg !3255
  %114 = mul i64 %112, %113, !dbg !3255
  store i64 %114, i64* %13, align 8, !dbg !3255
  br label %119, !dbg !3255

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3255
  %117 = load i64, i64* %10, align 8, !dbg !3255
  %118 = mul i64 %116, %117, !dbg !3255
  store i64 %118, i64* %13, align 8, !dbg !3255
  br label %119, !dbg !3255

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3255
  %121 = icmp ne i32 %120, 0, !dbg !3255
  br i1 %121, label %122, label %123, !dbg !3255

122:                                              ; preds = %119
  br label %129, !dbg !3255

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3256
  %125 = icmp slt i64 %124, 128, !dbg !3257
  %126 = zext i1 %125 to i64, !dbg !3256
  %127 = select i1 %125, i32 128, i32 0, !dbg !3256
  %128 = sext i32 %127 to i64, !dbg !3256
  br label %129, !dbg !3255

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3255
  store i64 %130, i64* %14, align 8, !dbg !3254
  %131 = load i64, i64* %14, align 8, !dbg !3258
  %132 = icmp ne i64 %131, 0, !dbg !3258
  br i1 %132, label %133, label %142, !dbg !3260

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3261
  %135 = load i64, i64* %10, align 8, !dbg !3263
  %136 = sdiv i64 %134, %135, !dbg !3264
  store i64 %136, i64* %12, align 8, !dbg !3265
  %137 = load i64, i64* %14, align 8, !dbg !3266
  %138 = load i64, i64* %14, align 8, !dbg !3267
  %139 = load i64, i64* %10, align 8, !dbg !3268
  %140 = srem i64 %138, %139, !dbg !3269
  %141 = sub nsw i64 %137, %140, !dbg !3270
  store i64 %141, i64* %13, align 8, !dbg !3271
  br label %142, !dbg !3272

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3273
  %144 = icmp ne i8* %143, null, !dbg !3273
  br i1 %144, label %147, label %145, !dbg !3275

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3276
  store i64 0, i64* %146, align 8, !dbg !3277
  br label %147, !dbg !3278

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3279
  %149 = load i64, i64* %11, align 8, !dbg !3281
  %150 = sub nsw i64 %148, %149, !dbg !3282
  %151 = load i64, i64* %8, align 8, !dbg !3283
  %152 = icmp slt i64 %150, %151, !dbg !3284
  br i1 %152, label %153, label %256, !dbg !3285

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3286
  %155 = load i64, i64* %8, align 8, !dbg !3286
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3286
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3286
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3286
  store i64 %158, i64* %12, align 8, !dbg !3286
  br i1 %157, label %255, label %159, !dbg !3287

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3288
  %161 = icmp sle i64 0, %160, !dbg !3289
  br i1 %161, label %162, label %166, !dbg !3290

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3291
  %164 = load i64, i64* %12, align 8, !dbg !3292
  %165 = icmp slt i64 %163, %164, !dbg !3293
  br i1 %165, label %255, label %166, !dbg !3294

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3295
  %168 = icmp slt i64 %167, 0, !dbg !3295
  br i1 %168, label %169, label %215, !dbg !3295

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3295
  %171 = icmp slt i64 %170, 0, !dbg !3295
  br i1 %171, label %172, label %195, !dbg !3295

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3295

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3295
  %175 = load i64, i64* %10, align 8, !dbg !3295
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3295
  %177 = icmp slt i64 %174, %176, !dbg !3295
  br i1 %177, label %244, label %248, !dbg !3295

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3295

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3295
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3295
  br i1 %181, label %185, label %186, !dbg !3295

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3295
  %184 = icmp slt i64 0, %183, !dbg !3295
  br i1 %184, label %185, label %186, !dbg !3295

185:                                              ; preds = %182, %179
  br label %190, !dbg !3295

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3295
  %188 = sub nsw i64 0, %187, !dbg !3295
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3295
  br label %190, !dbg !3295

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3295
  %192 = load i64, i64* %12, align 8, !dbg !3295
  %193 = sub nsw i64 -1, %192, !dbg !3295
  %194 = icmp sle i64 %191, %193, !dbg !3295
  br i1 %194, label %244, label %248, !dbg !3295

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3295
  %197 = icmp eq i64 %196, -1, !dbg !3295
  br i1 %197, label %198, label %210, !dbg !3295

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3295

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3295
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3295
  %202 = icmp slt i64 0, %201, !dbg !3295
  br i1 %202, label %244, label %248, !dbg !3295

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3295
  %205 = icmp slt i64 0, %204, !dbg !3295
  br i1 %205, label %206, label %248, !dbg !3295

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3295
  %208 = sub nsw i64 %207, 1, !dbg !3295
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3295
  br i1 %209, label %244, label %248, !dbg !3295

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3295
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3295
  %213 = load i64, i64* %12, align 8, !dbg !3295
  %214 = icmp slt i64 %212, %213, !dbg !3295
  br i1 %214, label %244, label %248, !dbg !3295

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3295
  %217 = icmp eq i64 %216, 0, !dbg !3295
  br i1 %217, label %218, label %219, !dbg !3295

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3295

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3295
  %221 = icmp slt i64 %220, 0, !dbg !3295
  br i1 %221, label %222, label %239, !dbg !3295

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3295
  %224 = icmp eq i64 %223, -1, !dbg !3295
  br i1 %224, label %225, label %234, !dbg !3295

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3295

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3295
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3295
  %229 = icmp slt i64 0, %228, !dbg !3295
  br i1 %229, label %244, label %248, !dbg !3295

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3295
  %232 = sub nsw i64 %231, 1, !dbg !3295
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3295
  br i1 %233, label %244, label %248, !dbg !3295

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3295
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3295
  %237 = load i64, i64* %10, align 8, !dbg !3295
  %238 = icmp slt i64 %236, %237, !dbg !3295
  br i1 %238, label %244, label %248, !dbg !3295

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3295
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3295
  %242 = load i64, i64* %12, align 8, !dbg !3295
  %243 = icmp slt i64 %241, %242, !dbg !3295
  br i1 %243, label %244, label %248, !dbg !3295

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3295
  %246 = load i64, i64* %10, align 8, !dbg !3295
  %247 = mul i64 %245, %246, !dbg !3295
  store i64 %247, i64* %13, align 8, !dbg !3295
  br label %252, !dbg !3295

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3295
  %250 = load i64, i64* %10, align 8, !dbg !3295
  %251 = mul i64 %249, %250, !dbg !3295
  store i64 %251, i64* %13, align 8, !dbg !3295
  br label %252, !dbg !3295

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3295
  %254 = icmp ne i32 %253, 0, !dbg !3295
  br i1 %254, label %255, label %256, !dbg !3296

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3297
  unreachable, !dbg !3297

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3298
  %258 = load i64, i64* %13, align 8, !dbg !3299
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !3300
  store i8* %259, i8** %6, align 8, !dbg !3301
  %260 = load i64, i64* %12, align 8, !dbg !3302
  %261 = load i64*, i64** %7, align 8, !dbg !3303
  store i64 %260, i64* %261, align 8, !dbg !3304
  %262 = load i8*, i8** %6, align 8, !dbg !3305
  ret i8* %262, !dbg !3306
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3307 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3308, metadata !DIExpression()), !dbg !3309
  %3 = load i64, i64* %2, align 8, !dbg !3310
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3311
  ret i8* %4, !dbg !3312
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3313 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3314, metadata !DIExpression()), !dbg !3315
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3316, metadata !DIExpression()), !dbg !3317
  %5 = load i64, i64* %3, align 8, !dbg !3318
  %6 = load i64, i64* %4, align 8, !dbg !3319
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3320
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3321
  ret i8* %8, !dbg !3322
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3323 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3324, metadata !DIExpression()), !dbg !3325
  %3 = load i64, i64* %2, align 8, !dbg !3326
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3327
  ret i8* %4, !dbg !3328
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3329 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3330, metadata !DIExpression()), !dbg !3331
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3332, metadata !DIExpression()), !dbg !3333
  %5 = load i64, i64* %3, align 8, !dbg !3334
  %6 = load i64, i64* %4, align 8, !dbg !3335
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3336
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3337
  ret i8* %8, !dbg !3338
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3339 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3344, metadata !DIExpression()), !dbg !3345
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3346, metadata !DIExpression()), !dbg !3347
  %5 = load i64, i64* %4, align 8, !dbg !3348
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !3349
  %7 = load i8*, i8** %3, align 8, !dbg !3350
  %8 = load i64, i64* %4, align 8, !dbg !3351
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3352
  ret i8* %6, !dbg !3353
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3354 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3357, metadata !DIExpression()), !dbg !3358
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3359, metadata !DIExpression()), !dbg !3360
  %5 = load i64, i64* %4, align 8, !dbg !3361
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !3362
  %7 = load i8*, i8** %3, align 8, !dbg !3363
  %8 = load i64, i64* %4, align 8, !dbg !3364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3365
  ret i8* %6, !dbg !3366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3367 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3370, metadata !DIExpression()), !dbg !3371
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3372, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3374, metadata !DIExpression()), !dbg !3375
  %6 = load i64, i64* %4, align 8, !dbg !3376
  %7 = add nsw i64 %6, 1, !dbg !3377
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !3378
  store i8* %8, i8** %5, align 8, !dbg !3375
  %9 = load i8*, i8** %5, align 8, !dbg !3379
  %10 = load i64, i64* %4, align 8, !dbg !3380
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3379
  store i8 0, i8* %11, align 1, !dbg !3381
  %12 = load i8*, i8** %5, align 8, !dbg !3382
  %13 = load i8*, i8** %3, align 8, !dbg !3383
  %14 = load i64, i64* %4, align 8, !dbg !3384
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3385
  ret i8* %12, !dbg !3386
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3387 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3388, metadata !DIExpression()), !dbg !3389
  %3 = load i8*, i8** %2, align 8, !dbg !3390
  %4 = load i8*, i8** %2, align 8, !dbg !3391
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3392
  %6 = add i64 %5, 1, !dbg !3393
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !3394
  ret i8* %7, !dbg !3395
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3396 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3397, metadata !DIExpression()), !dbg !3400
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3400
  store i32 %2, i32* %1, align 4, !dbg !3400
  %3 = load i32, i32* %1, align 4, !dbg !3400
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.137, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.138, i64 0, i64 0)) #18, !dbg !3400
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i64 0, i64 0), i8* noundef %4), !dbg !3400
  %5 = load i32, i32* %1, align 4, !dbg !3400
  %6 = icmp ne i32 %5, 0, !dbg !3400
  br i1 %6, label %7, label %9, !dbg !3400

7:                                                ; preds = %0
  unreachable, !dbg !3400

8:                                                ; No predecessors!
  br label %10, !dbg !3400

9:                                                ; preds = %0
  br label %10, !dbg !3400

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3401
  unreachable, !dbg !3401
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3402 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3408, metadata !DIExpression()), !dbg !3409
  %3 = load i32, i32* %2, align 4, !dbg !3410
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3411
  ret i32 %4, !dbg !3412
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3413 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3450, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3452, metadata !DIExpression()), !dbg !3454
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3455
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3456
  %9 = icmp ne i64 %8, 0, !dbg !3457
  %10 = zext i1 %9 to i8, !dbg !3454
  store i8 %10, i8* %4, align 1, !dbg !3454
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3458, metadata !DIExpression()), !dbg !3459
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3460
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3460
  %13 = icmp ne i32 %12, 0, !dbg !3461
  %14 = zext i1 %13 to i8, !dbg !3459
  store i8 %14, i8* %5, align 1, !dbg !3459
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3462, metadata !DIExpression()), !dbg !3463
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3464
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3465
  %17 = icmp ne i32 %16, 0, !dbg !3466
  %18 = zext i1 %17 to i8, !dbg !3463
  store i8 %18, i8* %6, align 1, !dbg !3463
  %19 = load i8, i8* %5, align 1, !dbg !3467
  %20 = trunc i8 %19 to i1, !dbg !3467
  br i1 %20, label %31, label %21, !dbg !3469

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3470
  %23 = trunc i8 %22 to i1, !dbg !3470
  br i1 %23, label %24, label %37, !dbg !3471

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3472
  %26 = trunc i8 %25 to i1, !dbg !3472
  br i1 %26, label %31, label %27, !dbg !3473

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3474
  %29 = load i32, i32* %28, align 4, !dbg !3474
  %30 = icmp ne i32 %29, 9, !dbg !3475
  br i1 %30, label %31, label %37, !dbg !3476

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3477
  %33 = trunc i8 %32 to i1, !dbg !3477
  br i1 %33, label %36, label %34, !dbg !3480

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3481
  store i32 0, i32* %35, align 4, !dbg !3482
  br label %36, !dbg !3481

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3483
  br label %38, !dbg !3483

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3484
  br label %38, !dbg !3484

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3485
  ret i32 %39, !dbg !3485
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3486 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3523, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3525, metadata !DIExpression()), !dbg !3526
  store i32 0, i32* %4, align 4, !dbg !3526
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3527, metadata !DIExpression()), !dbg !3528
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3529
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !3530
  store i32 %8, i32* %5, align 4, !dbg !3528
  %9 = load i32, i32* %5, align 4, !dbg !3531
  %10 = icmp slt i32 %9, 0, !dbg !3533
  br i1 %10, label %11, label %14, !dbg !3534

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3535
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3536
  store i32 %13, i32* %2, align 4, !dbg !3537
  br label %40, !dbg !3537

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3538
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !3538
  %17 = icmp ne i32 %16, 0, !dbg !3538
  br i1 %17, label %18, label %23, !dbg !3540

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3541
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !3542
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !3543
  %22 = icmp ne i64 %21, -1, !dbg !3544
  br i1 %22, label %23, label %30, !dbg !3545

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3546
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !3547
  %26 = icmp ne i32 %25, 0, !dbg !3547
  br i1 %26, label %27, label %30, !dbg !3548

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !3549
  %29 = load i32, i32* %28, align 4, !dbg !3549
  store i32 %29, i32* %4, align 4, !dbg !3550
  br label %30, !dbg !3551

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3552, metadata !DIExpression()), !dbg !3553
  store i32 0, i32* %6, align 4, !dbg !3553
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3554
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !3555
  store i32 %32, i32* %6, align 4, !dbg !3556
  %33 = load i32, i32* %4, align 4, !dbg !3557
  %34 = icmp ne i32 %33, 0, !dbg !3559
  br i1 %34, label %35, label %38, !dbg !3560

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3561
  %37 = call i32* @__errno_location() #21, !dbg !3563
  store i32 %36, i32* %37, align 4, !dbg !3564
  store i32 -1, i32* %6, align 4, !dbg !3565
  br label %38, !dbg !3566

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3567
  store i32 %39, i32* %2, align 4, !dbg !3568
  br label %40, !dbg !3568

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3569
  ret i32 %41, !dbg !3569
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !3570 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3607, metadata !DIExpression()), !dbg !3608
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3609
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3611
  br i1 %5, label %10, label %6, !dbg !3612

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3613
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !3613
  %9 = icmp ne i32 %8, 0, !dbg !3613
  br i1 %9, label %13, label %10, !dbg !3614

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3615
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !3616
  store i32 %12, i32* %2, align 4, !dbg !3617
  br label %17, !dbg !3617

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3618
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !3619
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3620
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !3621
  store i32 %16, i32* %2, align 4, !dbg !3622
  br label %17, !dbg !3622

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3623
  ret i32 %18, !dbg !3623
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !3624 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3627, metadata !DIExpression()), !dbg !3628
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3629
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !3631
  %5 = load i32, i32* %4, align 8, !dbg !3631
  %6 = and i32 %5, 256, !dbg !3632
  %7 = icmp ne i32 %6, 0, !dbg !3632
  br i1 %7, label %8, label %11, !dbg !3633

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3634
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !3635
  br label %11, !dbg !3635

11:                                               ; preds = %8, %1
  ret void, !dbg !3636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !3637 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3675, metadata !DIExpression()), !dbg !3676
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3677, metadata !DIExpression()), !dbg !3678
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3679, metadata !DIExpression()), !dbg !3680
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3681
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !3683
  %11 = load i8*, i8** %10, align 8, !dbg !3683
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3684
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !3685
  %14 = load i8*, i8** %13, align 8, !dbg !3685
  %15 = icmp eq i8* %11, %14, !dbg !3686
  br i1 %15, label %16, label %46, !dbg !3687

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3688
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !3689
  %19 = load i8*, i8** %18, align 8, !dbg !3689
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3690
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !3691
  %22 = load i8*, i8** %21, align 8, !dbg !3691
  %23 = icmp eq i8* %19, %22, !dbg !3692
  br i1 %23, label %24, label %46, !dbg !3693

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3694
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !3695
  %27 = load i8*, i8** %26, align 8, !dbg !3695
  %28 = icmp eq i8* %27, null, !dbg !3696
  br i1 %28, label %29, label %46, !dbg !3697

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3698, metadata !DIExpression()), !dbg !3700
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3701
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !3702
  %32 = load i64, i64* %6, align 8, !dbg !3703
  %33 = load i32, i32* %7, align 4, !dbg !3704
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !3705
  store i64 %34, i64* %8, align 8, !dbg !3700
  %35 = load i64, i64* %8, align 8, !dbg !3706
  %36 = icmp eq i64 %35, -1, !dbg !3708
  br i1 %36, label %37, label %38, !dbg !3709

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3710
  br label %51, !dbg !3710

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3712
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !3713
  %41 = load i32, i32* %40, align 8, !dbg !3714
  %42 = and i32 %41, -17, !dbg !3714
  store i32 %42, i32* %40, align 8, !dbg !3714
  %43 = load i64, i64* %8, align 8, !dbg !3715
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3716
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !3717
  store i64 %43, i64* %45, align 8, !dbg !3718
  store i32 0, i32* %4, align 4, !dbg !3719
  br label %51, !dbg !3719

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3720
  %48 = load i64, i64* %6, align 8, !dbg !3721
  %49 = load i32, i32* %7, align 4, !dbg !3722
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !3723
  store i32 %50, i32* %4, align 4, !dbg !3724
  br label %51, !dbg !3724

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !3725
  ret i32 %52, !dbg !3725
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !3726 {
  %1 = call i32* @__errno_location() #21, !dbg !3729
  store i32 12, i32* %1, align 4, !dbg !3730
  ret i8* null, !dbg !3731
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !3732 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3733, metadata !DIExpression()), !dbg !3734
  %3 = load i64, i64* %2, align 8, !dbg !3735
  %4 = icmp ule i64 %3, -1, !dbg !3736
  br i1 %4, label %5, label %8, !dbg !3735

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !3737
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !3738
  br label %10, !dbg !3735

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !3739
  br label %10, !dbg !3735

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !3735
  ret i8* %11, !dbg !3740
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3741 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3742, metadata !DIExpression()), !dbg !3743
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3744, metadata !DIExpression()), !dbg !3745
  %5 = load i64, i64* %4, align 8, !dbg !3746
  %6 = icmp ule i64 %5, -1, !dbg !3747
  br i1 %6, label %7, label %11, !dbg !3746

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !3748
  %9 = load i64, i64* %4, align 8, !dbg !3749
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !3750
  br label %13, !dbg !3746

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3751
  br label %13, !dbg !3746

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !3746
  ret i8* %14, !dbg !3752
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !3753 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3754, metadata !DIExpression()), !dbg !3755
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3756, metadata !DIExpression()), !dbg !3757
  %6 = load i64, i64* %4, align 8, !dbg !3758
  %7 = icmp ult i64 -1, %6, !dbg !3760
  br i1 %7, label %8, label %14, !dbg !3761

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !3762
  %10 = icmp ne i64 %9, 0, !dbg !3765
  br i1 %10, label %11, label %13, !dbg !3766

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3767
  store i8* %12, i8** %3, align 8, !dbg !3768
  br label %27, !dbg !3768

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !3769
  br label %14, !dbg !3770

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !3771
  %16 = icmp ult i64 -1, %15, !dbg !3773
  br i1 %16, label %17, label %23, !dbg !3774

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !3775
  %19 = icmp ne i64 %18, 0, !dbg !3778
  br i1 %19, label %20, label %22, !dbg !3779

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !3780
  store i8* %21, i8** %3, align 8, !dbg !3781
  br label %27, !dbg !3781

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !3782
  br label %23, !dbg !3783

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !3784
  %25 = load i64, i64* %5, align 8, !dbg !3785
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !3786
  store i8* %26, i8** %3, align 8, !dbg !3787
  br label %27, !dbg !3787

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !3788
  ret i8* %28, !dbg !3788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3789 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3790, metadata !DIExpression()), !dbg !3791
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3792, metadata !DIExpression()), !dbg !3793
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3794, metadata !DIExpression()), !dbg !3795
  %7 = load i64, i64* %5, align 8, !dbg !3796
  %8 = icmp ule i64 %7, -1, !dbg !3797
  br i1 %8, label %9, label %17, !dbg !3798

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !3799
  %11 = icmp ule i64 %10, -1, !dbg !3800
  br i1 %11, label %12, label %17, !dbg !3796

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !3801
  %14 = load i64, i64* %5, align 8, !dbg !3802
  %15 = load i64, i64* %6, align 8, !dbg !3803
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !3804
  br label %19, !dbg !3796

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !3805
  br label %19, !dbg !3796

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !3796
  ret i8* %20, !dbg !3806
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !3807 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3812, metadata !DIExpression()), !dbg !3813
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3814, metadata !DIExpression()), !dbg !3815
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3816, metadata !DIExpression()), !dbg !3817
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !3818, metadata !DIExpression()), !dbg !3819
  %11 = load i8*, i8** %7, align 8, !dbg !3820
  %12 = icmp eq i8* %11, null, !dbg !3822
  br i1 %12, label %13, label %14, !dbg !3823

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !3824
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), i8** %7, align 8, !dbg !3826
  store i64 1, i64* %8, align 8, !dbg !3827
  br label %14, !dbg !3828

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3829
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !3831
  br i1 %16, label %17, label %18, !dbg !3832

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !3833
  br label %18, !dbg !3834

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3835, metadata !DIExpression()), !dbg !3836
  %19 = load i32*, i32** %6, align 8, !dbg !3837
  %20 = load i8*, i8** %7, align 8, !dbg !3838
  %21 = load i64, i64* %8, align 8, !dbg !3839
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3840
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !3841
  store i64 %23, i64* %10, align 8, !dbg !3836
  %24 = load i64, i64* %10, align 8, !dbg !3842
  %25 = icmp ult i64 %24, -3, !dbg !3844
  br i1 %25, label %26, label %32, !dbg !3845

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3846
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !3847
  %29 = icmp ne i32 %28, 0, !dbg !3847
  br i1 %29, label %32, label %30, !dbg !3848

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3849
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !3850
  br label %32, !dbg !3850

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !3851
  %34 = icmp eq i64 %33, -3, !dbg !3853
  br i1 %34, label %35, label %36, !dbg !3854

35:                                               ; preds = %32
  call void @abort() #19, !dbg !3855
  unreachable, !dbg !3855

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !3856
  %38 = icmp ule i64 -2, %37, !dbg !3858
  br i1 %38, label %39, label %53, !dbg !3859

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !3860
  %41 = icmp ne i64 %40, 0, !dbg !3861
  br i1 %41, label %42, label %53, !dbg !3862

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !3863
  br i1 %43, label %53, label %44, !dbg !3864

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !3865
  %46 = icmp ne i32* %45, null, !dbg !3868
  br i1 %46, label %47, label %52, !dbg !3869

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !3870
  %49 = load i8, i8* %48, align 1, !dbg !3871
  %50 = zext i8 %49 to i32, !dbg !3872
  %51 = load i32*, i32** %6, align 8, !dbg !3873
  store i32 %50, i32* %51, align 4, !dbg !3874
  br label %52, !dbg !3875

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !3876
  br label %55, !dbg !3876

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !3877
  store i64 %54, i64* %5, align 8, !dbg !3878
  br label %55, !dbg !3878

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !3879
  ret i64 %56, !dbg !3879
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !3880 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !3895, metadata !DIExpression()), !dbg !3896
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !3897
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !3898
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !3898
  ret void, !dbg !3899
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3900 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3903, metadata !DIExpression()), !dbg !3904
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3905, metadata !DIExpression()), !dbg !3906
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3907, metadata !DIExpression()), !dbg !3908
  %7 = load i8*, i8** %4, align 8, !dbg !3909
  %8 = load i8*, i8** %5, align 8, !dbg !3910
  %9 = load i64, i64* %6, align 8, !dbg !3911
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !3912
  %11 = icmp ne i32 %10, 0, !dbg !3913
  %12 = xor i1 %11, true, !dbg !3913
  ret i1 %12, !dbg !3914
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3915 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3917, metadata !DIExpression()), !dbg !3918
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3919, metadata !DIExpression()), !dbg !3920
  %5 = load i8*, i8** %3, align 8, !dbg !3921
  %6 = load i64, i64* %4, align 8, !dbg !3922
  %7 = icmp ne i64 %6, 0, !dbg !3922
  br i1 %7, label %8, label %10, !dbg !3922

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !3923
  br label %11, !dbg !3922

10:                                               ; preds = %2
  br label %11, !dbg !3922

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !3922
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !3924
  ret i8* %13, !dbg !3925
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3926 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3927, metadata !DIExpression()), !dbg !3928
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3929, metadata !DIExpression()), !dbg !3930
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3931, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3933, metadata !DIExpression()), !dbg !3934
  %9 = load i64, i64* %7, align 8, !dbg !3935
  %10 = icmp ult i64 %9, 0, !dbg !3935
  br i1 %10, label %11, label %60, !dbg !3935

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !3935
  %13 = icmp ult i64 %12, 0, !dbg !3935
  br i1 %13, label %14, label %37, !dbg !3935

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !3935

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !3935
  %17 = load i64, i64* %7, align 8, !dbg !3935
  %18 = udiv i64 -1, %17, !dbg !3935
  %19 = icmp ult i64 %16, %18, !dbg !3935
  br i1 %19, label %92, label %96, !dbg !3935

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !3935

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !3935
  %23 = icmp ult i64 %22, 1, !dbg !3935
  br i1 %23, label %27, label %28, !dbg !3935

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !3935
  %26 = icmp ult i64 0, %25, !dbg !3935
  br i1 %26, label %27, label %28, !dbg !3935

27:                                               ; preds = %24, %21
  br label %32, !dbg !3935

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !3935
  %30 = sub i64 0, %29, !dbg !3935
  %31 = udiv i64 -1, %30, !dbg !3935
  br label %32, !dbg !3935

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !3935
  %34 = load i64, i64* %6, align 8, !dbg !3935
  %35 = sub i64 -1, %34, !dbg !3935
  %36 = icmp ule i64 %33, %35, !dbg !3935
  br i1 %36, label %92, label %96, !dbg !3935

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !3935

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !3935

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !3935

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !3935
  %42 = icmp eq i64 %41, -1, !dbg !3935
  br i1 %42, label %43, label %55, !dbg !3935

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !3935

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !3935
  %46 = add i64 %45, 0, !dbg !3935
  %47 = icmp ult i64 0, %46, !dbg !3935
  br i1 %47, label %92, label %96, !dbg !3935

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !3935
  %50 = icmp ult i64 0, %49, !dbg !3935
  br i1 %50, label %51, label %96, !dbg !3935

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !3935
  %53 = sub i64 %52, 1, !dbg !3935
  %54 = icmp ult i64 -1, %53, !dbg !3935
  br i1 %54, label %92, label %96, !dbg !3935

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !3935
  %57 = udiv i64 0, %56, !dbg !3935
  %58 = load i64, i64* %6, align 8, !dbg !3935
  %59 = icmp ult i64 %57, %58, !dbg !3935
  br i1 %59, label %92, label %96, !dbg !3935

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !3935
  %62 = icmp eq i64 %61, 0, !dbg !3935
  br i1 %62, label %63, label %64, !dbg !3935

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !3935

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !3935
  %66 = icmp ult i64 %65, 0, !dbg !3935
  br i1 %66, label %67, label %87, !dbg !3935

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !3935

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !3935

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !3935

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !3935
  %72 = icmp eq i64 %71, -1, !dbg !3935
  br i1 %72, label %73, label %82, !dbg !3935

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !3935

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !3935
  %76 = add i64 %75, 0, !dbg !3935
  %77 = icmp ult i64 0, %76, !dbg !3935
  br i1 %77, label %92, label %96, !dbg !3935

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !3935
  %80 = sub i64 %79, 1, !dbg !3935
  %81 = icmp ult i64 -1, %80, !dbg !3935
  br i1 %81, label %92, label %96, !dbg !3935

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !3935
  %84 = udiv i64 0, %83, !dbg !3935
  %85 = load i64, i64* %7, align 8, !dbg !3935
  %86 = icmp ult i64 %84, %85, !dbg !3935
  br i1 %86, label %92, label %96, !dbg !3935

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !3935
  %89 = udiv i64 -1, %88, !dbg !3935
  %90 = load i64, i64* %6, align 8, !dbg !3935
  %91 = icmp ult i64 %89, %90, !dbg !3935
  br i1 %91, label %92, label %96, !dbg !3935

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !3935
  %94 = load i64, i64* %7, align 8, !dbg !3935
  %95 = mul i64 %93, %94, !dbg !3935
  store i64 %95, i64* %8, align 8, !dbg !3935
  br label %100, !dbg !3935

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !3935
  %98 = load i64, i64* %7, align 8, !dbg !3935
  %99 = mul i64 %97, %98, !dbg !3935
  store i64 %99, i64* %8, align 8, !dbg !3935
  br label %100, !dbg !3935

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !3935
  %102 = icmp ne i32 %101, 0, !dbg !3935
  br i1 %102, label %103, label %105, !dbg !3937

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !3938
  store i32 12, i32* %104, align 4, !dbg !3940
  store i8* null, i8** %4, align 8, !dbg !3941
  br label %109, !dbg !3941

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !3942
  %107 = load i64, i64* %8, align 8, !dbg !3943
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !3944
  store i8* %108, i8** %4, align 8, !dbg !3945
  br label %109, !dbg !3945

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !3946
  ret i8* %110, !dbg !3946
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !3947 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3950, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !3952, metadata !DIExpression()), !dbg !3956
  %5 = load i32, i32* %3, align 4, !dbg !3957
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3959
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !3960
  %8 = icmp ne i32 %7, 0, !dbg !3960
  br i1 %8, label %9, label %10, !dbg !3961

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3962
  br label %18, !dbg !3962

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3963
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.171, i64 0, i64 0)), !dbg !3965
  br i1 %12, label %17, label %13, !dbg !3966

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3967
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.172, i64 0, i64 0)), !dbg !3968
  br i1 %15, label %17, label %16, !dbg !3969

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !3970
  br label %18, !dbg !3970

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !3971
  br label %18, !dbg !3971

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !3972
  ret i1 %19, !dbg !3972
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !3973 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3976, metadata !DIExpression()), !dbg !3977
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3978, metadata !DIExpression()), !dbg !3979
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3980, metadata !DIExpression()), !dbg !3981
  %7 = load i32, i32* %4, align 4, !dbg !3982
  %8 = load i8*, i8** %5, align 8, !dbg !3983
  %9 = load i64, i64* %6, align 8, !dbg !3984
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3985
  ret i32 %10, !dbg !3986
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !3987 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3990, metadata !DIExpression()), !dbg !3991
  %3 = load i32, i32* %2, align 4, !dbg !3992
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !3993
  ret i8* %4, !dbg !3994
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !3995 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3996, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3998, metadata !DIExpression()), !dbg !3999
  %4 = load i32, i32* %2, align 4, !dbg !4000
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4001
  store i8* %5, i8** %3, align 8, !dbg !3999
  %6 = load i8*, i8** %3, align 8, !dbg !4002
  ret i8* %6, !dbg !4003
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4004 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4005, metadata !DIExpression()), !dbg !4006
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4007, metadata !DIExpression()), !dbg !4008
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4009, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4011, metadata !DIExpression()), !dbg !4012
  %10 = load i32, i32* %5, align 4, !dbg !4013
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4014
  store i8* %11, i8** %8, align 8, !dbg !4012
  %12 = load i8*, i8** %8, align 8, !dbg !4015
  %13 = icmp eq i8* %12, null, !dbg !4017
  br i1 %13, label %14, label %21, !dbg !4018

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4019
  %16 = icmp ugt i64 %15, 0, !dbg !4022
  br i1 %16, label %17, label %20, !dbg !4023

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4024
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4024
  store i8 0, i8* %19, align 1, !dbg !4025
  br label %20, !dbg !4024

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4026
  br label %45, !dbg !4026

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4027, metadata !DIExpression()), !dbg !4029
  %22 = load i8*, i8** %8, align 8, !dbg !4030
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4031
  store i64 %23, i64* %9, align 8, !dbg !4029
  %24 = load i64, i64* %9, align 8, !dbg !4032
  %25 = load i64, i64* %7, align 8, !dbg !4034
  %26 = icmp ult i64 %24, %25, !dbg !4035
  br i1 %26, label %27, label %32, !dbg !4036

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4037
  %29 = load i8*, i8** %8, align 8, !dbg !4039
  %30 = load i64, i64* %9, align 8, !dbg !4040
  %31 = add i64 %30, 1, !dbg !4041
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4042
  store i32 0, i32* %4, align 4, !dbg !4043
  br label %45, !dbg !4043

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4044
  %34 = icmp ugt i64 %33, 0, !dbg !4047
  br i1 %34, label %35, label %44, !dbg !4048

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4049
  %37 = load i8*, i8** %8, align 8, !dbg !4051
  %38 = load i64, i64* %7, align 8, !dbg !4052
  %39 = sub i64 %38, 1, !dbg !4053
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4054
  %40 = load i8*, i8** %6, align 8, !dbg !4055
  %41 = load i64, i64* %7, align 8, !dbg !4056
  %42 = sub i64 %41, 1, !dbg !4057
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4055
  store i8 0, i8* %43, align 1, !dbg !4058
  br label %44, !dbg !4059

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4060
  br label %45, !dbg !4060

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4061
  ret i32 %46, !dbg !4061
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

!llvm.dbg.cu = !{!2, !54, !59, !67, !202, !226, !101, !111, !118, !228, !230, !194, !236, !256, !258, !260, !262, !264, !266, !268, !208, !270, !272, !274, !276, !279, !281, !283}
!llvm.ident = !{!285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285, !285}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 47, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !30, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/printenv.c", directory: "/src", checksumkind: CSK_MD5, checksum: "639748d46de6a4e4b99d61a9973b15a5")
!4 = !{!5, !9}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 38, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8}
!8 = !DIEnumerator(name: "PRINTENV_FAILURE", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 46, baseType: !6, size: 32, elements: !11)
!10 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!12 = !DIEnumerator(name: "_ISupper", value: 256)
!13 = !DIEnumerator(name: "_ISlower", value: 512)
!14 = !DIEnumerator(name: "_ISalpha", value: 1024)
!15 = !DIEnumerator(name: "_ISdigit", value: 2048)
!16 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!17 = !DIEnumerator(name: "_ISspace", value: 8192)
!18 = !DIEnumerator(name: "_ISprint", value: 16384)
!19 = !DIEnumerator(name: "_ISgraph", value: 32768)
!20 = !DIEnumerator(name: "_ISblank", value: 1)
!21 = !DIEnumerator(name: "_IScntrl", value: 2)
!22 = !DIEnumerator(name: "_ISpunct", value: 4)
!23 = !DIEnumerator(name: "_ISalnum", value: 8)
!24 = !{!25, !27, !28, !29}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !{!31, !0}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !33, file: !34, line: 575, type: !28, isLocal: true, isDefinition: true)
!33 = distinct !DISubprogram(name: "oputs_", scope: !34, file: !34, line: 573, type: !35, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!34 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!39 = !{}
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 1024, elements: !50)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !43, line: 50, size: 256, elements: !44)
!43 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!44 = !{!45, !46, !47, !49}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !42, file: !43, line: 52, baseType: !37, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !42, file: !43, line: 55, baseType: !28, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !42, file: !43, line: 56, baseType: !48, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !42, file: !43, line: 57, baseType: !28, size: 32, offset: 192)
!50 = !{!51}
!51 = !DISubrange(count: 4)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "Version", scope: !54, file: !55, line: 3, type: !37, isLocal: false, isDefinition: true)
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !56, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!56 = !{!52}
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "file_name", scope: !59, file: !60, line: 45, type: !37, isLocal: true, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !61, splitDebugInlining: false, nameTableKind: None)
!60 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!61 = !{!57, !62}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !59, file: !60, line: 55, type: !64, isLocal: true, isDefinition: true)
!64 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !67, file: !68, line: 66, type: !96, isLocal: false, isDefinition: true)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !69, globals: !70, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!69 = !{!27}
!70 = !{!71, !90, !65, !92, !94}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "old_file_name", scope: !73, file: !68, line: 304, type: !37, isLocal: true, isDefinition: true)
!73 = distinct !DISubprogram(name: "verror_at_line", scope: !68, file: !68, line: 298, type: !74, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !39)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !28, !28, !37, !6, !37, !76}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !77, line: 52, baseType: !78)
!77 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !79, line: 32, baseType: !80)
!79 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !81, baseType: !82)
!81 = !DIFile(filename: "lib/error.c", directory: "/src")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !83, size: 256, elements: !84)
!83 = !DINamespace(name: "std", scope: null)
!84 = !{!85, !86, !87, !88, !89}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !82, file: !81, baseType: !27, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !82, file: !81, baseType: !27, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !82, file: !81, baseType: !27, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !82, file: !81, baseType: !28, size: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !82, file: !81, baseType: !28, size: 32, offset: 224)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "old_line_number", scope: !73, file: !68, line: 305, type: !6, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "error_message_count", scope: !67, file: !68, line: 69, type: !6, isLocal: false, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !67, file: !68, line: 295, type: !28, isLocal: false, isDefinition: true)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null}
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "program_name", scope: !101, file: !102, line: 31, type: !37, isLocal: false, isDefinition: true)
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !103, globals: !104, splitDebugInlining: false, nameTableKind: None)
!102 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!103 = !{!25}
!104 = !{!99}
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "utf07FF", scope: !107, file: !108, line: 46, type: !113, isLocal: true, isDefinition: true)
!107 = distinct !DISubprogram(name: "proper_name_lite", scope: !108, file: !108, line: 38, type: !109, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !39)
!108 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!109 = !DISubroutineType(types: !110)
!110 = !{!37, !37, !37}
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !112, splitDebugInlining: false, nameTableKind: None)
!112 = !{!105}
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 16, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 2)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !118, file: !119, line: 76, type: !188, isLocal: false, isDefinition: true)
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !140, globals: !144, splitDebugInlining: false, nameTableKind: None)
!119 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!120 = !{!121, !135, !9}
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !122, line: 42, baseType: !6, size: 32, elements: !123)
!122 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!123 = !{!124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!124 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!125 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!126 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!127 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!128 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!129 = !DIEnumerator(name: "c_quoting_style", value: 5)
!130 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!131 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!132 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!133 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!134 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !122, line: 254, baseType: !6, size: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!138 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!139 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!140 = !{!28, !29, !141}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !142, line: 46, baseType: !143)
!142 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!143 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!144 = !{!116, !145, !151, !163, !165, !170, !177, !184, !186}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !118, file: !119, line: 92, type: !147, isLocal: false, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 320, elements: !149)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!149 = !{!150}
!150 = !DISubrange(count: 10)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !118, file: !119, line: 1040, type: !153, isLocal: false, isDefinition: true)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !119, line: 56, size: 448, elements: !154)
!154 = !{!155, !156, !157, !161, !162}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !153, file: !119, line: 59, baseType: !121, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !119, line: 62, baseType: !28, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !153, file: !119, line: 66, baseType: !158, size: 256, offset: 64)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !153, file: !119, line: 69, baseType: !37, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !153, file: !119, line: 72, baseType: !37, size: 64, offset: 384)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !118, file: !119, line: 107, type: !153, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "slot0", scope: !118, file: !119, line: 831, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 256)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "quote", scope: !172, file: !119, line: 228, type: !175, isLocal: true, isDefinition: true)
!172 = distinct !DISubprogram(name: "gettext_quote", scope: !119, file: !119, line: 197, type: !173, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !39)
!173 = !DISubroutineType(types: !174)
!174 = !{!37, !37, !121}
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !176)
!176 = !{!115, !51}
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "slotvec", scope: !118, file: !119, line: 834, type: !179, isLocal: true, isDefinition: true)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !119, line: 823, size: 128, elements: !181)
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !180, file: !119, line: 825, baseType: !141, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !180, file: !119, line: 826, baseType: !25, size: 64, offset: 64)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "nslots", scope: !118, file: !119, line: 832, type: !28, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "slotvec0", scope: !118, file: !119, line: 833, type: !180, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 704, elements: !190)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!190 = !{!191}
!191 = !DISubrange(count: 11)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !194, file: !195, line: 26, type: !197, isLocal: false, isDefinition: true)
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !196, splitDebugInlining: false, nameTableKind: None)
!195 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!196 = !{!192}
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 376, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 47)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "exit_failure", scope: !202, file: !203, line: 24, type: !205, isLocal: false, isDefinition: true)
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !204, splitDebugInlining: false, nameTableKind: None)
!203 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!204 = !{!200}
!205 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "internal_state", scope: !208, file: !209, line: 97, type: !213, isLocal: true, isDefinition: true)
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !210, globals: !212, splitDebugInlining: false, nameTableKind: None)
!209 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!210 = !{!27, !141, !211}
!211 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!212 = !{!206}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !214, line: 6, baseType: !215)
!214 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !216, line: 21, baseType: !217)
!216 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 13, size: 64, elements: !218)
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !217, file: !216, line: 15, baseType: !28, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !217, file: !216, line: 20, baseType: !221, size: 32, offset: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !217, file: !216, line: 16, size: 32, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !221, file: !216, line: 18, baseType: !6, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !221, file: !216, line: 19, baseType: !225, size: 32)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !50)
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!229 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !69, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!232 = !{!233}
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !231, line: 40, baseType: !6, size: 32, elements: !234)
!234 = !{!235}
!235 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !238, retainedTypes: !255, splitDebugInlining: false, nameTableKind: None)
!237 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!238 = !{!239, !246}
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !240, file: !237, line: 188, baseType: !6, size: 32, elements: !244)
!240 = distinct !DISubprogram(name: "x2nrealloc", scope: !237, file: !237, line: 176, type: !241, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!241 = !DISubroutineType(types: !242)
!242 = !{!27, !27, !243, !141}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!244 = !{!245}
!245 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !247, file: !237, line: 228, baseType: !6, size: 32, elements: !244)
!247 = distinct !DISubprogram(name: "xpalloc", scope: !237, file: !237, line: 223, type: !248, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!248 = !DISubroutineType(types: !249)
!249 = !{!27, !27, !250, !251, !253, !251}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !252, line: 130, baseType: !253)
!252 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !142, line: 35, baseType: !254)
!254 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!255 = !{!25, !27, !64, !254, !143}
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!257 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!259 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!261 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!263 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !69, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !69, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !69, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!275 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !278, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!278 = !{!64, !143, !27}
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!280 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!282 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !69, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!285 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!286 = !{i32 7, !"Dwarf Version", i32 5}
!287 = !{i32 2, !"Debug Info Version", i32 3}
!288 = !{i32 1, !"wchar_size", i32 4}
!289 = !{i32 1, !"branch-target-enforcement", i32 0}
!290 = !{i32 1, !"sign-return-address", i32 0}
!291 = !{i32 1, !"sign-return-address-all", i32 0}
!292 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!293 = !{i32 7, !"PIC Level", i32 2}
!294 = !{i32 7, !"PIE Level", i32 2}
!295 = !{i32 7, !"uwtable", i32 1}
!296 = !{i32 7, !"frame-pointer", i32 1}
!297 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 56, type: !298, scopeLine: 57, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !28}
!300 = !DILocalVariable(name: "status", arg: 1, scope: !297, file: !3, line: 56, type: !28)
!301 = !DILocation(line: 56, column: 12, scope: !297)
!302 = !DILocation(line: 58, column: 7, scope: !303)
!303 = distinct !DILexicalBlock(scope: !297, file: !3, line: 58, column: 7)
!304 = !DILocation(line: 58, column: 14, scope: !303)
!305 = !DILocation(line: 58, column: 7, scope: !297)
!306 = !DILocation(line: 59, column: 5, scope: !303)
!307 = !DILocation(line: 59, column: 5, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !3, line: 59, column: 5)
!309 = !DILocation(line: 62, column: 15, scope: !310)
!310 = distinct !DILexicalBlock(scope: !303, file: !3, line: 61, column: 5)
!311 = !DILocation(line: 68, column: 15, scope: !310)
!312 = !DILocation(line: 62, column: 7, scope: !310)
!313 = !DILocation(line: 69, column: 7, scope: !310)
!314 = !DILocation(line: 73, column: 7, scope: !310)
!315 = !DILocation(line: 74, column: 7, scope: !310)
!316 = !DILocation(line: 75, column: 15, scope: !310)
!317 = !DILocation(line: 75, column: 7, scope: !310)
!318 = !DILocation(line: 76, column: 7, scope: !310)
!319 = !DILocation(line: 78, column: 9, scope: !297)
!320 = !DILocation(line: 78, column: 3, scope: !297)
!321 = !DILocalVariable(name: "program", arg: 1, scope: !33, file: !34, line: 573, type: !37)
!322 = !DILocation(line: 573, column: 34, scope: !33)
!323 = !DILocalVariable(name: "option", arg: 2, scope: !33, file: !34, line: 573, type: !37)
!324 = !DILocation(line: 573, column: 55, scope: !33)
!325 = !DILocation(line: 581, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !33, file: !34, line: 581, column: 7)
!327 = !DILocation(line: 581, column: 19, scope: !326)
!328 = !DILocation(line: 581, column: 7, scope: !33)
!329 = !DILocalVariable(name: "term", scope: !330, file: !34, line: 585, type: !37)
!330 = distinct !DILexicalBlock(scope: !326, file: !34, line: 582, column: 5)
!331 = !DILocation(line: 585, column: 19, scope: !330)
!332 = !DILocation(line: 585, column: 26, scope: !330)
!333 = !DILocation(line: 586, column: 23, scope: !330)
!334 = !DILocation(line: 586, column: 28, scope: !330)
!335 = !DILocation(line: 586, column: 33, scope: !330)
!336 = !DILocation(line: 586, column: 32, scope: !330)
!337 = !DILocation(line: 586, column: 38, scope: !330)
!338 = !DILocation(line: 586, column: 48, scope: !330)
!339 = !DILocation(line: 586, column: 41, scope: !330)
!340 = !DILocation(line: 586, column: 19, scope: !330)
!341 = !DILocation(line: 587, column: 5, scope: !330)
!342 = !DILocation(line: 588, column: 7, scope: !343)
!343 = distinct !DILexicalBlock(scope: !33, file: !34, line: 588, column: 7)
!344 = !DILocation(line: 588, column: 7, scope: !33)
!345 = !DILocation(line: 590, column: 7, scope: !346)
!346 = distinct !DILexicalBlock(scope: !343, file: !34, line: 589, column: 5)
!347 = !DILocation(line: 591, column: 7, scope: !346)
!348 = !DILocalVariable(name: "double_space", scope: !33, file: !34, line: 594, type: !64)
!349 = !DILocation(line: 594, column: 8, scope: !33)
!350 = !DILocalVariable(name: "first_word", scope: !33, file: !34, line: 595, type: !37)
!351 = !DILocation(line: 595, column: 15, scope: !33)
!352 = !DILocation(line: 595, column: 28, scope: !33)
!353 = !DILocation(line: 595, column: 45, scope: !33)
!354 = !DILocation(line: 595, column: 37, scope: !33)
!355 = !DILocation(line: 595, column: 35, scope: !33)
!356 = !DILocalVariable(name: "option_text", scope: !33, file: !34, line: 596, type: !37)
!357 = !DILocation(line: 596, column: 15, scope: !33)
!358 = !DILocation(line: 596, column: 37, scope: !33)
!359 = !DILocation(line: 596, column: 29, scope: !33)
!360 = !DILocation(line: 597, column: 8, scope: !361)
!361 = distinct !DILexicalBlock(scope: !33, file: !34, line: 597, column: 7)
!362 = !DILocation(line: 597, column: 7, scope: !33)
!363 = !DILocation(line: 599, column: 21, scope: !364)
!364 = distinct !DILexicalBlock(scope: !361, file: !34, line: 598, column: 5)
!365 = !DILocation(line: 599, column: 19, scope: !364)
!366 = !DILocation(line: 602, column: 20, scope: !364)
!367 = !DILocation(line: 603, column: 5, scope: !364)
!368 = !DILocation(line: 604, column: 12, scope: !369)
!369 = distinct !DILexicalBlock(scope: !361, file: !34, line: 604, column: 12)
!370 = !DILocation(line: 604, column: 27, scope: !369)
!371 = !DILocation(line: 604, column: 24, scope: !369)
!372 = !DILocation(line: 604, column: 12, scope: !361)
!373 = !DILocalVariable(name: "s", scope: !374, file: !34, line: 608, type: !37)
!374 = distinct !DILexicalBlock(scope: !369, file: !34, line: 605, column: 5)
!375 = !DILocation(line: 608, column: 19, scope: !374)
!376 = !DILocation(line: 608, column: 23, scope: !374)
!377 = !DILocalVariable(name: "spaces", scope: !374, file: !34, line: 609, type: !141)
!378 = !DILocation(line: 609, column: 14, scope: !374)
!379 = !DILocation(line: 610, column: 7, scope: !374)
!380 = !DILocation(line: 610, column: 14, scope: !374)
!381 = !DILocation(line: 610, column: 18, scope: !374)
!382 = !DILocation(line: 610, column: 16, scope: !374)
!383 = !DILocation(line: 610, column: 30, scope: !374)
!384 = !DILocation(line: 610, column: 33, scope: !374)
!385 = !DILocation(line: 610, column: 40, scope: !374)
!386 = !DILocation(line: 0, scope: !374)
!387 = !DILocation(line: 611, column: 21, scope: !374)
!388 = !DILocation(line: 611, column: 20, scope: !374)
!389 = !DILocation(line: 611, column: 19, scope: !374)
!390 = !DILocation(line: 611, column: 16, scope: !374)
!391 = distinct !{!391, !379, !387, !392}
!392 = !{!"llvm.loop.mustprogress"}
!393 = !DILocation(line: 612, column: 11, scope: !394)
!394 = distinct !DILexicalBlock(scope: !374, file: !34, line: 612, column: 11)
!395 = !DILocation(line: 612, column: 18, scope: !394)
!396 = !DILocation(line: 612, column: 11, scope: !374)
!397 = !DILocation(line: 615, column: 25, scope: !398)
!398 = distinct !DILexicalBlock(scope: !394, file: !34, line: 613, column: 9)
!399 = !DILocation(line: 615, column: 23, scope: !398)
!400 = !DILocation(line: 616, column: 24, scope: !398)
!401 = !DILocation(line: 617, column: 9, scope: !398)
!402 = !DILocation(line: 618, column: 5, scope: !374)
!403 = !DILocalVariable(name: "anchor_len", scope: !33, file: !34, line: 620, type: !141)
!404 = !DILocation(line: 620, column: 10, scope: !33)
!405 = !DILocation(line: 620, column: 32, scope: !33)
!406 = !DILocation(line: 620, column: 23, scope: !33)
!407 = !DILocalVariable(name: "desc_text", scope: !33, file: !34, line: 625, type: !37)
!408 = !DILocation(line: 625, column: 15, scope: !33)
!409 = !DILocation(line: 625, column: 27, scope: !33)
!410 = !DILocation(line: 625, column: 41, scope: !33)
!411 = !DILocation(line: 625, column: 39, scope: !33)
!412 = !DILocation(line: 626, column: 3, scope: !33)
!413 = !DILocation(line: 626, column: 11, scope: !33)
!414 = !DILocation(line: 626, column: 10, scope: !33)
!415 = !DILocation(line: 626, column: 21, scope: !33)
!416 = !DILocation(line: 626, column: 25, scope: !33)
!417 = !DILocation(line: 626, column: 24, scope: !33)
!418 = !DILocation(line: 626, column: 35, scope: !33)
!419 = !DILocation(line: 0, scope: !33)
!420 = !DILocation(line: 628, column: 12, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !34, line: 628, column: 11)
!422 = distinct !DILexicalBlock(scope: !33, file: !34, line: 627, column: 5)
!423 = !DILocation(line: 628, column: 11, scope: !421)
!424 = !DILocation(line: 628, column: 22, scope: !421)
!425 = !DILocation(line: 628, column: 29, scope: !421)
!426 = !DILocation(line: 628, column: 34, scope: !421)
!427 = !DILocation(line: 628, column: 44, scope: !421)
!428 = !DILocation(line: 628, column: 32, scope: !421)
!429 = !DILocation(line: 628, column: 49, scope: !421)
!430 = !DILocation(line: 628, column: 11, scope: !422)
!431 = !DILocation(line: 629, column: 22, scope: !421)
!432 = !DILocation(line: 629, column: 9, scope: !421)
!433 = !DILocation(line: 630, column: 11, scope: !434)
!434 = distinct !DILexicalBlock(scope: !422, file: !34, line: 630, column: 11)
!435 = !DILocation(line: 630, column: 11, scope: !422)
!436 = !DILocation(line: 632, column: 16, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !34, line: 632, column: 15)
!438 = distinct !DILexicalBlock(scope: !434, file: !34, line: 631, column: 9)
!439 = !DILocation(line: 632, column: 15, scope: !437)
!440 = !DILocation(line: 632, column: 26, scope: !437)
!441 = !DILocation(line: 632, column: 34, scope: !437)
!442 = !DILocation(line: 632, column: 37, scope: !437)
!443 = !DILocation(line: 632, column: 15, scope: !438)
!444 = !DILocation(line: 633, column: 13, scope: !437)
!445 = !DILocation(line: 636, column: 16, scope: !446)
!446 = distinct !DILexicalBlock(scope: !438, file: !34, line: 636, column: 15)
!447 = !DILocation(line: 636, column: 29, scope: !446)
!448 = !DILocation(line: 636, column: 34, scope: !446)
!449 = !DILocation(line: 636, column: 44, scope: !446)
!450 = !DILocation(line: 636, column: 32, scope: !446)
!451 = !DILocation(line: 636, column: 49, scope: !446)
!452 = !DILocation(line: 636, column: 15, scope: !438)
!453 = !DILocation(line: 637, column: 13, scope: !446)
!454 = !DILocation(line: 638, column: 9, scope: !438)
!455 = !DILocation(line: 640, column: 16, scope: !422)
!456 = distinct !{!456, !412, !457, !392}
!457 = !DILocation(line: 641, column: 5, scope: !33)
!458 = !DILocation(line: 644, column: 3, scope: !33)
!459 = !DILocalVariable(name: "url_program", scope: !33, file: !34, line: 648, type: !37)
!460 = !DILocation(line: 648, column: 15, scope: !33)
!461 = !DILocation(line: 648, column: 38, scope: !33)
!462 = !DILocation(line: 648, column: 31, scope: !33)
!463 = !DILocation(line: 649, column: 38, scope: !33)
!464 = !DILocation(line: 649, column: 31, scope: !33)
!465 = !DILocation(line: 650, column: 38, scope: !33)
!466 = !DILocation(line: 650, column: 31, scope: !33)
!467 = !DILocation(line: 651, column: 38, scope: !33)
!468 = !DILocation(line: 651, column: 31, scope: !33)
!469 = !DILocation(line: 652, column: 38, scope: !33)
!470 = !DILocation(line: 652, column: 31, scope: !33)
!471 = !DILocation(line: 653, column: 38, scope: !33)
!472 = !DILocation(line: 653, column: 31, scope: !33)
!473 = !DILocation(line: 654, column: 38, scope: !33)
!474 = !DILocation(line: 654, column: 31, scope: !33)
!475 = !DILocation(line: 655, column: 38, scope: !33)
!476 = !DILocation(line: 655, column: 31, scope: !33)
!477 = !DILocation(line: 656, column: 38, scope: !33)
!478 = !DILocation(line: 656, column: 31, scope: !33)
!479 = !DILocation(line: 657, column: 38, scope: !33)
!480 = !DILocation(line: 657, column: 31, scope: !33)
!481 = !DILocation(line: 658, column: 31, scope: !33)
!482 = !DILocation(line: 663, column: 7, scope: !483)
!483 = distinct !DILexicalBlock(scope: !33, file: !34, line: 663, column: 7)
!484 = !DILocation(line: 664, column: 7, scope: !483)
!485 = !DILocation(line: 664, column: 10, scope: !483)
!486 = !DILocation(line: 663, column: 7, scope: !33)
!487 = !DILocation(line: 670, column: 15, scope: !488)
!488 = distinct !DILexicalBlock(scope: !483, file: !34, line: 665, column: 5)
!489 = !DILocation(line: 670, column: 28, scope: !488)
!490 = !DILocation(line: 670, column: 47, scope: !488)
!491 = !DILocation(line: 670, column: 41, scope: !488)
!492 = !DILocation(line: 670, column: 59, scope: !488)
!493 = !DILocation(line: 669, column: 7, scope: !488)
!494 = !DILocation(line: 671, column: 5, scope: !488)
!495 = !DILocation(line: 676, column: 48, scope: !496)
!496 = distinct !DILexicalBlock(scope: !483, file: !34, line: 673, column: 5)
!497 = !DILocation(line: 677, column: 21, scope: !496)
!498 = !DILocation(line: 677, column: 15, scope: !496)
!499 = !DILocation(line: 677, column: 33, scope: !496)
!500 = !DILocation(line: 676, column: 7, scope: !496)
!501 = !DILocation(line: 679, column: 3, scope: !33)
!502 = !DILocation(line: 683, column: 3, scope: !33)
!503 = !DILocation(line: 686, column: 3, scope: !33)
!504 = !DILocation(line: 688, column: 3, scope: !33)
!505 = !DILocation(line: 691, column: 3, scope: !33)
!506 = !DILocation(line: 695, column: 3, scope: !33)
!507 = !DILocation(line: 696, column: 1, scope: !33)
!508 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !34, file: !34, line: 836, type: !509, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !37}
!511 = !DILocalVariable(name: "program", arg: 1, scope: !508, file: !34, line: 836, type: !37)
!512 = !DILocation(line: 836, column: 34, scope: !508)
!513 = !DILocalVariable(name: "infomap", scope: !508, file: !34, line: 838, type: !514)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 896, elements: !520)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !508, file: !34, line: 838, size: 128, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !516, file: !34, line: 838, baseType: !37, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !516, file: !34, line: 838, baseType: !37, size: 64, offset: 64)
!520 = !{!521}
!521 = !DISubrange(count: 7)
!522 = !DILocation(line: 838, column: 67, scope: !508)
!523 = !DILocalVariable(name: "node", scope: !508, file: !34, line: 848, type: !37)
!524 = !DILocation(line: 848, column: 15, scope: !508)
!525 = !DILocation(line: 848, column: 22, scope: !508)
!526 = !DILocalVariable(name: "map_prog", scope: !508, file: !34, line: 849, type: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!528 = !DILocation(line: 849, column: 25, scope: !508)
!529 = !DILocation(line: 849, column: 36, scope: !508)
!530 = !DILocation(line: 851, column: 3, scope: !508)
!531 = !DILocation(line: 851, column: 10, scope: !508)
!532 = !DILocation(line: 851, column: 20, scope: !508)
!533 = !DILocation(line: 851, column: 28, scope: !508)
!534 = !DILocation(line: 851, column: 40, scope: !508)
!535 = !DILocation(line: 851, column: 49, scope: !508)
!536 = !DILocation(line: 851, column: 59, scope: !508)
!537 = !DILocation(line: 851, column: 33, scope: !508)
!538 = !DILocation(line: 851, column: 31, scope: !508)
!539 = !DILocation(line: 0, scope: !508)
!540 = !DILocation(line: 852, column: 13, scope: !508)
!541 = distinct !{!541, !530, !540, !392}
!542 = !DILocation(line: 854, column: 7, scope: !543)
!543 = distinct !DILexicalBlock(scope: !508, file: !34, line: 854, column: 7)
!544 = !DILocation(line: 854, column: 17, scope: !543)
!545 = !DILocation(line: 854, column: 7, scope: !508)
!546 = !DILocation(line: 855, column: 12, scope: !543)
!547 = !DILocation(line: 855, column: 22, scope: !543)
!548 = !DILocation(line: 855, column: 10, scope: !543)
!549 = !DILocation(line: 855, column: 5, scope: !543)
!550 = !DILocation(line: 857, column: 3, scope: !508)
!551 = !DILocalVariable(name: "lc_messages", scope: !508, file: !34, line: 861, type: !37)
!552 = !DILocation(line: 861, column: 15, scope: !508)
!553 = !DILocation(line: 861, column: 29, scope: !508)
!554 = !DILocation(line: 862, column: 7, scope: !555)
!555 = distinct !DILexicalBlock(scope: !508, file: !34, line: 862, column: 7)
!556 = !DILocation(line: 862, column: 19, scope: !555)
!557 = !DILocation(line: 862, column: 22, scope: !555)
!558 = !DILocation(line: 862, column: 7, scope: !508)
!559 = !DILocation(line: 868, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !555, file: !34, line: 863, column: 5)
!561 = !DILocation(line: 870, column: 5, scope: !560)
!562 = !DILocalVariable(name: "url_program", scope: !508, file: !34, line: 874, type: !37)
!563 = !DILocation(line: 874, column: 15, scope: !508)
!564 = !DILocation(line: 874, column: 36, scope: !508)
!565 = !DILocation(line: 874, column: 29, scope: !508)
!566 = !DILocation(line: 874, column: 61, scope: !508)
!567 = !DILocation(line: 875, column: 11, scope: !508)
!568 = !DILocation(line: 876, column: 24, scope: !508)
!569 = !DILocation(line: 875, column: 3, scope: !508)
!570 = !DILocation(line: 877, column: 11, scope: !508)
!571 = !DILocation(line: 878, column: 11, scope: !508)
!572 = !DILocation(line: 878, column: 17, scope: !508)
!573 = !DILocation(line: 878, column: 25, scope: !508)
!574 = !DILocation(line: 878, column: 22, scope: !508)
!575 = !DILocation(line: 877, column: 3, scope: !508)
!576 = !DILocation(line: 879, column: 1, scope: !508)
!577 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 82, type: !578, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!578 = !DISubroutineType(types: !579)
!579 = !{!28, !28, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!581 = !DILocalVariable(name: "argc", arg: 1, scope: !577, file: !3, line: 82, type: !28)
!582 = !DILocation(line: 82, column: 11, scope: !577)
!583 = !DILocalVariable(name: "argv", arg: 2, scope: !577, file: !3, line: 82, type: !580)
!584 = !DILocation(line: 82, column: 24, scope: !577)
!585 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !577, file: !3, line: 84, type: !64)
!586 = !DILocation(line: 84, column: 8, scope: !577)
!587 = !DILocation(line: 87, column: 21, scope: !577)
!588 = !DILocation(line: 87, column: 3, scope: !577)
!589 = !DILocation(line: 88, column: 3, scope: !577)
!590 = !DILocation(line: 89, column: 3, scope: !577)
!591 = !DILocation(line: 90, column: 3, scope: !577)
!592 = !DILocation(line: 92, column: 3, scope: !577)
!593 = !DILocation(line: 93, column: 3, scope: !577)
!594 = !DILocalVariable(name: "optc", scope: !577, file: !3, line: 95, type: !28)
!595 = !DILocation(line: 95, column: 7, scope: !577)
!596 = !DILocation(line: 96, column: 3, scope: !577)
!597 = !DILocation(line: 96, column: 31, scope: !577)
!598 = !DILocation(line: 96, column: 37, scope: !577)
!599 = !DILocation(line: 96, column: 18, scope: !577)
!600 = !DILocation(line: 96, column: 16, scope: !577)
!601 = !DILocation(line: 96, column: 69, scope: !577)
!602 = !DILocation(line: 98, column: 15, scope: !603)
!603 = distinct !DILexicalBlock(scope: !577, file: !3, line: 97, column: 5)
!604 = !DILocation(line: 98, column: 7, scope: !603)
!605 = !DILocation(line: 101, column: 36, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !3, line: 99, column: 9)
!607 = !DILocation(line: 102, column: 11, scope: !606)
!608 = !DILocation(line: 103, column: 9, scope: !606)
!609 = !DILocation(line: 104, column: 9, scope: !606)
!610 = !DILocation(line: 106, column: 11, scope: !606)
!611 = distinct !{!611, !596, !612, !392}
!612 = !DILocation(line: 108, column: 5, scope: !577)
!613 = !DILocalVariable(name: "ok", scope: !577, file: !3, line: 110, type: !64)
!614 = !DILocation(line: 110, column: 8, scope: !577)
!615 = !DILocation(line: 111, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !577, file: !3, line: 111, column: 7)
!617 = !DILocation(line: 111, column: 17, scope: !616)
!618 = !DILocation(line: 111, column: 14, scope: !616)
!619 = !DILocation(line: 111, column: 7, scope: !577)
!620 = !DILocalVariable(name: "env", scope: !621, file: !3, line: 113, type: !580)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 113, column: 7)
!622 = distinct !DILexicalBlock(scope: !616, file: !3, line: 112, column: 5)
!623 = !DILocation(line: 113, column: 19, scope: !621)
!624 = !DILocation(line: 113, column: 25, scope: !621)
!625 = !DILocation(line: 113, column: 12, scope: !621)
!626 = !DILocation(line: 113, column: 35, scope: !627)
!627 = distinct !DILexicalBlock(scope: !621, file: !3, line: 113, column: 7)
!628 = !DILocation(line: 113, column: 34, scope: !627)
!629 = !DILocation(line: 113, column: 39, scope: !627)
!630 = !DILocation(line: 113, column: 7, scope: !621)
!631 = !DILocation(line: 114, column: 26, scope: !627)
!632 = !DILocation(line: 114, column: 25, scope: !627)
!633 = !DILocation(line: 114, column: 31, scope: !627)
!634 = !DILocation(line: 114, column: 9, scope: !627)
!635 = !DILocation(line: 113, column: 48, scope: !627)
!636 = !DILocation(line: 113, column: 7, scope: !627)
!637 = distinct !{!637, !630, !638, !392}
!638 = !DILocation(line: 114, column: 69, scope: !621)
!639 = !DILocation(line: 115, column: 10, scope: !622)
!640 = !DILocation(line: 116, column: 5, scope: !622)
!641 = !DILocalVariable(name: "matches", scope: !642, file: !3, line: 119, type: !28)
!642 = distinct !DILexicalBlock(scope: !616, file: !3, line: 118, column: 5)
!643 = !DILocation(line: 119, column: 11, scope: !642)
!644 = !DILocalVariable(name: "i", scope: !645, file: !3, line: 121, type: !28)
!645 = distinct !DILexicalBlock(scope: !642, file: !3, line: 121, column: 7)
!646 = !DILocation(line: 121, column: 16, scope: !645)
!647 = !DILocation(line: 121, column: 20, scope: !645)
!648 = !DILocation(line: 121, column: 12, scope: !645)
!649 = !DILocation(line: 121, column: 28, scope: !650)
!650 = distinct !DILexicalBlock(scope: !645, file: !3, line: 121, column: 7)
!651 = !DILocation(line: 121, column: 32, scope: !650)
!652 = !DILocation(line: 121, column: 30, scope: !650)
!653 = !DILocation(line: 121, column: 7, scope: !645)
!654 = !DILocalVariable(name: "matched", scope: !655, file: !3, line: 123, type: !64)
!655 = distinct !DILexicalBlock(scope: !650, file: !3, line: 122, column: 9)
!656 = !DILocation(line: 123, column: 16, scope: !655)
!657 = !DILocation(line: 126, column: 23, scope: !658)
!658 = distinct !DILexicalBlock(scope: !655, file: !3, line: 126, column: 15)
!659 = !DILocation(line: 126, column: 28, scope: !658)
!660 = !DILocation(line: 126, column: 15, scope: !658)
!661 = !DILocation(line: 126, column: 15, scope: !655)
!662 = !DILocation(line: 127, column: 13, scope: !658)
!663 = !DILocalVariable(name: "env", scope: !664, file: !3, line: 129, type: !580)
!664 = distinct !DILexicalBlock(scope: !655, file: !3, line: 129, column: 11)
!665 = !DILocation(line: 129, column: 23, scope: !664)
!666 = !DILocation(line: 129, column: 29, scope: !664)
!667 = !DILocation(line: 129, column: 16, scope: !664)
!668 = !DILocation(line: 129, column: 39, scope: !669)
!669 = distinct !DILexicalBlock(scope: !664, file: !3, line: 129, column: 11)
!670 = !DILocation(line: 129, column: 38, scope: !669)
!671 = !DILocation(line: 129, column: 11, scope: !664)
!672 = !DILocalVariable(name: "ep", scope: !673, file: !3, line: 131, type: !37)
!673 = distinct !DILexicalBlock(scope: !669, file: !3, line: 130, column: 13)
!674 = !DILocation(line: 131, column: 27, scope: !673)
!675 = !DILocation(line: 131, column: 33, scope: !673)
!676 = !DILocation(line: 131, column: 32, scope: !673)
!677 = !DILocalVariable(name: "ap", scope: !673, file: !3, line: 132, type: !37)
!678 = !DILocation(line: 132, column: 27, scope: !673)
!679 = !DILocation(line: 132, column: 32, scope: !673)
!680 = !DILocation(line: 132, column: 37, scope: !673)
!681 = !DILocation(line: 133, column: 15, scope: !673)
!682 = !DILocation(line: 133, column: 23, scope: !673)
!683 = !DILocation(line: 133, column: 22, scope: !673)
!684 = !DILocation(line: 133, column: 26, scope: !673)
!685 = !DILocation(line: 133, column: 34, scope: !673)
!686 = !DILocation(line: 133, column: 38, scope: !673)
!687 = !DILocation(line: 133, column: 37, scope: !673)
!688 = !DILocation(line: 133, column: 41, scope: !673)
!689 = !DILocation(line: 133, column: 49, scope: !673)
!690 = !DILocation(line: 133, column: 55, scope: !673)
!691 = !DILocation(line: 133, column: 52, scope: !673)
!692 = !DILocation(line: 133, column: 64, scope: !673)
!693 = !DILocation(line: 133, column: 61, scope: !673)
!694 = !DILocation(line: 133, column: 58, scope: !673)
!695 = !DILocation(line: 0, scope: !673)
!696 = !DILocation(line: 135, column: 24, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !3, line: 135, column: 23)
!698 = distinct !DILexicalBlock(scope: !673, file: !3, line: 134, column: 17)
!699 = !DILocation(line: 135, column: 23, scope: !697)
!700 = !DILocation(line: 135, column: 27, scope: !697)
!701 = !DILocation(line: 135, column: 34, scope: !697)
!702 = !DILocation(line: 135, column: 38, scope: !697)
!703 = !DILocation(line: 135, column: 37, scope: !697)
!704 = !DILocation(line: 135, column: 41, scope: !697)
!705 = !DILocation(line: 135, column: 23, scope: !698)
!706 = !DILocation(line: 137, column: 39, scope: !707)
!707 = distinct !DILexicalBlock(scope: !697, file: !3, line: 136, column: 21)
!708 = !DILocation(line: 137, column: 42, scope: !707)
!709 = !DILocation(line: 138, column: 31, scope: !707)
!710 = !DILocation(line: 137, column: 23, scope: !707)
!711 = !DILocation(line: 139, column: 31, scope: !707)
!712 = !DILocation(line: 140, column: 23, scope: !707)
!713 = distinct !{!713, !681, !714, !392}
!714 = !DILocation(line: 142, column: 17, scope: !673)
!715 = !DILocation(line: 143, column: 13, scope: !673)
!716 = !DILocation(line: 129, column: 44, scope: !669)
!717 = !DILocation(line: 129, column: 11, scope: !669)
!718 = distinct !{!718, !671, !719, !392}
!719 = !DILocation(line: 143, column: 13, scope: !664)
!720 = !DILocation(line: 145, column: 22, scope: !655)
!721 = !DILocation(line: 145, column: 19, scope: !655)
!722 = !DILocation(line: 146, column: 9, scope: !655)
!723 = !DILocation(line: 121, column: 38, scope: !650)
!724 = !DILocation(line: 121, column: 7, scope: !650)
!725 = distinct !{!725, !653, !726, !392}
!726 = !DILocation(line: 146, column: 9, scope: !645)
!727 = !DILocation(line: 148, column: 13, scope: !642)
!728 = !DILocation(line: 148, column: 24, scope: !642)
!729 = !DILocation(line: 148, column: 31, scope: !642)
!730 = !DILocation(line: 148, column: 29, scope: !642)
!731 = !DILocation(line: 148, column: 21, scope: !642)
!732 = !DILocation(line: 148, column: 10, scope: !642)
!733 = !DILocation(line: 151, column: 10, scope: !577)
!734 = !DILocation(line: 151, column: 3, scope: !577)
!735 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !34, file: !34, line: 102, type: !298, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!736 = !DILocalVariable(name: "status", arg: 1, scope: !735, file: !34, line: 102, type: !28)
!737 = !DILocation(line: 102, column: 30, scope: !735)
!738 = !DILocation(line: 104, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !34, line: 104, column: 7)
!740 = !DILocation(line: 104, column: 14, scope: !739)
!741 = !DILocation(line: 104, column: 7, scope: !735)
!742 = !DILocation(line: 105, column: 20, scope: !739)
!743 = !DILocation(line: 105, column: 18, scope: !739)
!744 = !DILocation(line: 105, column: 5, scope: !739)
!745 = !DILocation(line: 106, column: 1, scope: !735)
!746 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !60, file: !60, line: 50, type: !509, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !39)
!747 = !DILocalVariable(name: "file", arg: 1, scope: !746, file: !60, line: 50, type: !37)
!748 = !DILocation(line: 50, column: 41, scope: !746)
!749 = !DILocation(line: 52, column: 15, scope: !746)
!750 = !DILocation(line: 52, column: 13, scope: !746)
!751 = !DILocation(line: 53, column: 1, scope: !746)
!752 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !60, file: !60, line: 87, type: !753, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !39)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !64}
!755 = !DILocalVariable(name: "ignore", arg: 1, scope: !752, file: !60, line: 87, type: !64)
!756 = !DILocation(line: 87, column: 37, scope: !752)
!757 = !DILocation(line: 89, column: 18, scope: !752)
!758 = !DILocation(line: 89, column: 16, scope: !752)
!759 = !DILocation(line: 90, column: 1, scope: !752)
!760 = distinct !DISubprogram(name: "close_stdout", scope: !60, file: !60, line: 116, type: !97, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !39)
!761 = !DILocation(line: 118, column: 21, scope: !762)
!762 = distinct !DILexicalBlock(scope: !760, file: !60, line: 118, column: 7)
!763 = !DILocation(line: 118, column: 7, scope: !762)
!764 = !DILocation(line: 118, column: 29, scope: !762)
!765 = !DILocation(line: 119, column: 7, scope: !762)
!766 = !DILocation(line: 119, column: 12, scope: !762)
!767 = !DILocation(line: 119, column: 25, scope: !762)
!768 = !DILocation(line: 119, column: 28, scope: !762)
!769 = !DILocation(line: 119, column: 34, scope: !762)
!770 = !DILocation(line: 118, column: 7, scope: !760)
!771 = !DILocalVariable(name: "write_error", scope: !772, file: !60, line: 121, type: !37)
!772 = distinct !DILexicalBlock(scope: !762, file: !60, line: 120, column: 5)
!773 = !DILocation(line: 121, column: 19, scope: !772)
!774 = !DILocation(line: 121, column: 33, scope: !772)
!775 = !DILocation(line: 122, column: 11, scope: !776)
!776 = distinct !DILexicalBlock(scope: !772, file: !60, line: 122, column: 11)
!777 = !DILocation(line: 122, column: 11, scope: !772)
!778 = !DILocation(line: 123, column: 9, scope: !776)
!779 = !DILocation(line: 126, column: 9, scope: !776)
!780 = !DILocation(line: 128, column: 14, scope: !772)
!781 = !DILocation(line: 128, column: 7, scope: !772)
!782 = !DILocation(line: 133, column: 42, scope: !783)
!783 = distinct !DILexicalBlock(scope: !760, file: !60, line: 133, column: 7)
!784 = !DILocation(line: 133, column: 28, scope: !783)
!785 = !DILocation(line: 133, column: 50, scope: !783)
!786 = !DILocation(line: 133, column: 7, scope: !760)
!787 = !DILocation(line: 134, column: 12, scope: !783)
!788 = !DILocation(line: 134, column: 5, scope: !783)
!789 = !DILocation(line: 135, column: 1, scope: !760)
!790 = distinct !DISubprogram(name: "verror", scope: !68, file: !68, line: 251, type: !791, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !39)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !28, !28, !37, !76}
!793 = !DILocalVariable(name: "status", arg: 1, scope: !790, file: !68, line: 251, type: !28)
!794 = !DILocation(line: 251, column: 1, scope: !790)
!795 = !DILocalVariable(name: "errnum", arg: 2, scope: !790, file: !68, line: 251, type: !28)
!796 = !DILocalVariable(name: "message", arg: 3, scope: !790, file: !68, line: 251, type: !37)
!797 = !DILocalVariable(name: "args", arg: 4, scope: !790, file: !68, line: 251, type: !76)
!798 = !DILocation(line: 261, column: 3, scope: !790)
!799 = !DILocation(line: 265, column: 7, scope: !800)
!800 = distinct !DILexicalBlock(scope: !790, file: !68, line: 265, column: 7)
!801 = !DILocation(line: 265, column: 7, scope: !790)
!802 = !DILocation(line: 266, column: 7, scope: !800)
!803 = !DILocation(line: 266, column: 5, scope: !800)
!804 = !DILocation(line: 272, column: 16, scope: !805)
!805 = distinct !DILexicalBlock(scope: !800, file: !68, line: 268, column: 5)
!806 = !DILocation(line: 272, column: 32, scope: !805)
!807 = !DILocation(line: 272, column: 7, scope: !805)
!808 = !DILocation(line: 276, column: 3, scope: !790)
!809 = !DILocation(line: 282, column: 1, scope: !790)
!810 = distinct !DISubprogram(name: "flush_stdout", scope: !68, file: !68, line: 163, type: !97, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !67, retainedNodes: !39)
!811 = !DILocalVariable(name: "stdout_fd", scope: !810, file: !68, line: 166, type: !28)
!812 = !DILocation(line: 166, column: 7, scope: !810)
!813 = !DILocation(line: 172, column: 13, scope: !810)
!814 = !DILocation(line: 182, column: 12, scope: !815)
!815 = distinct !DILexicalBlock(scope: !810, file: !68, line: 182, column: 7)
!816 = !DILocation(line: 182, column: 9, scope: !815)
!817 = !DILocation(line: 182, column: 22, scope: !815)
!818 = !DILocation(line: 182, column: 34, scope: !815)
!819 = !DILocation(line: 182, column: 25, scope: !815)
!820 = !DILocation(line: 182, column: 7, scope: !810)
!821 = !DILocation(line: 184, column: 5, scope: !815)
!822 = !DILocation(line: 185, column: 1, scope: !810)
!823 = distinct !DISubprogram(name: "error_tail", scope: !68, file: !68, line: 219, type: !791, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !67, retainedNodes: !39)
!824 = !DILocalVariable(name: "status", arg: 1, scope: !823, file: !68, line: 219, type: !28)
!825 = !DILocation(line: 219, column: 1, scope: !823)
!826 = !DILocalVariable(name: "errnum", arg: 2, scope: !823, file: !68, line: 219, type: !28)
!827 = !DILocalVariable(name: "message", arg: 3, scope: !823, file: !68, line: 219, type: !37)
!828 = !DILocalVariable(name: "args", arg: 4, scope: !823, file: !68, line: 219, type: !76)
!829 = !DILocation(line: 229, column: 13, scope: !823)
!830 = !DILocation(line: 229, column: 21, scope: !823)
!831 = !DILocation(line: 229, column: 3, scope: !823)
!832 = !DILocation(line: 232, column: 3, scope: !823)
!833 = !DILocation(line: 233, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !823, file: !68, line: 233, column: 7)
!835 = !DILocation(line: 233, column: 7, scope: !823)
!836 = !DILocation(line: 234, column: 26, scope: !834)
!837 = !DILocation(line: 234, column: 5, scope: !834)
!838 = !DILocation(line: 238, column: 3, scope: !823)
!839 = !DILocation(line: 240, column: 3, scope: !823)
!840 = !DILocation(line: 241, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !823, file: !68, line: 241, column: 7)
!842 = !DILocation(line: 241, column: 7, scope: !823)
!843 = !DILocation(line: 242, column: 11, scope: !841)
!844 = !DILocation(line: 242, column: 5, scope: !841)
!845 = !DILocation(line: 243, column: 1, scope: !823)
!846 = distinct !DISubprogram(name: "print_errno_message", scope: !68, file: !68, line: 188, type: !298, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !67, retainedNodes: !39)
!847 = !DILocalVariable(name: "errnum", arg: 1, scope: !846, file: !68, line: 188, type: !28)
!848 = !DILocation(line: 188, column: 26, scope: !846)
!849 = !DILocalVariable(name: "s", scope: !846, file: !68, line: 190, type: !37)
!850 = !DILocation(line: 190, column: 15, scope: !846)
!851 = !DILocalVariable(name: "errbuf", scope: !846, file: !68, line: 193, type: !852)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8192, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 1024)
!855 = !DILocation(line: 193, column: 8, scope: !846)
!856 = !DILocation(line: 195, column: 21, scope: !846)
!857 = !DILocation(line: 195, column: 29, scope: !846)
!858 = !DILocation(line: 195, column: 7, scope: !846)
!859 = !DILocation(line: 195, column: 5, scope: !846)
!860 = !DILocation(line: 207, column: 9, scope: !861)
!861 = distinct !DILexicalBlock(scope: !846, file: !68, line: 207, column: 7)
!862 = !DILocation(line: 207, column: 7, scope: !846)
!863 = !DILocation(line: 208, column: 9, scope: !861)
!864 = !DILocation(line: 208, column: 7, scope: !861)
!865 = !DILocation(line: 208, column: 5, scope: !861)
!866 = !DILocation(line: 214, column: 12, scope: !846)
!867 = !DILocation(line: 214, column: 28, scope: !846)
!868 = !DILocation(line: 214, column: 3, scope: !846)
!869 = !DILocation(line: 216, column: 1, scope: !846)
!870 = distinct !DISubprogram(name: "is_open", scope: !68, file: !68, line: 145, type: !871, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !67, retainedNodes: !39)
!871 = !DISubroutineType(types: !872)
!872 = !{!28, !28}
!873 = !DILocalVariable(name: "fd", arg: 1, scope: !870, file: !68, line: 145, type: !28)
!874 = !DILocation(line: 145, column: 14, scope: !870)
!875 = !DILocation(line: 157, column: 22, scope: !870)
!876 = !DILocation(line: 157, column: 15, scope: !870)
!877 = !DILocation(line: 157, column: 12, scope: !870)
!878 = !DILocation(line: 157, column: 3, scope: !870)
!879 = distinct !DISubprogram(name: "error", scope: !68, file: !68, line: 285, type: !880, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !39)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !28, !28, !37, null}
!882 = !DILocalVariable(name: "status", arg: 1, scope: !879, file: !68, line: 285, type: !28)
!883 = !DILocation(line: 285, column: 12, scope: !879)
!884 = !DILocalVariable(name: "errnum", arg: 2, scope: !879, file: !68, line: 285, type: !28)
!885 = !DILocation(line: 285, column: 24, scope: !879)
!886 = !DILocalVariable(name: "message", arg: 3, scope: !879, file: !68, line: 285, type: !37)
!887 = !DILocation(line: 285, column: 44, scope: !879)
!888 = !DILocalVariable(name: "ap", scope: !879, file: !68, line: 287, type: !76)
!889 = !DILocation(line: 287, column: 11, scope: !879)
!890 = !DILocation(line: 288, column: 3, scope: !879)
!891 = !DILocation(line: 289, column: 3, scope: !879)
!892 = !DILocation(line: 290, column: 3, scope: !879)
!893 = !DILocation(line: 291, column: 1, scope: !879)
!894 = !DILocalVariable(name: "status", arg: 1, scope: !73, file: !68, line: 298, type: !28)
!895 = !DILocation(line: 298, column: 1, scope: !73)
!896 = !DILocalVariable(name: "errnum", arg: 2, scope: !73, file: !68, line: 298, type: !28)
!897 = !DILocalVariable(name: "file_name", arg: 3, scope: !73, file: !68, line: 298, type: !37)
!898 = !DILocalVariable(name: "line_number", arg: 4, scope: !73, file: !68, line: 298, type: !6)
!899 = !DILocalVariable(name: "message", arg: 5, scope: !73, file: !68, line: 298, type: !37)
!900 = !DILocalVariable(name: "args", arg: 6, scope: !73, file: !68, line: 298, type: !76)
!901 = !DILocation(line: 302, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !73, file: !68, line: 302, column: 7)
!903 = !DILocation(line: 302, column: 7, scope: !73)
!904 = !DILocation(line: 307, column: 11, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !68, line: 307, column: 11)
!906 = distinct !DILexicalBlock(scope: !902, file: !68, line: 303, column: 5)
!907 = !DILocation(line: 307, column: 30, scope: !905)
!908 = !DILocation(line: 307, column: 27, scope: !905)
!909 = !DILocation(line: 308, column: 11, scope: !905)
!910 = !DILocation(line: 308, column: 15, scope: !905)
!911 = !DILocation(line: 308, column: 28, scope: !905)
!912 = !DILocation(line: 308, column: 25, scope: !905)
!913 = !DILocation(line: 309, column: 15, scope: !905)
!914 = !DILocation(line: 309, column: 19, scope: !905)
!915 = !DILocation(line: 309, column: 33, scope: !905)
!916 = !DILocation(line: 310, column: 19, scope: !905)
!917 = !DILocation(line: 310, column: 22, scope: !905)
!918 = !DILocation(line: 310, column: 32, scope: !905)
!919 = !DILocation(line: 311, column: 19, scope: !905)
!920 = !DILocation(line: 311, column: 30, scope: !905)
!921 = !DILocation(line: 311, column: 45, scope: !905)
!922 = !DILocation(line: 311, column: 22, scope: !905)
!923 = !DILocation(line: 311, column: 56, scope: !905)
!924 = !DILocation(line: 307, column: 11, scope: !906)
!925 = !DILocation(line: 314, column: 9, scope: !905)
!926 = !DILocation(line: 316, column: 23, scope: !906)
!927 = !DILocation(line: 316, column: 21, scope: !906)
!928 = !DILocation(line: 317, column: 25, scope: !906)
!929 = !DILocation(line: 317, column: 23, scope: !906)
!930 = !DILocation(line: 318, column: 5, scope: !906)
!931 = !DILocation(line: 327, column: 3, scope: !73)
!932 = !DILocation(line: 331, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !73, file: !68, line: 331, column: 7)
!934 = !DILocation(line: 331, column: 7, scope: !73)
!935 = !DILocation(line: 332, column: 7, scope: !933)
!936 = !DILocation(line: 332, column: 5, scope: !933)
!937 = !DILocation(line: 338, column: 16, scope: !938)
!938 = distinct !DILexicalBlock(scope: !933, file: !68, line: 334, column: 5)
!939 = !DILocation(line: 338, column: 31, scope: !938)
!940 = !DILocation(line: 338, column: 7, scope: !938)
!941 = !DILocation(line: 346, column: 12, scope: !73)
!942 = !DILocation(line: 346, column: 20, scope: !73)
!943 = !DILocation(line: 346, column: 30, scope: !73)
!944 = !DILocation(line: 347, column: 12, scope: !73)
!945 = !DILocation(line: 347, column: 23, scope: !73)
!946 = !DILocation(line: 346, column: 3, scope: !73)
!947 = !DILocation(line: 350, column: 3, scope: !73)
!948 = !DILocation(line: 356, column: 1, scope: !73)
!949 = distinct !DISubprogram(name: "error_at_line", scope: !68, file: !68, line: 359, type: !950, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !39)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !28, !28, !37, !6, !37, null}
!952 = !DILocalVariable(name: "status", arg: 1, scope: !949, file: !68, line: 359, type: !28)
!953 = !DILocation(line: 359, column: 20, scope: !949)
!954 = !DILocalVariable(name: "errnum", arg: 2, scope: !949, file: !68, line: 359, type: !28)
!955 = !DILocation(line: 359, column: 32, scope: !949)
!956 = !DILocalVariable(name: "file_name", arg: 3, scope: !949, file: !68, line: 359, type: !37)
!957 = !DILocation(line: 359, column: 52, scope: !949)
!958 = !DILocalVariable(name: "line_number", arg: 4, scope: !949, file: !68, line: 360, type: !6)
!959 = !DILocation(line: 360, column: 29, scope: !949)
!960 = !DILocalVariable(name: "message", arg: 5, scope: !949, file: !68, line: 360, type: !37)
!961 = !DILocation(line: 360, column: 54, scope: !949)
!962 = !DILocalVariable(name: "ap", scope: !949, file: !68, line: 362, type: !76)
!963 = !DILocation(line: 362, column: 11, scope: !949)
!964 = !DILocation(line: 363, column: 3, scope: !949)
!965 = !DILocation(line: 364, column: 3, scope: !949)
!966 = !DILocation(line: 366, column: 3, scope: !949)
!967 = !DILocation(line: 367, column: 1, scope: !949)
!968 = distinct !DISubprogram(name: "getprogname", scope: !227, file: !227, line: 54, type: !969, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !39)
!969 = !DISubroutineType(types: !970)
!970 = !{!37}
!971 = !DILocation(line: 58, column: 10, scope: !968)
!972 = !DILocation(line: 58, column: 3, scope: !968)
!973 = distinct !DISubprogram(name: "set_program_name", scope: !102, file: !102, line: 37, type: !509, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !39)
!974 = !DILocalVariable(name: "argv0", arg: 1, scope: !973, file: !102, line: 37, type: !37)
!975 = !DILocation(line: 37, column: 31, scope: !973)
!976 = !DILocalVariable(name: "slash", scope: !973, file: !102, line: 44, type: !37)
!977 = !DILocation(line: 44, column: 15, scope: !973)
!978 = !DILocation(line: 44, column: 32, scope: !973)
!979 = !DILocation(line: 44, column: 23, scope: !973)
!980 = !DILocalVariable(name: "base", scope: !973, file: !102, line: 45, type: !37)
!981 = !DILocation(line: 45, column: 15, scope: !973)
!982 = !DILocation(line: 45, column: 22, scope: !973)
!983 = !DILocation(line: 45, column: 30, scope: !973)
!984 = !DILocation(line: 45, column: 36, scope: !973)
!985 = !DILocation(line: 45, column: 42, scope: !973)
!986 = !DILocation(line: 46, column: 12, scope: !987)
!987 = distinct !DILexicalBlock(scope: !973, file: !102, line: 46, column: 7)
!988 = !DILocation(line: 46, column: 19, scope: !987)
!989 = !DILocation(line: 46, column: 17, scope: !987)
!990 = !DILocation(line: 46, column: 9, scope: !987)
!991 = !DILocation(line: 46, column: 25, scope: !987)
!992 = !DILocation(line: 46, column: 35, scope: !987)
!993 = !DILocation(line: 46, column: 40, scope: !987)
!994 = !DILocation(line: 46, column: 28, scope: !987)
!995 = !DILocation(line: 46, column: 7, scope: !973)
!996 = !DILocation(line: 48, column: 15, scope: !997)
!997 = distinct !DILexicalBlock(scope: !987, file: !102, line: 47, column: 5)
!998 = !DILocation(line: 48, column: 13, scope: !997)
!999 = !DILocation(line: 49, column: 20, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !997, file: !102, line: 49, column: 11)
!1001 = !DILocation(line: 49, column: 11, scope: !1000)
!1002 = !DILocation(line: 49, column: 36, scope: !1000)
!1003 = !DILocation(line: 49, column: 11, scope: !997)
!1004 = !DILocation(line: 51, column: 16, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !102, line: 50, column: 9)
!1006 = !DILocation(line: 52, column: 19, scope: !1005)
!1007 = !DILocation(line: 52, column: 17, scope: !1005)
!1008 = !DILocation(line: 53, column: 9, scope: !1005)
!1009 = !DILocation(line: 54, column: 5, scope: !997)
!1010 = !DILocation(line: 65, column: 18, scope: !973)
!1011 = !DILocation(line: 65, column: 16, scope: !973)
!1012 = !DILocation(line: 71, column: 38, scope: !973)
!1013 = !DILocation(line: 71, column: 27, scope: !973)
!1014 = !DILocation(line: 74, column: 44, scope: !973)
!1015 = !DILocation(line: 74, column: 33, scope: !973)
!1016 = !DILocation(line: 76, column: 1, scope: !973)
!1017 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !107, file: !108, line: 38, type: !37)
!1018 = !DILocation(line: 38, column: 31, scope: !107)
!1019 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !107, file: !108, line: 38, type: !37)
!1020 = !DILocation(line: 38, column: 66, scope: !107)
!1021 = !DILocalVariable(name: "translation", scope: !107, file: !108, line: 40, type: !37)
!1022 = !DILocation(line: 40, column: 15, scope: !107)
!1023 = !DILocation(line: 40, column: 38, scope: !107)
!1024 = !DILocation(line: 40, column: 29, scope: !107)
!1025 = !DILocation(line: 41, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !107, file: !108, line: 41, column: 7)
!1027 = !DILocation(line: 41, column: 22, scope: !1026)
!1028 = !DILocation(line: 41, column: 19, scope: !1026)
!1029 = !DILocation(line: 41, column: 7, scope: !107)
!1030 = !DILocation(line: 42, column: 12, scope: !1026)
!1031 = !DILocation(line: 42, column: 5, scope: !1026)
!1032 = !DILocalVariable(name: "w", scope: !107, file: !108, line: 47, type: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1034, line: 37, baseType: !1035)
!1034 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1036, line: 57, baseType: !1037)
!1036 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1036, line: 42, baseType: !6)
!1038 = !DILocation(line: 47, column: 12, scope: !107)
!1039 = !DILocalVariable(name: "mbs", scope: !107, file: !108, line: 48, type: !1040)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !214, line: 6, baseType: !1041)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !216, line: 21, baseType: !1042)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 13, size: 64, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1042, file: !216, line: 15, baseType: !28, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1042, file: !216, line: 20, baseType: !1046, size: 32, offset: 32)
!1046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !216, line: 16, size: 32, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1046, file: !216, line: 18, baseType: !6, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1046, file: !216, line: 19, baseType: !225, size: 32)
!1050 = !DILocation(line: 48, column: 13, scope: !107)
!1051 = !DILocation(line: 48, column: 18, scope: !107)
!1052 = !DILocation(line: 49, column: 7, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !107, file: !108, line: 49, column: 7)
!1054 = !DILocation(line: 49, column: 39, scope: !1053)
!1055 = !DILocation(line: 49, column: 44, scope: !1053)
!1056 = !DILocation(line: 49, column: 47, scope: !1053)
!1057 = !DILocation(line: 49, column: 49, scope: !1053)
!1058 = !DILocation(line: 49, column: 7, scope: !107)
!1059 = !DILocation(line: 50, column: 12, scope: !1053)
!1060 = !DILocation(line: 50, column: 5, scope: !1053)
!1061 = !DILocation(line: 53, column: 10, scope: !107)
!1062 = !DILocation(line: 53, column: 3, scope: !107)
!1063 = !DILocation(line: 54, column: 1, scope: !107)
!1064 = distinct !DISubprogram(name: "clone_quoting_options", scope: !119, file: !119, line: 113, type: !1065, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!1067, !1067}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!1068 = !DILocalVariable(name: "o", arg: 1, scope: !1064, file: !119, line: 113, type: !1067)
!1069 = !DILocation(line: 113, column: 48, scope: !1064)
!1070 = !DILocalVariable(name: "saved_errno", scope: !1064, file: !119, line: 115, type: !28)
!1071 = !DILocation(line: 115, column: 7, scope: !1064)
!1072 = !DILocation(line: 115, column: 21, scope: !1064)
!1073 = !DILocalVariable(name: "p", scope: !1064, file: !119, line: 116, type: !1067)
!1074 = !DILocation(line: 116, column: 27, scope: !1064)
!1075 = !DILocation(line: 116, column: 40, scope: !1064)
!1076 = !DILocation(line: 116, column: 44, scope: !1064)
!1077 = !DILocation(line: 116, column: 31, scope: !1064)
!1078 = !DILocation(line: 118, column: 11, scope: !1064)
!1079 = !DILocation(line: 118, column: 3, scope: !1064)
!1080 = !DILocation(line: 118, column: 9, scope: !1064)
!1081 = !DILocation(line: 119, column: 10, scope: !1064)
!1082 = !DILocation(line: 119, column: 3, scope: !1064)
!1083 = distinct !DISubprogram(name: "get_quoting_style", scope: !119, file: !119, line: 124, type: !1084, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!121, !1086}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!1088 = !DILocalVariable(name: "o", arg: 1, scope: !1083, file: !119, line: 124, type: !1086)
!1089 = !DILocation(line: 124, column: 50, scope: !1083)
!1090 = !DILocation(line: 126, column: 11, scope: !1083)
!1091 = !DILocation(line: 126, column: 15, scope: !1083)
!1092 = !DILocation(line: 126, column: 46, scope: !1083)
!1093 = !DILocation(line: 126, column: 3, scope: !1083)
!1094 = distinct !DISubprogram(name: "set_quoting_style", scope: !119, file: !119, line: 132, type: !1095, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !1067, !121}
!1097 = !DILocalVariable(name: "o", arg: 1, scope: !1094, file: !119, line: 132, type: !1067)
!1098 = !DILocation(line: 132, column: 44, scope: !1094)
!1099 = !DILocalVariable(name: "s", arg: 2, scope: !1094, file: !119, line: 132, type: !121)
!1100 = !DILocation(line: 132, column: 66, scope: !1094)
!1101 = !DILocation(line: 134, column: 47, scope: !1094)
!1102 = !DILocation(line: 134, column: 4, scope: !1094)
!1103 = !DILocation(line: 134, column: 8, scope: !1094)
!1104 = !DILocation(line: 134, column: 39, scope: !1094)
!1105 = !DILocation(line: 134, column: 45, scope: !1094)
!1106 = !DILocation(line: 135, column: 1, scope: !1094)
!1107 = distinct !DISubprogram(name: "set_char_quoting", scope: !119, file: !119, line: 143, type: !1108, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!28, !1067, !26, !28}
!1110 = !DILocalVariable(name: "o", arg: 1, scope: !1107, file: !119, line: 143, type: !1067)
!1111 = !DILocation(line: 143, column: 43, scope: !1107)
!1112 = !DILocalVariable(name: "c", arg: 2, scope: !1107, file: !119, line: 143, type: !26)
!1113 = !DILocation(line: 143, column: 51, scope: !1107)
!1114 = !DILocalVariable(name: "i", arg: 3, scope: !1107, file: !119, line: 143, type: !28)
!1115 = !DILocation(line: 143, column: 58, scope: !1107)
!1116 = !DILocalVariable(name: "uc", scope: !1107, file: !119, line: 145, type: !211)
!1117 = !DILocation(line: 145, column: 17, scope: !1107)
!1118 = !DILocation(line: 145, column: 22, scope: !1107)
!1119 = !DILocalVariable(name: "p", scope: !1107, file: !119, line: 146, type: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1121 = !DILocation(line: 146, column: 17, scope: !1107)
!1122 = !DILocation(line: 147, column: 6, scope: !1107)
!1123 = !DILocation(line: 147, column: 10, scope: !1107)
!1124 = !DILocation(line: 147, column: 41, scope: !1107)
!1125 = !DILocation(line: 147, column: 5, scope: !1107)
!1126 = !DILocation(line: 147, column: 59, scope: !1107)
!1127 = !DILocation(line: 147, column: 62, scope: !1107)
!1128 = !DILocation(line: 147, column: 57, scope: !1107)
!1129 = !DILocalVariable(name: "shift", scope: !1107, file: !119, line: 148, type: !28)
!1130 = !DILocation(line: 148, column: 7, scope: !1107)
!1131 = !DILocation(line: 148, column: 15, scope: !1107)
!1132 = !DILocation(line: 148, column: 18, scope: !1107)
!1133 = !DILocalVariable(name: "r", scope: !1107, file: !119, line: 149, type: !6)
!1134 = !DILocation(line: 149, column: 16, scope: !1107)
!1135 = !DILocation(line: 149, column: 22, scope: !1107)
!1136 = !DILocation(line: 149, column: 21, scope: !1107)
!1137 = !DILocation(line: 149, column: 27, scope: !1107)
!1138 = !DILocation(line: 149, column: 24, scope: !1107)
!1139 = !DILocation(line: 149, column: 34, scope: !1107)
!1140 = !DILocation(line: 150, column: 11, scope: !1107)
!1141 = !DILocation(line: 150, column: 13, scope: !1107)
!1142 = !DILocation(line: 150, column: 21, scope: !1107)
!1143 = !DILocation(line: 150, column: 19, scope: !1107)
!1144 = !DILocation(line: 150, column: 27, scope: !1107)
!1145 = !DILocation(line: 150, column: 24, scope: !1107)
!1146 = !DILocation(line: 150, column: 4, scope: !1107)
!1147 = !DILocation(line: 150, column: 6, scope: !1107)
!1148 = !DILocation(line: 151, column: 10, scope: !1107)
!1149 = !DILocation(line: 151, column: 3, scope: !1107)
!1150 = distinct !DISubprogram(name: "set_quoting_flags", scope: !119, file: !119, line: 159, type: !1151, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!28, !1067, !28}
!1153 = !DILocalVariable(name: "o", arg: 1, scope: !1150, file: !119, line: 159, type: !1067)
!1154 = !DILocation(line: 159, column: 44, scope: !1150)
!1155 = !DILocalVariable(name: "i", arg: 2, scope: !1150, file: !119, line: 159, type: !28)
!1156 = !DILocation(line: 159, column: 51, scope: !1150)
!1157 = !DILocation(line: 161, column: 8, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1150, file: !119, line: 161, column: 7)
!1159 = !DILocation(line: 161, column: 7, scope: !1150)
!1160 = !DILocation(line: 162, column: 7, scope: !1158)
!1161 = !DILocation(line: 162, column: 5, scope: !1158)
!1162 = !DILocalVariable(name: "r", scope: !1150, file: !119, line: 163, type: !28)
!1163 = !DILocation(line: 163, column: 7, scope: !1150)
!1164 = !DILocation(line: 163, column: 11, scope: !1150)
!1165 = !DILocation(line: 163, column: 14, scope: !1150)
!1166 = !DILocation(line: 164, column: 14, scope: !1150)
!1167 = !DILocation(line: 164, column: 3, scope: !1150)
!1168 = !DILocation(line: 164, column: 6, scope: !1150)
!1169 = !DILocation(line: 164, column: 12, scope: !1150)
!1170 = !DILocation(line: 165, column: 10, scope: !1150)
!1171 = !DILocation(line: 165, column: 3, scope: !1150)
!1172 = distinct !DISubprogram(name: "set_custom_quoting", scope: !119, file: !119, line: 169, type: !1173, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !1067, !37, !37}
!1175 = !DILocalVariable(name: "o", arg: 1, scope: !1172, file: !119, line: 169, type: !1067)
!1176 = !DILocation(line: 169, column: 45, scope: !1172)
!1177 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1172, file: !119, line: 170, type: !37)
!1178 = !DILocation(line: 170, column: 33, scope: !1172)
!1179 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1172, file: !119, line: 170, type: !37)
!1180 = !DILocation(line: 170, column: 57, scope: !1172)
!1181 = !DILocation(line: 172, column: 8, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1172, file: !119, line: 172, column: 7)
!1183 = !DILocation(line: 172, column: 7, scope: !1172)
!1184 = !DILocation(line: 173, column: 7, scope: !1182)
!1185 = !DILocation(line: 173, column: 5, scope: !1182)
!1186 = !DILocation(line: 174, column: 3, scope: !1172)
!1187 = !DILocation(line: 174, column: 6, scope: !1172)
!1188 = !DILocation(line: 174, column: 12, scope: !1172)
!1189 = !DILocation(line: 175, column: 8, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1172, file: !119, line: 175, column: 7)
!1191 = !DILocation(line: 175, column: 19, scope: !1190)
!1192 = !DILocation(line: 175, column: 23, scope: !1190)
!1193 = !DILocation(line: 175, column: 7, scope: !1172)
!1194 = !DILocation(line: 176, column: 5, scope: !1190)
!1195 = !DILocation(line: 177, column: 19, scope: !1172)
!1196 = !DILocation(line: 177, column: 3, scope: !1172)
!1197 = !DILocation(line: 177, column: 6, scope: !1172)
!1198 = !DILocation(line: 177, column: 17, scope: !1172)
!1199 = !DILocation(line: 178, column: 20, scope: !1172)
!1200 = !DILocation(line: 178, column: 3, scope: !1172)
!1201 = !DILocation(line: 178, column: 6, scope: !1172)
!1202 = !DILocation(line: 178, column: 18, scope: !1172)
!1203 = !DILocation(line: 179, column: 1, scope: !1172)
!1204 = distinct !DISubprogram(name: "quotearg_buffer", scope: !119, file: !119, line: 774, type: !1205, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!141, !25, !141, !37, !141, !1086}
!1207 = !DILocalVariable(name: "buffer", arg: 1, scope: !1204, file: !119, line: 774, type: !25)
!1208 = !DILocation(line: 774, column: 24, scope: !1204)
!1209 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1204, file: !119, line: 774, type: !141)
!1210 = !DILocation(line: 774, column: 39, scope: !1204)
!1211 = !DILocalVariable(name: "arg", arg: 3, scope: !1204, file: !119, line: 775, type: !37)
!1212 = !DILocation(line: 775, column: 30, scope: !1204)
!1213 = !DILocalVariable(name: "argsize", arg: 4, scope: !1204, file: !119, line: 775, type: !141)
!1214 = !DILocation(line: 775, column: 42, scope: !1204)
!1215 = !DILocalVariable(name: "o", arg: 5, scope: !1204, file: !119, line: 776, type: !1086)
!1216 = !DILocation(line: 776, column: 48, scope: !1204)
!1217 = !DILocalVariable(name: "p", scope: !1204, file: !119, line: 778, type: !1086)
!1218 = !DILocation(line: 778, column: 33, scope: !1204)
!1219 = !DILocation(line: 778, column: 37, scope: !1204)
!1220 = !DILocation(line: 778, column: 41, scope: !1204)
!1221 = !DILocalVariable(name: "saved_errno", scope: !1204, file: !119, line: 779, type: !28)
!1222 = !DILocation(line: 779, column: 7, scope: !1204)
!1223 = !DILocation(line: 779, column: 21, scope: !1204)
!1224 = !DILocalVariable(name: "r", scope: !1204, file: !119, line: 780, type: !141)
!1225 = !DILocation(line: 780, column: 10, scope: !1204)
!1226 = !DILocation(line: 780, column: 40, scope: !1204)
!1227 = !DILocation(line: 780, column: 48, scope: !1204)
!1228 = !DILocation(line: 780, column: 60, scope: !1204)
!1229 = !DILocation(line: 780, column: 65, scope: !1204)
!1230 = !DILocation(line: 781, column: 40, scope: !1204)
!1231 = !DILocation(line: 781, column: 43, scope: !1204)
!1232 = !DILocation(line: 781, column: 50, scope: !1204)
!1233 = !DILocation(line: 781, column: 53, scope: !1204)
!1234 = !DILocation(line: 781, column: 60, scope: !1204)
!1235 = !DILocation(line: 781, column: 63, scope: !1204)
!1236 = !DILocation(line: 782, column: 40, scope: !1204)
!1237 = !DILocation(line: 782, column: 43, scope: !1204)
!1238 = !DILocation(line: 782, column: 55, scope: !1204)
!1239 = !DILocation(line: 782, column: 58, scope: !1204)
!1240 = !DILocation(line: 780, column: 14, scope: !1204)
!1241 = !DILocation(line: 783, column: 11, scope: !1204)
!1242 = !DILocation(line: 783, column: 3, scope: !1204)
!1243 = !DILocation(line: 783, column: 9, scope: !1204)
!1244 = !DILocation(line: 784, column: 10, scope: !1204)
!1245 = !DILocation(line: 784, column: 3, scope: !1204)
!1246 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !119, file: !119, line: 251, type: !1247, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !39)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!141, !25, !141, !37, !141, !121, !28, !1249, !37, !37}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1251 = !DILocalVariable(name: "buffer", arg: 1, scope: !1246, file: !119, line: 251, type: !25)
!1252 = !DILocation(line: 251, column: 33, scope: !1246)
!1253 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1246, file: !119, line: 251, type: !141)
!1254 = !DILocation(line: 251, column: 48, scope: !1246)
!1255 = !DILocalVariable(name: "arg", arg: 3, scope: !1246, file: !119, line: 252, type: !37)
!1256 = !DILocation(line: 252, column: 39, scope: !1246)
!1257 = !DILocalVariable(name: "argsize", arg: 4, scope: !1246, file: !119, line: 252, type: !141)
!1258 = !DILocation(line: 252, column: 51, scope: !1246)
!1259 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1246, file: !119, line: 253, type: !121)
!1260 = !DILocation(line: 253, column: 46, scope: !1246)
!1261 = !DILocalVariable(name: "flags", arg: 6, scope: !1246, file: !119, line: 253, type: !28)
!1262 = !DILocation(line: 253, column: 65, scope: !1246)
!1263 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1246, file: !119, line: 254, type: !1249)
!1264 = !DILocation(line: 254, column: 47, scope: !1246)
!1265 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1246, file: !119, line: 255, type: !37)
!1266 = !DILocation(line: 255, column: 39, scope: !1246)
!1267 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1246, file: !119, line: 256, type: !37)
!1268 = !DILocation(line: 256, column: 39, scope: !1246)
!1269 = !DILocalVariable(name: "unibyte_locale", scope: !1246, file: !119, line: 258, type: !64)
!1270 = !DILocation(line: 258, column: 8, scope: !1246)
!1271 = !DILocation(line: 258, column: 25, scope: !1246)
!1272 = !DILocation(line: 258, column: 36, scope: !1246)
!1273 = !DILocalVariable(name: "len", scope: !1246, file: !119, line: 260, type: !141)
!1274 = !DILocation(line: 260, column: 10, scope: !1246)
!1275 = !DILocalVariable(name: "orig_buffersize", scope: !1246, file: !119, line: 261, type: !141)
!1276 = !DILocation(line: 261, column: 10, scope: !1246)
!1277 = !DILocalVariable(name: "quote_string", scope: !1246, file: !119, line: 262, type: !37)
!1278 = !DILocation(line: 262, column: 15, scope: !1246)
!1279 = !DILocalVariable(name: "quote_string_len", scope: !1246, file: !119, line: 263, type: !141)
!1280 = !DILocation(line: 263, column: 10, scope: !1246)
!1281 = !DILocalVariable(name: "backslash_escapes", scope: !1246, file: !119, line: 264, type: !64)
!1282 = !DILocation(line: 264, column: 8, scope: !1246)
!1283 = !DILocalVariable(name: "elide_outer_quotes", scope: !1246, file: !119, line: 265, type: !64)
!1284 = !DILocation(line: 265, column: 8, scope: !1246)
!1285 = !DILocation(line: 265, column: 30, scope: !1246)
!1286 = !DILocation(line: 265, column: 36, scope: !1246)
!1287 = !DILocation(line: 265, column: 61, scope: !1246)
!1288 = !DILocalVariable(name: "encountered_single_quote", scope: !1246, file: !119, line: 266, type: !64)
!1289 = !DILocation(line: 266, column: 8, scope: !1246)
!1290 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1246, file: !119, line: 267, type: !64)
!1291 = !DILocation(line: 267, column: 8, scope: !1246)
!1292 = !DILocation(line: 267, column: 3, scope: !1246)
!1293 = !DILabel(scope: !1246, name: "process_input", file: !119, line: 308)
!1294 = !DILocation(line: 308, column: 2, scope: !1246)
!1295 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1246, file: !119, line: 309, type: !64)
!1296 = !DILocation(line: 309, column: 8, scope: !1246)
!1297 = !DILocation(line: 311, column: 11, scope: !1246)
!1298 = !DILocation(line: 311, column: 3, scope: !1246)
!1299 = !DILocation(line: 314, column: 21, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1246, file: !119, line: 312, column: 5)
!1301 = !DILocation(line: 315, column: 26, scope: !1300)
!1302 = !DILocation(line: 315, column: 7, scope: !1300)
!1303 = !DILocation(line: 318, column: 12, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !119, line: 318, column: 11)
!1305 = !DILocation(line: 318, column: 11, scope: !1300)
!1306 = !DILocation(line: 319, column: 9, scope: !1304)
!1307 = !DILocation(line: 319, column: 9, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !119, line: 319, column: 9)
!1309 = distinct !DILexicalBlock(scope: !1304, file: !119, line: 319, column: 9)
!1310 = !DILocation(line: 319, column: 9, scope: !1309)
!1311 = !DILocation(line: 320, column: 25, scope: !1300)
!1312 = !DILocation(line: 321, column: 20, scope: !1300)
!1313 = !DILocation(line: 322, column: 24, scope: !1300)
!1314 = !DILocation(line: 323, column: 7, scope: !1300)
!1315 = !DILocation(line: 326, column: 25, scope: !1300)
!1316 = !DILocation(line: 327, column: 26, scope: !1300)
!1317 = !DILocation(line: 328, column: 7, scope: !1300)
!1318 = !DILocation(line: 334, column: 13, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !119, line: 334, column: 13)
!1320 = distinct !DILexicalBlock(scope: !1300, file: !119, line: 333, column: 7)
!1321 = !DILocation(line: 334, column: 27, scope: !1319)
!1322 = !DILocation(line: 334, column: 13, scope: !1320)
!1323 = !DILocation(line: 357, column: 50, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1319, file: !119, line: 335, column: 11)
!1325 = !DILocation(line: 357, column: 26, scope: !1324)
!1326 = !DILocation(line: 357, column: 24, scope: !1324)
!1327 = !DILocation(line: 358, column: 51, scope: !1324)
!1328 = !DILocation(line: 358, column: 27, scope: !1324)
!1329 = !DILocation(line: 358, column: 25, scope: !1324)
!1330 = !DILocation(line: 359, column: 11, scope: !1324)
!1331 = !DILocation(line: 360, column: 14, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1320, file: !119, line: 360, column: 13)
!1333 = !DILocation(line: 360, column: 13, scope: !1320)
!1334 = !DILocalVariable(name: "lq", scope: !1335, file: !119, line: 361, type: !37)
!1335 = distinct !DILexicalBlock(scope: !1332, file: !119, line: 361, column: 11)
!1336 = !DILocation(line: 361, column: 28, scope: !1335)
!1337 = !DILocation(line: 361, column: 33, scope: !1335)
!1338 = !DILocation(line: 361, column: 16, scope: !1335)
!1339 = !DILocation(line: 361, column: 46, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1335, file: !119, line: 361, column: 11)
!1341 = !DILocation(line: 361, column: 45, scope: !1340)
!1342 = !DILocation(line: 361, column: 11, scope: !1335)
!1343 = !DILocation(line: 362, column: 13, scope: !1340)
!1344 = !DILocation(line: 362, column: 13, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !119, line: 362, column: 13)
!1346 = distinct !DILexicalBlock(scope: !1340, file: !119, line: 362, column: 13)
!1347 = !DILocation(line: 362, column: 13, scope: !1346)
!1348 = !DILocation(line: 361, column: 52, scope: !1340)
!1349 = !DILocation(line: 361, column: 11, scope: !1340)
!1350 = distinct !{!1350, !1342, !1351, !392}
!1351 = !DILocation(line: 362, column: 13, scope: !1335)
!1352 = !DILocation(line: 363, column: 27, scope: !1320)
!1353 = !DILocation(line: 364, column: 24, scope: !1320)
!1354 = !DILocation(line: 364, column: 22, scope: !1320)
!1355 = !DILocation(line: 365, column: 36, scope: !1320)
!1356 = !DILocation(line: 365, column: 28, scope: !1320)
!1357 = !DILocation(line: 365, column: 26, scope: !1320)
!1358 = !DILocation(line: 367, column: 7, scope: !1300)
!1359 = !DILocation(line: 370, column: 25, scope: !1300)
!1360 = !DILocation(line: 370, column: 7, scope: !1300)
!1361 = !DILocation(line: 373, column: 26, scope: !1300)
!1362 = !DILocation(line: 373, column: 7, scope: !1300)
!1363 = !DILocation(line: 376, column: 12, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1300, file: !119, line: 376, column: 11)
!1365 = !DILocation(line: 376, column: 11, scope: !1300)
!1366 = !DILocation(line: 377, column: 27, scope: !1364)
!1367 = !DILocation(line: 377, column: 9, scope: !1364)
!1368 = !DILocation(line: 380, column: 21, scope: !1300)
!1369 = !DILocation(line: 381, column: 12, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1300, file: !119, line: 381, column: 11)
!1371 = !DILocation(line: 381, column: 11, scope: !1300)
!1372 = !DILocation(line: 382, column: 9, scope: !1370)
!1373 = !DILocation(line: 382, column: 9, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !119, line: 382, column: 9)
!1375 = distinct !DILexicalBlock(scope: !1370, file: !119, line: 382, column: 9)
!1376 = !DILocation(line: 382, column: 9, scope: !1375)
!1377 = !DILocation(line: 383, column: 20, scope: !1300)
!1378 = !DILocation(line: 384, column: 24, scope: !1300)
!1379 = !DILocation(line: 385, column: 7, scope: !1300)
!1380 = !DILocation(line: 388, column: 26, scope: !1300)
!1381 = !DILocation(line: 389, column: 7, scope: !1300)
!1382 = !DILocation(line: 392, column: 7, scope: !1300)
!1383 = !DILocalVariable(name: "i", scope: !1384, file: !119, line: 395, type: !141)
!1384 = distinct !DILexicalBlock(scope: !1246, file: !119, line: 395, column: 3)
!1385 = !DILocation(line: 395, column: 15, scope: !1384)
!1386 = !DILocation(line: 395, column: 8, scope: !1384)
!1387 = !DILocation(line: 395, column: 26, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1384, file: !119, line: 395, column: 3)
!1389 = !DILocation(line: 395, column: 34, scope: !1388)
!1390 = !DILocation(line: 395, column: 48, scope: !1388)
!1391 = !DILocation(line: 395, column: 52, scope: !1388)
!1392 = !DILocation(line: 395, column: 55, scope: !1388)
!1393 = !DILocation(line: 395, column: 65, scope: !1388)
!1394 = !DILocation(line: 395, column: 70, scope: !1388)
!1395 = !DILocation(line: 395, column: 67, scope: !1388)
!1396 = !DILocation(line: 395, column: 23, scope: !1388)
!1397 = !DILocation(line: 395, column: 3, scope: !1384)
!1398 = !DILocalVariable(name: "is_right_quote", scope: !1399, file: !119, line: 397, type: !64)
!1399 = distinct !DILexicalBlock(scope: !1388, file: !119, line: 396, column: 5)
!1400 = !DILocation(line: 397, column: 12, scope: !1399)
!1401 = !DILocalVariable(name: "escaping", scope: !1399, file: !119, line: 398, type: !64)
!1402 = !DILocation(line: 398, column: 12, scope: !1399)
!1403 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1399, file: !119, line: 399, type: !64)
!1404 = !DILocation(line: 399, column: 12, scope: !1399)
!1405 = !DILocation(line: 401, column: 11, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1399, file: !119, line: 401, column: 11)
!1407 = !DILocation(line: 402, column: 11, scope: !1406)
!1408 = !DILocation(line: 402, column: 14, scope: !1406)
!1409 = !DILocation(line: 402, column: 28, scope: !1406)
!1410 = !DILocation(line: 403, column: 11, scope: !1406)
!1411 = !DILocation(line: 403, column: 14, scope: !1406)
!1412 = !DILocation(line: 404, column: 11, scope: !1406)
!1413 = !DILocation(line: 404, column: 15, scope: !1406)
!1414 = !DILocation(line: 404, column: 19, scope: !1406)
!1415 = !DILocation(line: 404, column: 17, scope: !1406)
!1416 = !DILocation(line: 405, column: 19, scope: !1406)
!1417 = !DILocation(line: 405, column: 27, scope: !1406)
!1418 = !DILocation(line: 405, column: 39, scope: !1406)
!1419 = !DILocation(line: 405, column: 46, scope: !1406)
!1420 = !DILocation(line: 405, column: 44, scope: !1406)
!1421 = !DILocation(line: 409, column: 40, scope: !1406)
!1422 = !DILocation(line: 409, column: 32, scope: !1406)
!1423 = !DILocation(line: 409, column: 30, scope: !1406)
!1424 = !DILocation(line: 409, column: 48, scope: !1406)
!1425 = !DILocation(line: 405, column: 15, scope: !1406)
!1426 = !DILocation(line: 410, column: 11, scope: !1406)
!1427 = !DILocation(line: 410, column: 21, scope: !1406)
!1428 = !DILocation(line: 410, column: 27, scope: !1406)
!1429 = !DILocation(line: 410, column: 25, scope: !1406)
!1430 = !DILocation(line: 410, column: 30, scope: !1406)
!1431 = !DILocation(line: 410, column: 44, scope: !1406)
!1432 = !DILocation(line: 410, column: 14, scope: !1406)
!1433 = !DILocation(line: 401, column: 11, scope: !1399)
!1434 = !DILocation(line: 412, column: 15, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !119, line: 412, column: 15)
!1436 = distinct !DILexicalBlock(scope: !1406, file: !119, line: 411, column: 9)
!1437 = !DILocation(line: 412, column: 15, scope: !1436)
!1438 = !DILocation(line: 413, column: 13, scope: !1435)
!1439 = !DILocation(line: 414, column: 26, scope: !1436)
!1440 = !DILocation(line: 415, column: 9, scope: !1436)
!1441 = !DILocalVariable(name: "c", scope: !1399, file: !119, line: 417, type: !211)
!1442 = !DILocation(line: 417, column: 21, scope: !1399)
!1443 = !DILocation(line: 417, column: 25, scope: !1399)
!1444 = !DILocation(line: 417, column: 29, scope: !1399)
!1445 = !DILocation(line: 418, column: 15, scope: !1399)
!1446 = !DILocation(line: 418, column: 7, scope: !1399)
!1447 = !DILocation(line: 421, column: 15, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !119, line: 421, column: 15)
!1449 = distinct !DILexicalBlock(scope: !1399, file: !119, line: 419, column: 9)
!1450 = !DILocation(line: 421, column: 15, scope: !1449)
!1451 = !DILocation(line: 423, column: 15, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !119, line: 422, column: 13)
!1453 = !DILocation(line: 423, column: 15, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !119, line: 423, column: 15)
!1455 = distinct !DILexicalBlock(scope: !1452, file: !119, line: 423, column: 15)
!1456 = !DILocation(line: 423, column: 15, scope: !1455)
!1457 = !DILocation(line: 423, column: 15, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1455, file: !119, line: 423, column: 15)
!1459 = !DILocation(line: 423, column: 15, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1458, file: !119, line: 423, column: 15)
!1461 = !DILocation(line: 423, column: 15, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !119, line: 423, column: 15)
!1463 = distinct !DILexicalBlock(scope: !1460, file: !119, line: 423, column: 15)
!1464 = !DILocation(line: 423, column: 15, scope: !1463)
!1465 = !DILocation(line: 423, column: 15, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !119, line: 423, column: 15)
!1467 = distinct !DILexicalBlock(scope: !1460, file: !119, line: 423, column: 15)
!1468 = !DILocation(line: 423, column: 15, scope: !1467)
!1469 = !DILocation(line: 423, column: 15, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !119, line: 423, column: 15)
!1471 = distinct !DILexicalBlock(scope: !1460, file: !119, line: 423, column: 15)
!1472 = !DILocation(line: 423, column: 15, scope: !1471)
!1473 = !DILocation(line: 423, column: 15, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !119, line: 423, column: 15)
!1475 = distinct !DILexicalBlock(scope: !1455, file: !119, line: 423, column: 15)
!1476 = !DILocation(line: 423, column: 15, scope: !1475)
!1477 = !DILocation(line: 430, column: 19, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1452, file: !119, line: 430, column: 19)
!1479 = !DILocation(line: 430, column: 33, scope: !1478)
!1480 = !DILocation(line: 431, column: 19, scope: !1478)
!1481 = !DILocation(line: 431, column: 22, scope: !1478)
!1482 = !DILocation(line: 431, column: 24, scope: !1478)
!1483 = !DILocation(line: 431, column: 30, scope: !1478)
!1484 = !DILocation(line: 431, column: 28, scope: !1478)
!1485 = !DILocation(line: 431, column: 38, scope: !1478)
!1486 = !DILocation(line: 431, column: 48, scope: !1478)
!1487 = !DILocation(line: 431, column: 52, scope: !1478)
!1488 = !DILocation(line: 431, column: 54, scope: !1478)
!1489 = !DILocation(line: 431, column: 45, scope: !1478)
!1490 = !DILocation(line: 431, column: 59, scope: !1478)
!1491 = !DILocation(line: 431, column: 62, scope: !1478)
!1492 = !DILocation(line: 431, column: 66, scope: !1478)
!1493 = !DILocation(line: 431, column: 68, scope: !1478)
!1494 = !DILocation(line: 431, column: 73, scope: !1478)
!1495 = !DILocation(line: 430, column: 19, scope: !1452)
!1496 = !DILocation(line: 433, column: 19, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1478, file: !119, line: 432, column: 17)
!1498 = !DILocation(line: 433, column: 19, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !119, line: 433, column: 19)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !119, line: 433, column: 19)
!1501 = !DILocation(line: 433, column: 19, scope: !1500)
!1502 = !DILocation(line: 434, column: 19, scope: !1497)
!1503 = !DILocation(line: 434, column: 19, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !119, line: 434, column: 19)
!1505 = distinct !DILexicalBlock(scope: !1497, file: !119, line: 434, column: 19)
!1506 = !DILocation(line: 434, column: 19, scope: !1505)
!1507 = !DILocation(line: 435, column: 17, scope: !1497)
!1508 = !DILocation(line: 436, column: 17, scope: !1452)
!1509 = !DILocation(line: 441, column: 13, scope: !1452)
!1510 = !DILocation(line: 442, column: 20, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1448, file: !119, line: 442, column: 20)
!1512 = !DILocation(line: 442, column: 26, scope: !1511)
!1513 = !DILocation(line: 442, column: 20, scope: !1448)
!1514 = !DILocation(line: 443, column: 13, scope: !1511)
!1515 = !DILocation(line: 444, column: 11, scope: !1449)
!1516 = !DILocation(line: 447, column: 20, scope: !1449)
!1517 = !DILocation(line: 447, column: 11, scope: !1449)
!1518 = !DILocation(line: 450, column: 19, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !119, line: 450, column: 19)
!1520 = distinct !DILexicalBlock(scope: !1449, file: !119, line: 448, column: 13)
!1521 = !DILocation(line: 450, column: 19, scope: !1520)
!1522 = !DILocation(line: 451, column: 17, scope: !1519)
!1523 = !DILocation(line: 452, column: 15, scope: !1520)
!1524 = !DILocation(line: 455, column: 20, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1520, file: !119, line: 455, column: 19)
!1526 = !DILocation(line: 455, column: 26, scope: !1525)
!1527 = !DILocation(line: 456, column: 19, scope: !1525)
!1528 = !DILocation(line: 456, column: 22, scope: !1525)
!1529 = !DILocation(line: 456, column: 24, scope: !1525)
!1530 = !DILocation(line: 456, column: 30, scope: !1525)
!1531 = !DILocation(line: 456, column: 28, scope: !1525)
!1532 = !DILocation(line: 456, column: 38, scope: !1525)
!1533 = !DILocation(line: 456, column: 41, scope: !1525)
!1534 = !DILocation(line: 456, column: 45, scope: !1525)
!1535 = !DILocation(line: 456, column: 47, scope: !1525)
!1536 = !DILocation(line: 456, column: 52, scope: !1525)
!1537 = !DILocation(line: 455, column: 19, scope: !1520)
!1538 = !DILocation(line: 457, column: 25, scope: !1525)
!1539 = !DILocation(line: 457, column: 29, scope: !1525)
!1540 = !DILocation(line: 457, column: 31, scope: !1525)
!1541 = !DILocation(line: 457, column: 17, scope: !1525)
!1542 = !DILocation(line: 464, column: 25, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !119, line: 464, column: 25)
!1544 = distinct !DILexicalBlock(scope: !1525, file: !119, line: 458, column: 19)
!1545 = !DILocation(line: 464, column: 25, scope: !1544)
!1546 = !DILocation(line: 465, column: 23, scope: !1543)
!1547 = !DILocation(line: 466, column: 25, scope: !1544)
!1548 = !DILocation(line: 466, column: 29, scope: !1544)
!1549 = !DILocation(line: 466, column: 31, scope: !1544)
!1550 = !DILocation(line: 466, column: 23, scope: !1544)
!1551 = !DILocation(line: 467, column: 23, scope: !1544)
!1552 = !DILocation(line: 468, column: 21, scope: !1544)
!1553 = !DILocation(line: 468, column: 21, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !119, line: 468, column: 21)
!1555 = distinct !DILexicalBlock(scope: !1544, file: !119, line: 468, column: 21)
!1556 = !DILocation(line: 468, column: 21, scope: !1555)
!1557 = !DILocation(line: 469, column: 21, scope: !1544)
!1558 = !DILocation(line: 469, column: 21, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !119, line: 469, column: 21)
!1560 = distinct !DILexicalBlock(scope: !1544, file: !119, line: 469, column: 21)
!1561 = !DILocation(line: 469, column: 21, scope: !1560)
!1562 = !DILocation(line: 470, column: 21, scope: !1544)
!1563 = !DILocation(line: 470, column: 21, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !119, line: 470, column: 21)
!1565 = distinct !DILexicalBlock(scope: !1544, file: !119, line: 470, column: 21)
!1566 = !DILocation(line: 470, column: 21, scope: !1565)
!1567 = !DILocation(line: 471, column: 21, scope: !1544)
!1568 = !DILocation(line: 471, column: 21, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !119, line: 471, column: 21)
!1570 = distinct !DILexicalBlock(scope: !1544, file: !119, line: 471, column: 21)
!1571 = !DILocation(line: 471, column: 21, scope: !1570)
!1572 = !DILocation(line: 472, column: 21, scope: !1544)
!1573 = !DILocation(line: 473, column: 19, scope: !1544)
!1574 = !DILocation(line: 474, column: 15, scope: !1520)
!1575 = !DILocation(line: 476, column: 11, scope: !1449)
!1576 = !DILocation(line: 481, column: 26, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1449, file: !119, line: 478, column: 9)
!1578 = !DILocation(line: 481, column: 33, scope: !1577)
!1579 = !DILocation(line: 482, column: 26, scope: !1577)
!1580 = !DILocation(line: 482, column: 33, scope: !1577)
!1581 = !DILocation(line: 483, column: 26, scope: !1577)
!1582 = !DILocation(line: 483, column: 33, scope: !1577)
!1583 = !DILocation(line: 484, column: 26, scope: !1577)
!1584 = !DILocation(line: 484, column: 33, scope: !1577)
!1585 = !DILocation(line: 485, column: 26, scope: !1577)
!1586 = !DILocation(line: 485, column: 33, scope: !1577)
!1587 = !DILocation(line: 486, column: 26, scope: !1577)
!1588 = !DILocation(line: 486, column: 33, scope: !1577)
!1589 = !DILocation(line: 487, column: 26, scope: !1577)
!1590 = !DILocation(line: 487, column: 33, scope: !1577)
!1591 = !DILocation(line: 488, column: 28, scope: !1577)
!1592 = !DILocation(line: 488, column: 26, scope: !1577)
!1593 = !DILocation(line: 490, column: 17, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1577, file: !119, line: 490, column: 17)
!1595 = !DILocation(line: 490, column: 31, scope: !1594)
!1596 = !DILocation(line: 490, column: 17, scope: !1577)
!1597 = !DILocation(line: 492, column: 21, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !119, line: 492, column: 21)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !119, line: 491, column: 15)
!1600 = !DILocation(line: 492, column: 21, scope: !1599)
!1601 = !DILocation(line: 493, column: 19, scope: !1598)
!1602 = !DILocation(line: 494, column: 17, scope: !1599)
!1603 = !DILocation(line: 499, column: 17, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1577, file: !119, line: 499, column: 17)
!1605 = !DILocation(line: 499, column: 35, scope: !1604)
!1606 = !DILocation(line: 499, column: 38, scope: !1604)
!1607 = !DILocation(line: 499, column: 57, scope: !1604)
!1608 = !DILocation(line: 499, column: 60, scope: !1604)
!1609 = !DILocation(line: 499, column: 17, scope: !1577)
!1610 = !DILocation(line: 500, column: 15, scope: !1604)
!1611 = !DILabel(scope: !1577, name: "c_and_shell_escape", file: !119, line: 502)
!1612 = !DILocation(line: 502, column: 11, scope: !1577)
!1613 = !DILocation(line: 503, column: 17, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1577, file: !119, line: 503, column: 17)
!1615 = !DILocation(line: 503, column: 31, scope: !1614)
!1616 = !DILocation(line: 504, column: 17, scope: !1614)
!1617 = !DILocation(line: 504, column: 20, scope: !1614)
!1618 = !DILocation(line: 503, column: 17, scope: !1577)
!1619 = !DILocation(line: 505, column: 15, scope: !1614)
!1620 = !DILabel(scope: !1577, name: "c_escape", file: !119, line: 507)
!1621 = !DILocation(line: 507, column: 11, scope: !1577)
!1622 = !DILocation(line: 508, column: 17, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1577, file: !119, line: 508, column: 17)
!1624 = !DILocation(line: 508, column: 17, scope: !1577)
!1625 = !DILocation(line: 510, column: 21, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1623, file: !119, line: 509, column: 15)
!1627 = !DILocation(line: 510, column: 19, scope: !1626)
!1628 = !DILocation(line: 511, column: 17, scope: !1626)
!1629 = !DILocation(line: 513, column: 13, scope: !1577)
!1630 = !DILocation(line: 517, column: 18, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1449, file: !119, line: 517, column: 15)
!1632 = !DILocation(line: 517, column: 26, scope: !1631)
!1633 = !DILocation(line: 517, column: 15, scope: !1449)
!1634 = !DILocation(line: 517, column: 40, scope: !1631)
!1635 = !DILocation(line: 517, column: 47, scope: !1631)
!1636 = !DILocation(line: 517, column: 57, scope: !1631)
!1637 = !DILocation(line: 517, column: 65, scope: !1631)
!1638 = !DILocation(line: 518, column: 13, scope: !1631)
!1639 = !DILocation(line: 517, column: 69, scope: !1631)
!1640 = !DILocation(line: 521, column: 15, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1449, file: !119, line: 521, column: 15)
!1642 = !DILocation(line: 521, column: 17, scope: !1641)
!1643 = !DILocation(line: 521, column: 15, scope: !1449)
!1644 = !DILocation(line: 522, column: 13, scope: !1641)
!1645 = !DILocation(line: 521, column: 20, scope: !1641)
!1646 = !DILocation(line: 525, column: 36, scope: !1449)
!1647 = !DILocation(line: 525, column: 11, scope: !1449)
!1648 = !DILocation(line: 536, column: 15, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1449, file: !119, line: 536, column: 15)
!1650 = !DILocation(line: 536, column: 29, scope: !1649)
!1651 = !DILocation(line: 537, column: 15, scope: !1649)
!1652 = !DILocation(line: 537, column: 18, scope: !1649)
!1653 = !DILocation(line: 536, column: 15, scope: !1449)
!1654 = !DILocation(line: 538, column: 13, scope: !1649)
!1655 = !DILocation(line: 539, column: 11, scope: !1449)
!1656 = !DILocation(line: 542, column: 36, scope: !1449)
!1657 = !DILocation(line: 543, column: 36, scope: !1449)
!1658 = !DILocation(line: 544, column: 15, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1449, file: !119, line: 544, column: 15)
!1660 = !DILocation(line: 544, column: 29, scope: !1659)
!1661 = !DILocation(line: 544, column: 15, scope: !1449)
!1662 = !DILocation(line: 546, column: 19, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !119, line: 546, column: 19)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !119, line: 545, column: 13)
!1665 = !DILocation(line: 546, column: 19, scope: !1664)
!1666 = !DILocation(line: 547, column: 17, scope: !1663)
!1667 = !DILocation(line: 549, column: 19, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !119, line: 549, column: 19)
!1669 = !DILocation(line: 549, column: 30, scope: !1668)
!1670 = !DILocation(line: 549, column: 35, scope: !1668)
!1671 = !DILocation(line: 549, column: 19, scope: !1664)
!1672 = !DILocation(line: 554, column: 37, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1668, file: !119, line: 550, column: 17)
!1674 = !DILocation(line: 554, column: 35, scope: !1673)
!1675 = !DILocation(line: 555, column: 30, scope: !1673)
!1676 = !DILocation(line: 556, column: 17, scope: !1673)
!1677 = !DILocation(line: 558, column: 15, scope: !1664)
!1678 = !DILocation(line: 558, column: 15, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !119, line: 558, column: 15)
!1680 = distinct !DILexicalBlock(scope: !1664, file: !119, line: 558, column: 15)
!1681 = !DILocation(line: 558, column: 15, scope: !1680)
!1682 = !DILocation(line: 559, column: 15, scope: !1664)
!1683 = !DILocation(line: 559, column: 15, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !119, line: 559, column: 15)
!1685 = distinct !DILexicalBlock(scope: !1664, file: !119, line: 559, column: 15)
!1686 = !DILocation(line: 559, column: 15, scope: !1685)
!1687 = !DILocation(line: 560, column: 15, scope: !1664)
!1688 = !DILocation(line: 560, column: 15, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !119, line: 560, column: 15)
!1690 = distinct !DILexicalBlock(scope: !1664, file: !119, line: 560, column: 15)
!1691 = !DILocation(line: 560, column: 15, scope: !1690)
!1692 = !DILocation(line: 561, column: 40, scope: !1664)
!1693 = !DILocation(line: 562, column: 13, scope: !1664)
!1694 = !DILocation(line: 563, column: 11, scope: !1449)
!1695 = !DILocation(line: 587, column: 36, scope: !1449)
!1696 = !DILocation(line: 588, column: 11, scope: !1449)
!1697 = !DILocalVariable(name: "m", scope: !1698, file: !119, line: 598, type: !141)
!1698 = distinct !DILexicalBlock(scope: !1449, file: !119, line: 596, column: 11)
!1699 = !DILocation(line: 598, column: 20, scope: !1698)
!1700 = !DILocalVariable(name: "printable", scope: !1698, file: !119, line: 600, type: !64)
!1701 = !DILocation(line: 600, column: 18, scope: !1698)
!1702 = !DILocation(line: 602, column: 17, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1698, file: !119, line: 602, column: 17)
!1704 = !DILocation(line: 602, column: 17, scope: !1698)
!1705 = !DILocation(line: 604, column: 19, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1703, file: !119, line: 603, column: 15)
!1707 = !DILocation(line: 605, column: 29, scope: !1706)
!1708 = !DILocation(line: 605, column: 41, scope: !1706)
!1709 = !DILocation(line: 605, column: 27, scope: !1706)
!1710 = !DILocation(line: 606, column: 15, scope: !1706)
!1711 = !DILocalVariable(name: "mbs", scope: !1712, file: !119, line: 609, type: !1713)
!1712 = distinct !DILexicalBlock(scope: !1703, file: !119, line: 608, column: 15)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !214, line: 6, baseType: !1714)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !216, line: 21, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 13, size: 64, elements: !1716)
!1716 = !{!1717, !1718}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1715, file: !216, line: 15, baseType: !28, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1715, file: !216, line: 20, baseType: !1719, size: 32, offset: 32)
!1719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1715, file: !216, line: 16, size: 32, elements: !1720)
!1720 = !{!1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1719, file: !216, line: 18, baseType: !6, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1719, file: !216, line: 19, baseType: !225, size: 32)
!1723 = !DILocation(line: 609, column: 27, scope: !1712)
!1724 = !DILocation(line: 609, column: 32, scope: !1712)
!1725 = !DILocation(line: 611, column: 19, scope: !1712)
!1726 = !DILocation(line: 612, column: 27, scope: !1712)
!1727 = !DILocation(line: 613, column: 21, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1712, file: !119, line: 613, column: 21)
!1729 = !DILocation(line: 613, column: 29, scope: !1728)
!1730 = !DILocation(line: 613, column: 21, scope: !1712)
!1731 = !DILocation(line: 614, column: 37, scope: !1728)
!1732 = !DILocation(line: 614, column: 29, scope: !1728)
!1733 = !DILocation(line: 614, column: 27, scope: !1728)
!1734 = !DILocation(line: 614, column: 19, scope: !1728)
!1735 = !DILocation(line: 616, column: 17, scope: !1712)
!1736 = !DILocalVariable(name: "w", scope: !1737, file: !119, line: 618, type: !1033)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !119, line: 617, column: 19)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !119, line: 616, column: 17)
!1739 = distinct !DILexicalBlock(scope: !1712, file: !119, line: 616, column: 17)
!1740 = !DILocation(line: 618, column: 30, scope: !1737)
!1741 = !DILocalVariable(name: "bytes", scope: !1737, file: !119, line: 619, type: !141)
!1742 = !DILocation(line: 619, column: 28, scope: !1737)
!1743 = !DILocation(line: 619, column: 51, scope: !1737)
!1744 = !DILocation(line: 619, column: 55, scope: !1737)
!1745 = !DILocation(line: 619, column: 59, scope: !1737)
!1746 = !DILocation(line: 619, column: 57, scope: !1737)
!1747 = !DILocation(line: 620, column: 46, scope: !1737)
!1748 = !DILocation(line: 620, column: 57, scope: !1737)
!1749 = !DILocation(line: 620, column: 61, scope: !1737)
!1750 = !DILocation(line: 620, column: 59, scope: !1737)
!1751 = !DILocation(line: 620, column: 54, scope: !1737)
!1752 = !DILocation(line: 619, column: 36, scope: !1737)
!1753 = !DILocation(line: 621, column: 25, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1737, file: !119, line: 621, column: 25)
!1755 = !DILocation(line: 621, column: 31, scope: !1754)
!1756 = !DILocation(line: 621, column: 25, scope: !1737)
!1757 = !DILocation(line: 622, column: 23, scope: !1754)
!1758 = !DILocation(line: 623, column: 30, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1754, file: !119, line: 623, column: 30)
!1760 = !DILocation(line: 623, column: 36, scope: !1759)
!1761 = !DILocation(line: 623, column: 30, scope: !1754)
!1762 = !DILocation(line: 625, column: 35, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !119, line: 624, column: 23)
!1764 = !DILocation(line: 626, column: 25, scope: !1763)
!1765 = !DILocation(line: 628, column: 30, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1759, file: !119, line: 628, column: 30)
!1767 = !DILocation(line: 628, column: 36, scope: !1766)
!1768 = !DILocation(line: 628, column: 30, scope: !1759)
!1769 = !DILocation(line: 630, column: 35, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !119, line: 629, column: 23)
!1771 = !DILocation(line: 631, column: 25, scope: !1770)
!1772 = !DILocation(line: 631, column: 32, scope: !1770)
!1773 = !DILocation(line: 631, column: 36, scope: !1770)
!1774 = !DILocation(line: 631, column: 34, scope: !1770)
!1775 = !DILocation(line: 631, column: 40, scope: !1770)
!1776 = !DILocation(line: 631, column: 38, scope: !1770)
!1777 = !DILocation(line: 631, column: 48, scope: !1770)
!1778 = !DILocation(line: 631, column: 51, scope: !1770)
!1779 = !DILocation(line: 631, column: 55, scope: !1770)
!1780 = !DILocation(line: 631, column: 59, scope: !1770)
!1781 = !DILocation(line: 631, column: 57, scope: !1770)
!1782 = !DILocation(line: 0, scope: !1770)
!1783 = !DILocation(line: 632, column: 28, scope: !1770)
!1784 = distinct !{!1784, !1771, !1783, !392}
!1785 = !DILocation(line: 633, column: 25, scope: !1770)
!1786 = !DILocation(line: 645, column: 44, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !119, line: 645, column: 29)
!1788 = distinct !DILexicalBlock(scope: !1766, file: !119, line: 636, column: 23)
!1789 = !DILocation(line: 646, column: 29, scope: !1787)
!1790 = !DILocation(line: 646, column: 32, scope: !1787)
!1791 = !DILocation(line: 646, column: 46, scope: !1787)
!1792 = !DILocation(line: 645, column: 29, scope: !1788)
!1793 = !DILocalVariable(name: "j", scope: !1794, file: !119, line: 648, type: !141)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !119, line: 648, column: 29)
!1795 = distinct !DILexicalBlock(scope: !1787, file: !119, line: 647, column: 27)
!1796 = !DILocation(line: 648, column: 41, scope: !1794)
!1797 = !DILocation(line: 648, column: 34, scope: !1794)
!1798 = !DILocation(line: 648, column: 48, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1794, file: !119, line: 648, column: 29)
!1800 = !DILocation(line: 648, column: 52, scope: !1799)
!1801 = !DILocation(line: 648, column: 50, scope: !1799)
!1802 = !DILocation(line: 648, column: 29, scope: !1794)
!1803 = !DILocation(line: 649, column: 39, scope: !1799)
!1804 = !DILocation(line: 649, column: 43, scope: !1799)
!1805 = !DILocation(line: 649, column: 47, scope: !1799)
!1806 = !DILocation(line: 649, column: 45, scope: !1799)
!1807 = !DILocation(line: 649, column: 51, scope: !1799)
!1808 = !DILocation(line: 649, column: 49, scope: !1799)
!1809 = !DILocation(line: 649, column: 31, scope: !1799)
!1810 = !DILocation(line: 653, column: 35, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1799, file: !119, line: 650, column: 33)
!1812 = !DILocation(line: 654, column: 33, scope: !1811)
!1813 = !DILocation(line: 648, column: 60, scope: !1799)
!1814 = !DILocation(line: 648, column: 29, scope: !1799)
!1815 = distinct !{!1815, !1802, !1816, !392}
!1816 = !DILocation(line: 654, column: 33, scope: !1794)
!1817 = !DILocation(line: 655, column: 27, scope: !1795)
!1818 = !DILocation(line: 657, column: 43, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1788, file: !119, line: 657, column: 29)
!1820 = !DILocation(line: 657, column: 31, scope: !1819)
!1821 = !DILocation(line: 657, column: 29, scope: !1788)
!1822 = !DILocation(line: 658, column: 37, scope: !1819)
!1823 = !DILocation(line: 658, column: 27, scope: !1819)
!1824 = !DILocation(line: 659, column: 30, scope: !1788)
!1825 = !DILocation(line: 659, column: 27, scope: !1788)
!1826 = !DILocation(line: 664, column: 23, scope: !1737)
!1827 = !DILocation(line: 668, column: 40, scope: !1698)
!1828 = !DILocation(line: 668, column: 38, scope: !1698)
!1829 = !DILocation(line: 670, column: 21, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1698, file: !119, line: 670, column: 17)
!1831 = !DILocation(line: 670, column: 19, scope: !1830)
!1832 = !DILocation(line: 670, column: 23, scope: !1830)
!1833 = !DILocation(line: 670, column: 27, scope: !1830)
!1834 = !DILocation(line: 670, column: 45, scope: !1830)
!1835 = !DILocation(line: 670, column: 50, scope: !1830)
!1836 = !DILocation(line: 670, column: 17, scope: !1698)
!1837 = !DILocalVariable(name: "ilim", scope: !1838, file: !119, line: 674, type: !141)
!1838 = distinct !DILexicalBlock(scope: !1830, file: !119, line: 671, column: 15)
!1839 = !DILocation(line: 674, column: 24, scope: !1838)
!1840 = !DILocation(line: 674, column: 31, scope: !1838)
!1841 = !DILocation(line: 674, column: 35, scope: !1838)
!1842 = !DILocation(line: 674, column: 33, scope: !1838)
!1843 = !DILocation(line: 676, column: 17, scope: !1838)
!1844 = !DILocation(line: 678, column: 25, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !119, line: 678, column: 25)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !119, line: 677, column: 19)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !119, line: 676, column: 17)
!1848 = distinct !DILexicalBlock(scope: !1838, file: !119, line: 676, column: 17)
!1849 = !DILocation(line: 678, column: 43, scope: !1845)
!1850 = !DILocation(line: 678, column: 48, scope: !1845)
!1851 = !DILocation(line: 678, column: 25, scope: !1846)
!1852 = !DILocation(line: 680, column: 25, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1845, file: !119, line: 679, column: 23)
!1854 = !DILocation(line: 680, column: 25, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !119, line: 680, column: 25)
!1856 = distinct !DILexicalBlock(scope: !1853, file: !119, line: 680, column: 25)
!1857 = !DILocation(line: 680, column: 25, scope: !1856)
!1858 = !DILocation(line: 680, column: 25, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1856, file: !119, line: 680, column: 25)
!1860 = !DILocation(line: 680, column: 25, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1859, file: !119, line: 680, column: 25)
!1862 = !DILocation(line: 680, column: 25, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !119, line: 680, column: 25)
!1864 = distinct !DILexicalBlock(scope: !1861, file: !119, line: 680, column: 25)
!1865 = !DILocation(line: 680, column: 25, scope: !1864)
!1866 = !DILocation(line: 680, column: 25, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !119, line: 680, column: 25)
!1868 = distinct !DILexicalBlock(scope: !1861, file: !119, line: 680, column: 25)
!1869 = !DILocation(line: 680, column: 25, scope: !1868)
!1870 = !DILocation(line: 680, column: 25, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !119, line: 680, column: 25)
!1872 = distinct !DILexicalBlock(scope: !1861, file: !119, line: 680, column: 25)
!1873 = !DILocation(line: 680, column: 25, scope: !1872)
!1874 = !DILocation(line: 680, column: 25, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !119, line: 680, column: 25)
!1876 = distinct !DILexicalBlock(scope: !1856, file: !119, line: 680, column: 25)
!1877 = !DILocation(line: 680, column: 25, scope: !1876)
!1878 = !DILocation(line: 681, column: 25, scope: !1853)
!1879 = !DILocation(line: 681, column: 25, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !119, line: 681, column: 25)
!1881 = distinct !DILexicalBlock(scope: !1853, file: !119, line: 681, column: 25)
!1882 = !DILocation(line: 681, column: 25, scope: !1881)
!1883 = !DILocation(line: 682, column: 25, scope: !1853)
!1884 = !DILocation(line: 682, column: 25, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !119, line: 682, column: 25)
!1886 = distinct !DILexicalBlock(scope: !1853, file: !119, line: 682, column: 25)
!1887 = !DILocation(line: 682, column: 25, scope: !1886)
!1888 = !DILocation(line: 683, column: 36, scope: !1853)
!1889 = !DILocation(line: 683, column: 38, scope: !1853)
!1890 = !DILocation(line: 683, column: 33, scope: !1853)
!1891 = !DILocation(line: 683, column: 29, scope: !1853)
!1892 = !DILocation(line: 683, column: 27, scope: !1853)
!1893 = !DILocation(line: 684, column: 23, scope: !1853)
!1894 = !DILocation(line: 685, column: 30, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1845, file: !119, line: 685, column: 30)
!1896 = !DILocation(line: 685, column: 30, scope: !1845)
!1897 = !DILocation(line: 687, column: 25, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1895, file: !119, line: 686, column: 23)
!1899 = !DILocation(line: 687, column: 25, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !119, line: 687, column: 25)
!1901 = distinct !DILexicalBlock(scope: !1898, file: !119, line: 687, column: 25)
!1902 = !DILocation(line: 687, column: 25, scope: !1901)
!1903 = !DILocation(line: 688, column: 40, scope: !1898)
!1904 = !DILocation(line: 689, column: 23, scope: !1898)
!1905 = !DILocation(line: 690, column: 25, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1846, file: !119, line: 690, column: 25)
!1907 = !DILocation(line: 690, column: 33, scope: !1906)
!1908 = !DILocation(line: 690, column: 35, scope: !1906)
!1909 = !DILocation(line: 690, column: 30, scope: !1906)
!1910 = !DILocation(line: 690, column: 25, scope: !1846)
!1911 = !DILocation(line: 691, column: 23, scope: !1906)
!1912 = !DILocation(line: 692, column: 21, scope: !1846)
!1913 = !DILocation(line: 692, column: 21, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !119, line: 692, column: 21)
!1915 = distinct !DILexicalBlock(scope: !1846, file: !119, line: 692, column: 21)
!1916 = !DILocation(line: 692, column: 21, scope: !1915)
!1917 = !DILocation(line: 692, column: 21, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !119, line: 692, column: 21)
!1919 = !DILocation(line: 692, column: 21, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !119, line: 692, column: 21)
!1921 = distinct !DILexicalBlock(scope: !1918, file: !119, line: 692, column: 21)
!1922 = !DILocation(line: 692, column: 21, scope: !1921)
!1923 = !DILocation(line: 692, column: 21, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !119, line: 692, column: 21)
!1925 = distinct !DILexicalBlock(scope: !1918, file: !119, line: 692, column: 21)
!1926 = !DILocation(line: 692, column: 21, scope: !1925)
!1927 = !DILocation(line: 693, column: 21, scope: !1846)
!1928 = !DILocation(line: 693, column: 21, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !119, line: 693, column: 21)
!1930 = distinct !DILexicalBlock(scope: !1846, file: !119, line: 693, column: 21)
!1931 = !DILocation(line: 693, column: 21, scope: !1930)
!1932 = !DILocation(line: 694, column: 25, scope: !1846)
!1933 = !DILocation(line: 694, column: 29, scope: !1846)
!1934 = !DILocation(line: 694, column: 23, scope: !1846)
!1935 = !DILocation(line: 676, column: 17, scope: !1847)
!1936 = distinct !{!1936, !1937, !1938}
!1937 = !DILocation(line: 676, column: 17, scope: !1848)
!1938 = !DILocation(line: 695, column: 19, scope: !1848)
!1939 = !DILocation(line: 697, column: 17, scope: !1838)
!1940 = !DILocation(line: 700, column: 9, scope: !1449)
!1941 = !DILocation(line: 702, column: 16, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1399, file: !119, line: 702, column: 11)
!1943 = !DILocation(line: 702, column: 34, scope: !1942)
!1944 = !DILocation(line: 702, column: 37, scope: !1942)
!1945 = !DILocation(line: 702, column: 51, scope: !1942)
!1946 = !DILocation(line: 703, column: 15, scope: !1942)
!1947 = !DILocation(line: 703, column: 18, scope: !1942)
!1948 = !DILocation(line: 704, column: 14, scope: !1942)
!1949 = !DILocation(line: 704, column: 17, scope: !1942)
!1950 = !DILocation(line: 705, column: 14, scope: !1942)
!1951 = !DILocation(line: 705, column: 17, scope: !1942)
!1952 = !DILocation(line: 705, column: 33, scope: !1942)
!1953 = !DILocation(line: 705, column: 35, scope: !1942)
!1954 = !DILocation(line: 705, column: 51, scope: !1942)
!1955 = !DILocation(line: 705, column: 53, scope: !1942)
!1956 = !DILocation(line: 705, column: 47, scope: !1942)
!1957 = !DILocation(line: 705, column: 65, scope: !1942)
!1958 = !DILocation(line: 706, column: 11, scope: !1942)
!1959 = !DILocation(line: 706, column: 15, scope: !1942)
!1960 = !DILocation(line: 702, column: 11, scope: !1399)
!1961 = !DILocation(line: 707, column: 9, scope: !1942)
!1962 = !DILabel(scope: !1399, name: "store_escape", file: !119, line: 709)
!1963 = !DILocation(line: 709, column: 5, scope: !1399)
!1964 = !DILocation(line: 710, column: 7, scope: !1399)
!1965 = !DILocation(line: 710, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !119, line: 710, column: 7)
!1967 = distinct !DILexicalBlock(scope: !1399, file: !119, line: 710, column: 7)
!1968 = !DILocation(line: 710, column: 7, scope: !1967)
!1969 = !DILocation(line: 710, column: 7, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1967, file: !119, line: 710, column: 7)
!1971 = !DILocation(line: 710, column: 7, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1970, file: !119, line: 710, column: 7)
!1973 = !DILocation(line: 710, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !119, line: 710, column: 7)
!1975 = distinct !DILexicalBlock(scope: !1972, file: !119, line: 710, column: 7)
!1976 = !DILocation(line: 710, column: 7, scope: !1975)
!1977 = !DILocation(line: 710, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !119, line: 710, column: 7)
!1979 = distinct !DILexicalBlock(scope: !1972, file: !119, line: 710, column: 7)
!1980 = !DILocation(line: 710, column: 7, scope: !1979)
!1981 = !DILocation(line: 710, column: 7, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !119, line: 710, column: 7)
!1983 = distinct !DILexicalBlock(scope: !1972, file: !119, line: 710, column: 7)
!1984 = !DILocation(line: 710, column: 7, scope: !1983)
!1985 = !DILocation(line: 710, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !119, line: 710, column: 7)
!1987 = distinct !DILexicalBlock(scope: !1967, file: !119, line: 710, column: 7)
!1988 = !DILocation(line: 710, column: 7, scope: !1987)
!1989 = !DILabel(scope: !1399, name: "store_c", file: !119, line: 712)
!1990 = !DILocation(line: 712, column: 5, scope: !1399)
!1991 = !DILocation(line: 713, column: 7, scope: !1399)
!1992 = !DILocation(line: 713, column: 7, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !119, line: 713, column: 7)
!1994 = distinct !DILexicalBlock(scope: !1399, file: !119, line: 713, column: 7)
!1995 = !DILocation(line: 713, column: 7, scope: !1994)
!1996 = !DILocation(line: 713, column: 7, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1993, file: !119, line: 713, column: 7)
!1998 = !DILocation(line: 713, column: 7, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !119, line: 713, column: 7)
!2000 = distinct !DILexicalBlock(scope: !1997, file: !119, line: 713, column: 7)
!2001 = !DILocation(line: 713, column: 7, scope: !2000)
!2002 = !DILocation(line: 713, column: 7, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !119, line: 713, column: 7)
!2004 = distinct !DILexicalBlock(scope: !1997, file: !119, line: 713, column: 7)
!2005 = !DILocation(line: 713, column: 7, scope: !2004)
!2006 = !DILocation(line: 714, column: 7, scope: !1399)
!2007 = !DILocation(line: 714, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !119, line: 714, column: 7)
!2009 = distinct !DILexicalBlock(scope: !1399, file: !119, line: 714, column: 7)
!2010 = !DILocation(line: 714, column: 7, scope: !2009)
!2011 = !DILocation(line: 716, column: 13, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1399, file: !119, line: 716, column: 11)
!2013 = !DILocation(line: 716, column: 11, scope: !1399)
!2014 = !DILocation(line: 717, column: 38, scope: !2012)
!2015 = !DILocation(line: 717, column: 9, scope: !2012)
!2016 = !DILocation(line: 718, column: 5, scope: !1399)
!2017 = !DILocation(line: 395, column: 82, scope: !1388)
!2018 = !DILocation(line: 395, column: 3, scope: !1388)
!2019 = distinct !{!2019, !1397, !2020, !392}
!2020 = !DILocation(line: 718, column: 5, scope: !1384)
!2021 = !DILocation(line: 720, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1246, file: !119, line: 720, column: 7)
!2023 = !DILocation(line: 720, column: 11, scope: !2022)
!2024 = !DILocation(line: 720, column: 16, scope: !2022)
!2025 = !DILocation(line: 720, column: 19, scope: !2022)
!2026 = !DILocation(line: 720, column: 33, scope: !2022)
!2027 = !DILocation(line: 721, column: 7, scope: !2022)
!2028 = !DILocation(line: 721, column: 10, scope: !2022)
!2029 = !DILocation(line: 720, column: 7, scope: !1246)
!2030 = !DILocation(line: 722, column: 5, scope: !2022)
!2031 = !DILocation(line: 728, column: 7, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1246, file: !119, line: 728, column: 7)
!2033 = !DILocation(line: 728, column: 21, scope: !2032)
!2034 = !DILocation(line: 728, column: 51, scope: !2032)
!2035 = !DILocation(line: 728, column: 56, scope: !2032)
!2036 = !DILocation(line: 729, column: 7, scope: !2032)
!2037 = !DILocation(line: 729, column: 10, scope: !2032)
!2038 = !DILocation(line: 728, column: 7, scope: !1246)
!2039 = !DILocation(line: 731, column: 11, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !119, line: 731, column: 11)
!2041 = distinct !DILexicalBlock(scope: !2032, file: !119, line: 730, column: 5)
!2042 = !DILocation(line: 731, column: 11, scope: !2041)
!2043 = !DILocation(line: 732, column: 42, scope: !2040)
!2044 = !DILocation(line: 732, column: 50, scope: !2040)
!2045 = !DILocation(line: 732, column: 67, scope: !2040)
!2046 = !DILocation(line: 732, column: 72, scope: !2040)
!2047 = !DILocation(line: 734, column: 42, scope: !2040)
!2048 = !DILocation(line: 734, column: 49, scope: !2040)
!2049 = !DILocation(line: 735, column: 42, scope: !2040)
!2050 = !DILocation(line: 735, column: 54, scope: !2040)
!2051 = !DILocation(line: 732, column: 16, scope: !2040)
!2052 = !DILocation(line: 732, column: 9, scope: !2040)
!2053 = !DILocation(line: 736, column: 18, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2040, file: !119, line: 736, column: 16)
!2055 = !DILocation(line: 736, column: 29, scope: !2054)
!2056 = !DILocation(line: 736, column: 32, scope: !2054)
!2057 = !DILocation(line: 736, column: 16, scope: !2040)
!2058 = !DILocation(line: 739, column: 24, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2054, file: !119, line: 737, column: 9)
!2060 = !DILocation(line: 739, column: 22, scope: !2059)
!2061 = !DILocation(line: 740, column: 15, scope: !2059)
!2062 = !DILocation(line: 741, column: 11, scope: !2059)
!2063 = !DILocation(line: 743, column: 5, scope: !2041)
!2064 = !DILocation(line: 745, column: 7, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1246, file: !119, line: 745, column: 7)
!2066 = !DILocation(line: 745, column: 20, scope: !2065)
!2067 = !DILocation(line: 745, column: 24, scope: !2065)
!2068 = !DILocation(line: 745, column: 7, scope: !1246)
!2069 = !DILocation(line: 746, column: 5, scope: !2065)
!2070 = !DILocation(line: 746, column: 13, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !119, line: 746, column: 5)
!2072 = distinct !DILexicalBlock(scope: !2065, file: !119, line: 746, column: 5)
!2073 = !DILocation(line: 746, column: 12, scope: !2071)
!2074 = !DILocation(line: 746, column: 5, scope: !2072)
!2075 = !DILocation(line: 747, column: 7, scope: !2071)
!2076 = !DILocation(line: 747, column: 7, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !119, line: 747, column: 7)
!2078 = distinct !DILexicalBlock(scope: !2071, file: !119, line: 747, column: 7)
!2079 = !DILocation(line: 747, column: 7, scope: !2078)
!2080 = !DILocation(line: 746, column: 39, scope: !2071)
!2081 = !DILocation(line: 746, column: 5, scope: !2071)
!2082 = distinct !{!2082, !2074, !2083, !392}
!2083 = !DILocation(line: 747, column: 7, scope: !2072)
!2084 = !DILocation(line: 749, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1246, file: !119, line: 749, column: 7)
!2086 = !DILocation(line: 749, column: 13, scope: !2085)
!2087 = !DILocation(line: 749, column: 11, scope: !2085)
!2088 = !DILocation(line: 749, column: 7, scope: !1246)
!2089 = !DILocation(line: 750, column: 5, scope: !2085)
!2090 = !DILocation(line: 750, column: 12, scope: !2085)
!2091 = !DILocation(line: 750, column: 17, scope: !2085)
!2092 = !DILocation(line: 751, column: 10, scope: !1246)
!2093 = !DILocation(line: 751, column: 3, scope: !1246)
!2094 = !DILabel(scope: !1246, name: "force_outer_quoting_style", file: !119, line: 753)
!2095 = !DILocation(line: 753, column: 2, scope: !1246)
!2096 = !DILocation(line: 756, column: 7, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1246, file: !119, line: 756, column: 7)
!2098 = !DILocation(line: 756, column: 21, scope: !2097)
!2099 = !DILocation(line: 756, column: 51, scope: !2097)
!2100 = !DILocation(line: 756, column: 54, scope: !2097)
!2101 = !DILocation(line: 756, column: 7, scope: !1246)
!2102 = !DILocation(line: 757, column: 19, scope: !2097)
!2103 = !DILocation(line: 757, column: 5, scope: !2097)
!2104 = !DILocation(line: 758, column: 36, scope: !1246)
!2105 = !DILocation(line: 758, column: 44, scope: !1246)
!2106 = !DILocation(line: 758, column: 56, scope: !1246)
!2107 = !DILocation(line: 758, column: 61, scope: !1246)
!2108 = !DILocation(line: 759, column: 36, scope: !1246)
!2109 = !DILocation(line: 760, column: 36, scope: !1246)
!2110 = !DILocation(line: 760, column: 42, scope: !1246)
!2111 = !DILocation(line: 761, column: 36, scope: !1246)
!2112 = !DILocation(line: 761, column: 48, scope: !1246)
!2113 = !DILocation(line: 758, column: 10, scope: !1246)
!2114 = !DILocation(line: 758, column: 3, scope: !1246)
!2115 = !DILocation(line: 762, column: 1, scope: !1246)
!2116 = !DILocalVariable(name: "msgid", arg: 1, scope: !172, file: !119, line: 197, type: !37)
!2117 = !DILocation(line: 197, column: 28, scope: !172)
!2118 = !DILocalVariable(name: "s", arg: 2, scope: !172, file: !119, line: 197, type: !121)
!2119 = !DILocation(line: 197, column: 54, scope: !172)
!2120 = !DILocalVariable(name: "translation", scope: !172, file: !119, line: 199, type: !37)
!2121 = !DILocation(line: 199, column: 15, scope: !172)
!2122 = !DILocation(line: 199, column: 29, scope: !172)
!2123 = !DILocation(line: 201, column: 7, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !172, file: !119, line: 201, column: 7)
!2125 = !DILocation(line: 201, column: 22, scope: !2124)
!2126 = !DILocation(line: 201, column: 19, scope: !2124)
!2127 = !DILocation(line: 201, column: 7, scope: !172)
!2128 = !DILocation(line: 202, column: 12, scope: !2124)
!2129 = !DILocation(line: 202, column: 5, scope: !2124)
!2130 = !DILocalVariable(name: "w", scope: !172, file: !119, line: 229, type: !1033)
!2131 = !DILocation(line: 229, column: 12, scope: !172)
!2132 = !DILocalVariable(name: "mbs", scope: !172, file: !119, line: 230, type: !1713)
!2133 = !DILocation(line: 230, column: 13, scope: !172)
!2134 = !DILocation(line: 230, column: 18, scope: !172)
!2135 = !DILocation(line: 231, column: 7, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !172, file: !119, line: 231, column: 7)
!2137 = !DILocation(line: 231, column: 40, scope: !2136)
!2138 = !DILocation(line: 231, column: 45, scope: !2136)
!2139 = !DILocation(line: 231, column: 48, scope: !2136)
!2140 = !DILocation(line: 231, column: 50, scope: !2136)
!2141 = !DILocation(line: 231, column: 7, scope: !172)
!2142 = !DILocation(line: 232, column: 18, scope: !2136)
!2143 = !DILocation(line: 232, column: 27, scope: !2136)
!2144 = !DILocation(line: 232, column: 12, scope: !2136)
!2145 = !DILocation(line: 232, column: 5, scope: !2136)
!2146 = !DILocation(line: 234, column: 11, scope: !172)
!2147 = !DILocation(line: 234, column: 13, scope: !172)
!2148 = !DILocation(line: 234, column: 3, scope: !172)
!2149 = !DILocation(line: 235, column: 1, scope: !172)
!2150 = distinct !DISubprogram(name: "quotearg_alloc", scope: !119, file: !119, line: 788, type: !2151, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!25, !37, !141, !1086}
!2153 = !DILocalVariable(name: "arg", arg: 1, scope: !2150, file: !119, line: 788, type: !37)
!2154 = !DILocation(line: 788, column: 29, scope: !2150)
!2155 = !DILocalVariable(name: "argsize", arg: 2, scope: !2150, file: !119, line: 788, type: !141)
!2156 = !DILocation(line: 788, column: 41, scope: !2150)
!2157 = !DILocalVariable(name: "o", arg: 3, scope: !2150, file: !119, line: 789, type: !1086)
!2158 = !DILocation(line: 789, column: 47, scope: !2150)
!2159 = !DILocation(line: 791, column: 30, scope: !2150)
!2160 = !DILocation(line: 791, column: 35, scope: !2150)
!2161 = !DILocation(line: 791, column: 50, scope: !2150)
!2162 = !DILocation(line: 791, column: 10, scope: !2150)
!2163 = !DILocation(line: 791, column: 3, scope: !2150)
!2164 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !119, file: !119, line: 801, type: !2165, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!25, !37, !141, !243, !1086}
!2167 = !DILocalVariable(name: "arg", arg: 1, scope: !2164, file: !119, line: 801, type: !37)
!2168 = !DILocation(line: 801, column: 33, scope: !2164)
!2169 = !DILocalVariable(name: "argsize", arg: 2, scope: !2164, file: !119, line: 801, type: !141)
!2170 = !DILocation(line: 801, column: 45, scope: !2164)
!2171 = !DILocalVariable(name: "size", arg: 3, scope: !2164, file: !119, line: 801, type: !243)
!2172 = !DILocation(line: 801, column: 62, scope: !2164)
!2173 = !DILocalVariable(name: "o", arg: 4, scope: !2164, file: !119, line: 802, type: !1086)
!2174 = !DILocation(line: 802, column: 51, scope: !2164)
!2175 = !DILocalVariable(name: "p", scope: !2164, file: !119, line: 804, type: !1086)
!2176 = !DILocation(line: 804, column: 33, scope: !2164)
!2177 = !DILocation(line: 804, column: 37, scope: !2164)
!2178 = !DILocation(line: 804, column: 41, scope: !2164)
!2179 = !DILocalVariable(name: "saved_errno", scope: !2164, file: !119, line: 805, type: !28)
!2180 = !DILocation(line: 805, column: 7, scope: !2164)
!2181 = !DILocation(line: 805, column: 21, scope: !2164)
!2182 = !DILocalVariable(name: "flags", scope: !2164, file: !119, line: 807, type: !28)
!2183 = !DILocation(line: 807, column: 7, scope: !2164)
!2184 = !DILocation(line: 807, column: 15, scope: !2164)
!2185 = !DILocation(line: 807, column: 18, scope: !2164)
!2186 = !DILocation(line: 807, column: 27, scope: !2164)
!2187 = !DILocation(line: 807, column: 24, scope: !2164)
!2188 = !DILocalVariable(name: "bufsize", scope: !2164, file: !119, line: 808, type: !141)
!2189 = !DILocation(line: 808, column: 10, scope: !2164)
!2190 = !DILocation(line: 808, column: 55, scope: !2164)
!2191 = !DILocation(line: 808, column: 60, scope: !2164)
!2192 = !DILocation(line: 808, column: 69, scope: !2164)
!2193 = !DILocation(line: 808, column: 72, scope: !2164)
!2194 = !DILocation(line: 809, column: 46, scope: !2164)
!2195 = !DILocation(line: 809, column: 53, scope: !2164)
!2196 = !DILocation(line: 809, column: 56, scope: !2164)
!2197 = !DILocation(line: 810, column: 46, scope: !2164)
!2198 = !DILocation(line: 810, column: 49, scope: !2164)
!2199 = !DILocation(line: 811, column: 46, scope: !2164)
!2200 = !DILocation(line: 811, column: 49, scope: !2164)
!2201 = !DILocation(line: 808, column: 20, scope: !2164)
!2202 = !DILocation(line: 811, column: 62, scope: !2164)
!2203 = !DILocalVariable(name: "buf", scope: !2164, file: !119, line: 812, type: !25)
!2204 = !DILocation(line: 812, column: 9, scope: !2164)
!2205 = !DILocation(line: 812, column: 27, scope: !2164)
!2206 = !DILocation(line: 812, column: 15, scope: !2164)
!2207 = !DILocation(line: 813, column: 29, scope: !2164)
!2208 = !DILocation(line: 813, column: 34, scope: !2164)
!2209 = !DILocation(line: 813, column: 43, scope: !2164)
!2210 = !DILocation(line: 813, column: 48, scope: !2164)
!2211 = !DILocation(line: 813, column: 57, scope: !2164)
!2212 = !DILocation(line: 813, column: 60, scope: !2164)
!2213 = !DILocation(line: 813, column: 67, scope: !2164)
!2214 = !DILocation(line: 814, column: 29, scope: !2164)
!2215 = !DILocation(line: 814, column: 32, scope: !2164)
!2216 = !DILocation(line: 815, column: 29, scope: !2164)
!2217 = !DILocation(line: 815, column: 32, scope: !2164)
!2218 = !DILocation(line: 815, column: 44, scope: !2164)
!2219 = !DILocation(line: 815, column: 47, scope: !2164)
!2220 = !DILocation(line: 813, column: 3, scope: !2164)
!2221 = !DILocation(line: 816, column: 11, scope: !2164)
!2222 = !DILocation(line: 816, column: 3, scope: !2164)
!2223 = !DILocation(line: 816, column: 9, scope: !2164)
!2224 = !DILocation(line: 817, column: 7, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2164, file: !119, line: 817, column: 7)
!2226 = !DILocation(line: 817, column: 7, scope: !2164)
!2227 = !DILocation(line: 818, column: 13, scope: !2225)
!2228 = !DILocation(line: 818, column: 21, scope: !2225)
!2229 = !DILocation(line: 818, column: 6, scope: !2225)
!2230 = !DILocation(line: 818, column: 11, scope: !2225)
!2231 = !DILocation(line: 818, column: 5, scope: !2225)
!2232 = !DILocation(line: 819, column: 10, scope: !2164)
!2233 = !DILocation(line: 819, column: 3, scope: !2164)
!2234 = distinct !DISubprogram(name: "quotearg_free", scope: !119, file: !119, line: 837, type: !97, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2235 = !DILocalVariable(name: "sv", scope: !2234, file: !119, line: 839, type: !179)
!2236 = !DILocation(line: 839, column: 19, scope: !2234)
!2237 = !DILocation(line: 839, column: 24, scope: !2234)
!2238 = !DILocalVariable(name: "i", scope: !2239, file: !119, line: 840, type: !28)
!2239 = distinct !DILexicalBlock(scope: !2234, file: !119, line: 840, column: 3)
!2240 = !DILocation(line: 840, column: 12, scope: !2239)
!2241 = !DILocation(line: 840, column: 8, scope: !2239)
!2242 = !DILocation(line: 840, column: 19, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !119, line: 840, column: 3)
!2244 = !DILocation(line: 840, column: 23, scope: !2243)
!2245 = !DILocation(line: 840, column: 21, scope: !2243)
!2246 = !DILocation(line: 840, column: 3, scope: !2239)
!2247 = !DILocation(line: 841, column: 11, scope: !2243)
!2248 = !DILocation(line: 841, column: 14, scope: !2243)
!2249 = !DILocation(line: 841, column: 17, scope: !2243)
!2250 = !DILocation(line: 841, column: 5, scope: !2243)
!2251 = !DILocation(line: 840, column: 32, scope: !2243)
!2252 = !DILocation(line: 840, column: 3, scope: !2243)
!2253 = distinct !{!2253, !2246, !2254, !392}
!2254 = !DILocation(line: 841, column: 20, scope: !2239)
!2255 = !DILocation(line: 842, column: 7, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2234, file: !119, line: 842, column: 7)
!2257 = !DILocation(line: 842, column: 13, scope: !2256)
!2258 = !DILocation(line: 842, column: 17, scope: !2256)
!2259 = !DILocation(line: 842, column: 7, scope: !2234)
!2260 = !DILocation(line: 844, column: 13, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2256, file: !119, line: 843, column: 5)
!2262 = !DILocation(line: 844, column: 19, scope: !2261)
!2263 = !DILocation(line: 844, column: 7, scope: !2261)
!2264 = !DILocation(line: 845, column: 21, scope: !2261)
!2265 = !DILocation(line: 846, column: 20, scope: !2261)
!2266 = !DILocation(line: 847, column: 5, scope: !2261)
!2267 = !DILocation(line: 848, column: 7, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2234, file: !119, line: 848, column: 7)
!2269 = !DILocation(line: 848, column: 10, scope: !2268)
!2270 = !DILocation(line: 848, column: 7, scope: !2234)
!2271 = !DILocation(line: 850, column: 13, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2268, file: !119, line: 849, column: 5)
!2273 = !DILocation(line: 850, column: 7, scope: !2272)
!2274 = !DILocation(line: 851, column: 15, scope: !2272)
!2275 = !DILocation(line: 852, column: 5, scope: !2272)
!2276 = !DILocation(line: 853, column: 10, scope: !2234)
!2277 = !DILocation(line: 854, column: 1, scope: !2234)
!2278 = distinct !DISubprogram(name: "quotearg_n", scope: !119, file: !119, line: 919, type: !2279, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!25, !28, !37}
!2281 = !DILocalVariable(name: "n", arg: 1, scope: !2278, file: !119, line: 919, type: !28)
!2282 = !DILocation(line: 919, column: 17, scope: !2278)
!2283 = !DILocalVariable(name: "arg", arg: 2, scope: !2278, file: !119, line: 919, type: !37)
!2284 = !DILocation(line: 919, column: 32, scope: !2278)
!2285 = !DILocation(line: 921, column: 30, scope: !2278)
!2286 = !DILocation(line: 921, column: 33, scope: !2278)
!2287 = !DILocation(line: 921, column: 10, scope: !2278)
!2288 = !DILocation(line: 921, column: 3, scope: !2278)
!2289 = distinct !DISubprogram(name: "quotearg_n_options", scope: !119, file: !119, line: 866, type: !2290, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!25, !28, !37, !141, !1086}
!2292 = !DILocalVariable(name: "n", arg: 1, scope: !2289, file: !119, line: 866, type: !28)
!2293 = !DILocation(line: 866, column: 25, scope: !2289)
!2294 = !DILocalVariable(name: "arg", arg: 2, scope: !2289, file: !119, line: 866, type: !37)
!2295 = !DILocation(line: 866, column: 40, scope: !2289)
!2296 = !DILocalVariable(name: "argsize", arg: 3, scope: !2289, file: !119, line: 866, type: !141)
!2297 = !DILocation(line: 866, column: 52, scope: !2289)
!2298 = !DILocalVariable(name: "options", arg: 4, scope: !2289, file: !119, line: 867, type: !1086)
!2299 = !DILocation(line: 867, column: 51, scope: !2289)
!2300 = !DILocalVariable(name: "saved_errno", scope: !2289, file: !119, line: 869, type: !28)
!2301 = !DILocation(line: 869, column: 7, scope: !2289)
!2302 = !DILocation(line: 869, column: 21, scope: !2289)
!2303 = !DILocalVariable(name: "sv", scope: !2289, file: !119, line: 871, type: !179)
!2304 = !DILocation(line: 871, column: 19, scope: !2289)
!2305 = !DILocation(line: 871, column: 24, scope: !2289)
!2306 = !DILocalVariable(name: "nslots_max", scope: !2289, file: !119, line: 873, type: !28)
!2307 = !DILocation(line: 873, column: 7, scope: !2289)
!2308 = !DILocation(line: 874, column: 15, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2289, file: !119, line: 874, column: 7)
!2310 = !DILocation(line: 874, column: 12, scope: !2309)
!2311 = !DILocation(line: 874, column: 17, scope: !2309)
!2312 = !DILocation(line: 874, column: 20, scope: !2309)
!2313 = !DILocation(line: 874, column: 24, scope: !2309)
!2314 = !DILocation(line: 874, column: 22, scope: !2309)
!2315 = !DILocation(line: 874, column: 7, scope: !2289)
!2316 = !DILocation(line: 875, column: 5, scope: !2309)
!2317 = !DILocation(line: 877, column: 7, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2289, file: !119, line: 877, column: 7)
!2319 = !DILocation(line: 877, column: 17, scope: !2318)
!2320 = !DILocation(line: 877, column: 14, scope: !2318)
!2321 = !DILocation(line: 877, column: 7, scope: !2289)
!2322 = !DILocalVariable(name: "preallocated", scope: !2323, file: !119, line: 879, type: !64)
!2323 = distinct !DILexicalBlock(scope: !2318, file: !119, line: 878, column: 5)
!2324 = !DILocation(line: 879, column: 12, scope: !2323)
!2325 = !DILocation(line: 879, column: 28, scope: !2323)
!2326 = !DILocation(line: 879, column: 31, scope: !2323)
!2327 = !DILocalVariable(name: "new_nslots", scope: !2323, file: !119, line: 880, type: !251)
!2328 = !DILocation(line: 880, column: 13, scope: !2323)
!2329 = !DILocation(line: 880, column: 26, scope: !2323)
!2330 = !DILocation(line: 882, column: 31, scope: !2323)
!2331 = !DILocation(line: 882, column: 53, scope: !2323)
!2332 = !DILocation(line: 883, column: 31, scope: !2323)
!2333 = !DILocation(line: 883, column: 35, scope: !2323)
!2334 = !DILocation(line: 883, column: 33, scope: !2323)
!2335 = !DILocation(line: 883, column: 42, scope: !2323)
!2336 = !DILocation(line: 883, column: 47, scope: !2323)
!2337 = !DILocation(line: 882, column: 22, scope: !2323)
!2338 = !DILocation(line: 882, column: 20, scope: !2323)
!2339 = !DILocation(line: 882, column: 15, scope: !2323)
!2340 = !DILocation(line: 884, column: 11, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2323, file: !119, line: 884, column: 11)
!2342 = !DILocation(line: 884, column: 11, scope: !2323)
!2343 = !DILocation(line: 885, column: 10, scope: !2341)
!2344 = !DILocation(line: 885, column: 15, scope: !2341)
!2345 = !DILocation(line: 885, column: 9, scope: !2341)
!2346 = !DILocation(line: 886, column: 15, scope: !2323)
!2347 = !DILocation(line: 886, column: 20, scope: !2323)
!2348 = !DILocation(line: 886, column: 18, scope: !2323)
!2349 = !DILocation(line: 886, column: 7, scope: !2323)
!2350 = !DILocation(line: 886, column: 32, scope: !2323)
!2351 = !DILocation(line: 886, column: 45, scope: !2323)
!2352 = !DILocation(line: 886, column: 43, scope: !2323)
!2353 = !DILocation(line: 886, column: 53, scope: !2323)
!2354 = !DILocation(line: 887, column: 16, scope: !2323)
!2355 = !DILocation(line: 887, column: 14, scope: !2323)
!2356 = !DILocation(line: 888, column: 5, scope: !2323)
!2357 = !DILocalVariable(name: "size", scope: !2358, file: !119, line: 891, type: !141)
!2358 = distinct !DILexicalBlock(scope: !2289, file: !119, line: 890, column: 3)
!2359 = !DILocation(line: 891, column: 12, scope: !2358)
!2360 = !DILocation(line: 891, column: 19, scope: !2358)
!2361 = !DILocation(line: 891, column: 22, scope: !2358)
!2362 = !DILocation(line: 891, column: 25, scope: !2358)
!2363 = !DILocalVariable(name: "val", scope: !2358, file: !119, line: 892, type: !25)
!2364 = !DILocation(line: 892, column: 11, scope: !2358)
!2365 = !DILocation(line: 892, column: 17, scope: !2358)
!2366 = !DILocation(line: 892, column: 20, scope: !2358)
!2367 = !DILocation(line: 892, column: 23, scope: !2358)
!2368 = !DILocalVariable(name: "flags", scope: !2358, file: !119, line: 894, type: !28)
!2369 = !DILocation(line: 894, column: 9, scope: !2358)
!2370 = !DILocation(line: 894, column: 17, scope: !2358)
!2371 = !DILocation(line: 894, column: 26, scope: !2358)
!2372 = !DILocation(line: 894, column: 32, scope: !2358)
!2373 = !DILocalVariable(name: "qsize", scope: !2358, file: !119, line: 895, type: !141)
!2374 = !DILocation(line: 895, column: 12, scope: !2358)
!2375 = !DILocation(line: 895, column: 46, scope: !2358)
!2376 = !DILocation(line: 895, column: 51, scope: !2358)
!2377 = !DILocation(line: 895, column: 57, scope: !2358)
!2378 = !DILocation(line: 895, column: 62, scope: !2358)
!2379 = !DILocation(line: 896, column: 46, scope: !2358)
!2380 = !DILocation(line: 896, column: 55, scope: !2358)
!2381 = !DILocation(line: 896, column: 62, scope: !2358)
!2382 = !DILocation(line: 897, column: 46, scope: !2358)
!2383 = !DILocation(line: 897, column: 55, scope: !2358)
!2384 = !DILocation(line: 898, column: 46, scope: !2358)
!2385 = !DILocation(line: 898, column: 55, scope: !2358)
!2386 = !DILocation(line: 899, column: 46, scope: !2358)
!2387 = !DILocation(line: 899, column: 55, scope: !2358)
!2388 = !DILocation(line: 895, column: 20, scope: !2358)
!2389 = !DILocation(line: 901, column: 9, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2358, file: !119, line: 901, column: 9)
!2391 = !DILocation(line: 901, column: 17, scope: !2390)
!2392 = !DILocation(line: 901, column: 14, scope: !2390)
!2393 = !DILocation(line: 901, column: 9, scope: !2358)
!2394 = !DILocation(line: 903, column: 29, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2390, file: !119, line: 902, column: 7)
!2396 = !DILocation(line: 903, column: 35, scope: !2395)
!2397 = !DILocation(line: 903, column: 27, scope: !2395)
!2398 = !DILocation(line: 903, column: 9, scope: !2395)
!2399 = !DILocation(line: 903, column: 12, scope: !2395)
!2400 = !DILocation(line: 903, column: 15, scope: !2395)
!2401 = !DILocation(line: 903, column: 20, scope: !2395)
!2402 = !DILocation(line: 904, column: 13, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2395, file: !119, line: 904, column: 13)
!2404 = !DILocation(line: 904, column: 17, scope: !2403)
!2405 = !DILocation(line: 904, column: 13, scope: !2395)
!2406 = !DILocation(line: 905, column: 17, scope: !2403)
!2407 = !DILocation(line: 905, column: 11, scope: !2403)
!2408 = !DILocation(line: 906, column: 39, scope: !2395)
!2409 = !DILocation(line: 906, column: 27, scope: !2395)
!2410 = !DILocation(line: 906, column: 25, scope: !2395)
!2411 = !DILocation(line: 906, column: 9, scope: !2395)
!2412 = !DILocation(line: 906, column: 12, scope: !2395)
!2413 = !DILocation(line: 906, column: 15, scope: !2395)
!2414 = !DILocation(line: 906, column: 19, scope: !2395)
!2415 = !DILocation(line: 907, column: 35, scope: !2395)
!2416 = !DILocation(line: 907, column: 40, scope: !2395)
!2417 = !DILocation(line: 907, column: 46, scope: !2395)
!2418 = !DILocation(line: 907, column: 51, scope: !2395)
!2419 = !DILocation(line: 907, column: 60, scope: !2395)
!2420 = !DILocation(line: 907, column: 69, scope: !2395)
!2421 = !DILocation(line: 908, column: 35, scope: !2395)
!2422 = !DILocation(line: 908, column: 42, scope: !2395)
!2423 = !DILocation(line: 908, column: 51, scope: !2395)
!2424 = !DILocation(line: 909, column: 35, scope: !2395)
!2425 = !DILocation(line: 909, column: 44, scope: !2395)
!2426 = !DILocation(line: 910, column: 35, scope: !2395)
!2427 = !DILocation(line: 910, column: 44, scope: !2395)
!2428 = !DILocation(line: 907, column: 9, scope: !2395)
!2429 = !DILocation(line: 911, column: 7, scope: !2395)
!2430 = !DILocation(line: 913, column: 13, scope: !2358)
!2431 = !DILocation(line: 913, column: 5, scope: !2358)
!2432 = !DILocation(line: 913, column: 11, scope: !2358)
!2433 = !DILocation(line: 914, column: 12, scope: !2358)
!2434 = !DILocation(line: 914, column: 5, scope: !2358)
!2435 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !119, file: !119, line: 925, type: !2436, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!25, !28, !37, !141}
!2438 = !DILocalVariable(name: "n", arg: 1, scope: !2435, file: !119, line: 925, type: !28)
!2439 = !DILocation(line: 925, column: 21, scope: !2435)
!2440 = !DILocalVariable(name: "arg", arg: 2, scope: !2435, file: !119, line: 925, type: !37)
!2441 = !DILocation(line: 925, column: 36, scope: !2435)
!2442 = !DILocalVariable(name: "argsize", arg: 3, scope: !2435, file: !119, line: 925, type: !141)
!2443 = !DILocation(line: 925, column: 48, scope: !2435)
!2444 = !DILocation(line: 927, column: 30, scope: !2435)
!2445 = !DILocation(line: 927, column: 33, scope: !2435)
!2446 = !DILocation(line: 927, column: 38, scope: !2435)
!2447 = !DILocation(line: 927, column: 10, scope: !2435)
!2448 = !DILocation(line: 927, column: 3, scope: !2435)
!2449 = distinct !DISubprogram(name: "quotearg", scope: !119, file: !119, line: 931, type: !2450, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!25, !37}
!2452 = !DILocalVariable(name: "arg", arg: 1, scope: !2449, file: !119, line: 931, type: !37)
!2453 = !DILocation(line: 931, column: 23, scope: !2449)
!2454 = !DILocation(line: 933, column: 25, scope: !2449)
!2455 = !DILocation(line: 933, column: 10, scope: !2449)
!2456 = !DILocation(line: 933, column: 3, scope: !2449)
!2457 = distinct !DISubprogram(name: "quotearg_mem", scope: !119, file: !119, line: 937, type: !2458, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!25, !37, !141}
!2460 = !DILocalVariable(name: "arg", arg: 1, scope: !2457, file: !119, line: 937, type: !37)
!2461 = !DILocation(line: 937, column: 27, scope: !2457)
!2462 = !DILocalVariable(name: "argsize", arg: 2, scope: !2457, file: !119, line: 937, type: !141)
!2463 = !DILocation(line: 937, column: 39, scope: !2457)
!2464 = !DILocation(line: 939, column: 29, scope: !2457)
!2465 = !DILocation(line: 939, column: 34, scope: !2457)
!2466 = !DILocation(line: 939, column: 10, scope: !2457)
!2467 = !DILocation(line: 939, column: 3, scope: !2457)
!2468 = distinct !DISubprogram(name: "quotearg_n_style", scope: !119, file: !119, line: 943, type: !2469, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!25, !28, !121, !37}
!2471 = !DILocalVariable(name: "n", arg: 1, scope: !2468, file: !119, line: 943, type: !28)
!2472 = !DILocation(line: 943, column: 23, scope: !2468)
!2473 = !DILocalVariable(name: "s", arg: 2, scope: !2468, file: !119, line: 943, type: !121)
!2474 = !DILocation(line: 943, column: 45, scope: !2468)
!2475 = !DILocalVariable(name: "arg", arg: 3, scope: !2468, file: !119, line: 943, type: !37)
!2476 = !DILocation(line: 943, column: 60, scope: !2468)
!2477 = !DILocalVariable(name: "o", scope: !2468, file: !119, line: 945, type: !1087)
!2478 = !DILocation(line: 945, column: 32, scope: !2468)
!2479 = !DILocation(line: 945, column: 64, scope: !2468)
!2480 = !DILocation(line: 945, column: 36, scope: !2468)
!2481 = !DILocation(line: 946, column: 30, scope: !2468)
!2482 = !DILocation(line: 946, column: 33, scope: !2468)
!2483 = !DILocation(line: 946, column: 10, scope: !2468)
!2484 = !DILocation(line: 946, column: 3, scope: !2468)
!2485 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !119, file: !119, line: 183, type: !2486, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!153, !121}
!2488 = !DILocalVariable(name: "style", arg: 1, scope: !2485, file: !119, line: 183, type: !121)
!2489 = !DILocation(line: 183, column: 48, scope: !2485)
!2490 = !DILocalVariable(name: "o", scope: !2485, file: !119, line: 185, type: !153)
!2491 = !DILocation(line: 185, column: 26, scope: !2485)
!2492 = !DILocation(line: 186, column: 7, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2485, file: !119, line: 186, column: 7)
!2494 = !DILocation(line: 186, column: 13, scope: !2493)
!2495 = !DILocation(line: 186, column: 7, scope: !2485)
!2496 = !DILocation(line: 187, column: 5, scope: !2493)
!2497 = !DILocation(line: 188, column: 13, scope: !2485)
!2498 = !DILocation(line: 188, column: 5, scope: !2485)
!2499 = !DILocation(line: 188, column: 11, scope: !2485)
!2500 = !DILocation(line: 189, column: 3, scope: !2485)
!2501 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !119, file: !119, line: 950, type: !2502, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!25, !28, !121, !37, !141}
!2504 = !DILocalVariable(name: "n", arg: 1, scope: !2501, file: !119, line: 950, type: !28)
!2505 = !DILocation(line: 950, column: 27, scope: !2501)
!2506 = !DILocalVariable(name: "s", arg: 2, scope: !2501, file: !119, line: 950, type: !121)
!2507 = !DILocation(line: 950, column: 49, scope: !2501)
!2508 = !DILocalVariable(name: "arg", arg: 3, scope: !2501, file: !119, line: 951, type: !37)
!2509 = !DILocation(line: 951, column: 35, scope: !2501)
!2510 = !DILocalVariable(name: "argsize", arg: 4, scope: !2501, file: !119, line: 951, type: !141)
!2511 = !DILocation(line: 951, column: 47, scope: !2501)
!2512 = !DILocalVariable(name: "o", scope: !2501, file: !119, line: 953, type: !1087)
!2513 = !DILocation(line: 953, column: 32, scope: !2501)
!2514 = !DILocation(line: 953, column: 64, scope: !2501)
!2515 = !DILocation(line: 953, column: 36, scope: !2501)
!2516 = !DILocation(line: 954, column: 30, scope: !2501)
!2517 = !DILocation(line: 954, column: 33, scope: !2501)
!2518 = !DILocation(line: 954, column: 38, scope: !2501)
!2519 = !DILocation(line: 954, column: 10, scope: !2501)
!2520 = !DILocation(line: 954, column: 3, scope: !2501)
!2521 = distinct !DISubprogram(name: "quotearg_style", scope: !119, file: !119, line: 958, type: !2522, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!25, !121, !37}
!2524 = !DILocalVariable(name: "s", arg: 1, scope: !2521, file: !119, line: 958, type: !121)
!2525 = !DILocation(line: 958, column: 36, scope: !2521)
!2526 = !DILocalVariable(name: "arg", arg: 2, scope: !2521, file: !119, line: 958, type: !37)
!2527 = !DILocation(line: 958, column: 51, scope: !2521)
!2528 = !DILocation(line: 960, column: 31, scope: !2521)
!2529 = !DILocation(line: 960, column: 34, scope: !2521)
!2530 = !DILocation(line: 960, column: 10, scope: !2521)
!2531 = !DILocation(line: 960, column: 3, scope: !2521)
!2532 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !119, file: !119, line: 964, type: !2533, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!25, !121, !37, !141}
!2535 = !DILocalVariable(name: "s", arg: 1, scope: !2532, file: !119, line: 964, type: !121)
!2536 = !DILocation(line: 964, column: 40, scope: !2532)
!2537 = !DILocalVariable(name: "arg", arg: 2, scope: !2532, file: !119, line: 964, type: !37)
!2538 = !DILocation(line: 964, column: 55, scope: !2532)
!2539 = !DILocalVariable(name: "argsize", arg: 3, scope: !2532, file: !119, line: 964, type: !141)
!2540 = !DILocation(line: 964, column: 67, scope: !2532)
!2541 = !DILocation(line: 966, column: 35, scope: !2532)
!2542 = !DILocation(line: 966, column: 38, scope: !2532)
!2543 = !DILocation(line: 966, column: 43, scope: !2532)
!2544 = !DILocation(line: 966, column: 10, scope: !2532)
!2545 = !DILocation(line: 966, column: 3, scope: !2532)
!2546 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !119, file: !119, line: 970, type: !2547, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!25, !37, !141, !26}
!2549 = !DILocalVariable(name: "arg", arg: 1, scope: !2546, file: !119, line: 970, type: !37)
!2550 = !DILocation(line: 970, column: 32, scope: !2546)
!2551 = !DILocalVariable(name: "argsize", arg: 2, scope: !2546, file: !119, line: 970, type: !141)
!2552 = !DILocation(line: 970, column: 44, scope: !2546)
!2553 = !DILocalVariable(name: "ch", arg: 3, scope: !2546, file: !119, line: 970, type: !26)
!2554 = !DILocation(line: 970, column: 58, scope: !2546)
!2555 = !DILocalVariable(name: "options", scope: !2546, file: !119, line: 972, type: !153)
!2556 = !DILocation(line: 972, column: 26, scope: !2546)
!2557 = !DILocation(line: 973, column: 13, scope: !2546)
!2558 = !DILocation(line: 974, column: 31, scope: !2546)
!2559 = !DILocation(line: 974, column: 3, scope: !2546)
!2560 = !DILocation(line: 975, column: 33, scope: !2546)
!2561 = !DILocation(line: 975, column: 38, scope: !2546)
!2562 = !DILocation(line: 975, column: 10, scope: !2546)
!2563 = !DILocation(line: 975, column: 3, scope: !2546)
!2564 = distinct !DISubprogram(name: "quotearg_char", scope: !119, file: !119, line: 979, type: !2565, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!25, !37, !26}
!2567 = !DILocalVariable(name: "arg", arg: 1, scope: !2564, file: !119, line: 979, type: !37)
!2568 = !DILocation(line: 979, column: 28, scope: !2564)
!2569 = !DILocalVariable(name: "ch", arg: 2, scope: !2564, file: !119, line: 979, type: !26)
!2570 = !DILocation(line: 979, column: 38, scope: !2564)
!2571 = !DILocation(line: 981, column: 29, scope: !2564)
!2572 = !DILocation(line: 981, column: 44, scope: !2564)
!2573 = !DILocation(line: 981, column: 10, scope: !2564)
!2574 = !DILocation(line: 981, column: 3, scope: !2564)
!2575 = distinct !DISubprogram(name: "quotearg_colon", scope: !119, file: !119, line: 985, type: !2450, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2576 = !DILocalVariable(name: "arg", arg: 1, scope: !2575, file: !119, line: 985, type: !37)
!2577 = !DILocation(line: 985, column: 29, scope: !2575)
!2578 = !DILocation(line: 987, column: 25, scope: !2575)
!2579 = !DILocation(line: 987, column: 10, scope: !2575)
!2580 = !DILocation(line: 987, column: 3, scope: !2575)
!2581 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !119, file: !119, line: 991, type: !2458, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2582 = !DILocalVariable(name: "arg", arg: 1, scope: !2581, file: !119, line: 991, type: !37)
!2583 = !DILocation(line: 991, column: 33, scope: !2581)
!2584 = !DILocalVariable(name: "argsize", arg: 2, scope: !2581, file: !119, line: 991, type: !141)
!2585 = !DILocation(line: 991, column: 45, scope: !2581)
!2586 = !DILocation(line: 993, column: 29, scope: !2581)
!2587 = !DILocation(line: 993, column: 34, scope: !2581)
!2588 = !DILocation(line: 993, column: 10, scope: !2581)
!2589 = !DILocation(line: 993, column: 3, scope: !2581)
!2590 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !119, file: !119, line: 997, type: !2469, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2591 = !DILocalVariable(name: "n", arg: 1, scope: !2590, file: !119, line: 997, type: !28)
!2592 = !DILocation(line: 997, column: 29, scope: !2590)
!2593 = !DILocalVariable(name: "s", arg: 2, scope: !2590, file: !119, line: 997, type: !121)
!2594 = !DILocation(line: 997, column: 51, scope: !2590)
!2595 = !DILocalVariable(name: "arg", arg: 3, scope: !2590, file: !119, line: 997, type: !37)
!2596 = !DILocation(line: 997, column: 66, scope: !2590)
!2597 = !DILocalVariable(name: "options", scope: !2590, file: !119, line: 999, type: !153)
!2598 = !DILocation(line: 999, column: 26, scope: !2590)
!2599 = !DILocation(line: 1000, column: 41, scope: !2590)
!2600 = !DILocation(line: 1000, column: 13, scope: !2590)
!2601 = !DILocation(line: 1001, column: 3, scope: !2590)
!2602 = !DILocation(line: 1002, column: 30, scope: !2590)
!2603 = !DILocation(line: 1002, column: 33, scope: !2590)
!2604 = !DILocation(line: 1002, column: 10, scope: !2590)
!2605 = !DILocation(line: 1002, column: 3, scope: !2590)
!2606 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !119, file: !119, line: 1006, type: !2607, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!25, !28, !37, !37, !37}
!2609 = !DILocalVariable(name: "n", arg: 1, scope: !2606, file: !119, line: 1006, type: !28)
!2610 = !DILocation(line: 1006, column: 24, scope: !2606)
!2611 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2606, file: !119, line: 1006, type: !37)
!2612 = !DILocation(line: 1006, column: 39, scope: !2606)
!2613 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2606, file: !119, line: 1007, type: !37)
!2614 = !DILocation(line: 1007, column: 32, scope: !2606)
!2615 = !DILocalVariable(name: "arg", arg: 4, scope: !2606, file: !119, line: 1007, type: !37)
!2616 = !DILocation(line: 1007, column: 57, scope: !2606)
!2617 = !DILocation(line: 1009, column: 33, scope: !2606)
!2618 = !DILocation(line: 1009, column: 36, scope: !2606)
!2619 = !DILocation(line: 1009, column: 48, scope: !2606)
!2620 = !DILocation(line: 1009, column: 61, scope: !2606)
!2621 = !DILocation(line: 1009, column: 10, scope: !2606)
!2622 = !DILocation(line: 1009, column: 3, scope: !2606)
!2623 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !119, file: !119, line: 1014, type: !2624, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!25, !28, !37, !37, !37, !141}
!2626 = !DILocalVariable(name: "n", arg: 1, scope: !2623, file: !119, line: 1014, type: !28)
!2627 = !DILocation(line: 1014, column: 28, scope: !2623)
!2628 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2623, file: !119, line: 1014, type: !37)
!2629 = !DILocation(line: 1014, column: 43, scope: !2623)
!2630 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2623, file: !119, line: 1015, type: !37)
!2631 = !DILocation(line: 1015, column: 36, scope: !2623)
!2632 = !DILocalVariable(name: "arg", arg: 4, scope: !2623, file: !119, line: 1016, type: !37)
!2633 = !DILocation(line: 1016, column: 36, scope: !2623)
!2634 = !DILocalVariable(name: "argsize", arg: 5, scope: !2623, file: !119, line: 1016, type: !141)
!2635 = !DILocation(line: 1016, column: 48, scope: !2623)
!2636 = !DILocalVariable(name: "o", scope: !2623, file: !119, line: 1018, type: !153)
!2637 = !DILocation(line: 1018, column: 26, scope: !2623)
!2638 = !DILocation(line: 1018, column: 30, scope: !2623)
!2639 = !DILocation(line: 1019, column: 27, scope: !2623)
!2640 = !DILocation(line: 1019, column: 39, scope: !2623)
!2641 = !DILocation(line: 1019, column: 3, scope: !2623)
!2642 = !DILocation(line: 1020, column: 30, scope: !2623)
!2643 = !DILocation(line: 1020, column: 33, scope: !2623)
!2644 = !DILocation(line: 1020, column: 38, scope: !2623)
!2645 = !DILocation(line: 1020, column: 10, scope: !2623)
!2646 = !DILocation(line: 1020, column: 3, scope: !2623)
!2647 = distinct !DISubprogram(name: "quotearg_custom", scope: !119, file: !119, line: 1024, type: !2648, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!25, !37, !37, !37}
!2650 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2647, file: !119, line: 1024, type: !37)
!2651 = !DILocation(line: 1024, column: 30, scope: !2647)
!2652 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2647, file: !119, line: 1024, type: !37)
!2653 = !DILocation(line: 1024, column: 54, scope: !2647)
!2654 = !DILocalVariable(name: "arg", arg: 3, scope: !2647, file: !119, line: 1025, type: !37)
!2655 = !DILocation(line: 1025, column: 30, scope: !2647)
!2656 = !DILocation(line: 1027, column: 32, scope: !2647)
!2657 = !DILocation(line: 1027, column: 44, scope: !2647)
!2658 = !DILocation(line: 1027, column: 57, scope: !2647)
!2659 = !DILocation(line: 1027, column: 10, scope: !2647)
!2660 = !DILocation(line: 1027, column: 3, scope: !2647)
!2661 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !119, file: !119, line: 1031, type: !2662, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!25, !37, !37, !37, !141}
!2664 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2661, file: !119, line: 1031, type: !37)
!2665 = !DILocation(line: 1031, column: 34, scope: !2661)
!2666 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2661, file: !119, line: 1031, type: !37)
!2667 = !DILocation(line: 1031, column: 58, scope: !2661)
!2668 = !DILocalVariable(name: "arg", arg: 3, scope: !2661, file: !119, line: 1032, type: !37)
!2669 = !DILocation(line: 1032, column: 34, scope: !2661)
!2670 = !DILocalVariable(name: "argsize", arg: 4, scope: !2661, file: !119, line: 1032, type: !141)
!2671 = !DILocation(line: 1032, column: 46, scope: !2661)
!2672 = !DILocation(line: 1034, column: 36, scope: !2661)
!2673 = !DILocation(line: 1034, column: 48, scope: !2661)
!2674 = !DILocation(line: 1034, column: 61, scope: !2661)
!2675 = !DILocation(line: 1035, column: 33, scope: !2661)
!2676 = !DILocation(line: 1034, column: 10, scope: !2661)
!2677 = !DILocation(line: 1034, column: 3, scope: !2661)
!2678 = distinct !DISubprogram(name: "quote_n_mem", scope: !119, file: !119, line: 1049, type: !2679, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!37, !28, !37, !141}
!2681 = !DILocalVariable(name: "n", arg: 1, scope: !2678, file: !119, line: 1049, type: !28)
!2682 = !DILocation(line: 1049, column: 18, scope: !2678)
!2683 = !DILocalVariable(name: "arg", arg: 2, scope: !2678, file: !119, line: 1049, type: !37)
!2684 = !DILocation(line: 1049, column: 33, scope: !2678)
!2685 = !DILocalVariable(name: "argsize", arg: 3, scope: !2678, file: !119, line: 1049, type: !141)
!2686 = !DILocation(line: 1049, column: 45, scope: !2678)
!2687 = !DILocation(line: 1051, column: 30, scope: !2678)
!2688 = !DILocation(line: 1051, column: 33, scope: !2678)
!2689 = !DILocation(line: 1051, column: 38, scope: !2678)
!2690 = !DILocation(line: 1051, column: 10, scope: !2678)
!2691 = !DILocation(line: 1051, column: 3, scope: !2678)
!2692 = distinct !DISubprogram(name: "quote_mem", scope: !119, file: !119, line: 1055, type: !2693, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!37, !37, !141}
!2695 = !DILocalVariable(name: "arg", arg: 1, scope: !2692, file: !119, line: 1055, type: !37)
!2696 = !DILocation(line: 1055, column: 24, scope: !2692)
!2697 = !DILocalVariable(name: "argsize", arg: 2, scope: !2692, file: !119, line: 1055, type: !141)
!2698 = !DILocation(line: 1055, column: 36, scope: !2692)
!2699 = !DILocation(line: 1057, column: 26, scope: !2692)
!2700 = !DILocation(line: 1057, column: 31, scope: !2692)
!2701 = !DILocation(line: 1057, column: 10, scope: !2692)
!2702 = !DILocation(line: 1057, column: 3, scope: !2692)
!2703 = distinct !DISubprogram(name: "quote_n", scope: !119, file: !119, line: 1061, type: !2704, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!37, !28, !37}
!2706 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !119, line: 1061, type: !28)
!2707 = !DILocation(line: 1061, column: 14, scope: !2703)
!2708 = !DILocalVariable(name: "arg", arg: 2, scope: !2703, file: !119, line: 1061, type: !37)
!2709 = !DILocation(line: 1061, column: 29, scope: !2703)
!2710 = !DILocation(line: 1063, column: 23, scope: !2703)
!2711 = !DILocation(line: 1063, column: 26, scope: !2703)
!2712 = !DILocation(line: 1063, column: 10, scope: !2703)
!2713 = !DILocation(line: 1063, column: 3, scope: !2703)
!2714 = distinct !DISubprogram(name: "quote", scope: !119, file: !119, line: 1067, type: !2715, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !39)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!37, !37}
!2717 = !DILocalVariable(name: "arg", arg: 1, scope: !2714, file: !119, line: 1067, type: !37)
!2718 = !DILocation(line: 1067, column: 20, scope: !2714)
!2719 = !DILocation(line: 1069, column: 22, scope: !2714)
!2720 = !DILocation(line: 1069, column: 10, scope: !2714)
!2721 = !DILocation(line: 1069, column: 3, scope: !2714)
!2722 = distinct !DISubprogram(name: "streq", scope: !2723, file: !2723, line: 1359, type: !2724, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !228, retainedNodes: !39)
!2723 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!64, !37, !37}
!2726 = !DILocalVariable(name: "__s1", arg: 1, scope: !2722, file: !2723, line: 1359, type: !37)
!2727 = !DILocation(line: 1359, column: 20, scope: !2722)
!2728 = !DILocalVariable(name: "__s2", arg: 2, scope: !2722, file: !2723, line: 1359, type: !37)
!2729 = !DILocation(line: 1359, column: 38, scope: !2722)
!2730 = !DILocation(line: 1361, column: 19, scope: !2722)
!2731 = !DILocation(line: 1361, column: 25, scope: !2722)
!2732 = !DILocation(line: 1361, column: 11, scope: !2722)
!2733 = !DILocation(line: 1361, column: 10, scope: !2722)
!2734 = !DILocation(line: 1361, column: 3, scope: !2722)
!2735 = distinct !DISubprogram(name: "version_etc_arn", scope: !231, file: !231, line: 61, type: !2736, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !39)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{null, !2738, !37, !37, !37, !2791, !141}
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2740, line: 7, baseType: !2741)
!2740 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2742, line: 49, size: 1728, elements: !2743)
!2742 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2743 = !{!2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2759, !2761, !2762, !2763, !2765, !2766, !2768, !2772, !2775, !2777, !2780, !2783, !2784, !2785, !2786, !2787}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2741, file: !2742, line: 51, baseType: !28, size: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2741, file: !2742, line: 54, baseType: !25, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2741, file: !2742, line: 55, baseType: !25, size: 64, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2741, file: !2742, line: 56, baseType: !25, size: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2741, file: !2742, line: 57, baseType: !25, size: 64, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2741, file: !2742, line: 58, baseType: !25, size: 64, offset: 320)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2741, file: !2742, line: 59, baseType: !25, size: 64, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2741, file: !2742, line: 60, baseType: !25, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2741, file: !2742, line: 61, baseType: !25, size: 64, offset: 512)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2741, file: !2742, line: 64, baseType: !25, size: 64, offset: 576)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2741, file: !2742, line: 65, baseType: !25, size: 64, offset: 640)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2741, file: !2742, line: 66, baseType: !25, size: 64, offset: 704)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2741, file: !2742, line: 68, baseType: !2757, size: 64, offset: 768)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2742, line: 36, flags: DIFlagFwdDecl)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2741, file: !2742, line: 70, baseType: !2760, size: 64, offset: 832)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2741, file: !2742, line: 72, baseType: !28, size: 32, offset: 896)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2741, file: !2742, line: 73, baseType: !28, size: 32, offset: 928)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2741, file: !2742, line: 74, baseType: !2764, size: 64, offset: 960)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1036, line: 152, baseType: !254)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2741, file: !2742, line: 77, baseType: !29, size: 16, offset: 1024)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2741, file: !2742, line: 78, baseType: !2767, size: 8, offset: 1040)
!2767 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2741, file: !2742, line: 79, baseType: !2769, size: 8, offset: 1048)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !2770)
!2770 = !{!2771}
!2771 = !DISubrange(count: 1)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2741, file: !2742, line: 81, baseType: !2773, size: 64, offset: 1088)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2742, line: 43, baseType: null)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2741, file: !2742, line: 89, baseType: !2776, size: 64, offset: 1152)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1036, line: 153, baseType: !254)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2741, file: !2742, line: 91, baseType: !2778, size: 64, offset: 1216)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2742, line: 37, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2741, file: !2742, line: 92, baseType: !2781, size: 64, offset: 1280)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2742, line: 38, flags: DIFlagFwdDecl)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2741, file: !2742, line: 93, baseType: !2760, size: 64, offset: 1344)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2741, file: !2742, line: 94, baseType: !27, size: 64, offset: 1408)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2741, file: !2742, line: 95, baseType: !141, size: 64, offset: 1472)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2741, file: !2742, line: 96, baseType: !28, size: 32, offset: 1536)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2741, file: !2742, line: 98, baseType: !2788, size: 160, offset: 1568)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !2789)
!2789 = !{!2790}
!2790 = !DISubrange(count: 20)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2792 = !DILocalVariable(name: "stream", arg: 1, scope: !2735, file: !231, line: 61, type: !2738)
!2793 = !DILocation(line: 61, column: 24, scope: !2735)
!2794 = !DILocalVariable(name: "command_name", arg: 2, scope: !2735, file: !231, line: 62, type: !37)
!2795 = !DILocation(line: 62, column: 30, scope: !2735)
!2796 = !DILocalVariable(name: "package", arg: 3, scope: !2735, file: !231, line: 62, type: !37)
!2797 = !DILocation(line: 62, column: 56, scope: !2735)
!2798 = !DILocalVariable(name: "version", arg: 4, scope: !2735, file: !231, line: 63, type: !37)
!2799 = !DILocation(line: 63, column: 30, scope: !2735)
!2800 = !DILocalVariable(name: "authors", arg: 5, scope: !2735, file: !231, line: 64, type: !2791)
!2801 = !DILocation(line: 64, column: 39, scope: !2735)
!2802 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2735, file: !231, line: 64, type: !141)
!2803 = !DILocation(line: 64, column: 55, scope: !2735)
!2804 = !DILocation(line: 66, column: 7, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2735, file: !231, line: 66, column: 7)
!2806 = !DILocation(line: 66, column: 7, scope: !2735)
!2807 = !DILocation(line: 67, column: 14, scope: !2805)
!2808 = !DILocation(line: 67, column: 38, scope: !2805)
!2809 = !DILocation(line: 67, column: 52, scope: !2805)
!2810 = !DILocation(line: 67, column: 61, scope: !2805)
!2811 = !DILocation(line: 67, column: 5, scope: !2805)
!2812 = !DILocation(line: 69, column: 14, scope: !2805)
!2813 = !DILocation(line: 69, column: 33, scope: !2805)
!2814 = !DILocation(line: 69, column: 42, scope: !2805)
!2815 = !DILocation(line: 69, column: 5, scope: !2805)
!2816 = !DILocation(line: 83, column: 12, scope: !2735)
!2817 = !DILocation(line: 83, column: 43, scope: !2735)
!2818 = !DILocation(line: 83, column: 3, scope: !2735)
!2819 = !DILocation(line: 85, column: 3, scope: !2735)
!2820 = !DILocation(line: 88, column: 12, scope: !2735)
!2821 = !DILocation(line: 88, column: 20, scope: !2735)
!2822 = !DILocation(line: 88, column: 3, scope: !2735)
!2823 = !DILocation(line: 95, column: 3, scope: !2735)
!2824 = !DILocation(line: 97, column: 11, scope: !2735)
!2825 = !DILocation(line: 97, column: 3, scope: !2735)
!2826 = !DILocation(line: 102, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2735, file: !231, line: 98, column: 5)
!2828 = !DILocation(line: 105, column: 16, scope: !2827)
!2829 = !DILocation(line: 105, column: 24, scope: !2827)
!2830 = !DILocation(line: 105, column: 47, scope: !2827)
!2831 = !DILocation(line: 105, column: 7, scope: !2827)
!2832 = !DILocation(line: 106, column: 7, scope: !2827)
!2833 = !DILocation(line: 109, column: 16, scope: !2827)
!2834 = !DILocation(line: 109, column: 24, scope: !2827)
!2835 = !DILocation(line: 109, column: 54, scope: !2827)
!2836 = !DILocation(line: 109, column: 66, scope: !2827)
!2837 = !DILocation(line: 109, column: 7, scope: !2827)
!2838 = !DILocation(line: 110, column: 7, scope: !2827)
!2839 = !DILocation(line: 113, column: 16, scope: !2827)
!2840 = !DILocation(line: 113, column: 24, scope: !2827)
!2841 = !DILocation(line: 114, column: 16, scope: !2827)
!2842 = !DILocation(line: 114, column: 28, scope: !2827)
!2843 = !DILocation(line: 114, column: 40, scope: !2827)
!2844 = !DILocation(line: 113, column: 7, scope: !2827)
!2845 = !DILocation(line: 115, column: 7, scope: !2827)
!2846 = !DILocation(line: 120, column: 16, scope: !2827)
!2847 = !DILocation(line: 120, column: 24, scope: !2827)
!2848 = !DILocation(line: 121, column: 16, scope: !2827)
!2849 = !DILocation(line: 121, column: 28, scope: !2827)
!2850 = !DILocation(line: 121, column: 40, scope: !2827)
!2851 = !DILocation(line: 121, column: 52, scope: !2827)
!2852 = !DILocation(line: 120, column: 7, scope: !2827)
!2853 = !DILocation(line: 122, column: 7, scope: !2827)
!2854 = !DILocation(line: 127, column: 16, scope: !2827)
!2855 = !DILocation(line: 127, column: 24, scope: !2827)
!2856 = !DILocation(line: 128, column: 16, scope: !2827)
!2857 = !DILocation(line: 128, column: 28, scope: !2827)
!2858 = !DILocation(line: 128, column: 40, scope: !2827)
!2859 = !DILocation(line: 128, column: 52, scope: !2827)
!2860 = !DILocation(line: 128, column: 64, scope: !2827)
!2861 = !DILocation(line: 127, column: 7, scope: !2827)
!2862 = !DILocation(line: 129, column: 7, scope: !2827)
!2863 = !DILocation(line: 134, column: 16, scope: !2827)
!2864 = !DILocation(line: 134, column: 24, scope: !2827)
!2865 = !DILocation(line: 135, column: 16, scope: !2827)
!2866 = !DILocation(line: 135, column: 28, scope: !2827)
!2867 = !DILocation(line: 135, column: 40, scope: !2827)
!2868 = !DILocation(line: 135, column: 52, scope: !2827)
!2869 = !DILocation(line: 135, column: 64, scope: !2827)
!2870 = !DILocation(line: 136, column: 16, scope: !2827)
!2871 = !DILocation(line: 134, column: 7, scope: !2827)
!2872 = !DILocation(line: 137, column: 7, scope: !2827)
!2873 = !DILocation(line: 142, column: 16, scope: !2827)
!2874 = !DILocation(line: 142, column: 24, scope: !2827)
!2875 = !DILocation(line: 143, column: 16, scope: !2827)
!2876 = !DILocation(line: 143, column: 28, scope: !2827)
!2877 = !DILocation(line: 143, column: 40, scope: !2827)
!2878 = !DILocation(line: 143, column: 52, scope: !2827)
!2879 = !DILocation(line: 143, column: 64, scope: !2827)
!2880 = !DILocation(line: 144, column: 16, scope: !2827)
!2881 = !DILocation(line: 144, column: 28, scope: !2827)
!2882 = !DILocation(line: 142, column: 7, scope: !2827)
!2883 = !DILocation(line: 145, column: 7, scope: !2827)
!2884 = !DILocation(line: 150, column: 16, scope: !2827)
!2885 = !DILocation(line: 150, column: 24, scope: !2827)
!2886 = !DILocation(line: 152, column: 17, scope: !2827)
!2887 = !DILocation(line: 152, column: 29, scope: !2827)
!2888 = !DILocation(line: 152, column: 41, scope: !2827)
!2889 = !DILocation(line: 152, column: 53, scope: !2827)
!2890 = !DILocation(line: 152, column: 65, scope: !2827)
!2891 = !DILocation(line: 153, column: 17, scope: !2827)
!2892 = !DILocation(line: 153, column: 29, scope: !2827)
!2893 = !DILocation(line: 153, column: 41, scope: !2827)
!2894 = !DILocation(line: 150, column: 7, scope: !2827)
!2895 = !DILocation(line: 154, column: 7, scope: !2827)
!2896 = !DILocation(line: 159, column: 16, scope: !2827)
!2897 = !DILocation(line: 159, column: 24, scope: !2827)
!2898 = !DILocation(line: 161, column: 16, scope: !2827)
!2899 = !DILocation(line: 161, column: 28, scope: !2827)
!2900 = !DILocation(line: 161, column: 40, scope: !2827)
!2901 = !DILocation(line: 161, column: 52, scope: !2827)
!2902 = !DILocation(line: 161, column: 64, scope: !2827)
!2903 = !DILocation(line: 162, column: 16, scope: !2827)
!2904 = !DILocation(line: 162, column: 28, scope: !2827)
!2905 = !DILocation(line: 162, column: 40, scope: !2827)
!2906 = !DILocation(line: 162, column: 52, scope: !2827)
!2907 = !DILocation(line: 159, column: 7, scope: !2827)
!2908 = !DILocation(line: 163, column: 7, scope: !2827)
!2909 = !DILocation(line: 170, column: 16, scope: !2827)
!2910 = !DILocation(line: 170, column: 24, scope: !2827)
!2911 = !DILocation(line: 172, column: 17, scope: !2827)
!2912 = !DILocation(line: 172, column: 29, scope: !2827)
!2913 = !DILocation(line: 172, column: 41, scope: !2827)
!2914 = !DILocation(line: 172, column: 53, scope: !2827)
!2915 = !DILocation(line: 172, column: 65, scope: !2827)
!2916 = !DILocation(line: 173, column: 17, scope: !2827)
!2917 = !DILocation(line: 173, column: 29, scope: !2827)
!2918 = !DILocation(line: 173, column: 41, scope: !2827)
!2919 = !DILocation(line: 173, column: 53, scope: !2827)
!2920 = !DILocation(line: 170, column: 7, scope: !2827)
!2921 = !DILocation(line: 174, column: 7, scope: !2827)
!2922 = !DILocation(line: 176, column: 1, scope: !2735)
!2923 = distinct !DISubprogram(name: "version_etc_ar", scope: !231, file: !231, line: 183, type: !2924, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !39)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{null, !2738, !37, !37, !37, !2791}
!2926 = !DILocalVariable(name: "stream", arg: 1, scope: !2923, file: !231, line: 183, type: !2738)
!2927 = !DILocation(line: 183, column: 23, scope: !2923)
!2928 = !DILocalVariable(name: "command_name", arg: 2, scope: !2923, file: !231, line: 184, type: !37)
!2929 = !DILocation(line: 184, column: 29, scope: !2923)
!2930 = !DILocalVariable(name: "package", arg: 3, scope: !2923, file: !231, line: 184, type: !37)
!2931 = !DILocation(line: 184, column: 55, scope: !2923)
!2932 = !DILocalVariable(name: "version", arg: 4, scope: !2923, file: !231, line: 185, type: !37)
!2933 = !DILocation(line: 185, column: 29, scope: !2923)
!2934 = !DILocalVariable(name: "authors", arg: 5, scope: !2923, file: !231, line: 185, type: !2791)
!2935 = !DILocation(line: 185, column: 59, scope: !2923)
!2936 = !DILocalVariable(name: "n_authors", scope: !2923, file: !231, line: 187, type: !141)
!2937 = !DILocation(line: 187, column: 10, scope: !2923)
!2938 = !DILocation(line: 189, column: 18, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2923, file: !231, line: 189, column: 3)
!2940 = !DILocation(line: 189, column: 8, scope: !2939)
!2941 = !DILocation(line: 189, column: 23, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2939, file: !231, line: 189, column: 3)
!2943 = !DILocation(line: 189, column: 31, scope: !2942)
!2944 = !DILocation(line: 189, column: 3, scope: !2939)
!2945 = !DILocation(line: 189, column: 52, scope: !2942)
!2946 = !DILocation(line: 189, column: 3, scope: !2942)
!2947 = distinct !{!2947, !2944, !2948, !392}
!2948 = !DILocation(line: 190, column: 5, scope: !2939)
!2949 = !DILocation(line: 191, column: 20, scope: !2923)
!2950 = !DILocation(line: 191, column: 28, scope: !2923)
!2951 = !DILocation(line: 191, column: 42, scope: !2923)
!2952 = !DILocation(line: 191, column: 51, scope: !2923)
!2953 = !DILocation(line: 191, column: 60, scope: !2923)
!2954 = !DILocation(line: 191, column: 69, scope: !2923)
!2955 = !DILocation(line: 191, column: 3, scope: !2923)
!2956 = !DILocation(line: 192, column: 1, scope: !2923)
!2957 = distinct !DISubprogram(name: "version_etc_va", scope: !231, file: !231, line: 199, type: !2958, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !39)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{null, !2738, !37, !37, !37, !2960}
!2960 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !77, line: 52, baseType: !2961)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !79, line: 32, baseType: !2962)
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2963, baseType: !2964)
!2963 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !83, size: 256, elements: !2965)
!2965 = !{!2966, !2967, !2968, !2969, !2970}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2964, file: !2963, line: 192, baseType: !27, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2964, file: !2963, line: 192, baseType: !27, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2964, file: !2963, line: 192, baseType: !27, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2964, file: !2963, line: 192, baseType: !28, size: 32, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2964, file: !2963, line: 192, baseType: !28, size: 32, offset: 224)
!2971 = !DILocalVariable(name: "stream", arg: 1, scope: !2957, file: !231, line: 199, type: !2738)
!2972 = !DILocation(line: 199, column: 23, scope: !2957)
!2973 = !DILocalVariable(name: "command_name", arg: 2, scope: !2957, file: !231, line: 200, type: !37)
!2974 = !DILocation(line: 200, column: 29, scope: !2957)
!2975 = !DILocalVariable(name: "package", arg: 3, scope: !2957, file: !231, line: 200, type: !37)
!2976 = !DILocation(line: 200, column: 55, scope: !2957)
!2977 = !DILocalVariable(name: "version", arg: 4, scope: !2957, file: !231, line: 201, type: !37)
!2978 = !DILocation(line: 201, column: 29, scope: !2957)
!2979 = !DILocalVariable(name: "authors", arg: 5, scope: !2957, file: !231, line: 201, type: !2960)
!2980 = !DILocation(line: 201, column: 46, scope: !2957)
!2981 = !DILocalVariable(name: "n_authors", scope: !2957, file: !231, line: 203, type: !141)
!2982 = !DILocation(line: 203, column: 10, scope: !2957)
!2983 = !DILocalVariable(name: "authtab", scope: !2957, file: !231, line: 204, type: !2984)
!2984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 640, elements: !149)
!2985 = !DILocation(line: 204, column: 15, scope: !2957)
!2986 = !DILocation(line: 206, column: 18, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2957, file: !231, line: 206, column: 3)
!2988 = !DILocation(line: 206, column: 8, scope: !2987)
!2989 = !DILocation(line: 207, column: 8, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !231, line: 206, column: 3)
!2991 = !DILocation(line: 207, column: 18, scope: !2990)
!2992 = !DILocation(line: 208, column: 10, scope: !2990)
!2993 = !DILocation(line: 208, column: 35, scope: !2990)
!2994 = !DILocation(line: 208, column: 22, scope: !2990)
!2995 = !DILocation(line: 208, column: 14, scope: !2990)
!2996 = !DILocation(line: 208, column: 33, scope: !2990)
!2997 = !DILocation(line: 208, column: 67, scope: !2990)
!2998 = !DILocation(line: 0, scope: !2990)
!2999 = !DILocation(line: 206, column: 3, scope: !2987)
!3000 = !DILocation(line: 209, column: 17, scope: !2990)
!3001 = !DILocation(line: 206, column: 3, scope: !2990)
!3002 = distinct !{!3002, !2999, !3003, !392}
!3003 = !DILocation(line: 210, column: 5, scope: !2987)
!3004 = !DILocation(line: 211, column: 20, scope: !2957)
!3005 = !DILocation(line: 211, column: 28, scope: !2957)
!3006 = !DILocation(line: 211, column: 42, scope: !2957)
!3007 = !DILocation(line: 211, column: 51, scope: !2957)
!3008 = !DILocation(line: 212, column: 20, scope: !2957)
!3009 = !DILocation(line: 212, column: 29, scope: !2957)
!3010 = !DILocation(line: 211, column: 3, scope: !2957)
!3011 = !DILocation(line: 213, column: 1, scope: !2957)
!3012 = distinct !DISubprogram(name: "version_etc", scope: !231, file: !231, line: 230, type: !3013, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !39)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{null, !2738, !37, !37, !37, null}
!3015 = !DILocalVariable(name: "stream", arg: 1, scope: !3012, file: !231, line: 230, type: !2738)
!3016 = !DILocation(line: 230, column: 20, scope: !3012)
!3017 = !DILocalVariable(name: "command_name", arg: 2, scope: !3012, file: !231, line: 231, type: !37)
!3018 = !DILocation(line: 231, column: 26, scope: !3012)
!3019 = !DILocalVariable(name: "package", arg: 3, scope: !3012, file: !231, line: 231, type: !37)
!3020 = !DILocation(line: 231, column: 52, scope: !3012)
!3021 = !DILocalVariable(name: "version", arg: 4, scope: !3012, file: !231, line: 232, type: !37)
!3022 = !DILocation(line: 232, column: 26, scope: !3012)
!3023 = !DILocalVariable(name: "authors", scope: !3012, file: !231, line: 234, type: !2960)
!3024 = !DILocation(line: 234, column: 11, scope: !3012)
!3025 = !DILocation(line: 235, column: 3, scope: !3012)
!3026 = !DILocation(line: 236, column: 19, scope: !3012)
!3027 = !DILocation(line: 236, column: 27, scope: !3012)
!3028 = !DILocation(line: 236, column: 41, scope: !3012)
!3029 = !DILocation(line: 236, column: 50, scope: !3012)
!3030 = !DILocation(line: 236, column: 3, scope: !3012)
!3031 = !DILocation(line: 237, column: 3, scope: !3012)
!3032 = !DILocation(line: 238, column: 1, scope: !3012)
!3033 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !231, file: !231, line: 241, type: !97, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !39)
!3034 = !DILocation(line: 243, column: 3, scope: !3033)
!3035 = !DILocation(line: 248, column: 11, scope: !3033)
!3036 = !DILocation(line: 248, column: 3, scope: !3033)
!3037 = !DILocation(line: 254, column: 11, scope: !3033)
!3038 = !DILocation(line: 254, column: 3, scope: !3033)
!3039 = !DILocation(line: 259, column: 11, scope: !3033)
!3040 = !DILocation(line: 259, column: 3, scope: !3033)
!3041 = !DILocation(line: 261, column: 1, scope: !3033)
!3042 = distinct !DISubprogram(name: "xnrealloc", scope: !3043, file: !3043, line: 147, type: !3044, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3043 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!27, !27, !141, !141}
!3046 = !DILocalVariable(name: "p", arg: 1, scope: !3042, file: !3043, line: 147, type: !27)
!3047 = !DILocation(line: 147, column: 18, scope: !3042)
!3048 = !DILocalVariable(name: "n", arg: 2, scope: !3042, file: !3043, line: 147, type: !141)
!3049 = !DILocation(line: 147, column: 28, scope: !3042)
!3050 = !DILocalVariable(name: "s", arg: 3, scope: !3042, file: !3043, line: 147, type: !141)
!3051 = !DILocation(line: 147, column: 38, scope: !3042)
!3052 = !DILocation(line: 149, column: 25, scope: !3042)
!3053 = !DILocation(line: 149, column: 28, scope: !3042)
!3054 = !DILocation(line: 149, column: 31, scope: !3042)
!3055 = !DILocation(line: 149, column: 10, scope: !3042)
!3056 = !DILocation(line: 149, column: 3, scope: !3042)
!3057 = distinct !DISubprogram(name: "xreallocarray", scope: !237, file: !237, line: 83, type: !3044, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3058 = !DILocalVariable(name: "p", arg: 1, scope: !3057, file: !237, line: 83, type: !27)
!3059 = !DILocation(line: 83, column: 22, scope: !3057)
!3060 = !DILocalVariable(name: "n", arg: 2, scope: !3057, file: !237, line: 83, type: !141)
!3061 = !DILocation(line: 83, column: 32, scope: !3057)
!3062 = !DILocalVariable(name: "s", arg: 3, scope: !3057, file: !237, line: 83, type: !141)
!3063 = !DILocation(line: 83, column: 42, scope: !3057)
!3064 = !DILocation(line: 85, column: 39, scope: !3057)
!3065 = !DILocation(line: 85, column: 42, scope: !3057)
!3066 = !DILocation(line: 85, column: 45, scope: !3057)
!3067 = !DILocation(line: 85, column: 25, scope: !3057)
!3068 = !DILocation(line: 85, column: 10, scope: !3057)
!3069 = !DILocation(line: 85, column: 3, scope: !3057)
!3070 = distinct !DISubprogram(name: "check_nonnull", scope: !237, file: !237, line: 37, type: !3071, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!27, !27}
!3073 = !DILocalVariable(name: "p", arg: 1, scope: !3070, file: !237, line: 37, type: !27)
!3074 = !DILocation(line: 37, column: 22, scope: !3070)
!3075 = !DILocation(line: 39, column: 8, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3070, file: !237, line: 39, column: 7)
!3077 = !DILocation(line: 39, column: 7, scope: !3070)
!3078 = !DILocation(line: 40, column: 5, scope: !3076)
!3079 = !DILocation(line: 41, column: 10, scope: !3070)
!3080 = !DILocation(line: 41, column: 3, scope: !3070)
!3081 = distinct !DISubprogram(name: "xmalloc", scope: !237, file: !237, line: 47, type: !3082, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!27, !141}
!3084 = !DILocalVariable(name: "s", arg: 1, scope: !3081, file: !237, line: 47, type: !141)
!3085 = !DILocation(line: 47, column: 17, scope: !3081)
!3086 = !DILocation(line: 49, column: 33, scope: !3081)
!3087 = !DILocation(line: 49, column: 25, scope: !3081)
!3088 = !DILocation(line: 49, column: 10, scope: !3081)
!3089 = !DILocation(line: 49, column: 3, scope: !3081)
!3090 = distinct !DISubprogram(name: "ximalloc", scope: !237, file: !237, line: 53, type: !3091, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!27, !251}
!3093 = !DILocalVariable(name: "s", arg: 1, scope: !3090, file: !237, line: 53, type: !251)
!3094 = !DILocation(line: 53, column: 17, scope: !3090)
!3095 = !DILocation(line: 55, column: 34, scope: !3090)
!3096 = !DILocation(line: 55, column: 25, scope: !3090)
!3097 = !DILocation(line: 55, column: 10, scope: !3090)
!3098 = !DILocation(line: 55, column: 3, scope: !3090)
!3099 = distinct !DISubprogram(name: "xcharalloc", scope: !237, file: !237, line: 59, type: !3100, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!25, !141}
!3102 = !DILocalVariable(name: "n", arg: 1, scope: !3099, file: !237, line: 59, type: !141)
!3103 = !DILocation(line: 59, column: 20, scope: !3099)
!3104 = !DILocation(line: 61, column: 10, scope: !3099)
!3105 = !DILocation(line: 61, column: 3, scope: !3099)
!3106 = distinct !DISubprogram(name: "xrealloc", scope: !237, file: !237, line: 68, type: !3107, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!27, !27, !141}
!3109 = !DILocalVariable(name: "p", arg: 1, scope: !3106, file: !237, line: 68, type: !27)
!3110 = !DILocation(line: 68, column: 17, scope: !3106)
!3111 = !DILocalVariable(name: "s", arg: 2, scope: !3106, file: !237, line: 68, type: !141)
!3112 = !DILocation(line: 68, column: 27, scope: !3106)
!3113 = !DILocation(line: 70, column: 34, scope: !3106)
!3114 = !DILocation(line: 70, column: 37, scope: !3106)
!3115 = !DILocation(line: 70, column: 25, scope: !3106)
!3116 = !DILocation(line: 70, column: 10, scope: !3106)
!3117 = !DILocation(line: 70, column: 3, scope: !3106)
!3118 = distinct !DISubprogram(name: "xirealloc", scope: !237, file: !237, line: 74, type: !3119, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!27, !27, !251}
!3121 = !DILocalVariable(name: "p", arg: 1, scope: !3118, file: !237, line: 74, type: !27)
!3122 = !DILocation(line: 74, column: 18, scope: !3118)
!3123 = !DILocalVariable(name: "s", arg: 2, scope: !3118, file: !237, line: 74, type: !251)
!3124 = !DILocation(line: 74, column: 27, scope: !3118)
!3125 = !DILocation(line: 76, column: 35, scope: !3118)
!3126 = !DILocation(line: 76, column: 38, scope: !3118)
!3127 = !DILocation(line: 76, column: 25, scope: !3118)
!3128 = !DILocation(line: 76, column: 10, scope: !3118)
!3129 = !DILocation(line: 76, column: 3, scope: !3118)
!3130 = distinct !DISubprogram(name: "xireallocarray", scope: !237, file: !237, line: 89, type: !3131, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!27, !27, !251, !251}
!3133 = !DILocalVariable(name: "p", arg: 1, scope: !3130, file: !237, line: 89, type: !27)
!3134 = !DILocation(line: 89, column: 23, scope: !3130)
!3135 = !DILocalVariable(name: "n", arg: 2, scope: !3130, file: !237, line: 89, type: !251)
!3136 = !DILocation(line: 89, column: 32, scope: !3130)
!3137 = !DILocalVariable(name: "s", arg: 3, scope: !3130, file: !237, line: 89, type: !251)
!3138 = !DILocation(line: 89, column: 41, scope: !3130)
!3139 = !DILocation(line: 91, column: 40, scope: !3130)
!3140 = !DILocation(line: 91, column: 43, scope: !3130)
!3141 = !DILocation(line: 91, column: 46, scope: !3130)
!3142 = !DILocation(line: 91, column: 25, scope: !3130)
!3143 = !DILocation(line: 91, column: 10, scope: !3130)
!3144 = !DILocation(line: 91, column: 3, scope: !3130)
!3145 = distinct !DISubprogram(name: "xnmalloc", scope: !237, file: !237, line: 98, type: !3146, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!27, !141, !141}
!3148 = !DILocalVariable(name: "n", arg: 1, scope: !3145, file: !237, line: 98, type: !141)
!3149 = !DILocation(line: 98, column: 18, scope: !3145)
!3150 = !DILocalVariable(name: "s", arg: 2, scope: !3145, file: !237, line: 98, type: !141)
!3151 = !DILocation(line: 98, column: 28, scope: !3145)
!3152 = !DILocation(line: 100, column: 31, scope: !3145)
!3153 = !DILocation(line: 100, column: 34, scope: !3145)
!3154 = !DILocation(line: 100, column: 10, scope: !3145)
!3155 = !DILocation(line: 100, column: 3, scope: !3145)
!3156 = distinct !DISubprogram(name: "xinmalloc", scope: !237, file: !237, line: 104, type: !3157, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!27, !251, !251}
!3159 = !DILocalVariable(name: "n", arg: 1, scope: !3156, file: !237, line: 104, type: !251)
!3160 = !DILocation(line: 104, column: 18, scope: !3156)
!3161 = !DILocalVariable(name: "s", arg: 2, scope: !3156, file: !237, line: 104, type: !251)
!3162 = !DILocation(line: 104, column: 27, scope: !3156)
!3163 = !DILocation(line: 106, column: 32, scope: !3156)
!3164 = !DILocation(line: 106, column: 35, scope: !3156)
!3165 = !DILocation(line: 106, column: 10, scope: !3156)
!3166 = !DILocation(line: 106, column: 3, scope: !3156)
!3167 = distinct !DISubprogram(name: "x2realloc", scope: !237, file: !237, line: 116, type: !3168, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!27, !27, !243}
!3170 = !DILocalVariable(name: "p", arg: 1, scope: !3167, file: !237, line: 116, type: !27)
!3171 = !DILocation(line: 116, column: 18, scope: !3167)
!3172 = !DILocalVariable(name: "ps", arg: 2, scope: !3167, file: !237, line: 116, type: !243)
!3173 = !DILocation(line: 116, column: 29, scope: !3167)
!3174 = !DILocation(line: 118, column: 22, scope: !3167)
!3175 = !DILocation(line: 118, column: 25, scope: !3167)
!3176 = !DILocation(line: 118, column: 10, scope: !3167)
!3177 = !DILocation(line: 118, column: 3, scope: !3167)
!3178 = !DILocalVariable(name: "p", arg: 1, scope: !240, file: !237, line: 176, type: !27)
!3179 = !DILocation(line: 176, column: 19, scope: !240)
!3180 = !DILocalVariable(name: "pn", arg: 2, scope: !240, file: !237, line: 176, type: !243)
!3181 = !DILocation(line: 176, column: 30, scope: !240)
!3182 = !DILocalVariable(name: "s", arg: 3, scope: !240, file: !237, line: 176, type: !141)
!3183 = !DILocation(line: 176, column: 41, scope: !240)
!3184 = !DILocalVariable(name: "n", scope: !240, file: !237, line: 178, type: !141)
!3185 = !DILocation(line: 178, column: 10, scope: !240)
!3186 = !DILocation(line: 178, column: 15, scope: !240)
!3187 = !DILocation(line: 178, column: 14, scope: !240)
!3188 = !DILocation(line: 180, column: 9, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !240, file: !237, line: 180, column: 7)
!3190 = !DILocation(line: 180, column: 7, scope: !240)
!3191 = !DILocation(line: 182, column: 13, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !237, line: 182, column: 11)
!3193 = distinct !DILexicalBlock(scope: !3189, file: !237, line: 181, column: 5)
!3194 = !DILocation(line: 182, column: 11, scope: !3193)
!3195 = !DILocation(line: 190, column: 32, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3192, file: !237, line: 183, column: 9)
!3197 = !DILocation(line: 190, column: 30, scope: !3196)
!3198 = !DILocation(line: 190, column: 13, scope: !3196)
!3199 = !DILocation(line: 191, column: 17, scope: !3196)
!3200 = !DILocation(line: 191, column: 16, scope: !3196)
!3201 = !DILocation(line: 191, column: 13, scope: !3196)
!3202 = !DILocation(line: 192, column: 9, scope: !3196)
!3203 = !DILocation(line: 193, column: 5, scope: !3193)
!3204 = !DILocation(line: 197, column: 11, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !237, line: 197, column: 11)
!3206 = distinct !DILexicalBlock(scope: !3189, file: !237, line: 195, column: 5)
!3207 = !DILocation(line: 197, column: 11, scope: !3206)
!3208 = !DILocation(line: 198, column: 9, scope: !3205)
!3209 = !DILocation(line: 201, column: 22, scope: !240)
!3210 = !DILocation(line: 201, column: 25, scope: !240)
!3211 = !DILocation(line: 201, column: 28, scope: !240)
!3212 = !DILocation(line: 201, column: 7, scope: !240)
!3213 = !DILocation(line: 201, column: 5, scope: !240)
!3214 = !DILocation(line: 202, column: 9, scope: !240)
!3215 = !DILocation(line: 202, column: 4, scope: !240)
!3216 = !DILocation(line: 202, column: 7, scope: !240)
!3217 = !DILocation(line: 203, column: 10, scope: !240)
!3218 = !DILocation(line: 203, column: 3, scope: !240)
!3219 = !DILocalVariable(name: "pa", arg: 1, scope: !247, file: !237, line: 223, type: !27)
!3220 = !DILocation(line: 223, column: 16, scope: !247)
!3221 = !DILocalVariable(name: "pn", arg: 2, scope: !247, file: !237, line: 223, type: !250)
!3222 = !DILocation(line: 223, column: 27, scope: !247)
!3223 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !247, file: !237, line: 223, type: !251)
!3224 = !DILocation(line: 223, column: 37, scope: !247)
!3225 = !DILocalVariable(name: "n_max", arg: 4, scope: !247, file: !237, line: 223, type: !253)
!3226 = !DILocation(line: 223, column: 59, scope: !247)
!3227 = !DILocalVariable(name: "s", arg: 5, scope: !247, file: !237, line: 223, type: !251)
!3228 = !DILocation(line: 223, column: 72, scope: !247)
!3229 = !DILocalVariable(name: "n0", scope: !247, file: !237, line: 230, type: !251)
!3230 = !DILocation(line: 230, column: 9, scope: !247)
!3231 = !DILocation(line: 230, column: 15, scope: !247)
!3232 = !DILocation(line: 230, column: 14, scope: !247)
!3233 = !DILocalVariable(name: "n", scope: !247, file: !237, line: 237, type: !251)
!3234 = !DILocation(line: 237, column: 9, scope: !247)
!3235 = !DILocation(line: 238, column: 7, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !247, file: !237, line: 238, column: 7)
!3237 = !DILocation(line: 238, column: 7, scope: !247)
!3238 = !DILocation(line: 239, column: 7, scope: !3236)
!3239 = !DILocation(line: 239, column: 5, scope: !3236)
!3240 = !DILocation(line: 240, column: 12, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !247, file: !237, line: 240, column: 7)
!3242 = !DILocation(line: 240, column: 9, scope: !3241)
!3243 = !DILocation(line: 240, column: 18, scope: !3241)
!3244 = !DILocation(line: 240, column: 21, scope: !3241)
!3245 = !DILocation(line: 240, column: 29, scope: !3241)
!3246 = !DILocation(line: 240, column: 27, scope: !3241)
!3247 = !DILocation(line: 240, column: 7, scope: !247)
!3248 = !DILocation(line: 241, column: 9, scope: !3241)
!3249 = !DILocation(line: 241, column: 7, scope: !3241)
!3250 = !DILocation(line: 241, column: 5, scope: !3241)
!3251 = !DILocalVariable(name: "nbytes", scope: !247, file: !237, line: 248, type: !251)
!3252 = !DILocation(line: 248, column: 9, scope: !247)
!3253 = !DILocalVariable(name: "adjusted_nbytes", scope: !247, file: !237, line: 252, type: !251)
!3254 = !DILocation(line: 252, column: 9, scope: !247)
!3255 = !DILocation(line: 253, column: 8, scope: !247)
!3256 = !DILocation(line: 255, column: 10, scope: !247)
!3257 = !DILocation(line: 255, column: 17, scope: !247)
!3258 = !DILocation(line: 256, column: 7, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !247, file: !237, line: 256, column: 7)
!3260 = !DILocation(line: 256, column: 7, scope: !247)
!3261 = !DILocation(line: 258, column: 11, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3259, file: !237, line: 257, column: 5)
!3263 = !DILocation(line: 258, column: 29, scope: !3262)
!3264 = !DILocation(line: 258, column: 27, scope: !3262)
!3265 = !DILocation(line: 258, column: 9, scope: !3262)
!3266 = !DILocation(line: 259, column: 16, scope: !3262)
!3267 = !DILocation(line: 259, column: 34, scope: !3262)
!3268 = !DILocation(line: 259, column: 52, scope: !3262)
!3269 = !DILocation(line: 259, column: 50, scope: !3262)
!3270 = !DILocation(line: 259, column: 32, scope: !3262)
!3271 = !DILocation(line: 259, column: 14, scope: !3262)
!3272 = !DILocation(line: 260, column: 5, scope: !3262)
!3273 = !DILocation(line: 262, column: 9, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !247, file: !237, line: 262, column: 7)
!3275 = !DILocation(line: 262, column: 7, scope: !247)
!3276 = !DILocation(line: 263, column: 6, scope: !3274)
!3277 = !DILocation(line: 263, column: 9, scope: !3274)
!3278 = !DILocation(line: 263, column: 5, scope: !3274)
!3279 = !DILocation(line: 264, column: 7, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !247, file: !237, line: 264, column: 7)
!3281 = !DILocation(line: 264, column: 11, scope: !3280)
!3282 = !DILocation(line: 264, column: 9, scope: !3280)
!3283 = !DILocation(line: 264, column: 16, scope: !3280)
!3284 = !DILocation(line: 264, column: 14, scope: !3280)
!3285 = !DILocation(line: 265, column: 7, scope: !3280)
!3286 = !DILocation(line: 265, column: 11, scope: !3280)
!3287 = !DILocation(line: 266, column: 11, scope: !3280)
!3288 = !DILocation(line: 266, column: 20, scope: !3280)
!3289 = !DILocation(line: 266, column: 17, scope: !3280)
!3290 = !DILocation(line: 266, column: 26, scope: !3280)
!3291 = !DILocation(line: 266, column: 29, scope: !3280)
!3292 = !DILocation(line: 266, column: 37, scope: !3280)
!3293 = !DILocation(line: 266, column: 35, scope: !3280)
!3294 = !DILocation(line: 267, column: 11, scope: !3280)
!3295 = !DILocation(line: 267, column: 14, scope: !3280)
!3296 = !DILocation(line: 264, column: 7, scope: !247)
!3297 = !DILocation(line: 268, column: 5, scope: !3280)
!3298 = !DILocation(line: 269, column: 18, scope: !247)
!3299 = !DILocation(line: 269, column: 22, scope: !247)
!3300 = !DILocation(line: 269, column: 8, scope: !247)
!3301 = !DILocation(line: 269, column: 6, scope: !247)
!3302 = !DILocation(line: 270, column: 9, scope: !247)
!3303 = !DILocation(line: 270, column: 4, scope: !247)
!3304 = !DILocation(line: 270, column: 7, scope: !247)
!3305 = !DILocation(line: 271, column: 10, scope: !247)
!3306 = !DILocation(line: 271, column: 3, scope: !247)
!3307 = distinct !DISubprogram(name: "xzalloc", scope: !237, file: !237, line: 279, type: !3082, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3308 = !DILocalVariable(name: "s", arg: 1, scope: !3307, file: !237, line: 279, type: !141)
!3309 = !DILocation(line: 279, column: 17, scope: !3307)
!3310 = !DILocation(line: 281, column: 19, scope: !3307)
!3311 = !DILocation(line: 281, column: 10, scope: !3307)
!3312 = !DILocation(line: 281, column: 3, scope: !3307)
!3313 = distinct !DISubprogram(name: "xcalloc", scope: !237, file: !237, line: 294, type: !3146, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3314 = !DILocalVariable(name: "n", arg: 1, scope: !3313, file: !237, line: 294, type: !141)
!3315 = !DILocation(line: 294, column: 17, scope: !3313)
!3316 = !DILocalVariable(name: "s", arg: 2, scope: !3313, file: !237, line: 294, type: !141)
!3317 = !DILocation(line: 294, column: 27, scope: !3313)
!3318 = !DILocation(line: 296, column: 33, scope: !3313)
!3319 = !DILocation(line: 296, column: 36, scope: !3313)
!3320 = !DILocation(line: 296, column: 25, scope: !3313)
!3321 = !DILocation(line: 296, column: 10, scope: !3313)
!3322 = !DILocation(line: 296, column: 3, scope: !3313)
!3323 = distinct !DISubprogram(name: "xizalloc", scope: !237, file: !237, line: 285, type: !3091, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3324 = !DILocalVariable(name: "s", arg: 1, scope: !3323, file: !237, line: 285, type: !251)
!3325 = !DILocation(line: 285, column: 17, scope: !3323)
!3326 = !DILocation(line: 287, column: 20, scope: !3323)
!3327 = !DILocation(line: 287, column: 10, scope: !3323)
!3328 = !DILocation(line: 287, column: 3, scope: !3323)
!3329 = distinct !DISubprogram(name: "xicalloc", scope: !237, file: !237, line: 300, type: !3157, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3330 = !DILocalVariable(name: "n", arg: 1, scope: !3329, file: !237, line: 300, type: !251)
!3331 = !DILocation(line: 300, column: 17, scope: !3329)
!3332 = !DILocalVariable(name: "s", arg: 2, scope: !3329, file: !237, line: 300, type: !251)
!3333 = !DILocation(line: 300, column: 26, scope: !3329)
!3334 = !DILocation(line: 302, column: 34, scope: !3329)
!3335 = !DILocation(line: 302, column: 37, scope: !3329)
!3336 = !DILocation(line: 302, column: 25, scope: !3329)
!3337 = !DILocation(line: 302, column: 10, scope: !3329)
!3338 = !DILocation(line: 302, column: 3, scope: !3329)
!3339 = distinct !DISubprogram(name: "xmemdup", scope: !237, file: !237, line: 310, type: !3340, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!27, !3342, !141}
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3344 = !DILocalVariable(name: "p", arg: 1, scope: !3339, file: !237, line: 310, type: !3342)
!3345 = !DILocation(line: 310, column: 22, scope: !3339)
!3346 = !DILocalVariable(name: "s", arg: 2, scope: !3339, file: !237, line: 310, type: !141)
!3347 = !DILocation(line: 310, column: 32, scope: !3339)
!3348 = !DILocation(line: 312, column: 27, scope: !3339)
!3349 = !DILocation(line: 312, column: 18, scope: !3339)
!3350 = !DILocation(line: 312, column: 31, scope: !3339)
!3351 = !DILocation(line: 312, column: 34, scope: !3339)
!3352 = !DILocation(line: 312, column: 10, scope: !3339)
!3353 = !DILocation(line: 312, column: 3, scope: !3339)
!3354 = distinct !DISubprogram(name: "ximemdup", scope: !237, file: !237, line: 316, type: !3355, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!27, !3342, !251}
!3357 = !DILocalVariable(name: "p", arg: 1, scope: !3354, file: !237, line: 316, type: !3342)
!3358 = !DILocation(line: 316, column: 23, scope: !3354)
!3359 = !DILocalVariable(name: "s", arg: 2, scope: !3354, file: !237, line: 316, type: !251)
!3360 = !DILocation(line: 316, column: 32, scope: !3354)
!3361 = !DILocation(line: 318, column: 28, scope: !3354)
!3362 = !DILocation(line: 318, column: 18, scope: !3354)
!3363 = !DILocation(line: 318, column: 32, scope: !3354)
!3364 = !DILocation(line: 318, column: 35, scope: !3354)
!3365 = !DILocation(line: 318, column: 10, scope: !3354)
!3366 = !DILocation(line: 318, column: 3, scope: !3354)
!3367 = distinct !DISubprogram(name: "ximemdup0", scope: !237, file: !237, line: 325, type: !3368, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!25, !3342, !251}
!3370 = !DILocalVariable(name: "p", arg: 1, scope: !3367, file: !237, line: 325, type: !3342)
!3371 = !DILocation(line: 325, column: 24, scope: !3367)
!3372 = !DILocalVariable(name: "s", arg: 2, scope: !3367, file: !237, line: 325, type: !251)
!3373 = !DILocation(line: 325, column: 33, scope: !3367)
!3374 = !DILocalVariable(name: "result", scope: !3367, file: !237, line: 327, type: !25)
!3375 = !DILocation(line: 327, column: 9, scope: !3367)
!3376 = !DILocation(line: 327, column: 28, scope: !3367)
!3377 = !DILocation(line: 327, column: 30, scope: !3367)
!3378 = !DILocation(line: 327, column: 18, scope: !3367)
!3379 = !DILocation(line: 328, column: 3, scope: !3367)
!3380 = !DILocation(line: 328, column: 10, scope: !3367)
!3381 = !DILocation(line: 328, column: 13, scope: !3367)
!3382 = !DILocation(line: 329, column: 18, scope: !3367)
!3383 = !DILocation(line: 329, column: 26, scope: !3367)
!3384 = !DILocation(line: 329, column: 29, scope: !3367)
!3385 = !DILocation(line: 329, column: 10, scope: !3367)
!3386 = !DILocation(line: 329, column: 3, scope: !3367)
!3387 = distinct !DISubprogram(name: "xstrdup", scope: !237, file: !237, line: 335, type: !2450, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !39)
!3388 = !DILocalVariable(name: "string", arg: 1, scope: !3387, file: !237, line: 335, type: !37)
!3389 = !DILocation(line: 335, column: 22, scope: !3387)
!3390 = !DILocation(line: 337, column: 19, scope: !3387)
!3391 = !DILocation(line: 337, column: 35, scope: !3387)
!3392 = !DILocation(line: 337, column: 27, scope: !3387)
!3393 = !DILocation(line: 337, column: 43, scope: !3387)
!3394 = !DILocation(line: 337, column: 10, scope: !3387)
!3395 = !DILocation(line: 337, column: 3, scope: !3387)
!3396 = distinct !DISubprogram(name: "xalloc_die", scope: !257, file: !257, line: 32, type: !97, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !39)
!3397 = !DILocalVariable(name: "__errstatus", scope: !3398, file: !257, line: 34, type: !3399)
!3398 = distinct !DILexicalBlock(scope: !3396, file: !257, line: 34, column: 3)
!3399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!3400 = !DILocation(line: 34, column: 3, scope: !3398)
!3401 = !DILocation(line: 40, column: 3, scope: !3396)
!3402 = distinct !DISubprogram(name: "c32isprint", scope: !3403, file: !3403, line: 41, type: !3404, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !258, retainedNodes: !39)
!3403 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!28, !3406}
!3406 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3407, line: 20, baseType: !6)
!3407 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3408 = !DILocalVariable(name: "wc", arg: 1, scope: !3402, file: !3403, line: 41, type: !3406)
!3409 = !DILocation(line: 41, column: 14, scope: !3402)
!3410 = !DILocation(line: 66, column: 22, scope: !3402)
!3411 = !DILocation(line: 66, column: 10, scope: !3402)
!3412 = !DILocation(line: 66, column: 3, scope: !3402)
!3413 = distinct !DISubprogram(name: "close_stream", scope: !261, file: !261, line: 55, type: !3414, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !39)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!28, !3416}
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2740, line: 7, baseType: !3418)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2742, line: 49, size: 1728, elements: !3419)
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3418, file: !2742, line: 51, baseType: !28, size: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3418, file: !2742, line: 54, baseType: !25, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3418, file: !2742, line: 55, baseType: !25, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3418, file: !2742, line: 56, baseType: !25, size: 64, offset: 192)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3418, file: !2742, line: 57, baseType: !25, size: 64, offset: 256)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3418, file: !2742, line: 58, baseType: !25, size: 64, offset: 320)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3418, file: !2742, line: 59, baseType: !25, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3418, file: !2742, line: 60, baseType: !25, size: 64, offset: 448)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3418, file: !2742, line: 61, baseType: !25, size: 64, offset: 512)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3418, file: !2742, line: 64, baseType: !25, size: 64, offset: 576)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3418, file: !2742, line: 65, baseType: !25, size: 64, offset: 640)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3418, file: !2742, line: 66, baseType: !25, size: 64, offset: 704)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3418, file: !2742, line: 68, baseType: !2757, size: 64, offset: 768)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3418, file: !2742, line: 70, baseType: !3434, size: 64, offset: 832)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3418, file: !2742, line: 72, baseType: !28, size: 32, offset: 896)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3418, file: !2742, line: 73, baseType: !28, size: 32, offset: 928)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3418, file: !2742, line: 74, baseType: !2764, size: 64, offset: 960)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3418, file: !2742, line: 77, baseType: !29, size: 16, offset: 1024)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3418, file: !2742, line: 78, baseType: !2767, size: 8, offset: 1040)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3418, file: !2742, line: 79, baseType: !2769, size: 8, offset: 1048)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3418, file: !2742, line: 81, baseType: !2773, size: 64, offset: 1088)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3418, file: !2742, line: 89, baseType: !2776, size: 64, offset: 1152)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3418, file: !2742, line: 91, baseType: !2778, size: 64, offset: 1216)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3418, file: !2742, line: 92, baseType: !2781, size: 64, offset: 1280)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3418, file: !2742, line: 93, baseType: !3434, size: 64, offset: 1344)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3418, file: !2742, line: 94, baseType: !27, size: 64, offset: 1408)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3418, file: !2742, line: 95, baseType: !141, size: 64, offset: 1472)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3418, file: !2742, line: 96, baseType: !28, size: 32, offset: 1536)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3418, file: !2742, line: 98, baseType: !2788, size: 160, offset: 1568)
!3450 = !DILocalVariable(name: "stream", arg: 1, scope: !3413, file: !261, line: 55, type: !3416)
!3451 = !DILocation(line: 55, column: 21, scope: !3413)
!3452 = !DILocalVariable(name: "some_pending", scope: !3413, file: !261, line: 57, type: !3453)
!3453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!3454 = !DILocation(line: 57, column: 14, scope: !3413)
!3455 = !DILocation(line: 57, column: 42, scope: !3413)
!3456 = !DILocation(line: 57, column: 30, scope: !3413)
!3457 = !DILocation(line: 57, column: 50, scope: !3413)
!3458 = !DILocalVariable(name: "prev_fail", scope: !3413, file: !261, line: 58, type: !3453)
!3459 = !DILocation(line: 58, column: 14, scope: !3413)
!3460 = !DILocation(line: 58, column: 27, scope: !3413)
!3461 = !DILocation(line: 58, column: 43, scope: !3413)
!3462 = !DILocalVariable(name: "fclose_fail", scope: !3413, file: !261, line: 59, type: !3453)
!3463 = !DILocation(line: 59, column: 14, scope: !3413)
!3464 = !DILocation(line: 59, column: 37, scope: !3413)
!3465 = !DILocation(line: 59, column: 29, scope: !3413)
!3466 = !DILocation(line: 59, column: 45, scope: !3413)
!3467 = !DILocation(line: 69, column: 7, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3413, file: !261, line: 69, column: 7)
!3469 = !DILocation(line: 69, column: 17, scope: !3468)
!3470 = !DILocation(line: 69, column: 21, scope: !3468)
!3471 = !DILocation(line: 69, column: 33, scope: !3468)
!3472 = !DILocation(line: 69, column: 37, scope: !3468)
!3473 = !DILocation(line: 69, column: 50, scope: !3468)
!3474 = !DILocation(line: 69, column: 53, scope: !3468)
!3475 = !DILocation(line: 69, column: 59, scope: !3468)
!3476 = !DILocation(line: 69, column: 7, scope: !3413)
!3477 = !DILocation(line: 71, column: 13, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !261, line: 71, column: 11)
!3479 = distinct !DILexicalBlock(scope: !3468, file: !261, line: 70, column: 5)
!3480 = !DILocation(line: 71, column: 11, scope: !3479)
!3481 = !DILocation(line: 72, column: 9, scope: !3478)
!3482 = !DILocation(line: 72, column: 15, scope: !3478)
!3483 = !DILocation(line: 73, column: 7, scope: !3479)
!3484 = !DILocation(line: 76, column: 3, scope: !3413)
!3485 = !DILocation(line: 77, column: 1, scope: !3413)
!3486 = distinct !DISubprogram(name: "rpl_fclose", scope: !263, file: !263, line: 58, type: !3487, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !39)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!28, !3489}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2740, line: 7, baseType: !3491)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2742, line: 49, size: 1728, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3491, file: !2742, line: 51, baseType: !28, size: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3491, file: !2742, line: 54, baseType: !25, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3491, file: !2742, line: 55, baseType: !25, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3491, file: !2742, line: 56, baseType: !25, size: 64, offset: 192)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3491, file: !2742, line: 57, baseType: !25, size: 64, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3491, file: !2742, line: 58, baseType: !25, size: 64, offset: 320)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3491, file: !2742, line: 59, baseType: !25, size: 64, offset: 384)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3491, file: !2742, line: 60, baseType: !25, size: 64, offset: 448)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3491, file: !2742, line: 61, baseType: !25, size: 64, offset: 512)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3491, file: !2742, line: 64, baseType: !25, size: 64, offset: 576)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3491, file: !2742, line: 65, baseType: !25, size: 64, offset: 640)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3491, file: !2742, line: 66, baseType: !25, size: 64, offset: 704)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3491, file: !2742, line: 68, baseType: !2757, size: 64, offset: 768)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3491, file: !2742, line: 70, baseType: !3507, size: 64, offset: 832)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3491, file: !2742, line: 72, baseType: !28, size: 32, offset: 896)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3491, file: !2742, line: 73, baseType: !28, size: 32, offset: 928)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3491, file: !2742, line: 74, baseType: !2764, size: 64, offset: 960)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3491, file: !2742, line: 77, baseType: !29, size: 16, offset: 1024)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3491, file: !2742, line: 78, baseType: !2767, size: 8, offset: 1040)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3491, file: !2742, line: 79, baseType: !2769, size: 8, offset: 1048)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3491, file: !2742, line: 81, baseType: !2773, size: 64, offset: 1088)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3491, file: !2742, line: 89, baseType: !2776, size: 64, offset: 1152)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3491, file: !2742, line: 91, baseType: !2778, size: 64, offset: 1216)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3491, file: !2742, line: 92, baseType: !2781, size: 64, offset: 1280)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3491, file: !2742, line: 93, baseType: !3507, size: 64, offset: 1344)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3491, file: !2742, line: 94, baseType: !27, size: 64, offset: 1408)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3491, file: !2742, line: 95, baseType: !141, size: 64, offset: 1472)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3491, file: !2742, line: 96, baseType: !28, size: 32, offset: 1536)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3491, file: !2742, line: 98, baseType: !2788, size: 160, offset: 1568)
!3523 = !DILocalVariable(name: "fp", arg: 1, scope: !3486, file: !263, line: 58, type: !3489)
!3524 = !DILocation(line: 58, column: 19, scope: !3486)
!3525 = !DILocalVariable(name: "saved_errno", scope: !3486, file: !263, line: 60, type: !28)
!3526 = !DILocation(line: 60, column: 7, scope: !3486)
!3527 = !DILocalVariable(name: "fd", scope: !3486, file: !263, line: 63, type: !28)
!3528 = !DILocation(line: 63, column: 7, scope: !3486)
!3529 = !DILocation(line: 63, column: 20, scope: !3486)
!3530 = !DILocation(line: 63, column: 12, scope: !3486)
!3531 = !DILocation(line: 64, column: 7, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3486, file: !263, line: 64, column: 7)
!3533 = !DILocation(line: 64, column: 10, scope: !3532)
!3534 = !DILocation(line: 64, column: 7, scope: !3486)
!3535 = !DILocation(line: 65, column: 28, scope: !3532)
!3536 = !DILocation(line: 65, column: 12, scope: !3532)
!3537 = !DILocation(line: 65, column: 5, scope: !3532)
!3538 = !DILocation(line: 70, column: 9, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3486, file: !263, line: 70, column: 7)
!3540 = !DILocation(line: 70, column: 23, scope: !3539)
!3541 = !DILocation(line: 70, column: 41, scope: !3539)
!3542 = !DILocation(line: 70, column: 33, scope: !3539)
!3543 = !DILocation(line: 70, column: 26, scope: !3539)
!3544 = !DILocation(line: 70, column: 59, scope: !3539)
!3545 = !DILocation(line: 71, column: 7, scope: !3539)
!3546 = !DILocation(line: 71, column: 18, scope: !3539)
!3547 = !DILocation(line: 71, column: 10, scope: !3539)
!3548 = !DILocation(line: 70, column: 7, scope: !3486)
!3549 = !DILocation(line: 72, column: 19, scope: !3539)
!3550 = !DILocation(line: 72, column: 17, scope: !3539)
!3551 = !DILocation(line: 72, column: 5, scope: !3539)
!3552 = !DILocalVariable(name: "result", scope: !3486, file: !263, line: 74, type: !28)
!3553 = !DILocation(line: 74, column: 7, scope: !3486)
!3554 = !DILocation(line: 100, column: 28, scope: !3486)
!3555 = !DILocation(line: 100, column: 12, scope: !3486)
!3556 = !DILocation(line: 100, column: 10, scope: !3486)
!3557 = !DILocation(line: 105, column: 7, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3486, file: !263, line: 105, column: 7)
!3559 = !DILocation(line: 105, column: 19, scope: !3558)
!3560 = !DILocation(line: 105, column: 7, scope: !3486)
!3561 = !DILocation(line: 107, column: 15, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3558, file: !263, line: 106, column: 5)
!3563 = !DILocation(line: 107, column: 7, scope: !3562)
!3564 = !DILocation(line: 107, column: 13, scope: !3562)
!3565 = !DILocation(line: 108, column: 14, scope: !3562)
!3566 = !DILocation(line: 109, column: 5, scope: !3562)
!3567 = !DILocation(line: 111, column: 10, scope: !3486)
!3568 = !DILocation(line: 111, column: 3, scope: !3486)
!3569 = !DILocation(line: 112, column: 1, scope: !3486)
!3570 = distinct !DISubprogram(name: "rpl_fflush", scope: !265, file: !265, line: 130, type: !3571, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !39)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!28, !3573}
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2740, line: 7, baseType: !3575)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2742, line: 49, size: 1728, elements: !3576)
!3576 = !{!3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3575, file: !2742, line: 51, baseType: !28, size: 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3575, file: !2742, line: 54, baseType: !25, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3575, file: !2742, line: 55, baseType: !25, size: 64, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3575, file: !2742, line: 56, baseType: !25, size: 64, offset: 192)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3575, file: !2742, line: 57, baseType: !25, size: 64, offset: 256)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3575, file: !2742, line: 58, baseType: !25, size: 64, offset: 320)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3575, file: !2742, line: 59, baseType: !25, size: 64, offset: 384)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3575, file: !2742, line: 60, baseType: !25, size: 64, offset: 448)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3575, file: !2742, line: 61, baseType: !25, size: 64, offset: 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3575, file: !2742, line: 64, baseType: !25, size: 64, offset: 576)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3575, file: !2742, line: 65, baseType: !25, size: 64, offset: 640)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3575, file: !2742, line: 66, baseType: !25, size: 64, offset: 704)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3575, file: !2742, line: 68, baseType: !2757, size: 64, offset: 768)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3575, file: !2742, line: 70, baseType: !3591, size: 64, offset: 832)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3575, file: !2742, line: 72, baseType: !28, size: 32, offset: 896)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3575, file: !2742, line: 73, baseType: !28, size: 32, offset: 928)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3575, file: !2742, line: 74, baseType: !2764, size: 64, offset: 960)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3575, file: !2742, line: 77, baseType: !29, size: 16, offset: 1024)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3575, file: !2742, line: 78, baseType: !2767, size: 8, offset: 1040)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3575, file: !2742, line: 79, baseType: !2769, size: 8, offset: 1048)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3575, file: !2742, line: 81, baseType: !2773, size: 64, offset: 1088)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3575, file: !2742, line: 89, baseType: !2776, size: 64, offset: 1152)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3575, file: !2742, line: 91, baseType: !2778, size: 64, offset: 1216)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3575, file: !2742, line: 92, baseType: !2781, size: 64, offset: 1280)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3575, file: !2742, line: 93, baseType: !3591, size: 64, offset: 1344)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3575, file: !2742, line: 94, baseType: !27, size: 64, offset: 1408)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3575, file: !2742, line: 95, baseType: !141, size: 64, offset: 1472)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3575, file: !2742, line: 96, baseType: !28, size: 32, offset: 1536)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3575, file: !2742, line: 98, baseType: !2788, size: 160, offset: 1568)
!3607 = !DILocalVariable(name: "stream", arg: 1, scope: !3570, file: !265, line: 130, type: !3573)
!3608 = !DILocation(line: 130, column: 19, scope: !3570)
!3609 = !DILocation(line: 151, column: 7, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3570, file: !265, line: 151, column: 7)
!3611 = !DILocation(line: 151, column: 14, scope: !3610)
!3612 = !DILocation(line: 151, column: 22, scope: !3610)
!3613 = !DILocation(line: 151, column: 27, scope: !3610)
!3614 = !DILocation(line: 151, column: 7, scope: !3570)
!3615 = !DILocation(line: 152, column: 20, scope: !3610)
!3616 = !DILocation(line: 152, column: 12, scope: !3610)
!3617 = !DILocation(line: 152, column: 5, scope: !3610)
!3618 = !DILocation(line: 157, column: 44, scope: !3570)
!3619 = !DILocation(line: 157, column: 3, scope: !3570)
!3620 = !DILocation(line: 159, column: 18, scope: !3570)
!3621 = !DILocation(line: 159, column: 10, scope: !3570)
!3622 = !DILocation(line: 159, column: 3, scope: !3570)
!3623 = !DILocation(line: 236, column: 1, scope: !3570)
!3624 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !265, file: !265, line: 42, type: !3625, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !264, retainedNodes: !39)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{null, !3573}
!3627 = !DILocalVariable(name: "fp", arg: 1, scope: !3624, file: !265, line: 42, type: !3573)
!3628 = !DILocation(line: 42, column: 48, scope: !3624)
!3629 = !DILocation(line: 44, column: 7, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3624, file: !265, line: 44, column: 7)
!3631 = !DILocation(line: 44, column: 12, scope: !3630)
!3632 = !DILocation(line: 44, column: 19, scope: !3630)
!3633 = !DILocation(line: 44, column: 7, scope: !3624)
!3634 = !DILocation(line: 46, column: 13, scope: !3630)
!3635 = !DILocation(line: 46, column: 5, scope: !3630)
!3636 = !DILocation(line: 47, column: 1, scope: !3624)
!3637 = distinct !DISubprogram(name: "rpl_fseeko", scope: !267, file: !267, line: 28, type: !3638, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !39)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!28, !3640, !3674, !28}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2740, line: 7, baseType: !3642)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2742, line: 49, size: 1728, elements: !3643)
!3643 = !{!3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3642, file: !2742, line: 51, baseType: !28, size: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3642, file: !2742, line: 54, baseType: !25, size: 64, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3642, file: !2742, line: 55, baseType: !25, size: 64, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3642, file: !2742, line: 56, baseType: !25, size: 64, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3642, file: !2742, line: 57, baseType: !25, size: 64, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3642, file: !2742, line: 58, baseType: !25, size: 64, offset: 320)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3642, file: !2742, line: 59, baseType: !25, size: 64, offset: 384)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3642, file: !2742, line: 60, baseType: !25, size: 64, offset: 448)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3642, file: !2742, line: 61, baseType: !25, size: 64, offset: 512)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3642, file: !2742, line: 64, baseType: !25, size: 64, offset: 576)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3642, file: !2742, line: 65, baseType: !25, size: 64, offset: 640)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3642, file: !2742, line: 66, baseType: !25, size: 64, offset: 704)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3642, file: !2742, line: 68, baseType: !2757, size: 64, offset: 768)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3642, file: !2742, line: 70, baseType: !3658, size: 64, offset: 832)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3642, file: !2742, line: 72, baseType: !28, size: 32, offset: 896)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3642, file: !2742, line: 73, baseType: !28, size: 32, offset: 928)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3642, file: !2742, line: 74, baseType: !2764, size: 64, offset: 960)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3642, file: !2742, line: 77, baseType: !29, size: 16, offset: 1024)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3642, file: !2742, line: 78, baseType: !2767, size: 8, offset: 1040)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3642, file: !2742, line: 79, baseType: !2769, size: 8, offset: 1048)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3642, file: !2742, line: 81, baseType: !2773, size: 64, offset: 1088)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3642, file: !2742, line: 89, baseType: !2776, size: 64, offset: 1152)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3642, file: !2742, line: 91, baseType: !2778, size: 64, offset: 1216)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3642, file: !2742, line: 92, baseType: !2781, size: 64, offset: 1280)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3642, file: !2742, line: 93, baseType: !3658, size: 64, offset: 1344)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3642, file: !2742, line: 94, baseType: !27, size: 64, offset: 1408)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3642, file: !2742, line: 95, baseType: !141, size: 64, offset: 1472)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3642, file: !2742, line: 96, baseType: !28, size: 32, offset: 1536)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3642, file: !2742, line: 98, baseType: !2788, size: 160, offset: 1568)
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !77, line: 63, baseType: !2764)
!3675 = !DILocalVariable(name: "fp", arg: 1, scope: !3637, file: !267, line: 28, type: !3640)
!3676 = !DILocation(line: 28, column: 15, scope: !3637)
!3677 = !DILocalVariable(name: "offset", arg: 2, scope: !3637, file: !267, line: 28, type: !3674)
!3678 = !DILocation(line: 28, column: 25, scope: !3637)
!3679 = !DILocalVariable(name: "whence", arg: 3, scope: !3637, file: !267, line: 28, type: !28)
!3680 = !DILocation(line: 28, column: 37, scope: !3637)
!3681 = !DILocation(line: 55, column: 7, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3637, file: !267, line: 55, column: 7)
!3683 = !DILocation(line: 55, column: 12, scope: !3682)
!3684 = !DILocation(line: 55, column: 28, scope: !3682)
!3685 = !DILocation(line: 55, column: 33, scope: !3682)
!3686 = !DILocation(line: 55, column: 25, scope: !3682)
!3687 = !DILocation(line: 56, column: 7, scope: !3682)
!3688 = !DILocation(line: 56, column: 10, scope: !3682)
!3689 = !DILocation(line: 56, column: 15, scope: !3682)
!3690 = !DILocation(line: 56, column: 32, scope: !3682)
!3691 = !DILocation(line: 56, column: 37, scope: !3682)
!3692 = !DILocation(line: 56, column: 29, scope: !3682)
!3693 = !DILocation(line: 57, column: 7, scope: !3682)
!3694 = !DILocation(line: 57, column: 10, scope: !3682)
!3695 = !DILocation(line: 57, column: 15, scope: !3682)
!3696 = !DILocation(line: 57, column: 29, scope: !3682)
!3697 = !DILocation(line: 55, column: 7, scope: !3637)
!3698 = !DILocalVariable(name: "pos", scope: !3699, file: !267, line: 123, type: !3674)
!3699 = distinct !DILexicalBlock(scope: !3682, file: !267, line: 119, column: 5)
!3700 = !DILocation(line: 123, column: 13, scope: !3699)
!3701 = !DILocation(line: 123, column: 34, scope: !3699)
!3702 = !DILocation(line: 123, column: 26, scope: !3699)
!3703 = !DILocation(line: 123, column: 39, scope: !3699)
!3704 = !DILocation(line: 123, column: 47, scope: !3699)
!3705 = !DILocation(line: 123, column: 19, scope: !3699)
!3706 = !DILocation(line: 124, column: 11, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3699, file: !267, line: 124, column: 11)
!3708 = !DILocation(line: 124, column: 15, scope: !3707)
!3709 = !DILocation(line: 124, column: 11, scope: !3699)
!3710 = !DILocation(line: 130, column: 11, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3707, file: !267, line: 125, column: 9)
!3712 = !DILocation(line: 135, column: 7, scope: !3699)
!3713 = !DILocation(line: 135, column: 12, scope: !3699)
!3714 = !DILocation(line: 135, column: 19, scope: !3699)
!3715 = !DILocation(line: 136, column: 22, scope: !3699)
!3716 = !DILocation(line: 136, column: 7, scope: !3699)
!3717 = !DILocation(line: 136, column: 12, scope: !3699)
!3718 = !DILocation(line: 136, column: 20, scope: !3699)
!3719 = !DILocation(line: 167, column: 7, scope: !3699)
!3720 = !DILocation(line: 169, column: 18, scope: !3637)
!3721 = !DILocation(line: 169, column: 22, scope: !3637)
!3722 = !DILocation(line: 169, column: 30, scope: !3637)
!3723 = !DILocation(line: 169, column: 10, scope: !3637)
!3724 = !DILocation(line: 169, column: 3, scope: !3637)
!3725 = !DILocation(line: 170, column: 1, scope: !3637)
!3726 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !3727, file: !3727, line: 43, type: !3728, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !39)
!3727 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3728 = !DISubroutineType(types: !69)
!3729 = !DILocation(line: 45, column: 3, scope: !3726)
!3730 = !DILocation(line: 45, column: 9, scope: !3726)
!3731 = !DILocation(line: 46, column: 3, scope: !3726)
!3732 = distinct !DISubprogram(name: "imalloc", scope: !3727, file: !3727, line: 55, type: !3091, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !39)
!3733 = !DILocalVariable(name: "s", arg: 1, scope: !3732, file: !3727, line: 55, type: !251)
!3734 = !DILocation(line: 55, column: 16, scope: !3732)
!3735 = !DILocation(line: 57, column: 10, scope: !3732)
!3736 = !DILocation(line: 57, column: 12, scope: !3732)
!3737 = !DILocation(line: 57, column: 34, scope: !3732)
!3738 = !DILocation(line: 57, column: 26, scope: !3732)
!3739 = !DILocation(line: 57, column: 39, scope: !3732)
!3740 = !DILocation(line: 57, column: 3, scope: !3732)
!3741 = distinct !DISubprogram(name: "irealloc", scope: !3727, file: !3727, line: 66, type: !3119, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !39)
!3742 = !DILocalVariable(name: "p", arg: 1, scope: !3741, file: !3727, line: 66, type: !27)
!3743 = !DILocation(line: 66, column: 17, scope: !3741)
!3744 = !DILocalVariable(name: "s", arg: 2, scope: !3741, file: !3727, line: 66, type: !251)
!3745 = !DILocation(line: 66, column: 26, scope: !3741)
!3746 = !DILocation(line: 68, column: 10, scope: !3741)
!3747 = !DILocation(line: 68, column: 12, scope: !3741)
!3748 = !DILocation(line: 68, column: 35, scope: !3741)
!3749 = !DILocation(line: 68, column: 38, scope: !3741)
!3750 = !DILocation(line: 68, column: 26, scope: !3741)
!3751 = !DILocation(line: 68, column: 43, scope: !3741)
!3752 = !DILocation(line: 68, column: 3, scope: !3741)
!3753 = distinct !DISubprogram(name: "icalloc", scope: !3727, file: !3727, line: 77, type: !3157, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !39)
!3754 = !DILocalVariable(name: "n", arg: 1, scope: !3753, file: !3727, line: 77, type: !251)
!3755 = !DILocation(line: 77, column: 16, scope: !3753)
!3756 = !DILocalVariable(name: "s", arg: 2, scope: !3753, file: !3727, line: 77, type: !251)
!3757 = !DILocation(line: 77, column: 25, scope: !3753)
!3758 = !DILocation(line: 79, column: 18, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3753, file: !3727, line: 79, column: 7)
!3760 = !DILocation(line: 79, column: 16, scope: !3759)
!3761 = !DILocation(line: 79, column: 7, scope: !3753)
!3762 = !DILocation(line: 81, column: 11, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !3727, line: 81, column: 11)
!3764 = distinct !DILexicalBlock(scope: !3759, file: !3727, line: 80, column: 5)
!3765 = !DILocation(line: 81, column: 13, scope: !3763)
!3766 = !DILocation(line: 81, column: 11, scope: !3764)
!3767 = !DILocation(line: 82, column: 16, scope: !3763)
!3768 = !DILocation(line: 82, column: 9, scope: !3763)
!3769 = !DILocation(line: 83, column: 9, scope: !3764)
!3770 = !DILocation(line: 84, column: 5, scope: !3764)
!3771 = !DILocation(line: 85, column: 18, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3753, file: !3727, line: 85, column: 7)
!3773 = !DILocation(line: 85, column: 16, scope: !3772)
!3774 = !DILocation(line: 85, column: 7, scope: !3753)
!3775 = !DILocation(line: 87, column: 11, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3777, file: !3727, line: 87, column: 11)
!3777 = distinct !DILexicalBlock(scope: !3772, file: !3727, line: 86, column: 5)
!3778 = !DILocation(line: 87, column: 13, scope: !3776)
!3779 = !DILocation(line: 87, column: 11, scope: !3777)
!3780 = !DILocation(line: 88, column: 16, scope: !3776)
!3781 = !DILocation(line: 88, column: 9, scope: !3776)
!3782 = !DILocation(line: 89, column: 9, scope: !3777)
!3783 = !DILocation(line: 90, column: 5, scope: !3777)
!3784 = !DILocation(line: 91, column: 18, scope: !3753)
!3785 = !DILocation(line: 91, column: 21, scope: !3753)
!3786 = !DILocation(line: 91, column: 10, scope: !3753)
!3787 = !DILocation(line: 91, column: 3, scope: !3753)
!3788 = !DILocation(line: 92, column: 1, scope: !3753)
!3789 = distinct !DISubprogram(name: "ireallocarray", scope: !3727, file: !3727, line: 98, type: !3131, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !39)
!3790 = !DILocalVariable(name: "p", arg: 1, scope: !3789, file: !3727, line: 98, type: !27)
!3791 = !DILocation(line: 98, column: 22, scope: !3789)
!3792 = !DILocalVariable(name: "n", arg: 2, scope: !3789, file: !3727, line: 98, type: !251)
!3793 = !DILocation(line: 98, column: 31, scope: !3789)
!3794 = !DILocalVariable(name: "s", arg: 3, scope: !3789, file: !3727, line: 98, type: !251)
!3795 = !DILocation(line: 98, column: 40, scope: !3789)
!3796 = !DILocation(line: 100, column: 11, scope: !3789)
!3797 = !DILocation(line: 100, column: 13, scope: !3789)
!3798 = !DILocation(line: 100, column: 25, scope: !3789)
!3799 = !DILocation(line: 100, column: 28, scope: !3789)
!3800 = !DILocation(line: 100, column: 30, scope: !3789)
!3801 = !DILocation(line: 101, column: 27, scope: !3789)
!3802 = !DILocation(line: 101, column: 30, scope: !3789)
!3803 = !DILocation(line: 101, column: 33, scope: !3789)
!3804 = !DILocation(line: 101, column: 13, scope: !3789)
!3805 = !DILocation(line: 102, column: 13, scope: !3789)
!3806 = !DILocation(line: 100, column: 3, scope: !3789)
!3807 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !209, file: !209, line: 100, type: !3808, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !208, retainedNodes: !39)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!141, !3810, !37, !141, !3811}
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!3812 = !DILocalVariable(name: "pwc", arg: 1, scope: !3807, file: !209, line: 100, type: !3810)
!3813 = !DILocation(line: 100, column: 21, scope: !3807)
!3814 = !DILocalVariable(name: "s", arg: 2, scope: !3807, file: !209, line: 100, type: !37)
!3815 = !DILocation(line: 100, column: 38, scope: !3807)
!3816 = !DILocalVariable(name: "n", arg: 3, scope: !3807, file: !209, line: 100, type: !141)
!3817 = !DILocation(line: 100, column: 48, scope: !3807)
!3818 = !DILocalVariable(name: "ps", arg: 4, scope: !3807, file: !209, line: 100, type: !3811)
!3819 = !DILocation(line: 100, column: 62, scope: !3807)
!3820 = !DILocation(line: 105, column: 7, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3807, file: !209, line: 105, column: 7)
!3822 = !DILocation(line: 105, column: 9, scope: !3821)
!3823 = !DILocation(line: 105, column: 7, scope: !3807)
!3824 = !DILocation(line: 107, column: 11, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3821, file: !209, line: 106, column: 5)
!3826 = !DILocation(line: 108, column: 9, scope: !3825)
!3827 = !DILocation(line: 109, column: 9, scope: !3825)
!3828 = !DILocation(line: 110, column: 5, scope: !3825)
!3829 = !DILocation(line: 117, column: 7, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3807, file: !209, line: 117, column: 7)
!3831 = !DILocation(line: 117, column: 10, scope: !3830)
!3832 = !DILocation(line: 117, column: 7, scope: !3807)
!3833 = !DILocation(line: 118, column: 8, scope: !3830)
!3834 = !DILocation(line: 118, column: 5, scope: !3830)
!3835 = !DILocalVariable(name: "ret", scope: !3807, file: !209, line: 130, type: !141)
!3836 = !DILocation(line: 130, column: 10, scope: !3807)
!3837 = !DILocation(line: 130, column: 26, scope: !3807)
!3838 = !DILocation(line: 130, column: 31, scope: !3807)
!3839 = !DILocation(line: 130, column: 34, scope: !3807)
!3840 = !DILocation(line: 130, column: 37, scope: !3807)
!3841 = !DILocation(line: 130, column: 16, scope: !3807)
!3842 = !DILocation(line: 135, column: 7, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3807, file: !209, line: 135, column: 7)
!3844 = !DILocation(line: 135, column: 11, scope: !3843)
!3845 = !DILocation(line: 135, column: 25, scope: !3843)
!3846 = !DILocation(line: 135, column: 39, scope: !3843)
!3847 = !DILocation(line: 135, column: 30, scope: !3843)
!3848 = !DILocation(line: 135, column: 7, scope: !3807)
!3849 = !DILocation(line: 137, column: 14, scope: !3843)
!3850 = !DILocation(line: 137, column: 5, scope: !3843)
!3851 = !DILocation(line: 138, column: 7, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3807, file: !209, line: 138, column: 7)
!3853 = !DILocation(line: 138, column: 11, scope: !3852)
!3854 = !DILocation(line: 138, column: 7, scope: !3807)
!3855 = !DILocation(line: 139, column: 5, scope: !3852)
!3856 = !DILocation(line: 143, column: 22, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3807, file: !209, line: 143, column: 7)
!3858 = !DILocation(line: 143, column: 19, scope: !3857)
!3859 = !DILocation(line: 143, column: 26, scope: !3857)
!3860 = !DILocation(line: 143, column: 29, scope: !3857)
!3861 = !DILocation(line: 143, column: 31, scope: !3857)
!3862 = !DILocation(line: 143, column: 36, scope: !3857)
!3863 = !DILocation(line: 143, column: 41, scope: !3857)
!3864 = !DILocation(line: 143, column: 7, scope: !3807)
!3865 = !DILocation(line: 145, column: 11, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !209, line: 145, column: 11)
!3867 = distinct !DILexicalBlock(scope: !3857, file: !209, line: 144, column: 5)
!3868 = !DILocation(line: 145, column: 15, scope: !3866)
!3869 = !DILocation(line: 145, column: 11, scope: !3867)
!3870 = !DILocation(line: 146, column: 33, scope: !3866)
!3871 = !DILocation(line: 146, column: 32, scope: !3866)
!3872 = !DILocation(line: 146, column: 16, scope: !3866)
!3873 = !DILocation(line: 146, column: 10, scope: !3866)
!3874 = !DILocation(line: 146, column: 14, scope: !3866)
!3875 = !DILocation(line: 146, column: 9, scope: !3866)
!3876 = !DILocation(line: 147, column: 7, scope: !3867)
!3877 = !DILocation(line: 151, column: 10, scope: !3807)
!3878 = !DILocation(line: 151, column: 3, scope: !3807)
!3879 = !DILocation(line: 286, column: 1, scope: !3807)
!3880 = distinct !DISubprogram(name: "mbszero", scope: !3881, file: !3881, line: 1135, type: !3882, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!3881 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3882 = !DISubroutineType(types: !3883)
!3883 = !{null, !3884}
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !214, line: 6, baseType: !3886)
!3886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !216, line: 21, baseType: !3887)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 13, size: 64, elements: !3888)
!3888 = !{!3889, !3890}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3887, file: !216, line: 15, baseType: !28, size: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3887, file: !216, line: 20, baseType: !3891, size: 32, offset: 32)
!3891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3887, file: !216, line: 16, size: 32, elements: !3892)
!3892 = !{!3893, !3894}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3891, file: !216, line: 18, baseType: !6, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3891, file: !216, line: 19, baseType: !225, size: 32)
!3895 = !DILocalVariable(name: "ps", arg: 1, scope: !3880, file: !3881, line: 1135, type: !3884)
!3896 = !DILocation(line: 1135, column: 21, scope: !3880)
!3897 = !DILocation(line: 1137, column: 11, scope: !3880)
!3898 = !DILocation(line: 1137, column: 3, scope: !3880)
!3899 = !DILocation(line: 1138, column: 1, scope: !3880)
!3900 = distinct !DISubprogram(name: "memeq", scope: !2723, file: !2723, line: 974, type: !3901, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !272, retainedNodes: !39)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!64, !3342, !3342, !141}
!3903 = !DILocalVariable(name: "__s1", arg: 1, scope: !3900, file: !2723, line: 974, type: !3342)
!3904 = !DILocation(line: 974, column: 20, scope: !3900)
!3905 = !DILocalVariable(name: "__s2", arg: 2, scope: !3900, file: !2723, line: 974, type: !3342)
!3906 = !DILocation(line: 974, column: 38, scope: !3900)
!3907 = !DILocalVariable(name: "__n", arg: 3, scope: !3900, file: !2723, line: 974, type: !141)
!3908 = !DILocation(line: 974, column: 51, scope: !3900)
!3909 = !DILocation(line: 976, column: 19, scope: !3900)
!3910 = !DILocation(line: 976, column: 25, scope: !3900)
!3911 = !DILocation(line: 976, column: 31, scope: !3900)
!3912 = !DILocation(line: 976, column: 11, scope: !3900)
!3913 = !DILocation(line: 976, column: 10, scope: !3900)
!3914 = !DILocation(line: 976, column: 3, scope: !3900)
!3915 = distinct !DISubprogram(name: "rpl_realloc", scope: !3916, file: !3916, line: 2057, type: !3107, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !39)
!3916 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3917 = !DILocalVariable(name: "ptr", arg: 1, scope: !3915, file: !3916, line: 2057, type: !27)
!3918 = !DILocation(line: 2057, column: 20, scope: !3915)
!3919 = !DILocalVariable(name: "size", arg: 2, scope: !3915, file: !3916, line: 2057, type: !141)
!3920 = !DILocation(line: 2057, column: 32, scope: !3915)
!3921 = !DILocation(line: 2059, column: 19, scope: !3915)
!3922 = !DILocation(line: 2059, column: 24, scope: !3915)
!3923 = !DILocation(line: 2059, column: 31, scope: !3915)
!3924 = !DILocation(line: 2059, column: 10, scope: !3915)
!3925 = !DILocation(line: 2059, column: 3, scope: !3915)
!3926 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !277, file: !277, line: 27, type: !3044, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !39)
!3927 = !DILocalVariable(name: "ptr", arg: 1, scope: !3926, file: !277, line: 27, type: !27)
!3928 = !DILocation(line: 27, column: 21, scope: !3926)
!3929 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3926, file: !277, line: 27, type: !141)
!3930 = !DILocation(line: 27, column: 33, scope: !3926)
!3931 = !DILocalVariable(name: "size", arg: 3, scope: !3926, file: !277, line: 27, type: !141)
!3932 = !DILocation(line: 27, column: 47, scope: !3926)
!3933 = !DILocalVariable(name: "nbytes", scope: !3926, file: !277, line: 29, type: !141)
!3934 = !DILocation(line: 29, column: 10, scope: !3926)
!3935 = !DILocation(line: 30, column: 7, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3926, file: !277, line: 30, column: 7)
!3937 = !DILocation(line: 30, column: 7, scope: !3926)
!3938 = !DILocation(line: 32, column: 7, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3936, file: !277, line: 31, column: 5)
!3940 = !DILocation(line: 32, column: 13, scope: !3939)
!3941 = !DILocation(line: 33, column: 7, scope: !3939)
!3942 = !DILocation(line: 37, column: 19, scope: !3926)
!3943 = !DILocation(line: 37, column: 24, scope: !3926)
!3944 = !DILocation(line: 37, column: 10, scope: !3926)
!3945 = !DILocation(line: 37, column: 3, scope: !3926)
!3946 = !DILocation(line: 38, column: 1, scope: !3926)
!3947 = distinct !DISubprogram(name: "hard_locale", scope: !280, file: !280, line: 28, type: !3948, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !279, retainedNodes: !39)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!64, !28}
!3950 = !DILocalVariable(name: "category", arg: 1, scope: !3947, file: !280, line: 28, type: !28)
!3951 = !DILocation(line: 28, column: 18, scope: !3947)
!3952 = !DILocalVariable(name: "locale", scope: !3947, file: !280, line: 30, type: !3953)
!3953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2056, elements: !3954)
!3954 = !{!3955}
!3955 = !DISubrange(count: 257)
!3956 = !DILocation(line: 30, column: 8, scope: !3947)
!3957 = !DILocation(line: 32, column: 25, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3947, file: !280, line: 32, column: 7)
!3959 = !DILocation(line: 32, column: 35, scope: !3958)
!3960 = !DILocation(line: 32, column: 7, scope: !3958)
!3961 = !DILocation(line: 32, column: 7, scope: !3947)
!3962 = !DILocation(line: 33, column: 5, scope: !3958)
!3963 = !DILocation(line: 35, column: 16, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3947, file: !280, line: 35, column: 7)
!3965 = !DILocation(line: 35, column: 9, scope: !3964)
!3966 = !DILocation(line: 35, column: 29, scope: !3964)
!3967 = !DILocation(line: 35, column: 39, scope: !3964)
!3968 = !DILocation(line: 35, column: 32, scope: !3964)
!3969 = !DILocation(line: 35, column: 7, scope: !3947)
!3970 = !DILocation(line: 36, column: 5, scope: !3964)
!3971 = !DILocation(line: 46, column: 3, scope: !3947)
!3972 = !DILocation(line: 47, column: 1, scope: !3947)
!3973 = distinct !DISubprogram(name: "setlocale_null_r", scope: !282, file: !282, line: 154, type: !3974, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !281, retainedNodes: !39)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!28, !28, !25, !141}
!3976 = !DILocalVariable(name: "category", arg: 1, scope: !3973, file: !282, line: 154, type: !28)
!3977 = !DILocation(line: 154, column: 23, scope: !3973)
!3978 = !DILocalVariable(name: "buf", arg: 2, scope: !3973, file: !282, line: 154, type: !25)
!3979 = !DILocation(line: 154, column: 39, scope: !3973)
!3980 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3973, file: !282, line: 154, type: !141)
!3981 = !DILocation(line: 154, column: 51, scope: !3973)
!3982 = !DILocation(line: 159, column: 37, scope: !3973)
!3983 = !DILocation(line: 159, column: 47, scope: !3973)
!3984 = !DILocation(line: 159, column: 52, scope: !3973)
!3985 = !DILocation(line: 159, column: 10, scope: !3973)
!3986 = !DILocation(line: 159, column: 3, scope: !3973)
!3987 = distinct !DISubprogram(name: "setlocale_null", scope: !282, file: !282, line: 186, type: !3988, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !281, retainedNodes: !39)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!37, !28}
!3990 = !DILocalVariable(name: "category", arg: 1, scope: !3987, file: !282, line: 186, type: !28)
!3991 = !DILocation(line: 186, column: 21, scope: !3987)
!3992 = !DILocation(line: 189, column: 35, scope: !3987)
!3993 = !DILocation(line: 189, column: 10, scope: !3987)
!3994 = !DILocation(line: 189, column: 3, scope: !3987)
!3995 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !284, file: !284, line: 35, type: !3988, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !39)
!3996 = !DILocalVariable(name: "category", arg: 1, scope: !3995, file: !284, line: 35, type: !28)
!3997 = !DILocation(line: 35, column: 30, scope: !3995)
!3998 = !DILocalVariable(name: "result", scope: !3995, file: !284, line: 37, type: !37)
!3999 = !DILocation(line: 37, column: 15, scope: !3995)
!4000 = !DILocation(line: 37, column: 35, scope: !3995)
!4001 = !DILocation(line: 37, column: 24, scope: !3995)
!4002 = !DILocation(line: 62, column: 10, scope: !3995)
!4003 = !DILocation(line: 62, column: 3, scope: !3995)
!4004 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !284, file: !284, line: 66, type: !3974, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !39)
!4005 = !DILocalVariable(name: "category", arg: 1, scope: !4004, file: !284, line: 66, type: !28)
!4006 = !DILocation(line: 66, column: 32, scope: !4004)
!4007 = !DILocalVariable(name: "buf", arg: 2, scope: !4004, file: !284, line: 66, type: !25)
!4008 = !DILocation(line: 66, column: 48, scope: !4004)
!4009 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4004, file: !284, line: 66, type: !141)
!4010 = !DILocation(line: 66, column: 60, scope: !4004)
!4011 = !DILocalVariable(name: "result", scope: !4004, file: !284, line: 111, type: !37)
!4012 = !DILocation(line: 111, column: 15, scope: !4004)
!4013 = !DILocation(line: 111, column: 49, scope: !4004)
!4014 = !DILocation(line: 111, column: 24, scope: !4004)
!4015 = !DILocation(line: 113, column: 7, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4004, file: !284, line: 113, column: 7)
!4017 = !DILocation(line: 113, column: 14, scope: !4016)
!4018 = !DILocation(line: 113, column: 7, scope: !4004)
!4019 = !DILocation(line: 116, column: 11, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4021, file: !284, line: 116, column: 11)
!4021 = distinct !DILexicalBlock(scope: !4016, file: !284, line: 114, column: 5)
!4022 = !DILocation(line: 116, column: 19, scope: !4020)
!4023 = !DILocation(line: 116, column: 11, scope: !4021)
!4024 = !DILocation(line: 120, column: 9, scope: !4020)
!4025 = !DILocation(line: 120, column: 16, scope: !4020)
!4026 = !DILocation(line: 121, column: 7, scope: !4021)
!4027 = !DILocalVariable(name: "length", scope: !4028, file: !284, line: 125, type: !141)
!4028 = distinct !DILexicalBlock(scope: !4016, file: !284, line: 124, column: 5)
!4029 = !DILocation(line: 125, column: 14, scope: !4028)
!4030 = !DILocation(line: 125, column: 31, scope: !4028)
!4031 = !DILocation(line: 125, column: 23, scope: !4028)
!4032 = !DILocation(line: 126, column: 11, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4028, file: !284, line: 126, column: 11)
!4034 = !DILocation(line: 126, column: 20, scope: !4033)
!4035 = !DILocation(line: 126, column: 18, scope: !4033)
!4036 = !DILocation(line: 126, column: 11, scope: !4028)
!4037 = !DILocation(line: 128, column: 19, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4033, file: !284, line: 127, column: 9)
!4039 = !DILocation(line: 128, column: 24, scope: !4038)
!4040 = !DILocation(line: 128, column: 32, scope: !4038)
!4041 = !DILocation(line: 128, column: 39, scope: !4038)
!4042 = !DILocation(line: 128, column: 11, scope: !4038)
!4043 = !DILocation(line: 129, column: 11, scope: !4038)
!4044 = !DILocation(line: 133, column: 15, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4046, file: !284, line: 133, column: 15)
!4046 = distinct !DILexicalBlock(scope: !4033, file: !284, line: 132, column: 9)
!4047 = !DILocation(line: 133, column: 23, scope: !4045)
!4048 = !DILocation(line: 133, column: 15, scope: !4046)
!4049 = !DILocation(line: 138, column: 23, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4045, file: !284, line: 134, column: 13)
!4051 = !DILocation(line: 138, column: 28, scope: !4050)
!4052 = !DILocation(line: 138, column: 36, scope: !4050)
!4053 = !DILocation(line: 138, column: 44, scope: !4050)
!4054 = !DILocation(line: 138, column: 15, scope: !4050)
!4055 = !DILocation(line: 139, column: 15, scope: !4050)
!4056 = !DILocation(line: 139, column: 19, scope: !4050)
!4057 = !DILocation(line: 139, column: 27, scope: !4050)
!4058 = !DILocation(line: 139, column: 32, scope: !4050)
!4059 = !DILocation(line: 140, column: 13, scope: !4050)
!4060 = !DILocation(line: 141, column: 11, scope: !4046)
!4061 = !DILocation(line: 145, column: 1, scope: !4004)
